-- access_codes_theme.sql
-- Adds a TV theme to access codes, set on /admin under a code's Venue
-- settings (Randy, Nov 2026):
--
--   theme         'OFF' or a theme's name, like 'CHRISTMAS': seasonal or
--                 event decorations on the TV (Randy's art, in
--                 public/themes/<theme>/)
--   theme_starts  first day it shows (blank = from now)
--   theme_ends    last day it shows (blank = until switched off)
--
-- Each TV checks the dates against its own calendar when a room opens.
-- Every existing code starts with the theme Off. Needs
-- access_codes_venue_profiles.sql to have been run first. Safe to re-run.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS theme TEXT NOT NULL DEFAULT 'OFF';
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS theme_starts DATE;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS theme_ends DATE;

-- Check: every code should be listed with its theme Off.
SELECT code, label, profile, theme, theme_starts, theme_ends FROM access_codes ORDER BY created_at DESC;
