-- ============================================================================
-- content/sql/geography.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/geography.csv, the master copy of the
-- Thinking Pants category GEOGRAPHY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GEOGRAPHY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the largest continent by both area and population?', NULL,
        'Asia', ARRAY['Africa', 'Europe', 'North America', 'South America', 'Antarctica', 'Australia'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the smallest country in the world by area?', NULL,
        'Vatican City', ARRAY['Monaco', 'San Marino', 'Liechtenstein', 'Malta', 'Andorra', 'Luxembourg'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which U.S. state is the largest by area?', NULL,
        'Alaska', ARRAY['Texas', 'California', 'Montana', 'Nevada', 'Colorado', 'Arizona'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the longest river in Africa?', NULL,
        'The Nile', ARRAY['The Congo', 'The Niger', 'The Zambezi', 'The Orange', 'The Limpopo', 'The Senegal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which desert is the largest hot desert in the world?', NULL,
        'The Sahara', ARRAY['The Gobi', 'The Kalahari', 'The Mojave', 'The Arabian Desert', 'The Atacama', 'The Sonoran'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which sea is so salty that swimmers can easily float on its surface?', NULL,
        'The Dead Sea', ARRAY['The Red Sea', 'The Caspian Sea', 'The Black Sea', 'The Aral Sea', 'The Mediterranean Sea', 'The Baltic Sea'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Japan?', NULL,
        'Tokyo', ARRAY['Kyoto', 'Osaka', 'Yokohama', 'Hiroshima', 'Nagoya', 'Sapporo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Scotland?', NULL,
        'Edinburgh', ARRAY['Glasgow', 'Aberdeen', 'Dundee', 'Inverness', 'Stirling', 'Perth'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through Paris?', NULL,
        'The Seine', ARRAY['The Loire', 'The Rhône', 'The Thames', 'The Rhine', 'The Danube', 'The Garonne'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through London?', NULL,
        'The Thames', ARRAY['The Seine', 'The Severn', 'The Trent', 'The Mersey', 'The Avon', 'The Tyne'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in the world above sea level?', NULL,
        'Mount Everest', ARRAY['K2', 'Kangchenjunga', 'Mont Blanc', 'Kilimanjaro', 'Denali', 'Aconcagua'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in Africa?', NULL,
        'Kilimanjaro', ARRAY['Mount Kenya', 'Mount Stanley', 'Ras Dashen', 'Mount Meru', 'Mount Elgon', 'Mount Cameroon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Not counting Australia, what is the largest island in the world?', NULL,
        'Greenland', ARRAY['New Guinea', 'Borneo', 'Madagascar', 'Baffin Island', 'Iceland', 'Great Britain'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the only U.S. state made up entirely of islands?', NULL,
        'Hawaii', ARRAY['Alaska', 'Florida', 'Maine', 'Washington', 'Delaware', 'Michigan'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the Inca citadel of Machu Picchu?', NULL,
        'Peru', ARRAY['Bolivia', 'Ecuador', 'Chile', 'Colombia', 'Mexico', 'Argentina'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the name of the world''s largest coral reef system?', NULL,
        'The Great Barrier Reef', ARRAY['The Belize Barrier Reef', 'The Red Sea Coral Reef', 'The New Caledonia Barrier Reef', 'The Florida Reef', 'Ningaloo Reef', 'Raja Ampat'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which mountain range runs down the western side of South America?', NULL,
        'The Andes', ARRAY['The Rockies', 'The Sierra Madre', 'The Appalachians', 'The Alps', 'The Himalayas', 'The Atlas Mountains'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the official language of Brazil?', NULL,
        'Portuguese', ARRAY['Spanish', 'English', 'French', 'Italian', 'Dutch', 'Latin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Egypt?', NULL,
        'Cairo', ARRAY['Alexandria', 'Giza', 'Luxor', 'Aswan', 'Khartoum', 'Tripoli'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which ocean lies between Africa and Australia?', NULL,
        'The Indian Ocean', ARRAY['The Atlantic Ocean', 'The Pacific Ocean', 'The Southern Ocean', 'The Arctic Ocean', 'The Arabian Sea', 'The Coral Sea'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which mountain range in Russia is traditionally taken as the dividing line between European and Asian territory?', NULL,
        'The Ural Mountains', ARRAY['The Alps', 'The Himalayas', 'The Carpathians', 'The Altai Mountains', 'The Pyrenees', 'The Atlas Mountains'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Australia?', NULL,
        'Canberra', ARRAY['Sydney', 'Melbourne', 'Perth', 'Brisbane', 'Adelaide', 'Darwin'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the smallest U.S. state by area?', NULL,
        'Rhode Island', ARRAY['Delaware', 'Connecticut', 'Hawaii', 'Vermont', 'New Hampshire', 'New Jersey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which strait separates Europe and Africa at its narrowest point?', NULL,
        'The Strait of Gibraltar', ARRAY['The Bosphorus', 'The Strait of Hormuz', 'The Strait of Dover', 'The Strait of Messina', 'The Danish Straits', 'The Suez Canal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the name of the line of 0 degrees longitude that passes through Greenwich, England?', NULL,
        'The Prime Meridian', ARRAY['The Equator', 'The Tropic of Cancer', 'The International Date Line', 'The Arctic Circle', 'The Tropic of Capricorn', 'The Antimeridian'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which African country has three capital cities: Pretoria, Cape Town, and Bloemfontein?', NULL,
        'South Africa', ARRAY['Namibia', 'Zimbabwe', 'Botswana', 'Kenya', 'Nigeria', 'Egypt'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Brazil?', NULL,
        'Brasília', ARRAY['Rio de Janeiro', 'São Paulo', 'Salvador', 'Buenos Aires', 'Recife', 'Belo Horizonte'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Turkey?', NULL,
        'Ankara', ARRAY['Istanbul', 'Izmir', 'Antalya', 'Bursa', 'Konya', 'Adana'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of New Zealand?', NULL,
        'Wellington', ARRAY['Auckland', 'Christchurch', 'Queenstown', 'Dunedin', 'Hamilton', 'Napier'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of the U.S. state of New York?', NULL,
        'Albany', ARRAY['New York City', 'Buffalo', 'Rochester', 'Syracuse', 'Ithaca', 'Yonkers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through both Vienna and Budapest?', NULL,
        'The Danube', ARRAY['The Rhine', 'The Elbe', 'The Vltava', 'The Volga', 'The Oder', 'The Drava'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river forms much of the border between the U.S. and Mexico?', NULL,
        'The Rio Grande', ARRAY['The Colorado', 'The Pecos', 'The Gila', 'The Red River', 'The Brazos', 'The Arkansas'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river carries far more water than any other in the world?', NULL,
        'The Amazon', ARRAY['The Nile', 'The Congo', 'The Mississippi', 'The Yangtze', 'The Ganges', 'The Orinoco'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The Gobi Desert lies in China and which other country?', NULL,
        'Mongolia', ARRAY['Kazakhstan', 'Russia', 'Afghanistan', 'Nepal', 'Uzbekistan', 'Kyrgyzstan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which South American desert is one of the driest places on Earth?', NULL,
        'The Atacama', ARRAY['The Gobi', 'The Sahara', 'The Kalahari', 'The Namib', 'The Mojave', 'The Patagonian Desert'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which two countries share the longest international border in the world?', NULL,
        'The United States and Canada', ARRAY['Russia and China', 'Russia and Kazakhstan', 'Chile and Argentina', 'China and Mongolia', 'India and Bangladesh', 'Brazil and Argentina'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the narrow strip of land joining North and South America called?', NULL,
        'The Isthmus of Panama', ARRAY['The Isthmus of Suez', 'The Darién Gap', 'The Isthmus of Tehuantepec', 'The Panama Canal', 'The Bering Land Bridge', 'The Yucatán Peninsula'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is a large group of islands, like Indonesia or the Philippines, called?', NULL,
        'An archipelago', ARRAY['An atoll', 'A peninsula', 'An isthmus', 'A lagoon', 'A reef', 'A cay'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the ancient rock-carved city of Petra?', NULL,
        'Jordan', ARRAY['Egypt', 'Israel', 'Syria', 'Lebanon', 'Saudi Arabia', 'Iraq'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is a long, narrow sea inlet between steep cliffs, carved by a glacier, called?', NULL,
        'A fjord', ARRAY['An estuary', 'A lagoon', 'A strait', 'An atoll', 'A cove', 'A delta'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which African country was formerly known as Abyssinia?', NULL,
        'Ethiopia', ARRAY['Eritrea', 'Sudan', 'Somalia', 'Kenya', 'Egypt', 'Tanzania'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which mountain kingdom in southern Africa is completely surrounded by a single neighboring country?', NULL,
        'Lesotho', ARRAY['Swaziland (Eswatini)', 'Botswana', 'Zimbabwe', 'Namibia', 'Malawi', 'Mozambique'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the capital of Kazakhstan?', NULL,
        'Astana', ARRAY['Almaty', 'Bishkek', 'Tashkent', 'Ashgabat', 'Dushanbe', 'Baku'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which country has the longest coastline in the world?', NULL,
        'Canada', ARRAY['Russia', 'Indonesia', 'Australia', 'United States', 'Norway', 'Chile'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the name of the imaginary line at 180 degrees longitude that roughly marks a change in calendar day?', NULL,
        'The International Date Line', ARRAY['The Prime Meridian', 'The Equator', 'The Tropic of Cancer', 'The Antarctic Circle', 'The Arctic Circle', 'The Tropic of Capricorn'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which European microstate lies high in the Pyrenees mountains?', NULL,
        'Andorra', ARRAY['Monaco', 'San Marino', 'Liechtenstein', 'Luxembourg', 'Malta', 'Vatican City'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which city is the seat of Switzerland''s federal government?', NULL,
        'Bern', ARRAY['Zurich', 'Geneva', 'Basel', 'Lausanne', 'Lucerne', 'Lugano'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Pakistan?', NULL,
        'Islamabad', ARRAY['Karachi', 'Lahore', 'Rawalpindi', 'Peshawar', 'Kabul', 'Quetta'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Victoria Falls lies on which river?', NULL,
        'The Zambezi', ARRAY['The Nile', 'The Congo', 'The Limpopo', 'The Orange', 'The Niger', 'The Okavango'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the longest river in Europe?', NULL,
        'The Volga', ARRAY['The Danube', 'The Rhine', 'The Dnieper', 'The Don', 'The Loire', 'The Elbe'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the second-highest mountain in the world?', NULL,
        'K2', ARRAY['Kangchenjunga', 'Lhotse', 'Makalu', 'Annapurna', 'Nanga Parbat', 'Mont Blanc'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The Matterhorn sits on the border between Switzerland and which country?', NULL,
        'Italy', ARRAY['France', 'Austria', 'Germany', 'Liechtenstein', 'Slovenia', 'Monaco'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Counting cold deserts, what is the largest desert on Earth?', NULL,
        'Antarctica', ARRAY['The Sahara', 'The Arabian Desert', 'The Gobi', 'The Kalahari', 'The Great Victoria Desert', 'The Atacama'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the deepest lake in the world?', NULL,
        'Lake Baikal', ARRAY['Lake Tanganyika', 'Crater Lake', 'Lake Superior', 'Loch Ness', 'Lake Malawi', 'Lake Titicaca'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which lake, home to the Uros people''s floating reed islands, lies about 3,800 meters above sea level?', NULL,
        'Lake Titicaca', ARRAY['Lake Baikal', 'Lake Maracaibo', 'Lake Nicaragua', 'Lake Poopó', 'Lake Atitlán', 'Lake Junín'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Easter Island, famous for its giant stone heads, belongs to which country?', NULL,
        'Chile', ARRAY['Peru', 'Argentina', 'France', 'New Zealand', 'Ecuador', 'Spain'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which Himalayan kingdom measures its progress by "Gross National Happiness"?', NULL,
        'Bhutan', ARRAY['Nepal', 'Tibet', 'Sikkim', 'Mongolia', 'Laos', 'Myanmar'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'In which country is the temple complex of Angkor Wat?', NULL,
        'Cambodia', ARRAY['Thailand', 'Laos', 'Vietnam', 'Myanmar', 'Indonesia', 'Malaysia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the world''s largest lake by area, despite having "sea" in its name?', NULL,
        'The Caspian Sea', ARRAY['Lake Superior', 'Lake Victoria', 'Lake Baikal', 'The Aral Sea', 'Lake Huron', 'Lake Tanganyika'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the deepest known part of the world''s oceans?', NULL,
        'The Mariana Trench', ARRAY['The Puerto Rico Trench', 'The Tonga Trench', 'The Java Trench', 'The Kuril Trench', 'The Kermadec Trench', 'The Philippine Trench'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Which country has the most time zones of any country in the world, due to its overseas territories?', NULL,
        'France', ARRAY['Russia', 'United States', 'United Kingdom', 'China', 'Australia', 'Canada'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'What is the only country that lies in all four hemispheres -- north, south, east, and west?', NULL,
        'Kiribati', ARRAY['Indonesia', 'Brazil', 'Ecuador', 'Maldives', 'Fiji', 'Seychelles'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Morocco?', NULL,
        'Rabat', ARRAY['Casablanca', 'Marrakesh', 'Fez', 'Tangier', 'Agadir', 'Meknes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the capital of Nigeria?', NULL,
        'Abuja', ARRAY['Lagos', 'Kano', 'Ibadan', 'Port Harcourt', 'Accra', 'Benin City'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which river flows through Baghdad?', NULL,
        'The Tigris', ARRAY['The Euphrates', 'The Jordan', 'The Nile', 'The Indus', 'The Karun', 'The Orontes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the highest mountain in the Americas?', NULL,
        'Aconcagua', ARRAY['Chimborazo', 'Huascarán', 'Ojos del Salado', 'Cotopaxi', 'Illimani', 'Mount Logan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the largest peninsula in the world?', NULL,
        'The Arabian Peninsula', ARRAY['The Iberian Peninsula', 'The Scandinavian Peninsula', 'The Labrador Peninsula', 'The Kamchatka Peninsula', 'The Balkan Peninsula', 'The Malay Peninsula'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which country has more ancient pyramids than any other?', NULL,
        'Sudan', ARRAY['Egypt', 'Mexico', 'Peru', 'Guatemala', 'Libya', 'Iraq'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which European country is one of only two in the world that are "doubly landlocked"?', NULL,
        'Liechtenstein', ARRAY['Switzerland', 'Andorra', 'Luxembourg', 'Austria', 'San Marino', 'Hungary'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the largest country lying entirely within Europe?', NULL,
        'Ukraine', ARRAY['France', 'Spain', 'Germany', 'Sweden', 'Poland', 'Norway'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the smallest country in South America by area?', NULL,
        'Suriname', ARRAY['Uruguay', 'Guyana', 'Ecuador', 'Paraguay', 'French Guiana', 'Belize'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Which is the only Central American country without a Caribbean coastline?', NULL,
        'El Salvador', ARRAY['Honduras', 'Guatemala', 'Nicaragua', 'Costa Rica', 'Panama', 'Belize'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Switzerland''s four national languages are German, French, Italian and which other?', NULL,
        'Romansh', ARRAY['Ladin', 'Latin', 'Flemish', 'Swiss German', 'Occitan', 'Walloon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'Ushuaia, often called the southernmost city in the world, is in which country?', NULL,
        'Argentina', ARRAY['Chile', 'New Zealand', 'South Africa', 'Australia', 'Uruguay', 'The Falkland Islands'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the tallest uninterrupted waterfall in the world?', NULL,
        'Angel Falls', ARRAY['Victoria Falls', 'Niagara Falls', 'Iguazu Falls', 'Yosemite Falls', 'Kaieteur Falls', 'Sutherland Falls'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'What is the largest country in Africa by area?', NULL,
        'Algeria', ARRAY['Sudan', 'Democratic Republic of the Congo', 'Libya', 'Egypt', 'Nigeria', 'Chad'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the world''s largest and highest plateau?', NULL,
        'The Tibetan Plateau', ARRAY['The Deccan Plateau', 'The Colorado Plateau', 'The Altiplano', 'The Ethiopian Highlands', 'The Iranian Plateau', 'The Mongolian Plateau'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'GEOGRAPHY_BATCH_1', NULL,
        'The fabled desert city of Timbuktu is in which country?', NULL,
        'Mali', ARRAY['Niger', 'Mauritania', 'Burkina Faso', 'Senegal', 'Chad', 'Morocco'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'Since 2005-06, which purpose-built city has been the capital of Myanmar?', NULL,
        'Naypyidaw', ARRAY['Yangon', 'Mandalay', 'Bagan', 'Vientiane', 'Phnom Penh', 'Dhaka'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'GEOGRAPHY', 'ORIGINAL', NULL,
        'The Strait of Malacca separates the Malay Peninsula from which Indonesian island?', NULL,
        'Sumatra', ARRAY['Java', 'Borneo', 'Sulawesi', 'Bali', 'Timor', 'New Guinea'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'GEOGRAPHY';
