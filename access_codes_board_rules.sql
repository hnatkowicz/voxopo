-- access_codes_board_rules.sql
-- Adds the Thinking Pants board rules to access codes, set on /admin under a
-- code's Venue settings:
--
--   board_rules  'CLASSIC'  column sweeps (+400) and traps -- the usual game
--                'PLAIN'    no sweep bonus and no traps; tiles, Doublers and
--                           the Final Wager only. Made for one-on-one games,
--                           where a lone sweep (and its trap) happens a lot.
--
-- Every existing code starts as CLASSIC. Needs access_codes_venue_profiles.sql
-- to have been run first. Safe to re-run.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS board_rules TEXT NOT NULL DEFAULT 'CLASSIC';

-- Check: every code should be listed as CLASSIC.
SELECT code, label, profile, board_rules FROM access_codes ORDER BY created_at DESC;
