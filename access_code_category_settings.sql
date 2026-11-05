-- access_code_category_settings.sql
-- Per-venue Thinking Pants category dial (Randy, Nov 2026). On /admin, each
-- access code can set any category to Off, Normal or Boost for its own
-- rooms. A category with no row here follows the global dial
-- (thinking_pants_category_settings) -- that's "Default" on /admin.
--
-- Why: the global dial was doing two jobs. Boosting a category for the
-- family (state capitals for Randy's youngest) boosted it at every venue
-- too. Main venue use is Off (no College Athletics at a library night).
--
-- Only venue names and settings live here -- nothing about players.
-- Safe to re-run: the table is only created if it isn't there yet.

CREATE TABLE IF NOT EXISTS access_code_category_settings (
    code        TEXT NOT NULL REFERENCES access_codes(code) ON DELETE CASCADE,
    category    TEXT NOT NULL,
    setting     TEXT NOT NULL CHECK (setting IN ('OFF', 'NORMAL', 'BOOST')),
    updated_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (code, category)
);

-- Check: should return 0 the first time (every venue starts on Default).
SELECT COUNT(*) FROM access_code_category_settings;
