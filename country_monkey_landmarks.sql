-- ============================================================================
-- Country Monkey: LANDMARK questions ("What is this landmark?") -- a TEST of
-- 15 photos from public/structures/ (Randy, Oct 2026), 16 rows. One flag
-- slot per game became a landmark slot (COUNTRY_MONKEY_MIX in gameEngine.js),
-- so a game has 10 maps, 2 flags, 1 landmark and 2 water.
--
-- Asks for the landmark, not its country: the country is nearly free points
-- (Eiffel Tower -> France) and would block that country's map and flag from
-- the same game. Switching a row to "Which country is this in?" is a content
-- edit (question_text, correct_answer, wrong_answers), no code.
--
-- Wrong answers are real landmarks of a similar look or place (Eiffel Tower
-- vs Tokyo Tower, Colosseum vs Verona Arena). accepted_answers: names a typed
-- Final Wager answer may use (Big Ben = Elizabeth Tower, Golden Pavilion =
-- Kinkaku-ji). The Great Pyramids count for Africa and the Middle East.
--
-- Safe to re-run: deletes and re-inserts the landmark questions only
-- (subcategory 'LANDMARK'), in a transaction.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];
ALTER TABLE questions ADD COLUMN IF NOT EXISTS accepted_answers TEXT[];

DELETE FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'LANDMARK';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'COUNTRY_MONKEY', v.region, 'LANDMARK', v.region, 'What is this landmark?', v.visual_asset, v.correct_answer, v.wrong_answers, v.accepted_answers, v.points
FROM (VALUES
('EUROPE',            '/structures/eiffel-tower.webp',           'Eiffel Tower',            ARRAY['Tokyo Tower', 'Blackpool Tower', 'CN Tower', 'Space Needle', 'Berlin TV Tower', 'Petronas Towers'], NULL::text[], 100),
('AFRICA',            '/structures/great-pyramids.webp',         'Great Pyramids of Giza',  ARRAY['Pyramid of Djoser', 'Chichen Itza', 'Pyramids of Meroë', 'Pyramid of the Sun', 'Temple of Karnak', 'Valley of the Kings'], ARRAY['Pyramids of Giza', 'Giza Pyramids', 'Great Pyramid of Giza', 'Great Pyramids', 'Pyramids'], 100),
('MIDDLE_EAST_ASIA',  '/structures/great-pyramids.webp',         'Great Pyramids of Giza',  ARRAY['Pyramid of Djoser', 'Chichen Itza', 'Pyramids of Meroë', 'Pyramid of the Sun', 'Temple of Karnak', 'Valley of the Kings'], ARRAY['Pyramids of Giza', 'Giza Pyramids', 'Great Pyramid of Giza', 'Great Pyramids', 'Pyramids'], 100),
('ASIA',              '/structures/taj-mahal.webp',              'Taj Mahal',               ARRAY['Humayun''s Tomb', 'Red Fort', 'Jama Masjid', 'Sheikh Zayed Grand Mosque', 'Bibi Ka Maqbara', 'Badshahi Mosque'], NULL::text[], 100),
('EUROPE',            '/structures/big-ben.webp',                'Big Ben',                 ARRAY['Tower Bridge', 'Westminster Abbey', 'Hungarian Parliament Building', 'Buckingham Palace', 'Tower of London', 'St. Paul''s Cathedral'], ARRAY['Elizabeth Tower', 'Palace of Westminster', 'Houses of Parliament'], 100),
('EUROPE',            '/structures/colosseum.webp',              'Colosseum',               ARRAY['Roman Forum', 'Pantheon', 'Arena of Nîmes', 'Verona Arena', 'Circus Maximus', 'Amphitheatre of El Jem'], ARRAY['Coliseum', 'Flavian Amphitheatre', 'Roman Colosseum'], 100),
('EUROPE',            '/structures/leaning-tower-pisa.webp',     'Leaning Tower of Pisa',   ARRAY['Giotto''s Campanile', 'St. Mark''s Campanile', 'Torre del Mangia', 'Asinelli Tower', 'Belfry of Bruges', 'Tower of Hercules'], ARRAY['Tower of Pisa', 'Pisa Tower'], 100),
('EUROPE',            '/structures/arc-triomphe.webp',           'Arc de Triomphe',         ARRAY['Brandenburg Gate', 'Arch of Constantine', 'Washington Square Arch', 'Marble Arch', 'Gateway of India', 'Wellington Arch'], ARRAY['Arc de Triomphe de lEtoile', 'Arch of Triumph'], 150),
('ASIA',              '/structures/forbidden-city.webp',         'Forbidden City',          ARRAY['Temple of Heaven', 'Summer Palace', 'Gyeongbokgung Palace', 'Potala Palace', 'Tokyo Imperial Palace', 'Imperial City of Hue'], ARRAY['Palace Museum'], 150),
('EUROPE',            '/structures/parthenon.webp',              'Parthenon',               ARRAY['Pantheon', 'Temple of Hephaestus', 'Temple of Olympian Zeus', 'Erechtheion', 'Lincoln Memorial', 'Maison Carrée'], ARRAY['Acropolis'], 150),
('AMERICAS',          '/structures/us-capitol.webp',             'US Capitol',              ARRAY['White House', 'Lincoln Memorial', 'Jefferson Memorial', 'St. Peter''s Basilica', 'Texas State Capitol', 'Library of Congress'], ARRAY['United States Capitol', 'Capitol Building', 'US Capitol Building', 'Capitol'], 150),
('ASIA',              '/structures/angkor-wat.webp',             'Angkor Wat',              ARRAY['Borobudur', 'Bagan', 'Wat Arun', 'Ayutthaya', 'Prambanan', 'Preah Vihear'], ARRAY['Angkor'], 200),
('ASIA',              '/structures/golden-pavilion.webp',        'Golden Pavilion',         ARRAY['Silver Pavilion', 'Himeji Castle', 'Byōdō-in', 'Kiyomizu-dera', 'Tōdai-ji', 'Sensō-ji'], ARRAY['Kinkaku-ji', 'Kinkakuji', 'Temple of the Golden Pavilion'], 200),
('EUROPE',            '/structures/versailles.webp',             'Palace of Versailles',    ARRAY['Louvre', 'Schönbrunn Palace', 'Buckingham Palace', 'Château de Chambord', 'Palace of Fontainebleau', 'Winter Palace'], ARRAY['Versailles', 'Chateau de Versailles'], 200),
('EUROPE',            '/structures/winter-palace.webp',          'Winter Palace',           ARRAY['Catherine Palace', 'Peterhof Palace', 'Kremlin', 'Schönbrunn Palace', 'Palace of Versailles', 'Buckingham Palace'], ARRAY['Hermitage', 'Hermitage Museum', 'State Hermitage Museum'], 250),
('EUROPE',            '/structures/pantheon.webp',               'Pantheon',                ARRAY['Parthenon', 'Hagia Sophia', 'St. Peter''s Basilica', 'Florence Cathedral', 'Temple of Hephaestus', 'Jefferson Memorial'], ARRAY['Pantheon Rome', 'Roman Pantheon'], 250)
) AS v(region, visual_asset, correct_answer, wrong_answers, accepted_answers, points);

COMMIT;

-- Check: should return 16.
SELECT COUNT(*) FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'LANDMARK';
