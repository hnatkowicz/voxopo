-- ============================================================================
-- content/sql/world_history.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/world_history.csv, the master copy of the
-- Thinking Pants category WORLD_HISTORY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';


-- 100 points
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
        'The Vikings set out from which part of Europe?', NULL,
        'Scandinavia', ARRAY['The British Isles', 'The Iberian Peninsula', 'The Balkans', 'The Low Countries', 'Central Europe', 'The Baltic states'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which English king married six times and broke with the Roman Catholic Church?', NULL,
        'Henry VIII', ARRAY['Henry VII', 'Henry V', 'Edward VI', 'Richard III', 'James I', 'Charles I'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which French queen, wife of Louis XVI, was executed by guillotine in 1793?', NULL,
        'Marie Antoinette', ARRAY['Catherine de'' Medici', 'Marie de'' Medici', 'Anne of Austria', 'Eleanor of Aquitaine', 'Empress Joséphine', 'Marie Louise'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which young pharaoh''s nearly intact tomb did Howard Carter discover in the Valley of the Kings in 1922?', NULL,
        'Tutankhamun', ARRAY['Ramesses II', 'Akhenaten', 'Khufu', 'Thutmose III', 'Seti I', 'Amenhotep III'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient Greek city is called the birthplace of democracy?', NULL,
        'Athens', ARRAY['Sparta', 'Corinth', 'Thebes', 'Troy', 'Delphi'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which code of honor did Japan''s samurai warriors follow?', NULL,
        'Bushido', ARRAY['Kamikaze', 'Shogun', 'Zen', 'Ninjutsu', 'Seppuku'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which gladiator led a huge slave revolt against Rome in 73 BC?', NULL,
        'Spartacus', ARRAY['Maximus', 'Commodus', 'Brutus', 'Hannibal', 'Vercingetorix'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Greek philosopher was Plato''s teacher?', NULL,
        'Socrates', ARRAY['Aristotle', 'Pythagoras', 'Homer', 'Archimedes', 'Diogenes'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which language did the ancient Romans speak?', NULL,
        'Latin', ARRAY['Greek', 'Italian', 'Aramaic', 'Etruscan', 'Hebrew'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which river was the lifeline of ancient Egypt?', NULL,
        'The Nile', ARRAY['The Tigris', 'The Euphrates', 'The Jordan', 'The Indus', 'The Congo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country gave the Statue of Liberty to the United States?', NULL,
        'France', ARRAY['Britain', 'Spain', 'Italy', 'The Netherlands', 'Germany'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient games, first held in 776 BC, honored the god Zeus?', NULL,
        'The Olympic Games', ARRAY['The Pythian Games', 'The Gladiator Games', 'The Isthmian Games', 'The Roman Games', 'The Spartan Games'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country''s Vikings were the first Europeans to settle Iceland?', NULL,
        'Norway', ARRAY['Denmark', 'Sweden', 'Scotland', 'Ireland', 'Finland'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which British queen reigned for 70 years, until her death in 2022?', NULL,
        'Elizabeth II', ARRAY['Victoria', 'Mary II', 'Anne', 'Elizabeth I', 'Alexandra'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the medieval system of lords, knights and serfs bound by land and loyalty?', NULL,
        'Feudalism', ARRAY['Communism', 'Mercantilism', 'Capitalism', 'Monarchy', 'Tribalism'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which civilization built the great pyramids at Chichen Itza in Mexico?', NULL,
        'The Maya', ARRAY['The Aztecs', 'The Inca', 'The Olmecs', 'The Toltecs', 'The Egyptians'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which series of medieval religious wars, starting in 1096, aimed to win Jerusalem?', NULL,
        'The Crusades', ARRAY['The Reconquista', 'The Hundred Years'' War', 'The Wars of the Roses', 'The Inquisition', 'The Thirty Years'' War'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which country did the Industrial Revolution begin, in the 1700s?', NULL,
        'Great Britain', ARRAY['Germany', 'France', 'The United States', 'Belgium', 'Japan'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What were the stone channels that carried water across the Roman Empire to its cities called?', NULL,
        'Aqueducts', ARRAY['Viaducts', 'Canals', 'Cisterns', 'Sewers', 'Levees'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient city fell to a trick involving a giant wooden horse?', NULL,
        'Troy', ARRAY['Sparta', 'Athens', 'Carthage', 'Babylon', 'Jericho'], 100);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Venetian merchant''s book about his travels in China in the late 1200s amazed Europe?', NULL,
        'Marco Polo', ARRAY['Ibn Battuta', 'Niccolo Machiavelli', 'Giovanni Caboto', 'Christopher Columbus', 'Zheng He'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Italian explorer''s first name was given to the Americas?', NULL,
        'Amerigo Vespucci', ARRAY['Giovanni da Verrazzano', 'John Cabot', 'Marco Polo', 'Americo Columbo', 'Amadeo Ferrara'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'On which ship did Charles Darwin sail around the world from 1831 to 1836?', NULL,
        'HMS Beagle', ARRAY['HMS Endeavour', 'HMS Bounty', 'HMS Victory', 'HMS Discovery', 'HMS Challenger'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Scottish missionary and explorer was famously found by Henry Morton Stanley in 1871?', NULL,
        'David Livingstone', ARRAY['Mungo Park', 'Richard Burton', 'John Speke', 'Cecil Rhodes', 'Samuel Baker'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese philosopher''s sayings were collected in the Analects?', NULL,
        'Confucius', ARRAY['Laozi', 'Sun Tzu', 'Mencius', 'Buddha', 'Zhuangzi'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Florentine banking family were patrons of Michelangelo and Botticelli?', NULL,
        'The Medici', ARRAY['The Borgia', 'The Sforza', 'The Habsburgs', 'The Bourbons', 'The Este'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'At which 1815 battle in present-day Belgium was Napoleon finally defeated?', NULL,
        'Waterloo', ARRAY['Austerlitz', 'Leipzig', 'Borodino', 'Ypres', 'Marengo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What was South Africa''s system of racial segregation, from 1948 to the early 1990s, called?', NULL,
        'Apartheid', ARRAY['Jim Crow', 'Segregation Act', 'The Pass System', 'Bantustan', 'Colonialism'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which Beijing square were pro-democracy protests crushed in 1989?', NULL,
        'Tiananmen Square', ARRAY['Red Square', 'The Forbidden City', 'Wenceslas Square', 'Mao Square', 'People''s Park'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country was called the "Jewel in the Crown" of the British Empire?', NULL,
        'India', ARRAY['Australia', 'Canada', 'Egypt', 'South Africa', 'Jamaica'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Norse explorer reached North America around the year 1000?', NULL,
        'Leif Erikson', ARRAY['Erik the Red', 'Ragnar Lothbrok', 'Harald Hardrada', 'Rollo', 'Olaf Tryggvason'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the thousands of life-size clay soldiers found near Xi''an, China, in 1974?', NULL,
        'The Terracotta Army', ARRAY['The Clay Legion', 'The Jade Guard', 'The Stone Warriors', 'The Bronze Army', 'The Silent Battalion'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Russian tsar founded St. Petersburg in 1703?', NULL,
        'Peter the Great', ARRAY['Ivan the Terrible', 'Catherine the Great', 'Nicholas II', 'Alexander I', 'Ivan III'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the decades-long rivalry between the US and the Soviet Union after 1945?', NULL,
        'The Cold War', ARRAY['The Iron War', 'The Long Peace', 'The Silent War', 'The Arms War', 'The Red Scare'], 200);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient people of Mesopotamia invented cuneiform, one of the first writing systems?', NULL,
        'The Sumerians', ARRAY['The Babylonians', 'The Assyrians', 'The Phoenicians', 'The Hittites', 'The Egyptians'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Roman emperor made Christianity legal in 313 and founded a city on the Bosporus?', NULL,
        'Constantine', ARRAY['Nero', 'Augustus', 'Trajan', 'Diocletian', 'Marcus Aurelius'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country''s 1910 revolution overthrew the dictator Porfirio Diaz?', NULL,
        'Mexico', ARRAY['Cuba', 'Spain', 'Argentina', 'Chile', 'Colombia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese admiral led giant treasure fleets across the Indian Ocean in the early 1400s?', NULL,
        'Zheng He', ARRAY['Kublai Khan', 'Sun Yat-sen', 'Marco Polo', 'Chiang Kai-shek', 'Xuanzang'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1857 uprising against the British East India Company began among Indian soldiers?', NULL,
        'The Indian Rebellion', ARRAY['The Boxer Rebellion', 'The Salt March', 'The Taiping Rebellion', 'The Boer War', 'The Opium War'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which former enslaved man led the Haitian Revolution, the only slave uprising to found a nation?', NULL,
        'Toussaint Louverture', ARRAY['Simon Bolivar', 'Jean-Jacques Dessalines', 'Nat Turner', 'Frederick Douglass', 'Jose de San Martin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Italian patriot led the "Redshirts" in the fight to unite Italy?', NULL,
        'Giuseppe Garibaldi', ARRAY['Giuseppe Mazzini', 'Camillo Cavour', 'Benito Mussolini', 'Victor Emmanuel II', 'Niccolo Machiavelli'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Norman duke won the Battle of Hastings in 1066?', NULL,
        'William the Conqueror', ARRAY['Richard the Lionheart', 'Harold Godwinson', 'Henry II', 'Rollo', 'Edward the Confessor'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese dynasty, ruling from 1368, built the Forbidden City?', NULL,
        'The Ming dynasty', ARRAY['The Han dynasty', 'The Tang dynasty', 'The Song dynasty', 'The Yuan dynasty', 'The Zhou dynasty'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which was the largest empire in history by land area?', NULL,
        'The British Empire', ARRAY['The Mongol Empire', 'The Roman Empire', 'The Russian Empire', 'The Spanish Empire', 'The Ottoman Empire'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who became independent India''s first prime minister, in 1947?', NULL,
        'Jawaharlal Nehru', ARRAY['Mahatma Gandhi', 'Indira Gandhi', 'Muhammad Ali Jinnah', 'Sardar Patel', 'Rajiv Gandhi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Egyptian president seized the Suez Canal in 1956?', NULL,
        'Gamal Abdel Nasser', ARRAY['Anwar Sadat', 'Hosni Mubarak', 'King Farouk', 'Muammar Gaddafi', 'Mohamed Naguib'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which revolutionary took power in Cuba in 1959 and ruled for nearly 50 years?', NULL,
        'Fidel Castro', ARRAY['Che Guevara', 'Fulgencio Batista', 'Raul Castro', 'Hugo Chavez', 'Daniel Ortega'], 300);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Mauryan emperor of India embraced Buddhism after the bloody Kalinga War?', NULL,
        'Ashoka', ARRAY['Chandragupta Maurya', 'Bindusara', 'Akbar', 'Samudragupta', 'Harsha', 'Kanishka'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which 1905 naval battle did Japan''s fleet destroy Russia''s Baltic Fleet?', NULL,
        'The Battle of Tsushima', ARRAY['The Battle of Port Arthur', 'The Battle of the Yellow Sea', 'The Battle of Mukden', 'The Battle of Jutland', 'The Battle of Manila Bay', 'The Battle of Navarino'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1884-85 conference split Africa among European powers?', NULL,
        'The Berlin Conference', ARRAY['The Congress of Vienna', 'The Paris Peace Conference', 'The Hague Conference', 'The Treaty of Utrecht', 'The Brussels Conference'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'An Ottoman army was turned back in 1683 at the gates of which European capital?', NULL,
        'Vienna', ARRAY['Budapest', 'Prague', 'Warsaw', 'Belgrade', 'Venice'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1850-64 Chinese uprising, led by a man who claimed to be Jesus''s younger brother, cost millions of lives?', NULL,
        'The Taiping Rebellion', ARRAY['The Boxer Rebellion', 'The Opium War', 'The White Lotus Rebellion', 'The Xinhai Revolution', 'The Red Turban Rebellion'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Ethiopian emperor pleaded for help at the League of Nations after Italy invaded his country in 1935?', NULL,
        'Haile Selassie', ARRAY['Menelik II', 'Tewodros II', 'Yohannes IV', 'Mengistu Haile Mariam', 'Zara Yaqob'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1842 treaty ended the First Opium War and handed Hong Kong to Britain?', NULL,
        'The Treaty of Nanking', ARRAY['The Treaty of Tianjin', 'The Treaty of Shimonoseki', 'The Treaty of Beijing', 'The Treaty of Whampoa', 'The Treaty of Aigun'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Byzantine empress, a former actress, urged her husband to stand firm during the Nika riots of 532?', NULL,
        'Theodora', ARRAY['Irene', 'Zoe', 'Helena', 'Anna Komnene', 'Galla Placidia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient civilization built planned cities at Harappa and Mohenjo-daro?', NULL,
        'The Indus Valley Civilization', ARRAY['The Mauryan Empire', 'The Gupta Empire', 'The Vedic Civilization', 'The Sumerians', 'The Khmer Empire'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Portuguese prince sponsored the first voyages down the coast of West Africa in the 1400s?', NULL,
        'Henry the Navigator', ARRAY['John the Navigator', 'Manuel the Fortunate', 'Pedro the Explorer', 'Afonso the Great', 'Sebastian the Desired'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1381 English uprising was led by Wat Tyler?', NULL,
        'The Peasants'' Revolt', ARRAY['The Jacquerie', 'Kett''s Rebellion', 'The Pilgrimage of Grace', 'Jack Cade''s Rebellion', 'The Barons'' War'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which warlord unified Japan and founded the shogunate that ruled from 1603 to 1868?', NULL,
        'Tokugawa Ieyasu', ARRAY['Oda Nobunaga', 'Toyotomi Hideyoshi', 'Minamoto no Yoritomo', 'Takeda Shingen', 'Ashikaga Takauji'], 400);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';
