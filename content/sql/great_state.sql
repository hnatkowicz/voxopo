-- ============================================================================
-- content/sql/great_state.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/great_state.csv, the master copy of the
-- Thinking Pants category GREAT_STATE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 306 live questions
-- (100: 54, 200: 108, 300: 95, 400: 49), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GREAT_STATE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Texas?', NULL,
        'Austin', ARRAY['Houston', 'Dallas', 'San Antonio', 'Fort Worth', 'El Paso'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of California?', NULL,
        'Sacramento', ARRAY['Los Angeles', 'San Francisco', 'San Diego', 'San Jose', 'Fresno'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Florida?', NULL,
        'Tallahassee', ARRAY['Miami', 'Orlando', 'Tampa', 'Jacksonville', 'St. Petersburg'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Illinois?', NULL,
        'Springfield', ARRAY['Chicago', 'Peoria', 'Rockford', 'Naperville', 'Champaign'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Georgia?', NULL,
        'Atlanta', ARRAY['Savannah', 'Augusta', 'Macon', 'Athens', 'Columbus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Massachusetts?', NULL,
        'Boston', ARRAY['Worcester', 'Cambridge', 'Salem', 'Plymouth', 'Lowell'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Colorado?', NULL,
        'Denver', ARRAY['Colorado Springs', 'Boulder', 'Aspen', 'Fort Collins', 'Pueblo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of New York?', NULL,
        'Albany', ARRAY['New York City', 'Buffalo', 'Rochester', 'Syracuse', 'Yonkers'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Washington state?', NULL,
        'Olympia', ARRAY['Seattle', 'Spokane', 'Tacoma', 'Vancouver', 'Bellevue'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Arizona?', NULL,
        'Phoenix', ARRAY['Tucson', 'Flagstaff', 'Scottsdale', 'Mesa', 'Sedona'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Hawaii?', NULL,
        'Honolulu', ARRAY['Hilo', 'Lahaina', 'Kailua', 'Kona', 'Lihue'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Ohio?', NULL,
        'Columbus', ARRAY['Cleveland', 'Cincinnati', 'Toledo', 'Akron', 'Dayton'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Big Apple?', NULL,
        'New York City', ARRAY['Boston', 'Chicago', 'Philadelphia', 'Los Angeles', 'Washington, D.C.'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Windy City?', NULL,
        'Chicago', ARRAY['Milwaukee', 'Cleveland', 'Detroit', 'Boston', 'Buffalo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Big Easy?', NULL,
        'New Orleans', ARRAY['Memphis', 'Nashville', 'Miami', 'Houston', 'Atlanta'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Mile High City?', NULL,
        'Denver', ARRAY['Salt Lake City', 'Albuquerque', 'Phoenix', 'Boise', 'Cheyenne'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed La La Land?', NULL,
        'Los Angeles', ARRAY['Las Vegas', 'San Francisco', 'Nashville', 'Miami', 'San Diego'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the City of Brotherly Love?', NULL,
        'Philadelphia', ARRAY['Boston', 'Baltimore', 'Pittsburgh', 'Richmond', 'Providence'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed Music City, home of the Grand Ole Opry?', NULL,
        'Nashville', ARRAY['Memphis', 'Austin', 'New Orleans', 'Branson', 'Detroit'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Motor City?', NULL,
        'Detroit', ARRAY['Cleveland', 'Indianapolis', 'Toledo', 'Pittsburgh', 'Flint'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Sunshine State?', NULL,
        'Florida', ARRAY['California', 'Arizona', 'Hawaii', 'Texas', 'Nevada'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Lone Star State?', NULL,
        'Texas', ARRAY['Oklahoma', 'Arizona', 'New Mexico', 'Montana', 'Alaska'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Peach State?', NULL,
        'Georgia', ARRAY['South Carolina', 'Alabama', 'Florida', 'North Carolina', 'Tennessee'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Empire State?', NULL,
        'New York', ARRAY['Pennsylvania', 'New Jersey', 'Massachusetts', 'Virginia', 'Illinois'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is called the Land of 10,000 Lakes?', NULL,
        'Minnesota', ARRAY['Wisconsin', 'Michigan', 'Maine', 'North Dakota', 'Iowa'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Mount Rushmore is carved into the Black Hills of which state?', NULL,
        'South Dakota', ARRAY['North Dakota', 'Wyoming', 'Montana', 'Nebraska', 'Colorado'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is shaped like a mitten?', NULL,
        'Michigan', ARRAY['Wisconsin', 'Minnesota', 'Ohio', 'Indiana', 'Maine'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The Grand Canyon is in which state?', NULL,
        'Arizona', ARRAY['Utah', 'Nevada', 'Colorado', 'New Mexico', 'Wyoming'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which is the only state named after a U.S. president?', NULL,
        'Washington', ARRAY['Virginia', 'Georgia', 'Louisiana', 'Maryland', 'Delaware'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state was its own country, an independent republic, for nearly ten years before joining the Union in 1845?', NULL,
        'Texas', ARRAY['California', 'Florida', 'Louisiana', 'New Mexico', 'Oregon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state did the U.S. buy from Russia in 1867, a deal mocked as "Seward''s Folly"?', NULL,
        'Alaska', ARRAY['Hawaii', 'Washington', 'Oregon', 'Montana', 'Idaho'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which capital hosts the Indy 500, the "Greatest Spectacle in Racing," every Memorial Day weekend?', NULL,
        'Indianapolis', ARRAY['Columbus', 'Springfield', 'Lansing', 'Nashville', 'Des Moines'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/texas-map.webp',
        'Texas', ARRAY['Oklahoma', 'New Mexico', 'Louisiana', 'Arizona', 'Arkansas'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/florida-map.webp',
        'Florida', ARRAY['Georgia', 'Alabama', 'Louisiana', 'South Carolina', 'Mississippi'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/california-map.webp',
        'California', ARRAY['Oregon', 'Nevada', 'Arizona', 'Washington', 'Utah'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/alaska-map.webp',
        'Alaska', ARRAY['Washington', 'Montana', 'Hawaii', 'Maine', 'Minnesota'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/hawaii-map.webp',
        'Hawaii', ARRAY['Alaska', 'Florida', 'California', 'Maine', 'Washington'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/michigan-map.webp',
        'Michigan', ARRAY['Wisconsin', 'Minnesota', 'Ohio', 'Indiana', 'Illinois'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/new-york-map.webp',
        'New York', ARRAY['Pennsylvania', 'Vermont', 'New Jersey', 'Massachusetts', 'Ohio'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/massachusetts-capital.webp',
        'Boston', ARRAY['Worcester', 'Cambridge', 'Salem', 'Plymouth', 'Lowell'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/georgia-capital.webp',
        'Atlanta', ARRAY['Savannah', 'Augusta', 'Macon', 'Athens', 'Columbus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/colorado-capital.webp',
        'Denver', ARRAY['Colorado Springs', 'Boulder', 'Aspen', 'Fort Collins', 'Pueblo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/hawaii-capital.webp',
        'Honolulu', ARRAY['Hilo', 'Lahaina', 'Kailua', 'Kona', 'Lihue'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/arizona-capital.webp',
        'Phoenix', ARRAY['Tucson', 'Flagstaff', 'Scottsdale', 'Mesa', 'Sedona'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/texas-capital.webp',
        'Austin', ARRAY['Houston', 'Dallas', 'San Antonio', 'Fort Worth', 'El Paso'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/indiana-capital.webp',
        'Indianapolis', ARRAY['Fort Wayne', 'Evansville', 'South Bend', 'Bloomington', 'Gary'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/utah-capital.webp',
        'Salt Lake City', ARRAY['Provo', 'Ogden', 'St. George', 'Park City', 'Moab'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/oklahoma-capital.webp',
        'Oklahoma City', ARRAY['Tulsa', 'Norman', 'Lawton', 'Stillwater', 'Broken Arrow'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/ohio-capital.webp',
        'Columbus', ARRAY['Cleveland', 'Cincinnati', 'Toledo', 'Akron', 'Dayton'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/tennessee-capital.webp',
        'Nashville', ARRAY['Memphis', 'Knoxville', 'Chattanooga', 'Murfreesboro', 'Jackson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous mission, defended to the last in 1836, stands in the highlighted state?', '/states/texas-map.webp',
        'The Alamo', ARRAY['Fort Sumter', 'Fort McHenry', 'Mission Dolores', 'Fort Ticonderoga', 'Fort Laramie'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city in the highlighted state is home to the Liberty Bell?', '/states/pennsylvania-map.webp',
        'Philadelphia', ARRAY['Pittsburgh', 'Harrisburg', 'Boston', 'Baltimore', 'Lancaster'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous city of casinos and neon is in the highlighted state?', '/states/nevada-map.webp',
        'Las Vegas', ARRAY['Atlantic City', 'Phoenix', 'Salt Lake City', 'Albuquerque', 'Tucson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which big, salty lake lies in the north of the highlighted state?', '/states/utah-map.webp',
        'The Great Salt Lake', ARRAY['Lake Tahoe', 'Lake Mead', 'Crater Lake', 'Mono Lake', 'Lake Michigan'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Pennsylvania?', NULL,
        'Harrisburg', ARRAY['Philadelphia', 'Pittsburgh', 'Scranton', 'Allentown', 'Erie'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Tennessee?', NULL,
        'Nashville', ARRAY['Memphis', 'Knoxville', 'Chattanooga', 'Murfreesboro', 'Jackson'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Michigan?', NULL,
        'Lansing', ARRAY['Detroit', 'Grand Rapids', 'Ann Arbor', 'Flint', 'Kalamazoo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Nevada?', NULL,
        'Carson City', ARRAY['Las Vegas', 'Reno', 'Henderson', 'Elko', 'Sparks'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Oregon?', NULL,
        'Salem', ARRAY['Portland', 'Eugene', 'Bend', 'Medford', 'Corvallis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Louisiana?', NULL,
        'Baton Rouge', ARRAY['New Orleans', 'Shreveport', 'Lafayette', 'Lake Charles', 'Monroe'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Missouri?', NULL,
        'Jefferson City', ARRAY['St. Louis', 'Kansas City', 'Springfield', 'Columbia', 'Independence'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Minnesota?', NULL,
        'St. Paul', ARRAY['Minneapolis', 'Duluth', 'Rochester', 'Bloomington', 'St. Cloud'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Wisconsin?', NULL,
        'Madison', ARRAY['Milwaukee', 'Green Bay', 'Kenosha', 'Eau Claire', 'Racine'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of New Jersey?', NULL,
        'Trenton', ARRAY['Newark', 'Jersey City', 'Atlantic City', 'Princeton', 'Camden'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Virginia?', NULL,
        'Richmond', ARRAY['Virginia Beach', 'Norfolk', 'Arlington', 'Alexandria', 'Williamsburg'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of North Carolina?', NULL,
        'Raleigh', ARRAY['Charlotte', 'Durham', 'Greensboro', 'Asheville', 'Wilmington'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Alaska?', NULL,
        'Juneau', ARRAY['Anchorage', 'Fairbanks', 'Nome', 'Sitka', 'Ketchikan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Utah?', NULL,
        'Salt Lake City', ARRAY['Provo', 'Ogden', 'St. George', 'Park City', 'Moab'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Alabama?', NULL,
        'Montgomery', ARRAY['Birmingham', 'Mobile', 'Huntsville', 'Tuscaloosa', 'Selma'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Arkansas?', NULL,
        'Little Rock', ARRAY['Fayetteville', 'Fort Smith', 'Hot Springs', 'Jonesboro', 'Bentonville'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Rhode Island?', NULL,
        'Providence', ARRAY['Newport', 'Warwick', 'Cranston', 'Pawtucket', 'Woonsocket'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of New Mexico?', NULL,
        'Santa Fe', ARRAY['Albuquerque', 'Las Cruces', 'Roswell', 'Taos', 'Rio Rancho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed Beantown?', NULL,
        'Boston', ARRAY['New York City', 'Philadelphia', 'Baltimore', 'Providence', 'Hartford'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Steel City?', NULL,
        'Pittsburgh', ARRAY['Cleveland', 'Gary', 'Birmingham', 'Detroit', 'Bethlehem'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed the Emerald City?', NULL,
        'Seattle', ARRAY['Portland', 'San Francisco', 'Spokane', 'Boise', 'Tacoma'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city is nicknamed Space City, home of NASA''s Mission Control?', NULL,
        'Houston', ARRAY['Dallas', 'Orlando', 'Huntsville', 'Phoenix', 'San Antonio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Minneapolis and which other city are known together as the Twin Cities?', NULL,
        'St. Paul', ARRAY['Duluth', 'Rochester', 'Bloomington', 'Milwaukee', 'Des Moines'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Garden State?', NULL,
        'New Jersey', ARRAY['Connecticut', 'Delaware', 'Maryland', 'Vermont', 'Oregon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Bluegrass State, home of the Derby at Churchill Downs?', NULL,
        'Kentucky', ARRAY['Tennessee', 'Virginia', 'Maryland', 'West Virginia', 'Missouri'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Buckeye State?', NULL,
        'Ohio', ARRAY['Indiana', 'Michigan', 'Illinois', 'Iowa', 'Pennsylvania'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Hoosier State?', NULL,
        'Indiana', ARRAY['Ohio', 'Illinois', 'Kentucky', 'Iowa', 'Missouri'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Tar Heel State?', NULL,
        'North Carolina', ARRAY['South Carolina', 'Virginia', 'Georgia', 'Tennessee', 'Kentucky'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Land of Lincoln?', NULL,
        'Illinois', ARRAY['Kentucky', 'Indiana', 'Nebraska', 'Ohio', 'Missouri'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is called Big Sky Country?', NULL,
        'Montana', ARRAY['Wyoming', 'Idaho', 'North Dakota', 'Colorado', 'Alaska'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Land of Enchantment?', NULL,
        'New Mexico', ARRAY['Arizona', 'Colorado', 'Utah', 'Nevada', 'Oregon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Last Frontier?', NULL,
        'Alaska', ARRAY['Montana', 'Wyoming', 'Hawaii', 'Idaho', 'North Dakota'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s nickname, the First State, comes from being the first to approve the Constitution?', NULL,
        'Delaware', ARRAY['Virginia', 'Massachusetts', 'Pennsylvania', 'New Jersey', 'Rhode Island'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which became the 50th state, in 1959?', NULL,
        'Hawaii', ARRAY['Alaska', 'Arizona', 'New Mexico', 'Oklahoma', 'Utah'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which of these is NOT a state capital?', NULL,
        'Chicago', ARRAY['Springfield', 'Austin', 'Albany', 'Salem', 'Dover'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state does NOT touch the Four Corners?', NULL,
        'Nevada', ARRAY['Utah', 'Colorado', 'Arizona', 'New Mexico'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which is the only state that borders just one other state?', NULL,
        'Maine', ARRAY['Florida', 'Washington', 'Rhode Island', 'Delaware', 'Vermont'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag is the only one that isn''t a rectangle?', NULL,
        'Ohio', ARRAY['Texas', 'Alaska', 'Maryland', 'Colorado', 'Wyoming'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag carries the British Union Jack in its corner?', NULL,
        'Hawaii', ARRAY['Georgia', 'Massachusetts', 'Virginia', 'Maine', 'New Hampshire'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Salt Lake City hosted the Winter Olympics in which year?', NULL,
        '2002', ARRAY['1980', '1996', '1998', '2006', '2010'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Abraham Lincoln practiced law and is buried in which state capital?', NULL,
        'Springfield', ARRAY['Lincoln', 'Frankfort', 'Columbus', 'Indianapolis', 'Richmond'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/louisiana-map.webp',
        'Louisiana', ARRAY['Mississippi', 'Arkansas', 'Texas', 'Alabama', 'Florida'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/oklahoma-map.webp',
        'Oklahoma', ARRAY['Kansas', 'Texas', 'Arkansas', 'New Mexico', 'Missouri'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/idaho-map.webp',
        'Idaho', ARRAY['Montana', 'Oregon', 'Washington', 'Nevada', 'Wyoming'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/nevada-map.webp',
        'Nevada', ARRAY['Utah', 'Arizona', 'California', 'Oregon', 'Idaho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/maine-map.webp',
        'Maine', ARRAY['New Hampshire', 'Vermont', 'Massachusetts', 'New York', 'Connecticut'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/new-jersey-map.webp',
        'New Jersey', ARRAY['Delaware', 'Connecticut', 'Maryland', 'New York', 'Rhode Island'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/maryland-map.webp',
        'Maryland', ARRAY['Delaware', 'Virginia', 'West Virginia', 'Pennsylvania', 'New Jersey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/massachusetts-map.webp',
        'Massachusetts', ARRAY['Connecticut', 'Rhode Island', 'New Hampshire', 'Vermont', 'New York'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/tennessee-map.webp',
        'Tennessee', ARRAY['Kentucky', 'North Carolina', 'Arkansas', 'Virginia', 'Alabama'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/kentucky-map.webp',
        'Kentucky', ARRAY['Tennessee', 'West Virginia', 'Ohio', 'Virginia', 'Indiana'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/ohio-map.webp',
        'Ohio', ARRAY['Indiana', 'Pennsylvania', 'Michigan', 'Kentucky', 'West Virginia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/pennsylvania-map.webp',
        'Pennsylvania', ARRAY['New York', 'Ohio', 'New Jersey', 'Maryland', 'West Virginia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/virginia-map.webp',
        'Virginia', ARRAY['West Virginia', 'North Carolina', 'Maryland', 'Kentucky', 'Tennessee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/illinois-map.webp',
        'Illinois', ARRAY['Indiana', 'Iowa', 'Missouri', 'Wisconsin', 'Ohio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/minnesota-map.webp',
        'Minnesota', ARRAY['Wisconsin', 'North Dakota', 'Iowa', 'Michigan', 'South Dakota'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/wisconsin-map.webp',
        'Wisconsin', ARRAY['Michigan', 'Minnesota', 'Iowa', 'Illinois', 'Indiana'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/utah-map.webp',
        'Utah', ARRAY['Nevada', 'Colorado', 'Wyoming', 'Arizona', 'Idaho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/arizona-map.webp',
        'Arizona', ARRAY['New Mexico', 'Nevada', 'Utah', 'Colorado', 'California'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/north-carolina-map.webp',
        'North Carolina', ARRAY['South Carolina', 'Virginia', 'Tennessee', 'Kentucky', 'Georgia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/georgia-map.webp',
        'Georgia', ARRAY['Alabama', 'South Carolina', 'Florida', 'Tennessee', 'North Carolina'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/south-carolina-map.webp',
        'South Carolina', ARRAY['North Carolina', 'Georgia', 'Virginia', 'Alabama', 'Tennessee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/west-virginia-map.webp',
        'West Virginia', ARRAY['Virginia', 'Kentucky', 'Pennsylvania', 'Maryland', 'Ohio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/washington-map.webp',
        'Washington', ARRAY['Oregon', 'Idaho', 'Montana', 'California', 'Alaska'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/florida-capital.webp',
        'Tallahassee', ARRAY['Miami', 'Orlando', 'Tampa', 'Jacksonville', 'St. Petersburg'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/california-capital.webp',
        'Sacramento', ARRAY['Los Angeles', 'San Francisco', 'San Diego', 'San Jose', 'Fresno'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/illinois-capital.webp',
        'Springfield', ARRAY['Chicago', 'Peoria', 'Rockford', 'Naperville', 'Champaign'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/new-york-capital.webp',
        'Albany', ARRAY['New York City', 'Buffalo', 'Rochester', 'Syracuse', 'Yonkers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/washington-capital.webp',
        'Olympia', ARRAY['Seattle', 'Spokane', 'Tacoma', 'Vancouver', 'Bellevue'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/louisiana-capital.webp',
        'Baton Rouge', ARRAY['New Orleans', 'Shreveport', 'Lafayette', 'Lake Charles', 'Monroe'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/minnesota-capital.webp',
        'St. Paul', ARRAY['Minneapolis', 'Duluth', 'Rochester', 'Bloomington', 'St. Cloud'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/arkansas-capital.webp',
        'Little Rock', ARRAY['Fayetteville', 'Fort Smith', 'Hot Springs', 'Jonesboro', 'Bentonville'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/rhode-island-capital.webp',
        'Providence', ARRAY['Newport', 'Warwick', 'Cranston', 'Pawtucket', 'Woonsocket'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/new-mexico-capital.webp',
        'Santa Fe', ARRAY['Albuquerque', 'Las Cruces', 'Roswell', 'Taos', 'Rio Rancho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/missouri-capital.webp',
        'Jefferson City', ARRAY['St. Louis', 'Kansas City', 'Springfield', 'Columbia', 'Independence'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/wisconsin-capital.webp',
        'Madison', ARRAY['Milwaukee', 'Green Bay', 'Kenosha', 'Eau Claire', 'Racine'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/virginia-capital.webp',
        'Richmond', ARRAY['Virginia Beach', 'Norfolk', 'Arlington', 'Alexandria', 'Williamsburg'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/north-carolina-capital.webp',
        'Raleigh', ARRAY['Charlotte', 'Durham', 'Greensboro', 'Asheville', 'Wilmington'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/alabama-capital.webp',
        'Montgomery', ARRAY['Birmingham', 'Mobile', 'Huntsville', 'Tuscaloosa', 'Selma'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/michigan-capital.webp',
        'Lansing', ARRAY['Detroit', 'Grand Rapids', 'Ann Arbor', 'Flint', 'Kalamazoo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/nevada-capital.webp',
        'Carson City', ARRAY['Las Vegas', 'Reno', 'Henderson', 'Elko', 'Sparks'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/oregon-capital.webp',
        'Salem', ARRAY['Portland', 'Eugene', 'Bend', 'Medford', 'Corvallis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/new-jersey-capital.webp',
        'Trenton', ARRAY['Newark', 'Jersey City', 'Atlantic City', 'Princeton', 'Camden'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/pennsylvania-capital.webp',
        'Harrisburg', ARRAY['Philadelphia', 'Pittsburgh', 'Scranton', 'Allentown', 'Erie'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/idaho-capital.webp',
        'Boise', ARRAY['Idaho Falls', 'Pocatello', 'Coeur d''Alene', 'Twin Falls', 'Moscow'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/iowa-capital.webp',
        'Des Moines', ARRAY['Cedar Rapids', 'Davenport', 'Iowa City', 'Sioux City', 'Dubuque'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/oklahoma-capital.webp',
        'Oklahoma', ARRAY['Kansas', 'Texas', 'Arkansas', 'New Mexico', 'Missouri'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/idaho-capital.webp',
        'Idaho', ARRAY['Montana', 'Oregon', 'Washington', 'Nevada', 'Wyoming'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/nevada-capital.webp',
        'Nevada', ARRAY['Utah', 'Arizona', 'California', 'Oregon', 'Idaho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/new-jersey-capital.webp',
        'New Jersey', ARRAY['Delaware', 'Connecticut', 'Maryland', 'New York', 'Rhode Island'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/tennessee-capital.webp',
        'Tennessee', ARRAY['Kentucky', 'North Carolina', 'Arkansas', 'Virginia', 'Alabama'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/utah-capital.webp',
        'Utah', ARRAY['Nevada', 'Colorado', 'Wyoming', 'Arizona', 'Idaho'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/west-virginia-capital.webp',
        'West Virginia', ARRAY['Virginia', 'Kentucky', 'Pennsylvania', 'Maryland', 'Ohio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/minnesota-capital.webp',
        'Minnesota', ARRAY['Wisconsin', 'North Dakota', 'Iowa', 'Michigan', 'South Dakota'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/kentucky-capital.webp',
        'Kentucky', ARRAY['Tennessee', 'West Virginia', 'Ohio', 'Virginia', 'Indiana'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/maryland-capital.webp',
        'Maryland', ARRAY['Delaware', 'Virginia', 'West Virginia', 'Pennsylvania', 'New Jersey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The highlighted state holds most of the world''s first national park. What is it?', '/states/wyoming-map.webp',
        'Yellowstone', ARRAY['Yosemite', 'Glacier', 'Zion', 'Rocky Mountain', 'Grand Canyon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which Great Lake forms much of the highlighted state''s northern border?', '/states/ohio-map.webp',
        'Lake Erie', ARRAY['Lake Michigan', 'Lake Huron', 'Lake Ontario', 'Lake Superior'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous fault, the cause of many earthquakes, runs through the highlighted state?', '/states/california-map.webp',
        'The San Andreas Fault', ARRAY['The New Madrid Fault', 'The Cascadia Fault', 'The Wasatch Fault', 'The Denali Fault', 'The Ramapo Fault'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which volcano in the highlighted state blew its top in 1980?', '/states/washington-map.webp',
        'Mount St. Helens', ARRAY['Mount Rainier', 'Mount Hood', 'Mount Shasta', 'Mount Baker', 'Kilauea'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which hook-shaped peninsula curls out from the highlighted state?', '/states/massachusetts-map.webp',
        'Cape Cod', ARRAY['Cape Hatteras', 'Cape May', 'Long Island', 'Delmarva', 'Cape Canaveral'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which huge bay nearly splits the highlighted state in two?', '/states/maryland-map.webp',
        'Chesapeake Bay', ARRAY['Delaware Bay', 'Narragansett Bay', 'Cape Cod Bay', 'Tampa Bay', 'Puget Sound'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The United States bought the highlighted state from which country in 1867?', '/states/alaska-map.webp',
        'Russia', ARRAY['Canada', 'Britain', 'Spain', 'France', 'Japan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous wetland national park covers the southern tip of the highlighted state?', '/states/florida-map.webp',
        'The Everglades', ARRAY['Okefenokee', 'The Great Dismal Swamp', 'The Atchafalaya Basin', 'Shenandoah', 'Congaree'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous waterfalls sit on the highlighted state''s border with Canada?', '/states/new-york-map.webp',
        'Niagara Falls', ARRAY['Snoqualmie Falls', 'Multnomah Falls', 'Yosemite Falls', 'Victoria Falls', 'Angel Falls'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which settlement, the first permanent English colony in America, was founded in the highlighted state in 1607?', '/states/virginia-map.webp',
        'Jamestown', ARRAY['Plymouth', 'Roanoke', 'St. Augustine', 'Boston', 'New Amsterdam'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which boardwalk city on the highlighted state''s shore inspired the Monopoly board?', '/states/new-jersey-map.webp',
        'Atlantic City', ARRAY['Myrtle Beach', 'Virginia Beach', 'Coney Island', 'Rehoboth Beach', 'Daytona Beach'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which city with a giant Gateway Arch sits on the highlighted state''s eastern edge?', '/states/missouri-map.webp',
        'St. Louis', ARRAY['Kansas City', 'Chicago', 'Memphis', 'Omaha', 'Cincinnati'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Kentucky?', NULL,
        'Frankfort', ARRAY['Louisville', 'Lexington', 'Bowling Green', 'Covington', 'Owensboro'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Vermont?', NULL,
        'Montpelier', ARRAY['Burlington', 'Rutland', 'Bennington', 'Stowe', 'Brattleboro'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of South Dakota?', NULL,
        'Pierre', ARRAY['Sioux Falls', 'Rapid City', 'Aberdeen', 'Brookings', 'Deadwood'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of North Dakota?', NULL,
        'Bismarck', ARRAY['Fargo', 'Grand Forks', 'Minot', 'Williston', 'Dickinson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Delaware?', NULL,
        'Dover', ARRAY['Wilmington', 'Newark', 'Rehoboth Beach', 'Smyrna', 'Milford'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Maine?', NULL,
        'Augusta', ARRAY['Portland', 'Bangor', 'Bar Harbor', 'Lewiston', 'Kennebunkport'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Maryland?', NULL,
        'Annapolis', ARRAY['Baltimore', 'Bethesda', 'Frederick', 'Rockville', 'Ocean City'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of West Virginia?', NULL,
        'Charleston', ARRAY['Morgantown', 'Wheeling', 'Huntington', 'Parkersburg', 'Beckley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of South Carolina?', NULL,
        'Columbia', ARRAY['Charleston', 'Greenville', 'Myrtle Beach', 'Spartanburg', 'Hilton Head'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Kansas?', NULL,
        'Topeka', ARRAY['Wichita', 'Kansas City', 'Lawrence', 'Dodge City', 'Manhattan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Montana?', NULL,
        'Helena', ARRAY['Billings', 'Missoula', 'Bozeman', 'Great Falls', 'Butte'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Wyoming?', NULL,
        'Cheyenne', ARRAY['Casper', 'Laramie', 'Jackson', 'Cody', 'Gillette'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of New Hampshire?', NULL,
        'Concord', ARRAY['Manchester', 'Nashua', 'Portsmouth', 'Keene', 'Dover'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Connecticut?', NULL,
        'Hartford', ARRAY['New Haven', 'Bridgeport', 'Stamford', 'Greenwich', 'Waterbury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Mississippi?', NULL,
        'Jackson', ARRAY['Biloxi', 'Tupelo', 'Gulfport', 'Hattiesburg', 'Oxford'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Iowa?', NULL,
        'Des Moines', ARRAY['Cedar Rapids', 'Davenport', 'Iowa City', 'Sioux City', 'Dubuque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Idaho?', NULL,
        'Boise', ARRAY['Idaho Falls', 'Pocatello', 'Coeur d''Alene', 'Twin Falls', 'Moscow'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the capital of Nebraska?', NULL,
        'Lincoln', ARRAY['Omaha', 'Grand Island', 'Kearney', 'North Platte', 'Bellevue'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which of these IS a state capital?', NULL,
        'Montpelier', ARRAY['Burlington', 'Portland', 'Manchester', 'Charlotte', 'Las Vegas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which nickname belongs to Utah, whose pioneers called their land "Deseret," a word for the honeybee?', NULL,
        'The Beehive State', ARRAY['The Silver State', 'The Gopher State', 'The Badger State', 'The Treasure State', 'The Hawkeye State'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Badger State, named for lead miners who dug into hillsides to live -- before it became better known for cheese?', NULL,
        'Wisconsin', ARRAY['Minnesota', 'Michigan', 'Iowa', 'Illinois', 'Vermont'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Hawkeye State, home of the cornfield from "Field of Dreams"?', NULL,
        'Iowa', ARRAY['Nebraska', 'Kansas', 'Illinois', 'Indiana', 'Minnesota'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Keystone State, where both the Declaration of Independence and the Constitution were signed?', NULL,
        'Pennsylvania', ARRAY['Virginia', 'Massachusetts', 'New York', 'Maryland', 'New Jersey'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Volunteer State, home of the Grand Ole Opry?', NULL,
        'Tennessee', ARRAY['Kentucky', 'Virginia', 'Texas', 'Alabama', 'Georgia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Sooner State, named for settlers who jumped the gun in the land runs of 1889?', NULL,
        'Oklahoma', ARRAY['Kansas', 'Nebraska', 'Texas', 'Arkansas', 'Missouri'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Granite State, with the motto "Live Free or Die"?', NULL,
        'New Hampshire', ARRAY['Vermont', 'Maine', 'Massachusetts', 'Connecticut', 'Rhode Island'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s name is French for "green mountain"?', NULL,
        'Vermont', ARRAY['Maine', 'Oregon', 'Montana', 'Idaho', 'Delaware'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Centennial State, admitted 100 years after the Declaration of Independence?', NULL,
        'Colorado', ARRAY['Nebraska', 'Kansas', 'Nevada', 'Utah', 'Wyoming'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Silver State, after the Comstock Lode was struck near Virginia City in 1859?', NULL,
        'Nevada', ARRAY['Colorado', 'Montana', 'Idaho', 'Arizona', 'Utah'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Pelican State, home of Mardi Gras in the French Quarter?', NULL,
        'Louisiana', ARRAY['Mississippi', 'Alabama', 'Florida', 'Texas', 'Georgia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s name comes from an island paradise in a Spanish novel from the 1500s?', NULL,
        'California', ARRAY['Florida', 'Nevada', 'Colorado', 'Montana', 'Arizona'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Founded in 1610, which is the oldest state capital in the U.S.?', NULL,
        'Santa Fe', ARRAY['St. Augustine', 'Boston', 'Richmond', 'Annapolis', 'Albany'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital is home to the only royal palace on U.S. soil?', NULL,
        'Honolulu', ARRAY['Juneau', 'Santa Fe', 'Austin', 'Sacramento', 'Phoenix'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital, home of the U.S. Naval Academy, briefly served as the nation''s capital in 1783-84?', NULL,
        'Annapolis', ARRAY['Richmond', 'Dover', 'Trenton', 'Hartford', 'Providence'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital grew up around Sutter''s Fort, the supply hub of the California Gold Rush?', NULL,
        'Sacramento', ARRAY['San Francisco', 'Stockton', 'Fresno', 'Monterey', 'San Jose'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital was also the capital of the Confederacy for most of the Civil War?', NULL,
        'Richmond', ARRAY['Atlanta', 'Montgomery', 'Raleigh', 'Charleston', 'Nashville'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital, named for a French fur trader, is pronounced "peer" by the people who live there?', NULL,
        'Pierre', ARRAY['Boise', 'Des Moines', 'Baton Rouge', 'Montpelier', 'Detroit'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital, once called Lancaster, was renamed in 1867 for a president who had died two years earlier?', NULL,
        'Lincoln', ARRAY['Jefferson City', 'Madison', 'Jackson', 'Springfield', 'Pierre'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital sits at the eastern end of the Erie Canal?', NULL,
        'Albany', ARRAY['Buffalo', 'Harrisburg', 'Hartford', 'Trenton', 'Columbus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital takes its name from a mythical bird, because it rose from the ruins of an ancient canal-building people?', NULL,
        'Phoenix', ARRAY['Sacramento', 'Santa Fe', 'Salt Lake City', 'Austin', 'Denver'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag shows a grizzly bear, though the last of its wild grizzlies was killed in the 1920s?', NULL,
        'California', ARRAY['Montana', 'Wyoming', 'Alaska', 'Colorado', 'Idaho'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag, designed by a 13-year-old boy in 1927, shows the Big Dipper and the North Star?', NULL,
        'Alaska', ARRAY['Minnesota', 'Maine', 'Montana', 'Michigan', 'North Dakota'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag shows a palmetto tree under a crescent moon?', NULL,
        'South Carolina', ARRAY['Florida', 'Georgia', 'North Carolina', 'Louisiana', 'Hawaii'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The Mason-Dixon Line runs mainly between Pennsylvania and which state?', NULL,
        'Maryland', ARRAY['Virginia', 'Delaware', 'West Virginia', 'Ohio', 'New Jersey'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state touches four of the five Great Lakes?', NULL,
        'Michigan', ARRAY['Ohio', 'Wisconsin', 'New York', 'Pennsylvania', 'Minnesota'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/alabama-map.webp',
        'Alabama', ARRAY['Mississippi', 'Georgia', 'Tennessee', 'Florida', 'Louisiana'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/mississippi-map.webp',
        'Mississippi', ARRAY['Alabama', 'Louisiana', 'Arkansas', 'Tennessee', 'Georgia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/arkansas-map.webp',
        'Arkansas', ARRAY['Missouri', 'Louisiana', 'Oklahoma', 'Tennessee', 'Mississippi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/missouri-map.webp',
        'Missouri', ARRAY['Arkansas', 'Kansas', 'Iowa', 'Illinois', 'Kentucky'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/iowa-map.webp',
        'Iowa', ARRAY['Nebraska', 'Illinois', 'Missouri', 'Minnesota', 'Wisconsin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/kansas-map.webp',
        'Kansas', ARRAY['Nebraska', 'Oklahoma', 'Colorado', 'Missouri', 'Iowa'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/nebraska-map.webp',
        'Nebraska', ARRAY['Kansas', 'South Dakota', 'Iowa', 'Colorado', 'Wyoming'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/south-dakota-map.webp',
        'South Dakota', ARRAY['North Dakota', 'Nebraska', 'Wyoming', 'Montana', 'Minnesota'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/north-dakota-map.webp',
        'North Dakota', ARRAY['South Dakota', 'Montana', 'Minnesota', 'Nebraska', 'Wyoming'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/montana-map.webp',
        'Montana', ARRAY['Wyoming', 'Idaho', 'North Dakota', 'South Dakota', 'Washington'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/wyoming-map.webp',
        'Wyoming', ARRAY['Colorado', 'Montana', 'Utah', 'South Dakota', 'Nebraska'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/oregon-map.webp',
        'Oregon', ARRAY['Washington', 'Idaho', 'California', 'Nevada', 'Montana'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/new-mexico-map.webp',
        'New Mexico', ARRAY['Arizona', 'Colorado', 'Texas', 'Utah', 'Oklahoma'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/indiana-map.webp',
        'Indiana', ARRAY['Illinois', 'Ohio', 'Kentucky', 'Michigan', 'Iowa'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/nebraska-capital.webp',
        'Lincoln', ARRAY['Omaha', 'Grand Island', 'Kearney', 'North Platte', 'Bellevue'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/mississippi-capital.webp',
        'Jackson', ARRAY['Biloxi', 'Tupelo', 'Gulfport', 'Hattiesburg', 'Oxford'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/connecticut-capital.webp',
        'Hartford', ARRAY['New Haven', 'Bridgeport', 'Stamford', 'Greenwich', 'Waterbury'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/kansas-capital.webp',
        'Topeka', ARRAY['Wichita', 'Kansas City', 'Lawrence', 'Dodge City', 'Manhattan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/montana-capital.webp',
        'Helena', ARRAY['Billings', 'Missoula', 'Bozeman', 'Great Falls', 'Butte'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/wyoming-capital.webp',
        'Cheyenne', ARRAY['Casper', 'Laramie', 'Jackson', 'Cody', 'Gillette'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/new-hampshire-capital.webp',
        'Concord', ARRAY['Manchester', 'Nashua', 'Portsmouth', 'Keene', 'Dover'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/delaware-capital.webp',
        'Dover', ARRAY['Wilmington', 'Newark', 'Rehoboth Beach', 'Smyrna', 'Milford'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/maryland-capital.webp',
        'Annapolis', ARRAY['Baltimore', 'Bethesda', 'Frederick', 'Rockville', 'Ocean City'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/alaska-capital.webp',
        'Juneau', ARRAY['Anchorage', 'Fairbanks', 'Nome', 'Sitka', 'Ketchikan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/west-virginia-capital.webp',
        'Charleston', ARRAY['Morgantown', 'Wheeling', 'Huntington', 'Parkersburg', 'Beckley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/south-carolina-capital.webp',
        'Columbia', ARRAY['Charleston', 'Greenville', 'Myrtle Beach', 'Spartanburg', 'Hilton Head'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/north-dakota-capital.webp',
        'Bismarck', ARRAY['Fargo', 'Grand Forks', 'Minot', 'Williston', 'Dickinson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/illinois-capital.webp',
        'Illinois', ARRAY['Indiana', 'Iowa', 'Missouri', 'Wisconsin', 'Ohio'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/indiana-capital.webp',
        'Indiana', ARRAY['Illinois', 'Ohio', 'Kentucky', 'Michigan', 'Iowa'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/iowa-capital.webp',
        'Iowa', ARRAY['Nebraska', 'Illinois', 'Missouri', 'Minnesota', 'Wisconsin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/nebraska-capital.webp',
        'Nebraska', ARRAY['Kansas', 'South Dakota', 'Iowa', 'Colorado', 'Wyoming'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/missouri-capital.webp',
        'Missouri', ARRAY['Arkansas', 'Kansas', 'Iowa', 'Illinois', 'Kentucky'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/arkansas-capital.webp',
        'Arkansas', ARRAY['Missouri', 'Louisiana', 'Oklahoma', 'Tennessee', 'Mississippi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/new-mexico-capital.webp',
        'New Mexico', ARRAY['Arizona', 'Colorado', 'Texas', 'Utah', 'Oklahoma'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/oregon-capital.webp',
        'Oregon', ARRAY['Washington', 'Idaho', 'California', 'Nevada', 'Montana'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/montana-capital.webp',
        'Montana', ARRAY['Wyoming', 'Idaho', 'North Dakota', 'South Dakota', 'Washington'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/south-carolina-capital.webp',
        'South Carolina', ARRAY['North Carolina', 'Georgia', 'Virginia', 'Alabama', 'Tennessee'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The highlighted state touches four of the five Great Lakes. Which one doesn''t it touch?', '/states/michigan-map.webp',
        'Lake Ontario', ARRAY['Lake Erie', 'Lake Huron', 'Lake Superior', 'Lake Michigan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which river forms the highlighted state''s entire northern border?', '/states/kentucky-map.webp',
        'The Ohio River', ARRAY['The Mississippi River', 'The Tennessee River', 'The Cumberland River', 'The Missouri River', 'The Wabash River'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The highlighted state broke away from which state during the Civil War?', '/states/west-virginia-map.webp',
        'Virginia', ARRAY['Maryland', 'Kentucky', 'Pennsylvania', 'Ohio', 'North Carolina'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The highlighted state borders only one other state. Which one?', '/states/maine-map.webp',
        'New Hampshire', ARRAY['Vermont', 'Massachusetts', 'New York', 'Connecticut', 'Rhode Island'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'On which island is the highlighted state''s capital?', '/states/hawaii-map.webp',
        'Oahu', ARRAY['Maui', 'Kauai', 'Molokai', 'Lanai', 'The Big Island'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which glacier-carved national park sits on the highlighted state''s border with Canada?', '/states/montana-map.webp',
        'Glacier National Park', ARRAY['Olympic National Park', 'North Cascades National Park', 'Grand Teton National Park', 'Banff National Park', 'Rocky Mountain National Park'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which very deep blue lake, inside a collapsed volcano, is in the highlighted state?', '/states/oregon-map.webp',
        'Crater Lake', ARRAY['Lake Tahoe', 'Mono Lake', 'Lake Chelan', 'Flathead Lake', 'Yellowstone Lake'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The first shots of the Civil War were fired at which fort in the highlighted state''s harbor?', '/states/south-carolina-map.webp',
        'Fort Sumter', ARRAY['Fort McHenry', 'Fort Ticonderoga', 'Fort Knox', 'Fort Pulaski', 'Fort Monroe'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which national park in the highlighted state is famous for its giant underground caves?', '/states/new-mexico-map.webp',
        'Carlsbad Caverns', ARRAY['Mammoth Cave', 'Luray Caverns', 'Wind Cave', 'Jewel Cave', 'Ruby Falls'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'In 1787 the highlighted state became the first to approve what?', '/states/delaware-map.webp',
        'The U.S. Constitution', ARRAY['The Declaration of Independence', 'The Bill of Rights', 'The Articles of Confederation', 'The Treaty of Paris', 'The Mayflower Compact'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which great river begins as a small stream flowing out of Lake Itasca in the highlighted state?', '/states/minnesota-map.webp',
        'The Mississippi River', ARRAY['The Missouri River', 'The Ohio River', 'The Red River', 'The Colorado River', 'The Hudson River'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which famous highway, the "Mother Road," began in Chicago in the highlighted state?', '/states/illinois-map.webp',
        'Route 66', ARRAY['Route 1', 'Interstate 95', 'The Pacific Coast Highway', 'Route 50', 'The Natchez Trace'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which giant dam on the Colorado River sits on the highlighted state''s border with Nevada?', '/states/arizona-map.webp',
        'Hoover Dam', ARRAY['Grand Coulee Dam', 'Shasta Dam', 'Bonneville Dam', 'Fort Peck Dam', 'Oroville Dam'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Gopher State -- the one whose capital and largest city sit across the Mississippi from each other?', NULL,
        'Minnesota', ARRAY['Wisconsin', 'Iowa', 'Missouri', 'Illinois', 'Kansas'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Treasure State, whose gold and silver turned Butte and Helena into boomtowns?', NULL,
        'Montana', ARRAY['Colorado', 'Nevada', 'Idaho', 'Wyoming', 'South Dakota'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Old Dominion, birthplace of eight presidents?', NULL,
        'Virginia', ARRAY['Massachusetts', 'Ohio', 'New York', 'Pennsylvania', 'Maryland'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Nutmeg State, where peddlers were said to sell fake wooden nutmegs -- and home to Yale?', NULL,
        'Connecticut', ARRAY['Massachusetts', 'Rhode Island', 'New Hampshire', 'New Jersey', 'Vermont'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Equality State, the first state or territory to give women the vote, in 1869?', NULL,
        'Wyoming', ARRAY['Utah', 'Colorado', 'Idaho', 'Montana', 'Washington'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Ocean State, home to the Gilded Age mansions of Newport?', NULL,
        'Rhode Island', ARRAY['Maine', 'Delaware', 'New Jersey', 'Massachusetts', 'Hawaii'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital was named for a German chancellor, to attract German money to the Northern Pacific Railway?', NULL,
        'Bismarck', ARRAY['Pierre', 'Helena', 'Topeka', 'Lincoln', 'Cheyenne'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital''s name comes from the French for "wooded," a welcome sight to trappers crossing a dry plain?', NULL,
        'Boise', ARRAY['Des Moines', 'Pierre', 'Baton Rouge', 'Montpelier', 'Olympia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital''s name is French for "red stick"?', NULL,
        'Baton Rouge', ARRAY['Des Moines', 'Boise', 'Pierre', 'Montpelier', 'Detroit'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital was chosen in 1824 as a halfway point between St. Augustine and Pensacola?', NULL,
        'Tallahassee', ARRAY['Jacksonville', 'Gainesville', 'Ocala', 'Orlando', 'Tampa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Mark Twain built his famous house and raised his family in which state capital?', NULL,
        'Hartford', ARRAY['Jefferson City', 'Albany', 'Boston', 'Springfield', 'Concord'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state capital sits on a narrow strip of land between Lakes Mendota and Monona?', NULL,
        'Madison', ARRAY['Lansing', 'St. Paul', 'Augusta', 'Concord', 'Columbus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s capitol was built a little taller than the U.S. Capitol, as its people like to point out?', NULL,
        'Texas', ARRAY['California', 'Louisiana', 'Pennsylvania', 'Ohio', 'Florida'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the largest east of the Mississippi River by land area?', NULL,
        'Georgia', ARRAY['Michigan', 'Florida', 'New York', 'Pennsylvania', 'North Carolina'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Tennessee and which other state each border eight states, the most of any?', NULL,
        'Missouri', ARRAY['Kentucky', 'Kansas', 'Arkansas', 'Colorado', 'Nebraska'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state''s flag shows the Zia sun symbol, a red circle with rays pointing four ways?', NULL,
        'New Mexico', ARRAY['Arizona', 'Colorado', 'Texas', 'Utah', 'Oklahoma'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state has the longest coastline?', NULL,
        'Alaska', ARRAY['Florida', 'California', 'Hawaii', 'Michigan', 'Maine'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which is the only state whose name has just one syllable?', NULL,
        'Maine', ARRAY['Utah', 'Iowa', 'Ohio', 'Texas', 'Idaho'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is home to the Pro Football Hall of Fame and the Rock and Roll Hall of Fame?', NULL,
        'Ohio', ARRAY['Pennsylvania', 'New York', 'Illinois', 'Indiana', 'Michigan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Cornhusker State?', NULL,
        'Nebraska', ARRAY['Iowa', 'Kansas', 'Illinois', 'Indiana', 'South Dakota'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'What is the only U.S. state capital with three words in its name?', NULL,
        'Salt Lake City', ARRAY['Baton Rouge', 'Jefferson City', 'Carson City', 'Oklahoma City', 'Santa Fe'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Evergreen State?', NULL,
        'Washington', ARRAY['Oregon', 'Vermont', 'Maine', 'Idaho', 'Michigan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Show-Me State?', NULL,
        'Missouri', ARRAY['Kansas', 'Arkansas', 'Iowa', 'Kentucky', 'Oklahoma'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Magnolia State?', NULL,
        'Mississippi', ARRAY['Louisiana', 'Alabama', 'Georgia', 'South Carolina', 'Tennessee'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is the Mountain State, the only one entirely within the Appalachians?', NULL,
        'West Virginia', ARRAY['Vermont', 'Colorado', 'Kentucky', 'Tennessee', 'New Hampshire'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state became the 49th, in January 1959?', NULL,
        'Alaska', ARRAY['Hawaii', 'Arizona', 'New Mexico', 'Oklahoma', 'Utah'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Atlanta hosted the Summer Olympics in which year?', NULL,
        '1996', ARRAY['1984', '1988', '1992', '2000', '2004'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/vermont-map.webp',
        'Vermont', ARRAY['New Hampshire', 'Maine', 'Massachusetts', 'Connecticut', 'New York'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/new-hampshire-map.webp',
        'New Hampshire', ARRAY['Vermont', 'Maine', 'Massachusetts', 'Connecticut', 'Rhode Island'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/connecticut-map.webp',
        'Connecticut', ARRAY['Rhode Island', 'Massachusetts', 'New Jersey', 'Vermont', 'Delaware'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/rhode-island-map.webp',
        'Rhode Island', ARRAY['Connecticut', 'Delaware', 'Massachusetts', 'New Hampshire', 'Vermont'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is highlighted?', '/states/delaware-map.webp',
        'Delaware', ARRAY['Maryland', 'New Jersey', 'Rhode Island', 'Connecticut', 'Virginia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/south-dakota-capital.webp',
        'Pierre', ARRAY['Sioux Falls', 'Rapid City', 'Aberdeen', 'Brookings', 'Deadwood'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/vermont-capital.webp',
        'Montpelier', ARRAY['Burlington', 'Rutland', 'Bennington', 'Stowe', 'Brattleboro'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/kentucky-capital.webp',
        'Frankfort', ARRAY['Louisville', 'Lexington', 'Bowling Green', 'Covington', 'Owensboro'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The star marks a state capital. Which city is it?', '/states/maine-capital.webp',
        'Augusta', ARRAY['Portland', 'Bangor', 'Bar Harbor', 'Lewiston', 'Kennebunkport'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/north-dakota-capital.webp',
        'North Dakota', ARRAY['South Dakota', 'Montana', 'Minnesota', 'Nebraska', 'Wyoming'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/south-dakota-capital.webp',
        'South Dakota', ARRAY['North Dakota', 'Nebraska', 'Wyoming', 'Montana', 'Minnesota'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/wyoming-capital.webp',
        'Wyoming', ARRAY['Colorado', 'Montana', 'Utah', 'South Dakota', 'Nebraska'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/kansas-capital.webp',
        'Kansas', ARRAY['Nebraska', 'Oklahoma', 'Colorado', 'Missouri', 'Iowa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/vermont-capital.webp',
        'Vermont', ARRAY['New Hampshire', 'Maine', 'Massachusetts', 'Connecticut', 'New York'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/new-hampshire-capital.webp',
        'New Hampshire', ARRAY['Vermont', 'Maine', 'Massachusetts', 'Connecticut', 'Rhode Island'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/alabama-capital.webp',
        'Alabama', ARRAY['Mississippi', 'Georgia', 'Tennessee', 'Florida', 'Louisiana'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/mississippi-capital.webp',
        'Mississippi', ARRAY['Alabama', 'Louisiana', 'Arkansas', 'Tennessee', 'Georgia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which state is this? The star marks its capital.', '/states/colorado-capital.webp',
        'Colorado', ARRAY['Wyoming', 'Utah', 'Kansas', 'New Mexico', 'Nebraska'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'How many other states border the highlighted state?', '/states/tennessee-map.webp',
        'Eight', ARRAY['Six', 'Seven', 'Five', 'Nine', 'Ten'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The highlighted state is divided into parishes instead of what?', '/states/louisiana-map.webp',
        'Counties', ARRAY['Boroughs', 'Townships', 'Districts', 'Cantons', 'Provinces'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'Which cape off the highlighted state''s coast is called the "Graveyard of the Atlantic"?', '/states/north-carolina-map.webp',
        'Cape Hatteras', ARRAY['Cape Cod', 'Cape May', 'Cape Canaveral', 'Cape Ann', 'Cape Charles'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GREAT_STATE', 'ORIGINAL', NULL,
        'The geographic center of the 48 connected states lies in the highlighted state, near which small town?', '/states/kansas-map.webp',
        'Lebanon', ARRAY['Rugby', 'Belle Fourche', 'Salina', 'Dodge City', 'Abilene'], 400);

COMMIT;

-- Check: should return 306.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GREAT_STATE';
