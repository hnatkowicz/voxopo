-- ============================================================================
-- venue_memory_more_kinds.sql -- venue memory covers Profiler and EmpossDurr too
-- (Randy, Nov 23 2026: the family noticed repeats in the social games)
--
-- venue_memory.sql only allowed three kinds of item: Thinking Pants /
-- Trivi-yeah! questions ('q'), Letter Rip phrases ('lr') and On the Spectrum
-- statements ('ots'). This lets it also remember Profiler questions ('pf',
-- the question's number) and EmpossDurr words ('ed', the word). Still
-- nothing about players.
--
-- Run once, as the owner (it changes a table). Safe to re-run. Until it's
-- run, the game skips remembering those two and everything else carries on.
-- ============================================================================

ALTER TABLE venue_memory DROP CONSTRAINT IF EXISTS venue_memory_kind_check;
ALTER TABLE venue_memory ADD CONSTRAINT venue_memory_kind_check
    CHECK (kind IN ('q', 'lr', 'ots', 'pf', 'ed'));

-- Check: should show the five kinds.
SELECT pg_get_constraintdef(oid) AS allowed_kinds
  FROM pg_constraint WHERE conname = 'venue_memory_kind_check';
