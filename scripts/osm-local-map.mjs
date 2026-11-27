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
// not green. Gold is the main roads, the same gold as the buttons.
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
    minor: '#7f92b4',       // side streets
    collector: '#ebe6da',   // cream
    major: '#f5b82e',       // gold, --rm-brand
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
    motorway: ['major', 14], trunk: ['major', 12], primary: ['collector', 8], secondary: ['minor', 4]
});
const BORDERS = { '4': 10, '6': 4 }; // state line, county lines

const data = JSON.parse(readFileSync(src, 'utf8'));
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
    if (p.waterway) layers.stream.push(`<path d="${d}" stroke-width="${p.waterway === 'river' ? (REGION ? 6 : 14) : (REGION ? 2.5 : 5)}"/>`);
    else if (p.railway) layers.rail.push(`<path d="${d}"/>`);
    else if (ROADS[p.highway]) {
        const [layer, w] = ROADS[p.highway];
        if (layer === 'major') layers.majorCasing.push(`<path d="${d}" stroke-width="${w + 6}"/>`);
        layers[layer].push(`<path d="${d}" stroke-width="${w}"/>`);
    }
}

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
</svg>
`;
writeFileSync(out, svg);
const milesAcross = (east - west) * 69.17 * Math.cos(rad(centerLat));
console.log(`${out}: ${W} x ${H}, ${milesAcross.toFixed(1)} miles across, ${(W / milesAcross).toFixed(1)} px a mile`);
console.log(`fit: A: ${A}, B: ${B}, C: ${C}, D: ${D}`);
