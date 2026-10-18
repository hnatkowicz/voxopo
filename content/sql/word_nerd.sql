-- ============================================================================
-- content/sql/word_nerd.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/word_nerd.csv, the master copy of the
-- Thinking Pants category WORD_NERD. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORD_NERD';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "meticulous" mean?', NULL,
        'Extremely careful and precise', ARRAY['Easily annoyed', 'Very quick', 'Slightly messy', 'Showing off', 'Deeply sad', 'Overly cheerful'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "candid" mean?', NULL,
        'Honest and direct', ARRAY['Sweet and sugary', 'Secretive', 'Shy and quiet', 'Easily fooled', 'Bright and shiny', 'Polite but fake'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "frugal" mean?', NULL,
        'Careful with money', ARRAY['Full of fruit', 'Easily broken', 'Wasteful', 'Grumpy', 'Very fast', 'Overly emotional'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The first wrong answer is "malevolent," its opposite.', NULL,
        'What does "benevolent" mean?', NULL,
        'Kind and generous', ARRAY['Wishing harm on others', 'Very old', 'Easily bored', 'Proud', 'Lazy', 'Loud'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "audacious" mean?', NULL,
        'Bold and daring', ARRAY['Loud and noisy', 'Shy', 'Careful', 'Boring', 'Rude', 'Wealthy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "skeptical" mean?', NULL,
        'Doubtful', ARRAY['Bony', 'Gullible', 'Cheerful', 'Sleepy', 'Germ-free', 'Angry'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Without a name" is "anonymous," the classic mix-up.', NULL,
        'What does "unanimous" mean?', NULL,
        'In complete agreement', ARRAY['Without a name', 'Undecided', 'Split down the middle', 'Unfriendly', 'One of a kind', 'Unexpected'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ominous" mean?', NULL,
        'Hinting that something bad is coming', ARRAY['All-knowing', 'Huge', 'Peaceful', 'Hopeful', 'Very loud', 'Ancient'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "plausible" mean?', NULL,
        'Believable', ARRAY['Worthy of applause', 'Ridiculous', 'Flexible', 'Delightful', 'Painful', 'Fake'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "minuscule" mean?', NULL,
        'Extremely small', ARRAY['Very muscular', 'Slightly late', 'Huge', 'Brief', 'Quiet', 'Cheap'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "tele-" mean, as in "telescope" and "telephone"?', NULL,
        'Far', ARRAY['Small', 'Light', 'See', 'Sound', 'Near', 'Big'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "chrono-" mean, as in "chronological"?', NULL,
        'Time', ARRAY['Color', 'Light', 'Sound', 'Heat', 'Earth', 'Speed'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"I''ve told you a million times" is an example of what?', NULL,
        'Hyperbole', ARRAY['A simile', 'A metaphor', 'Onomatopoeia', 'Alliteration', 'Personification', 'Irony'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Words that imitate sounds, like "buzz" and "sizzle," are called what?', NULL,
        'Onomatopoeia', ARRAY['Alliteration', 'Hyperbole', 'Palindromes', 'Homophones', 'Acronyms', 'Idioms'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Busy as a bee" is an example of what?', NULL,
        'A simile', ARRAY['A metaphor', 'Hyperbole', 'An idiom', 'Alliteration', 'An oxymoron', 'Personification'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Their," "there" and "they''re" sound alike but mean different things. What are they called?', NULL,
        'Homophones', ARRAY['Homographs', 'Synonyms', 'Antonyms', 'Anagrams', 'Palindromes', 'Acronyms'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the opposite of a synonym?', NULL,
        'An antonym', ARRAY['A homonym', 'A pseudonym', 'An acronym', 'An anagram', 'An eponym', 'A homophone'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What do you call a word that reads the same forwards and backwards, like "racecar"?', NULL,
        'A palindrome', ARRAY['An anagram', 'An acronym', 'A homophone', 'An oxymoron', 'A spoonerism', 'A portmanteau'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Listen" and "silent" use exactly the same letters. What are they?', NULL,
        'Anagrams', ARRAY['Palindromes', 'Homophones', 'Synonyms', 'Antonyms', 'Homographs', 'Acronyms'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Jumbo shrimp" and "deafening silence" are examples of what?', NULL,
        'An oxymoron', ARRAY['A palindrome', 'A simile', 'Hyperbole', 'A pun', 'An idiom', 'An anagram'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A word made from the first letters of other words, like NASA, is called what?', NULL,
        'An acronym', ARRAY['An anagram', 'A palindrome', 'A homonym', 'A portmanteau', 'A contraction', 'An eponym'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of lions is called a what?', NULL,
        'A pride', ARRAY['A pack', 'A herd', 'A troop', 'A gang', 'A mob', 'A colony'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'On an invitation, "RSVP" comes from a French phrase meaning what?', NULL,
        'Please reply', ARRAY['Bring a guest', 'Dress formally', 'Arrive on time', 'No gifts, please', 'Food will be served', 'Seating is limited'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which food is named after an English earl who supposedly wanted to eat without leaving the card table?', NULL,
        'The sandwich', ARRAY['The hamburger', 'The hot dog', 'The pretzel', 'The biscuit', 'The pizza', 'The crumpet'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Spelling ladder: necessary (100), accommodate (200), millennium (300), supersede (400).', NULL,
        'Spelling bee: which is correct?', NULL,
        'Necessary', ARRAY['Neccessary', 'Necessery', 'Neccesary', 'Necesary', 'Nessecary', 'Neccessery'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Phobia ladder: spiders (100), small spaces (200), heights (300), the number 13 (400). Entomophobia is insects, ophidiophobia snakes.', NULL,
        'What is the fear of spiders called?', NULL,
        'Arachnophobia', ARRAY['Agoraphobia', 'Claustrophobia', 'Acrophobia', 'Entomophobia', 'Ophidiophobia', 'Aquaphobia'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "bon voyage" mean?', NULL,
        'Have a good trip', ARRAY['Good luck', 'See you soon', 'Welcome home', 'Enjoy your meal', 'Good evening', 'Safe and sound'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Biennial = every two years; biannual = twice a year.', NULL,
        'Which word means "happening once a year"?', NULL,
        'Annual', ARRAY['Biennial', 'Biannual', 'Centennial', 'Perpetual', 'Millennial', 'Quarterly'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Lots of love" is the famous parent mix-up.', NULL,
        'In a text message, what does "LOL" stand for?', NULL,
        'Laughing out loud', ARRAY['Lots of love', 'Lots of laughs', 'Laugh or leave', 'Living on luck', 'Look out, look', 'Lord of laughter'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which word means "to put off doing something until later"?', NULL,
        'Procrastinate', ARRAY['Pontificate', 'Prognosticate', 'Proliferate', 'Perpetuate', 'Precipitate', 'Prevaricate'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Life is a rollercoaster" is an example of what?', NULL,
        'A metaphor', ARRAY['A simile', 'Hyperbole', 'Personification', 'Onomatopoeia', 'An idiom', 'Alliteration'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"The wind whispered through the trees" is an example of what?', NULL,
        'Personification', ARRAY['A simile', 'Hyperbole', 'Onomatopoeia', 'Alliteration', 'An oxymoron', 'Irony'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Peter Piper picked a peck of pickled peppers" is an example of what?', NULL,
        'Alliteration', ARRAY['Assonance', 'Rhyme', 'Onomatopoeia', 'A palindrome', 'Hyperbole', 'A pangram'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        '"Don''t count your chickens before they hatch" is an example of what?', NULL,
        'A proverb', ARRAY['A simile', 'A palindrome', 'An oxymoron', 'A limerick', 'A pun', 'A haiku'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "omni-" mean, as in "omnivore"?', NULL,
        'All', ARRAY['Meat', 'Plants', 'Many', 'Eating', 'Large', 'None'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ubiquitous" mean?', NULL,
        'Found everywhere', ARRAY['Very rare', 'Very old', 'Extremely loud', 'Hard to understand', 'Constantly changing', 'Quick to anger'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "gregarious" mean?', NULL,
        'Sociable and outgoing', ARRAY['Greedy', 'Shy', 'Bossy', 'Grumpy', 'Heavy', 'Gloomy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "verbose" mean?', NULL,
        'Using more words than needed', ARRAY['Lacking words', 'Rude', 'Full of verbs', 'Honest', 'Very loud', 'Confusing'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Agoraphobia: open or crowded places. Nyctophobia: the dark. Coulrophobia: clowns.', NULL,
        'What is the fear of small or enclosed spaces called?', NULL,
        'Claustrophobia', ARRAY['Agoraphobia', 'Acrophobia', 'Arachnophobia', 'Nyctophobia', 'Aquaphobia', 'Coulrophobia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Brunch" blends "breakfast" and "lunch." What is a blended word like this called?', NULL,
        'A portmanteau', ARRAY['An acronym', 'A contraction', 'An anagram', 'A palindrome', 'A spoonerism', 'An eponym'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "déjà vu" literally mean?', NULL,
        'Already seen', ARRAY['Never seen', 'Once again', 'Strange feeling', 'Dream memory', 'Past life', 'Too late'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A parliament is owls (the 300).', NULL,
        'A group of crows is called a what?', NULL,
        'A murder', ARRAY['A parliament', 'A gaggle', 'A pod', 'A pack', 'A colony', 'A swarm'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a bibliophile?', NULL,
        'A lover of books', ARRAY['A Bible scholar', 'A fear of books', 'A bookbinder', 'A speed reader', 'A bad writer', 'A book critic'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Self-Contained Underwater Breathing Apparatus.', NULL,
        'In "scuba," what does the S stand for?', NULL,
        'Self-contained', ARRAY['Submarine', 'Sea', 'Safety', 'Surface', 'Snorkel', 'Swimming'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Light Amplification by Stimulated Emission of Radiation.', NULL,
        '"Laser" started out as a set of initials. What does its L stand for?', NULL,
        'Light', ARRAY['Long', 'Linear', 'Liquid', 'Lens', 'Low', 'Luminous'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Spelling bee, round 2: which is correct?', NULL,
        'Accommodate', ARRAY['Accomodate', 'Acommodate', 'Acomodate', 'Accomadate', 'Acommadate', 'Accommadate'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a "faux pas"?', NULL,
        'A social blunder', ARRAY['A fake friend', 'A dance move', 'A secret signal', 'A father figure', 'A fancy dinner', 'A small gift'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "carpe diem" mean?', NULL,
        'Seize the day', ARRAY['Fish of the day', 'Live and let live', 'Rest in peace', 'Day by day', 'Count the days', 'Love conquers all'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Latin "exempli gratia." "That is" is i.e.; "and so on" is etc.', NULL,
        'What does "e.g." stand for?', NULL,
        'For example', ARRAY['That is', 'And so on', 'Note well', 'Approximately', 'Especially', 'Namely'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a doppelgänger?', NULL,
        'A look-alike double', ARRAY['A German sausage', 'A noisy ghost', 'A two-faced liar', 'A clumsy giant', 'A lucky charm', 'A fortune teller'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Kindergarten" comes from German. What does it literally mean?', NULL,
        'Children''s garden', ARRAY['Children''s school', 'Little house', 'Kind teacher', 'Play yard', 'First class', 'Small people'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a pseudonym?', NULL,
        'A false name', ARRAY['A fake doctor', 'A word with two meanings', 'A false friend', 'A made-up word', 'A misspelling', 'A secret code'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the "&" symbol called?', NULL,
        'An ampersand', ARRAY['An asterisk', 'An octothorpe', 'A tilde', 'A caret', 'A pilcrow', 'An interrobang'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Alpha + beta.', NULL,
        'Where does the word "alphabet" come from?', NULL,
        'The first two Greek letters', ARRAY['Latin for "letter list"', 'An old English word for "writing"', 'The name of a Roman teacher', 'Hebrew for "beginning"', 'Greek for "sound marks"', 'A Phoenician king'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "incognito" mean?', NULL,
        'In disguise', ARRAY['Unconscious', 'Confused', 'In debt', 'Without a car', 'Uninvited', 'Underground'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "vice versa" mean?', NULL,
        'The other way around', ARRAY['Against the rules', 'In poetry', 'Bad habits', 'Word for word', 'Again and again', 'In other words'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ad nauseam" mean?', NULL,
        'Over and over, to a sickening degree', ARRAY['Seasick', 'By the sea', 'To the very end', 'For a fee', 'In advertising', 'In private'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "bona fide" mean?', NULL,
        'Genuine', ARRAY['Good dog', 'Faithful', 'Bone-dry', 'Free of charge', 'Good luck', 'Legally married'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is "..." (three dots that trail off) called?', NULL,
        'An ellipsis', ARRAY['An em dash', 'An asterisk', 'A colon', 'A tilde', 'An interrobang', 'A caret'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"After midnight" is the common guess.', NULL,
        'What do the letters "a.m." stand for?', NULL,
        'Ante meridiem (before midday)', ARRAY['After midnight', 'Ante matinee', 'Around midday', 'Anno mundi', 'After morning', 'At meridian'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "ephemeral" mean?', NULL,
        'Lasting a very short time', ARRAY['Lasting forever', 'Ghostly', 'Feverish', 'Delicate and pretty', 'Very rare', 'Imaginary'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "clandestine" mean?', NULL,
        'Secret', ARRAY['Family-run', 'Noisy', 'Illegal', 'Forgotten', 'Sticky', 'Ancient'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "obstinate" mean?', NULL,
        'Stubborn', ARRAY['Obvious', 'Overweight', 'Rude', 'Hidden', 'Out of date', 'Nervous'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Able to use both hands" is ambidextrous.', NULL,
        'What does "ambivalent" mean?', NULL,
        'Having mixed feelings', ARRAY['Able to use both hands', 'Unaware', 'Hostile', 'Ambitious', 'Easygoing', 'Confident'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "arbitrary" mean?', NULL,
        'Based on random choice, not reason', ARRAY['Settled by a judge', 'Carefully planned', 'Related to trees', 'Very strict', 'Out of date', 'Shared equally'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What does "pragmatic" mean?', NULL,
        'Practical', ARRAY['Talkative', 'Boastful', 'Stubborn', 'Dreamy', 'Old-fashioned', 'Pushy'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of owls is called a what?', NULL,
        'A parliament', ARRAY['A murder', 'A gaggle', 'A pride', 'A congress', 'A senate', 'A pod'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Spelling bee, round 3: which is correct?', NULL,
        'Millennium', ARRAY['Millenium', 'Milennium', 'Milenium', 'Millenniem', 'Millinium', 'Milleneum'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'County Mayo, 1880.', NULL,
        'The word "boycott" comes from Charles Boycott. Who was he?', NULL,
        'An Irish land agent his neighbors shunned', ARRAY['A pirate who refused to fight', 'A shopkeeper who went bankrupt', 'A captain who abandoned ship', 'A ballplayer who quit his team', 'A factory owner who fired everyone', 'A soldier who deserted'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Venice made arriving ships wait 40 days during plague outbreaks.', NULL,
        '"Quarantine" comes from an Italian phrase meaning what?', NULL,
        'Forty days', ARRAY['Sick house', 'Closed door', 'Stay alone', 'Safe harbor', 'Waiting room', 'Fever ward'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "schadenfreude" mean?', NULL,
        'Pleasure at someone else''s misfortune', ARRAY['Fear of missing out', 'Longing for home', 'Joy of being alone', 'Embarrassment for someone else', 'Guilt over success', 'Love of shade'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does a lexicographer do?', NULL,
        'Writes dictionaries', ARRAY['Studies maps', 'Reads palms', 'Studies rocks', 'Draws charts', 'Analyzes handwriting', 'Designs fonts'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the dot over a lowercase "i" or "j" called?', NULL,
        'A tittle', ARRAY['A jot', 'A tick', 'A pip', 'A speck', 'A serif', 'A crumb'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'The word "salary" comes from the Latin word for which everyday item?', NULL,
        'Salt', ARRAY['Bread', 'Silver', 'Wine', 'Grain', 'Oil', 'Cloth'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Aerophobia is fear of flying; basophobia, fear of falling. "Altophobia" is a made-up wrong answer.', NULL,
        'What is the fear of heights called?', NULL,
        'Acrophobia', ARRAY['Agoraphobia', 'Aerophobia', 'Altophobia', 'Claustrophobia', 'Basophobia', 'Hydrophobia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'After Rev. William Spooner of Oxford, who was famous for them.', NULL,
        'Saying "You have hissed all my mystery lectures" instead of "missed all my history lectures" is called what?', NULL,
        'A spoonerism', ARRAY['A malapropism', 'A palindrome', 'A portmanteau', 'An anagram', 'A pun', 'A tongue twister'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Passed away" instead of "died" is an example of what?', NULL,
        'A euphemism', ARRAY['Hyperbole', 'An oxymoron', 'A spoonerism', 'A pun', 'A simile', 'A palindrome'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '... --- ... was picked because it''s simple and unmistakable. "Save Our Souls" came later.', NULL,
        'What do the letters in the distress signal "SOS" stand for?', NULL,
        'Nothing: it''s just easy to send in Morse code', ARRAY['Save Our Souls', 'Save Our Ship', 'Send Out Sailors', 'Stop Or Sink', 'Signal Of Sinking', 'Ship On Sea'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'They were first sold as "Baby Gays," then "Q-tips Baby Gays," Q for quality.', NULL,
        'What does the "Q" in "Q-tips" stand for?', NULL,
        'Quality', ARRAY['Quick', 'Queen', 'Quilted', 'Quiet', 'Quarter', 'Quaint'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From "robota," in Karel Čapek''s 1920 play "R.U.R."', NULL,
        'The word "robot" comes from a Czech word meaning what?', NULL,
        'Forced labor', ARRAY['Metal man', 'Thinking machine', 'Clockwork', 'Iron soldier', 'Lightning', 'Electric brain'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Bad events were blamed on the stars.', NULL,
        '"Disaster" comes from Italian. What does it literally mean?', NULL,
        'Bad star', ARRAY['Great fire', 'Broken city', 'Falling sky', 'Evil wind', 'Dark day', 'Angry god'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Thomas Edison pushed "hello" as the way to answer the phone.', NULL,
        '"Hello" became the standard greeting thanks to which invention?', NULL,
        'The telephone', ARRAY['The radio', 'The telegraph', 'The doorbell', 'The printing press', 'The postcard', 'Television'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'It''s French for "left." "Showy and tasteless" is gaudy, the near-miss.', NULL,
        'What does "gauche" mean?', NULL,
        'Socially awkward', ARRAY['Showy and tasteless', 'Rich and elegant', 'Left-wing', 'Rude on purpose', 'Old-fashioned', 'Very French'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is a "non sequitur"?', NULL,
        'A statement that doesn''t follow from what came before', ARRAY['A sentence with no verb', 'A question that can''t be answered', 'A story with no ending', 'A rule with no exceptions', 'A word with no rhyme', 'A promise not kept'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Literally "blank card."', NULL,
        'What does "carte blanche" mean?', NULL,
        'Complete freedom to act', ARRAY['A surrender', 'A menu', 'A fresh start', 'A white wedding', 'An empty promise', 'A free meal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"A secret deal" is close in spirit, but a quid pro quo needn''t be secret.', NULL,
        'What does "quid pro quo" mean?', NULL,
        'A favor in exchange for a favor', ARRAY['A small fee', 'A legal loophole', 'A fair fight', 'A secret deal', 'A friendly bet', 'A broken promise'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ennui" mean?', NULL,
        'Boredom and listlessness', ARRAY['Jealousy', 'Excitement', 'Homesickness', 'Embarrassment', 'Nervousness', 'Fury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'Which letter is used most often in English?', NULL,
        'E', ARRAY['A', 'T', 'S', 'I', 'O', 'R'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A lipogram is the opposite: writing that leaves a letter out.', NULL,
        'A sentence using every letter of the alphabet, like "The quick brown fox jumps over the lazy dog," is called what?', NULL,
        'A pangram', ARRAY['An anagram', 'A palindrome', 'A lipogram', 'A tautogram', 'An acrostic', 'An epigram'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "ergo" mean?', NULL,
        'Therefore', ARRAY['However', 'Also', 'Unless', 'Despite', 'Meanwhile', 'Instead'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'A group of flamingos is called a what?', NULL,
        'A flamboyance', ARRAY['A blush', 'A flourish', 'A parade', 'A pageant', 'A flutter', 'A boa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the formal name for the "#" symbol?', NULL,
        'Octothorpe', ARRAY['Ampersand', 'Pilcrow', 'Asterisk', 'Caret', 'Interrobang', 'Solidus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is "‽", a mix of "?" and "!", called?', NULL,
        'An interrobang', ARRAY['An octothorpe', 'A pilcrow', 'A shriek mark', 'A caret', 'A diaeresis', 'A quizbang'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The legal section sign is §.', NULL,
        'What does the pilcrow symbol (¶) mark?', NULL,
        'A new paragraph', ARRAY['A footnote', 'A copyright', 'A page break', 'A legal section', 'A quotation', 'A deleted word'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'A flexing muscle looked like a mouse moving under the skin.', NULL,
        '"Muscle" comes from a Latin word meaning what?', NULL,
        'Little mouse', ARRAY['Little arm', 'Strong ox', 'Small stone', 'Little fish', 'Tiny horse', 'Young lion'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Literally "a foot and a half long." A 150th anniversary is a sesquicentennial.', NULL,
        'What does "sesquipedalian" mean?', NULL,
        'Using long words', ARRAY['Having many feet', 'A 150th anniversary', 'Riding a bicycle', 'Moving very slowly', 'Standing on one foot', 'Afraid of feet'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is defenestration?', NULL,
        'Throwing someone out of a window', ARRAY['Removing a fence', 'Losing a sword fight', 'Cutting down a forest', 'Pulling teeth', 'Stripping a soldier of rank', 'Closing all the windows'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is petrichor?', NULL,
        'The earthy smell after rain', ARRAY['A fossilized tree', 'A choir of stones', 'A type of gasoline', 'Stone flooring', 'A rock-climbing knot', 'Morning dew'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is triskaidekaphobia?', NULL,
        'Fear of the number 13', ARRAY['Fear of triangles', 'Fear of tricycles', 'Fear of three-legged animals', 'Fear of long words', 'Fear of Fridays', 'Fear of being tricked'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'After Mrs. Malaprop in Sheridan''s 1775 play "The Rivals," who says it (for "pinnacle").', NULL,
        'Mixing up similar-sounding words for comic effect, like "the pineapple of politeness," is called what?', NULL,
        'A malapropism', ARRAY['A spoonerism', 'An oxymoron', 'An eggcorn', 'A pun', 'A mondegreen', 'A euphemism'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Hendrix sang "kiss the sky."', NULL,
        'Mishearing a song lyric, like "Excuse me while I kiss this guy," is called what?', NULL,
        'A mondegreen', ARRAY['A malapropism', 'A spoonerism', 'An eggcorn', 'An earworm', 'A homophone', 'A misnomer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Supercede" is the common mistake.', NULL,
        'Spelling bee, final round: which is correct?', NULL,
        'Supersede', ARRAY['Supercede', 'Superseed', 'Supersead', 'Superceed', 'Superscede', 'Superseede'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Nostalgia" comes from Greek. What does it literally mean?', NULL,
        'Homecoming pain', ARRAY['Old memories', 'Sweet sadness', 'Lost time', 'Golden age', 'Dream of youth', 'Sleepless longing'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Votes were once cast by dropping small balls into a box.', NULL,
        '"Ballot" comes from an Italian word meaning what?', NULL,
        'Little ball', ARRAY['Paper slip', 'Secret box', 'Public voice', 'Small coin', 'Wooden token', 'Show of hands'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Civil War prison camps such as Andersonville.', NULL,
        'The word "deadline" first meant what?', NULL,
        'A line prisoners would be shot for crossing', ARRAY['The last train of the day', 'A rope on a sinking ship', 'A newspaper''s final print run', 'The edge of a cemetery', 'A finish line in horse racing', 'A telegraph wire that stopped working'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'X: Texas. Z: Arizona. J: New Jersey. K: Kansas. B: Nebraska. F: Florida.', NULL,
        'Which is the only letter that doesn''t appear in any U.S. state''s name?', NULL,
        'Q', ARRAY['X', 'Z', 'J', 'K', 'B', 'F'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Food for horses" is the joke guess.', NULL,
        '"Hors d''oeuvre" comes from French. What does it literally mean?', NULL,
        'Outside the work', ARRAY['Before the meal', 'Small bites', 'Gift of the house', 'Little plate', 'Food for horses', 'From the oven'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "syzygy" mean?', NULL,
        'Three heavenly bodies lining up', ARRAY['A Greek dance', 'A spelling with no vowels', 'A rhyme scheme', 'A kind of sea sponge', 'A fever dream', 'A two-handed sword'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "perspicacious" mean?', NULL,
        'Having sharp insight', ARRAY['Sweating heavily', 'Easily seen through', 'Stubbornly hopeful', 'Very spicy', 'Persuasive', 'Suspicious'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "obsequious" mean?', NULL,
        'Overly eager to please', ARRAY['Obsessed with details', 'Following in order', 'Hard to see', 'Unwilling to obey', 'Overly serious', 'Out of date'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "pusillanimous" mean?', NULL,
        'Cowardly', ARRAY['Pushy', 'Generous', 'Full of pus', 'Rude', 'Childish', 'Fussy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "loquacious" mean?', NULL,
        'Very talkative', ARRAY['Local', 'Crazy', 'Liquid', 'Lucky', 'Long-lived', 'Stubborn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What does "lugubrious" mean?', NULL,
        'Gloomy and mournful', ARRAY['Slippery', 'Clumsy', 'Greedy', 'Heavy', 'Lazy', 'Long-winded'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', '"Faithful" is the opposite.', NULL,
        'What does "perfidious" mean?', NULL,
        'Untrustworthy', ARRAY['Perfect', 'Fragrant', 'Fussy', 'Endless', 'Fearless', 'Faithful'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is the Oxford comma?', NULL,
        'A comma before the "and" at the end of a list', ARRAY['A comma after a greeting', 'A comma in a date', 'A comma joining two sentences', 'A comma used only in Britain', 'A comma in large numbers', 'A comma before a quote'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'Like the thread Theseus used to find his way out of the Labyrinth.', NULL,
        'The word "clue" comes from "clew," which meant what?', NULL,
        'A ball of thread', ARRAY['A footprint', 'A riddle', 'A key', 'A torch', 'A whisper', 'A map'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        '"Sinister" comes from a Latin word meaning what?', NULL,
        'Left', ARRAY['Evil', 'Dark', 'Hidden', 'Crooked', 'Secret', 'Snake'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'From Latin "nescius," ignorant.', NULL,
        'In Middle English, "nice" meant what?', NULL,
        'Foolish', ARRAY['Clean', 'Pretty', 'Gentle', 'Wealthy', 'Brave', 'Holy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'WORD_NERD_BATCH_1', NULL,
        'What is an aglet?', NULL,
        'The plastic tip of a shoelace', ARRAY['An eyelet', 'The metal band on a pencil', 'The loop on a belt', 'The tag on a teabag', 'The ring on a soda can', 'The clasp on a necklace'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORD_NERD', 'The most common vowel sound in English, like the "a" in "about."', NULL,
        'What is the "schwa"?', NULL,
        'The unstressed "uh" vowel sound', ARRAY['A silent letter', 'A German umlaut', 'A rolled R', 'A Hebrew accent mark', 'A breathy H sound', 'A doubled consonant'], 400);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORD_NERD';
