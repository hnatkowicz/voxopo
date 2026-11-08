-- ============================================================================
-- content/sql/movies_tv.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/movies_tv.csv, the master copy of the
-- Thinking Pants category MOVIES_TV. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MOVIES_TV';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "The Wizard of Oz," what color are the shoes Dorothy wears?', NULL,
        'Ruby red', ARRAY['Emerald green', 'Golden yellow', 'Silver', 'Sapphire blue', 'Bronze', 'Pearl white'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "Finding Nemo," what kind of fish are Nemo and his dad, Marlin?', NULL,
        'Clownfish', ARRAY['Blue tang', 'Pufferfish', 'Angelfish', 'Goldfish', 'Seahorse', 'Swordfish'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which superhero is also known as the "Man of Steel"?', NULL,
        'Superman', ARRAY['Batman', 'Thor', 'Iron Man', 'The Flash', 'Green Lantern', 'Aquaman'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "Star Wars," what is the name of Luke Skywalker''s home planet?', NULL,
        'Tatooine', ARRAY['Naboo', 'Alderaan', 'Hoth', 'Coruscant', 'Endor', 'Dagobah'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What is the name of the toy cowboy in the "Toy Story" movies?', NULL,
        'Woody', ARRAY['Buzz', 'Rex', 'Hamm', 'Slinky', 'Jessie', 'Lenny'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "The Lion King," what is the name of Simba''s father?', NULL,
        'Mufasa', ARRAY['Scar', 'Zazu', 'Pumbaa', 'Rafiki', 'Timon', 'Sarabi'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In the Harry Potter books, which friend of Harry''s has a pet rat named Scabbers?', NULL,
        'Ron Weasley', ARRAY['Neville Longbottom', 'Draco Malfoy', 'Seamus Finnigan', 'Dean Thomas', 'Fred Weasley', 'Cedric Diggory'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which animated movie features a snowman named Olaf?', NULL,
        'Frozen', ARRAY['Moana', 'Tangled', 'Encanto', 'Brave', 'Coco', 'Zootopia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What is the name of the yellow sponge who lives in a pineapple under the sea?', NULL,
        'SpongeBob SquarePants', ARRAY['Patrick Star', 'Squidward', 'Mr. Krabs', 'Sandy Cheeks', 'Plankton', 'Gary'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Iron Man in the Marvel Cinematic Universe?', NULL,
        'Robert Downey Jr.', ARRAY['Chris Evans', 'Chris Hemsworth', 'Mark Ruffalo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1994 animated Disney film features the song "Circle of Life"?', NULL,
        'The Lion King', ARRAY['Aladdin', 'Pocahontas', 'The Jungle Book'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which animation studio made the "Toy Story" films?', NULL,
        'Pixar', ARRAY['DreamWorks', 'Illumination', 'Blue Sky Studios'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Dorothy in "The Wizard of Oz" (1939)?', NULL,
        'Judy Garland', ARRAY['Shirley Temple', 'Julie Andrews', 'Liza Minnelli'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Rocky Balboa?', NULL,
        'Sylvester Stallone', ARRAY['Arnold Schwarzenegger', 'Bruce Willis', 'Jean-Claude Van Damme'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Indiana Jones?', NULL,
        'Harrison Ford', ARRAY['Tom Selleck', 'Kevin Costner', 'Mel Gibson'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Marty McFly in "Back to the Future"?', NULL,
        'Michael J. Fox', ARRAY['Matthew Broderick', 'Tom Hanks', 'Kevin Bacon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Neo in "The Matrix"?', NULL,
        'Keanu Reeves', ARRAY['Will Smith', 'Tom Cruise', 'Brad Pitt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Jack Sparrow in "Pirates of the Caribbean"?', NULL,
        'Johnny Depp', ARRAY['Orlando Bloom', 'Geoffrey Rush', 'Javier Bardem'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Katniss Everdeen in "The Hunger Games" films?', NULL,
        'Jennifer Lawrence', ARRAY['Emma Stone', 'Shailene Woodley', 'Kristen Stewart'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1939 film features the song "Over the Rainbow"?', NULL,
        'The Wizard of Oz', ARRAY['Gone with the Wind', 'Snow White and the Seven Dwarfs', 'Pinocchio'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the blue-and-white droid who beeps and whistles in the original "Star Wars" trilogy?', NULL,
        'R2-D2', ARRAY['C-3PO', 'BB-8', 'K-2SO'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Han Solo''s ship in "Star Wars"?', NULL,
        'The Millennium Falcon', ARRAY['Slave I', 'The Razor Crest', 'The Executor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1982 film features a friendly alien who wants to "phone home"?', NULL,
        'E.T. the Extra-Terrestrial', ARRAY['Close Encounters of the Third Kind', 'Gremlins', 'Poltergeist'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What car is turned into a time machine in "Back to the Future"?', NULL,
        'A DeLorean', ARRAY['A Ford Mustang', 'A Chevrolet Camaro', 'A Pontiac Firebird'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the forgetful blue tang fish in "Finding Nemo"?', NULL,
        'Dory', ARRAY['Marlin', 'Gill', 'Squirt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which Disney film features a demigod named Maui?', NULL,
        'Moana', ARRAY['Lilo & Stitch', 'Hercules', 'Brave'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which phrase, meaning "no worries," do Timon and Pumbaa sing in "The Lion King"?', NULL,
        'Hakuna Matata', ARRAY['Bibbidi-Bobbidi-Boo', 'Zip-a-Dee-Doo-Dah', 'Supercalifragilisticexpialidocious'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Ross Geller in "Friends"?', NULL,
        'David Schwimmer', ARRAY['Matthew Perry', 'Matt LeBlanc', 'Paul Rudd'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Michael Scott in the American version of "The Office"?', NULL,
        'Steve Carell', ARRAY['Rainn Wilson', 'John Krasinski', 'Ed Helms'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Disney princess has a pet tiger named Rajah?', NULL,
        'Jasmine', ARRAY['Ariel', 'Belle', 'Mulan', 'Rapunzel', 'Aurora', 'Pocahontas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "The Wizard of Oz," which character wants a brain?', NULL,
        'The Scarecrow', ARRAY['The Tin Man', 'The Cowardly Lion', 'Toto', 'The Wizard', 'Glinda', 'The Munchkin Mayor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which superhero''s secret identity is Peter Parker?', NULL,
        'Spider-Man', ARRAY['Batman', 'Superman', 'Iron Man', 'Captain America', 'The Flash', 'Green Lantern'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Frozen," what is the name of Elsa''s younger sister?', NULL,
        'Anna', ARRAY['Ariel', 'Belle', 'Moana', 'Rapunzel', 'Merida', 'Tiana'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'What kind of animal is Disney''s Bambi?', NULL,
        'A deer', ARRAY['A rabbit', 'A fox', 'A skunk', 'A lamb', 'A pony', 'A squirrel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "The Lion King," what kind of animal is Pumbaa?', NULL,
        'A warthog', ARRAY['A meerkat', 'A hyena', 'A baboon', 'A hippo', 'A rhino', 'A mongoose'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Scooby-Doo," what breed of dog is Scooby?', NULL,
        'A Great Dane', ARRAY['A beagle', 'A bloodhound', 'A basset hound', 'A Saint Bernard', 'A boxer', 'A bulldog'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In the 1966 TV special "How the Grinch Stole Christmas!," what color is the Grinch?', NULL,
        'Green', ARRAY['Blue', 'Purple', 'Orange', 'Yellow', 'Red', 'Brown'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Pixar film follows a family of superheroes named the Parrs?', NULL,
        'The Incredibles', ARRAY['Up', 'Cars', 'Brave', 'Coco', 'Inside Out', 'Monsters, Inc.'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Pixar film follows a boy named Miguel into the Land of the Dead?', NULL,
        'Coco', ARRAY['Encanto', 'Onward', 'Luca', 'Soul', 'Brave', 'Elemental'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Monsters, Inc.," what is the name of the big blue furry monster?', NULL,
        'Sulley', ARRAY['Mike Wazowski', 'Randall', 'Waternoose', 'Roz', 'Celia', 'Boo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Disney film features a young woman who disguises herself as a man to fight in the army?', NULL,
        'Mulan', ARRAY['Brave', 'Pocahontas', 'Moana', 'Tangled', 'Frozen', 'Aladdin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In Disney''s "Aladdin," what is the name of Aladdin''s pet monkey?', NULL,
        'Abu', ARRAY['Iago', 'Rajah', 'Apu', 'Pascal', 'Flit', 'Meeko'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'What is the name of Mickey Mouse''s girlfriend?', NULL,
        'Minnie Mouse', ARRAY['Daisy Duck', 'Clarabelle Cow', 'Millie Mouse', 'Molly Mouse', 'Mabel Mouse', 'Maisie Mouse'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Toy Story," what is the name of the boy whose toys come to life?', NULL,
        'Andy', ARRAY['Sid', 'Bonnie', 'Al', 'Max', 'Billy', 'Danny'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "The Little Mermaid," what kind of animal is Sebastian?', NULL,
        'A crab', ARRAY['A lobster', 'A shrimp', 'A fish', 'A seahorse', 'A turtle', 'A starfish'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which superhero carries a round shield with a star in the middle?', NULL,
        'Captain America', ARRAY['Thor', 'Iron Man', 'Hawkeye', 'Black Panther', 'The Hulk', 'Green Arrow'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Pixar film stars a race car named Lightning McQueen?', NULL,
        'Cars', ARRAY['Planes', 'Turbo', 'Speed Racer', 'Wreck-It Ralph', 'Chicken Run', 'Bolt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Disney princess loses a glass slipper at the royal ball?', NULL,
        'Cinderella', ARRAY['Snow White', 'Aurora', 'Belle', 'Ariel', 'Rapunzel', 'Tiana'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'What is the name of Charlie Brown''s pet beagle?', NULL,
        'Snoopy', ARRAY['Odie', 'Pluto', 'Goofy', 'Marmaduke', 'Astro', 'Spike'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which superhero, "the fastest man alive," wears a red suit with a lightning bolt?', NULL,
        'The Flash', ARRAY['Quicksilver', 'Superman', 'Green Lantern', 'Shazam', 'Iron Man', 'Hawkeye'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "Breaking Bad," what is Walter White''s criminal alias?', NULL,
        'Heisenberg', ARRAY['Saul', 'Jesse', 'Gus', 'Hank', 'Skyler', 'Mike'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which actor played Jack Dawson in "Titanic"?', NULL,
        'Leonardo DiCaprio', ARRAY['Brad Pitt', 'Matt Damon', 'Tom Cruise', 'Johnny Depp', 'Matthew McConaughey', 'Ben Affleck'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What is the name of the wizarding school in the Harry Potter series?', NULL,
        'Hogwarts', ARRAY['Durmstrang', 'Beauxbatons', 'Ilvermorny', 'Hogsmeade', 'Azkaban', 'Diagon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which actor played the Terminator in the 1984 film of the same name?', NULL,
        'Arnold Schwarzenegger', ARRAY['Sylvester Stallone', 'Jean-Claude Van Damme', 'Dolph Lundgren', 'Bruce Willis', 'Chuck Norris', 'Kurt Russell'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "The Office" (US), what company does the Scranton branch work for?', NULL,
        'Dunder Mifflin', ARRAY['Vance Refrigeration', 'Prince Family Paper', 'Staples', 'Michael Scott Paper Company', 'Sabre', 'Athlead'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which movie features a shark terrorizing the fictional town of Amity Island?', NULL,
        'Jaws', ARRAY['Deep Blue Sea', 'The Meg', 'Open Water', 'Sharknado', '47 Meters Down', 'Piranha'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Who played the title role in "Forrest Gump"?', NULL,
        'Tom Hanks', ARRAY['Tom Cruise', 'Kevin Costner', 'Robin Williams', 'Bill Murray', 'Dustin Hoffman', 'Michael Keaton'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Rick Blaine in "Casablanca"?', NULL,
        'Humphrey Bogart', ARRAY['Cary Grant', 'Clark Gable', 'James Stewart'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor was the first to play James Bond in a film, starting in 1962?', NULL,
        'Sean Connery', ARRAY['Roger Moore', 'David Niven', 'George Lazenby'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "2001: A Space Odyssey" and "The Shining"?', NULL,
        'Stanley Kubrick', ARRAY['Ridley Scott', 'Francis Ford Coppola', 'Brian De Palma'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Don Vito Corleone in "The Godfather" (1972)?', NULL,
        'Marlon Brando', ARRAY['Al Pacino', 'Robert De Niro', 'James Caan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor provided the voice of Darth Vader in the original "Star Wars" trilogy?', NULL,
        'James Earl Jones', ARRAY['David Prowse', 'Morgan Freeman', 'Christopher Lee'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Ferris Bueller?', NULL,
        'Matthew Broderick', ARRAY['Ralph Macchio', 'John Cusack', 'Charlie Sheen'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Hannibal Lecter in "The Silence of the Lambs"?', NULL,
        'Anthony Hopkins', ARRAY['Ralph Fiennes', 'Gary Oldman', 'Jeremy Irons'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voiced Buzz Lightyear in the "Toy Story" films?', NULL,
        'Tim Allen', ARRAY['Billy Crystal', 'John Goodman', 'Tom Hanks'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Pulp Fiction" and "Kill Bill"?', NULL,
        'Quentin Tarantino', ARRAY['Guy Ritchie', 'Robert Rodriguez', 'Joel Coen'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Ellen Ripley in the "Alien" films?', NULL,
        'Sigourney Weaver', ARRAY['Linda Hamilton', 'Jamie Lee Curtis', 'Geena Davis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Gandalf in "The Lord of the Rings" films?', NULL,
        'Ian McKellen', ARRAY['Christopher Lee', 'Patrick Stewart', 'Michael Gambon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Severus Snape in the "Harry Potter" films?', NULL,
        'Alan Rickman', ARRAY['Gary Oldman', 'Ralph Fiennes', 'Michael Gambon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Back to the Future," how fast must the DeLorean go to travel through time?', NULL,
        '88 miles per hour', ARRAY['55 miles per hour', '100 miles per hour', '121 miles per hour'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1984 film features a mischievous creature named Gizmo?', NULL,
        'Gremlins', ARRAY['The Goonies', 'Labyrinth', 'Critters'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which Pixar film follows a rat who dreams of becoming a chef in Paris?', NULL,
        'Ratatouille', ARRAY['Flushed Away', 'The Tale of Despereaux', 'Stuart Little'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Kirk in the original "Star Trek" series?', NULL,
        'William Shatner', ARRAY['Leonard Nimoy', 'Patrick Stewart', 'DeForest Kelley'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which game show asked contestants, "Is that your final answer?"', NULL,
        'Who Wants to Be a Millionaire', ARRAY['Jeopardy!', 'The Weakest Link', 'Deal or No Deal'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Stranger Things," what is the dark alternate dimension called?', NULL,
        'The Upside Down', ARRAY['The Nether', 'The Shadow Realm', 'The Other Side'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'What is the name of Thor''s hammer?', NULL,
        'Mjolnir', ARRAY['Gungnir', 'Excalibur', 'Asgard', 'Bifrost', 'Valhalla', 'Yggdrasil'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "The Godfather," what kind of animal''s head ends up in a Hollywood producer''s bed?', NULL,
        'A horse', ARRAY['A pig', 'A goat', 'A dog', 'A cow', 'A sheep', 'A bull'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1990 film has Macaulay Culkin defending his house from two burglars?', NULL,
        'Home Alone', ARRAY['Uncle Buck', 'Richie Rich', 'My Girl', 'The Good Son', 'Dennis the Menace', 'Problem Child'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV comedy follows the Dunphy, Pritchett and Tucker-Pritchett families?', NULL,
        'Modern Family', ARRAY['Parenthood', 'This Is Us', 'Arrested Development', 'Brothers & Sisters', 'The Middle', 'Black-ish'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which sitcom follows physicists Sheldon Cooper and Leonard Hofstadter?', NULL,
        'The Big Bang Theory', ARRAY['How I Met Your Mother', 'Silicon Valley', 'Two and a Half Men', 'The IT Crowd', 'Community', 'New Girl'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played Princess Leia in the original "Star Wars"?', NULL,
        'Carrie Fisher', ARRAY['Natalie Portman', 'Daisy Ridley', 'Jodie Foster', 'Kathleen Turner', 'Meryl Streep', 'Debra Winger'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played Mary Poppins in the 1964 film?', NULL,
        'Julie Andrews', ARRAY['Audrey Hepburn', 'Debbie Reynolds', 'Doris Day', 'Shirley MacLaine', 'Natalie Wood', 'Emily Blunt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played Rachel Green in "Friends"?', NULL,
        'Jennifer Aniston', ARRAY['Courteney Cox', 'Lisa Kudrow', 'Jennifer Garner', 'Sarah Jessica Parker', 'Helen Hunt', 'Julia Louis-Dreyfus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which director made "Titanic" and "Avatar"?', NULL,
        'James Cameron', ARRAY['Steven Spielberg', 'Ridley Scott', 'Peter Jackson', 'Michael Bay', 'Christopher Nolan', 'Robert Zemeckis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which film series follows street racer Dominic Toretto?', NULL,
        'The Fast and the Furious', ARRAY['The Transporter', 'Gone in 60 Seconds', 'Need for Speed', 'Mission: Impossible', 'Bad Boys', 'Taxi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'On which TV quiz show do contestants give their responses in the form of a question?', NULL,
        'Jeopardy!', ARRAY['Wheel of Fortune', 'Family Feud', 'The Price Is Right', 'Hollywood Squares', 'Password', 'Tic-Tac-Dough'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In which 1986 film does Tom Cruise play a fighter pilot called Maverick?', NULL,
        'Top Gun', ARRAY['Days of Thunder', 'Iron Eagle', 'Stealth', 'Pearl Harbor', 'The Right Stuff', 'Firefox'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Wolverine in the "X-Men" films?', NULL,
        'Hugh Jackman', ARRAY['Russell Crowe', 'Chris Hemsworth', 'Liev Schreiber', 'Gerard Butler', 'Ryan Reynolds', 'Christian Bale'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Ghostbusters," what is the name of the green, food-gobbling ghost?', NULL,
        'Slimer', ARRAY['Zuul', 'Gozer', 'Casper', 'Stay Puft', 'Vigo', 'Blinky'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which Disney film features the songs "Be Our Guest" and "Gaston"?', NULL,
        'Beauty and the Beast', ARRAY['Cinderella', 'The Little Mermaid', 'Sleeping Beauty', 'Tangled', 'Enchanted', 'Pinocchio'], 200, 'In 1992 it became the first animated film nominated for Best Picture.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played Elle Woods in "Legally Blonde"?', NULL,
        'Reese Witherspoon', ARRAY['Kate Hudson', 'Cameron Diaz', 'Drew Barrymore', 'Anna Faris', 'Amanda Bynes', 'Alicia Silverstone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "Mean Girls," what is the name of Regina George''s clique?', NULL,
        'The Plastics', ARRAY['The Heathers', 'The Barbies', 'The Populars', 'The Glossies', 'The Divas', 'The Queen Bees'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In the movie "Grease," what is the name of Danny Zuko''s gang?', NULL,
        'The T-Birds', ARRAY['The Jets', 'The Sharks', 'The Scorpions', 'The Socs', 'The Outsiders', 'The Warriors'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV comedy follows detective Jake Peralta and Captain Raymond Holt?', NULL,
        'Brooklyn Nine-Nine', ARRAY['The Good Cop', 'Reno 911!', 'Barney Miller', 'Blue Bloods', 'Chicago P.D.', 'Police Squad!'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played pet detective Ace Ventura?', NULL,
        'Jim Carrey', ARRAY['Adam Sandler', 'Mike Myers', 'Chris Farley', 'Eddie Murphy', 'Ben Stiller', 'Rob Schneider'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor voiced the Genie in Disney''s 1992 "Aladdin"?', NULL,
        'Robin Williams', ARRAY['Billy Crystal', 'Eddie Murphy', 'Gilbert Gottfried', 'Nathan Lane', 'Martin Short', 'Will Smith'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In "The Matrix," which pill does Neo take?', NULL,
        'The red pill', ARRAY['The blue pill', 'The green pill', 'The white pill', 'The yellow pill', 'The black pill', 'The purple pill'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In which 1988 film does Tom Hanks play a boy who wakes up as a grown man?', NULL,
        'Big', ARRAY['Splash', 'Vice Versa', '13 Going on 30', 'Freaky Friday', 'Like Father Like Son', '18 Again!'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1950s sitcom starred Lucille Ball and Desi Arnaz?', NULL,
        'I Love Lucy', ARRAY['The Honeymooners', 'Leave It to Beaver', 'Father Knows Best', 'Make Room for Daddy', 'Our Miss Brooks', 'The Dick Van Dyke Show'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1941 Disney film is about a baby elephant with enormous ears?', NULL,
        'Dumbo', ARRAY['Babar', 'Horton', 'Jumbo', 'Bambi', 'Fantasia', 'The Jungle Book'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which movie won the Academy Award for Best Picture for 1994?', NULL,
        'Forrest Gump', ARRAY['Pulp Fiction', 'The Shawshank Redemption', 'Speed', 'The Lion King', 'Dumb and Dumber', 'True Lies'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Who composed the musical score for the original "Star Wars" trilogy?', NULL,
        'John Williams', ARRAY['Hans Zimmer', 'John Barry', 'Alan Silvestri', 'Danny Elfman', 'Howard Shore', 'James Horner'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What is the name of the AI antagonist in "2001: A Space Odyssey"?', NULL,
        'HAL 9000', ARRAY['Skynet', 'GLaDOS', 'Ultron', 'VIKI', 'Ava', 'Samantha'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which TV series is set in the fictional town of Hawkins, Indiana?', NULL,
        'Stranger Things', ARRAY['Twin Peaks', 'Riverdale', 'Gilmore Girls', 'Supernatural', 'The X-Files', 'Fargo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Who played the Joker in "The Dark Knight" (2008)?', NULL,
        'Heath Ledger', ARRAY['Jack Nicholson', 'Joaquin Phoenix', 'Jared Leto', 'Cesar Romero', 'Mark Hamill', 'Barry Keoghan'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which director is known for films such as "Jurassic Park," "E.T.," and "Jaws"?', NULL,
        'Steven Spielberg', ARRAY['Martin Scorsese', 'James Cameron', 'George Lucas', 'Ridley Scott', 'Christopher Nolan', 'Tim Burton'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'In "Breaking Bad," what is the name of the lawyer who later gets his own spin-off series?', NULL,
        'Saul Goodman', ARRAY['Gus Fring', 'Mike Ehrmantraut', 'Jesse Pinkman', 'Hank Schrader', 'Walt Jr.', 'Skyler White'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which 1975 film is widely credited as Hollywood''s first summer "blockbuster"?', NULL,
        'Jaws', ARRAY['Star Wars', 'The Godfather', 'Rocky', 'Close Encounters of the Third Kind', 'Jaws 2', 'Grease'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which actress played Hermione Granger in the Harry Potter films?', NULL,
        'Emma Watson', ARRAY['Emma Stone', 'Emma Roberts', 'Keira Knightley', 'Evanna Lynch', 'Bonnie Wright', 'Natalie Portman'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which long-running animated sitcom is set in the fictional town of Springfield?', NULL,
        'The Simpsons', ARRAY['Family Guy', 'King of the Hill', 'Bob''s Burgers', 'American Dad!', 'Futurama', 'South Park'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress won an Oscar for playing the title role in "Annie Hall"?', NULL,
        'Diane Keaton', ARRAY['Mia Farrow', 'Meryl Streep', 'Faye Dunaway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "The Breakfast Club" and "Ferris Bueller''s Day Off"?', NULL,
        'John Hughes', ARRAY['Rob Reiner', 'Joel Schumacher', 'Harold Ramis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which South Korean film won Best Picture at the 2020 Academy Awards?', NULL,
        'Parasite', ARRAY['Oldboy', 'Burning', 'The Handmaiden'], 300, 'It was the first film not in English to win Best Picture.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Citizen Kane," what was the name of the sled?', NULL,
        'Rosebud', ARRAY['Snowbird', 'Sweet Pea', 'Buttercup'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1959 Alfred Hitchcock film features a famous crop-duster chase?', NULL,
        'North by Northwest', ARRAY['Vertigo', 'Rear Window', 'The Birds'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played the shark hunter Quint in "Jaws"?', NULL,
        'Robert Shaw', ARRAY['Roy Scheider', 'Richard Dreyfuss', 'Lee Marvin'], 300, 'Shaw helped rewrite Quint''s famous USS Indianapolis speech.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Westley in "The Princess Bride"?', NULL,
        'Cary Elwes', ARRAY['Mandy Patinkin', 'Chris Sarandon', 'Billy Crystal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Catwoman in "Batman Returns" (1992)?', NULL,
        'Michelle Pfeiffer', ARRAY['Halle Berry', 'Kim Basinger', 'Anne Hathaway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Aragorn in "The Lord of the Rings" films?', NULL,
        'Viggo Mortensen', ARRAY['Sean Bean', 'Orlando Bloom', 'Karl Urban'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Gollum in "The Lord of the Rings" through motion capture?', NULL,
        'Andy Serkis', ARRAY['Elijah Wood', 'Ian Holm', 'Hugo Weaving'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What metal coats Wolverine''s skeleton and claws in "X-Men"?', NULL,
        'Adamantium', ARRAY['Vibranium', 'Titanium', 'Uru'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Wonder Woman''s home island?', NULL,
        'Themyscira', ARRAY['Atlantis', 'Avalon', 'Lemuria'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "The Princess Bride," what does R.O.U.S. stand for?', NULL,
        'Rodents of Unusual Size', ARRAY['Rats of Uncommon Size', 'Raccoons of Unusual Strength', 'Rodents of Unknown Species'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What fashion magazine is at the center of "The Devil Wears Prada"?', NULL,
        'Runway', ARRAY['Vogue', 'Elle', 'Cosmopolitan'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In Disney''s "The Little Mermaid," what is Ariel''s undersea kingdom called?', NULL,
        'Atlantica', ARRAY['Atlantis', 'Coralia', 'Neptunia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Fonzie in "Happy Days"?', NULL,
        'Henry Winkler', ARRAY['Ron Howard', 'Scott Baio', 'Tony Danza'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Tony Soprano in "The Sopranos"?', NULL,
        'James Gandolfini', ARRAY['Michael Imperioli', 'Steve Buscemi', 'Ray Liotta'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Jack Bauer in "24"?', NULL,
        'Kiefer Sutherland', ARRAY['Dennis Haysbert', 'Gary Sinise', 'Michael Chiklis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Archie Bunker in "All in the Family"?', NULL,
        'Carroll O''Connor', ARRAY['Jackie Gleason', 'Ed Asner', 'Norman Lear'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played J.R. Ewing in "Dallas"?', NULL,
        'Larry Hagman', ARRAY['Patrick Duffy', 'Tom Selleck', 'Burt Reynolds'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which director made "Inception" and "Oppenheimer"?', NULL,
        'Christopher Nolan', ARRAY['Denis Villeneuve', 'David Fincher', 'Ridley Scott', 'Sam Mendes', 'Darren Aronofsky', 'Steven Soderbergh'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Willy Wonka in the 1971 film?', NULL,
        'Gene Wilder', ARRAY['Johnny Depp', 'Dick Van Dyke', 'Danny Kaye', 'Peter Sellers', 'Jack Nicholson', 'Timothée Chalamet'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played the title role in "Beetlejuice" (1988)?', NULL,
        'Michael Keaton', ARRAY['Bill Murray', 'Danny DeVito', 'Jim Carrey', 'Steve Martin', 'Christopher Lloyd', 'Rick Moranis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1980s sitcom starred a furry alien from the planet Melmac?', NULL,
        'ALF', ARRAY['Mork & Mindy', '3rd Rock from the Sun', 'My Favorite Martian', 'Out of This World', 'Small Wonder', 'Lost in Space'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV drama follows the Pearson family''s "Big Three" across the decades?', NULL,
        'This Is Us', ARRAY['Parenthood', 'Brothers & Sisters', 'Friday Night Lights', 'Everwood', 'A Million Little Things', 'The Wonder Years'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV drama follows ad man Don Draper in 1960s New York?', NULL,
        'Mad Men', ARRAY['The Hour', 'Pan Am', 'Halt and Catch Fire', 'Boardwalk Empire', 'The Marvelous Mrs. Maisel', 'Masters of Sex'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1994 film follows a banker named Andy Dufresne serving a life sentence in prison?', NULL,
        'The Shawshank Redemption', ARRAY['The Green Mile', 'Escape from Alcatraz', 'Cool Hand Luke', 'Papillon', 'The Longest Yard', 'Brubaker'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played FBI trainee Clarice Starling in "The Silence of the Lambs"?', NULL,
        'Jodie Foster', ARRAY['Julianne Moore', 'Geena Davis', 'Meg Ryan', 'Holly Hunter', 'Kathleen Turner', 'Kelly McGillis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In which 1999 film does a boy tell his psychologist, "I see dead people"?', NULL,
        'The Sixth Sense', ARRAY['The Others', 'Signs', 'Unbreakable', 'Ghost', 'Poltergeist', 'Stir of Echoes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which sitcom''s 1983 finale, "Goodbye, Farewell and Amen," drew about 106 million American viewers?', NULL,
        'M*A*S*H', ARRAY['Happy Days', 'Taxi', 'All in the Family', 'Barney Miller', 'The Jeffersons', 'Cheers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 2000 film stars Russell Crowe as the Roman general Maximus?', NULL,
        'Gladiator', ARRAY['Troy', 'Spartacus', 'Centurion', 'The Eagle', 'Alexander', 'Quo Vadis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV drama follows the Dutton family on their Montana ranch?', NULL,
        'Yellowstone', ARRAY['Longmire', 'Justified', 'Big Sky', 'Ozark', 'Heartland', 'Hell on Wheels'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote the scores for "The Lion King" (1994) and "Inception"?', NULL,
        'Hans Zimmer', ARRAY['Danny Elfman', 'James Horner', 'Howard Shore', 'Alan Menken', 'Ennio Morricone', 'James Newton Howard'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Michael Corleone in "The Godfather"?', NULL,
        'Al Pacino', ARRAY['Robert De Niro', 'James Caan', 'Robert Duvall', 'John Cazale', 'Dustin Hoffman', 'Jack Nicholson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which TV comedy follows the formerly wealthy Bluth family?', NULL,
        'Arrested Development', ARRAY['Schitt''s Creek', 'The Royle Family', 'Malcolm in the Middle', 'Succession', 'Married... with Children', 'The Middle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'In which 1982 film does Harrison Ford hunt androids called replicants?', NULL,
        'Blade Runner', ARRAY['Total Recall', 'Minority Report', 'Outland', 'Logan''s Run', 'Westworld', 'Soylent Green'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played "the Dude" in "The Big Lebowski"?', NULL,
        'Jeff Bridges', ARRAY['John Goodman', 'Steve Buscemi', 'Bill Murray', 'Woody Harrelson', 'Kurt Russell', 'Nick Nolte'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 2001 animated film follows a girl named Chihiro into a world of spirits?', NULL,
        'Spirited Away', ARRAY['Princess Mononoke', 'My Neighbor Totoro', 'Howl''s Moving Castle', 'Kiki''s Delivery Service', 'Ponyo', 'Akira'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Walter White in "Breaking Bad"?', NULL,
        'Bryan Cranston', ARRAY['Aaron Paul', 'Bob Odenkirk', 'Jon Hamm', 'Michael C. Hall', 'Hugh Laurie', 'Damian Lewis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress played Holly Golightly in "Breakfast at Tiffany''s"?', NULL,
        'Audrey Hepburn', ARRAY['Grace Kelly', 'Marilyn Monroe', 'Natalie Wood', 'Elizabeth Taylor', 'Kim Novak', 'Leslie Caron'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Who directed "Citizen Kane"?', NULL,
        'Orson Welles', ARRAY['Alfred Hitchcock', 'Billy Wilder', 'John Ford', 'Frank Capra', 'Howard Hawks', 'William Wyler'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What 1988 film extensively blended live action with animated characters, including Roger Rabbit?', NULL,
        'Who Framed Roger Rabbit', ARRAY['Mary Poppins', 'Space Jam', 'Cool World', 'Pete''s Dragon', 'Bedknobs and Broomsticks', 'Enchanted'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which actress holds the record for the most competitive (non-honorary) acting Academy Awards?', NULL,
        'Katharine Hepburn', ARRAY['Meryl Streep', 'Bette Davis', 'Ingrid Bergman', 'Frances McDormand', 'Jane Fonda', 'Elizabeth Taylor'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What was the first feature film to win the Academy Award for Best Animated Feature?', NULL,
        'Shrek', ARRAY['Toy Story', 'Monsters, Inc.', 'Finding Nemo', 'Spirited Away', 'Ice Age', 'Shrek 2'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Who directed the 1960 psychological horror film "Psycho"?', NULL,
        'Alfred Hitchcock', ARRAY['Stanley Kubrick', 'Billy Wilder', 'Orson Welles', 'John Huston', 'William Friedkin', 'George Cukor'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which 1959 epic, starring Charlton Heston, was the first film to win 11 Academy Awards?', NULL,
        'Ben-Hur', ARRAY['Gone with the Wind', 'The Godfather', 'Titanic', 'Cleopatra', 'Spartacus', 'Lawrence of Arabia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'What was the name of the first television network to broadcast in color nationally in the US?', NULL,
        'NBC', ARRAY['CBS', 'ABC', 'Fox', 'PBS', 'The CW', 'DuMont'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'ORIGINAL', NULL,
        'Which silent film actor was famous for his "Little Tramp" character?', NULL,
        'Charlie Chaplin', ARRAY['Buster Keaton', 'Harold Lloyd', 'Stan Laurel', 'Fatty Arbuckle', 'Harry Langdon', 'Max Linder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Robin Hood in "The Adventures of Robin Hood" (1938)?', NULL,
        'Errol Flynn', ARRAY['Douglas Fairbanks', 'Tyrone Power', 'Cary Grant'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Finding Nemo" and "WALL-E"?', NULL,
        'Andrew Stanton', ARRAY['Pete Docter', 'Brad Bird', 'John Lasseter'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "La La Land" and "Whiplash"?', NULL,
        'Damien Chazelle', ARRAY['Barry Jenkins', 'Greta Gerwig', 'Wes Anderson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made the original "Halloween" (1978)?', NULL,
        'John Carpenter', ARRAY['Wes Craven', 'Tobe Hooper', 'George A. Romero'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Dr. Loomis in the original "Halloween" (1978)?', NULL,
        'Donald Pleasence', ARRAY['Christopher Lee', 'Peter Cushing', 'Vincent Price'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Barbossa in "Pirates of the Caribbean"?', NULL,
        'Geoffrey Rush', ARRAY['Bill Nighy', 'Ian McShane', 'Jonathan Pryce'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Dumbledore in the first two "Harry Potter" films?', NULL,
        'Richard Harris', ARRAY['Michael Gambon', 'Ian McKellen', 'Christopher Lee'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voiced Carl Fredricksen, the grumpy widower in Pixar''s "Up"?', NULL,
        'Ed Asner', ARRAY['Christopher Plummer', 'Peter O''Toole', 'Dick Van Dyke'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Up" and "Inside Out"?', NULL,
        'Pete Docter', ARRAY['Andrew Stanton', 'Lee Unkrich', 'Brad Bird'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Clueless" (1995)?', NULL,
        'Amy Heckerling', ARRAY['Nora Ephron', 'Penny Marshall', 'Penelope Spheeris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the spaceship in the 1979 film "Alien"?', NULL,
        'The Nostromo', ARRAY['The Sulaco', 'The Prometheus', 'Discovery One'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which company employs Ripley and her crew in the "Alien" films?', NULL,
        'Weyland-Yutani', ARRAY['Tyrell Corporation', 'Cyberdyne Systems', 'Omni Consumer Products'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 2004 film follows two friends on a wine-tasting road trip through California?', NULL,
        'Sideways', ARRAY['Bottle Shock', 'A Good Year', 'French Kiss'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Blanche Devereaux on "The Golden Girls"?', NULL,
        'Rue McClanahan', ARRAY['Betty White', 'Bea Arthur', 'Estelle Getty'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Batman in the 1960s "Batman" TV series?', NULL,
        'Adam West', ARRAY['Burt Ward', 'George Reeves', 'Lyle Waggoner'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played MacGyver?', NULL,
        'Richard Dean Anderson', ARRAY['Tom Selleck', 'Lee Majors', 'David Hasselhoff'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played the title role in the sitcom "Murphy Brown"?', NULL,
        'Candice Bergen', ARRAY['Mary Tyler Moore', 'Bea Arthur', 'Shelley Long'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Jon Snow''s direwolf in "Game of Thrones"?', NULL,
        'Ghost', ARRAY['Nymeria', 'Summer', 'Grey Wind'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voices Homer Simpson?', NULL,
        'Dan Castellaneta', ARRAY['Hank Azaria', 'Harry Shearer', 'Nancy Cartwright'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which film won the very first Academy Award for Best Picture?', NULL,
        'Wings', ARRAY['The Broadway Melody', 'All Quiet on the Western Front', 'It Happened One Night', 'Cimarron', 'Grand Hotel', 'Metropolis'], 400, 'It was the only silent film to win Best Picture until "The Artist" won for 2011.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1934 film was the first to win all five top Oscars: Picture, Director, Actor, Actress and Screenplay?', NULL,
        'It Happened One Night', ARRAY['One Flew Over the Cuckoo''s Nest', 'Casablanca', 'Mrs. Miniver', 'Rebecca', 'Grand Hotel', 'Mutiny on the Bounty'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which director made "Seven Samurai"?', NULL,
        'Akira Kurosawa', ARRAY['Yasujiro Ozu', 'Kenji Mizoguchi', 'Hayao Miyazaki', 'Takeshi Kitano', 'Nagisa Oshima', 'Masaki Kobayashi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Norman Bates in "Psycho" (1960)?', NULL,
        'Anthony Perkins', ARRAY['Anthony Hopkins', 'Montgomery Clift', 'James Dean', 'Tony Curtis', 'Vincent Price', 'Peter Lorre'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Atticus Finch in the 1962 film "To Kill a Mockingbird"?', NULL,
        'Gregory Peck', ARRAY['Henry Fonda', 'Spencer Tracy', 'Paul Newman', 'Gary Cooper', 'Robert Mitchum', 'Burt Lancaster'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Who won the very first Academy Award for Best Actress?', NULL,
        'Janet Gaynor', ARRAY['Mary Pickford', 'Greta Garbo', 'Gloria Swanson', 'Clara Bow', 'Lillian Gish', 'Norma Shearer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1968 film ends with a ruined Statue of Liberty on a beach?', NULL,
        'Planet of the Apes', ARRAY['Soylent Green', 'Logan''s Run', 'The Omega Man', 'Escape from New York', 'Silent Running', 'On the Beach'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Who hosted "The Tonight Show" from 1962 to 1992?', NULL,
        'Johnny Carson', ARRAY['Jay Leno', 'Jack Paar', 'Steve Allen', 'David Letterman', 'Ed McMahon', 'Dick Cavett'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Who created and hosted "The Twilight Zone"?', NULL,
        'Rod Serling', ARRAY['Alfred Hitchcock', 'Boris Karloff', 'Vincent Price', 'Jack Webb', 'Irwin Allen', 'Leonard Nimoy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Who created the original "Star Trek" TV series?', NULL,
        'Gene Roddenberry', ARRAY['Rod Serling', 'George Lucas', 'Irwin Allen', 'Gene L. Coon', 'Glen A. Larson', 'J.J. Abrams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which film won Best Picture for 2003, sweeping all 11 Oscars it was nominated for?', NULL,
        'The Lord of the Rings: The Return of the King', ARRAY['The Lord of the Rings: The Two Towers', 'The Lord of the Rings: The Fellowship of the Ring', 'Master and Commander', 'Mystic River', 'Lost in Translation', 'Seabiscuit'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1950 film has Bette Davis warn, "Fasten your seatbelts. It''s going to be a bumpy night"?', NULL,
        'All About Eve', ARRAY['The African Queen', 'Harvey', 'Born Yesterday', 'A Streetcar Named Desire', 'Rebecca', 'Mildred Pierce'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1950 film ends with Norma Desmond saying, "All right, Mr. DeMille, I''m ready for my close-up"?', NULL,
        'Sunset Boulevard', ARRAY['The Third Man', 'Double Indemnity', 'The Lost Weekend', 'Gilda', 'Laura', 'Mildred Pierce'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played the title role in "Lawrence of Arabia"?', NULL,
        'Peter O''Toole', ARRAY['Alec Guinness', 'Omar Sharif', 'Richard Burton', 'Laurence Olivier', 'Albert Finney', 'Anthony Quinn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which director made "Do the Right Thing" and "Malcolm X"?', NULL,
        'Spike Lee', ARRAY['John Singleton', 'Robert Townsend', 'Mario Van Peebles', 'Ernest Dickerson', 'Keenen Ivory Wayans', 'Melvin Van Peebles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which director made "Lost in Translation" and "Marie Antoinette"?', NULL,
        'Sofia Coppola', ARRAY['Greta Gerwig', 'Kathryn Bigelow', 'Nora Ephron', 'Jane Campion', 'Penny Marshall', 'Ava DuVernay'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor won his only Oscar for playing Rooster Cogburn in "True Grit" (1969)?', NULL,
        'John Wayne', ARRAY['Gary Cooper', 'Henry Fonda', 'Lee Marvin', 'Robert Mitchum', 'Glenn Ford', 'Randolph Scott'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played George Bailey in "It''s a Wonderful Life"?', NULL,
        'James Stewart', ARRAY['Cary Grant', 'Henry Fonda', 'Gary Cooper', 'Fred MacMurray', 'Spencer Tracy', 'William Holden'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played James Bond only once, in "On Her Majesty''s Secret Service" (1969)?', NULL,
        'George Lazenby', ARRAY['Roger Moore', 'Timothy Dalton', 'David Niven', 'Pierce Brosnan', 'Daniel Craig', 'Sean Connery'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actress won an Oscar for playing Scarlett O''Hara?', NULL,
        'Vivien Leigh', ARRAY['Bette Davis', 'Olivia de Havilland', 'Joan Crawford', 'Greer Garson', 'Ginger Rogers', 'Joan Fontaine'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which actor played Rhett Butler in "Gone with the Wind"?', NULL,
        'Clark Gable', ARRAY['Errol Flynn', 'Cary Grant', 'Gary Cooper', 'Leslie Howard', 'Tyrone Power', 'Fredric March'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1959 comedy has Tony Curtis and Jack Lemmon hide from gangsters in an all-woman band?', NULL,
        'Some Like It Hot', ARRAY['The Apartment', 'Tootsie', 'The Seven Year Itch', 'Pillow Talk', 'Bringing Up Baby', 'Operation Petticoat'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'DEPTH_NOV_2026', NULL,
        'Which 1952 musical has Gene Kelly dancing and splashing through a downpour?', NULL,
        'Singin'' in the Rain', ARRAY['An American in Paris', 'Anchors Aweigh', 'On the Town', 'Top Hat', 'Easter Parade', 'The Band Wagon'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MOVIES_TV';
