-- ============================================================================
-- content/sql/us_history.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/us_history.csv, the master copy of the
-- Thinking Pants category US_HISTORY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'US_HISTORY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the main author of the Declaration of Independence?', NULL,
        'Thomas Jefferson', ARRAY['John Adams', 'Benjamin Franklin', 'James Madison', 'Alexander Hamilton', 'John Hancock', 'Samuel Adams'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president issued the Emancipation Proclamation, which took effect on January 1, 1863?', NULL,
        'Abraham Lincoln', ARRAY['Andrew Johnson', 'Ulysses S. Grant', 'James Buchanan', 'Franklin Pierce', 'Millard Fillmore', 'Zachary Taylor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which woman escaped slavery in Maryland and then led many others to freedom on the Underground Railroad, earning the nickname "Moses"?', NULL,
        'Harriet Tubman', ARRAY['Sojourner Truth', 'Harriet Jacobs', 'Ellen Craft', 'Phillis Wheatley', 'Mary Ann Shadd Cary', 'Harriet Beecher Stowe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In December 1773, colonists protesting a British tax dumped 342 chests of tea into which city''s harbor?', NULL,
        'Boston', ARRAY['New York', 'Philadelphia', 'Charleston', 'Baltimore', 'Newport', 'Annapolis'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Confederate general surrendered his army to Ulysses S. Grant at Appomattox Court House in April 1865?', NULL,
        'Robert E. Lee', ARRAY['Stonewall Jackson', 'J.E.B. Stuart', 'Joseph E. Johnston', 'P.G.T. Beauregard', 'Braxton Bragg', 'Albert Sidney Johnston'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1803 land deal with Napoleon roughly doubled the size of the United States?', NULL,
        'The Louisiana Purchase', ARRAY['The Gadsden Purchase', 'The Alaska Purchase', 'The Mexican Cession', 'The Oregon Treaty', 'The Adams-Onís Treaty', 'The Texas Annexation'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Boston silversmith made a famous midnight ride in April 1775 to warn that British troops were on the march?', NULL,
        'Paul Revere', ARRAY['John Hancock', 'Samuel Adams', 'Nathan Hale', 'Ethan Allen', 'Benedict Arnold', 'John Paul Jones'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which document, written in Philadelphia in 1787, begins with the words "We the People"?', NULL,
        'The U.S. Constitution', ARRAY['The Declaration of Independence', 'The Articles of Confederation', 'The Bill of Rights', 'The Mayflower Compact', 'The Federalist Papers', 'The Gettysburg Address'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Founding Father, famous as a printer, writer and inventor, appears on the $100 bill?', NULL,
        'Benjamin Franklin', ARRAY['Alexander Hamilton', 'Thomas Jefferson', 'John Adams', 'John Hancock', 'James Madison', 'Samuel Adams'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which war''s last major battle ended with a British army surrendering at Yorktown, Virginia, in 1781?', NULL,
        'The American Revolution', ARRAY['The War of 1812', 'The French and Indian War', 'The American Civil War', 'The Mexican-American War', 'King Philip''s War', 'The Spanish-American War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which island in New York Harbor was the nation''s busiest immigration station from 1892 to 1954?', NULL,
        'Ellis Island', ARRAY['Angel Island', 'Governors Island', 'Liberty Island', 'Staten Island', 'Roosevelt Island', 'Coney Island'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president launched the New Deal to fight the Great Depression?', NULL,
        'Franklin D. Roosevelt', ARRAY['Herbert Hoover', 'Harry S. Truman', 'Woodrow Wilson', 'Calvin Coolidge', 'Theodore Roosevelt', 'Warren G. Harding'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Alabama seamstress was arrested in December 1955 for refusing to give up her seat on a city bus?', NULL,
        'Rosa Parks', ARRAY['Coretta Scott King', 'Ruby Bridges', 'Fannie Lou Hamer', 'Daisy Bates', 'Ella Baker', 'Dorothy Height'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the nationwide ban on making and selling alcohol, from 1920 to 1933, called?', NULL,
        'Prohibition', ARRAY['Reconstruction', 'The Red Scare', 'Isolationism', 'The Square Deal', 'Nullification', 'The New Freedom'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president was assassinated in Dallas in November 1963?', NULL,
        'John F. Kennedy', ARRAY['Lyndon B. Johnson', 'Dwight D. Eisenhower', 'Richard Nixon', 'William McKinley', 'James A. Garfield', 'Harry S. Truman'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which country did the US fight a long, divisive war that ended for American combat troops in 1973?', NULL,
        'Vietnam', ARRAY['Korea', 'Cambodia', 'Laos', 'Thailand', 'The Philippines', 'Malaysia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president said "Mr. Gorbachev, tear down this wall!" in a 1987 speech in Berlin?', NULL,
        'Ronald Reagan', ARRAY['George H. W. Bush', 'Jimmy Carter', 'Gerald Ford', 'Bill Clinton', 'Richard Nixon', 'John F. Kennedy'], 100, 'Aides tried to cut the line from the speech, thinking it too provocative.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What name was given to the drought-stricken southern Great Plains, where huge dust storms raged in the 1930s?', NULL,
        'The Dust Bowl', ARRAY['The Rust Belt', 'The Sun Belt', 'The Bible Belt', 'The Corn Belt', 'The Badlands', 'The Great Basin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What nickname was given to the decade of flappers, jazz and speakeasies in 1920s America?', NULL,
        'The Roaring Twenties', ARRAY['The Gilded Age', 'The Gay Nineties', 'The Progressive Era', 'The Swinging Sixties', 'The Fabulous Fifties', 'The Great Depression'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which American city was largely destroyed by an earthquake and the fires that followed in April 1906?', NULL,
        'San Francisco', ARRAY['Los Angeles', 'Seattle', 'Chicago', 'San Diego', 'Portland', 'Sacramento'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first President of the United States?', NULL,
        'George Washington', ARRAY['John Adams', 'Thomas Jefferson', 'Benjamin Franklin', 'James Madison', 'John Hancock'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which document did the Continental Congress adopt on July 4, 1776?', NULL,
        'The Declaration of Independence', ARRAY['The Constitution', 'The Bill of Rights', 'The Articles of Confederation', 'The Mayflower Compact', 'The Federalist Papers'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who gave the "I Have a Dream" speech at the 1963 March on Washington?', NULL,
        'Martin Luther King Jr.', ARRAY['Malcolm X', 'John Lewis', 'Medgar Evers', 'Jesse Jackson', 'Thurgood Marshall'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What are the first ten amendments to the Constitution called?', NULL,
        'The Bill of Rights', ARRAY['The Preamble', 'The Articles', 'The Federalist Papers', 'The Great Compromise', 'The Ten Commandments'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who made the first powered airplane flight, at Kitty Hawk, North Carolina, in 1903?', NULL,
        'The Wright brothers', ARRAY['The Montgolfier brothers', 'Charles Lindbergh', 'Glenn Curtiss', 'Amelia Earhart', 'Samuel Langley'], 100, 'The first flight lasted 12 seconds and covered 120 feet, less than a jumbo jet''s wingspan.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which war was fought between the Union and the Confederacy from 1861 to 1865?', NULL,
        'The Civil War', ARRAY['The War of 1812', 'The Mexican-American War', 'The Revolutionary War', 'The Spanish-American War', 'The French and Indian War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which cracked symbol of American freedom hangs in Philadelphia?', NULL,
        'The Liberty Bell', ARRAY['The Statue of Liberty', 'Plymouth Rock', 'The Spirit of St. Louis', 'The Old North Church bell', 'The Star-Spangled Banner'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1848-1855 rush brought some 300,000 fortune seekers to California?', NULL,
        'The Gold Rush', ARRAY['The Land Rush', 'The Silver Rush', 'The Oil Boom', 'The Klondike Rush', 'The Oklahoma Land Run'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which Massachusetts town were the infamous witch trials held in 1692?', NULL,
        'Salem', ARRAY['Plymouth', 'Concord', 'Lexington', 'Boston', 'Springfield'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which short 1863 speech by Lincoln begins "Four score and seven years ago"?', NULL,
        'The Gettysburg Address', ARRAY['The Emancipation Proclamation', 'The Second Inaugural Address', 'The House Divided speech', 'The Cooper Union speech', 'The Farewell Address'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which country gave the United States the Statue of Liberty?', NULL,
        'France', ARRAY['Britain', 'Spain', 'Italy', 'Germany', 'The Netherlands', 'Canada'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which country''s surprise attack on Pearl Harbor in 1941 brought the U.S. into World War II?', NULL,
        'Japan', ARRAY['Germany', 'Italy', 'The Soviet Union', 'China', 'Korea', 'Vichy France'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which colony did the Pilgrims found in Massachusetts in 1620?', NULL,
        'Plymouth', ARRAY['Jamestown', 'Boston', 'Salem', 'Roanoke', 'New Haven', 'Providence'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'From which country did the 13 colonies win their independence?', NULL,
        'Great Britain', ARRAY['France', 'Spain', 'The Netherlands', 'Portugal', 'Sweden', 'Canada'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which holiday do Americans celebrate every year on July 4?', NULL,
        'Independence Day', ARRAY['Memorial Day', 'Flag Day', 'Veterans Day', 'Labor Day', 'Constitution Day', 'Presidents'' Day'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which country was America''s main rival in the decades after World War II, ending when it broke up in 1991?', NULL,
        'The Soviet Union', ARRAY['China', 'Cuba', 'North Korea', 'East Germany', 'Vietnam', 'Yugoslavia'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1969 music festival drew about 400,000 people to a farm in upstate New York?', NULL,
        'Woodstock', ARRAY['Monterey Pop', 'Altamont', 'Lollapalooza', 'Coachella', 'Newport Folk', 'Live Aid'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What is the national anthem of the United States called?', NULL,
        'The Star-Spangled Banner', ARRAY['America the Beautiful', 'God Bless America', 'My Country, ''Tis of Thee', 'Yankee Doodle', 'Battle Hymn of the Republic', 'This Land Is Your Land'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which war, fought with Britain until 1815, saw the White House burned?', NULL,
        'The War of 1812', ARRAY['The American Revolution', 'The French and Indian War', 'The Mexican-American War', 'The Civil War', 'The Spanish-American War', 'The Seven Years'' War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'On September 11, 2001, hijacked planes struck which twin skyscrapers in Manhattan?', NULL,
        'The World Trade Center', ARRAY['The Empire State Building', 'The Chrysler Building', 'Rockefeller Center', 'The Flatiron Building', 'The Woolworth Building', 'Madison Square Garden'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which carmaker made automobiles affordable for ordinary families with the Model T?', NULL,
        'Henry Ford', ARRAY['Walter Chrysler', 'Ransom Olds', 'William Durant', 'Louis Chevrolet', 'John Dodge', 'Karl Benz'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1950-53 war ended in a ceasefire along the 38th parallel?', NULL,
        'The Korean War', ARRAY['The Vietnam War', 'World War II', 'The Gulf War', 'The Cold War', 'The War in Afghanistan', 'The Spanish-American War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which U.S. space agency, founded in 1958, landed astronauts on the Moon?', NULL,
        'NASA', ARRAY['NATO', 'NOAA', 'The FAA', 'The CIA', 'SpaceX', 'The Air Force'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Who became the first African American First Lady, in 2009?', NULL,
        'Michelle Obama', ARRAY['Oprah Winfrey', 'Coretta Scott King', 'Condoleezza Rice', 'Kamala Harris', 'Maya Angelou', 'Hillary Clinton'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Who was president on September 11, 2001?', NULL,
        'George W. Bush', ARRAY['Bill Clinton', 'Barack Obama', 'George H. W. Bush', 'Al Gore', 'Dick Cheney', 'Ronald Reagan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which San Antonio mission fell to Mexican troops in 1836, inspiring the cry "Remember the..."?', NULL,
        'The Alamo', ARRAY['The Maine', 'San Jacinto', 'Goliad', 'Fort Sumter', 'Little Bighorn', 'Santa Fe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What do we call the movement of the 1950s and 60s that fought segregation and won equal rights for Black Americans?', NULL,
        'The civil rights movement', ARRAY['The labor movement', 'The temperance movement', 'The suffrage movement', 'The progressive movement', 'The abolition movement', 'The peace movement'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What is the long standoff between the U.S. and its communist rival, from 1947 to 1991, called?', NULL,
        'The Cold War', ARRAY['The Great War', 'The Long War', 'The Iron War', 'The Silent War', 'The Red War', 'The Space War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What did American colonists call British soldiers, for the color of their uniforms?', NULL,
        'Redcoats', ARRAY['Bluecoats', 'Lobsterbacks', 'Tories', 'Hessians', 'Royals', 'Grenadiers'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Virginia settlement, founded in 1607, was England''s first permanent colony in America?', NULL,
        'Jamestown', ARRAY['Plymouth', 'Roanoke', 'Williamsburg', 'St. Augustine', 'Richmond', 'Yorktown'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which actor shot President Abraham Lincoln at Ford''s Theatre in April 1865?', NULL,
        'John Wilkes Booth', ARRAY['Lewis Powell', 'John Surratt', 'Edwin Booth', 'Samuel Mudd', 'David Herold', 'George Atzerodt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Powhatan woman, a chief''s daughter, married English colonist John Rolfe in 1614?', NULL,
        'Pocahontas', ARRAY['Sacagawea', 'Nancy Ward', 'Mary Musgrove', 'Weetamoo', 'Awashonks', 'Molly Brant'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which present-day U.S. state was an independent republic from 1836 until it joined the Union in 1845?', NULL,
        'Texas', ARRAY['New Mexico', 'Oklahoma', 'Arizona', 'Louisiana', 'Florida', 'Oregon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Shoshone woman traveled with the Lewis and Clark expedition as an interpreter, carrying her baby son along the way?', NULL,
        'Sacagawea', ARRAY['Pocahontas', 'Nancy Ward', 'Molly Brant', 'Mary Musgrove', 'Sarah Winnemucca', 'Weetamoo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'The forced removal of the Cherokee Nation from its Southeast homeland to Indian Territory in 1838-39 is remembered by what name?', NULL,
        'The Trail of Tears', ARRAY['The Long Walk', 'The Natchez Trace', 'The Wilderness Road', 'The Santa Fe Trail', 'The Great Wagon Road', 'The Old Spanish Trail'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which three-day battle, fought in Pennsylvania in July 1863, ended Robert E. Lee''s invasion of the North?', NULL,
        'The Battle of Gettysburg', ARRAY['The Battle of Antietam', 'The Battle of Vicksburg', 'The Battle of Chancellorsville', 'The Battle of Fredericksburg', 'The Battle of Shiloh', 'The First Battle of Bull Run'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first U.S. Secretary of the Treasury?', NULL,
        'Alexander Hamilton', ARRAY['Thomas Jefferson', 'Henry Knox', 'John Jay', 'Albert Gallatin', 'Oliver Wolcott Jr.', 'Edmund Randolph'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which abolitionist, who escaped slavery in Maryland in 1838, published a best-selling Narrative of his life in 1845?', NULL,
        'Frederick Douglass', ARRAY['William Wells Brown', 'Henry "Box" Brown', 'Josiah Henson', 'Henry Highland Garnet', 'Booker T. Washington', 'Nat Turner'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did the battles of Lexington and Concord begin the American Revolutionary War?', NULL,
        '1775', ARRAY['1770', '1773', '1774', '1776', '1777', '1778'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where did the Continental Army spend the hard winter of 1777-78, west of Philadelphia?', NULL,
        'Valley Forge', ARRAY['Morristown', 'Yorktown', 'Fort Ticonderoga', 'Saratoga', 'Trenton', 'Brandywine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1965 law suspended literacy tests and other barriers that kept Black Americans from voting?', NULL,
        'The Voting Rights Act', ARRAY['The Civil Rights Act of 1964', 'The Fair Housing Act', 'The 24th Amendment', 'The Civil Rights Act of 1957', 'The Equal Pay Act', 'The Immigration and Nationality Act'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment, ratified in 1920, guaranteed women the right to vote?', NULL,
        'The 19th Amendment', ARRAY['The 15th Amendment', 'The 16th Amendment', 'The 17th Amendment', 'The 18th Amendment', 'The 20th Amendment', 'The 21st Amendment'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1954 Supreme Court decision ruled that segregated public schools were unconstitutional?', NULL,
        'Brown v. Board of Education', ARRAY['Marbury v. Madison', 'Miranda v. Arizona', 'Loving v. Virginia', 'Gideon v. Wainwright', 'Dred Scott v. Sandford', 'McCulloch v. Maryland'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Scottish-born industrialist built a steel empire in Pittsburgh and paid for thousands of public libraries?', NULL,
        'Andrew Carnegie', ARRAY['John D. Rockefeller', 'J. P. Morgan', 'Cornelius Vanderbilt', 'Andrew Mellon', 'Henry Clay Frick', 'George Westinghouse'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president called his program of domestic reforms the "Great Society"?', NULL,
        'Lyndon B. Johnson', ARRAY['John F. Kennedy', 'Richard Nixon', 'Harry S. Truman', 'Dwight D. Eisenhower', 'Jimmy Carter', 'Herbert Hoover'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which scandal, named after a Washington, D.C., office and hotel complex, brought down President Nixon?', NULL,
        'Watergate', ARRAY['Teapot Dome', 'Iran-Contra', 'Whiskey Ring', 'Credit Mobilier', 'Abscam', 'Koreagate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which Arkansas city did nine Black students integrate Central High School in 1957, escorted by federal troops?', NULL,
        'Little Rock', ARRAY['Fayetteville', 'Fort Smith', 'Hot Springs', 'Pine Bluff', 'Jonesboro', 'Texarkana'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1898 war followed the explosion of the battleship USS Maine in Havana Harbor?', NULL,
        'The Spanish-American War', ARRAY['The Mexican-American War', 'The War of 1812', 'The Philippine-American War', 'The Boxer Rebellion', 'The Korean War', 'The Ten Years'' War'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1935 New Deal law created old-age pensions and unemployment insurance?', NULL,
        'The Social Security Act', ARRAY['The Wagner Act', 'The Fair Labor Standards Act', 'The Glass-Steagall Act', 'The National Industrial Recovery Act', 'The Agricultural Adjustment Act', 'The Emergency Banking Act'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the name of the US program, begun in 1948, that sent billions of dollars to rebuild Western Europe after World War II?', NULL,
        'The Marshall Plan', ARRAY['Lend-Lease', 'The Dawes Plan', 'The Young Plan', 'The Monroe Doctrine', 'The Good Neighbor Policy', 'The Open Door Policy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which inventor lit up part of lower Manhattan from his Pearl Street power station in 1882?', NULL,
        'Thomas Edison', ARRAY['Nikola Tesla', 'George Westinghouse', 'Alexander Graham Bell', 'Samuel Morse', 'J.P. Morgan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first First Lady of the United States?', NULL,
        'Martha Washington', ARRAY['Abigail Adams', 'Dolley Madison', 'Mary Todd Lincoln', 'Martha Jefferson', 'Elizabeth Monroe'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'How many times was Franklin D. Roosevelt elected president?', NULL,
        'Four', ARRAY['Two', 'Three', 'Five', 'Six', 'One'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which trail of about 2,000 miles carried pioneers from Missouri to the Pacific Northwest?', NULL,
        'The Oregon Trail', ARRAY['The Santa Fe Trail', 'The Chisholm Trail', 'The Natchez Trace', 'The Mormon Trail', 'The Appalachian Trail'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1862 law offered settlers 160 acres of public land if they farmed it for five years?', NULL,
        'The Homestead Act', ARRAY['The Morrill Act', 'The Pacific Railway Act', 'The Dawes Act', 'The Land Ordinance', 'The Northwest Ordinance'], 200, 'Lincoln signed it in 1862; Daniel Freeman filed the first claim on January 1, 1863.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Lakota leader, alongside Crazy Horse, led the warriors who defeated Custer at Little Bighorn in 1876?', NULL,
        'Sitting Bull', ARRAY['Geronimo', 'Red Cloud', 'Chief Joseph', 'Black Hawk', 'Tecumseh'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who invented the cotton gin in 1793?', NULL,
        'Eli Whitney', ARRAY['Cyrus McCormick', 'John Deere', 'Samuel Slater', 'Robert Fulton', 'Elias Howe'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1860-61 mail service used relays of riders on horseback between Missouri and California?', NULL,
        'The Pony Express', ARRAY['Wells Fargo', 'The Butterfield Overland Mail', 'The Transcontinental Railroad', 'The Oregon Express', 'The Overland Telegraph'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What nickname was given to October 29, 1929, the worst day of the stock market crash?', NULL,
        'Black Tuesday', ARRAY['Black Friday', 'Black Monday', 'Bloody Sunday', 'Blue Monday', 'Dark Thursday'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 13-day standoff in October 1962 over Soviet missiles brought the world close to nuclear war?', NULL,
        'The Cuban Missile Crisis', ARRAY['The Bay of Pigs', 'The Berlin Airlift', 'The Suez Crisis', 'The U-2 Incident', 'The Korean Armistice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which nurse, called the "Angel of the Battlefield" in the Civil War, founded the American Red Cross in 1881?', NULL,
        'Clara Barton', ARRAY['Florence Nightingale', 'Dorothea Dix', 'Mary Walker', 'Louisa May Alcott', 'Susan B. Anthony'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president''s 1823 "doctrine" warned European powers against new colonies in the Americas?', NULL,
        'James Monroe', ARRAY['John Quincy Adams', 'James Madison', 'Thomas Jefferson', 'Andrew Jackson', 'John Adams'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which sitting vice president killed Alexander Hamilton in a duel in 1804?', NULL,
        'Aaron Burr', ARRAY['George Clinton', 'John Adams', 'Thomas Jefferson', 'Elbridge Gerry', 'John C. Calhoun'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1966 Supreme Court case requires police to tell suspects about their right to remain silent?', NULL,
        'Miranda v. Arizona', ARRAY['Gideon v. Wainwright', 'Mapp v. Ohio', 'Escobedo v. Illinois', 'Terry v. Ohio', 'Roe v. Wade'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Who wrote the poem that became the national anthem while watching the bombardment of Fort McHenry in 1814?', NULL,
        'Francis Scott Key', ARRAY['Paul Revere', 'Thomas Paine', 'John Philip Sousa', 'Patrick Henry', 'Samuel Francis Smith', 'Irving Berlin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1881 shootout in Tombstone, Arizona, became the Wild West''s most famous gunfight?', NULL,
        'The Gunfight at the O.K. Corral', ARRAY['The Battle of Little Bighorn', 'The Johnson County War', 'The Lincoln County War', 'The Dalton Gang raid', 'The Northfield raid', 'The Hole-in-the-Wall fight'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Patuxet man, who spoke English, helped the Pilgrims survive their first New England winter?', NULL,
        'Squanto', ARRAY['Massasoit', 'Pocahontas', 'Sacagawea', 'Metacomet', 'Tecumseh', 'Hiawatha'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which president led the U.S. through World War I?', NULL,
        'Woodrow Wilson', ARRAY['Theodore Roosevelt', 'William Howard Taft', 'Warren Harding', 'Calvin Coolidge', 'Herbert Hoover', 'Franklin D. Roosevelt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which civil rights leader, who took the letter "X" in place of a family name given in slavery, was assassinated in 1965?', NULL,
        'Malcolm X', ARRAY['Medgar Evers', 'Stokely Carmichael', 'Huey Newton', 'Elijah Muhammad', 'John Lewis', 'Bayard Rustin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which peanut farmer from Plains was elected president in 1976?', NULL,
        'Jimmy Carter', ARRAY['Gerald Ford', 'Bill Clinton', 'Lyndon Johnson', 'Jimmy Stewart', 'Walter Mondale', 'George Wallace'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Virginia patriot declared, "Give me liberty, or give me death!" on the eve of the Revolution?', NULL,
        'Patrick Henry', ARRAY['Thomas Jefferson', 'George Mason', 'Paul Revere', 'Nathan Hale', 'Samuel Adams', 'John Hancock'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Who became president when Franklin Roosevelt died in April 1945?', NULL,
        'Harry Truman', ARRAY['Dwight Eisenhower', 'Henry Wallace', 'Herbert Hoover', 'Thomas Dewey', 'John F. Kennedy', 'George Marshall'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What nickname was given to the fortune seekers who rushed to California in 1849?', NULL,
        'Forty-niners', ARRAY['Sooners', 'Boomers', 'Mountain men', 'Carpetbaggers', 'Sodbusters', 'Fifty-niners'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What agreement did the Pilgrims sign aboard their ship in 1620 to govern themselves?', NULL,
        'The Mayflower Compact', ARRAY['The Plymouth Charter', 'The Bill of Rights', 'The Articles of Confederation', 'The Magna Carta', 'The Fundamental Orders', 'The Virginia Charter'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which frontiersman and congressman, "King of the Wild Frontier," died defending a San Antonio mission in 1836?', NULL,
        'Davy Crockett', ARRAY['Daniel Boone', 'Jim Bowie', 'Kit Carson', 'Sam Houston', 'Stephen F. Austin', 'Wild Bill Hickok'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which former scout and buffalo hunter toured the world with his "Wild West" show?', NULL,
        'Buffalo Bill Cody', ARRAY['Wild Bill Hickok', 'Kit Carson', 'Wyatt Earp', 'Jesse James', 'Daniel Boone', 'Doc Holliday'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which suffragist was arrested for voting in the 1872 presidential election?', NULL,
        'Susan B. Anthony', ARRAY['Elizabeth Cady Stanton', 'Alice Paul', 'Lucretia Mott', 'Sojourner Truth', 'Carrie Chapman Catt', 'Victoria Woodhull'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What was the secret goal of the World War II "Manhattan Project"?', NULL,
        'Building an atomic bomb', ARRAY['Cracking Japanese codes', 'Building a bigger New York', 'Planning D-Day', 'Developing radar', 'Building the first jet', 'Landing on the Moon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which highway from Chicago to Los Angeles was nicknamed "the Mother Road"?', NULL,
        'Route 66', ARRAY['Interstate 80', 'The Lincoln Highway', 'Route 1', 'The Pacific Coast Highway', 'Interstate 10', 'The Oregon Trail'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What name is given to the early-1950s hunt for communists, named after a Wisconsin senator?', NULL,
        'McCarthyism', ARRAY['The Red Summer', 'The Palmer Raids', 'The Hollywood Blacklist', 'The Dies Committee', 'The Truman Doctrine', 'Containment'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1820 agreement admitted Maine as a free state alongside a new slave state, and banned slavery in most western land north of latitude 36°30''?', NULL,
        'The Missouri Compromise', ARRAY['The Compromise of 1850', 'The Kansas-Nebraska Act', 'The Great Compromise', 'The Three-Fifths Compromise', 'The Wilmot Proviso', 'The Crittenden Compromise'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1803 Supreme Court case first established the courts'' power to strike down a law as unconstitutional?', NULL,
        'Marbury v. Madison', ARRAY['McCulloch v. Maryland', 'Gibbons v. Ogden', 'Dartmouth College v. Woodward', 'Fletcher v. Peck', 'Worcester v. Georgia', 'Cohens v. Virginia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where was the 1848 convention, organized by Elizabeth Cady Stanton and Lucretia Mott, that launched the American women''s rights movement?', NULL,
        'Seneca Falls, New York', ARRAY['Rochester, New York', 'Albany, New York', 'Syracuse, New York', 'Worcester, Massachusetts', 'Philadelphia, Pennsylvania', 'Akron, Ohio'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Shawnee leader tried to unite Native nations against American expansion and was killed at the Battle of the Thames in 1813?', NULL,
        'Tecumseh', ARRAY['Pontiac', 'Little Turtle', 'Black Hawk', 'Blue Jacket', 'Tenskwatawa', 'Joseph Brant'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1783 treaty formally ended the American Revolutionary War?', NULL,
        'The Treaty of Paris', ARRAY['The Treaty of Ghent', 'The Treaty of Utrecht', 'The Jay Treaty', 'The Treaty of Fort Stanwix', 'The Treaty of Greenville', 'Pinckney''s Treaty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which abolitionist led an armed raid on the federal armory at Harpers Ferry, Virginia, in October 1859?', NULL,
        'John Brown', ARRAY['Nat Turner', 'William Lloyd Garrison', 'Denmark Vesey', 'Gabriel Prosser', 'Elijah Lovejoy', 'Theodore Weld'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment to the U.S. Constitution, ratified in December 1865, abolished slavery?', NULL,
        'The 13th Amendment', ARRAY['The 11th Amendment', 'The 12th Amendment', 'The 14th Amendment', 'The 15th Amendment', 'The 16th Amendment', 'The 19th Amendment'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Union general led the 1864 "March to the Sea" from Atlanta to Savannah?', NULL,
        'William T. Sherman', ARRAY['Ulysses S. Grant', 'Philip Sheridan', 'George McClellan', 'George Meade', 'Ambrose Burnside', 'Joseph Hooker'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president was impeached by the House in 1868 and kept his office when the Senate fell one vote short of removing him?', NULL,
        'Andrew Johnson', ARRAY['Ulysses S. Grant', 'Rutherford B. Hayes', 'James Buchanan', 'Franklin Pierce', 'Millard Fillmore', 'John Tyler'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who wrote "Common Sense," the January 1776 pamphlet that urged the colonies to declare independence?', NULL,
        'Thomas Paine', ARRAY['Samuel Adams', 'John Dickinson', 'Patrick Henry', 'James Otis', 'John Adams', 'Thomas Jefferson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1948 and 1949, American and British planes flew food and coal into which blockaded city?', NULL,
        'Berlin', ARRAY['Vienna', 'Warsaw', 'Prague', 'Budapest', 'Hamburg', 'Bonn'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which writer''s 1906 novel "The Jungle" exposed conditions in Chicago''s meatpacking plants?', NULL,
        'Upton Sinclair', ARRAY['Sinclair Lewis', 'Ida Tarbell', 'Lincoln Steffens', 'Frank Norris', 'Theodore Dreiser', 'Jack London'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which former First Lady chaired the UN commission that drafted the 1948 Universal Declaration of Human Rights?', NULL,
        'Eleanor Roosevelt', ARRAY['Edith Wilson', 'Lou Henry Hoover', 'Bess Truman', 'Grace Coolidge', 'Mamie Eisenhower', 'Jacqueline Kennedy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1896 Supreme Court decision upheld racial segregation under the doctrine of "separate but equal"?', NULL,
        'Plessy v. Ferguson', ARRAY['Dred Scott v. Sandford', 'Marbury v. Madison', 'Korematsu v. United States', 'McCulloch v. Maryland', 'Gibbons v. Ogden', 'Lochner v. New York'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1920s bribery scandal over a Wyoming oil reserve tarnished President Warren Harding''s administration?', NULL,
        'Teapot Dome', ARRAY['Credit Mobilier', 'Whiskey Ring', 'Star Route', 'Black Friday', 'Salary Grab', 'Tammany Hall'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who is the only person to serve as both Vice President and President without being elected to either office?', NULL,
        'Gerald Ford', ARRAY['Nelson Rockefeller', 'Lyndon B. Johnson', 'Harry S. Truman', 'Chester A. Arthur', 'Calvin Coolidge', 'Andrew Johnson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president won the 1906 Nobel Peace Prize for helping end the Russo-Japanese War?', NULL,
        'Theodore Roosevelt', ARRAY['Woodrow Wilson', 'William Howard Taft', 'William McKinley', 'Grover Cleveland', 'Benjamin Harrison', 'Calvin Coolidge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president signed the 1956 law that created the Interstate Highway System?', NULL,
        'Dwight D. Eisenhower', ARRAY['Harry S. Truman', 'John F. Kennedy', 'Lyndon B. Johnson', 'Herbert Hoover', 'Richard Nixon', 'Calvin Coolidge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did both Alaska and Hawaii become states?', NULL,
        '1959', ARRAY['1949', '1953', '1955', '1957', '1961', '1963'], 300, 'Alaska joined in January and Hawaii in August, the 49th and 50th states.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who became the first woman to serve as US Secretary of State, in 1997?', NULL,
        'Madeleine Albright', ARRAY['Condoleezza Rice', 'Jeane Kirkpatrick', 'Janet Reno', 'Elizabeth Dole', 'Donna Shalala', 'Geraldine Ferraro'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which former governor of California became Chief Justice of the United States in 1953?', NULL,
        'Earl Warren', ARRAY['Warren Burger', 'Fred Vinson', 'William Rehnquist', 'Charles Evans Hughes', 'Harlan F. Stone', 'William Howard Taft'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1962, James Meredith became the first Black student admitted to which university, after a standoff with the state''s governor?', NULL,
        'The University of Mississippi', ARRAY['The University of Alabama', 'The University of Georgia', 'Mississippi State University', 'Louisiana State University', 'Auburn University', 'The University of Texas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1890 law was the first federal law aimed at outlawing monopolies and trusts?', NULL,
        'The Sherman Antitrust Act', ARRAY['The Clayton Antitrust Act', 'The Interstate Commerce Act', 'The Pendleton Act', 'The Hepburn Act', 'The Federal Trade Commission Act', 'The Wagner Act'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which space program flew ten two-astronaut missions in 1965 and 1966, practicing spacewalks and docking before the Moon landings?', NULL,
        'Gemini', ARRAY['Mercury', 'Apollo', 'Skylab', 'Vanguard', 'Explorer', 'Ranger'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1882 law was the first major federal law to bar immigrants of a specific nationality?', NULL,
        'The Chinese Exclusion Act', ARRAY['The Gentlemen''s Agreement', 'The Immigration Act of 1924', 'The Alien and Sedition Acts', 'The Dawes Act', 'The Pendleton Act', 'The Homestead Act'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president died just 31 days after his inauguration, the shortest time in office?', NULL,
        'William Henry Harrison', ARRAY['James Garfield', 'Zachary Taylor', 'Warren G. Harding', 'John Tyler', 'William McKinley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1857 Supreme Court case ruled that Black Americans could not be citizens?', NULL,
        'Dred Scott v. Sandford', ARRAY['Plessy v. Ferguson', 'Marbury v. Madison', 'McCulloch v. Maryland', 'Gibbons v. Ogden', 'Worcester v. Georgia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1944 law paid for college and home loans for returning World War II veterans?', NULL,
        'The GI Bill', ARRAY['The Marshall Plan', 'The Social Security Act', 'The Lend-Lease Act', 'The Fair Deal', 'The Taft-Hartley Act'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who sent the first long-distance telegraph message, "What hath God wrought," in 1844?', NULL,
        'Samuel Morse', ARRAY['Alexander Graham Bell', 'Thomas Edison', 'Cyrus Field', 'Joseph Henry', 'Guglielmo Marconi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president led the US through the Mexican-American War, in the name of "Manifest Destiny"?', NULL,
        'James K. Polk', ARRAY['Andrew Jackson', 'John Tyler', 'Zachary Taylor', 'Martin Van Buren', 'Millard Fillmore'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which September 1862 battle in Maryland was the bloodiest single day in American history?', NULL,
        'Antietam', ARRAY['Gettysburg', 'Shiloh', 'Bull Run', 'Fredericksburg', 'Chancellorsville'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1798 laws let the government deport "dangerous" immigrants and jail critics of the government?', NULL,
        'The Alien and Sedition Acts', ARRAY['The Espionage Act', 'The Embargo Act', 'The Intolerable Acts', 'The Naturalization Act of 1870', 'The Patriot Act'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which colony was founded in 1732 as a fresh start for debtors and a buffer against Spanish Florida?', NULL,
        'Georgia', ARRAY['South Carolina', 'North Carolina', 'Maryland', 'Virginia', 'Delaware'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Kentucky senator, behind the Missouri Compromise and the Compromise of 1850, was called the "Great Compromiser"?', NULL,
        'Henry Clay', ARRAY['Daniel Webster', 'John C. Calhoun', 'Stephen Douglas', 'Thomas Hart Benton', 'John J. Crittenden'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1913 law created the nation''s central banking system?', NULL,
        'The Federal Reserve Act', ARRAY['The Glass-Steagall Act', 'The Sherman Act', 'The Coinage Act', 'The National Bank Act', 'The Gold Standard Act'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which explorer led an 1806 expedition into the Southwest and gave his name to a famous Colorado mountain?', NULL,
        'Zebulon Pike', ARRAY['John C. Fremont', 'Stephen Long', 'Meriwether Lewis', 'Kit Carson', 'Jedediah Smith'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which secretary of state bought Alaska from Russia in 1867, in a deal mocked as his "Folly"?', NULL,
        'William Seward', ARRAY['Daniel Webster', 'John Hay', 'James Blaine', 'Hamilton Fish', 'John C. Calhoun', 'Henry Clay'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Nez Perce leader surrendered in 1877, saying, "I will fight no more forever"?', NULL,
        'Chief Joseph', ARRAY['Sitting Bull', 'Geronimo', 'Red Cloud', 'Crazy Horse', 'Cochise', 'Black Hawk'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What was the 1925 Tennessee court case over teaching evolution in school called?', NULL,
        'The Scopes Trial', ARRAY['The Monkey Business Case', 'The Darwin Trial', 'The Dayton Affair', 'The Bryan Trial', 'The Evolution Hearing', 'The Tennessee Trial'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which fort in Charleston Harbor came under Confederate fire in April 1861, starting the war between the states?', NULL,
        'Fort Sumter', ARRAY['Fort McHenry', 'Fort Ticonderoga', 'Fort Pickens', 'Fort Monroe', 'Fort Moultrie', 'Fort Knox'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which future president took the most detailed notes at the 1787 Philadelphia convention and helped write its plan?', NULL,
        'James Madison', ARRAY['John Adams', 'James Monroe', 'John Quincy Adams', 'Thomas Jefferson', 'Andrew Jackson', 'Martin Van Buren'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Union ironclad fought the Confederacy''s CSS Virginia to a draw in 1862, the first battle between ironclad ships?', NULL,
        'The USS Monitor', ARRAY['The USS Constitution', 'The USS Merrimack', 'The USS Kearsarge', 'The USS Cairo', 'The USS Hartford', 'The USS Maine'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Who served as the only president of the Confederate States of America?', NULL,
        'Jefferson Davis', ARRAY['Robert E. Lee', 'Alexander Stephens', 'Stonewall Jackson', 'John C. Calhoun', 'Judah Benjamin', 'Jubal Early'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1917 secret message, in which Germany offered Mexico U.S. land, helped bring America into World War I?', NULL,
        'The Zimmermann Telegram', ARRAY['The Lusitania Note', 'The Berlin Memo', 'The Kaiser''s Cable', 'The Ems Dispatch', 'The Mexico Letter', 'The Bismarck Wire'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which British ocean liner, sunk by a German U-boat in 1915, killed 128 Americans and turned opinion against Germany?', NULL,
        'The Lusitania', ARRAY['The Titanic', 'The Britannic', 'The Mauretania', 'The Arabic', 'The Sussex', 'The Olympic'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Illinois senator, "the Little Giant," debated a future president in a famous series of 1858 debates?', NULL,
        'Stephen Douglas', ARRAY['John C. Breckinridge', 'William Seward', 'Lyman Trumbull', 'Henry Clay', 'Daniel Webster', 'Salmon Chase'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Under the Constitution''s 1787 "Three-Fifths Compromise," what was counted as three-fifths of a person?', NULL,
        'Each enslaved person', ARRAY['Each woman', 'Each child', 'Each Native American', 'Each immigrant', 'Each servant', 'Each soldier'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'At which South Dakota creek did U.S. troops kill hundreds of Lakota in December 1890?', NULL,
        'Wounded Knee', ARRAY['Sand Creek', 'Little Bighorn', 'Washita', 'Bear River', 'Rosebud', 'Pine Ridge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Chicago gangster was finally sent to prison in 1931, not for murder but for tax evasion?', NULL,
        'Al Capone', ARRAY['John Dillinger', 'Bugs Moran', 'Lucky Luciano', 'Baby Face Nelson', 'Dutch Schultz', 'Machine Gun Kelly'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1765 British tax on newspapers, legal papers and playing cards set off "No taxation without representation"?', NULL,
        'The Stamp Act', ARRAY['The Sugar Act', 'The Tea Act', 'The Townshend Acts', 'The Intolerable Acts', 'The Quartering Act', 'The Navigation Acts'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1786-87 uprising of debt-burdened farmers in western Massachusetts helped convince leaders that a stronger national government was needed?', NULL,
        'Shays'' Rebellion', ARRAY['The Whiskey Rebellion', 'Bacon''s Rebellion', 'Fries''s Rebellion', 'The Dorr Rebellion', 'Leisler''s Rebellion', 'The Regulator Movement'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1848 treaty ended the Mexican-American War?', NULL,
        'The Treaty of Guadalupe Hidalgo', ARRAY['The Treaty of Velasco', 'The Treaty of Córdoba', 'The Treaty of La Mesilla', 'The Adams-Onís Treaty', 'The Treaty of Fort Laramie', 'The Treaty of Ghent'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where was the golden spike driven in May 1869 to complete the first transcontinental railroad?', NULL,
        'Promontory Summit, Utah', ARRAY['Ogden, Utah', 'Council Bluffs, Iowa', 'Cheyenne, Wyoming', 'Sacramento, California', 'Omaha, Nebraska', 'Reno, Nevada'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1870, who became the first Black American to serve in the U.S. Senate, representing Mississippi?', NULL,
        'Hiram Revels', ARRAY['Blanche K. Bruce', 'Robert Smalls', 'Joseph Rainey', 'John Mercer Langston', 'P.B.S. Pinchback', 'James T. Rapier'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which British general surrendered his army to American forces at Saratoga in October 1777?', NULL,
        'John Burgoyne', ARRAY['Charles Cornwallis', 'William Howe', 'Henry Clinton', 'Thomas Gage', 'Banastre Tarleton', 'Guy Carleton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the war of 1675-76 between New England colonists and a Native alliance led by the Wampanoag sachem Metacom?', NULL,
        'King Philip''s War', ARRAY['The Pequot War', 'Queen Anne''s War', 'King William''s War', 'King George''s War', 'Pontiac''s War', 'The Anglo-Powhatan War'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1787 law set out how territory north of the Ohio River could become new states, and banned slavery there?', NULL,
        'The Northwest Ordinance', ARRAY['The Land Ordinance of 1785', 'The Proclamation of 1763', 'The Quebec Act', 'The Homestead Act', 'The Indian Removal Act', 'The Preemption Act'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which minister, banished from Massachusetts Bay, founded Providence in 1636 as a haven for religious freedom?', NULL,
        'Roger Williams', ARRAY['Thomas Hooker', 'John Winthrop', 'William Bradford', 'John Cotton', 'William Penn', 'James Oglethorpe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did Lewis and Clark''s Corps of Discovery leave its winter camp near St. Louis and head up the Missouri River?', NULL,
        '1804', ARRAY['1801', '1802', '1805', '1806', '1807', '1808'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Seminole leader, seized under a flag of truce in 1837, became a famous symbol of resistance in the Second Seminole War?', NULL,
        'Osceola', ARRAY['Black Hawk', 'Sequoyah', 'John Ross', 'Red Cloud', 'Pontiac', 'Little Turtle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1894 strike, backed by Eugene V. Debs''s American Railway Union, began at a railroad sleeping-car maker''s company town near Chicago?', NULL,
        'The Pullman Strike', ARRAY['The Homestead Strike', 'The Great Railroad Strike of 1877', 'The Haymarket Affair', 'The Lawrence Textile Strike', 'The Coal Strike of 1902', 'The Great Southwest Railroad Strike'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment, ratified in 1913, let voters elect US senators directly?', NULL,
        'The 17th Amendment', ARRAY['The 14th Amendment', 'The 15th Amendment', 'The 16th Amendment', 'The 18th Amendment', 'The 20th Amendment', 'The 22nd Amendment'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first woman to serve in a US presidential Cabinet, as Franklin Roosevelt''s Secretary of Labor?', NULL,
        'Frances Perkins', ARRAY['Jeannette Rankin', 'Oveta Culp Hobby', 'Mary McLeod Bethune', 'Nellie Tayloe Ross', 'Edith Wilson', 'Jane Addams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Danish-born journalist photographed New York''s tenements for his 1890 book "How the Other Half Lives"?', NULL,
        'Jacob Riis', ARRAY['Lewis Hine', 'Alfred Stieglitz', 'Mathew Brady', 'Dorothea Lange', 'Walker Evans', 'Ansel Adams'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the official name of the 1893 Chicago world''s fair where the first Ferris wheel turned?', NULL,
        'The World''s Columbian Exposition', ARRAY['The Centennial Exposition', 'The Panama-Pacific International Exposition', 'The Louisiana Purchase Exposition', 'The Pan-American Exposition', 'A Century of Progress', 'The Trans-Mississippi Exposition'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1853 land purchase from Mexico gave the US southern Arizona and New Mexico for a railroad route?', NULL,
        'The Gadsden Purchase', ARRAY['The Louisiana Purchase', 'The Treaty of Guadalupe Hidalgo', 'The Adams-Onís Treaty', 'The Oregon Treaty', 'The Mexican Cession'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which 1832 crisis did South Carolina declare federal tariffs void inside its borders?', NULL,
        'The Nullification Crisis', ARRAY['The Whiskey Rebellion', 'The Secession Winter', 'The Tariff of Abominations', 'The Bank War', 'The Panic of 1837'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1919 strike made Massachusetts governor Calvin Coolidge a national figure?', NULL,
        'The Boston Police Strike', ARRAY['The Lawrence Textile Strike', 'The Great Steel Strike', 'The Seattle General Strike', 'The Pullman Strike', 'The Homestead Strike'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1917 law made it a crime to interfere with the war effort, and later sent Eugene V. Debs to prison?', NULL,
        'The Espionage Act', ARRAY['The Sedition Act of 1798', 'The Smith Act', 'The Volstead Act', 'The Selective Service Act', 'The Clayton Act'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What name was given to the 1919-20 roundups of suspected radicals, led by the U.S. attorney general?', NULL,
        'The Palmer Raids', ARRAY['The Red Scare Trials', 'The McCarthy Hearings', 'The Slacker Raids', 'The Haymarket Raids', 'The Bisbee Deportation'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Whose poem "The New Colossus," with "Give me your tired, your poor," is on a plaque inside the Statue of Liberty''s base?', NULL,
        'Emma Lazarus', ARRAY['Walt Whitman', 'Emily Dickinson', 'Phillis Wheatley', 'Julia Ward Howe', 'Louisa May Alcott', 'Edna St. Vincent Millay'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which three-time presidential candidate thundered, "You shall not crucify mankind upon a cross of gold," in 1896?', NULL,
        'William Jennings Bryan', ARRAY['Grover Cleveland', 'William McKinley', 'Eugene Debs', 'Al Smith', 'Samuel Gompers', 'Robert La Follette'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1963 Supreme Court case, brought by a Florida prisoner who wrote his own appeal in pencil, guaranteed a lawyer to the poor?', NULL,
        'Gideon v. Wainwright', ARRAY['Escobedo v. Illinois', 'Mapp v. Ohio', 'Terry v. Ohio', 'Powell v. Alabama', 'Brown v. Mississippi', 'Gault v. Arizona'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What name was given to the World War I veterans who camped in Washington in 1932, demanding early payment of a promised bonus?', NULL,
        'The Bonus Army', ARRAY['Coxey''s Army', 'The Doughboy March', 'The Veterans'' Camp', 'The Hooverville Brigade', 'The Grand Army', 'The Forgotten Legion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Black journalist of the 1890s led a fearless campaign against lynching, and helped found the NAACP?', NULL,
        'Ida B. Wells', ARRAY['Mary McLeod Bethune', 'Sojourner Truth', 'Zora Neale Hurston', 'Mary Church Terrell', 'Fannie Lou Hamer', 'Harriet Jacobs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1676 Virginia uprising was led by a planter whose last name is also a breakfast meat?', NULL,
        'Bacon''s Rebellion', ARRAY['Ham''s Revolt', 'Sausage''s Uprising', 'Leisler''s Rebellion', 'Culpeper''s Rebellion', 'Shays'' Rebellion', 'Coode''s Revolt'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1794 uprising in western Pennsylvania, over a tax on a frontier drink, did President Washington ride out to crush?', NULL,
        'The Whiskey Rebellion', ARRAY['The Rum Riot', 'Fries''s Rebellion', 'The Paxton Boys'' March', 'The Hard Cider Revolt', 'The Corn Rebellion', 'Shays'' Rebellion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1797 scandal, in which French agents demanded bribes from U.S. diplomats, was named for three letters?', NULL,
        'The XYZ Affair', ARRAY['The ABC Affair', 'The JKL Scandal', 'The RSV Incident', 'The FBI Affair', 'The TNT Scandal', 'The QED Affair'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which young American spy, hanged by the British in 1776, said he regretted having only one life to lose for his country?', NULL,
        'Nathan Hale', ARRAY['Benedict Arnold', 'John André', 'Paul Revere', 'Crispus Attucks', 'Benjamin Tallmadge', 'Ethan Allen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which French nobleman, a teenage general for Washington, was called "the Hero of Two Worlds"?', NULL,
        'The Marquis de Lafayette', ARRAY['The Comte de Rochambeau', 'Baron von Steuben', 'The Comte de Grasse', 'Count Pulaski', 'Johann de Kalb', 'Tadeusz Kościuszko'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Prussian drillmaster turned the Continental Army into a disciplined force during the winter of 1777-78?', NULL,
        'Baron von Steuben', ARRAY['The Marquis de Lafayette', 'Johann de Kalb', 'Casimir Pulaski', 'Tadeusz Kościuszko', 'Horatio Gates', 'Nathanael Greene'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'In July 1863, mobs in which city rioted for days against the new wartime draft?', NULL,
        'New York City', ARRAY['Boston', 'Philadelphia', 'Baltimore', 'Chicago', 'Cincinnati', 'Washington, D.C.'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1868 amendment made everyone born in the U.S. a citizen and promised "equal protection of the laws"?', NULL,
        'The 14th Amendment', ARRAY['The 13th Amendment', 'The 15th Amendment', 'The 16th Amendment', 'The 1st Amendment', 'The 5th Amendment', 'The 10th Amendment'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Apache leader, whose name paratroopers shout when they jump, surrendered in 1886?', NULL,
        'Geronimo', ARRAY['Cochise', 'Mangas Coloradas', 'Victorio', 'Chief Joseph', 'Red Cloud', 'Black Hawk'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1911 New York factory fire killed 146 garment workers trapped behind locked doors?', NULL,
        'The Triangle Shirtwaist Factory fire', ARRAY['The Great Chicago Fire', 'The Cocoanut Grove fire', 'The Iroquois Theater fire', 'The General Slocum fire', 'The Hartford Circus fire', 'The Pemberton Mill fire'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What was the nickname of the Progressive Party, which ran a former president in 1912?', NULL,
        'The Bull Moose Party', ARRAY['The Rough Rider Party', 'The Square Deal Party', 'The Know-Nothing Party', 'The Greenback Party', 'The Teddy Bear Party', 'The Free Soil Party'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1933 amendment repealed the nationwide ban on alcohol, fittingly sharing its number with today''s drinking age?', NULL,
        'The 21st Amendment', ARRAY['The 18th Amendment', 'The 20th Amendment', 'The 19th Amendment', 'The 25th Amendment', 'The 16th Amendment', 'The 22nd Amendment'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which New Deal program put young men to work planting trees and building trails in national parks?', NULL,
        'The Civilian Conservation Corps', ARRAY['The Works Progress Administration', 'The Tennessee Valley Authority', 'The Peace Corps', 'AmeriCorps', 'The National Recovery Administration', 'The Public Works Administration'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1942 presidential order led to the forced removal of Japanese Americans to camps?', NULL,
        'Executive Order 9066', ARRAY['Executive Order 8802', 'The Alien Registration Act', 'The Smith Act', 'The War Powers Act', 'Executive Order 1942', 'The Enemy Act'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'In 1960, a group of Black college students began a famous sit-in at a Woolworth''s lunch counter in which North Carolina city?', NULL,
        'Greensboro', ARRAY['Raleigh', 'Durham', 'Charlotte', 'Winston-Salem', 'Montgomery', 'Birmingham'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What were the activists called who rode buses across the South in 1961 to challenge segregated bus stations?', NULL,
        'The Freedom Riders', ARRAY['The Night Riders', 'The Liberty Travelers', 'The Road Warriors', 'The Justice Line', 'The Southern Riders', 'The Peace Pilgrims'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'At which Ohio university did National Guard troops kill students during a 1970 antiwar protest?', NULL,
        'Kent State', ARRAY['Ohio State', 'Oberlin', 'Miami University', 'Ohio University', 'Bowling Green', 'Jackson State'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What was the Defense Department''s secret history of the war in Southeast Asia, leaked by Daniel Ellsberg in 1971, called?', NULL,
        'The Pentagon Papers', ARRAY['The Watergate Tapes', 'The Saigon Files', 'The Ellsberg Memo', 'The Gulf of Tonkin Report', 'The Vietnam Diaries', 'The McNamara Letters'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1979-81 crisis held 52 Americans captive for 444 days?', NULL,
        'The Iran hostage crisis', ARRAY['The Pueblo incident', 'The Lebanon hostage crisis', 'The Achille Lauro hijacking', 'The Munich crisis', 'The Bay of Pigs', 'The Gulf crisis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which 1830 law let President Andrew Jackson force Native nations to move west of the Mississippi?', NULL,
        'The Indian Removal Act', ARRAY['The Homestead Act', 'The Dawes Act', 'The Northwest Ordinance', 'The Kansas-Nebraska Act', 'The Treaty of New Echota', 'The Indian Reorganization Act'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'What was the first written constitution of the United States, replaced in 1789 because it made the national government too weak?', NULL,
        'The Articles of Confederation', ARRAY['The Mayflower Compact', 'The Federalist Papers', 'The Albany Plan', 'The Virginia Plan', 'The Declaration of Rights', 'The Treaty of Paris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which Dutch colonial governor is said to have bought Manhattan in 1626 for goods worth 60 guilders?', NULL,
        'Peter Minuit', ARRAY['Peter Stuyvesant', 'Henry Hudson', 'Adriaen Block', 'Wouter van Twiller', 'Willem Kieft', 'Kiliaen van Rensselaer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which newspaper tycoon of the "yellow journalism" era was the model for "Citizen Kane"?', NULL,
        'William Randolph Hearst', ARRAY['Joseph Pulitzer', 'Horace Greeley', 'Adolph Ochs', 'Henry Luce', 'Charles Foster Kane', 'Robert McCormick'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which queen, the last monarch of Hawaii, was overthrown in 1893 and wrote the song "Aloha ''Oe"?', NULL,
        'Liliuokalani', ARRAY['Kaahumanu', 'Kapiolani', 'Emma', 'Kalakaua', 'Keopuolani', 'Pauahi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'US_HISTORY_BATCH_2', NULL,
        'Which South Carolina militia leader, the "Swamp Fox," led hit-and-run raids against the British?', NULL,
        'Francis Marion', ARRAY['Thomas Sumter', 'Andrew Pickens', 'Nathanael Greene', 'Daniel Morgan', 'Light-Horse Harry Lee', 'Banastre Tarleton'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'US_HISTORY';
