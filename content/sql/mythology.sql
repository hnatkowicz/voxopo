-- ============================================================================
-- content/sql/mythology.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/mythology.csv, the master copy of the
-- Thinking Pants category MYTHOLOGY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MYTHOLOGY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the god of the sea?', NULL,
        'Poseidon', ARRAY['Zeus', 'Hades', 'Apollo', 'Ares', 'Hermes', 'Hephaestus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Roman mythology, who is the king of the gods?', NULL,
        'Jupiter', ARRAY['Mars', 'Neptune', 'Mercury', 'Vulcan', 'Pluto', 'Apollo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the goddess of love and beauty?', NULL,
        'Aphrodite', ARRAY['Athena', 'Artemis', 'Hera', 'Demeter', 'Hestia', 'Persephone'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, who is the god of thunder?', NULL,
        'Thor', ARRAY['Odin', 'Loki', 'Baldur', 'Tyr', 'Heimdall', 'Freyr'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, which hero was famous for twelve labors, including slaying the Nemean Lion?', NULL,
        'Hercules', ARRAY['Achilles', 'Perseus', 'Theseus', 'Jason', 'Odysseus', 'Orpheus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who flew too close to the sun with wings made of feathers and wax?', NULL,
        'Icarus', ARRAY['Daedalus', 'Phaethon', 'Bellerophon', 'Prometheus', 'Perseus', 'Orpheus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek mythology, who is the god of the underworld?', NULL,
        'Hades', ARRAY['Zeus', 'Ares', 'Hermes', 'Thanatos', 'Cronus', 'Hephaestus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of wisdom sprang fully grown, in armor, from her father''s head?', NULL,
        'Athena', ARRAY['Hera', 'Artemis', 'Aphrodite', 'Demeter', 'Hestia', 'Nike'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who is the Roman god of war?', NULL,
        'Mars', ARRAY['Jupiter', 'Neptune', 'Mercury', 'Vulcan', 'Saturn', 'Apollo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What kind of one-eyed giant does Odysseus blind to escape from its cave?', NULL,
        'A Cyclops', ARRAY['A Titan', 'A Minotaur', 'A centaur', 'A satyr', 'A Gorgon', 'A harpy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which creature, half man and half bull, lived in the Labyrinth on Crete?', NULL,
        'The Minotaur', ARRAY['The Centaur', 'The Chimera', 'The Hydra', 'The Satyr', 'The Griffin', 'The Manticore'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, who opened a jar (often called a box) that let evils loose into the world?', NULL,
        'Pandora', ARRAY['Persephone', 'Psyche', 'Echo', 'Helen', 'Ariadne', 'Eurydice'], 100, 'In the oldest telling it''s a jar; "box" comes from a 1500s mistranslation by Erasmus.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek hero''s only weak spot was his heel?', NULL,
        'Achilles', ARRAY['Hector', 'Ajax', 'Odysseus', 'Perseus', 'Patroclus', 'Theseus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What is the name of the three-headed dog that guards the gates of the Greek underworld?', NULL,
        'Cerberus', ARRAY['Orthrus', 'Fenrir', 'Garmr', 'Argos', 'Laelaps', 'Typhon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Roman goddess of love gave her name to the second planet from the Sun?', NULL,
        'Venus', ARRAY['Juno', 'Minerva', 'Diana', 'Vesta', 'Ceres', 'Aurora'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Greek myth turned everything he touched into gold?', NULL,
        'Midas', ARRAY['Croesus', 'Minos', 'Priam', 'Agamemnon', 'Oedipus', 'Tantalus'], 100, 'He washed the golden touch away in the river Pactolus, whose sands were said to glitter with gold after.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which twins were raised by a she-wolf and went on to found Rome?', NULL,
        'Romulus and Remus', ARRAY['Castor and Pollux', 'Apollo and Artemis', 'Amphion and Zethus', 'Hypnos and Thanatos', 'Jacob and Esau', 'Cain and Abel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which winged Roman god shoots arrows that make people fall in love?', NULL,
        'Cupid', ARRAY['Mercury', 'Apollo', 'Bacchus', 'Vulcan', 'Faunus', 'Janus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'During the war with Troy, what giant wooden animal did the Greeks hide soldiers inside to get into the city?', NULL,
        'A horse', ARRAY['A bull', 'A lion', 'A boar', 'An eagle', 'A ram', 'A bear'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Who is the king of the Greek gods, who hurls thunderbolts?', NULL,
        'Zeus', ARRAY['Poseidon', 'Hades', 'Cronus', 'Apollo', 'Ares', 'Hermes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'NASA''s moon-landing missions were named after which Greek god of the sun and music?', NULL,
        'Apollo', ARRAY['Hermes', 'Ares', 'Helios', 'Dionysus', 'Hephaestus', 'Atlas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sea creatures of Greek myth lured sailors onto the rocks with their singing?', NULL,
        'The Sirens', ARRAY['The Gorgons', 'The Harpies', 'The Furies', 'The Fates', 'The Graces', 'The Nereids'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the name of the mountain where the Greek gods lived?', NULL,
        'Mount Olympus', ARRAY['Mount Etna', 'Mount Parnassus', 'Mount Ida', 'Mount Sinai', 'Mount Vesuvius', 'Mount Athos'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sportswear company is named after the winged Greek goddess of victory?', NULL,
        'Nike', ARRAY['Adidas', 'Puma', 'Reebok', 'Asics', 'Fila', 'Umbro'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Odysseus''s ten-year voyage home gives us which word for a long, eventful journey?', NULL,
        'Odyssey', ARRAY['Saga', 'Epic', 'Trek', 'Voyage', 'Quest', 'Expedition'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary horse has a single spiraling horn on its forehead?', NULL,
        'The unicorn', ARRAY['The pegasus', 'The hippogriff', 'The kelpie', 'The centaur', 'The griffin', 'The sphinx'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary bird bursts into flames and is reborn from its own ashes?', NULL,
        'The phoenix', ARRAY['The roc', 'The thunderbird', 'The griffin', 'The harpy', 'The firebird', 'The garuda'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What are the half-man, half-horse creatures of Greek myth called?', NULL,
        'Centaurs', ARRAY['Satyrs', 'Minotaurs', 'Cyclopes', 'Harpies', 'Sphinxes', 'Fauns'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which wizard was King Arthur''s adviser and teacher?', NULL,
        'Merlin', ARRAY['Gandalf', 'Morgan', 'Mordred', 'Prospero', 'Lancelot', 'Galahad'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the name of King Arthur''s sword, given to him by the Lady of the Lake?', NULL,
        'Excalibur', ARRAY['Durendal', 'Joyeuse', 'Balmung', 'Glamdring', 'Narsil', 'Tizona'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman god of the sea gives his name to the eighth planet from the Sun?', NULL,
        'Neptune', ARRAY['Saturn', 'Mercury', 'Uranus', 'Jupiter', 'Pluto', 'Vulcan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which speedy Roman messenger god, with wings on his sandals, gives his name to the planet closest to the Sun?', NULL,
        'Mercury', ARRAY['Mars', 'Apollo', 'Vulcan', 'Janus', 'Bacchus', 'Neptune'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman god of the underworld gave his name to a dwarf planet (and a Disney dog)?', NULL,
        'Pluto', ARRAY['Saturn', 'Mars', 'Janus', 'Vulcan', 'Bacchus', 'Neptune'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman god of farming and time gives his name to the ringed planet?', NULL,
        'Saturn', ARRAY['Jupiter', 'Uranus', 'Neptune', 'Mars', 'Vulcan', 'Janus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In legend, what does a person turn into under a full moon?', NULL,
        'A werewolf', ARRAY['A vampire', 'A zombie', 'A ghost', 'A troll', 'A goblin', 'A banshee'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which many-headed monster grew two new heads for every one cut off?', NULL,
        'The Hydra', ARRAY['The Chimera', 'The Kraken', 'The Cyclops', 'The Basilisk', 'The Sphinx', 'The Griffin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Wonder Woman comes from which tribe of warrior women from Greek myth, whose name also went to a huge online store?', NULL,
        'The Amazons', ARRAY['The Valkyries', 'The Spartans', 'The Furies', 'The Muses', 'The Sirens', 'The Gorgons'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Who is the Greek god of war?', NULL,
        'Ares', ARRAY['Apollo', 'Hermes', 'Hephaestus', 'Poseidon', 'Dionysus', 'Hades'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which mythical creature is the only one in the Chinese zodiac?', NULL,
        'The dragon', ARRAY['The phoenix', 'The unicorn', 'The tiger', 'The serpent', 'The rooster', 'The monkey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What shape was King Arthur''s table, so that no knight sat at its head?', NULL,
        'Round', ARRAY['Square', 'Oval', 'Triangular', 'Long and narrow', 'Star-shaped', 'Horseshoe-shaped'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What sacred cup did King Arthur''s knights go questing for?', NULL,
        'The Holy Grail', ARRAY['The Golden Fleece', 'The Ark of the Covenant', 'The Philosopher''s Stone', 'The Spear of Destiny', 'The Silver Chalice', 'The Crown of Thorns'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which tiny bearded figure of Irish folklore hides a pot of gold at the end of the rainbow?', NULL,
        'A leprechaun', ARRAY['A gnome', 'A goblin', 'A pixie', 'A troll', 'An elf', 'A brownie'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sea creature of legend is a woman above the waist and a fish below?', NULL,
        'A mermaid', ARRAY['A siren', 'A selkie', 'A nymph', 'A harpy', 'A kelpie', 'A naiad'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Norse mythology comes from which part of Europe?', NULL,
        'Scandinavia', ARRAY['The Balkans', 'The British Isles', 'The Mediterranean', 'The Iberian Peninsula', 'The Alps', 'The Baltic states'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What three-pronged spear does the Greek god of the sea carry?', NULL,
        'A trident', ARRAY['A javelin', 'A halberd', 'A pitchfork', 'A lance', 'A harpoon', 'A scythe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which blind Greek poet is said to have composed the "Iliad"?', NULL,
        'Homer', ARRAY['Sophocles', 'Aesop', 'Plato', 'Virgil', 'Socrates', 'Herodotus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which day of the week is named after the Norse god of thunder?', NULL,
        'Thursday', ARRAY['Tuesday', 'Wednesday', 'Friday', 'Saturday', 'Sunday', 'Monday'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In the "Arabian Nights" tales, what magical spirit lives in a lamp and grants wishes?', NULL,
        'A genie', ARRAY['A fairy', 'A ghost', 'A goblin', 'A sprite', 'A pixie', 'A wizard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What do you call someone who is half god and half human?', NULL,
        'A demigod', ARRAY['A titan', 'A deity', 'An oracle', 'A prophet', 'A centaur', 'A nymph'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary monster is said to live in a deep Scottish lake?', NULL,
        'The Loch Ness Monster', ARRAY['Bigfoot', 'The Kraken', 'The Yeti', 'The Chupacabra', 'The Jersey Devil', 'Mothman'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Egyptian mythology, which jackal-headed god watched over embalming and the dead?', NULL,
        'Anubis', ARRAY['Osiris', 'Horus', 'Set', 'Thoth', 'Sobek', 'Khnum'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, what creature has the body of a lion and the head of a human, famous for asking riddles?', NULL,
        'The Sphinx', ARRAY['The Minotaur', 'The Chimera', 'The Hydra', 'Cerberus', 'The Gorgon', 'The Cyclops'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who was condemned to push a boulder up a hill for eternity as punishment?', NULL,
        'Sisyphus', ARRAY['Tantalus', 'Prometheus', 'Atlas', 'Icarus', 'Orpheus', 'Midas'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, what is the name of the realm of the Aesir gods?', NULL,
        'Asgard', ARRAY['Valhalla', 'Midgard', 'Jotunheim', 'Alfheim', 'Niflheim', 'Vanaheim'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who is the messenger god known for his winged sandals?', NULL,
        'Hermes', ARRAY['Apollo', 'Dionysus', 'Hephaestus', 'Ares', 'Pan', 'Helios'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Egyptian mythology, which sun god sailed across the sky in a boat each day?', NULL,
        'Ra', ARRAY['Osiris', 'Anubis', 'Thoth', 'Geb', 'Ptah', 'Sobek'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, who is the trickster god, father of the wolf Fenrir?', NULL,
        'Loki', ARRAY['Odin', 'Thor', 'Baldur', 'Heimdall', 'Tyr', 'Freyr'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, what was the name of the winged horse tamed by the hero Bellerophon?', NULL,
        'Pegasus', ARRAY['Arion', 'Chiron', 'Bucephalus', 'Sleipnir', 'Xanthus', 'Balius'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Norse mythology, what is the great hall where warriors slain in battle feast until the end of the world?', NULL,
        'Valhalla', ARRAY['Folkvangr', 'Bilskirnir', 'Helheim', 'Gladsheim', 'Breidablik', 'Vingolf'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What is the name of the Norse thunder god''s hammer?', NULL,
        'Mjölnir', ARRAY['Gungnir', 'Gram', 'Draupnir', 'Tyrfing', 'Skofnung', 'Excalibur'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of the hunt roamed the woods with a silver bow and her hounds?', NULL,
        'Artemis', ARRAY['Athena', 'Hera', 'Demeter', 'Hestia', 'Nike', 'Persephone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Titan stole fire from the gods and gave it to humanity?', NULL,
        'Prometheus', ARRAY['Epimetheus', 'Atlas', 'Hyperion', 'Cronus', 'Oceanus', 'Iapetus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Athenian hero found his way out of the Labyrinth using Ariadne''s thread?', NULL,
        'Theseus', ARRAY['Perseus', 'Jason', 'Bellerophon', 'Odysseus', 'Ajax', 'Meleager'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek hero used a polished shield as a mirror to slay a Gorgon?', NULL,
        'Perseus', ARRAY['Theseus', 'Jason', 'Bellerophon', 'Odysseus', 'Cadmus', 'Meleager'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Egyptian mythology, which god was killed by his brother Set and became ruler of the dead?', NULL,
        'Osiris', ARRAY['Horus', 'Ra', 'Thoth', 'Ptah', 'Amun', 'Khnum'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which musician of Greek myth went down to the underworld to bring back his wife Eurydice?', NULL,
        'Orpheus', ARRAY['Apollo', 'Pan', 'Arion', 'Linus', 'Marsyas', 'Amphion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Hindu god has the head of an elephant?', NULL,
        'Ganesha', ARRAY['Hanuman', 'Indra', 'Krishna', 'Vishnu', 'Kartikeya', 'Agni'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of the harvest searched the world for her daughter Persephone?', NULL,
        'Demeter', ARRAY['Hera', 'Hestia', 'Gaia', 'Rhea', 'Hecate', 'Eos'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who is the Greek god of wine and revelry?', NULL,
        'Dionysus', ARRAY['Apollo', 'Pan', 'Hermes', 'Ares', 'Hephaestus', 'Eros'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Titan was condemned to hold up the sky forever, and gives his name to a book of maps?', NULL,
        'Atlas', ARRAY['Cronus', 'Hyperion', 'Oceanus', 'Iapetus', 'Coeus', 'Epimetheus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which beautiful youth of Greek myth fell in love with his own reflection, giving us a word for the self-obsessed?', NULL,
        'Narcissus', ARRAY['Adonis', 'Hyacinthus', 'Ganymede', 'Endymion', 'Paris', 'Orion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Polynesian hero, voiced by Dwayne Johnson in Disney''s "Moana," pulled islands up from the sea with a magic fishhook?', NULL,
        'Maui', ARRAY['Tangaroa', 'Pele', 'Tāne', 'Lono', 'Kū', 'Kamapua''a'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Janus, the two-faced Roman god of beginnings, gives his name to which month?', NULL,
        'January', ARRAY['June', 'March', 'February', 'May', 'July', 'August'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Trojan prince carried off Helen, sparking the Trojan War?', NULL,
        'Paris', ARRAY['Hector', 'Aeneas', 'Troilus', 'Priam', 'Deiphobus', 'Memnon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which lame Greek god was the blacksmith of the gods, working at his forge?', NULL,
        'Hephaestus', ARRAY['Ares', 'Hermes', 'Apollo', 'Dionysus', 'Helios', 'Poseidon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Greek goddess, queen of the gods, watched over marriage?', NULL,
        'Hera', ARRAY['Athena', 'Aphrodite', 'Demeter', 'Hestia', 'Artemis', 'Persephone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Egyptian goddess of magic and motherhood was the wife and sister of the god of the dead?', NULL,
        'Isis', ARRAY['Hathor', 'Nephthys', 'Bastet', 'Sekhmet', 'Nut', 'Ma''at'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What do you call the legendary beast with a lion''s body and an eagle''s head and wings?', NULL,
        'A griffin', ARRAY['A sphinx', 'A chimera', 'A manticore', 'A wyvern', 'A hippogriff', 'A basilisk'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which goat-legged Greek god of the wild, who played reed pipes, gives us a word for sudden, wild fear?', NULL,
        'Pan', ARRAY['Dionysus', 'Hermes', 'Priapus', 'Silenus', 'Faunus', 'Apollo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which winged Greek god of love is often shown as a boy with a bow?', NULL,
        'Eros', ARRAY['Hermes', 'Apollo', 'Hymen', 'Ares', 'Morpheus', 'Pothos'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Norse myth, which winged warrior women carried the bravest of the fallen to the hall of the slain?', NULL,
        'The Valkyries', ARRAY['The Norns', 'The Amazons', 'The Furies', 'The Sirens', 'The Dísir', 'The Maenads'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman goddess of the hunt and the moon carried a silver bow?', NULL,
        'Diana', ARRAY['Juno', 'Minerva', 'Ceres', 'Vesta', 'Luna', 'Aurora'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which master inventor built the Labyrinth on Crete and made wax wings for himself and his son?', NULL,
        'Daedalus', ARRAY['Archimedes', 'Hephaestus', 'Prometheus', 'Talos', 'Pygmalion', 'Epimetheus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman god of fire and the forge gives us the word "volcano"?', NULL,
        'Vulcan', ARRAY['Mars', 'Pluto', 'Saturn', 'Janus', 'Mercury', 'Neptune'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Mr. Tumnus in "The Chronicles of Narnia" is which goat-legged creature from Roman myth?', NULL,
        'A faun', ARRAY['A centaur', 'A dwarf', 'A gnome', 'A minotaur', 'A troll', 'A dryad'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek goddess is the Earth itself, a name now used for "Mother Earth"?', NULL,
        'Gaia', ARRAY['Rhea', 'Hera', 'Demeter', 'Hestia', 'Themis', 'Selene'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What do you call a nature spirit of Greek myth, a young woman living in a tree, river or spring?', NULL,
        'A nymph', ARRAY['A siren', 'A muse', 'A harpy', 'A fury', 'A grace', 'A gorgon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Norse myth, what is the world of humans, the "middle" realm, called?', NULL,
        'Midgard', ARRAY['Asgard', 'Jotunheim', 'Niflheim', 'Vanaheim', 'Alfheim', 'Muspelheim'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman god of wine gives his name to the wild parties called bacchanals?', NULL,
        'Bacchus', ARRAY['Vulcan', 'Mercury', 'Janus', 'Saturn', 'Faunus', 'Silvanus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek goddess of revenge gives us a word for an archenemy?', NULL,
        'Nemesis', ARRAY['Eris', 'Hecate', 'Tyche', 'Nyx', 'Themis', 'Alecto'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek sky god, father of the Titans, has the seventh planet from the Sun named after him?', NULL,
        'Uranus', ARRAY['Cronus', 'Helios', 'Hyperion', 'Oceanus', 'Aether', 'Atlas'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which knight of King Arthur''s court, the greatest of them all, fell in love with Arthur''s queen?', NULL,
        'Lancelot', ARRAY['Galahad', 'Gawain', 'Percival', 'Mordred', 'Tristan', 'Bedivere'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Greek myth, what were the three sisters who spun, measured and cut the thread of every life?', NULL,
        'The Fates', ARRAY['The Graces', 'The Furies', 'The Gorgons', 'The Sirens', 'The Muses', 'The Harpies'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What were the nine Greek goddesses of the arts, who give us the word "museum"?', NULL,
        'The Muses', ARRAY['The Graces', 'The Fates', 'The Nymphs', 'The Sirens', 'The Hours', 'The Pleiades'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which beautiful youth, loved by the goddess of love, gives his name to any very handsome man?', NULL,
        'Adonis', ARRAY['Narcissus', 'Ganymede', 'Hyacinthus', 'Endymion', 'Orion', 'Paris'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which half-man, half-fish son of the sea god shares his name with Ariel''s father in "The Little Mermaid"?', NULL,
        'Triton', ARRAY['Proteus', 'Nereus', 'Oceanus', 'Glaucus', 'Pontus', 'Sebastian'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Who was King Arthur''s queen?', NULL,
        'Guinevere', ARRAY['Morgan le Fay', 'Isolde', 'Elaine', 'Vivien', 'Igraine', 'Nimue'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which giant bird of Native American legend makes thunder by flapping its wings?', NULL,
        'The thunderbird', ARRAY['The phoenix', 'The roc', 'The firebird', 'The griffin', 'The storm crow', 'The great eagle'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sweet drink of the Greek gods now names the sugary liquid in flowers?', NULL,
        'Nectar', ARRAY['Ambrosia', 'Honey', 'Mead', 'Manna', 'Elixir', 'Syrup'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which creatures of Scandinavian folklore turn to stone in sunlight?', NULL,
        'Trolls', ARRAY['Elves', 'Gnomes', 'Goblins', 'Dwarves', 'Pixies', 'Ogres'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Hindu mythology, who is the god of destruction, part of the Trimurti alongside Brahma and Vishnu?', NULL,
        'Shiva', ARRAY['Ganesha', 'Indra', 'Krishna', 'Hanuman', 'Agni', 'Rama'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, which of the three Gorgon sisters was the only mortal one?', NULL,
        'Medusa', ARRAY['Stheno', 'Euryale', 'Echidna', 'Lamia', 'Scylla', 'Circe'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Greek mythology, who wove a shroud to delay her suitors while waiting for her husband Odysseus to return?', NULL,
        'Penelope', ARRAY['Clytemnestra', 'Helen', 'Andromache', 'Circe', 'Calypso', 'Nausicaa'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Arthurian legend, to which island is the wounded King Arthur carried after his last battle?', NULL,
        'Avalon', ARRAY['Lyonesse', 'Camelot', 'Tintagel', 'Atlantis', 'Iona', 'Tír na nÓg'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Norse mythology, what is the burning rainbow bridge between the world of humans and the realm of the gods?', NULL,
        'Bifröst', ARRAY['Gjallarbrú', 'Ginnungagap', 'Vígríðr', 'Niflheim', 'Muspelheim', 'Alfheim'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which monkey god is a hero of the Hindu epic the Ramayana?', NULL,
        'Hanuman', ARRAY['Sun Wukong', 'Garuda', 'Jambavan', 'Sugriva', 'Nandi', 'Kartikeya'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which final battle of Norse myth, where many gods die, was the subtitle of a 2017 Marvel movie?', NULL,
        'Ragnarök', ARRAY['Fimbulwinter', 'Ginnungagap', 'Muspelheim', 'Vígríðr', 'Helheim', 'Midgard'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which falcon-headed Egyptian sky god lost an eye fighting Set?', NULL,
        'Horus', ARRAY['Ra', 'Thoth', 'Sobek', 'Khonsu', 'Ptah', 'Amun'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Greek myth, which fruit did Persephone eat in the underworld, binding her to return there each year?', NULL,
        'A pomegranate', ARRAY['A fig', 'An apple', 'A grape', 'An olive', 'A date', 'A cherry'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What was the name of the ship Jason sailed in search of the Golden Fleece?', NULL,
        'The Argo', ARRAY['The Aegis', 'The Arcadia', 'The Calypso', 'The Olympia', 'The Thalassa', 'The Nautilus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which trickster spider is a hero of West African and Caribbean folktales?', NULL,
        'Anansi', ARRAY['Br''er Rabbit', 'Coyote', 'Raven', 'Kokopelli', 'Eshu', 'Maui'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Thebes unknowingly killed his father and married his mother?', NULL,
        'Oedipus', ARRAY['Creon', 'Laius', 'Cadmus', 'Agamemnon', 'Pentheus', 'Menelaus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Who was the ferryman who carried the dead across the River Styx?', NULL,
        'Charon', ARRAY['Thanatos', 'Hypnos', 'Minos', 'Aeacus', 'Erebus', 'Hermes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Egyptian myth, a dead person''s heart was weighed against what?', NULL,
        'A feather', ARRAY['A stone', 'A gold coin', 'A scarab', 'An ankh', 'A lotus flower', 'A grain of sand'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which one-eyed Norse king of the gods gave up an eye for wisdom, and gives his name to Wednesday?', NULL,
        'Odin', ARRAY['Tyr', 'Heimdall', 'Baldur', 'Freyr', 'Njord', 'Vidar'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Greek goddess of the rainbow, a messenger of the gods, shares her name with the colored part of your eye?', NULL,
        'Iris', ARRAY['Eos', 'Nike', 'Hebe', 'Selene', 'Hecate', 'Nyx'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'What was the food of the Greek gods that kept them immortal, now also a fruit salad with marshmallows?', NULL,
        'Ambrosia', ARRAY['Manna', 'Amrita', 'Soma', 'Ichor', 'Mead', 'Elixir'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which king of Greek myth, punished with water and fruit always just out of reach, gives us the word "tantalize"?', NULL,
        'Tantalus', ARRAY['Sisyphus', 'Ixion', 'Tityos', 'Minos', 'Lycaon', 'Salmoneus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman goddess of wisdom and crafts is usually shown with an owl?', NULL,
        'Minerva', ARRAY['Juno', 'Diana', 'Vesta', 'Ceres', 'Fortuna', 'Aurora'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Greek myth, what was the one thing left inside the jar of evils when its lid was shut?', NULL,
        'Hope', ARRAY['Love', 'Truth', 'Luck', 'Wisdom', 'Peace', 'Faith'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek goddess of the hearth and home kept the sacred fire burning?', NULL,
        'Hestia', ARRAY['Hera', 'Demeter', 'Athena', 'Rhea', 'Hecate', 'Themis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Egyptian goddess, shown as a cat or with a cat''s head, protected the home?', NULL,
        'Bastet', ARRAY['Sekhmet', 'Hathor', 'Nut', 'Neith', 'Nephthys', 'Tefnut'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which bird-women of Greek myth snatched away food and people?', NULL,
        'The Harpies', ARRAY['The Sirens', 'The Furies', 'The Gorgons', 'The Graces', 'The Muses', 'The Fates'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek god of dreams gives his name to the painkiller morphine?', NULL,
        'Morpheus', ARRAY['Hypnos', 'Thanatos', 'Hermes', 'Oneiros', 'Nyx', 'Erebus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek god of sleep gives his name to the art of putting someone in a trance?', NULL,
        'Hypnos', ARRAY['Morpheus', 'Thanatos', 'Nyx', 'Erebus', 'Oneiros', 'Lethe'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman goddess of the dawn gives her name to the northern lights'' Latin name?', NULL,
        'Aurora', ARRAY['Luna', 'Diana', 'Flora', 'Juno', 'Vesta', 'Fortuna'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which hero of an Old English epic tore the arm off the monster Grendel?', NULL,
        'Beowulf', ARRAY['Sigurd', 'Siegfried', 'Roland', 'Cú Chulainn', 'Ragnar', 'Hrothgar'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Egyptian symbol of life looks like a cross with a loop on top?', NULL,
        'The ankh', ARRAY['The scarab', 'The djed', 'The was scepter', 'The Eye of Horus', 'The shen ring', 'The tyet'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which beetle did the ancient Egyptians link to the sun rolling across the sky?', NULL,
        'The scarab', ARRAY['The ladybug', 'The stag beetle', 'The firefly', 'The weevil', 'The jewel beetle', 'The rhinoceros beetle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which blue-skinned Hindu god, the hero of the Bhagavad Gita, is often shown playing a flute?', NULL,
        'Krishna', ARRAY['Rama', 'Indra', 'Brahma', 'Kama', 'Agni', 'Surya'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which happy afterlife of Greek myth gives its name to a famous avenue in France''s capital?', NULL,
        'The Elysian Fields', ARRAY['Arcadia', 'The Isles of the Blessed', 'Olympus', 'Hyperborea', 'Tartarus', 'The Asphodel Meadows'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Norse goddess rules the land of the dead, sharing her name with an English word for it?', NULL,
        'Hel', ARRAY['Frigg', 'Sif', 'Skadi', 'Idun', 'Ran', 'Freyja'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Titan, father of the king of the gods, swallowed his children to keep them from overthrowing him?', NULL,
        'Cronus', ARRAY['Atlas', 'Uranus', 'Hyperion', 'Oceanus', 'Prometheus', 'Iapetus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Roman goddess of the harvest gives us the word "cereal"?', NULL,
        'Ceres', ARRAY['Flora', 'Vesta', 'Juno', 'Diana', 'Pomona', 'Fortuna'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sorceress of Arthurian legend was King Arthur''s half-sister?', NULL,
        'Morgan le Fay', ARRAY['The Lady of the Lake', 'Nimue', 'Guinevere', 'Igraine', 'Elaine', 'Vivien'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which fire-breathing monster of Greek myth had a lion''s head, a goat''s body and a snake for a tail?', NULL,
        'The Chimera', ARRAY['The Hydra', 'The Manticore', 'The Typhon', 'The Griffin', 'The Basilisk', 'The Sphinx'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which weaver who out-wove a goddess was turned into a spider, giving spiders'' class, arachnids, its name?', NULL,
        'Arachne', ARRAY['Penelope', 'Ariadne', 'Andromeda', 'Daphne', 'Echo', 'Callisto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'The blindfolded Lady Justice holding scales is based on which Roman goddess?', NULL,
        'Justitia', ARRAY['Minerva', 'Fortuna', 'Concordia', 'Libertas', 'Victoria', 'Pax'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the kraken of Scandinavian legend?', NULL,
        'A giant sea monster', ARRAY['A fire-breathing dragon', 'A two-headed wolf', 'A giant eagle', 'A ghost ship', 'A frost giant', 'A sea witch'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'The word "mythology" comes from the Greek "mythos," meaning what?', NULL,
        'A story', ARRAY['A god', 'A lie', 'A hero', 'A truth', 'A monster', 'A song'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Irish spirit''s wailing was said to warn that someone would soon die?', NULL,
        'The banshee', ARRAY['The leprechaun', 'The selkie', 'The pooka', 'The changeling', 'The kelpie', 'The dullahan'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which witch of Slavic folklore lives in a hut that stands on chicken legs?', NULL,
        'Baba Yaga', ARRAY['Morgan le Fay', 'Circe', 'Hecate', 'Grimhilde', 'Befana', 'Lilith'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which creature of Jewish folklore is a figure of clay brought to life?', NULL,
        'A golem', ARRAY['A dybbuk', 'A gargoyle', 'A homunculus', 'A troll', 'A zombie', 'A mummy'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sailor of the "Arabian Nights" went on seven fantastic voyages?', NULL,
        'Sinbad', ARRAY['Aladdin', 'Ali Baba', 'Scheherazade', 'Jafar', 'Hassan', 'Gulliver'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary king of Crete gives his name to the island''s Bronze Age "Minoan" civilization?', NULL,
        'Minos', ARRAY['Midas', 'Priam', 'Agamemnon', 'Aegeus', 'Menelaus', 'Cadmus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which chatty mountain spirit of Greek myth could only repeat the last words spoken to her?', NULL,
        'Echo', ARRAY['Daphne', 'Calypso', 'Io', 'Arachne', 'Syrinx', 'Callisto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary island, described by the philosopher Plato, sank beneath the sea in a single day?', NULL,
        'Atlantis', ARRAY['Avalon', 'Lemuria', 'Hyperborea', 'Thule', 'Lyonesse', 'Mu'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary city of gold did Spanish explorers search for in South America?', NULL,
        'El Dorado', ARRAY['Shangri-La', 'Cibola', 'Xanadu', 'Camelot', 'Atlantis', 'Paititi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which legendary spring was Ponce de León said to be seeking in Florida?', NULL,
        'The Fountain of Youth', ARRAY['The Well of Wisdom', 'The Spring of Life', 'The Pool of Plenty', 'The Fountain of Gold', 'The Silver Spring', 'The Healing Well'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What were the goat-legged, party-loving followers of the Greek wine god called?', NULL,
        'Satyrs', ARRAY['Centaurs', 'Cyclopes', 'Titans', 'Giants', 'Nymphs', 'Harpies'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse mythology, what is the name of the World Tree that connects the nine realms?', NULL,
        'Yggdrasil', ARRAY['Valhalla', 'Bifrost', 'Asgard', 'Ginnungagap', 'Niflheim', 'Muspelheim'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which feathered serpent god of the Aztecs gave his name to one of the largest flying reptiles ever found?', NULL,
        'Quetzalcoatl', ARRAY['Huitzilopochtli', 'Tezcatlipoca', 'Tlaloc', 'Xolotl', 'Tonatiuh', 'Mictlantecuhtli'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Egyptian god of writing and wisdom had the head of an ibis?', NULL,
        'Thoth', ARRAY['Horus', 'Ptah', 'Amun', 'Sobek', 'Khnum', 'Set'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Japanese sun goddess hid in a cave, plunging the world into darkness?', NULL,
        'Amaterasu', ARRAY['Izanami', 'Tsukuyomi', 'Susanoo', 'Inari', 'Benzaiten', 'Izanagi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Norse goddess of love rides in a chariot pulled by cats?', NULL,
        'Freyja', ARRAY['Frigg', 'Sif', 'Idun', 'Hel', 'Skadi', 'Sigyn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which goddess of epic poetry, chief of her eight sisters, gives her name to the steam organ at the circus?', NULL,
        'Calliope', ARRAY['Clio', 'Erato', 'Thalia', 'Terpsichore', 'Urania', 'Melpomene'], 400, 'The steam-whistle organ called a calliope is named after her.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which giant eagle-like bird that carries the god Vishnu gives its name to Indonesia''s national airline?', NULL,
        'Garuda', ARRAY['Jatayu', 'Hamsa', 'Simurgh', 'Nandi', 'Airavata', 'Mayura'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Irish hero, the "Hound of Ulster," defended Ulster single-handed as a teenager?', NULL,
        'Cú Chulainn', ARRAY['Fionn mac Cumhaill', 'Lugh', 'Oisín', 'Diarmuid', 'Conchobar mac Nessa', 'Fergus mac Róich'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Irish hero gained wisdom from the Salmon of Knowledge and, in legend, built the Giant''s Causeway?', NULL,
        'Fionn mac Cumhaill', ARRAY['Cú Chulainn', 'Oisín', 'Lugh', 'Diarmuid', 'Conán', 'Oscar'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'In Japanese folklore, what is a kitsune?', NULL,
        'A fox spirit', ARRAY['A raccoon-dog spirit', 'A cat spirit', 'A water imp', 'A crow demon', 'A snake spirit', 'A badger spirit'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which king of Uruk is the hero of the oldest surviving great epic?', NULL,
        'Gilgamesh', ARRAY['Hammurabi', 'Sargon of Akkad', 'Enkidu', 'Nebuchadnezzar', 'Ashurbanipal', 'Utnapishtim'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_1', NULL,
        'Which Monkey King of the Chinese classic "Journey to the West" inspired Goku in "Dragon Ball"?', NULL,
        'Sun Wukong', ARRAY['Zhu Bajie', 'Sha Wujing', 'Erlang Shen', 'Nezha', 'Hanuman', 'Tang Sanzang'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'In Norse myth, which beloved god could be harmed by nothing except mistletoe, which killed him?', NULL,
        'Baldur', ARRAY['Tyr', 'Heimdall', 'Freyr', 'Njord', 'Vidar', 'Bragi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'ORIGINAL', NULL,
        'Which Sumerian goddess of love and war was later worshipped by the Babylonians as Ishtar?', NULL,
        'Inanna', ARRAY['Ereshkigal', 'Tiamat', 'Ninhursag', 'Ninlil', 'Nisaba', 'Nanshe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which one-handed Norse god of war gives his name to Tuesday?', NULL,
        'Tyr', ARRAY['Heimdall', 'Bragi', 'Vidar', 'Ullr', 'Forseti', 'Hodr'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which goddess of discord threw the golden apple that started the Trojan War, and now names a dwarf planet?', NULL,
        'Eris', ARRAY['Nemesis', 'Hecate', 'Nyx', 'Ate', 'Enyo', 'Discordia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek goddess of the moon gives her name to the chemical element selenium?', NULL,
        'Selene', ARRAY['Phoebe', 'Eos', 'Asteria', 'Hecate', 'Theia', 'Leto'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which giant sea serpent of Norse myth grew so long it circles the whole world, biting its own tail?', NULL,
        'Jörmungandr', ARRAY['Níðhöggr', 'Fafnir', 'Leviathan', 'Tiamat', 'Apophis', 'Kur'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Egyptian king of the gods was worshipped at the great temple of Karnak at Thebes?', NULL,
        'Amun', ARRAY['Ptah', 'Atum', 'Khonsu', 'Geb', 'Aten', 'Sobek'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Whose death, wearing his best friend''s armor, drove the greatest Greek warrior back into the Trojan War?', NULL,
        'Patroclus', ARRAY['Hector', 'Ajax', 'Diomedes', 'Nestor', 'Menelaus', 'Odysseus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which lioness-headed Egyptian goddess of war was said to breathe out the desert winds?', NULL,
        'Sekhmet', ARRAY['Bastet', 'Hathor', 'Mut', 'Neith', 'Tefnut', 'Wadjet'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the winged staff with two snakes, carried by the Greek messenger god and often mixed up with medicine''s symbol?', NULL,
        'The caduceus', ARRAY['The thyrsus', 'The aegis', 'The lituus', 'The scepter', 'The kerykeion', 'The trident'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Amazon queen, whose belt the strongest Greek hero was sent to fetch, is Wonder Woman''s mother in the comics?', NULL,
        'Hippolyta', ARRAY['Penthesilea', 'Antiope', 'Otrera', 'Atalanta', 'Diana', 'Melanippe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek god of medicine has a staff with one snake that is still a symbol of doctors?', NULL,
        'Asclepius', ARRAY['Apollo', 'Hermes', 'Chiron', 'Hygieia', 'Paean', 'Machaon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'The Colossus of Rhodes, a wonder of the ancient world, was a giant statue of which Greek sun god?', NULL,
        'Helios', ARRAY['Apollo', 'Hyperion', 'Zeus', 'Poseidon', 'Atlas', 'Phaethon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'The Statue of Liberty is a figure of which Roman goddess?', NULL,
        'Libertas', ARRAY['Minerva', 'Justitia', 'Victoria', 'Concordia', 'Fortuna', 'Columbia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Greek god of the north wind has his name in the Latin for the northern lights?', NULL,
        'Boreas', ARRAY['Zephyrus', 'Notus', 'Eurus', 'Aeolus', 'Aether', 'Typhon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Egyptian goddess stood for truth, justice and the order of the universe?', NULL,
        'Ma''at', ARRAY['Isis', 'Hathor', 'Nut', 'Seshat', 'Mut', 'Neith'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which shape-shifting raccoon dog of Japanese folklore gave Mario his "Tanooki" suit?', NULL,
        'The tanuki', ARRAY['The kitsune', 'The kappa', 'The tengu', 'The oni', 'The baku', 'The nekomata'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Chinese legend, which ruler of heaven held the great race that set the order of the zodiac animals?', NULL,
        'The Jade Emperor', ARRAY['The Yellow Emperor', 'The Dragon King', 'Pangu', 'Nüwa', 'The Monkey King', 'Guan Yu'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Hindu goddess of wealth and good fortune is honored with lamps at Diwali?', NULL,
        'Lakshmi', ARRAY['Saraswati', 'Parvati', 'Durga', 'Kali', 'Sita', 'Radha'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Hindu fire god shares an ancient root with the English word "ignite"?', NULL,
        'Agni', ARRAY['Surya', 'Vayu', 'Varuna', 'Soma', 'Yama', 'Rudra'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Inca sun god is still honored at a winter-solstice festival in Cusco each June?', NULL,
        'Inti', ARRAY['Viracocha', 'Pachamama', 'Mama Quilla', 'Illapa', 'Supay', 'Manco Cápac'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which loyal old dog was the only one to recognize Odysseus when he came home in disguise?', NULL,
        'Argos', ARRAY['Laelaps', 'Orthrus', 'Lampos', 'Xanthos', 'Maira', 'Sirius'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Sailors who must pass "between Scylla and ___" face two dangers. What is the whirlpool monster that fills the blank?', NULL,
        'Charybdis', ARRAY['Typhon', 'Echidna', 'Ceto', 'Lamia', 'Thetis', 'Proteus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which sorceress helped Jason win the Golden Fleece, then took terrible revenge when he left her?', NULL,
        'Medea', ARRAY['Circe', 'Hecate', 'Calypso', 'Ariadne', 'Atalanta', 'Pasiphaë'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Whose name means "afterthought," the Titan brother of the one who stole fire?', NULL,
        'Epimetheus', ARRAY['Hyperion', 'Iapetus', 'Menoetius', 'Coeus', 'Crius', 'Oceanus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the name of the magic spear carried by the one-eyed Norse All-Father?', NULL,
        'Gungnir', ARRAY['Gram', 'Hofund', 'Tyrfing', 'Laevateinn', 'Gjallarhorn', 'Draupnir'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which king of Mycenae led the Greek army against Troy?', NULL,
        'Agamemnon', ARRAY['Menelaus', 'Odysseus', 'Nestor', 'Priam', 'Diomedes', 'Idomeneus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Trojan princess was cursed to see the future truly but never be believed?', NULL,
        'Cassandra', ARRAY['Andromache', 'Hecuba', 'Polyxena', 'Creusa', 'Briseis', 'Iphigenia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which giant Greek warrior at Troy shares his name with a household cleanser?', NULL,
        'Ajax', ARRAY['Hector', 'Diomedes', 'Nestor', 'Menelaus', 'Teucer', 'Idomeneus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Norse myth, the world was made from the body of which frost giant?', NULL,
        'Ymir', ARRAY['Surtr', 'Thrym', 'Skrymir', 'Aegir', 'Mimir', 'Bergelmir'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'In Irish legend, the children of Lir were turned into what for 900 years?', NULL,
        'Swans', ARRAY['Stags', 'Salmon', 'Ravens', 'Hounds', 'Seals', 'Hares'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'What is the national epic of Finland, gathered from old folk songs in the 1800s?', NULL,
        'The Kalevala', ARRAY['The Edda', 'The Nibelungenlied', 'The Mabinogion', 'The Kalevipoeg', 'Beowulf', 'The Volsunga Saga'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which river god''s daughter escaped the sun god by turning into a laurel tree?', NULL,
        'Daphne', ARRAY['Echo', 'Syrinx', 'Callisto', 'Io', 'Clytie', 'Arethusa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Hindu king of the gods wields the thunderbolt called the vajra?', NULL,
        'Indra', ARRAY['Vishnu', 'Agni', 'Varuna', 'Surya', 'Yama', 'Brahma'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Japanese storm god, the sun goddess''s unruly brother, slew an eight-headed serpent?', NULL,
        'Susanoo', ARRAY['Tsukuyomi', 'Raijin', 'Fujin', 'Hachiman', 'Izanagi', 'Inari'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Chinese moon goddess gives her name to China''s robot missions to the Moon?', NULL,
        'Chang''e', ARRAY['Nüwa', 'Xiwangmu', 'Guanyin', 'Mazu', 'Houyi', 'Doumu'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which Titan goddess of memory, mother of the nine goddesses of the arts, gives us the word "mnemonic"?', NULL,
        'Mnemosyne', ARRAY['Themis', 'Phoebe', 'Tethys', 'Theia', 'Rhea', 'Metis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MYTHOLOGY', 'MYTHOLOGY_BATCH_2', NULL,
        'Which shape-shifting old man of the sea gives us "protean," meaning able to change form easily?', NULL,
        'Proteus', ARRAY['Nereus', 'Glaucus', 'Phorcys', 'Pontus', 'Oceanus', 'Triton'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MYTHOLOGY';
