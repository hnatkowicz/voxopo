-- Trivi-Yeah II: Final Wager content pool -- the Final-Jeopardy-style
-- closer that runs once after round 3's board clears. Each row is one
-- complete game's worth of material: a dramatic "topic" (subcategory) and
-- a single harder, free-text question. Never drawn into the regular 3x4
-- board -- buildTriviYeahIIBoard only ever queries the 5 keys in
-- TRIVI_YEAH_II_CATEGORIES, and 'FINAL_WAGER' is deliberately not one of
-- them.
--
-- Answer matching is strict: the submitted text is trimmed, uppercased,
-- stripped of a few punctuation marks, and compared for an EXACT match
-- against correct_answer (see normalizeFinalWagerAnswer in
-- gameEngine.js). Every answer below is written to be the one natural,
-- canonical way to say it, specifically to avoid phrasing that invites
-- two equally "right" answers (e.g. a title instead of a character name
-- that's commonly confused with it). If real play turns up a correct
-- answer typed in some reasonable form that still loses, that's the
-- signal to loosen the matcher before authoring around it further.
--
-- Schema notes, for writing your own:
--   question_number   globally unique across the whole table (see
--                     trivi_yeah_ii_more_questions.sql's notes) -- this
--                     batch uses 2201-2220.
--   category          must be exactly 'FINAL_WAGER' to be eligible here.
--   subcategory       doubles as the dramatic "topic" shown before
--                     wagering opens -- write it like a game-show category
--                     name (short, all-caps reads well on the TV).
--   points            unused for scoring (the player's own wager decides
--                     the stakes) -- set to 500 here just to visually mark
--                     these as the "hardest tier," not read by the game.
--   wrong_answers     unused (free-text, no multiple choice) -- left NULL.

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES
(2201, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD CAPITALS', NULL, 'What is the highest capital city in the world, sitting more than 11,900 feet above sea level in Bolivia?', NULL, 'La Paz', NULL, 500),
(2202, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'CLASSIC LITERATURE', NULL, 'What is the title of Mary Shelley''s 1818 novel about a scientist who creates a living creature from dead body parts?', NULL, 'Frankenstein', NULL, 500),
(2203, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'GREEK MYTHOLOGY', NULL, 'Which Titan was condemned by Zeus to hold up the sky for eternity?', NULL, 'Atlas', NULL, 500),
(2204, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'U.S. PRESIDENTS', NULL, 'Which U.S. President served two non-consecutive terms, making him both the 22nd and 24th President?', NULL, 'Grover Cleveland', NULL, 500),
(2205, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'HUMAN ANATOMY', NULL, 'What is the longest bone in the human body?', NULL, 'Femur', NULL, 500),
(2206, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'INVENTIONS', NULL, 'Which Scottish-born inventor patented the telephone in 1876?', NULL, 'Alexander Graham Bell', NULL, 500),
(2207, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ART HISTORY', NULL, 'Which Dutch painter created "The Starry Night" in 1889?', NULL, 'Vincent van Gogh', NULL, 500),
(2208, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'THE PERIODIC TABLE', NULL, 'What is the only chemical element named after a scientist who was still alive when it was named?', NULL, 'Seaborgium', NULL, 500),
(2209, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ANCIENT WONDERS', NULL, 'Of the Seven Wonders of the Ancient World, which Egyptian structure is the only one still standing today?', NULL, 'The Great Pyramid', NULL, 500),
(2210, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SHAKESPEARE', NULL, 'In which Shakespeare tragedy is the title character driven to murder his wife out of jealousy, incited by his ensign Iago?', NULL, 'Othello', NULL, 500),
(2211, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ANIMAL KINGDOM', NULL, 'What is the only group of mammals capable of true, sustained flight?', NULL, 'Bats', NULL, 500),
(2212, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SPACE EXPLORATION', NULL, 'What was the name of the first artificial satellite, launched by the Soviet Union in 1957?', NULL, 'Sputnik', NULL, 500),
(2213, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD HISTORY', NULL, 'What is the name of the ancient fortification system, begun in the 3rd century BC, that stretches thousands of miles across northern China?', NULL, 'The Great Wall of China', NULL, 500),
(2214, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ICONIC ALBUMS', NULL, 'Which Fleetwood Mac album, released in 1977, is one of the best-selling albums of all time, featuring "Dreams" and "Go Your Own Way"?', NULL, 'Rumours', NULL, 500),
(2215, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD OCEANS', NULL, 'Which ocean is the largest on Earth by surface area?', NULL, 'The Pacific Ocean', NULL, 500),
(2216, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'NORSE MYTHOLOGY', NULL, 'In Norse mythology, what is the name of Odin''s eight-legged horse?', NULL, 'Sleipnir', NULL, 500),
(2217, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'PHYSICS', NULL, 'What is the name for the force that opposes relative motion between two surfaces in contact?', NULL, 'Friction', NULL, 500),
(2218, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'FILM HISTORY', NULL, 'Which German director''s 1927 film "Metropolis" is considered one of the first major works of science fiction cinema?', NULL, 'Fritz Lang', NULL, 500),
(2219, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD LANDMARKS', NULL, 'Which Indian mausoleum was built by Emperor Shah Jahan in memory of his wife Mumtaz Mahal?', NULL, 'The Taj Mahal', NULL, 500),
(2220, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SPORTS HISTORY', NULL, 'Which boxer became the youngest heavyweight champion in history at age 20 in 1986?', NULL, 'Mike Tyson', NULL, 500);
