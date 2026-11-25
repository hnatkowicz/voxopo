-- ============================================================================
-- content/sql/geography.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/geography.csv, the master copy of the
-- Thinking Pants category GEOGRAPHY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GEOGRAPHY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the largest continent by both area and population?', NULL,
        'Asia', ARRAY['Africa', 'Europe', 'North America', 'South America', 'Antarctica', 'Australia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the smallest country in the world by area?', NULL,
        'Vatican City', ARRAY['Monaco', 'San Marino', 'Liechtenstein', 'Malta', 'Andorra', 'Luxembourg'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which U.S. state is the largest by area?', NULL,
        'Alaska', ARRAY['Texas', 'California', 'Montana', 'Nevada', 'Colorado', 'Arizona'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the longest river in Africa?', NULL,
        'The Nile', ARRAY['The Congo', 'The Niger', 'The Zambezi', 'The Orange', 'The Limpopo', 'The Senegal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which desert is the largest hot desert in the world?', NULL,
        'The Sahara', ARRAY['The Gobi', 'The Kalahari', 'The Mojave', 'The Arabian Desert', 'The Atacama', 'The Sonoran'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the smallest U.S. state by area?', NULL,
        'Rhode Island', ARRAY['Delaware', 'Connecticut', 'Hawaii', 'Vermont', 'New Hampshire', 'New Jersey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the name of the line of 0 degrees longitude that passes through Greenwich, England?', NULL,
        'The Prime Meridian', ARRAY['The Equator', 'The Tropic of Cancer', 'The International Date Line', 'The Arctic Circle', 'The Tropic of Capricorn', 'The Antimeridian'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which sea is so salty that swimmers can easily float on its surface?', NULL,
        'The Dead Sea', ARRAY['The Red Sea', 'The Caspian Sea', 'The Black Sea', 'The Aral Sea', 'The Mediterranean Sea', 'The Baltic Sea'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Japan?', NULL,
        'Tokyo', ARRAY['Kyoto', 'Osaka', 'Yokohama', 'Hiroshima', 'Nagoya', 'Sapporo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through Paris?', NULL,
        'The Seine', ARRAY['The Loire', 'The Rhône', 'The Thames', 'The Rhine', 'The Danube', 'The Garonne'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through London?', NULL,
        'The Thames', ARRAY['The Seine', 'The Severn', 'The Trent', 'The Mersey', 'The Avon', 'The Tyne'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in the world above sea level?', NULL,
        'Mount Everest', ARRAY['K2', 'Kangchenjunga', 'Mont Blanc', 'Kilimanjaro', 'Denali', 'Aconcagua'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Not counting Australia, what is the largest island in the world?', NULL,
        'Greenland', ARRAY['New Guinea', 'Borneo', 'Madagascar', 'Baffin Island', 'Iceland', 'Great Britain'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the only U.S. state made up entirely of islands?', NULL,
        'Hawaii', ARRAY['Alaska', 'Florida', 'Maine', 'Washington', 'Delaware', 'Michigan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the Inca citadel of Machu Picchu?', NULL,
        'Peru', ARRAY['Bolivia', 'Ecuador', 'Chile', 'Colombia', 'Mexico', 'Argentina'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the name of the world''s largest coral reef system?', NULL,
        'The Great Barrier Reef', ARRAY['The Belize Barrier Reef', 'The Red Sea Coral Reef', 'The New Caledonia Barrier Reef', 'The Florida Reef', 'Ningaloo Reef', 'Raja Ampat'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river forms much of the border between the U.S. and Mexico?', NULL,
        'The Rio Grande', ARRAY['The Colorado', 'The Pecos', 'The Gila', 'The Red River', 'The Brazos', 'The Arkansas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river carries far more water than any other in the world?', NULL,
        'The Amazon', ARRAY['The Nile', 'The Congo', 'The Mississippi', 'The Yangtze', 'The Ganges', 'The Orinoco'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which two countries share the longest international border in the world?', NULL,
        'The United States and Canada', ARRAY['Russia and China', 'Russia and Kazakhstan', 'Chile and Argentina', 'China and Mongolia', 'India and Bangladesh', 'Brazil and Argentina'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Egypt?', NULL,
        'Cairo', ARRAY['Alexandria', 'Giza', 'Luxor', 'Aswan', 'Khartoum', 'Tripoli'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which ocean lies between Africa and Australia?', NULL,
        'The Indian Ocean', ARRAY['The Atlantic Ocean', 'The Pacific Ocean', 'The Southern Ocean', 'The Arctic Ocean', 'The Arabian Sea', 'The Coral Sea'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which city straddles the Bosporus, with one side in Europe and the other in Asia?', NULL,
        'Istanbul', ARRAY['Ankara', 'Athens', 'Cairo', 'Moscow', 'Tbilisi', 'Baku'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Spain?', NULL,
        'Madrid', ARRAY['Barcelona', 'Seville', 'Valencia', 'Lisbon', 'Bilbao', 'Granada'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Germany?', NULL,
        'Berlin', ARRAY['Munich', 'Hamburg', 'Frankfurt', 'Bonn', 'Cologne', 'Vienna'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Russia?', NULL,
        'Moscow', ARRAY['St. Petersburg', 'Kyiv', 'Minsk', 'Novosibirsk', 'Kazan', 'Warsaw'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of China?', NULL,
        'Beijing', ARRAY['Shanghai', 'Hong Kong', 'Guangzhou', 'Shenzhen', 'Xi''an', 'Nanjing'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Greece?', NULL,
        'Athens', ARRAY['Sparta', 'Thessaloniki', 'Corinth', 'Olympia', 'Rome', 'Heraklion'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of South Korea?', NULL,
        'Seoul', ARRAY['Pyongyang', 'Busan', 'Tokyo', 'Incheon', 'Beijing', 'Taipei'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Ireland?', NULL,
        'Dublin', ARRAY['Belfast', 'Cork', 'Galway', 'Limerick', 'Edinburgh', 'Cardiff'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Cuba?', NULL,
        'Havana', ARRAY['Kingston', 'San Juan', 'Santo Domingo', 'Nassau', 'Port-au-Prince', 'Santiago de Cuba'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which country is famous for its tulip fields, windmills and wooden clogs?', NULL,
        'The Netherlands', ARRAY['Belgium', 'Denmark', 'Germany', 'Switzerland', 'Austria', 'Sweden'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which imaginary line divides the Earth into the Northern and Southern Hemispheres?', NULL,
        'The Equator', ARRAY['The Prime Meridian', 'The Tropic of Cancer', 'The Tropic of Capricorn', 'The Arctic Circle', 'The International Date Line', 'The Antarctic Circle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'In which mountain range is Mont Blanc?', NULL,
        'The Alps', ARRAY['The Pyrenees', 'The Apennines', 'The Carpathians', 'The Caucasus', 'The Atlas Mountains', 'The Scandinavian Mountains'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which large island country off the southeast coast of Africa is the native home of lemurs?', NULL,
        'Madagascar', ARRAY['Mauritius', 'Sri Lanka', 'Zanzibar', 'Seychelles', 'Cape Verde', 'Mozambique'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Stockholm is the capital of which country?', NULL,
        'Sweden', ARRAY['Norway', 'Denmark', 'Finland', 'Iceland', 'Estonia', 'Latvia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which North Atlantic island country is nicknamed the land of fire and ice?', NULL,
        'Iceland', ARRAY['Greenland', 'Ireland', 'Norway', 'The Faroe Islands', 'Japan', 'New Zealand'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which country''s famous canal saves ships the long trip around the southern tip of South America?', NULL,
        'Panama', ARRAY['Nicaragua', 'Costa Rica', 'Colombia', 'Honduras', 'Mexico', 'Guatemala'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is a round model of the Earth called?', NULL,
        'A globe', ARRAY['An atlas', 'A compass', 'A chart', 'An orb', 'A planisphere', 'A sextant'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of the United States?', NULL,
        'Washington, D.C.', ARRAY['New York City', 'Philadelphia', 'Boston', 'Chicago', 'Los Angeles', 'Baltimore'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Poland?', NULL,
        'Warsaw', ARRAY['Kraków', 'Gdańsk', 'Prague', 'Budapest', 'Wrocław', 'Vilnius'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Belgium?', NULL,
        'Brussels', ARRAY['Antwerp', 'Amsterdam', 'Luxembourg', 'Bruges', 'Paris', 'Ghent'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which island city-state sits at the southern tip of the Malay Peninsula?', NULL,
        'Singapore', ARRAY['Brunei', 'Hong Kong', 'Macau', 'Monaco', 'Bahrain', 'Penang'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Canadian province has French as its only official language?', NULL,
        'Quebec', ARRAY['Ontario', 'Manitoba', 'New Brunswick', 'Nova Scotia', 'Alberta', 'British Columbia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which vast region makes up most of Asian Russia?', NULL,
        'Siberia', ARRAY['Lapland', 'Patagonia', 'Manchuria', 'Mongolia', 'Central Asia', 'Alaska'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the largest city in the province of Ontario?', NULL,
        'Toronto', ARRAY['Ottawa', 'Hamilton', 'Montreal', 'London', 'Kingston', 'Windsor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Norway?', NULL,
        'Oslo', ARRAY['Bergen', 'Stockholm', 'Copenhagen', 'Helsinki', 'Trondheim', 'Reykjavík'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Mexico?', NULL,
        'Mexico City', ARRAY['Guadalajara', 'Monterrey', 'Cancún', 'Tijuana', 'Acapulco', 'Puebla'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Italian city is famous for its canals and gondolas?', NULL,
        'Venice', ARRAY['Florence', 'Milan', 'Naples', 'Verona', 'Genoa', 'Pisa'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city is nicknamed the Eternal City?', NULL,
        'Rome', ARRAY['Athens', 'Jerusalem', 'Paris', 'Istanbul', 'Florence', 'Vienna'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which tiny country on the French Riviera is ruled by a prince and famous for its Monte Carlo casino?', NULL,
        'Monaco', ARRAY['Andorra', 'San Marino', 'Liechtenstein', 'Luxembourg', 'Malta', 'Vatican City'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which mountain range in Russia is traditionally taken as the dividing line between European and Asian territory?', NULL,
        'The Ural Mountains', ARRAY['The Alps', 'The Himalayas', 'The Carpathians', 'The Altai Mountains', 'The Pyrenees', 'The Atlas Mountains'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Australia?', NULL,
        'Canberra', ARRAY['Sydney', 'Melbourne', 'Perth', 'Brisbane', 'Adelaide', 'Darwin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which strait separates Europe and Africa at its narrowest point?', NULL,
        'The Strait of Gibraltar', ARRAY['The Bosphorus', 'The Strait of Hormuz', 'The Strait of Dover', 'The Strait of Messina', 'The Danish Straits', 'The Suez Canal'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which African country has three capital cities: Pretoria, Cape Town, and Bloemfontein?', NULL,
        'South Africa', ARRAY['Namibia', 'Zimbabwe', 'Botswana', 'Kenya', 'Nigeria', 'Egypt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the name of the imaginary line at 180 degrees longitude that roughly marks a change in calendar day?', NULL,
        'The International Date Line', ARRAY['The Prime Meridian', 'The Equator', 'The Tropic of Cancer', 'The Antarctic Circle', 'The Arctic Circle', 'The Tropic of Capricorn'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Scotland?', NULL,
        'Edinburgh', ARRAY['Glasgow', 'Aberdeen', 'Dundee', 'Inverness', 'Stirling', 'Perth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in Africa?', NULL,
        'Kilimanjaro', ARRAY['Mount Kenya', 'Mount Stanley', 'Ras Dashen', 'Mount Meru', 'Mount Elgon', 'Mount Cameroon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which mountain range runs down the western side of South America?', NULL,
        'The Andes', ARRAY['The Rockies', 'The Sierra Madre', 'The Appalachians', 'The Alps', 'The Himalayas', 'The Atlas Mountains'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the official language of Brazil?', NULL,
        'Portuguese', ARRAY['Spanish', 'English', 'French', 'Italian', 'Dutch', 'Latin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through both Vienna and Budapest?', NULL,
        'The Danube', ARRAY['The Rhine', 'The Elbe', 'The Vltava', 'The Volga', 'The Oder', 'The Drava'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The Gobi Desert lies in China and which other country?', NULL,
        'Mongolia', ARRAY['Kazakhstan', 'Russia', 'Afghanistan', 'Nepal', 'Uzbekistan', 'Kyrgyzstan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which South American desert is one of the driest places on Earth?', NULL,
        'The Atacama', ARRAY['The Gobi', 'The Sahara', 'The Kalahari', 'The Namib', 'The Mojave', 'The Patagonian Desert'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the narrow strip of land joining North and South America called?', NULL,
        'The Isthmus of Panama', ARRAY['The Isthmus of Suez', 'The Darién Gap', 'The Isthmus of Tehuantepec', 'The Panama Canal', 'The Bering Land Bridge', 'The Yucatán Peninsula'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is a large group of islands, like Indonesia or the Philippines, called?', NULL,
        'An archipelago', ARRAY['An atoll', 'A peninsula', 'An isthmus', 'A lagoon', 'A reef', 'A cay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the ancient rock-carved city of Petra?', NULL,
        'Jordan', ARRAY['Egypt', 'Israel', 'Syria', 'Lebanon', 'Saudi Arabia', 'Iraq'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is a long, narrow sea inlet between steep cliffs, carved by a glacier, called?', NULL,
        'A fjord', ARRAY['An estuary', 'A lagoon', 'A strait', 'An atoll', 'A cove', 'A delta'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the second-highest mountain in the world?', NULL,
        'K2', ARRAY['Kangchenjunga', 'Lhotse', 'Makalu', 'Annapurna', 'Nanga Parbat', 'Mont Blanc'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the deepest known part of the world''s oceans?', NULL,
        'The Mariana Trench', ARRAY['The Puerto Rico Trench', 'The Tonga Trench', 'The Java Trench', 'The Kuril Trench', 'The Kermadec Trench', 'The Philippine Trench'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of India?', NULL,
        'New Delhi', ARRAY['Mumbai', 'Kolkata', 'Bangalore', 'Chennai', 'Hyderabad', 'Karachi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Portugal?', NULL,
        'Lisbon', ARRAY['Porto', 'Madrid', 'Faro', 'Coimbra', 'Seville', 'Braga'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Thailand?', NULL,
        'Bangkok', ARRAY['Hanoi', 'Phnom Penh', 'Kuala Lumpur', 'Manila', 'Chiang Mai', 'Yangon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Nairobi is the capital of which country?', NULL,
        'Kenya', ARRAY['Uganda', 'Tanzania', 'Ethiopia', 'Rwanda', 'Somalia', 'Zambia'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Finland?', NULL,
        'Helsinki', ARRAY['Oslo', 'Stockholm', 'Tallinn', 'Copenhagen', 'Turku', 'Riga'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Denmark?', NULL,
        'Copenhagen', ARRAY['Oslo', 'Stockholm', 'Helsinki', 'Aarhus', 'Amsterdam', 'Hamburg'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of the Philippines?', NULL,
        'Manila', ARRAY['Cebu', 'Davao', 'Jakarta', 'Kuala Lumpur', 'Bangkok', 'Taipei'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Saudi Arabia?', NULL,
        'Riyadh', ARRAY['Jeddah', 'Mecca', 'Dubai', 'Doha', 'Medina', 'Abu Dhabi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'The Galápagos Islands belong to which country?', NULL,
        'Ecuador', ARRAY['Peru', 'Colombia', 'Chile', 'Costa Rica', 'Venezuela', 'Spain'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Kathmandu is the capital of which country?', NULL,
        'Nepal', ARRAY['Bhutan', 'Tibet', 'India', 'Bangladesh', 'Sikkim', 'Pakistan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What do we call a person who makes maps?', NULL,
        'A cartographer', ARRAY['A geographer', 'A surveyor', 'A geologist', 'A navigator', 'An astronomer', 'A topographer'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which line of latitude, about 23.5 degrees north, marks where the sun is directly overhead at the June solstice?', NULL,
        'The Tropic of Cancer', ARRAY['The Tropic of Capricorn', 'The Arctic Circle', 'The Equator', 'The Antarctic Circle', 'The Prime Meridian', 'The International Date Line'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the cold, treeless plain of the far north, with frozen ground just below the surface, called?', NULL,
        'The tundra', ARRAY['The taiga', 'The steppe', 'The savanna', 'The prairie', 'The pampas', 'The rainforest'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which strait now covers the ancient land bridge that first brought people to the Americas?', NULL,
        'The Bering Strait', ARRAY['The Strait of Gibraltar', 'The Strait of Magellan', 'The Davis Strait', 'The Strait of Hormuz', 'The Drake Passage', 'The Strait of Malacca'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Iran?', NULL,
        'Tehran', ARRAY['Baghdad', 'Isfahan', 'Kabul', 'Shiraz', 'Tabriz', 'Ankara'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of the Czech Republic?', NULL,
        'Prague', ARRAY['Brno', 'Bratislava', 'Vienna', 'Budapest', 'Warsaw', 'Kraków'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Transylvania, the legendary home of Dracula, is a region of which country?', NULL,
        'Romania', ARRAY['Hungary', 'Bulgaria', 'Serbia', 'Moldova', 'Slovakia', 'Poland'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'The Rock of Gibraltar is an overseas territory of which country?', NULL,
        'The United Kingdom', ARRAY['Spain', 'Portugal', 'Morocco', 'France', 'Malta', 'Italy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Tenerife and Gran Canaria belong to which Spanish island group off the coast of Africa?', NULL,
        'The Canary Islands', ARRAY['The Balearic Islands', 'The Azores', 'Madeira', 'Cape Verde', 'The Faroe Islands', 'The Channel Islands'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city is the capital of Catalonia?', NULL,
        'Barcelona', ARRAY['Madrid', 'Valencia', 'Seville', 'Bilbao', 'Zaragoza', 'Girona'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Australian state is an island?', NULL,
        'Tasmania', ARRAY['Victoria', 'Queensland', 'New South Wales', 'South Australia', 'Western Australia', 'Northern Territory'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Wales?', NULL,
        'Cardiff', ARRAY['Swansea', 'Edinburgh', 'Belfast', 'Newport', 'Bristol', 'Dublin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Malaysia?', NULL,
        'Kuala Lumpur', ARRAY['Singapore', 'Jakarta', 'Penang', 'Bangkok', 'Manila', 'Johor Bahru'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which peninsula do Spain and Portugal share?', NULL,
        'The Iberian Peninsula', ARRAY['The Balkan Peninsula', 'The Italian Peninsula', 'The Scandinavian Peninsula', 'The Jutland Peninsula', 'The Crimean Peninsula', 'The Peloponnese'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Colombo is the largest city of which island country?', NULL,
        'Sri Lanka', ARRAY['India', 'Bangladesh', 'The Maldives', 'Myanmar', 'Malaysia', 'Mauritius'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which warm Atlantic current helps keep Western Europe''s winters mild?', NULL,
        'The Gulf Stream', ARRAY['The Humboldt Current', 'The Kuroshio Current', 'The Labrador Current', 'The Canary Current', 'The Benguela Current', 'The Agulhas Current'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the largest island in the Mediterranean Sea?', NULL,
        'Sicily', ARRAY['Sardinia', 'Cyprus', 'Corsica', 'Crete', 'Malta', 'Mallorca'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was Brazil''s capital until 1960?', NULL,
        'Rio de Janeiro', ARRAY['São Paulo', 'Salvador', 'Brasília', 'Recife', 'Belo Horizonte', 'Lisbon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Northern Ireland?', NULL,
        'Belfast', ARRAY['Dublin', 'Derry', 'Cardiff', 'Glasgow', 'Armagh', 'Edinburgh'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Asian city was called Saigon until 1976?', NULL,
        'Ho Chi Minh City', ARRAY['Hanoi', 'Phnom Penh', 'Bangkok', 'Da Nang', 'Vientiane', 'Yangon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Puerto Rico?', NULL,
        'San Juan', ARRAY['Ponce', 'Havana', 'Santo Domingo', 'Mayagüez', 'Kingston', 'Nassau'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Lebanon?', NULL,
        'Beirut', ARRAY['Damascus', 'Amman', 'Tripoli', 'Byblos', 'Baghdad', 'Sidon'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which country has the longest coastline in the world?', NULL,
        'Canada', ARRAY['Russia', 'Indonesia', 'Australia', 'United States', 'Norway', 'Chile'], 300, 'Canada''s coastline is long enough to wrap around the equator about five times.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which European microstate lies high in the Pyrenees mountains?', NULL,
        'Andorra', ARRAY['Monaco', 'San Marino', 'Liechtenstein', 'Luxembourg', 'Malta', 'Vatican City'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Brazil?', NULL,
        'Brasília', ARRAY['Rio de Janeiro', 'São Paulo', 'Salvador', 'Buenos Aires', 'Recife', 'Belo Horizonte'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Turkey?', NULL,
        'Ankara', ARRAY['Istanbul', 'Izmir', 'Antalya', 'Bursa', 'Konya', 'Adana'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of New Zealand?', NULL,
        'Wellington', ARRAY['Auckland', 'Christchurch', 'Queenstown', 'Dunedin', 'Hamilton', 'Napier'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which city is the seat of Switzerland''s federal government?', NULL,
        'Bern', ARRAY['Zurich', 'Geneva', 'Basel', 'Lausanne', 'Lucerne', 'Lugano'], 300, 'Switzerland''s constitution names no capital; Bern is officially the "federal city."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Pakistan?', NULL,
        'Islamabad', ARRAY['Karachi', 'Lahore', 'Rawalpindi', 'Peshawar', 'Kabul', 'Quetta'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Victoria Falls lies on which river?', NULL,
        'The Zambezi', ARRAY['The Nile', 'The Congo', 'The Limpopo', 'The Orange', 'The Niger', 'The Okavango'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the longest river in Europe?', NULL,
        'The Volga', ARRAY['The Danube', 'The Rhine', 'The Dnieper', 'The Don', 'The Loire', 'The Elbe'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The Matterhorn sits on the border between Switzerland and which country?', NULL,
        'Italy', ARRAY['France', 'Austria', 'Germany', 'Liechtenstein', 'Slovenia', 'Monaco'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Counting cold deserts, what is the largest desert on Earth?', NULL,
        'Antarctica', ARRAY['The Sahara', 'The Arabian Desert', 'The Gobi', 'The Kalahari', 'The Great Victoria Desert', 'The Atacama'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the deepest lake in the world?', NULL,
        'Lake Baikal', ARRAY['Lake Tanganyika', 'Crater Lake', 'Lake Superior', 'Loch Ness', 'Lake Malawi', 'Lake Titicaca'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which lake, home to the Uros people''s floating reed islands, lies about 3,800 meters above sea level?', NULL,
        'Lake Titicaca', ARRAY['Lake Baikal', 'Lake Maracaibo', 'Lake Nicaragua', 'Lake Poopó', 'Lake Atitlán', 'Lake Junín'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Easter Island, famous for its giant stone heads, belongs to which country?', NULL,
        'Chile', ARRAY['Peru', 'Argentina', 'France', 'New Zealand', 'Ecuador', 'Spain'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which Himalayan kingdom measures its progress by "Gross National Happiness"?', NULL,
        'Bhutan', ARRAY['Nepal', 'Tibet', 'Sikkim', 'Mongolia', 'Laos', 'Myanmar'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the temple complex of Angkor Wat?', NULL,
        'Cambodia', ARRAY['Thailand', 'Laos', 'Vietnam', 'Myanmar', 'Indonesia', 'Malaysia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the world''s largest lake by area, despite having "sea" in its name?', NULL,
        'The Caspian Sea', ARRAY['Lake Superior', 'Lake Victoria', 'Lake Baikal', 'The Aral Sea', 'Lake Huron', 'Lake Tanganyika'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through Baghdad?', NULL,
        'The Tigris', ARRAY['The Euphrates', 'The Jordan', 'The Nile', 'The Indus', 'The Karun', 'The Orontes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the largest peninsula in the world?', NULL,
        'The Arabian Peninsula', ARRAY['The Iberian Peninsula', 'The Scandinavian Peninsula', 'The Labrador Peninsula', 'The Kamchatka Peninsula', 'The Balkan Peninsula', 'The Malay Peninsula'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the largest country lying entirely within Europe?', NULL,
        'Ukraine', ARRAY['France', 'Spain', 'Germany', 'Sweden', 'Poland', 'Norway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Ushuaia, often called the southernmost city in the world, is in which country?', NULL,
        'Argentina', ARRAY['Chile', 'New Zealand', 'South Africa', 'Australia', 'Uruguay', 'The Falkland Islands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the tallest uninterrupted waterfall in the world?', NULL,
        'Angel Falls', ARRAY['Victoria Falls', 'Niagara Falls', 'Iguazu Falls', 'Yosemite Falls', 'Kaieteur Falls', 'Sutherland Falls'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Venezuela?', NULL,
        'Caracas', ARRAY['Bogotá', 'Quito', 'Lima', 'Maracaibo', 'Santiago', 'Montevideo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Vietnam?', NULL,
        'Hanoi', ARRAY['Ho Chi Minh City', 'Bangkok', 'Phnom Penh', 'Vientiane', 'Da Nang', 'Yangon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Colombia?', NULL,
        'Bogotá', ARRAY['Medellín', 'Cali', 'Caracas', 'Quito', 'Cartagena', 'Lima'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which line of latitude marks where the sun stays up all day on the June solstice?', NULL,
        'The Arctic Circle', ARRAY['The Tropic of Cancer', 'The Antarctic Circle', 'The Tropic of Capricorn', 'The 60th parallel', 'The Prime Meridian', 'The Equator'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which tiny Mediterranean island country has Valletta as its capital?', NULL,
        'Malta', ARRAY['Cyprus', 'Corsica', 'Sardinia', 'Crete', 'Rhodes', 'Mallorca'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Mallorca, Menorca and Ibiza make up which Spanish island group?', NULL,
        'The Balearic Islands', ARRAY['The Canary Islands', 'The Azores', 'Madeira', 'The Cyclades', 'The Aeolian Islands', 'The Channel Islands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the largest Greek island?', NULL,
        'Crete', ARRAY['Rhodes', 'Corfu', 'Euboea', 'Santorini', 'Lesbos', 'Cyprus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Afghanistan?', NULL,
        'Kabul', ARRAY['Kandahar', 'Islamabad', 'Tehran', 'Tashkent', 'Herat', 'Dushanbe'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'The walled city of Dubrovnik is in which country?', NULL,
        'Croatia', ARRAY['Montenegro', 'Slovenia', 'Italy', 'Albania', 'Greece', 'Bosnia and Herzegovina'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Caribbean island do Haiti and the Dominican Republic share?', NULL,
        'Hispaniola', ARRAY['Puerto Rico', 'Cuba', 'Jamaica', 'Trinidad', 'Barbados', 'Tortuga'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Uruguay?', NULL,
        'Montevideo', ARRAY['Buenos Aires', 'Asunción', 'Santiago', 'Punta del Este', 'Porto Alegre', 'La Paz'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Ghana?', NULL,
        'Accra', ARRAY['Lagos', 'Kumasi', 'Abidjan', 'Dakar', 'Lomé', 'Abuja'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Senegal?', NULL,
        'Dakar', ARRAY['Bamako', 'Banjul', 'Conakry', 'Nouakchott', 'Accra', 'Saint-Louis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'In which Dutch city do the government and parliament sit, though Amsterdam is the capital?', NULL,
        'The Hague', ARRAY['Amsterdam', 'Rotterdam', 'Utrecht', 'Brussels', 'Antwerp', 'Eindhoven'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was Japan''s imperial capital for over 1,000 years, until 1869?', NULL,
        'Kyoto', ARRAY['Osaka', 'Nara', 'Kamakura', 'Hiroshima', 'Nagoya', 'Sapporo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was the capital of West Germany?', NULL,
        'Bonn', ARRAY['Frankfurt', 'Munich', 'Hamburg', 'Cologne', 'Düsseldorf', 'Berlin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which mountain range runs down the spine of the Italian peninsula?', NULL,
        'The Apennines', ARRAY['The Alps', 'The Dolomites', 'The Pyrenees', 'The Carpathians', 'The Dinaric Alps', 'The Balkan Mountains'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which North African mountain range shares its name with the Titan who held up the sky?', NULL,
        'The Atlas Mountains', ARRAY['The Ahaggar Mountains', 'The Drakensberg', 'The Ethiopian Highlands', 'The Ruwenzori Mountains', 'The Tibesti Mountains', 'The Zagros Mountains'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which narrow West African country is almost completely surrounded by Senegal?', NULL,
        'The Gambia', ARRAY['Guinea-Bissau', 'Sierra Leone', 'Liberia', 'Togo', 'Benin', 'Mauritania'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Qatar?', NULL,
        'Doha', ARRAY['Dubai', 'Abu Dhabi', 'Manama', 'Kuwait City', 'Muscat', 'Riyadh'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the northernmost capital of a sovereign country?', NULL,
        'Reykjavík', ARRAY['Oslo', 'Helsinki', 'Tórshavn', 'Tromsø', 'Stockholm', 'Tallinn'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which long river flows past Orléans, Tours and Nantes to the Atlantic?', NULL,
        'The Loire', ARRAY['The Seine', 'The Rhône', 'The Garonne', 'The Dordogne', 'The Rhine', 'The Meuse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which Mediterranean island is divided between a Greek-speaking south and a Turkish-speaking north?', NULL,
        'Cyprus', ARRAY['Crete', 'Rhodes', 'Malta', 'Sicily', 'Corsica', 'Sardinia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the longest river that flows entirely within one country?', NULL,
        'The Yangtze', ARRAY['The Mississippi', 'The Yellow River', 'The Volga', 'The Mekong', 'The Ganges', 'The Lena'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which sea lies between Australia and New Zealand?', NULL,
        'The Tasman Sea', ARRAY['The Coral Sea', 'The Timor Sea', 'The Arafura Sea', 'The Solomon Sea', 'The Ross Sea', 'The Philippine Sea'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city, the highest seat of government in the world, houses Bolivia''s government?', NULL,
        'La Paz', ARRAY['Sucre', 'Santa Cruz', 'Cochabamba', 'Quito', 'Lima', 'Potosí'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was Nigeria''s capital until 1991?', NULL,
        'Lagos', ARRAY['Abuja', 'Kano', 'Ibadan', 'Port Harcourt', 'Accra', 'Enugu'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the largest of Japan''s main islands?', NULL,
        'Honshu', ARRAY['Hokkaido', 'Kyushu', 'Shikoku', 'Okinawa', 'Sakhalin', 'Sado'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which African country was formerly known as Abyssinia?', NULL,
        'Ethiopia', ARRAY['Eritrea', 'Sudan', 'Somalia', 'Kenya', 'Egypt', 'Tanzania'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which mountain kingdom in southern Africa is completely surrounded by a single neighboring country?', NULL,
        'Lesotho', ARRAY['Swaziland (Eswatini)', 'Botswana', 'Zimbabwe', 'Namibia', 'Malawi', 'Mozambique'], 400, 'Lesotho is the only country lying entirely above 1,000 meters; even its lowest point is higher.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which country has the most time zones of any country in the world, due to its overseas territories?', NULL,
        'France', ARRAY['Russia', 'United States', 'United Kingdom', 'China', 'Australia', 'Canada'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Kazakhstan?', NULL,
        'Astana', ARRAY['Almaty', 'Bishkek', 'Tashkent', 'Ashgabat', 'Dushanbe', 'Baku'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the only country that lies in all four hemispheres -- north, south, east, and west?', NULL,
        'Kiribati', ARRAY['Indonesia', 'Brazil', 'Ecuador', 'Maldives', 'Fiji', 'Seychelles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Morocco?', NULL,
        'Rabat', ARRAY['Casablanca', 'Marrakesh', 'Fez', 'Tangier', 'Agadir', 'Meknes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Nigeria?', NULL,
        'Abuja', ARRAY['Lagos', 'Kano', 'Ibadan', 'Port Harcourt', 'Accra', 'Benin City'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in the Americas?', NULL,
        'Aconcagua', ARRAY['Chimborazo', 'Huascarán', 'Ojos del Salado', 'Cotopaxi', 'Illimani', 'Mount Logan'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which country has more ancient pyramids than any other?', NULL,
        'Sudan', ARRAY['Egypt', 'Mexico', 'Peru', 'Guatemala', 'Libya', 'Iraq'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which European country is one of only two in the world that are "doubly landlocked"?', NULL,
        'Liechtenstein', ARRAY['Switzerland', 'Andorra', 'Luxembourg', 'Austria', 'San Marino', 'Hungary'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the smallest country in South America by area?', NULL,
        'Suriname', ARRAY['Uruguay', 'Guyana', 'Ecuador', 'Paraguay', 'French Guiana', 'Belize'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the only Central American country without a Caribbean coastline?', NULL,
        'El Salvador', ARRAY['Honduras', 'Guatemala', 'Nicaragua', 'Costa Rica', 'Panama', 'Belize'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Switzerland''s four national languages are German, French, Italian and which other?', NULL,
        'Romansh', ARRAY['Ladin', 'Latin', 'Flemish', 'Swiss German', 'Occitan', 'Walloon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the largest country in Africa by area?', NULL,
        'Algeria', ARRAY['Sudan', 'Democratic Republic of the Congo', 'Libya', 'Egypt', 'Nigeria', 'Chad'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the world''s largest and highest plateau?', NULL,
        'The Tibetan Plateau', ARRAY['The Deccan Plateau', 'The Colorado Plateau', 'The Altiplano', 'The Ethiopian Highlands', 'The Iranian Plateau', 'The Mongolian Plateau'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The fabled desert city of Timbuktu is in which country?', NULL,
        'Mali', ARRAY['Niger', 'Mauritania', 'Burkina Faso', 'Senegal', 'Chad', 'Morocco'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Since 2005-06, which purpose-built city has been the capital of Myanmar?', NULL,
        'Naypyidaw', ARRAY['Yangon', 'Mandalay', 'Bagan', 'Vientiane', 'Phnom Penh', 'Dhaka'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'The Strait of Malacca separates the Malay Peninsula from which Indonesian island?', NULL,
        'Sumatra', ARRAY['Java', 'Borneo', 'Sulawesi', 'Bali', 'Timor', 'New Guinea'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which coastal desert in southwest Africa is often called the oldest desert in the world?', NULL,
        'The Namib', ARRAY['The Kalahari', 'The Sahara', 'The Karoo', 'The Atacama', 'The Sonoran', 'The Gobi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'The Kalahari Desert covers most of which country?', NULL,
        'Botswana', ARRAY['Namibia', 'South Africa', 'Zimbabwe', 'Zambia', 'Angola', 'Lesotho'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which small country on the Horn of Africa was once called French Somaliland?', NULL,
        'Djibouti', ARRAY['Eritrea', 'Somalia', 'Yemen', 'Comoros', 'Mauritius', 'Oman'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Estonia?', NULL,
        'Tallinn', ARRAY['Riga', 'Vilnius', 'Helsinki', 'Tartu', 'Minsk', 'Kaunas'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Lithuania?', NULL,
        'Vilnius', ARRAY['Riga', 'Tallinn', 'Kaunas', 'Minsk', 'Warsaw', 'Klaipėda'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Slovenia?', NULL,
        'Ljubljana', ARRAY['Zagreb', 'Bratislava', 'Belgrade', 'Sarajevo', 'Maribor', 'Skopje'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Slovakia?', NULL,
        'Bratislava', ARRAY['Prague', 'Ljubljana', 'Budapest', 'Košice', 'Vienna', 'Brno'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the highest mountain in Europe?', NULL,
        'Mount Elbrus', ARRAY['Mont Blanc', 'Mount Ararat', 'Mount Olympus', 'The Matterhorn', 'Mount Kazbek', 'Grossglockner'], 400, 'Rising in Russia''s Caucasus range, Elbrus is a dormant volcano with two summits.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the highest mountain on mainland Australia?', NULL,
        'Mount Kosciuszko', ARRAY['Uluru', 'Aoraki / Mount Cook', 'Mount Townsend', 'Mount Bogong', 'Mount Wellington', 'Mount Ossa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which strait separates New Zealand''s North and South Islands?', NULL,
        'Cook Strait', ARRAY['Bass Strait', 'Foveaux Strait', 'Torres Strait', 'The Hauraki Gulf', 'Tasman Bay', 'The Strait of Magellan'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which is the world''s largest river delta, home to the Sundarbans mangrove forest?', NULL,
        'The Ganges Delta', ARRAY['The Nile Delta', 'The Mekong Delta', 'The Amazon Delta', 'The Niger Delta', 'The Mississippi Delta', 'The Okavango Delta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Laos?', NULL,
        'Vientiane', ARRAY['Phnom Penh', 'Hanoi', 'Bangkok', 'Luang Prabang', 'Yangon', 'Naypyidaw'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city housed Australia''s federal parliament from 1901 until 1927?', NULL,
        'Melbourne', ARRAY['Sydney', 'Adelaide', 'Brisbane', 'Perth', 'Hobart', 'Darwin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was Pakistan''s first capital, at independence in 1947?', NULL,
        'Karachi', ARRAY['Lahore', 'Rawalpindi', 'Peshawar', 'Delhi', 'Dhaka', 'Hyderabad'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which city was Kazakhstan''s capital until 1997?', NULL,
        'Almaty', ARRAY['Astana', 'Bishkek', 'Tashkent', 'Shymkent', 'Karaganda', 'Semey'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which river forms much of the border between Germany and Poland?', NULL,
        'The Oder', ARRAY['The Vistula', 'The Elbe', 'The Rhine', 'The Bug', 'The Danube', 'The Main'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Burkina Faso?', NULL,
        'Ouagadougou', ARRAY['Bamako', 'Niamey', 'Lomé', 'Accra', 'Bobo-Dioulasso', 'Abidjan'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Kyrgyzstan?', NULL,
        'Bishkek', ARRAY['Almaty', 'Tashkent', 'Dushanbe', 'Ashgabat', 'Osh', 'Astana'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Turkmenistan?', NULL,
        'Ashgabat', ARRAY['Tashkent', 'Dushanbe', 'Bishkek', 'Baku', 'Türkmenbaşy', 'Mary'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Eritrea?', NULL,
        'Asmara', ARRAY['Addis Ababa', 'Djibouti', 'Massawa', 'Khartoum', 'Mogadishu', 'Sana''a'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Paraguay?', NULL,
        'Asunción', ARRAY['Montevideo', 'La Paz', 'Sucre', 'Ciudad del Este', 'Encarnación', 'Corrientes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Armenia?', NULL,
        'Yerevan', ARRAY['Tbilisi', 'Baku', 'Gyumri', 'Tehran', 'Ankara', 'Nakhchivan'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Azerbaijan?', NULL,
        'Baku', ARRAY['Tbilisi', 'Yerevan', 'Ganja', 'Tehran', 'Ashgabat', 'Grozny'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of the country of Georgia?', NULL,
        'Tbilisi', ARRAY['Yerevan', 'Baku', 'Batumi', 'Ankara', 'Sochi', 'Kutaisi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which strait separates Australia from New Guinea?', NULL,
        'Torres Strait', ARRAY['Bass Strait', 'Cook Strait', 'The Strait of Malacca', 'The Lombok Strait', 'The Sunda Strait', 'The Makassar Strait'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the largest lake lying entirely within Europe?', NULL,
        'Lake Ladoga', ARRAY['Lake Onega', 'Lake Vänern', 'Lake Geneva', 'Lake Balaton', 'Lake Peipus', 'Lake Saimaa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the smallest country in Africa by area?', NULL,
        'Seychelles', ARRAY['The Gambia', 'São Tomé and Príncipe', 'Mauritius', 'Comoros', 'Cape Verde', 'Eswatini'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which is the longest river of Spain and Portugal, reaching the sea at Portugal''s capital?', NULL,
        'The Tagus', ARRAY['The Douro', 'The Ebro', 'The Guadalquivir', 'The Guadiana', 'The Minho', 'The Júcar'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Namibia?', NULL,
        'Windhoek', ARRAY['Gaborone', 'Walvis Bay', 'Lusaka', 'Luanda', 'Swakopmund', 'Pretoria'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Tanzania?', NULL,
        'Dodoma', ARRAY['Dar es Salaam', 'Zanzibar City', 'Arusha', 'Nairobi', 'Kampala', 'Mwanza'], 400, 'Dar es Salaam, the biggest city, was the capital before Dodoma; the government took decades to move.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'What is the capital of Uganda?', NULL,
        'Kampala', ARRAY['Entebbe', 'Nairobi', 'Kigali', 'Juba', 'Gulu', 'Jinja'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_2', NULL,
        'Which range of hills and mountains is called the backbone of England?', NULL,
        'The Pennines', ARRAY['The Cotswolds', 'The Cheviot Hills', 'The Chiltern Hills', 'The Mendips', 'The Cambrian Mountains', 'The Grampians'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GEOGRAPHY';
