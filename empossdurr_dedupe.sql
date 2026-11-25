-- ============================================================================
-- EmpossDurr: remove duplicate words (Nov 25 2026).
--
-- Running empossdurr_cleanup.sql in Neon showed some words in the live deck
-- more than once (BUCKET 4 times; DRUM, BAT and WINE twice), likely from the
-- batches and reconciliation runs overlapping. A game builds its deck once,
-- so both copies of a word could come up in the same game.
--
-- Step 1 only LOOKS: every word that's in the table more than once, and how
-- many times (capitals and stray spaces ignored, so "Bucket " and "BUCKET"
-- count as the same word). Step 2 keeps the oldest copy of each (lowest id)
-- and deletes the rest. Step 3 checks: no duplicates left, and the deck's
-- new size.
--
-- Safe to re-run (a second run finds nothing to delete). One transaction.
-- ============================================================================

-- 1. Look: which words are doubled up?
SELECT UPPER(TRIM(word)) AS word, count(*) AS copies
FROM empossdurr_words
GROUP BY UPPER(TRIM(word))
HAVING count(*) > 1
ORDER BY copies DESC, word;

-- 2. Keep the oldest copy of each word, delete the others.
BEGIN;
DELETE FROM empossdurr_words w
USING empossdurr_words keep
WHERE UPPER(TRIM(w.word)) = UPPER(TRIM(keep.word))
  AND w.id > keep.id;
COMMIT;

-- 3. Check: should return 0, then the deck's size.
SELECT count(*) AS duplicate_words_left FROM (
    SELECT 1 FROM empossdurr_words GROUP BY UPPER(TRIM(word)) HAVING count(*) > 1
) d;
SELECT count(*) AS words_in_deck FROM empossdurr_words;
