-- Trivi-Yeah II: Final Wager content pool -- the Final-Jeopardy-style
-- closer that runs once after round 3's board clears. Each row is one
-- complete game's worth of material: a dramatic "topic" (subcategory), a
-- single harder free-text question, and now a short list of accepted
-- answer variants. Never drawn into the regular 3x4 board --
-- buildTriviYeahIIBoard only ever queries the 10 keys in
-- TRIVI_YEAH_II_CATEGORIES, and 'FINAL_WAGER' is deliberately not one of
-- them.
--
-- Answer matching (see isFinalWagerAnswerCorrect in gameEngine.js): the
-- submitted text is normalized (trim, uppercase, strip a few punctuation
-- marks, collapse whitespace) and checked against every normalized entry
-- in accepted_answers -- exact match, or within a small typo tolerance
-- (scaled to the variant's length) if not exact. Two different problems,
-- two different tools: accepted_answers is for legitimately different
-- phrasings an author can actually foresee (surname only, short title vs.
-- long title, a national spelling variant) and should be listed by hand;
-- the fuzzy fallback is for misspellings nobody explicitly anticipated,
-- and needs no authoring at all. Rows with no accepted_answers (or an
-- empty one) fall back to [correct_answer] alone.
--
-- Schema notes, for writing your own:
--   question_number   globally unique across the whole table (see
--                     trivi_yeah_ii_more_questions.sql's notes) -- this
--                     batch uses 2201-2220 (same numbers as before --
--                     this file replaces the original Final Wager batch
--                     in place, idempotent re-run via the DELETE below).
--   category          must be exactly 'FINAL_WAGER' to be eligible here.
--   subcategory       doubles as the dramatic "topic" shown before
--                     wagering opens -- write it like a game-show category
--                     name (short, all-caps reads well on the TV).
--   accepted_answers  a short TEXT[] of legitimate alternate phrasings,
--                     always including the full canonical form from
--                     correct_answer. Keep it to real alternate wordings,
--                     not misspellings -- the fuzzy matcher already
--                     covers typos of whatever you do list.
--   points            unused for scoring (the player's own wager decides
--                     the stakes) -- 500 here just visually marks these as
--                     the "hardest tier," not read by the game.
--   wrong_answers     unused (free-text, no multiple choice) -- left NULL.
--
-- A craft note on question writing: a couple of these embed a light clue
-- in the question's own phrasing (see INVENTIONS and ANIMAL KINGDOM below)
-- -- a word that echoes part of the answer without just handing it over.
-- Worth doing where a clue genuinely exists and feels earned; not forced
-- onto every question, since a contrived or misleading pun is worse than
-- no pun at all.

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, points)
VALUES
(2201, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD CAPITALS', NULL, 'What is the highest capital city in the world, sitting more than 11,900 feet above sea level in Bolivia?', NULL, 'La Paz', NULL, ARRAY['La Paz', 'LaPaz'], 500),
(2202, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'CLASSIC LITERATURE', NULL, 'What is the title of Mary Shelley''s 1818 novel about a scientist who creates a living creature from dead body parts?', NULL, 'Frankenstein', NULL, ARRAY['Frankenstein'], 500),
(2203, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'GREEK MYTHOLOGY', NULL, 'Which Titan was condemned by Zeus to hold up the sky for eternity?', NULL, 'Atlas', NULL, ARRAY['Atlas'], 500),
(2204, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'U.S. PRESIDENTS', NULL, 'Which U.S. President served two non-consecutive terms, making him both the 22nd and 24th President?', NULL, 'Grover Cleveland', NULL, ARRAY['Grover Cleveland', 'Cleveland'], 500),
(2205, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'HUMAN ANATOMY', NULL, 'What is the longest bone in the human body?', NULL, 'Femur', NULL, ARRAY['Femur', 'Thigh Bone', 'Thighbone'], 500),
(2206, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'INVENTIONS', NULL, 'Which Scottish-born inventor rang in a new era when he patented the telephone in 1876?', NULL, 'Alexander Graham Bell', NULL, ARRAY['Alexander Graham Bell', 'Alexander Bell', 'Graham Bell', 'Bell'], 500),
(2207, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ART HISTORY', NULL, 'Which Dutch painter created "The Starry Night" in 1889?', NULL, 'Vincent van Gogh', NULL, ARRAY['Vincent van Gogh', 'Van Gogh', 'Vincent Van Gogh'], 500),
(2208, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'THE PERIODIC TABLE', NULL, 'What is the only chemical element named after a scientist who was still alive when it was named?', NULL, 'Seaborgium', NULL, ARRAY['Seaborgium'], 500),
(2209, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ANCIENT WONDERS', NULL, 'Of the Seven Wonders of the Ancient World, which Egyptian structure is the only one still standing today?', NULL, 'The Great Pyramid', NULL, ARRAY['The Great Pyramid', 'Great Pyramid', 'The Great Pyramid of Giza', 'Great Pyramid of Giza', 'Pyramid of Giza'], 500),
(2210, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SHAKESPEARE', NULL, 'In which Shakespeare tragedy is the title character driven to murder his wife out of jealousy, incited by his ensign Iago?', NULL, 'Othello', NULL, ARRAY['Othello'], 500),
(2211, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ANIMAL KINGDOM', NULL, 'What is the only group of mammals capable of true, sustained flight -- sharing their name with what a slugger swings in baseball?', NULL, 'Bats', NULL, ARRAY['Bats', 'Bat'], 500),
(2212, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SPACE EXPLORATION', NULL, 'What was the name of the first artificial satellite, launched by the Soviet Union in 1957?', NULL, 'Sputnik', NULL, ARRAY['Sputnik', 'Sputnik 1', 'Sputnik I'], 500),
(2213, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD HISTORY', NULL, 'What is the name of the ancient fortification system, begun in the 3rd century BC, that stretches thousands of miles across northern China?', NULL, 'The Great Wall of China', NULL, ARRAY['The Great Wall of China', 'Great Wall of China', 'Great Wall', 'The Great Wall'], 500),
(2214, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'ICONIC ALBUMS', NULL, 'Which Fleetwood Mac album, released in 1977, is one of the best-selling albums of all time, featuring "Dreams" and "Go Your Own Way"?', NULL, 'Rumours', NULL, ARRAY['Rumours', 'Rumors'], 500),
(2215, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD OCEANS', NULL, 'Which ocean is the largest on Earth by surface area?', NULL, 'The Pacific Ocean', NULL, ARRAY['The Pacific Ocean', 'Pacific Ocean', 'Pacific', 'The Pacific'], 500),
(2216, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'NORSE MYTHOLOGY', NULL, 'In Norse mythology, what is the name of Odin''s eight-legged horse?', NULL, 'Sleipnir', NULL, ARRAY['Sleipnir'], 500),
(2217, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'PHYSICS', NULL, 'What is the name for the force that opposes relative motion between two surfaces in contact?', NULL, 'Friction', NULL, ARRAY['Friction'], 500),
(2218, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'FILM HISTORY', NULL, 'Which German director''s 1927 film "Metropolis" is considered one of the first major works of science fiction cinema?', NULL, 'Fritz Lang', NULL, ARRAY['Fritz Lang', 'Lang'], 500),
(2219, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'WORLD LANDMARKS', NULL, 'Which Indian mausoleum was built by Emperor Shah Jahan in memory of his wife Mumtaz Mahal?', NULL, 'The Taj Mahal', NULL, ARRAY['The Taj Mahal', 'Taj Mahal'], 500),
(2220, 'TRIVI_YEAH_II', 'FINAL_WAGER', 'SPORTS HISTORY', NULL, 'Which boxer became the youngest heavyweight champion in history at age 20 in 1986?', NULL, 'Mike Tyson', NULL, ARRAY['Mike Tyson', 'Tyson', 'Michael Tyson'], 500);
