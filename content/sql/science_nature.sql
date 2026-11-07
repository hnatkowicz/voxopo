-- ============================================================================
-- content/sql/science_nature.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/science_nature.csv, the master copy of the
-- Thinking Pants category SCIENCE_NATURE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SCIENCE_NATURE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What gas do plants absorb from the air to make food?', NULL,
        'Carbon dioxide', ARRAY['Oxygen', 'Nitrogen', 'Hydrogen', 'Helium', 'Methane', 'Argon'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'How many legs does a spider have?', NULL,
        'Eight', ARRAY['Six', 'Ten', 'Four', 'Twelve', 'Two', 'Five'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the largest organ in the human body?', NULL,
        'Skin', ARRAY['Liver', 'Heart', 'Brain', 'Lungs', 'Kidney', 'Stomach'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What force pulls objects toward the Earth?', NULL,
        'Gravity', ARRAY['Magnetism', 'Friction', 'Inertia', 'Velocity', 'Momentum', 'Pressure'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the center of an atom called?', NULL,
        'Nucleus', ARRAY['Electron', 'Proton', 'Neutron', 'Isotope', 'Orbital', 'Ion'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'How many bones are in the adult human body?', NULL,
        '206', ARRAY['186', '246', '166', '226', '196', '300'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the tallest species of land animal?', NULL,
        'Giraffe', ARRAY['Elephant', 'Moose', 'Camel', 'Ostrich', 'Rhino', 'Horse'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do caterpillars turn into?', NULL,
        'Butterflies or moths', ARRAY['Beetles', 'Dragonflies', 'Grasshoppers', 'Bees', 'Ants', 'Ladybugs'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the name for an animal that eats both plants and meat?', NULL,
        'Omnivore', ARRAY['Herbivore', 'Carnivore', 'Scavenger', 'Predator', 'Decomposer', 'Parasite'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What organ pumps blood throughout the human body?', NULL,
        'Heart', ARRAY['Liver', 'Lungs', 'Kidney', 'Brain', 'Stomach', 'Spleen'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which scientist formulated the three laws of motion?', NULL,
        'Isaac Newton', ARRAY['Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 'Johannes Kepler', 'James Clerk Maxwell', 'Michael Faraday'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the term for a baby kangaroo?', NULL,
        'Joey', ARRAY['Cub', 'Kid', 'Pup', 'Fawn', 'Kit', 'Calf'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the fastest land animal?', NULL,
        'Cheetah', ARRAY['Pronghorn', 'Lion', 'Greyhound', 'Horse', 'Gazelle', 'Ostrich'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the largest animal on Earth?', NULL,
        'Blue whale', ARRAY['African elephant', 'Whale shark', 'Sperm whale', 'Giant squid', 'Fin whale', 'Humpback whale'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the deep winter sleep of animals like bears and hedgehogs called?', NULL,
        'Hibernation', ARRAY['Estivation', 'Migration', 'Molting', 'Metamorphosis', 'Incubation', 'Gestation'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is the chemical formula for water?', NULL,
        'H2O', ARRAY['H2O2', 'CO2', 'HO', 'H2O3', 'NaCl', 'O2'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Frogs, toads and salamanders belong to which class of animals?', NULL,
        'Amphibians', ARRAY['Reptiles', 'Mammals', 'Fish', 'Insects', 'Crustaceans', 'Mollusks'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which organs filter waste from the blood and make urine?', NULL,
        'Kidneys', ARRAY['Liver', 'Bladder', 'Spleen', 'Pancreas', 'Lungs', 'Gallbladder'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What is the largest living bird?', NULL,
        'Ostrich', ARRAY['Emu', 'Albatross', 'Condor', 'Cassowary', 'Rhea', 'Pelican'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which naturalist wrote "On the Origin of Species" (1859)?', NULL,
        'Charles Darwin', ARRAY['Alfred Russel Wallace', 'Gregor Mendel', 'Carl Linnaeus', 'Thomas Huxley', 'Jean-Baptiste Lamarck', 'Isaac Newton'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do bees collect from flowers to make honey?', NULL,
        'Nectar', ARRAY['Pollen', 'Sap', 'Dew', 'Wax', 'Seeds'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call the preserved remains or traces of ancient life found in rock?', NULL,
        'Fossils', ARRAY['Minerals', 'Crystals', 'Sediments', 'Artifacts', 'Geodes'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'How many legs does an insect have?', NULL,
        'Six', ARRAY['Eight', 'Four', 'Ten', 'Twelve', 'Five'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'At sea level, water boils at how many degrees Fahrenheit?', NULL,
        '212', ARRAY['100', '180', '200', '250', '32'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call animals that eat only plants?', NULL,
        'Herbivores', ARRAY['Carnivores', 'Omnivores', 'Insectivores', 'Scavengers', 'Predators'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is a baby frog called?', NULL,
        'A tadpole', ARRAY['A kit', 'A fry', 'A cub', 'A joey', 'A calf'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is a group of lions called?', NULL,
        'A pride', ARRAY['A pack', 'A herd', 'A flock', 'A school', 'A troop'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which of these metals sticks to a magnet?', NULL,
        'Iron', ARRAY['Aluminum', 'Copper', 'Gold', 'Silver', 'Tin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which scientist is famous for the theory of relativity?', NULL,
        'Albert Einstein', ARRAY['Isaac Newton', 'Nikola Tesla', 'Galileo Galilei', 'Stephen Hawking', 'Marie Curie'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which founding father flew a kite in a thunderstorm to show that lightning is electricity?', NULL,
        'Benjamin Franklin', ARRAY['Thomas Jefferson', 'George Washington', 'John Adams', 'Alexander Hamilton', 'Thomas Edison'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call molten rock once it pours out onto Earth''s surface?', NULL,
        'Lava', ARRAY['Magma', 'Ash', 'Basalt', 'Pumice', 'Obsidian', 'Granite'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What tool do scientists use to make tiny things look much bigger?', NULL,
        'A microscope', ARRAY['A telescope', 'A periscope', 'A stethoscope', 'A kaleidoscope', 'A barometer', 'A thermometer'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What tool measures how hot or cold something is?', NULL,
        'A thermometer', ARRAY['A barometer', 'A speedometer', 'An odometer', 'A seismograph', 'A hygrometer', 'A compass'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Rain, snow, sleet and hail are all forms of what?', NULL,
        'Precipitation', ARRAY['Condensation', 'Evaporation', 'Humidity', 'Erosion', 'Transpiration', 'Sublimation'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'When wind, water or ice carry soil and rock away from one place, what is it called?', NULL,
        'Erosion', ARRAY['Deposition', 'Evaporation', 'Condensation', 'Sedimentation', 'Pollination', 'Photosynthesis'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is a baby horse called?', NULL,
        'A foal', ARRAY['A calf', 'A cub', 'A kit', 'A lamb', 'A fawn', 'A kid'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is a female deer called?', NULL,
        'A doe', ARRAY['A buck', 'A fawn', 'A stag', 'A sow', 'A mare', 'A ewe'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call energy collected from sunlight, like with rooftop panels?', NULL,
        'Solar power', ARRAY['Wind power', 'Hydropower', 'Geothermal power', 'Nuclear power', 'Tidal power', 'Biofuel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call the layer of gases that surrounds the Earth?', NULL,
        'The atmosphere', ARRAY['The ozone layer', 'The magnetosphere', 'The crust', 'The hydrosphere', 'The biosphere', 'The mantle'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a mountain that can erupt with lava and ash?', NULL,
        'A volcano', ARRAY['A geyser', 'A glacier', 'A canyon', 'A mesa', 'A butte', 'A fjord'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'At sea level, water boils at how many degrees Celsius?', NULL,
        '100', ARRAY['50', '80', '90', '110', '120', '150'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What causes the sound of thunder?', NULL,
        'Lightning heating the air', ARRAY['Clouds bumping together', 'Raindrops colliding', 'Wind hitting mountains', 'Hail striking the ground', 'Air pressure dropping', 'The Earth''s magnetism'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'How many colors are traditionally named in a rainbow?', NULL,
        'Seven', ARRAY['Four', 'Five', 'Six', 'Eight', 'Nine', 'Ten'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'A magnet has a north pole and what other pole?', NULL,
        'A south pole', ARRAY['An east pole', 'A west pole', 'A negative pole', 'A positive pole', 'A bottom pole', 'A center pole'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What color do you get by mixing blue and yellow paint?', NULL,
        'Green', ARRAY['Purple', 'Orange', 'Brown', 'Pink', 'Gray', 'Red'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call balls or lumps of ice that fall during a thunderstorm?', NULL,
        'Hail', ARRAY['Sleet', 'Snow', 'Frost', 'Rime', 'Drizzle', 'Dew'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'A seesaw is which kind of simple machine?', NULL,
        'A lever', ARRAY['A pulley', 'A wedge', 'A screw', 'A wheel and axle', 'An inclined plane', 'A gear'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which kind of tree grows acorns?', NULL,
        'An oak', ARRAY['A maple', 'A pine', 'An elm', 'A birch', 'A walnut', 'A willow'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is a group of wolves called?', NULL,
        'A pack', ARRAY['A pride', 'A herd', 'A flock', 'A school', 'A swarm', 'A gaggle'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'When bees move pollen from flower to flower, helping plants make seeds, what is it called?', NULL,
        'Pollination', ARRAY['Germination', 'Photosynthesis', 'Hibernation', 'Migration', 'Metamorphosis', 'Transpiration'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the main gas found in the air we breathe, by volume?', NULL,
        'Nitrogen', ARRAY['Oxygen', 'Carbon dioxide', 'Hydrogen', 'Helium', 'Argon', 'Methane'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the chemical symbol for gold?', NULL,
        'Au', ARRAY['Ag', 'Gd', 'Go', 'Gl', 'Fe', 'Pb'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the hardest natural substance on Earth?', NULL,
        'Diamond', ARRAY['Quartz', 'Granite', 'Steel', 'Obsidian', 'Titanium', 'Emerald'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What type of animal is a Komodo dragon?', NULL,
        'A lizard', ARRAY['A snake', 'A crocodile', 'A dinosaur', 'A turtle', 'An amphibian', 'A salamander'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the process by which water turns into vapor called?', NULL,
        'Evaporation', ARRAY['Condensation', 'Precipitation', 'Sublimation', 'Filtration', 'Dissolution', 'Erosion'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the freezing point of water in degrees Celsius?', NULL,
        '0', ARRAY['32', '100', '-32', '10', '-10', '4'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is commonly called the "powerhouse of the cell"?', NULL,
        'Mitochondria', ARRAY['Nucleus', 'Ribosome', 'Golgi apparatus', 'Chloroplast', 'Cytoplasm', 'Vacuole'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which element has the atomic number 1?', NULL,
        'Hydrogen', ARRAY['Helium', 'Oxygen', 'Carbon', 'Nitrogen', 'Lithium', 'Boron'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the study of weather and atmospheric conditions called?', NULL,
        'Meteorology', ARRAY['Geology', 'Astronomy', 'Oceanography', 'Seismology', 'Climatology', 'Hydrology'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which blood cells are primarily responsible for fighting infection?', NULL,
        'White blood cells', ARRAY['Red blood cells', 'Platelets', 'Plasma cells', 'Stem cells', 'Nerve cells', 'Muscle cells'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which vitamin is primarily produced by the body through sun exposure?', NULL,
        'Vitamin D', ARRAY['Vitamin C', 'Vitamin A', 'Vitamin B12', 'Vitamin E', 'Vitamin K', 'Vitamin B6'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the term for an animal that is active mainly at night?', NULL,
        'Nocturnal', ARRAY['Diurnal', 'Crepuscular', 'Hibernal', 'Migratory', 'Dormant', 'Arboreal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What pH value represents a perfectly neutral substance?', NULL,
        '7', ARRAY['0', '14', '1', '10', '5', '12'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which subatomic particle carries a negative electric charge?', NULL,
        'Electron', ARRAY['Proton', 'Neutron', 'Positron', 'Photon', 'Quark', 'Neutrino'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Besides solid, liquid and gas, which state of matter is found in lightning and the Sun?', NULL,
        'Plasma', ARRAY['Vapor', 'Ether', 'Foam', 'Gel', 'Crystal', 'Aerosol'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'A straw looks bent in a glass of water. What bending of light causes that?', NULL,
        'Refraction', ARRAY['Reflection', 'Diffraction', 'Dispersion', 'Absorption', 'Polarization', 'Interference'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What green pigment lets plants capture sunlight?', NULL,
        'Chlorophyll', ARRAY['Carotene', 'Melanin', 'Hemoglobin', 'Xanthophyll', 'Chlorine', 'Keratin'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'A ramp is which of the six classic simple machines?', NULL,
        'The inclined plane', ARRAY['The lever', 'The wedge', 'The pulley', 'The screw', 'The wheel and axle'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What is the only mammal capable of true, flapping flight?', NULL,
        'The bat', ARRAY['The flying squirrel', 'The sugar glider', 'The colugo', 'The pterodactyl', 'The platypus', 'The lemur'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which Russian scientist trained dogs to drool at a signal that meant food was coming?', NULL,
        'Ivan Pavlov', ARRAY['Sigmund Freud', 'B.F. Skinner', 'Carl Jung', 'Dmitri Mendeleev', 'Louis Pasteur', 'Wilhelm Wundt'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the hardest substance in the human body?', NULL,
        'Tooth enamel', ARRAY['Bone', 'Fingernail', 'Cartilage', 'Skull', 'Hair'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which layer high in the atmosphere shields us from most of the Sun''s ultraviolet rays?', NULL,
        'The ozone layer', ARRAY['The ionosphere', 'The troposphere', 'The magnetosphere', 'The cloud layer', 'The jet stream'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What kind of energy is stored in a stretched rubber band?', NULL,
        'Potential energy', ARRAY['Kinetic energy', 'Thermal energy', 'Nuclear energy', 'Sound energy', 'Light energy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Water droplets forming on a cold glass are an example of what?', NULL,
        'Condensation', ARRAY['Evaporation', 'Sublimation', 'Precipitation', 'Melting', 'Freezing'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a basic unit of heredity, passed from parent to child?', NULL,
        'A gene', ARRAY['A cell', 'An atom', 'A protein', 'An enzyme', 'A hormone'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'How many chambers does the human heart have?', NULL,
        'Four', ARRAY['Two', 'Three', 'Five', 'Six', 'Eight'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which part of a flower makes pollen?', NULL,
        'The stamen', ARRAY['The pistil', 'The petal', 'The sepal', 'The stem', 'The ovary'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Sound travels fastest through which of these?', NULL,
        'Steel', ARRAY['Water', 'Air', 'Wood', 'A vacuum'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which egg-laying mammal has a duck-like bill and venomous spurs on its back legs?', NULL,
        'The platypus', ARRAY['The echidna', 'The otter', 'The beaver', 'The mole', 'The opossum'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which layer of the Earth lies just beneath the crust?', NULL,
        'The mantle', ARRAY['The outer core', 'The inner core', 'The lithosphere', 'The bedrock', 'The magma chamber'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Table salt is made of sodium and which other element?', NULL,
        'Chlorine', ARRAY['Potassium', 'Calcium', 'Iodine', 'Fluorine', 'Sulfur', 'Magnesium'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which metal is used in most household electrical wiring because it carries electricity so well?', NULL,
        'Copper', ARRAY['Iron', 'Lead', 'Tin', 'Zinc', 'Nickel', 'Steel'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a material, like rubber, that doesn''t let electricity flow through it easily?', NULL,
        'An insulator', ARRAY['A conductor', 'A magnet', 'A battery', 'A semiconductor', 'A circuit', 'A capacitor'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a hot spring that shoots water and steam into the air, like Old Faithful?', NULL,
        'A geyser', ARRAY['A volcano', 'A fumarole', 'A waterfall', 'A crater', 'A sinkhole', 'A lagoon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What are the three primary colors of light?', NULL,
        'Red, green and blue', ARRAY['Red, yellow and blue', 'Cyan, magenta and yellow', 'Red, orange and violet', 'Green, yellow and blue', 'Red, white and blue', 'Orange, green and purple'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which instrument measures air pressure, to help forecast the weather?', NULL,
        'A barometer', ARRAY['A thermometer', 'An anemometer', 'A hygrometer', 'A seismograph', 'A rain gauge', 'A sextant'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call the energy an object has because it is moving?', NULL,
        'Kinetic energy', ARRAY['Potential energy', 'Thermal energy', 'Chemical energy', 'Nuclear energy', 'Elastic energy', 'Static energy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Lemon juice and vinegar are examples of what kind of substance?', NULL,
        'Acids', ARRAY['Bases', 'Alkalis', 'Salts', 'Metals', 'Gases', 'Neutrals'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Roughly how much of Earth''s surface is covered by water?', NULL,
        'About 70%', ARRAY['About 30%', 'About 40%', 'About 50%', 'About 60%', 'About 85%', 'About 95%'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a huge mass of ice that slowly flows over land?', NULL,
        'A glacier', ARRAY['An iceberg', 'A tundra', 'Permafrost', 'An ice floe', 'A snowfield', 'An avalanche'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a substance made of only one kind of atom, like gold?', NULL,
        'An element', ARRAY['A compound', 'A mixture', 'A solution', 'An alloy', 'An ion', 'A crystal'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call an animal''s long seasonal journey, like geese flying south for the winter?', NULL,
        'Migration', ARRAY['Hibernation', 'Metamorphosis', 'Navigation', 'Molting', 'Nesting', 'Pollination'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call the warming caused by gases like carbon dioxide trapping heat in the atmosphere?', NULL,
        'The greenhouse effect', ARRAY['The ozone effect', 'Global dimming', 'The albedo effect', 'The Coriolis effect', 'El Niño', 'The urban heat island effect'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which part of the Earth is made mostly of iron and nickel?', NULL,
        'The core', ARRAY['The crust', 'The mantle', 'The lithosphere', 'The asthenosphere', 'The tectonic plates', 'The magma chambers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What are the giant slabs that make up Earth''s rocky outer shell called?', NULL,
        'Tectonic plates', ARRAY['Fault blocks', 'Continental shelves', 'Magma chambers', 'Ocean trenches', 'Lava domes', 'Rock strata'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'A rainbow forms when sunlight is bent and split by what?', NULL,
        'Raindrops', ARRAY['Clouds', 'Dust', 'Snowflakes', 'Fog', 'Smoke', 'Lightning'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which gas glows red-orange in classic advertising signs?', NULL,
        'Neon', ARRAY['Argon', 'Helium', 'Krypton', 'Xenon', 'Radon', 'Hydrogen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Spiders, scorpions and ticks belong to which group of animals?', NULL,
        'Arachnids', ARRAY['Insects', 'Crustaceans', 'Myriapods', 'Reptiles', 'Annelids', 'Mollusks'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What kind of scientist digs up and studies dinosaur fossils?', NULL,
        'A paleontologist', ARRAY['An archaeologist', 'A geologist', 'A zoologist', 'An anthropologist', 'A historian', 'A herpetologist'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Most materials do what when they are heated?', NULL,
        'They expand', ARRAY['They shrink', 'They get heavier', 'They become magnetic', 'They lose mass', 'They change color', 'They harden'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Approximately how fast does light travel in a vacuum?', NULL,
        '300,000 km per second', ARRAY['150,000 km per second', '3,000 km per second', '1,000,000 km per second', '500,000 km per second', '30,000 km per second', '100,000 km per second'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which blood type is known as the universal donor?', NULL,
        'O negative', ARRAY['AB positive', 'A positive', 'B negative', 'O positive', 'AB negative', 'A negative'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the scientific study of fungi called?', NULL,
        'Mycology', ARRAY['Botany', 'Zoology', 'Entomology', 'Virology', 'Ecology', 'Geology'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What type of rock is formed from cooled magma or lava?', NULL,
        'Igneous', ARRAY['Sedimentary', 'Metamorphic', 'Mineral', 'Organic', 'Composite', 'Crystalline'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the only metal that is liquid at standard room temperature?', NULL,
        'Mercury', ARRAY['Lead', 'Tin', 'Gallium', 'Bismuth', 'Zinc', 'Sodium'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which organ produces insulin in the human body?', NULL,
        'Pancreas', ARRAY['Liver', 'Kidney', 'Spleen', 'Gallbladder', 'Thyroid', 'Adrenal gland'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Dry ice turns straight from a solid into a gas. What is that change called?', NULL,
        'Sublimation', ARRAY['Evaporation', 'Condensation', 'Deposition', 'Melting', 'Vaporization', 'Ionization'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'What is an object''s resistance to any change in its motion called?', NULL,
        'Inertia', ARRAY['Momentum', 'Friction', 'Gravity', 'Torque', 'Velocity', 'Acceleration'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'A houseplant bending toward a sunny window is an example of what?', NULL,
        'Phototropism', ARRAY['Photosynthesis', 'Gravitropism', 'Thigmotropism', 'Transpiration', 'Photoperiodism', 'Osmosis'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'PRIMARY_SCHOOL_FOLD_1', NULL,
        'Which organ makes bile, which helps digest fat?', NULL,
        'Liver', ARRAY['Gallbladder', 'Pancreas', 'Spleen', 'Stomach', 'Kidney', 'Appendix'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Who discovered penicillin in 1928?', NULL,
        'Alexander Fleming', ARRAY['Louis Pasteur', 'Joseph Lister', 'Edward Jenner', 'Robert Koch', 'Howard Florey', 'Jonas Salk'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Who is the only person to win Nobel Prizes in two different sciences, physics and chemistry?', NULL,
        'Marie Curie', ARRAY['Linus Pauling', 'Lise Meitner', 'Rosalind Franklin', 'Dorothy Hodgkin', 'Niels Bohr', 'Ernest Rutherford'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which element has the chemical symbol Na?', NULL,
        'Sodium', ARRAY['Nitrogen', 'Nickel', 'Neon', 'Potassium', 'Magnesium', 'Nobelium'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'In Einstein''s E = mc², what does the "c" stand for?', NULL,
        'The speed of light', ARRAY['The charge of an electron', 'A constant of 1', 'Calories', 'Electric current', 'Degrees Celsius', 'The mass of the core'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which monk is called the father of genetics for his experiments with pea plants?', NULL,
        'Gregor Mendel', ARRAY['Charles Darwin', 'Louis Pasteur', 'Carl Linnaeus', 'Alfred Russel Wallace', 'Francis Crick', 'Jean-Baptiste Lamarck'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which ancient Greek supposedly leapt from his bath shouting "Eureka!"?', NULL,
        'Archimedes', ARRAY['Pythagoras', 'Euclid', 'Aristotle', 'Plato', 'Hippocrates', 'Ptolemy'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'How many hearts does an octopus have?', NULL,
        'Three', ARRAY['One', 'Two', 'Four', 'Five', 'Eight', 'Nine'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'The killer whale, or orca, is actually the largest member of which family?', NULL,
        'The dolphins', ARRAY['The sharks', 'The porpoises', 'The seals', 'The baleen whales', 'The sea lions', 'The sperm whales'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What kind of animal is a seahorse?', NULL,
        'A fish', ARRAY['A crustacean', 'A mollusk', 'A reptile', 'An amphibian', 'A coral', 'A jellyfish'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Whose famous thought experiment imagines a cat in a box that is both alive and dead?', NULL,
        'Erwin Schrödinger', ARRAY['Werner Heisenberg', 'Albert Einstein', 'Niels Bohr', 'Max Planck', 'Richard Feynman', 'Stephen Hawking'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the study of earthquakes called?', NULL,
        'Seismology', ARRAY['Volcanology', 'Meteorology', 'Paleontology', 'Oceanography', 'Mineralogy'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Sandstone and limestone, formed in layers from pressed-together grains, are which type of rock?', NULL,
        'Sedimentary', ARRAY['Igneous', 'Metamorphic', 'Volcanic', 'Magmatic', 'Crystalline'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the metric unit of force, named for a famous English scientist?', NULL,
        'The newton', ARRAY['The joule', 'The watt', 'The pascal', 'The volt', 'The kelvin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the chemical symbol for iron?', NULL,
        'Fe', ARRAY['Ir', 'In', 'I', 'Fr', 'F'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the largest muscle in the human body?', NULL,
        'Gluteus maximus', ARRAY['Quadriceps', 'Latissimus dorsi', 'Biceps', 'Hamstring', 'Deltoid'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the scientific name for the kneecap?', NULL,
        'Patella', ARRAY['Tibia', 'Fibula', 'Clavicle', 'Scapula', 'Sternum'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'In which part of a plant cell does photosynthesis take place?', NULL,
        'The chloroplast', ARRAY['The mitochondrion', 'The nucleus', 'The vacuole', 'The cell wall', 'The ribosome'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which kind of cell division makes two identical copies of a cell?', NULL,
        'Mitosis', ARRAY['Meiosis', 'Osmosis', 'Fermentation', 'Respiration', 'Diffusion'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the point on the surface directly above where an earthquake starts called?', NULL,
        'The epicenter', ARRAY['The fault line', 'The hypocenter', 'The aftershock', 'The seismograph', 'The tremor zone'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What was the name of the supercontinent that began breaking apart about 200 million years ago?', NULL,
        'Pangaea', ARRAY['Gondwana', 'Laurasia', 'Rodinia', 'Atlantis', 'Lemuria'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which tall, dark cloud brings thunderstorms?', NULL,
        'Cumulonimbus', ARRAY['Cirrus', 'Stratus', 'Cumulus', 'Nimbostratus', 'Altocumulus', 'Cirrostratus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Brass is an alloy made mainly of copper and which other metal?', NULL,
        'Zinc', ARRAY['Tin', 'Iron', 'Nickel', 'Lead', 'Aluminum', 'Silver'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'A shark''s skeleton is made of what?', NULL,
        'Cartilage', ARRAY['Bone', 'Keratin', 'Chitin', 'Coral', 'Enamel', 'Ivory'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Roughly how fast does sound travel through air at room temperature?', NULL,
        'About 343 meters per second', ARRAY['About 34 meters per second', 'About 100 meters per second', 'About 900 meters per second', 'About 1,500 meters per second', 'About 3,430 meters per second', 'About 34,300 meters per second'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the chemical symbol for potassium?', NULL,
        'K', ARRAY['P', 'Po', 'Pt', 'Pb', 'Kr', 'Ca'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which element, atomic number 6, is the backbone of all known life?', NULL,
        'Carbon', ARRAY['Nitrogen', 'Oxygen', 'Hydrogen', 'Silicon', 'Calcium', 'Phosphorus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the unit of electrical resistance?', NULL,
        'The ohm', ARRAY['The volt', 'The ampere', 'The watt', 'The joule', 'The coulomb', 'The farad'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which law says energy can''t be created or destroyed, only changed from one form to another?', NULL,
        'The conservation of energy', ARRAY['The conservation of mass', 'Newton''s first law', 'Ohm''s law', 'Hooke''s law', 'Boyle''s law', 'The law of universal gravitation'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which layer of the atmosphere do we live in, where almost all weather happens?', NULL,
        'The troposphere', ARRAY['The stratosphere', 'The mesosphere', 'The thermosphere', 'The exosphere', 'The ionosphere', 'The ozone layer'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'California''s San Andreas Fault is a boundary where two tectonic plates do what?', NULL,
        'Slide past each other', ARRAY['Pull apart', 'Collide head-on', 'Dive under each other', 'Stack on top of each other', 'Spin in place', 'Stay perfectly still'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'A tsunami is most often caused by what?', NULL,
        'An undersea earthquake', ARRAY['A hurricane', 'A full moon', 'Strong winds', 'A meteor strike', 'Melting glaciers', 'An unusually high tide'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which acid does your stomach make to help digest food?', NULL,
        'Hydrochloric acid', ARRAY['Sulfuric acid', 'Citric acid', 'Acetic acid', 'Lactic acid', 'Nitric acid', 'Carbonic acid'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Kangaroos, koalas and wombats are which kind of mammal?', NULL,
        'Marsupials', ARRAY['Monotremes', 'Rodents', 'Primates', 'Pinnipeds', 'Ungulates', 'Placentals'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the largest species of shark?', NULL,
        'The whale shark', ARRAY['The great white shark', 'The basking shark', 'The tiger shark', 'The hammerhead shark', 'The bull shark', 'The mako shark'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the name for the change in pitch you hear as a siren races past?', NULL,
        'The Doppler effect', ARRAY['The Coriolis effect', 'The greenhouse effect', 'The butterfly effect', 'The photoelectric effect', 'Resonance', 'Echolocation'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which particle in an atom''s nucleus has no electric charge?', NULL,
        'The neutron', ARRAY['The proton', 'The electron', 'The positron', 'The quark', 'The ion', 'The isotope'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Marble forms when limestone is changed by heat and pressure. What type of rock is marble?', NULL,
        'Metamorphic', ARRAY['Igneous', 'Sedimentary', 'Volcanic', 'Plutonic', 'Basaltic', 'Crystalline'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the everyday name for sodium bicarbonate?', NULL,
        'Baking soda', ARRAY['Baking powder', 'Table salt', 'Washing soda', 'Epsom salt', 'Cream of tartar', 'Borax'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Dentists use nitrous oxide to relax patients. What is its nickname?', NULL,
        'Laughing gas', ARRAY['Tear gas', 'Swamp gas', 'Sleeping gas', 'Mustard gas', 'Happy air', 'Dream gas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which American scientist developed the first widely used polio vaccine, in 1955?', NULL,
        'Jonas Salk', ARRAY['Albert Sabin', 'Louis Pasteur', 'Edward Jenner', 'Robert Koch', 'Walter Reed', 'Alexander Fleming'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the name of the process plants use to lose water vapor through their leaves?', NULL,
        'Transpiration', ARRAY['Respiration', 'Photosynthesis', 'Germination', 'Pollination', 'Osmosis', 'Fermentation'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Animals most active at dawn and dusk, like deer and rabbits, are described as what?', NULL,
        'Crepuscular', ARRAY['Nocturnal', 'Diurnal', 'Cathemeral', 'Arboreal', 'Fossorial', 'Migratory'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which element has the chemical symbol W?', NULL,
        'Tungsten', ARRAY['Tin', 'Titanium', 'Vanadium', 'Zinc', 'Xenon', 'Cobalt'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What is the smallest bone in the human body, found in the middle ear?', NULL,
        'The stapes', ARRAY['The incus', 'The malleus', 'The hyoid', 'The coccyx', 'The lunate', 'The vomer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Who devised the two-part Latin naming of species, as in Homo sapiens?', NULL,
        'Carl Linnaeus', ARRAY['Charles Darwin', 'Gregor Mendel', 'Aristotle', 'Georges Cuvier', 'Alexander von Humboldt', 'Jean-Baptiste Lamarck'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which Russian chemist published the first widely recognized periodic table, in 1869?', NULL,
        'Dmitri Mendeleev', ARRAY['Antoine Lavoisier', 'John Dalton', 'Ivan Pavlov', 'Mikhail Lomonosov', 'Niels Bohr', 'Robert Boyle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What is the most abundant element in Earth''s crust, by mass?', NULL,
        'Oxygen', ARRAY['Silicon', 'Iron', 'Aluminum', 'Carbon', 'Calcium', 'Nitrogen'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Whose gold foil experiment showed that atoms have a tiny, dense center?', NULL,
        'Ernest Rutherford', ARRAY['J.J. Thomson', 'Niels Bohr', 'Max Planck', 'James Chadwick', 'Enrico Fermi', 'Marie Curie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        '"Photo 51," an X-ray image made in Rosalind Franklin''s lab, was key to working out the structure of what?', NULL,
        'DNA', ARRAY['Insulin', 'Hemoglobin', 'Penicillin', 'Cholesterol', 'Glucose', 'Vitamin B12'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'At what temperature do the Celsius and Fahrenheit scales show the same number?', NULL,
        '-40', ARRAY['0', '-32', '32', '100', '-100', '40'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'The Venus flytrap grows wild only in a small area of which two U.S. states?', NULL,
        'North and South Carolina', ARRAY['Florida and Georgia', 'Louisiana and Mississippi', 'Oregon and Washington', 'Arizona and New Mexico', 'Virginia and Maryland', 'Alabama and Tennessee'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'The spice saffron comes from which flower?', NULL,
        'Crocus', ARRAY['Marigold', 'Tulip', 'Lily', 'Dandelion', 'Sunflower', 'Poppy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What are the tiny pores on a leaf that let gases in and out called?', NULL,
        'Stomata', ARRAY['Xylem', 'Phloem', 'Chloroplasts', 'Cuticles', 'Lenticels', 'Root hairs'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Tiny, nearly indestructible tardigrades are better known by what nickname?', NULL,
        'Water bears', ARRAY['Sea monkeys', 'Sea butterflies', 'Water boatmen', 'Space fleas', 'Glass shrimp', 'Sand puppies'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Whose uncertainty principle says you can''t know a particle''s exact position and momentum at once?', NULL,
        'Werner Heisenberg', ARRAY['Erwin Schrödinger', 'Max Planck', 'Niels Bohr', 'Wolfgang Pauli', 'Max Born', 'Paul Dirac'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What is the one temperature and pressure at which a substance can exist as solid, liquid and gas at once?', NULL,
        'The triple point', ARRAY['The critical point', 'The boiling point', 'The dew point', 'The melting point', 'The saturation point', 'The flash point'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Which part of the brain mainly controls balance and coordination?', NULL,
        'The cerebellum', ARRAY['The cerebrum', 'The hippocampus', 'The medulla oblongata', 'The hypothalamus', 'The frontal lobe', 'The amygdala'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Who made the first vaccine, against smallpox, using material from cowpox?', NULL,
        'Edward Jenner', ARRAY['Louis Pasteur', 'Jonas Salk', 'Joseph Lister', 'Robert Koch', 'Alexander Fleming', 'William Harvey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'What does a herpetologist study?', NULL,
        'Reptiles and amphibians', ARRAY['Insects', 'Birds', 'Skin diseases', 'Fungi', 'Spiders', 'Fish'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'SCIENCE_NATURE_BATCH_1', NULL,
        'Bamboo, which can grow almost a meter in a day, is a giant type of what?', NULL,
        'Grass', ARRAY['Tree', 'Shrub', 'Fern', 'Palm', 'Vine', 'Moss'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Who first described cells, after looking at a slice of cork in 1665?', NULL,
        'Robert Hooke', ARRAY['Antonie van Leeuwenhoek', 'Robert Boyle', 'Isaac Newton', 'Louis Pasteur', 'Galileo Galilei'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'To the nearest degree, what is absolute zero on the Celsius scale?', NULL,
        '-273', ARRAY['-100', '-196', '-212', '-300', '-459'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What type of chemical bond forms when two atoms share electrons?', NULL,
        'Covalent', ARRAY['Ionic', 'Metallic', 'Hydrogen', 'Magnetic', 'Nuclear'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What does DNA stand for?', NULL,
        'Deoxyribonucleic acid', ARRAY['Dinitrogen acid', 'Deoxyribose nitrate', 'Dual nucleic acid', 'Dextronucleic acid', 'Diribonucleic acid'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which body system includes the thyroid, the pituitary and the adrenal glands?', NULL,
        'The endocrine system', ARRAY['The lymphatic system', 'The nervous system', 'The digestive system', 'The immune system', 'The circulatory system'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which German scientist proposed continental drift in 1912?', NULL,
        'Alfred Wegener', ARRAY['Charles Lyell', 'James Hutton', 'Alexander von Humboldt', 'Max Planck', 'Charles Richter'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Water moving through a membrane toward the side with more dissolved salt or sugar is called what?', NULL,
        'Osmosis', ARRAY['Diffusion', 'Filtration', 'Transpiration', 'Capillary action', 'Active transport'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which scale, created in 1812, ranks minerals'' hardness from talc at 1 to diamond at 10?', NULL,
        'The Mohs scale', ARRAY['The Richter scale', 'The Beaufort scale', 'The Kelvin scale', 'The pH scale', 'The Fujita scale'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the only bird known to be able to fly backwards?', NULL,
        'The hummingbird', ARRAY['The swift', 'The kingfisher', 'The kestrel', 'The swallow', 'The dragonfly'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call an animal that keeps a steady body temperature from the inside, like mammals and birds?', NULL,
        'Endotherm', ARRAY['Ectotherm', 'Poikilotherm', 'Thermophile', 'Exotherm', 'Isotherm'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'After diamond, which mineral is the hardest on the Mohs scale? Rubies and sapphires are forms of it.', NULL,
        'Corundum', ARRAY['Topaz', 'Quartz', 'Garnet', 'Beryl', 'Feldspar', 'Jade'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'After nitrogen and oxygen, which gas makes up the most of Earth''s dry air?', NULL,
        'Argon', ARRAY['Carbon dioxide', 'Neon', 'Helium', 'Hydrogen', 'Methane', 'Ozone'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the effect that makes winds and ocean currents curve because the Earth is spinning?', NULL,
        'The Coriolis effect', ARRAY['The Doppler effect', 'The Bernoulli effect', 'The Magnus effect', 'Centrifugal force', 'The jet stream', 'The trade winds'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'In the acronym LASER, "Light Amplification by S___ Emission of Radiation," what is the S?', NULL,
        'Stimulated', ARRAY['Spontaneous', 'Solar', 'Synthetic', 'Spectral', 'Scattered', 'Sustained'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which Danish physicist pictured the atom with electrons circling the nucleus in fixed orbits, in 1913?', NULL,
        'Niels Bohr', ARRAY['Ernest Rutherford', 'J.J. Thomson', 'Max Planck', 'Enrico Fermi', 'Werner Heisenberg', 'Erwin Schrödinger'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which French physicist discovered radioactivity in uranium and shared a 1903 Nobel Prize with the Curies?', NULL,
        'Henri Becquerel', ARRAY['Wilhelm Röntgen', 'Ernest Rutherford', 'Niels Bohr', 'Antoine Lavoisier', 'Max Planck', 'Paul Langevin'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which French chemist, often called the father of modern chemistry, gave oxygen and hydrogen their names?', NULL,
        'Antoine Lavoisier', ARRAY['Dmitri Mendeleev', 'Robert Boyle', 'John Dalton', 'Louis Pasteur', 'Joseph Priestley', 'Henry Cavendish'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which element has the chemical symbol Sn?', NULL,
        'Tin', ARRAY['Silicon', 'Strontium', 'Selenium', 'Antimony', 'Scandium', 'Zinc'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What is the name for a summer dormancy some animals use to survive heat and drought?', NULL,
        'Estivation', ARRAY['Hibernation', 'Brumation', 'Migration', 'Molting', 'Hypothermia', 'Lethargy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Hyperion, the tallest known living tree, is which species?', NULL,
        'The coast redwood', ARRAY['The giant sequoia', 'The Douglas fir', 'The Sitka spruce', 'The mountain ash', 'The baobab', 'The kapok'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which ancient Greek first estimated Earth''s circumference by comparing shadows in two Egyptian cities?', NULL,
        'Eratosthenes', ARRAY['Archimedes', 'Ptolemy', 'Aristotle', 'Pythagoras', 'Euclid', 'Hipparchus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which element was spotted in the Sun''s light before it was found on Earth, and is named after the Greek word for Sun?', NULL,
        'Helium', ARRAY['Hydrogen', 'Neon', 'Argon', 'Radon', 'Selenium', 'Xenon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Albert Einstein''s Nobel Prize in Physics was awarded for his work on what?', NULL,
        'The photoelectric effect', ARRAY['The theory of relativity', 'E = mc²', 'Brownian motion', 'Quantum mechanics', 'The atomic bomb', 'Gravitational waves'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which DuPont chemist invented Kevlar, the fiber in bulletproof vests, in 1965?', NULL,
        'Stephanie Kwolek', ARRAY['Wallace Carothers', 'Rosalind Franklin', 'Dorothy Hodgkin', 'Barbara McClintock', 'Gertrude Elion', 'Marie Curie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Frost forming on a cold window turns a gas straight into a solid. What is that change called?', NULL,
        'Deposition', ARRAY['Sublimation', 'Condensation', 'Crystallization', 'Freezing', 'Precipitation', 'Solidification'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which metal is the best conductor of electricity?', NULL,
        'Silver', ARRAY['Copper', 'Gold', 'Aluminum', 'Platinum', 'Iron', 'Mercury'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Bumping your "funny bone" actually hits which nerve?', NULL,
        'The ulnar nerve', ARRAY['The radial nerve', 'The median nerve', 'The sciatic nerve', 'The vagus nerve', 'The femoral nerve', 'The optic nerve'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Under its white-looking fur, what color is a polar bear''s skin?', NULL,
        'Black', ARRAY['White', 'Pink', 'Gray', 'Brown', 'Yellow', 'Blue'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'Which gas gives rotten eggs their smell?', NULL,
        'Hydrogen sulfide', ARRAY['Methane', 'Ammonia', 'Sulfur dioxide', 'Chlorine', 'Carbon monoxide', 'Ozone'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'SCIENCE_NATURE', 'ORIGINAL', NULL,
        'What do we call a substance that speeds up a chemical reaction without being used up itself?', NULL,
        'A catalyst', ARRAY['A solvent', 'A reactant', 'An inhibitor', 'A buffer', 'A precipitate', 'A polymer'], 400);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SCIENCE_NATURE';
