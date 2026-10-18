-- ============================================================================
-- content/sql/fictional_locations.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/fictional_locations.csv, the master copy of the
-- Thinking Pants category FICTIONAL_LOCATIONS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 75 live questions
-- (100: 19, 200: 18, 300: 19, 400: 19), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FICTIONAL_LOCATIONS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the magical land, reached through a wardrobe, in C.S. Lewis''s "The Lion, the Witch and the Wardrobe"?', NULL,
        'Narnia', ARRAY['Oz', 'Neverland', 'Wonderland', 'Middle-earth', 'Westeros', 'Hogwarts'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the fictional American city, protected by Batman, where Wayne Manor is located?', NULL,
        'Gotham City', ARRAY['Metropolis', 'Central City', 'Star City', 'Coast City', 'Bludhaven', 'Keystone City'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the magical island where Peter Pan and the Lost Boys live, never growing up?', NULL,
        'Neverland', ARRAY['Wonderland', 'Narnia', 'Oz', 'Treasure Island', 'Atlantis', 'Shangri-La'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the undersea city, home to SpongeBob SquarePants, located in the Pacific Ocean?', NULL,
        'Bikini Bottom', ARRAY['Atlantis', 'Coral City', 'Shell City', 'Kelp Harbor', 'Reef Town', 'Seaweed Springs'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Where do Winnie-the-Pooh and his friends live?', NULL,
        'The Hundred Acre Wood', ARRAY['Sherwood Forest', 'Mirkwood', 'The Wild Wood', 'Fangorn Forest', 'The Enchanted Forest', 'The Whispering Woods'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which street is home to Big Bird, Elmo and Oscar the Grouch?', NULL,
        'Sesame Street', ARRAY['Elm Street', 'Coronation Street', 'Wisteria Lane', 'Fraggle Rock', 'Ramsay Street', 'Melody Lane'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is Sherlock Holmes''s London address?', NULL,
        '221B Baker Street', ARRAY['10 Downing Street', '4 Privet Drive', '12 Grimmauld Place', '62 West Wallaby Street', '742 Evergreen Terrace', '32 Windsor Gardens'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Frozen," what is the name of the kingdom Elsa rules?', NULL,
        'Arendelle', ARRAY['Corona', 'Atlantica', 'Agrabah', 'DunBroch', 'Auradon', 'Far Far Away'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of Fred Flintstone''s hometown?', NULL,
        'Bedrock', ARRAY['Rockville', 'Granite City', 'Orbit City', 'Jellystone Park', 'Frostbite Falls', 'Quahog'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What land does Alice reach by falling down a rabbit hole?', NULL,
        'Wonderland', ARRAY['Oz', 'Narnia', 'Neverland', 'Fantasia', 'Lilliput', 'Dreamland'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which Boston bar is the place "where everybody knows your name"?', NULL,
        'Cheers', ARRAY['MacLaren''s Pub', 'Paddy''s Pub', 'The Drunken Clam', 'The Regal Beagle', 'Moe''s Tavern', 'The Bada Bing'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of the coffee house where the "Friends" gang hangs out?', NULL,
        'Central Perk', ARRAY['Monk''s Café', 'The Max', 'Luke''s Diner', 'Arnold''s', 'The Peach Pit', 'Café Nervosa'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In L. Frank Baum''s stories, what is the green-tinted capital where the Wizard lives?', NULL,
        'The Emerald City', ARRAY['The Crystal City', 'The Jade Palace', 'The Glass City', 'The Silver City', 'The Golden City', 'The Ruby Kingdom'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which town''s residents does the Grinch try to rob of Christmas?', NULL,
        'Whoville', ARRAY['Mount Crumpit', 'Christmas Town', 'Bedford Falls', 'Toyland', 'Hooterville', 'Snowville'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which world are "The Hobbit" and "The Lord of the Rings" set?', NULL,
        'Middle-earth', ARRAY['Earthsea', 'Discworld', 'Azeroth', 'Prydain', 'Narnia', 'Westeros'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which kingdom does Princess Peach rule in the Super Mario games?', NULL,
        'The Mushroom Kingdom', ARRAY['Sarasaland', 'Hyrule', 'Dream Land', 'The Candy Kingdom', 'The Koopa Kingdom', 'Mobius'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'From which rocky outcrop does Simba''s family rule in "The Lion King"?', NULL,
        'Pride Rock', ARRAY['The Elephant Graveyard', 'Skull Rock', 'Castle Rock', 'Thunder Rock', 'Lion''s Crest', 'Sunset Ridge'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Shrek 2," what is the name of the kingdom ruled by Fiona''s parents?', NULL,
        'Far Far Away', ARRAY['Duloc', 'Arendelle', 'Corona', 'Agrabah', 'Neverland', 'Auradon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Monsters, Inc.," what is the name of the monsters'' city?', NULL,
        'Monstropolis', ARRAY['Monster Island', 'Scaretown', 'Zootopia', 'Halloween Town', 'Fearville', 'Ghoulsburg'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of Superman''s home city, where he works as a reporter for the Daily Planet?', NULL,
        'Metropolis', ARRAY['Gotham City', 'Central City', 'Smallville', 'Star City', 'Coast City', 'National City'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the fictional African nation, home to Black Panther, famous for its advanced technology made from vibranium?', NULL,
        'Wakanda', ARRAY['Genosha', 'Latveria', 'Sokovia', 'Madripoor', 'Attilan', 'Transia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the dark realm in "The Lord of the Rings" ruled by the Dark Lord Sauron?', NULL,
        'Mordor', ARRAY['Rohan', 'Gondor', 'Isengard', 'Rivendell', 'Moria', 'The Shire'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the peaceful, pastoral homeland of the hobbits in "The Lord of the Rings"?', NULL,
        'The Shire', ARRAY['Rivendell', 'Rohan', 'Gondor', 'Mordor', 'Bree', 'Lothlorien'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the magical kingdom that Dorothy visits after a tornado in "The Wizard of Oz"?', NULL,
        'Oz', ARRAY['Narnia', 'Wonderland', 'Neverland', 'Fantasia', 'Equestria', 'Candyland'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the fictional town where Homer, Marge, Bart, Lisa, and Maggie Simpson live, famously left unnamed as to which U.S. state it''s in?', NULL,
        'Springfield', ARRAY['Shelbyville', 'Ogdenville', 'North Haverbrook', 'Capital City', 'Quahog', 'Arlen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Disney''s "Aladdin," what is the name of the desert city?', NULL,
        'Agrabah', ARRAY['Arendelle', 'Corona', 'Atlantica', 'Zamunda', 'Genovia', 'Duloc'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of Homer Simpson''s local bar?', NULL,
        'Moe''s Tavern', ARRAY['Cheers', 'Paddy''s Pub', 'The Drunken Clam', 'MacLaren''s Pub', 'The Leaky Cauldron', 'The Prancing Pony'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Harry Potter, which hidden London street, reached through the Leaky Cauldron, sells wizarding supplies?', NULL,
        'Diagon Alley', ARRAY['Knockturn Alley', 'Hogsmeade', 'Grimmauld Place', 'Spinner''s End', 'Godric''s Hollow', 'Privet Drive'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Stranger Things," what is the name of the Indiana town where the strange events happen?', NULL,
        'Hawkins', ARRAY['Hill Valley', 'Derry', 'Castle Rock', 'Twin Peaks', 'Sunnydale', 'Haddonfield'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "The Lord of the Rings," into which volcano must the One Ring be thrown?', NULL,
        'Mount Doom', ARRAY['The Lonely Mountain', 'Caradhras', 'Weathertop', 'Minas Tirith', 'Helm''s Deep', 'Barad-dûr'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Marvel comics and films, what is the name of Thor''s home realm?', NULL,
        'Asgard', ARRAY['Midgard', 'Jotunheim', 'Vanaheim', 'Alfheim', 'Olympus', 'Xandar'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which kingdom are most of the "Legend of Zelda" games set?', NULL,
        'Hyrule', ARRAY['The Mushroom Kingdom', 'Termina', 'Dream Land', 'Mobius', 'Azeroth', 'Tamriel'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Harry Potter grows up with the Dursleys at Number 4 on which street?', NULL,
        'Privet Drive', ARRAY['Grimmauld Place', 'Spinner''s End', 'Wisteria Lane', 'Evergreen Terrace', 'Diagon Alley', 'Magnolia Crescent'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'On which street do the "Desperate Housewives" live?', NULL,
        'Wisteria Lane', ARRAY['Privet Drive', 'Elm Street', 'Evergreen Terrace', 'Melrose Place', 'Ramsay Street', 'Coronation Street'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'On which uncharted island is King Kong found in the 1933 film?', NULL,
        'Skull Island', ARRAY['Isla Nublar', 'Monster Island', 'Treasure Island', 'Craggy Island', 'Amity Island', 'Fantasy Island'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of the O''Hara family plantation in "Gone with the Wind"?', NULL,
        'Tara', ARRAY['Twelve Oaks', 'Manderley', 'Pemberley', 'Belle Reve', 'Sutpen''s Hundred', 'Southfork'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Pixar''s "Cars," in which Route 66 town does Lightning McQueen get stranded?', NULL,
        'Radiator Springs', ARRAY['Thunder Hollow', 'Monstropolis', 'Tailpipe Town', 'Motor City', 'Hubcap Hill', 'Gasket Gulch'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the continent on which most of HBO''s "Game of Thrones" takes place, home to the Seven Kingdoms?', NULL,
        'Westeros', ARRAY['Essos', 'Narnia', 'Middle-earth', 'Azeroth', 'The Shire', 'Valyria'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the lush alien moon, home to the Na''vi, in James Cameron''s "Avatar"?', NULL,
        'Pandora', ARRAY['Arrakis', 'Endor', 'Vulcan', 'Krypton', 'Namek', 'LV-426'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is Superman''s home planet, destroyed just before he was sent to Earth as an infant?', NULL,
        'Krypton', ARRAY['Vulcan', 'Namek', 'Oa', 'Apokolips', 'New Genesis', 'Thanagar'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the home planet of Mr. Spock in "Star Trek," known for its people''s logical, unemotional culture?', NULL,
        'Vulcan', ARRAY['Bajor', 'Romulus', 'Andoria', 'Betazed', 'Risa', 'Qo''noS'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the legendary medieval castle and court of King Arthur?', NULL,
        'Camelot', ARRAY['Avalon', 'Tintagel', 'Winchester', 'Caerleon', 'Cadbury Castle', 'Glastonbury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which planet, Princess Leia''s home, is destroyed by the Death Star?', NULL,
        'Alderaan', ARRAY['Hoth', 'Naboo', 'Endor', 'Coruscant', 'Yavin', 'Bespin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Back to the Future," what is Marty McFly''s California hometown?', NULL,
        'Hill Valley', ARRAY['Hawkins', 'Twin Peaks', 'Haddonfield', 'Sunnydale', 'Shermer', 'Castle Rock'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Gilmore Girls," in which Connecticut town do Lorelai and Rory live?', NULL,
        'Stars Hollow', ARRAY['Cabot Cove', 'Hill Valley', 'Mayberry', 'Pawnee', 'Schitt''s Creek', 'Bluebell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which North Carolina town did Sheriff Andy Taylor keep the peace?', NULL,
        'Mayberry', ARRAY['Hooterville', 'Cabot Cove', 'Walnut Grove', 'Stars Hollow', 'Pawnee', 'Peyton Place'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "It''s a Wonderful Life," what is George Bailey''s hometown?', NULL,
        'Bedford Falls', ARRAY['Pottersville', 'Grover''s Corners', 'Mayberry', 'Hill Valley', 'Pleasantville', 'River City'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "The Handmaid''s Tale," what is the name of the regime that replaced the United States?', NULL,
        'Gilead', ARRAY['Panem', 'Oceania', 'Airstrip One', 'Eastasia', 'Mega-City One', 'Galt''s Gulch'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of the Doctor''s home planet in "Doctor Who"?', NULL,
        'Gallifrey', ARRAY['Skaro', 'Mondas', 'Trenzalore', 'Telos', 'Krypton', 'Vulcan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the Simpson family''s street address?', NULL,
        '742 Evergreen Terrace', ARRAY['31 Spooner Street', '1313 Mockingbird Lane', '0001 Cemetery Lane', '124 Conch Street', '4 Privet Drive', '12 Grimmauld Place'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Jaws," which island resort town is terrorized by a great white shark?', NULL,
        'Amity Island', ARRAY['Craggy Island', 'Summerisle', 'Fantasy Island', 'Isla Sorna', 'Kirrin Island', 'Cabot Cove'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Pride and Prejudice," what is the name of Mr. Darcy''s grand estate?', NULL,
        'Pemberley', ARRAY['Netherfield', 'Longbourn', 'Thornfield Hall', 'Manderley', 'Mansfield Park', 'Rosings Park'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which flat world, carried on four elephants on the back of a giant turtle, is the setting of dozens of Terry Pratchett novels?', NULL,
        'Discworld', ARRAY['Earthsea', 'Ringworld', 'Midkemia', 'Krynn', 'Flatland', 'Middle-earth'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Dune," which desert planet is the only source of "the spice"?', NULL,
        'Arrakis', ARRAY['Tatooine', 'Caladan', 'Giedi Prime', 'Jakku', 'Kaitain', 'Salusa Secundus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Gulliver''s Travels," what is the name of the land of tiny people?', NULL,
        'Lilliput', ARRAY['Brobdingnag', 'Laputa', 'Glubbdubdrib', 'Luggnagg', 'Balnibarbi', 'Lagado'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "The Shining," what is the name of the snowbound Colorado hotel?', NULL,
        'The Overlook Hotel', ARRAY['The Bates Motel', 'The Grand Budapest Hotel', 'The Continental', 'Fawlty Towers', 'The Hotel Cortez', 'The Timberline Lodge'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'In "The Lord of the Rings," in what hidden Elvish valley, home to Elrond, is the Fellowship of the Ring formed?', NULL,
        'Rivendell', ARRAY['Lothlorien', 'The Grey Havens', 'Mirkwood', 'Fangorn', 'Isengard', 'Dol Guldur'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the fictional Pacific island where the dinosaur theme park in "Jurassic Park" is located?', NULL,
        'Isla Nublar', ARRAY['Isla Sorna', 'Skull Island', 'Isla de Muerta', 'Monster Island', 'Isla Matanceros', 'Isla Pena'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'In James Hilton''s 1933 novel "Lost Horizon," what is the hidden Himalayan valley where people age incredibly slowly?', NULL,
        'Shangri-La', ARRAY['Avalon', 'Eldorado', 'Atlantis', 'Xanadu', 'Lemuria', 'Agartha'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'ORIGINAL', NULL,
        'What is the name of the legendary lost city of gold that lured many Spanish conquistadors into the South American jungle?', NULL,
        'El Dorado', ARRAY['Atlantis', 'Shangri-La', 'Cibola', 'Paititi', 'Zerzura', 'Lemuria'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which 1516 book by Thomas More named an imaginary island with an ideal society, adding a word to English?', NULL,
        'Utopia', ARRAY['Atlantis', 'Erewhon', 'Arcadia', 'Oceana', 'Elysium', 'Shangri-La'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which California town, built over a "Hellmouth," is home to Buffy the Vampire Slayer?', NULL,
        'Sunnydale', ARRAY['Mystic Falls', 'Bon Temps', 'Hawkins', 'Sleepy Hollow', 'Forks', 'Twin Peaks'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "Murder, She Wrote," in which Maine town does Jessica Fletcher live?', NULL,
        'Cabot Cove', ARRAY['Peyton Place', 'Twin Peaks', 'Collinsport', 'Port Charles', 'Stars Hollow', 'Castle Rock'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which Scottish village, in a 1947 musical, appears for only one day every hundred years?', NULL,
        'Brigadoon', ARRAY['Glenbogle', 'Lochdubh', 'Tannochbrae', 'Ballykissangel', 'Summerisle', 'Avalon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which small European nation is ruled by Marvel villain Doctor Doom?', NULL,
        'Latveria', ARRAY['Sokovia', 'Genosha', 'Madripoor', 'Transia', 'Symkaria', 'Wakanda'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which house is the subject of the famous opening line "Last night I dreamt I went to ___ again"?', NULL,
        'Manderley', ARRAY['Pemberley', 'Thornfield Hall', 'Wuthering Heights', 'Brideshead', 'Howards End', 'Tara'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which Washington town is Laura Palmer found "wrapped in plastic"?', NULL,
        'Twin Peaks', ARRAY['Hawkins', 'Derry', 'Castle Rock', 'Cabot Cove', 'Sunnydale', 'Stars Hollow'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which Maine town does Pennywise the clown prey on children in Stephen King''s "It"?', NULL,
        'Derry', ARRAY['Castle Rock', 'Salem''s Lot', 'Haven', 'Chester''s Mill', 'Hawkins', 'Cabot Cove'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'What is the name of the Ewing family ranch in the TV series "Dallas"?', NULL,
        'Southfork', ARRAY['The Ponderosa', 'Twelve Oaks', 'Falcon Crest', 'The High Chaparral', 'Tara', 'Big Valley'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In George Orwell''s "1984," which superstate is ruled by Big Brother?', NULL,
        'Oceania', ARRAY['Eurasia', 'Eastasia', 'Panem', 'Gilead', 'Ingsoc', 'Utopia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Thornton Wilder''s play "Our Town," what is the name of the New Hampshire village?', NULL,
        'Grover''s Corners', ARRAY['Bedford Falls', 'Peyton Place', 'Mayberry', 'Spoon River', 'Winesburg', 'Stars Hollow'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'Which spaceport does Obi-Wan Kenobi call "a wretched hive of scum and villainy"?', NULL,
        'Mos Eisley', ARRAY['Mos Espa', 'Cloud City', 'Jabba''s Palace', 'Coruscant', 'Canto Bight', 'Niima Outpost'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In "The Matrix" films, what is the name of the last human city?', NULL,
        'Zion', ARRAY['Nebuchadnezzar', 'Elysium', 'Mega-City One', 'Babylon', 'Arcadia', 'Eden'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In Gabriel García Márquez''s "One Hundred Years of Solitude," what is the town founded by the Buendía family?', NULL,
        'Macondo', ARRAY['Comala', 'Yoknapatawpha', 'Santa Teresa', 'Coraggio', 'Esperanza', 'Cartagena'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FICTIONAL_LOCATIONS', 'FICTIONAL_LOCATIONS_BATCH_1', NULL,
        'In which fictional Illinois suburb are many John Hughes films, including "The Breakfast Club," set?', NULL,
        'Shermer', ARRAY['Hill Valley', 'Hawkins', 'Haddonfield', 'Pleasantville', 'Springwood', 'Bedford Falls'], 400);

COMMIT;

-- Check: should return 75.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FICTIONAL_LOCATIONS';
