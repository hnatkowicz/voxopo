-- ============================================================================
-- content/sql/astronomy_space.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/astronomy_space.csv, the master copy of the
-- Thinking Pants category ASTRONOMY_SPACE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ASTRONOMY_SPACE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'How many planets are in our solar system?', NULL,
        'Eight', ARRAY['Seven', 'Nine', 'Ten', 'Six', 'Eleven', 'Twelve'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do astronomers call a large group of billions of stars bound together by gravity?', NULL,
        'A galaxy', ARRAY['A nebula', 'A constellation', 'A cluster', 'A supernova', 'An asteroid belt', 'A quasar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet is famous for its large, colorful ring system?', NULL,
        'Saturn', ARRAY['Uranus', 'Neptune', 'Jupiter', 'Venus', 'Mars', 'Mercury'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a rocky object that burns up in Earth''s atmosphere, creating a "shooting star"?', NULL,
        'A meteor', ARRAY['A comet', 'An asteroid', 'A meteorite', 'A satellite', 'A quasar', 'A pulsar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which planet is closest to the Sun?', NULL,
        'Mercury', ARRAY['Venus', 'Mars', 'Earth', 'Jupiter', 'Saturn', 'Neptune'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the largest planet in our solar system?', NULL,
        'Jupiter', ARRAY['Saturn', 'Neptune', 'Uranus', 'Earth', 'Mars', 'Venus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which planet is nicknamed the Red Planet?', NULL,
        'Mars', ARRAY['Venus', 'Jupiter', 'Mercury', 'Saturn', 'Neptune', 'Uranus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which spiral of stars is home to our solar system?', NULL,
        'The Milky Way', ARRAY['Andromeda', 'The Whirlpool Galaxy', 'The Sombrero Galaxy', 'Triangulum', 'Centaurus A', 'The Pinwheel Galaxy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What do we call a ball of ice and dust that grows a glowing tail as it nears the Sun?', NULL,
        'A comet', ARRAY['An asteroid', 'A meteor', 'A nebula', 'A quasar', 'A pulsar', 'A satellite'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first person to walk on the Moon, in 1969?', NULL,
        'Neil Armstrong', ARRAY['Buzz Aldrin', 'Yuri Gagarin', 'John Glenn', 'Michael Collins', 'Alan Shepard', 'Pete Conrad'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the second person to walk on the Moon?', NULL,
        'Buzz Aldrin', ARRAY['Michael Collins', 'Pete Conrad', 'John Glenn', 'Alan Bean', 'Jim Lovell', 'Alan Shepard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which orbiting laboratory, first crewed in 2000, is run by the U.S., Russia, Europe, Japan and Canada?', NULL,
        'The International Space Station', ARRAY['Mir', 'Skylab', 'Tiangong', 'Salyut 7', 'The Hubble Space Telescope', 'Space Station Freedom'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which constellation is the Hunter, known for a belt of three bright stars?', NULL,
        'Orion', ARRAY['Ursa Major', 'Perseus', 'Hercules', 'Cassiopeia', 'Scorpius', 'Leo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which mission first landed people on the Moon, in July 1969?', NULL,
        'Apollo 11', ARRAY['Apollo 13', 'Apollo 1', 'Apollo 8', 'Gemini 4', 'Apollo 12', 'Mercury 7'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What name is given to the theory that the universe began expanding from a hot, dense state about 13.8 billion years ago?', NULL,
        'The Big Bang', ARRAY['The Steady State theory', 'The Big Crunch', 'The Nebular hypothesis', 'The Big Freeze', 'String theory', 'The Oscillating universe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What kind of object is the Sun?', NULL,
        'A star', ARRAY['A planet', 'A comet', 'A moon', 'A nebula', 'A galaxy', 'An asteroid'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call it when the Moon passes between the Sun and Earth and blocks out the Sun''s light?', NULL,
        'A solar eclipse', ARRAY['A lunar eclipse', 'An equinox', 'A solstice', 'A meteor shower', 'A supermoon', 'A blue moon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how long does Earth take to travel once around the Sun?', NULL,
        'About 365 days', ARRAY['About 24 hours', 'About 7 days', 'About 28 days', 'About 100 days', 'About 500 days', 'About 1,000 days'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'When the whole face of the Moon that we see is lit up by the Sun, what phase is it?', NULL,
        'A full moon', ARRAY['A new moon', 'A waxing crescent', 'A first quarter moon', 'A waxing gibbous', 'A last quarter moon', 'A waning crescent'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What are the bowl-shaped dents on the Moon''s surface, made by space rocks crashing into it, called?', NULL,
        'Craters', ARRAY['Volcanoes', 'Canyons', 'Sinkholes', 'Geysers', 'Trenches', 'Dunes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call the path a planet follows around the Sun?', NULL,
        'Its orbit', ARRAY['Its axis', 'Its rotation', 'Its equator', 'Its eclipse', 'Its trajectory'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet is famous for its Great Red Spot, a storm bigger than Earth?', NULL,
        'Jupiter', ARRAY['Mars', 'Saturn', 'Neptune', 'Venus', 'Uranus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is a scientist who studies stars and planets called?', NULL,
        'An astronomer', ARRAY['An astrologer', 'A geologist', 'A meteorologist', 'A cosmetologist', 'A physician'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a group of stars that forms a picture, like Orion?', NULL,
        'A constellation', ARRAY['A galaxy', 'A nebula', 'A cluster', 'An asterisk', 'A comet'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What causes day and night on Earth?', NULL,
        'Earth spinning on its axis', ARRAY['Earth circling the Sun', 'The Moon blocking the Sun', 'The Sun circling Earth', 'Clouds covering the Sun', 'Earth''s tilt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'When it''s summer in the United States, what season is it in Australia?', NULL,
        'Winter', ARRAY['Summer', 'Spring', 'Fall', 'Monsoon', 'There are no seasons there'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which is the smallest planet in our solar system?', NULL,
        'Mercury', ARRAY['Mars', 'Venus', 'Earth', 'Pluto', 'Neptune'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which tool do astronomers use to see faraway objects?', NULL,
        'A telescope', ARRAY['A microscope', 'A periscope', 'A stethoscope', 'A kaleidoscope', 'A barometer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a space rock that survives its fall and lands on Earth?', NULL,
        'A meteorite', ARRAY['A meteor', 'A comet', 'An asteroid', 'A satellite', 'A moonlet'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What force keeps the planets in orbit around the Sun?', NULL,
        'Gravity', ARRAY['Magnetism', 'Friction', 'Solar wind', 'Static electricity', 'Centrifugal force'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'When the Moon sits between Earth and the Sun and we can''t see it at all, what phase is it?', NULL,
        'A new moon', ARRAY['A full moon', 'A crescent moon', 'A gibbous moon', 'A blue moon', 'A harvest moon', 'A quarter moon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What does NASA call a person trained to fly into space?', NULL,
        'An astronaut', ARRAY['A cosmonaut', 'An astronomer', 'An aviator', 'A rocketeer', 'A spacewalker', 'A starfarer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which NASA spacecraft, flown from 1981 to 2011, launched like a rocket and landed like a plane?', NULL,
        'The space shuttle', ARRAY['The Saturn V', 'The Apollo capsule', 'Soyuz', 'The Gemini capsule', 'The Mercury capsule', 'Skylab'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a rocky or metal space object, smaller than a planet, that orbits the Sun mostly between Mars and Jupiter?', NULL,
        'An asteroid', ARRAY['A comet', 'A meteor', 'A moon', 'A nebula', 'A quasar', 'A star'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Roughly how long does the Moon take to go through all its phases?', NULL,
        'About a month', ARRAY['About a day', 'About a week', 'About two weeks', 'About six months', 'About a year', 'About 100 days'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'NASA is the space agency of which country?', NULL,
        'The United States', ARRAY['Russia', 'China', 'Canada', 'The United Kingdom', 'France', 'Japan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a place in space where gravity is so strong that not even light can escape?', NULL,
        'A black hole', ARRAY['A neutron star', 'A wormhole', 'A white dwarf', 'A quasar', 'A nebula', 'A red giant'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Where does moonlight actually come from?', NULL,
        'Sunlight bouncing off the Moon', ARRAY['The Moon''s own glow', 'Light from Earth''s cities', 'Burning gas on the Moon', 'Light from other stars', 'Glowing lava on the Moon', 'Lightning on the Moon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'In which direction does the Sun rise?', NULL,
        'The east', ARRAY['The west', 'The north', 'The south', 'Straight overhead'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call the machines circling Earth that send us GPS signals, TV and weather pictures?', NULL,
        'Satellites', ARRAY['Comets', 'Meteors', 'Asteroids', 'Planets', 'Stars', 'Moons'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What happens during a lunar eclipse?', NULL,
        'Earth''s shadow falls on the Moon', ARRAY['The Moon blocks the Sun', 'The Moon passes behind the Sun', 'A cloud of dust covers the Moon', 'The Moon stops reflecting light', 'Jupiter blocks the Moon', 'The Sun goes dark'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'How many moons does Earth have?', NULL,
        'One', ARRAY['None', 'Two', 'Three', 'Four', 'Seven', 'Twelve'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call the imaginary line that Earth spins around?', NULL,
        'Its axis', ARRAY['Its orbit', 'The equator', 'The prime meridian', 'The horizon', 'The ecliptic', 'The tropic'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'NASA is the National Aeronautics and S___ Administration. What is the S?', NULL,
        'Space', ARRAY['Science', 'Satellite', 'Shuttle', 'Systems', 'Solar', 'Station'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Jupiter and Saturn are what kind of planets?', NULL,
        'Gas giants', ARRAY['Ice giants', 'Rocky planets', 'Dwarf planets', 'Exoplanets', 'Super-Earths', 'Lava worlds'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the brightest object in the night sky?', NULL,
        'The Moon', ARRAY['Venus', 'Sirius', 'Jupiter', 'The North Star', 'Mars', 'Saturn'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do astronauts feel floating around inside a spacecraft in orbit?', NULL,
        'Weightlessness', ARRAY['Vertigo', 'Jet lag', 'Turbulence', 'Hypoxia', 'G-force', 'Seasickness'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how long does Earth take to spin around once?', NULL,
        'About 24 hours', ARRAY['About 1 hour', 'About 12 hours', 'About 48 hours', 'About 7 days', 'About 30 days', 'About 100 days'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What kind of theater shows the night sky on a domed ceiling?', NULL,
        'A planetarium', ARRAY['An observatory', 'An aquarium', 'An arboretum', 'A conservatory', 'An auditorium', 'A solarium'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a robot spacecraft sent to explore other worlds without people aboard?', NULL,
        'A space probe', ARRAY['A space station', 'A space shuttle', 'A capsule', 'A rocket', 'A space tug', 'A telescope'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which space telescope, launched on Christmas Day 2021, watches the universe in infrared from about 1.5 million km away?', NULL,
        'The James Webb Space Telescope', ARRAY['The Kepler Space Telescope', 'The Spitzer Space Telescope', 'The Chandra X-ray Observatory', 'The Hale Telescope', 'The Herschel Space Observatory', 'The Keck Telescope'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the term for the catastrophic explosion of a massive dying star, which can briefly outshine billions of stars?', NULL,
        'A supernova', ARRAY['A nova', 'A pulsar', 'A quasar', 'A red giant', 'A white dwarf', 'A black hole'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which dwarf planet, discovered in 1930, was reclassified from full planet status in 2006?', NULL,
        'Pluto', ARRAY['Ceres', 'Eris', 'Haumea', 'Makemake', 'Charon', 'Vesta'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'After the Sun, which star is the closest to Earth?', NULL,
        'Proxima Centauri', ARRAY['Alpha Centauri A', 'Sirius', 'Betelgeuse', 'Polaris', 'Vega', 'Rigel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What was the name of the first artificial satellite, launched by the Soviet Union in 1957?', NULL,
        'Sputnik 1', ARRAY['Vostok 1', 'Explorer 1', 'Soyuz 1', 'Mir', 'Luna 1', 'Telstar'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet is the hottest, even though it isn''t the closest to the Sun?', NULL,
        'Venus', ARRAY['Mercury', 'Mars', 'Jupiter', 'Earth', 'Saturn', 'Neptune'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What do Americans call the seven bright stars of Ursa Major that the British call the Plough?', NULL,
        'The Big Dipper', ARRAY['The Little Dipper', 'Orion''s Belt', 'The Pleiades', 'The Southern Cross', 'Cassiopeia', 'The Summer Triangle'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which Apollo mission was crippled by an explosion, prompting "Houston, we''ve had a problem"?', NULL,
        'Apollo 13', ARRAY['Apollo 1', 'Apollo 11', 'Apollo 8', 'Apollo 12', 'Apollo 14', 'Apollo 17'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What title is given to a space traveler of the Soviet or Russian program?', NULL,
        'Cosmonaut', ARRAY['Taikonaut', 'Spationaut', 'Aeronaut', 'Argonaut', 'Starfarer', 'Vyomanaut'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first American woman in space, in 1983?', NULL,
        'Sally Ride', ARRAY['Mae Jemison', 'Christa McAuliffe', 'Eileen Collins', 'Judith Resnik', 'Valentina Tereshkova', 'Peggy Whitson'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space telescope, launched in 1990, had its blurry mirror fixed by astronauts in 1993?', NULL,
        'The Hubble Space Telescope', ARRAY['The Kepler Space Telescope', 'The Spitzer Space Telescope', 'The Chandra X-ray Observatory', 'The Herschel Space Observatory', 'The Compton Gamma Ray Observatory', 'The James Webb Space Telescope'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Between which two planets is the main asteroid belt?', NULL,
        'Mars and Jupiter', ARRAY['Jupiter and Saturn', 'Earth and Mars', 'Venus and Earth', 'Saturn and Uranus', 'Uranus and Neptune', 'Mercury and Venus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet is the farthest from the Sun?', NULL,
        'Neptune', ARRAY['Uranus', 'Pluto', 'Saturn', 'Jupiter', 'Eris', 'Mars'], 200, 'Neptune was found by math first: its pull on Uranus told astronomers where to look, in 1846.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space shuttle broke apart shortly after launch in January 1986?', NULL,
        'Challenger', ARRAY['Columbia', 'Discovery', 'Atlantis', 'Endeavour', 'Enterprise', 'Buran'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which famous visitor to the inner solar system returns about every 76 years, last appearing in 1986?', NULL,
        'Halley''s Comet', ARRAY['Comet Hale-Bopp', 'Comet Shoemaker-Levy 9', 'Encke''s Comet', 'Comet Swift-Tuttle', 'Comet NEOWISE', 'Comet Hyakutake'], 200, 'Mark Twain was born in a Halley year, 1835, and died in 1910, the day after it next swung closest to the Sun.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which British physicist wrote "A Brief History of Time"?', NULL,
        'Stephen Hawking', ARRAY['Roger Penrose', 'Brian Cox', 'Martin Rees', 'Patrick Moore', 'Fred Hoyle', 'Paul Dirac'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'About how long does sunlight take to reach Earth?', NULL,
        'About 8 minutes', ARRAY['About 8 seconds', 'About 1 second', 'About 1 hour', 'About 24 hours', 'About 80 minutes', 'About 3 minutes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the distance light travels in one year called?', NULL,
        'A light-year', ARRAY['A parsec', 'An astronomical unit', 'A light-second', 'A solar year', 'A galactic unit', 'A radian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which star sits almost directly above Earth''s North Pole, so it barely seems to move and has guided navigators for centuries?', NULL,
        'Polaris', ARRAY['Sirius', 'Vega', 'Betelgeuse', 'Arcturus', 'Rigel', 'Aldebaran'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What are the darker, cooler patches that come and go on the surface of our star called?', NULL,
        'Sunspots', ARRAY['Solar flares', 'Prominences', 'Granules', 'Faculae', 'Coronal mass ejections', 'Spicules'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet is often called Earth''s twin, because it is nearly the same size?', NULL,
        'Venus', ARRAY['Mars', 'Mercury', 'Neptune', 'Uranus', 'Saturn'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'When the lit part of the Moon is growing night by night, the Moon is said to be what?', NULL,
        'Waxing', ARRAY['Waning', 'Gibbous', 'Eclipsing', 'Rising', 'Setting'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which Apollo 11 astronaut stayed in orbit while Armstrong and Aldrin walked on the Moon?', NULL,
        'Michael Collins', ARRAY['John Glenn', 'Jim Lovell', 'Gus Grissom', 'Pete Conrad', 'Alan Bean'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What did Apollo 15, 16 and 17 astronauts drive across the Moon?', NULL,
        'A lunar rover', ARRAY['A moon jeep', 'A space tractor', 'A hover car', 'A crater crawler', 'A lunar sled'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is a light-year a measure of?', NULL,
        'Distance', ARRAY['Time', 'Speed', 'Brightness', 'Mass', 'Age'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is a planet that orbits a star other than our Sun called?', NULL,
        'An exoplanet', ARRAY['A dwarf planet', 'A rogue moon', 'A protostar', 'A planetoid', 'A white dwarf'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What process powers the Sun?', NULL,
        'Nuclear fusion', ARRAY['Nuclear fission', 'Burning coal', 'Chemical combustion', 'Magnetism', 'Static electricity'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet is so light for its size that it would float in a big enough bathtub?', NULL,
        'Saturn', ARRAY['Jupiter', 'Neptune', 'Uranus', 'Mars', 'Venus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which twin probes, launched in 1977, each carry a golden record of sounds from Earth?', NULL,
        'Voyager 1 and 2', ARRAY['Pioneer 10 and 11', 'Viking 1 and 2', 'Mariner 4 and 5', 'Galileo and Cassini', 'Spirit and Opportunity'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of NASA''s program to send astronauts back to the Moon, named for Apollo''s twin sister?', NULL,
        'Artemis', ARRAY['Athena', 'Gemini', 'Orion', 'Hermes', 'Selene'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a giant cloud of gas and dust in space, where new stars are born?', NULL,
        'A nebula', ARRAY['A galaxy', 'A black hole', 'A quasar', 'A comet', 'A constellation', 'A pulsar'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call the two days each year, in March and September, when day and night are about the same length?', NULL,
        'The equinoxes', ARRAY['The solstices', 'The eclipses', 'The perihelions', 'The leap days', 'The aphelions', 'The zeniths'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Why do stars seem to twinkle?', NULL,
        'Earth''s moving air bends their light', ARRAY['They flicker on and off', 'They spin very fast', 'They''re burning out', 'Satellites pass in front of them', 'Their light bounces off the Moon', 'They pulse like a heartbeat'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which giant rocket launched the Apollo astronauts to the Moon?', NULL,
        'The Saturn V', ARRAY['Falcon 9', 'Titan II', 'Atlas V', 'The Space Launch System', 'Delta IV', 'Ariane 5'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'When exactly half of the Moon''s face is lit, what is the phase officially called?', NULL,
        'A quarter moon', ARRAY['A crescent moon', 'A gibbous moon', 'A blue moon', 'A harvest moon', 'A new moon', 'A full moon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Seen from space, what color is the Sun really?', NULL,
        'White', ARRAY['Yellow', 'Orange', 'Red', 'Blue', 'Green', 'Gold'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What was the first American human spaceflight program, which flew one astronaut at a time?', NULL,
        'Project Mercury', ARRAY['Project Gemini', 'Project Apollo', 'Project Vanguard', 'Project Skylab', 'Project Orion', 'Project Artemis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which rocket company did Elon Musk found in 2002?', NULL,
        'SpaceX', ARRAY['Blue Origin', 'Virgin Galactic', 'Rocket Lab', 'Boeing', 'Lockheed Martin', 'United Launch Alliance'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'A "blood moon" happens during what event?', NULL,
        'A total lunar eclipse', ARRAY['A total solar eclipse', 'A supermoon', 'A blue moon', 'A harvest moon', 'A meteor shower', 'An equinox'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the "Goldilocks zone" around a star?', NULL,
        'Where a planet could have liquid water', ARRAY['Where gold forms', 'Where comets are born', 'Where stars are coldest', 'Where asteroids collect', 'Where light can''t reach', 'Where planets spin fastest'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how long did the Apollo 11 astronauts take to fly from Earth to the Moon?', NULL,
        'About three days', ARRAY['About three hours', 'About twelve hours', 'About ten days', 'About three weeks', 'About three months', 'About a year'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'The Perseids, seen every August, are what?', NULL,
        'A meteor shower', ARRAY['A comet', 'An eclipse', 'An aurora', 'A star cluster', 'A supernova', 'A planetary alignment'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the day with the most daylight of the year called?', NULL,
        'The summer solstice', ARRAY['The spring equinox', 'The autumn equinox', 'The winter solstice', 'Midsummer''s Eve', 'The perihelion', 'Leap day'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What mainly causes the ocean''s tides?', NULL,
        'The Moon''s gravity', ARRAY['Wind', 'Earth''s spin alone', 'The Sun''s heat', 'Underwater volcanoes', 'Earthquakes', 'Ocean currents'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'The far side of the Moon is often wrongly called what?', NULL,
        'The dark side', ARRAY['The cold side', 'The night side', 'The shadow side', 'The hidden face', 'The empty side', 'The lost side'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Voyager 1''s 1990 "Pale Blue Dot" photo, taken from about 6 billion km away, shows which planet?', NULL,
        'Earth', ARRAY['Neptune', 'Uranus', 'Venus', 'Mars', 'Saturn', 'Pluto'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Roughly how far is the Moon from Earth?', NULL,
        'About 384,000 kilometers', ARRAY['About 3,840 kilometers', 'About 38,400 kilometers', 'About 1 million kilometers', 'About 3.8 million kilometers', 'About 40 million kilometers', 'About 150 million kilometers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Compared to Earth, how much would you weigh on the Moon?', NULL,
        'About one-sixth as much', ARRAY['About half as much', 'About one-third as much', 'About one-tenth as much', 'About one-hundredth as much', 'The same', 'About twice as much'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is a "supermoon"?', NULL,
        'A full moon near its closest point to Earth', ARRAY['A moon bigger than Earth', 'Two full moons in one month', 'A moon with rings', 'A moon seen during the day', 'A full moon during an eclipse', 'The largest moon of Jupiter'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a huge group of galaxies held together by gravity?', NULL,
        'A galaxy cluster', ARRAY['A constellation', 'A nebula', 'A star cluster', 'A solar system', 'An asteroid belt', 'A quasar'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which astronomer''s laws describe planetary orbits as ellipses rather than perfect circles?', NULL,
        'Johannes Kepler', ARRAY['Galileo Galilei', 'Nicolaus Copernicus', 'Tycho Brahe', 'Edmond Halley', 'Giovanni Cassini', 'William Herschel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which is the only moon in the solar system known to have a dense atmosphere?', NULL,
        'Titan', ARRAY['Europa', 'Enceladus', 'Io', 'Ganymede', 'Triton', 'Callisto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name for the faint leftover glow of radiation from the early universe, detected in every direction of the sky?', NULL,
        'Cosmic microwave background radiation', ARRAY['Dark matter', 'Gamma-ray bursts', 'Solar wind', 'Cosmic rays', 'Hawking radiation', 'Gravitational waves'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which planet rolls around the Sun on its side, its axis tipped about 98 degrees?', NULL,
        'Uranus', ARRAY['Neptune', 'Saturn', 'Jupiter', 'Venus', 'Mars', 'Mercury'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which NASA rover landed in Jezero Crater in 2021, carrying a small helicopter?', NULL,
        'Perseverance', ARRAY['Curiosity', 'Opportunity', 'Spirit', 'Sojourner', 'Pathfinder', 'Endurance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the tallest known volcano in the solar system?', NULL,
        'Olympus Mons', ARRAY['Mauna Kea', 'Mauna Loa', 'Maxwell Montes', 'Tharsis Montes', 'Mount Etna', 'Elysium Mons'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the largest moon in the solar system?', NULL,
        'Ganymede', ARRAY['Titan', 'Callisto', 'Io', 'Europa', 'Triton', 'The Moon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What was the name of the first crewed lunar module to land on the Moon, in July 1969?', NULL,
        'Eagle', ARRAY['Columbia', 'Falcon', 'Intrepid', 'Snoopy', 'Aquarius', 'Spider'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the brightest star in the night sky?', NULL,
        'Sirius', ARRAY['Polaris', 'Betelgeuse', 'Vega', 'Canopus', 'Arcturus', 'Rigel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What unit is based on the average distance from Earth to the Sun?', NULL,
        'The astronomical unit', ARRAY['The light-minute', 'The parsec', 'The solar radius', 'The kiloparsec', 'The light-hour', 'The megameter'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the Sun''s wispy outer atmosphere, seen during a total eclipse, called?', NULL,
        'The corona', ARRAY['The chromosphere', 'The photosphere', 'The aurora', 'The halo', 'The heliosphere', 'The nebula'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who wrote "Cosmos" and presented its 1980 TV series?', NULL,
        'Carl Sagan', ARRAY['Neil deGrasse Tyson', 'Stephen Hawking', 'Patrick Moore', 'Brian Cox', 'Bill Nye', 'Isaac Asimov'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who put the Sun at the center of the solar system in a book published in 1543?', NULL,
        'Nicolaus Copernicus', ARRAY['Galileo Galilei', 'Johannes Kepler', 'Ptolemy', 'Tycho Brahe', 'Isaac Newton', 'Edmond Halley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Who was the first American to orbit Earth, in 1962, and flew on the space shuttle at age 77?', NULL,
        'John Glenn', ARRAY['Alan Shepard', 'Gus Grissom', 'Scott Carpenter', 'Neil Armstrong', 'Gordon Cooper', 'Wally Schirra'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What causes the northern and southern lights?', NULL,
        'Charged particles from the Sun hitting the upper atmosphere', ARRAY['Moonlight reflecting off polar ice', 'Lightning high in the atmosphere', 'Sunlight bouncing off polar clouds', 'Glowing volcanic gases', 'Meteors burning up', 'Earth''s core leaking heat'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which Italian astronomer was tried by the Inquisition in 1633 for backing a Sun-centered universe?', NULL,
        'Galileo Galilei', ARRAY['Giordano Bruno', 'Johannes Kepler', 'Tycho Brahe', 'Giovanni Cassini', 'Leonardo da Vinci', 'Ptolemy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the nearest large spiral galaxy to our own, visible to the naked eye from a dark site?', NULL,
        'Andromeda', ARRAY['The Whirlpool Galaxy', 'The Sombrero Galaxy', 'The Pinwheel Galaxy', 'Centaurus A', 'The Cartwheel Galaxy', 'The Black Eye Galaxy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which car-sized NASA rover landed in Gale Crater in August 2012?', NULL,
        'Curiosity', ARRAY['Perseverance', 'Opportunity', 'Spirit', 'Sojourner', 'Zhurong', 'Rosalind Franklin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which two gases make up almost all of the Sun?', NULL,
        'Hydrogen and helium', ARRAY['Oxygen and nitrogen', 'Hydrogen and oxygen', 'Helium and neon', 'Carbon and oxygen', 'Nitrogen and argon', 'Methane and ammonia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which star cluster in the constellation Taurus is also known as the Seven Sisters?', NULL,
        'The Pleiades', ARRAY['The Hyades', 'The Beehive Cluster', 'Omega Centauri', 'The Jewel Box', 'The Double Cluster', 'The Wild Duck Cluster'], 300, 'In Japanese the Pleiades are Subaru, and the carmaker''s logo shows the cluster''s stars.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet has a day that is longer than its year?', NULL,
        'Venus', ARRAY['Mercury', 'Mars', 'Jupiter', 'Neptune', 'Uranus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of Mars''s larger moon?', NULL,
        'Phobos', ARRAY['Deimos', 'Titan', 'Europa', 'Charon', 'Triton'], 300, 'Phobos is slowly spiraling in toward Mars and will break apart or crash in tens of millions of years.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet did William Herschel discover in 1781?', NULL,
        'Uranus', ARRAY['Neptune', 'Saturn', 'Pluto', 'Ceres', 'Mars'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how old is the universe?', NULL,
        '13.8 billion years', ARRAY['4.5 billion years', '6,000 years', '100 billion years', '1 trillion years', '500 million years'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which planet spins fastest, with a day only about 10 hours long?', NULL,
        'Jupiter', ARRAY['Saturn', 'Earth', 'Mercury', 'Neptune', 'Mars'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What color are the hottest stars?', NULL,
        'Blue', ARRAY['Red', 'Yellow', 'Orange', 'White', 'Green'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What type of galaxy is the Milky Way?', NULL,
        'A barred spiral', ARRAY['An elliptical', 'An irregular', 'A ring', 'A lenticular', 'A dwarf'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which moon of Jupiter hides a salty ocean beneath its icy crust, making it a top place to look for life?', NULL,
        'Europa', ARRAY['Io', 'Callisto', 'Ganymede', 'Titan', 'Phobos'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which space telescope, named for a 1600s astronomer, found thousands of planets around other stars?', NULL,
        'Kepler', ARRAY['Hubble', 'Spitzer', 'Chandra', 'Herschel', 'Galileo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which mission first carried people around the Moon, at Christmas 1968?', NULL,
        'Apollo 8', ARRAY['Apollo 1', 'Apollo 7', 'Apollo 10', 'Gemini 4', 'Mercury 7'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What kind of solar eclipse leaves a glowing "ring of fire" because the Moon is too far away to cover the Sun?', NULL,
        'An annular eclipse', ARRAY['A total eclipse', 'A partial eclipse', 'A lunar eclipse', 'A penumbral eclipse', 'A hybrid eclipse', 'A blood moon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What does "blue moon" most often mean today?', NULL,
        'A second full moon in one calendar month', ARRAY['A moon that looks blue', 'A full moon during an eclipse', 'The first full moon of winter', 'A moon seen in daylight', 'A moon at its farthest from Earth', 'A new moon on a holiday'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What are Jupiter''s four biggest moons together called, after the astronomer who spotted them in 1610?', NULL,
        'The Galilean moons', ARRAY['The Keplerian moons', 'The Copernican moons', 'The Herschel moons', 'The Newtonian moons', 'The Ptolemaic moons', 'The Cassini moons'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'The dark patches on the Moon are vast old lava plains. What are they called?', NULL,
        'Maria, or "seas"', ARRAY['Craters', 'Highlands', 'Rilles', 'Canyons', 'Lakes', 'Rays'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Project Gemini flew two astronauts at a time. What does its name refer to?', NULL,
        'The twins of the zodiac', ARRAY['A Greek war god', 'A famous ship', 'Two moons of Mars', 'A NASA director', 'A Roman emperor', 'Two stars in Orion'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'In 2003, which country became the third to send a person into space on its own rocket?', NULL,
        'China', ARRAY['India', 'Japan', 'France', 'The United Kingdom', 'Canada', 'Germany'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'In 1976, which NASA lander became the first to work successfully on the surface of Mars?', NULL,
        'Viking 1', ARRAY['Mariner 4', 'Pathfinder', 'Spirit', 'Phoenix', 'Pioneer 10', 'Surveyor 1'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do scientists call the point of infinite density thought to lie at the center of a black hole?', NULL,
        'A singularity', ARRAY['An event horizon', 'A wormhole', 'A quasar', 'A pulsar', 'A nucleus', 'A vortex'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which NASA probe, named for Jupiter''s wife in Roman myth, arrived at Jupiter in 2016?', NULL,
        'Juno', ARRAY['Galileo', 'Cassini', 'Pioneer', 'Ulysses', 'Minerva', 'Diana'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Pluto orbits in which icy region beyond Neptune?', NULL,
        'The Kuiper Belt', ARRAY['The Oort cloud', 'The asteroid belt', 'The Van Allen belts', 'The Orion Arm', 'The heliosphere', 'The Milky Way''s core'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Astronomers classify our Sun as what kind of star?', NULL,
        'A yellow dwarf', ARRAY['A red giant', 'A white dwarf', 'A blue giant', 'A red dwarf', 'A neutron star', 'A brown dwarf'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how old is the Sun?', NULL,
        'About 4.6 billion years', ARRAY['About 10,000 years', 'About 500 million years', 'About 1 billion years', 'About 13.8 billion years', 'About 40 billion years', 'About 100 billion years'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Who discovered Pluto, in 1930?', NULL,
        'Clyde Tombaugh', ARRAY['Percival Lowell', 'William Herschel', 'Edwin Hubble', 'Gerard Kuiper', 'Carl Sagan', 'Johann Galle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which astronomer showed in 1929 that distant galaxies are rushing away from us, meaning the universe is expanding?', NULL,
        'Edwin Hubble', ARRAY['Albert Einstein', 'Carl Sagan', 'Annie Jump Cannon', 'Arthur Eddington', 'Stephen Hawking', 'Harlow Shapley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'About how many Earths could fit inside the Sun?', NULL,
        'About 1.3 million', ARRAY['About 100', 'About 1,000', 'About 13,000', 'About 130,000', 'About 10 million', 'About 1 billion'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What are Saturn''s rings made of, mostly?', NULL,
        'Chunks of ice', ARRAY['Gas', 'Molten rock', 'Metal', 'Liquid water', 'Sand', 'Light'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Light from distant galaxies is "redshifted." What does that tell us?', NULL,
        'They''re moving away from us', ARRAY['They''re moving toward us', 'They''re very hot', 'They''re very old stars', 'They''re made of iron', 'They''re about to explode', 'They''re spinning backwards'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What kind of telescope, an early one built by Isaac Newton, uses a curved mirror instead of lenses?', NULL,
        'A reflecting telescope', ARRAY['A refracting telescope', 'A radio telescope', 'An infrared telescope', 'An X-ray telescope', 'A Galilean telescope', 'A Keplerian telescope'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Mars rovers Spirit and which twin landed in 2004?', NULL,
        'Opportunity', ARRAY['Curiosity', 'Perseverance', 'Sojourner', 'Ingenuity', 'Endeavour', 'Discovery'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What was the first American satellite, launched in 1958?', NULL,
        'Explorer 1', ARRAY['Vanguard 1', 'Sputnik 2', 'Telstar', 'Echo 1', 'Pioneer 1', 'Mercury 1'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the point in a planet''s orbit when it is closest to the Sun?', NULL,
        'Perihelion', ARRAY['Aphelion', 'Apogee', 'Perigee', 'Zenith', 'Equinox', 'Solstice'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which NASA mathematician, played by Taraji P. Henson in "Hidden Figures," checked the orbital math for the first American to orbit Earth?', NULL,
        'Katherine Johnson', ARRAY['Sally Ride', 'Mae Jemison', 'Margaret Hamilton', 'Valentina Tereshkova', 'Nancy Grace Roman', 'Dorothy Vaughan'], 400, 'Before his 1962 flight, John Glenn asked for her to check the computer''s orbit math by hand.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the boundary around a black hole beyond which nothing, not even light, can escape?', NULL,
        'The event horizon', ARRAY['The photon sphere', 'The singularity', 'The accretion disk', 'The Hill sphere', 'The ergosphere', 'The Roche limit'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which rapidly rotating neutron star, emitting beams of electromagnetic radiation, was first discovered in 1967 by Jocelyn Bell Burnell?', NULL,
        'A pulsar', ARRAY['A quasar', 'A magnetar', 'A blazar', 'A supernova remnant', 'A white dwarf', 'A brown dwarf'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the largest object in the asteroid belt, classed as a dwarf planet?', NULL,
        'Ceres', ARRAY['Vesta', 'Pallas', 'Eros', 'Eris', 'Hygiea', 'Haumea'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'What is the name of the vast, theorized cloud of icy bodies at the outer edge of the solar system?', NULL,
        'The Oort cloud', ARRAY['The Kuiper belt', 'The asteroid belt', 'The heliosphere', 'The Magellanic Cloud', 'The Van Allen belt', 'The Crab Nebula'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which was the last Apollo mission to land on the Moon, in 1972?', NULL,
        'Apollo 17', ARRAY['Apollo 18', 'Apollo 15', 'Apollo 16', 'Apollo 20', 'Apollo 14', 'Apollo 12'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which NASA probe made history in July 2015 by flying past the best-known dwarf planet?', NULL,
        'New Horizons', ARRAY['Voyager 2', 'Cassini', 'Juno', 'Dawn', 'Pioneer 11', 'Rosetta'], 400, 'It carried some of the ashes of Clyde Tombaugh, who discovered Pluto in 1930.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which red supergiant star, famous for a "Great Dimming" in 2019-20, shares its name (spelled differently) with a Tim Burton film?', NULL,
        'Betelgeuse', ARRAY['Rigel', 'Antares', 'Aldebaran', 'Arcturus', 'Polaris', 'Sirius'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which American space station fell to Earth in 1979, scattering debris over Western Australia?', NULL,
        'Skylab', ARRAY['Mir', 'Salyut 7', 'Tiangong-1', 'Spacelab', 'Columbia', 'Space Station Freedom'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which moon is the most volcanically active body in the solar system?', NULL,
        'Io', ARRAY['Europa', 'Ganymede', 'Callisto', 'Titan', 'Enceladus', 'Triton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which icy moon sprays geysers of water from its south pole, as seen by the Cassini probe?', NULL,
        'Enceladus', ARRAY['Titan', 'Europa', 'Mimas', 'Rhea', 'Iapetus', 'Triton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which little rover, carried by Pathfinder in 1997, was the first to roam another planet?', NULL,
        'Sojourner', ARRAY['Spirit', 'Opportunity', 'Curiosity', 'Lunokhod 1', 'Perseverance', 'Zhurong'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which space shuttle made the first orbital shuttle flight, in 1981?', NULL,
        'Columbia', ARRAY['Challenger', 'Enterprise', 'Discovery', 'Atlantis', 'Endeavour', 'Buran'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ASTRONOMY_SPACE_BATCH_1', NULL,
        'Which astronaut, America''s first in space, later hit golf balls on the Moon?', NULL,
        'Alan Shepard', ARRAY['John Glenn', 'Gus Grissom', 'Pete Conrad', 'Buzz Aldrin', 'Edgar Mitchell', 'Gordon Cooper'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which dwarf planet, found in 2005 and named after the Greek goddess of strife, sparked the 2006 vote that redefined what counts as a planet?', NULL,
        'Eris', ARRAY['Haumea', 'Makemake', 'Sedna', 'Ceres', 'Quaoar', 'Gonggong'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the enormous canyon system on the Red Planet, about 4,000 km long?', NULL,
        'Valles Marineris', ARRAY['Hellas Planitia', 'Tharsis Rise', 'Utopia Planitia', 'Elysium Planitia', 'Gale Crater', 'Ithaca Chasma'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which large moon orbits its planet backwards, opposite to the planet''s spin, and was probably captured from farther out?', NULL,
        'Triton', ARRAY['Titan', 'Ganymede', 'Callisto', 'Europa', 'Charon', 'Oberon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which European spacecraft sent its lander Philae down onto a comet in 2014?', NULL,
        'Rosetta', ARRAY['Giotto', 'Huygens', 'Deep Impact', 'Stardust', 'Mars Express', 'Venus Express'], 400, 'Philae bounced twice on landing and settled in shadow, where its solar panels got little light.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'After it swells into a red giant, what will our Sun finally become?', NULL,
        'A white dwarf', ARRAY['A black hole', 'A neutron star', 'A pulsar', 'A brown dwarf', 'A quasar', 'A magnetar'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'On average, which planet is closest to Earth?', NULL,
        'Mercury', ARRAY['Venus', 'Mars', 'Jupiter', 'The Moon', 'Uranus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What color is a sunset on Mars?', NULL,
        'Blue', ARRAY['Red', 'Orange', 'Green', 'Purple', 'White'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which comet broke apart and slammed into Jupiter in 1994?', NULL,
        'Shoemaker-Levy 9', ARRAY['Halley''s Comet', 'Hale-Bopp', 'Comet Encke', 'Comet Hyakutake', 'Comet Tempel 1'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call a star that suddenly flares thousands of times brighter for a few weeks, then fades back, without destroying itself?', NULL,
        'A nova', ARRAY['A pulsar', 'A quasar', 'A magnetar', 'A red giant', 'A brown dwarf'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which unit of distance equals about 3.26 light-years?', NULL,
        'The parsec', ARRAY['The astronomical unit', 'The kiloparsec', 'The light-minute', 'The megameter', 'The stellar mile'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Why does the Moon always show us the same face?', NULL,
        'Tidal locking', ARRAY['It doesn''t rotate', 'Earth''s magnetic field', 'Solar wind', 'Its tilted axis', 'Its craters'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What was the name of the world''s first space station, launched by the Soviet Union in 1971?', NULL,
        'Salyut 1', ARRAY['Mir', 'Skylab', 'Vostok 1', 'Soyuz 1', 'Tiangong'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which constellation, the Swan, contains the star pattern called the Northern Cross?', NULL,
        'Cygnus', ARRAY['Lyra', 'Aquila', 'Cassiopeia', 'Draco', 'Pegasus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the visible surface layer of the Sun called?', NULL,
        'The photosphere', ARRAY['The corona', 'The chromosphere', 'The core', 'The heliosphere', 'The radiative zone'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'How many people have walked on the Moon?', NULL,
        '12', ARRAY['6', '9', '18', '24', '27'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Space is often said to begin about 100 km up, at a boundary named for a Hungarian-American engineer. What is it called?', NULL,
        'The Kármán line', ARRAY['The Van Allen line', 'The Armstrong limit', 'The Roche limit', 'The Goddard line', 'The Tsiolkovsky line', 'The ozone line'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which Soviet probe made the first soft landing on Venus, in 1970, and radioed back from the surface?', NULL,
        'Venera 7', ARRAY['Luna 9', 'Mars 3', 'Vega 1', 'Sputnik 3', 'Zond 5', 'Lunokhod 1'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Who was the last astronaut to step off the Moon, in 1972?', NULL,
        'Gene Cernan', ARRAY['Harrison Schmitt', 'Charlie Duke', 'John Young', 'David Scott', 'Jim Irwin', 'Alan Bean'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do astronomers call the line between day and night on the Moon or a planet?', NULL,
        'The terminator', ARRAY['The meridian', 'The horizon', 'The equator', 'The limb', 'The ecliptic', 'The zenith'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which probe, launched in 1972, was the first to fly past Jupiter?', NULL,
        'Pioneer 10', ARRAY['Voyager 1', 'Voyager 2', 'Galileo', 'Mariner 10', 'Juno', 'Cassini'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Who was the first woman to walk in space, in 1984?', NULL,
        'Svetlana Savitskaya', ARRAY['Sally Ride', 'Kathryn Sullivan', 'Peggy Whitson', 'Eileen Collins', 'Mae Jemison', 'Helen Sharman'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is China''s space station called? Its name means "Heavenly Palace."', NULL,
        'Tiangong', ARRAY['Shenzhou', 'Chang''e', 'Tianwen', 'Mir', 'Long March', 'Yutu'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What was the name of the little helicopter that made the first powered flight on another planet, on Mars in 2021?', NULL,
        'Ingenuity', ARRAY['Dragonfly', 'Opportunity', 'Perseverance', 'Sojourner', 'Spirit', 'Phoenix'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What are the two doughnut-shaped zones of radiation trapped by Earth''s magnetic field called?', NULL,
        'The Van Allen belts', ARRAY['The Kuiper belts', 'The Oort belts', 'The ozone belts', 'The auroral belts', 'The Hubble belts', 'The Sagan belts'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do astronomers call the glowing shell of gas puffed off by a dying Sun-like star, like the Ring Nebula?', NULL,
        'A planetary nebula', ARRAY['A supernova remnant', 'A dark nebula', 'A protostar', 'A globular cluster', 'A quasar', 'A brown dwarf'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What do we call the steady stream of charged particles blowing out from the Sun?', NULL,
        'The solar wind', ARRAY['A solar flare', 'A coronal mass ejection', 'Cosmic rays', 'A solar prominence', 'The ion tail', 'The jet stream'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which French astronomer cataloged about 110 fuzzy sky objects, like M31, so comet hunters wouldn''t be fooled?', NULL,
        'Charles Messier', ARRAY['Pierre-Simon Laplace', 'Edmond Halley', 'William Herschel', 'Tycho Brahe', 'Christiaan Huygens', 'Urbain Le Verrier'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'The James Webb Space Telescope sits near a spot where gravity from the Sun and Earth balances out. What is that kind of spot called?', NULL,
        'A Lagrange point', ARRAY['A Roche limit', 'An event horizon', 'A barycenter', 'An apogee', 'A geosynchronous orbit', 'A perigee'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Because Earth''s axis slowly wobbles, which bright star will be our "North Star" in about 12,000 years?', NULL,
        'Vega', ARRAY['Sirius', 'Betelgeuse', 'Arcturus', 'Rigel', 'Altair', 'Capella'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Which NASA mission brought a sample of asteroid Bennu back to Earth in 2023?', NULL,
        'OSIRIS-REx', ARRAY['Hayabusa2', 'DART', 'Lucy', 'Psyche', 'Stardust', 'Dawn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What is the name of the boundary where the Sun''s wind finally gives way to interstellar space?', NULL,
        'The heliopause', ARRAY['The Kármán line', 'The event horizon', 'The Kuiper cliff', 'The Oort edge', 'The termination wall', 'The photosphere'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Who was the first woman to command a space shuttle mission, in 1999?', NULL,
        'Eileen Collins', ARRAY['Sally Ride', 'Mae Jemison', 'Peggy Whitson', 'Shannon Lucid', 'Kathryn Sullivan', 'Judith Resnik'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'NASA''s DART spacecraft deliberately crashed into which small asteroid in 2022, to test nudging one off course?', NULL,
        'Dimorphos', ARRAY['Didymos', 'Bennu', 'Ryugu', 'Itokawa', 'Vesta', 'Apophis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'Mission teams call a Martian day by what short name?', NULL,
        'A sol', ARRAY['A mar', 'A rev', 'A lun', 'A cycle', 'A turn', 'A spin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ASTRONOMY_SPACE', 'ORIGINAL', NULL,
        'What was the name of the giant radio telescope dish in Puerto Rico that collapsed in 2020?', NULL,
        'Arecibo', ARRAY['Green Bank', 'Jodrell Bank', 'Parkes', 'FAST', 'Very Large Array', 'Effelsberg'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ASTRONOMY_SPACE';
