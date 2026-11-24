# Pin Drop's places (Randy, Nov 2026): every round is a place to find on the
# world map, either a city by name or one of Randy's landmark photos.
#
#   python3 content/pin_drop_source.py
#
# writes pin_drop_places.sql (Randy runs it in Neon). Safe to re-run: it adds
# new places and updates the ones already there.
#
# CITIES come from content/pin_drop_cities.csv, which started as Natural
# Earth's list of populated places (public domain, naturalearthdata.com):
# every national capital, plus the world's best-known big cities. Difficulty
# 1-3 started from Natural Earth's own "how famous" rank, then hand-adjusted
# for an American table (Urumqi and Tashkent to 3, Chengdu to 2). To retire a
# city, put yes in its retired column, like the other sheets.
#
# LANDMARKS are the photos in public/structures/, listed in
# content/landmarks_source.py; their coordinates are below (Nov 2026, the
# landmark itself, not the nearest city). Landmark difficulty 1-4 becomes
# 1, 2, 3, 3 here.
import csv, os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(ROOT, 'content'))
from landmarks_source import L as LANDMARKS, COUNTRY  # noqa: E402

# (latitude, longitude) of each landmark, north and east positive.
WHERE = {
    'eiffel-tower': (48.858, 2.294), 'great-pyramids': (29.979, 31.134), 'taj-mahal': (27.175, 78.042),
    'big-ben': (51.501, -0.125), 'colosseum': (41.890, 12.492), 'leaning-tower-pisa': (43.723, 10.396),
    'burj-khalifa': (25.197, 55.274), 'space-needle': (47.620, -122.349), 'sydney-opera': (-33.857, 151.215),
    'white-house': (38.898, -77.037), 'christ-redeemer': (-22.952, -43.211), 'golden-gate': (37.820, -122.478),
    'grand-canyon': (36.107, -112.113), 'great-sphinx': (29.975, 31.138), 'great-wall': (40.359, 116.020),  # Badaling
    'machu-picchu': (-13.163, -72.545), 'mount-rushmore': (43.879, -103.459), 'mt-fuji': (35.361, 138.727),
    'arc-triomphe': (48.874, 2.295), 'forbidden-city': (39.916, 116.397), 'parthenon': (37.972, 23.727),
    'us-capitol': (38.890, -77.009), 'brooklyn-bridge': (40.706, -73.997), 'burj-alarab': (25.141, 55.185),
    'gateway-arch': (38.625, -90.185), 'marina-bay': (1.284, 103.861), 'neuschwanstein-castle': (47.558, 10.750),
    'one-wtc': (40.713, -74.013), 'petronas-towers': (3.158, 101.712), 'taipei-101': (25.034, 121.565),
    'ayers-rock-uluru': (-25.345, 131.036), 'blue-mosque': (41.005, 28.977), 'chichen-itza': (20.684, -88.568),
    'easter-island': (-27.113, -109.350), 'grand-canal': (45.438, 12.335), 'hagia-sophia': (41.009, 28.980),
    'hoover-dam': (36.016, -114.738), 'mont-stmichel': (48.636, -1.511), 'mt-kilimanjaro': (-3.068, 37.356),
    'angkor-wat': (13.412, 103.867), 'golden-pavilion': (35.039, 135.729), 'versailles': (48.805, 2.120),
    'atomium-brussels': (50.895, 4.341), 'birds-nest': (39.992, 116.396), 'cn-tower': (43.643, -79.387),
    'falling-water': (39.906, -79.468), 'guggenheim-bilbao': (43.269, -2.934), 'guggenheim-ny': (40.783, -73.959),
    'the-shard': (51.505, -0.087), 'flatiron-building': (40.741, -73.990), 'angel-falls': (5.968, -62.536),
    'canton-tower': (23.106, 113.324), 'fort-knox': (37.883, -85.965), 'halong-bay': (20.910, 107.184),
    'horseshoe-bend': (36.880, -111.510), 'iguacu-falls': (-25.695, -54.437), 'lotus-temple': (28.553, 77.259),
    'mesa-verde': (37.184, -108.489), 'monument-valley': (36.998, -110.098), 'mt-everest': (27.988, 86.925),
    'museum-future': (25.219, 55.282), 'winter-palace': (59.940, 30.314), 'pantheon': (41.899, 12.477),  # Rome
    'bosco-verticale': (45.486, 9.190), 'evolution-tower': (55.751, 37.535), 'habitat-67': (45.500, -73.543),
    'turning-torso': (55.613, 12.976), 'villa-savoye': (48.925, 2.028), 'amber-palace': (26.986, 75.851),
    'chand-baori': (27.007, 76.607), 'derawar-fort': (28.768, 71.334), 'fort-mchenry': (39.263, -76.580),
    'kyoto-tower': (34.988, 135.759), 'las-lajas': (0.805, -77.586), 'statue-liberty': (40.689, -74.045),
    'tower-bridge': (51.505, -0.075), 'stonehenge-stones': (51.179, -1.826), 'niagarafalls': (43.080, -79.074),
    'st-basils': (55.753, 37.623), 'the-louvre': (48.861, 2.336), 'notre-dame': (48.853, 2.350),
    'petra-landmark': (30.329, 35.444), 'the-alamo': (29.426, -98.486), 'tikal-temple': (17.222, -89.624),
    'temple-sun': (19.692, -98.844), 'pont-dugard': (43.947, 4.535), 'rialto-bridge': (45.438, 12.336),
    'the-vessel': (40.754, -74.002), 'todai-ji': (34.689, 135.840), 'three-gorges': (30.823, 111.003),
    'sigiriya-fortress': (7.957, 80.760), 'victoria-falls': (-17.925, 25.857), 'abu-simbel': (22.337, 31.626),
    'dome-rock': (31.778, 35.235), 'sayed-mosque': (24.413, 54.475), 'table-mountain': (-33.963, 18.409),
    'dejennes-mosque': (13.905, -4.555), 'hassan-ii-mosque': (33.608, -7.633), 'persepolis': (29.935, 52.891),
    'lalibela-church': (12.032, 39.041), 'brandenburg-gate': (52.516, 13.378), 'trevi-fountain': (41.901, 12.483),
    'the-matterhorn': (45.976, 7.658), 'sugarloaf-mountain': (-22.949, -43.157), 'santorini-domes': (36.462, 25.376),  # Oia
    'potala-palace': (29.658, 91.117), 'panama-canal': (8.997, -79.592),  # Miraflores Locks
    'sky-tree': (35.710, 139.811), 'cliffs-moher': (52.972, -9.426), 'fairy-chimneys': (38.643, 34.830),  # Goreme
    'salar-uyuni': (-20.134, -67.489), 'golden-temple': (31.620, 74.876), 'blue-city': (35.171, -5.270),
    'pamukkale-terraces': (37.924, 29.121), 'hallgrimskirkja-church': (64.142, -21.927), 'chateau-frontenac': (46.812, -71.205),
    'karnak-temple': (25.719, 32.657), 'torres-paine': (-50.942, -73.407), 'avenue-baobabs': (-20.251, 44.419),
    'masada-fortress': (31.316, 35.354), 'mount-bromo': (-7.942, 112.953), 'registan-square': (39.655, 66.976),
    'robben-island': (-33.807, 18.371), 'red-dunes': (-24.731, 15.293), 'baalbek-temple': (34.007, 36.204),
    'fish-river-canyon': (-27.598, 17.611), 'yamoussoukro-basilica': (6.811, -5.297), 'flame-towers': (40.360, 49.826),
    'el-morro': (18.471, -66.124),  # San Juan, Puerto Rico
    'banue-terraces': (16.919, 121.058), 'kingdon-centre': (24.711, 46.674), 'azadi-tower': (35.700, 51.338),
}

