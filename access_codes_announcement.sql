-- access_codes_announcement.sql
-- Adds the scheduled announcement to access codes, set on /admin under a
-- code's Venue settings (Randy, Nov 2026, after a trivia night where the
-- host stopped at 8:00 pm for the post charter and a moment of silence).
--
-- At the set time, whatever game the room is playing pauses (at the next
-- moment no question is open), the TV shows the announcement over a flag
-- or the venue's picture and plays the venue's recorded narration, holds
-- an optional moment of silence, and the game picks up where it was.
--
--   announcement   one JSON value holding the whole setup, written by
--                  /admin: on/off, the time and the venue's time zone, the
--                  days (or one date), title, words, background picture,
--                  narration file and its length, and seconds of silence.
--                  Empty (NULL) = no announcement.
--
-- Every existing code starts with no announcement. Safe to re-run.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS announcement JSONB;

-- Check: every code should be listed, with announcement empty.
SELECT code, label, venue_name, announcement FROM access_codes ORDER BY created_at DESC;
