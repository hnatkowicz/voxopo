-- ============================================================================
-- content/sql/word_nerd.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/word_nerd.csv, the master copy of the
-- Thinking Pants category WORD_NERD. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORD_NERD';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "meticulous" mean?', NULL,
        'Extremely careful and precise', ARRAY['Easily annoyed', 'Very quick', 'Slightly messy', 'Showing off', 'Deeply sad', 'Overly cheerful'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "candid" mean?', NULL,
        'Honest and direct', ARRAY['Sweet and sugary', 'Secretive', 'Shy and quiet', 'Easily fooled', 'Bright and shiny', 'Polite but fake'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "frugal" mean?', NULL,
        'Careful with money', ARRAY['Full of fruit', 'Easily broken', 'Wasteful', 'Grumpy', 'Very fast', 'Overly emotional'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The first wrong answer is "malevolent," its opposite.', NULL,
        'What does "benevolent" mean?', NULL,
        'Kind and generous', ARRAY['Wishing harm on others', 'Very old', 'Easily bored', 'Proud', 'Lazy', 'Loud'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "audacious" mean?', NULL,
        'Bold and daring', ARRAY['Loud and noisy', 'Shy', 'Careful', 'Boring', 'Rude', 'Wealthy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "skeptical" mean?', NULL,
        'Doubtful', ARRAY['Bony', 'Gullible', 'Cheerful', 'Sleepy', 'Germ-free', 'Angry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Without a name" is "anonymous," the classic mix-up.', NULL,
        'What does "unanimous" mean?', NULL,
        'In complete agreement', ARRAY['Without a name', 'Undecided', 'Split down the middle', 'Unfriendly', 'One of a kind', 'Unexpected'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ominous" mean?', NULL,
        'Hinting that something bad is coming', ARRAY['All-knowing', 'Huge', 'Peaceful', 'Hopeful', 'Very loud', 'Ancient'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "plausible" mean?', NULL,
        'Believable', ARRAY['Worthy of applause', 'Ridiculous', 'Flexible', 'Delightful', 'Painful', 'Fake'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "minuscule" mean?', NULL,
        'Extremely small', ARRAY['Very muscular', 'Slightly late', 'Huge', 'Brief', 'Quiet', 'Cheap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "tele-" mean, as in "telescope" and "telephone"?', NULL,
        'Far', ARRAY['Small', 'Light', 'See', 'Sound', 'Near', 'Big'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "chrono-" mean, as in "chronological"?', NULL,
        'Time', ARRAY['Color', 'Light', 'Sound', 'Heat', 'Earth', 'Speed'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"I''ve told you a million times" is an example of what?', NULL,
        'Hyperbole', ARRAY['A simile', 'A metaphor', 'Onomatopoeia', 'Alliteration', 'Personification', 'Irony'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Words that imitate sounds, like "buzz" and "sizzle," are called what?', NULL,
        'Onomatopoeia', ARRAY['Alliteration', 'Hyperbole', 'Palindromes', 'Homophones', 'Acronyms', 'Idioms'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Busy as a bee" is an example of what?', NULL,
        'A simile', ARRAY['A metaphor', 'Hyperbole', 'An idiom', 'Alliteration', 'An oxymoron', 'Personification'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Their," "there" and "they''re" sound alike but mean different things. What are they called?', NULL,
        'Homophones', ARRAY['Homographs', 'Synonyms', 'Antonyms', 'Anagrams', 'Palindromes', 'Acronyms'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the opposite of a synonym?', NULL,
        'An antonym', ARRAY['A homonym', 'A pseudonym', 'An acronym', 'An anagram', 'An eponym', 'A homophone'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What do you call a word that reads the same forwards and backwards, like "racecar"?', NULL,
        'A palindrome', ARRAY['An anagram', 'An acronym', 'A homophone', 'An oxymoron', 'A spoonerism', 'A portmanteau'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Listen" and "silent" use exactly the same letters. What are they?', NULL,
        'Anagrams', ARRAY['Palindromes', 'Homophones', 'Synonyms', 'Antonyms', 'Homographs', 'Acronyms'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Jumbo shrimp" and "deafening silence" are examples of what?', NULL,
        'An oxymoron', ARRAY['A palindrome', 'A simile', 'Hyperbole', 'A pun', 'An idiom', 'An anagram'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A word made from the first letters of other words, like NASA, is called what?', NULL,
        'An acronym', ARRAY['An anagram', 'A palindrome', 'A homonym', 'A portmanteau', 'A contraction', 'An eponym'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of lions is called a what?', NULL,
        'A pride', ARRAY['A pack', 'A herd', 'A troop', 'A gang', 'A mob', 'A colony'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'On an invitation, "RSVP" comes from a French phrase meaning what?', NULL,
        'Please reply', ARRAY['Bring a guest', 'Dress formally', 'Arrive on time', 'No gifts, please', 'Food will be served', 'Seating is limited'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which food is named after an English earl who supposedly wanted to eat without leaving the card table?', NULL,
        'The sandwich', ARRAY['The hamburger', 'The hot dog', 'The pretzel', 'The biscuit', 'The pizza', 'The crumpet'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Phobia ladder: spiders (100), small spaces (200), heights (300), the number 13 (400). Entomophobia is insects, ophidiophobia snakes.', NULL,
        'What is the fear of spiders called?', NULL,
        'Arachnophobia', ARRAY['Agoraphobia', 'Claustrophobia', 'Acrophobia', 'Entomophobia', 'Ophidiophobia', 'Aquaphobia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "bon voyage" mean?', NULL,
        'Have a good trip', ARRAY['Good luck', 'See you soon', 'Welcome home', 'Enjoy your meal', 'Good evening', 'Safe and sound'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Biennial = every two years; biannual = twice a year.', NULL,
        'Which word means "happening once a year"?', NULL,
        'Annual', ARRAY['Biennial', 'Biannual', 'Centennial', 'Perpetual', 'Millennial', 'Quarterly'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Lots of love" is the famous parent mix-up.', NULL,
        'In a text message, what does "LOL" stand for?', NULL,
        'Laughing out loud', ARRAY['Lots of love', 'Lots of laughs', 'Laugh or leave', 'Living on luck', 'Look out, look', 'Lord of laughter'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which word means "to put off doing something until later"?', NULL,
        'Procrastinate', ARRAY['Pontificate', 'Prognosticate', 'Proliferate', 'Perpetuate', 'Precipitate', 'Prevaricate'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "reluctant" mean?', NULL,
        'Unwilling or hesitant', ARRAY['Very eager', 'Very loud', 'Easily lost', 'Running late', 'Shiny and new', 'Bouncing back'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "fragile" mean?', NULL,
        'Easily broken', ARRAY['Very heavy', 'Sweet-smelling', 'Full of energy', 'Brightly colored', 'Hard to find', 'Very old'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "vivid" mean?', NULL,
        'Bright and clear', ARRAY['Faded', 'Very quiet', 'Sticky', 'Dangerous', 'Hidden', 'Freezing'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "humble" mean?', NULL,
        'Modest, not proud', ARRAY['Damp and sticky', 'Rude', 'Lazy', 'Boastful', 'Grumpy', 'Humming happily'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "hilarious" mean?', NULL,
        'Extremely funny', ARRAY['Very tall', 'Hard to climb', 'Scary', 'Boring', 'Sad', 'Hairy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "drowsy" mean?', NULL,
        'Sleepy', ARRAY['Soaking wet', 'Thirsty', 'Dizzy', 'Grumpy', 'Dusty', 'Hungry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "generous" mean?', NULL,
        'Willing to give freely', ARRAY['Ordinary', 'Stingy', 'Clever', 'Very old', 'Shy', 'Careless'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "ancient" mean?', NULL,
        'Very old', ARRAY['Foreign', 'Fancy', 'Angry', 'Tiny', 'Brand-new', 'Far away'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'Which word means "to make something smaller"?', NULL,
        'Reduce', ARRAY['Expand', 'Enlarge', 'Produce', 'Induce', 'Repeat', 'Restore'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is the plural of "mouse" (the animal)?', NULL,
        'Mice', ARRAY['Mouses', 'Meese', 'Mousen', 'Mices', 'Mousi', 'Mouse'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'A word that describes a noun, like "blue" or "happy," is called what?', NULL,
        'An adjective', ARRAY['A verb', 'An adverb', 'A pronoun', 'A preposition', 'A conjunction', 'An article'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Quickly," "softly" and "loudly" are usually which part of speech?', NULL,
        'Adverbs', ARRAY['Adjectives', 'Verbs', 'Nouns', 'Pronouns', 'Prepositions', 'Conjunctions'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'Which punctuation mark shows ownership, as in "the dog''s bone"?', NULL,
        'An apostrophe', ARRAY['A comma', 'A hyphen', 'A quotation mark', 'A colon', 'A semicolon', 'A period'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does adding "un-" do to a word like "happy"?', NULL,
        'Makes it mean the opposite', ARRAY['Makes it bigger', 'Makes it past tense', 'Makes it plural', 'Makes it stronger', 'Makes it a noun', 'Makes it a question'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "bi-" mean, as in "bicycle"?', NULL,
        'Two', ARRAY['One', 'Three', 'Many', 'Wheel', 'Half', 'Around'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "aqua-" mean, as in "aquarium"?', NULL,
        'Water', ARRAY['Air', 'Fish', 'Blue', 'Glass', 'Light', 'Earth'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'In a text message, what does "BRB" stand for?', NULL,
        'Be right back', ARRAY['Bring it back', 'Big red button', 'Be really brave', 'Back real busy', 'Bye, rest, bye', 'Be ready, buddy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "ASAP" stand for?', NULL,
        'As soon as possible', ARRAY['Always say a prayer', 'As short as possible', 'Answer swiftly and politely', 'As safe as possible', 'All set and packed', 'Ask someone at practice'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "gigantic" mean?', NULL,
        'Huge', ARRAY['Giggly', 'Gentle', 'Shiny', 'Speedy', 'Tiny', 'Grumpy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is the word for the main character of a story?', NULL,
        'The protagonist', ARRAY['The antagonist', 'The narrator', 'The sidekick', 'The author', 'The chorus', 'The understudy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "curious" mean?', NULL,
        'Eager to know or learn', ARRAY['Angry', 'Sleepy', 'Rounded', 'Healing', 'Careful', 'Cozy'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Life is a rollercoaster" is an example of what?', NULL,
        'A metaphor', ARRAY['A simile', 'Hyperbole', 'Personification', 'Onomatopoeia', 'An idiom', 'Alliteration'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"The wind whispered through the trees" is an example of what?', NULL,
        'Personification', ARRAY['A simile', 'Hyperbole', 'Onomatopoeia', 'Alliteration', 'An oxymoron', 'Irony'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Peter Piper picked a peck of pickled peppers" is an example of what?', NULL,
        'Alliteration', ARRAY['Assonance', 'Rhyme', 'Onomatopoeia', 'A palindrome', 'Hyperbole', 'A pangram'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Don''t count your chickens before they hatch" is an example of what?', NULL,
        'A proverb', ARRAY['A simile', 'A palindrome', 'An oxymoron', 'A limerick', 'A pun', 'A haiku'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "omni-" mean, as in "omnivore"?', NULL,
        'All', ARRAY['Meat', 'Plants', 'Many', 'Eating', 'Large', 'None'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ubiquitous" mean?', NULL,
        'Found everywhere', ARRAY['Very rare', 'Very old', 'Extremely loud', 'Hard to understand', 'Constantly changing', 'Quick to anger'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "gregarious" mean?', NULL,
        'Sociable and outgoing', ARRAY['Greedy', 'Shy', 'Bossy', 'Grumpy', 'Heavy', 'Gloomy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "verbose" mean?', NULL,
        'Using more words than needed', ARRAY['Lacking words', 'Rude', 'Full of verbs', 'Honest', 'Very loud', 'Confusing'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Agoraphobia: open or crowded places. Nyctophobia: the dark. Coulrophobia: clowns.', NULL,
        'What is the fear of small or enclosed spaces called?', NULL,
        'Claustrophobia', ARRAY['Agoraphobia', 'Acrophobia', 'Arachnophobia', 'Nyctophobia', 'Aquaphobia', 'Coulrophobia'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Brunch" blends "breakfast" and "lunch." What is a blended word like this called?', NULL,
        'A portmanteau', ARRAY['An acronym', 'A contraction', 'An anagram', 'A palindrome', 'A spoonerism', 'An eponym'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "déjà vu" literally mean?', NULL,
        'Already seen', ARRAY['Never seen', 'Once again', 'Strange feeling', 'Dream memory', 'Past life', 'Too late'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A parliament is owls (the 300).', NULL,
        'A group of crows is called a what?', NULL,
        'A murder', ARRAY['A parliament', 'A gaggle', 'A pod', 'A pack', 'A colony', 'A swarm'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a bibliophile?', NULL,
        'A lover of books', ARRAY['A Bible scholar', 'A fear of books', 'A bookbinder', 'A speed reader', 'A bad writer', 'A book critic'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Self-Contained Underwater Breathing Apparatus.', NULL,
        'In "scuba," what does the S stand for?', NULL,
        'Self-contained', ARRAY['Submarine', 'Sea', 'Safety', 'Surface', 'Snorkel', 'Swimming'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Light Amplification by Stimulated Emission of Radiation.', NULL,
        '"Laser" started out as a set of initials. What does its L stand for?', NULL,
        'Light', ARRAY['Long', 'Linear', 'Liquid', 'Lens', 'Low', 'Luminous'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a "faux pas"?', NULL,
        'A social blunder', ARRAY['A fake friend', 'A dance move', 'A secret signal', 'A father figure', 'A fancy dinner', 'A small gift'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "carpe diem" mean?', NULL,
        'Seize the day', ARRAY['Fish of the day', 'Live and let live', 'Rest in peace', 'Day by day', 'Count the days', 'Love conquers all'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Latin "exempli gratia." "That is" is i.e.; "and so on" is etc.', NULL,
        'What does "e.g." stand for?', NULL,
        'For example', ARRAY['That is', 'And so on', 'Note well', 'Approximately', 'Especially', 'Namely'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a doppelgänger?', NULL,
        'A look-alike double', ARRAY['A German sausage', 'A noisy ghost', 'A two-faced liar', 'A clumsy giant', 'A lucky charm', 'A fortune teller'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Kindergarten" comes from German. What does it literally mean?', NULL,
        'Children''s garden', ARRAY['Children''s school', 'Little house', 'Kind teacher', 'Play yard', 'First class', 'Small people'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a pseudonym?', NULL,
        'A false name', ARRAY['A fake doctor', 'A word with two meanings', 'A false friend', 'A made-up word', 'A misspelling', 'A secret code'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the "&" symbol called?', NULL,
        'An ampersand', ARRAY['An asterisk', 'An octothorpe', 'A tilde', 'A caret', 'A pilcrow', 'An interrobang'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Alpha + beta.', NULL,
        'Where does the word "alphabet" come from?', NULL,
        'The first two Greek letters', ARRAY['Latin for "letter list"', 'An old English word for "writing"', 'The name of a Roman teacher', 'Hebrew for "beginning"', 'Greek for "sound marks"', 'A Phoenician king'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "incognito" mean?', NULL,
        'In disguise', ARRAY['Unconscious', 'Confused', 'In debt', 'Without a car', 'Uninvited', 'Underground'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "vice versa" mean?', NULL,
        'The other way around', ARRAY['Against the rules', 'In poetry', 'Bad habits', 'Word for word', 'Again and again', 'In other words'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ad nauseam" mean?', NULL,
        'Over and over, to a sickening degree', ARRAY['Seasick', 'By the sea', 'To the very end', 'For a fee', 'In advertising', 'In private'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "bona fide" mean?', NULL,
        'Genuine', ARRAY['Good dog', 'Faithful', 'Bone-dry', 'Free of charge', 'Good luck', 'Legally married'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is "..." (three dots that trail off) called?', NULL,
        'An ellipsis', ARRAY['An em dash', 'An asterisk', 'A colon', 'A tilde', 'An interrobang', 'A caret'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"After midnight" is the common guess.', NULL,
        'What do the letters "a.m." stand for?', NULL,
        'Ante meridiem (before midday)', ARRAY['After midnight', 'Ante matinee', 'Around midday', 'Anno mundi', 'After morning', 'At meridian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "resilient" mean?', NULL,
        'Able to bounce back', ARRAY['Very shiny', 'Easily annoyed', 'Stubborn', 'Quiet', 'Sticky', 'Nervous'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "diligent" mean?', NULL,
        'Hardworking and careful', ARRAY['Delicate', 'Lazy', 'Polite', 'Clever', 'Delighted', 'Hasty'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "eloquent" mean?', NULL,
        'Fluent and persuasive in speech', ARRAY['Elegant in dress', 'Very old', 'Slow-moving', 'Loud', 'Wise', 'Sneaky'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "impeccable" mean?', NULL,
        'Flawless', ARRAY['Impossible to eat', 'Unbreakable', 'Out of reach', 'Impatient', 'Rude', 'Imaginary'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "tedious" mean?', NULL,
        'Long and boring', ARRAY['Tidy', 'Tiny', 'Scary', 'Exciting', 'Sticky', 'Dangerous'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "inevitable" mean?', NULL,
        'Certain to happen', ARRAY['Invisible', 'Unlikely', 'Unbelievable', 'Unwelcome', 'Endless', 'Impossible'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "anonymous" mean?', NULL,
        'With no name given', ARRAY['Very large', 'Unanimous', 'Ancient', 'Shy', 'Angry', 'Secretive'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is insomnia?', NULL,
        'Trouble sleeping', ARRAY['Fear of the dark', 'Sleepwalking', 'Snoring', 'Oversleeping', 'Bad dreams', 'Talking in your sleep'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "micro-" mean, as in "microscope"?', NULL,
        'Small', ARRAY['Large', 'Many', 'Half', 'Far', 'Under', 'Fast'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "-ology" mean, as in "biology"?', NULL,
        'The study of', ARRAY['Fear of', 'Love of', 'Lack of', 'Making of', 'Measure of', 'Writer of'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "auto-" mean, as in "autobiography"?', NULL,
        'Self', ARRAY['Car', 'Life', 'Writing', 'Moving', 'Story', 'Many'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "geo-" mean, as in "geography"?', NULL,
        'Earth', ARRAY['Rock', 'Map', 'Sky', 'Water', 'Life', 'Travel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'A shortened word like "can''t" or "I''m" is called what?', NULL,
        'A contraction', ARRAY['An abbreviation', 'An acronym', 'A compound word', 'A portmanteau', 'An ellipsis', 'A prefix'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"It''s raining cats and dogs" is an example of what?', NULL,
        'An idiom', ARRAY['A simile', 'A proverb', 'A pun', 'Alliteration', 'A palindrome', 'An oxymoron'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"I used to be a banker, but I lost interest" is an example of what?', NULL,
        'A pun', ARRAY['A simile', 'A spoonerism', 'An idiom', 'An oxymoron', 'A malapropism', 'A metaphor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'At the end of a letter, what does "P.S." stand for?', NULL,
        'Postscript', ARRAY['Please see', 'Private secret', 'Personal statement', 'Paper sent', 'Past sentence', 'Previous signature'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "gullible" mean?', NULL,
        'Easily fooled', ARRAY['Hungry', 'Like a seagull', 'Talkative', 'Clumsy', 'Grumpy', 'Stubborn'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "serendipity" mean?', NULL,
        'A happy accident', ARRAY['Calm and peace', 'Deep sadness', 'Good manners', 'Strong friendship', 'Great courage', 'A sudden fear'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "jovial" mean?', NULL,
        'Cheerful and friendly', ARRAY['Jealous', 'Youthful', 'Jumpy', 'Royal', 'Stern', 'Talkative'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a eulogy?', NULL,
        'A speech praising someone who has died', ARRAY['A sad song', 'A farewell letter', 'A wedding toast', 'A written will', 'A thank-you note', 'A prayer before meals'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "ambiguous" mean?', NULL,
        'Open to more than one meaning', ARRAY['Ambitious', 'Able to use both hands', 'Moving slowly', 'Unfriendly', 'Very large', 'Full of energy'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ephemeral" mean?', NULL,
        'Lasting a very short time', ARRAY['Lasting forever', 'Ghostly', 'Feverish', 'Delicate and pretty', 'Very rare', 'Imaginary'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "clandestine" mean?', NULL,
        'Secret', ARRAY['Family-run', 'Noisy', 'Illegal', 'Forgotten', 'Sticky', 'Ancient'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "obstinate" mean?', NULL,
        'Stubborn', ARRAY['Obvious', 'Overweight', 'Rude', 'Hidden', 'Out of date', 'Nervous'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Able to use both hands" is ambidextrous.', NULL,
        'What does "ambivalent" mean?', NULL,
        'Having mixed feelings', ARRAY['Able to use both hands', 'Unaware', 'Hostile', 'Ambitious', 'Easygoing', 'Confident'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "arbitrary" mean?', NULL,
        'Based on random choice, not reason', ARRAY['Settled by a judge', 'Carefully planned', 'Related to trees', 'Very strict', 'Out of date', 'Shared equally'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "pragmatic" mean?', NULL,
        'Practical', ARRAY['Talkative', 'Boastful', 'Stubborn', 'Dreamy', 'Old-fashioned', 'Pushy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of owls is called a what?', NULL,
        'A parliament', ARRAY['A murder', 'A gaggle', 'A pride', 'A congress', 'A senate', 'A pod'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'County Mayo, 1880.', NULL,
        'The word "boycott" comes from Charles Boycott. Who was he?', NULL,
        'An Irish land agent his neighbors shunned', ARRAY['A pirate who refused to fight', 'A shopkeeper who went bankrupt', 'A captain who abandoned ship', 'A ballplayer who quit his team', 'A factory owner who fired everyone', 'A soldier who deserted'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Venice made arriving ships wait 40 days during plague outbreaks.', NULL,
        '"Quarantine" comes from an Italian phrase meaning what?', NULL,
        'Forty days', ARRAY['Sick house', 'Closed door', 'Stay alone', 'Safe harbor', 'Waiting room', 'Fever ward'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "schadenfreude" mean?', NULL,
        'Pleasure at someone else''s misfortune', ARRAY['Fear of missing out', 'Longing for home', 'Joy of being alone', 'Embarrassment for someone else', 'Guilt over success', 'Love of shade'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does a lexicographer do?', NULL,
        'Writes dictionaries', ARRAY['Studies maps', 'Reads palms', 'Studies rocks', 'Draws charts', 'Analyzes handwriting', 'Designs fonts'], 300, 'Samuel Johnson''s 1755 dictionary defined a lexicographer as "a harmless drudge."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the dot over a lowercase "i" or "j" called?', NULL,
        'A tittle', ARRAY['A jot', 'A tick', 'A pip', 'A speck', 'A serif', 'A crumb'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'The word "salary" comes from the Latin word for which everyday item?', NULL,
        'Salt', ARRAY['Bread', 'Silver', 'Wine', 'Grain', 'Oil', 'Cloth'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Aerophobia is fear of flying; basophobia, fear of falling. "Altophobia" is a made-up wrong answer.', NULL,
        'What is the fear of heights called?', NULL,
        'Acrophobia', ARRAY['Agoraphobia', 'Aerophobia', 'Altophobia', 'Claustrophobia', 'Basophobia', 'Hydrophobia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'After Rev. William Spooner of Oxford, who was famous for them.', NULL,
        'Saying "You have hissed all my mystery lectures" instead of "missed all my history lectures" is called what?', NULL,
        'A spoonerism', ARRAY['A malapropism', 'A palindrome', 'A portmanteau', 'An anagram', 'A pun', 'A tongue twister'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Passed away" instead of "died" is an example of what?', NULL,
        'A euphemism', ARRAY['Hyperbole', 'An oxymoron', 'A spoonerism', 'A pun', 'A simile', 'A palindrome'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '... --- ... was picked because it''s simple and unmistakable. "Save Our Souls" came later.', NULL,
        'What do the letters in the distress signal "SOS" stand for?', NULL,
        'Nothing: it''s just easy to send in Morse code', ARRAY['Save Our Souls', 'Save Our Ship', 'Send Out Sailors', 'Stop Or Sink', 'Signal Of Sinking', 'Ship On Sea'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'They were first sold as "Baby Gays," then "Q-tips Baby Gays," Q for quality.', NULL,
        'What does the "Q" in "Q-tips" stand for?', NULL,
        'Quality', ARRAY['Quick', 'Queen', 'Quilted', 'Quiet', 'Quarter', 'Quaint'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From "robota," in Karel Čapek''s 1920 play "R.U.R."', NULL,
        'The word "robot" comes from a Czech word meaning what?', NULL,
        'Forced labor', ARRAY['Metal man', 'Thinking machine', 'Clockwork', 'Iron soldier', 'Lightning', 'Electric brain'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Bad events were blamed on the stars.', NULL,
        '"Disaster" comes from Italian. What does it literally mean?', NULL,
        'Bad star', ARRAY['Great fire', 'Broken city', 'Falling sky', 'Evil wind', 'Dark day', 'Angry god'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Thomas Edison pushed "hello" as the way to answer the phone.', NULL,
        '"Hello" became the standard greeting thanks to which invention?', NULL,
        'The telephone', ARRAY['The radio', 'The telegraph', 'The doorbell', 'The printing press', 'The postcard', 'Television'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'It''s French for "left." "Showy and tasteless" is gaudy, the near-miss.', NULL,
        'What does "gauche" mean?', NULL,
        'Socially awkward', ARRAY['Showy and tasteless', 'Rich and elegant', 'Left-wing', 'Rude on purpose', 'Old-fashioned', 'Very French'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a "non sequitur"?', NULL,
        'A statement that doesn''t follow from what came before', ARRAY['A sentence with no verb', 'A question that can''t be answered', 'A story with no ending', 'A rule with no exceptions', 'A word with no rhyme', 'A promise not kept'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Literally "blank card."', NULL,
        'What does "carte blanche" mean?', NULL,
        'Complete freedom to act', ARRAY['A surrender', 'A menu', 'A fresh start', 'A white wedding', 'An empty promise', 'A free meal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"A secret deal" is close in spirit, but a quid pro quo needn''t be secret.', NULL,
        'What does "quid pro quo" mean?', NULL,
        'A favor in exchange for a favor', ARRAY['A small fee', 'A legal loophole', 'A fair fight', 'A secret deal', 'A friendly bet', 'A broken promise'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ennui" mean?', NULL,
        'Boredom and listlessness', ARRAY['Jealousy', 'Excitement', 'Homesickness', 'Embarrassment', 'Nervousness', 'Fury'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which letter is used most often in English?', NULL,
        'E', ARRAY['A', 'T', 'S', 'I', 'O', 'R'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A lipogram is the opposite: writing that leaves a letter out.', NULL,
        'A sentence using every letter of the alphabet, like "The quick brown fox jumps over the lazy dog," is called what?', NULL,
        'A pangram', ARRAY['An anagram', 'A palindrome', 'A lipogram', 'A tautogram', 'An acrostic', 'An epigram'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ergo" mean?', NULL,
        'Therefore', ARRAY['However', 'Also', 'Unless', 'Despite', 'Meanwhile', 'Instead'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a hypocrite?', NULL,
        'Someone who doesn''t practice what they preach', ARRAY['Someone who worries about their health', 'Someone who talks too much', 'Someone who copies others', 'Someone who is overly polite', 'Someone who hates change', 'Someone who can''t make decisions'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "tenacious" mean?', NULL,
        'Refusing to give up', ARRAY['Tense and nervous', 'Fragile', 'Ten times as large', 'Easily distracted', 'Gentle', 'Sneaky'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "facetious" mean?', NULL,
        'Joking at the wrong moment', ARRAY['Two-faced', 'Very polite', 'Very serious', 'Deceitful', 'Easily bored', 'Full of facts'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'The word "goodbye" is a shortening of which phrase?', NULL,
        'God be with you', ARRAY['Good day to you', 'Go by the way', 'Good night, sleep well', 'Go with God', 'Good luck, buy', 'Good boy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What do the letters "i.e." stand for?', NULL,
        'That is', ARRAY['In effect', 'In essence', 'Including everything', 'It ends', 'In excess', 'Internet edition'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "magnanimous" mean?', NULL,
        'Generous and forgiving', ARRAY['Huge', 'Magnetic', 'Proud', 'Talkative', 'Unanimous', 'Stubborn'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "superfluous" mean?', NULL,
        'More than is needed', ARRAY['Very fast', 'Fluent', 'Superior', 'Sickly', 'Super-strong', 'Watery'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a cacophony?', NULL,
        'A harsh mix of sounds', ARRAY['A bad cough', 'A pleasant melody', 'A large crowd', 'A fancy telephone', 'A mess of colors', 'A false accusation'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "nefarious" mean?', NULL,
        'Wicked', ARRAY['Faraway', 'Foolish', 'Shy', 'Lucky', 'Fierce', 'Clumsy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does it mean to "ostracize" someone?', NULL,
        'To shut them out', ARRAY['To praise them', 'To scold them', 'To copy them', 'To flatter them', 'To fool them', 'To hide them'], 300, 'Athenians voted to banish people by scratching names on pottery shards, called ostraka.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'Which piece of clothing is named after an earl who led the Charge of the Light Brigade?', NULL,
        'The cardigan', ARRAY['The blazer', 'The poncho', 'The tuxedo', 'The parka', 'The windbreaker', 'The jumper'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'A word named after a person, like "sandwich," is called what?', NULL,
        'An eponym', ARRAY['An acronym', 'An antonym', 'A pseudonym', 'A homonym', 'A synonym', 'A toponym'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a "red herring"?', NULL,
        'A misleading clue', ARRAY['A lucky charm', 'A secret password', 'A sure win', 'A rare find', 'A final clue', 'A smoking gun'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "verbatim" mean?', NULL,
        'Word for word', ARRAY['Out loud', 'In summary', 'In verse', 'In secret', 'Very quickly', 'In translation'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is an epiphany?', NULL,
        'A sudden realization', ARRAY['A sad ending', 'A long speech', 'A nightmare', 'A fancy party', 'A false belief', 'A lucky guess'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "mundane" mean?', NULL,
        'Ordinary and dull', ARRAY['Worldwide', 'Muddy', 'Sacred', 'Exciting', 'Monthly', 'Gloomy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "zealous" mean?', NULL,
        'Full of passionate enthusiasm', ARRAY['Jealous', 'Lazy', 'Cautious', 'Lonely', 'Cruel', 'Clumsy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "cryptic" mean?', NULL,
        'Mysterious and puzzling', ARRAY['Spooky', 'Frozen', 'Crisp', 'Ancient', 'Underground', 'Crying'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Hippopotamus" comes from Greek words meaning what?', NULL,
        'River horse', ARRAY['Water pig', 'Big mouth', 'Mud bull', 'Fat swimmer', 'Lake cow', 'River giant'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Dinosaur" comes from Greek words meaning what?', NULL,
        'Terrible lizard', ARRAY['Giant beast', 'Ancient bird', 'Thunder foot', 'Old dragon', 'Huge tooth', 'Earth walker'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Astronaut" comes from Greek words meaning what?', NULL,
        'Star sailor', ARRAY['Sky walker', 'Moon traveler', 'Space soldier', 'Night flier', 'Heaven climber', 'Rocket rider'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of flamingos is called a what?', NULL,
        'A flamboyance', ARRAY['A blush', 'A flourish', 'A parade', 'A pageant', 'A flutter', 'A boa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the formal name for the "#" symbol?', NULL,
        'Octothorpe', ARRAY['Ampersand', 'Pilcrow', 'Asterisk', 'Caret', 'Interrobang', 'Solidus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is "‽", a mix of "?" and "!", called?', NULL,
        'An interrobang', ARRAY['An octothorpe', 'A pilcrow', 'A shriek mark', 'A caret', 'A diaeresis', 'A quizbang'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The legal section sign is §.', NULL,
        'What does the pilcrow symbol (¶) mark?', NULL,
        'A new paragraph', ARRAY['A footnote', 'A copyright', 'A page break', 'A legal section', 'A quotation', 'A deleted word'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A flexing muscle looked like a mouse moving under the skin.', NULL,
        '"Muscle" comes from a Latin word meaning what?', NULL,
        'Little mouse', ARRAY['Little arm', 'Strong ox', 'Small stone', 'Little fish', 'Tiny horse', 'Young lion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Literally "a foot and a half long." A 150th anniversary is a sesquicentennial.', NULL,
        'What does "sesquipedalian" mean?', NULL,
        'Using long words', ARRAY['Having many feet', 'A 150th anniversary', 'Riding a bicycle', 'Moving very slowly', 'Standing on one foot', 'Afraid of feet'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is defenestration?', NULL,
        'Throwing someone out of a window', ARRAY['Removing a fence', 'Losing a sword fight', 'Cutting down a forest', 'Pulling teeth', 'Stripping a soldier of rank', 'Closing all the windows'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is petrichor?', NULL,
        'The earthy smell after rain', ARRAY['A fossilized tree', 'A choir of stones', 'A type of gasoline', 'Stone flooring', 'A rock-climbing knot', 'Morning dew'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is triskaidekaphobia?', NULL,
        'Fear of the number 13', ARRAY['Fear of triangles', 'Fear of tricycles', 'Fear of three-legged animals', 'Fear of long words', 'Fear of Fridays', 'Fear of being tricked'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'After Mrs. Malaprop in Sheridan''s 1775 play "The Rivals," who says it (for "pinnacle").', NULL,
        'Mixing up similar-sounding words for comic effect, like "the pineapple of politeness," is called what?', NULL,
        'A malapropism', ARRAY['A spoonerism', 'An oxymoron', 'An eggcorn', 'A pun', 'A mondegreen', 'A euphemism'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Hendrix sang "kiss the sky."', NULL,
        'Mishearing a song lyric, like "Excuse me while I kiss this guy," is called what?', NULL,
        'A mondegreen', ARRAY['A malapropism', 'A spoonerism', 'An eggcorn', 'An earworm', 'A homophone', 'A misnomer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Nostalgia" comes from Greek. What does it literally mean?', NULL,
        'Homecoming pain', ARRAY['Old memories', 'Sweet sadness', 'Lost time', 'Golden age', 'Dream of youth', 'Sleepless longing'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Votes were once cast by dropping small balls into a box.', NULL,
        '"Ballot" comes from an Italian word meaning what?', NULL,
        'Little ball', ARRAY['Paper slip', 'Secret box', 'Public voice', 'Small coin', 'Wooden token', 'Show of hands'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Civil War prison camps such as Andersonville.', NULL,
        'The word "deadline" first meant what?', NULL,
        'A line prisoners would be shot for crossing', ARRAY['The last train of the day', 'A rope on a sinking ship', 'A newspaper''s final print run', 'The edge of a cemetery', 'A finish line in horse racing', 'A telegraph wire that stopped working'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'X: Texas. Z: Arizona. J: New Jersey. K: Kansas. B: Nebraska. F: Florida.', NULL,
        'Which is the only letter that doesn''t appear in any U.S. state''s name?', NULL,
        'Q', ARRAY['X', 'Z', 'J', 'K', 'B', 'F'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Food for horses" is the joke guess.', NULL,
        '"Hors d''oeuvre" comes from French. What does it literally mean?', NULL,
        'Outside the work', ARRAY['Before the meal', 'Small bites', 'Gift of the house', 'Little plate', 'Food for horses', 'From the oven'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "syzygy" mean?', NULL,
        'Three heavenly bodies lining up', ARRAY['A Greek dance', 'A spelling with no vowels', 'A rhyme scheme', 'A kind of sea sponge', 'A fever dream', 'A two-handed sword'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "perspicacious" mean?', NULL,
        'Having sharp insight', ARRAY['Sweating heavily', 'Easily seen through', 'Stubbornly hopeful', 'Very spicy', 'Persuasive', 'Suspicious'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "obsequious" mean?', NULL,
        'Overly eager to please', ARRAY['Obsessed with details', 'Following in order', 'Hard to see', 'Unwilling to obey', 'Overly serious', 'Out of date'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "pusillanimous" mean?', NULL,
        'Cowardly', ARRAY['Pushy', 'Generous', 'Full of pus', 'Rude', 'Childish', 'Fussy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "loquacious" mean?', NULL,
        'Very talkative', ARRAY['Local', 'Crazy', 'Liquid', 'Lucky', 'Long-lived', 'Stubborn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "lugubrious" mean?', NULL,
        'Gloomy and mournful', ARRAY['Slippery', 'Clumsy', 'Greedy', 'Heavy', 'Lazy', 'Long-winded'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Faithful" is the opposite.', NULL,
        'What does "perfidious" mean?', NULL,
        'Untrustworthy', ARRAY['Perfect', 'Fragrant', 'Fussy', 'Endless', 'Fearless', 'Faithful'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the Oxford comma?', NULL,
        'A comma before the "and" at the end of a list', ARRAY['A comma after a greeting', 'A comma in a date', 'A comma joining two sentences', 'A comma used only in Britain', 'A comma in large numbers', 'A comma before a quote'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Like the thread Theseus used to find his way out of the Labyrinth.', NULL,
        'The word "clue" comes from "clew," which meant what?', NULL,
        'A ball of thread', ARRAY['A footprint', 'A riddle', 'A key', 'A torch', 'A whisper', 'A map'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Sinister" comes from a Latin word meaning what?', NULL,
        'Left', ARRAY['Evil', 'Dark', 'Hidden', 'Crooked', 'Secret', 'Snake'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Latin "nescius," ignorant.', NULL,
        'In Middle English, "nice" meant what?', NULL,
        'Foolish', ARRAY['Clean', 'Pretty', 'Gentle', 'Wealthy', 'Brave', 'Holy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is an aglet?', NULL,
        'The plastic tip of a shoelace', ARRAY['An eyelet', 'The metal band on a pencil', 'The loop on a belt', 'The tag on a teabag', 'The ring on a soda can', 'The clasp on a necklace'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The most common vowel sound in English, like the "a" in "about."', NULL,
        'What is the "schwa"?', NULL,
        'The unstressed "uh" vowel sound', ARRAY['A silent letter', 'A German umlaut', 'A rolled R', 'A Hebrew accent mark', 'A breathy H sound', 'A doubled consonant'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Shampoo" comes from Hindi, where it meant what?', NULL,
        'To press or massage', ARRAY['To wash', 'To bubble', 'Soap', 'Flower', 'Hair', 'To pour'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Trivia" comes from Latin for what?', NULL,
        'Where three roads meet', ARRAY['Three questions', 'Small talk', 'Common knowledge', 'A riddle', 'A marketplace', 'The third day'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "bucolic" mean?', NULL,
        'Of the countryside', ARRAY['Sickly', 'Stubborn', 'Plump', 'Bubbly', 'Colorful', 'Rowdy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a sobriquet?', NULL,
        'A nickname', ARRAY['A sober speech', 'A small bouquet', 'A wine glass', 'A short poem', 'A French pastry', 'A secret code'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "apocryphal" mean?', NULL,
        'Of doubtful truth', ARRAY['Doom-filled', 'Hidden underground', 'Holy', 'Ancient', 'Written in code', 'Prophetic'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "ineffable" mean?', NULL,
        'Too great to put into words', ARRAY['Useless', 'Unbeatable', 'Unable to be eaten', 'Clumsy', 'Easily fooled', 'Unforgivable'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does it mean to "obfuscate"?', NULL,
        'To make unclear', ARRAY['To make fat', 'To object', 'To obey', 'To make obvious', 'To delay', 'To insult'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "sanguine" mean?', NULL,
        'Cheerfully optimistic', ARRAY['Gloomy', 'Holy', 'Sweaty', 'Elderly', 'Stingy', 'Tired'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "quixotic" mean?', NULL,
        'Idealistic but impractical', ARRAY['Very quick', 'Quarrelsome', 'Strange and funny', 'Quiet', 'Easily angered', 'Shy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'In typography, what is "kerning"?', NULL,
        'Adjusting the space between letters', ARRAY['Making text bold', 'Lining up the margins', 'Choosing a font', 'Adding underlines', 'Spacing out lines', 'Slanting letters'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'The em dash (—) is named after what?', NULL,
        'The width of the letter M', ARRAY['The word "emphasis"', 'The letter E', 'The word "empty"', 'A Roman numeral', 'The Morse code for M', 'A printer named Emmett'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What is a snollygoster?', NULL,
        'A shrewd, unprincipled person', ARRAY['A sleepy child', 'A snowman', 'A sneezing fit', 'A ghost story', 'A greedy dog', 'A snoring sound'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "cattywampus" mean?', NULL,
        'Crooked or askew', ARRAY['Catlike', 'Noisy', 'Very angry', 'Overjoyed', 'Wet and muddy', 'Lazy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Companion" comes from Latin for someone you share what with?', NULL,
        'Bread', ARRAY['A roof', 'Wine', 'A road', 'A secret', 'A bed', 'A battle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Window" comes from an Old Norse word meaning what?', NULL,
        'Wind eye', ARRAY['Wall hole', 'Light door', 'Sky gate', 'Glass pane', 'Air door', 'Sun hole'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'In Old English, the "mare" in "nightmare" was what?', NULL,
        'An evil spirit that sat on sleepers', ARRAY['A female horse', 'A dark sea', 'A witch''s cat', 'A curse word', 'A storm cloud', 'A moonless night'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Berserk" comes from an Old Norse word usually explained as what?', NULL,
        'Bear shirt', ARRAY['Battle cry', 'Wild wolf', 'Mad king', 'Iron fist', 'Blood oath', 'Storm rider'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        '"Avatar" comes from a Sanskrit word meaning what?', NULL,
        'Descent', ARRAY['Mask', 'Spirit', 'Picture', 'Rebirth', 'Shadow', 'Messenger'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'Terms like "acoustic guitar" and "landline," coined only after something newer came along, are called what?', NULL,
        'Retronyms', ARRAY['Neologisms', 'Anachronisms', 'Backronyms', 'Euphemisms', 'Archaisms', 'Antonyms'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "hoi polloi" mean?', NULL,
        'The common people', ARRAY['The upper class', 'A fancy party', 'The ancient gods', 'A Greek chorus', 'Old money', 'Polite society'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'DEPTH_NOV_2026', NULL,
        'What does "mellifluous" mean?', NULL,
        'Sweet and smooth-sounding', ARRAY['Bitter and harsh', 'Mellow and lazy', 'Watery', 'Melancholy', 'Shrill', 'Fluffy'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORD_NERD';
