-- ============================================================================
-- Country Monkey: Final Wager clues for the WATER questions.
--
-- In Country Monkey's Final Wager a player can buy ONE clue on their phone
-- for half their winnings (Randy, Oct 2026). For a body of water the clue is
-- a place it touches ("Touches: Kentucky" for the Ohio River). Where the
-- obvious country would give the answer away (Gulf of Mexico, Senegal River,
-- Tennessee River) it names a neighbor instead.
--
-- Maps and flags need nothing: their clue is the capital, read from Flag Me
-- Down's country table. Landmarks get theirs from country_monkey_landmarks.sql.
--
-- Safe to re-run. Run it AGAIN after re-running country_monkey_water.sql
-- (that file replaces the water rows, clues and all). 49 bodies of water;
-- a few appear in more than one region, so more rows than that update.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS hint TEXT;

UPDATE questions SET hint = 'Croatia'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Adriatic Sea';
UPDATE questions SET hint = 'Greece'                             WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Aegean Sea';
UPDATE questions SET hint = 'Pakistan'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Arabian Sea';
UPDATE questions SET hint = 'Greenland'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Baffin Bay';
UPDATE questions SET hint = 'Sweden'                             WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Baltic Sea';
UPDATE questions SET hint = 'Nova Scotia (Canada)'               WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Bay of Fundy';
UPDATE questions SET hint = 'Bulgaria'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Black Sea';
UPDATE questions SET hint = 'Ethiopia'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Blue Nile';
UPDATE questions SET hint = 'Jamaica'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Caribbean Sea';
UPDATE questions SET hint = 'Kazakhstan'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Caspian Sea';
UPDATE questions SET hint = 'Maryland'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Chesapeake Bay';
UPDATE questions SET hint = 'Angola'                             WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Congo River';
UPDATE questions SET hint = 'Greenland'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Davis Strait';
UPDATE questions SET hint = 'Ukraine'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Dnieper River';
UPDATE questions SET hint = 'Somalia'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Gulf of Aden';
UPDATE questions SET hint = 'Sonora (Mexico)'                    WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Gulf of California';
UPDATE questions SET hint = 'Cuba'                               WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Gulf of Mexico';
UPDATE questions SET hint = 'Iran'                               WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Gulf of Oman';
UPDATE questions SET hint = 'Prince Edward Island (Canada)'      WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Gulf of St. Lawrence';
UPDATE questions SET hint = 'Manitoba (Canada)'                  WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Hudson Bay';
UPDATE questions SET hint = 'New Jersey'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Hudson River';
UPDATE questions SET hint = 'Quebec (Canada)'                    WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Hudson Strait';
UPDATE questions SET hint = 'Ontario (Canada)'                   WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'James Bay';
UPDATE questions SET hint = 'Greenland'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Labrador Sea';
UPDATE questions SET hint = 'Ohio'                               WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Erie';
UPDATE questions SET hint = 'Michigan and Ontario'               WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Huron';
UPDATE questions SET hint = 'Mozambique'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Malawi';
UPDATE questions SET hint = 'Wisconsin'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Michigan';
UPDATE questions SET hint = 'New York'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Ontario';
UPDATE questions SET hint = 'Minnesota'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Superior';
UPDATE questions SET hint = 'Burundi'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Tanganyika';
UPDATE questions SET hint = 'Uganda'                             WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Lake Victoria';
UPDATE questions SET hint = 'Libya'                              WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Mediterranean Sea';
UPDATE questions SET hint = 'Louisiana'                          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Mississippi River';
UPDATE questions SET hint = 'Madagascar'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Mozambique Channel';
UPDATE questions SET hint = 'Sudan'                              WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Nile River';
UPDATE questions SET hint = 'Ireland'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'North Atlantic Ocean';
UPDATE questions SET hint = 'Norway'                             WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'North Sea';
UPDATE questions SET hint = 'Nunavut (Canada)'                   WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Northwest Passage';
UPDATE questions SET hint = 'Kentucky'                           WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Ohio River';
UPDATE questions SET hint = 'Washington State'                   WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Puget Sound';
UPDATE questions SET hint = 'Eritrea'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Red Sea';
UPDATE questions SET hint = 'British Columbia (Canada)'          WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Salish Sea';
UPDATE questions SET hint = 'Normandy (France)'                  WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Seine River';
UPDATE questions SET hint = 'Mauritania'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Senegal River';
UPDATE questions SET hint = 'Pennsylvania'                       WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Susquehanna River';
UPDATE questions SET hint = 'Alabama'                            WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Tennessee River';
UPDATE questions SET hint = 'South Sudan'                        WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'White Nile';
UPDATE questions SET hint = 'Mozambique'                         WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND correct_answer = 'Zambezi River';

COMMIT;

-- Check: every water question has a clue (should return 0).
SELECT COUNT(*) FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER' AND hint IS NULL;
