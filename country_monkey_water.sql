-- ============================================================================
-- Country Monkey: WATER questions ("Which body of water is highlighted?") --
-- 119 rows from 109 of Randy's water maps (public/water/): oceans, seas,
-- gulfs, bays, straits, lakes and rivers. A game mixes in 3 of 20.
--
-- Wrong answers are the same kind of water (lakes among lakes, rivers among
-- rivers, nearby seas). accepted_answers: short names a typed Final Wager
-- answer may use ("Mississippi", "Caspian") -- only where no other water
-- shortens to the same name ("Hudson" could be the bay, river or strait).
--
-- category = region; a few belong to two or three (the Mediterranean, the Red
-- Sea, the Indian Ocean). Rows: Africa 16, Europe 21, Asia & Pacific 22,
-- Middle East 11, Americas 50, World Wide only 0. The -2 files and
-- caspian-sea.webp are second drawings, used for a second region.
--
-- Safe to re-run: deletes and re-inserts the water questions only
-- (subcategory 'WATER'), in a transaction.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];
ALTER TABLE questions ADD COLUMN IF NOT EXISTS accepted_answers TEXT[];

DELETE FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'COUNTRY_MONKEY', v.region, 'WATER', v.region, 'Which body of water is highlighted?', v.visual_asset, v.correct_answer, v.wrong_answers, v.accepted_answers, v.points
FROM (VALUES
-- AFRICA
('AFRICA',            '/water/congo-river.webp',             'Congo River',           ARRAY['Niger River', 'Zambezi River', 'Nile River', 'Orange River', 'Ubangi River', 'Kasai River'], ARRAY['Congo'], 150),
('AFRICA',            '/water/gulf-of-aden.webp',            'Gulf of Aden',          ARRAY['Gulf of Oman', 'Red Sea', 'Persian Gulf', 'Arabian Sea', 'Gulf of Suez', 'Mozambique Channel'], ARRAY['Aden'], 200),
('AFRICA',            '/water/lake-malawi-2.webp',           'Lake Malawi',           ARRAY['Lake Tanganyika', 'Lake Victoria', 'Lake Turkana', 'Lake Kariba', 'Lake Albert', 'Lake Chad'], NULL::text[], 200),
('AFRICA',            '/water/lake-malawi.webp',             'Lake Malawi',           ARRAY['Lake Tanganyika', 'Lake Victoria', 'Lake Turkana', 'Lake Kariba', 'Lake Albert', 'Lake Chad'], NULL::text[], 200),
('AFRICA',            '/water/lake-tanganyika.webp',         'Lake Tanganyika',       ARRAY['Lake Malawi', 'Lake Victoria', 'Lake Turkana', 'Lake Albert', 'Lake Kivu', 'Lake Chad'], ARRAY['Tanganyika'], 200),
('AFRICA',            '/water/lake-victoria.webp',           'Lake Victoria',         ARRAY['Lake Tanganyika', 'Lake Malawi', 'Lake Turkana', 'Lake Chad', 'Lake Albert', 'Lake Kivu'], ARRAY['Victoria'], 150),
('AFRICA',            '/water/mediterranean.webp',           'Mediterranean Sea',     ARRAY['Black Sea', 'Red Sea', 'Adriatic Sea', 'Aegean Sea', 'Caspian Sea', 'North Sea'], ARRAY['Mediterranean'], 100),
('AFRICA',            '/water/mozambique-channel.webp',      'Mozambique Channel',    ARRAY['Red Sea', 'Gulf of Aden', 'Gulf of Guinea', 'Arabian Sea', 'Strait of Gibraltar', 'Bay of Bengal'], NULL::text[], 250),
('AFRICA',            '/water/nile-river-blue.webp',         'Blue Nile',             ARRAY['White Nile', 'Nile River', 'Atbara River', 'Congo River', 'Niger River', 'Zambezi River'], NULL::text[], 250),
('AFRICA',            '/water/nile-river-white.webp',        'White Nile',            ARRAY['Blue Nile', 'Nile River', 'Congo River', 'Atbara River', 'Niger River', 'Ubangi River'], NULL::text[], 300),
('AFRICA',            '/water/nile-river.webp',              'Nile River',            ARRAY['Blue Nile', 'White Nile', 'Niger River', 'Congo River', 'Zambezi River', 'Senegal River'], ARRAY['Nile'], 100),
('AFRICA',            '/water/red-sea.webp',                 'Red Sea',               ARRAY['Persian Gulf', 'Gulf of Aden', 'Dead Sea', 'Gulf of Oman', 'Mediterranean Sea', 'Arabian Sea'], NULL::text[], 100),
('AFRICA',            '/water/senegal-river.webp',           'Senegal River',         ARRAY['Niger River', 'Gambia River', 'Volta River', 'Congo River', 'Orange River', 'Zambezi River'], NULL::text[], 250),
('AFRICA',            '/water/zambia-river.webp',            'Zambezi River',         ARRAY['Limpopo River', 'Congo River', 'Orange River', 'Okavango River', 'Niger River', 'Nile River'], ARRAY['Zambezi'], 200),
('AFRICA',           '/water/indian-ocean.webp',            'Indian Ocean',         ARRAY['Pacific Ocean', 'South Atlantic Ocean', 'North Atlantic Ocean', 'Southern Ocean', 'Arctic Ocean', 'South China Sea'], ARRAY['Indian'], 100),
('AFRICA',           '/water/niger-river.webp',             'Niger River',          ARRAY['Congo River', 'Senegal River', 'Nile River', 'Volta River', 'Gambia River', 'Zambezi River'], ARRAY['Niger'], 200),
-- EUROPE
('EUROPE',            '/water/adriatic.webp',                'Adriatic Sea',          ARRAY['Aegean Sea', 'Ionian Sea', 'Tyrrhenian Sea', 'Black Sea', 'Ligurian Sea', 'Sea of Marmara'], ARRAY['Adriatic'], 150),
('EUROPE',            '/water/aegean.webp',                  'Aegean Sea',            ARRAY['Adriatic Sea', 'Ionian Sea', 'Sea of Marmara', 'Black Sea', 'Tyrrhenian Sea', 'Levantine Sea'], ARRAY['Aegean'], 150),
('EUROPE',            '/water/baltic.webp',                  'Baltic Sea',            ARRAY['North Sea', 'Gulf of Bothnia', 'Norwegian Sea', 'Barents Sea', 'Black Sea', 'White Sea'], ARRAY['Baltic'], 150),
('EUROPE',            '/water/black-sea.webp',               'Black Sea',             ARRAY['Caspian Sea', 'Sea of Azov', 'Aegean Sea', 'Sea of Marmara', 'Aral Sea', 'Adriatic Sea'], ARRAY['Black'], 100),
('EUROPE',            '/water/dnieper-river.webp',           'Dnieper River',         ARRAY['Danube River', 'Volga River', 'Dniester River', 'Don River', 'Vistula River', 'Rhine River'], ARRAY['Dnieper'], 250),
('EUROPE',            '/water/mediterranean.webp',           'Mediterranean Sea',     ARRAY['Black Sea', 'Red Sea', 'Adriatic Sea', 'Aegean Sea', 'Caspian Sea', 'North Sea'], ARRAY['Mediterranean'], 100),
('EUROPE',            '/water/north-atlantic-2.webp',        'North Atlantic Ocean',  ARRAY['South Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'North Pacific Ocean', 'Caribbean Sea', 'Labrador Sea'], ARRAY['North Atlantic'], 100),
('EUROPE',            '/water/north-atlantic.webp',          'North Atlantic Ocean',  ARRAY['South Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'North Pacific Ocean', 'Caribbean Sea', 'Labrador Sea'], ARRAY['North Atlantic'], 100),
('EUROPE',            '/water/north-sea.webp',               'North Sea',             ARRAY['Baltic Sea', 'Norwegian Sea', 'Irish Sea', 'English Channel', 'Celtic Sea', 'Bay of Biscay'], NULL::text[], 150),
('EUROPE',            '/water/seine-river.webp',             'Seine River',           ARRAY['Loire River', 'Rhine River', 'Rhône River', 'Thames River', 'Garonne River', 'Danube River'], ARRAY['Seine'], 200),
('EUROPE',            '/water/ebro-river.webp',              'Ebro River',            ARRAY['Tagus River', 'Douro River', 'Guadalquivir River', 'Garonne River', 'Rhône River', 'Loire River'], ARRAY['Ebro'], 250),
('EUROPE',            '/water/elbe-river.webp',              'Elbe River',            ARRAY['Rhine River', 'Oder River', 'Danube River', 'Vistula River', 'Weser River', 'Moselle River'], ARRAY['Elbe'], 200),
('EUROPE',            '/water/garonne-river.webp',           'Garonne River',         ARRAY['Loire River', 'Seine River', 'Rhône River', 'Dordogne River', 'Ebro River', 'Rhine River'], ARRAY['Garonne'], 300),
('EUROPE',            '/water/loire-river.webp',             'Loire River',           ARRAY['Seine River', 'Garonne River', 'Rhône River', 'Rhine River', 'Dordogne River', 'Meuse River'], ARRAY['Loire'], 200),
('EUROPE',            '/water/tagus-river.webp',             'Tagus River',           ARRAY['Ebro River', 'Douro River', 'Guadalquivir River', 'Guadiana River', 'Garonne River', 'Loire River'], ARRAY['Tagus', 'Tejo', 'Tajo'], 250),
('EUROPE',           '/water/caspian-sea.webp',             'Caspian Sea',          ARRAY['Black Sea', 'Aral Sea', 'Persian Gulf', 'Sea of Azov', 'Lake Balkhash', 'Red Sea'], ARRAY['Caspian'], 100),
('EUROPE',           '/water/danube-river.webp',            'Danube River',         ARRAY['Rhine River', 'Elbe River', 'Volga River', 'Dnieper River', 'Vistula River', 'Po River'], ARRAY['Danube'], 150),
('EUROPE',           '/water/danube-river-2.webp',          'Danube River',         ARRAY['Rhine River', 'Elbe River', 'Volga River', 'Dnieper River', 'Vistula River', 'Po River'], ARRAY['Danube'], 200),
('EUROPE',           '/water/rhine-river.webp',             'Rhine River',          ARRAY['Danube River', 'Elbe River', 'Rhône River', 'Meuse River', 'Seine River', 'Weser River'], ARRAY['Rhine'], 150),
('EUROPE',           '/water/volga-river.webp',             'Volga River',          ARRAY['Don River', 'Dnieper River', 'Ural River', 'Danube River', 'Ob River', 'Dniester River'], ARRAY['Volga'], 200),
('EUROPE',           '/water/rhone-river.webp',             'Rhône River',          ARRAY['Rhine River', 'Loire River', 'Seine River', 'Garonne River', 'Po River', 'Danube River'], ARRAY['Rhone', 'Rhône', 'Rhone River'], 200),
-- ASIA (Asia & Pacific)
('ASIA',             '/water/andaman-sea.webp',             'Andaman Sea',          ARRAY['Bay of Bengal', 'Gulf of Thailand', 'Java Sea', 'Laccadive Sea', 'Celebes Sea', 'Sulu Sea'], ARRAY['Andaman'], 250),
('ASIA',             '/water/bay-bengal.webp',              'Bay of Bengal',        ARRAY['Arabian Sea', 'Andaman Sea', 'Laccadive Sea', 'Gulf of Mannar', 'Gulf of Thailand', 'South China Sea'], ARRAY['Bengal'], 150),
('ASIA',             '/water/coral-sea.webp',               'Coral Sea',            ARRAY['Tasman Sea', 'Arafura Sea', 'Timor Sea', 'Solomon Sea', 'Bismarck Sea', 'Philippine Sea'], ARRAY['Coral'], 200),
('ASIA',             '/water/east-china-sea.webp',          'East China Sea',       ARRAY['South China Sea', 'Yellow Sea', 'Sea of Japan', 'Philippine Sea', 'Bohai Sea', 'Taiwan Strait'], NULL::text[], 150),
('ASIA',             '/water/gulf-thailand.webp',           'Gulf of Thailand',     ARRAY['Gulf of Tonkin', 'Andaman Sea', 'Java Sea', 'Strait of Malacca', 'Bay of Bengal', 'Celebes Sea'], ARRAY['Gulf of Siam'], 200),
('ASIA',             '/water/gulf-tonkin.webp',             'Gulf of Tonkin',       ARRAY['Gulf of Thailand', 'Bohai Sea', 'Gulf of Carpentaria', 'Gulf of Mannar', 'Taiwan Strait', 'Celebes Sea'], ARRAY['Tonkin'], 250),
('ASIA',             '/water/indian-ocean.webp',            'Indian Ocean',         ARRAY['Pacific Ocean', 'South Atlantic Ocean', 'North Atlantic Ocean', 'Southern Ocean', 'Arctic Ocean', 'South China Sea'], ARRAY['Indian'], 100),
('ASIA',             '/water/japan-sea.webp',               'Sea of Japan',         ARRAY['Yellow Sea', 'East China Sea', 'Sea of Okhotsk', 'Bering Sea', 'Philippine Sea', 'Bohai Sea'], ARRAY['Japan Sea'], 150),
('ASIA',             '/water/lake-baikal.webp',             'Lake Baikal',          ARRAY['Lake Balkhash', 'Lake Ladoga', 'Aral Sea', 'Issyk-Kul', 'Lake Khövsgöl', 'Lake Onega'], ARRAY['Baikal'], 200),
('ASIA',             '/water/lake-balkhash.webp',           'Lake Balkhash',        ARRAY['Lake Baikal', 'Aral Sea', 'Issyk-Kul', 'Lake Zaysan', 'Caspian Sea', 'Lake Alakol'], ARRAY['Balkhash'], 300),
('ASIA',             '/water/malacca-strait.webp',          'Strait of Malacca',    ARRAY['Sunda Strait', 'Lombok Strait', 'Makassar Strait', 'Taiwan Strait', 'Palk Strait', 'Strait of Hormuz'], ARRAY['Malacca', 'Straits of Malacca', 'Malacca Strait'], 200),
('ASIA',             '/water/south-china-sea.webp',         'South China Sea',      ARRAY['East China Sea', 'Philippine Sea', 'Java Sea', 'Yellow Sea', 'Celebes Sea', 'Gulf of Thailand'], NULL::text[], 100),
('ASIA',             '/water/yellow-sea.webp',              'Yellow Sea',           ARRAY['East China Sea', 'Sea of Japan', 'South China Sea', 'Korea Strait', 'Sea of Okhotsk', 'Philippine Sea'], ARRAY['Yellow'], 200),
('ASIA',             '/water/ganges-river.webp',            'Ganges River',         ARRAY['Brahmaputra River', 'Indus River', 'Godavari River', 'Irrawaddy River', 'Mekong River', 'Narmada River'], ARRAY['Ganges', 'Ganga'], 150),
('ASIA',             '/water/mekong-river.webp',            'Mekong River',         ARRAY['Irrawaddy River', 'Salween River', 'Red River', 'Chao Phraya River', 'Yangtze River', 'Ganges River'], ARRAY['Mekong'], 200),
('ASIA',             '/water/yangtze-river.webp',           'Yangtze River',        ARRAY['Yellow River', 'Mekong River', 'Pearl River', 'Amur River', 'Ganges River', 'Brahmaputra River'], ARRAY['Yangtze', 'Chang Jiang', 'Yangtze Kiang'], 150),
('ASIA',             '/water/yellow-river.webp',            'Yellow River',         ARRAY['Yangtze River', 'Amur River', 'Pearl River', 'Mekong River', 'Liao River', 'Huai River'], ARRAY['Yellow', 'Huang He', 'Huanghe'], 150),
('ASIA',             '/water/indus-river.webp',             'Indus River',          ARRAY['Ganges River', 'Brahmaputra River', 'Euphrates River', 'Amu Darya', 'Helmand River', 'Narmada River'], ARRAY['Indus'], 200),
('ASIA',             '/water/brahmaputra-river.webp',       'Brahmaputra River',    ARRAY['Ganges River', 'Indus River', 'Irrawaddy River', 'Mekong River', 'Salween River', 'Yangtze River'], ARRAY['Brahmaputra', 'Yarlung Tsangpo'], 250),
('ASIA',             '/water/amur-river.webp',              'Amur River',           ARRAY['Yellow River', 'Lena River', 'Yenisei River', 'Ob River', 'Yalu River', 'Selenga River'], ARRAY['Amur'], 250),
('ASIA',             '/water/irrawaddy-river.webp',         'Irrawaddy River',      ARRAY['Salween River', 'Mekong River', 'Chao Phraya River', 'Brahmaputra River', 'Red River', 'Ganges River'], ARRAY['Irrawaddy', 'Ayeyarwady'], 250),
-- MIDDLE_EAST_ASIA
('MIDDLE_EAST_ASIA',  '/water/arabian-sea.webp',             'Arabian Sea',           ARRAY['Bay of Bengal', 'Gulf of Oman', 'Red Sea', 'Persian Gulf', 'Gulf of Aden', 'Laccadive Sea'], ARRAY['Arabian'], 150),
('MIDDLE_EAST_ASIA',  '/water/black-sea.webp',               'Black Sea',             ARRAY['Caspian Sea', 'Sea of Azov', 'Aegean Sea', 'Sea of Marmara', 'Aral Sea', 'Adriatic Sea'], ARRAY['Black'], 100),
('MIDDLE_EAST_ASIA',  '/water/caspian.webp',                 'Caspian Sea',           ARRAY['Black Sea', 'Aral Sea', 'Persian Gulf', 'Sea of Azov', 'Lake Balkhash', 'Red Sea'], ARRAY['Caspian'], 100),
('MIDDLE_EAST_ASIA',  '/water/gulf-of-aden.webp',            'Gulf of Aden',          ARRAY['Gulf of Oman', 'Red Sea', 'Persian Gulf', 'Arabian Sea', 'Gulf of Suez', 'Mozambique Channel'], ARRAY['Aden'], 200),
('MIDDLE_EAST_ASIA',  '/water/gulf-of-oman.webp',            'Gulf of Oman',          ARRAY['Gulf of Aden', 'Persian Gulf', 'Arabian Sea', 'Red Sea', 'Strait of Hormuz', 'Gulf of Suez'], NULL::text[], 200),
('MIDDLE_EAST_ASIA',  '/water/mediterranean.webp',           'Mediterranean Sea',     ARRAY['Black Sea', 'Red Sea', 'Adriatic Sea', 'Aegean Sea', 'Caspian Sea', 'North Sea'], ARRAY['Mediterranean'], 100),
('MIDDLE_EAST_ASIA',  '/water/red-sea.webp',                 'Red Sea',               ARRAY['Persian Gulf', 'Gulf of Aden', 'Dead Sea', 'Gulf of Oman', 'Mediterranean Sea', 'Arabian Sea'], NULL::text[], 100),
('MIDDLE_EAST_ASIA', '/water/indian-ocean.webp',            'Indian Ocean',         ARRAY['Pacific Ocean', 'South Atlantic Ocean', 'North Atlantic Ocean', 'Southern Ocean', 'Arctic Ocean', 'South China Sea'], ARRAY['Indian'], 100),
('MIDDLE_EAST_ASIA', '/water/persian-gulf.webp',            'Persian Gulf',         ARRAY['Gulf of Oman', 'Red Sea', 'Arabian Sea', 'Gulf of Aden', 'Caspian Sea', 'Gulf of Aqaba'], ARRAY['Arabian Gulf'], 100),
('MIDDLE_EAST_ASIA', '/water/euphrates-river.webp',         'Euphrates River',      ARRAY['Tigris River', 'Jordan River', 'Nile River', 'Karun River', 'Orontes River', 'Indus River'], ARRAY['Euphrates'], 200),
('MIDDLE_EAST_ASIA', '/water/indus-river.webp',             'Indus River',          ARRAY['Ganges River', 'Brahmaputra River', 'Euphrates River', 'Amu Darya', 'Helmand River', 'Narmada River'], ARRAY['Indus'], 200),
-- AMERICAS
('AMERICAS',          '/water/baffin-bay.webp',              'Baffin Bay',            ARRAY['Hudson Bay', 'Davis Strait', 'Labrador Sea', 'Beaufort Sea', 'Greenland Sea', 'James Bay'], ARRAY['Baffin'], 200),
('AMERICAS',          '/water/bay-of-fundy.webp',            'Bay of Fundy',          ARRAY['Gulf of Maine', 'Gulf of St. Lawrence', 'Chesapeake Bay', 'Cape Cod Bay', 'James Bay', 'Delaware Bay'], ARRAY['Fundy'], 200),
('AMERICAS',          '/water/caribbean-sea-2.webp',         'Caribbean Sea',         ARRAY['Gulf of Mexico', 'Sargasso Sea', 'North Atlantic Ocean', 'Gulf of Honduras', 'Bay of Campeche', 'Gulf of California'], ARRAY['Caribbean'], 100),
('AMERICAS',          '/water/caribbean-sea.webp',           'Caribbean Sea',         ARRAY['Gulf of Mexico', 'Sargasso Sea', 'North Atlantic Ocean', 'Gulf of Honduras', 'Bay of Campeche', 'Gulf of California'], ARRAY['Caribbean'], 100),
('AMERICAS',          '/water/chesapeake-bay.webp',          'Chesapeake Bay',        ARRAY['Delaware Bay', 'Bay of Fundy', 'Long Island Sound', 'Pamlico Sound', 'Hudson River', 'Cape Cod Bay'], ARRAY['Chesapeake'], 150),
('AMERICAS',          '/water/davis-strait.webp',            'Davis Strait',          ARRAY['Hudson Strait', 'Baffin Bay', 'Labrador Sea', 'Denmark Strait', 'Bering Strait', 'Northwest Passage'], ARRAY['Davis'], 250),
('AMERICAS',          '/water/gulf-of-california.webp',      'Gulf of California',    ARRAY['Gulf of Mexico', 'Puget Sound', 'Gulf of Alaska', 'Salish Sea', 'Bay of Campeche', 'Gulf of Panama'], ARRAY['California'], 150),
('AMERICAS',          '/water/gulf-of-mexico-2.webp',        'Gulf of Mexico',        ARRAY['Caribbean Sea', 'Gulf of California', 'Sargasso Sea', 'Bay of Campeche', 'Gulf of Honduras', 'Chesapeake Bay'], NULL::text[], 100),
('AMERICAS',          '/water/gulf-of-mexico.webp',          'Gulf of Mexico',        ARRAY['Caribbean Sea', 'Gulf of California', 'Sargasso Sea', 'Bay of Campeche', 'Gulf of Honduras', 'Chesapeake Bay'], NULL::text[], 100),
('AMERICAS',          '/water/gulf-of-st-lawrence.webp',     'Gulf of St. Lawrence',  ARRAY['Bay of Fundy', 'Gulf of Maine', 'Hudson Strait', 'James Bay', 'Labrador Sea', 'Hudson Bay'], ARRAY['St. Lawrence'], 200),
('AMERICAS',          '/water/hudson-bay.webp',              'Hudson Bay',            ARRAY['James Bay', 'Baffin Bay', 'Hudson Strait', 'Labrador Sea', 'Great Bear Lake', 'Lake Superior'], NULL::text[], 100),
('AMERICAS',          '/water/hudson-river.webp',            'Hudson River',          ARRAY['Susquehanna River', 'Delaware River', 'Connecticut River', 'Ohio River', 'Potomac River', 'Mohawk River'], NULL::text[], 200),
('AMERICAS',          '/water/hudson-strait.webp',           'Hudson Strait',         ARRAY['Davis Strait', 'Hudson Bay', 'Bering Strait', 'Labrador Sea', 'James Bay', 'Northwest Passage'], NULL::text[], 250),
('AMERICAS',          '/water/james-bay.webp',               'James Bay',             ARRAY['Hudson Bay', 'Baffin Bay', 'Hudson Strait', 'Bay of Fundy', 'Lake Winnipeg', 'Ungava Bay'], ARRAY['James'], 200),
('AMERICAS',          '/water/labrador-sea.webp',            'Labrador Sea',          ARRAY['Baffin Bay', 'Davis Strait', 'Hudson Strait', 'Greenland Sea', 'North Atlantic Ocean', 'Gulf of St. Lawrence'], ARRAY['Labrador'], 250),
('AMERICAS',          '/water/lake-erie.webp',               'Lake Erie',             ARRAY['Lake Ontario', 'Lake Huron', 'Lake Michigan', 'Lake Superior', 'Lake Champlain', 'Lake St. Clair'], ARRAY['Erie'], 150),
('AMERICAS',          '/water/lake-huron.webp',              'Lake Huron',            ARRAY['Lake Michigan', 'Lake Erie', 'Lake Superior', 'Lake Ontario', 'Georgian Bay', 'Lake Winnipeg'], ARRAY['Huron'], 150),
('AMERICAS',          '/water/lake-michigan.webp',           'Lake Michigan',         ARRAY['Lake Huron', 'Lake Superior', 'Lake Erie', 'Lake Ontario', 'Lake Winnipeg', 'Green Bay'], ARRAY['Michigan'], 100),
('AMERICAS',          '/water/lake-ontario.webp',            'Lake Ontario',          ARRAY['Lake Erie', 'Lake Huron', 'Lake Champlain', 'Lake Michigan', 'Lake Superior', 'Lake St. Clair'], ARRAY['Ontario'], 150),
('AMERICAS',          '/water/lake-superior.webp',           'Lake Superior',         ARRAY['Lake Michigan', 'Lake Huron', 'Lake Erie', 'Lake Ontario', 'Lake Winnipeg', 'Great Bear Lake'], ARRAY['Superior'], 100),
('AMERICAS',          '/water/mississippi-river.webp',       'Mississippi River',     ARRAY['Missouri River', 'Ohio River', 'Tennessee River', 'Arkansas River', 'Colorado River', 'Rio Grande'], ARRAY['Mississippi'], 100),
('AMERICAS',          '/water/north-atlantic-2.webp',        'North Atlantic Ocean',  ARRAY['South Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'North Pacific Ocean', 'Caribbean Sea', 'Labrador Sea'], ARRAY['North Atlantic'], 100),
('AMERICAS',          '/water/north-atlantic.webp',          'North Atlantic Ocean',  ARRAY['South Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'North Pacific Ocean', 'Caribbean Sea', 'Labrador Sea'], ARRAY['North Atlantic'], 100),
('AMERICAS',          '/water/northwest-passages.webp',      'Northwest Passage',     ARRAY['Hudson Strait', 'Davis Strait', 'Bering Strait', 'Beaufort Sea', 'Baffin Bay', 'Northeast Passage'], ARRAY['Northwest'], 250),
('AMERICAS',          '/water/ohio-river.webp',              'Ohio River',            ARRAY['Tennessee River', 'Mississippi River', 'Missouri River', 'Susquehanna River', 'Hudson River', 'Cumberland River'], ARRAY['Ohio'], 200),
('AMERICAS',          '/water/puget-sound.webp',             'Puget Sound',           ARRAY['Salish Sea', 'Chesapeake Bay', 'Gulf of California', 'Long Island Sound', 'San Francisco Bay', 'Strait of Juan de Fuca'], ARRAY['Puget'], 250),
('AMERICAS',          '/water/salish-sea.webp',              'Salish Sea',            ARRAY['Puget Sound', 'Gulf of California', 'Strait of Juan de Fuca', 'Gulf of Alaska', 'Hecate Strait', 'Chesapeake Bay'], ARRAY['Salish'], 250),
('AMERICAS',          '/water/susquehanna-river.webp',       'Susquehanna River',     ARRAY['Delaware River', 'Hudson River', 'Potomac River', 'Ohio River', 'Allegheny River', 'Shenandoah River'], ARRAY['Susquehanna'], 250),
('AMERICAS',          '/water/tennessee-river.webp',         'Tennessee River',       ARRAY['Cumberland River', 'Ohio River', 'Mississippi River', 'Arkansas River', 'Missouri River', 'Red River'], ARRAY['Tennessee'], 250),
('AMERICAS',          '/water/amazon-river.webp',            'Amazon River',          ARRAY['Orinoco River', 'Paraná River', 'Rio Negro', 'Madeira River', 'Paraguay River', 'São Francisco River'], ARRAY['Amazon'], 100),
('AMERICAS',          '/water/blanca-bay.webp',              'Bahía Blanca',          ARRAY['Gulf of San Matías', 'Gulf of San Jorge', 'Río de la Plata', 'Samborombón Bay', 'Golfo Nuevo', 'Gulf of Penas'], ARRAY['Blanca Bay'], 300),
('AMERICAS',          '/water/colorado-river.webp',          'Colorado River',        ARRAY['Rio Grande', 'Snake River', 'Columbia River', 'Missouri River', 'Arkansas River', 'Green River'], ARRAY['Colorado'], 150),
('AMERICAS',          '/water/gulf-panama.webp',             'Gulf of Panama',        ARRAY['Gulf of Honduras', 'Gulf of Fonseca', 'Gulf of California', 'Gulf of Paria', 'Bay of Campeche', 'Gulf of Urabá'], NULL::text[], 200),
('AMERICAS',          '/water/gulf-paria.webp',              'Gulf of Paria',         ARRAY['Gulf of Venezuela', 'Gulf of Panama', 'Gulf of Honduras', 'Lake Maracaibo', 'Gulf of Urabá', 'Bay of Campeche'], ARRAY['Paria'], 300),
('AMERICAS',          '/water/gulf-san-jorge.webp',          'Gulf of San Jorge',     ARRAY['Gulf of San Matías', 'Bahía Blanca', 'Golfo Nuevo', 'Gulf of Penas', 'Strait of Magellan', 'Río de la Plata'], ARRAY['San Jorge', 'Golfo San Jorge'], 300),
('AMERICAS',          '/water/gulf-san-matias.webp',         'Gulf of San Matías',    ARRAY['Gulf of San Jorge', 'Bahía Blanca', 'Golfo Nuevo', 'Gulf of Penas', 'Río de la Plata', 'Strait of Magellan'], ARRAY['San Matías', 'Golfo San Matías'], 300),
('AMERICAS',          '/water/lake-maracaibo.webp',          'Lake Maracaibo',        ARRAY['Lake Titicaca', 'Lake Nicaragua', 'Gulf of Venezuela', 'Lake Valencia', 'Gulf of Paria', 'Lake Poopó'], ARRAY['Maracaibo'], 200),
('AMERICAS',          '/water/lake-titicaca.webp',           'Lake Titicaca',         ARRAY['Lake Maracaibo', 'Lake Nicaragua', 'Lake Poopó', 'Lake General Carrera', 'Lake Atitlán', 'Lake Valencia'], ARRAY['Titicaca'], 150),
('AMERICAS',          '/water/missouri-river.webp',          'Missouri River',        ARRAY['Mississippi River', 'Ohio River', 'Arkansas River', 'Platte River', 'Yellowstone River', 'Colorado River'], ARRAY['Missouri'], 200),
('AMERICAS',          '/water/orinoco-river.webp',           'Orinoco River',         ARRAY['Amazon River', 'Magdalena River', 'Rio Negro', 'Paraná River', 'Essequibo River', 'Madeira River'], ARRAY['Orinoco'], 200),
('AMERICAS',          '/water/pacific-ocean.webp',           'Pacific Ocean',         ARRAY['South Atlantic Ocean', 'North Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Arctic Ocean', 'Caribbean Sea'], ARRAY['Pacific', 'South Pacific', 'South Pacific Ocean'], 100),
('AMERICAS',          '/water/paraguay-river.webp',          'Paraguay River',        ARRAY['Paraná River', 'Uruguay River', 'Pilcomayo River', 'Madeira River', 'Rio Negro', 'São Francisco River'], ARRAY['Paraguay'], 250),
('AMERICAS',          '/water/parana-river.webp',            'Paraná River',          ARRAY['Paraguay River', 'Uruguay River', 'Amazon River', 'Orinoco River', 'São Francisco River', 'Rio Negro'], ARRAY['Paraná'], 200),
('AMERICAS',          '/water/rio-de-la-plata.webp',         'Río de la Plata',       ARRAY['Bahía Blanca', 'Paraná River', 'Gulf of San Matías', 'Uruguay River', 'Lagoa dos Patos', 'Gulf of San Jorge'], ARRAY['River Plate', 'La Plata', 'Plata'], 200),
('AMERICAS',          '/water/rio-negro.webp',               'Rio Negro',             ARRAY['Madeira River', 'Xingu River', 'Tapajós River', 'Orinoco River', 'Japurá River', 'Purus River'], ARRAY['Negro River', 'Negro'], 300),
('AMERICAS',          '/water/south-atlantic.webp',          'South Atlantic Ocean',  ARRAY['North Atlantic Ocean', 'Pacific Ocean', 'Indian Ocean', 'Southern Ocean', 'Arctic Ocean', 'Caribbean Sea'], ARRAY['South Atlantic'], 100),
('AMERICAS',          '/water/strait-magellan.webp',         'Strait of Magellan',    ARRAY['Drake Passage', 'Beagle Channel', 'Bering Strait', 'Strait of Gibraltar', 'Davis Strait', 'Strait of Hormuz'], ARRAY['Magellan', 'Straits of Magellan', 'Magellan Strait'], 150),
('AMERICAS',         '/water/rio-grande.webp',              'Rio Grande',           ARRAY['Colorado River', 'Red River', 'Arkansas River', 'Brazos River', 'Mississippi River', 'Gila River'], ARRAY['Río Grande', 'Rio Bravo'], 100),
('AMERICAS',         '/water/rio-grande-2.webp',            'Rio Grande',           ARRAY['Colorado River', 'Red River', 'Arkansas River', 'Brazos River', 'Mississippi River', 'Gila River'], ARRAY['Río Grande', 'Rio Bravo'], 150),
('AMERICAS',         '/water/yukon-river.webp',             'Yukon River',          ARRAY['Mackenzie River', 'Columbia River', 'Fraser River', 'Kuskokwim River', 'Nelson River', 'Missouri River'], ARRAY['Yukon'], 200)
) AS v(region, visual_asset, correct_answer, wrong_answers, accepted_answers, points);

COMMIT;

-- Check: should return 119.
SELECT COUNT(*) FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'WATER';
