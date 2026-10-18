-- ============================================================================
-- content/sql/world_history.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/world_history.csv, the master copy of the
-- Thinking Pants category WORLD_HISTORY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 75 live questions
-- (100: 17, 200: 20, 300: 20, 400: 18), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who was the first President of the United States?', NULL,
        'George Washington', ARRAY['Thomas Jefferson', 'John Adams', 'Abraham Lincoln', 'Benjamin Franklin', 'James Madison', 'Alexander Hamilton'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In what year did World War I begin?', NULL,
        '1914', ARRAY['1912', '1916', '1918', '1920', '1910', '1939'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient civilization built the pyramids at Giza?', NULL,
        'The Egyptians', ARRAY['The Romans', 'The Greeks', 'The Mayans', 'The Aztecs', 'The Babylonians', 'The Persians'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which explorer sailed to the Americas in 1492?', NULL,
        'Christopher Columbus', ARRAY['Vasco da Gama', 'Ferdinand Magellan', 'Marco Polo', 'Amerigo Vespucci', 'Henry Hudson', 'John Cabot'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which wall divided a European city from 1961 to 1989?', NULL,
        'The Berlin Wall', ARRAY['The Great Wall', 'Hadrian''s Wall', 'The Iron Curtain', 'The Maginot Line', 'The Atlantic Wall', 'The Siegfried Line'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ship famously sank in the North Atlantic after hitting an iceberg in 1912?', NULL,
        'The Titanic', ARRAY['The Lusitania', 'The Britannic', 'The Queen Mary', 'The Olympic', 'The Carpathia', 'The Andrea Doria'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which city would you find the ancient Colosseum?', NULL,
        'Rome', ARRAY['Athens', 'Paris', 'Cairo', 'Istanbul', 'Pompeii', 'Naples'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What document, adopted on July 4, 1776, announced the American colonies'' break from Britain?', NULL,
        'The Declaration of Independence', ARRAY['The Constitution', 'The Bill of Rights', 'The Magna Carta', 'The Articles of Confederation', 'The Emancipation Proclamation', 'The Mayflower Compact'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which war was fought on American soil from 1861 to 1865?', NULL,
        'The American Civil War', ARRAY['The Revolutionary War', 'The War of 1812', 'The Mexican-American War', 'The Spanish-American War', 'The French and Indian War', 'World War I'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'Who served as British Prime Minister for most of World War II?', NULL,
        'Winston Churchill', ARRAY['Neville Chamberlain', 'Clement Attlee', 'Anthony Eden', 'Stanley Baldwin', 'Lord Halifax', 'Harold Macmillan'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'Which teenage diarist hid with her family in a secret annex in Amsterdam during the Nazi occupation?', NULL,
        'Anne Frank', ARRAY['Etty Hillesum', 'Corrie ten Boom', 'Sophie Scholl', 'Hannah Senesh', 'Miep Gies', 'Irena Sendler'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which French military leader crowned himself Emperor in 1804?', NULL,
        'Napoleon Bonaparte', ARRAY['Louis XIV', 'Louis XVI', 'Charlemagne', 'Charles de Gaulle', 'Cardinal Richelieu', 'Louis-Philippe I'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ancient wall was built across northern China to keep out invaders from the steppes?', NULL,
        'The Great Wall', ARRAY['Hadrian''s Wall', 'The Antonine Wall', 'The Western Wall', 'The Walls of Jericho', 'The Walls of Constantinople', 'The Berlin Wall'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which South African leader was freed from prison in 1990 and became president in 1994?', NULL,
        'Nelson Mandela', ARRAY['Desmond Tutu', 'F.W. de Klerk', 'Steve Biko', 'Thabo Mbeki', 'Oliver Tambo', 'Jacob Zuma'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Roman city was buried by the eruption of Mount Vesuvius in AD 79?', NULL,
        'Pompeii', ARRAY['Naples', 'Ostia', 'Carthage', 'Syracuse', 'Capua', 'Ravenna'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which civil rights leader gave the "I Have a Dream" speech in 1963?', NULL,
        'Martin Luther King Jr.', ARRAY['Malcolm X', 'John Lewis', 'Jesse Jackson', 'Frederick Douglass', 'Medgar Evers', 'Ralph Abernathy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'The Vikings set out from which part of Europe?', NULL,
        'Scandinavia', ARRAY['The British Isles', 'The Iberian Peninsula', 'The Balkans', 'The Low Countries', 'Central Europe', 'The Baltic states'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which British monarch reigned for nearly 64 years, from 1837 to 1901?', NULL,
        'Queen Victoria', ARRAY['Queen Elizabeth I', 'Queen Elizabeth II', 'Queen Anne', 'Queen Mary I', 'Queen Charlotte', 'Queen Caroline'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Julius Caesar was assassinated on the Ides of March. What date is that?', NULL,
        'March 15', ARRAY['March 1', 'March 7', 'March 13', 'March 21', 'March 25', 'March 31'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who was the leader of Nazi Germany during World War II?', NULL,
        'Adolf Hitler', ARRAY['Benito Mussolini', 'Joseph Stalin', 'Hermann Göring', 'Heinrich Himmler', 'Joseph Goebbels', 'Erwin Rommel'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which empire built the extensive road network and city of Machu Picchu in Peru?', NULL,
        'The Inca Empire', ARRAY['The Aztec Empire', 'The Maya civilization', 'The Olmec civilization', 'The Spanish Empire', 'The Toltec civilization', 'The Chimu civilization'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country was formerly known as Persia?', NULL,
        'Iran', ARRAY['Iraq', 'Turkey', 'Syria', 'Afghanistan', 'Egypt', 'Jordan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who was the famous queen of ancient Egypt who allied with Mark Antony?', NULL,
        'Cleopatra', ARRAY['Nefertiti', 'Hatshepsut', 'Isis', 'Ankhesenamun', 'Nefertari', 'Tiye'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which empire was ruled by Genghis Khan?', NULL,
        'The Mongol Empire', ARRAY['The Ottoman Empire', 'The Persian Empire', 'The Chinese Empire', 'The Russian Empire', 'The Tang Dynasty', 'The Byzantine Empire'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The storming of the Bastille in 1789 was an early event in which revolution?', NULL,
        'The French Revolution', ARRAY['The Industrial Revolution', 'The Glorious Revolution', 'The Russian Revolution', 'The American Revolution', 'The Bolshevik Revolution', 'The Haitian Revolution'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Indian leader is famous for leading a nonviolent independence movement against British rule?', NULL,
        'Mahatma Gandhi', ARRAY['Jawaharlal Nehru', 'Subhas Chandra Bose', 'Muhammad Ali Jinnah', 'Bhagat Singh', 'Sardar Patel', 'Rabindranath Tagore'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'What was the code name for the Allied invasion of Normandy in June 1944?', NULL,
        'Operation Overlord', ARRAY['Operation Torch', 'Operation Market Garden', 'Operation Husky', 'Operation Barbarossa', 'Operation Sea Lion', 'Operation Cobra'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'Which British mathematician, based at Bletchley Park, played a leading role in breaking the German Enigma code?', NULL,
        'Alan Turing', ARRAY['Gordon Welchman', 'Dilly Knox', 'Bill Tutte', 'Max Newman', 'Charles Babbage', 'John von Neumann'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Greek city-state''s King Leonidas led 300 soldiers at the Battle of Thermopylae?', NULL,
        'Sparta', ARRAY['Athens', 'Corinth', 'Thebes', 'Argos', 'Megara', 'Macedon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which empire built its capital, Tenochtitlan, on a lake where Mexico City stands today?', NULL,
        'The Aztec Empire', ARRAY['The Maya civilization', 'The Inca Empire', 'The Olmec civilization', 'The Toltec Empire', 'The Zapotec civilization', 'The Mixtec civilization'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Who proclaimed the People''s Republic of China in 1949?', NULL,
        'Mao Zedong', ARRAY['Chiang Kai-shek', 'Sun Yat-sen', 'Deng Xiaoping', 'Zhou Enlai', 'Puyi', 'Liu Shaoqi'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'What was the ancient network of trade routes linking China with the Mediterranean called?', NULL,
        'The Silk Road', ARRAY['The Spice Route', 'The Amber Road', 'The Incense Route', 'The Royal Road', 'The Tea Horse Road', 'The Grand Trunk Road'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which 13-day standoff in 1962 brought the United States and the Soviet Union to the brink of nuclear war?', NULL,
        'The Cuban Missile Crisis', ARRAY['The Bay of Pigs Invasion', 'The Berlin Blockade', 'The Suez Crisis', 'The U-2 Incident', 'The Korean War', 'The Prague Spring'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which king of Macedon built an empire stretching from Greece to India before dying at 32?', NULL,
        'Alexander the Great', ARRAY['Philip II of Macedon', 'Darius III', 'Xerxes I', 'Cyrus the Great', 'Pyrrhus of Epirus', 'Ptolemy I'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which English queen''s navy defeated the Spanish Armada in 1588?', NULL,
        'Elizabeth I', ARRAY['Mary I', 'Queen Anne', 'Mary, Queen of Scots', 'Lady Jane Grey', 'Catherine of Aragon', 'Mary II'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which disease, known as the Black Death, swept through Europe in the mid-1300s?', NULL,
        'The bubonic plague', ARRAY['Smallpox', 'Cholera', 'Typhus', 'Leprosy', 'Measles', 'Spanish flu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which South American country is named after the independence leader Simón Bolívar?', NULL,
        'Bolivia', ARRAY['Venezuela', 'Colombia', 'Ecuador', 'Peru', 'Paraguay', 'Uruguay'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which self-governing country was the first to give women the vote in national elections, in 1893?', NULL,
        'New Zealand', ARRAY['United States', 'United Kingdom', 'Australia', 'Finland', 'Norway', 'Canada'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which country did King John seal the Magna Carta in 1215?', NULL,
        'England', ARRAY['France', 'Scotland', 'Wales', 'Ireland', 'Normandy', 'Flanders'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What was the name of the ship that carried the Pilgrims to America in 1620?', NULL,
        'The Mayflower', ARRAY['The Santa Maria', 'The Nina', 'The Pinta', 'The Endeavour', 'The Beagle', 'The Speedwell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Whose assassination in Sarajevo triggered the start of World War I?', NULL,
        'Archduke Franz Ferdinand', ARRAY['Kaiser Wilhelm II', 'Tsar Nicholas II', 'King George V', 'Otto von Bismarck', 'Emperor Franz Joseph', 'Woodrow Wilson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which naval battle in 1805 saw British Admiral Horatio Nelson defeat a combined French and Spanish fleet?', NULL,
        'The Battle of Trafalgar', ARRAY['The Battle of the Nile', 'The Battle of Jutland', 'The Battle of Waterloo', 'The Battle of Copenhagen', 'The Battle of Leyte Gulf', 'The Battle of Midway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which event in 1929 triggered a decade-long global economic depression?', NULL,
        'The Wall Street Crash', ARRAY['World War I', 'The Dust Bowl', 'The oil crisis', 'The gold rush', 'The banking panic of 1907', 'The Treaty of Versailles'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which explorer is credited with leading the first expedition to circumnavigate the globe, though he died before completing it?', NULL,
        'Ferdinand Magellan', ARRAY['Christopher Columbus', 'Vasco da Gama', 'Francis Drake', 'James Cook', 'Marco Polo', 'Hernán Cortés'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1917 uprising ended the rule of the tsars and brought the Bolsheviks to power?', NULL,
        'The Russian Revolution', ARRAY['The French Revolution', 'The Decembrist Revolt', 'The Paris Commune', 'The Prague Spring', 'The Hungarian Revolution', 'The Cultural Revolution'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1453 event is often cited as marking the end of the Byzantine Empire?', NULL,
        'The Fall of Constantinople', ARRAY['The Fall of Rome', 'The Sack of Jerusalem', 'The Siege of Vienna', 'The Fourth Crusade', 'The Fall of Antioch', 'The Battle of Manzikert'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Carthaginian general famously crossed the Alps with an army that included war elephants?', NULL,
        'Hannibal', ARRAY['Hamilcar Barca', 'Hasdrubal', 'Scipio Africanus', 'Pyrrhus of Epirus', 'Julius Caesar', 'Alexander the Great'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'Which battle is widely considered the turning point of the war on the Eastern Front?', NULL,
        'The Battle of Stalingrad', ARRAY['The Battle of Kursk', 'The Battle of Moscow', 'The Siege of Leningrad', 'The Battle of Kiev', 'The Battle of Berlin', 'The Battle of Smolensk'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'Which June 1942 naval battle is considered the turning point of the war in the Pacific?', NULL,
        'The Battle of Midway', ARRAY['The Battle of the Coral Sea', 'The Battle of Leyte Gulf', 'The Battle of Guadalcanal', 'The Battle of the Philippine Sea', 'The Battle of Okinawa', 'The Battle of Iwo Jima'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which African nation kept its independence by defeating an Italian invasion at the Battle of Adwa in 1896?', NULL,
        'Ethiopia', ARRAY['Eritrea', 'Somalia', 'Libya', 'Sudan', 'Egypt', 'Kenya'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Who became the first Roman emperor, in 27 BC?', NULL,
        'Augustus', ARRAY['Julius Caesar', 'Tiberius', 'Nero', 'Caligula', 'Constantine', 'Marcus Aurelius'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which grandson of Genghis Khan founded China''s Yuan dynasty?', NULL,
        'Kublai Khan', ARRAY['Ögedei Khan', 'Batu Khan', 'Hulagu Khan', 'Möngke Khan', 'Tamerlane', 'Babur'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Spanish conquistador captured the emperor Atahualpa in Peru in 1532?', NULL,
        'Francisco Pizarro', ARRAY['Hernán Cortés', 'Hernando de Soto', 'Vasco Núñez de Balboa', 'Diego de Almagro', 'Francisco de Orellana', 'Francisco Vázquez de Coronado'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ancient city was said to be home to the Hanging Gardens, one of the Seven Wonders?', NULL,
        'Babylon', ARRAY['Ur', 'Persepolis', 'Carthage', 'Memphis', 'Troy', 'Jericho'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Roman emperor ordered a wall built across northern Britain, starting in AD 122?', NULL,
        'Hadrian', ARRAY['Trajan', 'Antoninus Pius', 'Claudius', 'Septimius Severus', 'Nero', 'Vespasian'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Soviet leader introduced the reforms known as glasnost and perestroika?', NULL,
        'Mikhail Gorbachev', ARRAY['Boris Yeltsin', 'Leonid Brezhnev', 'Nikita Khrushchev', 'Yuri Andropov', 'Konstantin Chernenko', 'Joseph Stalin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Mughal emperor built the Taj Mahal as a tomb for his wife?', NULL,
        'Shah Jahan', ARRAY['Akbar', 'Aurangzeb', 'Babur', 'Humayun', 'Jahangir', 'Ashoka'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which of the Seven Wonders of the Ancient World stood on the island of Pharos in Egypt?', NULL,
        'The Lighthouse of Alexandria', ARRAY['The Hanging Gardens', 'The Colossus of Rhodes', 'The Great Pyramid', 'The Temple of Artemis', 'The Statue of Zeus', 'The Mausoleum at Halicarnassus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The 1919 Treaty of Versailles was signed in which famous room of the palace?', NULL,
        'The Hall of Mirrors', ARRAY['The Hall of Battles', 'The Royal Chapel', 'The Throne Room', 'The Salon of Peace', 'The Queen''s Bedchamber', 'The Royal Opera'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which dynasty was the last imperial dynasty of China?', NULL,
        'The Qing Dynasty', ARRAY['The Ming Dynasty', 'The Tang Dynasty', 'The Han Dynasty', 'The Song Dynasty', 'The Yuan Dynasty', 'The Zhou Dynasty'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Byzantine Emperor is famous for codifying Roman law in the 6th century?', NULL,
        'Justinian I', ARRAY['Constantine the Great', 'Theodosius I', 'Basil II', 'Heraclius', 'Diocletian', 'Augustus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The Rosetta Stone, key to deciphering Egyptian hieroglyphs, is inscribed in how many different scripts?', NULL,
        'Three', ARRAY['Two', 'Four', 'Five', 'One', 'Six', 'Seven'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which peace treaty in 1648 ended the Thirty Years'' War in Europe?', NULL,
        'The Peace of Westphalia', ARRAY['The Treaty of Utrecht', 'The Treaty of Tordesillas', 'The Congress of Vienna', 'The Treaty of Augsburg', 'The Treaty of Westminster', 'The Edict of Nantes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient Mesopotamian king is credited with one of the earliest known written law codes?', NULL,
        'Hammurabi', ARRAY['Sargon of Akkad', 'Nebuchadnezzar II', 'Ashurbanipal', 'Gilgamesh', 'Cyrus the Great', 'Darius I'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'What was the code name for the 1940 evacuation of Allied troops from the beaches of Dunkirk?', NULL,
        'Operation Dynamo', ARRAY['Operation Overlord', 'Operation Sea Lion', 'Operation Torch', 'Operation Market Garden', 'Operation Cobra', 'Operation Husky'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which 1868 event returned power from the shogun to Japan''s emperor?', NULL,
        'The Meiji Restoration', ARRAY['The Taika Reform', 'The Kenmu Restoration', 'The Tokugawa Shogunate', 'The Sengoku Period', 'The Taisho Democracy', 'The Edo Period'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ruler of the Mali Empire made a famously lavish pilgrimage to Mecca in 1324?', NULL,
        'Mansa Musa', ARRAY['Sundiata Keita', 'Sonni Ali', 'Askia Muhammad', 'Menelik II', 'Ezana of Axum', 'Shaka'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which female pharaoh ruled Egypt in the 15th century BC and was often shown wearing a false beard?', NULL,
        'Hatshepsut', ARRAY['Nefertiti', 'Nefertari', 'Tiye', 'Ankhesenamun', 'Arsinoe II', 'Ahhotep'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Zulu king built a powerful kingdom in southern Africa in the early 1800s?', NULL,
        'Shaka', ARRAY['Moshoeshoe', 'Mzilikazi', 'Lobengula', 'Sekhukhune', 'Menelik II', 'Mansa Musa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which empire built the temple complex of Angkor Wat?', NULL,
        'The Khmer Empire', ARRAY['The Champa Kingdom', 'The Srivijaya Empire', 'The Majapahit Empire', 'The Pagan Kingdom', 'The Ayutthaya Kingdom', 'The Đại Việt'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Persian king founded the Achaemenid Empire and let exiled Jews return to Jerusalem?', NULL,
        'Cyrus the Great', ARRAY['Darius I', 'Xerxes I', 'Cambyses II', 'Artaxerxes I', 'Nebuchadnezzar II', 'Shapur I'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which 1494 treaty divided newly found lands outside Europe between Spain and Portugal?', NULL,
        'The Treaty of Tordesillas', ARRAY['The Treaty of Zaragoza', 'The Treaty of Utrecht', 'The Treaty of Paris', 'The Treaty of Madrid', 'The Treaty of Lisbon', 'The Treaty of Windsor'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Ottoman sultan, called "the Magnificent" in Europe, ruled at the empire''s height in the 1500s?', NULL,
        'Suleiman I', ARRAY['Mehmed II', 'Selim I', 'Osman I', 'Murad I', 'Bayezid I', 'Abdul Hamid II'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'The ruins of ancient Carthage lie in which modern country?', NULL,
        'Tunisia', ARRAY['Libya', 'Algeria', 'Morocco', 'Egypt', 'Lebanon', 'Malta'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Whose 1768-71 voyage on HMS Endeavour charted the east coast of Australia?', NULL,
        'James Cook', ARRAY['Abel Tasman', 'Matthew Flinders', 'William Bligh', 'William Dampier', 'George Vancouver', 'Joseph Banks'], 400);

COMMIT;

-- Check: should return 75.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';
