-- ============================================================================
-- neon_claude_role.sql -- a Neon login just for Claude (Randy, Nov 2026)
--
-- Randy: "There is truly no need for me to review and enter the SQL." So
-- Claude runs the content files itself, through this role. It can read,
-- add, change and delete GAME CONTENT only:
--
--   questions, letter_rip_puzzles, profiler_questions,
--   on_the_spectrum_statements, empossdurr_words, flag_me_down_countries
--
-- It can READ (not change) the venue settings, so Claude can check things:
--
--   access_codes, thinking_pants_category_settings,
--   access_code_category_settings
--
-- It can NOT drop, empty (TRUNCATE) or reshape any table, and can't touch
-- anything else, so a disaster like seed.js (which drops the questions
-- table) just gets "permission denied". The rare file that adds a column
-- still needs Randy's owner login.
--
-- HOW TO RUN (once, in the Neon SQL editor, as the owner -- the usual login):
--   1. Replace CHANGE-ME below with a long random password: 20+ letters
--      and numbers (Neon refuses short or simple ones for roles made in
--      SQL). Keep it somewhere safe; it goes into the environment setting,
--      never into chat or GitHub.
--   2. Run the whole file. Safe to re-run: it creates the role only if it
--      isn't there (re-running doesn't change the password), and skips any
--      table that doesn't exist.
--
-- To undo everything later:  DROP OWNED BY claude_content; DROP ROLE claude_content;
-- ============================================================================

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'claude_content') THEN
        CREATE ROLE claude_content LOGIN PASSWORD 'CHANGE-ME';
    END IF;
END $$;

GRANT CONNECT ON DATABASE neondb TO claude_content;
GRANT USAGE ON SCHEMA public TO claude_content;

-- Content: read, add, change, delete (no TRUNCATE, no DROP, no ALTER).
DO $$
DECLARE t text;
BEGIN
    FOREACH t IN ARRAY ARRAY['questions', 'letter_rip_puzzles', 'profiler_questions',
                             'on_the_spectrum_statements', 'empossdurr_words', 'flag_me_down_countries']
    LOOP
        IF to_regclass('public.' || t) IS NOT NULL THEN
            EXECUTE format('GRANT SELECT, INSERT, UPDATE, DELETE ON public.%I TO claude_content', t);
        END IF;
    END LOOP;
END $$;

-- Venue settings: read only (they stay /admin's job).
DO $$
DECLARE t text;
BEGIN
    FOREACH t IN ARRAY ARRAY['access_codes', 'thinking_pants_category_settings', 'access_code_category_settings']
    LOOP
        IF to_regclass('public.' || t) IS NOT NULL THEN
            EXECUTE format('GRANT SELECT ON public.%I TO claude_content', t);
        END IF;
    END LOOP;
END $$;

-- New rows in the tables with automatic ids (Letter Rip, Profiler, ...)
-- take their next number from a counter; this lets the role use them.
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO claude_content;

-- Check: the tables the role can use, and how (should list the 9 above).
SELECT table_name, string_agg(privilege_type, ', ' ORDER BY privilege_type) AS allowed
FROM information_schema.role_table_grants
WHERE grantee = 'claude_content'
GROUP BY table_name
ORDER BY table_name;
