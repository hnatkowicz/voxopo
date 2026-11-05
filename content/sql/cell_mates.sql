-- ============================================================================
-- content/sql/cell_mates.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/cell_mates.csv, the master copy of the
-- Thinking Pants category CELL_MATES. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'CELL_MATES';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the smallest unit of life that can live on its own?', NULL,
        'The cell', ARRAY['The atom', 'The molecule', 'The organ', 'The tissue', 'The gene'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organs do you breathe with?', NULL,
        'The lungs', ARRAY['The kidneys', 'The heart', 'The liver', 'The stomach', 'The intestines'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which blood cells carry oxygen around your body?', NULL,
        'Red blood cells', ARRAY['White blood cells', 'Platelets', 'Plasma', 'Nerve cells', 'Stem cells'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ inside your skull lets you think, remember and feel?', NULL,
        'The brain', ARRAY['The heart', 'The spine', 'The lungs', 'The liver', 'The thyroid'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a baby goat called?', NULL,
        'A kid', ARRAY['A calf', 'A foal', 'A lamb', 'A cub', 'A joey'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the largest land animal?', NULL,
        'The African elephant', ARRAY['The hippopotamus', 'The white rhinoceros', 'The giraffe', 'The polar bear', 'The bison'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals with no backbone, like worms and jellyfish?', NULL,
        'Invertebrates', ARRAY['Vertebrates', 'Mammals', 'Amphibians', 'Reptiles', 'Marsupials'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which lizard is famous for changing its color?', NULL,
        'The chameleon', ARRAY['The iguana', 'The gecko', 'The Komodo dragon', 'The skink', 'The Gila monster'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What kind of animal is a whale?', NULL,
        'A mammal', ARRAY['A fish', 'An amphibian', 'A reptile', 'A crustacean'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the colored part of your eye called?', NULL,
        'The iris', ARRAY['The pupil', 'The retina', 'The cornea', 'The lens', 'The sclera'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call an animal that hunts other animals for food?', NULL,
        'A predator', ARRAY['Prey', 'A parasite', 'A grazer', 'A decomposer', 'A host'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call the natural home of a plant or animal?', NULL,
        'Its habitat', ARRAY['Its niche', 'Its colony', 'Its territory', 'Its den', 'Its nest'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ churns and starts digesting your food after you swallow it?', NULL,
        'The stomach', ARRAY['The liver', 'The kidneys', 'The lungs', 'The pancreas', 'The bladder'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of a plant soaks up water from the soil?', NULL,
        'The roots', ARRAY['The leaves', 'The stem', 'The flowers', 'The seeds', 'The bark'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which body system is made up of your bones?', NULL,
        'The skeletal system', ARRAY['The muscular system', 'The nervous system', 'The digestive system', 'The circulatory system', 'The immune system'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Where are most of your taste buds?', NULL,
        'On your tongue', ARRAY['In your nose', 'On your lips', 'On the roof of your mouth', 'In your throat', 'On your teeth'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal is famous for building dams across streams?', NULL,
        'The beaver', ARRAY['The otter', 'The muskrat', 'The raccoon', 'The badger', 'The squirrel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a scientist who studies living things?', NULL,
        'A biologist', ARRAY['A geologist', 'A chemist', 'A physicist', 'An astronomer', 'A meteorologist'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest kind of penguin?', NULL,
        'The emperor penguin', ARRAY['The king penguin', 'The macaroni penguin', 'The gentoo penguin', 'The rockhopper penguin', 'The Adelie penguin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do giant pandas eat almost all the time?', NULL,
        'Bamboo', ARRAY['Eucalyptus', 'Fish', 'Berries', 'Grass', 'Insects'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal''s black-and-white stripes are unique to each one, like a fingerprint?', NULL,
        'The zebra', ARRAY['The skunk', 'The badger', 'The tapir', 'The okapi', 'The panda'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals that eat mostly meat?', NULL,
        'Carnivores', ARRAY['Herbivores', 'Omnivores', 'Frugivores', 'Granivores', 'Detritivores'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal is nicknamed the "ship of the desert"?', NULL,
        'The camel', ARRAY['The horse', 'The donkey', 'The llama', 'The ostrich', 'The elephant'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sea animal has eight arms and can squirt ink?', NULL,
        'The octopus', ARRAY['The squid', 'The starfish', 'The jellyfish', 'The crab', 'The sea urchin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a kind of animal, like the dodo, that no longer lives anywhere on Earth?', NULL,
        'Extinct', ARRAY['Endangered', 'Threatened', 'Invasive', 'Dormant', 'Migrated'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sense do the nerves in your skin give you?', NULL,
        'Touch', ARRAY['Taste', 'Smell', 'Hearing', 'Sight', 'Balance'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a group of fish swimming together called?', NULL,
        'A school', ARRAY['A pod', 'A herd', 'A flock', 'A gaggle', 'A pride'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which masked animal with a ringed tail is famous for "washing" its food?', NULL,
        'The raccoon', ARRAY['The opossum', 'The red panda', 'The lemur', 'The badger', 'The ferret'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which slow, slimy animal carries its shell on its back?', NULL,
        'The snail', ARRAY['The slug', 'The turtle', 'The crab', 'The clam', 'The worm'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'About how long does a human pregnancy last?', NULL,
        'Nine months', ARRAY['Six months', 'Seven months', 'Twelve months', 'Fourteen months', 'Five months'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny blood vessels that link arteries and veins called?', NULL,
        'Capillaries', ARRAY['Ventricles', 'Valves', 'Alveoli', 'Nephrons', 'Platelets'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of your body has 26 bones and carries your weight?', NULL,
        'The foot', ARRAY['The hand', 'The skull', 'The spine', 'The knee', 'The pelvis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals that are active during the day?', NULL,
        'Diurnal', ARRAY['Nocturnal', 'Crepuscular', 'Seasonal', 'Dormant', 'Migratory'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Strep throat is caused by which kind of microbe?', NULL,
        'Bacteria', ARRAY['A virus', 'A fungus', 'A parasite', 'Yeast', 'An amoeba'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Diving at over 200 miles an hour, which bird is the fastest animal on Earth?', NULL,
        'The peregrine falcon', ARRAY['The bald eagle', 'The golden eagle', 'The swift', 'The ostrich', 'The hummingbird'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many legs does a crab have, counting its claws?', NULL,
        'Ten', ARRAY['Six', 'Eight', 'Twelve', 'Four', 'Fourteen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which pointed teeth, named for dogs, are used for tearing food?', NULL,
        'Canines', ARRAY['Incisors', 'Molars', 'Premolars', 'Wisdom teeth', 'Fangs'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tube carries food from your throat down to your stomach?', NULL,
        'The esophagus', ARRAY['The trachea', 'The larynx', 'The aorta', 'The colon', 'The bronchus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the thin outer layer that controls what goes in and out of an animal cell?', NULL,
        'The cell membrane', ARRAY['The cell wall', 'The nucleus', 'The cytoplasm', 'The chloroplast', 'The vacuole'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'A tadpole turning into a frog is an example of what?', NULL,
        'Metamorphosis', ARRAY['Mutation', 'Hibernation', 'Evolution', 'Migration', 'Photosynthesis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many teeth does an adult human usually have, wisdom teeth included?', NULL,
        '32', ARRAY['28', '20', '36', '40', '24'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the everyday word for an animal, like a lizard, whose body temperature follows its surroundings?', NULL,
        'Cold-blooded', ARRAY['Warm-blooded', 'Hot-blooded', 'Thick-skinned', 'Thin-blooded', 'Shell-backed'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organ stores urine until you go to the bathroom?', NULL,
        'The bladder', ARRAY['The kidneys', 'The gallbladder', 'The spleen', 'The appendix', 'The liver'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the largest artery in the human body?', NULL,
        'The aorta', ARRAY['The carotid', 'The femoral artery', 'The vena cava', 'The pulmonary vein', 'The jugular'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Carrots are famous for which vitamin, said to be good for your eyes?', NULL,
        'Vitamin A', ARRAY['Vitamin C', 'Vitamin B12', 'Vitamin E', 'Vitamin K', 'Vitamin B6'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny living fungus makes bread dough rise?', NULL,
        'Yeast', ARRAY['Mold', 'Bacteria', 'Algae', 'Baking soda', 'Flour mites'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the female part of a flower, where seeds form?', NULL,
        'The pistil', ARRAY['The stamen', 'The petal', 'The sepal', 'The pollen', 'The anther'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Chimpanzees and which other ape are humans'' closest living relatives?', NULL,
        'The bonobo', ARRAY['The gorilla', 'The orangutan', 'The gibbon', 'The baboon', 'The mandrill'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name for the body system that fights germs and disease?', NULL,
        'The immune system', ARRAY['The endocrine system', 'The nervous system', 'The digestive system', 'The skeletal system', 'The respiratory system'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a group of similar cells working together, like muscle or skin?', NULL,
        'A tissue', ARRAY['An organ', 'An organism', 'A system', 'A molecule', 'A colony'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which sea creature has no brain, no heart and no bones, and is about 95% water?', NULL,
        'The jellyfish', ARRAY['The sea cucumber', 'The octopus', 'The starfish', 'The squid', 'The sea slug'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your windpipe?', NULL,
        'The trachea', ARRAY['The esophagus', 'The larynx', 'The pharynx', 'The bronchus', 'The aorta'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call animals, like vultures and hyenas, that feed on dead animals?', NULL,
        'Scavengers', ARRAY['Predators', 'Parasites', 'Herbivores', 'Producers', 'Pollinators'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call all the connected food chains in an ecosystem?', NULL,
        'A food web', ARRAY['A food pyramid', 'A life cycle', 'A habitat', 'A biome', 'A carbon cycle'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the bones of your spine called?', NULL,
        'Vertebrae', ARRAY['Ribs', 'Phalanges', 'Metacarpals', 'Carpals', 'Tarsals'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which organs let fish take oxygen from water?', NULL,
        'Gills', ARRAY['Fins', 'Scales', 'Lungs', 'Swim bladders', 'Spiracles'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which rainforest mammal is famous for being the slowest, spending most of its life hanging in trees?', NULL,
        'The sloth', ARRAY['The koala', 'The tree kangaroo', 'The lemur', 'The tapir', 'The armadillo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Where in the body are red blood cells made?', NULL,
        'In the bone marrow', ARRAY['In the heart', 'In the liver', 'In the spleen', 'In the kidneys', 'In the lungs'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the cells that carry signals through your nervous system called?', NULL,
        'Neurons', ARRAY['Platelets', 'Antibodies', 'Hormones', 'Enzymes', 'Red blood cells'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which scientist studied wild chimpanzees for decades at Gombe, in Tanzania?', NULL,
        'Jane Goodall', ARRAY['Dian Fossey', 'Birute Galdikas', 'Rachel Carson', 'Mary Leakey', 'David Attenborough'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which of these is NOT alive by most scientists'' definition?', NULL,
        'A virus', ARRAY['A bacterium', 'A yeast cell', 'An amoeba', 'A mushroom', 'An algae cell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many pairs of chromosomes do most human cells have?', NULL,
        '23', ARRAY['12', '20', '24', '32', '46'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which pigment gives skin, hair and eyes their color?', NULL,
        'Melanin', ARRAY['Chlorophyll', 'Keratin', 'Hemoglobin', 'Carotene', 'Collagen'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which clear part of the eye changes shape to focus light?', NULL,
        'The lens', ARRAY['The iris', 'The pupil', 'The cornea', 'The retina', 'The optic nerve'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal''s fingerprints are so like a human''s that they could confuse a crime lab?', NULL,
        'The koala', ARRAY['The chimpanzee', 'The raccoon', 'The gorilla', 'The orangutan', 'The sloth'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny parts of a cell build proteins?', NULL,
        'Ribosomes', ARRAY['Lysosomes', 'Vacuoles', 'Chloroplasts', 'Centrioles', 'Mitochondria'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Besides the platypus, which spiny mammal lays eggs?', NULL,
        'The echidna', ARRAY['The hedgehog', 'The porcupine', 'The armadillo', 'The pangolin', 'The tenrec'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a baby swan called?', NULL,
        'A cygnet', ARRAY['A gosling', 'A duckling', 'A fledgling', 'A cria', 'A squab'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Spiders make silk with organs called what?', NULL,
        'Spinnerets', ARRAY['Pedipalps', 'Chelicerae', 'Mandibles', 'Antennae', 'Tarsi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What shape is a DNA molecule?', NULL,
        'A double helix', ARRAY['A single spiral', 'A triangle', 'A ring', 'A double cone', 'A ladder of circles'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which two scientists described the shape of DNA in 1953?', NULL,
        'Watson and Crick', ARRAY['Darwin and Wallace', 'Pasteur and Koch', 'Curie and Curie', 'Hooke and Boyle', 'Mendel and Morgan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a change in a gene''s DNA called?', NULL,
        'A mutation', ARRAY['An adaptation', 'A mitosis', 'An allele', 'A clone', 'A trait'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which body system includes your spleen, lymph nodes and tonsils?', NULL,
        'The lymphatic system', ARRAY['The digestive system', 'The endocrine system', 'The urinary system', 'The skeletal system', 'The nervous system'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest part of the human brain, handling thinking and memory?', NULL,
        'The cerebrum', ARRAY['The cerebellum', 'The brain stem', 'The hypothalamus', 'The medulla', 'The pituitary'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which naturalist came up with the theory of natural selection at the same time as Darwin?', NULL,
        'Alfred Russel Wallace', ARRAY['Thomas Huxley', 'Jean-Baptiste Lamarck', 'Gregor Mendel', 'Charles Lyell', 'Louis Agassiz'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The finches of which islands helped inspire Darwin''s thinking about evolution?', NULL,
        'The Galapagos Islands', ARRAY['The Canary Islands', 'The Falkland Islands', 'Madagascar', 'The Hawaiian Islands', 'The Azores'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is it called when two species live together and both benefit, like bees and flowers?', NULL,
        'Mutualism', ARRAY['Parasitism', 'Predation', 'Commensalism', 'Competition', 'Camouflage'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of a cell is its "garbage disposal," breaking down waste?', NULL,
        'The lysosome', ARRAY['The ribosome', 'The nucleus', 'The Golgi apparatus', 'The vacuole', 'The centriole'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which protein in red blood cells carries oxygen?', NULL,
        'Hemoglobin', ARRAY['Insulin', 'Keratin', 'Collagen', 'Melanin', 'Adrenaline'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your voice box?', NULL,
        'The larynx', ARRAY['The pharynx', 'The trachea', 'The epiglottis', 'The esophagus', 'The thorax'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Southeast Asian plant has the largest single flower in the world, and smells like rotting meat?', NULL,
        'Rafflesia', ARRAY['Titan arum', 'Lotus', 'Giant water lily', 'Bird of paradise', 'Sunflower'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which gorilla became famous for learning to use more than 1,000 signs in sign language?', NULL,
        'Koko', ARRAY['Harambe', 'Bubbles', 'Washoe', 'Kanzi', 'Titus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which mammal has the longest pregnancy, nearly two years?', NULL,
        'The elephant', ARRAY['The blue whale', 'The giraffe', 'The rhinoceros', 'The camel', 'The gorilla'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What do we call a plant that lives for more than two years?', NULL,
        'A perennial', ARRAY['An annual', 'A biennial', 'An evergreen', 'A deciduous', 'A succulent'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tiny pieces in your blood help it clot when you get a cut?', NULL,
        'Platelets', ARRAY['White blood cells', 'Red blood cells', 'Plasma', 'Antibodies', 'Hormones'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is a group of flamingos called?', NULL,
        'A flamboyance', ARRAY['A parade', 'A blush', 'A gala', 'A dazzle', 'A pageant'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which marine biologist''s 1962 book "Silent Spring" warned about the pesticide DDT?', NULL,
        'Rachel Carson', ARRAY['Jane Goodall', 'Sylvia Earle', 'Dian Fossey', 'Barbara McClintock', 'Rosalind Franklin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'How many compartments does a cow''s stomach have?', NULL,
        'Four', ARRAY['One', 'Two', 'Three', 'Six', 'Seven'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the light-sensitive layer at the back of the eye called?', NULL,
        'The retina', ARRAY['The iris', 'The cornea', 'The lens', 'The pupil', 'The sclera'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the longest nerve in the human body, running down each leg?', NULL,
        'The sciatic nerve', ARRAY['The vagus nerve', 'The optic nerve', 'The femoral nerve', 'The ulnar nerve', 'The spinal cord'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name of the heart''s natural pacemaker, which starts each heartbeat?', NULL,
        'The sinoatrial node', ARRAY['The aortic valve', 'The left ventricle', 'The bundle of His', 'The pericardium', 'The septum'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which tube connects your middle ear to your throat, and pops when you change altitude?', NULL,
        'The Eustachian tube', ARRAY['The cochlea', 'The fallopian tube', 'The ear canal', 'The semicircular canal', 'The auditory nerve'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The Portuguese man o'' war isn''t a true jellyfish. It''s a colony of tiny animals called what?', NULL,
        'A siphonophore', ARRAY['A coral polyp', 'A sea anemone', 'A comb jelly', 'A hydra', 'A sponge'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which animal has the densest fur of any, up to a million hairs per square inch?', NULL,
        'The sea otter', ARRAY['The chinchilla', 'The polar bear', 'The beaver', 'The mink', 'The arctic fox'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the building blocks of proteins called?', NULL,
        'Amino acids', ARRAY['Nucleotides', 'Fatty acids', 'Sugars', 'Enzymes', 'Lipids'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Whose swan-neck flask experiments disproved the idea that life springs up from nothing?', NULL,
        'Louis Pasteur', ARRAY['Robert Koch', 'Joseph Lister', 'Edward Jenner', 'Francesco Redi', 'Lazzaro Spallanzani'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the name for the planned, natural death of cells?', NULL,
        'Apoptosis', ARRAY['Necrosis', 'Mitosis', 'Meiosis', 'Autolysis', 'Lysis'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which of these is NOT one of the four bases in DNA?', NULL,
        'Uracil', ARRAY['Adenine', 'Guanine', 'Cytosine', 'Thymine'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which part of the cell packages proteins to ship them out?', NULL,
        'The Golgi apparatus', ARRAY['The ribosome', 'The lysosome', 'The nucleolus', 'The centriole', 'The vacuole'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Dutch cloth merchant first saw living bacteria through his own microscopes, in the 1670s?', NULL,
        'Antonie van Leeuwenhoek', ARRAY['Robert Hooke', 'Christiaan Huygens', 'Jan Swammerdam', 'Zacharias Janssen', 'Hans Lippershey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your collarbone?', NULL,
        'The clavicle', ARRAY['The scapula', 'The sternum', 'The patella', 'The ulna', 'The radius'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny air sacs in your lungs, where oxygen passes into the blood, called?', NULL,
        'Alveoli', ARRAY['Bronchi', 'Cilia', 'Villi', 'Capillaries', 'Nephrons'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Mexican salamander can regrow its legs and even parts of its heart and brain?', NULL,
        'The axolotl', ARRAY['The hellbender', 'The newt', 'The mudpuppy', 'The olm', 'The fire salamander'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which clear part of the eye has no blood vessels and takes its oxygen straight from the air?', NULL,
        'The cornea', ARRAY['The iris', 'The retina', 'The pupil', 'The sclera', 'The optic nerve'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which hormone, made when it gets dark, helps control when you feel sleepy?', NULL,
        'Melatonin', ARRAY['Serotonin', 'Adrenaline', 'Insulin', 'Cortisol', 'Dopamine'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which famous line of human cells, taken without consent in 1951, has been used in countless medical studies?', NULL,
        'HeLa cells', ARRAY['Stem cells', 'CAR-T cells', 'Vero cells', 'MCF-7 cells', 'K-562 cells'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which vitamin does your blood need in order to clot?', NULL,
        'Vitamin K', ARRAY['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin E', 'Vitamin B12'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which gas-filled organ lets a fish float at different depths without swimming?', NULL,
        'The swim bladder', ARRAY['The gill sac', 'The lateral line', 'The air fin', 'The float gland', 'The spiracle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Single-celled microbes once lumped with bacteria now form their own branch of life. What are they called?', NULL,
        'Archaea', ARRAY['Protists', 'Fungi', 'Viruses', 'Prions', 'Algae'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What are the tiny hairs that sweep dust and mucus out of your airways?', NULL,
        'Cilia', ARRAY['Villi', 'Flagella', 'Alveoli', 'Microvilli', 'Follicles'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which Austrian scientist showed that baby geese "imprint" on the first moving thing they see?', NULL,
        'Konrad Lorenz', ARRAY['Ivan Pavlov', 'B.F. Skinner', 'Niko Tinbergen', 'Karl von Frisch', 'Sigmund Freud'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'The famous 3.2-million-year-old skeleton known as "Lucy" belongs to which species?', NULL,
        'Australopithecus afarensis', ARRAY['Homo erectus', 'Homo habilis', 'Homo neanderthalensis', 'Paranthropus boisei', 'Ardipithecus ramidus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'About how long is the adult human small intestine?', NULL,
        'About 20 feet', ARRAY['About 3 feet', 'About 6 feet', 'About 50 feet', 'About 100 feet', 'About 10 inches'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which is the largest cell in the human body?', NULL,
        'The egg cell', ARRAY['The nerve cell', 'The red blood cell', 'The muscle cell', 'The skin cell', 'The fat cell'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which blood vessel carries blood from the heart to the lungs?', NULL,
        'The pulmonary artery', ARRAY['The aorta', 'The pulmonary vein', 'The vena cava', 'The carotid artery', 'The coronary artery'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Under its orange fur, what does a tiger''s skin look like?', NULL,
        'Striped', ARRAY['Plain orange', 'Spotted', 'Solid black', 'Pink', 'Pale white'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which seabird has the largest wingspan of any living bird, up to about 11 feet?', NULL,
        'The wandering albatross', ARRAY['The bald eagle', 'The Andean condor', 'The pelican', 'The frigatebird', 'The golden eagle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What is the medical name for your shinbone?', NULL,
        'The tibia', ARRAY['The fibula', 'The femur', 'The radius', 'The ulna', 'The humerus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'Which plant hormone makes a stem bend toward the light?', NULL,
        'Auxin', ARRAY['Ethylene', 'Gibberellin', 'Chlorophyll', 'Abscisic acid', 'Cytokinin'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'CELL_MATES', 'ORIGINAL', NULL,
        'What tough protein are your hair and fingernails made of?', NULL,
        'Keratin', ARRAY['Collagen', 'Melanin', 'Calcium', 'Elastin', 'Chitin'], 400);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'CELL_MATES';
