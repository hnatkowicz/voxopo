// The avatar list (Nov 28 2026): the names written in public/avatars.js, then
// every other drawing in public/avatars/ that isn't held back, A to Z. So
// Randy can add avatars by uploading an SVG on GitHub and nothing else (the
// upload redeploys the site, which reads the folder again).
import { readFileSync, readdirSync } from 'node:fs';

const SRC = new URL('../../public/avatars.js', import.meta.url);
const DIR = new URL('../../public/avatars/', import.meta.url);
const namesIn = (src, constName) => {
    const block = (src.match(new RegExp(`const ${constName} = \\[([\\s\\S]*?)\\];`)) || [])[1] || '';
    return [...block.replace(/\/\/.*$/gm, '').matchAll(/'([a-z0-9-]+)'/g)].map(m => m[1]);
};

let cached = null;
export function avatarNames() {
    if (cached) return cached;
    let src = '', files = [];
    try { src = readFileSync(SRC, 'utf8'); } catch {}
    try { files = readdirSync(DIR).filter(f => /^[a-z0-9-]+\.svg$/.test(f)).map(f => f.slice(0, -4)); } catch {}
    const listed = namesIn(src, 'AVATARS');
    const held = new Set(namesIn(src, 'AVATARS_HELD_BACK'));
    const extras = files.filter(n => !listed.includes(n) && !held.has(n)).sort();
    cached = { src, listed, extras, all: [...listed, ...extras] };
    return cached;
}

// public/avatars.js as the phones and TV get it: the file, plus a line that
// adds the uploaded drawings that aren't written into its list.
export function avatarsScript() {
    const { src, extras } = avatarNames();
    if (!extras.length) return src;
    return `${src}\n// Added by the server (src/services/avatarList.js): drawings in\n// public/avatars/ that aren't on the list above, A to Z.\nAVATARS.push(...${JSON.stringify(extras)});\n`;
}
