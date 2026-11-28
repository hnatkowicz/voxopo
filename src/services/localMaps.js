// Pin Drop's maps (Nov 2026): the world, plus local maps Randy draws (a
// county, a campus, a venue). A local map is offered in a room only when
// the room's access code has it turned on (/admin, access_codes.pin_drop_maps);
// the room then votes World or the local map.
//
// A local map is Randy's drawing traced over an OpenStreetMap export, which
// is Web Mercator, so a real place lands on it by a straight-line fit:
//   x = A * longitude + B,   y = C * mercator(latitude) + D
// The fit for Central PA came from the OpenStreetMap layer still inside
// Randy's SVG (public/maps/central-pa-map-ii.svg, the 4:3 redraw; the
// first, 2:1 drawing is central-pa-map.svg): ten town centers (Harrisburg,
// Lancaster, York, Gettysburg, Hanover, Chambersburg, Reading, Carlisle,
// Lebanon, Hagerstown) all land within half a mile, most within 0.2.
//
// Points fall off from the EDGE of a place's circle (Randy, Nov 27 2026: a
// mall or a city has no single center to argue over), by e^(-miles /
// falloff). The world's falloff is 1,000 miles; a local map's is scaled to
// its size (Central PA was ~117 miles across: 5 miles, Randy's yes; the 4:3
// redraw is ~78 miles across and kept 5).
import { toMap as worldToMap, fromMap as worldFromMap, MAP_W, MAP_H } from './pinMap.js';

const merc = lat => Math.log(Math.tan(Math.PI / 4 + lat * Math.PI / 360));
const unmerc = m => (2 * Math.atan(Math.exp(m)) - Math.PI / 2) * 180 / Math.PI;

function mercatorMap({ A, B, C, D }) {
    return {
        fit: { A, B, C, D }, // for the pin editor (/admin/pin-drop), which converts in the browser
        toMap: (lat, lon) => ({ x: A * lon + B, y: C * merc(lat) + D }),
        fromMap: (x, y) => ({ lat: unmerc((y - D) / C), lon: (x - B) / A })
    };
}

export const PIN_DROP_MAPS = {
    WORLD: {
        key: 'WORLD',
        name: 'The World',
        imageUrl: '/pin-drop/world-map.webp',
        tvImageUrl: '/pin-drop/world-map-tv.webp',
        w: MAP_W, h: MAP_H,
        toMap: worldToMap, fromMap: worldFromMap,
        falloffMiles: 1000,
        closeMiles: 300,   // "got it" on the phone's last-question card
        local: false
    },
    CENTRAL_PA: {
        key: 'CENTRAL_PA',
        name: 'Central PA',
        imageUrl: '/pin-drop/central-pa.webp',
        tvImageUrl: '/pin-drop/central-pa-tv.webp',
        // Redrawn at 4:3 (Randy, Nov 28 2026: the 2:1 map was a thin strip
        // on a phone and small beside a photo on the TV; maps are 4:3 from
        // now on). He zoomed in 1.4929x to fill the taller canvas, and the
        // OpenStreetMap layer moved with the drawing, so this fit is the
        // first one carried through that same scale and shift.
        w: 4800, h: 3600,
        ...mercatorMap({ A: 3254.98726344757, B: 252250.30771329085, C: -185854.55929805242, D: 143835.84624905584 }),
        unitsPerMile: 61.43, // map pixels per mile, for drawing a place's circle
        falloffMiles: 5,
        closeMiles: 2,
        minApartMiles: 3,   // no two places this close in one game (the Capitol and Harrisburg)
        local: true
    },
    // Hanover (Nov 28 2026): drawn from OpenStreetMap data by
    // scripts/osm-local-map.mjs (public/maps/hanover-map.svg), 7.7 miles
    // across. Town-sized scoring: a third of a mile off is the wrong part of
    // town, so points fall off over ~1/3 mile (~740 at 0.1 mi out, ~400 at
    // 0.3), and places a game uses are at least ~300 ft apart (the Square has
    // five within a block). First guesses, to tune in play.
    HANOVER: {
        key: 'HANOVER',
        name: 'Hanover',
        imageUrl: '/pin-drop/hanover.webp',
        tvImageUrl: '/pin-drop/hanover-tv.webp',
        w: 4800, h: 3600,
        ...mercatorMap({ A: 33103.44827585973, B: 2550289.655172234, C: -1896687.8735363847, D: 1440085.2304368608 }),
        unitsPerMile: 622.9,
        falloffMiles: 0.33,
        closeMiles: 0.1,
        minApartMiles: 0.06,
        local: true
    }
};

export const LOCAL_MAP_KEYS = Object.values(PIN_DROP_MAPS).filter(m => m.local).map(m => m.key);

export function pinDropMap(key) {
    return PIN_DROP_MAPS[key] || PIN_DROP_MAPS.WORLD;
}
