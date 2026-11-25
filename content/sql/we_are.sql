-- ============================================================================
-- content/sql/we_are.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/we_are.csv, the master copy of the
-- Thinking Pants category WE_ARE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WE_ARE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s teams are the Nittany what?', NULL,
        'Lions', ARRAY['Tigers', 'Bears', 'Wolves', 'Panthers', 'Eagles', 'Bobcats'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What are Penn State''s two school colors?', NULL,
        'Blue and white', ARRAY['Blue and gold', 'Navy and orange', 'Green and white', 'Red and white', 'Black and gold', 'Maroon and white'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'When one side of the stadium shouts "We are...", what does the other side shout back?', NULL,
        'Penn State!', ARRAY['The Lions!', 'Number one!', 'Happy Valley!', 'Blue and White!', 'Nittany!', 'Undefeated!'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which part of Pennsylvania is Penn State''s main campus in?', NULL,
        'The middle of the state', ARRAY['The Poconos', 'The Philadelphia suburbs', 'The Pittsburgh area', 'The Lehigh Valley', 'The Lake Erie shore', 'The Laurel Highlands'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What sunny nickname does the area around Penn State''s main campus go by?', NULL,
        'Happy Valley', ARRAY['Lion Country', 'Paradise Valley', 'Sunshine Valley', 'Blue Valley', 'Pleasant Valley', 'Lucky Valley'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which stadium is home to Penn State football?', NULL,
        'Beaver Stadium', ARRAY['Nittany Field', 'Lion Stadium', 'Franklin Field', 'Heinz Field', 'Rec Hall', 'Happy Valley Bowl'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which coach led Penn State football for 46 seasons?', NULL,
        'Joe Paterno', ARRAY['Bobby Bowden', 'Bear Bryant', 'Lou Holtz', 'Jim Tressel', 'Bo Schembechler', 'Woody Hayes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s longtime head football coach was known to fans by what nickname?', NULL,
        'JoePa', ARRAY['The General', 'Papa Bear', 'The Bear', 'Coach P', 'The Tuna', 'Big Joe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s famous on-campus ice-cream shop called?', NULL,
        'The Creamery', ARRAY['The Dairy Barn', 'The Milk House', 'Lion Scoops', 'The Freezer', 'The Parlor', 'Nittany Cones'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s giant student dance fundraiser for kids with cancer goes by what short name?', NULL,
        'THON', ARRAY['DanceFest', 'The Big Dance', 'Lion Leap', 'Dance Off', 'Spring Fling', 'Marathon Weekend'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Big Ten rival from Columbus do Penn State fans most love to beat?', NULL,
        'Ohio State', ARRAY['Cincinnati', 'Toledo', 'Akron', 'Kent State', 'Ohio University', 'Bowling Green'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s marching band called?', NULL,
        'The Blue Band', ARRAY['The Marching Lions', 'The Pride of Pennsylvania', 'The Nittany Notes', 'The Spirit of State', 'The White Band', 'The Lion Band'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State joined which athletic conference in the 1990s?', NULL,
        'The Big Ten', ARRAY['The Big East', 'The ACC', 'The Big 12', 'The SEC', 'The Atlantic 10', 'The Pac-12'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State running back became a New York Giants star and the NFL''s Offensive Rookie of the Year in 2018?', NULL,
        'Saquon Barkley', ARRAY['Miles Sanders', 'Franco Harris', 'Ki-Jana Carter', 'Larry Johnson', 'Curt Warner', 'Blair Thomas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which mountain overlooking campus do students love to hike?', NULL,
        'Mount Nittany', ARRAY['Tussey Mountain', 'Bald Eagle Mountain', 'Mount Davis', 'Blue Knob', 'Mount Penn', 'Pocono Mountain'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s College of Medicine is in a Pennsylvania town famous for which treat?', NULL,
        'Chocolate', ARRAY['Pretzels', 'Potato chips', 'Cheesesteaks', 'Whoopie pies', 'Funnel cakes', 'Peanut brittle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is the famous crouching big-cat statue on campus, carved from limestone, called?', NULL,
        'The Lion Shrine', ARRAY['The Nittany Leap', 'The Pride Rock', 'The Lion''s Den', 'The Blue Lion', 'The Big Paw', 'The Lion Gate'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is the bell-towered building at the heart of Penn State''s main campus called?', NULL,
        'Old Main', ARRAY['Old Central', 'Founders Hall', 'Main Hall', 'Penn Hall', 'University Hall', 'The Tower'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s online campus called?', NULL,
        'World Campus', ARRAY['Global Campus', 'Lion Online', 'Virtual State', 'PSU Anywhere', 'Nittany Net', 'Campus Online'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Behrend is in which city on Pennsylvania''s Great Lakes shore?', NULL,
        'Erie', ARRAY['Pittsburgh', 'Scranton', 'Allentown', 'Altoona', 'Williamsport', 'Reading'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which NFL team did Penn State''s Franco Harris star for?', NULL,
        'The Pittsburgh Steelers', ARRAY['The Philadelphia Eagles', 'The Cleveland Browns', 'The Baltimore Colts', 'The Dallas Cowboys', 'The New York Giants', 'The Miami Dolphins'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Beaver Stadium is one of the biggest in the country. Roughly how many fans does it hold?', NULL,
        'More than 100,000', ARRAY['About 30,000', 'About 50,000', 'About 65,000', 'About 75,000', 'About 85,000', 'About 90,000'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Big Ten rival plays in Ann Arbor?', NULL,
        'Michigan', ARRAY['Michigan State', 'Minnesota', 'Wisconsin', 'Iowa', 'Northwestern', 'Indiana'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What kind of big cat is the Nittany Lion?', NULL,
        'A mountain lion', ARRAY['An African lion', 'A tiger', 'A bobcat', 'A lynx', 'A leopard', 'A jaguar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What do Penn State''s plain football helmets famously NOT have?', NULL,
        'A logo', ARRAY['A face mask', 'A chin strap', 'Padding', 'A white shell', 'Air holes', 'A visor clip'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which in-state rival''s teams are the Panthers?', NULL,
        'Pitt', ARRAY['Temple', 'Villanova', 'Duquesne', 'Robert Morris', 'Lehigh', 'West Virginia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s ice-cream shop uses milk from the university''s own herd of what?', NULL,
        'Dairy cows', ARRAY['Goats', 'Sheep', 'Water buffalo', 'Camels', 'Yaks', 'Llamas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'At Penn State, what is "the HUB"?', NULL,
        'The student union building', ARRAY['The main library', 'The football stadium', 'The president''s house', 'The bus station', 'The rec center', 'The science lab'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State team has won a pile of NCAA titles under coach Cael Sanderson?', NULL,
        'Wrestling', ARRAY['Lacrosse', 'Swimming', 'Gymnastics', 'Ice hockey', 'Rowing', 'Track and field'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State team plays at Pegula Ice Arena?', NULL,
        'Ice hockey', ARRAY['Basketball', 'Wrestling', 'Volleyball', 'Swimming', 'Gymnastics', 'Fencing'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s student dance marathon keeps its dancers on their feet, without sleep, for how many hours?', NULL,
        '46', ARRAY['24', '36', '48', '50', '60', '72'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s big student dance marathon is held every year in which month?', NULL,
        'February', ARRAY['January', 'March', 'April', 'October', 'November', 'December'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which ice-cream flavor at Penn State''s dairy shop is named for a famous coach?', NULL,
        'Peachy Paterno', ARRAY['Bear''s Butterscotch', 'Coach''s Cookie Dough', 'Lion''s Mint', 'Blue Band Berry', 'Nittany Nutty', 'Saturday Sundae'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Who is the only Penn State player to win the Heisman Trophy, in 1973?', NULL,
        'John Cappelletti', ARRAY['Lenny Moore', 'Franco Harris', 'Lydell Mitchell', 'Curt Warner', 'Ki-Jana Carter', 'Larry Johnson'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s long line of star linebackers earned it which nickname?', NULL,
        'Linebacker U', ARRAY['Defense U', 'Running Back U', 'Quarterback U', 'Tackle Town', 'Lion Factory', 'D-Line U'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'State College is in which Pennsylvania county?', NULL,
        'Centre', ARRAY['Clinton', 'Huntingdon', 'Blair', 'Mifflin', 'Clearfield', 'Union'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which nearby county seat, a few miles from campus, is known for its Victorian homes?', NULL,
        'Bellefonte', ARRAY['Lock Haven', 'Huntingdon', 'Lewistown', 'Tyrone', 'Philipsburg', 'Boalsburg'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What do locals call State College''s big July festival of painting, crafts and music, held downtown and on campus?', NULL,
        'Arts Fest', ARRAY['Lionfest', 'Summerfest', 'Nittany Days', 'Happy Valley Fair', 'Blue & White Weekend', 'Art in the Valley'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which downtown street runs right along the edge of campus, lined with shops and restaurants?', NULL,
        'College Avenue', ARRAY['Main Street', 'Lion Avenue', 'Nittany Way', 'Broad Street', 'State Street', 'Market Street'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'In January 1995, Penn State beat Oregon in which bowl to finish an undefeated season?', NULL,
        'The Rose Bowl', ARRAY['The Fiesta Bowl', 'The Sugar Bowl', 'The Orange Bowl', 'The Cotton Bowl', 'The Citrus Bowl', 'The Outback Bowl'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s main campus officially goes by what name?', NULL,
        'University Park', ARRAY['Nittany Park', 'Penn Park', 'Centre Campus', 'Lion Park', 'Old Main Campus', 'Valley Park'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Abington sits just outside which big city?', NULL,
        'Philadelphia', ARRAY['Pittsburgh', 'Harrisburg', 'Allentown', 'Scranton', 'Reading', 'Lancaster'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s Franco Harris made which famous 1972 playoff catch for the Steelers?', NULL,
        'The Immaculate Reception', ARRAY['The Catch', 'The Hail Mary', 'The Holy Roller', 'The Helmet Catch', 'The Music City Miracle', 'The Miracle at the Meadowlands'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which NFL team did Saquon Barkley sign with in 2024?', NULL,
        'The Philadelphia Eagles', ARRAY['The Pittsburgh Steelers', 'The New York Jets', 'The Dallas Cowboys', 'The Baltimore Ravens', 'The Buffalo Bills', 'The Washington Commanders'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Coach Russ Rose built a decades-long dynasty in which Penn State women''s sport?', NULL,
        'Volleyball', ARRAY['Basketball', 'Soccer', 'Softball', 'Field hockey', 'Lacrosse', 'Gymnastics'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which cave near State College is toured entirely by boat?', NULL,
        'Penn''s Cave', ARRAY['Lincoln Caverns', 'Indian Echo Caverns', 'Lost River Caverns', 'Crystal Cave', 'Laurel Caverns', 'Woodward Cave'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s student-run daily newspaper called?', NULL,
        'The Daily Collegian', ARRAY['The Lion''s Roar', 'The Nittany News', 'The Daily Pennsylvanian', 'The State Times', 'The Blue & White', 'The Valley Voice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which famous ice-cream duo learned the business from a $5 Penn State correspondence course?', NULL,
        'Ben & Jerry', ARRAY['Baskin & Robbins', 'Dreyer & Edy', 'Haagen & Dazs', 'Carvel & Brown', 'Mister & Softee', 'Rocky & Road'], 200, 'Ben Cohen and Jerry Greenfield split a $5 Penn State ice-cream correspondence course in 1977, then opened their first shop in 1978.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State campus city is near the famous railroad Horseshoe Curve?', NULL,
        'Altoona', ARRAY['DuBois', 'Hazleton', 'Scranton', 'Wilkes-Barre', 'Mont Alto', 'York'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s women''s basketball team traditionally called?', NULL,
        'The Lady Lions', ARRAY['The Lionesses', 'The Lady Cats', 'The Blue Belles', 'The Lady Nittanies', 'The Queens', 'The Lady Cougars'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State team has won more than a dozen NCAA titles in a sport fought with foil, epee and saber?', NULL,
        'Fencing', ARRAY['Archery', 'Wrestling', 'Rowing', 'Gymnastics', 'Rifle', 'Lacrosse'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State basketball plays at the Bryce Jordan Center, named for a former what?', NULL,
        'University president', ARRAY['Head basketball coach', 'Pennsylvania governor', 'Star point guard', 'Board chairman', 'Athletic director', 'Football coach'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which old Penn State gym is home to wrestling and volleyball?', NULL,
        'Rec Hall', ARRAY['The White Building', 'Holuba Hall', 'The Jordan Center', 'Beaver Hall', 'Lion Arena', 'Nittany Gym'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which national weather company, started by a Penn State meteorology grad, is headquartered in State College?', NULL,
        'AccuWeather', ARRAY['The Weather Channel', 'Weather Underground', 'WeatherBug', 'Dark Sky', 'Weather Central', 'StormWatch'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which village just outside State College claims to be the birthplace of Memorial Day?', NULL,
        'Boalsburg', ARRAY['Waterloo', 'Gettysburg', 'Lemont', 'Pine Grove Mills', 'Centre Hall', 'Millheim'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which mountain near Boalsburg has a small ski area and an outdoor amphitheater?', NULL,
        'Tussey Mountain', ARRAY['Blue Knob', 'Seven Springs', 'Camelback', 'Roundtop', 'Bear Creek', 'Whitetail'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s famously plain football uniforms come with what color shoes?', NULL,
        'Black', ARRAY['White', 'Blue', 'Navy', 'Gray', 'Silver', 'Gold'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What is Penn State''s fight song?', NULL,
        '"Fight On, State"', ARRAY['"Hail to the Victors"', '"On, Wisconsin"', '"Roar, Lions, Roar"', '"Hail, Penn State"', '"Go, Lions, Go"', '"Victory for State"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which techno song sends all of Beaver Stadium bouncing?', NULL,
        '"Zombie Nation"', ARRAY['"Sandstorm"', '"Jump Around"', '"Seven Nation Army"', '"Crazy Train"', '"Enter Sandman"', '"Thunderstruck"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Who became Penn State''s head football coach in 2012?', NULL,
        'Bill O''Brien', ARRAY['James Franklin', 'Tom Bradley', 'Greg Schiano', 'Kirk Ferentz', 'Mike Munchak', 'Larry Johnson'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s giant student dance marathon raises money for which fund for children with cancer and their families?', NULL,
        'The Four Diamonds Fund', ARRAY['Make-A-Wish', 'St. Jude', 'The Jimmy Fund', 'Ronald McDonald House', 'Children''s Miracle Network', 'Shriners'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'In which two seasons did Penn State win national titles under Joe Paterno?', NULL,
        '1982 and 1986', ARRAY['1969 and 1973', '1978 and 1985', '1982 and 1994', '1986 and 1994', '1973 and 1986', '1968 and 1982'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Pittsburgh Steelers Hall of Fame linebacker came out of Penn State?', NULL,
        'Jack Ham', ARRAY['Jack Lambert', 'Andy Russell', 'Greg Lloyd', 'James Harrison', 'Joey Porter', 'Kevin Greene'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which quarterback of Penn State''s undefeated 1994 team became the Carolina Panthers'' first-ever draft pick?', NULL,
        'Kerry Collins', ARRAY['Todd Blackledge', 'Tony Sacca', 'Wally Richardson', 'Michael Robinson', 'Daryll Clark', 'Christian Hackenberg'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State went undefeated in 1994 but finished second in the polls behind which school?', NULL,
        'Nebraska', ARRAY['Miami', 'Florida State', 'Notre Dame', 'Alabama', 'Michigan', 'Colorado'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State campus sits within sight of Three Mile Island?', NULL,
        'Harrisburg', ARRAY['York', 'Berks', 'Schuylkill', 'Lehigh Valley', 'Hazleton', 'Mont Alto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State opened in 1855 under what humble name?', NULL,
        'The Farmers'' High School', ARRAY['The Keystone Academy', 'Centre County College', 'The Nittany Seminary', 'The Allegheny Institute', 'The Commonwealth School', 'The Penn Polytechnic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State is Pennsylvania''s only university of which kind, created by the Morrill Act of 1862?', NULL,
        'Land-grant', ARRAY['Ivy League', 'Sea-grant only', 'Military academy', 'Normal school', 'Space-grant only', 'Liberal arts'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which state park''s big lake, northeast of State College, is a favorite summer day trip?', NULL,
        'Bald Eagle', ARRAY['Presque Isle', 'Ohiopyle', 'Ricketts Glen', 'Pine Creek', 'Hickory Run', 'Gifford Pinchot'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Who was Penn State''s head football coach from 1950 to 1965?', NULL,
        'Rip Engle', ARRAY['Bob Higgins', 'Hugo Bezdek', 'Rip Miller', 'Earle Edwards', 'Pop Warner', 'Joe Bedenk'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s Ki-Jana Carter was the first pick of the 1995 NFL Draft, by which team?', NULL,
        'The Cincinnati Bengals', ARRAY['The Cleveland Browns', 'The Pittsburgh Steelers', 'The Carolina Panthers', 'The Jacksonville Jaguars', 'The Houston Oilers', 'The New York Jets'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which "Modern Family" dad, Phil Dunphy, is played by a Penn State MFA grad?', NULL,
        'Ty Burrell', ARRAY['Ed O''Neill', 'Eric Stonestreet', 'Jesse Tyler Ferguson', 'Ray Romano', 'Steve Carell', 'Bryan Cranston'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which comedian, half of a Comedy Central sketch duo with Jordan Peele, earned an MFA at Penn State?', NULL,
        'Keegan-Michael Key', ARRAY['Kenan Thompson', 'Jay Pharoah', 'Keenen Ivory Wayans', 'Craig Robinson', 'Kevin Hart', 'Dave Chappelle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State aerospace engineering grad became the first African American in space, in 1983?', NULL,
        'Guion Bluford', ARRAY['Ronald McNair', 'Frederick Gregory', 'Charles Bolden', 'Bernard Harris', 'Leland Melvin', 'Mae Jemison'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s president from 1950 to 1956, Milton, was the younger brother of which U.S. president?', NULL,
        'Dwight D. Eisenhower', ARRAY['Harry Truman', 'Herbert Hoover', 'John F. Kennedy', 'Franklin Roosevelt', 'Richard Nixon', 'Lyndon Johnson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Miami quarterback, that year''s Heisman winner, threw five interceptions in a famous Fiesta Bowl loss to Penn State?', NULL,
        'Vinny Testaverde', ARRAY['Bernie Kosar', 'Jim Kelly', 'Steve Walsh', 'Gino Torretta', 'Craig Erickson', 'Doug Flutie'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'In the Sugar Bowl that clinched a national title, Penn State beat Georgia and which Heisman-winning running back?', NULL,
        'Herschel Walker', ARRAY['Bo Jackson', 'Tony Dorsett', 'Earl Campbell', 'Marcus Allen', 'Billy Sims', 'Mike Rozier'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'The HUB-Robeson Center honors which singer and actor, famous for "Ol'' Man River"?', NULL,
        'Paul Robeson', ARRAY['Harry Belafonte', 'Nat King Cole', 'Sammy Davis Jr.', 'Sidney Poitier', 'Louis Armstrong', 'Johnny Mathis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which summer baseball team plays at Penn State''s Medlar Field?', NULL,
        'The State College Spikes', ARRAY['The Altoona Curve', 'The Williamsport Crosscutters', 'The Harrisburg Senators', 'The Erie SeaWolves', 'The Reading Fightin Phils', 'The Lehigh Valley IronPigs'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'The Diner on College Avenue is famous for which grilled treat?', NULL,
        'Grilled sticky buns', ARRAY['Grilled donuts', 'Fried pierogies', 'Funnel cakes', 'Whoopie pies', 'Shoofly pie', 'Grilled cinnamon toast'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Berks sits just outside which city, once famous for pretzels and outlet shopping?', NULL,
        'Reading', ARRAY['Lancaster', 'York', 'Hanover', 'Lebanon', 'Pottsville', 'Allentown'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State linebacker made a famous 1998 leap over the line that''s still named after him?', NULL,
        'LaVar Arrington', ARRAY['Paul Posluszny', 'Shane Conlan', 'Brandon Short', 'Dan Connor', 'NaVorro Bowman', 'Sean Lee'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'In 2015, which Penn State women''s team won its first NCAA title?', NULL,
        'Soccer', ARRAY['Lacrosse', 'Field hockey', 'Softball', 'Basketball', 'Ice hockey', 'Rowing'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Before blue and white, Penn State''s first colors were dark pink and what?', NULL,
        'Black', ARRAY['White', 'Gold', 'Gray', 'Green', 'Purple', 'Maroon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Centre County fair is famous as one of the country''s biggest "tenting" fairs?', NULL,
        'The Grange Fair', ARRAY['The Bloomsburg Fair', 'The Farm Show', 'The Great Allentown Fair', 'The York Fair', 'The Kutztown Folk Festival', 'Ag Progress Days'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Bill O''Brien left Penn State in 2014 to coach which NFL team?', NULL,
        'The Houston Texans', ARRAY['The Cleveland Browns', 'The Tennessee Titans', 'The Indianapolis Colts', 'The Jacksonville Jaguars', 'The New England Patriots', 'The Oakland Raiders'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'What do students call the stretch of Beaver Avenue lined with tall apartment buildings?', NULL,
        'Beaver Canyon', ARRAY['The Gauntlet', 'Lion Alley', 'The Tunnel', 'Tower Row', 'The Strip', 'High-Rise Row'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which trout stream flows through State College and Bellefonte?', NULL,
        'Spring Creek', ARRAY['Penns Creek', 'Pine Creek', 'Kettle Creek', 'Yellow Breeches', 'Slate Run', 'Loyalsock Creek'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State won the 2016 Big Ten Championship Game against which team?', NULL,
        'Wisconsin', ARRAY['Ohio State', 'Michigan', 'Iowa', 'Northwestern', 'Nebraska', 'Minnesota'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s Dickinson Law is in which town, also home to the Army War College?', NULL,
        'Carlisle', ARRAY['Gettysburg', 'Chambersburg', 'Mechanicsburg', 'Lancaster', 'Hershey', 'Lewisburg'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s football stadium honors which Civil War general who became Pennsylvania''s governor?', NULL,
        'James A. Beaver', ARRAY['John Geary', 'Andrew Curtin', 'Daniel Hastings', 'Gifford Pinchot', 'Samuel Pennypacker', 'Arthur James'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State and which other land-grant school play for the Land Grant Trophy?', NULL,
        'Michigan State', ARRAY['Ohio State', 'Rutgers', 'Maryland', 'Purdue', 'Minnesota', 'Nebraska'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State and which Big Ten rival play for the Governor''s Victory Bell?', NULL,
        'Minnesota', ARRAY['Iowa', 'Wisconsin', 'Illinois', 'Indiana', 'Northwestern', 'Purdue'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Pugh Street in State College honors which man, Penn State''s first president?', NULL,
        'Evan Pugh', ARRAY['George Atherton', 'Edwin Sparks', 'Fred Lewis Pattee', 'James A. Beaver', 'Milton Eisenhower', 'Rip Engle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Pattee Library honors a professor famous as a pioneer in teaching what?', NULL,
        'American literature', ARRAY['Agriculture', 'Engineering', 'Meteorology', 'Physics', 'Forestry', 'Mining'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which bandleader with deep Penn State ties lent his name to a famous kitchen blender?', NULL,
        'Fred Waring', ARRAY['Lawrence Welk', 'Glenn Miller', 'Tommy Dorsey', 'Benny Goodman', 'Guy Lombardo', 'Les Brown'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State grad shared the 1980 Nobel Prize in Chemistry for pioneering work on recombinant DNA?', NULL,
        'Paul Berg', ARRAY['Kary Mullis', 'James Watson', 'Linus Pauling', 'Frederick Sanger', 'Walter Gilbert', 'Francis Crick'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which "Star Trek: The Next Generation" first officer graduated from Penn State?', NULL,
        'Jonathan Frakes', ARRAY['Patrick Stewart', 'Brent Spiner', 'LeVar Burton', 'Michael Dorn', 'Wil Wheaton', 'Marina Sirtis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State grad created "Magnum, P.I.", "Quantum Leap" and "NCIS"?', NULL,
        'Donald P. Bellisario', ARRAY['Glen A. Larson', 'Dick Wolf', 'Stephen J. Cannell', 'Aaron Spelling', 'Steven Bochco', 'Chuck Lorre'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Mont Alto began in 1903 as Pennsylvania''s school for what?', NULL,
        'Forestry', ARRAY['Mining', 'Nursing', 'Teaching', 'Agriculture', 'Engineering', 'Music'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State great starred for the Baltimore Colts alongside Johnny Unitas?', NULL,
        'Lenny Moore', ARRAY['Raymond Berry', 'Alan Ameche', 'John Mackey', 'Gino Marchetti', 'Lydell Mitchell', 'Tom Matte'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Miami coach, later a Super Bowl winner with Dallas, lost the famous Fiesta Bowl to Penn State?', NULL,
        'Jimmy Johnson', ARRAY['Howard Schnellenberger', 'Dennis Erickson', 'Barry Switzer', 'Bobby Bowden', 'Lou Holtz', 'Tom Osborne'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which quarterback led Penn State to its first national title, then became a longtime TV analyst?', NULL,
        'Todd Blackledge', ARRAY['Kerry Collins', 'Chuck Fusina', 'John Shaffer', 'Tony Sacca', 'Rich Lucas', 'Michael Robinson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s first-ever bowl trip, after the 1922 season, was to which game?', NULL,
        'The Rose Bowl', ARRAY['The Sugar Bowl', 'The Orange Bowl', 'The Cotton Bowl', 'The Gator Bowl', 'The Sun Bowl', 'The Fiesta Bowl'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State wrestling coach Cael Sanderson went unbeaten in college at Iowa State. What was his record?', NULL,
        '159-0', ARRAY['100-0', '119-0', '127-0', '142-0', '176-0', '88-0'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Centre County camp is famous among skateboarders, BMX riders and gymnasts?', NULL,
        'Woodward', ARRAY['Camp Lion', 'Rothrock', 'Tussey Ridge', 'Penns Valley', 'Big Air Camp', 'Spring Mills'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which stretch of Spring Creek near Bellefonte is famous with fly fishermen?', NULL,
        'Fisherman''s Paradise', ARRAY['Trout Heaven', 'Angler''s Rest', 'The Fly Zone', 'Brookie Bend', 'Caddis Run', 'Lion''s Pool'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s big summer farm show at Rock Springs is called what?', NULL,
        'Ag Progress Days', ARRAY['Farm Fest', 'Harvest Days', 'Dairy Days', 'The Grange Expo', 'Field Day', 'Barn Bash'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s Courtney Brown went first overall in the 2000 NFL Draft to which team?', NULL,
        'The Cleveland Browns', ARRAY['The Cincinnati Bengals', 'The Pittsburgh Steelers', 'The Detroit Lions', 'The Arizona Cardinals', 'The Washington Redskins', 'The Chicago Bears'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'In which decade did Penn State''s men''s basketball team make the Final Four?', NULL,
        'The 1950s', ARRAY['The 1930s', 'The 1940s', 'The 1960s', 'The 1970s', 'The 1990s', 'The 2000s'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s medical school was built with a $50 million gift from a trust set up by which candy maker?', NULL,
        'Milton Hershey', ARRAY['Frank Mars', 'H.B. Reese', 'Clarence Crane', 'Leo Hirshfield', 'Forrest Mars', 'Otto Schnering'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Hall of Fame offensive guard from Penn State spent his whole career with the Houston Oilers?', NULL,
        'Mike Munchak', ARRAY['Bruce Matthews', 'Anthony Munoz', 'John Hannah', 'Gene Upshaw', 'Russ Grimm', 'Larry Allen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State tailback rushed for 2,087 yards in 2002, then made the Pro Bowl with Kansas City?', NULL,
        'Larry Johnson', ARRAY['Curt Warner', 'Blair Thomas', 'Tony Hunt', 'Evan Royster', 'D.J. Dozier', 'Ki-Jana Carter'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'The TV movie "Something for Joey" told the story of which Penn State star and his younger brother?', NULL,
        'John Cappelletti', ARRAY['Franco Harris', 'Matt Millen', 'Lenny Moore', 'Jack Ham', 'Todd Blackledge', 'Curt Warner'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s campus in Monaca, northwest of Pittsburgh, shares its name with the football stadium. What is it?', NULL,
        'Penn State Beaver', ARRAY['Penn State Paterno', 'Penn State Nittany', 'Penn State Old Main', 'Penn State Lion', 'Penn State Fayette', 'Penn State Shenango'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Abington began on the old estate of which Civil War financier, who helped bankroll the Union?', NULL,
        'Jay Cooke', ARRAY['J.P. Morgan', 'Andrew Mellon', 'Stephen Girard', 'Anthony Drexel', 'Cornelius Vanderbilt', 'Jay Gould'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State''s current stadium was built in 1960 partly from the steel stands of which older field, taken apart and moved?', NULL,
        'New Beaver Field', ARRAY['Old Main Field', 'Holmes Field', 'Forbes Field', 'Franklin Field', 'Nittany Field', 'Rec Field'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Penn State Brandywine is in which Delaware County town, nicknamed "Everybody''s Hometown"?', NULL,
        'Media', ARRAY['Chester', 'Swarthmore', 'Springfield', 'Upper Darby', 'Havertown', 'Glen Mills'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Which Penn State grad flew on Skylab 2, the first crew to visit America''s first space station?', NULL,
        'Paul Weitz', ARRAY['Pete Conrad', 'Joseph Kerwin', 'Alan Bean', 'Owen Garriott', 'Jack Lousma', 'Gerald Carr'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WE_ARE', 'WE_ARE_NOV_2026', NULL,
        'Student Joe Mason coined "Nittany Lion" in 1904 to answer which school''s tiger?', NULL,
        'Princeton', ARRAY['Clemson', 'LSU', 'Missouri', 'Auburn', 'Memphis', 'Towson'], 400, NULL);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WE_ARE';
