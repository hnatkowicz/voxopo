-- access_codes_breaks.sql
-- Adds venue breaks to access codes (Randy, Oct 2026): a timed break between
-- Thinking Pants rounds and after a Trivi-yeah! game, showing the venue's
-- big logo, the join QR code and the venue's notes ("Half-price wings till
-- 9!", fun facts about the bride). Set them on /admin under a code's Venue
-- settings. Every existing code starts with breaks Off.
--
--   break_minutes  0 (Off), 2 or 5
--   break_notes    the lines the TV rotates through during a break
--
-- Safe to re-run: each column is only added if it isn't there yet.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS break_minutes INTEGER NOT NULL DEFAULT 0;
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS break_notes TEXT[];

-- Check: every code should be listed with break_minutes 0.
SELECT code, label, break_minutes, break_notes FROM access_codes ORDER BY created_at DESC;
