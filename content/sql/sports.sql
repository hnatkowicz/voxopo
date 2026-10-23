-- ============================================================================
-- content/sql/sports.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/sports.csv, the master copy of the
-- Thinking Pants category SPORTS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPORTS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many players are on a standard soccer team on the field at once?', NULL,
        'Eleven', ARRAY['Ten', 'Twelve', 'Nine', 'Thirteen', 'Eight', 'Seven'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In basketball, how many points is a standard field goal worth?', NULL,
        'Two', ARRAY['One', 'Three', 'Four', 'Five', 'Six', 'Ten'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many holes are played in a standard round of golf?', NULL,
        'Eighteen', ARRAY['Nine', 'Twelve', 'Twenty', 'Sixteen', 'Twenty-four', 'Fifteen'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What shape is the infield of a baseball field?', NULL,
        'A diamond', ARRAY['A hexagon', 'A circle', 'A triangle', 'A rectangle', 'A pentagon', 'An oval'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many players are on a standard basketball team on the court at once?', NULL,
        'Five', ARRAY['Six', 'Seven', 'Four', 'Eight', 'Nine', 'Eleven'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What is the term for scoring three goals in a single soccer match by one player?', NULL,
        'A hat-trick', ARRAY['A triple play', 'A grand slam', 'A perfect game', 'A clean sweep', 'A treble', 'A brace'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In which sport is the term "love" used to mean zero points?', NULL,
        'Tennis', ARRAY['Golf', 'Cricket', 'Volleyball', 'Basketball', 'Bowling', 'Darts'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How often are the Summer Olympic Games normally held?', NULL,
        'Every 4 years', ARRAY['Every 2 years', 'Every 3 years', 'Every 5 years', 'Every 6 years', 'Every year', 'Every 8 years'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do you try to roll a "strike" or pick up a "spare"?', NULL,
        'Bowling', ARRAY['Curling', 'Croquet', 'Billiards', 'Darts', 'Bocce', 'Shuffleboard'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Teams compete for the Stanley Cup in which sport?', NULL,
        'Ice hockey', ARRAY['Baseball', 'Basketball', 'American football', 'Soccer', 'Lacrosse', 'Curling'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What do golfers shout to warn people that a ball is flying toward them?', NULL,
        'Fore', ARRAY['Heads', 'Duck', 'Timber', 'Watch out', 'Incoming', 'Tee off'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do players hit a shuttlecock over a net?', NULL,
        'Badminton', ARRAY['Tennis', 'Squash', 'Table tennis', 'Volleyball', 'Pickleball', 'Racquetball'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'About how long is a marathon?', NULL,
        '26.2 miles', ARRAY['13.1 miles', '20 miles', '24.8 miles', '30 miles', '31.1 miles', '50 miles'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which basketball legend was nicknamed "His Airness"?', NULL,
        'Michael Jordan', ARRAY['Kobe Bryant', 'Magic Johnson', 'Larry Bird', 'Scottie Pippen', 'Julius Erving', 'Dominique Wilkins'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Jamaican sprinter ran the 100 meters in a world-record 9.58 seconds in 2009?', NULL,
        'Usain Bolt', ARRAY['Yohan Blake', 'Asafa Powell', 'Tyson Gay', 'Carl Lewis', 'Justin Gatlin', 'Maurice Greene'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In soccer, which player is allowed to handle the ball inside their own penalty area?', NULL,
        'The goalkeeper', ARRAY['The sweeper', 'The captain', 'The striker', 'The center back', 'The fullback', 'The winger'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In golf, what is the name of the area where you take your first shot on each hole?', NULL,
        'The tee', ARRAY['The green', 'The fairway', 'The rough', 'The bunker', 'The apron', 'The pin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which sport do players slide granite "stones" across ice toward a target called the house?', NULL,
        'Curling', ARRAY['Bowls', 'Shuffleboard', 'Bocce', 'Bobsleigh', 'Skeleton', 'Biathlon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What color belt does a beginner usually wear in karate?', NULL,
        'White', ARRAY['Black', 'Yellow', 'Red', 'Brown', 'Blue', 'Green'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is the score called when a game is tied at 40-40?', NULL,
        'Deuce', ARRAY['Love', 'Advantage', 'Let', 'Tiebreak', 'All square', 'Break point'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country was the first to win five FIFA World Cups, completing the set in 2002?', NULL,
        'Brazil', ARRAY['Germany', 'Italy', 'Argentina', 'France', 'Spain', 'Uruguay'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many interlocking rings are on the Olympic flag?', NULL,
        'Five', ARRAY['Four', 'Six', 'Seven', 'Three', 'Eight', 'Nine'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'What is widely considered the national sport of Japan?', NULL,
        'Sumo wrestling', ARRAY['Judo', 'Karate', 'Baseball', 'Kendo', 'Table tennis', 'Volleyball'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In American football, how many points is a touchdown worth?', NULL,
        'Six', ARRAY['Three', 'Seven', 'Two', 'Five', 'Eight', 'Ten'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which sport is governed by the organization FIFA?', NULL,
        'Soccer (association football)', ARRAY['Rugby', 'American football', 'Field hockey', 'Basketball', 'Cricket', 'Volleyball'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In golf, what term describes finishing a hole one stroke under par?', NULL,
        'A birdie', ARRAY['An eagle', 'A bogey', 'An albatross', 'A par', 'A double bogey', 'A condor'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country is credited with inventing table tennis (ping pong)?', NULL,
        'England', ARRAY['China', 'Japan', 'United States', 'Germany', 'France', 'Sweden'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'How many points is a successful "try" worth in rugby union?', NULL,
        'Five', ARRAY['Three', 'Six', 'Four', 'Seven', 'Two', 'Eight'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which NBA player is nicknamed "King James"?', NULL,
        'LeBron James', ARRAY['Kevin Durant', 'Stephen Curry', 'Kobe Bryant', 'Michael Jordan', 'James Harden', 'Shaquille O''Neal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What color jersey does the overall leader of the Tour de France wear?', NULL,
        'Yellow', ARRAY['Green', 'Polka dot', 'Pink', 'White', 'Red', 'Blue'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How many periods are played in a regulation NHL game?', NULL,
        'Three', ARRAY['Two', 'Four', 'Five', 'Six', 'One', 'Seven'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which men''s golf competition, held every two years, pits Europe against the United States?', NULL,
        'The Ryder Cup', ARRAY['The Presidents Cup', 'The Solheim Cup', 'The Davis Cup', 'The Curtis Cup', 'The Seve Trophy', 'The Walker Cup'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is a serve called when the receiver can''t even touch it?', NULL,
        'An ace', ARRAY['A let', 'A fault', 'A volley', 'A lob', 'A smash', 'A winner'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What is the highest score possible with three darts?', NULL,
        '180', ARRAY['150', '160', '170', '171', '200', '240'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which baseball slugger was nicknamed "the Sultan of Swat"?', NULL,
        'Babe Ruth', ARRAY['Lou Gehrig', 'Ty Cobb', 'Hank Aaron', 'Mickey Mantle', 'Joe DiMaggio', 'Ted Williams'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How long is an Olympic swimming pool?', NULL,
        '50 meters', ARRAY['25 meters', '100 meters', '40 meters', '75 meters', '60 meters', '33 meters'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which soccer legend, born Edson Arantes do Nascimento, won the World Cup in 1958, 1962 and 1970?', NULL,
        'Pelé', ARRAY['Ronaldo', 'Ronaldinho', 'Zico', 'Garrincha', 'Romário', 'Rivaldo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Argentine scored the "Hand of God" goal at the 1986 World Cup?', NULL,
        'Diego Maradona', ARRAY['Lionel Messi', 'Gabriel Batistuta', 'Mario Kempes', 'Jorge Valdano', 'Juan Román Riquelme', 'Daniel Passarella'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which famous horse race is run at Churchill Downs on the first Saturday in May?', NULL,
        'The Kentucky Derby', ARRAY['The Preakness Stakes', 'The Belmont Stakes', 'The Breeders'' Cup Classic', 'The Epsom Derby', 'The Grand National', 'The Travers Stakes'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which country hosted the 2008 Summer Olympics?', NULL,
        'China', ARRAY['Japan', 'South Korea', 'Australia', 'Greece', 'Russia', 'Brazil'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Who won a record 24th men''s Grand Slam singles title at the 2023 US Open?', NULL,
        'Novak Djokovic', ARRAY['Roger Federer', 'Rafael Nadal', 'Pete Sampras', 'Andre Agassi', 'Bjorn Borg', 'Rod Laver'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which boxer, born Cassius Clay, was known as "The Greatest"?', NULL,
        'Muhammad Ali', ARRAY['Mike Tyson', 'Joe Frazier', 'George Foreman', 'Sugar Ray Robinson', 'Floyd Mayweather', 'Evander Holyfield'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In cricket, how many players are on each team?', NULL,
        'Eleven', ARRAY['Ten', 'Twelve', 'Nine', 'Thirteen', 'Eight', 'Fifteen'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country is credited with inventing the sport of golf?', NULL,
        'Scotland', ARRAY['England', 'Ireland', 'Wales', 'Netherlands', 'United States', 'France'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In 2010, Formula 1 raised the points for a race win from 10 to what?', NULL,
        '25', ARRAY['20', '18', '30', '15', '22', '12'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which Grand Slam tournament is played on grass and is the oldest of the four?', NULL,
        'Wimbledon', ARRAY['The US Open', 'The French Open', 'The Australian Open', 'The ATP Finals', 'The Davis Cup', 'The Miami Open'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which swimmer won a record eight gold medals at a single Olympic Games, in Beijing in 2008?', NULL,
        'Michael Phelps', ARRAY['Mark Spitz', 'Ryan Lochte', 'Caeleb Dressel', 'Ian Thorpe', 'Matt Biondi', 'Adam Peaty'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country won the UEFA Euro 2016 football championship?', NULL,
        'Portugal', ARRAY['France', 'Germany', 'Spain', 'Italy', 'Belgium', 'Wales'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which team lost the 1966 World Cup final at Wembley, 4-2 after extra time?', NULL,
        'West Germany', ARRAY['Portugal', 'Argentina', 'Brazil', 'Italy', 'Soviet Union', 'Hungary'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which boxer became the youngest heavyweight champion in history in 1986, aged 20?', NULL,
        'Mike Tyson', ARRAY['Floyd Patterson', 'Joe Louis', 'George Foreman', 'Evander Holyfield', 'Lennox Lewis', 'Larry Holmes'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which golfer won the 1997 Masters at age 21, by 12 strokes?', NULL,
        'Tiger Woods', ARRAY['Phil Mickelson', 'Ernie Els', 'Jack Nicklaus', 'Sergio García', 'Vijay Singh', 'David Duval'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which gymnast scored the first perfect 10 in Olympic history, at Montreal in 1976?', NULL,
        'Nadia Comaneci', ARRAY['Olga Korbut', 'Mary Lou Retton', 'Nellie Kim', 'Simone Biles', 'Ludmilla Tourischeva', 'Vera Caslavska'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which American athlete won four gold medals at the 1936 Berlin Olympics?', NULL,
        'Jesse Owens', ARRAY['Carl Lewis', 'Jim Thorpe', 'Ralph Metcalfe', 'Bob Hayes', 'Michael Johnson', 'Glenn Cunningham'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In which city is the famous Maracanã soccer stadium?', NULL,
        'Rio de Janeiro', ARRAY['São Paulo', 'Buenos Aires', 'Brasília', 'Salvador', 'Montevideo', 'Belo Horizonte'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which driver won his seventh Formula 1 world title in 2020, equalling Michael Schumacher''s record?', NULL,
        'Lewis Hamilton', ARRAY['Sebastian Vettel', 'Fernando Alonso', 'Max Verstappen', 'Nico Rosberg', 'Kimi Räikkönen', 'Jenson Button'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'In the 1980 "Miracle on Ice" at Lake Placid, the US Olympic team stunned which country?', NULL,
        'The Soviet Union', ARRAY['Finland', 'Canada', 'Sweden', 'Czechoslovakia', 'East Germany', 'West Germany'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which country won the first Rugby World Cup, in 1987?', NULL,
        'New Zealand', ARRAY['Australia', 'South Africa', 'England', 'France', 'Wales', 'Ireland'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How many minutes long is a regulation NBA game?', NULL,
        '48', ARRAY['40', '60', '44', '36', '50', '52'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which golfer was nicknamed "the Golden Bear"?', NULL,
        'Jack Nicklaus', ARRAY['Arnold Palmer', 'Gary Player', 'Tom Watson', 'Greg Norman', 'Lee Trevino', 'Ben Hogan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In which athletics event did Dick Fosbury win Olympic gold in 1968 with his backward "Flop"?', NULL,
        'High jump', ARRAY['Pole vault', 'Long jump', 'Triple jump', 'Hurdles', 'Steeplechase', 'Javelin'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Who holds MLB''s officially recognized single-season home run record, with 73 in 2001?', NULL,
        'Barry Bonds', ARRAY['Babe Ruth', 'Mark McGwire', 'Sammy Sosa', 'Roger Maris', 'Hank Aaron', 'Aaron Judge'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In snooker, what score is a standard "maximum break"?', NULL,
        '147', ARRAY['167', '100', '180', '200', '50', '120'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which racehorse won the US Triple Crown in 1973 by a record margin?', NULL,
        'Secretariat', ARRAY['Seabiscuit', 'Man o'' War', 'American Pharoah', 'Citation', 'War Admiral', 'Affirmed'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In what year were the first Winter Olympic Games held?', NULL,
        '1924', ARRAY['1920', '1928', '1900', '1932', '1912', '1936'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which quarterback won his seventh Super Bowl in February 2021, more than any other player had?', NULL,
        'Tom Brady', ARRAY['Peyton Manning', 'Joe Montana', 'Patrick Mahomes', 'Terry Bradshaw', 'Aaron Rodgers', 'Drew Brees'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'In what year were women first allowed to compete in the modern Olympic Games?', NULL,
        '1900', ARRAY['1896', '1912', '1920', '1924', '1908', '1932'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which cyclist was stripped of his record seven Tour de France titles following a doping scandal?', NULL,
        'Lance Armstrong', ARRAY['Greg LeMond', 'Eddy Merckx', 'Miguel Indurain', 'Jan Ullrich', 'Alberto Contador', 'Chris Froome'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which country''s cricket team is nicknamed "the Baggy Greens"?', NULL,
        'Australia', ARRAY['England', 'India', 'South Africa', 'New Zealand', 'Pakistan', 'Sri Lanka'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Who won all four Grand Slam singles titles and Olympic gold in 1988, the "Golden Slam"?', NULL,
        'Steffi Graf', ARRAY['Martina Navratilova', 'Chris Evert', 'Monica Seles', 'Serena Williams', 'Margaret Court', 'Gabriela Sabatini'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'How long is a cricket pitch, from stumps to stumps?', NULL,
        '22 yards', ARRAY['20 yards', '25 yards', '18 yards', '24 yards', '30 yards', '11 yards'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which baseball player broke Lou Gehrig''s record for consecutive games played in 1995?', NULL,
        'Cal Ripken Jr.', ARRAY['Pete Rose', 'Derek Jeter', 'Tony Gwynn', 'Ozzie Smith', 'Kirby Puckett', 'Don Mattingly'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which NHL star scored 92 goals in a single season, 1981-82?', NULL,
        'Wayne Gretzky', ARRAY['Mario Lemieux', 'Brett Hull', 'Bobby Orr', 'Gordie Howe', 'Mark Messier', 'Mike Bossy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Winter Olympic sport combines cross-country skiing with rifle shooting?', NULL,
        'Biathlon', ARRAY['Nordic combined', 'Modern pentathlon', 'Skeleton', 'Duathlon', 'Ski jumping', 'Triathlon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which city hosted the first Olympic Games held in Asia, in 1964?', NULL,
        'Tokyo', ARRAY['Seoul', 'Beijing', 'Osaka', 'Sapporo', 'Manila', 'Bangkok'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which sailing trophy, first won in 1851, is often called the oldest trophy in international sport?', NULL,
        'The America''s Cup', ARRAY['The Admiral''s Cup', 'The Fastnet Trophy', 'The Louis Vuitton Cup', 'The Davis Cup', 'The Commodore''s Cup', 'The Ryder Cup'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'What was the 1974 heavyweight title fight in Kinshasa, Zaire, nicknamed?', NULL,
        'The Rumble in the Jungle', ARRAY['The Thrilla in Manila', 'The Fight of the Century', 'The Brawl in Montreal', 'The Long Count Fight', 'The Battle of the Titans', 'The War'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which Ethiopian runner won the 1960 Olympic marathon in Rome running barefoot?', NULL,
        'Abebe Bikila', ARRAY['Haile Gebrselassie', 'Kenenisa Bekele', 'Emil Zátopek', 'Mamo Wolde', 'Frank Shorter', 'Eliud Kipchoge'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'SPORTS_BATCH_1', NULL,
        'Which American swimmer won seven gold medals at the 1972 Munich Olympics?', NULL,
        'Mark Spitz', ARRAY['Matt Biondi', 'Johnny Weissmuller', 'Don Schollander', 'Gary Hall', 'John Naber', 'Ryan Lochte'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which Atlanta Braves slugger hit his record-breaking 715th career home run in April 1974?', NULL,
        'Hank Aaron', ARRAY['Willie Mays', 'Mickey Mantle', 'Roberto Clemente', 'Frank Robinson', 'Harmon Killebrew', 'Reggie Jackson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SPORTS', 'ORIGINAL', NULL,
        'Which tennis star won nine Wimbledon singles titles between 1978 and 1990?', NULL,
        'Martina Navratilova', ARRAY['Chris Evert', 'Billie Jean King', 'Serena Williams', 'Margaret Court', 'Evonne Goolagong', 'Venus Williams'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SPORTS';
