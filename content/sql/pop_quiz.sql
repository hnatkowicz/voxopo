-- ============================================================================
-- content/sql/pop_quiz.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/pop_quiz.csv, the master copy of the
-- Thinking Pants category POP_QUIZ. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 250 live questions
-- (100: 62, 200: 63, 300: 63, 400: 62), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'POP_QUIZ';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fashion doll, launched by Mattel in 1959, has a boyfriend named Ken?', NULL,
        'Barbie', ARRAY['Bratz', 'Polly Pocket', 'Skipper', 'Holly Hobbie', 'Sindy', 'Chatty Cathy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1974 puzzle, invented by a Hungarian professor, has six colored faces to line up?', NULL,
        'Rubik''s Cube', ARRAY['Pyraminx', 'Megaminx', 'Mastermind', 'Skewb', 'Tangram', 'Rush Hour'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which game tells you to put your left hand on red and your right foot on green?', NULL,
        'Twister', ARRAY['Bop It', 'Operation', 'Simon Says', 'Hopscotch', 'Limbo', 'Red Light, Green Light'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which board game has players solving a murder: "Colonel Mustard, in the library, with the candlestick"?', NULL,
        'Clue', ARRAY['Sorry!', 'Guess Who?', 'Mystery Date', 'Scotland Yard', 'Risk', 'Stratego'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which word game has players placing letter tiles on a board with triple-word scores?', NULL,
        'Scrabble', ARRAY['Boggle', 'Bananagrams', 'Words With Friends', 'Upwords', 'Scattergories', 'Wordle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which party game has you guess a word from a teammate''s drawing?', NULL,
        'Pictionary', ARRAY['Charades', 'Taboo', 'Cranium', 'Scattergories', 'Telestrations', 'Heads Up!'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which game has players pull wooden blocks from a tower without knocking it over?', NULL,
        'Jenga', ARRAY['Kerplunk', 'Topple', 'Don''t Break the Ice', 'Tumble Tower', 'Stack Attack', 'Dominoes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fortune-telling toy gives answers like "Ask again later" when you shake it?', NULL,
        'A Magic 8 Ball', ARRAY['A crystal ball', 'A Ouija board', 'A mood ring', 'A cootie catcher', 'A fortune cookie', 'A Zoltar machine'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which red drawing toy with two white knobs erases when you shake it?', NULL,
        'Etch A Sketch', ARRAY['Magna Doodle', 'Spirograph', 'Lite-Brite', 'Doodle Pro', 'Colorforms', 'Boogie Board'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which toy cars, launched by Mattel in 1968, race on bright orange tracks?', NULL,
        'Hot Wheels', ARRAY['Matchbox', 'Micro Machines', 'Tonka', 'Corgi', 'Johnny Lightning', 'Majorette'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1990s stuffed animals with heart-shaped tags became a wild collecting craze?', NULL,
        'Beanie Babies', ARRAY['Pillow Pets', 'Webkinz', 'Trolls', 'Puffalumps', 'Boyds Bears', 'Ty Plush Pals'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2017 spinning gadget was the must-have toy, then banned from many classrooms?', NULL,
        'The fidget spinner', ARRAY['The Beyblade', 'The Pop It', 'The rubber band ball', 'The yo-yo', 'The Tech Deck', 'The gyroscope'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which rubber clogs with holes in the top became a 2000s fashion craze?', NULL,
        'Crocs', ARRAY['Birkenstocks', 'Uggs', 'Jellies', 'Toms', 'Keds', 'Vans'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s haircut is "business in the front, party in the back"?', NULL,
        'The mullet', ARRAY['The mohawk', 'The flattop', 'The rattail', 'The bowl cut', 'The pompadour', 'The feathered cut'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which comic strip cat loves lasagna and hates Mondays?', NULL,
        'Garfield', ARRAY['Heathcliff', 'Sylvester', 'Felix', 'Bill the Cat', 'Azrael', 'Snowball'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2014 viral challenge had people dumping cold water on their heads to raise money for ALS research?', NULL,
        'The Ice Bucket Challenge', ARRAY['The Cold Shower Challenge', 'The Polar Plunge', 'The Splash Challenge', 'The Bottle Flip Challenge', 'The Cinnamon Challenge', 'The Water Balloon Challenge'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What do you call someone who earns a living posting videos and photos that sway their followers?', NULL,
        'An influencer', ARRAY['A blogger', 'A pundit', 'A spokesperson', 'A promoter', 'A columnist', 'A broadcaster'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What do you call the # symbol when it''s used to tag posts on social media?', NULL,
        'A hashtag', ARRAY['A pound tag', 'A tic-tac-toe', 'A grid mark', 'A hash link', 'A number sign', 'A crosshatch'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which British princess was known as "the People''s Princess"?', NULL,
        'Princess Diana', ARRAY['Princess Margaret', 'Princess Anne', 'Princess Beatrice', 'Princess Eugenie', 'Princess Charlotte', 'Princess Alexandra'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which candy''s ads told you to "Taste the Rainbow"?', NULL,
        'Skittles', ARRAY['M&M''s', 'Starburst', 'Jolly Ranchers', 'Nerds', 'Life Savers', 'Gobstoppers'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s toy ponies had pastel colors and symbols on their flanks?', NULL,
        'My Little Pony', ARRAY['Pound Puppies', 'Polly Pocket', 'Popples', 'Fluppy Dogs', 'Lady Lovely Locks', 'Glo Friends'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which robot toy line promised "More than meets the eye"?', NULL,
        'Transformers', ARRAY['GoBots', 'Voltron', 'Zords', 'M.A.S.K.', 'Robotech', 'Zoids'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which board game has players collecting colored pie wedges for answering questions?', NULL,
        'Trivial Pursuit', ARRAY['Cranium', 'Scene It?', 'Outburst', 'Wits & Wagers', 'Smart Ass', 'Brain Quest'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Los del Río song set off a worldwide line-dance craze in 1996?', NULL,
        '"Macarena"', ARRAY['"La Bamba"', '"Mambo No. 5"', '"The Ketchup Song"', '"Lambada"', '"Livin'' la Vida Loca"', '"Cotton Eye Joe"'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2012 K-pop video by PSY was the first YouTube video to pass a billion views?', NULL,
        '"Gangnam Style"', ARRAY['"Gentleman"', '"Daddy"', '"Fantastic Baby"', '"Sorry, Sorry"', '"Bang Bang Bang"', '"Gee"'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which backward-gliding dance did Michael Jackson show off at the "Motown 25" TV special in 1983?', NULL,
        'The moonwalk', ARRAY['The robot', 'The running man', 'The worm', 'The electric slide', 'The cabbage patch', 'The Charleston'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which royal did American actress Meghan Markle marry in 2018?', NULL,
        'Prince Harry', ARRAY['Prince William', 'Prince Edward', 'Prince Andrew', 'Prince Charles', 'Peter Phillips', 'Prince Philip'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which milk slogan appeared on the celebrity "milk mustache" ads from 1998 on?', NULL,
        '"Got Milk?"', ARRAY['"Drink Up!"', '"Milk It!"', '"Moo-ve Over"', '"Say Cheese"', '"Udderly Delicious"', '"Mustache March"'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which department store''s parade fills New York with giant balloons every Thanksgiving morning?', NULL,
        'Macy''s', ARRAY['Gimbels', 'Saks Fifth Avenue', 'Bloomingdale''s', 'Sears', 'JCPenney', 'Lord & Taylor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2005 Christmas tradition has a "scout" that reports to Santa each night?', NULL,
        'The Elf on the Shelf', ARRAY['The Christmas Pickle', 'The Advent Calendar', 'Santa''s Spy Cam', 'The North Pole Pal', 'The Night Owl', 'The Snow Buddy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which brand''s slogan is "Just Do It"?', NULL,
        'Nike', ARRAY['Adidas', 'Reebok', 'Puma', 'Under Armour', 'New Balance', 'Gatorade'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Known as "Wally" in Britain, which striped-shirted traveler hides in crowded picture books?', NULL,
        'Waldo', ARRAY['Carmen Sandiego', 'Odlaw', 'Flat Stanley', 'Curious George', 'Paddington', 'Tintin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In which card game do you ask, "Do you have any sevens?"', NULL,
        'Go Fish', ARRAY['Old Maid', 'War', 'Crazy Eights', 'Slapjack', 'Rummy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which card game makes you call out its name when you''re down to one card?', NULL,
        'Uno', ARRAY['Go Fish', 'Crazy Eights', 'Old Maid', 'Skip-Bo', 'War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game has you flip down faces by asking yes-or-no questions about a hidden person?', NULL,
        'Guess Who?', ARRAY['Clue', 'Headbanz', 'Scattergories', 'Mastermind', 'Taboo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game has a spinner and little cars filled with peg people?', NULL,
        'The Game of Life', ARRAY['Monopoly', 'Sorry!', 'Trouble', 'Candy Land', 'Mouse Trap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which kids'' board game has you climb up and slide down on your way to square 100?', NULL,
        'Chutes and Ladders', ARRAY['Candy Land', 'Trouble', 'Sorry!', 'Hi Ho! Cherry-O', 'Parcheesi'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which stuffed toy is named after President Theodore Roosevelt?', NULL,
        'The teddy bear', ARRAY['The Beanie Baby', 'The Care Bear', 'The Cabbage Patch Kid', 'The rag doll', 'The sock monkey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which Japanese trading cards of pocket monsters became a 1999 craze?', NULL,
        'Pokemon cards', ARRAY['Yu-Gi-Oh! cards', 'Baseball cards', 'Pogs', 'Garbage Pail Kids', 'Magic cards'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which party game has players circling a row of seats, one fewer than people, until the music stops?', NULL,
        'Musical chairs', ARRAY['Freeze tag', 'Hot potato', 'Duck duck goose', 'Simon says', 'Red rover'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which social media app is known for short videos and dance trends?', NULL,
        'TikTok', ARRAY['LinkedIn', 'Pinterest', 'Reddit', 'Tumblr', 'Yelp'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which online encyclopedia can anyone edit?', NULL,
        'Wikipedia', ARRAY['Britannica', 'Google', 'Reddit', 'Quora', 'WebMD'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which king was crowned at Westminster Abbey in 2023?', NULL,
        'Charles III', ARRAY['William V', 'George VII', 'Edward IX', 'Henry IX', 'Philip I'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which British queen reigned for 70 years?', NULL,
        'Elizabeth II', ARRAY['Victoria', 'Elizabeth I', 'Mary I', 'Anne', 'Catherine'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which cereal''s toucan mascot tells you to "Follow your nose"?', NULL,
        'Froot Loops', ARRAY['Trix', 'Lucky Charms', 'Apple Jacks', 'Fruity Pebbles', 'Cap''n Crunch'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which cereal mascot says "They''re Gr-r-reat!"?', NULL,
        'Tony the Tiger', ARRAY['Toucan Sam', 'Cap''n Crunch', 'Snap, Crackle and Pop', 'The Trix Rabbit', 'Lucky the Leprechaun'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which pink bunny keeps going and going in battery ads?', NULL,
        'The Energizer Bunny', ARRAY['The Duracell Bunny', 'The Trix Rabbit', 'The Nesquik Bunny', 'Bugs Bunny', 'The Cadbury Bunny'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which cereal''s ads end with "Silly rabbit, ___ are for kids!"?', NULL,
        'Trix', ARRAY['Froot Loops', 'Lucky Charms', 'Cocoa Puffs', 'Fruity Pebbles', 'Kix'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In which game do players slap levers to make four plastic animals gobble up marbles?', NULL,
        'Hungry Hungry Hippos', ARRAY['Mouse Trap', 'Operation', 'Crocodile Dentist', 'Don''t Break the Ice', 'Kerplunk'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game has you guess grid squares to sink your opponent''s ships?', NULL,
        'Battleship', ARRAY['Stratego', 'Risk', 'Connect Four', 'Mastermind', 'Othello'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which brand''s 40-ounce Quencher tumbler became a must-have craze in 2023 and 2024?', NULL,
        'Stanley', ARRAY['Yeti', 'Hydro Flask', 'Contigo', 'S''well', 'CamelBak', 'Simple Modern'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which NFL tight end did Taylor Swift announce her engagement to in August 2025?', NULL,
        'Travis Kelce', ARRAY['Patrick Mahomes', 'Jason Kelce', 'George Kittle', 'Josh Allen', 'Joe Burrow', 'Tom Brady'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What is the name of Kim Kardashian''s shapewear and clothing brand?', NULL,
        'Skims', ARRAY['Spanx', 'Fabletics', 'Good American', 'Kylie Cosmetics', 'Aerie', 'Honeylove'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What do Taylor Swift''s fans call themselves?', NULL,
        'Swifties', ARRAY['Swiftlings', 'Tay-Tays', 'Swifters', 'Taylorites', 'Speak Nows', 'Lovebirds'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Inspired by one of her lyrics, what handmade items did fans trade at Taylor Swift''s Eras Tour concerts?', NULL,
        'Friendship bracelets', ARRAY['Guitar picks', 'Glow sticks', 'Trading cards', 'Enamel pins', 'Sticker sheets', 'Scrunchies'], 100, 'The idea came from her lyric "So make the friendship bracelets" in "You''re On Your Own, Kid."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which YouTuber, known for giant giveaways and stunts, has the most-subscribed channel on YouTube?', NULL,
        'MrBeast', ARRAY['PewDiePie', 'Markiplier', 'Logan Paul', 'Dude Perfect', 'KSI', 'Ninja'], 100, 'He passed India''s T-Series in June 2024 to take YouTube''s top spot.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Rihanna''s beauty brand launched in 2017 with 40 shades of foundation. What is it called?', NULL,
        'Fenty Beauty', ARRAY['Glossier', 'Huda Beauty', 'Kylie Cosmetics', 'Haus Labs', 'Milk Makeup', 'r.e.m. beauty'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which cookie chain is known for its pink boxes and a menu of flavors that changes every week?', NULL,
        'Crumbl', ARRAY['Insomnia Cookies', 'Tiff''s Treats', 'Mrs. Fields', 'Great American Cookies', 'Levain Bakery', 'Cookies by Design'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Short for "charisma," which slang word for charm was Oxford''s 2023 Word of the Year?', NULL,
        'Rizz', ARRAY['Vibe', 'Drip', 'Slay', 'Swag', 'Sus', 'Cap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which singer and actress founded the makeup brand Rare Beauty?', NULL,
        'Selena Gomez', ARRAY['Hailey Bieber', 'Ariana Grande', 'Kylie Jenner', 'Lady Gaga', 'Rihanna', 'Demi Lovato'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which fuzzy, toothy-grinned Pop Mart monster figures sold out around the world in 2025?', NULL,
        'Labubu', ARRAY['Squishmallows', 'Furby', 'Smiski', 'Tokidoki', 'Molly', 'Ugly Dolls'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'A 2023 TikTok trend asked men how often they think about which ancient empire?', NULL,
        'The Roman Empire', ARRAY['The Ottoman Empire', 'The Mongol Empire', 'The Persian Empire', 'The Byzantine Empire', 'The Egyptian Empire', 'The Aztec Empire'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which electronic toy barks orders like "Twist it!" and "Pull it!"?', NULL,
        'Bop It', ARRAY['Simon', 'Furby', 'Speak & Spell', 'Brain Warp', 'Perfection', 'Hungry Hungry Hippos'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which owl-like electronic pet from 1998 seemed to "learn" English the more you played?', NULL,
        'Furby', ARRAY['Tamagotchi', 'Teddy Ruxpin', 'Poo-Chi', 'Giga Pet', 'Zhu Zhu Pet', 'Hatchimal'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which egg-shaped keychain pet from Japan needed feeding and cleaning, or it would die?', NULL,
        'Tamagotchi', ARRAY['Furby', 'Neopet', 'Giga Pet', 'Digimon', 'Nano Baby', 'Pou'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s teddy bears each had a picture on its tummy, like a rainbow or a rain cloud?', NULL,
        'Care Bears', ARRAY['Gummi Bears', 'Berenstain Bears', 'Snuggle Bears', 'Popples', 'Get Along Gang', 'Shirt Tales'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1970s fad had people buying an ordinary stone as a "pet"?', NULL,
        'The Pet Rock', ARRAY['The Chia Pet', 'The Sea-Monkey', 'The Mood Ring', 'The Lava Lamp', 'The Mexican jumping bean', 'The Wacky Wall Walker'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1970s ring changed color to show the wearer''s "mood"?', NULL,
        'The mood ring', ARRAY['The class ring', 'The poison ring', 'The puzzle ring', 'The spinner ring', 'The friendship ring', 'The promise ring'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which dance move has you drop your face into the crook of your elbow?', NULL,
        'The dab', ARRAY['The floss', 'The whip', 'The nae nae', 'The Carlton', 'The robot', 'The sprinkler'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In "Peanuts," what does Lucy always yank away just as Charlie Brown tries to kick it?', NULL,
        'A football', ARRAY['A soccer ball', 'A kite', 'A chair', 'A baseball', 'A bucket', 'A blanket'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which grumpy-faced cat became an internet star in 2012?', NULL,
        'Grumpy Cat', ARRAY['Keyboard Cat', 'Nyan Cat', 'Lil Bub', 'Longcat', 'Maru', 'Tom'], 200, 'Her real name was Tardar Sauce.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which escape artist hung upside down in a locked "Water Torture Cell"?', NULL,
        'Harry Houdini', ARRAY['David Copperfield', 'David Blaine', 'Criss Angel', 'Doug Henning', 'Penn Jillette', 'Lance Burton'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1983 dolls came with adoption papers and caused fights in toy stores?', NULL,
        'Cabbage Patch Kids', ARRAY['Strawberry Shortcake', 'My Child', 'Pound Puppies', 'Rainbow Brite', 'Popples', 'Teddy Ruxpin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which handheld toy, swung around the waist, sold 25 million in its first months in 1958?', NULL,
        'The Hula-Hoop', ARRAY['The Slinky', 'The yo-yo', 'The pogo stick', 'The jump rope', 'The Skip-It', 'The Frisbee'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which round, marshmallow-soft plush toys became a 2020s collecting craze?', NULL,
        'Squishmallows', ARRAY['Beanie Boos', 'Pillow Pets', 'Squishies', 'Jellycats', 'Funko Pops', 'Shopkins'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1990s wrist accessory snapped around your arm with a smack?', NULL,
        'The slap bracelet', ARRAY['The jelly bracelet', 'The friendship bracelet', 'The scrunchie', 'The snap watch', 'The charm bracelet', 'The rubber band bracelet'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which wheeled sneakers let kids roll down store aisles in the 2000s?', NULL,
        'Heelys', ARRAY['Rollerblades', 'Wheelies', 'Skate Kicks', 'Street Gliders', 'Roller Kicks', 'Zoomers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which arm-swinging dance went viral after "Backpack Kid" did it on "Saturday Night Live" in 2017?', NULL,
        'The floss', ARRAY['The dab', 'The whip', 'The shmoney', 'The hype', 'The orange justice', 'The sprinkler'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In 2015''s viral photo debate over "The Dress," what were its real colors?', NULL,
        'Blue and black', ARRAY['White and gold', 'Black and gold', 'Blue and white', 'Gray and gold', 'Purple and black', 'Green and brown'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which spiky-haired chef hosts "Diners, Drive-Ins and Dives"?', NULL,
        'Guy Fieri', ARRAY['Bobby Flay', 'Rachael Ray', 'Anthony Bourdain', 'Alton Brown', 'Andrew Zimmern', 'Adam Richman'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which magazine has named a "Person of the Year" since 1927?', NULL,
        'Time', ARRAY['Newsweek', 'Life', 'People', 'Forbes', 'Rolling Stone', 'The New Yorker'], 200, 'It began as "Man of the Year." Charles Lindbergh was the first, for 1927.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which brand''s ads promise "You''re not you when you''re hungry"?', NULL,
        'Snickers', ARRAY['Twix', 'Kit Kat', 'Milky Way', '3 Musketeers', 'Baby Ruth', 'PayDay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s action figure was billed as "America''s movable fighting man"?', NULL,
        'G.I. Joe', ARRAY['Major Matt Mason', 'Captain Action', 'Big Jim', 'Johnny West', 'Stretch Armstrong', 'Action Man'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What is the folded-paper fortune teller kids work with their fingers also called?', NULL,
        'A cootie catcher', ARRAY['A paper fortune', 'A finger puppet', 'A snap dragon', 'A magic square', 'A crown', 'A paper cootie'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which internet company''s computer voice announced "You''ve got mail!"?', NULL,
        'AOL', ARRAY['Yahoo!', 'CompuServe', 'Prodigy', 'EarthLink', 'MSN', 'Netscape'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2013 Oxford Dictionaries "Word of the Year" means a photo you take of yourself?', NULL,
        'Selfie', ARRAY['Snapshot', 'Portrait', 'Selfcam', 'Mirror shot', 'Headshot', 'Me-pic'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which phone company''s "Test Man" walked around asking "Can you hear me now? Good."?', NULL,
        'Verizon', ARRAY['AT&T', 'Sprint', 'T-Mobile', 'Nextel', 'Cingular', 'Cricket'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In 1997, which fast-food chain''s ads starred a talking Chihuahua?', NULL,
        'Taco Bell', ARRAY['Del Taco', 'Chipotle', 'Taco John''s', 'Jack in the Box', 'Burger King', 'Sonic'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'How many licks does it take to get to the center of which lollipop, according to a famous owl?', NULL,
        'A Tootsie Pop', ARRAY['A Blow Pop', 'A Dum Dum', 'A Charms Pop', 'A Chupa Chups', 'A Jolly Rancher', 'A Ring Pop'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which pilot landed a crippled airliner on New York''s Hudson River in 2009, saving everyone aboard?', NULL,
        'Chesley "Sully" Sullenberger', ARRAY['Jeffrey Skiles', 'Chuck Yeager', 'Tammie Jo Shults', 'Al Haynes', 'Bob Hoover', 'Jim Lovell'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'During 2020''s lockdowns, which homemade bread became a nationwide baking craze?', NULL,
        'Sourdough', ARRAY['Pretzels', 'Focaccia', 'Rye', 'Challah', 'Brioche', 'Cornbread'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which comic strip follows a 6-year-old boy and a stuffed tiger who comes alive when they''re alone?', NULL,
        'Calvin and Hobbes', ARRAY['Bloom County', 'The Far Side', 'Peanuts', 'Dennis the Menace', 'Foxtrot', 'Pearls Before Swine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What was the "Y2K bug" fear?', NULL,
        'That computers would misread the year 2000 as 1900', ARRAY['That a virus would spread on New Year''s Day', 'That satellites would fall at midnight', 'That the power grid would hit its limit', 'That clocks would stop at midnight', 'That the internet would run out of addresses', 'That phones would stop ringing'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which collectible vinyl figures with oversized heads and boxy window packaging took over toy stores in the 2010s?', NULL,
        'Funko Pops', ARRAY['Bratz', 'Shopkins', 'L.O.L. Surprise!', 'Monster High', 'Lalaloopsy', 'Hatchimals'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s toy oven baked tiny cakes with the heat of a light bulb?', NULL,
        'The Easy-Bake Oven', ARRAY['The Kenner Kitchen', 'The Suzy Homemaker', 'The Lil'' Chef', 'The Bake-a-Rama', 'The Toastmaster Jr.', 'The Mini-Range'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s toy let kids "draw" pictures by poking glowing colored pegs into a lit board?', NULL,
        'Lite-Brite', ARRAY['Colorforms', 'Glow Pegs', 'Glo-Doodle', 'Peg Art', 'Spirograph', 'Magna Doodle'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which famous 1971 ad featured a crowd on a hilltop singing "I''d Like to Buy the World a ___"?', NULL,
        'Coke', ARRAY['Pepsi', 'Hug', 'Smile', 'Song', 'Dream', 'Rose'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fast-food mascot, a purple blob, is a friend of Ronald McDonald?', NULL,
        'Grimace', ARRAY['The Hamburglar', 'Birdie', 'Mayor McCheese', 'Officer Big Mac', 'The Fry Kids', 'Captain Crook'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which internet meme, a 1987 music video bait-and-switch, has fooled people since 2007?', NULL,
        'Rickrolling', ARRAY['Trolling', 'Catfishing', 'Planking', 'Doging', 'Vining', 'Numa-ing'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1963 board game has players build a wacky contraption of cranks, a boot and a diving man to catch each other''s mice?', NULL,
        'Mouse Trap', ARRAY['Hungry Hungry Hippos', 'Kerplunk', 'Operation', 'Ants in the Pants', 'Barrel of Monkeys', 'Don''t Spill the Beans'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which rag doll with red yarn hair was created by Johnny Gruelle in 1915?', NULL,
        'Raggedy Ann', ARRAY['Holly Hobbie', 'Strawberry Shortcake', 'Kewpie', 'Betsy Wetsy', 'Chatty Cathy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which son of Prince William and Catherine was born in July 2013?', NULL,
        'Prince George', ARRAY['Prince Louis', 'Prince Archie', 'Prince Harry', 'Prince Edward', 'Prince Andrew'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which game has you drop checkers into an upright grid, trying to get four in a row?', NULL,
        'Connect Four', ARRAY['Othello', 'Battleship', 'Mastermind', 'Tic-Tac-Toe', 'Chinese Checkers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game lets you bump opponents'' pawns back to Start, with an apology?', NULL,
        'Sorry!', ARRAY['Trouble', 'Parcheesi', 'Aggravation', 'Candy Land', 'Chutes and Ladders'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which cereal is "magically delicious"?', NULL,
        'Lucky Charms', ARRAY['Trix', 'Froot Loops', 'Cap''n Crunch', 'Cocoa Puffs', 'Frosted Flakes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which insurance company''s ads star a green gecko?', NULL,
        'GEICO', ARRAY['Progressive', 'Allstate', 'State Farm', 'Aflac', 'Liberty Mutual'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which insurance company''s ads star a cheerful saleswoman named Flo?', NULL,
        'Progressive', ARRAY['GEICO', 'Allstate', 'State Farm', 'Aflac', 'Farmers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which candy promised to melt in your mouth, not in your hand?', NULL,
        'M&M''s', ARRAY['Skittles', 'Reese''s Pieces', 'Hershey''s Kisses', 'Milk Duds', 'Junior Mints'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which restaurant chain promised you could "Have it your way"?', NULL,
        'Burger King', ARRAY['McDonald''s', 'Wendy''s', 'Arby''s', 'Jack in the Box', 'Hardee''s'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game has players build roads and settlements on an island of hexagon tiles?', NULL,
        'Catan', ARRAY['Carcassonne', 'Ticket to Ride', 'Risk', 'Agricola', 'Dominion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which tiny collectible toys shaped like grocery items were a 2010s craze?', NULL,
        'Shopkins', ARRAY['Polly Pockets', 'Hatchimals', 'L.O.L. Surprise!', 'Squinkies', 'Zhu Zhu Pets'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which candy bar''s ads sang "Gimme a break"?', NULL,
        'Kit Kat', ARRAY['Twix', 'Snickers', 'Milky Way', 'Butterfinger', '3 Musketeers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which baby pygmy hippo from a zoo in Thailand became an internet star in 2024?', NULL,
        'Moo Deng', ARRAY['Fiona', 'Hugo', 'Bibi', 'Pudding', 'Tamtam', 'Mango'], 200, 'Her name means "bouncy pork" in Thai.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What do the fans of K-pop group BTS call themselves?', NULL,
        'ARMY', ARRAY['ONCE', 'Stays', 'Carats', 'MOA', 'Monbebe', 'MY'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'On social media, what does "GRWM" stand for?', NULL,
        'Get Ready With Me', ARRAY['Get Real With Me', 'Go Rate What''s Mine', 'Glam Routine Without Makeup', 'Give Reviews When Made', 'Go Run With Me', 'Good Reads Worth Mentioning'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'The slang word "delulu" is short for what?', NULL,
        'Delusional', ARRAY['Delightful', 'Delicious', 'Deluxe', 'Delayed', 'Delicate', 'Delirious'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'In Gen Z slang, what does "no cap" mean?', NULL,
        'No lie', ARRAY['No problem', 'No limit', 'No worries', 'No chance', 'No rules', 'No pressure'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What do Beyonce''s fans call themselves?', NULL,
        'The BeyHive', ARRAY['The Beygency', 'Bey Nation', 'The Queen''s Court', 'The Honeycombs', 'The Beyonders', 'The Sasha Squad'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which 2025 Netflix animated hit follows a K-pop girl group that secretly fights demons?', NULL,
        'KPop Demon Hunters', ARRAY['Idol Slayers', 'Neon Knights', 'Spirit Squad', 'Starlight Guardians', 'Pop Star Protectors', 'Seoul Sisters'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'YouTubers Logan Paul and KSI launched which sports drink in 2022?', NULL,
        'Prime', ARRAY['Gatorade', 'Bodyarmor', 'Celsius', 'Liquid Death', 'Ghost', 'Alani Nu'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which grocery chain''s $2.99 mini canvas tote bags caused a resale frenzy in 2024?', NULL,
        'Trader Joe''s', ARRAY['Target', 'Whole Foods', 'Aldi', 'Costco', 'Wegmans', 'Publix'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which app sends everyone one surprise alert a day to post a front-and-back camera photo within two minutes?', NULL,
        'BeReal', ARRAY['Snapchat', 'Locket', 'Instagram', 'Lapse', 'Dispo', 'Poparazzi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which pistachio-filled chocolate bar with crunchy shredded pastry went viral in 2024, named for its home city?', NULL,
        'Dubai chocolate', ARRAY['Paris chocolate', 'Istanbul chocolate', 'Swiss chocolate', 'Doha chocolate', 'Beirut chocolate', 'Cairo chocolate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Named for Charli XCX''s 2024 album and summer, which word was Collins Dictionary''s 2024 Word of the Year?', NULL,
        'Brat', ARRAY['Demure', 'Slay', 'Diva', 'Icon', 'Mother', 'Girlboss'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'At K-pop concerts, what are the glowing wands that fans wave in their group''s colors called?', NULL,
        'Lightsticks', ARRAY['Glow wands', 'Fan sabers', 'Starsticks', 'Beam batons', 'Neon wands', 'Idol torches'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which squishy modeling dough was first sold as a wallpaper cleaner?', NULL,
        'Play-Doh', ARRAY['Silly Putty', 'Gak', 'Flubber', 'Plasticine', 'Moon Sand', 'Floam'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which stretchy putty, sold in a plastic egg, could copy newspaper comics?', NULL,
        'Silly Putty', ARRAY['Play-Doh', 'Gak', 'Slime', 'Flubber', 'Floam', 'Thinking Putty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which handheld game flashed colored lights for you to copy in an ever-longer pattern?', NULL,
        'Simon', ARRAY['Merlin', 'Bop It', 'Touch Me', 'Lights Out', 'Brain Warp', 'Copy Cat'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1990s game had kids slamming stacks of cardboard milk-cap discs?', NULL,
        'Pogs', ARRAY['Tazos', 'Jacks', 'Tiddlywinks', 'Marbles', 'Crazy Bones', 'Slammers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2016 viral challenge had people freezing perfectly still on video?', NULL,
        'The Mannequin Challenge', ARRAY['The Ice Bucket Challenge', 'The Bottle Flip Challenge', 'The Statue Challenge', 'The Freeze Frame Challenge', 'The Planking Challenge', 'The Silent Challenge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In 2018''s viral audio clip, some people heard "Yanny." What did everyone else hear?', NULL,
        '"Laurel"', ARRAY['"Larry"', '"Annie"', '"Lonnie"', '"Yolanda"', '"Lenny"', '"Hanny"'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which celebrity chef famously shouted "Bam!" as he cooked?', NULL,
        'Emeril Lagasse', ARRAY['Gordon Ramsay', 'Bobby Flay', 'Rachael Ray', 'Wolfgang Puck', 'Alton Brown', 'Jamie Oliver'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which magician made the Statue of Liberty "disappear" on live TV in 1983?', NULL,
        'David Copperfield', ARRAY['David Blaine', 'Harry Houdini', 'Criss Angel', 'Doug Henning', 'Penn Jillette', 'Lance Burton'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fast-food chain''s 1984 ads had an older woman demanding "Where''s the beef?"', NULL,
        'Wendy''s', ARRAY['McDonald''s', 'Burger King', 'Hardee''s', 'Jack in the Box', 'Arby''s', 'Carl''s Jr.'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1987 toy is a ball of hundreds of soft, floppy rubber strings?', NULL,
        'The Koosh ball', ARRAY['The Nerf ball', 'The Hacky Sack', 'The Gertie ball', 'The Bouncy ball', 'The Stress ball', 'The Squishy ball'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fantasy card game, launched in 1993, created the collectible card game?', NULL,
        'Magic: The Gathering', ARRAY['Yu-Gi-Oh!', 'Pokémon TCG', 'Spellfire', 'Legend of the Five Rings', 'Vampire: The Eternal Struggle', 'Netrunner'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2000s rubber bracelets, shaped like animals, snapped back into shape when you took them off?', NULL,
        'Silly Bandz', ARRAY['Jelly bracelets', 'Rainbow Loom', 'Livestrong bands', 'Slap bracelets', 'Shape Bands', 'Snap Bands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s talking toy bear read stories from a cassette tape in his back?', NULL,
        'Teddy Ruxpin', ARRAY['Corduroy', 'Fozzie', 'Furby', 'Grubby', 'Snuggles', 'Paddington'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which instant-messaging program popularized "away messages" and buddy lists around 2000?', NULL,
        'AIM', ARRAY['MSN Messenger', 'ICQ', 'Yahoo! Messenger', 'Skype', 'Gchat', 'Kik'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which word for someone who fakes an online identity to fool others came from a 2010 documentary?', NULL,
        'Catfish', ARRAY['Troll', 'Phisher', 'Sock puppet', 'Spoofer', 'Lurker', 'Shill'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What did "planking" involve, in the 2011 photo fad?', NULL,
        'Lying face-down, stiff as a board', ARRAY['Balancing on one foot', 'Freezing mid-jump', 'Doing push-ups in odd places', 'Standing on furniture', 'Hanging from a bar', 'Pretending to sleep'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What was the app Vine famous for?', NULL,
        'Six-second looping videos', ARRAY['Disappearing photos', 'Live audio rooms', 'Short text posts', 'Voice messages', 'Photo filters', 'Music streaming'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which beer brand''s 1999 ads had friends shouting "Wassup?!" into the phone?', NULL,
        'Budweiser', ARRAY['Miller Lite', 'Coors Light', 'Schlitz', 'Heineken', 'Corona', 'Pabst'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Hollywood star became Princess of Monaco when she married Prince Rainier III in 1956?', NULL,
        'Grace Kelly', ARRAY['Audrey Hepburn', 'Elizabeth Taylor', 'Rita Hayworth', 'Kim Novak', 'Ava Gardner', 'Lauren Bacall'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which daredevil jumped a motorcycle over the fountains at Caesars Palace in 1967, and crashed?', NULL,
        'Evel Knievel', ARRAY['Robbie Knievel', 'Travis Pastrana', 'Harry Houdini', 'Steve McQueen', 'Gary Wells', 'Robbie Maddison'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1938 radio drama, presented as live news of a Martian invasion, alarmed some listeners?', NULL,
        '"The War of the Worlds"', ARRAY['"The Invisible Man"', '"Invaders from Mars"', '"The Day the Earth Stood Still"', '"The Thing"', '"Flash Gordon"', '"Buck Rogers"'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Wham-O toy was first sold, in 1957, as the "Pluto Platter"?', NULL,
        'The Frisbee', ARRAY['The Hula-Hoop', 'The Slip ''N Slide', 'The Super Ball', 'The Boomerang', 'The Hacky Sack', 'The Water Wiggle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What did the famous "I''ve fallen, and I can''t get up!" ads of the late 1980s sell?', NULL,
        'A medical alert button', ARRAY['A walker', 'A stair lift', 'A home phone', 'A pain-relief cream', 'A recliner chair', 'A security system'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2013 dance-video craze had one masked person dancing alone, then everyone going wild when the bass dropped?', NULL,
        'The Harlem Shake', ARRAY['The Gangnam Style', 'The Nae Nae', 'The Dougie', 'The Cupid Shuffle', 'The Wobble', 'The Stanky Leg'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which famous yellow button design did artist Harvey Ball create in 1963 for an insurance company''s morale campaign?', NULL,
        'The smiley face', ARRAY['The peace sign', 'The happy sun', 'The thumbs-up', 'The yin-yang', 'The have-a-nice-day bee', 'The sunflower'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What kind of creatures were "Sea-Monkeys," sold in comic book ads?', NULL,
        'Brine shrimp', ARRAY['Tiny monkeys', 'Sea horses', 'Tadpoles', 'Water fleas', 'Goldfish eggs', 'Jellyfish'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In the 1970s Life cereal ads, who liked it, after his brothers wouldn''t try it?', NULL,
        'Mikey', ARRAY['Timmy', 'Joey', 'Bobby', 'Danny', 'Billy', 'Johnny'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1976 action figure could be stretched to four times his size, then shrink back?', NULL,
        'Stretch Armstrong', ARRAY['Elastic Man', 'Mr. Fantastic', 'Plastic Man', 'Stretch Monster', 'Rubber Randy', 'Bendy Ben'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which bouncy toy did Lamar Hunt''s kids play with, inspiring him to name the NFL''s championship game?', NULL,
        'The Super Ball', ARRAY['The Hacky Sack', 'The Nerf ball', 'The Koosh ball', 'The Spaldeen', 'The Bouncy Castle', 'The Pogo Ball'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which egg-shaped toys "wobble, but they don''t fall down"?', NULL,
        'Weebles', ARRAY['Wobblers', 'Tumblers', 'Bobbles', 'Roly-Polies', 'Kewpies', 'Wiggles'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game has players pop a plastic "Pop-O-Matic" bubble to roll the die?', NULL,
        'Trouble', ARRAY['Sorry!', 'Aggravation', 'Parcheesi', 'Yahtzee', 'Headache'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which board game began as "The Landlord''s Game," designed by Lizzie Magie to warn about greedy landlords?', NULL,
        'Monopoly', ARRAY['Life', 'Risk', 'Payday', 'Clue', 'Masterpiece'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which big-headed fashion dolls with a "passion for fashion" arrived in 2001?', NULL,
        'Bratz', ARRAY['Polly Pocket', 'Monster High', 'American Girl', 'Barbie Fashionistas', 'Lalaloopsy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which yellow rubber wristband, sold to fight cancer, became a 2004 fad?', NULL,
        'Livestrong', ARRAY['Pink Ribbon', 'Silly Bandz', 'Rainbow Loom', 'Cure Band', 'Hope Band'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In the famous "Hang in there, baby" poster of the 1970s, what is hanging from a branch?', NULL,
        'A kitten', ARRAY['A sloth', 'A monkey', 'A koala', 'A puppy', 'A bat'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which giggling red toy caused store stampedes at Christmas 1996?', NULL,
        'Tickle Me Elmo', ARRAY['Furby', 'Teddy Ruxpin', 'Talking Barney', 'Tamagotchi', 'Buzz Lightyear'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which advertising mascot giggles when you poke his belly?', NULL,
        'The Pillsbury Doughboy', ARRAY['Mr. Peanut', 'The Michelin Man', 'The Stay Puft Marshmallow Man', 'Mr. Clean', 'The Kool-Aid Man'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which snack brand''s mascot wears a monocle and a top hat?', NULL,
        'Planters', ARRAY['Pringles', 'Cracker Jack', 'Frito-Lay', 'Nabisco', 'Chex Mix'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which royal has held the title Princess Royal since 1987?', NULL,
        'Princess Anne', ARRAY['Princess Margaret', 'Princess Beatrice', 'Princess Eugenie', 'Princess Charlotte', 'Princess Diana'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In a famous 2007 viral video, which little brother bit Harry''s finger?', NULL,
        'Charlie', ARRAY['Dave', 'Ronnie', 'Billy', 'Tommy', 'Freddie'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In the game Operation, what is the patient''s name?', NULL,
        'Cavity Sam', ARRAY['Dr. Bones', 'Funny Bone Fred', 'Mr. Ouch', 'Sick Sid', 'Patient Pete'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'What is the name of the mustached, top-hatted mascot of the famous property-trading game?', NULL,
        'Rich Uncle Pennybags', ARRAY['Mr. Moneybags', 'Uncle Sam', 'Mr. Peanut', 'Baron Boardwalk', 'Monty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which metal playing piece was voted out of the famous property-trading game in 2013 and replaced by a cat?', NULL,
        'The iron', ARRAY['The thimble', 'The boot', 'The wheelbarrow', 'The top hat', 'The battleship'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Wheaties calls itself "The Breakfast of..." what?', NULL,
        'Champions', ARRAY['Winners', 'Heroes', 'Legends', 'America', 'Athletes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which candy''s ads said it was "Two great tastes that taste great together"?', NULL,
        'Reese''s Peanut Butter Cups', ARRAY['Twix', 'Snickers', 'Kit Kat', 'Almond Joy', 'Milky Way'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which chain''s slogan was "It''s finger lickin'' good"?', NULL,
        'KFC', ARRAY['Popeyes', 'Church''s Chicken', 'Chick-fil-A', 'Bojangles', 'Boston Market'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which Scottish castle has been the royal family''s summer home since Queen Victoria''s day?', NULL,
        'Balmoral', ARRAY['Windsor', 'Sandringham', 'Holyrood', 'Edinburgh', 'Glamis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which Swiss brand''s colorful plastic watches were a 1980s craze?', NULL,
        'Swatch', ARRAY['Timex', 'Casio', 'Rolex', 'Fossil', 'Omega'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which 1990s poster craze hid a 3-D picture you could see only by crossing your eyes?', NULL,
        'Magic Eye', ARRAY['View-Master', 'Lenticular', 'Holo-Vision', 'Stereo Pix', 'Hidden Pictures'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which foam ball, launched in 1969 as "the world''s first official indoor ball," grew into a dart-blaster brand?', NULL,
        'Nerf', ARRAY['Koosh', 'Wiffle', 'Super Ball', 'Hacky Sack', 'Spalding'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which Australian breakdancer went viral for her kangaroo-hop routine at the 2024 Paris Olympics?', NULL,
        'Raygun', ARRAY['B-Girl Rose', 'Neon', 'Kangagirl', 'B-Girl Shay', 'Ripley', 'Breakqueen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which skincare brand founded by Hailey Bieber was bought by e.l.f. Beauty in 2025?', NULL,
        'Rhode', ARRAY['Glow Recipe', 'Summer Fridays', 'Drunk Elephant', 'Bubble', 'Tower 28', 'Glossier'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Tweens crowding beauty stores for pricey skincare earned what 2024 nickname?', NULL,
        'Sephora kids', ARRAY['Ulta babies', 'Glow-up kids', 'Skincare tweens', 'Mall minis', 'Serum squad', 'Beauty brats'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'K-pop fans collect and trade small printed cards of their favorite idols that come packed in albums. What are they called?', NULL,
        'Photocards', ARRAY['Idol cards', 'Pop cards', 'Star stubs', 'Fan tickets', 'Album slips', 'Mini posters'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which one-word title did a British prince give his 2023 memoir, a nod to "the heir and the ___"?', NULL,
        'Spare', ARRAY['Second', 'Shadow', 'Brother', 'Backup', 'Reserve', 'Understudy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which 2023 TikTok trend named a supper made of snacky odds and ends?', NULL,
        'Girl dinner', ARRAY['Snack night', 'Plate party', 'Boy meal', 'Mood food', 'Lazy feast', 'Grazing gram'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Oxford''s 2024 Word of the Year describes what too much scrolling supposedly does to your mind. What is it?', NULL,
        'Brain rot', ARRAY['Doomscroll', 'Screen fog', 'Mind melt', 'Brain drain', 'Couch brain', 'Data daze'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Thanks to a viral "very ___, very mindful" TikTok, which word was Dictionary.com''s 2024 Word of the Year?', NULL,
        'Demure', ARRAY['Classy', 'Humble', 'Modest', 'Polite', 'Cutesy', 'Dainty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'K-pop girl group ILLIT''s 2024 debut hit is named for an irresistible pull, like iron near a lodestone. What''s its one-word title?', NULL,
        'Magnetic', ARRAY['Gravity', 'Electric', 'Static', 'Kinetic', 'Orbit', 'Polar'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'The 2024 "Chill Guy" meme shows what kind of animal in a sweater, hands in his pockets?', NULL,
        'A dog', ARRAY['A cat', 'A frog', 'A bear', 'A capybara', 'A fox', 'A raccoon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which tiny Japanese baby figurines wear animal and vegetable hats and hide inside blind boxes?', NULL,
        'Sonny Angels', ARRAY['Smiskis', 'Kewpies', 'Precious Moments', 'Calico Critters', 'Shopkins', 'Cabbage Patch Kids'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'By June 2025, all seven members of BTS had finished what?', NULL,
        'Military service', ARRAY['A solo world tour', 'College degrees', 'Their record contracts', 'Acting school', 'A reality show', 'A charity walk'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What do the fans of K-pop group BLACKPINK call themselves?', NULL,
        'BLINK', ARRAY['ONCE', 'Stays', 'Carats', 'MOA', 'Monbebe', 'Bambis'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Shiba Inu dog''s face became the "Doge" meme?', NULL,
        'Kabosu', ARRAY['Cheems', 'Balltze', 'Maru', 'Boo', 'Bodhi', 'Marnie'], 400, 'The meme later inspired a cryptocurrency, Dogecoin.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'When Mr. Potato Head launched in 1952, what did kids have to supply themselves?', NULL,
        'A real potato', ARRAY['The eyes', 'The hat', 'The batteries', 'The shoes', 'A plastic body', 'The box'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What did spring toy inventor Richard James see in 1943 that gave him the idea for the Slinky?', NULL,
        'A spring falling off a shelf', ARRAY['A snake on a staircase', 'A coiled telephone cord', 'A child''s toy accordion', 'A pile of wire', 'A bedspring bouncing', 'A clock unwinding'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which website let 1999-2000s kids adopt and care for virtual pets like Kougras and Aishas?', NULL,
        'Neopets', ARRAY['Webkinz', 'Club Penguin', 'Habbo Hotel', 'Poptropica', 'Moshi Monsters', 'Tamagotchi Town'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which emoji was Oxford Dictionaries'' 2015 "Word of the Year"?', NULL,
        'Face with Tears of Joy', ARRAY['Red Heart', 'Thumbs Up', 'Smiling Face with Heart-Eyes', 'Loudly Crying Face', 'Pile of Poo', 'Rolling on the Floor Laughing'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'When it went up in 1923, what did the famous Hollywood sign say?', NULL,
        'Hollywoodland', ARRAY['Hollywood Hills', 'Hollywood Studios', 'Holly Woods', 'Hollywood Park', 'Hollywood Heights', 'Hollywood Estates'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In 1939, college students competed to see who could swallow the most of what, alive?', NULL,
        'Goldfish', ARRAY['Tadpoles', 'Minnows', 'Crickets', 'Earthworms', 'Oysters', 'Frogs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1920s fad had people sitting atop tall poles for days at a time?', NULL,
        'Flagpole sitting', ARRAY['Tightrope walking', 'Marathon dancing', 'Pole vaulting', 'Tree squatting', 'Chimney sitting', 'Ladder balancing'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1950s college fad had students cramming themselves into a small space for a record?', NULL,
        'Phone booth stuffing', ARRAY['Car cramming', 'Elevator packing', 'Bathtub piling', 'Closet crowding', 'Locker squeezing', 'Canoe stacking'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Mattel co-founder created the company''s famous 1959 fashion doll, naming it after her daughter?', NULL,
        'Ruth Handler', ARRAY['Beatrice Alexander', 'Rose O''Neill', 'Madame Alexander', 'Mary Kay Ash', 'Lillian Vernon', 'Estée Lauder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which toy name comes from the Danish words "leg godt," meaning "play well"?', NULL,
        'LEGO', ARRAY['Duplo', 'Meccano', 'K''Nex', 'Brio', 'Playmobil', 'Tinkertoy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which candy began in 1927 Austria as a peppermint breath mint, before it got its flip-top dispensers?', NULL,
        'PEZ', ARRAY['Tic Tac', 'Altoids', 'Smarties', 'Mentos', 'Life Savers', 'Certs'], 400, 'Its name comes from the German "Pfefferminz," peppermint.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which troll dolls with wild, upright hair, first carved by a Danish woodcutter, were fads in the 1960s and 1990s?', NULL,
        'Good Luck Trolls', ARRAY['Cabbage Patch Kids', 'Kewpie dolls', 'Uglydolls', 'Pound Puppies', 'Wuzzles', 'Boglins'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which actress, in her 80s, was the "Where''s the beef?" lady in 1984''s famous ads?', NULL,
        'Clara Peller', ARRAY['Betty White', 'Estelle Getty', 'Jessica Tandy', 'Ruth Gordon', 'Mildred Natwick', 'Bea Arthur'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which British engineer invented the Spirograph drawing toy in 1965?', NULL,
        'Denys Fisher', ARRAY['James Dyson', 'Clive Sinclair', 'Frank Hornby', 'Ole Kirk Christiansen', 'Richard James', 'Ernő Rubik'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which shoe brand''s light-up sneakers were a 1990s playground hit?', NULL,
        'L.A. Gear', ARRAY['Reebok', 'Keds', 'Converse', 'Vans', 'K-Swiss', 'Fila'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which tilting wooden maze, made famous by Sweden''s BRIO in 1946, has you steer a steel ball past holes with two knobs?', NULL,
        'Labyrinth', ARRAY['Perplexus', 'Marble Run', 'Mouse Trap', 'Kerplunk', 'Operation', 'Ball Maze'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What were "Furbies" accused of in 1999, getting them banned from some U.S. intelligence offices?', NULL,
        'Recording secrets', ARRAY['Spreading viruses', 'Causing headaches', 'Jamming radios', 'Tracking locations', 'Overheating', 'Scaring guard dogs'], 400, 'The NSA banned them, worried they could record and repeat what they heard. They couldn''t.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960 Mattel doll spoke one of 11 phrases when you pulled her string?', NULL,
        'Chatty Cathy', ARRAY['Barbie', 'Baby Alive', 'Betsy Wetsy', 'Tiny Tears', 'Kissy', 'Talky Tina'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which scientist coined the word "meme" in his 1976 book "The Selfish Gene"?', NULL,
        'Richard Dawkins', ARRAY['Carl Sagan', 'Stephen Jay Gould', 'E.O. Wilson', 'Daniel Dennett', 'Steven Pinker', 'Stephen Hawking'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In the American murder-mystery board game, who is the victim?', NULL,
        'Mr. Boddy', ARRAY['Colonel Mustard', 'Professor Plum', 'Mrs. White', 'Mr. Green', 'Mrs. Peacock'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which race-around-the-board game takes its name from the Hindi word for "twenty-five"?', NULL,
        'Parcheesi', ARRAY['Backgammon', 'Sorry!', 'Mancala', 'Chinese Checkers', 'Ludo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Boardwalk and Park Place, famous board game properties, are streets in which seaside city?', NULL,
        'Atlantic City', ARRAY['Coney Island', 'Miami Beach', 'Ocean City', 'Asbury Park', 'Cape May'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In Britain, the murder-mystery game with Colonel Mustard is called what?', NULL,
        'Cluedo', ARRAY['Whodunit', 'Suspect', 'Detective', 'Murder Most Foul', 'Mystery Mansion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which gross-out 1980s trading cards parodied a famous 1983 doll that came with adoption papers?', NULL,
        'Garbage Pail Kids', ARRAY['Wacky Packages', 'Mad Libs', 'Trash Pack', 'Grossology', 'Ugly Dolls'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which company''s name became almost synonymous with the yo-yo after 1929?', NULL,
        'Duncan', ARRAY['Wham-O', 'Mattel', 'Hasbro', 'Spalding', 'Milton Bradley'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which TV frontiersman set off a 1950s craze for coonskin caps?', NULL,
        'Davy Crockett', ARRAY['Daniel Boone', 'Kit Carson', 'Buffalo Bill', 'Wild Bill Hickok', 'Jim Bowie'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which 1920s dance craze is named after a South Carolina city?', NULL,
        'The Charleston', ARRAY['The Columbia', 'The Savannah', 'The Lindy Hop', 'The Black Bottom', 'The Shimmy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'What were the bobbed-hair, short-skirted young women of the 1920s called?', NULL,
        'Flappers', ARRAY['Bobby-soxers', 'Gibson Girls', 'Molls', 'Debutantes', 'Hepcats'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which name did the British royal family adopt in 1917, replacing Saxe-Coburg and Gotha?', NULL,
        'Windsor', ARRAY['Tudor', 'Stuart', 'Hanover', 'York', 'Lancaster'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which antacid''s ads went "Plop, plop, fizz, fizz, oh what a relief it is"?', NULL,
        'Alka-Seltzer', ARRAY['Tums', 'Rolaids', 'Pepto-Bismol', 'Maalox', 'Mylanta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which finicky orange tabby starred in 9Lives cat food ads?', NULL,
        'Morris', ARRAY['Garfield', 'Felix', 'Sylvester', 'Tom', 'Heathcliff'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'At which Norfolk country house does the British royal family traditionally spend Christmas?', NULL,
        'Sandringham', ARRAY['Balmoral', 'Windsor Castle', 'Highgrove', 'Clarence House', 'Osborne House'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which computer did the famous "1984" Super Bowl ad, directed by Ridley Scott, launch?', NULL,
        'The Macintosh', ARRAY['The IBM PC', 'The Commodore 64', 'The Apple II', 'The Atari ST', 'The Amiga'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which everyday utensils did 1970s psychic Uri Geller claim to bend with his mind?', NULL,
        'Spoons', ARRAY['Forks', 'Keys', 'Nails', 'Coat hangers', 'Paper clips'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which daredevil walked a tightrope between New York''s Twin Towers in 1974?', NULL,
        'Philippe Petit', ARRAY['Evel Knievel', 'Karl Wallenda', 'Nik Wallenda', 'Harry Houdini', 'Charles Blondin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which plastic food-storage brand was sold at at-home "parties" starting in the 1950s?', NULL,
        'Tupperware', ARRAY['Rubbermaid', 'Pyrex', 'Ziploc', 'Glad', 'Corningware'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which 1985 recipe change was so hated that the original came back within three months?', NULL,
        'New Coke', ARRAY['Crystal Pepsi', 'Diet Rite', 'OK Soda', 'Coke II', 'Pepsi Blue'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which internet meme of cats with broken grammar gave us "I can has cheezburger?"', NULL,
        'LOLcats', ARRAY['Nyan Cat', 'Keyboard Cat', 'Doge', 'Grumpy Cat', 'Longcat'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which royal yacht, retired in 1997, is now a museum ship in Edinburgh?', NULL,
        'Britannia', ARRAY['Victoria and Albert', 'Royal George', 'Windsor', 'Elizabeth', 'Sovereign'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which radio heroine''s "secret decoder ring," mailed out for Ovaltine seals, became a famous premium?', NULL,
        'Little Orphan Annie', ARRAY['Nancy Drew', 'Wonder Woman', 'Betty Boop', 'Shirley Temple', 'Lois Lane'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which crackling candy was rumored to make your stomach explode if you drank soda with it?', NULL,
        'Pop Rocks', ARRAY['Nerds', 'Fun Dip', 'Warheads', 'Mentos', 'Lemonheads'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Screaming teenage girls who swooned over Frank Sinatra in the 1940s were called what?', NULL,
        'Bobby-soxers', ARRAY['Flappers', 'Groupies', 'Beatniks', 'Hepcats', 'Jitterbugs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which 1970s fad had drivers chatting with slang like "Breaker one-nine" and "good buddy"?', NULL,
        'CB radio', ARRAY['Ham radio', 'Walkie-talkies', 'Car phones', 'Pagers', 'Party lines'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which Chinese tile game became an American craze in the 1920s?', NULL,
        'Mahjong', ARRAY['Dominoes', 'Go', 'Pai Gow', 'Xiangqi', 'Rummikub'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which chubby, topknotted dolls, from illustrator Rose O''Neill''s comics, were a 1910s craze?', NULL,
        'Kewpie dolls', ARRAY['Raggedy Ann dolls', 'Billiken dolls', 'Teddy dolls', 'Bye-Lo babies', 'Patsy dolls'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'In 1986, millions held hands in a chain from coast to coast for charity. What was it called?', NULL,
        'Hands Across America', ARRAY['Live Aid', 'Farm Aid', 'We Are the World', 'Comic Relief', 'Unity Day'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which "talking board," sold as a parlor game since 1890, spells out spirits'' messages?', NULL,
        'The Ouija board', ARRAY['The Magic 8 Ball', 'The planchette', 'The Spirit Wheel', 'The Mystic Dial', 'The tarot board'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which Mead folder with a Velcro flap was a must-have 1980s school supply?', NULL,
        'The Trapper Keeper', ARRAY['The Pee-Chee', 'The Five Star', 'The Lisa Frank', 'The Day-Timer', 'The Duo-Tang'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV25', NULL,
        'Which British model, nicknamed for her slim frame, became the face of 1960s Swinging London?', NULL,
        'Twiggy', ARRAY['Jean Shrimpton', 'Kate Moss', 'Penelope Tree', 'Pattie Boyd', 'Mary Quant'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which fuzzy-fruit shade was Pantone''s 2024 Color of the Year?', NULL,
        'Peach Fuzz', ARRAY['Apricot Crush', 'Coral Kiss', 'Melon Mist', 'Blush Velvet', 'Living Coral', 'Tangerine Dream'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which coffee-and-chocolate brown was Pantone''s 2025 Color of the Year?', NULL,
        'Mocha Mousse', ARRAY['Latte Cream', 'Cocoa Silk', 'Espresso Swirl', 'Caramel Cafe', 'Hazelnut Haze', 'Truffle Brown'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Glasses on, glasses off: the 2024 Olympics'' viral "pommel horse guy" was compared to which superhero''s secret identity?', NULL,
        'Clark Kent', ARRAY['Peter Parker', 'Bruce Wayne', 'Diana Prince', 'Tony Stark', 'Bruce Banner', 'Steve Rogers'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Shooter Yusuf Dikec went viral at the 2024 Olympics for winning silver with one hand in his pocket. Which country did he represent?', NULL,
        'Turkey', ARRAY['Greece', 'Serbia', 'Azerbaijan', 'Egypt', 'Georgia', 'Bulgaria'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'What was the name of the giant, fluffy king penguin chick that went viral from a Melbourne aquarium in 2024?', NULL,
        'Pesto', ARRAY['Pudgy', 'Nugget', 'Mochi', 'Biscuit', 'Waddles', 'Peanut'], 400, 'At nine months he weighed about 50 pounds, more than both of his parents.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Hailey Bieber popularized a dewy, shiny-faced makeup look named after which treat?', NULL,
        'Glazed donut', ARRAY['Honey bun', 'Cinnamon roll', 'Cream puff', 'Maple bar', 'Jelly bean', 'Sugar cookie'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which brand''s "Brazilian Bum Bum Cream" became a teen must-have body lotion?', NULL,
        'Sol de Janeiro', ARRAY['Tree Hut', 'Bath & Body Works', 'Glow Recipe', 'Summer Fridays', 'Fenty Skin', 'Kopari'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Fur coats, gold jewelry and red lips defined which 2024 TikTok style trend?', NULL,
        'Mob wife aesthetic', ARRAY['Old money aesthetic', 'Clean girl aesthetic', 'Coastal grandma', 'Quiet luxury', 'Barbiecore', 'Dark academia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which water bottle brand''s FreeSip lid made it a hot 2024 rival to the Stanley cup craze?', NULL,
        'Owala', ARRAY['Yeti', 'Hydro Flask', 'Contigo', 'Nalgene', 'CamelBak', 'S''well'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Which word describing a deeply divided society was Merriam-Webster''s 2024 Word of the Year?', NULL,
        'Polarization', ARRAY['Division', 'Gridlock', 'Partisan', 'Tribalism', 'Discord', 'Schism'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'Pop Mart''s best-selling monster toys come from a series called The Monsters, created by an artist born in which city?', NULL,
        'Hong Kong', ARRAY['Tokyo', 'Seoul', 'Shanghai', 'Taipei', 'Bangkok', 'Singapore'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'POP_QUIZ_NOV28', NULL,
        'In K-pop, what Korean word names a group''s youngest member, often a fan favorite?', NULL,
        'Maknae', ARRAY['Sunbae', 'Dongsaeng', 'Oppa', 'Unnie', 'Hyung', 'Aegyo'], 400, NULL);

COMMIT;

-- Check: should return 250.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'POP_QUIZ';
