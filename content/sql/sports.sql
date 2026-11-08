-- ============================================================================
-- content/sql/sports.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/sports.csv, the master copy of the
-- Thinking Pants category SPORTS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPORTS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many players are on a standard soccer team on the field at once?', NULL,
        'Eleven', ARRAY['Ten', 'Twelve', 'Nine', 'Thirteen', 'Eight', 'Seven'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In basketball, how many points is a standard field goal worth?', NULL,
        'Two', ARRAY['One', 'Three', 'Four', 'Five', 'Six', 'Ten'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many holes are played in a standard round of golf?', NULL,
        'Eighteen', ARRAY['Nine', 'Twelve', 'Twenty', 'Sixteen', 'Twenty-four', 'Fifteen'], 100, 'St Andrews set the 18-hole round in 1764, when it combined short holes and cut its course from 22 to 18.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What shape is the infield of a baseball field?', NULL,
        'A diamond', ARRAY['A hexagon', 'A circle', 'A triangle', 'A rectangle', 'A pentagon', 'An oval'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many players are on a standard basketball team on the court at once?', NULL,
        'Five', ARRAY['Six', 'Seven', 'Four', 'Eight', 'Nine', 'Eleven'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What is the term for scoring three goals in a single soccer match by one player?', NULL,
        'A hat-trick', ARRAY['A triple play', 'A grand slam', 'A perfect game', 'A clean sweep', 'A treble', 'A brace'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In which sport is the term "love" used to mean zero points?', NULL,
        'Tennis', ARRAY['Golf', 'Cricket', 'Volleyball', 'Basketball', 'Bowling', 'Darts'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How often are the Summer Olympic Games normally held?', NULL,
        'Every 4 years', ARRAY['Every 2 years', 'Every 3 years', 'Every 5 years', 'Every 6 years', 'Every year', 'Every 8 years'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do you try to roll a "strike" or pick up a "spare"?', NULL,
        'Bowling', ARRAY['Curling', 'Croquet', 'Billiards', 'Darts', 'Bocce', 'Shuffleboard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Teams compete for the Stanley Cup in which sport?', NULL,
        'Ice hockey', ARRAY['Baseball', 'Basketball', 'American football', 'Soccer', 'Lacrosse', 'Curling'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What do golfers shout to warn people that a ball is flying toward them?', NULL,
        'Fore', ARRAY['Heads', 'Duck', 'Timber', 'Watch out', 'Incoming', 'Tee off'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do players hit a shuttlecock over a net?', NULL,
        'Badminton', ARRAY['Tennis', 'Squash', 'Table tennis', 'Volleyball', 'Pickleball', 'Racquetball'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'About how long is a marathon?', NULL,
        '26.2 miles', ARRAY['13.1 miles', '20 miles', '24.8 miles', '30 miles', '31.1 miles', '50 miles'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which basketball legend was nicknamed "His Airness"?', NULL,
        'Michael Jordan', ARRAY['Kobe Bryant', 'Magic Johnson', 'Larry Bird', 'Scottie Pippen', 'Julius Erving', 'Dominique Wilkins'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Jamaican sprinter ran the 100 meters in a world-record 9.58 seconds in 2009?', NULL,
        'Usain Bolt', ARRAY['Yohan Blake', 'Asafa Powell', 'Tyson Gay', 'Carl Lewis', 'Justin Gatlin', 'Maurice Greene'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In soccer, which player is allowed to handle the ball inside their own penalty area?', NULL,
        'The goalkeeper', ARRAY['The sweeper', 'The captain', 'The striker', 'The center back', 'The fullback', 'The winger'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In golf, what is the name of the area where you take your first shot on each hole?', NULL,
        'The tee', ARRAY['The green', 'The fairway', 'The rough', 'The bunker', 'The apron', 'The pin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do players slide granite "stones" across ice toward a target called the house?', NULL,
        'Curling', ARRAY['Bowls', 'Shuffleboard', 'Bocce', 'Bobsleigh', 'Skeleton', 'Biathlon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What color belt does a beginner usually wear in karate?', NULL,
        'White', ARRAY['Black', 'Yellow', 'Red', 'Brown', 'Blue', 'Green'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is the score called when a game is tied at 40-40?', NULL,
        'Deuce', ARRAY['Love', 'Advantage', 'Let', 'Tiebreak', 'All square', 'Break point'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In baseball, how many strikes make an out?', NULL,
        'Three strikes', ARRAY['Two strikes', 'Four strikes', 'Five strikes', 'One strike', 'Six strikes', 'Seven strikes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Counting home plate, how many bases are on a baseball diamond?', NULL,
        'Four bases', ARRAY['Three bases', 'Five bases', 'Six bases', 'Two bases', 'Seven bases', 'Eight bases'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In American football, how many points is a field goal worth?', NULL,
        'Three points', ARRAY['Two points', 'Six points', 'One point', 'Four points', 'Seven points', 'Five points'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is it called when a defender tackles the quarterback behind the line of scrimmage?', NULL,
        'A sack', ARRAY['A blitz', 'A fumble', 'A punt', 'An interception', 'A huddle', 'A snap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In basketball, what is a shot called that drops through the hoop without touching the rim?', NULL,
        'A swish', ARRAY['A brick', 'An air ball', 'A layup', 'A bank shot', 'A tip-in', 'A jumper'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In Olympic archery, what color is the bullseye at the center of the target?', NULL,
        'Gold', ARRAY['Red', 'Blue', 'Black', 'White', 'Green', 'Silver'], 100, 'The yellow-gold center is worth 10 points; the target''s rings go out through red, blue, black and white.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is the name of the NFL''s championship game?', NULL,
        'The Super Bowl', ARRAY['The World Series', 'The Rose Bowl', 'The Pro Bowl', 'The Stanley Cup', 'The Grey Cup', 'The Orange Bowl'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Major League Baseball''s championship is known as what?', NULL,
        'The World Series', ARRAY['The Super Bowl', 'The Stanley Cup', 'The Grand Slam', 'The Pennant Race', 'The All-Star Game', 'The Classic'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In soccer, what is shown to a player who is sent off the field?', NULL,
        'A red card', ARRAY['A yellow card', 'A green card', 'A blue card', 'A white card', 'A black card', 'An orange card'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In basketball, how many points is a free throw worth?', NULL,
        'One point', ARRAY['Two points', 'Three points', 'Half a point', 'Four points', 'Five points', 'Zero points'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'How many pins stand at the start of a frame in ten-pin bowling?', NULL,
        'Ten pins', ARRAY['Nine pins', 'Twelve pins', 'Eight pins', 'Six pins', 'Fifteen pins', 'Eleven pins'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The Daytona 500 is the most famous race in which kind of racing?', NULL,
        'NASCAR', ARRAY['Formula 1', 'Drag racing', 'Motocross', 'IndyCar', 'Rally racing', 'Horse racing'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'About how many laps of a standard outdoor running track make a mile?', NULL,
        'About four', ARRAY['About two', 'About eight', 'About six', 'About ten', 'About three', 'About twelve'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What piece of equipment does a hitter swing in baseball?', NULL,
        'A bat', ARRAY['A club', 'A racket', 'A paddle', 'A stick', 'A mallet', 'A cue'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'About how wide is the top of a gymnastics balance beam?', NULL,
        'About 4 inches', ARRAY['About 2 inches', 'About 6 inches', 'About 8 inches', 'About 12 inches', 'About 1 inch', 'About 10 inches'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Not counting stoppage time, how many minutes long is a regulation soccer match?', NULL,
        '90 minutes', ARRAY['60 minutes', '80 minutes', '100 minutes', '120 minutes', '45 minutes', '70 minutes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In American football, how many points is a safety worth?', NULL,
        'Two points', ARRAY['One point', 'Three points', 'Six points', 'Four points', 'Seven points', 'Five points'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In a relay race, what does each runner hand to the next?', NULL,
        'A baton', ARRAY['A torch', 'A flag', 'A ribbon', 'A ball', 'A stick', 'A token'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which sport do players treading water try to throw a ball into the other team''s goal?', NULL,
        'Water polo', ARRAY['Synchronized swimming', 'Diving', 'Rowing', 'Canoeing', 'Underwater hockey', 'Swimming'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In basketball, what is it called when a player takes too many steps without dribbling?', NULL,
        'Traveling', ARRAY['Double dribble', 'Goaltending', 'Charging', 'Palming', 'Three seconds', 'Backcourt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which game is played with a cue, a table and numbered balls?', NULL,
        'Pool', ARRAY['Darts', 'Croquet', 'Bowling', 'Curling', 'Shuffleboard', 'Table tennis'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'How many players does each team have on the court in indoor volleyball?', NULL,
        'Six players', ARRAY['Five players', 'Four players', 'Seven players', 'Eight players', 'Nine players', 'Eleven players'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In golf, what is the short, smooth grass around the hole called?', NULL,
        'The green', ARRAY['The fairway', 'The rough', 'The tee box', 'The apron', 'The bunker', 'The collar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In American football, what is the area called where touchdowns are scored?', NULL,
        'The end zone', ARRAY['The red zone', 'The pocket', 'The backfield', 'The neutral zone', 'The sideline', 'The box'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which sport do players "spike," "dig" and "set"?', NULL,
        'Volleyball', ARRAY['Badminton', 'Tennis', 'Handball', 'Squash', 'Netball', 'Basketball'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is it called when a bowler throws three strikes in a row?', NULL,
        'A turkey', ARRAY['A hat trick', 'A triple', 'A hammer', 'A clean sweep', 'A double', 'A perfect frame'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In the Olympics, which medal goes to the third-place finisher?', NULL,
        'Bronze', ARRAY['Silver', 'Copper', 'Gold', 'Platinum', 'Tin', 'Iron'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which Olympic sport do competitors score touches with a foil, an épée or a sabre?', NULL,
        'Fencing', ARRAY['Judo', 'Karate', 'Taekwondo', 'Archery', 'Kendo', 'Boxing'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'How long is each quarter of an NBA game?', NULL,
        '12 minutes', ARRAY['10 minutes', '15 minutes', '20 minutes', '8 minutes', '25 minutes', '30 minutes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which sport takes place in a velodrome?', NULL,
        'Track cycling', ARRAY['Car racing', 'Horse racing', 'Speed skating', 'Running', 'Motorcycle racing', 'Rowing'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country was the first to win five FIFA World Cups, completing the set in 2002?', NULL,
        'Brazil', ARRAY['Germany', 'Italy', 'Argentina', 'France', 'Spain', 'Uruguay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many interlocking rings are on the Olympic flag?', NULL,
        'Five', ARRAY['Four', 'Six', 'Seven', 'Three', 'Eight', 'Nine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What is widely considered the national sport of Japan?', NULL,
        'Sumo wrestling', ARRAY['Judo', 'Karate', 'Baseball', 'Kendo', 'Table tennis', 'Volleyball'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In American football, how many points is a touchdown worth?', NULL,
        'Six', ARRAY['Three', 'Seven', 'Two', 'Five', 'Eight', 'Ten'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which sport is governed by the organization FIFA?', NULL,
        'Soccer (association football)', ARRAY['Rugby', 'American football', 'Field hockey', 'Basketball', 'Cricket', 'Volleyball'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In golf, what term describes finishing a hole one stroke under par?', NULL,
        'A birdie', ARRAY['An eagle', 'A bogey', 'An albatross', 'A par', 'A double bogey', 'A condor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country is credited with inventing table tennis (ping pong)?', NULL,
        'England', ARRAY['China', 'Japan', 'United States', 'Germany', 'France', 'Sweden'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many points is a successful "try" worth in rugby union?', NULL,
        'Five', ARRAY['Three', 'Six', 'Four', 'Seven', 'Two', 'Eight'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which NBA player is nicknamed "King James"?', NULL,
        'LeBron James', ARRAY['Kevin Durant', 'Stephen Curry', 'Kobe Bryant', 'Michael Jordan', 'James Harden', 'Shaquille O''Neal'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What color jersey does the overall leader of the Tour de France wear?', NULL,
        'Yellow', ARRAY['Green', 'Polka dot', 'Pink', 'White', 'Red', 'Blue'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How many periods are played in a regulation NHL game?', NULL,
        'Three', ARRAY['Two', 'Four', 'Five', 'Six', 'One', 'Seven'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which men''s golf competition, held every two years, pits Europe against the United States?', NULL,
        'The Ryder Cup', ARRAY['The Presidents Cup', 'The Solheim Cup', 'The Davis Cup', 'The Curtis Cup', 'The Seve Trophy', 'The Walker Cup'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is a serve called when the receiver can''t even touch it?', NULL,
        'An ace', ARRAY['A let', 'A fault', 'A volley', 'A lob', 'A smash', 'A winner'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is the highest score possible with three darts?', NULL,
        '180', ARRAY['150', '160', '170', '171', '200', '240'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which baseball slugger was nicknamed "the Sultan of Swat"?', NULL,
        'Babe Ruth', ARRAY['Lou Gehrig', 'Ty Cobb', 'Hank Aaron', 'Mickey Mantle', 'Joe DiMaggio', 'Ted Williams'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How long is an Olympic swimming pool?', NULL,
        '50 meters', ARRAY['25 meters', '100 meters', '40 meters', '75 meters', '60 meters', '33 meters'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which soccer legend, born Edson Arantes do Nascimento, won the World Cup in 1958, 1962 and 1970?', NULL,
        'Pelé', ARRAY['Ronaldo', 'Ronaldinho', 'Zico', 'Garrincha', 'Romário', 'Rivaldo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Argentine scored the "Hand of God" goal at the 1986 World Cup?', NULL,
        'Diego Maradona', ARRAY['Lionel Messi', 'Gabriel Batistuta', 'Mario Kempes', 'Jorge Valdano', 'Juan Román Riquelme', 'Daniel Passarella'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which famous horse race is run at Churchill Downs on the first Saturday in May?', NULL,
        'The Kentucky Derby', ARRAY['The Preakness Stakes', 'The Belmont Stakes', 'The Breeders'' Cup Classic', 'The Epsom Derby', 'The Grand National', 'The Travers Stakes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which country hosted the 2008 Summer Olympics?', NULL,
        'China', ARRAY['Japan', 'South Korea', 'Australia', 'Greece', 'Russia', 'Brazil'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'With which team did Michael Jordan win six NBA championships?', NULL,
        'The Chicago Bulls', ARRAY['The Los Angeles Lakers', 'The Boston Celtics', 'The Detroit Pistons', 'The New York Knicks', 'The Washington Wizards', 'The Miami Heat'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which city do the NFL''s Steelers play?', NULL,
        'Pittsburgh', ARRAY['Cleveland', 'Philadelphia', 'Baltimore', 'Buffalo', 'Cincinnati', 'Harrisburg'], 200, 'The team is named for the city''s steel industry.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which country won its first FIFA World Cup in 2010?', NULL,
        'Spain', ARRAY['The Netherlands', 'Germany', 'Italy', 'Brazil', 'Argentina', 'Uruguay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The "Curse of the Bambino" haunted which baseball team until 2004?', NULL,
        'The Boston Red Sox', ARRAY['The Chicago Cubs', 'The New York Yankees', 'The Cleveland Indians', 'The Chicago White Sox', 'The Philadelphia Phillies', 'The Detroit Tigers'], 200, '"The Bambino" was Babe Ruth, sold by Boston to the Yankees in 1919.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which baseball team plays its home games at Wrigley Field?', NULL,
        'The Chicago Cubs', ARRAY['The Chicago White Sox', 'The St. Louis Cardinals', 'The Milwaukee Brewers', 'The Detroit Tigers', 'The Pittsburgh Pirates', 'The Cincinnati Reds'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In golf, what is a score of two under par on one hole called?', NULL,
        'An eagle', ARRAY['A birdie', 'An albatross', 'A bogey', 'A condor', 'A par', 'A double bogey'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What does "NBA" stand for?', NULL,
        'National Basketball Association', ARRAY['National Basketball Alliance', 'National Ballplayers Association', 'North American Basketball Association', 'National Basketball Assembly', 'National Basketball Academy', 'National Ball Association'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Grand Slam tennis tournament is played on red clay in Paris?', NULL,
        'The French Open', ARRAY['Wimbledon', 'The US Open', 'The Australian Open', 'The Italian Open', 'The Monte Carlo Masters', 'The Madrid Open'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Moguls and slalom are events in which winter sport?', NULL,
        'Skiing', ARRAY['Snowboarding', 'Bobsled', 'Figure skating', 'Luge', 'Speed skating', 'Curling'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which New York Jets quarterback was nicknamed "Broadway Joe"?', NULL,
        'Joe Namath', ARRAY['Joe Montana', 'Johnny Unitas', 'Terry Bradshaw', 'Dan Marino', 'Bart Starr', 'Roger Staubach'], 200, 'Before Super Bowl III he guaranteed a Jets win over the heavily favored Colts, and delivered.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'How many players does a baseball team have on the field on defense?', NULL,
        'Nine players', ARRAY['Eight players', 'Ten players', 'Eleven players', 'Seven players', 'Twelve players', 'Six players'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The Vince Lombardi Trophy is awarded in which sport?', NULL,
        'American football', ARRAY['Baseball', 'Basketball', 'Ice hockey', 'Golf', 'Soccer', 'Tennis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Basketball was invented in 1891 in Springfield, in which state?', NULL,
        'Massachusetts', ARRAY['New York', 'Kansas', 'Ohio', 'Pennsylvania', 'Connecticut', 'Indiana'], 200, 'The first baskets were peach baskets; someone had to fetch the ball after every score.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is the most clubs a golfer may carry during a round?', NULL,
        '14', ARRAY['12', '10', '16', '18', '20', '13'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is a perfect score in a game of ten-pin bowling?', NULL,
        '300', ARRAY['200', '250', '360', '400', '270', '500'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which city''s baseball team was nicknamed "the Big Red Machine" in the 1970s?', NULL,
        'Cincinnati', ARRAY['Boston', 'St. Louis', 'Philadelphia', 'Pittsburgh', 'Cleveland', 'Detroit'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NHL team won the 1994 Stanley Cup, ending a 54-year drought?', NULL,
        'The New York Rangers', ARRAY['The Toronto Maple Leafs', 'The Chicago Blackhawks', 'The Boston Bruins', 'The Detroit Red Wings', 'The Montreal Canadiens', 'The Vancouver Canucks'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Olympic event combines swimming, cycling and running?', NULL,
        'Triathlon', ARRAY['Pentathlon', 'Decathlon', 'Heptathlon', 'Biathlon', 'Duathlon', 'Ironman'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which sport do New Zealand''s "All Blacks" play?', NULL,
        'Rugby union', ARRAY['Cricket', 'Soccer', 'Rugby league', 'Field hockey', 'Netball', 'Basketball'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which tennis star won 14 French Open titles?', NULL,
        'Rafael Nadal', ARRAY['Roger Federer', 'Novak Djokovic', 'Pete Sampras', 'Björn Borg', 'Andre Agassi', 'Andy Murray'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which American won four gold medals at the 1984 Los Angeles Olympics, including the 100 meters and the long jump?', NULL,
        'Carl Lewis', ARRAY['Edwin Moses', 'Michael Johnson', 'Maurice Greene', 'Bob Beamon', 'Mike Powell', 'Leroy Burrell'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In soccer, what is it called when an attacker is behind the last defender as the ball is passed to them?', NULL,
        'Offside', ARRAY['A foul', 'Handball', 'Obstruction', 'Encroachment', 'Dangerous play', 'A dive'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In golf, what is a score of one over par on one hole called?', NULL,
        'A bogey', ARRAY['A birdie', 'An eagle', 'A par', 'A double bogey', 'A triple bogey', 'A condor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NFL team''s fans famously wear foam "cheeseheads"?', NULL,
        'The Green Bay Packers', ARRAY['The Chicago Bears', 'The Minnesota Vikings', 'The Detroit Lions', 'The Buffalo Bills', 'The Cleveland Browns', 'The Kansas City Chiefs'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Formula 1 race winds through the streets of Monte Carlo?', NULL,
        'The Monaco Grand Prix', ARRAY['The 24 Hours of Le Mans', 'The Indianapolis 500', 'The Daytona 500', 'The Italian Grand Prix', 'The British Grand Prix', 'The Dakar Rally'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The fast stick-and-ball sport of hurling comes from which country?', NULL,
        'Ireland', ARRAY['Scotland', 'Wales', 'England', 'Iceland', 'Canada', 'New Zealand'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NBA team plays its home games at Madison Square Garden?', NULL,
        'The New York Knicks', ARRAY['The Brooklyn Nets', 'The Boston Celtics', 'The Philadelphia 76ers', 'The Washington Wizards', 'The Toronto Raptors', 'The New Jersey Nets'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which tennis star won 23 Grand Slam singles titles between 1999 and 2017?', NULL,
        'Serena Williams', ARRAY['Venus Williams', 'Steffi Graf', 'Martina Navratilova', 'Chris Evert', 'Maria Sharapova', 'Margaret Court'], 200, 'She won the 2017 Australian Open while about eight weeks pregnant.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which race, first run in 1897, is the world''s oldest annual marathon?', NULL,
        'The Boston Marathon', ARRAY['The New York City Marathon', 'The Chicago Marathon', 'The London Marathon', 'The Berlin Marathon', 'The Athens Marathon', 'The Paris Marathon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Yankees first baseman was nicknamed "the Iron Horse"?', NULL,
        'Lou Gehrig', ARRAY['Babe Ruth', 'Joe DiMaggio', 'Ty Cobb', 'Honus Wagner', 'Mickey Mantle', 'Yogi Berra'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Who won a record 24th men''s Grand Slam singles title at the 2023 US Open?', NULL,
        'Novak Djokovic', ARRAY['Roger Federer', 'Rafael Nadal', 'Pete Sampras', 'Andre Agassi', 'Bjorn Borg', 'Rod Laver'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which boxer, born Cassius Clay, was known as "The Greatest"?', NULL,
        'Muhammad Ali', ARRAY['Mike Tyson', 'Joe Frazier', 'George Foreman', 'Sugar Ray Robinson', 'Floyd Mayweather', 'Evander Holyfield'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In cricket, how many players are on each team?', NULL,
        'Eleven', ARRAY['Ten', 'Twelve', 'Nine', 'Thirteen', 'Eight', 'Fifteen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country is credited with inventing the sport of golf?', NULL,
        'Scotland', ARRAY['England', 'Ireland', 'Wales', 'Netherlands', 'United States', 'France'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In 2010, Formula 1 raised the points for a race win from 10 to what?', NULL,
        '25', ARRAY['20', '18', '30', '15', '22', '12'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which Grand Slam tournament is played on grass and is the oldest of the four?', NULL,
        'Wimbledon', ARRAY['The US Open', 'The French Open', 'The Australian Open', 'The ATP Finals', 'The Davis Cup', 'The Miami Open'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which swimmer won a record eight gold medals at a single Olympic Games, in Beijing in 2008?', NULL,
        'Michael Phelps', ARRAY['Mark Spitz', 'Ryan Lochte', 'Caeleb Dressel', 'Ian Thorpe', 'Matt Biondi', 'Adam Peaty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country won the UEFA Euro 2016 football championship?', NULL,
        'Portugal', ARRAY['France', 'Germany', 'Spain', 'Italy', 'Belgium', 'Wales'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which team lost the 1966 World Cup final at Wembley, 4-2 after extra time?', NULL,
        'West Germany', ARRAY['Portugal', 'Argentina', 'Brazil', 'Italy', 'Soviet Union', 'Hungary'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which boxer became the youngest heavyweight champion in history in 1986, aged 20?', NULL,
        'Mike Tyson', ARRAY['Floyd Patterson', 'Joe Louis', 'George Foreman', 'Evander Holyfield', 'Lennox Lewis', 'Larry Holmes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which golfer won the 1997 Masters at age 21, by 12 strokes?', NULL,
        'Tiger Woods', ARRAY['Phil Mickelson', 'Ernie Els', 'Jack Nicklaus', 'Sergio García', 'Vijay Singh', 'David Duval'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which gymnast scored the first perfect 10 in Olympic history, at Montreal in 1976?', NULL,
        'Nadia Comaneci', ARRAY['Olga Korbut', 'Mary Lou Retton', 'Nellie Kim', 'Simone Biles', 'Ludmilla Tourischeva', 'Vera Caslavska'], 300, 'The scoreboard couldn''t show 10.00, so her perfect score appeared as 1.00.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which American athlete won four gold medals at the 1936 Berlin Olympics?', NULL,
        'Jesse Owens', ARRAY['Carl Lewis', 'Jim Thorpe', 'Ralph Metcalfe', 'Bob Hayes', 'Michael Johnson', 'Glenn Cunningham'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which city is the famous Maracanã soccer stadium?', NULL,
        'Rio de Janeiro', ARRAY['São Paulo', 'Buenos Aires', 'Brasília', 'Salvador', 'Montevideo', 'Belo Horizonte'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which driver won his seventh Formula 1 world title in 2020, equalling Michael Schumacher''s record?', NULL,
        'Lewis Hamilton', ARRAY['Sebastian Vettel', 'Fernando Alonso', 'Max Verstappen', 'Nico Rosberg', 'Kimi Räikkönen', 'Jenson Button'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In the 1980 "Miracle on Ice" at Lake Placid, the US Olympic team stunned which country?', NULL,
        'The Soviet Union', ARRAY['Finland', 'Canada', 'Sweden', 'Czechoslovakia', 'East Germany', 'West Germany'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which country won the first Rugby World Cup, in 1987?', NULL,
        'New Zealand', ARRAY['Australia', 'South Africa', 'England', 'France', 'Wales', 'Ireland'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How many minutes long is a regulation NBA game?', NULL,
        '48', ARRAY['40', '60', '44', '36', '50', '52'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which golfer was nicknamed "the Golden Bear"?', NULL,
        'Jack Nicklaus', ARRAY['Arnold Palmer', 'Gary Player', 'Tom Watson', 'Greg Norman', 'Lee Trevino', 'Ben Hogan'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In which athletics event did Dick Fosbury win Olympic gold in 1968 with his backward "Flop"?', NULL,
        'High jump', ARRAY['Pole vault', 'Long jump', 'Triple jump', 'Hurdles', 'Steeplechase', 'Javelin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Yankees pitcher threw a perfect game in Game 5 of the 1956 World Series?', NULL,
        'Don Larsen', ARRAY['Whitey Ford', 'Sandy Koufax', 'Bob Gibson', 'Cy Young', 'Allie Reynolds', 'Vic Raschi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NFL team finished the 1972 season 17-0, winning the Super Bowl?', NULL,
        'The Miami Dolphins', ARRAY['The Dallas Cowboys', 'The Pittsburgh Steelers', 'The Minnesota Vikings', 'The Oakland Raiders', 'The Baltimore Colts', 'The Washington Redskins'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In baseball scorekeeping, what does a backward "K" mean?', NULL,
        'A called third strike', ARRAY['A swinging strikeout', 'A walk', 'A balk', 'A pickoff', 'A sacrifice bunt', 'An error'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In 1997, whose number 42 did Major League Baseball retire across every team?', NULL,
        'Jackie Robinson', ARRAY['Babe Ruth', 'Lou Gehrig', 'Roberto Clemente', 'Hank Aaron', 'Willie Mays', 'Larry Doby'], 300, 'Every player in the majors wears 42 on Jackie Robinson Day, April 15.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which country''s national soccer team is nicknamed "La Albiceleste"?', NULL,
        'Argentina', ARRAY['Uruguay', 'Brazil', 'Chile', 'Spain', 'Italy', 'Mexico'], 300, 'The name means "the white and sky blue," the colors of its striped shirts.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which country''s national soccer team is called "the Azzurri"?', NULL,
        'Italy', ARRAY['France', 'Argentina', 'Brazil', 'The Netherlands', 'Spain', 'Uruguay'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In cricket, what is a score of 100 runs by one batter called?', NULL,
        'A century', ARRAY['A maiden', 'A duck', 'A hat-trick', 'A fifty', 'A boundary', 'A wicket'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which hockey legend, "Mr. Hockey," played in five different decades?', NULL,
        'Gordie Howe', ARRAY['Bobby Hull', 'Maurice Richard', 'Bobby Orr', 'Mario Lemieux', 'Jean Béliveau', 'Wayne Gretzky'], 300, 'He played his last pro shift in 1997, at age 69, in a minor-league game.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The winner of which golf major takes home the Claret Jug?', NULL,
        'The Open Championship', ARRAY['The Masters', 'The US Open', 'The PGA Championship', 'The Ryder Cup', 'The Players Championship', 'The US Amateur'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'The Chicago Cubs'' 2016 World Series title ended a drought going back to which year?', NULL,
        '1908', ARRAY['1918', '1945', '1929', '1906', '1919', '1932'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which horse won the Triple Crown in 2015, the first in 37 years?', NULL,
        'American Pharoah', ARRAY['Justify', 'Seattle Slew', 'Affirmed', 'California Chrome', 'Smarty Jones', 'Funny Cide'], 300, 'Yes, "Pharoah": the name was misspelled on the registration and stuck.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In hockey, what is a goal scored while the other team has a player in the penalty box called?', NULL,
        'A power-play goal', ARRAY['A shorthanded goal', 'A hat trick', 'An empty-net goal', 'A penalty shot', 'A one-timer', 'A breakaway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which US player scored the winning penalty kick in the 1999 Women''s World Cup final?', NULL,
        'Brandi Chastain', ARRAY['Mia Hamm', 'Abby Wambach', 'Julie Foudy', 'Kristine Lilly', 'Michelle Akers', 'Briana Scurry'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which American figure skater won Olympic gold in 1976 and launched a famous wedge haircut?', NULL,
        'Dorothy Hamill', ARRAY['Peggy Fleming', 'Kristi Yamaguchi', 'Tara Lipinski', 'Nancy Kerrigan', 'Michelle Kwan', 'Katarina Witt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Los Angeles Rams running back rushed for 2,105 yards in 1984?', NULL,
        'Eric Dickerson', ARRAY['Walter Payton', 'Barry Sanders', 'Jim Brown', 'Marcus Allen', 'Emmitt Smith', 'Earl Campbell'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which country''s national soccer team is nicknamed "Les Bleus"?', NULL,
        'France', ARRAY['Italy', 'Belgium', 'The Netherlands', 'Argentina', 'Uruguay', 'Greece'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which sport might a bowler deliver a "googly"?', NULL,
        'Cricket', ARRAY['Croquet', 'Polo', 'Golf', 'Snooker', 'Lacrosse', 'Hurling'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which player scored 100 points in a single NBA game in 1962?', NULL,
        'Wilt Chamberlain', ARRAY['Bill Russell', 'Elgin Baylor', 'Jerry West', 'Oscar Robertson', 'Kareem Abdul-Jabbar', 'Bob Cousy'], 300, 'There''s no video of it; the game in Hershey, Pennsylvania, wasn''t televised.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What was the 1973 tennis match between Billie Jean King and Bobby Riggs nicknamed?', NULL,
        'The Battle of the Sexes', ARRAY['The Match of the Century', 'The Gender Bowl', 'The Clash of Champions', 'The Great Exhibition', 'The Houston Showdown', 'The Love Match'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which ballpark has the left-field wall called the "Green Monster"?', NULL,
        'Fenway Park', ARRAY['Wrigley Field', 'Yankee Stadium', 'Camden Yards', 'Dodger Stadium', 'Busch Stadium', 'Comerica Park'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What is the name of the top competition for Europe''s club soccer teams?', NULL,
        'The Champions League', ARRAY['The Europa League', 'The Premier League', 'La Liga', 'The Copa América', 'Serie A', 'The Bundesliga'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which English soccer club is nicknamed "the Red Devils"?', NULL,
        'Manchester United', ARRAY['Liverpool', 'Arsenal', 'Manchester City', 'Chelsea', 'Nottingham Forest', 'Southampton'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which sprinter was known as "Flo-Jo"?', NULL,
        'Florence Griffith Joyner', ARRAY['Jackie Joyner-Kersee', 'Wilma Rudolph', 'Gail Devers', 'Marion Jones', 'Evelyn Ashford', 'Merlene Ottey'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which sport would an athlete land a "triple axel"?', NULL,
        'Figure skating', ARRAY['Gymnastics', 'Diving', 'Snowboarding', 'Ballet', 'Trampoline', 'Skateboarding'], 300, 'It''s the only jump with a forward takeoff, so it takes three and a half turns in the air.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which race is the third and longest leg of horse racing''s Triple Crown?', NULL,
        'The Belmont Stakes', ARRAY['The Preakness Stakes', 'The Kentucky Derby', 'The Breeders'' Cup Classic', 'The Travers Stakes', 'The Santa Anita Derby', 'The Arkansas Derby'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Australian won tennis''s calendar Grand Slam twice, in 1962 and 1969?', NULL,
        'Rod Laver', ARRAY['Roy Emerson', 'Ken Rosewall', 'Björn Borg', 'John McEnroe', 'Jimmy Connors', 'Don Budge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Olympic track and field event packs ten events into two days?', NULL,
        'Decathlon', ARRAY['Heptathlon', 'Pentathlon', 'Triathlon', 'Biathlon', 'Modern pentathlon', 'Octathlon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which team drafted Kobe Bryant in 1996, then traded him to the Lakers?', NULL,
        'The Charlotte Hornets', ARRAY['The Philadelphia 76ers', 'The New Jersey Nets', 'The Toronto Raptors', 'The Boston Celtics', 'The Vancouver Grizzlies', 'The Milwaukee Bucks'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which gymnast won the Olympic all-around gold at the 2016 Rio Games?', NULL,
        'Simone Biles', ARRAY['Gabby Douglas', 'Aly Raisman', 'Shawn Johnson', 'Nastia Liukin', 'Carly Patterson', 'Sunisa Lee'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NFL team is often called "America''s Team"?', NULL,
        'The Dallas Cowboys', ARRAY['The Green Bay Packers', 'The New England Patriots', 'The Pittsburgh Steelers', 'The Chicago Bears', 'The New York Giants', 'The Washington Commanders'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Who holds MLB''s officially recognized single-season home run record, with 73 in 2001?', NULL,
        'Barry Bonds', ARRAY['Babe Ruth', 'Mark McGwire', 'Sammy Sosa', 'Roger Maris', 'Hank Aaron', 'Aaron Judge'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In snooker, what score is a standard "maximum break"?', NULL,
        '147', ARRAY['167', '100', '180', '200', '50', '120'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which racehorse won the US Triple Crown in 1973 by a record margin?', NULL,
        'Secretariat', ARRAY['Seabiscuit', 'Man o'' War', 'American Pharoah', 'Citation', 'War Admiral', 'Affirmed'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In what year were the first Winter Olympic Games held?', NULL,
        '1924', ARRAY['1920', '1928', '1900', '1932', '1912', '1936'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which quarterback won his seventh Super Bowl in February 2021, more than any other player had?', NULL,
        'Tom Brady', ARRAY['Peyton Manning', 'Joe Montana', 'Patrick Mahomes', 'Terry Bradshaw', 'Aaron Rodgers', 'Drew Brees'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In what year were women first allowed to compete in the modern Olympic Games?', NULL,
        '1900', ARRAY['1896', '1912', '1920', '1924', '1908', '1932'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which cyclist was stripped of his record seven Tour de France titles following a doping scandal?', NULL,
        'Lance Armstrong', ARRAY['Greg LeMond', 'Eddy Merckx', 'Miguel Indurain', 'Jan Ullrich', 'Alberto Contador', 'Chris Froome'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country''s cricket team is nicknamed "the Baggy Greens"?', NULL,
        'Australia', ARRAY['England', 'India', 'South Africa', 'New Zealand', 'Pakistan', 'Sri Lanka'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Who won all four Grand Slam singles titles and Olympic gold in 1988, the "Golden Slam"?', NULL,
        'Steffi Graf', ARRAY['Martina Navratilova', 'Chris Evert', 'Monica Seles', 'Serena Williams', 'Margaret Court', 'Gabriela Sabatini'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How long is a cricket pitch, from stumps to stumps?', NULL,
        '22 yards', ARRAY['20 yards', '25 yards', '18 yards', '24 yards', '30 yards', '11 yards'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which baseball player broke Lou Gehrig''s record for consecutive games played in 1995?', NULL,
        'Cal Ripken Jr.', ARRAY['Pete Rose', 'Derek Jeter', 'Tony Gwynn', 'Ozzie Smith', 'Kirby Puckett', 'Don Mattingly'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which NHL star scored 92 goals in a single season, 1981-82?', NULL,
        'Wayne Gretzky', ARRAY['Mario Lemieux', 'Brett Hull', 'Bobby Orr', 'Gordie Howe', 'Mark Messier', 'Mike Bossy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Winter Olympic sport combines cross-country skiing with rifle shooting?', NULL,
        'Biathlon', ARRAY['Nordic combined', 'Modern pentathlon', 'Skeleton', 'Duathlon', 'Ski jumping', 'Triathlon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which city hosted the first Olympic Games held in Asia, in 1964?', NULL,
        'Tokyo', ARRAY['Seoul', 'Beijing', 'Osaka', 'Sapporo', 'Manila', 'Bangkok'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which sailing trophy, first won in 1851, is often called the oldest trophy in international sport?', NULL,
        'The America''s Cup', ARRAY['The Admiral''s Cup', 'The Fastnet Trophy', 'The Louis Vuitton Cup', 'The Davis Cup', 'The Commodore''s Cup', 'The Ryder Cup'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What was the 1974 heavyweight title fight in Kinshasa, Zaire, nicknamed?', NULL,
        'The Rumble in the Jungle', ARRAY['The Thrilla in Manila', 'The Fight of the Century', 'The Brawl in Montreal', 'The Long Count Fight', 'The Battle of the Titans', 'The War'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Ethiopian runner won the 1960 Olympic marathon in Rome running barefoot?', NULL,
        'Abebe Bikila', ARRAY['Haile Gebrselassie', 'Kenenisa Bekele', 'Emil Zátopek', 'Mamo Wolde', 'Frank Shorter', 'Eliud Kipchoge'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which American swimmer won seven gold medals at the 1972 Munich Olympics?', NULL,
        'Mark Spitz', ARRAY['Matt Biondi', 'Johnny Weissmuller', 'Don Schollander', 'Gary Hall', 'John Naber', 'Ryan Lochte'], 400, 'Spitz set a world record in all seven events he won.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which Atlanta Braves slugger hit his record-breaking 715th career home run in April 1974?', NULL,
        'Hank Aaron', ARRAY['Willie Mays', 'Mickey Mantle', 'Roberto Clemente', 'Frank Robinson', 'Harmon Killebrew', 'Reggie Jackson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which tennis star won nine Wimbledon singles titles between 1978 and 1990?', NULL,
        'Martina Navratilova', ARRAY['Chris Evert', 'Billie Jean King', 'Serena Williams', 'Margaret Court', 'Evonne Goolagong', 'Venus Williams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which pitcher won 511 games, and now has baseball''s top pitching award named for him?', NULL,
        'Cy Young', ARRAY['Walter Johnson', 'Christy Mathewson', 'Grover Cleveland Alexander', 'Warren Spahn', 'Nolan Ryan', 'Pud Galvin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What nickname did the 1919 Chicago White Sox earn after throwing the World Series?', NULL,
        'The Black Sox', ARRAY['The Dirty Sox', 'The Gray Sox', 'The Crooked Eight', 'The Fixers', 'The Fallen Sox', 'The Shame Sox'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which gymnast landed a vault on an injured ankle to help the US win team gold in 1996?', NULL,
        'Kerri Strug', ARRAY['Dominique Moceanu', 'Shannon Miller', 'Dominique Dawes', 'Amy Chow', 'Jaycie Phelps', 'Mary Lou Retton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Brazilian three-time Formula 1 champion died after a crash at Imola in 1994?', NULL,
        'Ayrton Senna', ARRAY['Nelson Piquet', 'Emerson Fittipaldi', 'Rubens Barrichello', 'Felipe Massa', 'Alain Prost', 'Gilles Villeneuve'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which amateur golfer won all four of the era''s major titles in 1930?', NULL,
        'Bobby Jones', ARRAY['Walter Hagen', 'Gene Sarazen', 'Ben Hogan', 'Sam Snead', 'Francis Ouimet', 'Harry Vardon'], 400, 'He retired from competition that year, at 28, and later co-founded Augusta National.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Who rode Secretariat to the 1973 Triple Crown?', NULL,
        'Ron Turcotte', ARRAY['Bill Shoemaker', 'Eddie Arcaro', 'Steve Cauthen', 'Angel Cordero Jr.', 'Laffit Pincay Jr.', 'Jerry Bailey'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Boston defenseman scored the "flying goal" that won the 1970 Stanley Cup?', NULL,
        'Bobby Orr', ARRAY['Brad Park', 'Denis Potvin', 'Larry Robinson', 'Ray Bourque', 'Paul Coffey', 'Doug Harvey'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which city is the Hockey Hall of Fame?', NULL,
        'Toronto', ARRAY['Montreal', 'Ottawa', 'Boston', 'Detroit', 'Chicago', 'Winnipeg'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which city is the Pro Football Hall of Fame?', NULL,
        'Canton, Ohio', ARRAY['Green Bay, Wisconsin', 'Chicago, Illinois', 'Philadelphia, Pennsylvania', 'Pittsburgh, Pennsylvania', 'Indianapolis, Indiana', 'Dayton, Ohio'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In which New York village is the National Baseball Hall of Fame?', NULL,
        'Cooperstown', ARRAY['Saratoga Springs', 'Hoboken', 'Elmira', 'Lake Placid', 'Ithaca', 'Rochester'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Who in 1975 became the first Black man to win the Wimbledon singles title?', NULL,
        'Arthur Ashe', ARRAY['Yannick Noah', 'James Blake', 'MaliVai Washington', 'Stan Smith', 'Jimmy Connors', 'Björn Borg'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Who in 1967 became the first woman to officially run the Boston Marathon with a race number?', NULL,
        'Kathrine Switzer', ARRAY['Bobbi Gibb', 'Joan Benoit', 'Grete Waitz', 'Paula Radcliffe', 'Uta Pippig', 'Nina Kuscsik'], 400, 'An official tried to tear off her bib mid-race; she finished anyway.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'What was the first Super Bowl officially called?', NULL,
        'The AFL-NFL World Championship Game', ARRAY['The NFL Championship Bowl', 'The Pro Bowl', 'The Super Classic', 'The American Bowl', 'The Championship Classic', 'The Grand Bowl'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Yankee hit safely in 56 straight games in 1941?', NULL,
        'Joe DiMaggio', ARRAY['Ted Williams', 'Pete Rose', 'Ty Cobb', 'Willie Keeler', 'Stan Musial', 'Lou Gehrig'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Boston Red Sox hitter batted .406 in 1941?', NULL,
        'Ted Williams', ARRAY['Joe DiMaggio', 'Rogers Hornsby', 'Tony Gwynn', 'George Brett', 'Rod Carew', 'Stan Musial'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Soviet gymnast became the darling of the 1972 Munich Olympics?', NULL,
        'Olga Korbut', ARRAY['Ludmilla Tourischeva', 'Larisa Latynina', 'Nellie Kim', 'Svetlana Khorkina', 'Elena Mukhina', 'Natalia Shaposhnikova'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Australian swimmer, nicknamed "the Thorpedo," won five Olympic golds?', NULL,
        'Ian Thorpe', ARRAY['Grant Hackett', 'Kieren Perkins', 'Michael Klim', 'Dawn Fraser', 'Leisel Jones', 'Cate Campbell'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which 49ers receiver made "The Catch" to win the January 1982 NFC Championship Game?', NULL,
        'Dwight Clark', ARRAY['Jerry Rice', 'Joe Montana', 'Lynn Swann', 'Roger Craig', 'Ronnie Lott', 'Freddie Solomon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Steelers running back caught the "Immaculate Reception" in 1972?', NULL,
        'Franco Harris', ARRAY['Lynn Swann', 'Terry Bradshaw', 'John Stallworth', 'Rocky Bleier', 'Joe Greene', 'Dwight Clark'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which baseball team moved from Brooklyn to Los Angeles after the 1957 season?', NULL,
        'The Dodgers', ARRAY['The Giants', 'The Braves', 'The Athletics', 'The Senators', 'The Browns', 'The Pilots'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which course''s famous 17th hole is an island green, at the home of the Players Championship?', NULL,
        'TPC Sawgrass', ARRAY['Augusta National', 'Pebble Beach', 'St Andrews', 'Pinehurst No. 2', 'Whistling Straits', 'Torrey Pines'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Utah Jazz power forward was nicknamed "the Mailman"?', NULL,
        'Karl Malone', ARRAY['John Stockton', 'Charles Barkley', 'Dennis Rodman', 'Shaquille O''Neal', 'Patrick Ewing', 'David Robinson'], 400, 'Because he always delivered.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Spaniard won the Tour de France five times in a row, from 1991 to 1995?', NULL,
        'Miguel Indurain', ARRAY['Bernard Hinault', 'Eddy Merckx', 'Jacques Anquetil', 'Greg LeMond', 'Chris Froome', 'Alberto Contador'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'In baseball stats, what does a pitcher''s ERA measure?', NULL,
        'Earned runs allowed per nine innings', ARRAY['Errors per game', 'Every run allowed', 'Strikeouts per nine innings', 'Walks per inning', 'Earned runs per start', 'Innings per start'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which NBA team won eight straight championships from 1959 to 1966?', NULL,
        'The Boston Celtics', ARRAY['The Minneapolis Lakers', 'The New York Knicks', 'The Philadelphia Warriors', 'The Syracuse Nationals', 'The St. Louis Hawks', 'The Cincinnati Royals'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which country hosted the 1994 FIFA World Cup?', NULL,
        'The United States', ARRAY['Mexico', 'France', 'Italy', 'Germany', 'Japan', 'Canada'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Czech runner won the 5,000 meters, the 10,000 meters and the marathon at the 1952 Olympics?', NULL,
        'Emil Zátopek', ARRAY['Paavo Nurmi', 'Lasse Virén', 'Vladimir Kuts', 'Alain Mimoun', 'Abebe Bikila', 'Gaston Reiff'], 400, 'It was his first marathon ever.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which Finnish runner, "the Flying Finn," won nine Olympic gold medals in the 1920s?', NULL,
        'Paavo Nurmi', ARRAY['Emil Zátopek', 'Lasse Virén', 'Hannes Kolehmainen', 'Ville Ritola', 'Abebe Bikila', 'Paavo Yrjölä'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which heavyweight champion retired in 1956 with a perfect 49-0 record?', NULL,
        'Rocky Marciano', ARRAY['Joe Louis', 'Jack Dempsey', 'Floyd Patterson', 'Gene Tunney', 'Sonny Liston', 'Ezzard Charles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'DEPTH_NOV_2026', NULL,
        'Which American sprinter overcame childhood polio to win three golds at the 1960 Rome Olympics?', NULL,
        'Wilma Rudolph', ARRAY['Florence Griffith Joyner', 'Wyomia Tyus', 'Babe Didrikson', 'Evelyn Ashford', 'Gail Devers', 'Betty Cuthbert'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPORTS';
