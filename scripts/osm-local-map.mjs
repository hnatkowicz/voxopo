// Draws a local Pin Drop map from OpenStreetMap data (Nov 2026), in the
// RandoMania! colors, as an SVG Randy can open in Inkscape to add labels.
//
//   node scripts/osm-local-map.mjs <data.geojson> <out.svg> <west> <east> <centerLat> [width]
//   node scripts/osm-local-map.mjs <data.geojson> <out.svg> fit:A,B,C,D [width] [region]
//
// "fit:" redraws a map that's already in the game in its exact frame (its
// fit from src/services/localMaps.js), so its places and Randy's road
// shields stay put. "region" is the county-scale style: no side streets,
// county and state lines (Central PA, Nov 28 2026).
//
// The data is an Overpass Turbo GeoJSON export (OpenStreetMap, ODbL --
// credited on /info). The map is Web Mercator, 4:3 (Randy, Nov 28 2026:
// every map is 4:3), and its corners come from the numbers given, so a real
// place lands on it by the same straight-line fit as Central PA:
//   x = A * lon + B,   y = C * mercator(lat) + D
// The script prints A, B, C and D for src/services/localMaps.js.
//
// Colors: green means "right" in RandoMania!, so parks are a lighter denim,
// not green. Gold is kept for the game's own marks (the true spot, the line
// clue), so the main roads are cream (Randy, Nov 28 2026), and everything
// else steps back so the pins stand out.
import { readFileSync, writeFileSync } from 'node:fs';

const args = process.argv.slice(2);
const fitArg = args[2] && args[2].startsWith('fit:') ? args[2].slice(4).split(',').map(Number) : null;
const [src, out, westS, eastS, latS, widthS] = fitArg ? [args[0], args[1], null, null, null, args[3]] : args;
const REGION = (fitArg ? args[4] : args[6]) === 'region';
if (!src || !out || (!fitArg && (!westS || !eastS || !latS))) {
    console.error('usage: node scripts/osm-local-map.mjs <data.geojson> <out.svg> <west> <east> <centerLat> [width]');
    process.exit(1);
}
const W = Number(widthS) || 4800, H = W * 3 / 4;
const rad = d => d * Math.PI / 180;
const merc = lat => Math.log(Math.tan(Math.PI / 4 + rad(lat) / 2));
let A, B, C, D, west, east, centerLat;
if (fitArg) {
    [A, B, C, D] = fitArg;
    west = -B / A; east = (W - B) / A;
    centerLat = (2 * Math.atan(Math.exp((H / 2 - D) / C)) - Math.PI / 2) * 180 / Math.PI;
} else {
    west = Number(westS); east = Number(eastS); centerLat = Number(latS);
    A = W / (east - west); B = -A * west;
    // Same scale both ways (Mercator): pixels per radian of longitude.
    C = -W / rad(east - west); D = H / 2 - C * merc(centerLat);
}
const px = ([lon, lat]) => [A * lon + B, C * merc(lat) + D];

const COLORS = {
    ground: '#1a2c4d',      // --rm-surface-2
    green: '#223a63',       // parks, golf, cemeteries: a lighter denim
    forest: '#1f3459',
    water: '#2f5e9e',       // lakes: a deeper --rm-blue
    stream: '#5b8bd9',      // --rm-blue
    rail: '#7f92b4',        // --rm-text-muted
    minor: '#55688c',       // side streets: quiet
    collector: '#a7b6d1',   // --rm-text-soft
    major: '#f4f1e8',       // cream, --rm-text
    casing: '#0b1424',      // --rm-bg, under the main roads
    border: '#31507f'       // --rm-border-3, county and state lines
};
// Road classes: [layer, width in map pixels]. At 4800 wide this map is
// ~620 px a mile; the phone shows it at ~310 px wide, so side streets
// appear as you zoom and the main roads read at a glance.
const ROADS = {
    motorway: ['major', 18], trunk: ['major', 16], primary: ['major', 16],
    motorway_link: ['major', 8], trunk_link: ['major', 8], primary_link: ['major', 8],
    secondary: ['collector', 11], secondary_link: ['collector', 6],
    tertiary: ['collector', 8], tertiary_link: ['collector', 5],
    unclassified: ['minor', 5], residential: ['minor', 4], living_street: ['minor', 4]
};
// County scale (~61 px a mile): interstates and the big US routes gold,
// other US and PA routes cream, the rest thin.
if (REGION) Object.assign(ROADS, {
    motorway: ['major', 14], trunk: ['major', 12], primary: ['collector', 6], secondary: ['minor', 3]
});
const BORDERS = { '4': 10, '6': 4 }; // state line, county lines

