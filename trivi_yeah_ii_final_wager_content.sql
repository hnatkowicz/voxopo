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
--   question_number   globally unique across the whole table -- now
--                     numbered on insert, after the highest existing one
--                     (the original batch used fixed numbers 2201-2220).
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
-- Style (Randy, Nov 2026): the Final Wager is typed, so most questions now
-- carry a fair clue to the answer inside the question itself -- a name's
-- meaning, a pun, part of the answer -- so a player can make an educated
-- guess ("Which frontier city -- named for a French king -- was the
-- starting point for Lewis and Clark?"). 76 questions: the original 20
-- plus 56 written this way.
--
-- A craft note on question writing: a couple of these embed a light clue
-- in the question's own phrasing (see INVENTIONS and ANIMAL KINGDOM below)
-- -- a word that echoes part of the answer without just handing it over.
-- Worth doing where a clue genuinely exists and feels earned; not forced
-- onto every question, since a contrived or misleading pun is worse than
-- no pun at all.

-- Adds the accepted_answers column if this database doesn't have it yet.
-- Without it, the INSERT below fails AFTER the DELETE has already run --
-- which silently left a database with zero Final Wager questions (found
-- after a family playtest lost its final question). Safe to re-run: does
-- nothing if the column already exists. The delete and insert below run
-- in one transaction, so a failure leaves the old questions in place.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS accepted_answers TEXT[];

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'TRIVI_YEAH_II', 'FINAL_WAGER', v.topic, NULL, v.question_text, NULL, v.correct_answer, NULL, v.accepted_answers, 500
FROM (VALUES
('WORLD CAPITALS', 'What is the highest capital city in the world, sitting more than 11,900 feet above sea level in Bolivia?', 'La Paz', ARRAY['La Paz', 'LaPaz']),
('CLASSIC LITERATURE', 'What is the title of Mary Shelley''s 1818 novel about a scientist who creates a living creature from dead body parts?', 'Frankenstein', ARRAY['Frankenstein']),
('GREEK MYTHOLOGY', 'Which Titan was condemned by Zeus to hold up the sky for eternity?', 'Atlas', ARRAY['Atlas']),
('U.S. PRESIDENTS', 'Which U.S. President served two non-consecutive terms, making him both the 22nd and 24th President?', 'Grover Cleveland', ARRAY['Grover Cleveland', 'Cleveland']),
('HUMAN ANATOMY', 'What is the longest bone in the human body?', 'Femur', ARRAY['Femur', 'Thigh Bone', 'Thighbone']),
('INVENTIONS', 'Which Scottish-born inventor rang in a new era when he patented the telephone in 1876?', 'Alexander Graham Bell', ARRAY['Alexander Graham Bell', 'Alexander Bell', 'Graham Bell', 'Bell']),
('ART HISTORY', 'Which Dutch painter created "The Starry Night" in 1889?', 'Vincent van Gogh', ARRAY['Vincent van Gogh', 'Van Gogh', 'Vincent Van Gogh']),
('THE PERIODIC TABLE', 'What is the only chemical element named after a scientist who was still alive when it was named?', 'Seaborgium', ARRAY['Seaborgium']),
('ANCIENT WONDERS', 'Of the Seven Wonders of the Ancient World, which Egyptian structure is the only one still standing today?', 'The Great Pyramid', ARRAY['The Great Pyramid', 'Great Pyramid', 'The Great Pyramid of Giza', 'Great Pyramid of Giza', 'Pyramid of Giza']),
('SHAKESPEARE', 'In which Shakespeare tragedy is the title character driven to murder his wife out of jealousy, incited by his ensign Iago?', 'Othello', ARRAY['Othello']),
('ANIMAL KINGDOM', 'What is the only group of mammals capable of true, sustained flight -- sharing their name with what a slugger swings in baseball?', 'Bats', ARRAY['Bats', 'Bat']),
('SPACE EXPLORATION', 'What was the name of the first artificial satellite, launched by the Soviet Union in 1957?', 'Sputnik', ARRAY['Sputnik', 'Sputnik 1', 'Sputnik I']),
('WORLD HISTORY', 'What is the name of the ancient fortification system, begun in the 3rd century BC, that stretches thousands of miles across northern China?', 'The Great Wall of China', ARRAY['The Great Wall of China', 'Great Wall of China', 'Great Wall', 'The Great Wall']),
('ICONIC ALBUMS', 'Which Fleetwood Mac album, released in 1977, is one of the best-selling albums of all time, featuring "Dreams" and "Go Your Own Way"?', 'Rumours', ARRAY['Rumours', 'Rumors']),
('WORLD OCEANS', 'Which ocean is the largest on Earth by surface area?', 'The Pacific Ocean', ARRAY['The Pacific Ocean', 'Pacific Ocean', 'Pacific', 'The Pacific']),
('NORSE MYTHOLOGY', 'In Norse mythology, what is the name of Odin''s eight-legged horse?', 'Sleipnir', ARRAY['Sleipnir']),
('PHYSICS', 'What is the name for the force that opposes relative motion between two surfaces in contact?', 'Friction', ARRAY['Friction']),
('FILM HISTORY', 'Which German director''s 1927 film "Metropolis" is considered one of the first major works of science fiction cinema?', 'Fritz Lang', ARRAY['Fritz Lang', 'Lang']),
('WORLD LANDMARKS', 'Which Indian mausoleum was built by Emperor Shah Jahan in memory of his wife Mumtaz Mahal?', 'The Taj Mahal', ARRAY['The Taj Mahal', 'Taj Mahal']),
('SPORTS HISTORY', 'Which boxer became the youngest heavyweight champion in history at age 20 in 1986?', 'Mike Tyson', ARRAY['Mike Tyson', 'Tyson', 'Michael Tyson']),
('AMERICAN FRONTIER', 'Which frontier city -- named for a French king -- was the starting point for Lewis and Clark?', 'St. Louis', ARRAY['St. Louis', 'Saint Louis', 'St Louis']),
('BASEBALL RIVALS', 'The Chicago Cubs'' ''arch'' rivals play baseball in which city?', 'St. Louis', ARRAY['St. Louis', 'Saint Louis', 'St Louis', 'St. Louis Cardinals', 'Cardinals']),
('STATE NAMES', 'Which U.S. state takes its name from the Spanish for "snow-covered," after its snowy mountain range?', 'Nevada', ARRAY['Nevada']),
('STATE NAMES', 'Which U.S. state takes its name from the Spanish for "colored red," after its reddish river?', 'Colorado', ARRAY['Colorado']),
('STATE NAMES', 'Which U.S. state did a Spanish explorer name for the flowery Easter season -- the "Feast of Flowers" -- when he landed there?', 'Florida', ARRAY['Florida']),
('COUNTRY NAMES', 'Which South American country takes its name from "argentum," the Latin word for silver?', 'Argentina', ARRAY['Argentina']),
('COUNTRY NAMES', 'Which country is named for the imaginary line around the middle of the Earth that runs through it?', 'Ecuador', ARRAY['Ecuador']),
('COUNTRY NAMES', 'Which South American country''s name means "little Venice," after houses built on stilts over the water?', 'Venezuela', ARRAY['Venezuela']),
('COUNTRY NAMES', 'Which West African country is named for the elephant tusks once traded along its shore?', 'Ivory Coast', ARRAY['Ivory Coast', 'Côte d''Ivoire', 'Cote d''Ivoire', 'Cote dIvoire']),
('THE PLANETS', 'Which planet, named for the Roman god of war, gets its red color from rust in its soil?', 'Mars', ARRAY['Mars']),
('THE PLANETS', 'Which planet, named for the Roman god of the sea, is the farthest from the Sun?', 'Neptune', ARRAY['Neptune']),
('THE PLANETS', 'Which planet is named for the Roman goddess of love and beauty?', 'Venus', ARRAY['Venus']),
('THE ELEMENTS', 'Which element, named for the Greek word for "sun," was found in the Sun''s light before it was found on Earth?', 'Helium', ARRAY['Helium']),
('THE ELEMENTS', 'Which light metal that powers phone batteries is named for the Greek word for "stone"?', 'Lithium', ARRAY['Lithium']),
('THE ELEMENTS', 'Which gas, whose name means "acid-maker," makes up about a fifth of the air we breathe?', 'Oxygen', ARRAY['Oxygen']),
('WORD ORIGINS', 'The "hippo" in hippopotamus means horse. So a hippopotamus is a "horse" of the what?', 'River', ARRAY['River', 'The River']),
('WORD ORIGINS', 'Which big animal''s name comes from the Greek for "nose horn"?', 'Rhinoceros', ARRAY['Rhinoceros', 'Rhino']),
('WORD ORIGINS', 'Which great ape''s name comes from a Malay phrase meaning "person of the forest"?', 'Orangutan', ARRAY['Orangutan', 'Orangutang', 'Orang-utan']),
('WORD ORIGINS', 'The word "dinosaur" was built from Greek words meaning "terrible ___"? Fill in the animal.', 'Lizard', ARRAY['Lizard', 'Lizards']),
('WORD ORIGINS', 'Which word for a powerful tropical storm comes from the name of a Caribbean storm god?', 'Hurricane', ARRAY['Hurricane', 'Hurricanes']),
('WORD ORIGINS', 'Which chess piece takes its name from the Persian word for "chariot"?', 'Rook', ARRAY['Rook', 'The Rook', 'Castle']),
('WORD ORIGINS', 'Which flaky French pastry is named for the shape of the moon it resembles?', 'Croissant', ARRAY['Croissant']),
('WORD ORIGINS', 'Which thin Italian pasta''s name means "little worms"?', 'Vermicelli', ARRAY['Vermicelli']),
('WORD ORIGINS', 'Which avocado dip takes its name from an Aztec word meaning "avocado sauce"?', 'Guacamole', ARRAY['Guacamole', 'Guac']),
('WORD ORIGINS', 'The piano''s full name, "pianoforte," means "soft-___" in Italian. Fill in the blank.', 'Loud', ARRAY['Loud', 'Strong']),
('MYTHOLOGY', 'Which Greek hero''s only weak spot gave its name to a tendon in your heel?', 'Achilles', ARRAY['Achilles']),
('MYTHOLOGY', 'Thursday is named after which hammer-swinging Norse god of thunder?', 'Thor', ARRAY['Thor']),
('MYTHOLOGY', 'Which Greek goddess of victory shares her name with a famous sneaker brand?', 'Nike', ARRAY['Nike']),
('MYTHOLOGY', 'Which winged messenger god also lends his name to a famous French fashion house?', 'Hermes', ARRAY['Hermes', 'Hermès']),
('MYTHOLOGY', 'The word "mausoleum" comes from the grand tomb of which ancient king?', 'Mausolus', ARRAY['Mausolus']),
('FAMOUS NAMES', 'Which English earl gave his title to the snack he supposedly ate at the card table?', 'The Earl of Sandwich', ARRAY['Sandwich', 'Earl of Sandwich', 'The Earl of Sandwich', 'John Montagu']),
('FAMOUS NAMES', 'Which golfer''s nickname is also the name of a big striped cat?', 'Tiger Woods', ARRAY['Tiger Woods', 'Tiger', 'Woods']),
('FAMOUS NAMES', 'Which Beatle, born Richard Starkey, got his stage name from all the rings he wore?', 'Ringo Starr', ARRAY['Ringo Starr', 'Ringo', 'Starr']),
('FAMOUS NAMES', 'Which Renaissance painter shares his name with the Teenage Mutant Ninja Turtle who wears a red mask?', 'Raphael', ARRAY['Raphael']),
('FAMOUS NAMES', 'Which fictional detective at 221B Baker Street has a last name that sounds like where people live?', 'Sherlock Holmes', ARRAY['Sherlock Holmes', 'Holmes', 'Sherlock']),
('COMPANY NAMES', 'Which search engine took its name from a misspelling of "googol," the number 1 followed by 100 zeros?', 'Google', ARRAY['Google']),
('COMPANY NAMES', 'Which online store, which began by selling books, is named for the world''s largest river by volume?', 'Amazon', ARRAY['Amazon', 'Amazon.com']),
('COMPANY NAMES', 'Which Korean electronics giant''s name means "three stars"?', 'Samsung', ARRAY['Samsung']),
('COMPANY NAMES', 'Which toy brick company''s name comes from the Danish "leg godt" -- "play well"?', 'LEGO', ARRAY['LEGO', 'Lego']),
('COMPANY NAMES', 'Which Swedish furniture store''s name is made from its founder''s initials plus his farm and village?', 'IKEA', ARRAY['IKEA', 'Ikea']),
('SPORTS', 'Which martial art''s name means "the gentle way" in Japanese?', 'Judo', ARRAY['Judo']),
('SPORTS', 'Which Olympic event''s name means "five contests" in Greek?', 'Pentathlon', ARRAY['Pentathlon', 'Modern Pentathlon']),
('SPORTS', 'Which Chicago NBA team is named for the animal that charges up in a rising stock market?', 'Chicago Bulls', ARRAY['Chicago Bulls', 'Bulls', 'The Bulls']),
('GEOGRAPHY', 'Which sea''s name means "in the middle of the land" in Latin?', 'Mediterranean Sea', ARRAY['Mediterranean Sea', 'Mediterranean', 'The Mediterranean']),
('GEOGRAPHY', 'Which mountain range''s name means "home of snow" in Sanskrit?', 'Himalayas', ARRAY['Himalayas', 'Himalaya', 'The Himalayas']),
('GEOGRAPHY', 'Which continent''s name comes from the Greek for "opposite the bear" -- the bear being the northern stars?', 'Antarctica', ARRAY['Antarctica']),
('GEOGRAPHY', 'Which U.S. city''s name is Spanish for "the angels"?', 'Los Angeles', ARRAY['Los Angeles', 'LA', 'L.A.']),
('GEOGRAPHY', 'Which Canadian city is named for the "royal mountain" at its center?', 'Montreal', ARRAY['Montreal', 'Montréal']),
('GEOGRAPHY', 'Which river is the "blue" one in the famous Strauss waltz?', 'Danube', ARRAY['Danube', 'The Danube', 'Danube River']),
('US HISTORY', 'Which ship that carried the Pilgrims in 1620 is named for a spring blossom?', 'Mayflower', ARRAY['Mayflower', 'The Mayflower']),
('US HISTORY', 'Which 1773 protest saw colonists "brew" up trouble by dumping crates of leaves into a Massachusetts harbor?', 'The Boston Tea Party', ARRAY['Boston Tea Party', 'The Boston Tea Party', 'Tea Party']),
('WORLD HISTORY', 'Which French emperor met his "Waterloo" -- at Waterloo -- in 1815?', 'Napoleon', ARRAY['Napoleon', 'Napoleon Bonaparte', 'Bonaparte']),
('THE BODY', 'The "funny bone" is really a nerve beside which arm bone, whose name sounds like "humorous"?', 'Humerus', ARRAY['Humerus']),
('MOVIES', 'Which 1975 Spielberg shark movie -- often called the first summer blockbuster -- is named for the shark''s bite?', 'Jaws', ARRAY['Jaws']),
('BOOKS', 'In the Harry Potter books, which wizarding school''s name mixes a farm animal and a skin bump?', 'Hogwarts', ARRAY['Hogwarts']),
('SPACE', 'Our galaxy is named for a streak across the night sky that the ancient Greeks likened to spilled what?', 'Milk', ARRAY['Milk'])
) AS v(topic, question_text, correct_answer, accepted_answers);

COMMIT;

-- Check: should return 76.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';
