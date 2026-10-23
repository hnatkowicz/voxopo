-- ============================================================================
-- content/sql/us_history.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/us_history.csv, the master copy of the
-- Thinking Pants category US_HISTORY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'US_HISTORY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the main author of the Declaration of Independence?', NULL,
        'Thomas Jefferson', ARRAY['John Adams', 'Benjamin Franklin', 'James Madison', 'Alexander Hamilton', 'John Hancock', 'Samuel Adams'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president issued the Emancipation Proclamation, which took effect on January 1, 1863?', NULL,
        'Abraham Lincoln', ARRAY['Andrew Johnson', 'Ulysses S. Grant', 'James Buchanan', 'Franklin Pierce', 'Millard Fillmore', 'Zachary Taylor'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which woman escaped slavery in Maryland and then led many others to freedom on the Underground Railroad, earning the nickname "Moses"?', NULL,
        'Harriet Tubman', ARRAY['Sojourner Truth', 'Harriet Jacobs', 'Ellen Craft', 'Phillis Wheatley', 'Mary Ann Shadd Cary', 'Harriet Beecher Stowe'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In December 1773, colonists protesting a British tax dumped 342 chests of tea into which city''s harbor?', NULL,
        'Boston', ARRAY['New York', 'Philadelphia', 'Charleston', 'Baltimore', 'Newport', 'Annapolis'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Confederate general surrendered his army to Ulysses S. Grant at Appomattox Court House in April 1865?', NULL,
        'Robert E. Lee', ARRAY['Stonewall Jackson', 'J.E.B. Stuart', 'Joseph E. Johnston', 'P.G.T. Beauregard', 'Braxton Bragg', 'Albert Sidney Johnston'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1803 land deal with France roughly doubled the size of the United States?', NULL,
        'The Louisiana Purchase', ARRAY['The Gadsden Purchase', 'The Alaska Purchase', 'The Mexican Cession', 'The Oregon Treaty', 'The Adams-Onís Treaty', 'The Texas Annexation'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Boston silversmith made a famous midnight ride in April 1775 to warn that British troops were on the march?', NULL,
        'Paul Revere', ARRAY['John Hancock', 'Samuel Adams', 'Nathan Hale', 'Ethan Allen', 'Benedict Arnold', 'John Paul Jones'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which document, written in Philadelphia in 1787, begins with the words "We the People"?', NULL,
        'The U.S. Constitution', ARRAY['The Declaration of Independence', 'The Articles of Confederation', 'The Bill of Rights', 'The Mayflower Compact', 'The Federalist Papers', 'The Gettysburg Address'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Founding Father, famous as a printer, writer and inventor, appears on the $100 bill?', NULL,
        'Benjamin Franklin', ARRAY['Alexander Hamilton', 'Thomas Jefferson', 'John Adams', 'John Hancock', 'James Madison', 'Samuel Adams'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which war''s last major battle ended with a British army surrendering at Yorktown, Virginia, in 1781?', NULL,
        'The American Revolution', ARRAY['The War of 1812', 'The French and Indian War', 'The American Civil War', 'The Mexican-American War', 'King Philip''s War', 'The Spanish-American War'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which island in New York Harbor was the nation''s busiest immigration station from 1892 to 1954?', NULL,
        'Ellis Island', ARRAY['Angel Island', 'Governors Island', 'Liberty Island', 'Staten Island', 'Roosevelt Island', 'Coney Island'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president launched the New Deal to fight the Great Depression?', NULL,
        'Franklin D. Roosevelt', ARRAY['Herbert Hoover', 'Harry S. Truman', 'Woodrow Wilson', 'Calvin Coolidge', 'Theodore Roosevelt', 'Warren G. Harding'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Alabama seamstress was arrested in December 1955 for refusing to give up her seat on a city bus?', NULL,
        'Rosa Parks', ARRAY['Coretta Scott King', 'Ruby Bridges', 'Fannie Lou Hamer', 'Daisy Bates', 'Ella Baker', 'Dorothy Height'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the nationwide ban on making and selling alcohol, from 1920 to 1933, called?', NULL,
        'Prohibition', ARRAY['Reconstruction', 'The Red Scare', 'Isolationism', 'The Square Deal', 'Nullification', 'The New Freedom'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president was assassinated in Dallas, Texas, in November 1963?', NULL,
        'John F. Kennedy', ARRAY['Lyndon B. Johnson', 'Dwight D. Eisenhower', 'Richard Nixon', 'William McKinley', 'James A. Garfield', 'Harry S. Truman'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which country did the US fight a long, divisive war that ended for American combat troops in 1973?', NULL,
        'Vietnam', ARRAY['Korea', 'Cambodia', 'Laos', 'Thailand', 'The Philippines', 'Malaysia'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president said "Mr. Gorbachev, tear down this wall!" in a 1987 speech in Berlin?', NULL,
        'Ronald Reagan', ARRAY['George H. W. Bush', 'Jimmy Carter', 'Gerald Ford', 'Bill Clinton', 'Richard Nixon', 'John F. Kennedy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What name was given to the drought-stricken southern Great Plains, where huge dust storms raged in the 1930s?', NULL,
        'The Dust Bowl', ARRAY['The Rust Belt', 'The Sun Belt', 'The Bible Belt', 'The Corn Belt', 'The Badlands', 'The Great Basin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What nickname was given to the decade of flappers, jazz and speakeasies in 1920s America?', NULL,
        'The Roaring Twenties', ARRAY['The Gilded Age', 'The Gay Nineties', 'The Progressive Era', 'The Swinging Sixties', 'The Fabulous Fifties', 'The Great Depression'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which American city was largely destroyed by an earthquake and the fires that followed in April 1906?', NULL,
        'San Francisco', ARRAY['Los Angeles', 'Seattle', 'Chicago', 'San Diego', 'Portland', 'Sacramento'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which actor shot President Abraham Lincoln at Ford''s Theatre in April 1865?', NULL,
        'John Wilkes Booth', ARRAY['Lewis Powell', 'John Surratt', 'Edwin Booth', 'Samuel Mudd', 'David Herold', 'George Atzerodt'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Powhatan woman, a chief''s daughter, married English colonist John Rolfe in 1614?', NULL,
        'Pocahontas', ARRAY['Sacagawea', 'Nancy Ward', 'Mary Musgrove', 'Weetamoo', 'Awashonks', 'Molly Brant'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which present-day U.S. state was an independent republic from 1836 until it joined the Union in 1845?', NULL,
        'Texas', ARRAY['New Mexico', 'Oklahoma', 'Arizona', 'Louisiana', 'Florida', 'Oregon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Shoshone woman traveled with the Lewis and Clark expedition as an interpreter, carrying her baby son along the way?', NULL,
        'Sacagawea', ARRAY['Pocahontas', 'Nancy Ward', 'Molly Brant', 'Mary Musgrove', 'Sarah Winnemucca', 'Weetamoo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'The forced removal of the Cherokee Nation from its Southeast homeland to Indian Territory in 1838-39 is remembered by what name?', NULL,
        'The Trail of Tears', ARRAY['The Long Walk', 'The Natchez Trace', 'The Wilderness Road', 'The Santa Fe Trail', 'The Great Wagon Road', 'The Old Spanish Trail'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which three-day battle, fought in Pennsylvania in July 1863, ended Robert E. Lee''s invasion of the North?', NULL,
        'The Battle of Gettysburg', ARRAY['The Battle of Antietam', 'The Battle of Vicksburg', 'The Battle of Chancellorsville', 'The Battle of Fredericksburg', 'The Battle of Shiloh', 'The First Battle of Bull Run'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first U.S. Secretary of the Treasury?', NULL,
        'Alexander Hamilton', ARRAY['Thomas Jefferson', 'Henry Knox', 'John Jay', 'Albert Gallatin', 'Oliver Wolcott Jr.', 'Edmund Randolph'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which abolitionist, who escaped slavery in Maryland in 1838, published a best-selling Narrative of his life in 1845?', NULL,
        'Frederick Douglass', ARRAY['William Wells Brown', 'Henry "Box" Brown', 'Josiah Henson', 'Henry Highland Garnet', 'Booker T. Washington', 'Nat Turner'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did the battles of Lexington and Concord begin the American Revolutionary War?', NULL,
        '1775', ARRAY['1770', '1773', '1774', '1776', '1777', '1778'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where did George Washington''s Continental Army spend the hard winter of 1777-78, west of Philadelphia?', NULL,
        'Valley Forge', ARRAY['Morristown', 'Yorktown', 'Fort Ticonderoga', 'Saratoga', 'Trenton', 'Brandywine'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1965 law suspended literacy tests and other barriers that kept Black Americans from voting?', NULL,
        'The Voting Rights Act', ARRAY['The Civil Rights Act of 1964', 'The Fair Housing Act', 'The 24th Amendment', 'The Civil Rights Act of 1957', 'The Equal Pay Act', 'The Immigration and Nationality Act'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment, ratified in 1920, guaranteed women the right to vote?', NULL,
        'The 19th Amendment', ARRAY['The 15th Amendment', 'The 16th Amendment', 'The 17th Amendment', 'The 18th Amendment', 'The 20th Amendment', 'The 21st Amendment'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1954 Supreme Court decision ruled that segregated public schools were unconstitutional?', NULL,
        'Brown v. Board of Education', ARRAY['Marbury v. Madison', 'Miranda v. Arizona', 'Loving v. Virginia', 'Gideon v. Wainwright', 'Dred Scott v. Sandford', 'McCulloch v. Maryland'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Scottish-born industrialist built a steel empire in Pittsburgh and paid for thousands of public libraries?', NULL,
        'Andrew Carnegie', ARRAY['John D. Rockefeller', 'J. P. Morgan', 'Cornelius Vanderbilt', 'Andrew Mellon', 'Henry Clay Frick', 'George Westinghouse'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president called his program of domestic reforms the "Great Society"?', NULL,
        'Lyndon B. Johnson', ARRAY['John F. Kennedy', 'Richard Nixon', 'Harry S. Truman', 'Dwight D. Eisenhower', 'Jimmy Carter', 'Herbert Hoover'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which scandal, named after a Washington, D.C., office and hotel complex, brought down President Nixon?', NULL,
        'Watergate', ARRAY['Teapot Dome', 'Iran-Contra', 'Whiskey Ring', 'Credit Mobilier', 'Abscam', 'Koreagate'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In which Arkansas city did nine Black students integrate Central High School in 1957, escorted by federal troops?', NULL,
        'Little Rock', ARRAY['Fayetteville', 'Fort Smith', 'Hot Springs', 'Pine Bluff', 'Jonesboro', 'Texarkana'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1898 war followed the explosion of the battleship USS Maine in Havana Harbor?', NULL,
        'The Spanish-American War', ARRAY['The Mexican-American War', 'The War of 1812', 'The Philippine-American War', 'The Boxer Rebellion', 'The Korean War', 'The Ten Years'' War'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1935 New Deal law created old-age pensions and unemployment insurance?', NULL,
        'The Social Security Act', ARRAY['The Wagner Act', 'The Fair Labor Standards Act', 'The Glass-Steagall Act', 'The National Industrial Recovery Act', 'The Agricultural Adjustment Act', 'The Emergency Banking Act'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the name of the US program, begun in 1948, that sent billions of dollars to rebuild Western Europe after World War II?', NULL,
        'The Marshall Plan', ARRAY['Lend-Lease', 'The Dawes Plan', 'The Young Plan', 'The Monroe Doctrine', 'The Good Neighbor Policy', 'The Open Door Policy'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1820 agreement admitted Maine as a free state alongside a new slave state, and banned slavery in most western land north of latitude 36°30''?', NULL,
        'The Missouri Compromise', ARRAY['The Compromise of 1850', 'The Kansas-Nebraska Act', 'The Great Compromise', 'The Three-Fifths Compromise', 'The Wilmot Proviso', 'The Crittenden Compromise'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1803 Supreme Court case first established the courts'' power to strike down a law as unconstitutional?', NULL,
        'Marbury v. Madison', ARRAY['McCulloch v. Maryland', 'Gibbons v. Ogden', 'Dartmouth College v. Woodward', 'Fletcher v. Peck', 'Worcester v. Georgia', 'Cohens v. Virginia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where was the 1848 convention, organized by Elizabeth Cady Stanton and Lucretia Mott, that launched the American women''s rights movement?', NULL,
        'Seneca Falls, New York', ARRAY['Rochester, New York', 'Albany, New York', 'Syracuse, New York', 'Worcester, Massachusetts', 'Philadelphia, Pennsylvania', 'Akron, Ohio'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Shawnee leader tried to unite Native nations against American expansion and was killed at the Battle of the Thames in 1813?', NULL,
        'Tecumseh', ARRAY['Pontiac', 'Little Turtle', 'Black Hawk', 'Blue Jacket', 'Tenskwatawa', 'Joseph Brant'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1783 treaty formally ended the American Revolutionary War?', NULL,
        'The Treaty of Paris', ARRAY['The Treaty of Ghent', 'The Treaty of Utrecht', 'The Jay Treaty', 'The Treaty of Fort Stanwix', 'The Treaty of Greenville', 'Pinckney''s Treaty'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which abolitionist led an armed raid on the federal armory at Harpers Ferry, Virginia, in October 1859?', NULL,
        'John Brown', ARRAY['Nat Turner', 'William Lloyd Garrison', 'Denmark Vesey', 'Gabriel Prosser', 'Elijah Lovejoy', 'Theodore Weld'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment to the U.S. Constitution, ratified in December 1865, abolished slavery?', NULL,
        'The 13th Amendment', ARRAY['The 11th Amendment', 'The 12th Amendment', 'The 14th Amendment', 'The 15th Amendment', 'The 16th Amendment', 'The 19th Amendment'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Union general led the 1864 "March to the Sea" from Atlanta to Savannah?', NULL,
        'William T. Sherman', ARRAY['Ulysses S. Grant', 'Philip Sheridan', 'George McClellan', 'George Meade', 'Ambrose Burnside', 'Joseph Hooker'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president was impeached by the House in 1868 and kept his office when the Senate fell one vote short of removing him?', NULL,
        'Andrew Johnson', ARRAY['Ulysses S. Grant', 'Rutherford B. Hayes', 'James Buchanan', 'Franklin Pierce', 'Millard Fillmore', 'John Tyler'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who wrote "Common Sense," the January 1776 pamphlet that urged the colonies to declare independence?', NULL,
        'Thomas Paine', ARRAY['Samuel Adams', 'John Dickinson', 'Patrick Henry', 'James Otis', 'John Adams', 'Thomas Jefferson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1948 and 1949, American and British planes flew food and coal into which blockaded city?', NULL,
        'Berlin', ARRAY['Vienna', 'Warsaw', 'Prague', 'Budapest', 'Hamburg', 'Bonn'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which writer''s 1906 novel "The Jungle" exposed conditions in Chicago''s meatpacking plants?', NULL,
        'Upton Sinclair', ARRAY['Sinclair Lewis', 'Ida Tarbell', 'Lincoln Steffens', 'Frank Norris', 'Theodore Dreiser', 'Jack London'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which former First Lady chaired the UN commission that drafted the 1948 Universal Declaration of Human Rights?', NULL,
        'Eleanor Roosevelt', ARRAY['Edith Wilson', 'Lou Henry Hoover', 'Bess Truman', 'Grace Coolidge', 'Mamie Eisenhower', 'Jacqueline Kennedy'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1896 Supreme Court decision upheld racial segregation under the doctrine of "separate but equal"?', NULL,
        'Plessy v. Ferguson', ARRAY['Dred Scott v. Sandford', 'Marbury v. Madison', 'Korematsu v. United States', 'McCulloch v. Maryland', 'Gibbons v. Ogden', 'Lochner v. New York'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1920s bribery scandal over a Wyoming oil reserve tarnished President Warren Harding''s administration?', NULL,
        'Teapot Dome', ARRAY['Credit Mobilier', 'Whiskey Ring', 'Star Route', 'Black Friday', 'Salary Grab', 'Tammany Hall'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who is the only person to serve as both Vice President and President without being elected to either office?', NULL,
        'Gerald Ford', ARRAY['Nelson Rockefeller', 'Lyndon B. Johnson', 'Harry S. Truman', 'Chester A. Arthur', 'Calvin Coolidge', 'Andrew Johnson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president won the 1906 Nobel Peace Prize for helping end the Russo-Japanese War?', NULL,
        'Theodore Roosevelt', ARRAY['Woodrow Wilson', 'William Howard Taft', 'William McKinley', 'Grover Cleveland', 'Benjamin Harrison', 'Calvin Coolidge'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which president signed the 1956 law that created the Interstate Highway System?', NULL,
        'Dwight D. Eisenhower', ARRAY['Harry S. Truman', 'John F. Kennedy', 'Lyndon B. Johnson', 'Herbert Hoover', 'Richard Nixon', 'Calvin Coolidge'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did both Alaska and Hawaii become states?', NULL,
        '1959', ARRAY['1949', '1953', '1955', '1957', '1961', '1963'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who became the first woman to serve as US Secretary of State, in 1997?', NULL,
        'Madeleine Albright', ARRAY['Condoleezza Rice', 'Jeane Kirkpatrick', 'Janet Reno', 'Elizabeth Dole', 'Donna Shalala', 'Geraldine Ferraro'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1786-87 uprising of debt-burdened farmers in western Massachusetts helped convince leaders that a stronger national government was needed?', NULL,
        'Shays'' Rebellion', ARRAY['The Whiskey Rebellion', 'Bacon''s Rebellion', 'Fries''s Rebellion', 'The Dorr Rebellion', 'Leisler''s Rebellion', 'The Regulator Movement'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1848 treaty ended the Mexican-American War?', NULL,
        'The Treaty of Guadalupe Hidalgo', ARRAY['The Treaty of Velasco', 'The Treaty of Córdoba', 'The Treaty of La Mesilla', 'The Adams-Onís Treaty', 'The Treaty of Fort Laramie', 'The Treaty of Ghent'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Where was the golden spike driven in May 1869 to complete the first transcontinental railroad?', NULL,
        'Promontory Summit, Utah', ARRAY['Ogden, Utah', 'Council Bluffs, Iowa', 'Cheyenne, Wyoming', 'Sacramento, California', 'Omaha, Nebraska', 'Reno, Nevada'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1870, who became the first Black American to serve in the U.S. Senate, representing Mississippi?', NULL,
        'Hiram Revels', ARRAY['Blanche K. Bruce', 'Robert Smalls', 'Joseph Rainey', 'John Mercer Langston', 'P.B.S. Pinchback', 'James T. Rapier'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which British general surrendered his army to American forces at Saratoga in October 1777?', NULL,
        'John Burgoyne', ARRAY['Charles Cornwallis', 'William Howe', 'Henry Clinton', 'Thomas Gage', 'Banastre Tarleton', 'Guy Carleton'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the war of 1675-76 between New England colonists and a Native alliance led by the Wampanoag sachem Metacom?', NULL,
        'King Philip''s War', ARRAY['The Pequot War', 'Queen Anne''s War', 'King William''s War', 'King George''s War', 'Pontiac''s War', 'The Anglo-Powhatan War'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1787 law set out how territory north of the Ohio River could become new states, and banned slavery there?', NULL,
        'The Northwest Ordinance', ARRAY['The Land Ordinance of 1785', 'The Proclamation of 1763', 'The Quebec Act', 'The Homestead Act', 'The Indian Removal Act', 'The Preemption Act'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which minister, banished from Massachusetts Bay, founded Providence in 1636 as a haven for religious freedom?', NULL,
        'Roger Williams', ARRAY['Thomas Hooker', 'John Winthrop', 'William Bradford', 'John Cotton', 'William Penn', 'James Oglethorpe'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In what year did Lewis and Clark''s Corps of Discovery leave its winter camp near St. Louis and head up the Missouri River?', NULL,
        '1804', ARRAY['1801', '1802', '1805', '1806', '1807', '1808'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Seminole leader, seized under a flag of truce in 1837, became a famous symbol of resistance in the Second Seminole War?', NULL,
        'Osceola', ARRAY['Black Hawk', 'Sequoyah', 'John Ross', 'Red Cloud', 'Pontiac', 'Little Turtle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1894 strike, backed by Eugene V. Debs''s American Railway Union, began at a railroad sleeping-car maker''s company town near Chicago?', NULL,
        'The Pullman Strike', ARRAY['The Homestead Strike', 'The Great Railroad Strike of 1877', 'The Haymarket Affair', 'The Lawrence Textile Strike', 'The Coal Strike of 1902', 'The Great Southwest Railroad Strike'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which former governor of California became Chief Justice of the United States in 1953?', NULL,
        'Earl Warren', ARRAY['Warren Burger', 'Fred Vinson', 'William Rehnquist', 'Charles Evans Hughes', 'Harlan F. Stone', 'William Howard Taft'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which amendment, ratified in 1913, let voters elect US senators directly?', NULL,
        'The 17th Amendment', ARRAY['The 14th Amendment', 'The 15th Amendment', 'The 16th Amendment', 'The 18th Amendment', 'The 20th Amendment', 'The 22nd Amendment'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'In 1962, James Meredith became the first Black student admitted to which university, after a standoff with the state''s governor?', NULL,
        'The University of Mississippi', ARRAY['The University of Alabama', 'The University of Georgia', 'Mississippi State University', 'Louisiana State University', 'Auburn University', 'The University of Texas'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Who was the first woman to serve in a US presidential Cabinet, as Franklin Roosevelt''s Secretary of Labor?', NULL,
        'Frances Perkins', ARRAY['Jeannette Rankin', 'Oveta Culp Hobby', 'Mary McLeod Bethune', 'Nellie Tayloe Ross', 'Edith Wilson', 'Jane Addams'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which Danish-born journalist photographed New York''s tenements for his 1890 book "How the Other Half Lives"?', NULL,
        'Jacob Riis', ARRAY['Lewis Hine', 'Alfred Stieglitz', 'Mathew Brady', 'Dorothea Lange', 'Walker Evans', 'Ansel Adams'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'What was the official name of the 1893 Chicago world''s fair where the first Ferris wheel turned?', NULL,
        'The World''s Columbian Exposition', ARRAY['The Centennial Exposition', 'The Panama-Pacific International Exposition', 'The Louisiana Purchase Exposition', 'The Pan-American Exposition', 'A Century of Progress', 'The Trans-Mississippi Exposition'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1890 law was the first federal law aimed at outlawing monopolies and trusts?', NULL,
        'The Sherman Antitrust Act', ARRAY['The Clayton Antitrust Act', 'The Interstate Commerce Act', 'The Pendleton Act', 'The Hepburn Act', 'The Federal Trade Commission Act', 'The Wagner Act'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which NASA program flew ten two-astronaut missions in 1965 and 1966, practicing spacewalks and docking before the Moon landings?', NULL,
        'Gemini', ARRAY['Mercury', 'Apollo', 'Skylab', 'Vanguard', 'Explorer', 'Ranger'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'US_HISTORY', 'ORIGINAL', NULL,
        'Which 1882 law was the first major federal law to bar immigrants of a specific nationality?', NULL,
        'The Chinese Exclusion Act', ARRAY['The Gentlemen''s Agreement', 'The Immigration Act of 1924', 'The Alien and Sedition Acts', 'The Dawes Act', 'The Pendleton Act', 'The Homestead Act'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'US_HISTORY';
