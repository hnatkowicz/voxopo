// Renders a local Pin Drop map (Randy's drawing, an SVG in public/maps/) to
// the two WebPs the game uses (Nov 2026):
//
//   public/pin-drop/<name>.webp     at the SVG's own size (4800 wide), for
//                                   the phones' pinch-zoom
//   public/pin-drop/<name>-tv.webp  half that, for the TV (it never needs
//                                   more, and a smaller picture loads fast)
//
//   node scripts/local-map-render.mjs public/maps/central-pa-map.svg central-pa
//
// Needs Playwright's Chromium and ImageMagick's `convert` (for the WebP).
import { createRequire } from 'node:module';
import { execFileSync } from 'node:child_process';
import { mkdtempSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join, resolve } from 'node:path';
const { chromium } = createRequire(import.meta.url)('playwright');

const [svgPath, name] = process.argv.slice(2);
if (!svgPath || !name) { console.error('usage: node scripts/local-map-render.mjs <map.svg> <name>'); process.exit(1); }
const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 100, height: 100 } });
await page.goto('file://' + resolve(svgPath));
const { w, h } = await page.evaluate(() => ({ w: document.documentElement.width.baseVal.value, h: document.documentElement.height.baseVal.value }));
await page.setViewportSize({ width: Math.round(w), height: Math.round(h) });
const tmp = join(mkdtempSync(join(tmpdir(), 'map-')), 'map.png');
await page.screenshot({ path: tmp, clip: { x: 0, y: 0, width: Math.round(w), height: Math.round(h) } });
await browser.close();
execFileSync('convert', [tmp, '-quality', '82', '-define', 'webp:method=6', `public/pin-drop/${name}.webp`]);
// TV_WIDTH=1800 for a detailed map (Nov 28 2026: the OpenStreetMap Central
// PA came to 406 KB at half size; a TV shows it ~1,000 px wide at most).
execFileSync('convert', [tmp, '-resize', process.env.TV_WIDTH ? `${process.env.TV_WIDTH}x` : '50%', '-quality', '82', '-define', 'webp:method=6', `public/pin-drop/${name}-tv.webp`]);
console.log(`public/pin-drop/${name}.webp (${Math.round(w)} x ${Math.round(h)}) and ${name}-tv.webp`);
