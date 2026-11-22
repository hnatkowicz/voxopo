-- ============================================================================
-- content/sql/world_history.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/world_history.csv, the master copy of the
-- Thinking Pants category WORLD_HISTORY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In what year did World War I begin?', NULL,
        '1914', ARRAY['1912', '1916', '1918', '1920', '1910', '1939'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient civilization built the pyramids at Giza?', NULL,
        'The Egyptians', ARRAY['The Romans', 'The Greeks', 'The Mayans', 'The Aztecs', 'The Babylonians', 'The Persians'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which explorer sailed to the Americas in 1492?', NULL,
        'Christopher Columbus', ARRAY['Vasco da Gama', 'Ferdinand Magellan', 'Marco Polo', 'Amerigo Vespucci', 'Henry Hudson', 'John Cabot'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which wall divided a European city from 1961 to 1989?', NULL,
        'The Berlin Wall', ARRAY['The Great Wall', 'Hadrian''s Wall', 'The Iron Curtain', 'The Maginot Line', 'The Atlantic Wall', 'The Siegfried Line'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ship famously sank in the North Atlantic after hitting an iceberg in 1912?', NULL,
        'The Titanic', ARRAY['The Lusitania', 'The Britannic', 'The Queen Mary', 'The Olympic', 'The Carpathia', 'The Andrea Doria'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which city would you find the ancient Colosseum?', NULL,
        'Rome', ARRAY['Athens', 'Paris', 'Cairo', 'Istanbul', 'Pompeii', 'Naples'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What was the name of the ship that carried the Pilgrims to America in 1620?', NULL,
        'The Mayflower', ARRAY['The Santa Maria', 'The Nina', 'The Pinta', 'The Endeavour', 'The Beagle', 'The Speedwell'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which French military leader crowned himself Emperor in 1804?', NULL,
        'Napoleon Bonaparte', ARRAY['Louis XIV', 'Louis XVI', 'Charlemagne', 'Charles de Gaulle', 'Cardinal Richelieu', 'Louis-Philippe I'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ancient wall was built across northern China to keep out invaders from the steppes?', NULL,
        'The Great Wall', ARRAY['Hadrian''s Wall', 'The Antonine Wall', 'The Western Wall', 'The Walls of Jericho', 'The Walls of Constantinople', 'The Berlin Wall'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which South African leader was freed from prison in 1990 and became president in 1994?', NULL,
        'Nelson Mandela', ARRAY['Desmond Tutu', 'F.W. de Klerk', 'Steve Biko', 'Thabo Mbeki', 'Oliver Tambo', 'Jacob Zuma'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Roman city was buried by the eruption of Mount Vesuvius in AD 79?', NULL,
        'Pompeii', ARRAY['Naples', 'Ostia', 'Carthage', 'Syracuse', 'Capua', 'Ravenna'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'The Vikings set out from which part of Europe?', NULL,
        'Scandinavia', ARRAY['The British Isles', 'The Iberian Peninsula', 'The Balkans', 'The Low Countries', 'Central Europe', 'The Baltic states'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which disease, known as the Black Death, swept through Europe in the mid-1300s?', NULL,
        'The bubonic plague', ARRAY['Smallpox', 'Cholera', 'Typhus', 'Leprosy', 'Measles', 'Spanish flu'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which English king married six times and broke with the Roman Catholic Church?', NULL,
        'Henry VIII', ARRAY['Henry VII', 'Henry V', 'Edward VI', 'Richard III', 'James I', 'Charles I'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which French queen, wife of Louis XVI, was executed by guillotine in 1793?', NULL,
        'Marie Antoinette', ARRAY['Catherine de'' Medici', 'Marie de'' Medici', 'Anne of Austria', 'Eleanor of Aquitaine', 'Empress Joséphine', 'Marie Louise'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which young pharaoh''s nearly intact tomb did Howard Carter discover in the Valley of the Kings in 1922?', NULL,
        'Tutankhamun', ARRAY['Ramesses II', 'Akhenaten', 'Khufu', 'Thutmose III', 'Seti I', 'Amenhotep III'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient Greek city is called the birthplace of democracy?', NULL,
        'Athens', ARRAY['Sparta', 'Corinth', 'Thebes', 'Troy', 'Delphi'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which language did the ancient Romans speak?', NULL,
        'Latin', ARRAY['Greek', 'Italian', 'Aramaic', 'Etruscan', 'Hebrew'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which river was the lifeline of ancient Egypt?', NULL,
        'The Nile', ARRAY['The Tigris', 'The Euphrates', 'The Jordan', 'The Indus', 'The Congo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country gave the Statue of Liberty to the United States?', NULL,
        'France', ARRAY['Britain', 'Spain', 'Italy', 'The Netherlands', 'Germany'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient games, first held in 776 BC, honored the god Zeus?', NULL,
        'The Olympic Games', ARRAY['The Pythian Games', 'The Gladiator Games', 'The Isthmian Games', 'The Roman Games', 'The Spartan Games'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which British queen reigned for 70 years, until her death in 2022?', NULL,
        'Elizabeth II', ARRAY['Victoria', 'Mary II', 'Anne', 'Elizabeth I', 'Alexandra'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which series of medieval religious wars, starting in 1096, aimed to win Jerusalem?', NULL,
        'The Crusades', ARRAY['The Reconquista', 'The Hundred Years'' War', 'The Wars of the Roses', 'The Inquisition', 'The Thirty Years'' War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What were the stone channels that carried water across the Roman Empire to its cities called?', NULL,
        'Aqueducts', ARRAY['Viaducts', 'Canals', 'Cisterns', 'Sewers', 'Levees'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient city fell to a trick involving a giant wooden horse?', NULL,
        'Troy', ARRAY['Sparta', 'Athens', 'Carthage', 'Babylon', 'Jericho'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which dictator led Nazi Germany?', NULL,
        'Adolf Hitler', ARRAY['Benito Mussolini', 'Joseph Stalin', 'Francisco Franco', 'Kaiser Wilhelm II', 'Otto von Bismarck', 'Heinrich Himmler'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which British prime minister promised "blood, toil, tears and sweat" in 1940?', NULL,
        'Winston Churchill', ARRAY['Neville Chamberlain', 'Clement Attlee', 'David Lloyd George', 'Margaret Thatcher', 'Anthony Eden', 'Harold Macmillan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient people worshipped Zeus and built the Parthenon?', NULL,
        'The ancient Greeks', ARRAY['The Romans', 'The Egyptians', 'The Persians', 'The Phoenicians', 'The Etruscans', 'The Minoans'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ship was the flagship of the 1492 voyage to the Americas?', NULL,
        'The Santa María', ARRAY['The Niña', 'The Pinta', 'The Mayflower', 'The Victoria', 'The Golden Hind', 'The San Salvador'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What does an archaeologist do?', NULL,
        'Digs up and studies remains of the past', ARRAY['Studies the stars', 'Studies rocks and minerals', 'Studies ancient languages only', 'Restores old paintings', 'Studies fossils of dinosaurs', 'Maps the ocean floor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'In dates, what does "BC" stand for?', NULL,
        'Before Christ', ARRAY['Before Calendar', 'Before Civilization', 'Before Conquest', 'By Count', 'Before Caesar', 'Beginning of Counting'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What was a pharaoh?', NULL,
        'A king of ancient Egypt', ARRAY['An Egyptian priest', 'A Roman general', 'A Greek philosopher', 'A pyramid builder', 'An Egyptian god', 'A Persian soldier'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which period after the Middle Ages saw a "rebirth" of art and learning in Europe?', NULL,
        'The Renaissance', ARRAY['The Enlightenment', 'The Reformation', 'The Industrial Age', 'The Dark Ages', 'The Baroque', 'The Bronze Age'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What is the earliest period of human history, when tools were made of stone, called?', NULL,
        'The Stone Age', ARRAY['The Bronze Age', 'The Iron Age', 'The Ice Age', 'The Dark Ages', 'The Classical Age', 'The Rock Age'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which British prime minister was nicknamed "the Iron Lady"?', NULL,
        'Margaret Thatcher', ARRAY['Theresa May', 'Queen Elizabeth II', 'Indira Gandhi', 'Golda Meir', 'Angela Merkel', 'Queen Victoria'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which "People''s Princess" died in a Paris car crash in 1997?', NULL,
        'Princess Diana', ARRAY['Princess Grace', 'Princess Anne', 'Princess Margaret', 'Sarah Ferguson', 'Kate Middleton', 'Princess Caroline'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient Greek poet is credited with the "Odyssey"?', NULL,
        'Homer', ARRAY['Sophocles', 'Aesop', 'Plato', 'Virgil', 'Ovid', 'Herodotus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What was the deep, water-filled ditch around a castle called?', NULL,
        'A moat', ARRAY['A keep', 'A rampart', 'A drawbridge', 'A dungeon', 'A trench', 'A canal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What did Johannes Gutenberg''s invention, around 1440, make possible?', NULL,
        'Printing books with movable type', ARRAY['Telling time at sea', 'Seeing distant stars', 'Sending messages by wire', 'Making paper from wood', 'Mass-producing cloth', 'Grinding grain with wind'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What were ancient Egyptian mummies wrapped in?', NULL,
        'Strips of linen', ARRAY['Gold leaf', 'Papyrus scrolls', 'Palm leaves', 'Animal hides', 'Silk', 'Clay'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient ring of giant standing stones stands on Salisbury Plain in southern Britain?', NULL,
        'Stonehenge', ARRAY['Avebury', 'Hadrian''s Wall', 'Newgrange', 'Skara Brae', 'Carnac', 'Callanish'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which war began when Germany invaded Poland in September 1939?', NULL,
        'World War II', ARRAY['World War I', 'The Cold War', 'The Korean War', 'The Spanish Civil War', 'The Crimean War', 'The Winter War'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'In 2022, Prince Charles became king. Which number did he take?', NULL,
        'Charles III', ARRAY['Charles I', 'Charles II', 'Charles IV', 'Charles V', 'Charles VI', 'Charles VII'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Who copied books by hand in medieval monasteries?', NULL,
        'Monks', ARRAY['Knights', 'Peasants', 'Jesters', 'Merchants', 'Bishops'' guards', 'Minstrels'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient Greek mathematician''s theorem about right triangles is still taught in schools?', NULL,
        'Pythagoras', ARRAY['Euclid', 'Archimedes', 'Aristotle', 'Plato', 'Socrates', 'Thales'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which pirate flag shows a skull and crossbones?', NULL,
        'The Jolly Roger', ARRAY['The Black Spot', 'The Red Ensign', 'The Blackbeard', 'The Crossed Bones', 'The Dead Man''s Flag', 'The Union Jack'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which London fortress, home to the Crown Jewels, once held famous prisoners like Anne Boleyn?', NULL,
        'The Tower of London', ARRAY['Windsor Castle', 'Buckingham Palace', 'Westminster Abbey', 'Hampton Court', 'Edinburgh Castle', 'The Old Bailey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Who were the first people to live in Australia, for at least 50,000 years?', NULL,
        'Aboriginal Australians', ARRAY['The Maori', 'British convicts', 'Dutch sailors', 'The Inuit', 'Polynesians', 'Portuguese traders'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which legendary English outlaw of Sherwood Forest robbed from the rich to give to the poor?', NULL,
        'Robin Hood', ARRAY['William Tell', 'Rob Roy', 'Dick Turpin', 'Ned Kelly', 'Friar Tuck', 'Little John'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What simple device tells the time by the shadow of a stick?', NULL,
        'A sundial', ARRAY['An hourglass', 'A water clock', 'A compass', 'An astrolabe', 'A pendulum', 'A metronome'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which British monarch reigned for nearly 64 years, from 1837 to 1901?', NULL,
        'Queen Victoria', ARRAY['Queen Elizabeth I', 'Queen Elizabeth II', 'Queen Anne', 'Queen Mary I', 'Queen Charlotte', 'Queen Caroline'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Julius Caesar was assassinated on the Ides of March. What date is that?', NULL,
        'March 15', ARRAY['March 1', 'March 7', 'March 13', 'March 21', 'March 25', 'March 31'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which empire built the extensive road network and city of Machu Picchu in Peru?', NULL,
        'The Inca Empire', ARRAY['The Aztec Empire', 'The Maya civilization', 'The Olmec civilization', 'The Spanish Empire', 'The Toltec civilization', 'The Chimu civilization'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country was formerly known as Persia?', NULL,
        'Iran', ARRAY['Iraq', 'Turkey', 'Syria', 'Afghanistan', 'Egypt', 'Jordan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who was the famous queen of ancient Egypt who allied with Mark Antony?', NULL,
        'Cleopatra', ARRAY['Nefertiti', 'Hatshepsut', 'Isis', 'Ankhesenamun', 'Nefertari', 'Tiye'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which country did King John seal the Magna Carta in 1215?', NULL,
        'England', ARRAY['France', 'Scotland', 'Wales', 'Ireland', 'Normandy', 'Flanders'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which empire was ruled by Genghis Khan?', NULL,
        'The Mongol Empire', ARRAY['The Ottoman Empire', 'The Persian Empire', 'The Chinese Empire', 'The Russian Empire', 'The Tang Dynasty', 'The Byzantine Empire'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The storming of the Bastille in 1789 was an early event in which revolution?', NULL,
        'The French Revolution', ARRAY['The Industrial Revolution', 'The Glorious Revolution', 'The Russian Revolution', 'The American Revolution', 'The Bolshevik Revolution', 'The Haitian Revolution'], 200, 'Only seven prisoners were inside the Bastille when it fell.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which event in 1929 triggered a decade-long global economic depression?', NULL,
        'The Wall Street Crash', ARRAY['World War I', 'The Dust Bowl', 'The oil crisis', 'The gold rush', 'The banking panic of 1907', 'The Treaty of Versailles'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which explorer is credited with leading the first expedition to circumnavigate the globe, though he died before completing it?', NULL,
        'Ferdinand Magellan', ARRAY['Christopher Columbus', 'Vasco da Gama', 'Francis Drake', 'James Cook', 'Marco Polo', 'Hernán Cortés'], 200, 'Magellan didn''t finish the voyage: he was killed in the Philippines in 1521.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Indian leader is famous for leading a nonviolent independence movement against British rule?', NULL,
        'Mahatma Gandhi', ARRAY['Jawaharlal Nehru', 'Subhas Chandra Bose', 'Muhammad Ali Jinnah', 'Bhagat Singh', 'Sardar Patel', 'Rabindranath Tagore'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1917 uprising ended the rule of the tsars and brought the Bolsheviks to power?', NULL,
        'The Russian Revolution', ARRAY['The French Revolution', 'The Decembrist Revolt', 'The Paris Commune', 'The Prague Spring', 'The Hungarian Revolution', 'The Cultural Revolution'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Carthaginian general famously crossed the Alps with an army that included war elephants?', NULL,
        'Hannibal', ARRAY['Hamilcar Barca', 'Hasdrubal', 'Scipio Africanus', 'Pyrrhus of Epirus', 'Julius Caesar', 'Alexander the Great'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Greek city-state''s King Leonidas led 300 soldiers at the Battle of Thermopylae?', NULL,
        'Sparta', ARRAY['Athens', 'Corinth', 'Thebes', 'Argos', 'Megara', 'Macedon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which empire built its capital, Tenochtitlan, on a lake where Mexico City stands today?', NULL,
        'The Aztec Empire', ARRAY['The Maya civilization', 'The Inca Empire', 'The Olmec civilization', 'The Toltec Empire', 'The Zapotec civilization', 'The Mixtec civilization'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Who proclaimed the People''s Republic of China in 1949?', NULL,
        'Mao Zedong', ARRAY['Chiang Kai-shek', 'Sun Yat-sen', 'Deng Xiaoping', 'Zhou Enlai', 'Puyi', 'Liu Shaoqi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'What was the ancient network of trade routes linking China with the Mediterranean called?', NULL,
        'The Silk Road', ARRAY['The Spice Route', 'The Amber Road', 'The Incense Route', 'The Royal Road', 'The Tea Horse Road', 'The Grand Trunk Road'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which king of Macedon built an empire stretching from Greece to India before dying at 32?', NULL,
        'Alexander the Great', ARRAY['Philip II of Macedon', 'Darius III', 'Xerxes I', 'Cyrus the Great', 'Pyrrhus of Epirus', 'Ptolemy I'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which English queen''s navy defeated the Spanish Armada in 1588?', NULL,
        'Elizabeth I', ARRAY['Mary I', 'Queen Anne', 'Mary, Queen of Scots', 'Lady Jane Grey', 'Catherine of Aragon', 'Mary II'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which South American country is named after the independence leader Simón Bolívar?', NULL,
        'Bolivia', ARRAY['Venezuela', 'Colombia', 'Ecuador', 'Peru', 'Paraguay', 'Uruguay'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Soviet leader introduced the reforms known as glasnost and perestroika?', NULL,
        'Mikhail Gorbachev', ARRAY['Boris Yeltsin', 'Leonid Brezhnev', 'Nikita Khrushchev', 'Yuri Andropov', 'Konstantin Chernenko', 'Joseph Stalin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which gladiator led a huge slave revolt against Rome in 73 BC?', NULL,
        'Spartacus', ARRAY['Maximus', 'Commodus', 'Brutus', 'Hannibal', 'Vercingetorix'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Greek philosopher was Plato''s teacher?', NULL,
        'Socrates', ARRAY['Aristotle', 'Pythagoras', 'Homer', 'Archimedes', 'Diogenes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the medieval system of lords, knights and serfs bound by land and loyalty?', NULL,
        'Feudalism', ARRAY['Communism', 'Mercantilism', 'Capitalism', 'Monarchy', 'Tribalism'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which civilization built the great pyramids at Chichen Itza in Mexico?', NULL,
        'The Maya', ARRAY['The Aztecs', 'The Inca', 'The Olmecs', 'The Toltecs', 'The Egyptians'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which country did the Industrial Revolution begin, in the 1700s?', NULL,
        'Great Britain', ARRAY['Germany', 'France', 'The United States', 'Belgium', 'Japan'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Venetian merchant''s book about his travels in China in the late 1200s amazed Europe?', NULL,
        'Marco Polo', ARRAY['Ibn Battuta', 'Niccolo Machiavelli', 'Giovanni Caboto', 'Christopher Columbus', 'Zheng He'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Italian explorer''s first name was given to the Americas?', NULL,
        'Amerigo Vespucci', ARRAY['Giovanni da Verrazzano', 'John Cabot', 'Marco Polo', 'Americo Columbo', 'Amadeo Ferrara'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Scottish missionary and explorer was famously found by Henry Morton Stanley in 1871?', NULL,
        'David Livingstone', ARRAY['Mungo Park', 'Richard Burton', 'John Speke', 'Cecil Rhodes', 'Samuel Baker'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese philosopher''s sayings were collected in the Analects?', NULL,
        'Confucius', ARRAY['Laozi', 'Sun Tzu', 'Mencius', 'Buddha', 'Zhuangzi'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'At which 1815 battle in present-day Belgium was Napoleon finally defeated?', NULL,
        'Waterloo', ARRAY['Austerlitz', 'Leipzig', 'Borodino', 'Ypres', 'Marengo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What was South Africa''s system of racial segregation, from 1948 to the early 1990s, called?', NULL,
        'Apartheid', ARRAY['Jim Crow', 'Segregation Act', 'The Pass System', 'Bantustan', 'Colonialism'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which Beijing square were pro-democracy protests crushed in 1989?', NULL,
        'Tiananmen Square', ARRAY['Red Square', 'The Forbidden City', 'Wenceslas Square', 'Mao Square', 'People''s Park'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country was called the "Jewel in the Crown" of the British Empire?', NULL,
        'India', ARRAY['Australia', 'Canada', 'Egypt', 'South Africa', 'Jamaica'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Norse explorer reached North America around the year 1000?', NULL,
        'Leif Erikson', ARRAY['Erik the Red', 'Ragnar Lothbrok', 'Harald Hardrada', 'Rollo', 'Olaf Tryggvason'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the thousands of life-size clay soldiers found near Xi''an, China, in 1974?', NULL,
        'The Terracotta Army', ARRAY['The Clay Legion', 'The Jade Guard', 'The Stone Warriors', 'The Bronze Army', 'The Silent Battalion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Russian tsar founded St. Petersburg in 1703?', NULL,
        'Peter the Great', ARRAY['Ivan the Terrible', 'Catherine the Great', 'Nicholas II', 'Alexander I', 'Ivan III'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'What name is given to the decades-long rivalry between the US and the Soviet Union after 1945?', NULL,
        'The Cold War', ARRAY['The Iron War', 'The Long Peace', 'The Silent War', 'The Arms War', 'The Red Scare'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Norman duke won the Battle of Hastings in 1066?', NULL,
        'William the Conqueror', ARRAY['Richard the Lionheart', 'Harold Godwinson', 'Henry II', 'Rollo', 'Edward the Confessor'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which revolutionary took power in Cuba in 1959 and ruled for nearly 50 years?', NULL,
        'Fidel Castro', ARRAY['Che Guevara', 'Fulgencio Batista', 'Raul Castro', 'Hugo Chavez', 'Daniel Ortega'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Soviet dictator ruled from the 1920s until his death in 1953?', NULL,
        'Joseph Stalin', ARRAY['Vladimir Lenin', 'Nikita Khrushchev', 'Leon Trotsky', 'Leonid Brezhnev', 'Mikhail Gorbachev', 'Boris Yeltsin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which teenage French heroine led an army against the English and was burned at the stake in 1431?', NULL,
        'Joan of Arc', ARRAY['Marie Curie', 'Catherine de'' Medici', 'Eleanor of Aquitaine', 'Marie Antoinette', 'Charlotte Corday', 'Josephine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What were the long, narrow wooden ships of the Vikings called?', NULL,
        'Longships', ARRAY['Galleons', 'Triremes', 'Junks', 'Caravels', 'Clippers', 'Galleys'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Who led the Bolsheviks to power in Russia in 1917?', NULL,
        'Vladimir Lenin', ARRAY['Joseph Stalin', 'Leon Trotsky', 'Nicholas II', 'Karl Marx', 'Grigori Rasputin', 'Alexander Kerensky'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which French king, called "the Sun King," built the palace of Versailles?', NULL,
        'Louis XIV', ARRAY['Louis XVI', 'Charlemagne', 'Napoleon III', 'Henry IV', 'Louis IX', 'Francis I'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What was the name for the border dividing communist Eastern Europe from the West after 1945?', NULL,
        'The Iron Curtain', ARRAY['The Berlin Line', 'The Red Wall', 'The Steel Divide', 'The Cold Front', 'The Eastern Bloc', 'The Maginot Line'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Greek philosopher, a student of Plato, tutored the young prince of Macedon?', NULL,
        'Aristotle', ARRAY['Socrates', 'Pythagoras', 'Diogenes', 'Euclid', 'Archimedes', 'Herodotus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which pirate, whose real name was Edward Teach, wove lit fuses into his beard?', NULL,
        'Blackbeard', ARRAY['Captain Kidd', 'Calico Jack', 'Henry Morgan', 'Bartholomew Roberts', 'Anne Bonny', 'Long John Silver'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Roman emperor is said to have fiddled while his capital burned in AD 64?', NULL,
        'Nero', ARRAY['Caligula', 'Augustus', 'Tiberius', 'Claudius', 'Commodus', 'Hadrian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which leader of the Huns, "the Scourge of God," terrorized the Roman Empire in the 400s?', NULL,
        'Attila', ARRAY['Genghis Khan', 'Alaric', 'Kublai Khan', 'Tamerlane', 'Odoacer', 'Charlemagne'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which self-governing country was the first to give women the vote in national elections, in 1893?', NULL,
        'New Zealand', ARRAY['United States', 'United Kingdom', 'Australia', 'Finland', 'Norway', 'Canada'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which naval battle in 1805 saw British Admiral Horatio Nelson defeat a combined French and Spanish fleet?', NULL,
        'The Battle of Trafalgar', ARRAY['The Battle of the Nile', 'The Battle of Jutland', 'The Battle of Waterloo', 'The Battle of Copenhagen', 'The Battle of Leyte Gulf', 'The Battle of Midway'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which of the Seven Wonders of the Ancient World stood on the island of Pharos in Egypt?', NULL,
        'The Lighthouse of Alexandria', ARRAY['The Hanging Gardens', 'The Colossus of Rhodes', 'The Great Pyramid', 'The Temple of Artemis', 'The Statue of Zeus', 'The Mausoleum at Halicarnassus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which dynasty was the last imperial dynasty of China?', NULL,
        'The Qing Dynasty', ARRAY['The Ming Dynasty', 'The Tang Dynasty', 'The Han Dynasty', 'The Song Dynasty', 'The Yuan Dynasty', 'The Zhou Dynasty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The Rosetta Stone, key to deciphering Egyptian hieroglyphs, is inscribed in how many different scripts?', NULL,
        'Three', ARRAY['Two', 'Four', 'Five', 'One', 'Six', 'Seven'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient Mesopotamian king is credited with one of the earliest known written law codes?', NULL,
        'Hammurabi', ARRAY['Sargon of Akkad', 'Nebuchadnezzar II', 'Ashurbanipal', 'Gilgamesh', 'Cyrus the Great', 'Darius I'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1453 event is often cited as marking the end of the Byzantine Empire?', NULL,
        'The Fall of Constantinople', ARRAY['The Fall of Rome', 'The Sack of Jerusalem', 'The Siege of Vienna', 'The Fourth Crusade', 'The Fall of Antioch', 'The Battle of Manzikert'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Who became the first Roman emperor, in 27 BC?', NULL,
        'Augustus', ARRAY['Julius Caesar', 'Tiberius', 'Nero', 'Caligula', 'Constantine', 'Marcus Aurelius'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which grandson of Genghis Khan founded China''s Yuan dynasty?', NULL,
        'Kublai Khan', ARRAY['Ögedei Khan', 'Batu Khan', 'Hulagu Khan', 'Möngke Khan', 'Tamerlane', 'Babur'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Spanish conquistador captured the emperor Atahualpa in Peru in 1532?', NULL,
        'Francisco Pizarro', ARRAY['Hernán Cortés', 'Hernando de Soto', 'Vasco Núñez de Balboa', 'Diego de Almagro', 'Francisco de Orellana', 'Francisco Vázquez de Coronado'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ancient city was said to be home to the Hanging Gardens, one of the Seven Wonders?', NULL,
        'Babylon', ARRAY['Ur', 'Persepolis', 'Carthage', 'Memphis', 'Troy', 'Jericho'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Roman emperor ordered a wall built across northern Britain, starting in AD 122?', NULL,
        'Hadrian', ARRAY['Trajan', 'Antoninus Pius', 'Claudius', 'Septimius Severus', 'Nero', 'Vespasian'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Mughal emperor built the Taj Mahal as a tomb for his wife?', NULL,
        'Shah Jahan', ARRAY['Akbar', 'Aurangzeb', 'Babur', 'Humayun', 'Jahangir', 'Ashoka'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which ruler of the Mali Empire made a famously lavish pilgrimage to Mecca in 1324?', NULL,
        'Mansa Musa', ARRAY['Sundiata Keita', 'Sonni Ali', 'Askia Muhammad', 'Menelik II', 'Ezana of Axum', 'Shaka'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Zulu king built a powerful kingdom in southern Africa in the early 1800s?', NULL,
        'Shaka', ARRAY['Moshoeshoe', 'Mzilikazi', 'Lobengula', 'Sekhukhune', 'Menelik II', 'Mansa Musa'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Whose 1768-71 voyage on HMS Endeavour charted the east coast of Australia?', NULL,
        'James Cook', ARRAY['Abel Tasman', 'Matthew Flinders', 'William Bligh', 'William Dampier', 'George Vancouver', 'Joseph Banks'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which code of honor did Japan''s samurai warriors follow?', NULL,
        'Bushido', ARRAY['Kamikaze', 'Shogun', 'Zen', 'Ninjutsu', 'Seppuku'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country''s Vikings were the first Europeans to settle Iceland?', NULL,
        'Norway', ARRAY['Denmark', 'Sweden', 'Scotland', 'Ireland', 'Finland'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'On which ship did Charles Darwin sail around the world from 1831 to 1836?', NULL,
        'HMS Beagle', ARRAY['HMS Endeavour', 'HMS Bounty', 'HMS Victory', 'HMS Discovery', 'HMS Challenger'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Florentine banking family were patrons of Michelangelo and Botticelli?', NULL,
        'The Medici', ARRAY['The Borgia', 'The Sforza', 'The Habsburgs', 'The Bourbons', 'The Este'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient people of Mesopotamia invented cuneiform, one of the first writing systems?', NULL,
        'The Sumerians', ARRAY['The Babylonians', 'The Assyrians', 'The Phoenicians', 'The Hittites', 'The Egyptians'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Roman emperor made Christianity legal in 313 and founded a city on the Bosporus?', NULL,
        'Constantine', ARRAY['Nero', 'Augustus', 'Trajan', 'Diocletian', 'Marcus Aurelius'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which country''s 1910 revolution overthrew the dictator Porfirio Diaz?', NULL,
        'Mexico', ARRAY['Cuba', 'Spain', 'Argentina', 'Chile', 'Colombia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1857 uprising against the British East India Company began among Indian soldiers?', NULL,
        'The Indian Rebellion', ARRAY['The Boxer Rebellion', 'The Salt March', 'The Taiping Rebellion', 'The Boer War', 'The Opium War'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Italian patriot led the "Redshirts" in the fight to unite Italy?', NULL,
        'Giuseppe Garibaldi', ARRAY['Giuseppe Mazzini', 'Camillo Cavour', 'Benito Mussolini', 'Victor Emmanuel II', 'Niccolo Machiavelli'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese dynasty, ruling from 1368, built the Forbidden City?', NULL,
        'The Ming dynasty', ARRAY['The Han dynasty', 'The Tang dynasty', 'The Song dynasty', 'The Yuan dynasty', 'The Zhou dynasty'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which was the largest empire in history by land area?', NULL,
        'The British Empire', ARRAY['The Mongol Empire', 'The Roman Empire', 'The Russian Empire', 'The Spanish Empire', 'The Ottoman Empire'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Who became independent India''s first prime minister, in 1947?', NULL,
        'Jawaharlal Nehru', ARRAY['Mahatma Gandhi', 'Indira Gandhi', 'Muhammad Ali Jinnah', 'Sardar Patel', 'Rajiv Gandhi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'An Ottoman army was turned back in 1683 at the gates of which European capital?', NULL,
        'Vienna', ARRAY['Budapest', 'Prague', 'Warsaw', 'Belgrade', 'Venice'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Ethiopian emperor pleaded for help at the League of Nations after Italy invaded his country in 1935?', NULL,
        'Haile Selassie', ARRAY['Menelik II', 'Tewodros II', 'Yohannes IV', 'Mengistu Haile Mariam', 'Zara Yaqob'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which ancient civilization built planned cities at Harappa and Mohenjo-daro?', NULL,
        'The Indus Valley Civilization', ARRAY['The Mauryan Empire', 'The Gupta Empire', 'The Vedic Civilization', 'The Sumerians', 'The Khmer Empire'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Portuguese prince sponsored the first voyages down the coast of West Africa in the 1400s?', NULL,
        'Henry the Navigator', ARRAY['John the Navigator', 'Manuel the Fortunate', 'Pedro the Explorer', 'Afonso the Great', 'Sebastian the Desired'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1381 English uprising was led by Wat Tyler?', NULL,
        'The Peasants'' Revolt', ARRAY['The Jacquerie', 'Kett''s Rebellion', 'The Pilgrimage of Grace', 'Jack Cade''s Rebellion', 'The Barons'' War'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Whose voyage around Africa, in 1497-98, opened the first sea route from Europe to Asia''s spice coast?', NULL,
        'Vasco da Gama', ARRAY['Bartolomeu Dias', 'Ferdinand Magellan', 'Christopher Columbus', 'Prince Henry the Navigator', 'John Cabot', 'Amerigo Vespucci'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'In which country was the Nazi dictator born, in 1889?', NULL,
        'Austria', ARRAY['Germany', 'Switzerland', 'Hungary', 'Czechoslovakia', 'Poland', 'Belgium'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Asian country was called Siam until 1939?', NULL,
        'Thailand', ARRAY['Cambodia', 'Myanmar', 'Laos', 'Vietnam', 'Malaysia', 'Indonesia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which English king, "the Lionheart," fought Saladin in the Holy Land?', NULL,
        'Richard I', ARRAY['Henry II', 'John', 'Edward I', 'Henry V', 'William II', 'Edward III'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What does "AD," as in AD 79, stand for?', NULL,
        'Anno Domini', ARRAY['After Death', 'Ante Diem', 'Anno Datum', 'Aetas Dei', 'Annus Decimus', 'Ad Dominum'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Egyptian queen is famous for a painted limestone bust now in a Berlin museum?', NULL,
        'Nefertiti', ARRAY['Cleopatra', 'Hatshepsut', 'Nefertari', 'Isis', 'Ankhesenamun', 'Tiye'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What was the heavy iron or wooden grille that slammed down to block a castle gate called?', NULL,
        'A portcullis', ARRAY['A drawbridge', 'A battlement', 'A barbican', 'A parapet', 'A turret', 'A rampart'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Andean city was the capital of the empire that built Machu Picchu?', NULL,
        'Cusco', ARRAY['Lima', 'Quito', 'La Paz', 'Machu Picchu', 'Bogotá', 'Cajamarca'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient Greek physician, the "Father of Medicine," gave his name to the oath doctors take?', NULL,
        'Hippocrates', ARRAY['Galen', 'Asclepius', 'Aristotle', 'Herodotus', 'Archimedes', 'Pythagoras'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'On which Mediterranean island was the future Emperor of the French born, in 1769?', NULL,
        'Corsica', ARRAY['Sicily', 'Sardinia', 'Elba', 'Malta', 'Crete', 'Cyprus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which German-born empress of Russia, who ruled from 1762 to 1796, is known as "the Great"?', NULL,
        'Catherine', ARRAY['Elizabeth', 'Anna', 'Alexandra', 'Maria Theresa', 'Sophia', 'Olga'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What writing material did people of the ancient Nile make from a river reed, giving us the word "paper"?', NULL,
        'Papyrus', ARRAY['Parchment', 'Vellum', 'Bamboo', 'Clay tablets', 'Rice paper', 'Birch bark'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which name did Britain''s royal family adopt in 1917, from a castle, to sound less German?', NULL,
        'Windsor', ARRAY['Tudor', 'Stuart', 'York', 'Lancaster', 'Hanover', 'Balmoral'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which metal was mixed with tin to make bronze, giving the Bronze Age its name?', NULL,
        'Copper', ARRAY['Iron', 'Silver', 'Lead', 'Zinc', 'Gold', 'Nickel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'In which present-day country is Chernobyl, site of the 1986 nuclear disaster?', NULL,
        'Ukraine', ARRAY['Russia', 'Belarus', 'Kazakhstan', 'Lithuania', 'Poland', 'Georgia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which island nation was called Ceylon until 1972?', NULL,
        'Sri Lanka', ARRAY['Madagascar', 'Taiwan', 'Mauritius', 'The Maldives', 'Singapore', 'Borneo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient Chinese general wrote "The Art of War"?', NULL,
        'Sun Tzu', ARRAY['Confucius', 'Lao Tzu', 'Cao Cao', 'Zhuge Liang', 'Mencius', 'Qin Shi Huang'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'The 1919 Treaty of Versailles was signed in which famous room of the palace?', NULL,
        'The Hall of Mirrors', ARRAY['The Hall of Battles', 'The Royal Chapel', 'The Throne Room', 'The Salon of Peace', 'The Queen''s Bedchamber', 'The Royal Opera'], 400, 'It was the same room where the German Empire had been proclaimed in 1871.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Byzantine Emperor is famous for codifying Roman law in the 6th century?', NULL,
        'Justinian I', ARRAY['Constantine the Great', 'Theodosius I', 'Basil II', 'Heraclius', 'Diocletian', 'Augustus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which peace treaty in 1648 ended the Thirty Years'' War in Europe?', NULL,
        'The Peace of Westphalia', ARRAY['The Treaty of Utrecht', 'The Treaty of Tordesillas', 'The Congress of Vienna', 'The Treaty of Augsburg', 'The Treaty of Westminster', 'The Edict of Nantes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WWII_HISTORY_FOLD_1', NULL,
        'What was the code name for the 1940 evacuation of Allied troops from the beaches of Dunkirk?', NULL,
        'Operation Dynamo', ARRAY['Operation Overlord', 'Operation Sea Lion', 'Operation Torch', 'Operation Market Garden', 'Operation Cobra', 'Operation Husky'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which African nation kept its independence by defeating an Italian invasion at the Battle of Adwa in 1896?', NULL,
        'Ethiopia', ARRAY['Eritrea', 'Somalia', 'Libya', 'Sudan', 'Egypt', 'Kenya'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which 1868 event returned power from the shogun to Japan''s emperor?', NULL,
        'The Meiji Restoration', ARRAY['The Taika Reform', 'The Kenmu Restoration', 'The Tokugawa Shogunate', 'The Sengoku Period', 'The Taisho Democracy', 'The Edo Period'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which female pharaoh ruled Egypt in the 15th century BC and was often shown wearing a false beard?', NULL,
        'Hatshepsut', ARRAY['Nefertiti', 'Nefertari', 'Tiye', 'Ankhesenamun', 'Arsinoe II', 'Ahhotep'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which empire built the temple complex of Angkor Wat?', NULL,
        'The Khmer Empire', ARRAY['The Champa Kingdom', 'The Srivijaya Empire', 'The Majapahit Empire', 'The Pagan Kingdom', 'The Ayutthaya Kingdom', 'The Đại Việt'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Persian king founded the Achaemenid Empire and let exiled Jews return to Jerusalem?', NULL,
        'Cyrus the Great', ARRAY['Darius I', 'Xerxes I', 'Cambyses II', 'Artaxerxes I', 'Nebuchadnezzar II', 'Shapur I'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which 1494 treaty divided newly found lands outside Europe between Spain and Portugal?', NULL,
        'The Treaty of Tordesillas', ARRAY['The Treaty of Zaragoza', 'The Treaty of Utrecht', 'The Treaty of Paris', 'The Treaty of Madrid', 'The Treaty of Lisbon', 'The Treaty of Windsor'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'Which Ottoman sultan, called "the Magnificent" in Europe, ruled at the empire''s height in the 1500s?', NULL,
        'Suleiman I', ARRAY['Mehmed II', 'Selim I', 'Osman I', 'Murad I', 'Bayezid I', 'Abdul Hamid II'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_1', NULL,
        'The ruins of ancient Carthage lie in which modern country?', NULL,
        'Tunisia', ARRAY['Libya', 'Algeria', 'Morocco', 'Egypt', 'Lebanon', 'Malta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Mauryan emperor of India embraced Buddhism after the bloody Kalinga War?', NULL,
        'Ashoka', ARRAY['Chandragupta Maurya', 'Bindusara', 'Akbar', 'Samudragupta', 'Harsha', 'Kanishka'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'In which 1905 naval battle did Japan''s fleet destroy Russia''s Baltic Fleet?', NULL,
        'The Battle of Tsushima', ARRAY['The Battle of Port Arthur', 'The Battle of the Yellow Sea', 'The Battle of Mukden', 'The Battle of Jutland', 'The Battle of Manila Bay', 'The Battle of Navarino'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Chinese admiral led giant treasure fleets across the Indian Ocean in the early 1400s?', NULL,
        'Zheng He', ARRAY['Kublai Khan', 'Sun Yat-sen', 'Marco Polo', 'Chiang Kai-shek', 'Xuanzang'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which former enslaved man led the Haitian Revolution, the only slave uprising to found a nation?', NULL,
        'Toussaint Louverture', ARRAY['Simon Bolivar', 'Jean-Jacques Dessalines', 'Nat Turner', 'Frederick Douglass', 'Jose de San Martin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Egyptian president seized the Suez Canal in 1956?', NULL,
        'Gamal Abdel Nasser', ARRAY['Anwar Sadat', 'Hosni Mubarak', 'King Farouk', 'Muammar Gaddafi', 'Mohamed Naguib'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1884-85 conference split Africa among European powers?', NULL,
        'The Berlin Conference', ARRAY['The Congress of Vienna', 'The Paris Peace Conference', 'The Hague Conference', 'The Treaty of Utrecht', 'The Brussels Conference'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1850-64 Chinese uprising, led by a man who claimed to be Jesus''s younger brother, cost millions of lives?', NULL,
        'The Taiping Rebellion', ARRAY['The Boxer Rebellion', 'The Opium War', 'The White Lotus Rebellion', 'The Xinhai Revolution', 'The Red Turban Rebellion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which 1842 treaty ended the First Opium War and handed Hong Kong to Britain?', NULL,
        'The Treaty of Nanking', ARRAY['The Treaty of Tianjin', 'The Treaty of Shimonoseki', 'The Treaty of Beijing', 'The Treaty of Whampoa', 'The Treaty of Aigun'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which Byzantine empress, a former actress, urged her husband to stand firm during the Nika riots of 532?', NULL,
        'Theodora', ARRAY['Irene', 'Zoe', 'Helena', 'Anna Komnene', 'Galla Placidia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'ORIGINAL', NULL,
        'Which warlord unified Japan and founded the shogunate that ruled from 1603 to 1868?', NULL,
        'Tokugawa Ieyasu', ARRAY['Oda Nobunaga', 'Toyotomi Hideyoshi', 'Minamoto no Yoritomo', 'Takeda Shingen', 'Ashikaga Takauji'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'To which remote South Atlantic island was the defeated Emperor of the French exiled until his death in 1821?', NULL,
        'Saint Helena', ARRAY['Elba', 'Corsica', 'Ascension Island', 'The Falklands', 'Madeira', 'Tristan da Cunha'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which silver Roman coin gives its name to the dinar, still used today?', NULL,
        'The denarius', ARRAY['The sestertius', 'The aureus', 'The drachma', 'The obol', 'The solidus', 'The as'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Roman town, named after a famous demigod, was buried by Vesuvius along with its better-known neighbor?', NULL,
        'Herculaneum', ARRAY['Ostia', 'Stabiae', 'Paestum', 'Neapolis', 'Capua', 'Oplontis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Aztec emperor, whose name lives on in a traveler''s upset stomach, was taken captive by Spanish conquistadors?', NULL,
        'Montezuma', ARRAY['Cuauhtémoc', 'Itzcoatl', 'Tizoc', 'Ahuitzotl', 'Nezahualcoyotl', 'Atahualpa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Viking king of England and Denmark is said to have shown his courtiers that he could not stop the tide?', NULL,
        'Cnut', ARRAY['Harald Hardrada', 'Alfred the Great', 'Eric Bloodaxe', 'Sweyn Forkbeard', 'Ivar the Boneless', 'Harold Godwinson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Frankish king, whose name means "Charles the Great," was crowned emperor on Christmas Day in 800?', NULL,
        'Charlemagne', ARRAY['Charles Martel', 'Pepin the Short', 'Clovis', 'Otto the Great', 'Louis the Pious', 'Charles V'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which German monk, whose name was later given to a famous American civil rights leader, began the Reformation in 1517?', NULL,
        'Martin Luther', ARRAY['John Calvin', 'Jan Hus', 'Ulrich Zwingli', 'Thomas More', 'Erasmus', 'Huldrych Bucer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'In the 1630s, the Dutch went wild in a famous "mania" over which flower?', NULL,
        'Tulips', ARRAY['Roses', 'Orchids', 'Daffodils', 'Lilies', 'Carnations', 'Peonies'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'On which British ship did sailors mutiny against Captain Bligh in 1789, a name later given to a coconut candy bar?', NULL,
        'HMS Bounty', ARRAY['HMS Victory', 'HMS Beagle', 'HMS Endeavour', 'HMS Pandora', 'HMS Resolution', 'HMS Mars'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Indonesian volcano erupted in 1883 with a blast heard nearly 3,000 miles away?', NULL,
        'Krakatoa', ARRAY['Tambora', 'Pinatubo', 'Mount Merapi', 'Mount Agung', 'Mount Pelée', 'Vesuvius'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Who was the last tsar of Russia, father of the Grand Duchess Anastasia?', NULL,
        'Nicholas II', ARRAY['Alexander III', 'Peter III', 'Ivan the Terrible', 'Alexander II', 'Paul I', 'Nicholas I'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which mystic monk, "Russia''s greatest love machine" in a 1978 disco hit, gained power over the last tsar''s family?', NULL,
        'Grigori Rasputin', ARRAY['Leon Trotsky', 'Ivan the Terrible', 'Sergei Witte', 'Felix Yusupov', 'Pyotr Stolypin', 'Vladimir Lenin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which 1899-1901 Chinese uprising against foreigners was named for its members'' martial arts?', NULL,
        'The Boxer Rebellion', ARRAY['The Taiping Rebellion', 'The Kung Fu Revolt', 'The Dragon Uprising', 'The Red Turban Rebellion', 'The Opium Rising', 'The Fists of Justice War'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which empress dowager controlled the imperial court in Beijing from behind the throne for nearly 50 years, until 1908?', NULL,
        'Cixi', ARRAY['Wu Zetian', 'Soong Mei-ling', 'Empress Lü', 'Longyu', 'Jiang Qing', 'Empress Zhangsun'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Who became emperor at age two in 1908, in Beijing, and was the subject of the film "The Last Emperor"?', NULL,
        'Puyi', ARRAY['Guangxu', 'Tongzhi', 'Kangxi', 'Qianlong', 'Yuan Shikai', 'Sun Yat-sen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which city of the Mali Empire, once a great center of learning, is now a byword for "the middle of nowhere"?', NULL,
        'Timbuktu', ARRAY['Kathmandu', 'Ouagadougou', 'Zanzibar', 'Marrakesh', 'Djenné', 'Gao'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which modern African country took its name from a medieval city of stone towers and walls?', NULL,
        'Zimbabwe', ARRAY['Ghana', 'Mali', 'Benin', 'Ethiopia', 'Botswana', 'Zambia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which ancient sea-trading people, named for a costly purple dye, spread an alphabet that led to ours?', NULL,
        'The Phoenicians', ARRAY['The Minoans', 'The Etruscans', 'The Sumerians', 'The Hittites', 'The Carthaginians', 'The Babylonians'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which king''s enormous tomb, a wonder of the ancient world, gave us the word "mausoleum"?', NULL,
        'Mausolus', ARRAY['Artemisia', 'Ramesses II', 'Darius', 'Croesus', 'Midas', 'Xerxes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Greek writer of the 400s BC is called "the Father of History"?', NULL,
        'Herodotus', ARRAY['Thucydides', 'Homer', 'Plutarch', 'Xenophon', 'Polybius', 'Sophocles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which 490 BC battle, where the Greeks beat the Persians, is the namesake of a 26.2-mile race?', NULL,
        'Marathon', ARRAY['Thermopylae', 'Salamis', 'Plataea', 'Olympia', 'Corinth', 'Delphi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Spanish queen paid for the 1492 voyage west that reached the Americas?', NULL,
        'Isabella I', ARRAY['Catherine of Aragon', 'Juana the Mad', 'Elizabeth I', 'Mary I', 'Eleanor of Castile', 'Philippa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'What is the 1688-89 overthrow of King James II, with almost no fighting, called?', NULL,
        'The Glorious Revolution', ARRAY['The English Civil War', 'The Wars of the Roses', 'The Restoration', 'The Bloodless Coup', 'The Peasants'' Revolt', 'The Gunpowder Plot'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which general ruled Spain as dictator from 1939 until his death in 1975?', NULL,
        'Francisco Franco', ARRAY['Antonio Salazar', 'Miguel Primo de Rivera', 'Benito Mussolini', 'Juan Perón', 'Augusto Pinochet', 'Alfonso XIII'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Argentine first lady, "Evita," inspired a Broadway musical?', NULL,
        'Eva Perón', ARRAY['Isabel Perón', 'Frida Kahlo', 'Cristina Kirchner', 'Imelda Marcos', 'Carlota', 'Rigoberta Menchú'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Prussian "Iron Chancellor," namesake of North Dakota''s capital, unified Germany in 1871?', NULL,
        'Otto von Bismarck', ARRAY['Kaiser Wilhelm I', 'Frederick the Great', 'Helmuth von Moltke', 'Klemens von Metternich', 'Paul von Hindenburg', 'Friedrich Ebert'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which Roman emperor is said to have planned to make his favorite horse a consul?', NULL,
        'Caligula', ARRAY['Nero', 'Commodus', 'Tiberius', 'Domitian', 'Elagabalus', 'Claudius'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_HISTORY', 'WORLD_HISTORY_BATCH_2', NULL,
        'Which 14th-century Moroccan traveler journeyed even farther than a famous Venetian, across Africa and Asia?', NULL,
        'Ibn Battuta', ARRAY['Ibn Khaldun', 'Zheng He', 'Mansa Musa', 'Al-Idrisi', 'Leo Africanus', 'Saladin'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_HISTORY';
