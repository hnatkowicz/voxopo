-- ============================================================================
-- content/sql/great_state.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/great_state.csv, the master copy of the
-- Thinking Pants category GREAT_STATE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 145 live questions
-- (100: 32, 200: 41, 300: 45, 400: 27), inside a transaction. Safe to re-run.
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

COMMIT;

-- Check: should return 145.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GREAT_STATE';
