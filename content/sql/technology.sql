-- ============================================================================
-- content/sql/technology.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/technology.csv, the master copy of the
-- Thinking Pants category TECHNOLOGY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 66 live questions
-- (100: 19, 200: 15, 300: 15, 400: 17), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'TECHNOLOGY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "WWW" stand for in a website address?', NULL,
        'World Wide Web', ARRAY['World Wide Wire', 'Wide World Web', 'World Web Wire', 'Worldwide Warehouse', 'Web Wide World', 'World Wire Web'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What company created the iPhone?', NULL,
        'Apple', ARRAY['Samsung', 'Google', 'Microsoft', 'Sony', 'Nokia', 'Motorola'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "PC" commonly stand for?', NULL,
        'Personal Computer', ARRAY['Processing Chip', 'Power Cable', 'Programmable Circuit', 'Public Computer', 'Primary Core', 'Portable Console'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What is the name of the search engine company founded by Larry Page and Sergey Brin?', NULL,
        'Google', ARRAY['Yahoo', 'Bing', 'Apple', 'Amazon', 'Meta', 'Netscape'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which company developed the Windows operating system?', NULL,
        'Microsoft', ARRAY['Apple', 'IBM', 'Google', 'Intel', 'Oracle', 'Sony'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "AI" commonly stand for in technology?', NULL,
        'Artificial Intelligence', ARRAY['Automated Interface', 'Analog Integration', 'Applied Informatics', 'Advanced Interaction', 'Automated Intelligence', 'Artificial Interface'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What is the name of Amazon''s voice-activated virtual assistant?', NULL,
        'Alexa', ARRAY['Siri', 'Cortana', 'Bixby', 'Google Assistant', 'Watson', 'Echo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which company created the PlayStation gaming console?', NULL,
        'Sony', ARRAY['Microsoft', 'Nintendo', 'Sega', 'Atari', 'Samsung', 'Panasonic'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "GPS" stand for?', NULL,
        'Global Positioning System', ARRAY['Geographic Pathing Signal', 'General Position Sensor', 'Ground Position Scanner', 'Global Pathway Service', 'General Positioning System', 'Geo Positioning Signal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who co-founded the company behind Windows with his childhood friend Paul Allen in 1975?', NULL,
        'Bill Gates', ARRAY['Steve Jobs', 'Steve Ballmer', 'Larry Ellison', 'Michael Dell', 'Jeff Bezos', 'Steve Wozniak'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who founded Amazon in 1994, starting out by selling books online?', NULL,
        'Jeff Bezos', ARRAY['Elon Musk', 'Bill Gates', 'Larry Page', 'Jack Ma', 'Mark Zuckerberg', 'Steve Jobs'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who launched Facebook from his Harvard dorm room?', NULL,
        'Mark Zuckerberg', ARRAY['Jack Dorsey', 'Evan Spiegel', 'Kevin Systrom', 'Sean Parker', 'Larry Page', 'Elon Musk'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which company makes the Galaxy line of phones?', NULL,
        'Samsung', ARRAY['Apple', 'Google', 'LG', 'Sony', 'Huawei', 'Motorola'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Japanese company created Mario and the Game Boy?', NULL,
        'Nintendo', ARRAY['Sega', 'Sony', 'Atari', 'Capcom', 'Namco', 'Konami'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who was granted the first U.S. patent for the telephone, in 1876?', NULL,
        'Alexander Graham Bell', ARRAY['Thomas Edison', 'Samuel Morse', 'Guglielmo Marconi', 'Nikola Tesla', 'Elisha Gray', 'Antonio Meucci'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which California region, nicknamed for the material in computer chips, is home to many tech giants?', NULL,
        'Silicon Valley', ARRAY['Death Valley', 'Napa Valley', 'Central Valley', 'San Fernando Valley', 'Sonoma Valley', 'Yosemite Valley'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'On most computers, what does pressing Ctrl+Z (or Cmd+Z) do?', NULL,
        'Undo', ARRAY['Redo', 'Save', 'Copy', 'Paste', 'Print', 'Select all'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Binary code is written using which two digits?', NULL,
        '0 and 1', ARRAY['1 and 2', '0 and 9', '1 and 10', '0 and 2', '1 and 7', '8 and 9'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which 1980 arcade game stars a yellow circle that eats dots while dodging ghosts?', NULL,
        'Pac-Man', ARRAY['Space Invaders', 'Donkey Kong', 'Frogger', 'Galaga', 'Asteroids', 'Centipede'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "USB" stand for?', NULL,
        'Universal Serial Bus', ARRAY['Universal System Board', 'Unified Serial Board', 'Universal Storage Bus', 'United Serial Bus', 'Unified System Bus', 'Universal Signal Bus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What year was the first iPhone released?', NULL,
        '2007', ARRAY['2005', '2009', '2010', '2003', '2006', '2008'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which programming language shares its name with an Indonesian island and a type of coffee?', NULL,
        'Java', ARRAY['Python', 'Ruby', 'Swift', 'Perl', 'Kotlin', 'C++'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which engineer co-founded a computer company with Steve Jobs in 1976 and designed its first two computers?', NULL,
        'Steve Wozniak', ARRAY['Bill Gates', 'Tim Cook', 'Jony Ive', 'Jeff Bezos', 'Larry Ellison', 'Ronald Wayne'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "RAM" stand for in computing?', NULL,
        'Random Access Memory', ARRAY['Rapid Access Module', 'Read Access Memory', 'Remote Access Module', 'Rapid Allocation Memory', 'Read-Ahead Memory', 'Random Allocation Module'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What do the letters QWERTY on a keyboard come from?', NULL,
        'The first six letters of the top letter row', ARRAY['Its inventor''s initials', 'A Dutch word for "typewriter"', 'The sound of typing', 'The company that first made it', 'A Greek word for "keys"', 'The six most-used letters in English'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which video site, founded in 2005, was bought by a search giant in 2006 for $1.65 billion?', NULL,
        'YouTube', ARRAY['Vimeo', 'Dailymotion', 'Myspace', 'Hulu', 'Twitch', 'Netflix'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which American inventor created the phonograph in 1877?', NULL,
        'Thomas Edison', ARRAY['Alexander Graham Bell', 'Emile Berliner', 'George Westinghouse', 'Samuel Morse', 'Guglielmo Marconi', 'Nikola Tesla'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Serbian-American inventor championed alternating current (AC) and later had an electric car company named after him?', NULL,
        'Nikola Tesla', ARRAY['Thomas Edison', 'George Westinghouse', 'Michael Faraday', 'Guglielmo Marconi', 'Alessandro Volta', 'Andre-Marie Ampere'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which German goldsmith built a movable-type printing press in Mainz around 1440?', NULL,
        'Johannes Gutenberg', ARRAY['William Caxton', 'Aldus Manutius', 'Martin Luther', 'Albrecht Durer', 'Johannes Kepler', 'Gottfried Leibniz'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'How many bits are in a byte?', NULL,
        '8', ARRAY['4', '10', '12', '16', '32', '64'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Alan Turing helped crack the codes of which German cipher machine at Bletchley Park?', NULL,
        'Enigma', ARRAY['Colossus', 'Bombe', 'Purple', 'Sigaba', 'Typex', 'Hagelin'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which code of dots and dashes was used to send telegraph messages?', NULL,
        'Morse code', ARRAY['Binary code', 'Braille', 'Semaphore', 'Bar code', 'Navajo code', 'Q code'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which social network had a little blue bird as its logo before it was renamed X in 2023?', NULL,
        'Twitter', ARRAY['Tumblr', 'Myspace', 'Bluesky', 'Threads', 'Snapchat', 'Pinterest'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What is "phishing"?', NULL,
        'Tricking people into handing over passwords or personal details', ARRAY['Downloading music illegally', 'Secretly turning on a webcam', 'Flooding a website with traffic', 'Copying software without paying', 'Tracking people with cookies', 'Mining cryptocurrency on your computer'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "HTTP" stand for?', NULL,
        'HyperText Transfer Protocol', ARRAY['HyperText Transmission Process', 'High Transfer Text Protocol', 'Hyperlink Transfer Text Process', 'Home Text Transfer Protocol', 'HyperText Technical Protocol', 'High-Text Transit Protocol'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In what year was Facebook founded?', NULL,
        '2004', ARRAY['2002', '2006', '2008', '2001', '2003', '2005'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which British computer scientist invented the web while working at CERN in 1989?', NULL,
        'Tim Berners-Lee', ARRAY['Vint Cerf', 'Bill Gates', 'Steve Jobs', 'Larry Page', 'Marc Andreessen', 'Alan Turing'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which 1977 home console, with wood-grain trim and a joystick, made swappable game cartridges popular?', NULL,
        'Atari 2600', ARRAY['Magnavox Odyssey', 'ColecoVision', 'Intellivision', 'Nintendo Entertainment System', 'Sega Genesis', 'Atari 5200'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does "PDF" stand for?', NULL,
        'Portable Document Format', ARRAY['Printable Document File', 'Public Data Format', 'Portable Data File', 'Print-Ready Document Format', 'Protected Document File', 'Personal Document Folder'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1947, engineers found what stuck in a Harvard computer and taped it into the logbook as the "first actual case of bug being found"?', NULL,
        'A moth', ARRAY['A cockroach', 'A beetle', 'A spider', 'A mouse', 'A fly', 'A cricket'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does the Turing test check?', NULL,
        'Whether a machine can pass for a human', ARRAY['How fast a computer can calculate', 'Whether a code can be cracked', 'How long a battery lasts', 'Whether a program has bugs', 'How much data a chip can store', 'Whether a network is secure'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Gordon Moore and Robert Noyce co-founded which chipmaker in 1968?', NULL,
        'Intel', ARRAY['AMD', 'Texas Instruments', 'Fairchild Semiconductor', 'Motorola', 'Nvidia', 'Qualcomm'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'The word "pixel" is short for what?', NULL,
        'Picture element', ARRAY['Picture cell', 'Pigment element', 'Photo element', 'Picture excerpt', 'Pictorial cell', 'Printed element'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which programming language did Guido van Rossum name after a British comedy troupe?', NULL,
        'Python', ARRAY['Ruby', 'Perl', 'Swift', 'Rust', 'Lua', 'Kotlin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Nokia began in 1865 as a paper mill in what is now which country?', NULL,
        'Finland', ARRAY['Sweden', 'Norway', 'Denmark', 'Estonia', 'Germany', 'Netherlands'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which free operating system did student Linus Torvalds release in 1991?', NULL,
        'Linux', ARRAY['Unix', 'MS-DOS', 'FreeBSD', 'Minix', 'Solaris', 'OS/2'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does a "404" error on a website mean?', NULL,
        'The page was not found', ARRAY['The server is overloaded', 'Your password is wrong', 'You have no internet connection', 'Access is forbidden', 'The page has moved permanently', 'The site is down for maintenance'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Spotify was founded in 2006 in which country?', NULL,
        'Sweden', ARRAY['Norway', 'Denmark', 'Finland', 'Netherlands', 'Germany', 'Estonia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which tech company is nicknamed "Big Blue"?', NULL,
        'IBM', ARRAY['Intel', 'Microsoft', 'HP', 'Dell', 'Cisco', 'Oracle'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What was the name of one of the first widely-used graphical web browsers, released in 1993?', NULL,
        'Mosaic', ARRAY['Netscape Navigator', 'Internet Explorer', 'Lynx', 'Opera', 'Safari', 'Firefox'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        '"Wi-Fi" is often said to stand for "wireless fidelity." What does it officially stand for?', NULL,
        'Nothing; it is a made-up brand name', ARRAY['Wireless Fidelity', 'Wireless Field', 'Wide Fidelity', 'Wireless Frequency', 'Wired Fiber', 'Wireless Finder'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which English mathematician designed the Analytical Engine, a mechanical general-purpose computer that was never built?', NULL,
        'Charles Babbage', ARRAY['Alan Turing', 'George Boole', 'John von Neumann', 'Isaac Newton', 'Blaise Pascal', 'Gottfried Leibniz'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which 1940s machine, built at the University of Pennsylvania, was one of the first general-purpose electronic computers?', NULL,
        'ENIAC', ARRAY['UNIVAC', 'Colossus', 'EDSAC', 'Harvard Mark I', 'Z3', 'Manchester Baby'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does Moore''s Law predict?', NULL,
        'The number of transistors on a chip doubles about every two years', ARRAY['Computer prices halve every year', 'Internet speeds double every decade', 'Batteries last twice as long every five years', 'Screen sizes double every three years', 'Software gets slower as chips get faster', 'Data storage costs fall by 10% a year'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Martin Cooper made the first handheld cell-phone call in 1973 while working for which company?', NULL,
        'Motorola', ARRAY['Nokia', 'Ericsson', 'AT&T', 'IBM', 'Siemens', 'NEC'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1992, the first text message (SMS) was sent from a computer to a phone. What did it say?', NULL,
        'Merry Christmas', ARRAY['Hello World', 'Can you read this?', 'Testing 1, 2, 3', 'Happy New Year', 'Are you there?', 'Mr. Watson, come here'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'eBay''s founder made the very first sale on his site in 1995. What was it?', NULL,
        'A broken laser pointer', ARRAY['A Pez dispenser', 'A used guitar', 'A signed baseball', 'A Beanie Baby', 'A vintage typewriter', 'A Star Wars figure'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who invented the computer mouse in the 1960s and showed it off in "The Mother of All Demos"?', NULL,
        'Douglas Engelbart', ARRAY['Steve Jobs', 'Alan Kay', 'Vint Cerf', 'Ted Nelson', 'Ivan Sutherland', 'Steve Wozniak'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Bluetooth is named after a 10th-century king of which country?', NULL,
        'Denmark', ARRAY['Sweden', 'Finland', 'Iceland', 'Scotland', 'England', 'Germany'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'The first message ever sent over ARPANET, in 1969, was meant to be "LOGIN." What actually got through before the system crashed?', NULL,
        'LO', ARRAY['L', 'LOG', 'LOGI', 'HELLO', 'HI', 'OK'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Hollywood star co-patented a "frequency hopping" radio system in 1942 to help guide torpedoes?', NULL,
        'Hedy Lamarr', ARRAY['Marlene Dietrich', 'Greta Garbo', 'Ingrid Bergman', 'Rita Hayworth', 'Lana Turner', 'Joan Crawford'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'QR codes were invented in Japan in 1994 to keep track of what?', NULL,
        'Car parts', ARRAY['Library books', 'Airline luggage', 'Supermarket groceries', 'Mail parcels', 'Hospital patients', 'Train tickets'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1996, what did Larry Page and Sergey Brin first call their search engine?', NULL,
        'BackRub', ARRAY['Googol', 'PageRank', 'Stanford Search', 'WebCrawler', 'Archie', 'LinkSearch'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which company''s Palo Alto lab built the Alto, an early computer with windows, icons and a mouse that inspired the Macintosh?', NULL,
        'Xerox', ARRAY['IBM', 'Hewlett-Packard', 'Atari', 'Texas Instruments', 'Intel', 'Bell Labs'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'IBM''s Simon, sold in 1994, is often called the first what?', NULL,
        'Smartphone', ARRAY['Laptop', 'Tablet', 'Smartwatch', 'Pager', 'E-reader', 'Flip phone'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Amazon was first incorporated in 1994 under which name, dropped because it sounded like ''cadaver''?', NULL,
        'Cadabra', ARRAY['Relentless', 'Bookshelf', 'BookStack', 'Bookworld', 'Zon', 'Bezos Books'], 400);

COMMIT;

-- Check: should return 66.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'TECHNOLOGY';
