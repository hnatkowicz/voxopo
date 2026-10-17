-- ============================================================================
-- pickles_and_pins_house.sql
-- House questions for the Pickles & Pins test venue: a "house column" on the
-- Thinking Pants board when a code's venue settings on /admin turn it on
-- (house questions HOUSE_PICKLES_PINS). 16 questions, 4 per point tier, so
-- even "All 3 rounds" never repeats a question in one game.
--
-- Mostly themed trivia anyone can play (bowling, pickles, beer), plus two
-- playful "look at the screen" questions about the venue itself (its logo is
-- on the TV, and its tagline is under the name in the lobby).
--
-- Safe to re-run: deletes and re-inserts this house set only, inside a
-- transaction. Touches ONLY game_mode = 'TRIVI_YEAH_II' AND
-- category = 'HOUSE_PICKLES_PINS'. House sets never appear on ordinary
-- boards, only on boards for codes that use them.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_PICKLES_PINS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'In ten-pin bowling, what is the score of a perfect game?', NULL,
        '300', ARRAY['200', '250', '500'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Knocking down all ten pins with the first ball of a frame is called what?', NULL,
        'A strike', ARRAY['A spare', 'A turkey', 'A split'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'A classic dill pickle starts out as which vegetable?', NULL,
        'A cucumber', ARRAY['A zucchini', 'A green bean', 'An okra pod'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Look at the Pickles & Pins logo. Besides pickles, what is in the jar?', NULL,
        'A bowling pin', ARRAY['A bowling ball', 'A goldfish', 'A rubber duck'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'In bowling, three strikes in a row is nicknamed what?', NULL,
        'A turkey', ARRAY['A hat trick', 'A hambone', 'A grand slam'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'A traditional brined (not vinegar) pickle gets its sour tang from which process?', NULL,
        'Fermentation', ARRAY['Pasteurization', 'Distillation', 'Carbonation'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Which grain is malted to make most of the world''s beer?', NULL,
        'Barley', ARRAY['Rice', 'Oats', 'Corn'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Finish the Pickles & Pins tagline: "Tangy brew pub and ..."', NULL,
        'Lanes', ARRAY['Lounge', 'Laundromat', 'Library'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Leaving only the 7 and 10 pins standing is a split nicknamed what?', NULL,
        'The bedposts', ARRAY['The Big Four', 'The baby split', 'The washout'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Right-handed bowlers aim for the gap between the 1 and 3 pins. What is that gap called?', NULL,
        'The pocket', ARRAY['The gutter', 'The approach', 'The foul line'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'The 1516 beer "purity law" known as the Reinheitsgebot comes from which present-day country?', NULL,
        'Germany', ARRAY['Belgium', 'Austria', 'Czech Republic'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'Bread-and-butter pickles get their sweetness mainly from what?', NULL,
        'Sugar', ARRAY['Honey', 'Maple syrup', 'Molasses'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'What is the maximum weight of a regulation ten-pin bowling ball?', NULL,
        '16 pounds', ARRAY['12 pounds', '14 pounds', '18 pounds'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'How far is it from the foul line to the head pin on a regulation ten-pin lane?', NULL,
        '60 feet', ARRAY['45 feet', '50 feet', '72 feet'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'The pilsner style of beer is named after what?', NULL,
        'A Czech city', ARRAY['A German monastery', 'A Dutch river', 'A Bavarian king'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_PICKLES_PINS', NULL, NULL,
        'In Britain, a small pickled cucumber is usually called what?', NULL,
        'A gherkin', ARRAY['A piccalilli', 'A chutney', 'A relish'], 400);

COMMIT;

-- Check: should return 16.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_PICKLES_PINS';

-- When this venue (or event) is done, remove its house questions:
-- DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_PICKLES_PINS';
