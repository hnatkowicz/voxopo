-- ============================================================================
-- content/sql/cell_mates.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/cell_mates.csv, the master copy of the
-- Thinking Pants category CELL_MATES. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 240 live questions
-- (100: 60, 200: 60, 300: 60, 400: 60), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'CELL_MATES';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the smallest unit of life that can live on its own?', NULL,
        'The cell', ARRAY['The atom', 'The molecule', 'The organ', 'The tissue', 'The gene'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organs do you breathe with?', NULL,
        'The lungs', ARRAY['The kidneys', 'The heart', 'The liver', 'The stomach', 'The intestines'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which blood cells carry oxygen around your body?', NULL,
        'Red blood cells', ARRAY['White blood cells', 'Platelets', 'Plasma', 'Nerve cells', 'Stem cells'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ inside your skull lets you think, remember and feel?', NULL,
        'The brain', ARRAY['The heart', 'The spine', 'The lungs', 'The liver', 'The thyroid'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a baby goat called?', NULL,
        'A kid', ARRAY['A calf', 'A foal', 'A lamb', 'A cub', 'A joey'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the largest land animal?', NULL,
        'The African elephant', ARRAY['The hippopotamus', 'The white rhinoceros', 'The giraffe', 'The polar bear', 'The bison'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which lizard is famous for changing its color?', NULL,
        'The chameleon', ARRAY['The iguana', 'The gecko', 'The Komodo dragon', 'The skink', 'The Gila monster'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What kind of animal is a whale?', NULL,
        'A mammal', ARRAY['A fish', 'An amphibian', 'A reptile', 'A crustacean'], 100, 'A whale''s closest living relative on land is the hippo.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call an animal that hunts other animals for food?', NULL,
        'A predator', ARRAY['Prey', 'A parasite', 'A grazer', 'A decomposer', 'A host'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call the natural home of a plant or animal?', NULL,
        'Its habitat', ARRAY['Its niche', 'Its colony', 'Its territory', 'Its den', 'Its nest'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ churns and starts digesting your food after you swallow it?', NULL,
        'The stomach', ARRAY['The liver', 'The kidneys', 'The lungs', 'The pancreas', 'The bladder'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of a plant soaks up water from the soil?', NULL,
        'The roots', ARRAY['The leaves', 'The stem', 'The flowers', 'The seeds', 'The bark'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which body system is made up of your bones?', NULL,
        'The skeletal system', ARRAY['The muscular system', 'The nervous system', 'The digestive system', 'The circulatory system', 'The immune system'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Where are most of your taste buds?', NULL,
        'On your tongue', ARRAY['In your nose', 'On your lips', 'On the roof of your mouth', 'In your throat', 'On your teeth'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal is famous for building dams across streams?', NULL,
        'The beaver', ARRAY['The otter', 'The muskrat', 'The raccoon', 'The badger', 'The squirrel'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a scientist who studies living things?', NULL,
        'A biologist', ARRAY['A geologist', 'A chemist', 'A physicist', 'An astronomer', 'A meteorologist'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do giant pandas eat almost all the time?', NULL,
        'Bamboo', ARRAY['Eucalyptus', 'Fish', 'Berries', 'Grass', 'Insects'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals that eat mostly meat?', NULL,
        'Carnivores', ARRAY['Herbivores', 'Omnivores', 'Frugivores', 'Granivores', 'Detritivores'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal is nicknamed the "ship of the desert"?', NULL,
        'The camel', ARRAY['The horse', 'The donkey', 'The llama', 'The ostrich', 'The elephant'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sea animal has eight arms and can squirt ink?', NULL,
        'The octopus', ARRAY['The squid', 'The starfish', 'The jellyfish', 'The crab', 'The sea urchin'], 100, 'An octopus has three hearts and blue blood.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a kind of animal, like the dodo, that no longer lives anywhere on Earth?', NULL,
        'Extinct', ARRAY['Endangered', 'Threatened', 'Invasive', 'Dormant', 'Migrated'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sense do the nerves in your skin give you?', NULL,
        'Touch', ARRAY['Taste', 'Smell', 'Hearing', 'Sight', 'Balance'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a group of fish swimming together called?', NULL,
        'A school', ARRAY['A pod', 'A herd', 'A flock', 'A gaggle', 'A pride'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which masked animal with a ringed tail is famous for "washing" its food?', NULL,
        'The raccoon', ARRAY['The opossum', 'The red panda', 'The lemur', 'The badger', 'The ferret'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which slow, slimy animal carries its shell on its back?', NULL,
        'The snail', ARRAY['The slug', 'The turtle', 'The crab', 'The clam', 'The worm'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'About how long does a human pregnancy last?', NULL,
        'Nine months', ARRAY['Six months', 'Seven months', 'Twelve months', 'Fourteen months', 'Five months'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the everyday word for an animal, like a lizard, whose body temperature follows its surroundings?', NULL,
        'Cold-blooded', ARRAY['Warm-blooded', 'Hot-blooded', 'Thick-skinned', 'Thin-blooded', 'Shell-backed'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name for the body system that fights germs and disease?', NULL,
        'The immune system', ARRAY['The endocrine system', 'The nervous system', 'The digestive system', 'The skeletal system', 'The respiratory system'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organs let fish take oxygen from water?', NULL,
        'Gills', ARRAY['Fins', 'Scales', 'Lungs', 'Swim bladders', 'Spiracles'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which rainforest mammal is famous for being the slowest, spending most of its life hanging in trees?', NULL,
        'The sloth', ARRAY['The koala', 'The tree kangaroo', 'The lemur', 'The tapir', 'The armadillo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which blood vessels carry blood back to your heart?', NULL,
        'Veins', ARRAY['Arteries', 'Nerves', 'Tendons', 'Ligaments', 'Muscles'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the bony "helmet" of your head called?', NULL,
        'The skull', ARRAY['The pelvis', 'The spine', 'The jaw', 'The scalp', 'The collarbone'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which part of a plant makes most of its food using sunlight?', NULL,
        'The leaves', ARRAY['The roots', 'The stem', 'The flowers', 'The seeds', 'The bark'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do all mammal mothers feed their babies?', NULL,
        'Milk', ARRAY['Nectar', 'Seeds', 'Insects', 'Honey', 'Water'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Lizards, crocodiles and turtles are what kind of animal?', NULL,
        'Reptiles', ARRAY['Amphibians', 'Mammals', 'Fish', 'Insects', 'Birds'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Animals with six legs and three body parts, like ants and beetles, are called what?', NULL,
        'Insects', ARRAY['Spiders', 'Worms', 'Crustaceans', 'Mollusks', 'Reptiles'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do seeds need to sprout, besides warmth and air?', NULL,
        'Water', ARRAY['Salt', 'Darkness', 'Sugar', 'Sand', 'Snow'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a doctor who treats animals?', NULL,
        'A veterinarian', ARRAY['A pediatrician', 'A dentist', 'A pharmacist', 'A surgeon', 'An optometrist'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which sense is a dog''s strongest?', NULL,
        'Smell', ARRAY['Sight', 'Taste', 'Touch', 'Balance', 'Color vision'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which vitamin are oranges famous for?', NULL,
        'Vitamin C', ARRAY['Vitamin A', 'Vitamin D', 'Vitamin K', 'Vitamin B12', 'Vitamin E'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What bony cage in your chest protects your heart?', NULL,
        'The rib cage', ARRAY['The pelvis', 'The skull', 'The spine', 'The shoulder blade', 'The kneecap'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Colds and the flu are caused by what kind of germ?', NULL,
        'Viruses', ARRAY['Worms', 'Fungi', 'Molds', 'Parasites', 'Pollen'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is a group of cows called?', NULL,
        'A herd', ARRAY['A flock', 'A pack', 'A pod', 'A swarm', 'A gaggle'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which animal wriggles out of its old skin in one piece as it grows?', NULL,
        'A snake', ARRAY['A frog', 'A turtle', 'A fish', 'A bird', 'A rabbit'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What carries messages between your brain and the rest of your body?', NULL,
        'Nerves', ARRAY['Veins', 'Tendons', 'Bones', 'Muscles', 'Arteries'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What watery liquid in your mouth starts digesting food?', NULL,
        'Saliva', ARRAY['Bile', 'Mucus', 'Tears', 'Sweat', 'Plasma'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the black dot in the middle of your eye?', NULL,
        'The pupil', ARRAY['The iris', 'The lens', 'The retina', 'The cornea', 'The eyelid'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the process plants use to turn sunlight, water and air into food?', NULL,
        'Photosynthesis', ARRAY['Digestion', 'Evaporation', 'Pollination', 'Respiration', 'Germination'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What gas do plants give off that people need to breathe?', NULL,
        'Oxygen', ARRAY['Carbon dioxide', 'Nitrogen', 'Helium', 'Hydrogen', 'Methane'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Penguins, eagles and ostriches are all what kind of animal?', NULL,
        'Birds', ARRAY['Mammals', 'Reptiles', 'Amphibians', 'Fish', 'Insects'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'A sunflower''s tall green "trunk" is called what?', NULL,
        'The stem', ARRAY['The root', 'The petal', 'The bud', 'The branch', 'The bark'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a young plant just sprouting from a seed?', NULL,
        'A seedling', ARRAY['A sapling', 'A bulb', 'A spore', 'A shrub', 'A cutting'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the rough outer covering of a tree trunk called?', NULL,
        'Bark', ARRAY['Sap', 'Pith', 'Moss', 'Rind', 'Husk'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which mineral in dairy foods helps build strong bones and teeth?', NULL,
        'Calcium', ARRAY['Iron', 'Sodium', 'Zinc', 'Copper', 'Potassium'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What sticky stuff in your nose traps dust and germs?', NULL,
        'Mucus', ARRAY['Saliva', 'Sweat', 'Earwax', 'Plasma', 'Bile'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Pine and spruce trees that stay green all winter are called what?', NULL,
        'Evergreens', ARRAY['Deciduous', 'Perennials', 'Annuals', 'Hardwoods'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is a group of geese called?', NULL,
        'A gaggle', ARRAY['A herd', 'A pride', 'A pod', 'A swarm', 'A school'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What gas do people breathe out as waste?', NULL,
        'Carbon dioxide', ARRAY['Oxygen', 'Nitrogen', 'Helium', 'Hydrogen', 'Ozone'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call the salty drops your eyes make when you cry?', NULL,
        'Tears', ARRAY['Sweat', 'Mucus', 'Saliva', 'Plasma', 'Dew'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is a baby sheep called?', NULL,
        'A lamb', ARRAY['A kid', 'A calf', 'A foal', 'A cub', 'A piglet'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals with no backbone, like worms and jellyfish?', NULL,
        'Invertebrates', ARRAY['Vertebrates', 'Mammals', 'Amphibians', 'Reptiles', 'Marsupials'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the colored part of your eye called?', NULL,
        'The iris', ARRAY['The pupil', 'The retina', 'The cornea', 'The lens', 'The sclera'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest kind of penguin?', NULL,
        'The emperor penguin', ARRAY['The king penguin', 'The macaroni penguin', 'The gentoo penguin', 'The rockhopper penguin', 'The Adelie penguin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal''s black-and-white stripes are unique to each one, like a fingerprint?', NULL,
        'The zebra', ARRAY['The skunk', 'The badger', 'The tapir', 'The okapi', 'The panda'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny blood vessels that link arteries and veins called?', NULL,
        'Capillaries', ARRAY['Ventricles', 'Valves', 'Alveoli', 'Nephrons', 'Platelets'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals that are active during the day?', NULL,
        'Diurnal', ARRAY['Nocturnal', 'Crepuscular', 'Seasonal', 'Dormant', 'Migratory'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Strep throat is caused by which kind of microbe?', NULL,
        'Bacteria', ARRAY['A virus', 'A fungus', 'A parasite', 'Yeast', 'An amoeba'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Diving at over 200 miles an hour, which bird is the fastest animal on Earth?', NULL,
        'The peregrine falcon', ARRAY['The bald eagle', 'The golden eagle', 'The swift', 'The ostrich', 'The hummingbird'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which pointed teeth, named for dogs, are used for tearing food?', NULL,
        'Canines', ARRAY['Incisors', 'Molars', 'Premolars', 'Wisdom teeth', 'Fangs'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tube carries food from your throat down to your stomach?', NULL,
        'The esophagus', ARRAY['The trachea', 'The larynx', 'The aorta', 'The colon', 'The bronchus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the thin outer layer that controls what goes in and out of an animal cell?', NULL,
        'The cell membrane', ARRAY['The cell wall', 'The nucleus', 'The cytoplasm', 'The chloroplast', 'The vacuole'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'A tadpole turning into a frog is an example of what?', NULL,
        'Metamorphosis', ARRAY['Mutation', 'Hibernation', 'Evolution', 'Migration', 'Photosynthesis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many teeth does an adult human usually have, wisdom teeth included?', NULL,
        '32', ARRAY['28', '20', '36', '40', '24'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ stores urine until you go to the bathroom?', NULL,
        'The bladder', ARRAY['The kidneys', 'The gallbladder', 'The spleen', 'The appendix', 'The liver'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the largest artery in the human body?', NULL,
        'The aorta', ARRAY['The carotid', 'The femoral artery', 'The vena cava', 'The pulmonary vein', 'The jugular'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Carrots are famous for which vitamin, said to be good for your eyes?', NULL,
        'Vitamin A', ARRAY['Vitamin C', 'Vitamin B12', 'Vitamin E', 'Vitamin K', 'Vitamin B6'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny living fungus makes bread dough rise?', NULL,
        'Yeast', ARRAY['Mold', 'Bacteria', 'Algae', 'Baking soda', 'Flour mites'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a group of similar cells working together, like muscle or skin?', NULL,
        'A tissue', ARRAY['An organ', 'An organism', 'A system', 'A molecule', 'A colony'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sea creature has no brain, no heart and no bones, and is about 95% water?', NULL,
        'The jellyfish', ARRAY['The sea cucumber', 'The octopus', 'The starfish', 'The squid', 'The sea slug'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your windpipe?', NULL,
        'The trachea', ARRAY['The esophagus', 'The larynx', 'The pharynx', 'The bronchus', 'The aorta'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals, like vultures and hyenas, that feed on dead animals?', NULL,
        'Scavengers', ARRAY['Predators', 'Parasites', 'Herbivores', 'Producers', 'Pollinators'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call all the connected food chains in an ecosystem?', NULL,
        'A food web', ARRAY['A food pyramid', 'A life cycle', 'A habitat', 'A biome', 'A carbon cycle'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the bones of your spine called?', NULL,
        'Vertebrae', ARRAY['Ribs', 'Phalanges', 'Metacarpals', 'Carpals', 'Tarsals'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Where in the body are red blood cells made?', NULL,
        'In the bone marrow', ARRAY['In the heart', 'In the liver', 'In the spleen', 'In the kidneys', 'In the lungs'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the cells that carry signals through your nervous system called?', NULL,
        'Neurons', ARRAY['Platelets', 'Antibodies', 'Hormones', 'Enzymes', 'Red blood cells'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which scientist studied wild chimpanzees for decades at Gombe, in Tanzania?', NULL,
        'Jane Goodall', ARRAY['Dian Fossey', 'Birute Galdikas', 'Rachel Carson', 'Mary Leakey', 'David Attenborough'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What shape is a DNA molecule?', NULL,
        'A double helix', ARRAY['A single spiral', 'A triangle', 'A ring', 'A double cone', 'A ladder of circles'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which two scientists described the shape of DNA in 1953?', NULL,
        'Watson and Crick', ARRAY['Darwin and Wallace', 'Pasteur and Koch', 'Curie and Curie', 'Hooke and Boyle', 'Mendel and Morgan'], 200, 'Their model leaned on Rosalind Franklin''s X-ray image of DNA, known as Photo 51.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a change in a gene''s DNA called?', NULL,
        'A mutation', ARRAY['An adaptation', 'A mitosis', 'An allele', 'A clone', 'A trait'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny pieces in your blood help it clot when you get a cut?', NULL,
        'Platelets', ARRAY['White blood cells', 'Red blood cells', 'Plasma', 'Antibodies', 'Hormones'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the longest bone in the human body, in your thigh?', NULL,
        'The femur', ARRAY['The tibia', 'The humerus', 'The fibula', 'The radius', 'The spine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which dome-shaped muscle across the bottom of your chest powers each breath?', NULL,
        'The diaphragm', ARRAY['The biceps', 'The abdominals', 'The pectorals', 'The trapezius', 'The heart'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which organ absorbs water from food waste before it leaves the body?', NULL,
        'The large intestine', ARRAY['The stomach', 'The liver', 'The kidneys', 'The pancreas', 'The appendix'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What tough cords connect muscles to bones?', NULL,
        'Tendons', ARRAY['Ligaments', 'Cartilage', 'Nerves', 'Veins', 'Arteries'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What tough bands connect one bone to another at a joint?', NULL,
        'Ligaments', ARRAY['Tendons', 'Muscles', 'Nerves', 'Veins', 'Arteries'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'In a food chain, a grass or a tree is called what, because it makes its own food?', NULL,
        'A producer', ARRAY['A consumer', 'A decomposer', 'A predator', 'A scavenger', 'A parasite'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Living things like worms and mushrooms that break down dead matter are called what?', NULL,
        'Decomposers', ARRAY['Producers', 'Predators', 'Herbivores', 'Parasites', 'Pollinators'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the hard outer shell on beetles and lobsters called?', NULL,
        'An exoskeleton', ARRAY['An endoskeleton', 'Cartilage', 'Enamel', 'A shell membrane', 'Scales'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the largest organ inside the human body?', NULL,
        'The liver', ARRAY['The heart', 'The lungs', 'The brain', 'The stomach', 'The kidneys'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which hormone helps your body use sugar from food, and is missing in type 1 diabetes?', NULL,
        'Insulin', ARRAY['Adrenaline', 'Melatonin', 'Estrogen', 'Cortisol', 'Testosterone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which hormone pumps through you in "fight or flight" moments?', NULL,
        'Adrenaline', ARRAY['Insulin', 'Melatonin', 'Serotonin', 'Estrogen', 'Oxytocin'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'After a vaccine or an infection, your body makes proteins that tag germs for attack. What are they?', NULL,
        'Antibodies', ARRAY['Hormones', 'Enzymes', 'Vitamins', 'Platelets', 'Antibiotics'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the jelly-like fluid that fills a cell called?', NULL,
        'Cytoplasm', ARRAY['Plasma', 'Mucus', 'Lymph', 'Serum'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which part of a cell holds most of its DNA?', NULL,
        'The nucleus', ARRAY['The membrane', 'The ribosome', 'The vacuole', 'The cell wall', 'The cytoplasm'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the branch of biology that studies how living things interact with their environment?', NULL,
        'Ecology', ARRAY['Anatomy', 'Genetics', 'Botany', 'Zoology', 'Physiology'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which kind of cell division makes egg and sperm cells, each with half the usual chromosomes?', NULL,
        'Meiosis', ARRAY['Mitosis', 'Osmosis', 'Fission', 'Budding', 'Fusion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Plant cells have a stiff outer layer that animal cells lack. What is it?', NULL,
        'The cell wall', ARRAY['The nucleus', 'The ribosome', 'The cytoplasm', 'The skeleton', 'The membrane'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a species at serious risk of dying out?', NULL,
        'Endangered', ARRAY['Extinct', 'Invasive', 'Domesticated', 'Native', 'Dormant'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call colors or patterns that help an animal blend into its surroundings?', NULL,
        'Camouflage', ARRAY['Warning colors', 'Plumage', 'Molting', 'Display'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which blood vessels carry blood away from your heart?', NULL,
        'Arteries', ARRAY['Veins', 'Nerves', 'Tendons', 'Ducts'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which small organ stores bile until you need it?', NULL,
        'The gallbladder', ARRAY['The appendix', 'The spleen', 'The bladder', 'The pancreas', 'The thyroid'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the yellowish liquid part of blood called?', NULL,
        'Plasma', ARRAY['Lymph', 'Bile', 'Marrow', 'Saliva'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the scientific name for modern humans?', NULL,
        'Homo sapiens', ARRAY['Homo erectus', 'Homo habilis', 'Australopithecus', 'Homo neanderthalensis', 'Pan troglodytes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a scientist who studies animals?', NULL,
        'A zoologist', ARRAY['A botanist', 'An entomologist', 'A geologist', 'A meteorologist', 'A paleontologist'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a scientist who studies plants?', NULL,
        'A botanist', ARRAY['A zoologist', 'A geologist', 'An astronomer', 'A chemist'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which flat back teeth grind up your food?', NULL,
        'Molars', ARRAY['Incisors', 'Canines', 'Fangs', 'Tusks', 'Baby teeth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What "feel-good" chemicals does your brain release during hard exercise, behind the "runner''s high"?', NULL,
        'Endorphins', ARRAY['Adrenaline', 'Insulin', 'Melatonin', 'Cortisol', 'Histamine'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the outermost layer of your skin called?', NULL,
        'The epidermis', ARRAY['The dermis', 'The cortex', 'The membrane', 'The cuticle', 'The marrow'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Trees like maples and oaks that go bare every winter are called what?', NULL,
        'Deciduous', ARRAY['Evergreen', 'Coniferous', 'Perennial', 'Annual', 'Tropical'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What are the colorful parts of a flower that attract pollinators?', NULL,
        'Petals', ARRAY['Sepals', 'Stamens', 'Roots', 'Thorns', 'Seeds'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of your body has 26 bones and carries your weight?', NULL,
        'The foot', ARRAY['The hand', 'The skull', 'The spine', 'The knee', 'The pelvis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many legs does a crab have, counting its claws?', NULL,
        'Ten', ARRAY['Six', 'Eight', 'Twelve', 'Four', 'Fourteen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the female part of a flower, where seeds form?', NULL,
        'The pistil', ARRAY['The stamen', 'The petal', 'The sepal', 'The pollen', 'The anther'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Chimpanzees and which other ape are humans'' closest living relatives?', NULL,
        'The bonobo', ARRAY['The gorilla', 'The orangutan', 'The gibbon', 'The baboon', 'The mandrill'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which of these is NOT alive by most scientists'' definition?', NULL,
        'A virus', ARRAY['A bacterium', 'A yeast cell', 'An amoeba', 'A mushroom', 'An algae cell'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many pairs of chromosomes do most human cells have?', NULL,
        '23', ARRAY['12', '20', '24', '32', '46'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which pigment gives skin, hair and eyes their color?', NULL,
        'Melanin', ARRAY['Chlorophyll', 'Keratin', 'Hemoglobin', 'Carotene', 'Collagen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which clear part of the eye changes shape to focus light?', NULL,
        'The lens', ARRAY['The iris', 'The pupil', 'The cornea', 'The retina', 'The optic nerve'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny parts of a cell build proteins?', NULL,
        'Ribosomes', ARRAY['Lysosomes', 'Vacuoles', 'Chloroplasts', 'Centrioles', 'Mitochondria'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Besides the platypus, which spiny mammal lays eggs?', NULL,
        'The echidna', ARRAY['The hedgehog', 'The porcupine', 'The armadillo', 'The pangolin', 'The tenrec'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a baby swan called?', NULL,
        'A cygnet', ARRAY['A gosling', 'A duckling', 'A fledgling', 'A cria', 'A squab'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which body system includes your spleen, lymph nodes and tonsils?', NULL,
        'The lymphatic system', ARRAY['The digestive system', 'The endocrine system', 'The urinary system', 'The skeletal system', 'The nervous system'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest part of the human brain, handling thinking and memory?', NULL,
        'The cerebrum', ARRAY['The cerebellum', 'The brain stem', 'The hypothalamus', 'The medulla', 'The pituitary'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The finches of which islands helped inspire Darwin''s thinking about evolution?', NULL,
        'The Galapagos Islands', ARRAY['The Canary Islands', 'The Falkland Islands', 'Madagascar', 'The Hawaiian Islands', 'The Azores'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is it called when two species live together and both benefit, like bees and flowers?', NULL,
        'Mutualism', ARRAY['Parasitism', 'Predation', 'Commensalism', 'Competition', 'Camouflage'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which protein in red blood cells carries oxygen?', NULL,
        'Hemoglobin', ARRAY['Insulin', 'Keratin', 'Collagen', 'Melanin', 'Adrenaline'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your voice box?', NULL,
        'The larynx', ARRAY['The pharynx', 'The trachea', 'The epiglottis', 'The esophagus', 'The thorax'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which gorilla became famous for learning to use more than 1,000 signs in sign language?', NULL,
        'Koko', ARRAY['Harambe', 'Bubbles', 'Washoe', 'Kanzi', 'Titus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which mammal has the longest pregnancy, nearly two years?', NULL,
        'The elephant', ARRAY['The blue whale', 'The giraffe', 'The rhinoceros', 'The camel', 'The gorilla'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a plant that lives for more than two years?', NULL,
        'A perennial', ARRAY['An annual', 'A biennial', 'An evergreen', 'A deciduous', 'A succulent'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a group of flamingos called?', NULL,
        'A flamboyance', ARRAY['A parade', 'A blush', 'A gala', 'A dazzle', 'A pageant'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which marine biologist''s 1962 book "Silent Spring" warned about the pesticide DDT?', NULL,
        'Rachel Carson', ARRAY['Jane Goodall', 'Sylvia Earle', 'Dian Fossey', 'Barbara McClintock', 'Rosalind Franklin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many compartments does a cow''s stomach have?', NULL,
        'Four', ARRAY['One', 'Two', 'Three', 'Six', 'Seven'], 300, 'The four parts are the rumen, reticulum, omasum and abomasum. The rumen alone can hold about 40 gallons.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the light-sensitive layer at the back of the eye called?', NULL,
        'The retina', ARRAY['The iris', 'The cornea', 'The lens', 'The pupil', 'The sclera'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the longest nerve in the human body, running down each leg?', NULL,
        'The sciatic nerve', ARRAY['The vagus nerve', 'The optic nerve', 'The femoral nerve', 'The ulnar nerve', 'The spinal cord'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the building blocks of proteins called?', NULL,
        'Amino acids', ARRAY['Nucleotides', 'Fatty acids', 'Sugars', 'Enzymes', 'Lipids'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Whose swan-neck flask experiments disproved the idea that life springs up from nothing?', NULL,
        'Louis Pasteur', ARRAY['Robert Koch', 'Joseph Lister', 'Edward Jenner', 'Francesco Redi', 'Lazzaro Spallanzani'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your collarbone?', NULL,
        'The clavicle', ARRAY['The scapula', 'The sternum', 'The patella', 'The ulna', 'The radius'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which hormone, made when it gets dark, helps control when you feel sleepy?', NULL,
        'Melatonin', ARRAY['Serotonin', 'Adrenaline', 'Insulin', 'Cortisol', 'Dopamine'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your shinbone?', NULL,
        'The tibia', ARRAY['The fibula', 'The femur', 'The radius', 'The ulna', 'The humerus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What are different versions of the same gene, like ones for blue or brown eyes, called?', NULL,
        'Alleles', ARRAY['Chromosomes', 'Codons', 'Proteins', 'Traits', 'Cells'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which blood type is the "universal recipient," able to receive any type?', NULL,
        'AB positive', ARRAY['O negative', 'O positive', 'A positive', 'B negative', 'A negative'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which part of the brain controls breathing and heartbeat?', NULL,
        'The brain stem', ARRAY['The cerebrum', 'The frontal lobe', 'The hippocampus', 'The pineal gland', 'The amygdala'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What process lets your cells release energy from sugar and oxygen?', NULL,
        'Cellular respiration', ARRAY['Photosynthesis', 'Fermentation', 'Osmosis', 'Digestion', 'Diffusion'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the body''s way of keeping its inside conditions, like temperature, steady?', NULL,
        'Homeostasis', ARRAY['Metabolism', 'Hibernation', 'Adaptation', 'Respiration'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'In a two-part scientific name like Canis lupus, what does the first part name?', NULL,
        'The genus', ARRAY['The species', 'The family', 'The order', 'The kingdom', 'The class'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which dance do honeybees use to tell hivemates where flowers are?', NULL,
        'The waggle dance', ARRAY['The buzz dance', 'The figure eight', 'The round-up', 'The hive hop', 'The pollen shuffle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What kind of muscle is found only in the heart?', NULL,
        'Cardiac muscle', ARRAY['Skeletal muscle', 'Smooth muscle', 'Voluntary muscle', 'Fast-twitch muscle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Spiders, crabs and centipedes all belong to which big animal group with jointed legs?', NULL,
        'Arthropods', ARRAY['Mollusks', 'Annelids', 'Echinoderms', 'Cnidarians', 'Vertebrates'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What are the two upper chambers of the heart called?', NULL,
        'The atria', ARRAY['The ventricles', 'The valves', 'The aortas', 'The septa', 'The lobes'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which part of the brain, named for its seahorse shape, helps form memories?', NULL,
        'The hippocampus', ARRAY['The amygdala', 'The cerebellum', 'The thalamus', 'The pituitary', 'The medulla'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which molecule carries a copy of a gene''s instructions to where proteins are made, as in some COVID vaccines?', NULL,
        'mRNA', ARRAY['DNA', 'ATP', 'Insulin', 'Hemoglobin', 'Collagen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the body''s main sugar fuel, the one diabetics measure in their blood?', NULL,
        'Glucose', ARRAY['Fructose', 'Sucrose', 'Lactose', 'Starch'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Penicillin was first made from what kind of living thing?', NULL,
        'A mold', ARRAY['A bacterium', 'A virus', 'A plant root', 'Seaweed', 'A lichen'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which big sac in a plant cell stores water and keeps the plant firm?', NULL,
        'The vacuole', ARRAY['The nucleus', 'The ribosome', 'The chloroplast', 'The mitochondrion', 'The lysosome'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call light made by living things, like fireflies?', NULL,
        'Bioluminescence', ARRAY['Photosynthesis', 'Iridescence', 'Radiance', 'Pigmentation', 'Camouflage'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Your shoulder and hip are which type of joint?', NULL,
        'Ball-and-socket', ARRAY['Hinge', 'Pivot', 'Gliding', 'Saddle', 'Fixed'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a group of organs working together, like the digestive system?', NULL,
        'An organ system', ARRAY['A tissue', 'An organelle', 'An organism', 'A colony', 'A cell line'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which pea-sized "master gland" sits at the base of the brain?', NULL,
        'The pituitary', ARRAY['The thyroid', 'The adrenal', 'The pineal', 'The thymus', 'The pancreas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which plant tissue, made of tiny tubes, carries water upward inside a plant?', NULL,
        'Xylem', ARRAY['Phloem', 'Cambium', 'Cortex', 'Pith', 'Epidermis'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'The Great Barrier Reef is built by tiny animals called what?', NULL,
        'Coral polyps', ARRAY['Sea sponges', 'Krill', 'Plankton', 'Barnacles', 'Sea anemones'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Malaria is caused by a tiny single-celled what, carried by mosquitoes?', NULL,
        'Parasite', ARRAY['Virus', 'Bacterium', 'Fungus', 'Prion', 'Worm'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call the set of genes an organism carries, as opposed to how it looks?', NULL,
        'Its genotype', ARRAY['Its phenotype', 'Its karyotype', 'Its species', 'Its lineage'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the tiny gap where one brain cell passes a signal to the next?', NULL,
        'A synapse', ARRAY['A node', 'A ganglion', 'A dendrite', 'A vesicle', 'A fissure'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call a species found naturally in only one place, like lemurs in Madagascar?', NULL,
        'Endemic', ARRAY['Invasive', 'Migratory', 'Domestic', 'Feral', 'Nocturnal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'A species whose loss would unravel its whole ecosystem, like Yellowstone''s wolves, is called what?', NULL,
        'A keystone species', ARRAY['An apex species', 'An indicator species', 'A pioneer species', 'A flagship species', 'A host species'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Growing a new plant from a cutting is an example of which kind of reproduction?', NULL,
        'Asexual', ARRAY['Sexual', 'Cross-pollinated', 'Hybrid', 'Spontaneous', 'Seasonal'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call all of an organism''s DNA, which an international project mapped for humans by 2003?', NULL,
        'Its genome', ARRAY['Its proteome', 'Its chromosome', 'Its allele', 'Its nucleus', 'Its gene pool'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which ship carried Charles Darwin around the world?', NULL,
        'HMS Beagle', ARRAY['HMS Bounty', 'HMS Endeavour', 'HMS Victory', 'HMS Discovery', 'HMS Challenger'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which single-celled pond organism creeps along on "false feet"?', NULL,
        'The amoeba', ARRAY['The paramecium', 'The euglena', 'The rotifer', 'The diatom', 'The hydra'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal''s fingerprints are so like a human''s that they could confuse a crime lab?', NULL,
        'The koala', ARRAY['The chimpanzee', 'The raccoon', 'The gorilla', 'The orangutan', 'The sloth'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Spiders make silk with organs called what?', NULL,
        'Spinnerets', ARRAY['Pedipalps', 'Chelicerae', 'Mandibles', 'Antennae', 'Tarsi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which naturalist came up with the theory of natural selection at the same time as Darwin?', NULL,
        'Alfred Russel Wallace', ARRAY['Thomas Huxley', 'Jean-Baptiste Lamarck', 'Gregor Mendel', 'Charles Lyell', 'Louis Agassiz'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of a cell is its "garbage disposal," breaking down waste?', NULL,
        'The lysosome', ARRAY['The ribosome', 'The nucleus', 'The Golgi apparatus', 'The vacuole', 'The centriole'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Southeast Asian plant has the largest single flower in the world, and smells like rotting meat?', NULL,
        'Rafflesia', ARRAY['Titan arum', 'Lotus', 'Giant water lily', 'Bird of paradise', 'Sunflower'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name of the heart''s natural pacemaker, which starts each heartbeat?', NULL,
        'The sinoatrial node', ARRAY['The aortic valve', 'The left ventricle', 'The bundle of His', 'The pericardium', 'The septum'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tube connects your middle ear to your throat, and pops when you change altitude?', NULL,
        'The Eustachian tube', ARRAY['The cochlea', 'The fallopian tube', 'The ear canal', 'The semicircular canal', 'The auditory nerve'], 400, 'It''s named for Bartolomeo Eustachi, a 16th-century Italian anatomist.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The Portuguese man o'' war isn''t a true jellyfish. It''s a colony of tiny animals called what?', NULL,
        'A siphonophore', ARRAY['A coral polyp', 'A sea anemone', 'A comb jelly', 'A hydra', 'A sponge'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal has the densest fur of any, up to a million hairs per square inch?', NULL,
        'The sea otter', ARRAY['The chinchilla', 'The polar bear', 'The beaver', 'The mink', 'The arctic fox'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name for the planned, natural death of cells?', NULL,
        'Apoptosis', ARRAY['Necrosis', 'Mitosis', 'Meiosis', 'Autolysis', 'Lysis'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which of these is NOT one of the four bases in DNA?', NULL,
        'Uracil', ARRAY['Adenine', 'Guanine', 'Cytosine', 'Thymine'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of the cell packages proteins to ship them out?', NULL,
        'The Golgi apparatus', ARRAY['The ribosome', 'The lysosome', 'The nucleolus', 'The centriole', 'The vacuole'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Dutch cloth merchant first saw living bacteria through his own microscopes, in the 1670s?', NULL,
        'Antonie van Leeuwenhoek', ARRAY['Robert Hooke', 'Christiaan Huygens', 'Jan Swammerdam', 'Zacharias Janssen', 'Hans Lippershey'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny air sacs in your lungs, where oxygen passes into the blood, called?', NULL,
        'Alveoli', ARRAY['Bronchi', 'Cilia', 'Villi', 'Capillaries', 'Nephrons'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Mexican salamander can regrow its legs and even parts of its heart and brain?', NULL,
        'The axolotl', ARRAY['The hellbender', 'The newt', 'The mudpuppy', 'The olm', 'The fire salamander'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which clear part of the eye has no blood vessels and takes its oxygen straight from the air?', NULL,
        'The cornea', ARRAY['The iris', 'The retina', 'The pupil', 'The sclera', 'The optic nerve'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which famous line of human cells, taken without consent in 1951, has been used in countless medical studies?', NULL,
        'HeLa cells', ARRAY['Stem cells', 'CAR-T cells', 'Vero cells', 'MCF-7 cells', 'K-562 cells'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which vitamin does your blood need in order to clot?', NULL,
        'Vitamin K', ARRAY['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin E', 'Vitamin B12'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which gas-filled organ lets a fish float at different depths without swimming?', NULL,
        'The swim bladder', ARRAY['The gill sac', 'The lateral line', 'The air fin', 'The float gland', 'The spiracle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Single-celled microbes once lumped with bacteria now form their own branch of life. What are they called?', NULL,
        'Archaea', ARRAY['Protists', 'Fungi', 'Viruses', 'Prions', 'Algae'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny hairs that sweep dust and mucus out of your airways?', NULL,
        'Cilia', ARRAY['Villi', 'Flagella', 'Alveoli', 'Microvilli', 'Follicles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Austrian scientist showed that baby geese "imprint" on the first moving thing they see?', NULL,
        'Konrad Lorenz', ARRAY['Ivan Pavlov', 'B.F. Skinner', 'Niko Tinbergen', 'Karl von Frisch', 'Sigmund Freud'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The famous 3.2-million-year-old skeleton known as "Lucy" belongs to which species?', NULL,
        'Australopithecus afarensis', ARRAY['Homo erectus', 'Homo habilis', 'Homo neanderthalensis', 'Paranthropus boisei', 'Ardipithecus ramidus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'About how long is the adult human small intestine?', NULL,
        'About 20 feet', ARRAY['About 3 feet', 'About 6 feet', 'About 50 feet', 'About 100 feet', 'About 10 inches'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest cell in the human body?', NULL,
        'The egg cell', ARRAY['The nerve cell', 'The red blood cell', 'The muscle cell', 'The skin cell', 'The fat cell'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which blood vessel carries blood from the heart to the lungs?', NULL,
        'The pulmonary artery', ARRAY['The aorta', 'The pulmonary vein', 'The vena cava', 'The carotid artery', 'The coronary artery'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Under its orange fur, what does a tiger''s skin look like?', NULL,
        'Striped', ARRAY['Plain orange', 'Spotted', 'Solid black', 'Pink', 'Pale white'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which seabird has the largest wingspan of any living bird, up to about 11 feet?', NULL,
        'The wandering albatross', ARRAY['The bald eagle', 'The Andean condor', 'The pelican', 'The frigatebird', 'The golden eagle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which plant hormone makes a stem bend toward the light?', NULL,
        'Auxin', ARRAY['Ethylene', 'Gibberellin', 'Chlorophyll', 'Abscisic acid', 'Cytokinin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What tough protein are your hair and fingernails made of?', NULL,
        'Keratin', ARRAY['Collagen', 'Melanin', 'Calcium', 'Elastin', 'Chitin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Immune cells that swallow germs whole take their name from Greek for "big eaters." What are they?', NULL,
        'Macrophages', ARRAY['Lymphocytes', 'Platelets', 'Neutrons', 'Antibodies', 'Erythrocytes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Mitochondria carry their own DNA, a clue that they were once free-living what?', NULL,
        'Bacteria', ARRAY['Viruses', 'Fungi', 'Algae', 'Amoebas', 'Worms'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which enzyme starts breaking down starch while you''re still chewing?', NULL,
        'Amylase', ARRAY['Pepsin', 'Lipase', 'Lactase', 'Trypsin', 'Insulin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What''s the scientific word for an animal, like a lizard, that gets its body heat from its surroundings?', NULL,
        'Ectotherm', ARRAY['Endotherm', 'Homeotherm', 'Exotherm', 'Thermophile'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Methuselah, one of the oldest known living trees at about 4,800 years, is which kind of tree?', NULL,
        'A bristlecone pine', ARRAY['A giant sequoia', 'A coast redwood', 'A baobab', 'An olive tree', 'A yew'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which animal has the largest eyes, each about the size of a soccer ball?', NULL,
        'The colossal squid', ARRAY['The blue whale', 'The giant octopus', 'The ostrich', 'The elephant', 'The swordfish'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which gland behind the breastbone "trains" the infection-fighting T cells, which are named after it?', NULL,
        'The thymus', ARRAY['The thyroid', 'The pituitary', 'The adrenal', 'The spleen', 'The pancreas'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What''s the long fiber of a brain cell that sends its signal onward?', NULL,
        'The axon', ARRAY['The dendrite', 'The synapse', 'The myelin', 'The nucleus', 'The cilium'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What do we call an organism''s observable traits, like eye color, shaped by its genes?', NULL,
        'Its phenotype', ARRAY['Its genotype', 'Its karyotype', 'Its allele', 'Its haplotype', 'Its codon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which plant tissue carries sugary food around a plant, rather than water?', NULL,
        'Phloem', ARRAY['Xylem', 'Cambium', 'Cortex', 'Pith', 'Stomata'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which pair of tubes carries urine down from the kidneys?', NULL,
        'The ureters', ARRAY['The urethras', 'The aortas', 'The ducts', 'The bile ducts', 'The fallopian tubes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What clear jelly fills most of the inside of your eyeball?', NULL,
        'The vitreous humor', ARRAY['The aqueous humor', 'The lens', 'The cornea', 'Plasma', 'Lymph'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the thin, tough sac around the heart called?', NULL,
        'The pericardium', ARRAY['The pleura', 'The peritoneum', 'The septum', 'The myocardium', 'The diaphragm'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Bees, wasps and ants belong to which insect order, whose name means "membrane wing"?', NULL,
        'Hymenoptera', ARRAY['Lepidoptera', 'Coleoptera', 'Diptera', 'Orthoptera', 'Hemiptera'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What''s the scientific word for animals that lay eggs that hatch outside the body?', NULL,
        'Oviparous', ARRAY['Viviparous', 'Ovoviviparous', 'Omnivorous', 'Arboreal', 'Gregarious'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which enzyme copies DNA, and gives the "P" to the PCR test?', NULL,
        'Polymerase', ARRAY['Protease', 'Pepsin', 'Peroxidase', 'Phosphatase', 'Lipase'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which network of membranes in a cell comes in "rough" and "smooth" kinds?', NULL,
        'The endoplasmic reticulum', ARRAY['The nuclear envelope', 'The cytoskeleton', 'The mitochondrion', 'The plasma membrane'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What molecule is the "energy currency" of every living cell?', NULL,
        'ATP', ARRAY['DNA', 'RNA', 'Glucose', 'Insulin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which kidney hormone tells the body to make more of its oxygen-carrying cells, and is infamous in cycling doping scandals?', NULL,
        'EPO (erythropoietin)', ARRAY['Testosterone', 'Insulin', 'Cortisol', 'Adrenaline', 'HGH'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'The islets of Langerhans are tiny clusters of cells in which organ?', NULL,
        'The pancreas', ARRAY['The liver', 'The kidneys', 'The spleen', 'The thyroid', 'The lungs'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Biologists sort all life into three big groups above kingdoms. What are those groups called?', NULL,
        'Domains', ARRAY['Phyla', 'Orders', 'Classes', 'Realms', 'Clades'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which tiny fly, genetics'' favorite lab animal, has a Latin name meaning "dew lover"?', NULL,
        'Drosophila', ARRAY['Musca', 'Anopheles', 'Aedes', 'Culex', 'Tsetse'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Barbara McClintock won a 1983 Nobel Prize for discovering genes that move around in corn. What are they nicknamed?', NULL,
        'Jumping genes', ARRAY['Junk genes', 'Wandering genes', 'Selfish genes', 'Ghost genes', 'Sleeping genes'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'The "immortal jellyfish" can turn itself back into a young what?', NULL,
        'Polyp', ARRAY['Larva', 'Egg', 'Spore', 'Tadpole', 'Bud'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Crab shells and the hard outer skin of beetles are made mostly of what tough substance?', NULL,
        'Chitin', ARRAY['Keratin', 'Enamel', 'Collagen', 'Cellulose'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What are the color-changing cells that let octopuses and squid flash new patterns?', NULL,
        'Chromatophores', ARRAY['Melanocytes', 'Photophores', 'Cnidocytes', 'Osteocytes', 'Chloroplasts'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which deadly nerve poison makes fugu, or pufferfish, risky to eat?', NULL,
        'Tetrodotoxin', ARRAY['Botulinum', 'Cyanide', 'Strychnine', 'Arsenic', 'Ricin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'What is the most abundant protein in the human body, the "glue" in skin and bone?', NULL,
        'Collagen', ARRAY['Keratin', 'Hemoglobin', 'Insulin', 'Myosin', 'Albumin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'The CRISPR gene-editing tool was adapted from a defense that bacteria use against what?', NULL,
        'Viruses', ARRAY['Fungi', 'Antibiotics', 'Ultraviolet light', 'Parasites'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'CELL_MATES_NOV25', NULL,
        'Which biologist, author of "The Selfish Gene," coined the word "meme"?', NULL,
        'Richard Dawkins', ARRAY['Stephen Jay Gould', 'E.O. Wilson', 'Carl Sagan', 'James Watson', 'David Attenborough'], 400, NULL);

COMMIT;

-- Check: should return 240.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'CELL_MATES';
