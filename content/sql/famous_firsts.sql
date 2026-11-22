-- ============================================================================
-- content/sql/famous_firsts.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/famous_firsts.csv, the master copy of the
-- Thinking Pants category FAMOUS_FIRSTS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_FIRSTS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first woman to fly solo across the Atlantic Ocean?', NULL,
        'Amelia Earhart', ARRAY['Jacqueline Cochran', 'Bessie Coleman', 'Harriet Quimby', 'Beryl Markham', 'Jean Batten', 'Ruth Nichols'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What was the first full-length animated feature film ever released by Disney?', NULL,
        'Snow White and the Seven Dwarfs', ARRAY['Pinocchio', 'Fantasia', 'Bambi', 'Cinderella', 'Dumbo', 'Sleeping Beauty'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which country became the first to launch a satellite into orbit, Sputnik, in 1957?', NULL,
        'The Soviet Union', ARRAY['The United States', 'China', 'France', 'The United Kingdom', 'Germany', 'Japan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first person to orbit the Earth in space, aboard Vostok 1 in 1961?', NULL,
        'Yuri Gagarin', ARRAY['Alan Shepard', 'John Glenn', 'Gherman Titov', 'Neil Armstrong', 'Valentina Tereshkova', 'Alexei Leonov'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which brothers made the first powered, controlled airplane flight, in 1903?', NULL,
        'The Wright brothers', ARRAY['The Montgolfier brothers', 'The Lumière brothers', 'The Voisin brothers', 'The Dodge brothers', 'The Duryea brothers', 'The Studebaker brothers'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the name of the sheep that became the first mammal cloned from an adult cell, in 1996?', NULL,
        'Dolly', ARRAY['Molly', 'Polly', 'Daisy', 'Bessie', 'Shaun', 'Lambchop'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In which country were the first modern Olympic Games held, in 1896?', NULL,
        'Greece', ARRAY['France', 'England', 'The United States', 'Italy', 'Sweden', 'Germany'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to lead the British government as Prime Minister?', NULL,
        'Margaret Thatcher', ARRAY['Theresa May', 'Barbara Castle', 'Shirley Williams', 'Harriet Harman', 'Betty Boothroyd', 'Liz Truss'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who made the first solo nonstop flight across the Atlantic, in 1927?', NULL,
        'Charles Lindbergh', ARRAY['Howard Hughes', 'John Alcock', 'Wiley Post', 'Glenn Curtiss', 'Eddie Rickenbacker', 'Chuck Yeager'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first African American President of the United States?', NULL,
        'Barack Obama', ARRAY['Colin Powell', 'Jesse Jackson', 'Kamala Harris', 'Cory Booker', 'Deval Patrick', 'Martin Luther King Jr.'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first feature film made entirely with computer animation, in 1995?', NULL,
        'Toy Story', ARRAY['A Bug''s Life', 'Antz', 'Shrek', 'Finding Nemo', 'Monsters, Inc.', 'The Lion King'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Disney character made his official debut in the 1928 cartoon "Steamboat Willie"?', NULL,
        'Mickey Mouse', ARRAY['Donald Duck', 'Goofy', 'Pluto', 'Oswald the Lucky Rabbit', 'Felix the Cat', 'Daisy Duck'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which superhero first appeared in Action Comics #1, in 1938?', NULL,
        'Superman', ARRAY['Batman', 'Wonder Woman', 'Captain America', 'The Flash', 'Green Lantern', 'Captain Marvel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What was the first Disney theme park, opened in 1955?', NULL,
        'Disneyland', ARRAY['Magic Kingdom', 'Epcot', 'Tokyo Disneyland', 'Disneyland Paris', 'Disney California Adventure', 'Disney''s Hollywood Studios'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 2021, who became the first woman to serve as Vice President of the United States?', NULL,
        'Kamala Harris', ARRAY['Hillary Clinton', 'Nancy Pelosi', 'Geraldine Ferraro', 'Sarah Palin', 'Condoleezza Rice', 'Michelle Obama'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What subtitle was later given to the first Star Wars film, released in 1977?', NULL,
        'A New Hope', ARRAY['The Empire Strikes Back', 'Return of the Jedi', 'Revenge of the Sith', 'Attack of the Clones', 'The Force Awakens', 'Rogue One'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who became the first U.S. President to resign from office, in 1974?', NULL,
        'Richard Nixon', ARRAY['Gerald Ford', 'Lyndon B. Johnson', 'Andrew Johnson', 'Jimmy Carter', 'Bill Clinton', 'Ronald Reagan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What is the first book of the Bible?', NULL,
        'Genesis', ARRAY['Exodus', 'Leviticus', 'Numbers', 'Deuteronomy', 'Psalms', 'Matthew'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first person to walk on the Moon, in 1969?', NULL,
        'Neil Armstrong', ARRAY['Buzz Aldrin', 'John Glenn', 'Michael Collins', 'Alan Shepard', 'Yuri Gagarin', 'Jim Lovell'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which famous line was spoken as the first human footprint was made on the Moon, in 1969?', NULL,
        'That''s one small step for man', ARRAY['Houston, the Eagle has landed', 'The eagle has wings', 'We came in peace for all mankind', 'Houston, we have a problem', 'Magnificent desolation', 'To infinity and beyond'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which letter comes first among the 24 letters the ancient Greeks wrote with?', NULL,
        'Alpha', ARRAY['Beta', 'Omega', 'Delta', 'Gamma', 'Sigma', 'Epsilon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which "unsinkable" ocean liner sank on its very first voyage, in 1912?', NULL,
        'The Titanic', ARRAY['The Lusitania', 'The Britannic', 'The Olympic', 'The Queen Mary', 'The Andrea Doria', 'The Mayflower'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What four words famously begin many fairy tales?', NULL,
        'Once upon a time', ARRAY['In a faraway land', 'Long, long ago', 'There once was a', 'In days of old', 'Many years ago', 'Happily ever after'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Whose huge signature, the first on the Declaration of Independence, became slang for any signature?', NULL,
        'John Hancock', ARRAY['Benjamin Franklin', 'Thomas Jefferson', 'John Adams', 'Samuel Adams', 'George Washington', 'Patrick Henry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'According to legend, who sewed the first American flag?', NULL,
        'Betsy Ross', ARRAY['Martha Washington', 'Abigail Adams', 'Dolley Madison', 'Molly Pitcher', 'Clara Barton', 'Pocahontas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which Apollo mission made the first crewed landing on the Moon?', NULL,
        'Apollo 11', ARRAY['Apollo 1', 'Apollo 8', 'Apollo 12', 'Apollo 13', 'Apollo 17', 'Apollo 10'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which inventor''s first words over the telephone were "Mr. Watson, come here"?', NULL,
        'Alexander Graham Bell', ARRAY['Thomas Edison', 'Samuel Morse', 'Nikola Tesla', 'Guglielmo Marconi', 'George Westinghouse', 'Elisha Gray'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which fashion doll made her first appearance at the 1959 New York Toy Fair?', NULL,
        'Barbie', ARRAY['Cabbage Patch Kid', 'American Girl', 'Raggedy Ann', 'Bratz', 'Polly Pocket', 'Chatty Cathy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which swimmer became the first athlete to win eight gold medals at a single Olympics, in 2008?', NULL,
        'Michael Phelps', ARRAY['Mark Spitz', 'Ryan Lochte', 'Ian Thorpe', 'Usain Bolt', 'Carl Lewis', 'Matt Biondi'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who led the first voyage of 1492 that reached the Americas for Spain?', NULL,
        'Christopher Columbus', ARRAY['Amerigo Vespucci', 'Ferdinand Magellan', 'Hernán Cortés', 'John Cabot', 'Juan Ponce de León', 'Francis Drake'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which frog was one of Jim Henson''s very first Muppets, in 1955?', NULL,
        'Kermit', ARRAY['Gonzo', 'Fozzie', 'Rowlf', 'Scooter', 'Grover', 'Animal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which children''s show, starring Big Bird, first aired on public TV in 1969?', NULL,
        'Sesame Street', ARRAY['Mister Rogers'' Neighborhood', 'The Electric Company', 'Captain Kangaroo', 'Romper Room', 'Reading Rainbow', 'Zoom'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which 2008 film about a billionaire in a metal suit was the first in the Marvel Cinematic Universe?', NULL,
        'Iron Man', ARRAY['The Incredible Hulk', 'Thor', 'Captain America: The First Avenger', 'The Avengers', 'Spider-Man', 'Black Panther'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What are the first words of the Gettysburg Address?', NULL,
        'Four score and seven years ago', ARRAY['We hold these truths', 'When in the course of human events', 'We the people', 'Ask not what your country', 'I have a dream'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What three words begin the U.S. Constitution?', NULL,
        'We the People', ARRAY['In God We Trust', 'We Hold These', 'Life, Liberty and', 'For the People', 'By the People', 'One Nation Under'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which amendment to the U.S. Constitution protects freedom of speech?', NULL,
        'The First Amendment', ARRAY['The Second Amendment', 'The Fifth Amendment', 'The Tenth Amendment', 'The Fourth Amendment', 'The Nineteenth Amendment', 'The Fourteenth Amendment'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What are the first ten amendments to the U.S. Constitution called?', NULL,
        'The Bill of Rights', ARRAY['The Articles of Confederation', 'The Federalist Papers', 'The Magna Carta', 'The Declaration of Rights', 'The Mayflower Compact', 'The Great Compromise'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In the Bible, who was the first man?', NULL,
        'Adam', ARRAY['Abraham', 'Noah', 'Moses', 'Abel', 'Seth', 'Cain'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which planet is first, closest to the Sun?', NULL,
        'Mercury', ARRAY['Venus', 'Mars', 'Earth', 'Pluto', 'Jupiter', 'Neptune'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is the first element on the periodic table?', NULL,
        'Hydrogen', ARRAY['Helium', 'Oxygen', 'Carbon', 'Lithium', 'Nitrogen', 'Iron'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which U.S. holiday remembers a 1621 harvest feast shared by the Pilgrims and their Native neighbors?', NULL,
        'Thanksgiving', ARRAY['Columbus Day', 'Independence Day', 'Labor Day', 'Memorial Day', 'Halloween', 'Presidents'' Day'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is a student in their first year of high school or college called?', NULL,
        'A freshman', ARRAY['A sophomore', 'A junior', 'A senior', 'A rookie', 'A plebe', 'A novice'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first Black president of South Africa, in 1994?', NULL,
        'Nelson Mandela', ARRAY['Desmond Tutu', 'Thabo Mbeki', 'Jacob Zuma', 'Steve Biko', 'F. W. de Klerk', 'Kofi Annan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which singer first showed off his "moonwalk" dance on TV in 1983?', NULL,
        'Michael Jackson', ARRAY['Prince', 'James Brown', 'Usher', 'Justin Timberlake', 'Bruno Mars', 'MC Hammer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What words open the first crawl of every main Star Wars film?', NULL,
        'A long time ago in a galaxy far, far away', ARRAY['In a galaxy far, far away', 'Once upon a time in space', 'Long ago, among the stars', 'Beyond the edge of the galaxy', 'At the dawn of the Empire', 'In the year 3000'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which ship carried the Pilgrims to Plymouth in 1620?', NULL,
        'The Mayflower', ARRAY['The Santa María', 'The Speedwell', 'The Endeavour', 'The Discovery', 'The Half Moon', 'The Golden Hind'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In the song, what did "my true love" give me on the first day of Christmas?', NULL,
        'A partridge in a pear tree', ARRAY['Two turtle doves', 'Five golden rings', 'Three French hens', 'A drummer drumming', 'Four calling birds', 'A swan a-swimming'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first U.S. president to be assassinated, in 1865?', NULL,
        'Abraham Lincoln', ARRAY['James Garfield', 'William McKinley', 'John F. Kennedy', 'Andrew Johnson', 'Ulysses S. Grant', 'Zachary Taylor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What do you call the first, small course of a meal, before the main dish?', NULL,
        'An appetizer', ARRAY['A dessert', 'An entrée', 'A digestif', 'A side dish', 'A palate cleanser', 'A nightcap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which university, founded in 1636, is the oldest in the United States?', NULL,
        'Harvard', ARRAY['Yale', 'Princeton', 'William & Mary', 'Columbia', 'Penn', 'Oxford'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1953, who became, with Tenzing Norgay, one of the first two confirmed climbers to reach the summit of Mount Everest?', NULL,
        'Edmund Hillary', ARRAY['George Mallory', 'John Hunt', 'Reinhold Messner', 'Chris Bonington', 'Andrew Irvine', 'Junko Tabei'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first female scientist to win a Nobel Prize, honored in Physics in 1903?', NULL,
        'Marie Curie', ARRAY['Rosalind Franklin', 'Lise Meitner', 'Dorothy Hodgkin', 'Irene Joliot-Curie', 'Ada Lovelace', 'Emmy Noether'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Alexander Fleming''s 1928 discovery of which mold product opened the age of antibiotics?', NULL,
        'Penicillin', ARRAY['Streptomycin', 'Insulin', 'Aspirin', 'Tetracycline', 'Morphine', 'Quinine'], 200, 'Fleming noticed it because mold had grown on a dish of bacteria he left out over a vacation.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the title of the first Harry Potter book (UK title)?', NULL,
        'The Philosopher''s Stone', ARRAY['The Chamber of Secrets', 'The Prisoner of Azkaban', 'The Goblet of Fire', 'The Order of the Phoenix', 'The Half-Blood Prince', 'The Deathly Hallows'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Atari game, released in 1972, was the first commercially successful arcade video game?', NULL,
        'Pong', ARRAY['Computer Space', 'Space Invaders', 'Pac-Man', 'Asteroids', 'Breakout', 'Galaxian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first person to run a mile in under four minutes, in 1954?', NULL,
        'Roger Bannister', ARRAY['John Landy', 'Jesse Owens', 'Sebastian Coe', 'Steve Ovett', 'Paavo Nurmi', 'Jim Ryun'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who broke baseball''s color line in 1947 as the first Black player in the modern major leagues?', NULL,
        'Jackie Robinson', ARRAY['Larry Doby', 'Satchel Paige', 'Hank Aaron', 'Willie Mays', 'Roy Campanella', 'Josh Gibson'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was India''s first female prime minister?', NULL,
        'Indira Gandhi', ARRAY['Sonia Gandhi', 'Pratibha Patil', 'Sarojini Naidu', 'Benazir Bhutto', 'Sheikh Hasina', 'Golda Meir'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Edward Jenner developed the first vaccine in 1796. Which disease did it protect against?', NULL,
        'Smallpox', ARRAY['Polio', 'Rabies', 'Measles', 'Cholera', 'Tetanus', 'Diphtheria'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which park, founded in 1872, is widely considered the world''s first national park?', NULL,
        'Yellowstone', ARRAY['Yosemite', 'Grand Canyon', 'Banff', 'Sequoia', 'Zion', 'Kruger'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first pope from the Americas, in 2013?', NULL,
        'Pope Francis', ARRAY['Pope Benedict XVI', 'Pope John Paul II', 'Pope John XXIII', 'Pope Paul VI', 'Pope Pius XII', 'Pope John Paul I'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first Roman Catholic President of the United States?', NULL,
        'John F. Kennedy', ARRAY['Franklin D. Roosevelt', 'Lyndon B. Johnson', 'Richard Nixon', 'Dwight D. Eisenhower', 'Harry Truman', 'Woodrow Wilson'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to serve on the U.S. Supreme Court, appointed in 1981?', NULL,
        'Sandra Day O''Connor', ARRAY['Ruth Bader Ginsburg', 'Sonia Sotomayor', 'Elena Kagan', 'Harriet Miers', 'Amy Coney Barrett', 'Janet Reno'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first permanent English settlement in North America, founded in 1607?', NULL,
        'Jamestown', ARRAY['Plymouth', 'Roanoke', 'St. Augustine', 'Boston', 'Quebec', 'New Amsterdam'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first major book printed in Europe with movable metal type, around 1455?', NULL,
        'The Gutenberg Bible', ARRAY['The King James Bible', 'The Book of Kells', 'The Domesday Book', 'The Canterbury Tales', 'The Lindisfarne Gospels', 'The Diamond Sutra'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which team won the first Super Bowl, in January 1967?', NULL,
        'The Green Bay Packers', ARRAY['The Kansas City Chiefs', 'The Dallas Cowboys', 'The New York Jets', 'The Baltimore Colts', 'The Oakland Raiders', 'The Cleveland Browns'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which country issued the world''s first adhesive postage stamp, the Penny Black, in 1840?', NULL,
        'The United Kingdom', ARRAY['France', 'The United States', 'Switzerland', 'Brazil', 'Germany', 'Austria'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Ford car, starting in 1913, was the first to be built on a moving assembly line?', NULL,
        'The Model T', ARRAY['The Model A', 'The Mustang', 'The Thunderbird', 'The Model N', 'The Model K', 'The Edsel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 2007, who became the first woman to serve as Speaker of the U.S. House of Representatives?', NULL,
        'Nancy Pelosi', ARRAY['Hillary Clinton', 'Madeleine Albright', 'Dianne Feinstein', 'Condoleezza Rice', 'Geraldine Ferraro', 'Barbara Boxer'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Pokémon is number one in the National Pokédex?', NULL,
        'Bulbasaur', ARRAY['Pikachu', 'Charmander', 'Squirtle', 'Ivysaur', 'Mew', 'Jigglypuff'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Whose expedition was the first to sail all the way around the world, though its leader died on the way?', NULL,
        'Ferdinand Magellan', ARRAY['Francis Drake', 'James Cook', 'Vasco da Gama', 'Christopher Columbus', 'Amerigo Vespucci', 'Abel Tasman'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which cable channel, launched in 1980, was the first to show news 24 hours a day?', NULL,
        'CNN', ARRAY['Fox News', 'MSNBC', 'C-SPAN', 'ESPN', 'CNBC', 'The Weather Channel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first American to orbit the Earth, in 1962?', NULL,
        'John Glenn', ARRAY['Alan Shepard', 'Gus Grissom', 'Neil Armstrong', 'Scott Carpenter', 'Gordon Cooper', 'Buzz Aldrin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 2016, who became the first woman nominated for president by a major U.S. party?', NULL,
        'Hillary Clinton', ARRAY['Sarah Palin', 'Geraldine Ferraro', 'Nancy Pelosi', 'Elizabeth Warren', 'Michelle Obama', 'Condoleezza Rice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1969, who became Israel''s first female prime minister?', NULL,
        'Golda Meir', ARRAY['Indira Gandhi', 'Margaret Thatcher', 'Benazir Bhutto', 'Tzipi Livni', 'Hannah Arendt', 'Eleanor Roosevelt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first African American justice of the U.S. Supreme Court, in 1967?', NULL,
        'Thurgood Marshall', ARRAY['Clarence Thomas', 'Ketanji Brown Jackson', 'Earl Warren', 'Charles Hamilton Houston', 'Ralph Bunche', 'John Lewis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which 14-year-old gymnast scored the first perfect 10 in Olympic history, in 1976?', NULL,
        'Nadia Comăneci', ARRAY['Olga Korbut', 'Mary Lou Retton', 'Simone Biles', 'Nellie Kim', 'Ludmilla Tourischeva', 'Kerri Strug'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In which 1981 arcade game did Mario make his first appearance?', NULL,
        'Donkey Kong', ARRAY['Super Mario Bros.', 'Mario Bros.', 'Pac-Man', 'Space Invaders', 'Galaga', 'Frogger'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which Norse explorer reached North America about 500 years before Columbus?', NULL,
        'Leif Erikson', ARRAY['Erik the Red', 'Ragnar Lothbrok', 'Harald Hardrada', 'Bjarni Herjólfsson', 'Ivar the Boneless', 'Olaf Tryggvason'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which engineer built the first giant observation wheel, for Chicago''s 1893 World''s Fair, and gave it his name?', NULL,
        'George Ferris', ARRAY['George Washington Gale', 'Daniel Burnham', 'Frederick Law Olmsted', 'Gustave Eiffel', 'Elisha Otis', 'John Roebling'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which soft drink was first sold at an Atlanta pharmacy in 1886, as a health tonic?', NULL,
        'Coca-Cola', ARRAY['Pepsi', 'Dr Pepper', 'Root beer', 'Ginger ale', '7 Up', 'Moxie'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which brothers in Battle Creek, Michigan, first made corn flakes?', NULL,
        'The Kellogg brothers', ARRAY['The Post brothers', 'The Quaker brothers', 'The Mars brothers', 'The Hershey brothers', 'The Graham brothers', 'The Smucker brothers'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who developed the first successful polio vaccine, announced in 1955?', NULL,
        'Jonas Salk', ARRAY['Albert Sabin', 'Louis Pasteur', 'Edward Jenner', 'Alexander Fleming', 'Robert Koch', 'Walter Reed'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Near which North Carolina town did the first powered airplane flight take place, in 1903?', NULL,
        'Kitty Hawk', ARRAY['Cape Hatteras', 'Wilmington', 'Raleigh', 'Elizabeth City', 'Chapel Hill', 'Dayton'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is the name of the famous 1968 photo, taken by Apollo 8''s crew, of our planet coming up over the Moon''s horizon?', NULL,
        'Earthrise', ARRAY['The Blue Marble', 'Pale Blue Dot', 'Moonrise', 'The Pillars of Creation', 'Home', 'Earthshine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became Disney''s first Black princess, in 2009''s "The Princess and the Frog"?', NULL,
        'Tiana', ARRAY['Moana', 'Jasmine', 'Nala', 'Pocahontas', 'Mulan', 'Raya'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which novel begins with one of literature''s most famous first lines, "Call me Ishmael"?', NULL,
        'Moby-Dick', ARRAY['Treasure Island', 'The Old Man and the Sea', 'Robinson Crusoe', 'Heart of Darkness', 'Captains Courageous', 'Twenty Thousand Leagues Under the Sea'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which J. R. R. Tolkien book opens with "In a hole in the ground there lived a..."?', NULL,
        'The Hobbit', ARRAY['The Fellowship of the Ring', 'The Silmarillion', 'The Two Towers', 'Farmer Giles of Ham', 'The Return of the King', 'The Children of Húrin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In the Bible, who was the first murder victim?', NULL,
        'Abel', ARRAY['Cain', 'Adam', 'Seth', 'Isaac', 'Joseph', 'Lot'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first U.S. Secretary of the Treasury, now on the $10 bill and star of a hit Broadway musical?', NULL,
        'Alexander Hamilton', ARRAY['Benjamin Franklin', 'Albert Gallatin', 'Salmon P. Chase', 'Aaron Burr', 'John Jay', 'James Madison'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which German engineer, whose name lives on in a famous car brand, built the first practical gasoline car in 1886?', NULL,
        'Karl Benz', ARRAY['Gottlieb Daimler', 'Ferdinand Porsche', 'Rudolf Diesel', 'Wilhelm Maybach', 'August Horch', 'Nikolaus Otto'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is the first public performance of a play or movie called?', NULL,
        'A premiere', ARRAY['A preview', 'A matinee', 'A rehearsal', 'An encore', 'A debut tour', 'A finale'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who won the first season of "American Idol," in 2002?', NULL,
        'Kelly Clarkson', ARRAY['Carrie Underwood', 'Fantasia Barrino', 'Ruben Studdard', 'Jennifer Hudson', 'Clay Aiken', 'Taylor Hicks'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who crowned himself the first Emperor of the French, in 1804?', NULL,
        'Napoleon Bonaparte', ARRAY['Louis XVI', 'Charlemagne', 'Louis XIV', 'Napoleon III', 'Charles de Gaulle', 'Robespierre'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which college football game, first played in 1902 in Pasadena, is the oldest bowl game?', NULL,
        'The Rose Bowl', ARRAY['The Orange Bowl', 'The Sugar Bowl', 'The Cotton Bowl', 'The Fiesta Bowl', 'The Sun Bowl', 'The Peach Bowl'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is the first (smallest) prime number?', NULL,
        '2', ARRAY['1', '3', '0', '5', '7', '9'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 2002, who became the first Black woman to win the Oscar for Best Actress?', NULL,
        'Halle Berry', ARRAY['Whoopi Goldberg', 'Viola Davis', 'Angela Bassett', 'Octavia Spencer', 'Lupita Nyong''o', 'Jennifer Hudson'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 2020, which South Korean thriller became the first non-English film to win Best Picture?', NULL,
        'Parasite', ARRAY['Roma', 'Squid Game', 'Oldboy', 'Crouching Tiger, Hidden Dragon', 'Minari', 'Train to Busan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What did the first American flag, said to be sewn in 1776, have in its blue corner?', NULL,
        'Thirteen stars', ARRAY['Fifty stars', 'A bald eagle', 'The British Union Jack', 'A rattlesnake', 'A liberty bell', 'A pine tree'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What is a ship''s "maiden voyage"?', NULL,
        'Its first trip', ARRAY['Its last trip', 'A trip carrying only women', 'A trip in calm seas', 'A rescue mission', 'A trip around the world', 'A trip without cargo'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'What was the first video ever played on MTV when it launched in 1981?', NULL,
        '"Video Killed the Radio Star"', ARRAY['"Thriller"', '"Money for Nothing"', '"Billie Jean"', '"Sledgehammer"', '"Take On Me"', '"Like a Virgin"'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first woman to travel into space, in 1963?', NULL,
        'Valentina Tereshkova', ARRAY['Sally Ride', 'Mae Jemison', 'Svetlana Savitskaya', 'Judith Resnik', 'Eileen Collins', 'Liu Yang'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which explorer led the first expedition to reach the South Pole, in December 1911?', NULL,
        'Roald Amundsen', ARRAY['Robert Falcon Scott', 'Ernest Shackleton', 'Richard Byrd', 'James Cook', 'Douglas Mawson', 'Fridtjof Nansen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Caribbean colony became the first nation to win independence through a successful slave revolt, in 1804?', NULL,
        'Haiti', ARRAY['Jamaica', 'Cuba', 'The Dominican Republic', 'Barbados', 'Trinidad and Tobago', 'Saint Lucia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which 1927 film is widely credited as the first feature-length "talkie," with synchronized dialogue sequences?', NULL,
        'The Jazz Singer', ARRAY['Sunrise', 'Wings', 'Metropolis', 'The Lights of New York', 'Don Juan', 'The Singing Fool'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Soviet space dog, launched aboard Sputnik 2 in 1957, was the first animal to orbit the Earth?', NULL,
        'Laika', ARRAY['Belka', 'Strelka', 'Ham', 'Enos', 'Felicette', 'Albert II'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first African American to win the Nobel Prize in Literature, in 1993?', NULL,
        'Toni Morrison', ARRAY['Maya Angelou', 'Alice Walker', 'James Baldwin', 'Zora Neale Hurston', 'Langston Hughes', 'Ralph Ellison'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which Portuguese explorer led the first European voyage to reach India by sea, in 1498?', NULL,
        'Vasco da Gama', ARRAY['Christopher Columbus', 'Ferdinand Magellan', 'Bartolomeu Dias', 'Prince Henry the Navigator', 'Amerigo Vespucci', 'Pedro Alvares Cabral'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first James Bond film, released in 1962?', NULL,
        'Dr. No', ARRAY['From Russia with Love', 'Goldfinger', 'Thunderball', 'Casino Royale', 'You Only Live Twice', 'Live and Let Die'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who is widely credited as the first computer programmer, for her 1843 notes on Charles Babbage''s Analytical Engine?', NULL,
        'Ada Lovelace', ARRAY['Grace Hopper', 'Mary Shelley', 'Katherine Johnson', 'Hedy Lamarr', 'Margaret Hamilton', 'Florence Nightingale'], 300, 'She was the daughter of the poet Lord Byron.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Beatles song was the band''s first single, in 1962?', NULL,
        'Love Me Do', ARRAY['Please Please Me', 'She Loves You', 'I Want to Hold Your Hand', 'From Me to You', 'Twist and Shout', 'Can''t Buy Me Love'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2001, which country became the first to legalize same-sex marriage nationwide?', NULL,
        'The Netherlands', ARRAY['Belgium', 'Canada', 'Spain', 'Denmark', 'Sweden', 'Norway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which IBM computer became the first to beat a reigning world chess champion in a match, in 1997?', NULL,
        'Deep Blue', ARRAY['Deep Thought', 'Watson', 'AlphaZero', 'AlphaGo', 'Stockfish', 'Chinook'], 300, 'Kasparov had beaten Deep Blue in 1996; the machine won their rematch in 1997.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which country hosted the first FIFA World Cup, in 1930?', NULL,
        'Uruguay', ARRAY['Brazil', 'Argentina', 'Italy', 'France', 'England', 'Mexico'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first woman to win the Academy Award for Best Director, in 2010?', NULL,
        'Kathryn Bigelow', ARRAY['Jane Campion', 'Chloé Zhao', 'Sofia Coppola', 'Greta Gerwig', 'Ava DuVernay', 'Barbra Streisand'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which sport became the first played on the Moon, in 1971?', NULL,
        'Golf', ARRAY['Baseball', 'Frisbee', 'Football', 'Tennis', 'Basketball', 'Cricket'], 300, 'Alan Shepard hit two balls during Apollo 14, with a club head fixed to a tool handle.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which American test pilot was the first officially credited with flying faster than sound, in 1947?', NULL,
        'Chuck Yeager', ARRAY['Scott Crossfield', 'Howard Hughes', 'John Glenn', 'Bob Hoover', 'Jacqueline Cochran', 'Wiley Post'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which state was the first to ratify the U.S. Constitution, in 1787?', NULL,
        'Delaware', ARRAY['Pennsylvania', 'New Jersey', 'Georgia', 'Virginia', 'Massachusetts', 'Connecticut'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2012, which spacecraft became the first human-made object to enter interstellar space?', NULL,
        'Voyager 1', ARRAY['Voyager 2', 'Pioneer 10', 'Pioneer 11', 'New Horizons', 'Cassini', 'Galileo'], 300, 'Voyager 1 carries a golden record of sounds, music and greetings from Earth, in case anyone finds it.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1800, who became the first President to live in the White House?', NULL,
        'John Adams', ARRAY['George Washington', 'Thomas Jefferson', 'James Madison', 'James Monroe', 'John Quincy Adams', 'Andrew Jackson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1962, NASA''s Mariner 2 made the first successful flyby of another planet. Which one?', NULL,
        'Venus', ARRAY['Mars', 'Mercury', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1968, who became the first Black woman elected to the U.S. Congress?', NULL,
        'Shirley Chisholm', ARRAY['Barbara Jordan', 'Yvonne Brathwaite Burke', 'Carol Moseley Braun', 'Fannie Lou Hamer', 'Coretta Scott King', 'Maxine Waters'], 300, 'In 1972 she also became the first Black candidate to seek a major party''s presidential nomination.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which city opened the world''s first underground railway, in 1863?', NULL,
        'London', ARRAY['Paris', 'New York', 'Boston', 'Budapest', 'Glasgow', 'Berlin'], 300, 'The first trains were pulled by steam engines, through tunnels dug just under the streets.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which Native people shared the 1621 harvest feast with the Pilgrims at Plymouth?', NULL,
        'The Wampanoag', ARRAY['The Cherokee', 'The Iroquois', 'The Powhatan', 'The Lenape', 'The Mohegan', 'The Algonquin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first American in space, on a 15-minute flight in 1961?', NULL,
        'Alan Shepard', ARRAY['John Glenn', 'Gus Grissom', 'Neil Armstrong', 'Wally Schirra', 'Deke Slayton', 'Chuck Yeager'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which burger chain, founded in Wichita in 1921, is often called the first fast-food chain?', NULL,
        'White Castle', ARRAY['McDonald''s', 'Burger King', 'A&W', 'Wendy''s', 'Krystal', 'Dairy Queen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which city was the first capital of the U.S. under the Constitution, where the first president took his oath on Wall Street?', NULL,
        'New York City', ARRAY['Philadelphia', 'Boston', 'Baltimore', 'Annapolis', 'Washington, D.C.', 'Richmond'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which territory, now nicknamed "the Equality State," was the first in the U.S. to give women the vote, in 1869?', NULL,
        'Wyoming', ARRAY['Utah', 'Colorado', 'Montana', 'Idaho', 'Washington', 'Kansas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first U.S. president to be impeached, in 1868?', NULL,
        'Andrew Johnson', ARRAY['Ulysses S. Grant', 'Abraham Lincoln', 'Andrew Jackson', 'James Buchanan', 'Rutherford B. Hayes', 'John Tyler'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which suffragist became, in 1979, the first real woman pictured on a circulating U.S. coin?', NULL,
        'Susan B. Anthony', ARRAY['Sacagawea', 'Helen Keller', 'Eleanor Roosevelt', 'Elizabeth Cady Stanton', 'Harriet Tubman', 'Amelia Earhart'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which U.S. president, namesake of the teddy bear, became the first American to win a Nobel Prize, in 1906?', NULL,
        'Theodore Roosevelt', ARRAY['Woodrow Wilson', 'William Taft', 'Franklin D. Roosevelt', 'Jimmy Carter', 'Grover Cleveland', 'William McKinley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What nursery rhyme did Thomas Edison recite for the first recording of a voice played back, in 1877?', NULL,
        'Mary Had a Little Lamb', ARRAY['Twinkle, Twinkle, Little Star', 'Humpty Dumpty', 'Jack and Jill', 'Hickory Dickory Dock', 'Old King Cole', 'Baa, Baa, Black Sheep'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first African American woman in space, in 1992?', NULL,
        'Mae Jemison', ARRAY['Sally Ride', 'Stephanie Wilson', 'Joan Higginbotham', 'Christa McAuliffe', 'Jessica Watkins', 'Yvonne Cagle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'The first powered, controlled airplane flight, in 1903, lasted about how long?', NULL,
        '12 seconds', ARRAY['2 seconds', '1 minute', '5 minutes', '30 minutes', '1 hour', '3 hours'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1991, which film became the first animated movie nominated for the Oscar for Best Picture?', NULL,
        'Beauty and the Beast', ARRAY['The Lion King', 'Aladdin', 'The Little Mermaid', 'Toy Story', 'Up', 'Shrek'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first Black man to win the Wimbledon singles title, in 1975?', NULL,
        'Arthur Ashe', ARRAY['Yannick Noah', 'MaliVai Washington', 'James Blake', 'Frances Tiafoe', 'Althea Gibson', 'Jimmy Connors'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which Bill Haley & His Comets song, in 1955, was the first rock and roll record to top the Billboard pop chart?', NULL,
        'Rock Around the Clock', ARRAY['Shake, Rattle and Roll', 'Hound Dog', 'Johnny B. Goode', 'Blue Suede Shoes', 'Great Balls of Fire', 'That''ll Be the Day'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which song became the first ever played in space, on a smuggled harmonica in 1965?', NULL,
        'Jingle Bells', ARRAY['Fly Me to the Moon', 'Amazing Grace', 'Twinkle, Twinkle, Little Star', 'Silent Night', 'The Star-Spangled Banner', 'Happy Birthday'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1997, who became the first woman to serve as U.S. Secretary of State?', NULL,
        'Madeleine Albright', ARRAY['Condoleezza Rice', 'Hillary Clinton', 'Jeane Kirkpatrick', 'Janet Reno', 'Nancy Pelosi', 'Elizabeth Dole'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which inventor ran the first commercially successful steamboat, on the Hudson River in 1807?', NULL,
        'Robert Fulton', ARRAY['Eli Whitney', 'John Fitch', 'Samuel Morse', 'Cyrus McCormick', 'James Watt', 'Robert Livingston'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In which year were the first Nobel Prizes awarded?', NULL,
        '1901', ARRAY['1895', '1910', '1920', '1876', '1888', '1899'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which Charles Dickens novel opens "It was the best of times, it was the worst of times"?', NULL,
        'A Tale of Two Cities', ARRAY['Great Expectations', 'Oliver Twist', 'Bleak House', 'David Copperfield', 'Hard Times', 'Little Dorrit'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first Black quarterback to win a Super Bowl, in 1988?', NULL,
        'Doug Williams', ARRAY['Warren Moon', 'Randall Cunningham', 'Russell Wilson', 'Patrick Mahomes', 'Michael Vick', 'Steve McNair'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1926, who became the first woman to swim the English Channel?', NULL,
        'Gertrude Ederle', ARRAY['Florence Chadwick', 'Amelia Earhart', 'Esther Williams', 'Diana Nyad', 'Lynne Cox', 'Babe Didrikson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which ruler, buried with the Terracotta Army, was the first emperor to unite his country?', NULL,
        'Qin Shi Huang', ARRAY['Kublai Khan', 'Genghis Khan', 'Emperor Wu of Han', 'Sun Yat-sen', 'The Yongle Emperor', 'Puyi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1964, who became the first Black man to win the Oscar for Best Actor, for "Lilies of the Field"?', NULL,
        'Sidney Poitier', ARRAY['Denzel Washington', 'Harry Belafonte', 'James Earl Jones', 'Morgan Freeman', 'Paul Robeson', 'Louis Gossett Jr.'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 2006, who became the first woman to anchor a big-network weekday evening news show on her own?', NULL,
        'Katie Couric', ARRAY['Barbara Walters', 'Diane Sawyer', 'Connie Chung', 'Jane Pauley', 'Maria Shriver', 'Gwen Ifill'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 2002, which tennis player became the first Black woman ranked No. 1 in the computer-ranking era?', NULL,
        'Venus Williams', ARRAY['Serena Williams', 'Coco Gauff', 'Naomi Osaka', 'Sloane Stephens', 'Zina Garrison', 'Althea Gibson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which first nuclear-powered submarine, launched in 1954, shared its name with Captain Nemo''s ship?', NULL,
        'The USS Nautilus', ARRAY['The USS Seawolf', 'The USS Triton', 'The USS Thresher', 'The USS Skate', 'The USS Enterprise', 'The USS Holland'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1893, which country became the first to give all women the right to vote in national elections?', NULL,
        'New Zealand', ARRAY['Australia', 'Finland', 'Norway', 'The United States', 'The United Kingdom', 'Sweden'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Who was the first person to swim across the English Channel without a flotation aid, in 1875?', NULL,
        'Matthew Webb', ARRAY['Gertrude Ederle', 'Thomas Burgess', 'Florence Chadwick', 'Mercedes Gleitze', 'Edward Temme', 'Lynne Cox'], 400, 'Webb crossed in 1875 in under 22 hours, fortified along the way with beef tea and brandy.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'Which computer engineer sent the first network email in 1971, introducing the @ symbol to separate a user''s name from their host computer?', NULL,
        'Ray Tomlinson', ARRAY['Vint Cerf', 'Tim Berners-Lee', 'Bob Kahn', 'Larry Roberts', 'Leonard Kleinrock', 'Jon Postel'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2019, who became the first person to run a marathon distance in under two hours, at a special event in Vienna?', NULL,
        'Eliud Kipchoge', ARRAY['Kenenisa Bekele', 'Haile Gebrselassie', 'Mo Farah', 'Kelvin Kiptum', 'Wilson Kipsang', 'Dennis Kimetto'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first video ever uploaded to YouTube, in 2005?', NULL,
        'Me at the zoo', ARRAY['Charlie Bit My Finger', 'Evolution of Dance', 'Lazy Sunday', 'Numa Numa', 'Keyboard Cat', 'Gangnam Style'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What message did Samuel Morse send over the first long-distance telegraph line, in 1844?', NULL,
        '"What hath God wrought"', ARRAY['"Mr. Watson, come here"', '"Are you there?"', '"Come at once"', '"Hello, world"', '"Testing, one, two, three"', '"God save the Queen"'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1988, who became the first woman elected to lead a Muslim-majority country?', NULL,
        'Benazir Bhutto', ARRAY['Indira Gandhi', 'Sheikh Hasina', 'Khaleda Zia', 'Tansu Çiller', 'Megawati Sukarnoputri', 'Golda Meir'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who made the first airplane flight across the English Channel, in 1909?', NULL,
        'Louis Blériot', ARRAY['Alberto Santos-Dumont', 'Hubert Latham', 'Henri Farman', 'Glenn Curtiss', 'Charles Rolls', 'Gabriel Voisin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which South African surgeon performed the first human heart transplant, in 1967?', NULL,
        'Christiaan Barnard', ARRAY['Denton Cooley', 'Michael DeBakey', 'Norman Shumway', 'Adrian Kantrowitz', 'Magdi Yacoub', 'Robert Jarvik'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who was the first woman to take her seat in the British House of Commons, in 1919?', NULL,
        'Nancy Astor', ARRAY['Constance Markievicz', 'Emmeline Pankhurst', 'Millicent Fawcett', 'Margaret Bondfield', 'Ellen Wilkinson', 'Barbara Castle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1974, what was the first product ever sold by scanning a barcode?', NULL,
        'A pack of chewing gum', ARRAY['A box of cereal', 'A can of soup', 'A bottle of cola', 'A loaf of bread', 'A carton of milk', 'A candy bar'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which French ski town hosted the first Winter Olympics, in 1924?', NULL,
        'Chamonix', ARRAY['St. Moritz', 'Grenoble', 'Albertville', 'Lake Placid', 'Innsbruck', 'Cortina d''Ampezzo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1960, who made the first descent to the bottom of the Mariana Trench, with U.S. Navy officer Don Walsh?', NULL,
        'Jacques Piccard', ARRAY['James Cameron', 'Jacques Cousteau', 'Auguste Piccard', 'Robert Ballard', 'Sylvia Earle', 'William Beebe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Who became the first woman to earn a medical degree in the United States, in 1849?', NULL,
        'Elizabeth Blackwell', ARRAY['Clara Barton', 'Elizabeth Garrett Anderson', 'Dorothea Dix', 'Mary Edwards Walker', 'Rebecca Lee Crumpler', 'Florence Nightingale'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 1978, who, with Peter Habeler, made the first ascent of Mount Everest without supplemental oxygen?', NULL,
        'Reinhold Messner', ARRAY['Edmund Hillary', 'Tenzing Norgay', 'Chris Bonington', 'George Mallory', 'Jerzy Kukuczka', 'Ed Viesturs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'What was the first planet discovered with a telescope, in 1781?', NULL,
        'Uranus', ARRAY['Neptune', 'Saturn', 'Jupiter', 'Mars', 'Mercury', 'Venus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'In 2019, which country made the first soft landing on the far side of the Moon?', NULL,
        'China', ARRAY['The United States', 'Russia', 'India', 'Japan', 'Israel', 'France'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which Soviet cosmonaut made the first spacewalk, in 1965?', NULL,
        'Alexei Leonov', ARRAY['Yuri Gagarin', 'Gherman Titov', 'Ed White', 'Vladimir Komarov', 'Pavel Belyayev', 'Valery Bykovsky'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_1', NULL,
        'Which French brothers built the hot-air balloon that carried the first people in free flight, in 1783?', NULL,
        'The Montgolfier brothers', ARRAY['The Wright brothers', 'The Lumière brothers', 'The Robert brothers', 'The Voisin brothers', 'The Michelin brothers', 'The Renault brothers'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'ORIGINAL', NULL,
        'In 1975, who became the first woman to reach the summit of Mount Everest?', NULL,
        'Junko Tabei', ARRAY['Wanda Rutkiewicz', 'Stacy Allison', 'Bachendri Pal', 'Alison Hargreaves', 'Lydia Bradey', 'Arlene Blum'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first president born a U.S. citizen, whose nickname "Old Kinderhook" may have given us "O.K."?', NULL,
        'Martin Van Buren', ARRAY['Andrew Jackson', 'John Tyler', 'William Henry Harrison', 'James K. Polk', 'Millard Fillmore', 'John Quincy Adams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which 1959 chariot-race epic became the first film to win 11 Oscars?', NULL,
        'Ben-Hur', ARRAY['The Ten Commandments', 'Spartacus', 'Cleopatra', 'Gone with the Wind', 'Lawrence of Arabia', 'Quo Vadis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which silent World War I flying film won the first Oscar for Best Picture?', NULL,
        'Wings', ARRAY['Sunrise', 'The Big Parade', 'Hell''s Angels', 'All Quiet on the Western Front', 'Metropolis', 'The General'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which "Green Mountain State" became the first state to join after the original 13, in 1791?', NULL,
        'Vermont', ARRAY['Kentucky', 'Maine', 'Tennessee', 'Ohio', 'New Hampshire', 'West Virginia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which towering Western rock, where aliens land in "Close Encounters of the Third Kind," was the first U.S. national monument?', NULL,
        'Devils Tower', ARRAY['Ship Rock', 'Monument Valley', 'Castle Rock', 'Chimney Rock', 'El Capitan', 'Half Dome'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'At the 1939 New York World''s Fair, who became the first sitting president to appear on television?', NULL,
        'Franklin D. Roosevelt', ARRAY['Herbert Hoover', 'Harry Truman', 'Calvin Coolidge', 'Dwight Eisenhower', 'Woodrow Wilson', 'Warren Harding'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which president, the heaviest ever, threw out baseball''s first ceremonial first pitch, in 1910?', NULL,
        'William Howard Taft', ARRAY['Grover Cleveland', 'Theodore Roosevelt', 'Woodrow Wilson', 'William McKinley', 'Warren Harding', 'Chester Arthur'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What did the first X-ray photograph of a person, taken in 1895, show?', NULL,
        'A woman''s hand wearing a ring', ARRAY['A broken leg', 'A child''s skull', 'A swallowed coin', 'A man''s chest', 'A foot in a shoe', 'A bullet in an arm'], 400, 'Wilhelm Röntgen X-rayed his wife''s hand. On seeing her bones she reportedly said, "I have seen my death."');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which aviator, turned away by U.S. flight schools, trained in France and became the first Black woman pilot in 1921?', NULL,
        'Bessie Coleman', ARRAY['Amelia Earhart', 'Willa Brown', 'Jacqueline Cochran', 'Harriet Quimby', 'Janet Bragg', 'Mae Jemison'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which American flier became the first woman to fly faster than sound, in 1953?', NULL,
        'Jacqueline Cochran', ARRAY['Amelia Earhart', 'Jerrie Mock', 'Bessie Coleman', 'Pancho Barnes', 'Nancy Harkness Love', 'Sally Ride'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which businessman paid about $20 million in 2001 to become the first space tourist?', NULL,
        'Dennis Tito', ARRAY['Richard Branson', 'Elon Musk', 'Jeff Bezos', 'Mark Shuttleworth', 'Greg Olsen', 'Charles Simonyi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What were the first animals sent into space on purpose, aboard a captured V-2 rocket in 1947?', NULL,
        'Fruit flies', ARRAY['Monkeys', 'Dogs', 'Mice', 'Frogs', 'Spiders', 'Turtles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which first home video game console, from 1972, shared its name with Homer''s epic poem?', NULL,
        'The Magnavox Odyssey', ARRAY['The Atari 2600', 'The Fairchild Channel F', 'The Coleco Telstar', 'The Mattel Intellivision', 'The RCA Studio II', 'The Sega SG-1000'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1956, who became the first Black player to win a tennis Grand Slam singles title, at the French Open?', NULL,
        'Althea Gibson', ARRAY['Arthur Ashe', 'Zina Garrison', 'Venus Williams', 'Lori McNeil', 'Leslie Allen', 'Wilma Rudolph'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'The first game of what became the NBA was played in 1946 in which city, between its Huskies and the New York Knicks?', NULL,
        'Toronto', ARRAY['Boston', 'Chicago', 'Detroit', 'Philadelphia', 'Montreal', 'Cleveland'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which city''s 1936 Olympics were the first to be shown on live television?', NULL,
        'Berlin', ARRAY['London', 'Los Angeles', 'Amsterdam', 'Paris', 'Stockholm', 'Helsinki'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'What song did an IBM computer sing in 1961, the first song sung by a computer, later echoed by the dying computer HAL in a Kubrick film?', NULL,
        'Daisy Bell (A Bicycle Built for Two)', ARRAY['Twinkle, Twinkle, Little Star', 'Happy Birthday', 'Row, Row, Row Your Boat', 'My Bonnie Lies Over the Ocean', 'Home on the Range', 'Oh! Susanna'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first English child born in the Americas, in 1587, in the "Lost Colony" of Roanoke?', NULL,
        'Virginia Dare', ARRAY['Pocahontas', 'Peregrine White', 'Eleanor White', 'Ananias Dare', 'Rebecca Rolfe', 'Elizabeth Harris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first woman elected to the U.S. Congress, from Montana, in 1916?', NULL,
        'Jeannette Rankin', ARRAY['Shirley Chisholm', 'Frances Perkins', 'Margaret Chase Smith', 'Rebecca Felton', 'Victoria Woodhull', 'Belva Lockwood'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first person to go over Niagara Falls in a barrel and live, on her 63rd birthday?', NULL,
        'Annie Edson Taylor', ARRAY['Bobby Leach', 'Charles Blondin', 'Annie Oakley', 'Martha Wagenfuhrer', 'Lydia Pinkham', 'Sam Patch'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'The first airline flight attendants, hired in 1930 by an airline now part of United, all had to be what?', NULL,
        'Registered nurses', ARRAY['Former soldiers', 'Pilots'' wives', 'College athletes', 'Fashion models', 'Schoolteachers', 'Telephone operators'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1978, the world''s first "test-tube baby," Louise Brown, was born in which country?', NULL,
        'England', ARRAY['The United States', 'Australia', 'Sweden', 'France', 'India', 'Canada'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who was the first U.S. president born in a hospital?', NULL,
        'Jimmy Carter', ARRAY['John F. Kennedy', 'Gerald Ford', 'Richard Nixon', 'Lyndon Johnson', 'Ronald Reagan', 'Dwight Eisenhower'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'In 1934, which Yankees slugger became the first athlete pictured on a box of Wheaties?', NULL,
        'Lou Gehrig', ARRAY['Babe Ruth', 'Joe DiMaggio', 'Ty Cobb', 'Jim Thorpe', 'Jack Dempsey', 'Mickey Mantle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which satellite, launched in 1958, was the first to reach orbit for the United States?', NULL,
        'Explorer 1', ARRAY['Vanguard 1', 'Telstar', 'Echo 1', 'Pioneer 1', 'Mercury 1', 'Sputnik 2'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which charge card, started in 1950 after its founder forgot his wallet at dinner, is called the first multipurpose credit card?', NULL,
        'Diners Club', ARRAY['American Express', 'Visa', 'MasterCard', 'Discover', 'BankAmericard', 'Carte Blanche'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which city opened America''s first zoo, in 1874?', NULL,
        'Philadelphia', ARRAY['New York', 'Boston', 'Chicago', 'Cincinnati', 'Washington, D.C.', 'San Diego'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which New York village hosted the first Winter Olympics held in the United States, in 1932?', NULL,
        'Lake Placid', ARRAY['Saranac Lake', 'Squaw Valley', 'Sun Valley', 'Saratoga Springs', 'Cooperstown', 'Woodstock'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which space shuttle flew the program''s first mission into space, in 1981?', NULL,
        'Columbia', ARRAY['Challenger', 'Discovery', 'Atlantis', 'Enterprise', 'Endeavour', 'Constitution'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Which toy, in 1952, became the first ever advertised on television?', NULL,
        'Mr. Potato Head', ARRAY['The Slinky', 'The Hula Hoop', 'Silly Putty', 'The Frisbee', 'The Etch A Sketch', 'Play-Doh'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_FIRSTS', 'FAMOUS_FIRSTS_BATCH_2', NULL,
        'Who became the first Black performer to win an Oscar, in 1940, for "Gone with the Wind"?', NULL,
        'Hattie McDaniel', ARRAY['Butterfly McQueen', 'Dorothy Dandridge', 'Ethel Waters', 'Lena Horne', 'Paul Robeson', 'Sidney Poitier'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_FIRSTS';
