-- access_codes_house_column.sql
-- Adds the "house column" settings to access codes: a code can put its own
-- set of questions (e.g. HOUSE_PICKLES_PINS) as the left column of the
-- Thinking Pants board, in rounds 1 & 3 or in all 3 rounds. Set it on /admin
-- under a code's Venue settings. Every existing code starts with it Off.
--
--   house_category  which house questions, e.g. 'HOUSE_PICKLES_PINS'
--                   (the category those questions were saved under)
--   house_label     the column's title on the board, e.g. 'Pickles & Pins'
--   house_rounds    'OFF', 'ROUNDS_1_3' or 'ALL'
--
-- Needs access_codes_venue_profiles.sql to have been run first.
-- Safe to re-run: each column is only added if it isn't there yet.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS house_category TEXT;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS house_label TEXT;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS house_rounds TEXT NOT NULL DEFAULT 'OFF';

-- Check: every code should be listed with house_rounds OFF.
SELECT code, label, profile, house_category, house_rounds FROM access_codes ORDER BY created_at DESC;
