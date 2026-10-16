-- ============================================================================
-- Thinking Pants: the "Wet Pants" category -- 48 of Randy's water maps, 12 per
-- point tier (100 = Gulf of Mexico, Mediterranean ... 400 = Davis Strait,
-- Salish Sea, Blue Nile), each with 6 same-kind wrong answers (3 shown).
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
('/water/tennessee-river.webp',         'Tennessee River',       ARRAY['Cumberland River', 'Ohio River', 'Mississippi River', 'Arkansas River', 'Missouri River', 'Red River'], 400)
) AS v(visual_asset, correct_answer, wrong_answers, points);

COMMIT;

-- Check: should return 48.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WET_PANTS';
