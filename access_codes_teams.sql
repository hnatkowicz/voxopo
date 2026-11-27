-- access_codes_teams.sql
-- Adds teams to access codes (Randy and his son, Nov 2026), set on /admin
-- under a code's Venue settings:
--
--   teams_mode      'ROOM'    the room decides: a Teams yes/no switch on
--                             every phone in the lobby, majority wins, and
--                             it stays on until the room votes it off
--                   'ALWAYS'  every game is played in teams (team nights)
--                   'OFF'     never; no switch on the phones
--   team_size_max   most players on one team (7 by default -- Randy: "lucky")
--
-- Every existing code starts as ROOM with teams of up to 7, so the switch
-- appears in every lobby once this runs. Until then the game has no teams
-- at all. Needs access_codes_venue_profiles.sql to have been run first.
-- Safe to re-run.

ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS teams_mode TEXT NOT NULL DEFAULT 'ROOM';
ALTER TABLE access_codes ADD COLUMN IF NOT EXISTS team_size_max INT NOT NULL DEFAULT 7;

-- Check: every code should be listed as ROOM, 7.
SELECT code, label, teams_mode, team_size_max FROM access_codes ORDER BY created_at DESC;
