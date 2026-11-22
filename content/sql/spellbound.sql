-- ============================================================================
-- content/sql/spellbound.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/spellbound.csv, the master copy of the
-- Thinking Pants category SPELLBOUND. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 400 live questions
-- (100: 100, 200: 100, 300: 100, 400: 100), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPELLBOUND';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (needed)', NULL,
        'Necessary', ARRAY['Necesary', 'Neccessary', 'Neccesary', 'Necessery'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (apart)', NULL,
        'Separate', ARRAY['Seperate', 'Separete', 'Seprate', 'Separrate'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (for sure)', NULL,
        'Definitely', ARRAY['Definately', 'Definitly', 'Defenitely', 'Definatly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to think it''s true)', NULL,
        'Believe', ARRAY['Beleive', 'Belive', 'Beleve', 'Bileve'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to get)', NULL,
        'Receive', ARRAY['Recieve', 'Receeve', 'Receve', 'Reseive'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a pal)', NULL,
        'Friend', ARRAY['Freind', 'Frend', 'Friennd', 'Frind'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (for the reason that)', NULL,
        'Because', ARRAY['Becuase', 'Becase', 'Beacuse', 'Becouse'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (lovely)', NULL,
        'Beautiful', ARRAY['Beatiful', 'Beautifull', 'Beutiful', 'Beautyful'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (strange)', NULL,
        'Weird', ARRAY['Wierd', 'Weerd', 'Wiered', 'Weard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the day after today)', NULL,
        'Tomorrow', ARRAY['Tommorow', 'Tomorow', 'Tommorrow', 'Tomorroe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (up to the time)', NULL,
        'Until', ARRAY['Untill', 'Untile', 'Intil', 'Untel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a place to borrow books)', NULL,
        'Library', ARRAY['Libary', 'Liberry', 'Librery', 'Librarry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the middle of the week)', NULL,
        'Wednesday', ARRAY['Wensday', 'Wednesay', 'Wedensday', 'Wendsday'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (runs the country)', NULL,
        'Government', ARRAY['Goverment', 'Govermint', 'Governmant', 'Guvernment'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the days on a page)', NULL,
        'Calendar', ARRAY['Calender', 'Calandar', 'Calander', 'Callendar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (where you live)', NULL,
        'Address', ARRAY['Adress', 'Addres', 'Adddress', 'Adres'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to the other side)', NULL,
        'Across', ARRAY['Accross', 'Acros', 'Acrross', 'Accros'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a company)', NULL,
        'Business', ARRAY['Buisness', 'Busness', 'Bussiness', 'Businness'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (something unexpected)', NULL,
        'Surprise', ARRAY['Suprise', 'Surprize', 'Surprice', 'Serprise'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (honestly)', NULL,
        'Truly', ARRAY['Truely', 'Trully', 'Truley', 'Trooly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a disagreement)', NULL,
        'Argument', ARRAY['Arguement', 'Argumint', 'Arguemint', 'Argumant'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the rules of a language)', NULL,
        'Grammar', ARRAY['Grammer', 'Gramar', 'Grammor', 'Gramer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (most likely)', NULL,
        'Probably', ARRAY['Probly', 'Probaly', 'Probablly', 'Probabley'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (not the same)', NULL,
        'Different', ARRAY['Diffrent', 'Diferent', 'Differant', 'Diffirent'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a place to eat out)', NULL,
        'Restaurant', ARRAY['Restaraunt', 'Resturant', 'Restaurent', 'Restraunt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (how a letter often ends)', NULL,
        'Sincerely', ARRAY['Sincerly', 'Sincerley', 'Sinserely', 'Sincerelly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to vanish)', NULL,
        'Disappear', ARRAY['Dissapear', 'Disapear', 'Dissappear', 'Disappeer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (it''s in your mouth)', NULL,
        'Tongue', ARRAY['Tounge', 'Tonge', 'Tung', 'Tonuge'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (land with water all around)', NULL,
        'Island', ARRAY['Iland', 'Ilsand', 'Islend', 'Illand'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to protect)', NULL,
        'Guard', ARRAY['Gaurd', 'Gard', 'Guarde', 'Guaurd'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a reply)', NULL,
        'Answer', ARRAY['Anser', 'Answere', 'Ansewr', 'Awnser'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a person in a story)', NULL,
        'Character', ARRAY['Charactor', 'Charecter', 'Caracter', 'Charakter'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the world around us)', NULL,
        'Environment', ARRAY['Enviroment', 'Envirnment', 'Environmint', 'Enviornment'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (what you know)', NULL,
        'Knowledge', ARRAY['Knowlege', 'Knowlegde', 'Knowladge', 'Nowledge'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (how tall)', NULL,
        'Height', ARRAY['Heigth', 'Hieght', 'Hight', 'Heiht'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (alike)', NULL,
        'Similar', ARRAY['Similiar', 'Simular', 'Similer', 'Simmilar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the study of the natural world)', NULL,
        'Science', ARRAY['Sience', 'Sciense', 'Scince', 'Scence'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (December 25)', NULL,
        'Christmas', ARRAY['Chrismas', 'Christmass', 'Crismas', 'Christmus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (even though)', NULL,
        'Although', ARRAY['Althogh', 'Allthough', 'Altough', 'Althouhg'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (above all)', NULL,
        'Especially', ARRAY['Expecially', 'Especialy', 'Espeshally', 'Especally'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (most of the time)', NULL,
        'Usually', ARRAY['Usualy', 'Usally', 'Ususally', 'Usuallly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (holds your attention)', NULL,
        'Interesting', ARRAY['Intresting', 'Interisting', 'Intristing', 'Interesing'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these school words is misspelled?', NULL,
        'Hilighter', ARRAY['Pencil', 'Teacher', 'Eraser', 'Backpack'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these calendar words is misspelled?', NULL,
        'Febuary', ARRAY['Tuesday', 'Saturday', 'January', 'Thursday'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these kitchen words is misspelled?', NULL,
        'Refridgerator', ARRAY['Microwave', 'Dishwasher', 'Toaster', 'Blender'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these pet words is misspelled?', NULL,
        'Tortise', ARRAY['Hamster', 'Parakeet', 'Rabbit', 'Guinea pig'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these body words is misspelled?', NULL,
        'Stomache', ARRAY['Shoulder', 'Muscle', 'Eyebrow', 'Knuckle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these weather words is misspelled?', NULL,
        'Tornadoe', ARRAY['Hurricane', 'Blizzard', 'Thunder', 'Drizzle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these holiday words is misspelled?', NULL,
        'Haloween', ARRAY['Thanksgiving', 'Easter', 'Valentine''s Day', 'New Year''s Eve'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these fruit words is misspelled?', NULL,
        'Bananna', ARRAY['Cherry', 'Pineapple', 'Raspberry', 'Strawberry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these sports words is misspelled?', NULL,
        'Lacrose', ARRAY['Basketball', 'Volleyball', 'Gymnastics', 'Wrestling'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these family words is misspelled?', NULL,
        'Neice', ARRAY['Nephew', 'Cousin', 'Grandmother', 'Daughter'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: bi_ycle', NULL,
        'c', ARRAY['s', 'ss', 'cc'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: cho_olate', NULL,
        'c', ARRAY['k', 'ck', 'cc'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: eig__h', NULL,
        'ht', ARRAY['th', 't', 'hth'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: ex_ellent', NULL,
        'c', ARRAY['s', 'cc', 'x'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: begi__ing', NULL,
        'nn', ARRAY['n', 'ng', 'nnn'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: wri__ng', NULL,
        'ti', ARRAY['tti', 'te', 'tt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: pe__le', NULL,
        'op', ARRAY['po', 'eo', 'ep'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: thr__gh', NULL,
        'ou', ARRAY['o', 'oo', 'u'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: so__er', NULL,
        'cc', ARRAY['c', 'k', 'ck'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: ch__f', NULL,
        'ie', ARRAY['ei', 'ee', 'ea'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a part of something)', NULL,
        'Piece', ARRAY['Peice', 'Pieace', 'Peise'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (sixty seconds)', NULL,
        'Minute', ARRAY['Minnute', 'Minut', 'Mineute'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (the one you like best)', NULL,
        'Favorite', ARRAY['Favorit', 'Faverite', 'Favorate'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (by this time)', NULL,
        'Already', ARRAY['Allready', 'Alredy', 'Alreddy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (very nearly)', NULL,
        'Almost', ARRAY['Allmost', 'Almoste', 'Allmoast'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (past tense of "bring")', NULL,
        'Brought', ARRAY['Brougt', 'Brot', 'Braught'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (the sound you make when something''s funny)', NULL,
        'Laugh', ARRAY['Laff', 'Lauph', 'Laugth'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (as much as you need)', NULL,
        'Enough', ARRAY['Enuff', 'Enogh', 'Enouf'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a huge body of salt water)', NULL,
        'Ocean', ARRAY['Ocian', 'Oshen', 'Oceon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (without any trouble)', NULL,
        'Easily', ARRAY['Easyly', 'Eazily', 'Easilly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (making no noise)', NULL,
        'Quiet', ARRAY['Queit', 'Qwiet', 'Quiett'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (having lots to do)', NULL,
        'Busy', ARRAY['Bizzy', 'Buisy', 'Busey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (all of something)', NULL,
        'Whole', ARRAY['Whol', 'Hoal', 'Whoal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a white sweetener)', NULL,
        'Sugar', ARRAY['Suger', 'Shugar', 'Sugger'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (the morning meal)', NULL,
        'Breakfast', ARRAY['Brekfast', 'Breakfeast', 'Breckfast'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (the flash in a thunderstorm)', NULL,
        'Lightning', ARRAY['Litening', 'Lightnin', 'Lightnning'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (with each other)', NULL,
        'Together', ARRAY['Togather', 'Twogether', 'Togeather'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (not bent or curved)', NULL,
        'Straight', ARRAY['Straigt', 'Strate', 'Straght'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these zoo words is misspelled?', NULL,
        'Elefant', ARRAY['Monkey', 'Tiger', 'Zebra', 'Rabbit'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these color words is misspelled?', NULL,
        'Purpel', ARRAY['Orange', 'Yellow', 'Green', 'Silver'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these number words is misspelled?', NULL,
        'Elevin', ARRAY['Seven', 'Twenty', 'Fifteen', 'Hundred'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these lunchbox words is misspelled?', NULL,
        'Sandwhich', ARRAY['Apple', 'Cookie', 'Napkin', 'Juice box'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these clothing words is misspelled?', NULL,
        'Sweter', ARRAY['Jacket', 'Shirt', 'Mittens', 'Pajamas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these toy words is misspelled?', NULL,
        'Puzzel', ARRAY['Doll', 'Kite', 'Marble', 'Yo-yo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these season words is misspelled?', NULL,
        'Autum', ARRAY['Winter', 'Summer', 'Spring', 'Season'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these bedroom words is misspelled?', NULL,
        'Blankit', ARRAY['Pillow', 'Mattress', 'Closet', 'Lamp'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these farm words is misspelled?', NULL,
        'Tracter', ARRAY['Barn', 'Chicken', 'Fence', 'Cow'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these ocean words is misspelled?', NULL,
        'Dolfin', ARRAY['Whale', 'Shark', 'Octopus', 'Seaweed'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these bug words is misspelled?', NULL,
        'Buterfly', ARRAY['Beetle', 'Spider', 'Ant', 'Ladybug'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: wat_r', NULL,
        'e', ARRAY['a', 'u', 'o'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: sch__l', NULL,
        'oo', ARRAY['ou', 'ul', 'ol'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: fam_ly', NULL,
        'i', ARRAY['e', 'o', 'a'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: tur_le', NULL,
        't', ARRAY['d', 'tt', 'll'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: hap_y', NULL,
        'p', ARRAY['b', 'pp', 't'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: carr_t', NULL,
        'o', ARRAY['i', 'e', 'a'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: pock_t', NULL,
        'e', ARRAY['i', 'a', 'u'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: ki_chen', NULL,
        't', ARRAY['c', 'ch', 'tt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: doct_r', NULL,
        'o', ARRAY['e', 'u', 'a'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to make someone blush)', NULL,
        'Embarrass', ARRAY['Embarass', 'Embarras', 'Emberrass', 'Embaress'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (now and then)', NULL,
        'Occasionally', ARRAY['Occasionaly', 'Ocassionally', 'Occassionally', 'Ocasionally'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to make room for)', NULL,
        'Accommodate', ARRAY['Acommodate', 'Accomodate', 'Acomodate', 'Accommadate'], 200, 'It''s big enough to accommodate two c''s and two m''s, a handy way to remember it.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (happened)', NULL,
        'Occurred', ARRAY['Occured', 'Ocurred', 'Occurd', 'Ocured'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a musical beat)', NULL,
        'Rhythm', ARRAY['Rythm', 'Rhythym', 'Rhythem', 'Rythym'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a special right)', NULL,
        'Privilege', ARRAY['Privelege', 'Priviledge', 'Privilage', 'Privelige'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to suggest)', NULL,
        'Recommend', ARRAY['Reccommend', 'Recomend', 'Reccomend', 'Recommmend'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (upkeep)', NULL,
        'Maintenance', ARRAY['Maintainance', 'Maintenence', 'Maintanance', 'Maintenanse'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (how a word is said)', NULL,
        'Pronunciation', ARRAY['Pronounciation', 'Pronunciaton', 'Pronunsiation', 'Pronounsiation'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (on your own)', NULL,
        'Independent', ARRAY['Independant', 'Indipendent', 'Independint', 'Indepindent'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (being real)', NULL,
        'Existence', ARRAY['Existance', 'Existense', 'Exsistence', 'Existince'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a graveyard)', NULL,
        'Cemetery', ARRAY['Cemetary', 'Cematery', 'Semetery', 'Cemitery'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (it cleans the carpet)', NULL,
        'Vacuum', ARRAY['Vaccum', 'Vacum', 'Vaccuum', 'Vacume'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (funny)', NULL,
        'Humorous', ARRAY['Humerous', 'Humorus', 'Humoros', 'Humourus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (right away)', NULL,
        'Immediately', ARRAY['Immediatly', 'Imediately', 'Immediatley', 'Immedietly'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (easy to see)', NULL,
        'Noticeable', ARRAY['Noticable', 'Noticible', 'Notecable', 'Noticeible'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (out in the open)', NULL,
        'Publicly', ARRAY['Publically', 'Publicaly', 'Publiclly', 'Publicley'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a timetable)', NULL,
        'Schedule', ARRAY['Schedual', 'Scedule', 'Schedjule', 'Shedule'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a habit or leaning)', NULL,
        'Tendency', ARRAY['Tendancy', 'Tendencey', 'Tendensy', 'Tendincy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (eat your ___s)', NULL,
        'Vegetable', ARRAY['Vegtable', 'Vegatable', 'Vegetible', 'Vegitable'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (how hot or cold)', NULL,
        'Temperature', ARRAY['Temperture', 'Tempature', 'Temprature', 'Temperatur'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a temperature scale)', NULL,
        'Fahrenheit', ARRAY['Farenheit', 'Fahrenhiet', 'Farenheight', 'Fahrenheight'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a promise you keep)', NULL,
        'Commitment', ARRAY['Commitement', 'Comittment', 'Committment', 'Comitment'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (self-control)', NULL,
        'Discipline', ARRAY['Disipline', 'Discipine', 'Dicipline', 'Disapline'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to stretch the truth)', NULL,
        'Exaggerate', ARRAY['Exagerate', 'Exxagerate', 'Exaggarate', 'Exagerrate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to pester)', NULL,
        'Harass', ARRAY['Harrass', 'Harras', 'Haraas', 'Herass'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (side by side, never meeting)', NULL,
        'Parallel', ARRAY['Paralell', 'Parralel', 'Parrallel', 'Paralel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (something you own)', NULL,
        'Possession', ARRAY['Posession', 'Possesion', 'Posesion', 'Possessian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (won''t give up)', NULL,
        'Persistent', ARRAY['Persistant', 'Persistint', 'Persestent', 'Pursistent'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (sent to someone else)', NULL,
        'Referred', ARRAY['Refered', 'Reffered', 'Referd', 'Refferred'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to the point)', NULL,
        'Relevant', ARRAY['Relevent', 'Relavant', 'Revelant', 'Relevint'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (it worked out)', NULL,
        'Successful', ARRAY['Succesful', 'Successfull', 'Sucessful', 'Succesfull'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a doorway)', NULL,
        'Threshold', ARRAY['Threshhold', 'Threshould', 'Thresold', 'Treshold'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (after eleventh)', NULL,
        'Twelfth', ARRAY['Twelth', 'Twelveth', 'Twelf', 'Twelfeth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (not needed)', NULL,
        'Unnecessary', ARRAY['Unneccessary', 'Unecessary', 'Unnecesary', 'Unnessesary'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the bad guy)', NULL,
        'Villain', ARRAY['Villian', 'Villan', 'Vilain', 'Vilian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to get hold of)', NULL,
        'Acquire', ARRAY['Aquire', 'Acquier', 'Accquire', 'Aqcuire'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (plain to see)', NULL,
        'Apparent', ARRAY['Apparant', 'Aparent', 'Apparint', 'Appearant'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a group or class)', NULL,
        'Category', ARRAY['Catagory', 'Categorie', 'Catigory', 'Categary'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a group that meets)', NULL,
        'Committee', ARRAY['Comittee', 'Commitee', 'Committe', 'Comitee'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (awake and aware)', NULL,
        'Conscious', ARRAY['Concious', 'Conscous', 'Consious', 'Conscius'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (wanting to know)', NULL,
        'Curiosity', ARRAY['Curiousity', 'Curiosaty', 'Curiousaty', 'Curiosety'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (with nothing left to lose)', NULL,
        'Desperate', ARRAY['Desparate', 'Desperite', 'Despirate', 'Desprate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a tough choice)', NULL,
        'Dilemma', ARRAY['Dilemna', 'Dillema', 'Dilema', 'Dillemma'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (gear)', NULL,
        'Equipment', ARRAY['Equiptment', 'Equipmint', 'Equippment', 'Equpment'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (four tens)', NULL,
        'Forty', ARRAY['Fourty', 'Fortey', 'Fourtey', 'Forti'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (keeping clean)', NULL,
        'Hygiene', ARRAY['Hygeine', 'Hygene', 'Hygine', 'Hyjiene'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (after eighth)', NULL,
        'Ninth', ARRAY['Nineth', 'Ninthe', 'Ninnth', 'Nineeth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the people next door)', NULL,
        'Neighbor', ARRAY['Nieghbor', 'Neighber', 'Nabor', 'Neihgbor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to let down)', NULL,
        'Disappoint', ARRAY['Dissapoint', 'Disapoint', 'Dissappoint', 'Disapont'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (from another country)', NULL,
        'Foreign', ARRAY['Foriegn', 'Forein', 'Foreighn', 'Forign'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (very rich)', NULL,
        'Millionaire', ARRAY['Millionnaire', 'Millionare', 'Milionaire', 'Millionaier'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these music words is misspelled?', NULL,
        'Orchastra', ARRAY['Symphony', 'Trumpet', 'Clarinet', 'Saxophone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these vegetable words is misspelled?', NULL,
        'Potatoe', ARRAY['Cabbage', 'Lettuce', 'Spinach', 'Cauliflower'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these geography words is misspelled?', NULL,
        'Mediteranean', ARRAY['Atlantic', 'Antarctica', 'Everglades', 'Sahara'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these science words is misspelled?', NULL,
        'Experement', ARRAY['Hypothesis', 'Molecule', 'Laboratory', 'Microscope'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these house words is misspelled?', NULL,
        'Cieling', ARRAY['Chimney', 'Basement', 'Hallway', 'Bathroom'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these money words is misspelled?', NULL,
        'Morgage', ARRAY['Budget', 'Interest', 'Dollar', 'Savings'], 200, '"Mortgage" comes from Old French for "death pledge": the deal dies when it''s paid off.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these feelings words is misspelled?', NULL,
        'Jelous', ARRAY['Anxious', 'Nervous', 'Grateful', 'Curious'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these travel words is misspelled?', NULL,
        'Souvenier', ARRAY['Itinerary', 'Luggage', 'Passport', 'Tourist'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these job words is misspelled?', NULL,
        'Plummer', ARRAY['Electrician', 'Carpenter', 'Mechanic', 'Pharmacist'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these animal words is misspelled?', NULL,
        'Rhinocerous', ARRAY['Hippopotamus', 'Crocodile', 'Chimpanzee', 'Kangaroo'], 200, '"Rhinoceros" is Greek for "nose horn."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: ba__oon', NULL,
        'll', ARRAY['l', 'le', 'ul'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: colle_e', NULL,
        'g', ARRAY['dg', 'j', 'gu'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: pati_nce', NULL,
        'e', ARRAY['a', 'i', 'ea'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: tra_edy', NULL,
        'g', ARRAY['dg', 'j', 'gg'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: fa__inate', NULL,
        'sc', ARRAY['s', 'ss', 'c'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: Ar_tic', NULL,
        'c', ARRAY['k', 't', 'ch'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: nucl__r', NULL,
        'ea', ARRAY['ue', 'e', 'a'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: sold__r', NULL,
        'ie', ARRAY['ei', 'ee', 'ia'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: intellig_nt', NULL,
        'e', ARRAY['a', 'i', 'u'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: resist_nce', NULL,
        'a', ARRAY['e', 'i', 'u'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: vani__a', NULL,
        'll', ARRAY['l', 'le', 'lla'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: car__r', NULL,
        'ee', ARRAY['ea', 'ie', 'e'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to succeed at a goal)', NULL,
        'Achieve', ARRAY['Acheive', 'Achive', 'Atchieve'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (not a professional)', NULL,
        'Amateur', ARRAY['Amature', 'Amatuer', 'Ammateur'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (in simple terms)', NULL,
        'Basically', ARRAY['Basicly', 'Basicaly', 'Basiclly'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an upright pillar)', NULL,
        'Column', ARRAY['Colum', 'Collumn', 'Colume'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (well known to you)', NULL,
        'Familiar', ARRAY['Familier', 'Famillar', 'Fimiliar'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (at last)', NULL,
        'Finally', ARRAY['Finaly', 'Finnaly', 'Finnally'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (completely worn out)', NULL,
        'Exhausted', ARRAY['Exausted', 'Exhuasted', 'Exhaused'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (being wed)', NULL,
        'Marriage', ARRAY['Marrige', 'Marraige', 'Mariage'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an annoyance)', NULL,
        'Nuisance', ARRAY['Nuisence', 'Newsance', 'Nusiance'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a good chance)', NULL,
        'Opportunity', ARRAY['Oppurtunity', 'Opportunaty', 'Oportunity'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (silly, absurd)', NULL,
        'Ridiculous', ARRAY['Rediculous', 'Ridiculus', 'Ridiculious'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an office helper)', NULL,
        'Secretary', ARRAY['Secratary', 'Secetary', 'Secretery'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these space words is misspelled?', NULL,
        'Asteriod', ARRAY['Comet', 'Galaxy', 'Meteor', 'Planet'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these insect words is misspelled?', NULL,
        'Mosqueto', ARRAY['Cricket', 'Hornet', 'Termite', 'Caterpillar'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these office words is misspelled?', NULL,
        'Stapeler', ARRAY['Envelope', 'Folder', 'Paperclip', 'Printer'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these health words is misspelled?', NULL,
        'Vitamen', ARRAY['Protein', 'Exercise', 'Calorie', 'Muscle'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these Thanksgiving words is misspelled?', NULL,
        'Cranbery', ARRAY['Turkey', 'Pilgrim', 'Stuffing', 'Pumpkin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these car words is misspelled?', NULL,
        'Windsheild', ARRAY['Engine', 'Bumper', 'Mirror', 'Headlight'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these camping words is misspelled?', NULL,
        'Lanturn', ARRAY['Tent', 'Campfire', 'Compass', 'Flashlight'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: a_cident', NULL,
        'c', ARRAY['s', 'k', 'x'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: mys_ery', NULL,
        't', ARRAY['s', 'th', 'd'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: bal_nce', NULL,
        'a', ARRAY['e', 'i', 'o'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: cal_ulator', NULL,
        'c', ARRAY['k', 'cc', 's'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: dang_rous', NULL,
        'e', ARRAY['o', 'u', 'a'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: guar_ian', NULL,
        'd', ARRAY['t', 'dd', 'g'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: ty_ical', NULL,
        'p', ARRAY['pp', 'b', 'ph'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a thousand years)', NULL,
        'Millennium', ARRAY['Millenium', 'Millenneum', 'Milennium', 'Millenniam'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (your inner voice)', NULL,
        'Conscience', ARRAY['Concience', 'Consience', 'Conscence', 'Consciense'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a form full of questions)', NULL,
        'Questionnaire', ARRAY['Questionaire', 'Questionnair', 'Questionairre', 'Questionnare'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an army rank)', NULL,
        'Sergeant', ARRAY['Sargeant', 'Sergent', 'Seargent', 'Sargent'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a ladder of rank)', NULL,
        'Hierarchy', ARRAY['Heirarchy', 'Hierachy', 'Hierarchey', 'Hirearchy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a kind of glowing light)', NULL,
        'Fluorescent', ARRAY['Flourescent', 'Florescent', 'Fluorescant', 'Fluoresent'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a skillful move)', NULL,
        'Maneuver', ARRAY['Manuever', 'Manuver', 'Manouver', 'Maneaver'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a go-between)', NULL,
        'Liaison', ARRAY['Liason', 'Liasion', 'Liaisan', 'Laison'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (someone you know a little)', NULL,
        'Acquaintance', ARRAY['Aquaintance', 'Acquaintence', 'Acquantance', 'Acqaintance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a green vegetable)', NULL,
        'Broccoli', ARRAY['Brocolli', 'Brocoli', 'Broccolli', 'Brocclie'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (blending in)', NULL,
        'Camouflage', ARRAY['Camoflage', 'Camouflague', 'Camaflauge', 'Camoflauge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an Army rank above major)', NULL,
        'Colonel', ARRAY['Coronel', 'Colonal', 'Kernal', 'Colnel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (pure joy)', NULL,
        'Ecstasy', ARRAY['Ecstacy', 'Extasy', 'Ecstesy', 'Exstasy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a cloth for your nose)', NULL,
        'Handkerchief', ARRAY['Handkercheif', 'Hankerchief', 'Handkerchif', 'Handkershief'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (can''t do without it)', NULL,
        'Indispensable', ARRAY['Indispensible', 'Indespensable', 'Indispensibel', 'Indispensabel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to vaccinate)', NULL,
        'Inoculate', ARRAY['Innoculate', 'Inocculate', 'Innocculate', 'Inoculat'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (too good to pass up)', NULL,
        'Irresistible', ARRAY['Irresistable', 'Iresistible', 'Irrisistible', 'Irresistibel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (free time)', NULL,
        'Leisure', ARRAY['Liesure', 'Leasure', 'Leisue', 'Lesiure'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a sandwich spread)', NULL,
        'Mayonnaise', ARRAY['Mayonaise', 'Mayonnaisse', 'Mayonase', 'Maionnaise'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (what this category hopes you won''t do)', NULL,
        'Misspell', ARRAY['Mispell', 'Misspel', 'Mispel', 'Missspell'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an event)', NULL,
        'Occurrence', ARRAY['Occurence', 'Ocurrence', 'Occurrance', 'Ocurrance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a hobby)', NULL,
        'Pastime', ARRAY['Passtime', 'Pasttime', 'Pastimme', 'Pastyme'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (sticking with it)', NULL,
        'Perseverance', ARRAY['Perseverence', 'Perserverance', 'Persevereance', 'Perseveranse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (someone who writes plays)', NULL,
        'Playwright', ARRAY['Playwrite', 'Playright', 'Plawright', 'Playwrigt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (proof you paid)', NULL,
        'Receipt', ARRAY['Reciept', 'Receit', 'Recipt', 'Resceipt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (cat and hat do it)', NULL,
        'Rhyme', ARRAY['Rhym', 'Ryme', 'Rhymme', 'Ryhme'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (surrounding a castle)', NULL,
        'Siege', ARRAY['Seige', 'Siedge', 'Seage', 'Sieege'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (cruel rule)', NULL,
        'Tyranny', ARRAY['Tyrany', 'Tyrrany', 'Tirany', 'Tyranney'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to hold back)', NULL,
        'Withhold', ARRAY['Withold', 'Witthold', 'Withhould', 'Wihthold'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a green squash)', NULL,
        'Zucchini', ARRAY['Zuchini', 'Zucchinni', 'Zuccini', 'Zuchinni'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a sea full of islands)', NULL,
        'Caribbean', ARRAY['Carribean', 'Carribbean', 'Caribean', 'Carrabean'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the Bay State)', NULL,
        'Massachusetts', ARRAY['Massachusets', 'Massachussetts', 'Massachussets', 'Masachusetts'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a river and a state)', NULL,
        'Mississippi', ARRAY['Missisippi', 'Mississipi', 'Missisipi', 'Misssissippi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an Ohio city)', NULL,
        'Cincinnati', ARRAY['Cincinatti', 'Cincinnatti', 'Cinncinati', 'Cincinati'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the Volunteer State)', NULL,
        'Tennessee', ARRAY['Tennesee', 'Tenessee', 'Tennesse', 'Tenesee'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the Nutmeg State)', NULL,
        'Connecticut', ARRAY['Conneticut', 'Connetticut', 'Connecticutt', 'Conecticut'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (the Keystone State)', NULL,
        'Pennsylvania', ARRAY['Pensylvania', 'Pennsilvania', 'Pennsylvannia', 'Pensilvania'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (revenge)', NULL,
        'Vengeance', ARRAY['Vengence', 'Vengance', 'Vengeence', 'Vengeanse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (keeping watch)', NULL,
        'Surveillance', ARRAY['Surveillence', 'Survaillance', 'Surveilance', 'Survelance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (second in command)', NULL,
        'Lieutenant', ARRAY['Leiutenant', 'Lieutenent', 'Lutenant', 'Lieutennant'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a dark outline)', NULL,
        'Silhouette', ARRAY['Silhouete', 'Silouette', 'Silhoutte', 'Sillhouette'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (red tape)', NULL,
        'Bureaucracy', ARRAY['Beaurocracy', 'Bureacracy', 'Bureaucrasy', 'Buraucracy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (long, thin pasta)', NULL,
        'Spaghetti', ARRAY['Spagetti', 'Spaghettti', 'Spahgetti', 'Spagheti'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a promise it will work)', NULL,
        'Guarantee', ARRAY['Garantee', 'Guarentee', 'Gaurantee', 'Guarrantee'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (thrilling)', NULL,
        'Exhilarating', ARRAY['Exhilerating', 'Exilarating', 'Exhillarating', 'Exhilirating'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to pull back, like a tide)', NULL,
        'Recede', ARRAY['Receede', 'Receed', 'Reacede', 'Resede'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these dinosaur words is misspelled?', NULL,
        'Tyrannasaurus', ARRAY['Stegosaurus', 'Triceratops', 'Velociraptor', 'Brachiosaurus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these dessert words is misspelled?', NULL,
        'Merangue', ARRAY['Tiramisu', 'Sorbet', 'Cheesecake', 'Strudel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these anatomy words is misspelled?', NULL,
        'Diaphram', ARRAY['Esophagus', 'Pancreas', 'Cartilage', 'Ligament'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these instrument words is misspelled?', NULL,
        'Tamborine', ARRAY['Accordion', 'Harmonica', 'Cello', 'Ukulele'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these country words is misspelled?', NULL,
        'Phillipines', ARRAY['Colombia', 'Portugal', 'Argentina', 'Venezuela'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these weather report words is misspelled?', NULL,
        'Precipatation', ARRAY['Humidity', 'Barometer', 'Cumulus', 'Forecast'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these school subject words is misspelled?', NULL,
        'Vocabulery', ARRAY['Arithmetic', 'Geography', 'Literature', 'Algebra'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these big city words is misspelled?', NULL,
        'Philedelphia', ARRAY['Minneapolis', 'Milwaukee', 'Sacramento', 'Louisville'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these sea creature words is misspelled?', NULL,
        'Barricuda', ARRAY['Manatee', 'Narwhal', 'Octopus', 'Stingray'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these double-letter words is misspelled?', NULL,
        'Satelite', ARRAY['Assassin', 'Bookkeeper', 'Raccoon', 'Tattoo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these critter words is misspelled?', NULL,
        'Armadilo', ARRAY['Platypus', 'Chameleon', 'Porcupine', 'Iguana'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: burgl_r', NULL,
        'a', ARRAY['e', 'o', 'u'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: recta__le', NULL,
        'ng', ARRAY['n', 'gn', 'nk'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: psy__ology', NULL,
        'ch', ARRAY['k', 'sh', 'c'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: sci__ors', NULL,
        'ss', ARRAY['s', 'z', 'sz'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: courag_ous', NULL,
        'e', ARRAY['i', 'a', 'o'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: defend_nt', NULL,
        'a', ARRAY['e', 'i', 'u'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: su_tle', NULL,
        'b', ARRAY['p', 'bb', 'tt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: ex_ilarate', NULL,
        'h', ARRAY['hh', 'x', 's'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (very strange)', NULL,
        'Bizarre', ARRAY['Bizzare', 'Bizare', 'Bizzarre'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to strongly disapprove of)', NULL,
        'Condemn', ARRAY['Condem', 'Condemm', 'Condenm'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to trick)', NULL,
        'Deceive', ARRAY['Decieve', 'Deceeve', 'Decive'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (full of fire)', NULL,
        'Fiery', ARRAY['Firey', 'Fierey', 'Firy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (lack of knowledge)', NULL,
        'Ignorance', ARRAY['Ignorence', 'Ignorrance', 'Ingorance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (from the Middle Ages)', NULL,
        'Medieval', ARRAY['Medevil', 'Midieval', 'Medievil'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (very small)', NULL,
        'Miniature', ARRAY['Minature', 'Miniture', 'Minniature'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to notice)', NULL,
        'Perceive', ARRAY['Percieve', 'Purceive', 'Perseive'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (the staff of an organization)', NULL,
        'Personnel', ARRAY['Personell', 'Personel', 'Personnell'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to come before)', NULL,
        'Precede', ARRAY['Preceed', 'Presede', 'Preseed'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to chase)', NULL,
        'Pursue', ARRAY['Persue', 'Pursew', 'Purrsue'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (isolation to stop a disease spreading)', NULL,
        'Quarantine', ARRAY['Quarentine', 'Quarrantine', 'Quaranteen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to grab)', NULL,
        'Seize', ARRAY['Sieze', 'Seeze', 'Seaze'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (easy to reach or use)', NULL,
        'Accessible', ARRAY['Accessable', 'Acessible', 'Accesible'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (as people say, though it may not be true)', NULL,
        'Supposedly', ARRAY['Supposidly', 'Suposedly', 'Supposedley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these state words is misspelled?', NULL,
        'Illinios', ARRAY['Kentucky', 'Nebraska', 'Oregon', 'Delaware'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these European country words is misspelled?', NULL,
        'Lichtenstein', ARRAY['Belgium', 'Ireland', 'Hungary', 'Denmark'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these reptile words is misspelled?', NULL,
        'Allegator', ARRAY['Lizard', 'Iguana', 'Gecko', 'Python'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these dentist words is misspelled?', NULL,
        'Cavaty', ARRAY['Plaque', 'Floss', 'Enamel', 'Molar'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these Olympic words is misspelled?', NULL,
        'Decathalon', ARRAY['Marathon', 'Javelin', 'Hurdles', 'Relay'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these math words is misspelled?', NULL,
        'Parallelagram', ARRAY['Triangle', 'Hexagon', 'Fraction', 'Diameter'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these baking words is misspelled?', NULL,
        'Cinammon', ARRAY['Nutmeg', 'Flour', 'Yeast', 'Frosting'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these wedding words is misspelled?', NULL,
        'Rehersal', ARRAY['Ceremony', 'Reception', 'Veil', 'Tuxedo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these courtroom words is misspelled?', NULL,
        'Attourney', ARRAY['Verdict', 'Witness', 'Judge', 'Jury'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these storm words is misspelled?', NULL,
        'Huricane', ARRAY['Blizzard', 'Thunder', 'Cyclone', 'Drizzle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: acco_plish', NULL,
        'm', ARRAY['mm', 'n', 'mn'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: pa_ilion', NULL,
        'v', ARRAY['b', 'vv', 'f'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: kin_ergarten', NULL,
        'd', ARRAY['t', 'dd', 'n'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: dor_itory', NULL,
        'm', ARRAY['n', 'mm', 'rm'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: manag_able', NULL,
        'e', ARRAY['a', 'i', 'ea'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: con_ensus', NULL,
        's', ARRAY['c', 'sc', 'ss'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: inn_cent', NULL,
        'o', ARRAY['a', 'e', 'u'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: temper_ment', NULL,
        'a', ARRAY['e', 'i', 'u'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: sacr_fice', NULL,
        'i', ARRAY['a', 'e', 'o'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: extr_ordinary', NULL,
        'a', ARRAY['e', 'o', 'i'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (up to no good)', NULL,
        'Mischievous', ARRAY['Mischievious', 'Mischevious', 'Mischeivous', 'Mischevous'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a word that sounds like what it means)', NULL,
        'Onomatopoeia', ARRAY['Onomatopeia', 'Onomatopoea', 'Onamatopoeia', 'Onomatopoiea'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a fall flower)', NULL,
        'Chrysanthemum', ARRAY['Chrysanthemem', 'Chrysanthamum', 'Crysanthemum', 'Chrysanthemumm'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a flowering shrub)', NULL,
        'Rhododendron', ARRAY['Rhododendrum', 'Rododendron', 'Rhodedendron', 'Rhododenron'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (heavy bleeding)', NULL,
        'Hemorrhage', ARRAY['Hemorrage', 'Hemmorrhage', 'Hemorhage', 'Hemmorage'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a lung infection)', NULL,
        'Pneumonia', ARRAY['Neumonia', 'Pnuemonia', 'Pneumonya', 'Pnemonia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a doctor of the mind)', NULL,
        'Psychiatrist', ARRAY['Physchiatrist', 'Psychiatrest', 'Psychiatist', 'Sychiatrist'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (scouting ahead)', NULL,
        'Reconnaissance', ARRAY['Reconnaisance', 'Reconaissance', 'Reconnaissanse', 'Reconnassaince'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a rebirth)', NULL,
        'Renaissance', ARRAY['Renaisance', 'Rennaissance', 'Renaissanse', 'Renaisanse'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a personal quirk)', NULL,
        'Idiosyncrasy', ARRAY['Idiosyncracy', 'Ideosyncrasy', 'Idiosincrasy', 'Idiosyncrasey'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (careful and hardworking)', NULL,
        'Conscientious', ARRAY['Conscientous', 'Consciencious', 'Concientious', 'Conscientiuos'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (someone who starts a business)', NULL,
        'Entrepreneur', ARRAY['Entrepeneur', 'Entreprenuer', 'Entrepreneaur', 'Enterpreneur'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a frozen cocktail)', NULL,
        'Daiquiri', ARRAY['Daquiri', 'Daiquri', 'Daiqiri', 'Daquiry'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a hot pink)', NULL,
        'Fuchsia', ARRAY['Fuschia', 'Fushia', 'Fuchia', 'Fewshia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (little potato dumplings)', NULL,
        'Gnocchi', ARRAY['Gnochi', 'Nocchi', 'Gnocci', 'Gnoochi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a tube of shifting colors)', NULL,
        'Kaleidoscope', ARRAY['Kaliedoscope', 'Kaleidascope', 'Kalaidoscope', 'Kaleidescope'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a maze)', NULL,
        'Labyrinth', ARRAY['Labrynth', 'Labyrinthe', 'Labirinth', 'Labyrith'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a violent whirlpool)', NULL,
        'Maelstrom', ARRAY['Maelstorm', 'Mealstrom', 'Maelstrum', 'Maelstroom'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an Italian soup)', NULL,
        'Minestrone', ARRAY['Minestroni', 'Minnestrone', 'Menestrone', 'Minestrome'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (going out of date)', NULL,
        'Obsolescence', ARRAY['Obsolesence', 'Obsolescense', 'Obsolecence', 'Obsollescence'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (all the gear that goes with it)', NULL,
        'Paraphernalia', ARRAY['Paraphenalia', 'Parafernalia', 'Paraphanelia', 'Paraphernailia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an Egyptian king)', NULL,
        'Pharaoh', ARRAY['Pharoah', 'Pharao', 'Pharoh', 'Faraoh'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a right that''s yours alone)', NULL,
        'Prerogative', ARRAY['Perogative', 'Prerogitive', 'Prerrogative', 'Perrogative'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (disrespectful of something sacred)', NULL,
        'Sacrilegious', ARRAY['Sacreligious', 'Sacriligious', 'Sacrilegous', 'Sacrelegious'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a bearded dog breed)', NULL,
        'Schnauzer', ARRAY['Shnauzer', 'Schnowzer', 'Schnauser', 'Schnauzzer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (short, sharp notes)', NULL,
        'Staccato', ARRAY['Stacatto', 'Staccatto', 'Stacato', 'Stacccato'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (to waver)', NULL,
        'Vacillate', ARRAY['Vaccilate', 'Vacilate', 'Vaccillate', 'Vacilliate'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (you play it with mallets)', NULL,
        'Xylophone', ARRAY['Zylophone', 'Xylaphone', 'Xylophon', 'Xilophone'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a fancy boat)', NULL,
        'Yacht', ARRAY['Yatch', 'Yaht', 'Yahct', 'Yachte'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a hired driver)', NULL,
        'Chauffeur', ARRAY['Chauffer', 'Chaufeur', 'Chauffuer', 'Shofer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a wiener dog)', NULL,
        'Dachshund', ARRAY['Dachsund', 'Daschund', 'Dashund', 'Dachshound'], 400, 'It''s German for "badger dog": they were bred to hunt badgers.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an eye doctor)', NULL,
        'Ophthalmologist', ARRAY['Opthalmologist', 'Ophthamologist', 'Opthamologist', 'Ophthalmoligist'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a flying reptile)', NULL,
        'Pterodactyl', ARRAY['Terodactyl', 'Pteradactyl', 'Pterodactil', 'Ptereodactyl'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a planned meeting)', NULL,
        'Rendezvous', ARRAY['Rendevous', 'Rendezvouz', 'Rondezvous', 'Rendesvous'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a blue gem)', NULL,
        'Sapphire', ARRAY['Saphire', 'Sapphyre', 'Saphhire', 'Sapphier'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (short and to the point)', NULL,
        'Succinct', ARRAY['Succint', 'Sucinct', 'Succinkt', 'Suckinct'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (matching halves)', NULL,
        'Symmetry', ARRAY['Symetry', 'Symmetery', 'Simmetry', 'Symmettry'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a tangy sauce)', NULL,
        'Worcestershire', ARRAY['Worchestershire', 'Worcestshire', 'Worchestshire', 'Worcestorshire'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (espresso with foamed milk)', NULL,
        'Cappuccino', ARRAY['Cappucino', 'Capuccino', 'Capucino', 'Cappuchino'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a sea creature and a flower)', NULL,
        'Anemone', ARRAY['Anenome', 'Anemonee', 'Anemoni', 'Annemone'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (a tiny dog breed)', NULL,
        'Chihuahua', ARRAY['Chiuaua', 'Chihauhua', 'Chiwawa', 'Chihuahwa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (an expert judge of taste)', NULL,
        'Connoisseur', ARRAY['Connoiseur', 'Conoisseur', 'Connaisseur', 'Connoissuer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which is spelled correctly? (middle-class)', NULL,
        'Bourgeois', ARRAY['Bourgois', 'Burgeois', 'Bourjeois', 'Bourgeoiss'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these French words is misspelled?', NULL,
        'Boquet', ARRAY['Croissant', 'Plateau', 'Ballet', 'Beige'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these medical words is misspelled?', NULL,
        'Diabeties', ARRAY['Bronchitis', 'Arthritis', 'Laryngitis', 'Tonsillitis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these Italian food words is misspelled?', NULL,
        'Parmesean', ARRAY['Mozzarella', 'Bruschetta', 'Prosciutto', 'Ricotta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these landmark words is misspelled?', NULL,
        'Galapogos', ARRAY['Appalachian', 'Himalayas', 'Kilimanjaro', 'Serengeti'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these punctuation words is misspelled?', NULL,
        'Apostrophy', ARRAY['Parentheses', 'Semicolon', 'Ellipsis', 'Hyphen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Which of these biology words is misspelled?', NULL,
        'Chromosone', ARRAY['Photosynthesis', 'Mitochondria', 'Cytoplasm', 'Nucleus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: a__ihilate', NULL,
        'nn', ARRAY['n', 'm', 'nh'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: cello_hane', NULL,
        'p', ARRAY['f', 'ff', 'h'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: anaph__axis', NULL,
        'yl', ARRAY['il', 'yll', 'ill'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: chandel__r', NULL,
        'ie', ARRAY['ee', 'ea', 'ei'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: li__orice', NULL,
        'qu', ARRAY['c', 'k', 'ck'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'ORIGINAL', NULL,
        'Fill in the blank: conv_lescent', NULL,
        'a', ARRAY['e', 'i', 'o'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a painful pocket of infection)', NULL,
        'Abscess', ARRAY['Absess', 'Abcess', 'Abscesss'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to go along with, reluctantly)', NULL,
        'Acquiesce', ARRAY['Aquiesce', 'Acquiese', 'Acquiesse'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (friendship and trust in a group)', NULL,
        'Camaraderie', ARRAY['Camraderie', 'Camaradery', 'Cammaraderie'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to dry out completely)', NULL,
        'Desiccate', ARRAY['Dessicate', 'Desicate', 'Dessiccate'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an amateur who dabbles)', NULL,
        'Dilettante', ARRAY['Dilletante', 'Dilettant', 'Dillettante'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a memory aid)', NULL,
        'Mnemonic', ARRAY['Neumonic', 'Mnemonnic', 'Nmemonic'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a leader others follow; a sign of trends)', NULL,
        'Bellwether', ARRAY['Bellweather', 'Belwether', 'Bellwhether'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (able to use both hands equally)', NULL,
        'Ambidextrous', ARRAY['Ambidexterous', 'Ambidextreous', 'Ambydextrous'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (to cut off someone''s air)', NULL,
        'Asphyxiate', ARRAY['Asphixiate', 'Asphyxsiate', 'Aphyxiate'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a send-off service for graduating students)', NULL,
        'Baccalaureate', ARRAY['Bacalaureate', 'Baccalaureat', 'Baccaleaureate'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an orange melon)', NULL,
        'Cantaloupe', ARRAY['Cantelope', 'Cantalope', 'Canteloupe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (feeling sick to your stomach)', NULL,
        'Nauseous', ARRAY['Nautious', 'Nauseus', 'Nausious'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a serious throat infection)', NULL,
        'Diphtheria', ARRAY['Diptheria', 'Diphteria', 'Dyptheria'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (a small appetizer)', NULL,
        'Hors d''oeuvre', ARRAY['Hor d''oeuvre', 'Hors d''ouevre', 'Hors d''oeuve'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (having to do with medicines)', NULL,
        'Pharmaceutical', ARRAY['Pharmacuetical', 'Farmaceutical', 'Pharmaceutecal'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (passing off another''s work as your own)', NULL,
        'Plagiarism', ARRAY['Plagarism', 'Plagerism', 'Plagiarizm'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (sneaky, done in secret)', NULL,
        'Surreptitious', ARRAY['Surreptitous', 'Sureptitious', 'Surrepticious'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (found everywhere)', NULL,
        'Ubiquitous', ARRAY['Ubiquitus', 'Ubiquitious', 'Ubiqutous'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (an ups-and-downs change of fortune)', NULL,
        'Vicissitude', ARRAY['Vicisitude', 'Vicissitood', 'Viccissitude'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which is spelled correctly? (passionately eager)', NULL,
        'Zealous', ARRAY['Zelous', 'Zealious', 'Zealus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these German food words is misspelled?', NULL,
        'Sourkraut', ARRAY['Pretzel', 'Bratwurst', 'Strudel', 'Schnitzel'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these Italian music words is misspelled?', NULL,
        'Cresendo', ARRAY['Allegro', 'Soprano', 'Piccolo', 'Vibrato'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these illness words is misspelled?', NULL,
        'Laryngytis', ARRAY['Bronchitis', 'Influenza', 'Measles', 'Tetanus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these physics words is misspelled?', NULL,
        'Phenomenom', ARRAY['Molecule', 'Particle', 'Hypothesis', 'Nucleus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these government words is misspelled?', NULL,
        'Parliment', ARRAY['Senate', 'Congress', 'Ballot', 'Senator'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these theater words is misspelled?', NULL,
        'Intermision', ARRAY['Audience', 'Encore', 'Curtain', 'Matinee'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these cave words is misspelled?', NULL,
        'Stalactyte', ARRAY['Geyser', 'Quartz', 'Fossil', 'Granite'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these bird words is misspelled?', NULL,
        'Tarmigan', ARRAY['Pelican', 'Toucan', 'Flamingo', 'Albatross'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these cheese words is misspelled?', NULL,
        'Mozzerella', ARRAY['Cheddar', 'Gouda', 'Brie', 'Ricotta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these spice words is misspelled?', NULL,
        'Tumeric', ARRAY['Saffron', 'Paprika', 'Oregano', 'Coriander'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these tree words is misspelled?', NULL,
        'Eucalyptis', ARRAY['Sequoia', 'Magnolia', 'Sycamore', 'Willow'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Which of these fabric words is misspelled?', NULL,
        'Corderoy', ARRAY['Denim', 'Velvet', 'Flannel', 'Polyester'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: har_ngue', NULL,
        'a', ARRAY['e', 'i', 'o'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: ar_hetype', NULL,
        'c', ARRAY['k', 'ch', 'q'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: s_ythe', NULL,
        'c', ARRAY['k', 'i', 'y'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: mis_ellaneous', NULL,
        'c', ARRAY['s', 'sc', 'ss'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: hyp_crisy', NULL,
        'o', ARRAY['a', 'i', 'e'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: vet_rinarian', NULL,
        'e', ARRAY['a', 'i', 'o'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: cal_sthenics', NULL,
        'i', ARRAY['e', 'a', 'y'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: dic_otomy', NULL,
        'h', ARRAY['ch', 'k', 'c'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: ap_cryphal', NULL,
        'o', ARRAY['a', 'e', 'i'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: gr_ffiti', NULL,
        'a', ARRAY['i', 'e', 'o'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: rh_barb', NULL,
        'u', ARRAY['o', 'a', 'e'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: phle_m', NULL,
        'g', ARRAY['gh', 'm', 'n'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPELLBOUND', 'SPELLBOUND_BATCH_2', NULL,
        'Fill in the blank: ind_ct', NULL,
        'i', ARRAY['e', 'y', 'ai'], 400, NULL);

COMMIT;

-- Check: should return 400.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPELLBOUND';
