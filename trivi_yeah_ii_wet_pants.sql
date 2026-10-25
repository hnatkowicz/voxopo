-- ============================================================================
-- Thinking Pants: the "Wet Pants" category -- 103 of Randy's water maps
-- (100: 21, 200: 29, 300: 30, 400: 23; 100 = Gulf of Mexico, Pacific ...
-- 400 = Davis Strait, Salish Sea, Gulf of San Jorge), each with 6 same-kind
-- wrong answers (3 shown).
--
-- Safe to re-run: deletes and re-inserts this category only, inside a
-- transaction. Touches ONLY game_mode = 'TRIVI_YEAH_II' AND
-- category = 'WET_PANTS'. The app already knows the category; until this file
-- is run, boards simply never pick it.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WET_PANTS';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'TRIVI_YEAH_II', 'WET_PANTS', NULL, NULL, 'Which body of water is highlighted?', v.visual_asset, v.correct_answer, v.wrong_answers, v.points
FROM (VALUES
-- 100 points
('/water/black-sea.webp',               'Black Sea',             ARRAY['Caspian Sea', 'Sea of Azov', 'Aegean Sea', 'Sea of Marmara', 'Aral Sea', 'Adriatic Sea'], 100),
('/water/caribbean-sea.webp',           'Caribbean Sea',         ARRAY['Gulf of Mexico', 'Sargasso Sea', 'North Atlantic Ocean', 'Gulf of Honduras', 'Bay of Campeche', 'Gulf of California'], 100),
('/water/caspian.webp',                 'Caspian Sea',           ARRAY['Black Sea', 'Aral Sea', 'Persian Gulf', 'Sea of Azov', 'Lake Balkhash', 'Red Sea'], 100),
('/water/gulf-of-mexico.webp',          'Gulf of Mexico',        ARRAY['Caribbean Sea', 'Gulf of California', 'Sargasso Sea', 'Bay of Campeche', 'Gulf of Honduras', 'Chesapeake Bay'], 100),
('/water/hudson-bay.webp',              'Hudson Bay',            ARRAY['James Bay', 'Baffin Bay', 'Hudson Strait', 'Labrador Sea', 'Great Bear Lake', 'Lake Superior'], 100),
('/water/lake-michigan.webp',           'Lake Michigan',         ARRAY['Lake Huron', 'Lake Superior', 'Lake Erie', 'Lake Ontario', 'Lake Winnipeg', 'Green Bay'], 100),
('/water/lake-superior.webp',           'Lake Superior',         ARRAY['Lake Michigan', 'Lake Huron', 'Lake Erie', 'Lake Ontario', 'Lake Winnipeg', 'Great Bear Lake'], 100),
('/water/mediterranean.webp',           'Mediterranean Sea',     ARRAY['Black Sea', 'Red Sea', 'Adriatic Sea', 'Aegean Sea', 'Caspian Sea', 'North Sea'], 100),
('/water/mississippi-river.webp',       'Mississippi River',     ARRAY['Missouri River', 'Ohio River', 'Tennessee River', 'Arkansas River', 'Colorado River', 'Rio Grande'], 100),
('/water/nile-river.webp',              'Nile River',            ARRAY['Blue Nile', 'White Nile', 'Niger River', 'Congo River', 'Zambezi River', 'Senegal River'], 100),
('/water/north-atlantic.webp',          'North Atlantic Ocean',  ARRAY['South Atlantic Ocean', 'Arctic Ocean', 'Indian Ocean', 'North Pacific Ocean', 'Caribbean Sea', 'Labrador Sea'], 100),
('/water/red-sea.webp',                 'Red Sea',               ARRAY['Persian Gulf', 'Gulf of Aden', 'Dead Sea', 'Gulf of Oman', 'Mediterranean Sea', 'Arabian Sea'], 100),
('/water/amazon-river.webp',            'Amazon River',          ARRAY['Orinoco River', 'Paraná River', 'Rio Negro', 'Madeira River', 'Paraguay River', 'São Francisco River'], 100),
('/water/pacific-ocean.webp',           'Pacific Ocean',         ARRAY['South Atlantic Ocean', 'North Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Arctic Ocean', 'Caribbean Sea'], 100),
('/water/south-atlantic.webp',          'South Atlantic Ocean',  ARRAY['North Atlantic Ocean', 'Pacific Ocean', 'Indian Ocean', 'Southern Ocean', 'Arctic Ocean', 'Caribbean Sea'], 100),
('/water/indian-ocean.webp',             'Indian Ocean',        ARRAY['Pacific Ocean', 'South Atlantic Ocean', 'North Atlantic Ocean', 'Southern Ocean', 'Arctic Ocean', 'South China Sea'], 100),
('/water/persian-gulf.webp',             'Persian Gulf',        ARRAY['Gulf of Oman', 'Red Sea', 'Arabian Sea', 'Gulf of Aden', 'Caspian Sea', 'Gulf of Aqaba'], 100),
('/water/south-china-sea.webp',          'South China Sea',     ARRAY['East China Sea', 'Philippine Sea', 'Java Sea', 'Yellow Sea', 'Celebes Sea', 'Gulf of Thailand'], 100),
('/water/japan-sea.webp',                'Sea of Japan',        ARRAY['Yellow Sea', 'East China Sea', 'Sea of Okhotsk', 'Bering Sea', 'Philippine Sea', 'Bohai Sea'], 100),
('/water/bay-bengal.webp',               'Bay of Bengal',       ARRAY['Arabian Sea', 'Andaman Sea', 'Laccadive Sea', 'Gulf of Mannar', 'Gulf of Thailand', 'South China Sea'], 100),
('/water/rio-grande.webp',               'Rio Grande',          ARRAY['Colorado River', 'Red River', 'Arkansas River', 'Brazos River', 'Mississippi River', 'Gila River'], 100),
-- 200 points
('/water/adriatic.webp',                'Adriatic Sea',          ARRAY['Aegean Sea', 'Ionian Sea', 'Tyrrhenian Sea', 'Black Sea', 'Ligurian Sea', 'Sea of Marmara'], 200),
('/water/aegean.webp',                  'Aegean Sea',            ARRAY['Adriatic Sea', 'Ionian Sea', 'Sea of Marmara', 'Black Sea', 'Tyrrhenian Sea', 'Levantine Sea'], 200),
('/water/arabian-sea.webp',             'Arabian Sea',           ARRAY['Bay of Bengal', 'Gulf of Oman', 'Red Sea', 'Persian Gulf', 'Gulf of Aden', 'Laccadive Sea'], 200),
('/water/baltic.webp',                  'Baltic Sea',            ARRAY['North Sea', 'Gulf of Bothnia', 'Norwegian Sea', 'Barents Sea', 'Black Sea', 'White Sea'], 200),
('/water/chesapeake-bay.webp',          'Chesapeake Bay',        ARRAY['Delaware Bay', 'Bay of Fundy', 'Long Island Sound', 'Pamlico Sound', 'Hudson River', 'Cape Cod Bay'], 200),
('/water/congo-river.webp',             'Congo River',           ARRAY['Niger River', 'Zambezi River', 'Nile River', 'Orange River', 'Ubangi River', 'Kasai River'], 200),
('/water/gulf-of-california.webp',      'Gulf of California',    ARRAY['Gulf of Mexico', 'Puget Sound', 'Gulf of Alaska', 'Salish Sea', 'Bay of Campeche', 'Gulf of Panama'], 200),
('/water/lake-erie.webp',               'Lake Erie',             ARRAY['Lake Ontario', 'Lake Huron', 'Lake Michigan', 'Lake Superior', 'Lake Champlain', 'Lake St. Clair'], 200),
('/water/lake-huron.webp',              'Lake Huron',            ARRAY['Lake Michigan', 'Lake Erie', 'Lake Superior', 'Lake Ontario', 'Georgian Bay', 'Lake Winnipeg'], 200),
('/water/lake-ontario.webp',            'Lake Ontario',          ARRAY['Lake Erie', 'Lake Huron', 'Lake Champlain', 'Lake Michigan', 'Lake Superior', 'Lake St. Clair'], 200),
('/water/lake-victoria.webp',           'Lake Victoria',         ARRAY['Lake Tanganyika', 'Lake Malawi', 'Lake Turkana', 'Lake Chad', 'Lake Albert', 'Lake Kivu'], 200),
('/water/north-sea.webp',               'North Sea',             ARRAY['Baltic Sea', 'Norwegian Sea', 'Irish Sea', 'English Channel', 'Celtic Sea', 'Bay of Biscay'], 200),
('/water/colorado-river.webp',          'Colorado River',        ARRAY['Rio Grande', 'Snake River', 'Columbia River', 'Missouri River', 'Arkansas River', 'Green River'], 200),
('/water/lake-titicaca.webp',           'Lake Titicaca',         ARRAY['Lake Maracaibo', 'Lake Nicaragua', 'Lake Poopó', 'Lake General Carrera', 'Lake Atitlán', 'Lake Valencia'], 200),
('/water/missouri-river.webp',          'Missouri River',        ARRAY['Mississippi River', 'Ohio River', 'Arkansas River', 'Platte River', 'Yellowstone River', 'Colorado River'], 200),
('/water/rio-de-la-plata.webp',         'Río de la Plata',       ARRAY['Bahía Blanca', 'Paraná River', 'Gulf of San Matías', 'Uruguay River', 'Lagoa dos Patos', 'Gulf of San Jorge'], 200),
('/water/strait-magellan.webp',         'Strait of Magellan',    ARRAY['Drake Passage', 'Beagle Channel', 'Bering Strait', 'Strait of Gibraltar', 'Davis Strait', 'Strait of Hormuz'], 200),
('/water/lake-baikal.webp',              'Lake Baikal',         ARRAY['Lake Balkhash', 'Lake Ladoga', 'Aral Sea', 'Issyk-Kul', 'Lake Khövsgöl', 'Lake Onega'], 200),
('/water/coral-sea.webp',                'Coral Sea',           ARRAY['Tasman Sea', 'Arafura Sea', 'Timor Sea', 'Solomon Sea', 'Bismarck Sea', 'Philippine Sea'], 200),
('/water/east-china-sea.webp',           'East China Sea',      ARRAY['South China Sea', 'Yellow Sea', 'Sea of Japan', 'Philippine Sea', 'Bohai Sea', 'Taiwan Strait'], 200),
('/water/yellow-sea.webp',               'Yellow Sea',          ARRAY['East China Sea', 'Sea of Japan', 'South China Sea', 'Korea Strait', 'Sea of Okhotsk', 'Philippine Sea'], 200),
('/water/danube-river.webp',             'Danube River',        ARRAY['Rhine River', 'Elbe River', 'Volga River', 'Dnieper River', 'Vistula River', 'Po River'], 200),
('/water/rhine-river.webp',              'Rhine River',         ARRAY['Danube River', 'Elbe River', 'Rhône River', 'Meuse River', 'Seine River', 'Weser River'], 200),
('/water/ganges-river.webp',             'Ganges River',        ARRAY['Brahmaputra River', 'Indus River', 'Godavari River', 'Irrawaddy River', 'Mekong River', 'Narmada River'], 200),
('/water/mekong-river.webp',             'Mekong River',        ARRAY['Irrawaddy River', 'Salween River', 'Red River', 'Chao Phraya River', 'Yangtze River', 'Ganges River'], 200),
('/water/yangtze-river.webp',            'Yangtze River',       ARRAY['Yellow River', 'Mekong River', 'Pearl River', 'Amur River', 'Ganges River', 'Brahmaputra River'], 200),
('/water/rio-grande-2.webp',             'Rio Grande',          ARRAY['Colorado River', 'Red River', 'Arkansas River', 'Brazos River', 'Mississippi River', 'Gila River'], 200),
('/water/yellow-river.webp',             'Yellow River',        ARRAY['Yangtze River', 'Amur River', 'Pearl River', 'Mekong River', 'Liao River', 'Huai River'], 200),
('/water/indus-river.webp',              'Indus River',         ARRAY['Ganges River', 'Brahmaputra River', 'Euphrates River', 'Amu Darya', 'Helmand River', 'Narmada River'], 200),
-- 300 points
('/water/baffin-bay.webp',              'Baffin Bay',            ARRAY['Hudson Bay', 'Davis Strait', 'Labrador Sea', 'Beaufort Sea', 'Greenland Sea', 'James Bay'], 300),
('/water/bay-of-fundy.webp',            'Bay of Fundy',          ARRAY['Gulf of Maine', 'Gulf of St. Lawrence', 'Chesapeake Bay', 'Cape Cod Bay', 'James Bay', 'Delaware Bay'], 300),
('/water/gulf-of-aden.webp',            'Gulf of Aden',          ARRAY['Gulf of Oman', 'Red Sea', 'Persian Gulf', 'Arabian Sea', 'Gulf of Suez', 'Mozambique Channel'], 300),
('/water/gulf-of-oman.webp',            'Gulf of Oman',          ARRAY['Gulf of Aden', 'Persian Gulf', 'Arabian Sea', 'Red Sea', 'Strait of Hormuz', 'Gulf of Suez'], 300),
('/water/gulf-of-st-lawrence.webp',     'Gulf of St. Lawrence',  ARRAY['Bay of Fundy', 'Gulf of Maine', 'Hudson Strait', 'James Bay', 'Labrador Sea', 'Hudson Bay'], 300),
('/water/hudson-river.webp',            'Hudson River',          ARRAY['Susquehanna River', 'Delaware River', 'Connecticut River', 'Ohio River', 'Potomac River', 'Mohawk River'], 300),
('/water/james-bay.webp',               'James Bay',             ARRAY['Hudson Bay', 'Baffin Bay', 'Hudson Strait', 'Bay of Fundy', 'Lake Winnipeg', 'Ungava Bay'], 300),
('/water/lake-malawi.webp',             'Lake Malawi',           ARRAY['Lake Tanganyika', 'Lake Victoria', 'Lake Turkana', 'Lake Kariba', 'Lake Albert', 'Lake Chad'], 300),
('/water/lake-tanganyika.webp',         'Lake Tanganyika',       ARRAY['Lake Malawi', 'Lake Victoria', 'Lake Turkana', 'Lake Albert', 'Lake Kivu', 'Lake Chad'], 300),
('/water/ohio-river.webp',              'Ohio River',            ARRAY['Tennessee River', 'Mississippi River', 'Missouri River', 'Susquehanna River', 'Hudson River', 'Cumberland River'], 300),
('/water/seine-river.webp',             'Seine River',           ARRAY['Loire River', 'Rhine River', 'Rhône River', 'Thames River', 'Garonne River', 'Danube River'], 300),
('/water/zambia-river.webp',            'Zambezi River',         ARRAY['Limpopo River', 'Congo River', 'Orange River', 'Okavango River', 'Niger River', 'Nile River'], 300),
('/water/elbe-river.webp',              'Elbe River',            ARRAY['Rhine River', 'Oder River', 'Danube River', 'Vistula River', 'Weser River', 'Moselle River'], 300),
('/water/gulf-panama.webp',             'Gulf of Panama',        ARRAY['Gulf of Honduras', 'Gulf of Fonseca', 'Gulf of California', 'Gulf of Paria', 'Bay of Campeche', 'Gulf of Urabá'], 300),
('/water/lake-maracaibo.webp',          'Lake Maracaibo',        ARRAY['Lake Titicaca', 'Lake Nicaragua', 'Gulf of Venezuela', 'Lake Valencia', 'Gulf of Paria', 'Lake Poopó'], 300),
('/water/loire-river.webp',             'Loire River',           ARRAY['Seine River', 'Garonne River', 'Rhône River', 'Rhine River', 'Dordogne River', 'Meuse River'], 300),
('/water/orinoco-river.webp',           'Orinoco River',         ARRAY['Amazon River', 'Magdalena River', 'Rio Negro', 'Paraná River', 'Essequibo River', 'Madeira River'], 300),
('/water/parana-river.webp',            'Paraná River',          ARRAY['Paraguay River', 'Uruguay River', 'Amazon River', 'Orinoco River', 'São Francisco River', 'Rio Negro'], 300),
('/water/tagus-river.webp',             'Tagus River',           ARRAY['Ebro River', 'Douro River', 'Guadalquivir River', 'Guadiana River', 'Garonne River', 'Loire River'], 300),
('/water/gulf-thailand.webp',            'Gulf of Thailand',    ARRAY['Gulf of Tonkin', 'Andaman Sea', 'Java Sea', 'Strait of Malacca', 'Bay of Bengal', 'Celebes Sea'], 300),
('/water/malacca-strait.webp',           'Strait of Malacca',   ARRAY['Sunda Strait', 'Lombok Strait', 'Makassar Strait', 'Taiwan Strait', 'Palk Strait', 'Strait of Hormuz'], 300),
('/water/andaman-sea.webp',              'Andaman Sea',         ARRAY['Bay of Bengal', 'Gulf of Thailand', 'Java Sea', 'Laccadive Sea', 'Celebes Sea', 'Sulu Sea'], 300),
('/water/gulf-tonkin.webp',              'Gulf of Tonkin',      ARRAY['Gulf of Thailand', 'Bohai Sea', 'Gulf of Carpentaria', 'Gulf of Mannar', 'Taiwan Strait', 'Celebes Sea'], 300),
('/water/danube-river-2.webp',           'Danube River',        ARRAY['Rhine River', 'Elbe River', 'Volga River', 'Dnieper River', 'Vistula River', 'Po River'], 300),
('/water/volga-river.webp',              'Volga River',         ARRAY['Don River', 'Dnieper River', 'Ural River', 'Danube River', 'Ob River', 'Dniester River'], 300),
('/water/euphrates-river.webp',          'Euphrates River',     ARRAY['Tigris River', 'Jordan River', 'Nile River', 'Karun River', 'Orontes River', 'Indus River'], 300),
('/water/niger-river.webp',              'Niger River',         ARRAY['Congo River', 'Senegal River', 'Nile River', 'Volta River', 'Gambia River', 'Zambezi River'], 300),
('/water/brahmaputra-river.webp',        'Brahmaputra River',   ARRAY['Ganges River', 'Indus River', 'Irrawaddy River', 'Mekong River', 'Salween River', 'Yangtze River'], 300),
('/water/rhone-river.webp',              'Rhône River',         ARRAY['Rhine River', 'Loire River', 'Seine River', 'Garonne River', 'Po River', 'Danube River'], 300),
('/water/yukon-river.webp',              'Yukon River',         ARRAY['Mackenzie River', 'Columbia River', 'Fraser River', 'Kuskokwim River', 'Nelson River', 'Missouri River'], 300),
-- 400 points
('/water/davis-strait.webp',            'Davis Strait',          ARRAY['Hudson Strait', 'Baffin Bay', 'Labrador Sea', 'Denmark Strait', 'Bering Strait', 'Northwest Passage'], 400),
('/water/dnieper-river.webp',           'Dnieper River',         ARRAY['Danube River', 'Volga River', 'Dniester River', 'Don River', 'Vistula River', 'Rhine River'], 400),
('/water/hudson-strait.webp',           'Hudson Strait',         ARRAY['Davis Strait', 'Hudson Bay', 'Bering Strait', 'Labrador Sea', 'James Bay', 'Northwest Passage'], 400),
('/water/labrador-sea.webp',            'Labrador Sea',          ARRAY['Baffin Bay', 'Davis Strait', 'Hudson Strait', 'Greenland Sea', 'North Atlantic Ocean', 'Gulf of St. Lawrence'], 400),
('/water/mozambique-channel.webp',      'Mozambique Channel',    ARRAY['Red Sea', 'Gulf of Aden', 'Gulf of Guinea', 'Arabian Sea', 'Strait of Gibraltar', 'Bay of Bengal'], 400),
('/water/nile-river-blue.webp',         'Blue Nile',             ARRAY['White Nile', 'Nile River', 'Atbara River', 'Congo River', 'Niger River', 'Zambezi River'], 400),
('/water/northwest-passages.webp',      'Northwest Passage',     ARRAY['Hudson Strait', 'Davis Strait', 'Bering Strait', 'Beaufort Sea', 'Baffin Bay', 'Northeast Passage'], 400),
('/water/puget-sound.webp',             'Puget Sound',           ARRAY['Salish Sea', 'Chesapeake Bay', 'Gulf of California', 'Long Island Sound', 'San Francisco Bay', 'Strait of Juan de Fuca'], 400),
('/water/salish-sea.webp',              'Salish Sea',            ARRAY['Puget Sound', 'Gulf of California', 'Strait of Juan de Fuca', 'Gulf of Alaska', 'Hecate Strait', 'Chesapeake Bay'], 400),
('/water/senegal-river.webp',           'Senegal River',         ARRAY['Niger River', 'Gambia River', 'Volta River', 'Congo River', 'Orange River', 'Zambezi River'], 400),
('/water/susquehanna-river.webp',       'Susquehanna River',     ARRAY['Delaware River', 'Hudson River', 'Potomac River', 'Ohio River', 'Allegheny River', 'Shenandoah River'], 400),
('/water/tennessee-river.webp',         'Tennessee River',       ARRAY['Cumberland River', 'Ohio River', 'Mississippi River', 'Arkansas River', 'Missouri River', 'Red River'], 400),
('/water/blanca-bay.webp',              'Bahía Blanca',          ARRAY['Gulf of San Matías', 'Gulf of San Jorge', 'Río de la Plata', 'Samborombón Bay', 'Golfo Nuevo', 'Gulf of Penas'], 400),
('/water/ebro-river.webp',              'Ebro River',            ARRAY['Tagus River', 'Douro River', 'Guadalquivir River', 'Garonne River', 'Rhône River', 'Loire River'], 400),
('/water/garonne-river.webp',           'Garonne River',         ARRAY['Loire River', 'Seine River', 'Rhône River', 'Dordogne River', 'Ebro River', 'Rhine River'], 400),
('/water/gulf-paria.webp',              'Gulf of Paria',         ARRAY['Gulf of Venezuela', 'Gulf of Panama', 'Gulf of Honduras', 'Lake Maracaibo', 'Gulf of Urabá', 'Bay of Campeche'], 400),
('/water/gulf-san-jorge.webp',          'Gulf of San Jorge',     ARRAY['Gulf of San Matías', 'Bahía Blanca', 'Golfo Nuevo', 'Gulf of Penas', 'Strait of Magellan', 'Río de la Plata'], 400),
('/water/gulf-san-matias.webp',         'Gulf of San Matías',    ARRAY['Gulf of San Jorge', 'Bahía Blanca', 'Golfo Nuevo', 'Gulf of Penas', 'Río de la Plata', 'Strait of Magellan'], 400),
('/water/paraguay-river.webp',          'Paraguay River',        ARRAY['Paraná River', 'Uruguay River', 'Pilcomayo River', 'Madeira River', 'Rio Negro', 'São Francisco River'], 400),
('/water/rio-negro.webp',               'Rio Negro',             ARRAY['Madeira River', 'Xingu River', 'Tapajós River', 'Orinoco River', 'Japurá River', 'Purus River'], 400),
('/water/lake-balkhash.webp',            'Lake Balkhash',       ARRAY['Lake Baikal', 'Aral Sea', 'Issyk-Kul', 'Lake Zaysan', 'Caspian Sea', 'Lake Alakol'], 400),
('/water/amur-river.webp',               'Amur River',          ARRAY['Yellow River', 'Lena River', 'Yenisei River', 'Ob River', 'Yalu River', 'Selenga River'], 400),
('/water/irrawaddy-river.webp',          'Irrawaddy River',     ARRAY['Salween River', 'Mekong River', 'Chao Phraya River', 'Brahmaputra River', 'Red River', 'Ganges River'], 400)
) AS v(visual_asset, correct_answer, wrong_answers, points);

COMMIT;

-- Check: should return 103.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WET_PANTS';
