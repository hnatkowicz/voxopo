-- ============================================================================
-- content/sql/art_and_architecture.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/art_and_architecture.csv, the master copy of the
-- Thinking Pants category ART_AND_ARCHITECTURE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_AND_ARCHITECTURE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Who painted the ceiling of the Sistine Chapel?', NULL,
        'Michelangelo', ARRAY['Leonardo da Vinci', 'Raphael', 'Donatello', 'Titian', 'Caravaggio', 'Botticelli'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Who painted the "Mona Lisa"?', NULL,
        'Leonardo da Vinci', ARRAY['Michelangelo', 'Raphael', 'Sandro Botticelli', 'Titian', 'Caravaggio', 'Donatello'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the term for a painting of fruit, flowers, or everyday objects, rather than people or scenery?', NULL,
        'A still life', ARRAY['A landscape', 'A portrait', 'A fresco', 'A mural', 'A tapestry', 'A triptych'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Dutch painter of "The Starry Night" famously cut off part of his own ear?', NULL,
        'Vincent van Gogh', ARRAY['Rembrandt', 'Paul Gauguin', 'Claude Monet', 'Paul Cezanne', 'Johannes Vermeer', 'Henri de Toulouse-Lautrec'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Spanish artist painted "Guernica," his 1937 protest against the bombing of a Basque town?', NULL,
        'Pablo Picasso', ARRAY['Salvador Dali', 'Joan Miro', 'Francisco Goya', 'Diego Velazquez', 'El Greco', 'Juan Gris'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which statue in New York Harbor was a gift from the people of France?', NULL,
        'The Statue of Liberty', ARRAY['The Statue of Freedom', 'Lady Justice', 'The Charging Bull', 'The Motherland Calls', 'The Little Mermaid', 'The Angel of the North'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Paris landmark was built for the 1889 World''s Fair and was meant to come down after 20 years?', NULL,
        'The Eiffel Tower', ARRAY['The Arc de Triomphe', 'The Grand Palais', 'The Sacre-Coeur', 'The Louvre Pyramid', 'The Pompidou Centre', 'The Opera Garnier'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which South Dakota mountain has the faces of four U.S. presidents carved into it?', NULL,
        'Mount Rushmore', ARRAY['Stone Mountain', 'Crazy Horse Memorial', 'Pikes Peak', 'Mount Vernon', 'Mount Hood', 'Mount Whitney'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Spanish artist with a famous upturned mustache painted the melting clocks of "The Persistence of Memory"?', NULL,
        'Salvador Dali', ARRAY['Pablo Picasso', 'Joan Miro', 'Rene Magritte', 'Max Ernst', 'Francisco Goya', 'Diego Velazquez'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American artist made famous prints of Campbell''s soup cans and Marilyn Monroe?', NULL,
        'Andy Warhol', ARRAY['Roy Lichtenstein', 'Keith Haring', 'Jasper Johns', 'Jackson Pollock', 'Robert Rauschenberg', 'Jeff Koons'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'In which Paris museum does the "Mona Lisa" hang?', NULL,
        'The Louvre', ARRAY['The Musee d''Orsay', 'The Pompidou Centre', 'The Orangerie', 'The Musee Rodin', 'The Petit Palais', 'The Grand Palais'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which ancient statue at Giza has a lion''s body and a human head?', NULL,
        'The Great Sphinx', ARRAY['The Colossi of Memnon', 'The Statue of Ramesses II', 'The Mask of Tutankhamun', 'The Bust of Nefertiti', 'The Rosetta Stone', 'The Great Pyramid'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which white marble tomb in Agra, India, did the emperor Shah Jahan build for his wife?', NULL,
        'The Taj Mahal', ARRAY['The Red Fort', 'Humayun''s Tomb', 'The Golden Temple', 'The Lotus Temple', 'The Amber Fort', 'The Hawa Mahal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Australian landmark, opened in 1973, has a roof of white shell-like ''sails''?', NULL,
        'The Sydney Opera House', ARRAY['The Sydney Harbour Bridge', 'Sydney Tower', 'Parliament House, Canberra', 'Federation Square', 'The Royal Exhibition Building', 'Arts Centre Melbourne'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'In which Italian city does a famous cathedral bell tower lean?', NULL,
        'Pisa', ARRAY['Florence', 'Venice', 'Siena', 'Verona', 'Milan', 'Rome'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which giant statue, arms spread wide, looks down on Rio de Janeiro?', NULL,
        'Christ the Redeemer', ARRAY['Cristo Rei', 'The Statue of Liberty', 'The Motherland Calls', 'The Spring Temple Buddha', 'The Angel of the North', 'Our Lady of Peace'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'In traditional color theory, what are the three primary colors of paint?', NULL,
        'Red, yellow and blue', ARRAY['Red, green and blue', 'Red, orange and yellow', 'Blue, green and purple', 'Black, white and red', 'Green, orange and purple', 'Red, yellow and green'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'What is a picture made from small pieces of stone or tile set into plaster called?', NULL,
        'A mosaic', ARRAY['A collage', 'A tapestry', 'A mural', 'A stencil', 'An etching', 'A frieze'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which prehistoric stone circle stands on Salisbury Plain in England?', NULL,
        'Stonehenge', ARRAY['Avebury', 'Hadrian''s Wall', 'The Callanish Stones', 'The Carnac Stones', 'Skara Brae', 'Newgrange'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which young biblical hero, shown about to face Goliath, is the subject of Florence''s most famous marble statue?', NULL,
        'David', ARRAY['Moses', 'Samson', 'Joshua', 'Solomon', 'Saul', 'Gideon'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architect devoted the last decades of his life to the Sagrada Familia basilica in Barcelona?', NULL,
        'Antoni Gaudi', ARRAY['Santiago Calatrava', 'Rafael Moneo', 'Pablo Picasso', 'Salvador Dali', 'Joan Miro', 'Frank Gehry'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which art movement, begun in Paris around 1907-08, broke subjects into geometric shapes seen from several angles at once?', NULL,
        'Cubism', ARRAY['Surrealism', 'Impressionism', 'Expressionism', 'Fauvism', 'Dadaism', 'Futurism'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the technique of painting onto wet plaster, so the color becomes part of the wall, called?', NULL,
        'Fresco', ARRAY['Tempera', 'Gouache', 'Encaustic', 'Impasto', 'Chiaroscuro', 'Sfumato'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which ancient Roman amphitheater, famous for gladiator contests, still stands in the center of Rome today?', NULL,
        'The Colosseum', ARRAY['The Pantheon', 'The Roman Forum', 'The Circus Maximus', 'The Baths of Caracalla', 'The Arch of Constantine', 'Trajan''s Market'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Dutch painter is famous for "Girl with a Pearl Earring" and his masterful use of light?', NULL,
        'Johannes Vermeer', ARRAY['Rembrandt', 'Pieter Bruegel', 'Hieronymus Bosch', 'Jan van Eyck', 'Frans Hals', 'Jacob van Ruisdael'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Norwegian artist painted "The Scream" in 1893?', NULL,
        'Edvard Munch', ARRAY['Gustav Klimt', 'Egon Schiele', 'James Ensor', 'Wassily Kandinsky', 'Paul Gauguin', 'Henri Matisse'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Mexican artist, known for vivid self-portraits exploring identity and pain, was married to muralist Diego Rivera?', NULL,
        'Frida Kahlo', ARRAY['Remedios Varo', 'Leonora Carrington', 'Maria Izquierdo', 'Tina Modotti', 'Olga Costa', 'Lola Alvarez Bravo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which French sculptor created the bronze "The Thinker," depicting a man resting his chin on his hand in contemplation?', NULL,
        'Auguste Rodin', ARRAY['Donatello', 'Gian Lorenzo Bernini', 'Lorenzo Ghiberti', 'Benvenuto Cellini', 'Andrea del Verrocchio', 'Antonio Canova'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American painter, nicknamed "Jack the Dripper," poured and splattered paint onto canvases laid on the floor?', NULL,
        'Jackson Pollock', ARRAY['Mark Rothko', 'Willem de Kooning', 'Franz Kline', 'Robert Motherwell', 'Roy Lichtenstein', 'Jasper Johns'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which anonymous British street artist''s "Girl with Balloon" shredded itself just after selling at auction in 2018?', NULL,
        'Banksy', ARRAY['Shepard Fairey', 'Invader', 'KAWS', 'Mr. Brainwash', 'JR', 'Blek le Rat'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which French painter returned again and again to his water lily pond at Giverny in his later years?', NULL,
        'Claude Monet', ARRAY['Edouard Manet', 'Pierre-Auguste Renoir', 'Edgar Degas', 'Camille Pissarro', 'Paul Cezanne', 'Alfred Sisley'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Dutch master painted "The Night Watch" in 1642?', NULL,
        'Rembrandt', ARRAY['Johannes Vermeer', 'Frans Hals', 'Jan Steen', 'Anthony van Dyck', 'Peter Paul Rubens', 'Pieter Bruegel the Elder'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1950s-60s art movement borrowed its images from comic strips, advertising and supermarket products?', NULL,
        'Pop art', ARRAY['Op art', 'Minimalism', 'Abstract expressionism', 'Dada', 'Street art', 'Conceptual art'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Wonder of the Ancient World was a giant bronze statue of the sun god Helios beside a Greek harbor?', NULL,
        'The Colossus of Rhodes', ARRAY['The Lighthouse of Alexandria', 'The Statue of Zeus at Olympia', 'The Temple of Artemis', 'The Mausoleum at Halicarnassus', 'The Hanging Gardens of Babylon', 'The Great Pyramid of Giza'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which New York skyscraper opened in 1931 and was the world''s tallest building for nearly 40 years?', NULL,
        'The Empire State Building', ARRAY['The Chrysler Building', 'The Flatiron Building', 'The Woolworth Building', '30 Rockefeller Plaza', 'The Seagram Building', 'The MetLife Building'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1920s art movement, launched by Andre Breton''s 1924 manifesto, drew on dreams and the unconscious mind?', NULL,
        'Surrealism', ARRAY['Dadaism', 'Expressionism', 'Futurism', 'Symbolism', 'Fauvism', 'Romanticism'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which ancient city, carved into rose-red sandstone cliffs, is the most famous sight in Jordan?', NULL,
        'Petra', ARRAY['Palmyra', 'Persepolis', 'Jerash', 'Babylon', 'Carthage', 'Baalbek'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'The famous "Venus de Milo" statue is missing what?', NULL,
        'Its arms', ARRAY['Its head', 'Its feet', 'Its nose', 'Its left leg', 'Its wings', 'Its crown'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which great temple to Athena, finished in the 430s BC, crowns the Acropolis of Athens?', NULL,
        'The Parthenon', ARRAY['The Pantheon', 'The Temple of Olympian Zeus', 'The Temple of Hephaestus', 'The Temple of Apollo', 'The Temple of Poseidon', 'The Temple of Artemis'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Renaissance painter created "The School of Athens," with Plato and Aristotle at its center, in the Vatican?', NULL,
        'Raphael', ARRAY['Michelangelo', 'Leonardo da Vinci', 'Titian', 'Sandro Botticelli', 'Caravaggio', 'Giotto'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the term for a sculpture or building style that is extremely ornate, dramatic, and grand, popular in 17th-century Europe?', NULL,
        'Baroque', ARRAY['Gothic', 'Renaissance', 'Rococo', 'Neoclassical', 'Art Deco', 'Brutalist'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architectural style, dominant in medieval European cathedrals like Notre-Dame, is known for pointed arches and flying buttresses?', NULL,
        'Gothic', ARRAY['Romanesque', 'Baroque', 'Byzantine', 'Renaissance', 'Neoclassical', 'Art Nouveau'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architect designed New York City''s spiral-shaped Solomon R. Guggenheim Museum?', NULL,
        'Frank Lloyd Wright', ARRAY['Frank Gehry', 'I.M. Pei', 'Mies van der Rohe', 'Le Corbusier', 'Zaha Hadid', 'Renzo Piano'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What term describes the dramatic contrast between light and dark in a painting, a technique mastered by Caravaggio?', NULL,
        'Chiaroscuro', ARRAY['Sfumato', 'Impasto', 'Pointillism', 'Trompe l''oeil', 'Foreshortening', 'Grisaille'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which painting technique, pioneered by Georges Seurat, builds an image entirely from small, distinct dots of color?', NULL,
        'Pointillism', ARRAY['Impressionism', 'Cubism', 'Fauvism', 'Tachisme', 'Op Art', 'Expressionism'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which art movement took its name from a critic mocking an 1872 painting of a hazy sunrise over Le Havre?', NULL,
        'Impressionism', ARRAY['Realism', 'Fauvism', 'Expressionism', 'Romanticism', 'Symbolism', 'Naturalism'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Iowa painter created the 1930 picture of a stern farmer holding a pitchfork beside a woman in front of a farmhouse?', NULL,
        'Grant Wood', ARRAY['Norman Rockwell', 'Edward Hopper', 'Thomas Hart Benton', 'Andrew Wyeth', 'Winslow Homer', 'John Steuart Curry'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American painter created "Nighthawks," the lonely late-night diner scene?', NULL,
        'Edward Hopper', ARRAY['Norman Rockwell', 'Andrew Wyeth', 'George Bellows', 'Grant Wood', 'Thomas Hart Benton', 'Charles Sheeler'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist, who started out spray-painting "SAMO" tags around 1970s New York, became a star painter of the 1980s?', NULL,
        'Jean-Michel Basquiat', ARRAY['Keith Haring', 'Kenny Scharf', 'Lee Quinones', 'Andy Warhol', 'Robert Rauschenberg', 'Julian Schnabel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which design style of the 1920s and 30s, seen on the Chrysler Building, used bold geometric shapes, sunbursts and sleek lines?', NULL,
        'Art Deco', ARRAY['Art Nouveau', 'Brutalism', 'Arts and Crafts', 'Mid-century modern', 'Futurism', 'Gothic Revival'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Japanese artist made the woodblock print "The Great Wave off Kanagawa"?', NULL,
        'Katsushika Hokusai', ARRAY['Utagawa Hiroshige', 'Kitagawa Utamaro', 'Toshusai Sharaku', 'Utagawa Kuniyoshi', 'Takashi Murakami', 'Sesshu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which architect designed the titanium-clad Guggenheim Museum in Bilbao, Spain?', NULL,
        'Frank Gehry', ARRAY['Frank Lloyd Wright', 'Zaha Hadid', 'Renzo Piano', 'Santiago Calatrava', 'Norman Foster', 'Rem Koolhaas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        '"The Last Supper," the famous mural painted in the 1490s, is on a dining-hall wall in which Italian city?', NULL,
        'Milan', ARRAY['Florence', 'Rome', 'Venice', 'Naples', 'Siena', 'Bologna'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which jeweler made ornate jeweled Easter eggs for the Russian tsars?', NULL,
        'Faberge', ARRAY['Cartier', 'Tiffany & Co.', 'Bulgari', 'Van Cleef & Arpels', 'Chaumet', 'Boucheron'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Florentine Renaissance painter created "The Birth of Venus"?', NULL,
        'Sandro Botticelli', ARRAY['Raphael', 'Titian', 'Fra Angelico', 'Giotto', 'Filippo Lippi', 'Domenico Ghirlandaio'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Austrian painter''s gold-leaf "The Kiss" has become a symbol of Vienna?', NULL,
        'Gustav Klimt', ARRAY['Egon Schiele', 'Oskar Kokoschka', 'Alphonse Mucha', 'Edvard Munch', 'Franz von Stuck', 'Koloman Moser'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Easter Island''s giant carved stone figures are called what?', NULL,
        'Moai', ARRAY['Tiki', 'Totems', 'Menhirs', 'Dolmens', 'Obelisks', 'Cairns'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Istanbul landmark with a huge dome was built as a cathedral in the 6th century and later became a mosque?', NULL,
        'Hagia Sophia', ARRAY['The Blue Mosque', 'Topkapi Palace', 'The Suleymaniye Mosque', 'Dolmabahce Palace', 'The Galata Tower', 'The Basilica Cistern'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which American painter is known for huge close-up flowers and New Mexico desert scenes?', NULL,
        'Georgia O''Keeffe', ARRAY['Mary Cassatt', 'Agnes Martin', 'Helen Frankenthaler', 'Lee Krasner', 'Grandma Moses', 'Frida Kahlo'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Dutch painter is known for grids of straight black lines and blocks of primary color?', NULL,
        'Piet Mondrian', ARRAY['Wassily Kandinsky', 'Kazimir Malevich', 'Paul Klee', 'Joan Miro', 'Josef Albers', 'Victor Vasarely'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which German art school, founded by Walter Gropius in 1919, emphasized unifying art, craft, and technology, heavily influencing modern design?', NULL,
        'The Bauhaus', ARRAY['De Stijl', 'The Vienna Secession', 'The Arts and Crafts Movement', 'The Werkbund', 'The Blue Rider', 'The Pre-Raphaelite Brotherhood'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which 17th-century Italian sculptor and architect designed the colonnade of St. Peter''s Square at the Vatican?', NULL,
        'Gian Lorenzo Bernini', ARRAY['Michelangelo', 'Francesco Borromini', 'Donato Bramante', 'Carlo Maderno', 'Raphael', 'Andrea Palladio'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Japanese architect, known for blending concrete minimalism with natural light, designed the Church of the Light in Osaka?', NULL,
        'Tadao Ando', ARRAY['Kenzo Tange', 'Arata Isozaki', 'Toyo Ito', 'Shigeru Ban', 'Kengo Kuma', 'Fumihiko Maki'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which German Renaissance artist is famous for his woodcut "Rhinoceros" and his drawing of praying hands?', NULL,
        'Albrecht Durer', ARRAY['Hans Holbein the Younger', 'Lucas Cranach the Elder', 'Matthias Grunewald', 'Jan van Eyck', 'Pieter Bruegel the Elder', 'Albrecht Altdorfer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Latvian-born American painter is famous for huge, softly glowing rectangles of color?', NULL,
        'Mark Rothko', ARRAY['Barnett Newman', 'Clyfford Still', 'Willem de Kooning', 'Franz Kline', 'Robert Motherwell', 'Josef Albers'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist couple wrapped Berlin''s Reichstag building in silver fabric in 1995?', NULL,
        'Christo and Jeanne-Claude', ARRAY['Gilbert & George', 'Claes Oldenburg and Coosje van Bruggen', 'Ilya and Emilia Kabakov', 'Marina Abramovic and Ulay', 'Fischli and Weiss', 'The Starn twins'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which street artist designed the red, beige and blue "Hope" poster of Barack Obama in 2008?', NULL,
        'Shepard Fairey', ARRAY['Banksy', 'KAWS', 'Invader', 'Mr. Brainwash', 'JR', 'Os Gemeos'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Chinese-American architect designed the glass pyramid entrance of a famous Paris museum, finished in 1989?', NULL,
        'I. M. Pei', ARRAY['Frank Gehry', 'Renzo Piano', 'Norman Foster', 'Richard Rogers', 'Kenzo Tange', 'Philip Johnson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Swiss-French architect called a house ''a machine for living in''?', NULL,
        'Le Corbusier', ARRAY['Walter Gropius', 'Mies van der Rohe', 'Adolf Loos', 'Alvar Aalto', 'Auguste Perret', 'Oscar Niemeyer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Who became the first woman to win the Pritzker Architecture Prize, in 2004?', NULL,
        'Zaha Hadid', ARRAY['Kazuyo Sejima', 'Denise Scott Brown', 'Jeanne Gang', 'Maya Lin', 'Lina Bo Bardi', 'Elizabeth Diller'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which German-American modernist architect made the motto ''less is more'' famous?', NULL,
        'Ludwig Mies van der Rohe', ARRAY['Walter Gropius', 'Le Corbusier', 'Philip Johnson', 'Louis Sullivan', 'Frank Lloyd Wright', 'Adolf Loos'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Italian painter, the first woman admitted to Florence''s Academy of the Arts of Drawing, painted "Judith Slaying Holofernes"?', NULL,
        'Artemisia Gentileschi', ARRAY['Sofonisba Anguissola', 'Lavinia Fontana', 'Elisabetta Sirani', 'Judith Leyster', 'Rosalba Carriera', 'Angelica Kauffman'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Japanese artist is famous for polka dots, giant pumpkins and "Infinity Mirror Rooms"?', NULL,
        'Yayoi Kusama', ARRAY['Yoko Ono', 'Takashi Murakami', 'Mariko Mori', 'Louise Bourgeois', 'Marina Abramovic', 'Cindy Sherman'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Chinese artist filled Tate Modern''s Turbine Hall with about 100 million porcelain sunflower seeds in 2010?', NULL,
        'Ai Weiwei', ARRAY['Cai Guo-Qiang', 'Zhang Xiaogang', 'Xu Bing', 'Yue Minjun', 'Anish Kapoor', 'Olafur Eliasson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Spanish court painter created "Las Meninas" in 1656?', NULL,
        'Diego Velazquez', ARRAY['Francisco Goya', 'El Greco', 'Bartolome Esteban Murillo', 'Francisco de Zurbaran', 'Jusepe de Ribera', 'Peter Paul Rubens'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Netherlandish painter created the strange, crowded triptych "The Garden of Earthly Delights"?', NULL,
        'Hieronymus Bosch', ARRAY['Pieter Bruegel the Elder', 'Jan van Eyck', 'Rogier van der Weyden', 'Hans Memling', 'Albrecht Durer', 'Quentin Matsys'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which architect engineered the enormous brick dome of Florence Cathedral, built in the 1420s and 1430s?', NULL,
        'Filippo Brunelleschi', ARRAY['Leon Battista Alberti', 'Donato Bramante', 'Michelangelo', 'Lorenzo Ghiberti', 'Giotto', 'Andrea Palladio'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'China''s Terracotta Army, thousands of life-size clay soldiers, was buried to guard the tomb of which ruler?', NULL,
        'Qin Shi Huang', ARRAY['Kublai Khan', 'Genghis Khan', 'Emperor Wu of Han', 'Emperor Taizong of Tang', 'The Yongle Emperor', 'Puyi'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Flemish painter created "The Arnolfini Portrait" of 1434, with its tiny reflection in a convex mirror?', NULL,
        'Jan van Eyck', ARRAY['Rogier van der Weyden', 'Hans Memling', 'Pieter Bruegel the Elder', 'Robert Campin', 'Peter Paul Rubens', 'Petrus Christus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which British sculptor created the "Angel of the North," the giant steel winged figure that has stood beside the A1 at Gateshead since 1998?', NULL,
        'Antony Gormley', ARRAY['Henry Moore', 'Anish Kapoor', 'Damien Hirst', 'Barbara Hepworth', 'Rachel Whiteread', 'Andy Goldsworthy'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_AND_ARCHITECTURE';