const data = JSON.parse(readFileSync(src, 'utf8'));
// Fewer creeks (Randy, Nov 28 2026): only named creeks with enough length on
// the map (10 miles across a county, 1 mile across a town); the rest were
// what made the map busy behind the pins.
const MIN_CREEK_MILES = REGION ? 10 : 1;
const segMiles = ([lon1, lat1], [lon2, lat2]) => Math.hypot((lon2 - lon1) * 69.17 * Math.cos(rad(lat1)), (lat2 - lat1) * 69.17);
const creekMiles = {};
for (const f of data.features) {
    const p = f.properties || {}, g = f.geometry;
    if (p.waterway !== 'stream' || !p.name || !g || g.type !== 'LineString') continue;
    let m = 0;
    for (let i = 1; i < g.coordinates.length; i++) m += segMiles(g.coordinates[i - 1], g.coordinates[i]);
    creekMiles[p.name] = (creekMiles[p.name] || 0) + m;
}
const keepCreek = p => p.name && creekMiles[p.name] >= MIN_CREEK_MILES;
const layers = { green: [], forest: [], water: [], stream: [], rail: [], border: [], minor: [], collector: [], majorCasing: [], major: [] };
const path = rings => rings.map(r => 'M' + r.map(c => px(c).map(v => v.toFixed(1)).join(',')).join('L') + 'Z').join('');
const line = cs => 'M' + cs.map(c => px(c).map(v => v.toFixed(1)).join(',')).join('L');
const onMap = cs => cs.some(c => { const [x, y] = px(c); return x > -200 && x < W + 200 && y > -200 && y < H + 200; });

for (const f of data.features) {
    const p = f.properties || {}, g = f.geometry;
    if (!g) continue;
    const polys = g.type === 'Polygon' ? [g.coordinates] : g.type === 'MultiPolygon' ? g.coordinates : null;
    // County and state lines: drawn as lines, never filled.
    if (p.boundary === 'administrative' && BORDERS[p.admin_level]) {
        const lines = g.type === 'LineString' ? [g.coordinates] : g.type === 'MultiLineString' ? g.coordinates
            : (polys || []).flat();
        for (const cs of lines) if (onMap(cs)) layers.border.push(`<path d="${line(cs)}" stroke-width="${BORDERS[p.admin_level]}"/>`);
        continue;
    }
    if (polys) {
        const kind = p.natural === 'water' ? 'water' : p.landuse === 'forest' ? 'forest' : (p.leisure || p.landuse === 'cemetery') ? 'green' : null;
        for (const rings of polys) if (kind && onMap(rings[0])) layers[kind].push(`<path d="${path(rings)}"/>`);
        continue;
    }
    if (g.type !== 'LineString' || !onMap(g.coordinates)) continue;
    const d = line(g.coordinates);
    if (p.waterway === 'stream' && !keepCreek(p)) continue;
    if (p.waterway) layers.stream.push(`<path d="${d}" stroke-width="${p.waterway === 'river' ? (REGION ? 6 : 14) : (REGION ? 2.5 : 5)}"/>`);
    else if (p.railway) layers.rail.push(`<path d="${d}"/>`);
    else if (ROADS[p.highway]) {
        const [layer, w] = ROADS[p.highway];
        if (layer === 'major') layers.majorCasing.push(`<path d="${d}" stroke-width="${w + 6}"/>`);
        layers[layer].push(`<path d="${d}" stroke-width="${w}"/>`);
    }
}

