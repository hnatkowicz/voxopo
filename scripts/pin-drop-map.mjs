// Renders Randy's world map SVG into Pin Drop's map image and prints the
// numbers src/services/pinMap.js needs (Nov 2026). Run it again only if the
// SVG changes:
//
//   node scripts/pin-drop-map.mjs
//
// It writes a PNG to the scratch path given (default /tmp/world-map.png);
// convert that to public/pin-drop/world-map.webp (quality ~82). If the SVG's
// internal transform (SVG_A/E/D/F) or its size changes, update pinMap.js and
// re-check a few cities against the image.
import { createRequire } from 'node:module';
const { chromium } = createRequire(import.meta.url)('playwright');

const SVG = new URL('../public/maps/workd-map-complete.svg', import.meta.url).href;
const OUT = process.argv[2] || '/tmp/world-map.png';
const W = Number(process.env.MAP_WIDTH || 4800);

const browser = await chromium.launch();
const page = await browser.newPage({ viewport: { width: 1804, height: 942 } });
await page.goto(SVG);
const info = await page.evaluate(() => {
    const svg = document.documentElement;
    const m = document.getElementById('sg').getCTM(); // any country: they share one transform
    return { SVG_A: m.a, SVG_D: m.d, SVG_E: m.e, SVG_F: m.f, width: svg.width.baseVal.value, height: svg.height.baseVal.value };
});
const H = Math.round(W * info.height / info.width);
await page.setViewportSize({ width: W, height: H });
await page.evaluate(([w, h]) => {
    const svg = document.documentElement;
    svg.setAttribute('viewBox', `0 0 ${svg.width.baseVal.value} ${svg.height.baseVal.value}`);
    svg.setAttribute('width', w);
    svg.setAttribute('height', h);
}, [W, H]);
await page.screenshot({ path: OUT, clip: { x: 0, y: 0, width: W, height: H } });
await browser.close();
console.log(JSON.stringify({ ...info, MAP_W: W, MAP_H: H, out: OUT }, null, 2));
