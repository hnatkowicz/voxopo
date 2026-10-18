-- ============================================================================
-- content/sql/science_nature.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/science_nature.csv, the master copy of the
-- Thinking Pants category SCIENCE_NATURE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
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

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'SCIENCE_NATURE';
