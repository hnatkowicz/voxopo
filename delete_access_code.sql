-- delete_access_code.sql
-- Permanently removes ONE access code and its venue setup (name, logo,
-- tagline, allowed modes, house column, board rules, breaks, and its
-- per-venue category settings, which go with it automatically).
--
-- NOT reversible. Most of the time you want Revoke on /admin instead: it
-- switches the code off but keeps the whole setup, so a returning venue is
-- one click from back. Use this only when a customer is gone for good.
--
-- How to use:
--   1. Replace OLD-CODE with the real code everywhere below (4 places).
--   2. Run step 1 and check it shows the right venue.
--   3. Run step 2.
-- Safe to re-run: once the code is gone, every statement finds nothing.

-- Step 1: look before you delete.
SELECT code, label, active, profile, venue_name, house_category
FROM access_codes
WHERE code = 'OLD-CODE';

SELECT COUNT(*) AS category_settings_that_will_go
FROM access_code_category_settings
WHERE code = 'OLD-CODE';

-- Step 2: delete the code (its category settings go with it).
DELETE FROM access_codes WHERE code = 'OLD-CODE';

-- Optional: the venue's own house questions. These are NOT removed above,
-- because a house set lives in the questions table and has its own SQL file
-- in the repo (which ends with its own commented-out DELETE). If you want
-- them gone too, use that file's DELETE -- e.g. for Pickles & Pins:
--   DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_PICKLES_PINS';
-- Check first that no other code uses the same house set.
