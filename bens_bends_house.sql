-- ============================================================================
-- bens_bends_house.sql
-- House questions for Ben's Bends, the (entirely made-up) sheet metal
-- fabricator AND yoga studio. A goofy test set: half "lore" about Ben, Brenda
-- and Charlie (every answer is invented -- the right one is just the funniest
-- official version), half real metalworking and yoga trivia anyone can play.
-- 16 questions, 4 per point tier, saved as HOUSE_BENS_BENDS, so they only
-- appear on boards for codes whose Venue settings use that house set.
--
-- Safe to re-run: deletes and re-inserts this house set only, inside a
-- transaction. Touches ONLY game_mode = 'TRIVI_YEAH_II' AND
-- category = 'HOUSE_BENS_BENDS'.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_BENS_BENDS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'Why did Ben open a sheet metal shop that is also a yoga studio?', NULL,
        'He lost a bet with Brenda', ARRAY['A typo on the business permit', 'Doctor''s orders after a ladder mishap', 'He flipped a coin. Twice.'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'In yoga, "Downward-Facing ___" is named after which animal?', NULL,
        'Dog', ARRAY['Cat', 'Cow', 'Frog'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'How many times has Charlie quit this week?', NULL,
        'Four (and it''s only Tuesday)', ARRAY['Zero, a new personal best', 'Two, both before lunch', 'Charlie doesn''t work here'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'The thickness of sheet metal is usually given as its...', NULL,
        'Gauge', ARRAY['Grit', 'Grade', 'Grain'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What is Brenda''s catchphrase on Fridays?', NULL,
        'Namaste... out of here!', ARRAY['Weld done, everybody!', 'Bend it like Ben!', 'Who touched my clamps?'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'Most traditional yoga pose names come from which ancient language?', NULL,
        'Sanskrit', ARRAY['Latin', 'Hindi', 'Ancient Greek'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What is Ben''s favorite yoga pose?', NULL,
        'The Sheet Metal Taco', ARRAY['Downward-Facing Drill Press', 'Warrior III (in safety goggles)', 'Happy Anvil'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'In sheet metal, a HIGHER gauge number means the metal is...', NULL,
        'Thinner', ARRAY['Thicker', 'Heavier', 'Shinier'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What is the studio''s most popular class?', NULL,
        'Hot Yoga (next to the welding booth)', ARRAY['Goat Yoga (one goat, named Steve)', 'Silent Meditation (press brake running)', 'Pilates for Pipe Fitters'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'The machine that bends sheet metal to precise angles is called a...', NULL,
        'Press brake', ARRAY['Bend saw', 'Shear', 'Lathe'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'In Savasana, the pose many yoga classes end with, you mostly...', NULL,
        'Lie flat on your back', ARRAY['Stand on one leg', 'Balance on your hands', 'Twist like a pretzel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What did Ben''s very first customer order?', NULL,
        'A yoga mat made of steel', ARRAY['A 30-foot duct for a hamster', 'A bendy ruler', 'A refund'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What does the "TIG" in TIG welding stand for?', NULL,
        'Tungsten Inert Gas', ARRAY['Titanium Insulated Gun', 'Thermal Ignition Gas', 'Torch In Gear'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'Which element in stainless steel keeps it from rusting?', NULL,
        'Chromium', ARRAY['Zinc', 'Copper', 'Aluminum'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'What does the sign above the welding booth say?', NULL,
        'Breathe in. Weld out.', ARRAY['Bend your knees, not the rules', 'No sparks before coffee', 'Inhale confidence, exhale burrs'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'HOUSE_BENS_BENDS', NULL, NULL,
        'In yoga, the Sanskrit word "asana" means...', NULL,
        'A pose or seat', ARRAY['A breath', 'Peace', 'Strength'], 400);

COMMIT;

-- Check: should return 16.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_BENS_BENDS';

-- When Ben's Bends closes up shop, remove its house questions:
-- DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'HOUSE_BENS_BENDS';
