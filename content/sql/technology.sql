-- ============================================================================
-- content/sql/technology.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/technology.csv, the master copy of the
-- Thinking Pants category TECHNOLOGY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'TECHNOLOGY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "WWW" stand for in a website address?', NULL,
        'World Wide Web', ARRAY['World Wide Wire', 'Wide World Web', 'World Web Wire', 'Worldwide Warehouse', 'Web Wide World', 'World Wire Web'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What company created the iPhone?', NULL,
        'Apple', ARRAY['Samsung', 'Google', 'Microsoft', 'Sony', 'Nokia', 'Motorola'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "PC" commonly stand for?', NULL,
        'Personal Computer', ARRAY['Processing Chip', 'Power Cable', 'Programmable Circuit', 'Public Computer', 'Primary Core', 'Portable Console'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What is the name of the search engine company founded by Larry Page and Sergey Brin?', NULL,
        'Google', ARRAY['Yahoo', 'Bing', 'Apple', 'Amazon', 'Meta', 'Netscape'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which company developed the Windows operating system?', NULL,
        'Microsoft', ARRAY['Apple', 'IBM', 'Google', 'Intel', 'Oracle', 'Sony'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "AI" commonly stand for in technology?', NULL,
        'Artificial Intelligence', ARRAY['Automated Interface', 'Analog Integration', 'Applied Informatics', 'Advanced Interaction', 'Automated Intelligence', 'Artificial Interface'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What is the name of Amazon''s voice-activated virtual assistant?', NULL,
        'Alexa', ARRAY['Siri', 'Cortana', 'Bixby', 'Google Assistant', 'Watson', 'Echo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which company created the PlayStation gaming console?', NULL,
        'Sony', ARRAY['Microsoft', 'Nintendo', 'Sega', 'Atari', 'Samsung', 'Panasonic'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "GPS" stand for?', NULL,
        'Global Positioning System', ARRAY['Geographic Pathing Signal', 'General Position Sensor', 'Ground Position Scanner', 'Global Pathway Service', 'General Positioning System', 'Geo Positioning Signal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who co-founded the company behind Windows with his childhood friend Paul Allen in 1975?', NULL,
        'Bill Gates', ARRAY['Steve Jobs', 'Steve Ballmer', 'Larry Ellison', 'Michael Dell', 'Jeff Bezos', 'Steve Wozniak'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who founded Amazon in 1994, starting out by selling books online?', NULL,
        'Jeff Bezos', ARRAY['Elon Musk', 'Bill Gates', 'Larry Page', 'Jack Ma', 'Mark Zuckerberg', 'Steve Jobs'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who launched Facebook from his Harvard dorm room?', NULL,
        'Mark Zuckerberg', ARRAY['Jack Dorsey', 'Evan Spiegel', 'Kevin Systrom', 'Sean Parker', 'Larry Page', 'Elon Musk'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which company makes the Galaxy line of phones?', NULL,
        'Samsung', ARRAY['Apple', 'Google', 'LG', 'Sony', 'Huawei', 'Motorola'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Japanese company created Mario and the Game Boy?', NULL,
        'Nintendo', ARRAY['Sega', 'Sony', 'Atari', 'Capcom', 'Namco', 'Konami'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who was granted the first U.S. patent for the telephone, in 1876?', NULL,
        'Alexander Graham Bell', ARRAY['Thomas Edison', 'Samuel Morse', 'Guglielmo Marconi', 'Nikola Tesla', 'Elisha Gray', 'Antonio Meucci'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which California region, nicknamed for the material in computer chips, is home to many tech giants?', NULL,
        'Silicon Valley', ARRAY['Death Valley', 'Napa Valley', 'Central Valley', 'San Fernando Valley', 'Sonoma Valley', 'Yosemite Valley'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'On most computers, what does pressing Ctrl+Z (or Cmd+Z) do?', NULL,
        'Undo', ARRAY['Redo', 'Save', 'Copy', 'Paste', 'Print', 'Select all'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Binary code is written using which two digits?', NULL,
        '0 and 1', ARRAY['1 and 2', '0 and 9', '1 and 10', '0 and 2', '1 and 7', '8 and 9'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which 1980 arcade game stars a yellow circle that eats dots while dodging ghosts?', NULL,
        'Pac-Man', ARRAY['Space Invaders', 'Donkey Kong', 'Frogger', 'Galaga', 'Asteroids', 'Centipede'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In the word "email," what does the "e" stand for?', NULL,
        'Electronic', ARRAY['Easy', 'Express', 'External', 'Ethernet', 'Exchange', 'Encrypted'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which key is usually the longest one on a computer keyboard?', NULL,
        'The space bar', ARRAY['The Enter key', 'The Shift key', 'The Tab key', 'The Backspace key', 'The Caps Lock key', 'The Escape key'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call the small picture on a screen that you click to open an app or a file?', NULL,
        'An icon', ARRAY['A cursor', 'A pixel', 'A scroll bar', 'A menu', 'A window', 'A toolbar'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a website or app where people post and comment, like Instagram?', NULL,
        'Social media', ARRAY['A search engine', 'A spreadsheet', 'A web browser', 'An operating system', 'An email client', 'Cloud storage'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is the blinking line that shows where your typing will appear called?', NULL,
        'The cursor', ARRAY['The tab', 'The toolbar', 'The scroll bar', 'The margin', 'The icon', 'The ruler'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On a website, what does "FAQ" stand for?', NULL,
        'Frequently Asked Questions', ARRAY['Facts And Quotes', 'Fast Answer Queue', 'Frequently Answered Queries', 'Files And Questions', 'Free Access Quota', 'Find All Questions'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a picture of your own computer or phone screen?', NULL,
        'A screenshot', ARRAY['A screensaver', 'A wallpaper', 'A webcam', 'A selfie', 'A slideshow', 'A thumbnail'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which bits of data, named after a snack, does a website save in your browser to remember you?', NULL,
        'Cookies', ARRAY['Crumbs', 'Chips', 'Biscuits', 'Crackers', 'Cupcakes', 'Muffins'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which app is known for short videos and a "For You" page?', NULL,
        'TikTok', ARRAY['Instagram', 'Snapchat', 'YouTube', 'Pinterest', 'Twitter', 'Tumblr'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which voice assistant wakes up when an iPhone owner says "Hey" and its name?', NULL,
        'Siri', ARRAY['Alexa', 'Cortana', 'Bixby', 'Jarvis', 'Watson', 'Echo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call the main screen of a computer, where your icons and folders sit?', NULL,
        'The desktop', ARRAY['The dashboard', 'The homepage', 'The taskbar', 'The tabletop', 'The motherboard', 'The control panel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which part of a computer keeps your files saved even when the power is off?', NULL,
        'The hard drive', ARRAY['The RAM', 'The monitor', 'The CPU', 'The power supply', 'The graphics card', 'The keyboard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a computer you can carry, with a screen that folds down over the keyboard?', NULL,
        'A laptop', ARRAY['A tablet', 'A server', 'A mainframe', 'A notepad', 'A console', 'A terminal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        '"App" is short for what word?', NULL,
        'Application', ARRAY['Appliance', 'Apparatus', 'Approval', 'Appendix', 'Apprentice', 'Appointment'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is the box that shares an internet connection around a home by Wi-Fi usually called?', NULL,
        'A router', ARRAY['A server', 'A scanner', 'A speaker', 'A charger', 'A projector', 'A receiver'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Files stored online, so you can reach them from any device, are said to be "in the..." what?', NULL,
        'The cloud', ARRAY['The sky', 'The moon', 'The stars', 'The satellite', 'The rainbow', 'The orbit'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Moving from web page to web page by clicking links is often called what, like riding waves?', NULL,
        'Surfing', ARRAY['Sailing', 'Swimming', 'Diving', 'Rowing', 'Skating', 'Floating'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a computer program that chats with you, like a website''s customer-service helper?', NULL,
        'A chatbot', ARRAY['A chatroom', 'A browser', 'A spreadsheet', 'A firewall', 'A search engine', 'A plug-in'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a show you listen to online, usually released in episodes?', NULL,
        'A podcast', ARRAY['A playlist', 'A broadcast', 'A webinar', 'A vlog', 'A ringtone', 'A newsletter'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On a TV, what does "HD" stand for?', NULL,
        'High Definition', ARRAY['High Density', 'Hyper Display', 'Home Digital', 'Heavy Duty', 'High Detail', 'Half Digital'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does the keyboard key labeled "Esc" stand for?', NULL,
        'Escape', ARRAY['Escalate', 'Escort', 'Escrow', 'Essential', 'Estimate', 'Escalator'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call the small device you hold to change TV channels from across the room?', NULL,
        'A remote control', ARRAY['A joystick', 'A dial', 'A tuner', 'A dongle', 'A trackpad', 'A receiver'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call the pen-like tool for drawing or writing on a tablet''s screen?', NULL,
        'A stylus', ARRAY['A wand', 'A marker', 'A probe', 'A quill', 'A chisel', 'A baton'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a copy of your files kept somewhere else, in case something goes wrong?', NULL,
        'A backup', ARRAY['A download', 'A shortcut', 'A refresh', 'A restart', 'A reboot', 'An upgrade'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does it mean to "reboot" a computer?', NULL,
        'Turn it off and on again', ARRAY['Delete everything on it', 'Clean the screen', 'Buy a new one', 'Change the password', 'Unplug the mouse', 'Give it a kick'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which key do you hold down to type a capital letter?', NULL,
        'The Shift key', ARRAY['The Tab key', 'The Alt key', 'The Ctrl key', 'The Enter key', 'The space bar', 'The Esc key'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On most computers, what shape is the mouse pointer when it isn''t over a link or text?', NULL,
        'An arrow', ARRAY['A hand', 'A cross', 'A circle', 'A star', 'A square', 'A pencil'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which word means copying a file from the internet onto your own device?', NULL,
        'Download', ARRAY['Upload', 'Unload', 'Offload', 'Export', 'Reload', 'Overload'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call the short secret number you type for a bank card or to unlock a phone?', NULL,
        'A PIN', ARRAY['A CVV', 'A ZIP', 'An ID', 'A key', 'A token', 'A tag'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which button in a web browser takes you to the page you were just on?', NULL,
        'The Back button', ARRAY['The Home button', 'The Refresh button', 'The Undo button', 'The Exit button', 'The Close button', 'The Forward button'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is the background picture on a phone''s home screen usually called?', NULL,
        'Wallpaper', ARRAY['Screensaver', 'Banner', 'Poster', 'Canvas', 'Cover', 'Backdrop'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "USB" stand for?', NULL,
        'Universal Serial Bus', ARRAY['Universal System Board', 'Unified Serial Board', 'Universal Storage Bus', 'United Serial Bus', 'Unified System Bus', 'Universal Signal Bus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What year was the first iPhone released?', NULL,
        '2007', ARRAY['2005', '2009', '2010', '2003', '2006', '2008'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which programming language shares its name with an Indonesian island and a type of coffee?', NULL,
        'Java', ARRAY['Python', 'Ruby', 'Swift', 'Perl', 'Kotlin', 'C++'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which engineer co-founded a computer company with Steve Jobs in 1976 and designed its first two computers?', NULL,
        'Steve Wozniak', ARRAY['Bill Gates', 'Tim Cook', 'Jony Ive', 'Jeff Bezos', 'Larry Ellison', 'Ronald Wayne'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "RAM" stand for in computing?', NULL,
        'Random Access Memory', ARRAY['Rapid Access Module', 'Read Access Memory', 'Remote Access Module', 'Rapid Allocation Memory', 'Read-Ahead Memory', 'Random Allocation Module'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What do the letters QWERTY on a keyboard come from?', NULL,
        'The first six letters of the top letter row', ARRAY['Its inventor''s initials', 'A Dutch word for "typewriter"', 'The sound of typing', 'The company that first made it', 'A Greek word for "keys"', 'The six most-used letters in English'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which video site, founded in 2005, was bought by a search giant in 2006 for $1.65 billion?', NULL,
        'YouTube', ARRAY['Vimeo', 'Dailymotion', 'Myspace', 'Hulu', 'Twitch', 'Netflix'], 200, 'The first YouTube video, "Me at the zoo," is about 19 seconds long and was filmed at the San Diego Zoo.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which American inventor created the phonograph in 1877?', NULL,
        'Thomas Edison', ARRAY['Alexander Graham Bell', 'Emile Berliner', 'George Westinghouse', 'Samuel Morse', 'Guglielmo Marconi', 'Nikola Tesla'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Serbian-American inventor championed alternating current (AC) and later had an electric car company named after him?', NULL,
        'Nikola Tesla', ARRAY['Thomas Edison', 'George Westinghouse', 'Michael Faraday', 'Guglielmo Marconi', 'Alessandro Volta', 'Andre-Marie Ampere'], 200, 'The tesla, a unit of magnetic field strength, is named after him.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which German goldsmith built a movable-type printing press in Mainz around 1440?', NULL,
        'Johannes Gutenberg', ARRAY['William Caxton', 'Aldus Manutius', 'Martin Luther', 'Albrecht Durer', 'Johannes Kepler', 'Gottfried Leibniz'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'How many bits are in a byte?', NULL,
        '8', ARRAY['4', '10', '12', '16', '32', '64'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Alan Turing helped crack the codes of which German cipher machine at Bletchley Park?', NULL,
        'Enigma', ARRAY['Colossus', 'Bombe', 'Purple', 'Sigaba', 'Typex', 'Hagelin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which code of dots and dashes was used to send telegraph messages?', NULL,
        'Morse code', ARRAY['Binary code', 'Braille', 'Semaphore', 'Bar code', 'Navajo code', 'Q code'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which social network had a little blue bird as its logo before it was renamed X in 2023?', NULL,
        'Twitter', ARRAY['Tumblr', 'Myspace', 'Bluesky', 'Threads', 'Snapchat', 'Pinterest'], 200, 'The bird was named Larry, after basketball great Larry Bird.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What is "phishing"?', NULL,
        'Tricking people into handing over passwords or personal details', ARRAY['Downloading music illegally', 'Secretly turning on a webcam', 'Flooding a website with traffic', 'Copying software without paying', 'Tracking people with cookies', 'Mining cryptocurrency on your computer'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "CPU" stand for?', NULL,
        'Central Processing Unit', ARRAY['Computer Processing Unit', 'Central Program Utility', 'Core Processing Unit', 'Central Power Unit', 'Computer Power Unit', 'Control Processing Unit'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which Scottish inventor gave the first public demonstration of a working television, in London in 1926?', NULL,
        'John Logie Baird', ARRAY['Philo Farnsworth', 'Vladimir Zworykin', 'Alexander Graham Bell', 'Guglielmo Marconi', 'Thomas Edison', 'Robert Watson-Watt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which word, from the Japanese for "picture" plus "character," names the little pictures like smiley faces that we send in texts?', NULL,
        'Emoji', ARRAY['Emoticon', 'Sticker', 'GIF', 'Meme', 'Avatar', 'Icon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which falling-block puzzle game did Soviet programmer Alexey Pajitnov create in 1984?', NULL,
        'Tetris', ARRAY['Columns', 'Dr. Mario', 'Puyo Puyo', 'Lumines', 'Bejeweled', 'Klax'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which 2009 mobile game from Finland has players slingshot cartoon birds at egg-stealing pigs?', NULL,
        'Angry Birds', ARRAY['Flappy Bird', 'Cut the Rope', 'Fruit Ninja', 'Candy Crush Saga', 'Doodle Jump', 'Temple Run'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "LED" stand for?', NULL,
        'Light-Emitting Diode', ARRAY['Low-Energy Display', 'Light-Enhanced Diode', 'Liquid Electric Display', 'Laser-Emitting Device', 'Light Energy Device', 'Linear Electron Diode'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On a flat screen, what does "LCD" stand for?', NULL,
        'Liquid Crystal Display', ARRAY['Light Color Display', 'Laser Crystal Device', 'Liquid Color Diode', 'Low Contrast Display', 'Lit Crystal Diode', 'Linear Crystal Display'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "ISP" stand for?', NULL,
        'Internet Service Provider', ARRAY['Internet Security Protocol', 'Integrated System Processor', 'Internal Server Port', 'Instant Search Program', 'Internet Speed Package', 'International Signal Provider'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "VPN" stand for?', NULL,
        'Virtual Private Network', ARRAY['Verified Personal Network', 'Visual Protocol Node', 'Virtual Public Node', 'Very Private Network', 'Variable Proxy Network', 'Virtual Protected Number'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is software called when anyone may read, change and share its code?', NULL,
        'Open source', ARRAY['Freeware', 'Shareware', 'Firmware', 'Middleware', 'Spyware', 'Closed source'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which Canadian company made the BlackBerry phone?', NULL,
        'Research In Motion', ARRAY['Nokia', 'Motorola', 'Palm', 'Ericsson', 'Siemens', 'HTC'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which online encyclopedia, launched in 2001, can be edited by anyone?', NULL,
        'Wikipedia', ARRAY['Britannica Online', 'Encarta', 'Wiktionary', 'Quora', 'Ask Jeeves', 'WebMD'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'A computer chip''s speed is often given as "3 GHz." What unit is that?', NULL,
        'Hertz', ARRAY['Bytes', 'Watts', 'Volts', 'Bits', 'Pixels', 'Amps'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which of these is the largest amount of storage?', NULL,
        'A terabyte', ARRAY['A gigabyte', 'A megabyte', 'A kilobyte', 'A byte', 'A bit', 'A nibble'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which white music player, launched in 2001, promised "1,000 songs in your pocket"?', NULL,
        'The iPod', ARRAY['The Walkman', 'The Zune', 'The Discman', 'The Creative Zen', 'The MiniDisc', 'The iRiver'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which portable cassette player, launched in 1979, made music with headphones something you took everywhere?', NULL,
        'The Walkman', ARRAY['The boombox', 'The Discman', 'The iPod', 'The Zune', 'The gramophone', 'The jukebox'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which old storage disk lives on as the picture on the "Save" button in many programs?', NULL,
        'The floppy disk', ARRAY['The CD-ROM', 'The cassette', 'The Zip disk', 'The hard drive', 'The memory card', 'The punch card'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does a firewall do on a computer network?', NULL,
        'Blocks unwanted traffic from getting in', ARRAY['Cools the processor', 'Stops the computer catching fire', 'Speeds up downloads', 'Backs up your files', 'Deletes old emails', 'Charges the battery'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What are the "I''m not a robot" puzzles that ask you to pick out traffic lights called?', NULL,
        'CAPTCHAs', ARRAY['Cookies', 'Pop-ups', 'Spam filters', 'Bot traps', 'Pixel puzzles', 'Firewalls'], 200, 'CAPTCHA stands for "Completely Automated Public Turing test to tell Computers and Humans Apart."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'When a site texts you a code after you type your password, what is that extra step called?', NULL,
        'Two-factor authentication', ARRAY['Encryption', 'A firewall', 'Phishing', 'Cookie consent', 'Password recovery', 'A captcha'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On a radio dial, what does "AM" stand for?', NULL,
        'Amplitude Modulation', ARRAY['Ante Meridiem', 'Audio Mode', 'Analog Music', 'Air Modulation', 'Automatic Mixing', 'Amplified Mono'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which ride-hailing company, founded in 2009, lets you call a car from an app?', NULL,
        'Uber', ARRAY['Lyft', 'Grubhub', 'Airbnb', 'Zipcar', 'DoorDash', 'Waze'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which home-sharing site began in 2008 when its founders rented out air mattresses in their apartment?', NULL,
        'Airbnb', ARRAY['Vrbo', 'Couchsurfing', 'Booking.com', 'Expedia', 'Craigslist', 'Trivago'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which company, founded in 1997 to mail DVDs in red envelopes, became a streaming giant?', NULL,
        'Netflix', ARRAY['Blockbuster', 'Hulu', 'Redbox', 'HBO', 'Roku', 'Disney+'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is software called that secretly watches what you do on your computer?', NULL,
        'Spyware', ARRAY['Adware', 'Freeware', 'Firmware', 'Shareware', 'Bloatware', 'Middleware'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What is malware called that locks up your files until you pay?', NULL,
        'Ransomware', ARRAY['Spyware', 'Adware', 'A worm', 'A keylogger', 'A rootkit', 'Bloatware'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which kind of malware, named after a story from the Greek myths, sneaks in looking like something harmless?', NULL,
        'A Trojan horse', ARRAY['A worm', 'A siren', 'A hydra', 'A cyclops', 'A minotaur', 'A phoenix'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What kind of file is an MP3?', NULL,
        'A sound file', ARRAY['A photo', 'A video', 'A spreadsheet', 'A text document', 'A program', 'A web page'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which internet calling service, launched in 2003 with code written in Estonia, became a verb ("I''ll ___ you later")?', NULL,
        'Skype', ARRAY['FaceTime', 'Zoom', 'Google Talk', 'MSN Messenger', 'ICQ', 'Viber'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What kind of light do most TV remote controls use to send their signal?', NULL,
        'Infrared', ARRAY['Ultraviolet', 'Bluetooth', 'X-rays', 'Microwaves', 'Gamma rays', 'Laser light'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which kind of rechargeable battery powers most phones and laptops?', NULL,
        'Lithium-ion', ARRAY['Nickel-cadmium', 'Alkaline', 'Lead-acid', 'Zinc-carbon', 'Mercury', 'Silver oxide'], 200, 'Lithium-ion batteries won their three inventors the 2019 Nobel Prize in Chemistry.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In an email, what does "CC" stand for?', NULL,
        'Carbon copy', ARRAY['Common contact', 'Confirmed copy', 'Copy cache', 'Central contact', 'Copy chain', 'Copied content'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What did people fear the "Y2K bug" would do when the year 2000 arrived?', NULL,
        'Make computers read "00" as 1900', ARRAY['Stop every clock at midnight', 'Use up all internet addresses', 'Make satellites fall', 'Make phones explode', 'Make calculators round up', 'Drain every battery'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'On Instagram or X, what does "DM" stand for?', NULL,
        'Direct message', ARRAY['Digital mail', 'Data message', 'Daily memo', 'Delivered message', 'Device mail', 'Draft message'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "QR" in QR code stand for?', NULL,
        'Quick Response', ARRAY['Quality Read', 'Quote Request', 'Quantum Record', 'Query Result', 'Quick Reference', 'Quarter Rotation'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What does "HTTP" stand for?', NULL,
        'HyperText Transfer Protocol', ARRAY['HyperText Transmission Process', 'High Transfer Text Protocol', 'Hyperlink Transfer Text Process', 'Home Text Transfer Protocol', 'HyperText Technical Protocol', 'High-Text Transit Protocol'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In what year was Facebook founded?', NULL,
        '2004', ARRAY['2002', '2006', '2008', '2001', '2003', '2005'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which British computer scientist invented the web while working at CERN in 1989?', NULL,
        'Tim Berners-Lee', ARRAY['Vint Cerf', 'Bill Gates', 'Steve Jobs', 'Larry Page', 'Marc Andreessen', 'Alan Turing'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which 1977 home console, with wood-grain trim and a joystick, made swappable game cartridges popular?', NULL,
        'Atari 2600', ARRAY['Magnavox Odyssey', 'ColecoVision', 'Intellivision', 'Nintendo Entertainment System', 'Sega Genesis', 'Atari 5200'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does "PDF" stand for?', NULL,
        'Portable Document Format', ARRAY['Printable Document File', 'Public Data Format', 'Portable Data File', 'Print-Ready Document Format', 'Protected Document File', 'Personal Document Folder'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1947, engineers found what stuck in a Harvard computer and taped it into the logbook as the "first actual case of bug being found"?', NULL,
        'A moth', ARRAY['A cockroach', 'A beetle', 'A spider', 'A mouse', 'A fly', 'A cricket'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does the Turing test check?', NULL,
        'Whether a machine can pass for a human', ARRAY['How fast a computer can calculate', 'Whether a code can be cracked', 'How long a battery lasts', 'Whether a program has bugs', 'How much data a chip can store', 'Whether a network is secure'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Gordon Moore and Robert Noyce co-founded which chipmaker in 1968?', NULL,
        'Intel', ARRAY['AMD', 'Texas Instruments', 'Fairchild Semiconductor', 'Motorola', 'Nvidia', 'Qualcomm'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'The word "pixel" is short for what?', NULL,
        'Picture element', ARRAY['Picture cell', 'Pigment element', 'Photo element', 'Picture excerpt', 'Pictorial cell', 'Printed element'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which programming language did Guido van Rossum name after a British comedy troupe?', NULL,
        'Python', ARRAY['Ruby', 'Perl', 'Swift', 'Rust', 'Lua', 'Kotlin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Nokia began in 1865 as a paper mill in what is now which country?', NULL,
        'Finland', ARRAY['Sweden', 'Norway', 'Denmark', 'Estonia', 'Germany', 'Netherlands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which free operating system did student Linus Torvalds release in 1991?', NULL,
        'Linux', ARRAY['Unix', 'MS-DOS', 'FreeBSD', 'Minix', 'Solaris', 'OS/2'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does a "404" error on a website mean?', NULL,
        'The page was not found', ARRAY['The server is overloaded', 'Your password is wrong', 'You have no internet connection', 'Access is forbidden', 'The page has moved permanently', 'The site is down for maintenance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Spotify was founded in 2006 in which country?', NULL,
        'Sweden', ARRAY['Norway', 'Denmark', 'Finland', 'Netherlands', 'Germany', 'Estonia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which tech company is nicknamed "Big Blue"?', NULL,
        'IBM', ARRAY['Intel', 'Microsoft', 'HP', 'Dell', 'Cisco', 'Oracle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which American founded Kodak and sold its first camera in 1888 with the slogan "You press the button, we do the rest"?', NULL,
        'George Eastman', ARRAY['Edwin Land', 'Louis Daguerre', 'Thomas Edison', 'William Henry Fox Talbot', 'Joseph Nicephore Niepce', 'George Westinghouse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which Scottish engineer greatly improved the steam engine and gave his name to a unit of power?', NULL,
        'James Watt', ARRAY['Thomas Newcomen', 'George Stephenson', 'Richard Trevithick', 'Matthew Boulton', 'Robert Fulton', 'Isambard Kingdom Brunel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which Japanese game company''s mascot is Sonic the Hedgehog?', NULL,
        'Sega', ARRAY['Nintendo', 'Sony', 'Capcom', 'Namco', 'Konami', 'Taito'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In a web address that starts with "https," what does the final "s" stand for?', NULL,
        'Secure', ARRAY['Server', 'Standard', 'System', 'Site', 'Signed', 'Speed'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which Italian inventor shared the 1909 Nobel Prize in Physics for his work on wireless telegraphy, the forerunner of radio?', NULL,
        'Guglielmo Marconi', ARRAY['Nikola Tesla', 'Heinrich Hertz', 'Alessandro Volta', 'Enrico Fermi', 'Antonio Meucci', 'Galileo Ferraris'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which digital encyclopedia, sold on CD-ROM from 1993, shut down in 2009 as free online ones took over?', NULL,
        'Encarta', ARRAY['Britannica', 'World Book', 'Wikipedia', 'Webster''s', 'AltaVista', 'Lycos'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In a phone''s SIM card, what does "SIM" stand for?', NULL,
        'Subscriber Identity Module', ARRAY['Secure Internet Memory', 'System Identification Mode', 'Signal Input Module', 'Smart Identity Memory', 'Subscriber Information Memory', 'Single Interface Module'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "GIF" stand for?', NULL,
        'Graphics Interchange Format', ARRAY['Graphic Image File', 'General Image Format', 'Graphical Internet Feed', 'Generated Image Frame', 'Graphics Index File', 'Global Image Format'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which TV-recording box, launched in 1999, let viewers pause live TV?', NULL,
        'TiVo', ARRAY['Roku', 'VCR', 'LaserDisc', 'Chromecast', 'Slingbox', 'Betamax'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which home videotape format, launched in 1975, famously lost a "format war" to VHS?', NULL,
        'Betamax', ARRAY['LaserDisc', 'Video 8', 'MiniDV', 'U-matic', 'Super 8', 'Cartrivision'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "HTML" stand for?', NULL,
        'HyperText Markup Language', ARRAY['HighText Machine Language', 'Hyperlink Text Mode Language', 'Home Tool Markup Language', 'HyperTransfer Main Link', 'Hyper Terminal Mail List', 'Hybrid Text Markup Logic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which number system uses 16 symbols, 0 to 9 and then A to F?', NULL,
        'Hexadecimal', ARRAY['Binary', 'Decimal', 'Octal', 'Roman numerals', 'Duodecimal', 'Sexagesimal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which computer company did Steve Jobs found after he was pushed out of his first one in 1985?', NULL,
        'NeXT', ARRAY['Oracle', 'Sun Microsystems', 'Palm', 'General Magic', 'Be Inc.', 'Atari'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "LAN" stand for?', NULL,
        'Local Area Network', ARRAY['Large Access Node', 'Linked Area Network', 'Line Access Number', 'Local Access Node', 'Long Area Network', 'Logical Array Network'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which search engine, launched in 1996, had a butler as its mascot?', NULL,
        'Ask Jeeves', ARRAY['AltaVista', 'Lycos', 'Excite', 'Yahoo!', 'Dogpile', 'HotBot'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which tiny electronic switch, invented at Bell Labs in 1947, replaced bulky vacuum tubes?', NULL,
        'The transistor', ARRAY['The microchip', 'The diode', 'The capacitor', 'The resistor', 'The relay', 'The fuse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which beginner-friendly programming language was created at Dartmouth College in 1964?', NULL,
        'BASIC', ARRAY['COBOL', 'Fortran', 'Logo', 'Pascal', 'Lisp', 'Ada'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In computing, what does "ROM" stand for?', NULL,
        'Read-Only Memory', ARRAY['Random Order Memory', 'Rapid Output Module', 'Recorded Optical Media', 'Run On Memory', 'Remote Operating Mode', 'Read Order Map'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which web portal did Stanford students Jerry Yang and David Filo start in 1994?', NULL,
        'Yahoo!', ARRAY['Google', 'AltaVista', 'Excite', 'Lycos', 'Netscape', 'AOL'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which web browser, released in 1994, was the first big commercial browser and led to Mozilla''s Firefox?', NULL,
        'Netscape Navigator', ARRAY['Internet Explorer', 'Opera', 'Safari', 'Chrome', 'Lynx', 'Mosaic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What do you call a step-by-step set of instructions a computer follows, like a recipe?', NULL,
        'An algorithm', ARRAY['An equation', 'A spreadsheet', 'A protocol', 'A database', 'A compiler', 'A formula'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which word for an online diary comes from "web log"?', NULL,
        'Blog', ARRAY['Vlog', 'Wiki', 'Weblink', 'Forum', 'Webinar', 'Feed'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What did the Napster app, launched in 1999, let people share for free?', NULL,
        'Music files', ARRAY['Movies', 'Photos', 'E-books', 'Video games', 'Recipes', 'Passwords'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "IoT" stand for?', NULL,
        'Internet of Things', ARRAY['Input of Text', 'Integration of Technology', 'Internet of Tools', 'Interface over Transfer', 'Index of Terms', 'Internet of Transfers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "SSD" stand for, a kind of storage with no moving parts?', NULL,
        'Solid-State Drive', ARRAY['Super Speed Disk', 'Secure System Drive', 'Single Storage Device', 'Silicon Storage Disk', 'System Save Drive', 'Static Speed Drive'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which part of a computer draws the images on screen and is prized for gaming and AI?', NULL,
        'The graphics card', ARRAY['The sound card', 'The motherboard', 'The power supply', 'The network card', 'The cooling fan', 'The BIOS chip'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which company makes the GeForce graphics cards?', NULL,
        'Nvidia', ARRAY['AMD', 'Qualcomm', 'ASUS', 'Dell', 'Logitech', 'Creative'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Internet speeds are often given in Mbps. What does the "ps" stand for?', NULL,
        'Per second', ARRAY['Per session', 'Packets sent', 'Power supply', 'Pixels shown', 'Ports served', 'Per signal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which country''s web addresses end in ".de"?', NULL,
        'Germany', ARRAY['Denmark', 'Spain', 'Netherlands', 'Dominica', 'Austria', 'Switzerland'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In "SMS," the technical name for a text message, what does the first "S" stand for?', NULL,
        'Short', ARRAY['Simple', 'Secure', 'Standard', 'Speedy', 'Signal', 'Single'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "PDA" stand for, the pocket organizers of the 1990s?', NULL,
        'Personal Digital Assistant', ARRAY['Portable Data Accessory', 'Personal Device App', 'Private Digital Agenda', 'Pocket Data Assistant', 'Portable Digital Archive', 'Personal Dial Adapter'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "GUI," pronounced "gooey," stand for?', NULL,
        'Graphical User Interface', ARRAY['General Utility Interface', 'Graphic Unit Index', 'Guided User Input', 'Global User Interface', 'Graphical Usage Indicator', 'Generic User Integration'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "URL" stand for?', NULL,
        'Uniform Resource Locator', ARRAY['Universal Routing Link', 'Unique Reference Label', 'Uniform Retrieval Language', 'User Request Line', 'Universal Resource Library', 'Unified Remote Location'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which free email service, launched on April Fools'' Day 2004 with a then-huge 1 GB of storage, was at first taken for a joke?', NULL,
        'Gmail', ARRAY['Hotmail', 'Yahoo! Mail', 'Outlook', 'AOL Mail', 'ProtonMail', 'iCloud Mail'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "DSL," a kind of internet over phone lines, stand for?', NULL,
        'Digital Subscriber Line', ARRAY['Data Service Link', 'Direct Speed Line', 'Digital Signal Loop', 'Dual Server Link', 'Data Subscriber Lane', 'Direct System Line'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'What was the name of one of the first widely-used graphical web browsers, released in 1993?', NULL,
        'Mosaic', ARRAY['Netscape Navigator', 'Internet Explorer', 'Lynx', 'Opera', 'Safari', 'Firefox'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        '"Wi-Fi" is often said to stand for "wireless fidelity." What does it officially stand for?', NULL,
        'Nothing; it is a made-up brand name', ARRAY['Wireless Fidelity', 'Wireless Field', 'Wide Fidelity', 'Wireless Frequency', 'Wired Fiber', 'Wireless Finder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which English mathematician designed the Analytical Engine, a mechanical general-purpose computer that was never built?', NULL,
        'Charles Babbage', ARRAY['Alan Turing', 'George Boole', 'John von Neumann', 'Isaac Newton', 'Blaise Pascal', 'Gottfried Leibniz'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which 1940s machine, built at the University of Pennsylvania, was one of the first general-purpose electronic computers?', NULL,
        'ENIAC', ARRAY['UNIVAC', 'Colossus', 'EDSAC', 'Harvard Mark I', 'Z3', 'Manchester Baby'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'What does Moore''s Law predict?', NULL,
        'The number of transistors on a chip doubles about every two years', ARRAY['Computer prices halve every year', 'Internet speeds double every decade', 'Batteries last twice as long every five years', 'Screen sizes double every three years', 'Software gets slower as chips get faster', 'Data storage costs fall by 10% a year'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Martin Cooper made the first handheld cell-phone call in 1973 while working for which company?', NULL,
        'Motorola', ARRAY['Nokia', 'Ericsson', 'AT&T', 'IBM', 'Siemens', 'NEC'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1992, the first text message (SMS) was sent from a computer to a phone. What did it say?', NULL,
        'Merry Christmas', ARRAY['Hello World', 'Can you read this?', 'Testing 1, 2, 3', 'Happy New Year', 'Are you there?', 'Mr. Watson, come here'], 400, 'Engineer Neil Papworth sent it in 1992 to a Vodafone director at a holiday party.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'eBay''s founder made the very first sale on his site in 1995. What was it?', NULL,
        'A broken laser pointer', ARRAY['A Pez dispenser', 'A used guitar', 'A signed baseball', 'A Beanie Baby', 'A vintage typewriter', 'A Star Wars figure'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Who invented the computer mouse in the 1960s and showed it off in "The Mother of All Demos"?', NULL,
        'Douglas Engelbart', ARRAY['Steve Jobs', 'Alan Kay', 'Vint Cerf', 'Ted Nelson', 'Ivan Sutherland', 'Steve Wozniak'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Bluetooth is named after a 10th-century king of which country?', NULL,
        'Denmark', ARRAY['Sweden', 'Finland', 'Iceland', 'Scotland', 'England', 'Germany'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'The first message ever sent over ARPANET, in 1969, was meant to be "LOGIN." What actually got through before the system crashed?', NULL,
        'LO', ARRAY['L', 'LOG', 'LOGI', 'HELLO', 'HI', 'OK'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which Hollywood star co-patented a "frequency hopping" radio system in 1942 to help guide torpedoes?', NULL,
        'Hedy Lamarr', ARRAY['Marlene Dietrich', 'Greta Garbo', 'Ingrid Bergman', 'Rita Hayworth', 'Lana Turner', 'Joan Crawford'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'QR codes were invented in Japan in 1994 to keep track of what?', NULL,
        'Car parts', ARRAY['Library books', 'Airline luggage', 'Supermarket groceries', 'Mail parcels', 'Hospital patients', 'Train tickets'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'In 1996, what did Larry Page and Sergey Brin first call their search engine?', NULL,
        'BackRub', ARRAY['Googol', 'PageRank', 'Stanford Search', 'WebCrawler', 'Archie', 'LinkSearch'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Which company''s Palo Alto lab built the Alto, an early computer with windows, icons and a mouse that inspired the Macintosh?', NULL,
        'Xerox', ARRAY['IBM', 'Hewlett-Packard', 'Atari', 'Texas Instruments', 'Intel', 'Bell Labs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'IBM''s Simon, sold in 1994, is often called the first what?', NULL,
        'Smartphone', ARRAY['Laptop', 'Tablet', 'Smartwatch', 'Pager', 'E-reader', 'Flip phone'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_1', NULL,
        'Amazon was first incorporated in 1994 under which name, dropped because it sounded like ''cadaver''?', NULL,
        'Cadabra', ARRAY['Relentless', 'Bookshelf', 'BookStack', 'Bookworld', 'Zon', 'Bezos Books'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In 1991, Cambridge University computer scientists pointed a camera at what, so they could check on it from their desks? It became famous as the first webcam.', NULL,
        'A coffee pot', ARRAY['A fish tank', 'A parking lot', 'A printer', 'A vending machine', 'A pet rabbit', 'A bird feeder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'Which programming language did Brendan Eich create in about 10 days at Netscape in 1995?', NULL,
        'JavaScript', ARRAY['TypeScript', 'PHP', 'Perl', 'Ruby', 'ActionScript', 'CoffeeScript'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'ORIGINAL', NULL,
        'In 1976, Steve Jobs''s new company sold its first computer, a bare circuit board, for what famously odd price?', NULL,
        '$666.66', ARRAY['$999.99', '$500.00', '$1,000.00', '$777.77', '$1,234.56', '$299.99'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What does "JPEG," the photo format, stand for?', NULL,
        'Joint Photographic Experts Group', ARRAY['Joint Picture Encoding Group', 'Just Pixels Encoded Graphically', 'Japanese Photo Engineering Guild', 'Joined Pixel Export Grid', 'Junior Photographic Editors Guild', 'Joint Print Exchange Group'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which programming language, released in 1959 for business records, still runs many banks'' systems?', NULL,
        'COBOL', ARRAY['Fortran', 'BASIC', 'Pascal', 'Lisp', 'ALGOL', 'Ada'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Dennis Ritchie created which programming language at Bell Labs in the early 1970s, a successor to one called B?', NULL,
        'C', ARRAY['D', 'A', 'BASIC', 'COBOL', 'Fortran', 'Pascal'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        '"Wiki," the name for websites anyone can edit, comes from a Hawaiian word meaning what?', NULL,
        'Quick', ARRAY['Book', 'Know', 'Share', 'Friend', 'Open', 'Learn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which "father of the internet" co-designed TCP/IP, the rules computers use to talk online, with Bob Kahn in the 1970s?', NULL,
        'Vint Cerf', ARRAY['Tim Berners-Lee', 'Marc Andreessen', 'Larry Ellison', 'Steve Case', 'Paul Baran', 'Ray Tomlinson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which company introduced the compact audio cassette in 1963?', NULL,
        'Philips', ARRAY['Sony', 'Panasonic', 'Toshiba', 'Kodak', 'RCA', 'Zenith'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Tuvalu earns a large share of its income by leasing out which web address ending?', NULL,
        '.tv', ARRAY['.tu', '.tl', '.vu', '.to', '.tk', '.tz'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What was the name of the first PC virus to spread widely, written by two brothers in Pakistan in 1986?', NULL,
        'Brain', ARRAY['Creeper', 'ILOVEYOU', 'Melissa', 'Morris', 'Stuxnet', 'Code Red'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which mathematician''s 1948 paper founded information theory and made the word "bit" famous?', NULL,
        'Claude Shannon', ARRAY['Alan Turing', 'John von Neumann', 'Norbert Wiener', 'Charles Babbage', 'George Boole', 'Alonzo Church'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What did engineer Steven Sasson build at Kodak in 1975?', NULL,
        'The first digital camera', ARRAY['The first instant camera', 'The first camera phone', 'The first webcam', 'The first flashbulb', 'The first color film', 'The first camcorder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'What was the first product scanned by a UPC barcode at a store checkout, in Ohio in 1974?', NULL,
        'A pack of Wrigley''s gum', ARRAY['A box of cereal', 'A can of soup', 'A loaf of bread', 'A carton of milk', 'A bag of chips', 'A candy bar'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In 1965, Ted Nelson coined which word for text with links you can follow?', NULL,
        'Hypertext', ARRAY['Metadata', 'Cyberspace', 'Database', 'Software', 'Spreadsheet', 'Multimedia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which science-fiction writer coined the word "cyberspace" in a 1982 story?', NULL,
        'William Gibson', ARRAY['Isaac Asimov', 'Philip K. Dick', 'Arthur C. Clarke', 'Neal Stephenson', 'Ray Bradbury', 'Douglas Adams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Neal Stephenson''s 1992 novel "Snow Crash" coined which word, later taken up by big tech companies?', NULL,
        'Metaverse', ARRAY['Internet', 'Robot', 'Hashtag', 'Blog', 'Hologram', 'Wearable'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'The word "robot" first appeared in a 1920 play by which Czech writer?', NULL,
        'Karel Čapek', ARRAY['Franz Kafka', 'Milan Kundera', 'Václav Havel', 'Jaroslav Hašek', 'Bohumil Hrabal', 'Isaac Asimov'], 400, 'Čapek credited his brother Josef with the word, from the Czech "robota," forced labor.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Where does the name "spam," for junk email, come from?', NULL,
        'A comedy sketch about canned meat', ARRAY['An old radio jingle', 'A typing error', 'A military code word', 'A brand of fax machine', 'A computer-lab prank', 'An acronym for "stupid pointless annoying messages"'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Bill Hewlett and David Packard flipped a coin in 1939 to decide what?', NULL,
        'The order of their names in the company name', ARRAY['Who would be the boss', 'Which city to start in', 'The color of the logo', 'Who got the bigger desk', 'Whether to make calculators', 'Who would pay for the garage'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which programming language is named after a 17th-century French mathematician who built a calculating machine?', NULL,
        'Pascal', ARRAY['Fermat', 'Descartes', 'Euler', 'Leibniz', 'Fourier', 'Laplace'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'How much memory did the first Macintosh have in 1984?', NULL,
        '128 KB', ARRAY['16 KB', '64 KB', '256 KB', '512 KB', '1 MB', '4 MB'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'The first handheld cell phone sold to the public, in 1983, cost about how much?', NULL,
        '$4,000', ARRAY['$250', '$400', '$1,000', '$2,000', '$10,000', '$25,000'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'When the iMac launched in 1998, its maker said the "i" stood first of all for what?', NULL,
        'Internet', ARRAY['Innovation', 'Intelligent', 'Interactive', 'Image', 'Instant', 'Idea'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Margaret Hamilton led the team that wrote the onboard flight software for which space program?', NULL,
        'Apollo', ARRAY['Mercury', 'Gemini', 'Space Shuttle', 'Skylab', 'Voyager', 'Hubble'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'NASA''s Mars Climate Orbiter was lost in 1999 because two teams mixed up what?', NULL,
        'Metric and imperial units', ARRAY['Left and right', 'Morning and evening', 'Two radio frequencies', 'Two versions of the software', 'Earth time and Mars time', 'Latitude and longitude'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which word for someone who breaks into computers first meant a clever tinkerer at MIT?', NULL,
        'Hacker', ARRAY['Cracker', 'Geek', 'Nerd', 'Phreaker', 'Coder', 'Techie'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'In the 1970s, "phone phreaks" made free long-distance calls with a toy whistle from which cereal box?', NULL,
        'Cap''n Crunch', ARRAY['Cracker Jack', 'Froot Loops', 'Lucky Charms', 'Frosted Flakes', 'Cheerios', 'Rice Krispies'], 400, 'The whistle''s 2600 Hz tone fooled the phone network, and phreak John Draper took the nickname "Captain Crunch."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        '"Modem" is made from which two words?', NULL,
        'Modulator and demodulator', ARRAY['Mobile and demand', 'Monitor and demonstrator', 'Modular and memory', 'Mode and emitter', 'Motor and dynamo', 'Memory and domain'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        '"Bit," the smallest unit of computer data, is short for what?', NULL,
        'Binary digit', ARRAY['Basic integer', 'Byte item', 'Binary item', 'Base input', 'Bitwise token', 'Binary instruction'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which American inventor of an early typewriter gave us the QWERTY keyboard layout in the 1870s?', NULL,
        'Christopher Latham Sholes', ARRAY['Thomas Edison', 'Elisha Gray', 'Samuel Morse', 'Isaac Singer', 'Charles Goodyear', 'Cyrus McCormick'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Ray Dolby''s company became famous for cutting what out of tape recordings?', NULL,
        'Hiss', ARRAY['Echo', 'Static', 'Skips', 'Feedback', 'Distortion', 'Wow and flutter'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'TECHNOLOGY', 'TECHNOLOGY_BATCH_2', NULL,
        'Which machine, the first computer sold commercially in the U.S., predicted Eisenhower''s 1952 landslide on live TV?', NULL,
        'UNIVAC I', ARRAY['EDVAC', 'Harvard Mark I', 'IBM 701', 'Whirlwind', 'Colossus', 'Manchester Mark 1'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'TECHNOLOGY';
