-- ============================================================================
-- double_take.sql -- where the differences are in each Double Take photo pair
-- (Randy, Nov 2026)
--
-- The photos themselves live in the repo, public/double-take/<name>-original.webp
-- and <name>-altered.webp (uploaded through GitHub, like every other picture:
-- Render's disk is wiped on each deploy, so a photo uploaded to the site
-- itself would vanish). This table holds only what /admin/double-take saves
-- for each pair: the boxes around its differences, in the photo's own pixels
-- (1600x1200), and whether it's ready to be played.
--
-- spots looks like: [{"x":792,"y":496,"w":64,"h":48}, ...]
--
-- Run once, as the owner (it creates a table). Safe to re-run.
-- ============================================================================

CREATE TABLE IF NOT EXISTS double_take_photos (
    name        TEXT PRIMARY KEY,                 -- the file name before -original.webp
    spots       JSONB NOT NULL DEFAULT '[]'::jsonb,
    ready       BOOLEAN NOT NULL DEFAULT false,   -- only ready pairs get played
    updated_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Check: should list the new table with 0 rows.
SELECT COUNT(*) AS pairs_so_far FROM double_take_photos;

-- To forget a pair's spots (start it over on /admin/double-take):
-- DELETE FROM double_take_photos WHERE name = 'allens';
