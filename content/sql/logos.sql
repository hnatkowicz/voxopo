-- ============================================================================
-- content/sql/logos.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/logos.csv, the master copy of the
-- Thinking Pants category LOGOS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 195 live questions
-- (100: 66, 200: 45, 300: 51, 400: 33), inside a transaction. Safe to re-run.
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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/amazon.webp',
        'Amazon', ARRAY['eBay', 'Etsy', 'Walmart', 'Target', 'Alibaba', 'Best Buy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/mcdonalds.webp',
        'McDonald''s', ARRAY['Burger King', 'Wendy''s', 'Arby''s', 'Sonic', 'White Castle', 'Jack in the Box'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which coffee chain''s logo is this?', '/iconic-logos/starbucks.webp',
        'Starbucks', ARRAY['Dunkin''', 'Caribou Coffee', 'Peet''s Coffee', 'Tim Hortons', 'Costa Coffee', 'Dutch Bros'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which store''s logo is this?', '/iconic-logos/target.webp',
        'Target', ARRAY['Walmart', 'Kmart', 'Kohl''s', 'Costco', 'Best Buy', 'Macy''s'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/facebook.webp',
        'Facebook', ARRAY['Flickr', 'Fiverr', 'Foursquare', 'Feedly', 'FaceTime', 'Firefox'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/instagram.webp',
        'Instagram', ARRAY['Snapchat', 'Pinterest', 'Flickr', 'VSCO', 'TikTok', 'Messenger'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/youtube.webp',
        'YouTube', ARRAY['Vimeo', 'Netflix', 'Twitch', 'Dailymotion', 'Hulu', 'TikTok'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/google.webp',
        'Google', ARRAY['Bing', 'Yahoo', 'DuckDuckGo', 'Ask Jeeves', 'AOL', 'Baidu'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/tiktok.webp',
        'TikTok', ARRAY['Instagram', 'Snapchat', 'Spotify', 'Triller', 'YouTube', 'Vine'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game console''s logo is this?', '/iconic-logos/playstation.webp',
        'PlayStation', ARRAY['Xbox', 'Nintendo Switch', 'Sega Genesis', 'Atari 2600', 'Wii', 'Game Boy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game console''s logo is this?', '/iconic-logos/xbox.webp',
        'Xbox', ARRAY['PlayStation', 'Nintendo Switch', 'Sega Genesis', 'Atari 2600', 'Wii', 'Game Boy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game console''s logo is this?', '/iconic-logos/nintendo-switch.webp',
        'Nintendo Switch', ARRAY['Wii U', 'PlayStation 5', 'Xbox Series X', 'Steam Deck', 'Nintendo DS', 'GameCube'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which TV network''s logo is this?', '/iconic-logos/nbc.webp',
        'NBC', ARRAY['CBS', 'ABC', 'Fox', 'PBS', 'CNN', 'HBO'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which TV network''s logo is this?', '/iconic-logos/cbs.webp',
        'CBS', ARRAY['NBC', 'ABC', 'Fox', 'PBS', 'CNN', 'HBO'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/mercedes-benz.webp',
        'Mercedes-Benz', ARRAY['BMW', 'Audi', 'Volkswagen', 'Lexus', 'Volvo', 'Porsche'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/toyota.webp',
        'Toyota', ARRAY['Honda', 'Nissan', 'Hyundai', 'Mazda', 'Kia', 'Subaru'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/bmw.webp',
        'BMW', ARRAY['Mercedes-Benz', 'Audi', 'Volkswagen', 'Porsche', 'Volvo', 'Saab'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/chevrolet.webp',
        'Chevrolet', ARRAY['Ford', 'Dodge', 'GMC', 'Buick', 'Chrysler', 'Pontiac'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/tesla.webp',
        'Tesla', ARRAY['Rivian', 'Lucid', 'Polestar', 'Fisker', 'Lotus', 'Toyota'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/twitter.webp',
        'Twitter', ARRAY['Facebook', 'Tumblr', 'Bluesky', 'Threads', 'Snapchat', 'Pinterest'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Since 2023, which app''s logo has been this?', '/iconic-logos/x.webp',
        'X (formerly Twitter)', ARRAY['Threads', 'Bluesky', 'Xbox', 'Mastodon', 'Telegram', 'Snapchat'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which store''s logo is this?', '/iconic-logos/wal-mart.webp',
        'Walmart', ARRAY['Target', 'Kmart', 'Costco', 'Kroger', 'Dollar General', 'Home Depot'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/kfc.webp',
        'KFC', ARRAY['Popeyes', 'Church''s Chicken', 'Chick-fil-A', 'Bojangles', 'Boston Market', 'Wingstop'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which pizza chain''s logo is this?', '/iconic-logos/dominoes.webp',
        'Domino''s', ARRAY['Pizza Hut', 'Papa John''s', 'Little Caesars', 'Papa Murphy''s', 'Marco''s Pizza', 'Sbarro'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/wendys.webp',
        'Wendy''s', ARRAY['McDonald''s', 'Burger King', 'Arby''s', 'Sonic', 'White Castle', 'Hardee''s'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/puma.webp',
        'Puma', ARRAY['Nike', 'Adidas', 'Reebok', 'Fila', 'Asics', 'Umbro'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/rolling-stones.webp',
        'The Rolling Stones', ARRAY['The Beatles', 'The Who', 'Led Zeppelin', 'Aerosmith', 'Kiss', 'The Doors'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/nirvana.webp',
        'Nirvana', ARRAY['Pearl Jam', 'Soundgarden', 'Foo Fighters', 'Green Day', 'Alice in Chains', 'Stone Temple Pilots'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/coca-cola.webp',
        'Coca-Cola', ARRAY['Coca-Koala', 'Cocoa-Cola', 'Loca-Cola', 'Choco-Cola', 'Coca-Collie', 'Okra-Cola'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/coach.webp',
        'Coach', ARRAY['Couch', 'Roach', 'Poach', 'Crouch', 'Pooch', 'Coax'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/citi.webp',
        'Citi', ARRAY['Kitty', 'Chili', 'Citrus', 'Sitti', 'Kiwi', 'Tiki'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/prada.webp',
        'Prada', ARRAY['Piñata', 'Panda', 'Pasta', 'Prado', 'Parade', 'Prawn'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/ray-ban.webp',
        'Ray-Ban', ARRAY['Ray-Bran', 'Ray-Bun', 'Gray-Ban', 'Hay-Ban', 'Ray-Barn', 'Stingray'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/stussy.webp',
        'Stüssy', ARRAY['Fussy', 'Gussy', 'Sushi', 'Stuffy', 'Stussle', 'Dusty'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/abc.webp',
        'ABC', ARRAY['XYZ', 'CBA', 'ABBA', 'Alphabet Soup', 'A-B-See', 'Easy as 1-2-3'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/ibm.webp',
        'IBM', ARRAY['IBN', 'BMI', 'IOU', 'IHOP', 'I Be Muffin', 'I.B. Moose'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/lg.webp',
        'LG', ARRAY['Lil'' Gizmo', 'LOL', 'Large', 'Lucky Goose', 'Long Giraffe', 'Lemongrass'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/hewlitt-packard.webp',
        'HP', ARRAY['Harry Potter', 'Horsepower', 'Hot Pockets', 'Hush Puppies', 'Happy Pancake', 'Hip Hop'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/electronic-arts.webp',
        'EA', ARRAY['Eeyore', 'E-I-E-I-O', 'Easy Answers', 'Eagle Air', 'Earl Grey', 'East Atlanta'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/dairy-queen.webp',
        'Dairy Queen', ARRAY['Dairy King', 'Donut Queen', 'Duck Quack', 'Dragon Queen', 'Disco Queen', 'DJ Q'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/japan-airlines.webp',
        'Japan Airlines', ARRAY['Jelly Airlines', 'Jalapeño Air', 'Jolly Airlines', 'Jump And Land', 'Just A Loon', 'Jalopy Jets'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/volkswagen.webp',
        'Volkswagen', ARRAY['Very Wiggly', 'Vanilla Waffles', 'Volcano Wagon', 'Velvet Worm', 'Victory Wiggle', 'Van Wagon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/warner-bros.webp',
        'Warner Bros.', ARRAY['Water Bottle', 'Wild Bunnies', 'Waffle Barn', 'Wacky Beavers', 'Wonder Bread', 'Western Bacon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/ford.webp',
        'Ford', ARRAY['Fjord', 'Food', 'Forked', 'Fort', 'Lord', 'Cord'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/jack-in-the-box.webp',
        'Jack in the Box', ARRAY['Jack in the Sox', 'Jack-o''-Lantern', 'Jack in the Bag', 'Lumberjack', 'Jackrabbit', 'Jack Frost'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/tool.webp',
        'Tool', ARRAY['Stool', 'Drool', 'Fool', 'Wool', 'Pool', 'Toad'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Freebie! Whose logo is this?', '/iconic-logos/american-airlines-old.webp',
        'American Airlines', ARRAY['Aardvark Airways', 'AAA Batteries', 'Alpaca Air', 'Awesome Airlines', 'Apple Air', 'Antelope Air'], 100);

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
        'What does the bald, muscular Mr. Clean wear in one ear?', NULL,
        'An earring', ARRAY['A pencil', 'A feather', 'A flower', 'A hearing aid', 'An earbud', 'A cotton swab'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/delta.webp',
        'Delta', ARRAY['United', 'American Airlines', 'Southwest', 'JetBlue', 'Alaska Airlines', 'Air Canada'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/southwest.webp',
        'Southwest', ARRAY['Delta', 'United', 'American Airlines', 'JetBlue', 'Spirit', 'Frontier'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/air-canada.webp',
        'Air Canada', ARRAY['WestJet', 'Porter Airlines', 'Qantas', 'Aer Lingus', 'Air New Zealand', 'Icelandair'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/qantas.webp',
        'Qantas', ARRAY['Air New Zealand', 'Virgin Australia', 'Jetstar', 'Singapore Airlines', 'Cathay Pacific', 'Fiji Airways'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which car model''s badge is this?', '/iconic-logos/mustang.webp',
        'Ford Mustang', ARRAY['Chevrolet Corvette', 'Chevrolet Camaro', 'Ford Bronco', 'Dodge Charger', 'Pontiac Firebird', 'Ford Thunderbird'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/porsche.webp',
        'Porsche', ARRAY['Ferrari', 'Lamborghini', 'Maserati', 'Audi', 'Alfa Romeo', 'Jaguar'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/subaru.webp',
        'Subaru', ARRAY['Mitsubishi', 'Mazda', 'Nissan', 'Suzuki', 'Isuzu', 'Infiniti'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/mitsubishi.webp',
        'Mitsubishi', ARRAY['Subaru', 'Mazda', 'Nissan', 'Suzuki', 'Isuzu', 'Daihatsu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/honda.webp',
        'Honda', ARRAY['Hyundai', 'Toyota', 'Nissan', 'Mazda', 'Subaru', 'Kia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/chick-fil-a.webp',
        'Chick-fil-A', ARRAY['Popeyes', 'Raising Cane''s', 'Bojangles', 'Zaxby''s', 'KFC', 'Church''s Chicken'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/chilis.webp',
        'Chili''s', ARRAY['Applebee''s', 'TGI Fridays', 'Outback Steakhouse', 'Red Robin', 'Ruby Tuesday', 'On the Border'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which coffee and donut chain''s logo is this?', '/iconic-logos/dunkin.webp',
        'Dunkin''', ARRAY['Starbucks', 'Tim Hortons', 'Krispy Kreme', 'Caribou Coffee', 'Dutch Bros', 'Peet''s Coffee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/taco-bell.webp',
        'Taco Bell', ARRAY['Del Taco', 'Chipotle', 'Qdoba', 'Taco John''s', 'Taco Cabana', 'El Pollo Loco'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/norh-face.webp',
        'The North Face', ARRAY['Patagonia', 'Columbia', 'Marmot', 'Arc''teryx', 'L.L.Bean', 'Mountain Hardwear'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which phone company''s logo is this?', '/iconic-logos/t-mobile.webp',
        'T-Mobile', ARRAY['Verizon', 'AT&T', 'Sprint', 'Cricket Wireless', 'Boost Mobile', 'Vodafone'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which phone company''s logo is this?', '/iconic-logos/verizon.webp',
        'Verizon', ARRAY['AT&T', 'T-Mobile', 'Sprint', 'Vodafone', 'Virgin Mobile', 'Comcast'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which phone company''s logo is this?', '/iconic-logos/att.webp',
        'AT&T', ARRAY['Verizon', 'T-Mobile', 'Sprint', 'Comcast', 'Cingular', 'CenturyLink'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game console''s logo is this?', '/iconic-logos/n-64.webp',
        'Nintendo 64', ARRAY['GameCube', 'Super Nintendo', 'Wii', 'Sega Genesis', 'PlayStation', 'Atari Jaguar'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which video game company''s logo is this?', '/iconic-logos/rockstar.webp',
        'Rockstar Games', ARRAY['Ubisoft', 'Activision', 'Bethesda', 'Epic Games', 'Naughty Dog', 'EA Sports'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/tinder.webp',
        'Tinder', ARRAY['Bumble', 'Hinge', 'Match.com', 'OkCupid', 'Plenty of Fish', 'eHarmony'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/uber.webp',
        'Uber', ARRAY['Lyft', 'DoorDash', 'Grubhub', 'Via', 'Bolt', 'Instacart'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/yahoo.webp',
        'Yahoo', ARRAY['AOL', 'Ask Jeeves', 'Bing', 'Lycos', 'Excite', 'AltaVista'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which version of Windows has this logo?', '/iconic-logos/windows-11.webp',
        'Windows 11', ARRAY['Windows 98', 'Windows XP', 'Windows Vista', 'Windows 7', 'Windows 8', 'Windows 10'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/rhcp.webp',
        'Red Hot Chili Peppers', ARRAY['Pearl Jam', 'Foo Fighters', 'Green Day', 'Nirvana', 'Linkin Park', 'Incubus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/grateful-dead.webp',
        'Grateful Dead', ARRAY['Jefferson Airplane', 'The Doors', 'Phish', 'The Allman Brothers Band', 'Creedence Clearwater Revival', 'Misfits'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/nine-inch-nails.webp',
        'Nine Inch Nails', ARRAY['Marilyn Manson', 'Ministry', 'Depeche Mode', 'Rammstein', 'Smashing Pumpkins', 'Korn'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/van-halen.webp',
        'Van Halen', ARRAY['Def Leppard', 'Bon Jovi', 'Mötley Crüe', 'Aerosmith', 'Kiss', 'Guns N'' Roses'], 200);

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
        'Volvo''s circle-with-an-arrow logo is the old chemists'' symbol for which metal?', NULL,
        'Iron', ARRAY['Copper', 'Tin', 'Lead', 'Silver', 'Gold', 'Zinc'], 300);
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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/american-airlines.webp',
        'American Airlines', ARRAY['United', 'Delta', 'Southwest', 'JetBlue', 'Alaska Airlines', 'US Airways'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/united-airlines.webp',
        'United', ARRAY['Pan Am', 'Delta', 'American Airlines', 'KLM', 'Alaska Airlines', 'Air Canada'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/aer-lingus.webp',
        'Aer Lingus', ARRAY['Ryanair', 'British Airways', 'Air Canada', 'KLM', 'Icelandair', 'Virgin Atlantic'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/british-airways.webp',
        'British Airways', ARRAY['Virgin Atlantic', 'Air France', 'Lufthansa', 'KLM', 'Aer Lingus', 'Iberia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/air-france.webp',
        'Air France', ARRAY['KLM', 'Lufthansa', 'British Airways', 'Alitalia', 'Iberia', 'Swiss'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/lufthansa-airlines.webp',
        'Lufthansa', ARRAY['Japan Airlines', 'KLM', 'Swiss', 'Austrian Airlines', 'Air France', 'SAS'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/cadillac.webp',
        'Cadillac', ARRAY['Lincoln', 'Buick', 'Chrysler', 'Packard', 'Lexus', 'Infiniti'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/buick.webp',
        'Buick', ARRAY['Cadillac', 'Pontiac', 'Oldsmobile', 'Lincoln', 'Chrysler', 'Mercury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which car model''s badge is this?', '/iconic-logos/corvette.webp',
        'Chevrolet Corvette', ARRAY['Ford Mustang', 'Chevrolet Camaro', 'Dodge Viper', 'Dodge Charger', 'Pontiac Firebird', 'Ford Thunderbird'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'This ram''s-head badge was famous on which carmaker''s trucks?', '/iconic-logos/dodge.webp',
        'Dodge', ARRAY['Ford', 'Chevrolet', 'GMC', 'Toyota', 'Jeep', 'Nissan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/yamaha.webp',
        'Yamaha', ARRAY['Kawasaki', 'Suzuki', 'Ducati', 'Roland', 'Casio', 'Triumph'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which guitar maker''s logo is this?', '/iconic-logos/fender.webp',
        'Fender', ARRAY['Gibson', 'Ibanez', 'Gretsch', 'Martin', 'Epiphone', 'PRS'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/chick-fil-a-2.webp',
        'Chick-fil-A', ARRAY['Popeyes', 'Raising Cane''s', 'Bojangles', 'Zaxby''s', 'KFC', 'Church''s Chicken'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/hardees.webp',
        'Hardee''s', ARRAY['Sonic', 'Jack in the Box', 'Whataburger', 'Arby''s', 'Checkers', 'Krystal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which store''s logo is this?', '/iconic-logos/toys-r-us.webp',
        'Toys "R" Us', ARRAY['KB Toys', 'FAO Schwarz', 'Build-A-Bear Workshop', 'Learning Express', 'Zany Brainy', 'Party City'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which Adobe app''s icon is this?', '/iconic-logos/adobe-illustrator.webp',
        'Adobe Illustrator', ARRAY['Adobe Photoshop', 'Adobe InDesign', 'Adobe Premiere Pro', 'Adobe After Effects', 'Adobe Acrobat', 'Adobe Lightroom'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/aol.webp',
        'AOL', ARRAY['Yahoo', 'Netscape', 'CompuServe', 'Prodigy', 'MSN', 'EarthLink'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/atari.webp',
        'Atari', ARRAY['Sega', 'Nintendo', 'Commodore', 'Coleco', 'Intellivision', 'Activision'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/discord.webp',
        'Discord', ARRAY['Slack', 'Twitch', 'Skype', 'Reddit', 'Telegram', 'WhatsApp'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game console''s logo is this?', '/iconic-logos/game-cube.webp',
        'GameCube', ARRAY['Nintendo 64', 'Wii', 'Dreamcast', 'PlayStation 2', 'Xbox 360', 'Game Boy Advance'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'This penguin is the mascot of which operating system?', '/iconic-logos/linux.webp',
        'Linux', ARRAY['Android', 'Windows', 'macOS', 'Solaris', 'MS-DOS', 'BeOS'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/myspace.webp',
        'Myspace', ARRAY['Facebook', 'Friendster', 'Bebo', 'LiveJournal', 'Xanga', 'Hi5'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which game store''s logo is this?', '/iconic-logos/steam.webp',
        'Steam', ARRAY['Epic Games Store', 'Origin', 'GOG', 'Battle.net', 'Itch.io', 'Humble Bundle'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/vimeo.webp',
        'Vimeo', ARRAY['YouTube', 'Vine', 'Dailymotion', 'Twitch', 'Venmo', 'Vevo'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which version of Windows had this logo?', '/iconic-logos/windows-98.webp',
        'Windows 98', ARRAY['Windows XP', 'Windows Vista', 'Windows 7', 'Windows 8', 'Windows 10', 'Windows 11'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which version of Windows had this logo?', '/iconic-logos/windows-7.webp',
        'Windows 7', ARRAY['Windows 98', 'Windows 3.1', 'Windows XP', 'Windows 8', 'Windows 10', 'Windows 11'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'This peacock once told viewers a show was "in living color." Which network''s?', '/iconic-logos/nbc-old.webp',
        'NBC', ARRAY['CBS', 'ABC', 'DuMont', 'PBS', 'Fox', 'HBO'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which phone company''s logo is this?', '/iconic-logos/sprint.webp',
        'Sprint', ARRAY['Verizon', 'AT&T', 'T-Mobile', 'Nextel', 'Cricket Wireless', 'US Cellular'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which company''s logo is this?', '/iconic-logos/ticketmaster.webp',
        'Ticketmaster', ARRAY['StubHub', 'Eventbrite', 'SeatGeek', 'Vivid Seats', 'Fandango', 'Tumblr'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/queen.webp',
        'Queen', ARRAY['The Beatles', 'Led Zeppelin', 'Pink Floyd', 'The Who', 'Genesis', 'Def Leppard'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/misfits.webp',
        'Misfits', ARRAY['Ramones', 'Black Flag', 'Dead Kennedys', 'Bad Religion', 'The Damned', 'Social Distortion'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which band''s logo is this?', '/iconic-logos/black-flag.webp',
        'Black Flag', ARRAY['Misfits', 'Dead Kennedys', 'Minor Threat', 'Bad Brains', 'Ramones', 'Circle Jerks'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which K-pop group''s logo is this?', '/iconic-logos/illit.webp',
        'ILLIT', ARRAY['NewJeans', 'LE SSERAFIM', 'IVE', 'aespa', 'BABYMONSTER', 'TWICE'], 300);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/air-france-old.webp',
        'Air France', ARRAY['KLM', 'Lufthansa', 'British Airways', 'Alitalia', 'Iberia', 'Swiss'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/singapore-airlines.webp',
        'Singapore Airlines', ARRAY['Cathay Pacific', 'Thai Airways', 'Malaysia Airlines', 'Garuda Indonesia', 'Korean Air', 'China Airlines'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which airline''s logo is this?', '/iconic-logos/ermirates-airlines.webp',
        'Emirates', ARRAY['Etihad Airways', 'Qatar Airways', 'Saudia', 'Gulf Air', 'Turkish Airlines', 'Oman Air'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/chrysler.webp',
        'Chrysler', ARRAY['Dodge', 'Plymouth', 'Buick', 'Lincoln', 'Mercury', 'DeSoto'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which carmaker''s badge is this?', '/iconic-logos/oldsmobile.webp',
        'Oldsmobile', ARRAY['Pontiac', 'Buick', 'Plymouth', 'Mercury', 'Saturn', 'Studebaker'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which restaurant chain''s logo is this?', '/iconic-logos/panera-bread.webp',
        'Panera Bread', ARRAY['Corner Bakery', 'Au Bon Pain', 'Einstein Bros. Bagels', 'Cosi', 'Paris Baguette', 'Jason''s Deli'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which discount store''s logo is this?', '/iconic-logos/ollies.webp',
        'Ollie''s Bargain Outlet', ARRAY['Big Lots', 'Dollar General', 'Five Below', 'Tuesday Morning', 'Ocean State Job Lot', 'Christmas Tree Shops'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'In the late 1990s and 2000s, which store''s ads starred this smiley face?', '/iconic-logos/wal-mart-2.webp',
        'Walmart', ARRAY['Kmart', 'Target', 'Sears', 'Kohl''s', 'Big Lots', 'Dollar General'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which brand''s logo is this?', '/iconic-logos/columbia.webp',
        'Columbia Sportswear', ARRAY['The North Face', 'Patagonia', 'L.L.Bean', 'Eddie Bauer', 'Marmot', 'REI'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'This bell was the logo of which old telephone network?', '/iconic-logos/bell.webp',
        'The Bell System', ARRAY['GTE', 'MCI', 'Sprint', 'Western Union', 'Verizon', 'Comcast'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which programming language''s logo is this?', '/iconic-logos/java.webp',
        'Java', ARRAY['Python', 'JavaScript', 'C++', 'Ruby', 'Kotlin', 'PHP'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which video game company''s logo is this?', '/iconic-logos/riot-games.webp',
        'Riot Games', ARRAY['Epic Games', 'Blizzard', 'Valve', 'Bungie', 'Ubisoft', 'Activision'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LOGOS', 'ORIGINAL', NULL,
        'Which app''s logo is this?', '/iconic-logos/xiaohongshu.webp',
        'RedNote (Xiaohongshu)', ARRAY['WeChat', 'Weibo', 'Douyin', 'Lemon8', 'Kuaishou', 'Bilibili'], 400);

COMMIT;

-- Check: should return 195.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LOGOS';