// Street names (Nov 29 2026; Randy's wife wouldn't play Hanover without
// them -- she couldn't tell where she was). LABELS=1 names the main and
// collector roads (motorway to secondary): each name's pieces are joined end
// to end, and the name is written once along its longest stretch (twice if
// it's very long), on the road, reading left to right. Side streets and the
// smaller collectors stay unnamed, which also keeps names like Moul Avenue
// and Eichelberger Street (beside Moul Field and the Eichelberger) from
// giving rounds away. Names sit on their roads (Randy, Nov 29 2026: "I know
// I'm okay with it"; beside the road was tried), with letters spaced a little
// wider and a thinner outline (he found the first, heavy one squished), words
// pulled a touch closer so the road barely shows between them.
const LABEL_CLASSES = new Set(['motorway', 'trunk', 'primary', 'secondary']);
const labelFont = REGION ? 30 : 46;
const labels = [];
if (process.env.LABELS === '1') {
    const byName = {}, classOf = {}, candidates = [];
    const ROAD_RANK = { motorway: 0, trunk: 1, primary: 2, secondary: 3 };
    for (const f of data.features) {
        const p = f.properties || {}, g = f.geometry;
        if (!p.name || !LABEL_CLASSES.has(p.highway) || !g || g.type !== 'LineString') continue;
        (byName[p.name] = byName[p.name] || []).push(g.coordinates.map(px));
        if (!(classOf[p.name] in ROAD_RANK) || ROAD_RANK[p.highway] < ROAD_RANK[classOf[p.name]]) classOf[p.name] = p.highway;
    }
    // The point a fraction of the way along a line, and which way it runs there.
    const alongPath = (pts, frac) => {
        const target = lengthOf(pts) * frac;
        let run = 0;
        for (let i = 1; i < pts.length; i++) {
            const seg = Math.hypot(pts[i][0] - pts[i - 1][0], pts[i][1] - pts[i - 1][1]);
            if (run + seg >= target) {
                const t = seg ? (target - run) / seg : 0;
                return { pt: [pts[i - 1][0] + t * (pts[i][0] - pts[i - 1][0]), pts[i - 1][1] + t * (pts[i][1] - pts[i - 1][1])],
                         dir: [pts[i][0] - pts[i - 1][0], pts[i][1] - pts[i - 1][1]] };
            }
            run += seg;
        }
        return { pt: pts[pts.length - 1], dir: [1, 0] };
    };
    const key = ([x, y]) => `${x.toFixed(0)},${y.toFixed(0)}`;
    const lengthOf = pts => pts.reduce((m, q, i) => i ? m + Math.hypot(q[0] - pts[i - 1][0], q[1] - pts[i - 1][1]) : 0, 0);
    for (const [name, pieces] of Object.entries(byName)) {
        // Join pieces that share an end into longer chains.
        const chains = pieces.map(p => p.slice());
        let joined = true;
        while (joined) {
            joined = false;
            outer: for (let i = 0; i < chains.length; i++) for (let j = 0; j < chains.length; j++) {
                if (i === j) continue;
                const a = chains[i], b = chains[j];
                let merged = null;
                if (key(a[a.length - 1]) === key(b[0])) merged = a.concat(b.slice(1));
                else if (key(a[a.length - 1]) === key(b[b.length - 1])) merged = a.concat(b.slice(0, -1).reverse());
                else if (key(a[0]) === key(b[b.length - 1])) merged = b.concat(a.slice(1));
                else if (key(a[0]) === key(b[0])) merged = b.slice().reverse().concat(a.slice(1));
                if (merged) { chains.splice(Math.max(i, j), 1); chains.splice(Math.min(i, j), 1, merged); joined = true; break outer; }
            }
        }
        // Only the part of a chain that's on the map counts.
        const onMapParts = [];
        for (const c of chains) {
            let cur = [];
            for (const q of c) {
                if (q[0] > 60 && q[0] < W - 60 && q[1] > 60 && q[1] < H - 60) cur.push(q);
                else { if (cur.length > 1) onMapParts.push(cur); cur = []; }
            }
            if (cur.length > 1) onMapParts.push(cur);
        }
        onMapParts.sort((a, b) => lengthOf(b) - lengthOf(a));
        const best = onMapParts[0];
        if (!best) continue;
        const len = lengthOf(best);
        const textLen = name.length * labelFont * 0.55;
        if (len < textLen * 1.6) continue; // too short to carry its name
        const wanted = len > textLen * 8 ? [0.3, 0.7] : [0.5];
        candidates.push({ name, best, len, textLen, wanted, rank: ROAD_RANK[classOf[name]] ?? 9 });
    }
    // Biggest roads first, then longest; a name that would land on top of
    // another one (Eisenhower Drive over Broadway) moves along its road, or
    // is left off.
    candidates.sort((a, b) => (a.rank - b.rank) || (b.len - a.len));
    // The name follows a smoothed copy of the road: set beside a road,
    // text bunches up or drops letters on the inside of a sharp bend
    // ("3rd Steet" in the first preview). Resample every 12 px, then
    // average over about three letters' width, twice.
    const smooth = (pts) => {
        const step = 12, out = [pts[0]];
        for (let i = 1; i < pts.length; i++) {
            const [x0, y0] = pts[i - 1], [x1, y1] = pts[i];
            const n = Math.max(1, Math.round(Math.hypot(x1 - x0, y1 - y0) / step));
            for (let k = 1; k <= n; k++) out.push([x0 + (x1 - x0) * k / n, y0 + (y1 - y0) * k / n]);
        }
        const w = Math.max(2, Math.round(labelFont * 1.6 / step));
        let cur = out;
        for (let pass = 0; pass < 2; pass++) {
            cur = cur.map((_, i) => {
                const a = Math.max(0, i - w), b = Math.min(cur.length - 1, i + w);
                let sx = 0, sy = 0;
                for (let j = a; j <= b; j++) { sx += cur[j][0]; sy += cur[j][1]; }
                return [sx / (b - a + 1), sy / (b - a + 1)];
            });
        }
        return cur;
    };
    const placed = [];
    for (const c of candidates) {
        c.best = smooth(c.best);
        c.len = lengthOf(c.best);
        const offsets = [];
        for (const want of c.wanted) {
            for (const f of [want, want - 0.15, want + 0.15, want - 0.3, want + 0.3]) {
                // The whole name has to fit on the road on both sides of its
                // middle ("3rd Street" lost its "3" off a short stretch).
                const room = c.textLen / 2 + labelFont;
                if (f * c.len < room || (1 - f) * c.len < room) continue;
                const { pt, dir } = alongPath(c.best, f);
                if (placed.some(q => Math.hypot(q[0] - pt[0], q[1] - pt[1]) < (c.textLen + labelFont * 4) / 1.6)) continue;
                placed.push(pt);
                offsets.push({ f, dir });
                break;
            }
        }
        for (const o of offsets) {
            // Read left to right where the name sits, not by the road's ends
            // (a road that curves back on itself put Eisenhower upside down).
            const run = o.dir[0] >= 0 ? c.best : c.best.slice().reverse();
            const f = o.dir[0] >= 0 ? o.f : 1 - o.f;
            labels.push({ name: c.name, d: 'M' + run.map(q => q.map(v => v.toFixed(1)).join(',')).join('L'), offset: `${(f * 100).toFixed(1)}%` });
        }
    }
}
const labelGroup = () => {
    if (!labels.length) return '';
    const defs = labels.map((l, i) => `<path id="road-name-${i}" d="${l.d}"/>`).join('\n      ');
    const texts = labels.map((l, i) =>
        `<text><textPath href="#road-name-${i}" startOffset="${l.offset}">${l.name.replace(/&/g, '&amp;')}</textPath></text>`).join('\n    ');
    return `  <defs>\n      ${defs}\n  </defs>\n  <g id="road-names" inkscape:label="road-names" inkscape:groupmode="layer" font-family="DM Sans, Arial, sans-serif" font-weight="700" font-size="${labelFont}" fill="${COLORS.major}" stroke="${COLORS.casing}" stroke-width="${labelFont * 0.3}" stroke-linejoin="round" paint-order="stroke" text-anchor="middle" dominant-baseline="central" letter-spacing="${labelFont * 0.09}" word-spacing="${-labelFont * 0.12}">\n    ${texts}\n  </g>`;
};

