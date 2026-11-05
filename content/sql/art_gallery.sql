-- ============================================================================
-- content/sql/art_gallery.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/art_gallery.csv, the master copy of the
-- Thinking Pants category ART_GALLERY. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 171 live questions
-- (100: 23, 200: 28, 300: 73, 400: 47), inside a transaction. Safe to re-run.
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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/irises.webp',
        'Irises', ARRAY['Sunflowers', 'Almond Blossoms', 'Wheatfield with Crows', 'Café Terrace at Night', 'The Starry Night', 'The Potato Eaters'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/milkmaid.webp',
        'The Milkmaid', ARRAY['The Lacemaker', 'Girl with a Pearl Earring', 'Woman Holding a Balance', 'The Love Letter', 'The Little Street', 'The Art of Painting'], 100);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/card-players.webp',
        'The Card Players', ARRAY['The Basket of Apples', 'The Large Bathers', 'The Cardsharps', 'The Cheat with the Ace of Diamonds', 'Boy in a Red Waistcoat', 'The Smoker'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/girl-with-red-hat.webp',
        'Girl with a Red Hat', ARRAY['Girl with a Pearl Earring', 'The Milkmaid', 'The Lacemaker', 'Girl Reading a Letter at an Open Window', 'Young Woman with a Water Pitcher', 'Woman Holding a Balance'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/horse-fair.webp',
        'The Horse Fair', ARRAY['Plowing in the Nivernais', 'Whistlejacket', 'The Derby at Epsom', 'The Charging Chasseur', 'Napoleon Crossing the Alps', 'The Hay Wain'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/little-girl-blue-armchair.webp',
        'Little Girl in a Blue Armchair', ARRAY['The Boating Party', 'The Child''s Bath', 'The Cup of Tea', 'In the Loge', 'Breakfast in Bed', 'The Letter'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/napoleon-study.webp',
        'Napoleon in His Study', ARRAY['Napoleon Crossing the Alps', 'The Death of Marat', 'Oath of the Horatii', 'The Death of Socrates', 'The Coronation of Napoleon', 'Madame Récamier'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/paris-street-rainy-day.webp',
        'Paris Street; Rainy Day', ARRAY['The Floor Scrapers', 'Le Pont de l''Europe', 'Young Man at His Window', 'A Sunday on La Grande Jatte', 'Boulevard Montmartre at Night', 'The Absinthe Drinker'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/the-bedroom.webp',
        'The Bedroom', ARRAY['The Night Café', 'The Yellow House', 'Café Terrace at Night', 'Sunflowers', 'The Potato Eaters', 'Wheatfield with Cypresses'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/watson-and-shark.webp',
        'Watson and the Shark', ARRAY['Paul Revere', 'The Death of Major Peirson', 'The Copley Family', 'The Gulf Stream', 'The Raft of the Medusa', 'The Death of General Wolfe'], 200);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This portrait''s famous title hid its sitter''s name. What is it?', '/art/madame-x.webp',
        'Madame X', ARRAY['Lady Agnew of Lochnaw', 'Carnation, Lily, Lily, Rose', 'The Daughters of Edward Darley Boit', 'El Jaleo', 'Mrs. Hugh Hammersley', 'Lady with the Rose'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s this painting called?', '/art/gulf-stream.webp',
        'The Gulf Stream', ARRAY['The Life Line', 'Eight Bells', 'The Fox Hunt', 'Snap the Whip', 'Northeaster', 'The Veteran in a New Field'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'The trains are hidden in the steam. What is this painting called?', '/art/railway-manet.webp',
        'The Railway', ARRAY['Olympia', 'The Luncheon on the Grass', 'A Bar at the Folies-Bergère', 'The Fifer', 'The Balcony', 'Boating'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s this painting called?', '/art/fortune-teller.webp',
        'The Fortune-Teller', ARRAY['The Cheat with the Ace of Diamonds', 'The Card Sharps', 'The Hurdy-Gurdy Player', 'The Penitent Magdalene', 'The Musicians', 'Saint Joseph the Carpenter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s this painting called?', '/art/annunciation-eyck.webp',
        'The Annunciation', ARRAY['The Visitation', 'The Nativity', 'The Adoration of the Magi', 'The Coronation of the Virgin', 'The Presentation in the Temple', 'The Assumption of the Virgin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Its Tahitian title, "Ia Orana Maria," means "Hail _____."', '/art/orana-maria.webp',
        'Mary', ARRAY['Queen', 'Mother', 'Island', 'Morning', 'Sun', 'Ocean'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ Swan"', '/art/threatened-swan.webp',
        'Threatened', ARRAY['Dying', 'Black', 'Proud', 'Wounded', 'Silent', 'Golden'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ Family"', '/art/merry-family.webp',
        'Merry', ARRAY['Holy', 'Royal', 'Peasant', 'Quiet', 'Sleeping', 'Painter''s'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ Letter"', '/art/love-letter-vermeer.webp',
        'Love', ARRAY['Last', 'Secret', 'Lost', 'Farewell', 'First', 'Unopened'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "Breezing Up (A Fair _____)"', '/art/breezing-up-fair-wind.webp',
        'Wind', ARRAY['Day', 'Sea', 'Tide', 'Sail', 'Weather', 'Morning'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ Net"', '/art/herring-net.webp',
        'Herring', ARRAY['Cod', 'Salmon', 'Lobster', 'Trout', 'Mackerel', 'Tuna'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "Woman with a Parasol: Madame Monet and Her _____"', '/art/woman-parasol.webp',
        'Son', ARRAY['Daughter', 'Dog', 'Sister', 'Mother', 'Maid', 'Husband'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "Two Sisters (On the _____)"', '/art/two-sisters-terrace.webp',
        'Terrace', ARRAY['Balcony', 'Beach', 'Riverbank', 'Boat', 'Lawn', 'Porch'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/abduction-europa.webp',
        'The Abduction of Europa', ARRAY['Belshazzar''s Feast', 'The Storm on the Sea of Galilee', 'Danaë', 'The Blinding of Samson', 'Bathsheba at Her Bath', 'The Return of the Prodigal Son'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/aristotle-homer.webp',
        'Aristotle with a Bust of Homer', ARRAY['Portrait of Jan Six', 'The Polish Rider', 'The Jewish Bride', 'Flora', 'The Anatomy Lesson of Dr. Tulp', 'Bathsheba at Her Bath'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/at-moulin-rouge.webp',
        'At the Moulin Rouge', ARRAY['At the Cirque Fernando', 'Jane Avril Dancing', 'The Laundress', 'In Bed: The Kiss', 'Divan Japonais', 'At the Café La Mie'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/basket-apples-cezanne.webp',
        'The Basket of Apples', ARRAY['The Card Players', 'The Large Bathers', 'Boy in a Red Waistcoat', 'The House of the Hanged Man', 'Madame Cézanne in a Red Armchair', 'Mont Sainte-Victoire'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/boating-party.webp',
        'The Boating Party', ARRAY['The Child''s Bath', 'Little Girl in a Blue Armchair', 'The Cup of Tea', 'In the Loge', 'Breakfast in Bed', 'The Letter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/childs-bath.webp',
        'The Child''s Bath', ARRAY['The Boating Party', 'Little Girl in a Blue Armchair', 'The Cup of Tea', 'In the Loge', 'Breakfast in Bed', 'The Letter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/four-dancers.webp',
        'Four Dancers', ARRAY['The Dance Class', 'The Star', 'L''Absinthe', 'The Bellelli Family', 'The Orchestra of the Opera', 'The Tub'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/girl-watering-can.webp',
        'A Girl with a Watering Can', ARRAY['Luncheon of the Boating Party', 'Bal du moulin de la Galette', 'Two Sisters (On the Terrace)', 'The Swing', 'Girls at the Piano', 'Dance at Bougival'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/heart-andes.webp',
        'Heart of the Andes', ARRAY['Niagara', 'Twilight in the Wilderness', 'The Icebergs', 'Cotopaxi', 'Rainy Season in the Tropics', 'Aurora Borealis'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/little-street.webp',
        'The Little Street', ARRAY['View of Delft', 'The Milkmaid', 'The Procuress', 'The Art of Painting', 'The Astronomer', 'The Geographer'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/musicians-caravaggio.webp',
        'The Musicians', ARRAY['The Cardsharps', 'Bacchus', 'Boy Bitten by a Lizard', 'Medusa', 'Basket of Fruit', 'The Calling of Saint Matthew'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/repast-lion.webp',
        'The Repast of the Lion', ARRAY['The Sleeping Gypsy', 'The Dream', 'Tiger in a Tropical Storm (Surprised!)', 'The Snake Charmer', 'The Football Players', 'Carnival Evening'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/stacks-wheat.webp',
        'Stacks of Wheat', ARRAY['Impression, Sunrise', 'Rouen Cathedral', 'Poplars on the Epte', 'Water Lilies', 'The Houses of Parliament, Sunset', 'Woman with a Parasol'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/the-harvesters.webp',
        'The Harvesters', ARRAY['The Hunters in the Snow', 'Netherlandish Proverbs', 'The Tower of Babel', 'The Peasant Wedding', 'Children''s Games', 'Landscape with the Fall of Icarus'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/woman-blue-reading-letter.webp',
        'Woman in Blue Reading a Letter', ARRAY['The Love Letter', 'The Milkmaid', 'Woman Holding a Balance', 'Young Woman with a Water Pitcher', 'The Lacemaker', 'The Concert'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/woman-holding-balance.webp',
        'Woman Holding a Balance', ARRAY['The Milkmaid', 'The Lacemaker', 'The Astronomer', 'The Geographer', 'Woman in Blue Reading a Letter', 'The Concert'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/woman-water-pitcher.webp',
        'Young Woman with a Water Pitcher', ARRAY['The Milkmaid', 'Woman Holding a Balance', 'The Lacemaker', 'Woman in Blue Reading a Letter', 'The Glass of Wine', 'The Concert'], 300);

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
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'What''s this painting called?', '/art/the-oxbow.webp',
        'The Oxbow', ARRAY['The Course of Empire', 'The Voyage of Life', 'View of Schroon Mountain', 'The Titan''s Goblet', 'Falls of the Kaaterskill', 'Lake with Dead Trees'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "_____ of the Normandy Train"', '/art/arrival-normandy-train.webp',
        'Arrival', ARRAY['Departure', 'Return', 'Delay', 'Approach', 'Passing', 'Coming'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "Under the Wave off _____"', '/art/great-wave.webp',
        'Kanagawa', ARRAY['Edo', 'Kyoto', 'Osaka', 'Nagasaki', 'Yokohama', 'Kamakura'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Its nickname is "Red Fuji." Fill in its real title: "Fine Wind, Clear _____"', '/art/red-fuji.webp',
        'Morning', ARRAY['Evening', 'Night', 'Sky', 'Water', 'Day', 'Autumn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Its Tahitian title, "Mahana no Atua," means "Day of the _____."', '/art/day-of-the-god.webp',
        'God', ARRAY['Sun', 'Sea', 'Dead', 'Feast', 'Island', 'Harvest'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ of the Virgin"', '/art/assumption-virgin.webp',
        'Assumption', ARRAY['Annunciation', 'Coronation', 'Adoration', 'Visitation', 'Presentation', 'Immaculate Conception'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The Syndics of the _____ Guild"', '/art/drapers-guild.webp',
        'Drapers''', ARRAY['Bakers''', 'Brewers''', 'Goldsmiths''', 'Shoemakers''', 'Fishmongers''', 'Surgeons'''], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "Stag at _____''s"', '/art/stag-sharkeys.webp',
        'Sharkey', ARRAY['Murphy', 'Rooney', 'McGraw', 'Kelly', 'O''Brien', 'Casey'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Fill in the blank: "The _____ Brothers Turning the Stake"', '/art/biglin-brothers.webp',
        'Biglin', ARRAY['Wright', 'Ringling', 'Grimm', 'Warner', 'Marx', 'Mayo'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'It''s known as the "_____ portrait," after a British lord who owned it.', '/art/washington-lansdowne-portrait.webp',
        'Lansdowne', ARRAY['Athenaeum', 'Vaughan', 'Gibbs', 'Munro', 'Lenox', 'Hamilton'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'This young Florentine woman is Ginevra de'' _____. Fill in her family name.', '/art/ginevra-de-benci.webp',
        'Benci', ARRAY['Medici', 'Este', 'Sforza', 'Gonzaga', 'Strozzi', 'Pazzi'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/burning-house-commons.webp',
        'The Burning of the Houses of Lords and Commons', ARRAY['The Fighting Temeraire', 'Rain, Steam and Speed', 'The Slave Ship', 'Snow Storm: Hannibal and His Army Crossing the Alps', 'The Grand Canal, Venice', 'Ulysses Deriding Polyphemus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/garden-andresse.webp',
        'Garden at Sainte-Adresse', ARRAY['Impression, Sunrise', 'Women in the Garden', 'The Magpie', 'La Grenouillère', 'Regatta at Argenteuil', 'The Beach at Trouville'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/mada-primavesi.webp',
        'Mäda Primavesi', ARRAY['The Kiss', 'Portrait of Adele Bloch-Bauer I', 'Judith and the Head of Holofernes', 'Danaë', 'The Tree of Life', 'Portrait of Emilie Flöge'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/pareja-velazquez.webp',
        'Juan de Pareja', ARRAY['Las Meninas', 'Portrait of Pope Innocent X', 'The Waterseller of Seville', 'The Surrender of Breda', 'The Rokeby Venus', 'Philip IV in Brown and Silver'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/sierra-nevada.webp',
        'Among the Sierra Nevada, California', ARRAY['The Rocky Mountains, Lander''s Peak', 'Storm in the Rocky Mountains, Mt. Rosalie', 'Puget Sound on the Pacific Coast', 'The Last of the Buffalo', 'Emigrants Crossing the Plains', 'The Domes of the Yosemite'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/symphony-white-number1.webp',
        'Symphony in White, No. 1', ARRAY['Arrangement in Grey and Black, No. 1', 'Nocturne in Black and Gold: The Falling Rocket', 'Harmony in Grey and Green: Miss Cicely Alexander', 'Variations in Flesh Colour and Green: The Balcony', 'Nocturne: Blue and Gold, Old Battersea Bridge', 'Caprice in Purple and Gold: The Golden Screen'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_GALLERY', 'ORIGINAL', NULL,
        'Which painting is this?', '/art/winter-landscape-skaters.webp',
        'Winter Landscape with Skaters', ARRAY['The Hunters in the Snow', 'The Census at Bethlehem', 'Children''s Games', 'The Skating Minister', 'The Skater', 'Netherlandish Proverbs'], 400);

COMMIT;

-- Check: should return 171.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_GALLERY';
