-- ============================================================================
-- Country Monkey content expansion: 3 new regions (Americas / Southeast Asia /
-- Pacific Islands), 51 countries total, following the exact same shape as
-- seed.js's original AFRICA and EUROPE region banks.
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
-- IMPORTANT -- getting ahead of the map-asset upload: these rows reference
-- visual_asset paths under public/countries/americas/, public/countries/
-- southeast-asia/, and public/countries/pacific-islands/, none of which exist
-- yet. Run this once those three folders are populated with SVGs whose
-- filenames match the slugs below -- otherwise Country Monkey will serve
-- these questions with a broken map image. Filename convention (matching the
-- existing africa/europe folders): all lowercase, multi-word country names
-- joined with an underscore (e.g. "costa_rica.svg", "trinidad_tobago.svg").
-- Extra crops/alternate views of the same country (à la ethiopia_2.svg,
-- kenya_2.svg) are welcome later -- just re-run this same country's block
-- pattern with a "_2" suffix on both the filename and a fresh row; the
-- distractor pool is already big enough per region (11-28 countries) that no
-- extra rows are needed just to satisfy the 4-distractor minimum.
--
-- category doubles as the region's `category` column value AND its `faction`
-- (matching AFRICA/EUROPE) so all countries in a region share one distractor
-- pool. Remember to also add the region to getCategoriesForMode('COUNTRY_
-- MONKEY') in src/services/gameEngine.js so it shows up as a vote option --
-- already done for AMERICAS / SOUTHEAST_ASIA / PACIFIC_ISLANDS as of this
-- file's companion commit.
-- ============================================================================

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (), 'COUNTRY_MONKEY', v.region, 'COUNTRY', v.region, 'Which country is highlighted?', v.visual_asset, v.correct_answer, v.points
FROM (VALUES

-- ============================================================================
-- REGION: AMERICAS -- North America, Central America, the Caribbean, and
-- South America in one pool (28 countries).
-- ============================================================================

-- North America
('AMERICAS', '/countries/americas/canada.svg', 'Canada', 100),
('AMERICAS', '/countries/americas/united_states.svg', 'United States', 100),
('AMERICAS', '/countries/americas/mexico.svg', 'Mexico', 100),

-- Central America
('AMERICAS', '/countries/americas/guatemala.svg', 'Guatemala', 250),
('AMERICAS', '/countries/americas/belize.svg', 'Belize', 300),
('AMERICAS', '/countries/americas/honduras.svg', 'Honduras', 250),
('AMERICAS', '/countries/americas/el_salvador.svg', 'El Salvador', 250),
('AMERICAS', '/countries/americas/nicaragua.svg', 'Nicaragua', 250),
('AMERICAS', '/countries/americas/costa_rica.svg', 'Costa Rica', 200),
('AMERICAS', '/countries/americas/panama.svg', 'Panama', 200),

-- Caribbean
('AMERICAS', '/countries/americas/cuba.svg', 'Cuba', 150),
('AMERICAS', '/countries/americas/jamaica.svg', 'Jamaica', 150),
('AMERICAS', '/countries/americas/haiti.svg', 'Haiti', 250),
('AMERICAS', '/countries/americas/dominican_republic.svg', 'Dominican Republic', 250),
('AMERICAS', '/countries/americas/bahamas.svg', 'Bahamas', 250),
('AMERICAS', '/countries/americas/trinidad_tobago.svg', 'Trinidad & Tobago', 300),

-- South America
('AMERICAS', '/countries/americas/colombia.svg', 'Colombia', 150),
('AMERICAS', '/countries/americas/venezuela.svg', 'Venezuela', 200),
('AMERICAS', '/countries/americas/guyana.svg', 'Guyana', 300),
('AMERICAS', '/countries/americas/suriname.svg', 'Suriname', 300),
('AMERICAS', '/countries/americas/ecuador.svg', 'Ecuador', 200),
('AMERICAS', '/countries/americas/peru.svg', 'Peru', 150),
('AMERICAS', '/countries/americas/brazil.svg', 'Brazil', 100),
('AMERICAS', '/countries/americas/bolivia.svg', 'Bolivia', 200),
('AMERICAS', '/countries/americas/paraguay.svg', 'Paraguay', 250),
('AMERICAS', '/countries/americas/chile.svg', 'Chile', 150),
('AMERICAS', '/countries/americas/argentina.svg', 'Argentina', 150),
('AMERICAS', '/countries/americas/uruguay.svg', 'Uruguay', 200),

-- ============================================================================
-- REGION: SOUTHEAST_ASIA -- the 11 mainland + maritime Southeast Asian
-- nations (ASEAN's 10 plus Timor-Leste).
-- ============================================================================

('SOUTHEAST_ASIA', '/countries/southeast-asia/thailand.svg', 'Thailand', 100),
('SOUTHEAST_ASIA', '/countries/southeast-asia/vietnam.svg', 'Vietnam', 100),
('SOUTHEAST_ASIA', '/countries/southeast-asia/indonesia.svg', 'Indonesia', 100),
('SOUTHEAST_ASIA', '/countries/southeast-asia/philippines.svg', 'Philippines', 150),
('SOUTHEAST_ASIA', '/countries/southeast-asia/singapore.svg', 'Singapore', 150),
('SOUTHEAST_ASIA', '/countries/southeast-asia/malaysia.svg', 'Malaysia', 150),
('SOUTHEAST_ASIA', '/countries/southeast-asia/myanmar.svg', 'Myanmar', 200),
('SOUTHEAST_ASIA', '/countries/southeast-asia/cambodia.svg', 'Cambodia', 200),
('SOUTHEAST_ASIA', '/countries/southeast-asia/laos.svg', 'Laos', 250),
('SOUTHEAST_ASIA', '/countries/southeast-asia/brunei.svg', 'Brunei', 300),
('SOUTHEAST_ASIA', '/countries/southeast-asia/east_timor.svg', 'Timor-Leste', 300),

-- ============================================================================
-- REGION: PACIFIC_ISLANDS -- the independent Pacific Island nations
-- (deliberately excludes Australia and New Zealand, which read as their own
-- category rather than "island nation" trivia).
-- ============================================================================

('PACIFIC_ISLANDS', '/countries/pacific-islands/fiji.svg', 'Fiji', 150),
('PACIFIC_ISLANDS', '/countries/pacific-islands/papua_new_guinea.svg', 'Papua New Guinea', 150),
('PACIFIC_ISLANDS', '/countries/pacific-islands/samoa.svg', 'Samoa', 200),
('PACIFIC_ISLANDS', '/countries/pacific-islands/tonga.svg', 'Tonga', 200),
('PACIFIC_ISLANDS', '/countries/pacific-islands/solomon_islands.svg', 'Solomon Islands', 250),
('PACIFIC_ISLANDS', '/countries/pacific-islands/vanuatu.svg', 'Vanuatu', 250),
('PACIFIC_ISLANDS', '/countries/pacific-islands/palau.svg', 'Palau', 250),
('PACIFIC_ISLANDS', '/countries/pacific-islands/kiribati.svg', 'Kiribati', 300),
('PACIFIC_ISLANDS', '/countries/pacific-islands/micronesia.svg', 'Micronesia', 300),
('PACIFIC_ISLANDS', '/countries/pacific-islands/marshall_islands.svg', 'Marshall Islands', 300),
('PACIFIC_ISLANDS', '/countries/pacific-islands/nauru.svg', 'Nauru', 300),
('PACIFIC_ISLANDS', '/countries/pacific-islands/tuvalu.svg', 'Tuvalu', 300)

) AS v(region, visual_asset, correct_answer, points);