LANDMARK_TIER = {1: 1, 2: 2, 3: 3, 4: 3}
RETIRED = {'yes', 'y', 'true', 'x', '1'}


def sq(s):
    return "'" + str(s).replace("'", "''") + "'"


def rows():
    out = []
    with open(os.path.join(ROOT, 'content', 'pin_drop_cities.csv'), encoding='utf-8') as fh:
        for r in csv.DictReader(fh):
            if (r.get('retired') or '').strip().lower() in RETIRED:
                continue
            out.append(('CITY', r['label'], None, float(r['lat']), float(r['lon']), int(r['difficulty'])))
    missing = [f for f, *_ in LANDMARKS if f not in WHERE]
    if missing:
        raise SystemExit(f'No coordinates for: {", ".join(missing)}')
    for f, answer, _regions, d, _wrong, _acc in LANDMARKS:
        lat, lon = WHERE[f]
        out.append(('LANDMARK', f'{answer}, {COUNTRY[f]}', f'/structures/{f}.webp', lat, lon, LANDMARK_TIER[d]))
    return out


def sql():
    rs = rows()
    cities = sum(1 for r in rs if r[0] == 'CITY')
    lines = [f"""-- ============================================================================
-- pin_drop_places.sql -- Pin Drop's places -- GENERATED by
-- content/pin_drop_source.py (edit that, or content/pin_drop_cities.csv, and
-- re-run it; don't edit this by hand).
--
-- {cities} cities (Natural Earth, public domain) and {len(rs) - cities} of Randy's landmark photos,
-- each with its latitude and longitude and a difficulty of 1-3. A game draws
-- a mix of both, easy to hard.
--
-- SAFE TO RE-RUN: it creates the table if needed, adds new places and updates
-- the ones already there. A place retired from the sheet stays in the table
-- but is switched off (active = false).
-- ============================================================================

CREATE TABLE IF NOT EXISTS pin_drop_places (
    id          SERIAL PRIMARY KEY,
    kind        TEXT NOT NULL CHECK (kind IN ('CITY', 'LANDMARK')),
    label       TEXT NOT NULL,              -- shown at the reveal (a city is also its prompt)
    image_url   TEXT,                       -- a landmark's photo; NULL for a city
    lat         DOUBLE PRECISION NOT NULL,
    lon         DOUBLE PRECISION NOT NULL,
    difficulty  SMALLINT NOT NULL CHECK (difficulty BETWEEN 1 AND 3),
    active      BOOLEAN NOT NULL DEFAULT true,
    UNIQUE (kind, label)
);

-- Everything off first; the rows below switch back on what's still listed.
UPDATE pin_drop_places SET active = false;
"""]
    for kind, label, img, lat, lon, d in rs:
        lines.append(
            f"INSERT INTO pin_drop_places (kind, label, image_url, lat, lon, difficulty) VALUES "
            f"('{kind}', {sq(label)}, {sq(img) if img else 'NULL'}, {lat}, {lon}, {d}) "
            f"ON CONFLICT (kind, label) DO UPDATE SET image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, "
            f"lon = EXCLUDED.lon, difficulty = EXCLUDED.difficulty, active = true;")
    lines.append("""
-- Check: places switched on, by kind and difficulty.
SELECT kind, difficulty, COUNT(*) AS places FROM pin_drop_places WHERE active GROUP BY kind, difficulty ORDER BY kind, difficulty;
""")
    return '\n'.join(lines)


if __name__ == '__main__':
    with open(os.path.join(ROOT, 'pin_drop_places.sql'), 'w', encoding='utf-8') as fh:
        fh.write(sql())
    rs = rows()
    print(f'{len(rs)} places -> pin_drop_places.sql')
