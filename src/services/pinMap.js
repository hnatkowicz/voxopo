// Pin Drop's world map (Randy, Nov 2026): where a real place sits on the
// map image, where a player's pin is in the real world, and how far apart
// two places are.
//
// The map is Randy's world map SVG (public/maps/workd-map-complete.svg,
// Wikipedia's blank world map), rendered as public/pin-drop/world-map.webp,
// 4800 x 2505 (2400 wide until Randy asked for more than 8x zoom, Nov 24
// 2026: twice the pixels keeps 16x sharp on a phone; 146 KB). It's the Robinson projection centered near 10 E. The numbers
// below were fitted (Nov 24 2026) by measuring 15 small countries on the SVG
// against their real coordinates: on average within 2 drawing units, about
// 15 miles on the ground, which is far finer than the game needs.
//
// Re-rendering the map at another size means re-measuring IMG_* and SVG_* (the
// SVG's internal-to-screen transform); scripts/pin-drop-map.mjs does both.

export const MAP_W = 4800;
export const MAP_H = 2505;

const LON0 = 9.6; // the map's central meridian
// Robinson x/y (radians-ish) -> the SVG's internal drawing units
const FIT_S = 515.06776429, FIT_TX = 1373.36474494, FIT_TY = 698.33178624;
// The SVG's internal units -> its own pixels (a group transform in the file)
const SVG_A = 0.5803668054798408, SVG_E = 150.40685110613413;
const SVG_D = 0.5801662671326646, SVG_F = 77.70313642363635;
// Its own pixels (1804.43 wide) -> the WebP's pixels
const IMG_K = MAP_W / 1804.4278564453125;

// Robinson's table, every 5 degrees of latitude (Robinson, 1974).
const ROB_X = [1.0000, 0.9986, 0.9954, 0.9900, 0.9822, 0.9730, 0.9600, 0.9427, 0.9216, 0.8962, 0.8679, 0.8350, 0.7986, 0.7597, 0.7186, 0.6732, 0.6213, 0.5722, 0.5322];
const ROB_Y = [0.0000, 0.0620, 0.1240, 0.1860, 0.2480, 0.3100, 0.3720, 0.4340, 0.4958, 0.5571, 0.6176, 0.6769, 0.7346, 0.7903, 0.8435, 0.8936, 0.9394, 0.9761, 1.0000];

function tableAt(table, latAbs) {
    const a = Math.min(90, Math.max(0, latAbs));
    const i = Math.min(17, Math.floor(a / 5));
    const f = (a - 5 * i) / 5;
    return table[i] + (table[i + 1] - table[i]) * f;
}

function wrapLon(lon) {
    return ((lon + 180) % 360 + 360) % 360 - 180;
}

// Real place -> pixel on the map image.
export function toMap(lat, lon) {
    const l = wrapLon(lon - LON0);
    const xr = 0.8487 * tableAt(ROB_X, Math.abs(lat)) * (l * Math.PI / 180);
    const yr = 1.3523 * tableAt(ROB_Y, Math.abs(lat)) * Math.sign(lat);
    const lx = FIT_S * xr + FIT_TX, ly = FIT_TY - FIT_S * yr;
    return { x: IMG_K * (SVG_A * lx + SVG_E), y: IMG_K * (SVG_D * ly + SVG_F) };
}

// Pixel on the map image -> real place (a pin off the edge of the world is
// pulled back onto it).
export function fromMap(x, y) {
    const lx = (x / IMG_K - SVG_E) / SVG_A, ly = (y / IMG_K - SVG_F) / SVG_D;
    const xr = (lx - FIT_TX) / FIT_S, yr = (FIT_TY - ly) / FIT_S;
    const yAbs = Math.min(1, Math.abs(yr) / 1.3523);
    // Invert the Y column of the table (it only ever grows).
    let i = 0;
    while (i < 17 && ROB_Y[i + 1] < yAbs) i++;
    const f = (yAbs - ROB_Y[i]) / ((ROB_Y[i + 1] - ROB_Y[i]) || 1);
    const latAbs = Math.min(90, 5 * (i + Math.max(0, Math.min(1, f))));
    const lat = Math.sign(yr) * latAbs;
    const lonRel = (xr / (0.8487 * tableAt(ROB_X, latAbs))) * 180 / Math.PI;
    return { lat, lon: wrapLon(Math.max(-180, Math.min(180, lonRel)) + LON0) };
}

// Great-circle distance in miles.
export function milesBetween(a, b) {
    const R = 3958.8, rad = d => d * Math.PI / 180;
    const dLat = rad(b.lat - a.lat), dLon = rad(b.lon - a.lon);
    const h = Math.sin(dLat / 2) ** 2 + Math.cos(rad(a.lat)) * Math.cos(rad(b.lat)) * Math.sin(dLon / 2) ** 2;
    return 2 * R * Math.asin(Math.min(1, Math.sqrt(h)));
}
