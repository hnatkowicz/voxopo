// Small copies of Randy's avatars, for everywhere an avatar is drawn small.
//
// Why (Nov 2026): the drawings are detailed SVGs -- 24 of them weigh 1.2 MB
// (the drum kit alone ~350 KB) -- and the list is growing in sixes. A phone
// on a pub's cell data would pull all of it just to show the join grid. So
// each avatar also gets a 192px WebP (a few KB) in public/avatars/thumbs/,
// used by the grid, the scoreboards and the strips; the full SVG is loaded
// only where an avatar is shown big (the phone's tap-to-enlarge, the TV
// podium, the Champion card). A missing thumb falls back to the SVG, so a
// fresh upload works before its thumb exists.
//
// Run: node scripts/avatar-thumbs.mjs   (needs Playwright's Chromium)
// The GitHub Action .github/workflows/avatar-thumbs.yml runs it whenever an
// SVG in public/avatars/ changes, and commits the thumbs back -- Randy just
// uploads drawings. Only avatars whose SVG changed are redrawn
// (thumbs/hashes.json remembers each SVG's fingerprint).
import { readFileSync, writeFileSync, readdirSync, existsSync, mkdirSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { createRequire } from 'node:module';
import path from 'node:path';

const SIZE = 192;      // ~64 CSS px at 3x: the biggest small use (Spotlight faces on a 1080p TV)
const QUALITY = 0.85;
const dir = path.resolve(path.dirname(new URL(import.meta.url).pathname), '../public/avatars');
const out = path.join(dir, 'thumbs');
mkdirSync(out, { recursive: true });
const hashFile = path.join(out, 'hashes.json');
const hashes = existsSync(hashFile) ? JSON.parse(readFileSync(hashFile, 'utf8')) : {};

const svgs = readdirSync(dir).filter(f => f.endsWith('.svg')).sort();
const fingerprint = f => createHash('sha256').update(readFileSync(path.join(dir, f))).digest('hex').slice(0, 16);
const todo = svgs.map(f => ({ file: f, name: f.slice(0, -4), hash: fingerprint(f) }))
    .filter(a => hashes[a.name] !== a.hash || !existsSync(path.join(out, a.name + '.webp')));

if (!todo.length) { console.log(`All ${svgs.length} avatar thumbs are up to date.`); process.exit(0); }

const { chromium } = createRequire(import.meta.url)('playwright');
const browser = await chromium.launch();
const page = await browser.newPage();
for (const { file, name, hash } of todo) {
    const svg = readFileSync(path.join(dir, file), 'utf8');
    const dataUrl = await page.evaluate(async ({ svg, SIZE, QUALITY }) => {
        const img = new Image();
        img.src = 'data:image/svg+xml;base64,' + btoa(unescape(encodeURIComponent(svg)));
        await img.decode();
        // Fit inside the square, centered (some drawings are wider or taller).
        const w = img.naturalWidth || SIZE, h = img.naturalHeight || SIZE;
        const scale = Math.min(SIZE / w, SIZE / h);
        const canvas = document.createElement('canvas');
        canvas.width = SIZE; canvas.height = SIZE;
        const ctx = canvas.getContext('2d');
        ctx.drawImage(img, (SIZE - w * scale) / 2, (SIZE - h * scale) / 2, w * scale, h * scale);
        return canvas.toDataURL('image/webp', QUALITY);
    }, { svg, SIZE, QUALITY });
    const bytes = Buffer.from(dataUrl.split(',')[1], 'base64');
    writeFileSync(path.join(out, name + '.webp'), bytes);
    hashes[name] = hash;
    console.log(`${name}: ${Math.round(readFileSync(path.join(dir, file)).length / 1024)} KB SVG -> ${Math.round(bytes.length / 1024 * 10) / 10} KB thumb`);
}
await browser.close();
writeFileSync(hashFile, JSON.stringify(Object.fromEntries(Object.entries(hashes).sort()), null, 2) + '\n');
console.log(`${todo.length} thumb(s) written.`);
