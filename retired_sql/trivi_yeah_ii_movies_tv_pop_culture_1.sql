-- ============================================================================
-- trivi_yeah_ii_movies_tv_pop_culture_1.sql
-- Movies & TV for Thinking Pants: +80 questions (20 per point tier), folded in
-- from Trivi-yeah!'s retired Pop Culture deck. Each one re-checked: broken or
-- answer-in-the-question items dropped, off-color picks skipped, re-rated for
-- the 100-400 board, and given three hand-written wrong answers of the same
-- kind. Takes Movies & TV from 10 to 30 per tier.
--
-- Safe to re-run: deletes and re-inserts this batch only (tagged
-- subcategory = 'POP_CULTURE_FOLD_1'), inside a transaction. The original
-- Trivi-yeah! rows are not touched.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MOVIES_TV' AND subcategory = 'POP_CULTURE_FOLD_1';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Iron Man in the Marvel Cinematic Universe?', NULL,
        'Robert Downey Jr.', ARRAY['Chris Evans', 'Chris Hemsworth', 'Mark Ruffalo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1994 animated Disney film features the song "Circle of Life"?', NULL,
        'The Lion King', ARRAY['Aladdin', 'Pocahontas', 'The Jungle Book'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which animation studio made the "Toy Story" films?', NULL,
        'Pixar', ARRAY['DreamWorks', 'Illumination', 'Blue Sky Studios'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Dorothy in "The Wizard of Oz" (1939)?', NULL,
        'Judy Garland', ARRAY['Shirley Temple', 'Julie Andrews', 'Liza Minnelli'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Rocky Balboa?', NULL,
        'Sylvester Stallone', ARRAY['Arnold Schwarzenegger', 'Bruce Willis', 'Jean-Claude Van Damme'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Indiana Jones?', NULL,
        'Harrison Ford', ARRAY['Tom Selleck', 'Kevin Costner', 'Mel Gibson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Marty McFly in "Back to the Future"?', NULL,
        'Michael J. Fox', ARRAY['Matthew Broderick', 'Tom Hanks', 'Kevin Bacon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Neo in "The Matrix"?', NULL,
        'Keanu Reeves', ARRAY['Will Smith', 'Tom Cruise', 'Brad Pitt'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Jack Sparrow in "Pirates of the Caribbean"?', NULL,
        'Johnny Depp', ARRAY['Orlando Bloom', 'Geoffrey Rush', 'Javier Bardem'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Katniss Everdeen in "The Hunger Games" films?', NULL,
        'Jennifer Lawrence', ARRAY['Emma Stone', 'Shailene Woodley', 'Kristen Stewart'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1939 film features the song "Over the Rainbow"?', NULL,
        'The Wizard of Oz', ARRAY['Gone with the Wind', 'Snow White and the Seven Dwarfs', 'Pinocchio'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the blue-and-white droid who beeps and whistles in the original "Star Wars" trilogy?', NULL,
        'R2-D2', ARRAY['C-3PO', 'BB-8', 'K-2SO'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Han Solo''s ship in "Star Wars"?', NULL,
        'The Millennium Falcon', ARRAY['Slave I', 'The Razor Crest', 'The Executor'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1982 film features a friendly alien who wants to "phone home"?', NULL,
        'E.T. the Extra-Terrestrial', ARRAY['Close Encounters of the Third Kind', 'Gremlins', 'Poltergeist'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What car is turned into a time machine in "Back to the Future"?', NULL,
        'A DeLorean', ARRAY['A Ford Mustang', 'A Chevrolet Camaro', 'A Pontiac Firebird'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the forgetful blue tang fish in "Finding Nemo"?', NULL,
        'Dory', ARRAY['Marlin', 'Gill', 'Squirt'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which Disney film features a demigod named Maui?', NULL,
        'Moana', ARRAY['Lilo & Stitch', 'Hercules', 'Brave'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which phrase, meaning "no worries," do Timon and Pumbaa sing in "The Lion King"?', NULL,
        'Hakuna Matata', ARRAY['Bibbidi-Bobbidi-Boo', 'Zip-a-Dee-Doo-Dah', 'Supercalifragilisticexpialidocious'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Ross Geller in "Friends"?', NULL,
        'David Schwimmer', ARRAY['Matthew Perry', 'Matt LeBlanc', 'Paul Rudd'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Michael Scott in the American version of "The Office"?', NULL,
        'Steve Carell', ARRAY['Rainn Wilson', 'John Krasinski', 'Ed Helms'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Rick Blaine in "Casablanca"?', NULL,
        'Humphrey Bogart', ARRAY['Cary Grant', 'Clark Gable', 'James Stewart'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor was the first to play James Bond in a film, starting in 1962?', NULL,
        'Sean Connery', ARRAY['Roger Moore', 'David Niven', 'George Lazenby'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "2001: A Space Odyssey" and "The Shining"?', NULL,
        'Stanley Kubrick', ARRAY['Ridley Scott', 'Francis Ford Coppola', 'Brian De Palma'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Don Vito Corleone in "The Godfather" (1972)?', NULL,
        'Marlon Brando', ARRAY['Al Pacino', 'Robert De Niro', 'James Caan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor provided the voice of Darth Vader in the original "Star Wars" trilogy?', NULL,
        'James Earl Jones', ARRAY['David Prowse', 'Morgan Freeman', 'Christopher Lee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Ferris Bueller?', NULL,
        'Matthew Broderick', ARRAY['Ralph Macchio', 'John Cusack', 'Charlie Sheen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Hannibal Lecter in "The Silence of the Lambs"?', NULL,
        'Anthony Hopkins', ARRAY['Ralph Fiennes', 'Gary Oldman', 'Jeremy Irons'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voiced Buzz Lightyear in the "Toy Story" films?', NULL,
        'Tim Allen', ARRAY['Billy Crystal', 'John Goodman', 'Tom Hanks'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Pulp Fiction" and "Kill Bill"?', NULL,
        'Quentin Tarantino', ARRAY['Guy Ritchie', 'Robert Rodriguez', 'Joel Coen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Ellen Ripley in the "Alien" films?', NULL,
        'Sigourney Weaver', ARRAY['Linda Hamilton', 'Jamie Lee Curtis', 'Geena Davis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Gandalf in "The Lord of the Rings" films?', NULL,
        'Ian McKellen', ARRAY['Christopher Lee', 'Patrick Stewart', 'Michael Gambon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Severus Snape in the "Harry Potter" films?', NULL,
        'Alan Rickman', ARRAY['Gary Oldman', 'Ralph Fiennes', 'Michael Gambon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Back to the Future," how fast must the DeLorean go to travel through time?', NULL,
        '88 miles per hour', ARRAY['55 miles per hour', '100 miles per hour', '121 miles per hour'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1984 film features a mischievous creature named Gizmo?', NULL,
        'Gremlins', ARRAY['The Goonies', 'Labyrinth', 'Critters'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Harry Potter''s snowy owl?', NULL,
        'Hedwig', ARRAY['Errol', 'Pigwidgeon', 'Fawkes'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which Pixar film follows a rat who dreams of becoming a chef in Paris?', NULL,
        'Ratatouille', ARRAY['Flushed Away', 'The Tale of Despereaux', 'Stuart Little'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Kirk in the original "Star Trek" series?', NULL,
        'William Shatner', ARRAY['Leonard Nimoy', 'Patrick Stewart', 'DeForest Kelley'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which game show asked contestants, "Is that your final answer?"', NULL,
        'Who Wants to Be a Millionaire', ARRAY['Jeopardy!', 'The Weakest Link', 'Deal or No Deal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Stranger Things," what is the dark alternate dimension called?', NULL,
        'The Upside Down', ARRAY['The Nether', 'The Shadow Realm', 'The Other Side'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which sitcom is set in a Boston bar "where everybody knows your name"?', NULL,
        'Cheers', ARRAY['Frasier', 'Wings', 'Taxi'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress won an Oscar for playing the title role in "Annie Hall"?', NULL,
        'Diane Keaton', ARRAY['Mia Farrow', 'Meryl Streep', 'Faye Dunaway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "The Breakfast Club" and "Ferris Bueller''s Day Off"?', NULL,
        'John Hughes', ARRAY['Rob Reiner', 'Joel Schumacher', 'Harold Ramis'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which South Korean film won Best Picture at the 2020 Academy Awards?', NULL,
        'Parasite', ARRAY['Oldboy', 'Burning', 'The Handmaiden'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "Citizen Kane," what was the name of the sled?', NULL,
        'Rosebud', ARRAY['Snowbird', 'Sweet Pea', 'Buttercup'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1959 Alfred Hitchcock film features a famous crop-duster chase?', NULL,
        'North by Northwest', ARRAY['Vertigo', 'Rear Window', 'The Birds'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played the shark hunter Quint in "Jaws"?', NULL,
        'Robert Shaw', ARRAY['Roy Scheider', 'Richard Dreyfuss', 'Lee Marvin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Westley in "The Princess Bride"?', NULL,
        'Cary Elwes', ARRAY['Mandy Patinkin', 'Chris Sarandon', 'Billy Crystal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Catwoman in "Batman Returns" (1992)?', NULL,
        'Michelle Pfeiffer', ARRAY['Halle Berry', 'Kim Basinger', 'Anne Hathaway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Aragorn in "The Lord of the Rings" films?', NULL,
        'Viggo Mortensen', ARRAY['Sean Bean', 'Orlando Bloom', 'Karl Urban'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Gollum in "The Lord of the Rings" through motion capture?', NULL,
        'Andy Serkis', ARRAY['Elijah Wood', 'Ian Holm', 'Hugo Weaving'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What metal coats Wolverine''s skeleton and claws in "X-Men"?', NULL,
        'Adamantium', ARRAY['Vibranium', 'Titanium', 'Uru'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Wonder Woman''s home island?', NULL,
        'Themyscira', ARRAY['Atlantis', 'Avalon', 'Lemuria'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In "The Princess Bride," what does R.O.U.S. stand for?', NULL,
        'Rodents of Unusual Size', ARRAY['Rats of Uncommon Size', 'Raccoons of Unusual Strength', 'Rodents of Unknown Species'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What fashion magazine is at the center of "The Devil Wears Prada"?', NULL,
        'Runway', ARRAY['Vogue', 'Elle', 'Cosmopolitan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'In Disney''s "The Little Mermaid," what is Ariel''s undersea kingdom called?', NULL,
        'Atlantica', ARRAY['Atlantis', 'Coralia', 'Neptunia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Fonzie in "Happy Days"?', NULL,
        'Henry Winkler', ARRAY['Ron Howard', 'Scott Baio', 'Tony Danza'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Tony Soprano in "The Sopranos"?', NULL,
        'James Gandolfini', ARRAY['Michael Imperioli', 'Steve Buscemi', 'Ray Liotta'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Jack Bauer in "24"?', NULL,
        'Kiefer Sutherland', ARRAY['Dennis Haysbert', 'Gary Sinise', 'Michael Chiklis'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Archie Bunker in "All in the Family"?', NULL,
        'Carroll O''Connor', ARRAY['Jackie Gleason', 'Ed Asner', 'Norman Lear'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played J.R. Ewing in "Dallas"?', NULL,
        'Larry Hagman', ARRAY['Patrick Duffy', 'Tom Selleck', 'Burt Reynolds'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Robin Hood in "The Adventures of Robin Hood" (1938)?', NULL,
        'Errol Flynn', ARRAY['Douglas Fairbanks', 'Tyrone Power', 'Cary Grant'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Finding Nemo" and "WALL-E"?', NULL,
        'Andrew Stanton', ARRAY['Pete Docter', 'Brad Bird', 'John Lasseter'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "La La Land" and "Whiplash"?', NULL,
        'Damien Chazelle', ARRAY['Barry Jenkins', 'Greta Gerwig', 'Wes Anderson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made the original "Halloween" (1978)?', NULL,
        'John Carpenter', ARRAY['Wes Craven', 'Tobe Hooper', 'George A. Romero'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Dr. Loomis in the original "Halloween" (1978)?', NULL,
        'Donald Pleasence', ARRAY['Christopher Lee', 'Peter Cushing', 'Vincent Price'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Captain Barbossa in "Pirates of the Caribbean"?', NULL,
        'Geoffrey Rush', ARRAY['Bill Nighy', 'Ian McShane', 'Jonathan Pryce'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Dumbledore in the first two "Harry Potter" films?', NULL,
        'Richard Harris', ARRAY['Michael Gambon', 'Ian McKellen', 'Christopher Lee'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voiced Carl Fredricksen, the grumpy widower in Pixar''s "Up"?', NULL,
        'Ed Asner', ARRAY['Christopher Plummer', 'Peter O''Toole', 'Dick Van Dyke'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Up" and "Inside Out"?', NULL,
        'Pete Docter', ARRAY['Andrew Stanton', 'Lee Unkrich', 'Brad Bird'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which director made "Clueless" (1995)?', NULL,
        'Amy Heckerling', ARRAY['Nora Ephron', 'Penny Marshall', 'Penelope Spheeris'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the spaceship in the 1979 film "Alien"?', NULL,
        'The Nostromo', ARRAY['The Sulaco', 'The Prometheus', 'Discovery One'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which company employs Ripley and her crew in the "Alien" films?', NULL,
        'Weyland-Yutani', ARRAY['Tyrell Corporation', 'Cyberdyne Systems', 'Omni Consumer Products'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which 2004 film follows two friends on a wine-tasting road trip through California?', NULL,
        'Sideways', ARRAY['Bottle Shock', 'A Good Year', 'French Kiss'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which show has broadcast live from Studio 8H at 30 Rockefeller Plaza since 1975?', NULL,
        'Saturday Night Live', ARRAY['The Tonight Show', 'Late Night', 'The Today Show'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played Blanche Devereaux on "The Golden Girls"?', NULL,
        'Rue McClanahan', ARRAY['Betty White', 'Bea Arthur', 'Estelle Getty'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played Batman in the 1960s "Batman" TV series?', NULL,
        'Adam West', ARRAY['Burt Ward', 'George Reeves', 'Lyle Waggoner'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor played MacGyver?', NULL,
        'Richard Dean Anderson', ARRAY['Tom Selleck', 'Lee Majors', 'David Hasselhoff'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actress played the title role in the sitcom "Murphy Brown"?', NULL,
        'Candice Bergen', ARRAY['Mary Tyler Moore', 'Bea Arthur', 'Shelley Long'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Jon Snow''s direwolf in "Game of Thrones"?', NULL,
        'Ghost', ARRAY['Nymeria', 'Summer', 'Grey Wind'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MOVIES_TV', 'POP_CULTURE_FOLD_1', NULL,
        'Which actor voices Homer Simpson?', NULL,
        'Dan Castellaneta', ARRAY['Hank Azaria', 'Harry Shearer', 'Nancy Cartwright'], 400);

COMMIT;

-- Check: should return 80 (this batch), and 120 for the whole category.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MOVIES_TV' AND subcategory = 'POP_CULTURE_FOLD_1';
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MOVIES_TV';