const group = (label, style, items) =>
    `  <g id="${label}" inkscape:label="${label}" inkscape:groupmode="layer" ${style}>\n    ${items.join('\n    ')}\n  </g>`;
const roundLine = 'fill="none" stroke-linecap="round" stroke-linejoin="round"';
const svg = `<?xml version="1.0" encoding="UTF-8"?>
<!-- RandoMania! local Pin Drop map, drawn by scripts/osm-local-map.mjs from
     OpenStreetMap data (c) OpenStreetMap contributors, ODbL.
     Web Mercator, west ${west}, east ${east}, center latitude ${centerLat}${fitArg ? ' (an existing map\'s fit)' : ''}.
     Fit for localMaps.js: A=${A} B=${B} C=${C} D=${D}
     Add labels in a new layer on top; keep the page size as is. -->
<svg xmlns="http://www.w3.org/2000/svg" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
     width="${W}" height="${H}" viewBox="0 0 ${W} ${H}">
  <rect id="ground" width="${W}" height="${H}" fill="${COLORS.ground}"/>
${group('parks', `fill="${COLORS.green}"`, layers.green)}
${group('woods', `fill="${COLORS.forest}"`, layers.forest)}
${group('streams', `${roundLine} stroke="${COLORS.stream}"`, layers.stream)}
${group('lakes', `fill="${COLORS.water}" fill-rule="evenodd"`, layers.water)}
${group('county-lines', `${roundLine} stroke="${COLORS.border}" stroke-dasharray="${REGION ? '24 12' : '16 10'}"`, layers.border)}
${group('rail', `${roundLine} stroke="${COLORS.rail}" stroke-width="${REGION ? 3 : 4}" stroke-dasharray="14 10"`, layers.rail)}
${group('side-streets', `${roundLine} stroke="${COLORS.minor}"`, layers.minor)}
${group('collector-roads', `${roundLine} stroke="${COLORS.collector}"`, layers.collector)}
${group('main-roads-edge', `${roundLine} stroke="${COLORS.casing}"`, layers.majorCasing)}
${group('main-roads', `${roundLine} stroke="${COLORS.major}"`, layers.major)}
${labelGroup()}
</svg>
`;
writeFileSync(out, svg);
const milesAcross = (east - west) * 69.17 * Math.cos(rad(centerLat));
console.log(`${out}: ${W} x ${H}, ${milesAcross.toFixed(1)} miles across, ${(W / milesAcross).toFixed(1)} px a mile`);
console.log(`fit: A: ${A}, B: ${B}, C: ${C}, D: ${D}`);
