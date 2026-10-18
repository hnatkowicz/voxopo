-- ============================================================================
-- content/sql/landmarks.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/landmarks.csv, the master copy of the
-- Thinking Pants category LANDMARKS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 100 live questions
-- (100: 25, 200: 28, 300: 27, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LANDMARKS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/big-ben.webp',
        'Big Ben', ARRAY['Tower Bridge', 'Westminster Abbey', 'Hungarian Parliament Building', 'Buckingham Palace', 'Tower of London', 'St. Paul''s Cathedral'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/burj-khalifa.webp',
        'Burj Khalifa', ARRAY['Kingdom Centre', 'Shanghai Tower', 'Taipei 101', 'Lotte World Tower', 'One World Trade Center', 'Burj Al Arab'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/christ-redeemer.webp',
        'Christ the Redeemer', ARRAY['Cristo Rei', 'Christ of the Abyss', 'Christ of the Ozarks', 'Cristo de la Concordia', 'Statue of Liberty', 'Christ the King'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/colosseum.webp',
        'Colosseum', ARRAY['Roman Forum', 'Pantheon', 'Arena of Nîmes', 'Verona Arena', 'Circus Maximus', 'Amphitheatre of El Jem'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/eiffel-tower.webp',
        'Eiffel Tower', ARRAY['Tokyo Tower', 'Blackpool Tower', 'CN Tower', 'Space Needle', 'Berlin TV Tower', 'Petronas Towers'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/golden-gate.webp',
        'Golden Gate Bridge', ARRAY['Brooklyn Bridge', 'Bay Bridge', '25 de Abril Bridge', 'Verrazzano-Narrows Bridge', 'Mackinac Bridge', 'Tower Bridge'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/grand-canyon.webp',
        'Grand Canyon', ARRAY['Bryce Canyon', 'Zion Canyon', 'Antelope Canyon', 'Copper Canyon', 'Fish River Canyon', 'Canyonlands'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/great-pyramids.webp',
        'Great Pyramids of Giza', ARRAY['Pyramid of Djoser', 'Chichen Itza', 'Pyramids of Meroë', 'Pyramid of the Sun', 'Temple of Karnak', 'Valley of the Kings'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/great-sphinx.webp',
        'Great Sphinx of Giza', ARRAY['Abu Simbel', 'Colossi of Memnon', 'Temple of Karnak', 'Avenue of Sphinxes', 'Mask of Tutankhamun', 'Temple of Luxor'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/great-wall.webp',
        'Great Wall of China', ARRAY['Hadrian''s Wall', 'Walls of Ston', 'Ming City Wall of Xi’an', 'Kumbhalgarh Fort wall', 'Walls of Constantinople', 'Forbidden City'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/leaning-tower-pisa.webp',
        'Leaning Tower of Pisa', ARRAY['Giotto''s Campanile', 'St. Mark''s Campanile', 'Torre del Mangia', 'Asinelli Tower', 'Belfry of Bruges', 'Tower of Hercules'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/machu-picchu.webp',
        'Machu Picchu', ARRAY['Choquequirao', 'Ollantaytambo', 'Sacsayhuamán', 'Ciudad Perdida', 'Kuélap', 'Tikal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mt-fuji.webp',
        'Mount Fuji', ARRAY['Mount Kilimanjaro', 'Mount Rainier', 'Mount Mayon', 'Mount Taranaki', 'Mount Etna', 'Mount Ararat'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mount-rushmore.webp',
        'Mount Rushmore', ARRAY['Crazy Horse Memorial', 'Stone Mountain', 'Lincoln Memorial', 'Mount Hood', 'Devils Tower', 'Pikes Peak'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/niagarafalls.webp',
        'Niagara Falls', ARRAY['Iguazu Falls', 'Victoria Falls', 'Angel Falls', 'Horseshoe Falls of Iceland', 'Gullfoss', 'Yosemite Falls'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/space-needle.webp',
        'Space Needle', ARRAY['CN Tower', 'Stratosphere Tower', 'Tower of the Americas', 'Sky Tower', 'Reunion Tower', 'Calgary Tower'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/st-basils.webp',
        'St. Basil''s Cathedral', ARRAY['Kremlin', 'Church of the Savior on Spilled Blood', 'Hagia Sophia', 'Cathedral of Christ the Saviour', 'Winter Palace', 'Alexander Nevsky Cathedral'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/statue-liberty.webp',
        'Statue of Liberty', ARRAY['Christ the Redeemer', 'The Motherland Calls', 'Statue of Unity', 'Colossus of Rhodes', 'Lincoln Memorial', 'Mount Rushmore'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/stonehenge-stones.webp',
        'Stonehenge', ARRAY['Avebury', 'Carnac Stones', 'Callanish Stones', 'Ring of Brodgar', 'Easter Island (Moai)', 'Göbekli Tepe'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/sydney-opera.webp',
        'Sydney Opera House', ARRAY['Esplanade Theatres', 'Elbphilharmonie', 'Walt Disney Concert Hall', 'Oslo Opera House', 'Auditorio de Tenerife', 'Lotus Temple'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/taj-mahal.webp',
        'Taj Mahal', ARRAY['Humayun''s Tomb', 'Red Fort', 'Jama Masjid', 'Sheikh Zayed Grand Mosque', 'Bibi Ka Maqbara', 'Badshahi Mosque'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/the-louvre.webp',
        'The Louvre', ARRAY['Palace of Versailles', 'Musée d''Orsay', 'Centre Pompidou', 'British Museum', 'Rijksmuseum', 'Grand Palais'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/tower-bridge.webp',
        'Tower Bridge', ARRAY['London Bridge', 'Big Ben', 'Brooklyn Bridge', 'Charles Bridge', 'Westminster Bridge', 'Forth Bridge'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/victoria-falls.webp',
        'Victoria Falls', ARRAY['Iguazu Falls', 'Niagara Falls', 'Angel Falls', 'Murchison Falls', 'Tugela Falls', 'Blue Nile Falls'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/white-house.webp',
        'White House', ARRAY['US Capitol', 'Lincoln Memorial', 'Monticello', 'Mount Vernon', 'Jefferson Memorial', 'Blair House'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/abu-simbel.webp',
        'Abu Simbel', ARRAY['Temple of Karnak', 'Valley of the Kings', 'Great Sphinx of Giza', 'Temple of Hatshepsut', 'Petra', 'Colossi of Memnon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/arc-triomphe.webp',
        'Arc de Triomphe', ARRAY['Brandenburg Gate', 'Arch of Constantine', 'Washington Square Arch', 'Marble Arch', 'Gateway of India', 'Wellington Arch'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/blue-mosque.webp',
        'Blue Mosque', ARRAY['Hagia Sophia', 'Süleymaniye Mosque', 'Sheikh Zayed Grand Mosque', 'Badshahi Mosque', 'Faisal Mosque', 'Hassan II Mosque'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/brooklyn-bridge.webp',
        'Brooklyn Bridge', ARRAY['Manhattan Bridge', 'Williamsburg Bridge', 'Golden Gate Bridge', 'Tower Bridge', 'Clifton Suspension Bridge', 'Queensboro Bridge'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/burj-alarab.webp',
        'Burj Al Arab', ARRAY['Burj Khalifa', 'Atlantis The Palm', 'Kingdom Centre', 'Emirates Palace', 'Museum of the Future', 'Marina Bay Sands'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/chichen-itza.webp',
        'Chichen Itza', ARRAY['Teotihuacan', 'Tikal', 'Palenque', 'Uxmal', 'Great Pyramid of Giza', 'Coba'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/dome-rock.webp',
        'Dome of the Rock', ARRAY['Al-Aqsa Mosque', 'Hagia Sophia', 'Blue Mosque', 'Sheikh Zayed Grand Mosque', 'Imam Reza Shrine', 'Church of the Holy Sepulchre'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/easter-island.webp',
        'Easter Island (Moai)', ARRAY['Stonehenge', 'Mount Rushmore', 'Nan Madol', 'Göbekli Tepe', 'Carnac Stones', 'Tiwanaku'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/forbidden-city.webp',
        'Forbidden City', ARRAY['Temple of Heaven', 'Summer Palace', 'Gyeongbokgung Palace', 'Potala Palace', 'Tokyo Imperial Palace', 'Imperial City of Hue'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/gateway-arch.webp',
        'Gateway Arch', ARRAY['Arc de Triomphe', 'Washington Square Arch', 'Delicate Arch', 'Hoover Dam', 'Golden Gate Bridge', 'Space Needle'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/grand-canal.webp',
        'Grand Canal of Venice', ARRAY['Canals of Amsterdam', 'Nyhavn', 'Canal du Midi', 'Bruges canals', 'Burano', 'Regent’s Canal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/hagia-sophia.webp',
        'Hagia Sophia', ARRAY['Blue Mosque', 'Süleymaniye Mosque', 'Pantheon', 'St. Basil''s Cathedral', 'Dome of the Rock', 'Florence Cathedral'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/hoover-dam.webp',
        'Hoover Dam', ARRAY['Glen Canyon Dam', 'Grand Coulee Dam', 'Three Gorges Dam', 'Itaipu Dam', 'Aswan High Dam', 'Shasta Dam'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/marina-bay.webp',
        'Marina Bay Sands', ARRAY['Petronas Towers', 'Burj Al Arab', 'Gardens by the Bay', 'Raffles Hotel', 'Atlantis The Palm', 'Taipei 101'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mont-stmichel.webp',
        'Mont-Saint-Michel', ARRAY['St Michael''s Mount', 'Château de Chambord', 'Carcassonne', 'Neuschwanstein Castle', 'Skellig Michael', 'Bled Island'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mt-kilimanjaro.webp',
        'Mount Kilimanjaro', ARRAY['Mount Kenya', 'Mount Fuji', 'Mount Meru', 'Mount Stanley', 'Mount Elgon', 'Mount Cameroon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/neuschwanstein-castle.webp',
        'Neuschwanstein Castle', ARRAY['Hohenzollern Castle', 'Bran Castle', 'Château de Chambord', 'Lichtenstein Castle', 'Eltz Castle', 'Pena Palace'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/notre-dame.webp',
        'Notre-Dame de Paris', ARRAY['Reims Cathedral', 'Chartres Cathedral', 'Cologne Cathedral', 'Westminster Abbey', 'Sacré-Cœur', 'Milan Cathedral'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/one-wtc.webp',
        'One World Trade Center', ARRAY['Empire State Building', 'Willis Tower', 'Chrysler Building', 'Burj Khalifa', 'Shanghai Tower', 'Freedom Tower Miami'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/parthenon.webp',
        'Parthenon', ARRAY['Pantheon', 'Temple of Hephaestus', 'Temple of Olympian Zeus', 'Erechtheion', 'Lincoln Memorial', 'Maison Carrée'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/petra-landmark.webp',
        'Petra', ARRAY['Persepolis', 'Palmyra', 'Abu Simbel', 'Mada’in Salih', 'Baalbek', 'Jerash'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/petronas-towers.webp',
        'Petronas Towers', ARRAY['Taipei 101', 'Shanghai Tower', 'Burj Khalifa', 'Marina Bay Sands', 'Jin Mao Tower', 'Canton Tower'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/sayed-mosque.webp',
        'Sheikh Zayed Grand Mosque', ARRAY['Taj Mahal', 'Blue Mosque', 'Hassan II Mosque', 'Faisal Mosque', 'Grand Mosque of Muscat', 'Al-Masjid an-Nabawi'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/table-mountain.webp',
        'Table Mountain', ARRAY['Sugarloaf Mountain', 'Uluru', 'Mount Roraima', 'Kilimanjaro', 'Drakensberg', 'Lion''s Head'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/taipei-101.webp',
        'Taipei 101', ARRAY['Petronas Towers', 'Shanghai Tower', 'Jin Mao Tower', 'Canton Tower', 'Lotte World Tower', 'Burj Khalifa'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/the-alamo.webp',
        'The Alamo', ARRAY['Mission San José', 'Fort Sumter', 'Mission Santa Barbara', 'Independence Hall', 'Fort McHenry', 'Mission Dolores'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/us-capitol.webp',
        'US Capitol', ARRAY['White House', 'Lincoln Memorial', 'Jefferson Memorial', 'St. Peter''s Basilica', 'Texas State Capitol', 'Library of Congress'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/ayers-rock-uluru.webp',
        'Uluru', ARRAY['Kata Tjuta', 'Mount Augustus', 'Wave Rock', 'Table Mountain', 'Monument Valley', 'Sugarloaf Mountain'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/angel-falls.webp',
        'Angel Falls', ARRAY['Iguazu Falls', 'Victoria Falls', 'Kaieteur Falls', 'Yosemite Falls', 'Niagara Falls', 'Tugela Falls'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/angkor-wat.webp',
        'Angkor Wat', ARRAY['Borobudur', 'Bagan', 'Wat Arun', 'Ayutthaya', 'Prambanan', 'Preah Vihear'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/atomium-brussels.webp',
        'Atomium', ARRAY['Unisphere', 'Spaceship Earth', 'Berlin TV Tower', 'Oriental Pearl Tower', 'Montreal Biosphere', 'Gasometer Vienna'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/birds-nest.webp',
        'Bird''s Nest Stadium', ARRAY['Allianz Arena', 'Water Cube', 'Wembley Stadium', 'Tokyo Olympic Stadium', 'Olympiastadion Munich', 'Canton Tower'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/cn-tower.webp',
        'CN Tower', ARRAY['Space Needle', 'Stratosphere Tower', 'Sky Tower', 'Ostankino Tower', 'Calgary Tower', 'Tower of the Americas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/falling-water.webp',
        'Fallingwater', ARRAY['Taliesin West', 'Robie House', 'Glass House', 'Farnsworth House', 'Villa Savoye', 'Gamble House'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/golden-pavilion.webp',
        'Golden Pavilion', ARRAY['Silver Pavilion', 'Himeji Castle', 'Byōdō-in', 'Kiyomizu-dera', 'Tōdai-ji', 'Sensō-ji'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/dejennes-mosque.webp',
        'Great Mosque of Djenné', ARRAY['Djinguereber Mosque', 'Great Mosque of Kairouan', 'Larabanga Mosque', 'Sankore Mosque', 'Grand Mosque of Bobo-Dioulasso', 'Kasbah of Aït Benhaddou'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/guggenheim-bilbao.webp',
        'Guggenheim Museum Bilbao', ARRAY['Walt Disney Concert Hall', 'Dancing House', 'Louvre Abu Dhabi', 'Elbphilharmonie', 'City of Arts and Sciences', 'Centre Pompidou'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/guggenheim-ny.webp',
        'Guggenheim Museum, New York', ARRAY['Museum of Modern Art', 'Whitney Museum', 'Metropolitan Museum of Art', 'Getty Center', 'Hirshhorn Museum', 'Lincoln Center'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/halong-bay.webp',
        'Ha Long Bay', ARRAY['Phang Nga Bay', 'Guilin', 'El Nido', 'Raja Ampat', 'Rock Islands of Palau', 'Krabi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/hassan-ii-mosque.webp',
        'Hassan II Mosque', ARRAY['Koutoubia Mosque', 'Sheikh Zayed Grand Mosque', 'Great Mosque of Kairouan', 'Blue Mosque', 'Faisal Mosque', 'Muhammad Ali Mosque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/horseshoe-bend.webp',
        'Horseshoe Bend', ARRAY['Grand Canyon', 'Antelope Canyon', 'Goosenecks State Park', 'Dead Horse Point', 'Glen Canyon', 'Monument Valley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/iguacu-falls.webp',
        'Iguazu Falls', ARRAY['Victoria Falls', 'Niagara Falls', 'Angel Falls', 'Kaieteur Falls', 'Gullfoss', 'Detian Falls'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/lotus-temple.webp',
        'Lotus Temple', ARRAY['Sydney Opera House', 'Akshardham', 'Golden Temple', 'Taj Mahal', 'ArtScience Museum', 'Sheikh Zayed Grand Mosque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/monument-valley.webp',
        'Monument Valley', ARRAY['Grand Canyon', 'Arches National Park', 'Bryce Canyon', 'Valley of Fire', 'Uluru', 'Garden of the Gods'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mt-everest.webp',
        'Mount Everest', ARRAY['K2', 'Kangchenjunga', 'Annapurna', 'Matterhorn', 'Mount McKinley', 'Aconcagua'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/museum-future.webp',
        'Museum of the Future', ARRAY['Louvre Abu Dhabi', 'Burj Al Arab', 'Atlantis The Palm', 'Dubai Frame', 'Jewel Changi', 'Heydar Aliyev Center'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/versailles.webp',
        'Palace of Versailles', ARRAY['Louvre', 'Schönbrunn Palace', 'Buckingham Palace', 'Château de Chambord', 'Palace of Fontainebleau', 'Winter Palace'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/persepolis.webp',
        'Persepolis', ARRAY['Pasargadae', 'Palmyra', 'Babylon', 'Petra', 'Baalbek', 'Nineveh'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/pont-dugard.webp',
        'Pont du Gard', ARRAY['Aqueduct of Segovia', 'Roman Bridge of Córdoba', 'Les Ferreres Aqueduct', 'Valens Aqueduct', 'Ponte Vecchio', 'Glenfinnan Viaduct'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/temple-sun.webp',
        'Pyramid of the Sun', ARRAY['Chichen Itza', 'Pyramid of the Moon', 'Great Pyramid of Cholula', 'Tikal', 'Pyramid of Djoser', 'Great Pyramids of Giza'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/rialto-bridge.webp',
        'Rialto Bridge', ARRAY['Ponte Vecchio', 'Bridge of Sighs', 'Charles Bridge', 'Pont Neuf', 'Stari Most', 'Accademia Bridge'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/the-shard.webp',
        'The Shard', ARRAY['The Gherkin', 'One Canada Square', 'Walkie-Talkie', 'Heron Tower', 'Commerzbank Tower', 'Torre Glòries'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/the-vessel.webp',
        'The Vessel', ARRAY['The Spheres', 'Cloud Gate', 'Oculus', 'Little Island', 'Seattle Central Library', 'Elbphilharmonie'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/tikal-temple.webp',
        'Tikal', ARRAY['Chichen Itza', 'Palenque', 'Copán', 'Teotihuacan', 'Calakmul', 'Uxmal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/todai-ji.webp',
        'Tōdai-ji', ARRAY['Golden Pavilion', 'Kiyomizu-dera', 'Sensō-ji', 'Byōdō-in', 'Himeji Castle', 'Heian Shrine'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/amber-palace.webp',
        'Amber Fort', ARRAY['Mehrangarh Fort', 'City Palace, Udaipur', 'Red Fort', 'Hawa Mahal', 'Jaisalmer Fort', 'Chittorgarh Fort'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/bosco-verticale.webp',
        'Bosco Verticale', ARRAY['One Central Park', 'Jewel Changi', 'Oasia Hotel', 'Tree House Singapore', 'Turning Torso', 'Torre Velasca'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/canton-tower.webp',
        'Canton Tower', ARRAY['Oriental Pearl Tower', 'Tokyo Skytree', 'Taipei 101', 'Macau Tower', 'Milad Tower', 'Ostankino Tower'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/chand-baori.webp',
        'Chand Baori', ARRAY['Rani ki Vav', 'Adalaj Stepwell', 'Agrasen ki Baoli', 'Hampi', 'Fatehpur Sikri', 'Toorji Ka Jhalra'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/derawar-fort.webp',
        'Derawar Fort', ARRAY['Lahore Fort', 'Rohtas Fort', 'Jaisalmer Fort', 'Mehrangarh Fort', 'Ranikot Fort', 'Bala Hissar'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/evolution-tower.webp',
        'Evolution Tower', ARRAY['Turning Torso', 'Cayan Tower', 'Federation Tower', 'Mercury City Tower', 'Absolute World', 'Shanghai Tower'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/flatiron-building.webp',
        'Flatiron Building', ARRAY['Chrysler Building', 'Woolworth Building', 'Empire State Building', 'Wrigley Building', 'Gooderham Building', 'Singer Building'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/fort-knox.webp',
        'Fort Knox', ARRAY['Federal Reserve Bank of New York', 'Pentagon', 'West Point', 'Fort Sumter', 'Area 51', 'US Mint, Philadelphia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/fort-mchenry.webp',
        'Fort McHenry', ARRAY['Fort Sumter', 'Fort Ticonderoga', 'Fort Bourtange', 'Fort Monroe', 'Castillo de San Marcos', 'Fort Jefferson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/habitat-67.webp',
        'Habitat 67', ARRAY['Nakagin Capsule Tower', 'The Interlace', 'Barbican Estate', 'Kubuswoningen', 'Unité d''Habitation', 'Byker Wall'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/kyoto-tower.webp',
        'Kyoto Tower', ARRAY['Tokyo Tower', 'Tokyo Skytree', 'Nagoya TV Tower', 'Sapporo TV Tower', 'Space Needle', 'Canton Tower'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/las-lajas.webp',
        'Las Lajas Sanctuary', ARRAY['Basilica of Our Lady of Guadalupe', 'Cathedral of Salt', 'Notre-Dame de Paris', 'Mont-Saint-Michel', 'Sagrada Família', 'Basilica del Voto Nacional'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/mesa-verde.webp',
        'Mesa Verde', ARRAY['Chaco Canyon', 'Taos Pueblo', 'Canyon de Chelly', 'Montezuma Castle', 'Petra', 'Bandelier'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/pantheon.webp',
        'Pantheon', ARRAY['Parthenon', 'Hagia Sophia', 'St. Peter''s Basilica', 'Florence Cathedral', 'Temple of Hephaestus', 'Jefferson Memorial'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/lalibela-church.webp',
        'Rock Churches of Lalibela', ARRAY['Petra', 'Aksum Obelisks', 'Abu Simbel', 'Göreme Open Air Museum', 'Ellora Caves', 'Debre Damo'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/sigiriya-fortress.webp',
        'Sigiriya', ARRAY['Ajanta Caves', 'Mount Popa', 'Meteora', 'Ellora Caves', 'Masada', 'Mount Kailash'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/three-gorges.webp',
        'Three Gorges Dam', ARRAY['Hoover Dam', 'Itaipu Dam', 'Aswan High Dam', 'Grand Coulee Dam', 'Xiluodu Dam', 'Tarbela Dam'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/turning-torso.webp',
        'Turning Torso', ARRAY['Cayan Tower', 'Evolution Tower', 'Absolute World', 'Infinity Tower', 'Shanghai Tower', 'The Shard'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/villa-savoye.webp',
        'Villa Savoye', ARRAY['Fallingwater', 'Farnsworth House', 'Glass House', 'Villa Tugendhat', 'Rietveld Schröder House', 'Barcelona Pavilion'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LANDMARKS', 'LANDMARKS_BATCH_1', NULL,
        'What is this landmark?', '/structures/winter-palace.webp',
        'Winter Palace', ARRAY['Catherine Palace', 'Peterhof Palace', 'Kremlin', 'Schönbrunn Palace', 'Palace of Versailles', 'Buckingham Palace'], 400);

COMMIT;

-- Check: should return 100.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LANDMARKS';
