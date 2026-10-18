-- ============================================================================
-- content/sql/astronomy_space.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/astronomy_space.csv, the master copy of the
-- Thinking Pants category ASTRONOMY_SPACE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 69 live questions
-- (100: 16, 200: 18, 300: 18, 400: 17), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ASTRONOMY_SPACE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'How many planets are in our solar system?', NULL,
        'Eight', ARRAY['Seven', 'Nine', 'Ten', 'Six', 'Eleven', 'Twelve'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do astronomers call a large group of billions of stars bound together by gravity?', NULL,
        'A galaxy', ARRAY['A nebula', 'A constellation', 'A cluster', 'A supernova', 'An asteroid belt', 'A quasar'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet is famous for its large, colorful ring system?', NULL,
        'Saturn', ARRAY['Uranus', 'Neptune', 'Jupiter', 'Venus', 'Mars', 'Mercury'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a rocky object that burns up in Earth''s atmosphere, creating a "shooting star"?', NULL,
        'A meteor', ARRAY['A comet', 'An asteroid', 'A meteorite', 'A satellite', 'A quasar', 'A pulsar'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which planet is closest to the Sun?', NULL,
        'Mercury', ARRAY['Venus', 'Mars', 'Earth', 'Jupiter', 'Saturn', 'Neptune'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the largest planet in our solar system?', NULL,
        'Jupiter', ARRAY['Saturn', 'Neptune', 'Uranus', 'Earth', 'Mars', 'Venus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which planet is nicknamed the Red Planet?', NULL,
        'Mars', ARRAY['Venus', 'Jupiter', 'Mercury', 'Saturn', 'Neptune', 'Uranus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which spiral of stars is home to our solar system?', NULL,
        'The Milky Way', ARRAY['Andromeda', 'The Whirlpool Galaxy', 'The Sombrero Galaxy', 'Triangulum', 'Centaurus A', 'The Pinwheel Galaxy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What do we call a ball of ice and dust that grows a glowing tail as it nears the Sun?', NULL,
        'A comet', ARRAY['An asteroid', 'A meteor', 'A nebula', 'A quasar', 'A pulsar', 'A satellite'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first person to walk on the Moon, in 1969?', NULL,
        'Neil Armstrong', ARRAY['Buzz Aldrin', 'Yuri Gagarin', 'John Glenn', 'Michael Collins', 'Alan Shepard', 'Pete Conrad'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the second person to walk on the Moon?', NULL,
        'Buzz Aldrin', ARRAY['Michael Collins', 'Pete Conrad', 'John Glenn', 'Alan Bean', 'Jim Lovell', 'Alan Shepard'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first human in space, in 1961?', NULL,
        'Yuri Gagarin', ARRAY['Alan Shepard', 'John Glenn', 'Neil Armstrong', 'Alexei Leonov', 'Valentina Tereshkova', 'Gherman Titov'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which orbiting laboratory, first crewed in 2000, is run by the U.S., Russia, Europe, Japan and Canada?', NULL,
        'The International Space Station', ARRAY['Mir', 'Skylab', 'Tiangong', 'Salyut 7', 'The Hubble Space Telescope', 'Space Station Freedom'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which constellation is the Hunter, known for a belt of three bright stars?', NULL,
        'Orion', ARRAY['Ursa Major', 'Perseus', 'Hercules', 'Cassiopeia', 'Scorpius', 'Leo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which mission first landed people on the Moon, in July 1969?', NULL,
        'Apollo 11', ARRAY['Apollo 13', 'Apollo 1', 'Apollo 8', 'Gemini 4', 'Apollo 12', 'Mercury 7'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What name is given to the theory that the universe began expanding from a hot, dense state about 13.8 billion years ago?', NULL,
        'The Big Bang', ARRAY['The Steady State theory', 'The Big Crunch', 'The Nebular hypothesis', 'The Big Freeze', 'String theory', 'The Oscillating universe'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which space telescope, launched on Christmas Day 2021, watches the universe in infrared from about 1.5 million km away?', NULL,
        'The James Webb Space Telescope', ARRAY['The Kepler Space Telescope', 'The Spitzer Space Telescope', 'The Chandra X-ray Observatory', 'The Hale Telescope', 'The Herschel Space Observatory', 'The Keck Telescope'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the term for the catastrophic explosion of a massive dying star, which can briefly outshine billions of stars?', NULL,
        'A supernova', ARRAY['A nova', 'A pulsar', 'A quasar', 'A red giant', 'A white dwarf', 'A black hole'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which dwarf planet, discovered in 1930, was reclassified from full planet status in 2006?', NULL,
        'Pluto', ARRAY['Ceres', 'Eris', 'Haumea', 'Makemake', 'Charon', 'Vesta'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'After the Sun, which star is the closest to Earth?', NULL,
        'Proxima Centauri', ARRAY['Alpha Centauri A', 'Sirius', 'Betelgeuse', 'Polaris', 'Vega', 'Rigel'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What was the name of the first artificial satellite, launched by the Soviet Union in 1957?', NULL,
        'Sputnik 1', ARRAY['Vostok 1', 'Explorer 1', 'Soyuz 1', 'Mir', 'Luna 1', 'Telstar'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet is the hottest, even though it isn''t the closest to the Sun?', NULL,
        'Venus', ARRAY['Mercury', 'Mars', 'Jupiter', 'Earth', 'Saturn', 'Neptune'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What do Americans call the seven bright stars of Ursa Major that the British call the Plough?', NULL,
        'The Big Dipper', ARRAY['The Little Dipper', 'Orion''s Belt', 'The Pleiades', 'The Southern Cross', 'Cassiopeia', 'The Summer Triangle'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which Apollo mission was crippled by an explosion, prompting "Houston, we''ve had a problem"?', NULL,
        'Apollo 13', ARRAY['Apollo 1', 'Apollo 11', 'Apollo 8', 'Apollo 12', 'Apollo 14', 'Apollo 17'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What title is given to a space traveler of the Soviet or Russian program?', NULL,
        'Cosmonaut', ARRAY['Taikonaut', 'Spationaut', 'Aeronaut', 'Argonaut', 'Starfarer', 'Vyomanaut'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first American woman in space, in 1983?', NULL,
        'Sally Ride', ARRAY['Mae Jemison', 'Christa McAuliffe', 'Eileen Collins', 'Judith Resnik', 'Valentina Tereshkova', 'Peggy Whitson'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space telescope, launched in 1990, had its blurry mirror fixed by astronauts in 1993?', NULL,
        'The Hubble Space Telescope', ARRAY['The Kepler Space Telescope', 'The Spitzer Space Telescope', 'The Chandra X-ray Observatory', 'The Herschel Space Observatory', 'The Compton Gamma Ray Observatory', 'The James Webb Space Telescope'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Between which two planets is the main asteroid belt?', NULL,
        'Mars and Jupiter', ARRAY['Jupiter and Saturn', 'Earth and Mars', 'Venus and Earth', 'Saturn and Uranus', 'Uranus and Neptune', 'Mercury and Venus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet is the farthest from the Sun?', NULL,
        'Neptune', ARRAY['Uranus', 'Pluto', 'Saturn', 'Jupiter', 'Eris', 'Mars'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space shuttle broke apart shortly after launch in January 1986?', NULL,
        'Challenger', ARRAY['Columbia', 'Discovery', 'Atlantis', 'Endeavour', 'Enterprise', 'Buran'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which famous visitor to the inner solar system returns about every 76 years, last appearing in 1986?', NULL,
        'Halley''s Comet', ARRAY['Comet Hale-Bopp', 'Comet Shoemaker-Levy 9', 'Encke''s Comet', 'Comet Swift-Tuttle', 'Comet NEOWISE', 'Comet Hyakutake'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which British physicist wrote "A Brief History of Time"?', NULL,
        'Stephen Hawking', ARRAY['Roger Penrose', 'Brian Cox', 'Martin Rees', 'Patrick Moore', 'Fred Hoyle', 'Paul Dirac'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'About how long does sunlight take to reach Earth?', NULL,
        'About 8 minutes', ARRAY['About 8 seconds', 'About 1 second', 'About 1 hour', 'About 24 hours', 'About 80 minutes', 'About 3 minutes'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the distance light travels in one year called?', NULL,
        'A light-year', ARRAY['A parsec', 'An astronomical unit', 'A light-second', 'A solar year', 'A galactic unit', 'A radian'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which astronomer''s laws describe planetary orbits as ellipses rather than perfect circles?', NULL,
        'Johannes Kepler', ARRAY['Galileo Galilei', 'Nicolaus Copernicus', 'Tycho Brahe', 'Edmond Halley', 'Giovanni Cassini', 'William Herschel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which is the only moon in the solar system known to have a dense atmosphere?', NULL,
        'Titan', ARRAY['Europa', 'Enceladus', 'Io', 'Ganymede', 'Triton', 'Callisto'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name for the faint leftover glow of radiation from the early universe, detected in every direction of the sky?', NULL,
        'Cosmic microwave background radiation', ARRAY['Dark matter', 'Gamma-ray bursts', 'Solar wind', 'Cosmic rays', 'Hawking radiation', 'Gravitational waves'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first woman in space, in 1963?', NULL,
        'Valentina Tereshkova', ARRAY['Svetlana Savitskaya', 'Sally Ride', 'Yelena Serova', 'Mae Jemison', 'Eileen Collins', 'Helen Sharman'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet rolls around the Sun on its side, its axis tipped about 98 degrees?', NULL,
        'Uranus', ARRAY['Neptune', 'Saturn', 'Jupiter', 'Venus', 'Mars', 'Mercury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which NASA rover landed in Jezero Crater in 2021, carrying a small helicopter?', NULL,
        'Perseverance', ARRAY['Curiosity', 'Opportunity', 'Spirit', 'Sojourner', 'Pathfinder', 'Endurance'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the tallest known volcano in the solar system?', NULL,
        'Olympus Mons', ARRAY['Mauna Kea', 'Mauna Loa', 'Maxwell Montes', 'Tharsis Montes', 'Mount Etna', 'Elysium Mons'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the largest moon in the solar system?', NULL,
        'Ganymede', ARRAY['Titan', 'Callisto', 'Io', 'Europa', 'Triton', 'The Moon'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What was the name of the dog who became the first animal to orbit Earth, in 1957?', NULL,
        'Laika', ARRAY['Belka', 'Strelka', 'Ham', 'Albert', 'Félicette', 'Zvezdochka'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What was the name of the first crewed lunar module to land on the Moon, in July 1969?', NULL,
        'Eagle', ARRAY['Columbia', 'Falcon', 'Intrepid', 'Snoopy', 'Aquarius', 'Spider'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the brightest star in the night sky?', NULL,
        'Sirius', ARRAY['Polaris', 'Betelgeuse', 'Vega', 'Canopus', 'Arcturus', 'Rigel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What unit is based on the average distance from Earth to the Sun?', NULL,
        'The astronomical unit', ARRAY['The light-minute', 'The parsec', 'The solar radius', 'The kiloparsec', 'The light-hour', 'The megameter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the Sun''s wispy outer atmosphere, seen during a total eclipse, called?', NULL,
        'The corona', ARRAY['The chromosphere', 'The photosphere', 'The aurora', 'The halo', 'The heliosphere', 'The nebula'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who wrote "Cosmos" and presented its 1980 TV series?', NULL,
        'Carl Sagan', ARRAY['Neil deGrasse Tyson', 'Stephen Hawking', 'Patrick Moore', 'Brian Cox', 'Bill Nye', 'Isaac Asimov'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who put the Sun at the center of the solar system in a book published in 1543?', NULL,
        'Nicolaus Copernicus', ARRAY['Galileo Galilei', 'Johannes Kepler', 'Ptolemy', 'Tycho Brahe', 'Isaac Newton', 'Edmond Halley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first American to orbit Earth, in 1962, and flew on the space shuttle at age 77?', NULL,
        'John Glenn', ARRAY['Alan Shepard', 'Gus Grissom', 'Scott Carpenter', 'Neil Armstrong', 'Gordon Cooper', 'Wally Schirra'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What causes the northern and southern lights?', NULL,
        'Charged particles from the Sun hitting the upper atmosphere', ARRAY['Moonlight reflecting off polar ice', 'Lightning high in the atmosphere', 'Sunlight bouncing off polar clouds', 'Glowing volcanic gases', 'Meteors burning up', 'Earth''s core leaking heat'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which Italian astronomer was tried by the Inquisition in 1633 for backing a Sun-centered universe?', NULL,
        'Galileo Galilei', ARRAY['Giordano Bruno', 'Johannes Kepler', 'Tycho Brahe', 'Giovanni Cassini', 'Leonardo da Vinci', 'Ptolemy'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the point in a planet''s orbit when it is closest to the Sun?', NULL,
        'Perihelion', ARRAY['Aphelion', 'Apogee', 'Perigee', 'Zenith', 'Equinox', 'Solstice'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which 1977 NASA probe became the first human-made object to leave the solar system''s heliosphere and enter interstellar space?', NULL,
        'Voyager 1', ARRAY['Voyager 2', 'Pioneer 10', 'New Horizons', 'Cassini', 'Galileo', 'Juno'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which NASA mathematician, played by Taraji P. Henson in "Hidden Figures," checked the orbital math for the first American to orbit Earth?', NULL,
        'Katherine Johnson', ARRAY['Sally Ride', 'Mae Jemison', 'Margaret Hamilton', 'Valentina Tereshkova', 'Nancy Grace Roman', 'Dorothy Vaughan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the boundary around a black hole beyond which nothing, not even light, can escape?', NULL,
        'The event horizon', ARRAY['The photon sphere', 'The singularity', 'The accretion disk', 'The Hill sphere', 'The ergosphere', 'The Roche limit'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which rapidly rotating neutron star, emitting beams of electromagnetic radiation, was first discovered in 1967 by Jocelyn Bell Burnell?', NULL,
        'A pulsar', ARRAY['A quasar', 'A magnetar', 'A blazar', 'A supernova remnant', 'A white dwarf', 'A brown dwarf'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the largest object in the asteroid belt, classed as a dwarf planet?', NULL,
        'Ceres', ARRAY['Vesta', 'Pallas', 'Eros', 'Eris', 'Hygiea', 'Haumea'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the name of the vast, theorized cloud of icy bodies at the outer edge of the solar system?', NULL,
        'The Oort cloud', ARRAY['The Kuiper belt', 'The asteroid belt', 'The heliosphere', 'The Magellanic Cloud', 'The Van Allen belt', 'The Crab Nebula'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which was the last Apollo mission to land on the Moon, in 1972?', NULL,
        'Apollo 17', ARRAY['Apollo 18', 'Apollo 15', 'Apollo 16', 'Apollo 20', 'Apollo 14', 'Apollo 12'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which NASA probe made history in July 2015 by flying past the best-known dwarf planet?', NULL,
        'New Horizons', ARRAY['Voyager 2', 'Cassini', 'Juno', 'Dawn', 'Pioneer 11', 'Rosetta'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which red supergiant star, famous for a "Great Dimming" in 2019-20, shares its name (spelled differently) with a Tim Burton film?', NULL,
        'Betelgeuse', ARRAY['Rigel', 'Antares', 'Aldebaran', 'Arcturus', 'Polaris', 'Sirius'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which American space station fell to Earth in 1979, scattering debris over Western Australia?', NULL,
        'Skylab', ARRAY['Mir', 'Salyut 7', 'Tiangong-1', 'Spacelab', 'Columbia', 'Space Station Freedom'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who made the first spacewalk, in 1965?', NULL,
        'Alexei Leonov', ARRAY['Ed White', 'Yuri Gagarin', 'Gherman Titov', 'Valentina Tereshkova', 'Buzz Aldrin', 'Vladimir Komarov'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which moon is the most volcanically active body in the solar system?', NULL,
        'Io', ARRAY['Europa', 'Ganymede', 'Callisto', 'Titan', 'Enceladus', 'Triton'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which icy moon sprays geysers of water from its south pole, as seen by the Cassini probe?', NULL,
        'Enceladus', ARRAY['Titan', 'Europa', 'Mimas', 'Rhea', 'Iapetus', 'Triton'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which little rover, carried by Pathfinder in 1997, was the first to roam another planet?', NULL,
        'Sojourner', ARRAY['Spirit', 'Opportunity', 'Curiosity', 'Lunokhod 1', 'Perseverance', 'Zhurong'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space shuttle made the first orbital shuttle flight, in 1981?', NULL,
        'Columbia', ARRAY['Challenger', 'Enterprise', 'Discovery', 'Atlantis', 'Endeavour', 'Buran'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which astronaut, America''s first in space, later hit golf balls on the Moon?', NULL,
        'Alan Shepard', ARRAY['John Glenn', 'Gus Grissom', 'Pete Conrad', 'Buzz Aldrin', 'Edgar Mitchell', 'Gordon Cooper'], 400);

COMMIT;

-- Check: should return 69.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ASTRONOMY_SPACE';
