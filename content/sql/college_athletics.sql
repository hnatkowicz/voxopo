-- ============================================================================
-- content/sql/college_athletics.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/college_athletics.csv, the master copy of the
-- Thinking Pants category COLLEGE_ATHLETICS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'COLLEGE_ATHLETICS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The NCAA basketball tournament every spring is better known by what nickname?', NULL,
        'March Madness', ARRAY['April Showdown', 'Hoop Dreams', 'Spring Fever', 'Bracket Bash', 'Court Week', 'The Hardwood Classic'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In the NCAA basketball tournament, what is the last weekend, when only the national semifinalists remain, called?', NULL,
        'The Final Four', ARRAY['The Elite Eight', 'The Sweet Sixteen', 'The Frozen Four', 'The Fab Four', 'The Last Dance', 'The Big Four'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In the NCAA tournament, a low seed that makes a surprise run is nicknamed after which fairy-tale character?', NULL,
        'Cinderella', ARRAY['Snow White', 'Rapunzel', 'Goldilocks', 'Pinocchio', 'Little Red Riding Hood', 'Sleeping Beauty'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'After winning the NCAA basketball title, players traditionally climb a ladder and cut down what?', NULL,
        'The nets', ARRAY['The banners', 'The rims', 'The scoreboard ribbons', 'The bracket poster', 'The team flag', 'The curtains'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which college bowl game, first played in 1902, is nicknamed "The Granddaddy of Them All"?', NULL,
        'The Rose Bowl', ARRAY['The Orange Bowl', 'The Sugar Bowl', 'The Cotton Bowl', 'The Fiesta Bowl', 'The Sun Bowl', 'The Gator Bowl'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Sugar Bowl is traditionally played in which city?', NULL,
        'New Orleans', ARRAY['Miami', 'Atlanta', 'Houston', 'Baton Rouge', 'Memphis', 'Tampa'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The bronze Heisman Trophy statue shows a player doing what?', NULL,
        'Stiff-arming a defender', ARRAY['Throwing a pass', 'Kicking a field goal', 'Spiking the ball', 'Catching a pass', 'Diving into the end zone', 'Raising his helmet'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In which city is the Heisman Trophy traditionally presented each December?', NULL,
        'New York City', ARRAY['Chicago', 'Los Angeles', 'Atlanta', 'Dallas', 'Las Vegas', 'South Bend'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which coach won seven national football titles, six of them at Alabama, before retiring in 2024?', NULL,
        'Nick Saban', ARRAY['Bear Bryant', 'Urban Meyer', 'Kirby Smart', 'Dabo Swinney', 'Jimbo Fisher', 'Les Miles'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which legendary Alabama football coach was famous for his houndstooth hat?', NULL,
        'Bear Bryant', ARRAY['Nick Saban', 'Woody Hayes', 'Knute Rockne', 'Bobby Bowden', 'Vince Lombardi', 'Darrell Royal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        '"Coach K," who won five national titles at Duke before retiring in 2022, is which coach?', NULL,
        'Mike Krzyzewski', ARRAY['Roy Williams', 'Dean Smith', 'Bob Knight', 'John Calipari', 'Jim Calhoun', 'Tom Izzo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'John Wooden won 10 NCAA basketball titles coaching which school?', NULL,
        'UCLA', ARRAY['USC', 'Kentucky', 'Indiana', 'Kansas', 'Duke', 'Purdue'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The 1993 movie "Rudy" tells the true story of a walk-on who dreamed of playing football for which school?', NULL,
        'Notre Dame', ARRAY['Michigan', 'USC', 'Boston College', 'Penn State', 'Ohio State', 'Navy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which movie star was a defensive lineman on the University of Miami''s 1991 national championship football team?', NULL,
        'Dwayne Johnson', ARRAY['Vin Diesel', 'John Cena', 'Terry Crews', 'Jason Momoa', 'Dave Bautista', 'Mark Wahlberg'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 2024, which Iowa star passed Pete Maravich to become the top scorer in NCAA Division I basketball history?', NULL,
        'Caitlin Clark', ARRAY['Paige Bueckers', 'Angel Reese', 'Sabrina Ionescu', 'Kelsey Plum', 'Breanna Stewart', 'A''ja Wilson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Magic Johnson''s team beat which future NBA rival in the 1979 NCAA title game?', NULL,
        'Larry Bird', ARRAY['Isiah Thomas', 'Kevin McHale', 'Julius Erving', 'Michael Jordan', 'James Worthy', 'Moses Malone'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'As a college freshman, which future NBA legend hit the winning shot in the 1982 NCAA title game?', NULL,
        'Michael Jordan', ARRAY['James Worthy', 'Patrick Ewing', 'Magic Johnson', 'Isiah Thomas', 'Hakeem Olajuwon', 'Sam Perkins'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which Auburn running back won the 1985 Heisman Trophy and later became a Major League Baseball All-Star?', NULL,
        'Bo Jackson', ARRAY['Deion Sanders', 'Herschel Walker', 'Brian Jordan', 'Barry Sanders', 'Tony Dorsett', 'Eric Dickerson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1972 federal law opened the door for women''s college sports by banning sex discrimination at schools?', NULL,
        'Title IX', ARRAY['Title VII', 'The Equal Pay Act', 'The Equal Rights Amendment', 'The Civil Rights Act', 'The Amateur Sports Act', 'Title VI'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Gatorade was invented in 1965 to help the football team at which university?', NULL,
        'Florida', ARRAY['Georgia', 'Florida State', 'Miami', 'LSU', 'Auburn', 'Alabama'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What is the nickname of the University of Alabama''s sports teams?', NULL,
        'Crimson Tide', ARRAY['Crimson', 'Red Raiders', 'Razorbacks', 'Volunteers', 'Red Storm', 'Big Red'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What are Duke University''s sports teams called?', NULL,
        'Blue Devils', ARRAY['Tar Heels', 'Demon Deacons', 'Wolfpack', 'Blue Jays', 'Hurricanes', 'Cavaliers'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What are UNC''s sports teams called?', NULL,
        'Tar Heels', ARRAY['Blue Devils', 'Wolfpack', 'Demon Deacons', 'Gamecocks', 'Mountaineers', 'Cavaliers'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What are USC''s sports teams called?', NULL,
        'Trojans', ARRAY['Spartans', 'Bruins', 'Titans', 'Gladiators', 'Warriors', 'Centurions'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which university plays football in a stadium nicknamed "The Big House"?', NULL,
        'Michigan', ARRAY['Ohio State', 'Penn State', 'Michigan State', 'Notre Dame', 'Tennessee', 'Texas A&M'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Fans of which university flash the "Hook ''em Horns" hand sign?', NULL,
        'Texas', ARRAY['Texas A&M', 'Oklahoma', 'Oklahoma State', 'Texas Tech', 'Colorado', 'Arkansas'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which school''s football field is famous for its blue artificial turf?', NULL,
        'Boise State', ARRAY['Kentucky', 'Duke', 'BYU', 'Air Force', 'Memphis', 'Kansas'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which ESPN Saturday show travels to a different college campus each week of the football season?', NULL,
        'College GameDay', ARRAY['SportsCenter', 'First Take', 'Inside the NFL', 'Campus Kickoff', 'Saturday Showdown', 'Gridiron Live'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In college sports, what is a "walk-on"?', NULL,
        'A player who joins without an athletic scholarship', ARRAY['A freshman who sits out a year to keep eligibility', 'A transfer from another school', 'A player who only plays home games', 'A team''s student manager', 'A senior playing a fifth year', 'A backup who only plays on special teams'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Unlike the pros, college baseball players hit with bats made of what?', NULL,
        'Metal', ARRAY['Maple', 'Ash', 'Bamboo', 'Hickory', 'Birch', 'Plastic'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which quarterback became the first sophomore to win the Heisman Trophy, in 2007?', NULL,
        'Tim Tebow', ARRAY['Johnny Manziel', 'Sam Bradford', 'Cam Newton', 'Jameis Winston', 'Matt Leinart', 'Darren McFadden'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 2012, which quarterback became the first freshman to win the Heisman?', NULL,
        'Johnny Manziel', ARRAY['Jameis Winston', 'Tim Tebow', 'Kyler Murray', 'Robert Griffin III', 'Marcus Mariota', 'Baker Mayfield'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Lamar Jackson won the 2016 Heisman Trophy playing for which school?', NULL,
        'Louisville', ARRAY['Kentucky', 'Clemson', 'Florida State', 'Cincinnati', 'Virginia Tech', 'Miami'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Heisman Trophy is named after John Heisman, who was what?', NULL,
        'A college football coach', ARRAY['A Yale running back', 'A New York sportswriter', 'A team doctor', 'The first NFL commissioner', 'A stadium architect', 'A radio announcer'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Pat Summitt won eight national titles coaching women''s basketball at which school?', NULL,
        'Tennessee', ARRAY['UConn', 'Stanford', 'Baylor', 'Louisiana Tech', 'Notre Dame', 'South Carolina'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which coach built UConn''s women''s basketball program into a dynasty?', NULL,
        'Geno Auriemma', ARRAY['Pat Summitt', 'Tara VanDerveer', 'Kim Mulkey', 'Dawn Staley', 'Muffet McGraw', 'Jim Calhoun'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which future NBA legend was a three-time college champion under the name Lew Alcindor?', NULL,
        'Kareem Abdul-Jabbar', ARRAY['Bill Walton', 'Wilt Chamberlain', 'Bill Russell', 'Hakeem Olajuwon', 'Moses Malone', 'Artis Gilmore'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which fiery coach famously threw a chair across the court during a 1985 game?', NULL,
        'Bob Knight', ARRAY['Bobby Bowden', 'Jim Valvano', 'John Thompson', 'Rick Pitino', 'John Calipari', 'Lefty Driesell'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which longtime ESPN analyst became famous for putting on a mascot''s head to make his game pick?', NULL,
        'Lee Corso', ARRAY['Chris Fowler', 'Desmond Howard', 'Pat McAfee', 'Rece Davis', 'Brent Musburger', 'Lou Holtz'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Doug Flutie''s famous 1984 Hail Mary pass, which beat Miami, was thrown for which school?', NULL,
        'Boston College', ARRAY['Boston University', 'Notre Dame', 'Syracuse', 'Penn State', 'Holy Cross', 'Navy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which university''s teams are the Hoosiers?', NULL,
        'Indiana', ARRAY['Purdue', 'Iowa', 'Illinois', 'Kentucky', 'Indiana State', 'Ohio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What are the U.S. Naval Academy''s sports teams called?', NULL,
        'Midshipmen', ARRAY['Sailors', 'Admirals', 'Mariners', 'Black Knights', 'Seahawks', 'Commodores'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Commander-in-Chief''s Trophy is fought for by Army, Navy and which other service academy?', NULL,
        'Air Force', ARRAY['Coast Guard', 'Merchant Marine', 'The Citadel', 'VMI', 'Marine Corps', 'Space Force'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The oldest intercollegiate sporting event in the US, first held in 1852, is a race between Harvard and Yale in which sport?', NULL,
        'Rowing', ARRAY['Sailing', 'Swimming', 'Track', 'Cycling', 'Horse racing', 'Cross-country running'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Boat Race, rowed every spring between Oxford and Cambridge, takes place on which river?', NULL,
        'The Thames', ARRAY['The Cam', 'The Severn', 'The Avon', 'The Trent', 'The Mersey', 'The Cherwell'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'College hockey''s national semifinals and championship game are nicknamed what?', NULL,
        'The Frozen Four', ARRAY['The Ice Bowl', 'The Cold Cup', 'The Final Faceoff', 'The Puck Bowl', 'The Winter Classic', 'The Big Freeze'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Baseball''s College World Series has been played since 1950 in which city?', NULL,
        'Omaha', ARRAY['Williamsport', 'Oklahoma City', 'Kansas City', 'Wichita', 'Des Moines', 'Cooperstown'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The 1980 "Miracle on Ice" US Olympic hockey team was made up mostly of whom?', NULL,
        'College players', ARRAY['NHL stars', 'Minor-league pros', 'Military servicemen', 'High school players', 'Retired pros', 'Canadian-born players'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Uga, a live bulldog, is the mascot of which university?', NULL,
        'Georgia', ARRAY['Mississippi State', 'Yale', 'Georgetown', 'Butler', 'Fresno State', 'Gonzaga'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which school''s mascot is Bucky Badger?', NULL,
        'Wisconsin', ARRAY['Minnesota', 'Iowa', 'Michigan State', 'Nebraska', 'Northwestern', 'Illinois'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Stanford''s teams are the Cardinal, named for a color. What is the band''s famous unofficial mascot?', NULL,
        'A tree', ARRAY['A cardinal bird', 'A grizzly bear', 'A gold prospector', 'A sea lion', 'A covered wagon', 'A redcoat soldier'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Fans of which school "call the Hogs" with "Woo Pig Sooie"?', NULL,
        'Arkansas', ARRAY['Oklahoma', 'Missouri', 'Iowa State', 'Tennessee', 'Ole Miss', 'Texas Tech'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which school''s students stand through the whole football game as "the 12th Man"?', NULL,
        'Texas A&M', ARRAY['Texas', 'LSU', 'Oklahoma', 'Auburn', 'Clemson', 'Penn State'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which bluegrass song do Volunteers fans in Knoxville sing as their unofficial fight song?', NULL,
        'Rocky Top', ARRAY['Tennessee Waltz', 'Take Me Home, Country Roads', 'Sweet Home Alabama', 'Wagon Wheel', 'Friends in Low Places', 'Copperhead Road'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which university''s football home is nicknamed "Happy Valley"?', NULL,
        'Penn State', ARRAY['Michigan State', 'Pittsburgh', 'West Virginia', 'Ohio State', 'Virginia Tech', 'Syracuse'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Ohio State''s "Buckeyes" are named after what?', NULL,
        'The nut of a local tree', ARRAY['A breed of deer', 'A frontier fort', 'A river in Ohio', 'A pioneer''s nickname', 'A type of corn', 'A Civil War regiment'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which in-state football rivalry is called the Iron Bowl?', NULL,
        'Alabama vs. Auburn', ARRAY['Georgia vs. Georgia Tech', 'Ole Miss vs. Mississippi State', 'Tennessee vs. Vanderbilt', 'Florida vs. Florida State', 'Pitt vs. Penn State', 'Clemson vs. South Carolina'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Football''s "Egg Bowl" is the rivalry between Mississippi State and which school?', NULL,
        'Ole Miss', ARRAY['Southern Miss', 'Alabama', 'LSU', 'Jackson State', 'Memphis', 'Tulane'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which UC campus''s teams are famously called the Banana Slugs?', NULL,
        'UC Santa Cruz', ARRAY['UC Irvine', 'UC Davis', 'UC San Diego', 'UC Santa Barbara', 'UC Berkeley', 'UC Riverside'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Before the College Football Playoff, what did "BCS" stand for?', NULL,
        'Bowl Championship Series', ARRAY['Bowl Coalition System', 'Best College Standings', 'Bowl Computer Standings', 'Big Conference Schedule', 'Bowl Champions Selection', 'Ballot of College Sportswriters'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Little Brown Jug, college football''s oldest rivalry trophy, goes to the winner of the Wolverines'' game against which team?', NULL,
        'Minnesota', ARRAY['Wisconsin', 'Iowa', 'Ohio State', 'Michigan State', 'Illinois', 'Northwestern'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The Old Oaken Bucket goes to the winner of which in-state football rivalry?', NULL,
        'Indiana vs. Purdue', ARRAY['Iowa vs. Iowa State', 'Kansas vs. Kansas State', 'Illinois vs. Northwestern', 'Michigan vs. Michigan State', 'Oregon vs. Oregon State', 'Ole Miss vs. Mississippi State'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which rivalry is played every October at the Cotton Bowl stadium in Dallas, during the state fair?', NULL,
        'Texas vs. Oklahoma', ARRAY['Texas vs. Texas A&M', 'Oklahoma vs. Oklahoma State', 'Baylor vs. TCU', 'Texas vs. Arkansas', 'SMU vs. TCU', 'Texas Tech vs. Baylor'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In the 2013 "Kick Six," Auburn beat Alabama when Chris Davis ran back what for a touchdown?', NULL,
        'A missed field goal', ARRAY['A blocked punt', 'An interception', 'A fumble', 'A kickoff', 'An onside kick', 'A blocked extra point'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which future president played George Gipp ("win one for the Gipper") in the 1940 film "Knute Rockne, All American"?', NULL,
        'Ronald Reagan', ARRAY['Gerald Ford', 'John F. Kennedy', 'Dwight Eisenhower', 'Richard Nixon', 'Lyndon Johnson', 'Harry Truman'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1991 Heisman winner struck the Heisman pose in the end zone after a punt return, and later became a Super Bowl MVP?', NULL,
        'Desmond Howard', ARRAY['Charles Woodson', 'Tim Brown', 'Rocket Ismail', 'Deion Sanders', 'Ty Detmer', 'Eddie George'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 1997, who became the first mainly defensive player to win the Heisman Trophy?', NULL,
        'Charles Woodson', ARRAY['Peyton Manning', 'Ryan Leaf', 'Deion Sanders', 'Ndamukong Suh', 'Manti Te''o', 'Lawrence Taylor'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Who was the first player to win the Heisman Trophy twice?', NULL,
        'Archie Griffin', ARRAY['Tim Tebow', 'Herschel Walker', 'Tony Dorsett', 'Earl Campbell', 'Doak Walker', 'Glenn Davis'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1963 Heisman winner served in the Navy, including a tour in Vietnam, before becoming a Dallas Cowboys star?', NULL,
        'Roger Staubach', ARRAY['Joe Bellino', 'Pete Dawkins', 'Doc Blanchard', 'Joe Namath', 'Terry Bradshaw', 'Don Meredith'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which Duke player hit "The Shot," a turnaround buzzer-beater after a full-court pass, in the 1992 NCAA tournament?', NULL,
        'Christian Laettner', ARRAY['Bobby Hurley', 'J.J. Redick', 'Shane Battier', 'Jay Williams', 'Elton Brand', 'Danny Ferry'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Jim Valvano, famous for his "Don''t give up... don''t ever give up!" speech, coached which school to a stunning 1983 NCAA title?', NULL,
        'NC State', ARRAY['North Carolina', 'Villanova', 'Houston', 'Georgetown', 'Wake Forest', 'Louisville'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'After Lew Alcindor''s dominance, college basketball banned what from 1967 to 1976?', NULL,
        'The dunk', ARRAY['The hook shot', 'The zone defense', 'The bank shot', 'The jump ball', 'The full-court press', 'The fast break'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which redheaded center made 21 of 22 shots in the 1973 NCAA final and later became a famously offbeat TV analyst?', NULL,
        'Bill Walton', ARRAY['Dave Cowens', 'Bill Russell', 'Kevin McHale', 'Dan Issel', 'Tom Heinsohn', 'Bill Laimbeer'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 2018, which school became the first No. 16 seed to beat a No. 1 seed in the men''s NCAA tournament?', NULL,
        'UMBC', ARRAY['Fairleigh Dickinson', 'Saint Peter''s', 'Florida Gulf Coast', 'Norfolk State', 'George Mason', 'Lehigh'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What song plays over the highlights after the NCAA men''s basketball championship game?', NULL,
        'One Shining Moment', ARRAY['We Are the Champions', 'Glory Days', 'Eye of the Tiger', 'Simply the Best', 'The Final Countdown', 'Hold On'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 2024, which Stanford coach retired with what was then the most wins in college basketball history?', NULL,
        'Tara VanDerveer', ARRAY['Pat Summitt', 'Geno Auriemma', 'Kim Mulkey', 'C. Vivian Stringer', 'Muffet McGraw', 'Sylvia Hatchell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Soccer star Mia Hamm won four NCAA titles at which school?', NULL,
        'North Carolina', ARRAY['Stanford', 'UCLA', 'Notre Dame', 'Florida State', 'Virginia', 'Santa Clara'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In Ohio State''s "Script Ohio," what does a sousaphone player get the honor of doing?', NULL,
        'Dotting the i', ARRAY['Leading the drumline', 'Carrying the flag', 'Twirling the baton', 'Playing the final solo', 'Ringing the victory bell', 'Crossing the t'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Ralphie, a live buffalo who charges across the field before home games, is the mascot of which university?', NULL,
        'Colorado', ARRAY['Wyoming', 'Montana', 'North Dakota State', 'Colorado State', 'Utah', 'Oklahoma State'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Oklahoma''s "Sooners" nickname refers to settlers who did what?', NULL,
        'Claimed land before the official start of the land run', ARRAY['Arrived sooner than the railroad', 'Struck oil first', 'Founded the university', 'Fought in the Civil War', 'Settled after the Dust Bowl', 'Arrived by covered wagon'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Oregon''s Duck mascot is based on which cartoon character, thanks to a handshake deal with Walt Disney?', NULL,
        'Donald Duck', ARRAY['Daffy Duck', 'Daisy Duck', 'Scrooge McDuck', 'Darkwing Duck', 'Howard the Duck', 'Launchpad McQuack'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Before breaking baseball''s color barrier, Jackie Robinson was the first athlete at his university to letter in how many sports?', NULL,
        'Four sports', ARRAY['Two sports', 'Three sports', 'Five sports', 'Six sports', 'Seven sports'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which Nebraska football coach won three national titles in the 1990s and then served in Congress?', NULL,
        'Tom Osborne', ARRAY['Bob Devaney', 'Barry Switzer', 'Lou Holtz', 'Bobby Bowden', 'Steve Spurrier', 'Frank Solich'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'What are Duke''s famously rowdy student basketball fans called?', NULL,
        'The Cameron Crazies', ARRAY['Krzyzewskiville', 'The Blue Crew', 'The Devil''s Den', 'The Sixth Man', 'The Zoo', 'The Gothic Guard'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which school''s football team runs onto the field to Metallica''s "Enter Sandman"?', NULL,
        'Virginia Tech', ARRAY['West Virginia', 'Clemson', 'Penn State', 'Iowa', 'Oregon', 'Miami'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Before home games, which school''s players rub "Howard''s Rock" and run down a hill into the stadium?', NULL,
        'Clemson', ARRAY['Georgia', 'Auburn', 'LSU', 'Tennessee', 'South Carolina', 'Virginia Tech'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'At Camp Randall Stadium, the whole crowd bounces before the fourth quarter to which 1992 song?', NULL,
        'Jump Around', ARRAY['Jump', 'Kernkraft 400', 'Seven Nation Army', 'Shout', 'Mr. Brightside', 'Rock and Roll Part 2'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In crew, what is the person called who steers the boat and calls the rhythm to the rowers?', NULL,
        'The coxswain', ARRAY['The stroke', 'The bowman', 'The skipper', 'The helmsman', 'The pacer', 'The oarmaster'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 1916, the Yellow Jackets beat tiny Cumberland College in college football''s most lopsided game. What was the score?', NULL,
        '222-0', ARRAY['100-0', '128-0', '150-0', '177-0', '199-0', '256-0'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Nike co-founder and Oregon track coach Bill Bowerman made an early running-shoe sole using what kitchen appliance?', NULL,
        'A waffle iron', ARRAY['A toaster', 'A pressure cooker', 'A cookie press', 'A blender', 'A frying pan', 'A muffin tin'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Paul Bunyan''s Axe goes to the winner of which Big Ten football rivalry?', NULL,
        'Wisconsin and Minnesota', ARRAY['Michigan and Michigan State', 'Minnesota and Iowa', 'Wisconsin and Iowa', 'Michigan and Minnesota', 'Illinois and Northwestern', 'Iowa and Nebraska'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Floyd of Rosedale, a trophy two Big Ten neighbors play for, is a bronze statue of what?', NULL,
        'A pig', ARRAY['A bull', 'A horse', 'A goat', 'A badger', 'A bear', 'A dog'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In the 2007 Fiesta Bowl, the team famous for its blue field beat Oklahoma with a 2-point trick play named after what?', NULL,
        'The Statue of Liberty', ARRAY['The Eiffel Tower', 'The Golden Gate Bridge', 'Mount Rushmore', 'The Lincoln Memorial', 'The Washington Monument', 'Lady Justice'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'After a 49-0 blowout in the first Tournament of Roses football game in 1902, what replaced football there until 1916?', NULL,
        'Chariot races', ARRAY['Bicycle races', 'Rodeos', 'Baseball games', 'Track meets', 'Boxing matches', 'Soccer matches'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In "The Play" (1982), California''s last-second kickoff return ended with a Cal player running over whom in the end zone?', NULL,
        'A trombone player in the band', ARRAY['The opposing coach', 'A cheerleader', 'The referee', 'The mascot', 'A TV cameraman', 'A fan who ran onto the field'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'College football''s "Ten-Year War" (1969-78) was a coaching duel between Woody Hayes and whom?', NULL,
        'Bo Schembechler', ARRAY['Bear Bryant', 'Ara Parseghian', 'Darrell Royal', 'Barry Switzer', 'Duffy Daugherty', 'Lou Holtz'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        '"Pistol Pete" Maravich''s college scoring average, set without a 3-point line from 1967 to 1970, was about how many points per game?', NULL,
        'About 44', ARRAY['About 28', 'About 32', 'About 36', 'About 40', 'About 48', 'About 52'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'UConn''s women''s basketball team won how many games in a row from 2014 to 2017?', NULL,
        '111', ARRAY['88', '90', '75', '100', '121', '135'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Who scored 47 points in the 1993 women''s NCAA championship game?', NULL,
        'Sheryl Swoopes', ARRAY['Lisa Leslie', 'Cynthia Cooper', 'Dawn Staley', 'Rebecca Lobo', 'Chamique Holdsclaw', 'Cheryl Miller'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The 1966 NCAA final, retold in the film "Glory Road," saw an all-Black starting five beat which all-white powerhouse?', NULL,
        'Kentucky', ARRAY['Duke', 'UCLA', 'Kansas', 'Louisville', 'Cincinnati', 'Michigan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1966 Heisman winner returned to coach his alma mater to a national title 30 years later?', NULL,
        'Steve Spurrier', ARRAY['Danny Wuerffel', 'Bobby Bowden', 'Lou Holtz', 'Gene Stallings', 'Howard Schnellenberger', 'Barry Switzer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1993 Heisman-winning quarterback skipped the NFL and played in the NBA instead?', NULL,
        'Charlie Ward', ARRAY['Gino Torretta', 'Rashaan Salaam', 'Eric Crouch', 'Chris Weinke', 'Ty Detmer', 'Danny Wuerffel'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which college football star, runner-up for the 1937 Heisman, later became a U.S. Supreme Court justice?', NULL,
        'Byron White', ARRAY['Earl Warren', 'Warren Burger', 'Lewis Powell', 'William Rehnquist', 'Thurgood Marshall', 'Anthony Kennedy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which Ivy League basketball star became a Rhodes Scholar, a two-time NBA champion and a U.S. senator?', NULL,
        'Bill Bradley', ARRAY['Jack Kemp', 'Kevin Johnson', 'Dave Bing', 'J.C. Watts', 'Steve Largent', 'Tom McMillen'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The first Heisman winner, Jay Berwanger in 1935, played for which school, which gave up big-time football a few years later?', NULL,
        'University of Chicago', ARRAY['Yale', 'Princeton', 'Harvard', 'Columbia', 'Army', 'Penn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'College hockey''s top player award is named after which Ivy League star who died in a plane crash in 1918?', NULL,
        'Hobey Baker', ARRAY['Walter Camp', 'Lord Stanley', 'Jim Thorpe', 'Frank Boucher', 'Herb Brooks', 'Lester Patrick'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which Yale player and coach is called the "Father of American Football" for inventing downs and the line of scrimmage?', NULL,
        'Walter Camp', ARRAY['Amos Alonzo Stagg', 'Pop Warner', 'John Heisman', 'Knute Rockne', 'Fielding Yost', 'Hobey Baker'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'NFL legend Jim Brown is also in the Lacrosse Hall of Fame for his college career at which school?', NULL,
        'Syracuse', ARRAY['Johns Hopkins', 'Maryland', 'Cornell', 'Navy', 'Penn State', 'Virginia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Before his 1912 Olympic golds, Jim Thorpe starred in college football at which school?', NULL,
        'Carlisle Indian Industrial School', ARRAY['Haskell Institute', 'Notre Dame', 'Army', 'Harvard', 'Penn', 'Michigan'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'At a 1935 Big Ten meet, Ohio State''s Jesse Owens set or tied four world records in about how long?', NULL,
        '45 minutes', ARRAY['10 minutes', '90 minutes', '3 hours', '6 hours', 'One full day', 'Two days'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which coach''s "Four Corners" stalling offense helped bring the shot clock to college basketball?', NULL,
        'Dean Smith', ARRAY['Roy Williams', 'Frank McGuire', 'Bob Knight', 'Lefty Driesell', 'John Thompson', 'Adolph Rupp'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The 1976 NCAA men''s basketball champions finished the season with what perfect record?', NULL,
        '32-0', ARRAY['29-0', '30-0', '31-0', '33-0', '34-0', '35-0'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which future U.S. president was a star college center in the 1930s and turned down offers from the Detroit Lions and Green Bay Packers?', NULL,
        'Gerald Ford', ARRAY['Ronald Reagan', 'Dwight Eisenhower', 'John F. Kennedy', 'Richard Nixon', 'Herbert Hoover', 'Lyndon Johnson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which USC women''s basketball legend later became a TV sideline reporter, and is the sister of NBA star Reggie Miller?', NULL,
        'Cheryl Miller', ARRAY['Lisa Leslie', 'Nancy Lieberman', 'Ann Meyers', 'Lynette Woodard', 'Rebecca Lobo', 'Sheryl Swoopes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 1924, sportswriter Grantland Rice nicknamed a famous college backfield after what?', NULL,
        'The Four Horsemen', ARRAY['The Three Musketeers', 'The Seven Blocks of Granite', 'The Galloping Ghosts', 'The Iron Men', 'The Thundering Herd', 'The Four Kings'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'The first college football game, in 1869, was Rutgers against which school?', NULL,
        'Princeton', ARRAY['Harvard', 'Yale', 'Columbia', 'Penn', 'Cornell', 'Brown'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'James Naismith, inventor of basketball, became the first basketball coach at which university?', NULL,
        'Kansas', ARRAY['Springfield College', 'Yale', 'Kentucky', 'Indiana', 'McGill', 'Harvard'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which "NCIS" star was a starting college quarterback and is the son of 1940 Heisman winner Tom Harmon?', NULL,
        'Mark Harmon', ARRAY['Tom Selleck', 'Ed Marinaro', 'Gary Cole', 'Michael Weatherly', 'Kurt Russell', 'Dennis Haysbert'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'In 1984, who became the first Black head coach to win the NCAA men''s basketball title?', NULL,
        'John Thompson', ARRAY['Nolan Richardson', 'Tubby Smith', 'John Chaney', 'George Raveling', 'Clem Haskins', 'Kevin Ollie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'COLLEGE_ATHLETICS', 'COLLEGE_ATHLETICS_BATCH_1', NULL,
        'Which 1970s box-office star was a college running back until injuries ended his football career?', NULL,
        'Burt Reynolds', ARRAY['Clint Eastwood', 'Steve McQueen', 'Robert Redford', 'Paul Newman', 'Charles Bronson', 'Jack Nicholson'], 400);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'COLLEGE_ATHLETICS';
