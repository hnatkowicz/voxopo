-- ============================================================================
-- content/sql/mythology.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/mythology.csv, the master copy of the
-- Thinking Pants category MYTHOLOGY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MYTHOLOGY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the god of the sea?', NULL,
        'Poseidon', ARRAY['Zeus', 'Hades', 'Apollo', 'Ares', 'Hermes', 'Hephaestus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Roman mythology, who is the king of the gods?', NULL,
        'Jupiter', ARRAY['Mars', 'Neptune', 'Mercury', 'Vulcan', 'Pluto', 'Apollo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Egyptian mythology, which jackal-headed god watched over embalming and the dead?', NULL,
        'Anubis', ARRAY['Osiris', 'Horus', 'Set', 'Thoth', 'Sobek', 'Khnum'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the goddess of love and beauty?', NULL,
        'Aphrodite', ARRAY['Athena', 'Artemis', 'Hera', 'Demeter', 'Hestia', 'Persephone'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, who is the god of thunder?', NULL,
        'Thor', ARRAY['Odin', 'Loki', 'Baldur', 'Tyr', 'Heimdall', 'Freyr'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who flew too close to the sun with wings made of feathers and wax?', NULL,
        'Icarus', ARRAY['Daedalus', 'Phaethon', 'Bellerophon', 'Prometheus', 'Perseus', 'Orpheus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek mythology, who is the god of the underworld?', NULL,
        'Hades', ARRAY['Zeus', 'Ares', 'Hermes', 'Thanatos', 'Cronus', 'Hephaestus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of wisdom sprang fully grown from Zeus''s head?', NULL,
        'Athena', ARRAY['Hera', 'Artemis', 'Aphrodite', 'Demeter', 'Hestia', 'Nike'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who is the Roman god of war?', NULL,
        'Mars', ARRAY['Jupiter', 'Neptune', 'Mercury', 'Vulcan', 'Saturn', 'Apollo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Homer''s "Odyssey," what kind of one-eyed giant does Odysseus blind?', NULL,
        'A Cyclops', ARRAY['A Titan', 'A Minotaur', 'A centaur', 'A satyr', 'A Gorgon', 'A harpy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which creature, half man and half bull, lived in the Labyrinth on Crete?', NULL,
        'The Minotaur', ARRAY['The Centaur', 'The Chimera', 'The Hydra', 'The Satyr', 'The Griffin', 'The Manticore'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, who opened a jar (often called a box) that let evils loose into the world?', NULL,
        'Pandora', ARRAY['Persephone', 'Psyche', 'Echo', 'Helen', 'Ariadne', 'Eurydice'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek hero''s only weak spot was his heel?', NULL,
        'Achilles', ARRAY['Hector', 'Ajax', 'Odysseus', 'Perseus', 'Patroclus', 'Theseus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What is the name of the three-headed dog that guards the gates of the Greek underworld?', NULL,
        'Cerberus', ARRAY['Orthrus', 'Fenrir', 'Garmr', 'Argos', 'Laelaps', 'Typhon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Roman goddess of love gave her name to the second planet from the Sun?', NULL,
        'Venus', ARRAY['Juno', 'Minerva', 'Diana', 'Vesta', 'Ceres', 'Aurora'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Greek myth turned everything he touched into gold?', NULL,
        'Midas', ARRAY['Croesus', 'Minos', 'Priam', 'Agamemnon', 'Oedipus', 'Tantalus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which twins were raised by a she-wolf and went on to found Rome?', NULL,
        'Romulus and Remus', ARRAY['Castor and Pollux', 'Apollo and Artemis', 'Amphion and Zethus', 'Hypnos and Thanatos', 'Jacob and Esau', 'Cain and Abel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Norse mythology, what is the great hall where warriors slain in battle feast until the end of the world?', NULL,
        'Valhalla', ARRAY['Folkvangr', 'Bilskirnir', 'Helheim', 'Gladsheim', 'Breidablik', 'Vingolf'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which winged Roman god shoots arrows that make people fall in love?', NULL,
        'Cupid', ARRAY['Mercury', 'Apollo', 'Bacchus', 'Vulcan', 'Faunus', 'Janus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'During the war with Troy, what giant wooden animal did the Greeks hide soldiers inside to get into the city?', NULL,
        'A horse', ARRAY['A bull', 'A lion', 'A boar', 'An eagle', 'A ram', 'A bear'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, what creature has the body of a lion and the head of a human, famous for asking riddles?', NULL,
        'The Sphinx', ARRAY['The Minotaur', 'The Chimera', 'The Hydra', 'Cerberus', 'The Gorgon', 'The Cyclops'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who was condemned to push a boulder up a hill for eternity as punishment?', NULL,
        'Sisyphus', ARRAY['Tantalus', 'Prometheus', 'Atlas', 'Icarus', 'Orpheus', 'Midas'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, what is the name of the realm of the Aesir gods?', NULL,
        'Asgard', ARRAY['Valhalla', 'Midgard', 'Jotunheim', 'Alfheim', 'Niflheim', 'Vanaheim'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the messenger god known for his winged sandals?', NULL,
        'Hermes', ARRAY['Apollo', 'Dionysus', 'Hephaestus', 'Ares', 'Pan', 'Helios'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Egyptian mythology, which sun god sailed across the sky in a boat each day?', NULL,
        'Ra', ARRAY['Osiris', 'Anubis', 'Thoth', 'Geb', 'Ptah', 'Sobek'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, which hero was famous for twelve labors, including slaying the Nemean Lion?', NULL,
        'Hercules', ARRAY['Achilles', 'Perseus', 'Theseus', 'Jason', 'Odysseus', 'Orpheus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, who is the trickster god, father of the wolf Fenrir?', NULL,
        'Loki', ARRAY['Odin', 'Thor', 'Baldur', 'Heimdall', 'Tyr', 'Freyr'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What is the name of the Norse thunder god''s hammer?', NULL,
        'Mjölnir', ARRAY['Gungnir', 'Gram', 'Draupnir', 'Tyrfing', 'Skofnung', 'Excalibur'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of the hunt was the twin sister of Apollo?', NULL,
        'Artemis', ARRAY['Athena', 'Hera', 'Demeter', 'Hestia', 'Nike', 'Persephone'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Titan stole fire from the gods and gave it to humanity?', NULL,
        'Prometheus', ARRAY['Epimetheus', 'Atlas', 'Hyperion', 'Cronus', 'Oceanus', 'Iapetus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Athenian hero found his way out of the Labyrinth using Ariadne''s thread?', NULL,
        'Theseus', ARRAY['Perseus', 'Jason', 'Bellerophon', 'Odysseus', 'Ajax', 'Meleager'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek hero used a polished shield as a mirror to slay a Gorgon?', NULL,
        'Perseus', ARRAY['Theseus', 'Jason', 'Bellerophon', 'Odysseus', 'Cadmus', 'Meleager'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Egyptian mythology, which god was killed by his brother Set and became ruler of the dead?', NULL,
        'Osiris', ARRAY['Horus', 'Ra', 'Thoth', 'Ptah', 'Amun', 'Khnum'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which musician of Greek myth went down to the underworld to bring back his wife Eurydice?', NULL,
        'Orpheus', ARRAY['Apollo', 'Pan', 'Arion', 'Linus', 'Marsyas', 'Amphion'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Hindu god has the head of an elephant?', NULL,
        'Ganesha', ARRAY['Hanuman', 'Indra', 'Krishna', 'Vishnu', 'Kartikeya', 'Agni'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of the harvest searched the world for her daughter Persephone?', NULL,
        'Demeter', ARRAY['Hera', 'Hestia', 'Gaia', 'Rhea', 'Hecate', 'Eos'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who is the Greek god of wine and revelry?', NULL,
        'Dionysus', ARRAY['Apollo', 'Pan', 'Hermes', 'Ares', 'Hephaestus', 'Eros'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which lame Greek god was the blacksmith of the gods, working at his forge?', NULL,
        'Hephaestus', ARRAY['Ares', 'Hermes', 'Apollo', 'Dionysus', 'Helios', 'Poseidon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Greek goddess, queen of the gods and wife of Zeus, watched over marriage?', NULL,
        'Hera', ARRAY['Athena', 'Aphrodite', 'Demeter', 'Hestia', 'Artemis', 'Persephone'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Egyptian goddess of magic and motherhood was the wife and sister of the god of the dead?', NULL,
        'Isis', ARRAY['Hathor', 'Nephthys', 'Bastet', 'Sekhmet', 'Nut', 'Ma''at'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Hindu mythology, who is the god of destruction, part of the Trimurti alongside Brahma and Vishnu?', NULL,
        'Shiva', ARRAY['Ganesha', 'Indra', 'Krishna', 'Hanuman', 'Agni', 'Rama'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, what was the name of the winged horse tamed by the hero Bellerophon?', NULL,
        'Pegasus', ARRAY['Arion', 'Chiron', 'Bucephalus', 'Sleipnir', 'Xanthus', 'Balius'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, which of the three Gorgon sisters was the only mortal one?', NULL,
        'Medusa', ARRAY['Stheno', 'Euryale', 'Echidna', 'Lamia', 'Scylla', 'Circe'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who wove a shroud to delay her suitors while waiting for her husband Odysseus to return?', NULL,
        'Penelope', ARRAY['Clytemnestra', 'Helen', 'Andromache', 'Circe', 'Calypso', 'Nausicaa'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Arthurian legend, to which island is the wounded King Arthur carried after his last battle?', NULL,
        'Avalon', ARRAY['Lyonesse', 'Camelot', 'Tintagel', 'Atlantis', 'Iona', 'Tír na nÓg'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Norse mythology, what is the name of the burning rainbow bridge between Midgard and the realm of the gods?', NULL,
        'Bifröst', ARRAY['Gjallarbrú', 'Ginnungagap', 'Vígríðr', 'Niflheim', 'Muspelheim', 'Alfheim'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which monkey god is a hero of the Hindu epic the Ramayana?', NULL,
        'Hanuman', ARRAY['Sun Wukong', 'Garuda', 'Jambavan', 'Sugriva', 'Nandi', 'Kartikeya'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Titan was condemned to hold up the sky forever?', NULL,
        'Atlas', ARRAY['Cronus', 'Hyperion', 'Oceanus', 'Iapetus', 'Coeus', 'Epimetheus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Norse mythology, what is the name of the final battle in which many of the gods die?', NULL,
        'Ragnarök', ARRAY['Fimbulwinter', 'Ginnungagap', 'Muspelheim', 'Vígríðr', 'Helheim', 'Midgard'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Egyptian god of writing and wisdom had the head of an ibis?', NULL,
        'Thoth', ARRAY['Horus', 'Ptah', 'Amun', 'Sobek', 'Khnum', 'Set'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which falcon-headed Egyptian sky god lost an eye fighting Set?', NULL,
        'Horus', ARRAY['Ra', 'Thoth', 'Sobek', 'Khonsu', 'Ptah', 'Amun'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, which fruit did Persephone eat in the underworld, binding her to return there each year?', NULL,
        'A pomegranate', ARRAY['A fig', 'An apple', 'A grape', 'An olive', 'A date', 'A cherry'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What was the name of the ship Jason sailed in search of the Golden Fleece?', NULL,
        'The Argo', ARRAY['The Aegis', 'The Arcadia', 'The Calypso', 'The Olympia', 'The Thalassa', 'The Nautilus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, which beautiful youth fell in love with his own reflection?', NULL,
        'Narcissus', ARRAY['Adonis', 'Hyacinthus', 'Ganymede', 'Endymion', 'Paris', 'Orion'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which trickster spider is a hero of West African and Caribbean folktales?', NULL,
        'Anansi', ARRAY['Br''er Rabbit', 'Coyote', 'Raven', 'Kokopelli', 'Eshu', 'Maui'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Polynesian demigod pulled islands up from the sea with his magic fishhook?', NULL,
        'Maui', ARRAY['Tangaroa', 'Pele', 'Tāne', 'Lono', 'Kū', 'Kamapua''a'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Thebes unknowingly killed his father and married his mother?', NULL,
        'Oedipus', ARRAY['Creon', 'Laius', 'Cadmus', 'Agamemnon', 'Pentheus', 'Menelaus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Janus, the two-faced Roman god of beginnings, gives his name to which month?', NULL,
        'January', ARRAY['June', 'March', 'February', 'May', 'July', 'August'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who was the ferryman who carried the dead across the River Styx?', NULL,
        'Charon', ARRAY['Thanatos', 'Hypnos', 'Minos', 'Aeacus', 'Erebus', 'Hermes'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Egyptian myth, a dead person''s heart was weighed against what?', NULL,
        'A feather', ARRAY['A stone', 'A gold coin', 'A scarab', 'An ankh', 'A lotus flower', 'A grain of sand'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, what is the name of the World Tree that connects the nine realms?', NULL,
        'Yggdrasil', ARRAY['Valhalla', 'Bifrost', 'Asgard', 'Ginnungagap', 'Niflheim', 'Muspelheim'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Aztec mythology, who is the feathered serpent god associated with wind and learning?', NULL,
        'Quetzalcoatl', ARRAY['Huitzilopochtli', 'Tezcatlipoca', 'Tlaloc', 'Xolotl', 'Tonatiuh', 'Mictlantecuhtli'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Japanese sun goddess hid in a cave, plunging the world into darkness?', NULL,
        'Amaterasu', ARRAY['Izanami', 'Tsukuyomi', 'Susanoo', 'Inari', 'Benzaiten', 'Izanagi'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Norse god gave up an eye to drink from the well of wisdom?', NULL,
        'Odin', ARRAY['Tyr', 'Heimdall', 'Baldur', 'Freyr', 'Njord', 'Vidar'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Norse goddess of love rides in a chariot pulled by cats?', NULL,
        'Freyja', ARRAY['Frigg', 'Sif', 'Idun', 'Hel', 'Skadi', 'Sigyn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What is the name of the eight-legged horse of Norse myth?', NULL,
        'Sleipnir', ARRAY['Gullfaxi', 'Hrímfaxi', 'Skinfaxi', 'Grani', 'Svaðilfari', 'Árvakr'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who was the Greek goddess of the rainbow, a messenger of the gods?', NULL,
        'Iris', ARRAY['Eos', 'Nike', 'Hebe', 'Selene', 'Hecate', 'Nyx'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Trojan prince carried off Helen, sparking the Trojan War?', NULL,
        'Paris', ARRAY['Hector', 'Aeneas', 'Troilus', 'Priam', 'Deiphobus', 'Memnon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which of the nine Muses inspired epic poetry?', NULL,
        'Calliope', ARRAY['Clio', 'Erato', 'Thalia', 'Terpsichore', 'Urania', 'Melpomene'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, what was the name of the food of the gods that made them immortal?', NULL,
        'Ambrosia', ARRAY['Manna', 'Amrita', 'Soma', 'Ichor', 'Mead', 'Elixir'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Hindu mythology, which giant eagle-like bird carries the god Vishnu?', NULL,
        'Garuda', ARRAY['Jatayu', 'Hamsa', 'Simurgh', 'Nandi', 'Airavata', 'Mayura'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Irish hero, the "Hound of Ulster," defended Ulster single-handed as a teenager?', NULL,
        'Cú Chulainn', ARRAY['Fionn mac Cumhaill', 'Lugh', 'Oisín', 'Diarmuid', 'Conchobar mac Nessa', 'Fergus mac Róich'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Irish hero gained great wisdom by tasting the Salmon of Knowledge?', NULL,
        'Fionn mac Cumhaill', ARRAY['Cú Chulainn', 'Oisín', 'Lugh', 'Diarmuid', 'Conán', 'Oscar'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Japanese folklore, what is a kitsune?', NULL,
        'A fox spirit', ARRAY['A raccoon-dog spirit', 'A cat spirit', 'A water imp', 'A crow demon', 'A snake spirit', 'A badger spirit'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Uruk is the hero of the oldest surviving great epic?', NULL,
        'Gilgamesh', ARRAY['Hammurabi', 'Sargon of Akkad', 'Enkidu', 'Nebuchadnezzar', 'Ashurbanipal', 'Utnapishtim'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Monkey King is the hero of the Chinese classic "Journey to the West"?', NULL,
        'Sun Wukong', ARRAY['Zhu Bajie', 'Sha Wujing', 'Erlang Shen', 'Nezha', 'Hanuman', 'Tang Sanzang'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Greek hunter was turned into a stag and torn apart by his own hounds after seeing a goddess bathing?', NULL,
        'Actaeon', ARRAY['Adonis', 'Orion', 'Narcissus', 'Endymion', 'Hippolytus', 'Meleager'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse myth, which beloved god could be harmed by nothing except mistletoe, which killed him?', NULL,
        'Baldur', ARRAY['Tyr', 'Heimdall', 'Freyr', 'Njord', 'Vidar', 'Bragi'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which king of Greek myth was punished in the underworld with water and fruit that always moved just out of reach?', NULL,
        'Tantalus', ARRAY['Sisyphus', 'Ixion', 'Tityos', 'Minos', 'Lycaon', 'Salmoneus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Sumerian goddess of love and war was later worshipped by the Babylonians as Ishtar?', NULL,
        'Inanna', ARRAY['Ereshkigal', 'Tiamat', 'Ninhursag', 'Ninlil', 'Nisaba', 'Nanshe'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MYTHOLOGY';
