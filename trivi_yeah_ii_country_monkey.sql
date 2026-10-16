-- ============================================================================
-- Thinking Pants: the "Country Monkey" category -- 80 map questions, 20 per
-- point tier (100 = famous shapes ... 400 = Burundi, Bhutan, Eswatini), using
-- Randy's maps in public/maps/. 80 different countries, so a board can never
-- show the same country twice.
--
-- Safe to re-run: deletes and re-inserts this category only, inside a
-- transaction. Touches ONLY game_mode = 'TRIVI_YEAH_II' AND
-- category = 'COUNTRY_MONKEY'. The app already knows the category key; until
-- this file is run, boards simply never pick it.
--
-- Wrong answers: the same hand-picked 6 per country as the Country Monkey
-- mode (country_monkey_new_maps.sql); 3 are shown each time.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'COUNTRY_MONKEY';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'TRIVI_YEAH_II', 'COUNTRY_MONKEY', NULL, NULL, 'Which country is highlighted?', v.visual_asset, v.correct_answer, v.wrong_answers, v.points
FROM (VALUES
-- 100 points
('/maps/united-states.webp',              'United States',           ARRAY['Canada', 'Mexico', 'Cuba', 'Guatemala', 'Russia', 'Brazil'], 100),
('/maps/canada.webp',                     'Canada',                  ARRAY['United States', 'Russia', 'Iceland', 'Mexico', 'Norway', 'Finland'], 100),
('/maps/mexico.webp',                     'Mexico',                  ARRAY['United States', 'Guatemala', 'Cuba', 'Belize', 'Honduras', 'Colombia'], 100),
('/maps/brazil.webp',                     'Brazil',                  ARRAY['Argentina', 'Colombia', 'Venezuela', 'Peru', 'Bolivia', 'Paraguay'], 100),
('/maps/australia.webp',                  'Australia',               ARRAY['New Zealand', 'Papua New Guinea', 'Indonesia', 'Fiji', 'Austria', 'Madagascar'], 100),
('/maps/china.webp',                      'China',                   ARRAY['Mongolia', 'Russia', 'India', 'Kazakhstan', 'Japan', 'North Korea'], 100),
('/maps/india.webp',                      'India',                   ARRAY['Pakistan', 'Bangladesh', 'Nepal', 'Sri Lanka', 'Myanmar', 'China'], 100),
('/maps/russia.webp',                     'Russia',                  ARRAY['Kazakhstan', 'China', 'Mongolia', 'Ukraine', 'Canada', 'Belarus'], 100),
('/maps/japan.webp',                      'Japan',                   ARRAY['South Korea', 'North Korea', 'Taiwan', 'Philippines', 'China', 'Mongolia'], 100),
('/maps/italy.webp',                      'Italy',                   ARRAY['Greece', 'Croatia', 'Spain', 'Slovenia', 'Malta', 'Albania'], 100),
('/maps/france.webp',                     'France',                  ARRAY['Spain', 'Germany', 'Belgium', 'Italy', 'Switzerland', 'Portugal'], 100),
('/maps/spain.webp',                      'Spain',                   ARRAY['Portugal', 'France', 'Italy', 'Morocco', 'Andorra', 'Greece'], 100),
('/maps/unired-kingdom.webp',             'United Kingdom',          ARRAY['Ireland', 'Iceland', 'Denmark', 'Netherlands', 'Norway', 'France'], 100),
('/maps/egypt.webp',                      'Egypt',                   ARRAY['Libya', 'Sudan', 'Saudi Arabia', 'Jordan', 'Israel', 'Chad'], 100),
('/maps/chile.webp',                      'Chile',                   ARRAY['Argentina', 'Peru', 'Bolivia', 'Ecuador', 'Uruguay', 'Paraguay'], 100),
('/maps/south-africa.webp',               'South Africa',            ARRAY['Namibia', 'Botswana', 'Zimbabwe', 'Mozambique', 'Lesotho', 'Angola'], 100),
('/maps/madagascar.webp',                 'Madagascar',              ARRAY['Mozambique', 'Mauritius', 'Comoros', 'Sri Lanka', 'Seychelles', 'Malawi'], 100),
('/maps/germany.webp',                    'Germany',                 ARRAY['Poland', 'Austria', 'Czech Republic', 'Netherlands', 'France', 'Denmark'], 100),
('/maps/saudi-arabia.webp',               'Saudi Arabia',            ARRAY['Yemen', 'Oman', 'Iraq', 'Jordan', 'United Arab Emirates', 'Egypt'], 100),
('/maps/new-zealand.webp',                'New Zealand',             ARRAY['Australia', 'Fiji', 'Papua New Guinea', 'Tonga', 'Vanuatu', 'Solomon Islands'], 100),
-- 200 points
('/maps/argentina.webp',                  'Argentina',               ARRAY['Chile', 'Uruguay', 'Paraguay', 'Bolivia', 'Peru', 'Brazil'], 200),
('/maps/peru.webp',                       'Peru',                    ARRAY['Ecuador', 'Bolivia', 'Colombia', 'Chile', 'Paraguay', 'Venezuela'], 200),
('/maps/colombia.webp',                   'Colombia',                ARRAY['Venezuela', 'Ecuador', 'Peru', 'Panama', 'Bolivia', 'Guyana'], 200),
('/maps/cuba.webp',                       'Cuba',                    ARRAY['Jamaica', 'Haiti', 'Dominican Republic', 'The Bahamas', 'Puerto Rico', 'Honduras'], 200),
('/maps/ireland.webp',                    'Ireland',                 ARRAY['United Kingdom', 'Iceland', 'Denmark', 'Netherlands', 'Belgium', 'Portugal'], 200),
('/maps/greece.webp',                     'Greece',                  ARRAY['Turkiye', 'Albania', 'Bulgaria', 'North Macedonia', 'Cyprus', 'Italy'], 200),
('/maps/norway.webp',                     'Norway',                  ARRAY['Sweden', 'Finland', 'Denmark', 'Iceland', 'Estonia', 'Latvia'], 200),
('/maps/sweden.webp',                     'Sweden',                  ARRAY['Norway', 'Finland', 'Denmark', 'Estonia', 'Iceland', 'Latvia'], 200),
('/maps/turkiye.webp',                    'Turkiye',                 ARRAY['Greece', 'Syria', 'Iran', 'Georgia', 'Bulgaria', 'Iraq'], 200),
('/maps/iran.webp',                       'Iran',                    ARRAY['Iraq', 'Afghanistan', 'Pakistan', 'Turkmenistan', 'Saudi Arabia', 'Turkiye'], 200),
('/maps/iraq.webp',                       'Iraq',                    ARRAY['Iran', 'Syria', 'Jordan', 'Kuwait', 'Saudi Arabia', 'Turkiye'], 200),
('/maps/indonesia.webp',                  'Indonesia',               ARRAY['Philippines', 'Malaysia', 'Papua New Guinea', 'Timor-Leste', 'Brunei', 'Thailand'], 200),
('/maps/thailand.webp',                   'Thailand',                ARRAY['Myanmar', 'Laos', 'Cambodia', 'Vietnam', 'Malaysia', 'Taiwan'], 200),
('/maps/vietnam.webp',                    'Vietnam',                 ARRAY['Laos', 'Cambodia', 'Thailand', 'Myanmar', 'Malaysia', 'Philippines'], 200),
('/maps/phillipines.webp',                'Philippines',             ARRAY['Indonesia', 'Malaysia', 'Taiwan', 'Japan', 'Vietnam', 'Papua New Guinea'], 200),
('/maps/south-korea.webp',                'South Korea',             ARRAY['North Korea', 'Japan', 'Taiwan', 'China', 'Philippines', 'Vietnam'], 200),
('/maps/ukraine.webp',                    'Ukraine',                 ARRAY['Belarus', 'Poland', 'Romania', 'Moldova', 'Russia', 'Hungary'], 200),
('/maps/poland.webp',                     'Poland',                  ARRAY['Germany', 'Czech Republic', 'Belarus', 'Ukraine', 'Lithuania', 'Slovakia'], 200),
('/maps/morocco.webp',                    'Morocco',                 ARRAY['Algeria', 'Western Sahara', 'Tunisia', 'Mauritania', 'Libya', 'Portugal'], 200),
('/maps/kenya.webp',                      'Kenya',                   ARRAY['Tanzania', 'Uganda', 'Ethiopia', 'Somalia', 'South Sudan', 'Rwanda'], 200),
-- 300 points
('/maps/nigeria.webp',                    'Nigeria',                 ARRAY['Niger', 'Cameroon', 'Benin', 'Ghana', 'Chad', 'Togo'], 300),
('/maps/ethiopia.webp',                   'Ethiopia',                ARRAY['Somalia', 'Eritrea', 'Kenya', 'South Sudan', 'Sudan', 'Djibouti'], 300),
('/maps/somalia.webp',                    'Somalia',                 ARRAY['Ethiopia', 'Kenya', 'Djibouti', 'Eritrea', 'Yemen', 'Tanzania'], 300),
('/maps/afghanistan.webp',                'Afghanistan',             ARRAY['Pakistan', 'Tajikistan', 'Turkmenistan', 'Uzbekistan', 'Iran', 'Kyrgyzstan'], 300),
('/maps/pakistan.webp',                   'Pakistan',                ARRAY['Afghanistan', 'India', 'Iran', 'Turkmenistan', 'Bangladesh', 'Tajikistan'], 300),
('/maps/mongolia.webp',                   'Mongolia',                ARRAY['Kazakhstan', 'China', 'Kyrgyzstan', 'Russia', 'Uzbekistan', 'Turkmenistan'], 300),
('/maps/kazakhstan.webp',                 'Kazakhstan',              ARRAY['Uzbekistan', 'Kyrgyzstan', 'Turkmenistan', 'Mongolia', 'Tajikistan', 'Russia'], 300),
('/maps/israel.webp',                     'Israel',                  ARRAY['Lebanon', 'Jordan', 'Palestine', 'Syria', 'Cyprus', 'Kuwait'], 300),
('/maps/iceland.webp',                    'Iceland',                 ARRAY['Ireland', 'Norway', 'Finland', 'United Kingdom', 'Denmark', 'Sweden'], 300),
('/maps/finland.webp',                    'Finland',                 ARRAY['Sweden', 'Norway', 'Estonia', 'Denmark', 'Latvia', 'Iceland'], 300),
('/maps/portugal.webp',                   'Portugal',                ARRAY['Spain', 'Andorra', 'Morocco', 'Ireland', 'France', 'Italy'], 300),
('/maps/venezuela.webp',                  'Venezuela',               ARRAY['Colombia', 'Guyana', 'Ecuador', 'Suriname', 'Peru', 'Bolivia'], 300),
('/maps/jamaica.webp',                    'Jamaica',                 ARRAY['Cuba', 'Haiti', 'Puerto Rico', 'The Bahamas', 'Dominican Republic', 'Trinidad and Tobago'], 300),
('/maps/panama.webp',                     'Panama',                  ARRAY['Costa Rica', 'Colombia', 'Nicaragua', 'Honduras', 'El Salvador', 'Belize'], 300),
('/maps/sri-lanka.webp',                  'Sri Lanka',               ARRAY['Maldives', 'Bangladesh', 'Madagascar', 'Taiwan', 'Nepal', 'Bhutan'], 300),
('/maps/north-korea.webp',                'North Korea',             ARRAY['South Korea', 'Japan', 'Taiwan', 'Mongolia', 'China', 'Laos'], 300),
('/maps/malaysia.webp',                   'Malaysia',                ARRAY['Indonesia', 'Thailand', 'Brunei', 'Singapore', 'Philippines', 'Myanmar'], 300),
('/maps/algeria.webp',                    'Algeria',                 ARRAY['Libya', 'Morocco', 'Tunisia', 'Mali', 'Niger', 'Mauritania'], 300),
('/maps/libya.webp',                      'Libya',                   ARRAY['Algeria', 'Egypt', 'Tunisia', 'Chad', 'Sudan', 'Niger'], 300),
('/maps/netherlands.webp',                'Netherlands',             ARRAY['Belgium', 'Luxembourg', 'Denmark', 'Germany', 'Switzerland', 'Austria'], 300),
-- 400 points
('/maps/burundi.webp',                    'Burundi',                 ARRAY['Rwanda', 'Uganda', 'Malawi', 'Tanzania', 'Eswatini', 'Lesotho'], 400),
('/maps/rwanda.webp',                     'Rwanda',                  ARRAY['Burundi', 'Uganda', 'Malawi', 'Tanzania', 'Eswatini', 'Lesotho'], 400),
('/maps/lesotho.webp',                    'Lesotho',                 ARRAY['Eswatini', 'Botswana', 'Malawi', 'Burundi', 'Rwanda', 'Zimbabwe'], 400),
('/maps/swaziland.webp',                  'Eswatini',                ARRAY['Lesotho', 'Botswana', 'Malawi', 'Burundi', 'Rwanda', 'Mozambique'], 400),
('/maps/bhutan.webp',                     'Bhutan',                  ARRAY['Nepal', 'Bangladesh', 'Myanmar', 'Laos', 'Mongolia', 'Sri Lanka'], 400),
('/maps/kyrgyzstan.webp',                 'Kyrgyzstan',              ARRAY['Tajikistan', 'Kazakhstan', 'Uzbekistan', 'Turkmenistan', 'Afghanistan', 'Mongolia'], 400),
('/maps/moldova.webp',                    'Moldova',                 ARRAY['Romania', 'Ukraine', 'Belarus', 'Bulgaria', 'Slovakia', 'Montenegro'], 400),
('/maps/montenegro.webp',                 'Montenegro',              ARRAY['Albania', 'Bosnia and Herzegovina', 'Kosovo', 'North Macedonia', 'Serbia', 'Croatia'], 400),
('/maps/macedonia.webp',                  'North Macedonia',         ARRAY['Albania', 'Kosovo', 'Bulgaria', 'Montenegro', 'Serbia', 'Greece'], 400),
('/maps/benin.webp',                      'Benin',                   ARRAY['Togo', 'Ghana', 'Burkina Faso', 'Nigeria', 'Niger', 'Liberia'], 400),
('/maps/togo.webp',                       'Togo',                    ARRAY['Benin', 'Ghana', 'Burkina Faso', 'Liberia', 'Tonga', 'Ivory Coast'], 400),
('/maps/guinea-bissau.webp',              'Guinea-Bissau',           ARRAY['Guinea', 'Equatorial Guinea', 'Senegal', 'The Gambia', 'Sierra Leone', 'Liberia'], 400),
('/maps/equatorial-guinea.webp',          'Equatorial Guinea',       ARRAY['Gabon', 'Cameroon', 'Guinea', 'Guinea-Bissau', 'São Tomé and Príncipe', 'Rep. of Congo'], 400),
('/maps/suriname.webp',                   'Suriname',                ARRAY['Guyana', 'Venezuela', 'Paraguay', 'Uruguay', 'Belize', 'Colombia'], 400),
('/maps/el-salvador.webp',                'El Salvador',             ARRAY['Honduras', 'Guatemala', 'Nicaragua', 'Belize', 'Costa Rica', 'Panama'], 400),
('/maps/brunei.webp',                     'Brunei',                  ARRAY['Malaysia', 'Singapore', 'Timor-Leste', 'Bahrain', 'Indonesia', 'Philippines'], 400),
('/maps/laos.webp',                       'Laos',                    ARRAY['Cambodia', 'Vietnam', 'Thailand', 'Myanmar', 'Bhutan', 'Nepal'], 400),
('/maps/quatar.webp',                     'Qatar',                   ARRAY['Bahrain', 'Kuwait', 'United Arab Emirates', 'Oman', 'Yemen', 'Lebanon'], 400),
('/maps/bahrain.webp',                    'Bahrain',                 ARRAY['Qatar', 'Kuwait', 'United Arab Emirates', 'Oman', 'Brunei', 'Lebanon'], 400),
('/maps/slovenia.webp',                   'Slovenia',                ARRAY['Slovakia', 'Croatia', 'Austria', 'Hungary', 'Montenegro', 'Switzerland'], 400)
) AS v(visual_asset, correct_answer, wrong_answers, points);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'COUNTRY_MONKEY';
