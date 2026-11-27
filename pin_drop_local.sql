-- ============================================================================
-- pin_drop_local.sql -- Pin Drop's local maps (Nov 27 2026), starting with
-- Randy's Central PA map.
--
-- 1. pin_drop_places learns which map a place is on (map_key: WORLD or a
--    local map), its scoring circle (radius_miles: inside the circle is full
--    points, and points fall off from its edge -- Randy: a mall or a city has
--    no single center), and an optional prompt (a clue shown instead of the
--    name; the name is revealed at the end). Local kinds: PLACE (asked by
--    name), CLUE (asked by its prompt), PHOTO (one of Randy's photos).
--    Difficulty runs 1-4 on local maps.
-- 2. access_codes learns which local maps a code plays (pin_drop_maps; set
--    on /admin, none by default). A room on such a code votes World or the
--    local map when Pin Drop starts.
-- 3. The first 21 Central PA places. Coordinates are Claude's FIRST DRAFT
--    from memory, placed onto Randy's map through the fit in
--    src/services/localMaps.js. Check them on the map; correct a pin by
--    editing its lat/lon here (an admin page to drag pins comes next).
--
-- SAFE TO RE-RUN: columns are added only if missing, and each place is
-- added or updated by (kind, label).
-- ============================================================================

ALTER TABLE pin_drop_places ADD COLUMN IF NOT EXISTS map_key TEXT NOT NULL DEFAULT 'WORLD';
ALTER TABLE pin_drop_places ADD COLUMN IF NOT EXISTS radius_miles DOUBLE PRECISION NOT NULL DEFAULT 0;
ALTER TABLE pin_drop_places ADD COLUMN IF NOT EXISTS prompt TEXT;
-- Local maps add kinds and a fourth difficulty.
ALTER TABLE pin_drop_places DROP CONSTRAINT IF EXISTS pin_drop_places_kind_check;
ALTER TABLE pin_drop_places ADD CONSTRAINT pin_drop_places_kind_check CHECK (kind IN ('CITY', 'LANDMARK', 'PLACE', 'CLUE', 'PHOTO'));
ALTER TABLE pin_drop_places DROP CONSTRAINT IF EXISTS pin_drop_places_difficulty_check;
ALTER TABLE pin_drop_places ADD CONSTRAINT pin_drop_places_difficulty_check CHECK (difficulty BETWEEN 1 AND 4);

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS pin_drop_maps TEXT[];

-- Central PA. Circles: ~0.3 mi for a bridge, dam or building; 0.4 a mall;
-- 0.5-0.75 a small town; 1-1.5 a city; lakes by their size.
-- Difficulty: 1 cities everyone can find, 2 on the river or a big road,
-- 3 small towns and malls on a drawn road, 4 lakes (not drawn, on purpose).
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Harrisburg', NULL, NULL, 40.2732, -76.8867, 1.5, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'York', NULL, NULL, 39.9626, -76.7277, 1.5, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Lancaster', NULL, NULL, 40.0379, -76.3055, 1.5, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Gettysburg', NULL, NULL, 39.8309, -77.2311, 1.0, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Hanover', NULL, NULL, 39.8007, -76.9830, 1.2, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Hersheypark', NULL, NULL, 40.2888, -76.6546, 0.4, 1) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'The State Capitol', NULL, NULL, 40.2646, -76.8836, 0.3, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'The Columbia-Wrightsville bridge', NULL, NULL, 40.0290, -76.5170, 0.3, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Three Mile Island', NULL, NULL, 40.1530, -76.7250, 0.6, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Park City Center', NULL, NULL, 40.0571, -76.3392, 0.4, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'The York Galleria', NULL, NULL, 39.9739, -76.6672, 0.4, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Capital City Mall', NULL, NULL, 40.2266, -76.9343, 0.4, 2) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'New Oxford', NULL, NULL, 39.8637, -77.0558, 0.6, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Spring Grove', NULL, NULL, 39.8746, -76.8658, 0.6, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Marietta', NULL, NULL, 40.0570, -76.5525, 0.5, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'North Hanover Mall', NULL, NULL, 39.8305, -76.9890, 0.3, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Tanger Outlets Lancaster', NULL, NULL, 40.0296, -76.2251, 0.3, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Safe Harbor Dam', NULL, NULL, 39.9227, -76.3894, 0.3, 3) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Lake Redman', NULL, NULL, 39.8820, -76.6900, 0.6, 4) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Pinchot Lake', NULL, NULL, 40.0730, -76.8930, 0.6, 4) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;
INSERT INTO pin_drop_places (map_key, kind, label, prompt, image_url, lat, lon, radius_miles, difficulty) VALUES ('CENTRAL_PA', 'PLACE', 'Lake Marburg (Codorus State Park)', NULL, NULL, 39.7850, -76.9150, 0.8, 4) ON CONFLICT (kind, label) DO UPDATE SET map_key = EXCLUDED.map_key, prompt = EXCLUDED.prompt, image_url = EXCLUDED.image_url, lat = EXCLUDED.lat, lon = EXCLUDED.lon, radius_miles = EXCLUDED.radius_miles, difficulty = EXCLUDED.difficulty, active = true;

-- Check: 21 Central PA places, by difficulty.
SELECT difficulty, COUNT(*) AS places FROM pin_drop_places WHERE map_key = 'CENTRAL_PA' AND active GROUP BY difficulty ORDER BY difficulty;
