-- ============================================================================
-- venue_memory.sql -- each access code remembers what its rooms have played
-- (Randy, Nov 2026)
--
-- So regulars don't see repeats from one night to the next: for four weeks,
-- a code's rooms prefer Thinking Pants / Trivi-yeah! questions, Letter Rip
-- phrases and On the Spectrum statements that code hasn't played yet.
--
-- What's stored: the access code, what kind of item it is, the item (a
-- question number, a statement number, or a Letter Rip phrase) and when it
-- was last played. NOTHING about players. The server deletes rows older
-- than the window by itself.
--
-- Run once, as the owner (it creates a table). Safe to re-run. The game
-- works the same without it; venue memory just stays off until it's run.
-- ============================================================================

CREATE TABLE IF NOT EXISTS venue_memory (
    access_code TEXT NOT NULL REFERENCES access_codes(code) ON DELETE CASCADE,
    kind        TEXT NOT NULL CHECK (kind IN ('q', 'lr', 'ots')),
    item        TEXT NOT NULL,
    played_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (access_code, kind, item)
);

CREATE INDEX IF NOT EXISTS venue_memory_recent ON venue_memory (access_code, played_at);

-- Check: should list the new table with 0 rows.
SELECT COUNT(*) AS rows_so_far FROM venue_memory;

-- To wipe one code's memory (a venue wants a fresh start):
-- DELETE FROM venue_memory WHERE access_code = 'THECODE';
