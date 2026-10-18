-- ============================================================================
-- content/sql/famous_firsts.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/famous_firsts.csv, the master copy of the
-- Thinking Pants category FAMOUS_FIRSTS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 64 live questions
-- (100: 14, 200: 14, 300: 17, 400: 19), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_FIRSTS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first woman to fly solo across the Atlantic Ocean?', NULL,
        'Amelia Earhart', ARRAY['Jacqueline Cochran', 'Bessie Coleman', 'Harriet Quimby', 'Beryl Markham', 'Jean Batten', 'Ruth Nichols'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What was the first full-length animated feature film ever released by Disney?', NULL,
        'Snow White and the Seven Dwarfs', ARRAY['Pinocchio', 'Fantasia', 'Bambi', 'Cinderella', 'Dumbo', 'Sleeping Beauty'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which country became the first to launch a satellite into orbit, Sputnik, in 1957?', NULL,
        'The Soviet Union', ARRAY['The United States', 'China', 'France', 'The United Kingdom', 'Germany', 'Japan'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first person to orbit the Earth in space, aboard Vostok 1 in 1961?', NULL,
        'Yuri Gagarin', ARRAY['Alan Shepard', 'John Glenn', 'Gherman Titov', 'Neil Armstrong', 'Valentina Tereshkova', 'Alexei Leonov'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which brothers made the first powered, controlled airplane flight, in 1903?', NULL,
        'The Wright brothers', ARRAY['The Montgolfier brothers', 'The Lumière brothers', 'The Voisin brothers', 'The Dodge brothers', 'The Duryea brothers', 'The Studebaker brothers'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the name of the sheep that became the first mammal cloned from an adult cell, in 1996?', NULL,
        'Dolly', ARRAY['Molly', 'Polly', 'Daisy', 'Bessie', 'Shaun', 'Lambchop'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In which country were the first modern Olympic Games held, in 1896?', NULL,
        'Greece', ARRAY['France', 'England', 'The United States', 'Italy', 'Sweden', 'Germany'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to serve as Prime Minister of the United Kingdom?', NULL,
        'Margaret Thatcher', ARRAY['Theresa May', 'Barbara Castle', 'Shirley Williams', 'Harriet Harman', 'Betty Boothroyd', 'Liz Truss'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who made the first solo nonstop flight across the Atlantic, in 1927?', NULL,
        'Charles Lindbergh', ARRAY['Howard Hughes', 'John Alcock', 'Wiley Post', 'Glenn Curtiss', 'Eddie Rickenbacker', 'Chuck Yeager'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first African American President of the United States?', NULL,
        'Barack Obama', ARRAY['Colin Powell', 'Jesse Jackson', 'Kamala Harris', 'Cory Booker', 'Deval Patrick', 'Martin Luther King Jr.'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first feature film made entirely with computer animation, in 1995?', NULL,
        'Toy Story', ARRAY['A Bug''s Life', 'Antz', 'Shrek', 'Finding Nemo', 'Monsters, Inc.', 'The Lion King'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Alexander Fleming''s 1928 discovery of which mold product opened the age of antibiotics?', NULL,
        'Penicillin', ARRAY['Streptomycin', 'Insulin', 'Aspirin', 'Tetracycline', 'Morphine', 'Quinine'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the title of the first Harry Potter book (UK title)?', NULL,
        'The Philosopher''s Stone', ARRAY['The Chamber of Secrets', 'The Prisoner of Azkaban', 'The Goblet of Fire', 'The Order of the Phoenix', 'The Half-Blood Prince', 'The Deathly Hallows'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Disney character made his official debut in the 1928 cartoon "Steamboat Willie"?', NULL,
        'Mickey Mouse', ARRAY['Donald Duck', 'Goofy', 'Pluto', 'Oswald the Lucky Rabbit', 'Felix the Cat', 'Daisy Duck'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What was the first video ever played on MTV when it launched in 1981?', NULL,
        '"Video Killed the Radio Star"', ARRAY['"Thriller"', '"Money for Nothing"', '"Billie Jean"', '"Sledgehammer"', '"Take On Me"', '"Like a Virgin"'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1953, who became, with Tenzing Norgay, one of the first two confirmed climbers to reach the summit of Mount Everest?', NULL,
        'Edmund Hillary', ARRAY['George Mallory', 'John Hunt', 'Reinhold Messner', 'Chris Bonington', 'Andrew Irvine', 'Junko Tabei'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first woman to travel into space, in 1963?', NULL,
        'Valentina Tereshkova', ARRAY['Sally Ride', 'Mae Jemison', 'Svetlana Savitskaya', 'Judith Resnik', 'Eileen Collins', 'Liu Yang'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which explorer led the first expedition to reach the South Pole, in December 1911?', NULL,
        'Roald Amundsen', ARRAY['Robert Falcon Scott', 'Ernest Shackleton', 'Richard Byrd', 'James Cook', 'Douglas Mawson', 'Fridtjof Nansen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first female scientist to win a Nobel Prize, honored in Physics in 1903?', NULL,
        'Marie Curie', ARRAY['Rosalind Franklin', 'Lise Meitner', 'Dorothy Hodgkin', 'Irene Joliot-Curie', 'Ada Lovelace', 'Emmy Noether'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Atari game, released in 1972, was the first commercially successful arcade video game?', NULL,
        'Pong', ARRAY['Computer Space', 'Space Invaders', 'Pac-Man', 'Asteroids', 'Breakout', 'Galaxian'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first person to run a mile in under four minutes, in 1954?', NULL,
        'Roger Bannister', ARRAY['John Landy', 'Jesse Owens', 'Sebastian Coe', 'Steve Ovett', 'Paavo Nurmi', 'Jim Ryun'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who broke baseball''s color line in 1947 as the first Black player in the modern major leagues?', NULL,
        'Jackie Robinson', ARRAY['Larry Doby', 'Satchel Paige', 'Hank Aaron', 'Willie Mays', 'Roy Campanella', 'Josh Gibson'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was India''s first female prime minister?', NULL,
        'Indira Gandhi', ARRAY['Sonia Gandhi', 'Pratibha Patil', 'Sarojini Naidu', 'Benazir Bhutto', 'Sheikh Hasina', 'Golda Meir'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Edward Jenner developed the first vaccine in 1796. Which disease did it protect against?', NULL,
        'Smallpox', ARRAY['Polio', 'Rabies', 'Measles', 'Cholera', 'Tetanus', 'Diphtheria'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which park, founded in 1872, is widely considered the world''s first national park?', NULL,
        'Yellowstone', ARRAY['Yosemite', 'Grand Canyon', 'Banff', 'Sequoia', 'Zion', 'Kruger'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first pope from the Americas, in 2013?', NULL,
        'Pope Francis', ARRAY['Pope Benedict XVI', 'Pope John Paul II', 'Pope John XXIII', 'Pope Paul VI', 'Pope Pius XII', 'Pope John Paul I'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first Roman Catholic President of the United States?', NULL,
        'John F. Kennedy', ARRAY['Franklin D. Roosevelt', 'Lyndon B. Johnson', 'Richard Nixon', 'Dwight D. Eisenhower', 'Harry Truman', 'Woodrow Wilson'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to serve on the U.S. Supreme Court, appointed in 1981?', NULL,
        'Sandra Day O''Connor', ARRAY['Ruth Bader Ginsburg', 'Sonia Sotomayor', 'Elena Kagan', 'Harriet Miers', 'Amy Coney Barrett', 'Janet Reno'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Caribbean colony became the first nation to win independence through a successful slave revolt, in 1804?', NULL,
        'Haiti', ARRAY['Jamaica', 'Cuba', 'The Dominican Republic', 'Barbados', 'Trinidad and Tobago', 'Saint Lucia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first person to swim across the English Channel without a flotation aid, in 1875?', NULL,
        'Matthew Webb', ARRAY['Gertrude Ederle', 'Thomas Burgess', 'Florence Chadwick', 'Mercedes Gleitze', 'Edward Temme', 'Lynne Cox'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which 1927 film is widely credited as the first feature-length "talkie," with synchronized dialogue sequences?', NULL,
        'The Jazz Singer', ARRAY['Sunrise', 'Wings', 'Metropolis', 'The Lights of New York', 'Don Juan', 'The Singing Fool'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Soviet space dog, launched aboard Sputnik 2 in 1957, was the first animal to orbit the Earth?', NULL,
        'Laika', ARRAY['Belka', 'Strelka', 'Ham', 'Enos', 'Felicette', 'Albert II'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first James Bond film, released in 1962?', NULL,
        'Dr. No', ARRAY['From Russia with Love', 'Goldfinger', 'Thunderball', 'Casino Royale', 'You Only Live Twice', 'Live and Let Die'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who is widely credited as the first computer programmer, for her 1843 notes on Charles Babbage''s Analytical Engine?', NULL,
        'Ada Lovelace', ARRAY['Grace Hopper', 'Mary Shelley', 'Katherine Johnson', 'Hedy Lamarr', 'Margaret Hamilton', 'Florence Nightingale'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first permanent English settlement in North America, founded in 1607?', NULL,
        'Jamestown', ARRAY['Plymouth', 'Roanoke', 'St. Augustine', 'Boston', 'Quebec', 'New Amsterdam'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first major book printed in Europe with movable metal type, around 1455?', NULL,
        'The Gutenberg Bible', ARRAY['The King James Bible', 'The Book of Kells', 'The Domesday Book', 'The Canterbury Tales', 'The Lindisfarne Gospels', 'The Diamond Sutra'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Beatles song was the band''s first single, in 1962?', NULL,
        'Love Me Do', ARRAY['Please Please Me', 'She Loves You', 'I Want to Hold Your Hand', 'From Me to You', 'Twist and Shout', 'Can''t Buy Me Love'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2019, who became the first person to run a marathon distance in under two hours, at a special event in Vienna?', NULL,
        'Eliud Kipchoge', ARRAY['Kenenisa Bekele', 'Haile Gebrselassie', 'Mo Farah', 'Kelvin Kiptum', 'Wilson Kipsang', 'Dennis Kimetto'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first video ever uploaded to YouTube, in 2005?', NULL,
        'Me at the zoo', ARRAY['Charlie Bit My Finger', 'Evolution of Dance', 'Lazy Sunday', 'Numa Numa', 'Keyboard Cat', 'Gangnam Style'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2001, which country became the first to legalize same-sex marriage nationwide?', NULL,
        'The Netherlands', ARRAY['Belgium', 'Canada', 'Spain', 'Denmark', 'Sweden', 'Norway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which IBM computer became the first to beat a reigning world chess champion in a match, in 1997?', NULL,
        'Deep Blue', ARRAY['Deep Thought', 'Watson', 'AlphaZero', 'AlphaGo', 'Stockfish', 'Chinook'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which country hosted the first FIFA World Cup, in 1930?', NULL,
        'Uruguay', ARRAY['Brazil', 'Argentina', 'Italy', 'France', 'England', 'Mexico'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first woman to win the Academy Award for Best Director, in 2010?', NULL,
        'Kathryn Bigelow', ARRAY['Jane Campion', 'Chloé Zhao', 'Sofia Coppola', 'Greta Gerwig', 'Ava DuVernay', 'Barbra Streisand'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which sport became the first played on the Moon, in 1971?', NULL,
        'Golf', ARRAY['Baseball', 'Frisbee', 'Football', 'Tennis', 'Basketball', 'Cricket'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which American test pilot was the first officially credited with flying faster than sound, in 1947?', NULL,
        'Chuck Yeager', ARRAY['Scott Crossfield', 'Howard Hughes', 'John Glenn', 'Bob Hoover', 'Jacqueline Cochran', 'Wiley Post'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which computer engineer sent the first network email in 1971, introducing the @ symbol to separate a user''s name from their host computer?', NULL,
        'Ray Tomlinson', ARRAY['Vint Cerf', 'Tim Berners-Lee', 'Bob Kahn', 'Larry Roberts', 'Leonard Kleinrock', 'Jon Postel'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first African American to win the Nobel Prize in Literature, in 1993?', NULL,
        'Toni Morrison', ARRAY['Maya Angelou', 'Alice Walker', 'James Baldwin', 'Zora Neale Hurston', 'Langston Hughes', 'Ralph Ellison'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Portuguese explorer led the first European voyage to reach India by sea, in 1498?', NULL,
        'Vasco da Gama', ARRAY['Christopher Columbus', 'Ferdinand Magellan', 'Bartolomeu Dias', 'Prince Henry the Navigator', 'Amerigo Vespucci', 'Pedro Alvares Cabral'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What message did Samuel Morse send over the first long-distance telegraph line, in 1844?', NULL,
        '"What hath God wrought"', ARRAY['"Mr. Watson, come here"', '"Are you there?"', '"Come at once"', '"Hello, world"', '"Testing, one, two, three"', '"God save the Queen"'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1988, who became the first woman elected to lead a Muslim-majority country?', NULL,
        'Benazir Bhutto', ARRAY['Indira Gandhi', 'Sheikh Hasina', 'Khaleda Zia', 'Tansu Çiller', 'Megawati Sukarnoputri', 'Golda Meir'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who made the first airplane flight across the English Channel, in 1909?', NULL,
        'Louis Blériot', ARRAY['Alberto Santos-Dumont', 'Hubert Latham', 'Henri Farman', 'Glenn Curtiss', 'Charles Rolls', 'Gabriel Voisin'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which South African surgeon performed the first human heart transplant, in 1967?', NULL,
        'Christiaan Barnard', ARRAY['Denton Cooley', 'Michael DeBakey', 'Norman Shumway', 'Adrian Kantrowitz', 'Magdi Yacoub', 'Robert Jarvik'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to take her seat in the British House of Commons, in 1919?', NULL,
        'Nancy Astor', ARRAY['Constance Markievicz', 'Emmeline Pankhurst', 'Millicent Fawcett', 'Margaret Bondfield', 'Ellen Wilkinson', 'Barbara Castle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1974, what was the first product ever sold by scanning a barcode?', NULL,
        'A pack of chewing gum', ARRAY['A box of cereal', 'A can of soup', 'A bottle of cola', 'A loaf of bread', 'A carton of milk', 'A candy bar'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which French ski town hosted the first Winter Olympics, in 1924?', NULL,
        'Chamonix', ARRAY['St. Moritz', 'Grenoble', 'Albertville', 'Lake Placid', 'Innsbruck', 'Cortina d''Ampezzo'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1960, who made the first descent to the bottom of the Mariana Trench, with U.S. Navy officer Don Walsh?', NULL,
        'Jacques Piccard', ARRAY['James Cameron', 'Jacques Cousteau', 'Auguste Piccard', 'Robert Ballard', 'Sylvia Earle', 'William Beebe'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first woman to earn a medical degree in the United States, in 1849?', NULL,
        'Elizabeth Blackwell', ARRAY['Clara Barton', 'Elizabeth Garrett Anderson', 'Dorothea Dix', 'Mary Edwards Walker', 'Rebecca Lee Crumpler', 'Florence Nightingale'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1978, who, with Peter Habeler, made the first ascent of Mount Everest without supplemental oxygen?', NULL,
        'Reinhold Messner', ARRAY['Edmund Hillary', 'Tenzing Norgay', 'Chris Bonington', 'George Mallory', 'Jerzy Kukuczka', 'Ed Viesturs'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first planet discovered with a telescope, in 1781?', NULL,
        'Uranus', ARRAY['Neptune', 'Saturn', 'Jupiter', 'Mars', 'Mercury', 'Venus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which state was the first to ratify the U.S. Constitution, in 1787?', NULL,
        'Delaware', ARRAY['Pennsylvania', 'New Jersey', 'Georgia', 'Virginia', 'Massachusetts', 'Connecticut'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2019, which country made the first soft landing on the far side of the Moon?', NULL,
        'China', ARRAY['The United States', 'Russia', 'India', 'Japan', 'Israel', 'France'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Soviet cosmonaut made the first spacewalk, in 1965?', NULL,
        'Alexei Leonov', ARRAY['Yuri Gagarin', 'Gherman Titov', 'Ed White', 'Vladimir Komarov', 'Pavel Belyayev', 'Valery Bykovsky'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which French brothers built the hot-air balloon that carried the first people in free flight, in 1783?', NULL,
        'The Montgolfier brothers', ARRAY['The Wright brothers', 'The Lumière brothers', 'The Robert brothers', 'The Voisin brothers', 'The Michelin brothers', 'The Renault brothers'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2012, which spacecraft became the first human-made object to enter interstellar space?', NULL,
        'Voyager 1', ARRAY['Voyager 2', 'Pioneer 10', 'Pioneer 11', 'New Horizons', 'Cassini', 'Galileo'], 400);

COMMIT;

-- Check: should return 64.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_FIRSTS';
