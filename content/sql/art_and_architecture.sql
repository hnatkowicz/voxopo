-- ============================================================================
-- content/sql/art_and_architecture.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/art_and_architecture.csv, the master copy of the
-- Thinking Pants category ART_AND_ARCHITECTURE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_AND_ARCHITECTURE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Who painted the ceiling of the Sistine Chapel?', NULL,
        'Michelangelo', ARRAY['Leonardo da Vinci', 'Raphael', 'Donatello', 'Titian', 'Caravaggio', 'Botticelli'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Who painted the "Mona Lisa"?', NULL,
        'Leonardo da Vinci', ARRAY['Michelangelo', 'Raphael', 'Sandro Botticelli', 'Titian', 'Caravaggio', 'Donatello'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the term for a painting of fruit, flowers, or everyday objects, rather than people or scenery?', NULL,
        'A still life', ARRAY['A landscape', 'A portrait', 'A fresco', 'A mural', 'A tapestry', 'A triptych'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Dutch painter of "The Starry Night" famously cut off part of his own ear?', NULL,
        'Vincent van Gogh', ARRAY['Rembrandt', 'Paul Gauguin', 'Claude Monet', 'Paul Cezanne', 'Johannes Vermeer', 'Henri de Toulouse-Lautrec'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Spanish artist painted "Guernica," his 1937 protest against the bombing of a Basque town?', NULL,
        'Pablo Picasso', ARRAY['Salvador Dali', 'Joan Miro', 'Francisco Goya', 'Diego Velazquez', 'El Greco', 'Juan Gris'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which statue in New York Harbor was a gift from the people of France?', NULL,
        'The Statue of Liberty', ARRAY['The Statue of Freedom', 'Lady Justice', 'The Charging Bull', 'The Motherland Calls', 'The Little Mermaid', 'The Angel of the North'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Paris landmark was built for the 1889 World''s Fair and was meant to come down after 20 years?', NULL,
        'The Eiffel Tower', ARRAY['The Arc de Triomphe', 'The Grand Palais', 'The Sacre-Coeur', 'The Louvre Pyramid', 'The Pompidou Centre', 'The Opera Garnier'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which South Dakota mountain has the faces of four U.S. presidents carved into it?', NULL,
        'Mount Rushmore', ARRAY['Stone Mountain', 'Crazy Horse Memorial', 'Pikes Peak', 'Mount Vernon', 'Mount Hood', 'Mount Whitney'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Spanish artist with a famous upturned mustache painted the melting clocks of "The Persistence of Memory"?', NULL,
        'Salvador Dali', ARRAY['Pablo Picasso', 'Joan Miro', 'Rene Magritte', 'Max Ernst', 'Francisco Goya', 'Diego Velazquez'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American artist made famous prints of Campbell''s soup cans and Marilyn Monroe?', NULL,
        'Andy Warhol', ARRAY['Roy Lichtenstein', 'Keith Haring', 'Jasper Johns', 'Jackson Pollock', 'Robert Rauschenberg', 'Jeff Koons'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'In which Paris museum does the "Mona Lisa" hang?', NULL,
        'The Louvre', ARRAY['The Musee d''Orsay', 'The Pompidou Centre', 'The Orangerie', 'The Musee Rodin', 'The Petit Palais', 'The Grand Palais'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which ancient statue at Giza has a lion''s body and a human head?', NULL,
        'The Great Sphinx', ARRAY['The Colossi of Memnon', 'The Statue of Ramesses II', 'The Mask of Tutankhamun', 'The Bust of Nefertiti', 'The Rosetta Stone', 'The Great Pyramid'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which white marble tomb in Agra, India, did the emperor Shah Jahan build for his wife?', NULL,
        'The Taj Mahal', ARRAY['The Red Fort', 'Humayun''s Tomb', 'The Golden Temple', 'The Lotus Temple', 'The Amber Fort', 'The Hawa Mahal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Australian landmark, opened in 1973, has a roof of white shell-like ''sails''?', NULL,
        'The Sydney Opera House', ARRAY['The Sydney Harbour Bridge', 'Sydney Tower', 'Parliament House, Canberra', 'Federation Square', 'The Royal Exhibition Building', 'Arts Centre Melbourne'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'In which Italian city does a famous cathedral bell tower lean?', NULL,
        'Pisa', ARRAY['Florence', 'Venice', 'Siena', 'Verona', 'Milan', 'Rome'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which giant statue, arms spread wide, looks down on Rio de Janeiro?', NULL,
        'Christ the Redeemer', ARRAY['Cristo Rei', 'The Statue of Liberty', 'The Motherland Calls', 'The Spring Temple Buddha', 'The Angel of the North', 'Our Lady of Peace'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'In traditional color theory, what are the three primary colors of paint?', NULL,
        'Red, yellow and blue', ARRAY['Red, green and blue', 'Red, orange and yellow', 'Blue, green and purple', 'Black, white and red', 'Green, orange and purple', 'Red, yellow and green'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'What is a picture made from small pieces of stone or tile set into plaster called?', NULL,
        'A mosaic', ARRAY['A collage', 'A tapestry', 'A mural', 'A stencil', 'An etching', 'A frieze'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which prehistoric stone circle stands on Salisbury Plain in England?', NULL,
        'Stonehenge', ARRAY['Avebury', 'Hadrian''s Wall', 'The Callanish Stones', 'The Carnac Stones', 'Skara Brae', 'Newgrange'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which New York skyscraper opened in 1931 and was the world''s tallest building for nearly 40 years?', NULL,
        'The Empire State Building', ARRAY['The Chrysler Building', 'The Flatiron Building', 'The Woolworth Building', '30 Rockefeller Plaza', 'The Seagram Building', 'The MetLife Building'], 100, 'It went up in about 13 months, then stayed the world''s tallest building for nearly 40 years.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'The famous "Venus de Milo" statue is missing what?', NULL,
        'Its arms', ARRAY['Its head', 'Its feet', 'Its nose', 'Its left leg', 'Its wings', 'Its crown'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which young biblical hero, shown about to face Goliath, is the subject of Florence''s most famous marble statue?', NULL,
        'David', ARRAY['Moses', 'Samson', 'Joshua', 'Solomon', 'Saul', 'Gideon'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the nickname of the great bell in the clock tower of London''s Houses of Parliament?', NULL,
        'Big Ben', ARRAY['Great Tom', 'Old Bailey', 'Big Bertha', 'Great Paul', 'Old Tom', 'Little John'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which ancient wall, thousands of miles long, was built to protect China''s northern border?', NULL,
        'The Great Wall', ARRAY['Hadrian''s Wall', 'The Berlin Wall', 'The Wailing Wall', 'The Wall of Babylon', 'The Long Wall', 'The Iron Wall'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which orange-red suspension bridge spans the entrance to San Francisco Bay?', NULL,
        'The Golden Gate Bridge', ARRAY['The Brooklyn Bridge', 'The Bay Bridge', 'The Tower Bridge', 'The Mackinac Bridge', 'The George Washington Bridge', 'The Verrazzano Bridge'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the U.S. president''s home at 1600 Pennsylvania Avenue called?', NULL,
        'The White House', ARRAY['The Capitol', 'Camp David', 'Blair House', 'The Pentagon', 'Mount Vernon', 'Monticello'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which tall white stone obelisk stands in the middle of the National Mall in Washington, D.C.?', NULL,
        'The Washington Monument', ARRAY['The Lincoln Memorial', 'The Jefferson Memorial', 'Cleopatra''s Needle', 'The Capitol', 'The Bunker Hill Monument', 'The Liberty Bell'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Mixing blue and yellow paint makes what color?', NULL,
        'Green', ARRAY['Purple', 'Orange', 'Brown', 'Gray', 'Pink', 'Teal'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call a painting of a person, usually showing their face?', NULL,
        'A portrait', ARRAY['A landscape', 'A still life', 'A mural', 'A sketch', 'A collage', 'A mosaic'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the three-legged stand that holds a canvas while an artist paints?', NULL,
        'An easel', ARRAY['A tripod', 'A palette', 'A trestle', 'A frame', 'A podium', 'A lectern'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the flat board an artist holds to mix paints on called?', NULL,
        'A palette', ARRAY['An easel', 'A canvas', 'A tray', 'A slate', 'A pallet knife', 'A board'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call a painting of natural scenery, like hills, trees and sky?', NULL,
        'A landscape', ARRAY['A portrait', 'A still life', 'A seascape', 'A mural', 'A sketch', 'An abstract'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call words or pictures painted or sprayed on public walls, often without permission?', NULL,
        'Graffiti', ARRAY['A mural', 'A mosaic', 'A fresco', 'A collage', 'Calligraphy', 'A stencil'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What dome-shaped shelter did Inuit hunters build from blocks of snow?', NULL,
        'An igloo', ARRAY['A tepee', 'A yurt', 'A wigwam', 'A hogan', 'A longhouse', 'A lodge'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are the colored-glass windows that fill old cathedrals called?', NULL,
        'Stained glass', ARRAY['Frosted glass', 'Plate glass', 'Cut glass', 'Mirror glass', 'Blown glass', 'Safety glass'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'How many sides does the Pentagon, the U.S. military''s headquarters, have?', NULL,
        'Five', ARRAY['Four', 'Six', 'Seven', 'Eight', 'Three', 'Ten'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What hand tool, struck with a mallet, do sculptors use to carve stone?', NULL,
        'A chisel', ARRAY['A trowel', 'A file', 'A rasp', 'A spatula', 'A drill', 'A plane'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call a large painting made directly on a wall?', NULL,
        'A mural', ARRAY['A canvas', 'A mosaic', 'A tapestry', 'A collage', 'A portrait', 'A banner'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Paris cathedral was badly damaged by fire in 2019 and reopened in 2024?', NULL,
        'Notre-Dame', ARRAY['Sacré-Cœur', 'Sainte-Chapelle', 'Saint-Sulpice', 'Chartres', 'Saint-Denis', 'La Madeleine'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which boy pharaoh''s tomb was found full of treasure, including a famous gold mask, in 1922?', NULL,
        'Tutankhamun', ARRAY['Ramesses II', 'Cleopatra', 'Khufu', 'Akhenaten', 'Nefertiti', 'Seti I'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Japanese art folds a single sheet of paper into shapes like cranes?', NULL,
        'Origami', ARRAY['Ikebana', 'Kirigami', 'Bonsai', 'Sumi-e', 'Haiku', 'Calligraphy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call art that shows shapes and colors instead of real people or things?', NULL,
        'Abstract art', ARRAY['Realism', 'Folk art', 'Pop art', 'Still life', 'Portraiture', 'Landscape art'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which London palace is the King''s official home, where crowds watch the Changing of the Guard?', NULL,
        'Buckingham Palace', ARRAY['Windsor Castle', 'Kensington Palace', 'The Tower of London', 'Hampton Court', 'St James''s Palace', 'Balmoral'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which giant observation wheel stands on the bank of the Thames in London?', NULL,
        'The London Eye', ARRAY['The Wheel of London', 'The Thames Wheel', 'The Big Wheel', 'The Royal Wheel', 'The Orbit', 'The Shard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Italian city is built on canals, with gondolas and St. Mark''s Basilica?', NULL,
        'Venice', ARRAY['Florence', 'Milan', 'Naples', 'Genoa', 'Verona', 'Turin'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call the tall carved wooden poles made by peoples of the Pacific Northwest?', NULL,
        'Totem poles', ARRAY['Maypoles', 'Obelisks', 'Flagpoles', 'Pillars', 'Steles', 'Spires'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call a picture an artist makes of themselves?', NULL,
        'A self-portrait', ARRAY['A still life', 'A silhouette', 'A caricature', 'A cameo', 'A profile', 'A sketch'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which domed building in Washington, D.C. is where Congress meets?', NULL,
        'The Capitol', ARRAY['The White House', 'The Supreme Court', 'The Pentagon', 'The Library of Congress', 'The Treasury', 'The Smithsonian'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which city''s ancient ruins include the Forum and the Palatine Hill?', NULL,
        'Rome', ARRAY['Athens', 'Madrid', 'Florence', 'Naples', 'Barcelona', 'Milan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are sticks of colored wax that children draw with called?', NULL,
        'Crayons', ARRAY['Pastels', 'Charcoals', 'Chalks', 'Markers', 'Pencils', 'Pens'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which art movement, begun in Paris around 1907-08, broke subjects into geometric shapes seen from several angles at once?', NULL,
        'Cubism', ARRAY['Surrealism', 'Impressionism', 'Expressionism', 'Fauvism', 'Dadaism', 'Futurism'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which ancient Roman amphitheater, famous for gladiator contests, still stands in the center of Italy''s capital?', NULL,
        'The Colosseum', ARRAY['The Pantheon', 'The Roman Forum', 'The Circus Maximus', 'The Baths of Caracalla', 'The Arch of Constantine', 'Trajan''s Market'], 200, 'It held an estimated 50,000 spectators, who came and went through 80 entrance arches.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Dutch painter is famous for "Girl with a Pearl Earring" and his masterful use of light?', NULL,
        'Johannes Vermeer', ARRAY['Rembrandt', 'Pieter Bruegel', 'Hieronymus Bosch', 'Jan van Eyck', 'Frans Hals', 'Jacob van Ruisdael'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architectural style of medieval cathedrals, like Chartres in France, is known for pointed arches and soaring height?', NULL,
        'Gothic', ARRAY['Romanesque', 'Baroque', 'Byzantine', 'Renaissance', 'Neoclassical', 'Art Nouveau'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Norwegian artist painted "The Scream" in 1893?', NULL,
        'Edvard Munch', ARRAY['Gustav Klimt', 'Egon Schiele', 'James Ensor', 'Wassily Kandinsky', 'Paul Gauguin', 'Henri Matisse'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Mexican artist, known for vivid self-portraits exploring identity and pain, was married to muralist Diego Rivera?', NULL,
        'Frida Kahlo', ARRAY['Remedios Varo', 'Leonora Carrington', 'Maria Izquierdo', 'Tina Modotti', 'Olga Costa', 'Lola Alvarez Bravo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which French sculptor created the bronze "The Thinker," depicting a man resting his chin on his hand in contemplation?', NULL,
        'Auguste Rodin', ARRAY['Donatello', 'Gian Lorenzo Bernini', 'Lorenzo Ghiberti', 'Benvenuto Cellini', 'Andrea del Verrocchio', 'Antonio Canova'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American painter, nicknamed "Jack the Dripper," poured and splattered paint onto canvases laid on the floor?', NULL,
        'Jackson Pollock', ARRAY['Mark Rothko', 'Willem de Kooning', 'Franz Kline', 'Robert Motherwell', 'Roy Lichtenstein', 'Jasper Johns'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which anonymous British street artist''s "Girl with Balloon" shredded itself just after selling at auction in 2018?', NULL,
        'Banksy', ARRAY['Shepard Fairey', 'Invader', 'KAWS', 'Mr. Brainwash', 'JR', 'Blek le Rat'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which French painter returned again and again to his water lily pond at Giverny in his later years?', NULL,
        'Claude Monet', ARRAY['Edouard Manet', 'Pierre-Auguste Renoir', 'Edgar Degas', 'Camille Pissarro', 'Paul Cezanne', 'Alfred Sisley'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Dutch master painted "The Night Watch" in 1642?', NULL,
        'Rembrandt', ARRAY['Johannes Vermeer', 'Frans Hals', 'Jan Steen', 'Anthony van Dyck', 'Peter Paul Rubens', 'Pieter Bruegel the Elder'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1950s-60s art movement borrowed its images from comic strips, advertising and supermarket products?', NULL,
        'Pop art', ARRAY['Op art', 'Minimalism', 'Abstract expressionism', 'Dada', 'Street art', 'Conceptual art'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Wonder of the Ancient World was a giant bronze statue of the sun god Helios beside a Greek harbor?', NULL,
        'The Colossus of Rhodes', ARRAY['The Lighthouse of Alexandria', 'The Statue of Zeus at Olympia', 'The Temple of Artemis', 'The Mausoleum at Halicarnassus', 'The Hanging Gardens of Babylon', 'The Great Pyramid of Giza'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1920s art movement, launched by Andre Breton''s 1924 manifesto, drew on dreams and the unconscious mind?', NULL,
        'Surrealism', ARRAY['Dadaism', 'Expressionism', 'Futurism', 'Symbolism', 'Fauvism', 'Romanticism'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which ancient city, carved into rose-red sandstone cliffs, is the most famous sight in Jordan?', NULL,
        'Petra', ARRAY['Palmyra', 'Persepolis', 'Jerash', 'Babylon', 'Carthage', 'Baalbek'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which great temple to Athena, finished in the 430s BC, crowns the Acropolis of Athens?', NULL,
        'The Parthenon', ARRAY['The Pantheon', 'The Temple of Olympian Zeus', 'The Temple of Hephaestus', 'The Temple of Apollo', 'The Temple of Poseidon', 'The Temple of Artemis'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which art movement took its name from a critic mocking an 1872 painting of a hazy sunrise over Le Havre?', NULL,
        'Impressionism', ARRAY['Realism', 'Fauvism', 'Expressionism', 'Romanticism', 'Symbolism', 'Naturalism'], 200, 'The painting was Monet''s "Impression, Sunrise," and the mocking critic was Louis Leroy.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which jeweler made ornate jeweled Easter eggs for the Russian tsars?', NULL,
        'Faberge', ARRAY['Cartier', 'Tiffany & Co.', 'Bulgari', 'Van Cleef & Arpels', 'Chaumet', 'Boucheron'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which stainless steel arch, the tallest monument in the U.S., stands in St. Louis?', NULL,
        'The Gateway Arch', ARRAY['The Arc of Freedom', 'The Spirit Arch', 'The Mississippi Arch', 'The Pioneer Arch', 'The Liberty Arch', 'The Western Arch'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which flying-saucer-topped tower was built for Seattle''s 1962 World''s Fair?', NULL,
        'The Space Needle', ARRAY['The CN Tower', 'The Stratosphere', 'The Seattle Tower', 'Reunion Tower', 'The Tower of the Americas', 'The Skylon Tower'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Inca citadel sits high on a mountain ridge in the Andes of Peru?', NULL,
        'Machu Picchu', ARRAY['Chichen Itza', 'Teotihuacan', 'Tikal', 'Cusco', 'Nazca', 'Palenque'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Washington, D.C. memorial has a giant seated statue of a president inside a Greek-style temple?', NULL,
        'The Lincoln Memorial', ARRAY['The Jefferson Memorial', 'The Washington Monument', 'The FDR Memorial', 'The Grant Memorial', 'Mount Vernon', 'The Capitol'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are colors directly opposite each other on the color wheel, like red and green, called?', NULL,
        'Complementary colors', ARRAY['Primary colors', 'Secondary colors', 'Analogous colors', 'Warm colors', 'Neutral colors', 'Tertiary colors'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the very hot oven that hardens pottery called?', NULL,
        'A kiln', ARRAY['A forge', 'A furnace', 'A crucible', 'A hearth', 'A smelter', 'A brazier'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are the tall, slender towers of a mosque, from which the call to prayer is made?', NULL,
        'Minarets', ARRAY['Steeples', 'Turrets', 'Spires', 'Pagodas', 'Belfries', 'Obelisks'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Dubai skyscraper opened in 2010 as the tallest building in the world?', NULL,
        'The Burj Khalifa', ARRAY['The Burj Al Arab', 'The Shanghai Tower', 'Taipei 101', 'The Petronas Towers', 'One World Trade Center', 'The Kingdom Tower'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What were the long stone channels, often carried on rows of arches, that brought water to Roman cities?', NULL,
        'Aqueducts', ARRAY['Viaducts', 'Canals', 'Sewers', 'Cisterns', 'Causeways', 'Conduits'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call a drawing that makes fun of someone by exaggerating their features?', NULL,
        'A caricature', ARRAY['A silhouette', 'A cartoon strip', 'A portrait', 'A doodle', 'A sketch', 'A parody'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are the Russian wooden dolls that nest one inside another called?', NULL,
        'Matryoshka dolls', ARRAY['Kokeshi dolls', 'Dymkovo toys', 'Kachina dolls', 'Pysanky', 'Russian bears', 'Faberge dolls'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the block or column a statue stands on called?', NULL,
        'A pedestal', ARRAY['A frieze', 'A podium', 'A lectern', 'A pillar', 'A dais', 'A mount'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is a sculpture of just a person''s head, shoulders and chest called?', NULL,
        'A bust', ARRAY['A torso', 'A relief', 'A cameo', 'A statuette', 'A figurine', 'A medallion'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Berlin landmark, a gate topped by a four-horse chariot, became a symbol of a reunited Germany?', NULL,
        'The Brandenburg Gate', ARRAY['The Victory Column', 'Checkpoint Charlie', 'The Reichstag', 'The Ishtar Gate', 'The Berlin Wall', 'The Kaiser Gate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which is the only one of the Seven Wonders of the Ancient World still standing?', NULL,
        'The Great Pyramid of Giza', ARRAY['The Colossus of Rhodes', 'The Hanging Gardens of Babylon', 'The Lighthouse of Alexandria', 'The Temple of Artemis', 'The Statue of Zeus', 'The Mausoleum at Halicarnassus'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which black drawing stick is made from burned wood?', NULL,
        'Charcoal', ARRAY['Graphite', 'Pastel', 'Chalk', 'Crayon', 'Ink stick', 'Conte'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Paris arch, at the top of the Champs-Élysées, honors France''s armies?', NULL,
        'The Arc de Triomphe', ARRAY['The Grande Arche', 'The Porte Saint-Denis', 'The Arc du Carrousel', 'The Pantheon', 'The Madeleine', 'The Invalides'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Chicago skyscraper was called the Sears Tower until 2009?', NULL,
        'The Willis Tower', ARRAY['The John Hancock Center', 'The Trump Tower', 'Aon Center', 'The Wrigley Building', 'Tribune Tower', 'The Prudential Building'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which New York museum is nicknamed "the Met"?', NULL,
        'The Metropolitan Museum of Art', ARRAY['The Museum of Modern Art', 'The Metropolitan Opera House', 'The Guggenheim', 'The Whitney Museum', 'The Frick Collection', 'The Brooklyn Museum'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which American illustrator painted more than 300 "Saturday Evening Post" covers of small-town life?', NULL,
        'Norman Rockwell', ARRAY['Andrew Wyeth', 'Edward Hopper', 'Grant Wood', 'Charles Schulz', 'Winslow Homer', 'N. C. Wyeth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the art of beautiful, decorative handwriting called?', NULL,
        'Calligraphy', ARRAY['Typography', 'Lithography', 'Stenography', 'Cartography', 'Iconography', 'Topography'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are the bricks of an adobe house made from?', NULL,
        'Sun-dried mud and straw', ARRAY['Fired red clay', 'Cut stone', 'Packed snow', 'Cement', 'Volcanic glass', 'Pressed sawdust'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What kind of paint, thinned with water, is used on paper and gives soft, see-through colors?', NULL,
        'Watercolor', ARRAY['Oil paint', 'Acrylic', 'Enamel', 'Gouache', 'Tempera', 'Spray paint'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which city''s harbor has a famous small bronze statue of the Little Mermaid?', NULL,
        'Copenhagen', ARRAY['Oslo', 'Stockholm', 'Amsterdam', 'Helsinki', 'Hamburg', 'Reykjavik'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the Japanese art of growing tiny trees in pots called?', NULL,
        'Bonsai', ARRAY['Ikebana', 'Origami', 'Kintsugi', 'Sumi-e', 'Zen gardening', 'Kirigami'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Pop artist painted giant comic-strip panels with printed-looking dots, like "Whaam!"?', NULL,
        'Roy Lichtenstein', ARRAY['Keith Haring', 'Robert Rauschenberg', 'Jasper Johns', 'Jeff Koons', 'David Hockney', 'Claes Oldenburg'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is papier-mâché made from?', NULL,
        'Paper and paste', ARRAY['Plaster and sand', 'Clay and water', 'Cloth and wax', 'Wood and glue', 'Straw and mud', 'Paper and paint'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which French painter is famous for his pictures of ballet dancers?', NULL,
        'Edgar Degas', ARRAY['Henri Matisse', 'Paul Cézanne', 'Camille Pissarro', 'Georges Seurat', 'Paul Signac', 'Berthe Morisot'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which vast temple in Cambodia, the largest religious monument in the world, appears on the country''s flag?', NULL,
        'Angkor Wat', ARRAY['Borobudur', 'Wat Arun', 'Bagan', 'Shwedagon Pagoda', 'Prambanan', 'Ta Prohm'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the walled palace of China''s emperors in the heart of Beijing called?', NULL,
        'The Forbidden City', ARRAY['The Summer Palace', 'The Temple of Heaven', 'The Jade Palace', 'The Imperial Fortress', 'The Dragon Palace', 'The Hidden City'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Moscow fortress, with red brick walls and towers, is the seat of Russia''s government?', NULL,
        'The Kremlin', ARRAY['The Hermitage', 'Peterhof', 'The Bolshoi', 'Lubyanka', 'The Winter Palace', 'Red Square'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which fountain in Italy''s capital do visitors throw coins into, to make sure they come back?', NULL,
        'The Trevi Fountain', ARRAY['The Fountain of the Four Rivers', 'The Barcaccia', 'The Triton Fountain', 'The Fontana del Moro', 'The Fountain of Neptune', 'The Acqua Paola'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the term for a sculpture or building style that is extremely ornate, dramatic, and grand, popular in 17th-century Europe?', NULL,
        'Baroque', ARRAY['Gothic', 'Renaissance', 'Rococo', 'Neoclassical', 'Art Deco', 'Brutalist'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architect devoted the last decades of his life to the Sagrada Familia basilica in Barcelona?', NULL,
        'Antoni Gaudi', ARRAY['Santiago Calatrava', 'Rafael Moneo', 'Pablo Picasso', 'Salvador Dali', 'Joan Miro', 'Frank Gehry'], 300, 'Gaudí was hit by a tram in 1926; he was so plainly dressed that passersby took him for a beggar.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What is the technique of painting onto wet plaster, so the color becomes part of the wall, called?', NULL,
        'Fresco', ARRAY['Tempera', 'Gouache', 'Encaustic', 'Impasto', 'Chiaroscuro', 'Sfumato'], 300, 'Michelangelo painted the Sistine Chapel ceiling in fresco, standing on scaffolding, not lying on his back.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which architect designed New York City''s spiral-shaped Solomon R. Guggenheim Museum?', NULL,
        'Frank Lloyd Wright', ARRAY['Frank Gehry', 'I.M. Pei', 'Mies van der Rohe', 'Le Corbusier', 'Zaha Hadid', 'Renzo Piano'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'What Italian word, meaning "light-dark," names the dramatic contrast of light and shadow mastered by Caravaggio?', NULL,
        'Chiaroscuro', ARRAY['Sfumato', 'Impasto', 'Pointillism', 'Trompe l''oeil', 'Foreshortening', 'Grisaille'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which painting technique, pioneered by Georges Seurat, builds an image entirely from small, distinct dots of color?', NULL,
        'Pointillism', ARRAY['Impressionism', 'Cubism', 'Fauvism', 'Tachisme', 'Op Art', 'Expressionism'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Iowa painter created the 1930 picture of a stern farmer holding a pitchfork beside a woman in front of a farmhouse?', NULL,
        'Grant Wood', ARRAY['Norman Rockwell', 'Edward Hopper', 'Thomas Hart Benton', 'Andrew Wyeth', 'Winslow Homer', 'John Steuart Curry'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which American painter created "Nighthawks," the lonely late-night diner scene?', NULL,
        'Edward Hopper', ARRAY['Norman Rockwell', 'Andrew Wyeth', 'George Bellows', 'Grant Wood', 'Thomas Hart Benton', 'Charles Sheeler'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist, who started out spray-painting "SAMO" tags around 1970s New York, became a star painter of the 1980s?', NULL,
        'Jean-Michel Basquiat', ARRAY['Keith Haring', 'Kenny Scharf', 'Lee Quinones', 'Andy Warhol', 'Robert Rauschenberg', 'Julian Schnabel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which design style of the 1920s and 30s, seen on the Chrysler Building, used bold geometric shapes, sunbursts and sleek lines?', NULL,
        'Art Deco', ARRAY['Art Nouveau', 'Brutalism', 'Arts and Crafts', 'Mid-century modern', 'Futurism', 'Gothic Revival'], 300, 'The name came decades later, from the 1925 Paris design fair, the Exposition des Arts Décoratifs.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Japanese artist made the woodblock print "The Great Wave off Kanagawa"?', NULL,
        'Katsushika Hokusai', ARRAY['Utagawa Hiroshige', 'Kitagawa Utamaro', 'Toshusai Sharaku', 'Utagawa Kuniyoshi', 'Takashi Murakami', 'Sesshu'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which architect designed the titanium-clad Guggenheim Museum in Bilbao, Spain?', NULL,
        'Frank Gehry', ARRAY['Frank Lloyd Wright', 'Zaha Hadid', 'Renzo Piano', 'Santiago Calatrava', 'Norman Foster', 'Rem Koolhaas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        '"The Last Supper," the famous painting from the 1490s, is on a dining-hall wall in which Italian city?', NULL,
        'Milan', ARRAY['Florence', 'Rome', 'Venice', 'Naples', 'Siena', 'Bologna'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Florentine Renaissance painter created "The Birth of Venus"?', NULL,
        'Sandro Botticelli', ARRAY['Raphael', 'Titian', 'Fra Angelico', 'Giotto', 'Filippo Lippi', 'Domenico Ghirlandaio'], 300, '"Botticelli" was a nickname meaning "little barrel." His real name was Alessandro Filipepi.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Austrian painter''s gold-leaf "The Kiss" has become a symbol of Vienna?', NULL,
        'Gustav Klimt', ARRAY['Egon Schiele', 'Oskar Kokoschka', 'Alphonse Mucha', 'Edvard Munch', 'Franz von Stuck', 'Koloman Moser'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Easter Island''s giant carved stone figures are called what?', NULL,
        'Moai', ARRAY['Tiki', 'Totems', 'Menhirs', 'Dolmens', 'Obelisks', 'Cairns'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Istanbul landmark with a huge dome was built as a cathedral in the 6th century and later became a mosque?', NULL,
        'Hagia Sophia', ARRAY['The Blue Mosque', 'Topkapi Palace', 'The Suleymaniye Mosque', 'Dolmabahce Palace', 'The Galata Tower', 'The Basilica Cistern'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which American painter is known for huge close-up flowers and New Mexico desert scenes?', NULL,
        'Georgia O''Keeffe', ARRAY['Mary Cassatt', 'Agnes Martin', 'Helen Frankenthaler', 'Lee Krasner', 'Grandma Moses', 'Frida Kahlo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Dutch painter is known for grids of straight black lines and blocks of primary color?', NULL,
        'Piet Mondrian', ARRAY['Wassily Kandinsky', 'Kazimir Malevich', 'Paul Klee', 'Joan Miro', 'Josef Albers', 'Victor Vasarely'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which street artist designed the red, beige and blue "Hope" poster of Barack Obama in 2008?', NULL,
        'Shepard Fairey', ARRAY['Banksy', 'KAWS', 'Invader', 'Mr. Brainwash', 'JR', 'Os Gemeos'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Chinese-American architect designed the glass pyramid entrance of a famous Paris museum, finished in 1989?', NULL,
        'I. M. Pei', ARRAY['Frank Gehry', 'Renzo Piano', 'Norman Foster', 'Richard Rogers', 'Kenzo Tange', 'Philip Johnson'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Renaissance painter created "The School of Athens," with Plato and Aristotle at its center, in the Vatican?', NULL,
        'Raphael', ARRAY['Michelangelo', 'Leonardo da Vinci', 'Titian', 'Sandro Botticelli', 'Caravaggio', 'Giotto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Paris museum, in a former railway station, holds a famous collection of Impressionist paintings?', NULL,
        'The Musée d''Orsay', ARRAY['The Musée Rodin', 'The Centre Pompidou', 'The Orangerie', 'The Petit Palais', 'The Musée Picasso', 'The Musée Marmottan'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What was the original job of the carved stone gargoyles on medieval churches?', NULL,
        'Spouting rainwater off the roof', ARRAY['Holding up the towers', 'Ringing the bells', 'Marking graves', 'Scaring off birds', 'Holding candles', 'Showing the hours'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Greek column style has scroll-shaped curls at the top?', NULL,
        'Ionic', ARRAY['Doric', 'Corinthian', 'Tuscan', 'Composite', 'Gothic', 'Romanesque'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Spanish city is home to the Alhambra, a Moorish palace and fortress?', NULL,
        'Granada', ARRAY['Seville', 'Córdoba', 'Toledo', 'Madrid', 'Valencia', 'Málaga'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the Japanese art of flower arranging called?', NULL,
        'Ikebana', ARRAY['Bonsai', 'Origami', 'Hanami', 'Kintsugi', 'Sumi-e', 'Wabi-sabi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the official name of Chicago''s giant mirrored sculpture nicknamed "The Bean"?', NULL,
        'Cloud Gate', ARRAY['Sky Mirror', 'Silver Cloud', 'The Looking Glass', 'Liquid Sky', 'The Drop', 'Lake Mirror'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which American artist invented the "mobile," a hanging sculpture that moves in the air?', NULL,
        'Alexander Calder', ARRAY['Claes Oldenburg', 'Louise Nevelson', 'Isamu Noguchi', 'David Smith', 'Richard Serra', 'Jeff Koons'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is a painting made of three hinged panels, often found over church altars, called?', NULL,
        'A triptych', ARRAY['A diptych', 'A polyptych', 'A tableau', 'A frieze', 'A tondo', 'A retable'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which famous house, designed in 1935, is built right over a waterfall in the woods of Pennsylvania?', NULL,
        'Fallingwater', ARRAY['Taliesin', 'The Glass House', 'Biltmore', 'Kentuck Knob', 'Robie House', 'Graceland'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which round Roman temple, with a hole in the top of its concrete dome, still stands in Italy''s capital?', NULL,
        'The Pantheon', ARRAY['The Colosseum', 'The Parthenon', 'St. Peter''s Basilica', 'The Temple of Vesta', 'The Basilica of Maxentius', 'The Forum'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which white-domed basilica sits at the top of Montmartre, the highest hill in Paris?', NULL,
        'Sacré-Cœur', ARRAY['Notre-Dame', 'Sainte-Chapelle', 'The Panthéon', 'Saint-Sulpice', 'La Madeleine', 'Les Invalides'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What are the stone arches on the outside of medieval cathedrals that brace their tall walls called?', NULL,
        'Flying buttresses', ARRAY['Vaults', 'Corbels', 'Pilasters', 'Lintels', 'Keystones', 'Cornices'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Bavarian castle on a hilltop inspired Sleeping Beauty''s castle at Disneyland?', NULL,
        'Neuschwanstein', ARRAY['Hohenzollern', 'Heidelberg', 'Linderhof', 'Eltz', 'Wartburg', 'Lichtenstein'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Moscow cathedral on Red Square is famous for its colorful, swirled onion domes?', NULL,
        'St. Basil''s Cathedral', ARRAY['Christ the Saviour Cathedral', 'St. Isaac''s Cathedral', 'The Cathedral of the Annunciation', 'Kazan Cathedral', 'The Church on Spilled Blood', 'Dormition Cathedral'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'The Dutch city of Delft is famous for pottery painted mostly in which color on white?', NULL,
        'Blue', ARRAY['Green', 'Red', 'Black', 'Yellow', 'Purple', 'Orange'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which fast-drying paint, made with a plastic binder, became popular with artists in the 1950s and 60s?', NULL,
        'Acrylic', ARRAY['Oil', 'Tempera', 'Gouache', 'Encaustic', 'Watercolor', 'Enamel'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which French Impressionist painted "Luncheon of the Boating Party"?', NULL,
        'Pierre-Auguste Renoir', ARRAY['Edgar Degas', 'Camille Pissarro', 'Alfred Sisley', 'Gustave Caillebotte', 'Édouard Manet', 'Berthe Morisot'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which French painter left Paris to paint the people and landscapes of Tahiti?', NULL,
        'Paul Gauguin', ARRAY['Paul Cézanne', 'Henri Rousseau', 'Henri Matisse', 'Georges Seurat', 'Paul Signac', 'Edgar Degas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        '"Renaissance," the name of the great age of art in Europe, means what in French?', NULL,
        'Rebirth', ARRAY['Revolution', 'Golden age', 'Awakening', 'New art', 'Enlightenment', 'Reform'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which early Renaissance sculptor shares his name with the Ninja Turtle in the purple mask?', NULL,
        'Donatello', ARRAY['Michelangelo', 'Raphael', 'Leonardo', 'Ghiberti', 'Verrocchio', 'Cellini'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'The legendary Hanging Gardens, a wonder of the ancient world, were said to be in which city?', NULL,
        'Babylon', ARRAY['Nineveh', 'Ur', 'Persepolis', 'Alexandria', 'Jerusalem', 'Damascus'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which architect rebuilt St Paul''s Cathedral after the Great Fire of London in 1666?', NULL,
        'Christopher Wren', ARRAY['Inigo Jones', 'Nicholas Hawksmoor', 'John Nash', 'Robert Adam', 'Charles Barry', 'John Vanbrugh'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which art style of flowing, plant-like curves shaped the entrances of the Paris Métro around 1900?', NULL,
        'Art Nouveau', ARRAY['Art Deco', 'Baroque', 'Rococo', 'Arts and Crafts', 'Bauhaus', 'Futurism'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Dutch artist drew impossible staircases and two hands drawing each other?', NULL,
        'M. C. Escher', ARRAY['Piet Mondrian', 'René Magritte', 'Salvador Dalí', 'Rembrandt', 'Victor Vasarely', 'Bridget Riley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the stepped, pyramid-shaped temple tower of ancient Mesopotamia called?', NULL,
        'A ziggurat', ARRAY['A pagoda', 'A stupa', 'A mastaba', 'An obelisk', 'A minaret', 'A pylon'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which American artist is famous for giant, shiny stainless steel "Balloon Dog" sculptures?', NULL,
        'Jeff Koons', ARRAY['Claes Oldenburg', 'Damien Hirst', 'KAWS', 'Takashi Murakami', 'Alexander Calder', 'Keith Haring'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the nickname of Beijing''s 2008 Olympic stadium, for its woven web of steel?', NULL,
        'The Bird''s Nest', ARRAY['The Water Cube', 'The Spider Web', 'The Lantern', 'The Dragon''s Egg', 'The Basket', 'The Cage'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Toronto tower held the record as the world''s tallest free-standing structure for over 30 years?', NULL,
        'The CN Tower', ARRAY['The Space Needle', 'The Calgary Tower', 'The Skylon Tower', 'The Ostankino Tower', 'The Sky Tower', 'The Stratosphere'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which German art school, founded by Walter Gropius in 1919, emphasized unifying art, craft, and technology, heavily influencing modern design?', NULL,
        'The Bauhaus', ARRAY['De Stijl', 'The Vienna Secession', 'The Arts and Crafts Movement', 'The Werkbund', 'The Blue Rider', 'The Pre-Raphaelite Brotherhood'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which 17th-century Italian sculptor and architect designed the colonnade of St. Peter''s Square at the Vatican?', NULL,
        'Gian Lorenzo Bernini', ARRAY['Michelangelo', 'Francesco Borromini', 'Donato Bramante', 'Carlo Maderno', 'Raphael', 'Andrea Palladio'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which German Renaissance artist is famous for his woodcut "Rhinoceros" and his drawing of praying hands?', NULL,
        'Albrecht Durer', ARRAY['Hans Holbein the Younger', 'Lucas Cranach the Elder', 'Matthias Grunewald', 'Jan van Eyck', 'Pieter Bruegel the Elder', 'Albrecht Altdorfer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which Latvian-born American painter is famous for huge, softly glowing rectangles of color?', NULL,
        'Mark Rothko', ARRAY['Barnett Newman', 'Clyfford Still', 'Willem de Kooning', 'Franz Kline', 'Robert Motherwell', 'Josef Albers'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist couple wrapped Berlin''s Reichstag building in silver fabric in 1995?', NULL,
        'Christo and Jeanne-Claude', ARRAY['Gilbert & George', 'Claes Oldenburg and Coosje van Bruggen', 'Ilya and Emilia Kabakov', 'Marina Abramovic and Ulay', 'Fischli and Weiss', 'The Starn twins'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Swiss-French architect called a house ''a machine for living in''?', NULL,
        'Le Corbusier', ARRAY['Walter Gropius', 'Mies van der Rohe', 'Adolf Loos', 'Alvar Aalto', 'Auguste Perret', 'Oscar Niemeyer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Who became the first woman to win the Pritzker Architecture Prize, in 2004?', NULL,
        'Zaha Hadid', ARRAY['Kazuyo Sejima', 'Denise Scott Brown', 'Jeanne Gang', 'Maya Lin', 'Lina Bo Bardi', 'Elizabeth Diller'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which German-American modernist architect made the motto ''less is more'' famous?', NULL,
        'Ludwig Mies van der Rohe', ARRAY['Walter Gropius', 'Le Corbusier', 'Philip Johnson', 'Louis Sullivan', 'Frank Lloyd Wright', 'Adolf Loos'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which 17th-century Italian painter, whose first name echoes the Greek goddess of the hunt, was the first woman in Florence''s art academy?', NULL,
        'Artemisia Gentileschi', ARRAY['Sofonisba Anguissola', 'Lavinia Fontana', 'Elisabetta Sirani', 'Judith Leyster', 'Rosalba Carriera', 'Angelica Kauffman'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Japanese artist is famous for polka dots, giant pumpkins and "Infinity Mirror Rooms"?', NULL,
        'Yayoi Kusama', ARRAY['Yoko Ono', 'Takashi Murakami', 'Mariko Mori', 'Louise Bourgeois', 'Marina Abramovic', 'Cindy Sherman'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Chinese artist filled Tate Modern''s Turbine Hall with about 100 million porcelain sunflower seeds in 2010?', NULL,
        'Ai Weiwei', ARRAY['Cai Guo-Qiang', 'Zhang Xiaogang', 'Xu Bing', 'Yue Minjun', 'Anish Kapoor', 'Olafur Eliasson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Spanish court painter created "Las Meninas" in 1656?', NULL,
        'Diego Velazquez', ARRAY['Francisco Goya', 'El Greco', 'Bartolome Esteban Murillo', 'Francisco de Zurbaran', 'Jusepe de Ribera', 'Peter Paul Rubens'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which Netherlandish painter created the strange, crowded three-panel painting "The Garden of Earthly Delights"?', NULL,
        'Hieronymus Bosch', ARRAY['Pieter Bruegel the Elder', 'Jan van Eyck', 'Rogier van der Weyden', 'Hans Memling', 'Albrecht Durer', 'Quentin Matsys'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'Which architect engineered the enormous brick dome of Florence Cathedral, built in the 1420s and 1430s?', NULL,
        'Filippo Brunelleschi', ARRAY['Leon Battista Alberti', 'Donato Bramante', 'Michelangelo', 'Lorenzo Ghiberti', 'Giotto', 'Andrea Palladio'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_1', NULL,
        'China''s Terracotta Army guards the tomb of which first emperor, whose dynasty may have given China its name?', NULL,
        'Qin Shi Huang', ARRAY['Kublai Khan', 'Genghis Khan', 'Emperor Wu of Han', 'Emperor Taizong of Tang', 'The Yongle Emperor', 'Puyi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ORIGINAL', NULL,
        'Which Flemish painter created "The Arnolfini Portrait" of 1434, with its tiny reflection in a convex mirror?', NULL,
        'Jan van Eyck', ARRAY['Rogier van der Weyden', 'Hans Memling', 'Pieter Bruegel the Elder', 'Robert Campin', 'Peter Paul Rubens', 'Petrus Christus'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Paris opera house, with an underground lake, inspired "The Phantom of the Opera"?', NULL,
        'The Palais Garnier', ARRAY['The Opéra Bastille', 'The Opéra-Comique', 'The Théâtre du Châtelet', 'The Moulin Rouge', 'The Comédie-Française', 'The Salle Pleyel'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Chicago architect, a father of the skyscraper, coined the motto "form follows function"?', NULL,
        'Louis Sullivan', ARRAY['Daniel Burnham', 'Frank Lloyd Wright', 'William Le Baron Jenney', 'Henry Hobson Richardson', 'John Root', 'Ludwig Mies van der Rohe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What do you call paint laid on so thickly that brush or knife marks stand out from the canvas?', NULL,
        'Impasto', ARRAY['Sfumato', 'Glazing', 'Scumbling', 'Grisaille', 'Gesso', 'Pentimento'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which technique of soft, smoky blending, with no hard outlines, gives the "Mona Lisa" its hazy look?', NULL,
        'Sfumato', ARRAY['Impasto', 'Chiaroscuro', 'Pointillism', 'Fresco', 'Tenebrism', 'Trompe l''oeil'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'The painting known as "Whistler''s Mother" is officially titled "Arrangement in Grey and ___ No. 1." What fills the blank?', NULL,
        'Black', ARRAY['White', 'Blue', 'Gold', 'Silver', 'Rose', 'Green'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which English painter created "The Hay Wain," a cart crossing a stream in the countryside?', NULL,
        'John Constable', ARRAY['J. M. W. Turner', 'Thomas Gainsborough', 'William Blake', 'Joshua Reynolds', 'George Stubbs', 'John Everett Millais'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Spanish painter recorded French soldiers executing Madrid civilians in "The Third of May 1808"?', NULL,
        'Francisco Goya', ARRAY['El Greco', 'Bartolomé Murillo', 'Francisco de Zurbarán', 'Joaquín Sorolla', 'Jusepe de Ribera', 'Juan Gris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the triangular gable above the columns on the front of a Greek temple called?', NULL,
        'The pediment', ARRAY['The frieze', 'The cornice', 'The architrave', 'The lintel', 'The capital', 'The plinth'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which ancient city near Mexico City is home to the Pyramids of the Sun and the Moon?', NULL,
        'Teotihuacan', ARRAY['Tenochtitlan', 'Chichen Itza', 'Tikal', 'Monte Alban', 'Tula', 'Palenque'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which 21-year-old architecture student designed the Vietnam Veterans Memorial in Washington, D.C.?', NULL,
        'Maya Lin', ARRAY['Zaha Hadid', 'Denise Scott Brown', 'Jeanne Gang', 'Kazuyo Sejima', 'Julia Morgan', 'Amale Andraos'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Swedish-born Pop sculptor made giant everyday objects, like a huge clothespin and a spoon holding a cherry?', NULL,
        'Claes Oldenburg', ARRAY['Jeff Koons', 'Alexander Calder', 'Robert Indiana', 'Isamu Noguchi', 'Louise Bourgeois', 'George Segal'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'The Bayeux "Tapestry," which tells the story of the Norman Conquest of England, is really what kind of needlework?', NULL,
        'Embroidery', ARRAY['Weaving', 'Quilting', 'Knitting', 'Lace', 'Crochet', 'Appliqué'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the ancient method of casting bronze statues from a wax model that is melted away?', NULL,
        'Lost-wax casting', ARRAY['Sand casting', 'Slip casting', 'Die casting', 'Chasing', 'Repoussé', 'Forging'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'The four giant seated statues at Egypt''s Abu Simbel temple all show which pharaoh?', NULL,
        'Ramesses II', ARRAY['Tutankhamun', 'Khufu', 'Akhenaten', 'Thutmose III', 'Seti I', 'Hatshepsut'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Greek column style, the fanciest, is topped with carved acanthus leaves?', NULL,
        'Corinthian', ARRAY['Doric', 'Ionic', 'Tuscan', 'Gothic', 'Byzantine', 'Romanesque'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is a beam or balcony that sticks out with support at only one end called?', NULL,
        'A cantilever', ARRAY['A corbel', 'A lintel', 'A truss', 'A buttress', 'A joist', 'A girder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Brazilian architect designed the swooping modernist buildings of the capital, Brasília?', NULL,
        'Oscar Niemeyer', ARRAY['Lúcio Costa', 'Roberto Burle Marx', 'Paulo Mendes da Rocha', 'Lina Bo Bardi', 'Luis Barragán', 'Santiago Calatrava'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Italian painter and architect wrote "Lives of the Artists," the first great book of art history, in 1550?', NULL,
        'Giorgio Vasari', ARRAY['Leon Battista Alberti', 'Benvenuto Cellini', 'Giotto', 'Filippo Lippi', 'Andrea Mantegna', 'Baldassare Castiglione'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Belgian Surrealist painted a pipe over the words "This is not a pipe"?', NULL,
        'René Magritte', ARRAY['Salvador Dalí', 'Max Ernst', 'Joan Miró', 'Giorgio de Chirico', 'Yves Tanguy', 'Paul Delvaux'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which artist turned art upside down in 1917 by entering a urinal, titled "Fountain," in an exhibition?', NULL,
        'Marcel Duchamp', ARRAY['Man Ray', 'Pablo Picasso', 'Francis Picabia', 'Jean Arp', 'Kurt Schwitters', 'Tristan Tzara'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Russian painter, who said he could "hear" colors, is credited with some of the first purely abstract paintings?', NULL,
        'Wassily Kandinsky', ARRAY['Kazimir Malevich', 'Marc Chagall', 'Alexander Rodchenko', 'El Lissitzky', 'Ilya Repin', 'Natalia Goncharova'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which American painter created "Christina''s World," a woman in a field reaching toward a farmhouse?', NULL,
        'Andrew Wyeth', ARRAY['Edward Hopper', 'Grant Wood', 'Thomas Hart Benton', 'Winslow Homer', 'Norman Rockwell', 'Georgia O''Keeffe'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Danish architect won the contest to design Australia''s sail-roofed harbor landmark in 1957?', NULL,
        'Jørn Utzon', ARRAY['Arne Jacobsen', 'Alvar Aalto', 'Bjarke Ingels', 'Eero Saarinen', 'Harry Seidler', 'Renzo Piano'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which German cathedral, with twin spires, took more than 600 years to finish, from 1248 to 1880?', NULL,
        'Cologne Cathedral', ARRAY['Ulm Minster', 'Aachen Cathedral', 'Strasbourg Cathedral', 'Speyer Cathedral', 'Freiburg Minster', 'Mainz Cathedral'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which marble sculpture in St. Peter''s Basilica shows Mary cradling the dead Jesus?', NULL,
        'The Pietà', ARRAY['The Madonna of Bruges', 'The Deposition', 'The Lamentation', 'The Ecstasy of Saint Teresa', 'The Rondanini', 'The Annunciation'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the Japanese woodblock-print art of "pictures of the floating world" called?', NULL,
        'Ukiyo-e', ARRAY['Sumi-e', 'Ikebana', 'Manga', 'Kintsugi', 'Shodo', 'Nihonga'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which costly blue pigment, prized by Renaissance painters, was made from ground lapis lazuli?', NULL,
        'Ultramarine', ARRAY['Cobalt blue', 'Prussian blue', 'Cerulean', 'Indigo', 'Azurite', 'Teal'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Paris arts center, opened in 1977, wears its colorful pipes and escalators on the outside?', NULL,
        'The Centre Pompidou', ARRAY['The Grand Palais', 'The Musée d''Orsay', 'The Fondation Louis Vuitton', 'The Institut du Monde Arabe', 'La Défense', 'The Philharmonie de Paris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which Virginia home, pictured on the back of the nickel, did its owner, a president, design himself?', NULL,
        'Monticello', ARRAY['Mount Vernon', 'Montpelier', 'Ash Lawn', 'The Hermitage', 'Poplar Forest', 'Sherwood Forest'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which French painter''s "Olympia," a nude staring boldly at the viewer, scandalized Paris in 1865?', NULL,
        'Édouard Manet', ARRAY['Claude Monet', 'Gustave Courbet', 'Edgar Degas', 'Jean-Auguste-Dominique Ingres', 'Alexandre Cabanel', 'Paul Cézanne'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'Which sculptor led the carving of the four presidents'' faces in South Dakota''s Black Hills?', NULL,
        'Gutzon Borglum', ARRAY['Daniel Chester French', 'Augustus Saint-Gaudens', 'Korczak Ziolkowski', 'Frederic Remington', 'Lorado Taft', 'Alexander Calder'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the Japanese art of mending broken pottery with gold, making the cracks part of its beauty?', NULL,
        'Kintsugi', ARRAY['Raku', 'Ikebana', 'Bonsai', 'Wabi-sabi', 'Shibori', 'Origami'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'In egg tempera, the main painting method before oils, what held the colored powder together?', NULL,
        'Egg yolk', ARRAY['Egg white', 'Linseed oil', 'Beeswax', 'Honey', 'Animal glue', 'Milk'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'ART_AND_ARCHITECTURE', 'ART_AND_ARCHITECTURE_BATCH_2', NULL,
        'What is the round opening at the top of a dome, like the one in Rome''s ancient temple to all the gods, called, from the Latin for "eye"?', NULL,
        'The oculus', ARRAY['The cupola', 'The lantern', 'The apse', 'The drum', 'The vault', 'The pendentive'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'ART_AND_ARCHITECTURE';
