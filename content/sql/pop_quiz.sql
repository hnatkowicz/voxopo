-- ============================================================================
-- content/sql/pop_quiz.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/pop_quiz.csv, the master copy of the
-- Thinking Pants category POP_QUIZ. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
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
        'Which electronic toy barks orders like "Twist it!" and "Pull it!"?', NULL,
        'Bop It', ARRAY['Simon', 'Furby', 'Speak & Spell', 'Brain Warp', 'Perfection', 'Hungry Hungry Hippos'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which owl-like electronic pet from 1998 seemed to "learn" English the more you played?', NULL,
        'Furby', ARRAY['Tamagotchi', 'Teddy Ruxpin', 'Poo-Chi', 'Giga Pet', 'Zhu Zhu Pet', 'Hatchimal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which egg-shaped keychain pet from Japan needed feeding and cleaning, or it would die?', NULL,
        'Tamagotchi', ARRAY['Furby', 'Neopet', 'Giga Pet', 'Digimon', 'Nano Baby', 'Pou'], 100, NULL);
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
        'Which 1980s teddy bears each had a picture on its tummy, like a rainbow or a rain cloud?', NULL,
        'Care Bears', ARRAY['Gummi Bears', 'Berenstain Bears', 'Snuggle Bears', 'Popples', 'Get Along Gang', 'Shirt Tales'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2017 spinning gadget was the must-have toy, then banned from many classrooms?', NULL,
        'The fidget spinner', ARRAY['The Beyblade', 'The Pop It', 'The rubber band ball', 'The yo-yo', 'The Tech Deck', 'The gyroscope'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1970s fad had people buying an ordinary stone as a "pet"?', NULL,
        'The Pet Rock', ARRAY['The Chia Pet', 'The Sea-Monkey', 'The Mood Ring', 'The Lava Lamp', 'The Mexican jumping bean', 'The Wacky Wall Walker'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1970s ring changed color to show the wearer''s "mood"?', NULL,
        'The mood ring', ARRAY['The class ring', 'The poison ring', 'The puzzle ring', 'The spinner ring', 'The friendship ring', 'The promise ring'], 100, NULL);
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
        'Which dance move has you drop your face into the crook of your elbow?', NULL,
        'The dab', ARRAY['The floss', 'The whip', 'The nae nae', 'The Carlton', 'The robot', 'The sprinkler'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which comic strip cat loves lasagna and hates Mondays?', NULL,
        'Garfield', ARRAY['Heathcliff', 'Sylvester', 'Felix', 'Bill the Cat', 'Azrael', 'Snowball'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In "Peanuts," what does Lucy always yank away just as Charlie Brown tries to kick it?', NULL,
        'A football', ARRAY['A soccer ball', 'A kite', 'A chair', 'A baseball', 'A bucket', 'A blanket'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which grumpy-faced cat became an internet star in 2012?', NULL,
        'Grumpy Cat', ARRAY['Keyboard Cat', 'Nyan Cat', 'Lil Bub', 'Longcat', 'Maru', 'Tom'], 100, 'Her real name was Tardar Sauce.');
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
        'Which escape artist hung upside down in a locked "Water Torture Cell"?', NULL,
        'Harry Houdini', ARRAY['David Copperfield', 'David Blaine', 'Criss Angel', 'Doug Henning', 'Penn Jillette', 'Lance Burton'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which candy''s ads told you to "Taste the Rainbow"?', NULL,
        'Skittles', ARRAY['M&M''s', 'Starburst', 'Jolly Ranchers', 'Nerds', 'Life Savers', 'Gobstoppers'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which squishy modeling dough was first sold as a wallpaper cleaner?', NULL,
        'Play-Doh', ARRAY['Silly Putty', 'Gak', 'Flubber', 'Plasticine', 'Moon Sand', 'Floam'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which stretchy putty, sold in a plastic egg, could copy newspaper comics?', NULL,
        'Silly Putty', ARRAY['Play-Doh', 'Gak', 'Slime', 'Flubber', 'Floam', 'Thinking Putty'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1983 dolls came with adoption papers and caused fights in toy stores?', NULL,
        'Cabbage Patch Kids', ARRAY['Strawberry Shortcake', 'My Child', 'Pound Puppies', 'Rainbow Brite', 'Popples', 'Teddy Ruxpin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s toy ponies had pastel colors and symbols on their flanks?', NULL,
        'My Little Pony', ARRAY['Pound Puppies', 'Polly Pocket', 'Popples', 'Fluppy Dogs', 'Lady Lovely Locks', 'Glo Friends'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which robot toy line promised "More than meets the eye"?', NULL,
        'Transformers', ARRAY['GoBots', 'Voltron', 'Zords', 'M.A.S.K.', 'Robotech', 'Zoids'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which handheld game flashed colored lights for you to copy in an ever-longer pattern?', NULL,
        'Simon', ARRAY['Merlin', 'Bop It', 'Touch Me', 'Lights Out', 'Brain Warp', 'Copy Cat'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which board game has players collecting colored pie wedges for answering questions?', NULL,
        'Trivial Pursuit', ARRAY['Cranium', 'Scene It?', 'Outburst', 'Wits & Wagers', 'Smart Ass', 'Brain Quest'], 200, NULL);
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
        'Which 1990s game had kids slamming stacks of cardboard milk-cap discs?', NULL,
        'Pogs', ARRAY['Tazos', 'Jacks', 'Tiddlywinks', 'Marbles', 'Crazy Bones', 'Slammers'], 200, NULL);
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
        'Which 2016 viral challenge had people freezing perfectly still on video?', NULL,
        'The Mannequin Challenge', ARRAY['The Ice Bucket Challenge', 'The Bottle Flip Challenge', 'The Statue Challenge', 'The Freeze Frame Challenge', 'The Planking Challenge', 'The Silent Challenge'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Los del Río song set off a worldwide line-dance craze in 1996?', NULL,
        '"Macarena"', ARRAY['"La Bamba"', '"Mambo No. 5"', '"The Ketchup Song"', '"Lambada"', '"Livin'' la Vida Loca"', '"Cotton Eye Joe"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2012 K-pop video by PSY was the first YouTube video to pass a billion views?', NULL,
        '"Gangnam Style"', ARRAY['"Gentleman"', '"Daddy"', '"Fantastic Baby"', '"Sorry, Sorry"', '"Bang Bang Bang"', '"Gee"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which backward-gliding dance did Michael Jackson show off at the "Motown 25" TV special in 1983?', NULL,
        'The moonwalk', ARRAY['The robot', 'The running man', 'The worm', 'The electric slide', 'The cabbage patch', 'The Charleston'], 200, NULL);
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
        'In 2018''s viral audio clip, some people heard "Yanny." What did everyone else hear?', NULL,
        '"Laurel"', ARRAY['"Larry"', '"Annie"', '"Lonnie"', '"Yolanda"', '"Lenny"', '"Hanny"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which Shiba Inu dog''s face became the "Doge" meme?', NULL,
        'Kabosu', ARRAY['Cheems', 'Balltze', 'Maru', 'Boo', 'Bodhi', 'Marnie'], 200, 'The meme later inspired a cryptocurrency, Dogecoin.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which royal did American actress Meghan Markle marry in 2018?', NULL,
        'Prince Harry', ARRAY['Prince William', 'Prince Edward', 'Prince Andrew', 'Prince Charles', 'Peter Phillips', 'Prince Philip'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which celebrity chef famously shouted "Bam!" as he cooked?', NULL,
        'Emeril Lagasse', ARRAY['Gordon Ramsay', 'Bobby Flay', 'Rachael Ray', 'Wolfgang Puck', 'Alton Brown', 'Jamie Oliver'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which spiky-haired chef hosts "Diners, Drive-Ins and Dives"?', NULL,
        'Guy Fieri', ARRAY['Bobby Flay', 'Rachael Ray', 'Anthony Bourdain', 'Alton Brown', 'Andrew Zimmern', 'Adam Richman'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which magician made the Statue of Liberty "disappear" on live TV in 1983?', NULL,
        'David Copperfield', ARRAY['David Blaine', 'Harry Houdini', 'Criss Angel', 'Doug Henning', 'Penn Jillette', 'Lance Burton'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which magazine has named a "Person of the Year" since 1927?', NULL,
        'Time', ARRAY['Newsweek', 'Life', 'People', 'Forbes', 'Rolling Stone', 'The New Yorker'], 200, 'It began as "Man of the Year." Charles Lindbergh was the first, for 1927.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fast-food chain''s 1984 ads had an older woman demanding "Where''s the beef?"', NULL,
        'Wendy''s', ARRAY['McDonald''s', 'Burger King', 'Hardee''s', 'Jack in the Box', 'Arby''s', 'Carl''s Jr.'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which milk slogan appeared on the celebrity "milk mustache" ads from 1998 on?', NULL,
        '"Got Milk?"', ARRAY['"Drink Up!"', '"Milk It!"', '"Moo-ve Over"', '"Say Cheese"', '"Udderly Delicious"', '"Mustache March"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which brand''s ads promise "You''re not you when you''re hungry"?', NULL,
        'Snickers', ARRAY['Twix', 'Kit Kat', 'Milky Way', '3 Musketeers', 'Baby Ruth', 'PayDay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which department store''s parade fills New York with giant balloons every Thanksgiving morning?', NULL,
        'Macy''s', ARRAY['Gimbels', 'Saks Fifth Avenue', 'Bloomingdale''s', 'Sears', 'JCPenney', 'Lord & Taylor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2005 Christmas tradition has a "scout" that reports to Santa each night?', NULL,
        'The Elf on the Shelf', ARRAY['The Christmas Pickle', 'The Advent Calendar', 'Santa''s Spy Cam', 'The North Pole Pal', 'The Night Owl', 'The Snow Buddy'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'When Mr. Potato Head launched in 1952, what did kids have to supply themselves?', NULL,
        'A real potato', ARRAY['The eyes', 'The hat', 'The batteries', 'The shoes', 'A plastic body', 'The box'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s action figure was billed as "America''s movable fighting man"?', NULL,
        'G.I. Joe', ARRAY['Major Matt Mason', 'Captain Action', 'Big Jim', 'Johnny West', 'Stretch Armstrong', 'Action Man'], 300, NULL);
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
        'What did spring toy inventor Richard James see in 1943 that gave him the idea for the Slinky?', NULL,
        'A spring falling off a shelf', ARRAY['A snake on a staircase', 'A coiled telephone cord', 'A child''s toy accordion', 'A pile of wire', 'A bedspring bouncing', 'A clock unwinding'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What is the folded-paper fortune teller kids work with their fingers also called?', NULL,
        'A cootie catcher', ARRAY['A paper fortune', 'A finger puppet', 'A snap dragon', 'A magic square', 'A crown', 'A paper cootie'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2000s rubber bracelets, shaped like animals, snapped back into shape when you took them off?', NULL,
        'Silly Bandz', ARRAY['Jelly bracelets', 'Rainbow Loom', 'Livestrong bands', 'Slap bracelets', 'Shape Bands', 'Snap Bands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1980s talking teddy bear read stories from a cassette tape in his back?', NULL,
        'Teddy Ruxpin', ARRAY['Corduroy', 'Fozzie', 'Furby', 'Grubby', 'Snuggles', 'Paddington'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which website let 1999-2000s kids adopt and care for virtual pets like Kougras and Aishas?', NULL,
        'Neopets', ARRAY['Webkinz', 'Club Penguin', 'Habbo Hotel', 'Poptropica', 'Moshi Monsters', 'Tamagotchi Town'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which instant-messaging program popularized "away messages" and buddy lists around 2000?', NULL,
        'AIM', ARRAY['MSN Messenger', 'ICQ', 'Yahoo! Messenger', 'Skype', 'Gchat', 'Kik'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which internet company''s computer voice announced "You''ve got mail!"?', NULL,
        'AOL', ARRAY['Yahoo!', 'CompuServe', 'Prodigy', 'EarthLink', 'MSN', 'Netscape'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which word for someone who fakes an online identity to fool others came from a 2010 documentary?', NULL,
        'Catfish', ARRAY['Troll', 'Phisher', 'Sock puppet', 'Spoofer', 'Lurker', 'Shill'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2013 Oxford Dictionaries "Word of the Year" means a photo you take of yourself?', NULL,
        'Selfie', ARRAY['Snapshot', 'Portrait', 'Selfcam', 'Mirror shot', 'Headshot', 'Me-pic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which emoji was Oxford Dictionaries'' 2015 "Word of the Year"?', NULL,
        'Face with Tears of Joy', ARRAY['Red Heart', 'Thumbs Up', 'Smiling Face with Heart-Eyes', 'Loudly Crying Face', 'Pile of Poo', 'Rolling on the Floor Laughing'], 300, NULL);
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
        'Which phone company''s "Test Man" walked around asking "Can you hear me now? Good."?', NULL,
        'Verizon', ARRAY['AT&T', 'Sprint', 'T-Mobile', 'Nextel', 'Cingular', 'Cricket'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which beer brand''s 1999 ads had friends shouting "Wassup?!" into the phone?', NULL,
        'Budweiser', ARRAY['Miller Lite', 'Coors Light', 'Schlitz', 'Heineken', 'Corona', 'Pabst'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In 1997, which fast-food chain''s ads starred a talking Chihuahua?', NULL,
        'Taco Bell', ARRAY['Del Taco', 'Chipotle', 'Taco John''s', 'Jack in the Box', 'Burger King', 'Sonic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'How many licks does it take to get to the center of which lollipop, according to a famous owl?', NULL,
        'A Tootsie Pop', ARRAY['A Blow Pop', 'A Dum Dum', 'A Charms Pop', 'A Chupa Chups', 'A Jolly Rancher', 'A Ring Pop'], 300, NULL);
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
        'Which pilot landed a crippled airliner on New York''s Hudson River in 2009, saving everyone aboard?', NULL,
        'Chesley "Sully" Sullenberger', ARRAY['Jeffrey Skiles', 'Chuck Yeager', 'Tammie Jo Shults', 'Al Haynes', 'Bob Hoover', 'Jim Lovell'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'When it went up in 1923, what did the famous Hollywood sign say?', NULL,
        'Hollywoodland', ARRAY['Hollywood Hills', 'Hollywood Studios', 'Holly Woods', 'Hollywood Park', 'Hollywood Heights', 'Hollywood Estates'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'During 2020''s lockdowns, which homemade bread became a nationwide baking craze?', NULL,
        'Sourdough', ARRAY['Pretzels', 'Focaccia', 'Rye', 'Challah', 'Brioche', 'Cornbread'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which comic strip follows a 6-year-old boy and a stuffed tiger who comes alive when they''re alone?', NULL,
        'Calvin and Hobbes', ARRAY['Bloom County', 'The Far Side', 'Peanuts', 'Dennis the Menace', 'Foxtrot', 'Pearls Before Swine'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What was the "Y2K bug" fear?', NULL,
        'That computers would misread the year 2000 as 1900', ARRAY['That a virus would spread on New Year''s Day', 'That satellites would fall at midnight', 'That the power grid would hit its limit', 'That clocks would stop at midnight', 'That the internet would run out of addresses', 'That phones would stop ringing'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1938 radio drama, presented as live news of a Martian invasion, alarmed some listeners?', NULL,
        '"The War of the Worlds"', ARRAY['"The Invisible Man"', '"Invaders from Mars"', '"The Day the Earth Stood Still"', '"The Thing"', '"Flash Gordon"', '"Buck Rogers"'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which brand''s slogan is "Just Do It"?', NULL,
        'Nike', ARRAY['Adidas', 'Reebok', 'Puma', 'Under Armour', 'New Balance', 'Gatorade'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Known as "Wally" in Britain, which striped-shirted traveler hides in crowded picture books?', NULL,
        'Waldo', ARRAY['Carmen Sandiego', 'Odlaw', 'Flat Stanley', 'Curious George', 'Paddington', 'Tintin'], 300, NULL);

-- 400 points
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
        'Which Wham-O toy was first sold, in 1957, as the "Pluto Platter"?', NULL,
        'The Frisbee', ARRAY['The Hula-Hoop', 'The Slip ''N Slide', 'The Super Ball', 'The Boomerang', 'The Hacky Sack', 'The Water Wiggle'], 400, NULL);
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
        'What did the famous "I''ve fallen, and I can''t get up!" ads of the late 1980s sell?', NULL,
        'A medical alert button', ARRAY['A walker', 'A stair lift', 'A home phone', 'A pain-relief cream', 'A recliner chair', 'A security system'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 2013 dance-video craze had one masked person dancing alone, then everyone going wild when the bass dropped?', NULL,
        'The Harlem Shake', ARRAY['The Gangnam Style', 'The Nae Nae', 'The Dougie', 'The Cupid Shuffle', 'The Wobble', 'The Stanky Leg'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which famous yellow button design did artist Harvey Ball create in 1963 for an insurance company''s morale campaign?', NULL,
        'The smiley face', ARRAY['The peace sign', 'The happy sun', 'The thumbs-up', 'The yin-yang', 'The have-a-nice-day bee', 'The sunflower'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which collectible vinyl figures with oversized heads and boxy window packaging took over toy stores in the 2010s?', NULL,
        'Funko Pops', ARRAY['Bratz', 'Shopkins', 'L.O.L. Surprise!', 'Monster High', 'Lalaloopsy', 'Hatchimals'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which British engineer invented the Spirograph drawing toy in 1965?', NULL,
        'Denys Fisher', ARRAY['James Dyson', 'Clive Sinclair', 'Frank Hornby', 'Ole Kirk Christiansen', 'Richard James', 'Ernő Rubik'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s toy oven baked tiny cakes with the heat of a light bulb?', NULL,
        'The Easy-Bake Oven', ARRAY['The Kenner Kitchen', 'The Suzy Homemaker', 'The Lil'' Chef', 'The Bake-a-Rama', 'The Toastmaster Jr.', 'The Mini-Range'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960s toy let kids "draw" pictures by poking glowing colored pegs into a lit board?', NULL,
        'Lite-Brite', ARRAY['Colorforms', 'Glow Pegs', 'Glo-Doodle', 'Peg Art', 'Spirograph', 'Magna Doodle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What kind of creatures were "Sea-Monkeys," sold in comic book ads?', NULL,
        'Brine shrimp', ARRAY['Tiny monkeys', 'Sea horses', 'Tadpoles', 'Water fleas', 'Goldfish eggs', 'Jellyfish'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which shoe brand''s light-up sneakers were a 1990s playground hit?', NULL,
        'L.A. Gear', ARRAY['Reebok', 'Keds', 'Converse', 'Vans', 'K-Swiss', 'Fila'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which famous 1971 ad featured a crowd on a hilltop singing "I''d Like to Buy the World a ___"?', NULL,
        'Coke', ARRAY['Pepsi', 'Hug', 'Smile', 'Song', 'Dream', 'Rose'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'In the 1970s Life cereal ads, who liked it, after his brothers wouldn''t try it?', NULL,
        'Mikey', ARRAY['Timmy', 'Joey', 'Bobby', 'Danny', 'Billy', 'Johnny'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which fast-food mascot, a purple blob, is a friend of Ronald McDonald?', NULL,
        'Grimace', ARRAY['The Hamburglar', 'Birdie', 'Mayor McCheese', 'Officer Big Mac', 'The Fry Kids', 'Captain Crook'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which internet meme, a 1987 music video bait-and-switch, has fooled people since 2007?', NULL,
        'Rickrolling', ARRAY['Trolling', 'Catfishing', 'Planking', 'Doging', 'Vining', 'Numa-ing'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which tilting wooden maze, made famous by Sweden''s BRIO in 1946, has you steer a steel ball past holes with two knobs?', NULL,
        'Labyrinth', ARRAY['Perplexus', 'Marble Run', 'Mouse Trap', 'Kerplunk', 'Operation', 'Ball Maze'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1963 board game has players build a wacky contraption of cranks, a boot and a diving man to catch each other''s mice?', NULL,
        'Mouse Trap', ARRAY['Hungry Hungry Hippos', 'Kerplunk', 'Operation', 'Ants in the Pants', 'Barrel of Monkeys', 'Don''t Spill the Beans'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'What were "Furbies" accused of in 1999, getting them banned from some U.S. intelligence offices?', NULL,
        'Recording secrets', ARRAY['Spreading viruses', 'Causing headaches', 'Jamming radios', 'Tracking locations', 'Overheating', 'Scaring guard dogs'], 400, 'The NSA banned them, worried they could record and repeat what they heard. They couldn''t.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1976 action figure could be stretched to four times his size, then shrink back?', NULL,
        'Stretch Armstrong', ARRAY['Elastic Man', 'Mr. Fantastic', 'Plastic Man', 'Stretch Monster', 'Rubber Randy', 'Bendy Ben'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which 1960 Mattel doll spoke one of 11 phrases when you pulled her string?', NULL,
        'Chatty Cathy', ARRAY['Barbie', 'Baby Alive', 'Betsy Wetsy', 'Tiny Tears', 'Kissy', 'Talky Tina'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which bouncy toy did Lamar Hunt''s kids play with, inspiring him to name the NFL''s championship game?', NULL,
        'The Super Ball', ARRAY['The Hacky Sack', 'The Nerf ball', 'The Koosh ball', 'The Spaldeen', 'The Bouncy Castle', 'The Pogo Ball'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which scientist coined the word "meme" in his 1976 book "The Selfish Gene"?', NULL,
        'Richard Dawkins', ARRAY['Carl Sagan', 'Stephen Jay Gould', 'E.O. Wilson', 'Daniel Dennett', 'Steven Pinker', 'Stephen Hawking'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'POP_QUIZ', 'ORIGINAL', NULL,
        'Which egg-shaped toys "wobble, but they don''t fall down"?', NULL,
        'Weebles', ARRAY['Wobblers', 'Tumblers', 'Bobbles', 'Roly-Polies', 'Kewpies', 'Wiggles'], 400, NULL);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'POP_QUIZ';
