-- ============================================================================
-- content/sql/just_in_time.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/just_in_time.csv, the master copy of the
-- Thinking Pants category JUST_IN_TIME. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'JUST_IN_TIME';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the famous bell inside the clock tower at the Houses of Parliament in London?', NULL,
        'Big Ben', ARRAY['Great Tom', 'Liberty Bell', 'Tsar Bell', 'The Bow Bells', 'Great Paul', 'The Lutine Bell'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the timekeeping device that uses falling sand through a narrow neck to measure a fixed duration?', NULL,
        'An hourglass', ARRAY['A sundial', 'A water clock', 'A metronome', 'A pendulum clock', 'A candle clock', 'A chronometer'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the ancient device that tells time by the position of a shadow cast by the sun?', NULL,
        'A sundial', ARRAY['An hourglass', 'A water clock', 'A sextant', 'A compass', 'An astrolabe', 'A calendar stone'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the swinging weight that regulates the timekeeping of a grandfather clock?', NULL,
        'A pendulum', ARRAY['A balance wheel', 'A hairspring', 'A mainspring', 'A flywheel', 'A counterweight', 'A gear train'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which country is most famous worldwide for its precision watchmaking industry?', NULL,
        'Switzerland', ARRAY['Germany', 'Japan', 'France', 'Italy', 'Austria', 'Belgium'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many seconds are in an hour?', NULL,
        '3,600', ARRAY['360', '600', '1,200', '2,400', '6,000', '36,000'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many days are in a leap year?', NULL,
        '366', ARRAY['364', '365', '367', '360', '368', '355'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In which month is the extra day added in a leap year?', NULL,
        'February', ARRAY['January', 'March', 'April', 'June', 'July', 'December'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In which 1993 film does Bill Murray''s weatherman relive the same day over and over?', NULL,
        'Groundhog Day', ARRAY['Scrooged', 'Ghostbusters', 'Edge of Tomorrow', 'Palm Springs', 'Click', '50 First Dates'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How long is a fortnight?', NULL,
        'Two weeks', ARRAY['Four nights', 'Ten days', 'Four weeks', 'One month', 'Fourteen hours', 'Forty days'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In "Alice''s Adventures in Wonderland," which character is always late and checks a pocket watch?', NULL,
        'The White Rabbit', ARRAY['The Mad Hatter', 'The March Hare', 'The Cheshire Cat', 'The Dormouse', 'The Caterpillar', 'The Queen of Hearts'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In "Peter Pan," what sound warns Captain Hook that the crocodile is coming?', NULL,
        'Ticking', ARRAY['Splashing', 'Snapping jaws', 'Whistling', 'Bells ringing', 'Growling', 'Humming'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many years are in a millennium?', NULL,
        '1,000', ARRAY['10', '50', '100', '500', '10,000', '1,000,000'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In which nursery rhyme does a mouse run up the clock?', NULL,
        'Hickory Dickory Dock', ARRAY['Three Blind Mice', 'Hey Diddle Diddle', 'Sing a Song of Sixpence', 'Pop Goes the Weasel', 'Ding Dong Bell', 'Little Miss Muffet'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which 1954 Bill Haley & His Comets hit begins "One, two, three o''clock, four o''clock, rock"?', NULL,
        '"Rock Around the Clock"', ARRAY['"Shake, Rattle and Roll"', '"See You Later, Alligator"', '"Johnny B. Goode"', '"Jailhouse Rock"', '"Great Balls of Fire"', '"Blue Suede Shoes"'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'By what time must Cinderella leave the royal ball?', NULL,
        'Midnight', ARRAY['9 p.m.', '10 p.m.', '11 p.m.', '1 a.m.', 'Sunset', 'Dawn'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'The Black Forest, home of the cuckoo clock, is in which country?', NULL,
        'Germany', ARRAY['Switzerland', 'Austria', 'France', 'Czech Republic', 'Poland', 'Belgium'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'In Disney''s "Beauty and the Beast," what has the Beast''s fussy head servant Cogsworth been turned into?', NULL,
        'A clock', ARRAY['A candlestick', 'A teapot', 'A feather duster', 'A wardrobe', 'A teacup', 'A footstool'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is a period of ten years called?', NULL,
        'A decade', ARRAY['A century', 'A millennium', 'A score', 'A generation', 'A jubilee', 'A quarter-century'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'How many full weeks are in a year?', NULL,
        '52', ARRAY['48', '50', '51', '53', '54', '56'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which luxury Swiss watch brand is known for its crown logo and sponsorship of Wimbledon?', NULL,
        'Rolex', ARRAY['Omega', 'Patek Philippe', 'Cartier', 'TAG Heuer', 'Breitling', 'Tissot'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What device do musicians use to keep a steady tempo, clicking out a regular beat?', NULL,
        'A metronome', ARRAY['A tuning fork', 'A pitch pipe', 'A baton', 'A capo', 'A diapason', 'A tempo gauge'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which 1984 Cyndi Lauper ballad promises, "If you''re lost, you can look and you will find me"?', NULL,
        '"Time After Time"', ARRAY['"Girls Just Want to Have Fun"', '"True Colors"', '"She Bop"', '"All Through the Night"', '"Money Changes Everything"', '"The Goonies ''R'' Good Enough"'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which Green Day song, subtitled "(Time of Your Life)," became a graduation and prom staple?', NULL,
        'Good Riddance', ARRAY['Basket Case', 'When I Come Around', 'Boulevard of Broken Dreams', 'Wake Me Up When September Ends', 'American Idiot', '21 Guns'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name for the twice-yearly practice of setting clocks forward in spring and back in fall?', NULL,
        'Daylight saving time', ARRAY['Standard time', 'Universal time', 'Leap time', 'Equinox adjustment', 'Solar time', 'Zone time'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which ancient monument in England, aligned with the solstices, is believed to have functioned partly as an astronomical calendar?', NULL,
        'Stonehenge', ARRAY['Avebury', 'The Ring of Brodgar', 'Newgrange', 'Callanish Stones', 'Carnac Stones', 'Silbury Hill'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What is the name of the Doctor''s time-traveling police box in "Doctor Who"?', NULL,
        'The TARDIS', ARRAY['The Chronosphere', 'The Flux Capacitor', 'The Time Sphere', 'The Torchwood', 'The Dalek', 'The Gallifrey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'In the Harry Potter books, what device lets Hermione go back in time to fit in extra classes?', NULL,
        'A Time-Turner', ARRAY['A Remembrall', 'A Portkey', 'A Pensieve', 'A Sneakoscope', 'A Deluminator', 'A Horcrux'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'According to the "Rent" song "Seasons of Love," how many minutes are in a year?', NULL,
        '525,600', ARRAY['525,000', '365,000', '8,760', '52,560', '5,256,000', '31,536,000'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What is the name of Salvador Dalí''s 1931 painting of melting clocks?', NULL,
        'The Persistence of Memory', ARRAY['Time Transfixed', 'The Burning Giraffe', 'The Elephants', 'Metamorphosis of Narcissus', 'Swans Reflecting Elephants', 'The Son of Man'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What does Public Enemy''s Flavor Flav famously wear around his neck?', NULL,
        'A giant clock', ARRAY['A giant gold chain', 'A giant whistle', 'A giant padlock', 'A giant dollar sign', 'A giant compass', 'A giant crucifix'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many minutes are in a day?', NULL,
        '1,440', ARRAY['1,044', '1,200', '1,240', '1,600', '2,400', '3,600'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What speed must Doc Brown''s DeLorean reach to travel through time?', NULL,
        '88 mph', ARRAY['55 mph', '66 mph', '77 mph', '99 mph', '100 mph', '121 mph'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many hours are in a week?', NULL,
        '168', ARRAY['144', '148', '156', '172', '186', '196'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'On a 24-hour clock, what time is 7 p.m.?', NULL,
        '19:00', ARRAY['07:00', '16:00', '17:00', '18:00', '20:00', '21:00'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What long-bladed farm tool does Father Time traditionally carry?', NULL,
        'A scythe', ARRAY['A pitchfork', 'A hoe', 'A rake', 'A flail', 'A shovel', 'A pruning hook'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which month is named after Julius Caesar?', NULL,
        'July', ARRAY['June', 'August', 'January', 'March', 'May', 'September'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Who wrote the 1895 novel "The Time Machine"?', NULL,
        'H.G. Wells', ARRAY['Jules Verne', 'Mark Twain', 'Arthur Conan Doyle', 'Robert Louis Stevenson', 'Aldous Huxley', 'Edgar Rice Burroughs'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which singer had a 1989 hit with "If I Could Turn Back Time"?', NULL,
        'Cher', ARRAY['Tina Turner', 'Pat Benatar', 'Bonnie Tyler', 'Belinda Carlisle', 'Cyndi Lauper', 'Madonna'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'A golden wedding anniversary celebrates how many years of marriage?', NULL,
        '50', ARRAY['25', '30', '40', '60', '70', '75'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the London park and former royal observatory through which the Prime Meridian (0 degrees longitude) passes?', NULL,
        'Greenwich', ARRAY['Hyde Park', 'Kew Gardens', 'Regent''s Park', 'Hampstead Heath', 'Richmond Park', 'Kensington Gardens'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which 1973 Pink Floyd album includes "Time," the song that opens with a chorus of ringing alarm clocks?', NULL,
        'The Dark Side of the Moon', ARRAY['Wish You Were Here', 'The Wall', 'Animals', 'Meddle', 'The Division Bell', 'Atom Heart Mother'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What was the clepsydra, used to tell time in ancient Egypt and Greece?', NULL,
        'A water clock', ARRAY['A sundial', 'An hourglass', 'A candle clock', 'An astrolabe', 'An incense clock', 'A shadow clock'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What kind of clock is used to define the official length of a second?', NULL,
        'An atomic clock', ARRAY['A quartz clock', 'A pendulum clock', 'A marine chronometer', 'A radio clock', 'A mechanical clock', 'A sidereal clock'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What do the letters "a.m." stand for?', NULL,
        'Ante meridiem', ARRAY['After midnight', 'Ante matutinum', 'Anno meridiem', 'Ad meridiem', 'Ante mane', 'Ab media'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'On a sun clock, what is the name of the pointer that casts the shadow?', NULL,
        'The gnomon', ARRAY['The obelisk', 'The dial plate', 'The meridian', 'The fulcrum', 'The arbor', 'The vane'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'London''s Great Clock of Westminster is housed in which tower, renamed in 2012 for the Diamond Jubilee?', NULL,
        'The Elizabeth Tower', ARRAY['The Victoria Tower', 'The Jewel Tower', 'The White Tower', 'The Albert Tower', 'The Wellington Tower', 'The Westminster Tower'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'The marine chronometer, perfected in the 1700s, solved which problem for sailors?', NULL,
        'Finding longitude at sea', ARRAY['Finding latitude at sea', 'Measuring water depth', 'Predicting the tides', 'Measuring a ship''s speed', 'Finding magnetic north', 'Forecasting storms'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which crystal keeps time in most modern battery-powered watches?', NULL,
        'Quartz', ARRAY['Ruby', 'Sapphire', 'Diamond', 'Topaz', 'Amethyst', 'Garnet'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'At the Mad Hatter''s tea party in "Alice''s Adventures in Wonderland," what time is it always?', NULL,
        'Six o''clock', ARRAY['Three o''clock', 'Four o''clock', 'Five o''clock', 'Seven o''clock', 'Noon', 'Teatime on Sunday'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which animal comes first in the 12-year cycle of the Chinese zodiac?', NULL,
        'The Rat', ARRAY['The Ox', 'The Tiger', 'The Dragon', 'The Monkey', 'The Rooster', 'The Rabbit'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'September takes its name from the Latin for which number, though it is now the ninth month?', NULL,
        'Seven', ARRAY['Six', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many years are in a "score," as in the opening words of Lincoln''s Gettysburg Address?', NULL,
        '20', ARRAY['10', '12', '25', '40', '50', '100'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What is one-thousandth of a second called?', NULL,
        'A millisecond', ARRAY['A microsecond', 'A nanosecond', 'A centisecond', 'A picosecond', 'A decisecond', 'A kilosecond'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'How many official time zones does China use?', NULL,
        '1', ARRAY['2', '3', '4', '5', '6', '7'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which day of the week is named after Odin, the chief Norse god?', NULL,
        'Wednesday', ARRAY['Tuesday', 'Thursday', 'Friday', 'Monday', 'Saturday', 'Sunday'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Roughly how long is it from one new moon to the next?', NULL,
        'About 29½ days', ARRAY['About 25 days', 'About 27 days', 'About 28 days', 'About 30½ days', 'About 31 days', 'About 32 days'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'A sesquicentennial marks how many years?', NULL,
        '150', ARRAY['75', '125', '175', '200', '250', '300'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which band asked "Does Anybody Really Know What Time It Is?" on its 1969 debut album?', NULL,
        'Chicago', ARRAY['Blood, Sweat & Tears', 'Three Dog Night', 'The Guess Who', 'Steely Dan', 'The Doobie Brothers', 'Earth, Wind & Fire'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'In 1883, which industry got the United States and Canada to adopt standard time zones?', NULL,
        'The railroads', ARRAY['The telegraph companies', 'The shipping lines', 'The banks', 'The newspapers', 'The postal service', 'The stock exchanges'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'In 1656, which scientist built the first clock regulated by a swinging weight, making clocks far more accurate?', NULL,
        'Christiaan Huygens', ARRAY['Galileo Galilei', 'Isaac Newton', 'Antonie van Leeuwenhoek', 'Johannes Kepler', 'Robert Hooke', 'Blaise Pascal'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'What is the name of the occasional extra tick that has been added to the world''s official time to keep it in step with Earth''s slowing spin?', NULL,
        'A leap second', ARRAY['A leap year', 'A solar correction', 'A time dilation', 'A sidereal shift', 'A tidal lag', 'An epoch adjustment'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which pope gave his name to the calendar introduced in 1582 that most of the world uses today?', NULL,
        'Gregory XIII', ARRAY['Julius II', 'Leo X', 'Pius V', 'Sixtus V', 'Clement VII', 'Paul III'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which part of a mechanical watch releases the mainspring''s stored energy in small, regular steps?', NULL,
        'The escapement', ARRAY['The balance wheel', 'The hairspring', 'The crown', 'The rotor', 'The jewel bearings', 'The dial train'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'According to Albert Einstein''s theory of relativity, what is the term for time passing at different rates depending on relative velocity or gravity?', NULL,
        'Time dilation', ARRAY['Spacetime curvature', 'Length contraction', 'Redshift', 'Quantum tunneling', 'Gravitational lensing', 'Frame dragging'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which 1960s band had a hit with "Time of the Season"?', NULL,
        'The Zombies', ARRAY['The Kinks', 'The Animals', 'The Hollies', 'The Turtles', 'The Yardbirds', 'The Byrds'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'When Britain and its colonies switched calendars in 1752, how many days were skipped?', NULL,
        '11', ARRAY['7', '10', '12', '13', '14', '30'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which watchmaker patented the tourbillon in 1801?', NULL,
        'Abraham-Louis Breguet', ARRAY['Antoine Norbert de Patek', 'Hans Wilsdorf', 'Louis Cartier', 'Thomas Mudge', 'Jean-Adrien Philippe', 'Edouard Heuer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which self-taught English clockmaker built the H4 sea watch, finished in 1759?', NULL,
        'John Harrison', ARRAY['Thomas Tompion', 'George Graham', 'Thomas Mudge', 'Robert Hooke', 'John Arnold', 'Thomas Earnshaw'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'A sidereal day, one turn of Earth measured against the stars, is about how long?', NULL,
        '23 hours 56 minutes', ARRAY['24 hours exactly', '24 hours 4 minutes', '23 hours 30 minutes', '23 hours', '24 hours 15 minutes', '23 hours 50 minutes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What did the Romans call the first day of each month, the word that gave us "calendar"?', NULL,
        'The Kalends', ARRAY['The Ides', 'The Nones', 'The Fasti', 'The Nundinae', 'The Lustrum', 'The Feriae'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'The end of which Maya calendar cycle in December 2012 set off doomsday rumors?', NULL,
        'The Long Count', ARRAY['The Haab''', 'The Tzolk''in', 'The Calendar Round', 'The Venus Cycle', 'The Short Count', 'The Sun Stone'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which city''s medieval astronomical clock, installed in 1410, is the oldest one still working?', NULL,
        'Prague', ARRAY['Strasbourg', 'Vienna', 'Bern', 'Munich', 'Venice', 'Kraków'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which planet takes longer to spin once on its axis than to orbit the Sun?', NULL,
        'Venus', ARRAY['Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'Which ancient civilization is credited with splitting the day into 24 hours?', NULL,
        'The Egyptians', ARRAY['The Babylonians', 'The Greeks', 'The Romans', 'The Sumerians', 'The Chinese', 'The Maya'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'JUST_IN_TIME_BATCH_1', NULL,
        'What does the Latin phrase "tempus fugit" mean?', NULL,
        'Time flies', ARRAY['Time heals', 'Time is money', 'Seize the day', 'Time will tell', 'Remember death', 'Time stands still'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which composer wrote the "Clock" Symphony, nicknamed for the tick-tock rhythm of its slow movement?', NULL,
        'Joseph Haydn', ARRAY['Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Franz Schubert', 'Felix Mendelssohn', 'Johannes Brahms', 'Antonín Dvořák'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Before it was renamed for an emperor, which month did the Romans call Sextilis?', NULL,
        'August', ARRAY['June', 'July', 'September', 'October', 'March', 'December'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Under the Gregorian calendar''s rules, which of these years was NOT a leap year?', NULL,
        '1900', ARRAY['2000', '1600', '1904', '1896', '1960', '2024'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'JUST_IN_TIME', 'ORIGINAL', NULL,
        'Which French author wrote the seven-volume novel "In Search of Lost Time"?', NULL,
        'Marcel Proust', ARRAY['Gustave Flaubert', 'Victor Hugo', 'Émile Zola', 'Honoré de Balzac', 'André Gide', 'Albert Camus'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'JUST_IN_TIME';
