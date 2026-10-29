-- ============================================================================
-- content/sql/art_gallery.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/art_gallery.csv, the master copy of the
-- Thinking Pants category ART_GALLERY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 113 live questions
-- (100: 21, 200: 20, 300: 43, 400: 29), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_GALLERY';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/girl-pearl-earring.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Peter Paul Rubens', 'Gerard ter Borch'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s the name of this painting?', '/art/girl-pearl-earring.webp',
        'Girl with a Pearl Earring', ARRAY['The Lacemaker', 'The Milkmaid', 'Girl with a Red Hat', 'Woman Holding a Balance', 'The Love Letter', 'The Art of Painting'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s the famous nickname of this painting?', '/art/night-watch.webp',
        'The Night Watch', ARRAY['The Anatomy Lesson of Dr. Tulp', 'The Syndics of the Drapers'' Guild', 'The Jewish Bride', 'The Return of the Prodigal Son', 'The Storm on the Sea of Galilee', 'Belshazzar''s Feast'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/woman-parasol.webp',
        'Claude Monet', ARRAY['Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Camille Pissarro', 'Alfred Sisley', 'Berthe Morisot'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/irises.webp',
        'Vincent van Gogh', ARRAY['Paul Gauguin', 'Paul Cézanne', 'Claude Monet', 'Georges Seurat', 'Henri de Toulouse-Lautrec', 'Pierre-Auguste Renoir'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/the-bedroom.webp',
        'Vincent van Gogh', ARRAY['Paul Gauguin', 'Paul Cézanne', 'Claude Monet', 'Georges Seurat', 'Henri de Toulouse-Lautrec', 'Pierre-Auguste Renoir'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This artist painted himself in a straw hat. Who is he?', '/art/portrait-straw-hat.webp',
        'Vincent van Gogh', ARRAY['Paul Gauguin', 'Paul Cézanne', 'Claude Monet', 'Georges Seurat', 'Henri de Toulouse-Lautrec', 'Pierre-Auguste Renoir'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/four-dancers.webp',
        'Edgar Degas', ARRAY['Pierre-Auguste Renoir', 'Claude Monet', 'Henri de Toulouse-Lautrec', 'Édouard Manet', 'Mary Cassatt', 'Georges Seurat'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is which city''s street?', '/art/paris-street-rainy-day.webp',
        'Paris', ARRAY['London', 'Vienna', 'Brussels', 'Rome', 'Madrid', 'Berlin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which mountain sits in the background?', '/art/great-wave.webp',
        'Mount Fuji', ARRAY['Mount Everest', 'Mount Kilimanjaro', 'Mount Rainier', 'Mount Etna', 'Mount Olympus', 'Mount Kinabalu'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s the name of this painting?', '/art/american-gothic.webp',
        'American Gothic', ARRAY['Christina''s World', 'Dinner for Threshers', 'Daughters of Revolution', 'Stone City, Iowa', 'Spring Turning', 'Young Corn'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What farm tool is the man holding?', '/art/american-gothic.webp',
        'A pitchfork', ARRAY['A rake', 'A hoe', 'A shovel', 'A scythe', 'A sickle', 'A spade'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which river is being crossed?', '/art/washington-crossing-delaware.webp',
        'The Delaware', ARRAY['The Hudson', 'The Potomac', 'The Susquehanna', 'The Ohio', 'The Connecticut', 'The Schuylkill'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who is this?', '/art/washington-lansdowne-portrait.webp',
        'George Washington', ARRAY['John Adams', 'Thomas Jefferson', 'James Madison', 'Alexander Hamilton', 'John Hancock', 'Benjamin Franklin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What is this man doing?', '/art/the-skater.webp',
        'Ice skating', ARRAY['Dancing', 'Fencing', 'Sledding', 'Skiing', 'Curling', 'Marching'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who is this?', '/art/napoleon-study.webp',
        'Napoleon', ARRAY['Louis XVI', 'The Duke of Wellington', 'Charlemagne', 'Louis-Philippe', 'Lafayette', 'Talleyrand'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What animals circle the boat?', '/art/gulf-stream.webp',
        'Sharks', ARRAY['Dolphins', 'Whales', 'Alligators', 'Barracudas', 'Sea turtles', 'Eels'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What sport is shown?', '/art/biglin-brothers.webp',
        'Rowing', ARRAY['Sailing', 'Canoeing', 'Kayaking', 'Fishing', 'Swimming', 'Water polo'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What sport is shown?', '/art/stag-sharkeys.webp',
        'Boxing', ARRAY['Wrestling', 'Fencing', 'Judo', 'Sumo', 'Rugby', 'Karate'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which season is shown?', '/art/the-harvesters.webp',
        'Summer', ARRAY['Spring', 'Autumn', 'Winter'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who is this French heroine, hearing her voices?', '/art/joan-of-arc.webp',
        'Joan of Arc', ARRAY['Marie Antoinette', 'Catherine de'' Medici', 'Eleanor of Aquitaine', 'Saint Geneviève', 'Charlotte Corday', 'Marianne'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/milkmaid.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/woman-water-pitcher.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/woman-blue-reading-letter.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/night-watch.webp',
        'Rembrandt', ARRAY['Johannes Vermeer', 'Frans Hals', 'Peter Paul Rubens', 'Jan Steen', 'Anthony van Dyck', 'Diego Velázquez'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This Dutch master painted himself dozens of times. Who is he?', '/art/rembrandt-self-portrait.webp',
        'Rembrandt', ARRAY['Frans Hals', 'Peter Paul Rubens', 'Anthony van Dyck', 'Diego Velázquez', 'Albrecht Dürer', 'Titian'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This painting belongs to which art movement?', '/art/woman-parasol.webp',
        'Impressionism', ARRAY['Cubism', 'Expressionism', 'Surrealism', 'Realism', 'Romanticism', 'Pop Art'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/bridge-over-pond-lilies.webp',
        'Claude Monet', ARRAY['Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Camille Pissarro', 'Alfred Sisley', 'Berthe Morisot'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is one of a famous series of haystack paintings. Who painted it?', '/art/stacks-wheat.webp',
        'Claude Monet', ARRAY['Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Camille Pissarro', 'Alfred Sisley', 'Berthe Morisot'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Its painter lived on which South Pacific island when he made it?', '/art/orana-maria.webp',
        'Tahiti', ARRAY['Hawaii', 'Fiji', 'Samoa', 'Bali', 'Tonga', 'New Caledonia'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/two-sisters-terrace.webp',
        'Pierre-Auguste Renoir', ARRAY['Claude Monet', 'Edgar Degas', 'Mary Cassatt', 'Édouard Manet', 'Berthe Morisot', 'Camille Pissarro'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/childs-bath.webp',
        'Mary Cassatt', ARRAY['Berthe Morisot', 'Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Eva Gonzalès', 'Claude Monet'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/at-moulin-rouge.webp',
        'Henri de Toulouse-Lautrec', ARRAY['Edgar Degas', 'Édouard Manet', 'Pierre-Auguste Renoir', 'Georges Seurat', 'Vincent van Gogh', 'Paul Gauguin'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This scene is set in which famous Paris nightclub?', '/art/at-moulin-rouge.webp',
        'The Moulin Rouge', ARRAY['The Folies Bergère', 'Le Chat Noir', 'The Lapin Agile', 'The Lido', 'The Crazy Horse', 'Bal Tabarin'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/great-wave.webp',
        'Katsushika Hokusai', ARRAY['Utagawa Hiroshige', 'Kitagawa Utamaro', 'Tōshūsai Sharaku', 'Utagawa Kuniyoshi', 'Suzuki Harunobu', 'Kawase Hasui'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/american-gothic.webp',
        'Grant Wood', ARRAY['Norman Rockwell', 'Andrew Wyeth', 'Thomas Hart Benton', 'John Steuart Curry', 'Edward Hopper', 'Winslow Homer'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/gulf-stream.webp',
        'Winslow Homer', ARRAY['Thomas Eakins', 'John Singer Sargent', 'George Bellows', 'Frederic Edwin Church', 'James McNeill Whistler', 'John Singleton Copley'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This painter is best known for a portrait of his mother. Who painted this?', '/art/symphony-white-number1.webp',
        'James McNeill Whistler', ARRAY['John Singer Sargent', 'Édouard Manet', 'Gustave Courbet', 'Dante Gabriel Rossetti', 'John Everett Millais', 'Thomas Eakins'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which mountain range is shown?', '/art/heart-andes.webp',
        'The Andes', ARRAY['The Rockies', 'The Alps', 'The Himalayas', 'The Sierra Nevada', 'The Appalachians', 'The Pyrenees'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/view-of-toledo.webp',
        'El Greco', ARRAY['Diego Velázquez', 'Francisco Goya', 'Francisco de Zurbarán', 'Bartolomé Esteban Murillo', 'Titian', 'Tintoretto'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This comes from which country''s 17th-century ''Golden Age'' of painting?', '/art/winter-landscape-skaters.webp',
        'The Netherlands', ARRAY['Spain', 'Italy', 'France', 'England', 'Germany', 'Denmark'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/woman-holding-balance.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/girl-with-red-hat.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/love-letter-vermeer.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/little-street.webp',
        'Johannes Vermeer', ARRAY['Rembrandt', 'Frans Hals', 'Jan Steen', 'Pieter de Hooch', 'Gerard ter Borch', 'Gabriel Metsu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/aristotle-homer.webp',
        'Rembrandt', ARRAY['Johannes Vermeer', 'Frans Hals', 'Peter Paul Rubens', 'Jan Steen', 'Anthony van Dyck', 'Diego Velázquez'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'In Greek myth, Europa is carried off by which god, disguised as a bull?', '/art/abduction-europa.webp',
        'Zeus', ARRAY['Poseidon', 'Apollo', 'Hermes', 'Ares', 'Hades', 'Dionysus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This bridge was in the painter''s own garden, in which French village?', '/art/japanese-footbridge-monet.webp',
        'Giverny', ARRAY['Argenteuil', 'Barbizon', 'Arles', 'Auvers-sur-Oise', 'Pontoise', 'Honfleur'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/arrival-normandy-train.webp',
        'Claude Monet', ARRAY['Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Camille Pissarro', 'Alfred Sisley', 'Berthe Morisot'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/garden-andresse.webp',
        'Claude Monet', ARRAY['Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Camille Pissarro', 'Alfred Sisley', 'Berthe Morisot'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This was his bedroom in the "Yellow House," in which French town?', '/art/the-bedroom.webp',
        'Arles', ARRAY['Paris', 'Auvers-sur-Oise', 'Saint-Rémy-de-Provence', 'Giverny', 'Nice', 'Marseille'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This painter''s style belongs to which movement?', '/art/the-bedroom.webp',
        'Post-Impressionism', ARRAY['Cubism', 'Surrealism', 'Realism', 'Romanticism', 'Baroque', 'Art Deco'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/card-players.webp',
        'Paul Cézanne', ARRAY['Camille Pissarro', 'Paul Gauguin', 'Vincent van Gogh', 'Pierre-Auguste Renoir', 'Henri Matisse', 'Georges Braque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/basket-apples-cezanne.webp',
        'Paul Cézanne', ARRAY['Camille Pissarro', 'Paul Gauguin', 'Vincent van Gogh', 'Pierre-Auguste Renoir', 'Henri Matisse', 'Georges Braque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/mont-sainte-victoire.webp',
        'Paul Cézanne', ARRAY['Camille Pissarro', 'Paul Gauguin', 'Vincent van Gogh', 'Pierre-Auguste Renoir', 'Henri Matisse', 'Georges Braque'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/orana-maria.webp',
        'Paul Gauguin', ARRAY['Vincent van Gogh', 'Paul Cézanne', 'Henri Matisse', 'Henri Rousseau', 'Émile Bernard', 'Henri de Toulouse-Lautrec'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/day-of-the-god.webp',
        'Paul Gauguin', ARRAY['Vincent van Gogh', 'Paul Cézanne', 'Henri Matisse', 'Henri Rousseau', 'Émile Bernard', 'Henri de Toulouse-Lautrec'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/girl-watering-can.webp',
        'Pierre-Auguste Renoir', ARRAY['Claude Monet', 'Edgar Degas', 'Mary Cassatt', 'Édouard Manet', 'Berthe Morisot', 'Camille Pissarro'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This American lived in Paris and showed with the Impressionists. Who painted this?', '/art/boating-party.webp',
        'Mary Cassatt', ARRAY['Berthe Morisot', 'Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Eva Gonzalès', 'Claude Monet'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/little-girl-blue-armchair.webp',
        'Mary Cassatt', ARRAY['Berthe Morisot', 'Pierre-Auguste Renoir', 'Edgar Degas', 'Édouard Manet', 'Eva Gonzalès', 'Claude Monet'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/railway-manet.webp',
        'Édouard Manet', ARRAY['Claude Monet', 'Edgar Degas', 'Pierre-Auguste Renoir', 'Gustave Caillebotte', 'Mary Cassatt', 'Berthe Morisot'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/paris-street-rainy-day.webp',
        'Gustave Caillebotte', ARRAY['Claude Monet', 'Camille Pissarro', 'Pierre-Auguste Renoir', 'Édouard Manet', 'Edgar Degas', 'Alfred Sisley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This Japanese woodblock print belongs to which art style?', '/art/great-wave.webp',
        'Ukiyo-e', ARRAY['Sumi-e', 'Nihonga', 'Yamato-e', 'Rinpa', 'Kanō school', 'Shin-hanga'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is from the same series as "The Great Wave." Who made it?', '/art/red-fuji.webp',
        'Katsushika Hokusai', ARRAY['Utagawa Hiroshige', 'Kitagawa Utamaro', 'Tōshūsai Sharaku', 'Utagawa Kuniyoshi', 'Suzuki Harunobu', 'Kawase Hasui'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This artist''s portrait of the same man became the one on the $1 bill. Who painted this?', '/art/washington-lansdowne-portrait.webp',
        'Gilbert Stuart', ARRAY['John Trumbull', 'Charles Willson Peale', 'John Singleton Copley', 'Benjamin West', 'Rembrandt Peale', 'Thomas Sully'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/napoleon-study.webp',
        'Jacques-Louis David', ARRAY['Jean-Auguste-Dominique Ingres', 'Eugène Delacroix', 'Théodore Géricault', 'Antoine-Jean Gros', 'Francisco Goya', 'François Gérard'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This attack happened in which city''s harbor?', '/art/watson-and-shark.webp',
        'Havana', ARRAY['Kingston', 'Boston', 'Nassau', 'San Juan', 'Charleston', 'Veracruz'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/breezing-up-fair-wind.webp',
        'Winslow Homer', ARRAY['Thomas Eakins', 'John Singer Sargent', 'George Bellows', 'Frederic Edwin Church', 'James McNeill Whistler', 'John Singleton Copley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/herring-net.webp',
        'Winslow Homer', ARRAY['Thomas Eakins', 'John Singer Sargent', 'George Bellows', 'Frederic Edwin Church', 'James McNeill Whistler', 'John Singleton Copley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/madame-x.webp',
        'John Singer Sargent', ARRAY['James McNeill Whistler', 'Édouard Manet', 'Carolus-Duran', 'Giovanni Boldini', 'Mary Cassatt', 'Gustav Klimt'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Its painter founded which American art movement?', '/art/the-oxbow.webp',
        'The Hudson River School', ARRAY['The Ashcan School', 'Regionalism', 'Tonalism', 'American Impressionism', 'Precisionism', 'Abstract Expressionism'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'These mountains are in which US state?', '/art/sierra-nevada.webp',
        'California', ARRAY['Colorado', 'Wyoming', 'Montana', 'Utah', 'Washington', 'Idaho'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is the only painting by its artist in the Americas. Who painted it?', '/art/ginevra-de-benci.webp',
        'Leonardo da Vinci', ARRAY['Raphael', 'Sandro Botticelli', 'Titian', 'Michelangelo', 'Giorgione', 'Perugino'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/the-harvesters.webp',
        'Pieter Bruegel the Elder', ARRAY['Hieronymus Bosch', 'Jan van Eyck', 'Peter Paul Rubens', 'Albrecht Dürer', 'Hans Holbein the Younger', 'Hans Memling'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which angel brings Mary the news here?', '/art/annunciation-eyck.webp',
        'Gabriel', ARRAY['Michael', 'Raphael', 'Uriel', 'Azrael', 'Metatron', 'Ariel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This stormy view shows which Spanish city?', '/art/view-of-toledo.webp',
        'Toledo', ARRAY['Madrid', 'Seville', 'Granada', 'Segovia', 'Ávila', 'Córdoba'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/pareja-velazquez.webp',
        'Diego Velázquez', ARRAY['El Greco', 'Francisco Goya', 'Bartolomé Esteban Murillo', 'Francisco de Zurbarán', 'Jusepe de Ribera', 'Peter Paul Rubens'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/musicians-caravaggio.webp',
        'Caravaggio', ARRAY['Titian', 'Raphael', 'Peter Paul Rubens', 'Artemisia Gentileschi', 'Diego Velázquez', 'Annibale Carracci'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'While his fortune is told, what''s happening to the young man?', '/art/fortune-teller.webp',
        'He''s being pickpocketed', ARRAY['He''s being knighted', 'He''s proposing marriage', 'He''s paying the bill', 'He''s being arrested', 'He''s being measured for a coat', 'He''s reading a letter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/burning-house-commons.webp',
        'J. M. W. Turner', ARRAY['John Constable', 'Eugène Delacroix', 'Claude Monet', 'Thomas Gainsborough', 'Caspar David Friedrich', 'Thomas Cole'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'One of the most famous women painters of the 1800s made this. Who?', '/art/horse-fair.webp',
        'Rosa Bonheur', ARRAY['Mary Cassatt', 'Berthe Morisot', 'Élisabeth Vigée Le Brun', 'Marie Bracquemond', 'Eva Gonzalès', 'Artemisia Gentileschi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/repast-lion.webp',
        'Henri Rousseau', ARRAY['Paul Gauguin', 'Henri Matisse', 'Georges Seurat', 'Marc Chagall', 'Franz Marc', 'Paul Klee'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/mada-primavesi.webp',
        'Gustav Klimt', ARRAY['Egon Schiele', 'Alphonse Mucha', 'Koloman Moser', 'Oskar Kokoschka', 'Edvard Munch', 'John Singer Sargent'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'In Dutch, a rowdy, messy home is called a household of which painter?', '/art/merry-family.webp',
        'Jan Steen', ARRAY['Rembrandt', 'Johannes Vermeer', 'Frans Hals', 'Pieter de Hooch', 'Hieronymus Bosch', 'Pieter Bruegel the Elder'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This street is in its painter''s hometown. Which Dutch city?', '/art/little-street.webp',
        'Delft', ARRAY['Amsterdam', 'Haarlem', 'Leiden', 'Utrecht', 'Rotterdam', 'The Hague'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'The philosopher rests his hand on a bust of which ancient poet?', '/art/aristotle-homer.webp',
        'Homer', ARRAY['Virgil', 'Ovid', 'Hesiod', 'Sophocles', 'Pindar', 'Euripides'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/drapers-guild.webp',
        'Rembrandt', ARRAY['Frans Hals', 'Bartholomeus van der Helst', 'Ferdinand Bol', 'Johannes Vermeer', 'Jan Steen', 'Thomas de Keyser'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'These men have long appeared on the box of which American cigar brand?', '/art/drapers-guild.webp',
        'Dutch Masters', ARRAY['Swisher Sweets', 'Garcia y Vega', 'White Owl', 'Phillies', 'Backwoods', 'Romeo y Julieta'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/abduction-europa.webp',
        'Rembrandt', ARRAY['Peter Paul Rubens', 'Titian', 'Nicolas Poussin', 'Johannes Vermeer', 'Jan Steen', 'Anthony van Dyck'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'The woman is the artist''s wife. What was her name?', '/art/woman-parasol.webp',
        'Camille', ARRAY['Berthe', 'Marie', 'Louise', 'Jeanne', 'Suzanne', 'Margot'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is which Paris railway station?', '/art/arrival-normandy-train.webp',
        'Gare Saint-Lazare', ARRAY['Gare du Nord', 'Gare de Lyon', 'Gare de l''Est', 'Gare d''Austerlitz', 'Gare Montparnasse', 'Gare d''Orsay'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'He painted this in his first week at an asylum near which French town?', '/art/irises.webp',
        'Saint-Rémy-de-Provence', ARRAY['Arles', 'Auvers-sur-Oise', 'Aix-en-Provence', 'Pont-Aven', 'Avignon', 'Nîmes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Cézanne painted this mountain again and again. Which one is it?', '/art/mont-sainte-victoire.webp',
        'Mont Sainte-Victoire', ARRAY['Mont Blanc', 'Mont Ventoux', 'Puy de Dôme', 'Mont Canigou', 'Pic du Midi', 'Mont Saint-Michel'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This is a classic of which 1930s American art movement?', '/art/american-gothic.webp',
        'Regionalism', ARRAY['The Ashcan School', 'The Hudson River School', 'Precisionism', 'Abstract Expressionism', 'Pop Art', 'Tonalism'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/washington-crossing-delaware.webp',
        'Emanuel Leutze', ARRAY['Gilbert Stuart', 'John Trumbull', 'Charles Willson Peale', 'Benjamin West', 'John Singleton Copley', 'Thomas Sully'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This 1782 portrait made the name of a painter later famous for his portraits of George Washington. Who?', '/art/the-skater.webp',
        'Gilbert Stuart', ARRAY['John Trumbull', 'Charles Willson Peale', 'John Singleton Copley', 'Benjamin West', 'Rembrandt Peale', 'Thomas Sully'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/watson-and-shark.webp',
        'John Singleton Copley', ARRAY['Benjamin West', 'Gilbert Stuart', 'John Trumbull', 'Charles Willson Peale', 'Winslow Homer', 'Emanuel Leutze'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/biglin-brothers.webp',
        'Thomas Eakins', ARRAY['Winslow Homer', 'John Singer Sargent', 'George Bellows', 'James McNeill Whistler', 'William Merritt Chase', 'Mary Cassatt'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/stag-sharkeys.webp',
        'George Bellows', ARRAY['Thomas Eakins', 'Winslow Homer', 'Edward Hopper', 'John Sloan', 'Robert Henri', 'John Singer Sargent'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This portrait caused a scandal in Paris, partly over a fallen what?', '/art/madame-x.webp',
        'Shoulder strap', ARRAY['Earring', 'Glove', 'Necklace', 'Hairpin', 'Fan', 'Shoe'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/the-oxbow.webp',
        'Thomas Cole', ARRAY['Frederic Edwin Church', 'Albert Bierstadt', 'Asher B. Durand', 'Thomas Moran', 'George Inness', 'Jasper Cropsey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This bend is on which New England river?', '/art/the-oxbow.webp',
        'The Connecticut', ARRAY['The Merrimack', 'The Hudson', 'The Housatonic', 'The Kennebec', 'The Penobscot', 'The Charles'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/heart-andes.webp',
        'Frederic Edwin Church', ARRAY['Thomas Cole', 'Albert Bierstadt', 'Asher B. Durand', 'Thomas Moran', 'George Inness', 'Jasper Cropsey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/sierra-nevada.webp',
        'Albert Bierstadt', ARRAY['Thomas Cole', 'Frederic Edwin Church', 'Asher B. Durand', 'Thomas Moran', 'George Inness', 'Jasper Cropsey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'In which century was this portrait painted?', '/art/ginevra-de-benci.webp',
        'The 15th', ARRAY['The 13th', 'The 14th', 'The 16th', 'The 17th', 'The 18th', 'The 19th'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/annunciation-eyck.webp',
        'Jan van Eyck', ARRAY['Rogier van der Weyden', 'Hans Memling', 'Robert Campin', 'Petrus Christus', 'Hugo van der Goes', 'Albrecht Dürer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/assumption-virgin.webp',
        'El Greco', ARRAY['Diego Velázquez', 'Francisco Goya', 'Francisco de Zurbarán', 'Bartolomé Esteban Murillo', 'Titian', 'Tintoretto'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/fortune-teller.webp',
        'Georges de La Tour', ARRAY['Caravaggio', 'Diego Velázquez', 'Nicolas Poussin', 'Louis Le Nain', 'Valentin de Boulogne', 'Johannes Vermeer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This 1834 fire destroyed most of which London landmark?', '/art/burning-house-commons.webp',
        'The Palace of Westminster', ARRAY['St Paul''s Cathedral', 'The Tower of London', 'Buckingham Palace', 'Westminster Abbey', 'The Crystal Palace', 'Hampton Court Palace'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/joan-of-arc.webp',
        'Jules Bastien-Lepage', ARRAY['Jean-François Millet', 'Gustave Courbet', 'Camille Corot', 'Pierre Puvis de Chavannes', 'Rosa Bonheur', 'Jules Breton'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Despite jungle scenes like this, its painter never left which country?', '/art/repast-lion.webp',
        'France', ARRAY['Belgium', 'Spain', 'Italy', 'Switzerland', 'Mexico', 'Brazil'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Who painted this?', '/art/winter-landscape-skaters.webp',
        'Hendrick Avercamp', ARRAY['Pieter Bruegel the Elder', 'Jan van Goyen', 'Jacob van Ruisdael', 'Jan Steen', 'Aert van der Neer', 'Frans Hals'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This 1650 painting is the most famous by which Dutch artist?', '/art/threatened-swan.webp',
        'Jan Asselijn', ARRAY['Jan Steen', 'Melchior d''Hondecoeter', 'Paulus Potter', 'Aelbert Cuyp', 'Jan Weenix', 'Frans Snyders'], 400);

COMMIT;

-- Check: should return 113.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_GALLERY';
