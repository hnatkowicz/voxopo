-- thinking_pants_category_settings.sql
-- The Thinking Pants category dial (Randy, Oct 2026): each category is Off,
-- Normal or Boost, set on /admin under "Thinking Pants Categories".
--
--   OFF     never on a board (its questions stay in the database)
--   NORMAL  the usual draw (deeper categories come up a bit more often)
--   BOOST   about twice as often as Normal
--
-- A category with no row here is Normal. Starts Logo My Eggo on Boost
-- (Randy's youngest had spotted just one logo tile in several games).
--
-- Safe to re-run: the table is only created if missing, and the Logos row
-- is only added if it isn't there yet (a later change on /admin is kept).

CREATE TABLE IF NOT EXISTS thinking_pants_category_settings (
    category    TEXT PRIMARY KEY,
    setting     TEXT NOT NULL DEFAULT 'NORMAL' CHECK (setting IN ('OFF', 'NORMAL', 'BOOST')),
    updated_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

INSERT INTO thinking_pants_category_settings (category, setting) VALUES ('LOGOS', 'BOOST')
ON CONFLICT (category) DO NOTHING;

-- Added later: Brush With Greatness (the art category) launches on Boost,
-- to get the family's verdict fast.
INSERT INTO thinking_pants_category_settings (category, setting) VALUES ('ART_GALLERY', 'BOOST')
ON CONFLICT (category) DO NOTHING;

-- Check: should list LOGOS | BOOST.
SELECT category, setting FROM thinking_pants_category_settings ORDER BY category;
