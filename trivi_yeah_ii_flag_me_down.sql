-- ============================================================================
-- Thinking Pants: the "Flag Me Down" category -- 80 flags, 20 per point tier
-- (100 = Japan, Canada, Brazil ... 400 = the look-alike tricolors and harder
-- flags), each with 6 look-alike flags as wrong answers (3 shown each time).
--
-- Safe to re-run: deletes and re-inserts this category only, inside a
-- transaction. Touches ONLY game_mode = 'TRIVI_YEAH_II' AND
-- category = 'FLAG_ME_DOWN'. The app already knows the category; until this file
-- is run, boards simply never pick it.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FLAG_ME_DOWN';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'TRIVI_YEAH_II', 'FLAG_ME_DOWN', NULL, NULL, 'Whose flag is this?', v.visual_asset, v.correct_answer, v.wrong_answers, v.points
FROM (VALUES
-- 100 points
('/flags/au.svg',       'Australia',               ARRAY['New Zealand', 'Cook Islands', 'Ascension Island', 'Pitcairn Islands', 'Nauru', 'Pacific Community'], 100),
('/flags/br.svg',       'Brazil',                  ARRAY['Portugal', 'Guyana', 'Jamaica', 'South Africa', 'Mozambique', 'Gabon'], 100),
('/flags/ca.svg',       'Canada',                  ARRAY['Peru', 'Lebanon', 'Austria', 'Denmark', 'Switzerland', 'Cyprus'], 100),
('/flags/ch.svg',       'Switzerland',             ARRAY['Denmark', 'Tonga', 'Georgia', 'England', 'Austria', 'Japan'], 100),
('/flags/cn.svg',       'China',                   ARRAY['Vietnam', 'Hong Kong', 'Kyrgyzstan', 'Turkiye', 'Macau', 'Taiwan'], 100),
('/flags/de.svg',       'Germany',                 ARRAY['Malawi', 'Angola', 'Papua New Guinea', 'Mozambique', 'Belarus', 'Catalonia'], 100),
('/flags/es.svg',       'Spain',                   ARRAY['Vietnam', 'Morocco', 'Montenegro', 'China', 'Catalonia', 'Isle of Man'], 100),
('/flags/fr.svg',       'France',                  ARRAY['Mexico', 'Italy', 'Peru', 'Ireland', 'Andorra', 'Romania'], 100),
('/flags/gb.svg',       'United Kingdom',          ARRAY['England', 'Georgia', 'Northern Ireland', 'Morocco', 'Guernsey', 'Belarus'], 100),
('/flags/gr.svg',       'Greece',                  ARRAY['Nicaragua', 'El Salvador', 'Micronesia', 'Antarctica', 'Scotland', 'Kosovo'], 100),
('/flags/ie.svg',       'Ireland',                 ARRAY['Ivory Coast', 'Italy', 'Mexico', 'Nigeria', 'France', 'Romania'], 100),
('/flags/in.svg',       'India',                   ARRAY['Hungary', 'Niger', 'Iran', 'Tajikistan', 'French Polynesia', 'Kiribati'], 100),
('/flags/it.svg',       'Italy',                   ARRAY['Mexico', 'Ireland', 'Ivory Coast', 'France', 'Andorra', 'Romania'], 100),
('/flags/jm.svg',       'Jamaica',                 ARRAY['Cocos (Keeling) Islands', 'Zambia', 'São Tomé and Príncipe', 'Saudi Arabia', 'Guyana', 'Martinique'], 100),
('/flags/jp.svg',       'Japan',                   ARRAY['Bangladesh', 'Palau', 'South Korea', 'Greenland', 'Laos', 'Niger'], 100),
('/flags/kr.svg',       'South Korea',             ARRAY['Cyprus', 'Japan', 'US Virgin Islands', 'Galicia', 'Micronesia', 'Fiji'], 100),
('/flags/mx.svg',       'Mexico',                  ARRAY['Italy', 'France', 'Ireland', 'Ivory Coast', 'Peru', 'Canada'], 100),
('/flags/se.svg',       'Sweden',                  ARRAY['Iceland', 'Åland Islands', 'Kosovo', 'CEFTA', 'European Union', 'Romania'], 100),
('/flags/us.svg',       'United States',           ARRAY['Liberia', 'Malaysia', 'Puerto Rico', 'Cuba', 'Chile', 'US Virgin Islands'], 100),
('/flags/ua.svg',       'Ukraine',                 ARRAY['Colombia', 'Rwanda', 'Guinea-Bissau', 'Ecuador', 'Liechtenstein', 'Bosnia and Herzegovina'], 100),
-- 200 points
('/flags/be.svg',       'Belgium',                 ARRAY['Chad', 'Romania', 'Senegal', 'Andorra', 'Moldova', 'Portugal'], 200),
('/flags/no.svg',       'Norway',                  ARRAY['Hong Kong', 'Morocco', 'China', 'Vietnam', 'Austria', 'Latvia'], 200),
('/flags/pl.svg',       'Poland',                  ARRAY['Monaco', 'Indonesia', 'Singapore', 'Chile', 'Czech Republic', 'Slovakia'], 200),
('/flags/nz.svg',       'New Zealand',             ARRAY['Pitcairn Islands', 'Montserrat', 'Anguilla', 'Falkland Islands', 'Cook Islands', 'Australia'], 200),
('/flags/pt.svg',       'Portugal',                ARRAY['Guinea', 'Mali', 'Benin', 'Timor-Leste', 'Belgium', 'Albania'], 200),
('/flags/cl.svg',       'Chile',                   ARRAY['Czech Republic', 'Poland', 'Monaco', 'Indonesia', 'Greenland', 'Haiti'], 200),
('/flags/ph.svg',       'Philippines',             ARRAY['Sint Maarten', 'Haiti', 'Paraguay', 'Chile', 'Samoa', 'Kiribati'], 200),
('/flags/ng.svg',       'Nigeria',                 ARRAY['Italy', 'Macau', 'Ireland', 'Ivory Coast', 'Mauritania', 'Somalia'], 200),
('/flags/pk.svg',       'Pakistan',                ARRAY['Algeria', 'Cocos (Keeling) Islands', 'Saudi Arabia', 'Zambia', 'Turkmenistan', 'Arab League'], 200),
('/flags/cu.svg',       'Cuba',                    ARRAY['Costa Rica', 'Suriname', 'Cambodia', 'North Korea', 'Curaçao', 'Falkland Islands'], 200),
('/flags/at.svg',       'Austria',                 ARRAY['Denmark', 'Netherlands', 'Latvia', 'Egypt', 'Hungary', 'Croatia'], 200),
('/flags/eg.svg',       'Egypt',                   ARRAY['Iraq', 'Yemen', 'Hungary', 'Netherlands', 'Sudan', 'Niger'], 200),
('/flags/id.svg',       'Indonesia',               ARRAY['Singapore', 'Poland', 'Chile', 'Czech Republic', 'Kiribati', 'Tonga'], 200),
('/flags/th.svg',       'Thailand',                ARRAY['Suriname', 'Costa Rica', 'Lithuania', 'Serbia', 'Maldives', 'Guam'], 200),
('/flags/fi.svg',       'Finland',                 ARRAY['Faroe Islands', 'England', 'US Virgin Islands', 'Guernsey', 'Northern Ireland', 'Cyprus'], 200),
('/flags/vn.svg',       'Vietnam',                 ARRAY['China', 'Morocco', 'Hong Kong', 'Turkiye', 'Samoa', 'Maldives'], 200),
('/flags/gb-eng.svg',   'England',                 ARRAY['Northern Ireland', 'Georgia', 'Guernsey', 'Japan', 'Cyprus', 'Faroe Islands'], 200),
('/flags/gb-sct.svg',   'Scotland',                ARRAY['Finland', 'Greece', 'Iceland', 'Jersey', 'Jamaica', 'Antarctica'], 200),
('/flags/cz.svg',       'Czech Republic',          ARRAY['Chile', 'Poland', 'Indonesia', 'Monaco', 'Slovakia', 'Russia'], 200),
('/flags/co.svg',       'Colombia',                ARRAY['Ecuador', 'Venezuela', 'Mauritius', 'Ukraine', 'Grenada', 'Bermuda'], 200),
-- 300 points
('/flags/ge.svg',       'Georgia',                 ARRAY['Northern Ireland', 'England', 'Guernsey', 'Japan', 'Bahrain', 'Israel'], 300),
('/flags/al.svg',       'Albania',                 ARRAY['Kyrgyzstan', 'Switzerland', 'China', 'Turkiye', 'Isle of Man', 'Montenegro'], 300),
('/flags/tt.svg',       'Trinidad and Tobago',     ARRAY['Albania', 'Tunisia', 'Turkiye', 'Isle of Man', 'Bermuda', 'St. Kitts and Nevis'], 300),
('/flags/jo.svg',       'Jordan',                  ARRAY['Palestine', 'United Arab Emirates', 'Western Sahara', 'Malawi', 'Syria', 'Iraq'], 300),
('/flags/pg.svg',       'Papua New Guinea',        ARRAY['Angola', 'Timor-Leste', 'Taiwan', 'Portugal', 'Samoa', 'Nepal'], 300),
('/flags/mk.svg',       'North Macedonia',         ARRAY['Vietnam', 'Montenegro', 'Kyrgyzstan', 'China', 'Isle of Man', 'Catalonia'], 300),
('/flags/tn.svg',       'Tunisia',                 ARRAY['Turkiye', 'Hong Kong', 'Kyrgyzstan', 'Switzerland', 'Morocco', 'Burkina Faso'], 300),
('/flags/ae.svg',       'United Arab Emirates',    ARRAY['Palestine', 'Jordan', 'Western Sahara', 'Syria', 'Yemen', 'Iraq'], 300),
('/flags/kp.svg',       'North Korea',             ARRAY['Eswatini', 'Cambodia', 'Morocco', 'Suriname', 'Samoa', 'Tonga'], 300),
('/flags/bo.svg',       'Bolivia',                 ARRAY['Ghana', 'Ethiopia', 'Belarus', 'Niger', 'Paraguay', 'Haiti'], 300),
('/flags/sg.svg',       'Singapore',               ARRAY['Indonesia', 'Monaco', 'Poland', 'Chile', 'Kiribati', 'Tonga'], 300),
('/flags/ro.svg',       'Romania',                 ARRAY['Belgium', 'Senegal', 'Mali', 'Guinea', 'France', 'Italy'], 300),
('/flags/ba.svg',       'Bosnia and Herzegovina',  ARRAY['Christmas Island', 'Tokelau', 'Australia', 'New Zealand', 'Ukraine', 'Andorra'], 300),
('/flags/ps.svg',       'Palestine',               ARRAY['Western Sahara', 'United Arab Emirates', 'Jordan', 'Syria', 'Iraq', 'Iran'], 300),
('/flags/ao.svg',       'Angola',                  ARRAY['Papua New Guinea', 'Burkina Faso', 'Liechtenstein', 'Taiwan', 'Libya', 'Sudan'], 300),
('/flags/ht.svg',       'Haiti',                   ARRAY['Liechtenstein', 'Samoa', 'Sint Maarten', 'Philippines', 'Paraguay', 'Chile'], 300),
('/flags/ir.svg',       'Iran',                    ARRAY['Niger', 'Tajikistan', 'Hungary', 'Netherlands', 'Yemen', 'Iraq'], 300),
('/flags/uy.svg',       'Uruguay',                 ARRAY['Israel', 'US Virgin Islands', 'Galicia', 'South Korea', 'Guatemala', 'Argentina'], 300),
('/flags/gt.svg',       'Guatemala',               ARRAY['United Nations', 'Antarctica', 'Micronesia', 'Somalia', 'Argentina', 'Aruba'], 300),
('/flags/my.svg',       'Malaysia',                ARRAY['Samoa', 'Czech Republic', 'Serbia', 'Morocco', 'Taiwan', 'Vietnam'], 300),
-- 400 points
('/flags/tl.svg',       'Timor-Leste',             ARRAY['Isle of Man', 'Vietnam', 'Morocco', 'Montenegro', 'Samoa', 'China'], 400),
('/flags/aq.svg',       'Antarctica',              ARRAY['United Nations', 'Guatemala', 'Micronesia', 'Somalia', 'French Southern and Antarctic Lands', 'Argentina'], 400),
('/flags/bh.svg',       'Bahrain',                 ARRAY['Qatar', 'Malta', 'Morocco', 'China', 'Turkiye', 'Kyrgyzstan'], 400),
('/flags/xk.svg',       'Kosovo',                  ARRAY['Pacific Community', 'ASEAN', 'CEFTA', 'European Union', 'Iceland', 'Sweden'], 400),
('/flags/kg.svg',       'Kyrgyzstan',              ARRAY['Albania', 'Switzerland', 'Tunisia', 'China', 'Turkiye', 'Bahrain'], 400),
('/flags/na.svg',       'Namibia',                 ARRAY['Samoa', 'Belarus', 'Burkina Faso', 'Seychelles', 'Morocco', 'Zambia'], 400),
('/flags/la.svg',       'Laos',                    ARRAY['Maldives', 'Morocco', 'Mauritania', 'Hong Kong', 'Guam', 'Samoa'], 400),
('/flags/mv.svg',       'Maldives',                ARRAY['Morocco', 'Laos', 'Vietnam', 'Hong Kong', 'China', 'Samoa'], 400),
('/flags/gb-nir.svg',   'Northern Ireland',        ARRAY['England', 'Georgia', 'Guernsey', 'Faroe Islands', 'Cyprus', 'United Kingdom'], 400),
('/flags/sv.svg',       'El Salvador',             ARRAY['Lesotho', 'Netherlands', 'Paraguay', 'Uzbekistan', 'Honduras', 'Argentina'], 400),
('/flags/uz.svg',       'Uzbekistan',              ARRAY['Sierra Leone', 'Nicaragua', 'Lesotho', 'Honduras', 'Iran', 'Syria'], 400),
('/flags/gm.svg',       'The Gambia',              ARRAY['Armenia', 'Tajikistan', 'Libya', 'Mauritius', 'Burkina Faso', 'Ethiopia'], 400),
('/flags/dj.svg',       'Djibouti',                ARRAY['Uzbekistan', 'Sierra Leone', 'Argentina', 'Micronesia', 'Madagascar', 'Algeria'], 400),
('/flags/gn.svg',       'Guinea',                  ARRAY['Mali', 'Senegal', 'Belgium', 'Romania', 'Chad', 'Rep. of Congo'], 400),
('/flags/tg.svg',       'Togo',                    ARRAY['São Tomé and Príncipe', 'Guyana', 'Burkina Faso', 'Zambia', 'Senegal', 'Uganda'], 400),
('/flags/lv.svg',       'Latvia',                  ARRAY['Austria', 'Denmark', 'Morocco', 'Netherlands', 'Hungary', 'Basque Country'], 400),
('/flags/kw.svg',       'Kuwait',                  ARRAY['Equatorial Guinea', 'Sudan', 'Hungary', 'Vanuatu', 'Iran', 'Yemen'], 400),
('/flags/rw.svg',       'Rwanda',                  ARRAY['Ukraine', 'Gabon', 'Azerbaijan', 'Tuvalu', 'Mauritius', 'Cabo Verde'], 400),
('/flags/im.svg',       'Isle of Man',             ARRAY['Montenegro', 'Morocco', 'Tonga', 'Tunisia', 'Albania', 'Switzerland'], 400),
('/flags/om.svg',       'Oman',                    ARRAY['Eritrea', 'Belarus', 'Wales', 'Azerbaijan', 'Bahrain', 'Turkiye'], 400)
) AS v(visual_asset, correct_answer, wrong_answers, points);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FLAG_ME_DOWN';
