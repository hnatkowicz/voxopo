-- ============================================================================
-- Country Monkey content expansion: 2 new regions (Asia / Middle East-Asia),
-- 68 questions total, matching the SVGs uploaded directly to public/countries/
-- asia/ and public/countries/middle-east-asia/. Same shape as seed.js's
-- original AFRICA and EUROPE region banks.
--
-- Purely additive: does NOT touch, modify, or delete any existing row. Does
-- NOT drop or truncate anything (unlike seed.js, which rebuilds the whole
-- table -- this script is safe to run against a live database with existing
-- content, including production).
--
-- question_number is computed dynamically (current MAX + row position), so
-- this is safe to paste into Neon's SQL editor regardless of exactly what's
-- already in the table.
--
-- Several countries appear more than once, sometimes across BOTH regions and
-- even a third (e.g. Turkiye also has a crop in public/countries/europe/) --
-- that's intentional, matching the existing africa/ethiopia_2.svg-style
-- "alternate crop" pattern: transcontinental or borderline countries (Egypt,
-- Eritrea, Sudan, Djibouti, Turkiye, Afghanistan, Pakistan, Albania, Greece)
-- get their own distinct map crop per region they plausibly belong to, so the
-- same country can be a legitimate answer in more than one region's deck.
--
-- Filenames with typos (phillipines, quatar, tajikstan) are left as-is on
-- disk -- only the correct_answer text is spelled correctly, since that's
-- the only place spelling is player-visible.
--
-- "occupied_territories.svg" is answered as "Palestinian Territories" --
-- a neutral, commonly-used geographic label, not taking a side on the
-- underlying dispute.
--
-- Remember: ASIA and MIDDLE_EAST_ASIA also need to be added to
-- getCategoriesForMode('COUNTRY_MONKEY') in src/services/gameEngine.js so
-- they show up as vote options -- already done as of this file's companion
-- commit.
-- ============================================================================

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (), 'COUNTRY_MONKEY', v.region, 'COUNTRY', v.region, 'Which country is highlighted?', v.visual_asset, v.correct_answer, v.points
FROM (VALUES

-- ============================================================================
-- REGION: ASIA -- South, East, Central, and Southeast Asia, plus a handful of
-- Red Sea / transcontinental countries that also have a crop here (41 rows).
-- ============================================================================

('ASIA', '/countries/asia/afghanistan_2.svg', 'Afghanistan', 250),
('ASIA', '/countries/asia/bangladesh.svg', 'Bangladesh', 150),
('ASIA', '/countries/asia/bhutan.svg', 'Bhutan', 300),
('ASIA', '/countries/asia/brunei.svg', 'Brunei', 300),
('ASIA', '/countries/asia/burma.svg', 'Myanmar', 200),
('ASIA', '/countries/asia/burma_2.svg', 'Myanmar', 200),
('ASIA', '/countries/asia/cambodia.svg', 'Cambodia', 200),
('ASIA', '/countries/asia/china.svg', 'China', 100),
('ASIA', '/countries/asia/china_2.svg', 'China', 100),
('ASIA', '/countries/asia/egypt_2.svg', 'Egypt', 150),
('ASIA', '/countries/asia/eritrea_2.svg', 'Eritrea', 300),
('ASIA', '/countries/asia/india.svg', 'India', 100),
('ASIA', '/countries/asia/indonesia.svg', 'Indonesia', 100),
('ASIA', '/countries/asia/indonesia_2.svg', 'Indonesia', 100),
('ASIA', '/countries/asia/iran_2.svg', 'Iran', 150),
('ASIA', '/countries/asia/japan.svg', 'Japan', 100),
('ASIA', '/countries/asia/japan_2.svg', 'Japan', 100),
('ASIA', '/countries/asia/kazakhstan.svg', 'Kazakhstan', 250),
('ASIA', '/countries/asia/laos.svg', 'Laos', 250),
('ASIA', '/countries/asia/malaysia.svg', 'Malaysia', 150),
('ASIA', '/countries/asia/malaysia_2.svg', 'Malaysia', 150),
('ASIA', '/countries/asia/mongolia.svg', 'Mongolia', 250),
('ASIA', '/countries/asia/nepal.svg', 'Nepal', 200),
('ASIA', '/countries/asia/nepal_2.svg', 'Nepal', 200),
('ASIA', '/countries/asia/pakistan.svg', 'Pakistan', 150),
('ASIA', '/countries/asia/palau.svg', 'Palau', 300),
('ASIA', '/countries/asia/papua_new_guinea.svg', 'Papua New Guinea', 200),
('ASIA', '/countries/asia/phillipines.svg', 'Philippines', 150),
('ASIA', '/countries/asia/phillipines_2.svg', 'Philippines', 150),
('ASIA', '/countries/asia/russia.svg', 'Russia', 100),
('ASIA', '/countries/asia/singapore.svg', 'Singapore', 150),
('ASIA', '/countries/asia/south_korea.svg', 'South Korea', 150),
('ASIA', '/countries/asia/south_sudan_2.svg', 'South Sudan', 250),
('ASIA', '/countries/asia/sri_lanka.svg', 'Sri Lanka', 200),
('ASIA', '/countries/asia/sri_lanka_2.svg', 'Sri Lanka', 200),
('ASIA', '/countries/asia/sudan_2.svg', 'Sudan', 250),
('ASIA', '/countries/asia/thailand.svg', 'Thailand', 100),
('ASIA', '/countries/asia/thailand_2.svg', 'Thailand', 100),
('ASIA', '/countries/asia/timor_leste.svg', 'Timor-Leste', 300),
('ASIA', '/countries/asia/turkiye_3.svg', 'Turkiye', 200),
('ASIA', '/countries/asia/vietnam.svg', 'Vietnam', 100),

-- ============================================================================
-- REGION: MIDDLE_EAST_ASIA -- the Middle East plus Central Asia and a few
-- Balkan/Red Sea countries that also have a crop here (27 rows).
-- ============================================================================

('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/afghanistan.svg', 'Afghanistan', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/albania_2.svg', 'Albania', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/azerbaijan.svg', 'Azerbaijan', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/cyprus.svg', 'Cyprus', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/djibouti_2.svg', 'Djibouti', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/egypt.svg', 'Egypt', 150),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/eritrea.svg', 'Eritrea', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/greece_2.svg', 'Greece', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/iran.svg', 'Iran', 150),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/iraq.svg', 'Iraq', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/israel.svg', 'Israel', 150),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/jordan.svg', 'Jordan', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/kuwait.svg', 'Kuwait', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/kyrgyzstan.svg', 'Kyrgyzstan', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/occupied_territories.svg', 'Palestinian Territories', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/oman.svg', 'Oman', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/pakistan.svg', 'Pakistan', 150),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/quatar.svg', 'Qatar', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/saudi_arabia.svg', 'Saudi Arabia', 150),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/sudan.svg', 'Sudan', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/syria.svg', 'Syria', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/tajikstan.svg', 'Tajikistan', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/turkiye_2.svg', 'Turkiye', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/turkmenistan.svg', 'Turkmenistan', 300),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/uae.svg', 'UAE', 200),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/uzbekistan.svg', 'Uzbekistan', 250),
('MIDDLE_EAST_ASIA', '/countries/middle-east-asia/yemen.svg', 'Yemen', 250)

) AS v(region, visual_asset, correct_answer, points);
