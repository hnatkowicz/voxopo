-- ============================================================================
-- content/sql/logos.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/logos.csv, the master copy of the
-- Thinking Pants category LOGOS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LOGOS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/nike.webp',
        'Nike', ARRAY['Adidas', 'Puma', 'Reebok', 'Under Armour', 'New Balance', 'Fila'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/apple-2.webp',
        'Apple', ARRAY['Samsung', 'Microsoft', 'Google', 'Dell', 'HP', 'Sony'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/mastercard.webp',
        'Mastercard', ARRAY['Visa', 'American Express', 'Discover', 'Capital One', 'Diners Club', 'JCB'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/pepsi.webp',
        'Pepsi', ARRAY['Coca-Cola', 'Dr Pepper', '7 Up', 'Mountain Dew', 'Sprite', 'RC Cola'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/adidas-2.webp',
        'Adidas', ARRAY['Puma', 'Reebok', 'Nike', 'Fila', 'Umbro', 'Kappa'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this (lettering removed)?', '/iconic-logos/ups.webp',
        'UPS', ARRAY['FedEx', 'DHL', 'USPS', 'Amazon', 'Purolator', 'TNT'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/under-armour.webp',
        'Under Armour', ARRAY['Nike', 'Adidas', 'Puma', 'Reebok', 'Lululemon', 'Russell Athletic'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What animal rears up on its hind legs in the Ferrari logo?', NULL,
        'A horse', ARRAY['A bull', 'A lion', 'A jaguar', 'A stag', 'A ram', 'A wolf'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which coffee chain''s green logo shows a crowned, two-tailed siren?', NULL,
        'Starbucks', ARRAY['Dunkin''', 'Tim Hortons', 'Costa Coffee', 'Peet''s Coffee', 'Caribou Coffee', 'Dutch Bros'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which cereal mascot roars "They''re Gr-r-reat!" on boxes of Frosted Flakes?', NULL,
        'Tony the Tiger', ARRAY['Toucan Sam', 'Cap''n Crunch', 'The Trix Rabbit', 'Sonny the Cuckoo Bird', 'Dig ''Em Frog', 'Lucky the Leprechaun'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which burger chain''s logo is a smiling, freckled girl with red pigtails?', NULL,
        'Wendy''s', ARRAY['Burger King', 'Dairy Queen', 'Arby''s', 'Jack in the Box', 'Hardee''s', 'Sonic'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Mr. Peanut, with his top hat, monocle and cane, is the mascot of which snack brand?', NULL,
        'Planters', ARRAY['Jif', 'Skippy', 'Blue Diamond', 'Emerald', 'Cracker Jack', 'Reese''s'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The Michelin Man''s puffy white body is made of a stack of what?', NULL,
        'Tires', ARRAY['Pillows', 'Marshmallows', 'Balloons', 'Snowballs', 'Cotton balls', 'Life rings'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Whose smiling, white-bearded face is on the KFC logo?', NULL,
        'Colonel Sanders', ARRAY['Ray Kroc', 'Dave Thomas', 'Orville Redenbacher', 'Chef Boyardee', 'Wally Amos', 'Bob Evans'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What animal shouts the name of the insurance company Aflac in its TV ads?', NULL,
        'A duck', ARRAY['A goose', 'A parrot', 'A chicken', 'A swan', 'A pelican', 'A seagull'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What does the pink Energizer Bunny play as he keeps going and going?', NULL,
        'A drum', ARRAY['A trumpet', 'A tuba', 'A harmonica', 'A guitar', 'A xylophone', 'A tambourine'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Snap, Crackle and Pop are the elf mascots of which cereal?', NULL,
        'Rice Krispies', ARRAY['Corn Flakes', 'Corn Pops', 'Cocoa Puffs', 'Cheerios', 'Froot Loops', 'Kix'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What kind of animal is Duo, the green mascot of the Duolingo language app?', NULL,
        'An owl', ARRAY['A parrot', 'A frog', 'A lizard', 'A turtle', 'A dinosaur', 'A caterpillar'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What color is Grimace, the big, fuzzy McDonald''s character?', NULL,
        'Purple', ARRAY['Green', 'Blue', 'Orange', 'Red', 'Pink', 'Brown'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which TV network''s logo is a rainbow-colored peacock?', NULL,
        'NBC', ARRAY['CBS', 'ABC', 'Fox', 'PBS', 'CNN', 'HBO'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'This striped logo was used from 1977 to 1998 by which computer company?', '/iconic-logos/apple.webp',
        'Apple', ARRAY['IBM', 'Atari', 'Commodore', 'Microsoft', 'Compaq', 'Tandy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/adidas.webp',
        'Adidas', ARRAY['Puma', 'Reebok', 'Nike', 'Fila', 'Umbro', 'Asics'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which tech brand''s logo is this?', '/iconic-logos/android.webp',
        'Android', ARRAY['Linux', 'Chrome', 'Firefox', 'Windows Phone', 'BlackBerry', 'Ubuntu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/polo.webp',
        'Ralph Lauren', ARRAY['Tommy Hilfiger', 'Lacoste', 'Calvin Klein', 'Brooks Brothers', 'Hugo Boss', 'Nautica'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/lacoste.webp',
        'Lacoste', ARRAY['Ralph Lauren', 'Tommy Hilfiger', 'Fred Perry', 'Le Coq Sportif', 'Crocs', 'Hugo Boss'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/chanel.webp',
        'Chanel', ARRAY['Gucci', 'Dior', 'Cartier', 'Céline', 'Hermès', 'Givenchy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this (lettering removed)?', '/iconic-logos/levis.webp',
        'Levi''s', ARRAY['Wrangler', 'Lee', 'Gap', 'Diesel', 'Guess', 'Calvin Klein'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/converse.webp',
        'Converse', ARRAY['Vans', 'Keds', 'Puma', 'Reebok', 'Fila', 'Skechers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/new-balance.webp',
        'New Balance', ARRAY['Nike', 'Asics', 'Saucony', 'Brooks', 'Reebok', 'Mizuno'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/general-electric.webp',
        'General Electric', ARRAY['General Motors', 'Westinghouse', 'Whirlpool', 'Honeywell', 'Siemens', 'Philips'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'In the Amazon logo, the smile-shaped arrow points from which letter to which?', NULL,
        'A to Z', ARRAY['A to N', 'M to Z', 'A to O', 'M to N', 'Z to N', 'A to M'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What shape is hidden in the white space between the ''E'' and the ''x'' of the FedEx logo?', NULL,
        'An arrow', ARRAY['A star', 'A heart', 'A key', 'A lightning bolt', 'A paper airplane', 'A check mark'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Baskin-Robbins'' famous number 31 stands for what?', NULL,
        'A flavor for every day of a month', ARRAY['The first shop''s street number', 'The number of toppings on offer', 'The founders'' ages added up', 'The number of original shops', 'The day the company was founded', 'The number of sundae recipes'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which Italian sports-car maker''s logo is a charging bull?', NULL,
        'Lamborghini', ARRAY['Ferrari', 'Maserati', 'Alfa Romeo', 'Pagani', 'Lancia', 'De Tomaso'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which tire company''s logo has a winged foot in the middle of its name?', NULL,
        'Goodyear', ARRAY['Firestone', 'Bridgestone', 'Michelin', 'Pirelli', 'Dunlop', 'BFGoodrich'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What is the Morton Salt girl holding over her head?', NULL,
        'An umbrella', ARRAY['A newspaper', 'A picnic basket', 'A sun hat', 'A shopping bag', 'A book', 'A watering can'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The three points of the Mercedes-Benz star stand for engines used on land, at sea and where else?', NULL,
        'In the air', ARRAY['In space', 'On rails', 'Underground', 'On ice', 'In the desert', 'In the mountains'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What is the name of the roaring lion in the MGM film logo?', NULL,
        'Leo', ARRAY['Rex', 'Max', 'Rory', 'King', 'Felix', 'Leonard'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'How many stars are on the Subaru logo?', NULL,
        'Six', ARRAY['Five', 'Seven', 'Four', 'Eight', 'Three', 'Nine'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What does the bald, muscular Mr. Clean wear in one ear?', NULL,
        'An earring', ARRAY['A pencil', 'A feather', 'A flower', 'A hearing aid', 'An earbud', 'A cotton swab'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/champion.webp',
        'Champion', ARRAY['Fila', 'Starter', 'Russell Athletic', 'Hanes', 'Reebok', 'Columbia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this (lettering removed)?', '/iconic-logos/tommy-hilfiger.webp',
        'Tommy Hilfiger', ARRAY['Nautica', 'Ralph Lauren', 'Calvin Klein', 'Gap', 'Lacoste', 'Hugo Boss'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/louis-vuitton.webp',
        'Louis Vuitton', ARRAY['Gucci', 'Chanel', 'Hermès', 'Yves Saint Laurent', 'Prada', 'Dior'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/gucci.webp',
        'Gucci', ARRAY['Fendi', 'Chanel', 'Louis Vuitton', 'Givenchy', 'Dior', 'Valentino'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which bank''s logo is this?', '/iconic-logos/bank-of-america.webp',
        'Bank of America', ARRAY['Wells Fargo', 'Chase', 'Citibank', 'Capital One', 'U.S. Bank', 'PNC'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/fruit-loom.webp',
        'Fruit of the Loom', ARRAY['Hanes', 'Jockey', 'Gildan', 'Sun-Maid', 'Welch''s', 'Del Monte'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/versace.webp',
        'Versace', ARRAY['Gucci', 'Fendi', 'Dolce & Gabbana', 'Bulgari', 'Armani', 'Valentino'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/yves-laurent.webp',
        'Yves Saint Laurent', ARRAY['Dior', 'Givenchy', 'Chanel', 'Balenciaga', 'Louis Vuitton', 'Lanvin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/coach-2.webp',
        'Coach', ARRAY['Hermès', 'Wells Fargo', 'Michael Kors', 'Kate Spade', 'Tory Burch', 'Dooney & Bourke'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/wells-fargo.webp',
        'Wells Fargo', ARRAY['Bank of America', 'Chase', 'American Express', 'Coach', 'Citibank', 'U.S. Bank'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Who designed the Nike swoosh in 1971, as a college student, for just $35?', NULL,
        'Carolyn Davidson', ARRAY['Paula Scher', 'Saul Bass', 'Susan Kare', 'Massimo Vignelli', 'Herb Lubalin', 'Ivan Chermayeff'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The Shell oil company''s logo is which kind of seashell?', NULL,
        'A scallop', ARRAY['A conch', 'A clam', 'A cowrie', 'A nautilus', 'A whelk', 'An oyster'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which animal is hidden in the mountain on Toblerone''s classic Matterhorn logo?', NULL,
        'A bear', ARRAY['A goat', 'A marmot', 'An eagle', 'A fox', 'A cow', 'A wolf'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Mitsubishi''s name, in Japanese, describes its logo. What does it mean?', NULL,
        'Three diamonds', ARRAY['Three stars', 'Three rivers', 'Three mountains', 'Three suns', 'Three leaves', 'Three swords'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Volvo''s circle-with-an-arrow logo is the old chemists'' symbol for which metal?', NULL,
        'Iron', ARRAY['Copper', 'Tin', 'Lead', 'Silver', 'Gold', 'Zinc'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The black horse in the middle of the Porsche crest comes from the coat of arms of which German city?', NULL,
        'Stuttgart', ARRAY['Munich', 'Wolfsburg', 'Ingolstadt', 'Frankfurt', 'Cologne', 'Hamburg'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What is the official name of the giggling Pillsbury Doughboy?', NULL,
        'Poppin'' Fresh', ARRAY['Doughy Dan', 'Biscuit Bob', 'Puffy Pete', 'Little Doughie', 'Crescent Charlie', 'Baker Benny'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What is the Michelin Man''s official name?', NULL,
        'Bibendum', ARRAY['Marcel', 'Gaston', 'Rollo', 'Pneumo', 'Blanchet', 'Michelot'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'What was the original name of the Monopoly man, the board game''s top-hatted mascot?', NULL,
        'Rich Uncle Pennybags', ARRAY['Mr. Moneybags', 'Uncle Moneypenny', 'Sir Goldsworth', 'Daddy Warbucks', 'Baron Boardwalk', 'Mr. Bigbucks'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which TV network''s logo is a single wide-open eye?', NULL,
        'CBS', ARRAY['NBC', 'ABC', 'Fox', 'PBS', 'CNN', 'HBO'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/dolce-gabbana.webp',
        'Dolce & Gabbana', ARRAY['Gucci', 'Diesel', 'Dsquared2', 'DKNY', 'Dior', 'Givenchy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/victoria-secret.webp',
        'Victoria''s Secret', ARRAY['Valentino', 'Versace', 'Vera Wang', 'Vanity Fair', 'La Senza', 'Aerie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/famous-footwear.webp',
        'Famous Footwear', ARRAY['Foot Locker', 'Payless ShoeSource', 'DSW', 'Skechers', 'Finish Line', 'Shoe Carnival'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which bank''s logo is this?', '/iconic-logos/pnc-bank.webp',
        'PNC', ARRAY['Fifth Third', 'U.S. Bank', 'Truist', 'KeyBank', 'Regions', 'TD Bank'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/cartier.webp',
        'Cartier', ARRAY['Chanel', 'Céline', 'Chloé', 'Coach', 'Tiffany & Co.', 'Bulgari'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/givenchy.webp',
        'Givenchy', ARRAY['Gucci', 'Fendi', 'Balenciaga', 'Dior', 'Valentino', 'Prada'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Ferrari''s logo animal comes from the emblem on the plane of which World War I Italian flying ace?', NULL,
        'Francesco Baracca', ARRAY['Fulco Ruffo di Calabria', 'Silvio Scaroni', 'Pier Ruggero Piccio', 'Italo Balbo', 'Gabriele D''Annunzio', 'Tazio Nuvolari'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Audi''s four rings stand for four carmakers that joined in 1932: Audi, DKW, Wanderer and which other?', NULL,
        'Horch', ARRAY['Opel', 'Maybach', 'Borgward', 'Hanomag', 'Adler', 'Hansa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Twitter''s blue bird logo was nicknamed after a Boston Celtics legend. What was the bird''s name?', NULL,
        'Larry', ARRAY['Tweety', 'Robin', 'Birdie', 'Jay', 'Chirp', 'Blue'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The baby in Gerber''s famous logo drawing grew up to become what?', NULL,
        'A mystery novelist', ARRAY['A pediatrician', 'A Hollywood actress', 'A U.S. senator', 'An astronaut', 'A famous chef', 'A portrait painter'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Who named Coca-Cola and wrote out its flowing script logo in the 1880s?', NULL,
        'Frank M. Robinson', ARRAY['John Pemberton', 'Asa Candler', 'Robert Woodruff', 'Caleb Bradham', 'Charles Alderton', 'Joseph Biedenharn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Who designed Apple''s rainbow-striped apple logo in 1977?', NULL,
        'Rob Janoff', ARRAY['Paul Rand', 'Saul Bass', 'Susan Kare', 'Ronald Wayne', 'Jony Ive', 'Paula Scher'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which graphic designer created the heart-shaped "I Love NY" logo in 1977?', NULL,
        'Milton Glaser', ARRAY['Andy Warhol', 'Robert Indiana', 'Keith Haring', 'Peter Max', 'Paul Rand', 'Saul Bass'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Hyundai says the slanted ''H'' in its logo shows two people doing what?', NULL,
        'Shaking hands', ARRAY['Hugging', 'Dancing', 'Giving a high five', 'Bowing', 'Racing', 'Waving'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Maserati''s trident logo comes from a famous fountain statue in which Italian city?', NULL,
        'Bologna', ARRAY['Modena', 'Florence', 'Rome', 'Milan', 'Turin', 'Venice'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'NASA''s round blue emblem with stars, an orbit and a red swoosh is nicknamed what?', NULL,
        'The meatball', ARRAY['The worm', 'The marble', 'The bullseye', 'The blueberry', 'The donut', 'The cookie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Elsie the Cow is the mascot of which dairy company?', NULL,
        'Borden', ARRAY['Land O''Lakes', 'Hood', 'Breyers', 'Horizon', 'Dean Foods', 'Kraft'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which gas station brand''s logo is a big green dinosaur?', NULL,
        'Sinclair', ARRAY['Phillips 66', 'Texaco', 'Citgo', 'Conoco', 'Marathon', 'Mobil'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Mr. Peanut was first sketched in 1916 for a contest. Who drew the winning sketch?', NULL,
        'A schoolboy', ARRAY['A newspaper cartoonist', 'A peanut farmer', 'The company''s founder', 'A circus clown', 'A Broadway actor', 'A famous painter'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'The dots on the Domino''s Pizza logo first stood for what?', NULL,
        'Its first three stores', ARRAY['Its three founders', 'Its three pizza sizes', 'Its first three toppings', 'Its three crust styles', 'Its three delivery cars', 'The three cities it served'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LOGOS';
