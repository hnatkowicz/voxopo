-- access_codes_venue_profiles.sql
-- Adds venue profiles to access codes: a code can open "pub" rooms with the
-- venue's name, tagline and logo on the TV, and limit which game modes its
-- rooms offer. Every existing code stays exactly as it is (profile HOME, all
-- modes) until you change it on /admin.
--
--   profile        'HOME' (the living-room version) or 'PUB'
--   venue_name     shown big on the TV, e.g. 'Pickles & Pins'
--   venue_tagline  a short line under the name, e.g. 'Strikes, spares & dill'
--   venue_logo     a file name in public/venues/, e.g. 'pickles-pins.svg'
--   allowed_modes  which modes the lobby shows, e.g.
--                  '{TRIVI_YEAH_II,FLAG_ME_DOWN,COUNTRY_MONKEY}'
--                  (empty = every mode)
--
-- Safe to re-run: each column is only added if it isn't there yet.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS profile TEXT NOT NULL DEFAULT 'HOME';
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS venue_name TEXT;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS venue_tagline TEXT;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS venue_logo TEXT;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS allowed_modes TEXT[];

-- Check: every code should be listed, with HOME unless you've changed it.
SELECT code, label, active, profile, venue_name, allowed_modes FROM access_codes ORDER BY created_at DESC;
