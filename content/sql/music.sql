-- ============================================================================
-- content/sql/music.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/music.csv, the master copy of the
-- Thinking Pants category MUSIC. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MUSIC';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'How many strings does a standard guitar have?', NULL,
        'Six', ARRAY['Four', 'Five', 'Seven', 'Eight', 'Twelve', 'Three'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which instrument has black and white keys?', NULL,
        'Piano', ARRAY['Violin', 'Trumpet', 'Drums', 'Flute', 'Guitar', 'Saxophone'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Who is known as the "King of Pop"?', NULL,
        'Michael Jackson', ARRAY['Elvis Presley', 'Prince', 'Justin Timberlake', 'James Brown', 'Usher', 'Bruno Mars'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which pop star released the album "1989"?', NULL,
        'Taylor Swift', ARRAY['Katy Perry', 'Ariana Grande', 'Beyoncé', 'Adele', 'Rihanna', 'Lady Gaga'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'How many keys are on a standard piano?', NULL,
        '88', ARRAY['76', '52', '100', '64', '96', '108'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which family of instruments does the violin belong to?', NULL,
        'String', ARRAY['Brass', 'Woodwind', 'Percussion', 'Keyboard', 'Electronic', 'Wind'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which pop star is known as "Queen Bey"?', NULL,
        'Beyoncé', ARRAY['Rihanna', 'Adele', 'Taylor Swift', 'Lady Gaga', 'Katy Perry', 'Ariana Grande'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'What is a group of four singers or musicians called?', NULL,
        'A quartet', ARRAY['A trio', 'A quintet', 'A duet', 'An octet', 'A sextet', 'A chorus'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which Swedish pop group sang "Dancing Queen"?', NULL,
        'ABBA', ARRAY['Roxette', 'Ace of Base', 'A-ha', 'Europe', 'The Cardigans', 'Icona Pop'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer became known as the "King of Rock and Roll" in the 1950s?', NULL,
        'Elvis Presley', ARRAY['Chuck Berry', 'Little Richard', 'Buddy Holly', 'Jerry Lee Lewis', 'Johnny Cash', 'Roy Orbison'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer, known as the "Queen of Pop," released "Like a Virgin"?', NULL,
        'Madonna', ARRAY['Cyndi Lauper', 'Whitney Houston', 'Janet Jackson', 'Kylie Minogue', 'Paula Abdul', 'Gloria Estefan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which pop star, born Stefani Germanotta, released "Poker Face" and "Bad Romance"?', NULL,
        'Lady Gaga', ARRAY['Katy Perry', 'Ke$ha', 'Christina Aguilera', 'Gwen Stefani', 'Pink', 'Rihanna'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer recorded "I Will Always Love You" for the movie "The Bodyguard"?', NULL,
        'Whitney Houston', ARRAY['Mariah Carey', 'Celine Dion', 'Toni Braxton', 'Janet Jackson', 'Gloria Estefan', 'Diana Ross'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which Canadian singer recorded "My Heart Will Go On" for "Titanic"?', NULL,
        'Celine Dion', ARRAY['Shania Twain', 'Alanis Morissette', 'Avril Lavigne', 'Sarah McLachlan', 'Mariah Carey', 'Whitney Houston'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "...Baby One More Time" in 1998?', NULL,
        'Britney Spears', ARRAY['Christina Aguilera', 'Jessica Simpson', 'Mandy Moore', 'Jennifer Lopez', 'Mariah Carey', 'Shakira'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "Shape of You" and "Perfect"?', NULL,
        'Ed Sheeran', ARRAY['Sam Smith', 'Shawn Mendes', 'Lewis Capaldi', 'James Arthur', 'Harry Styles', 'Charlie Puth'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which Canadian singer released "Sorry" and "What Do You Mean?"?', NULL,
        'Justin Bieber', ARRAY['Shawn Mendes', 'The Weeknd', 'Drake', 'Michael Bublé', 'Charlie Puth', 'Nick Jonas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "Bad Guy" as a teenager in 2019?', NULL,
        'Billie Eilish', ARRAY['Olivia Rodrigo', 'Lorde', 'Halsey', 'Dua Lipa', 'Ariana Grande', 'Camila Cabello'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper from Toronto released "Started from the Bottom"?', NULL,
        'Drake', ARRAY['The Weeknd', 'Kanye West', 'J. Cole', 'Lil Wayne', 'Kendrick Lamar', 'Travis Scott'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which band released "Bohemian Rhapsody" in 1975?', NULL,
        'Queen', ARRAY['Led Zeppelin', 'The Who', 'Pink Floyd', 'Aerosmith', 'The Rolling Stones', 'Def Leppard'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What genre of music, born in the Bronx in the 1970s, features rapping over beats?', NULL,
        'Hip hop', ARRAY['Disco', 'Funk', 'Punk', 'Reggae', 'R&B', 'Techno'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What style of Korean pop music made BTS and BLACKPINK global stars?', NULL,
        'K-pop', ARRAY['J-pop', 'C-pop', 'Bubblegum pop', 'Synth-pop', 'Euro-pop', 'Indie pop'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What genre features fiddles, steel guitars and storytelling lyrics, and made stars of Garth Brooks and Shania Twain?', NULL,
        'Country', ARRAY['Bluegrass', 'Folk', 'Blues', 'Rockabilly', 'Gospel', 'Southern rock'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What is a song released on its own, often to promote an album, called?', NULL,
        'A single', ARRAY['An encore', 'A demo', 'A remix', 'A bonus track', 'A cover', 'A medley'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What do you call the person who leads an orchestra?', NULL,
        'The conductor', ARRAY['The composer', 'The concertmaster', 'The soloist', 'The arranger', 'The producer', 'The stage manager'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What does a metronome help a musician keep?', NULL,
        'A steady tempo', ARRAY['The right pitch', 'The volume', 'The key', 'The harmony', 'The tuning', 'The lyrics'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which brass instrument uses a slide instead of valves?', NULL,
        'Trombone', ARRAY['Trumpet', 'Tuba', 'French horn', 'Cornet', 'Euphonium', 'Flugelhorn'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which percussion instruments are a pair of large metal plates crashed together?', NULL,
        'Cymbals', ARRAY['Gongs', 'Triangles', 'Tambourines', 'Castanets', 'Cowbells', 'Bongos'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'How many lines are in a musical staff?', NULL,
        'Five', ARRAY['Four', 'Six', 'Seven', 'Eight', 'Three', 'Ten'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which keyboard instrument with pipes is often played in churches?', NULL,
        'Organ', ARRAY['Piano', 'Harpsichord', 'Accordion', 'Harmonica', 'Bagpipes', 'Synthesizer'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Firework" and "Roar"?', NULL,
        'Katy Perry', ARRAY['Kesha', 'P!nk', 'Demi Lovato', 'Selena Gomez', 'Meghan Trainor', 'Avril Lavigne'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Thank U, Next" and "7 Rings"?', NULL,
        'Ariana Grande', ARRAY['Selena Gomez', 'Halsey', 'Camila Cabello', 'Doja Cat', 'Demi Lovato', 'Hailee Steinfeld'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which British boy band sang "What Makes You Beautiful"?', NULL,
        'One Direction', ARRAY['The Wanted', 'Take That', 'Westlife', '5 Seconds of Summer', 'Big Time Rush', 'Union J'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What do you call a gentle song sung to help a baby fall asleep?', NULL,
        'A lullaby', ARRAY['A ballad', 'An anthem', 'A jingle', 'A hymn', 'A carol', 'A chant'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'A country''s official patriotic song is called its national what?', NULL,
        'Anthem', ARRAY['Ballad', 'Jingle', 'Carol', 'Hymn', 'Chorus', 'March'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'How many musicians are in a trio?', NULL,
        'Three', ARRAY['Two', 'Four', 'Five', 'Six', 'Seven', 'Eight'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which woodwind instrument is held sideways and played by blowing across a hole?', NULL,
        'Flute', ARRAY['Clarinet', 'Oboe', 'Recorder', 'Saxophone', 'Bassoon', 'Harmonica'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which large brass instrument plays the lowest notes in a marching or concert band?', NULL,
        'Tuba', ARRAY['Trumpet', 'French horn', 'Cornet', 'Bugle', 'Saxophone', 'Clarinet'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which large string instrument, plucked by hand, stands upright in a triangle-shaped frame?', NULL,
        'Harp', ARRAY['Lyre', 'Lute', 'Zither', 'Cello', 'Dulcimer', 'Banjo'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which small, four-stringed instrument is closely linked with Hawaii?', NULL,
        'Ukulele', ARRAY['Banjo', 'Mandolin', 'Lute', 'Sitar', 'Balalaika', 'Harp'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What do you call the part of a song that repeats, often with the title in it?', NULL,
        'The chorus', ARRAY['The verse', 'The bridge', 'The intro', 'The solo', 'The outro', 'The overture'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer played Hannah Montana on TV before releasing "Wrecking Ball"?', NULL,
        'Miley Cyrus', ARRAY['Selena Gomez', 'Demi Lovato', 'Hilary Duff', 'Vanessa Hudgens', 'Ashley Tisdale', 'Lindsay Lohan'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which pop star released "Espresso" in 2024?', NULL,
        'Sabrina Carpenter', ARRAY['Chappell Roan', 'Tate McRae', 'Doja Cat', 'Gracie Abrams', 'Halsey', 'Meghan Trainor'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Levitating" and "Don''t Start Now"?', NULL,
        'Dua Lipa', ARRAY['Rita Ora', 'Anne-Marie', 'Jessie J', 'Ellie Goulding', 'Zara Larsson', 'Charli XCX'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What is a duet?', NULL,
        'A piece for two performers', ARRAY['A piece for one performer', 'A song with no words', 'A song with two verses', 'A piece for four performers', 'A fast dance', 'A sad song'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which instrument do kids often learn in school, blowing in one end and covering holes with their fingers?', NULL,
        'Recorder', ARRAY['Harmonica', 'Ocarina', 'Clarinet', 'Pan flute', 'Trumpet', 'Bagpipes'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which instrument do you play by humming into it, making a buzzing sound?', NULL,
        'Kazoo', ARRAY['Harmonica', 'Ocarina', 'Tambourine', 'Whistle', 'Maracas', 'Jaw harp'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Can''t Stop the Feeling!" from the movie "Trolls"?', NULL,
        'Justin Timberlake', ARRAY['Bruno Mars', 'Nick Jonas', 'Shawn Mendes', 'Usher', 'Charlie Puth', 'Adam Levine'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Blinding Lights"?', NULL,
        'The Weeknd', ARRAY['Post Malone', 'Khalid', 'Frank Ocean', 'Bruno Mars', 'Shawn Mendes', 'Chris Brown'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which rattling instruments, usually shaken in pairs, are filled with beads or seeds?', NULL,
        'Maracas', ARRAY['Castanets', 'Tambourine', 'Bongos', 'Claves', 'Triangle', 'Cowbell'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which British band sang "Hey Jude"?', NULL,
        'The Beatles', ARRAY['The Rolling Stones', 'Pink Floyd', 'Queen', 'The Who', 'Led Zeppelin', 'The Kinks'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'What is the term for singing without any instrumental accompaniment?', NULL,
        'A cappella', ARRAY['Acoustic', 'Karaoke', 'Falsetto', 'Harmony', 'Staccato', 'Vibrato'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which artist released the album and song "Thriller"?', NULL,
        'Michael Jackson', ARRAY['Prince', 'Stevie Wonder', 'Lionel Richie', 'Smokey Robinson', 'Marvin Gaye', 'Diana Ross'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which genre of music originated in Jamaica?', NULL,
        'Reggae', ARRAY['Salsa', 'Samba', 'Calypso', 'Ska', 'Merengue', 'Bachata'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which composer continued writing music after going almost completely deaf?', NULL,
        'Ludwig van Beethoven', ARRAY['Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert', 'Johannes Brahms', 'Frederic Chopin', 'Joseph Haydn'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which rock band is fronted by Bono and hails from Dublin, Ireland?', NULL,
        'U2', ARRAY['Coldplay', 'The Killers', 'Oasis', 'Radiohead', 'Snow Patrol', 'The Script'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which singer was known as "The Man in Black"?', NULL,
        'Johnny Cash', ARRAY['Willie Nelson', 'Hank Williams', 'Garth Brooks', 'George Strait', 'Merle Haggard', 'Waylon Jennings'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which Austrian composer was a child prodigy who wrote his first symphony at age 8?', NULL,
        'Wolfgang Amadeus Mozart', ARRAY['Ludwig van Beethoven', 'Johann Sebastian Bach', 'Franz Schubert', 'Joseph Haydn', 'Johannes Brahms', 'Franz Liszt'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which artist is known for the song "Rolling in the Deep"?', NULL,
        'Adele', ARRAY['Sam Smith', 'Amy Winehouse', 'Duffy', 'Florence Welch', 'Sia', 'Lana Del Rey'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer, known as "Ol'' Blue Eyes," sang "My Way"?', NULL,
        'Frank Sinatra', ARRAY['Dean Martin', 'Bing Crosby', 'Tony Bennett', 'Sammy Davis Jr.', 'Perry Como', 'Nat King Cole'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which Jamaican singer is famous for "No Woman, No Cry" and "One Love"?', NULL,
        'Bob Marley', ARRAY['Peter Tosh', 'Jimmy Cliff', 'Toots Hibbert', 'Shaggy', 'Ziggy Marley', 'Desmond Dekker'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer-songwriter recorded "Piano Man" and "Uptown Girl"?', NULL,
        'Billy Joel', ARRAY['Elton John', 'Barry Manilow', 'Neil Diamond', 'Bruce Springsteen', 'Paul Simon', 'Rod Stewart'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer, known as "The Boss," recorded "Born in the U.S.A."?', NULL,
        'Bruce Springsteen', ARRAY['Bob Seger', 'John Mellencamp', 'Tom Petty', 'Billy Joel', 'Jon Bon Jovi', 'Bryan Adams'], 200, 'The song is a bitter story about a Vietnam veteran, though it''s often heard as a cheer.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist released the album "Purple Rain" and starred in the film of the same name?', NULL,
        'Prince', ARRAY['Michael Jackson', 'Rick James', 'Lionel Richie', 'Stevie Wonder', 'George Michael', 'Lenny Kravitz'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which grunge band, fronted by Kurt Cobain, released "Smells Like Teen Spirit"?', NULL,
        'Nirvana', ARRAY['Pearl Jam', 'Soundgarden', 'Alice in Chains', 'Stone Temple Pilots', 'Foo Fighters', 'Green Day'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which girl group sang "Wannabe" and "Spice Up Your Life"?', NULL,
        'The Spice Girls', ARRAY['All Saints', 'Destiny''s Child', 'TLC', 'The Pussycat Dolls', 'Bananarama', 'Girls Aloud'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which boy band sang "I Want It That Way"?', NULL,
        'Backstreet Boys', ARRAY['NSYNC', '98 Degrees', 'Boyz II Men', 'New Kids on the Block', 'Westlife', 'O-Town'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper released "Lose Yourself" for the film "8 Mile"?', NULL,
        'Eminem', ARRAY['50 Cent', 'Dr. Dre', 'Jay-Z', 'Kanye West', 'Nelly', 'Ludacris'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which artist released "Umbrella" featuring Jay-Z?', NULL,
        'Rihanna', ARRAY['Beyoncé', 'Ciara', 'Alicia Keys', 'Kelly Rowland', 'Nicki Minaj', 'Keyshia Cole'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper released "Old Town Road," a record-breaking country-rap crossover?', NULL,
        'Lil Nas X', ARRAY['Lil Wayne', 'Post Malone', 'Lil Uzi Vert', 'Jack Harlow', 'Travis Scott', 'Lil Baby'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which South Korean group released "Dynamite" and became global superstars?', NULL,
        'BTS', ARRAY['BLACKPINK', 'EXO', 'TWICE', 'BIGBANG', 'Stray Kids', 'SEVENTEEN'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What dance music, with a steady four-on-the-floor beat, was hugely popular in the late 1970s?', NULL,
        'Disco', ARRAY['Funk', 'Techno', 'House', 'New wave', 'Soul', 'Swing'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What music video channel, launched in 1981, changed how pop music was sold?', NULL,
        'MTV', ARRAY['VH1', 'BET', 'CMT', 'MuchMusic', 'Fuse', 'The Box'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which band, with singer Robert Plant and guitarist Jimmy Page, recorded "Stairway to Heaven"?', NULL,
        'Led Zeppelin', ARRAY['Deep Purple', 'Black Sabbath', 'The Who', 'Pink Floyd', 'Cream', 'Jethro Tull'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rock band, fronted by Steven Tyler, released "Dream On" and "Walk This Way"?', NULL,
        'Aerosmith', ARRAY['Van Halen', 'Def Leppard', 'Kiss', 'Bon Jovi', 'Guns N'' Roses', 'Mötley Crüe'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which family group had hits with "ABC" and "I Want You Back"?', NULL,
        'The Jackson 5', ARRAY['The Osmonds', 'The Commodores', 'The Temptations', 'The Four Tops', 'The Supremes', 'The Pointer Sisters'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "Hips Don''t Lie" featuring Wyclef Jean?', NULL,
        'Shakira', ARRAY['Jennifer Lopez', 'Gloria Estefan', 'Paulina Rubio', 'Thalía', 'Christina Aguilera', 'Selena Gomez'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rock band released "Hotel California" in 1976?', NULL,
        'The Eagles', ARRAY['Fleetwood Mac', 'The Doobie Brothers', 'Steely Dan', 'Lynyrd Skynyrd', 'The Allman Brothers Band', 'Chicago'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "drivers license" in 2021?', NULL,
        'Olivia Rodrigo', ARRAY['Billie Eilish', 'Sabrina Carpenter', 'Lorde', 'Conan Gray', 'Gracie Abrams', 'Tate McRae'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which band, fronted by Chris Martin, released "Yellow" and "Fix You"?', NULL,
        'Coldplay', ARRAY['Keane', 'Snow Patrol', 'Radiohead', 'Travis', 'The Fray', 'OneRepublic'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'In which city is the Grand Ole Opry, the famous long-running radio show and stage?', NULL,
        'Nashville', ARRAY['Memphis', 'Austin', 'Atlanta', 'Branson', 'Dallas', 'Louisville'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What is the name of the Memphis mansion where the "King of Rock and Roll" lived?', NULL,
        'Graceland', ARRAY['Neverland', 'Paisley Park', 'Dollywood', 'Sun Studio', 'Shady Acres', 'Heartbreak Hotel'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which string instrument is a little larger than a violin but smaller than a cello?', NULL,
        'Viola', ARRAY['Double bass', 'Mandolin', 'Fiddle', 'Lute', 'Ukulele', 'Harp'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which band of brothers sang "Sucker" and "Burnin'' Up"?', NULL,
        'Jonas Brothers', ARRAY['The Wanted', '''N Sync', 'Big Time Rush', 'Why Don''t We', 'Boyzone', '98 Degrees'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which band of three brothers sang "MMMBop" in 1997?', NULL,
        'Hanson', ARRAY['''N Sync', '98 Degrees', 'The Moffatts', 'Five', 'Boyzone', 'The Osmonds'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which band sang "Good Vibrations" and "Surfin'' U.S.A."?', NULL,
        'The Beach Boys', ARRAY['Jan and Dean', 'The Monkees', 'The Turtles', 'The Byrds', 'The Mamas & the Papas', 'The Four Seasons'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Cuban-American singer led the Miami Sound Machine?', NULL,
        'Gloria Estefan', ARRAY['Celia Cruz', 'Jennifer Lopez', 'Thalía', 'Paulina Rubio', 'Linda Ronstadt', 'Selena'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Puerto Rican singer released "Livin'' la Vida Loca"?', NULL,
        'Ricky Martin', ARRAY['Marc Anthony', 'Enrique Iglesias', 'Luis Fonsi', 'Chayanne', 'Daddy Yankee', 'Bad Bunny'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which 2017 song by Luis Fonsi and Daddy Yankee became a worldwide smash?', NULL,
        '"Despacito"', ARRAY['"Gasolina"', '"Bailando"', '"Mi Gente"', '"La Bamba"', '"Macarena"', '"Danza Kuduro"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What is a group of eight musicians called?', NULL,
        'An octet', ARRAY['A sextet', 'A septet', 'A nonet', 'A quintet', 'An octave', 'A decet'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'In "do, re, mi," which note comes right after "sol"?', NULL,
        'La', ARRAY['Ti', 'Fa', 'Mi', 'Do', 'Re', 'Mo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which rock band released the album "Back in Black"?', NULL,
        'AC/DC', ARRAY['Def Leppard', 'Iron Maiden', 'Motörhead', 'Scorpions', 'Judas Priest', 'Thin Lizzy'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Ozzy Osbourne first found fame singing for which heavy metal band?', NULL,
        'Black Sabbath', ARRAY['Iron Maiden', 'Judas Priest', 'Deep Purple', 'Motörhead', 'Megadeth', 'Metallica'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which face-painted band sang "Rock and Roll All Nite"?', NULL,
        'Kiss', ARRAY['Twisted Sister', 'Alice Cooper', 'Mötley Crüe', 'Poison', 'Ratt', 'Quiet Riot'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which country singer won "American Idol" and released "Before He Cheats"?', NULL,
        'Carrie Underwood', ARRAY['Miranda Lambert', 'Faith Hill', 'Reba McEntire', 'Kelsea Ballerini', 'Martina McBride', 'Sara Evans'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Motown group, led by Diana Ross, sang "Stop! In the Name of Love"?', NULL,
        'The Supremes', ARRAY['The Marvelettes', 'Martha and the Vandellas', 'The Ronettes', 'The Shirelles', 'The Crystals', 'The Shangri-Las'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Stay with Me" and "Too Good at Goodbyes"?', NULL,
        'Sam Smith', ARRAY['Lewis Capaldi', 'James Arthur', 'Shawn Mendes', 'Tom Odell', 'George Ezra', 'Calum Scott'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Watermelon Sugar" and "As It Was"?', NULL,
        'Harry Styles', ARRAY['Niall Horan', 'Zayn Malik', 'Louis Tomlinson', 'Shawn Mendes', 'Charlie Puth', 'Conan Gray'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer released "Hello" (1984) and "All Night Long"?', NULL,
        'Lionel Richie', ARRAY['Luther Vandross', 'Smokey Robinson', 'Kenny Rogers', 'Peabo Bryson', 'Billy Ocean', 'Barry White'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'With Phil Collins as drummer and singer, which band released "Invisible Touch"?', NULL,
        'Genesis', ARRAY['Yes', 'Supertramp', 'Toto', 'Foreigner', 'The Alan Parsons Project', 'Asia'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Mick Jagger and Keith Richards are members of which rock band?', NULL,
        'The Rolling Stones', ARRAY['The Beatles', 'The Who', 'Led Zeppelin', 'Aerosmith', 'The Eagles', 'Fleetwood Mac'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'What is the highest female singing voice classification?', NULL,
        'Soprano', ARRAY['Alto', 'Mezzo-soprano', 'Contralto', 'Tenor', 'Baritone', 'Bass'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which American singer is known as "The Queen of Soul"?', NULL,
        'Aretha Franklin', ARRAY['Whitney Houston', 'Diana Ross', 'Tina Turner', 'Etta James', 'Gladys Knight', 'Patti LaBelle'], 300, 'In 1987 she became the first woman inducted into the Rock and Roll Hall of Fame.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which Detroit record label did Berry Gordy found?', NULL,
        'Motown', ARRAY['Atlantic Records', 'Capitol Records', 'Columbia Records', 'RCA', 'Stax Records', 'Def Jam'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which classical composer wrote "The Four Seasons"?', NULL,
        'Antonio Vivaldi', ARRAY['Johann Sebastian Bach', 'George Frideric Handel', 'Franz Joseph Haydn', 'Wolfgang Amadeus Mozart', 'Claudio Monteverdi', 'Arcangelo Corelli'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which music genre, originating in New Orleans, is known for improvisation and swing?', NULL,
        'Jazz', ARRAY['Blues', 'Ragtime', 'Gospel', 'Funk', 'Bluegrass', 'Soul'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which band released the album "The Dark Side of the Moon" in 1973?', NULL,
        'Pink Floyd', ARRAY['Led Zeppelin', 'The Who', 'Genesis', 'Yes', 'King Crimson', 'Deep Purple'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which rapper released the influential album "The Chronic" in 1992?', NULL,
        'Dr. Dre', ARRAY['Snoop Dogg', 'Ice Cube', 'Tupac Shakur', 'The Notorious B.I.G.', 'Eazy-E', 'Nas'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which 1969 music festival took place on a dairy farm in Bethel, New York?', NULL,
        'Woodstock', ARRAY['Monterey Pop Festival', 'Altamont', 'Isle of Wight Festival', 'Live Aid', 'Lollapalooza', 'Coachella'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which instrument is Yo-Yo Ma famous for playing?', NULL,
        'Cello', ARRAY['Violin', 'Viola', 'Double bass', 'Piano', 'Harp', 'Clarinet'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which music notation symbol lowers a note by one half step?', NULL,
        'A flat', ARRAY['A sharp', 'A natural', 'A rest', 'A clef', 'A tie', 'A slur'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rock and roll pianist sang "Great Balls of Fire"?', NULL,
        'Jerry Lee Lewis', ARRAY['Little Richard', 'Fats Domino', 'Chuck Berry', 'Buddy Holly', 'Ray Charles', 'Bo Diddley'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which guitarist famously set his guitar on fire at the 1967 Monterey Pop Festival?', NULL,
        'Jimi Hendrix', ARRAY['Eric Clapton', 'Pete Townshend', 'Jimmy Page', 'Carlos Santana', 'Keith Richards', 'Jeff Beck'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer-songwriter won the 2016 Nobel Prize in Literature?', NULL,
        'Bob Dylan', ARRAY['Leonard Cohen', 'Paul Simon', 'Joni Mitchell', 'Bruce Springsteen', 'Neil Young', 'Patti Smith'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper released "Ready to Die" and was a leading figure in East Coast hip-hop?', NULL,
        'The Notorious B.I.G.', ARRAY['Tupac Shakur', 'Nas', 'Jay-Z', 'DMX', 'Busta Rhymes', 'Big Pun'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which alternative rock band, fronted by Thom Yorke, released "OK Computer"?', NULL,
        'Radiohead', ARRAY['Coldplay', 'Muse', 'Blur', 'Oasis', 'R.E.M.', 'The Smashing Pumpkins'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Whose song "Uptown Funk" featured Bruno Mars on vocals?', NULL,
        'Mark Ronson', ARRAY['Pharrell Williams', 'Calvin Harris', 'David Guetta', 'Diplo', 'Daft Punk', 'Nile Rodgers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1967 Beatles album is about a fictional band, and is often called one of the first concept albums?', NULL,
        'Sgt. Pepper''s Lonely Hearts Club Band', ARRAY['Revolver', 'Abbey Road', 'Rubber Soul', 'Magical Mystery Tour', 'The White Album', 'Let It Be'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1977 soundtrack, packed with Bee Gees hits and tied to a John Travolta film, became one of the best-selling soundtracks ever?', NULL,
        'Saturday Night Fever', ARRAY['Grease', 'Thank God It''s Friday', 'Staying Alive', 'Xanadu', 'Footloose', 'Flashdance'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which duo recorded "The Sound of Silence" and "Mrs. Robinson"?', NULL,
        'Simon & Garfunkel', ARRAY['The Everly Brothers', 'Hall & Oates', 'Seals and Crofts', 'Loggins and Messina', 'Sonny & Cher', 'The Righteous Brothers'], 300, 'As teenagers they first recorded together under the name Tom & Jerry.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which band released the 1977 album "Rumours"?', NULL,
        'Fleetwood Mac', ARRAY['The Eagles', 'Steely Dan', 'Heart', 'The Pretenders', 'Supertramp', 'Boston'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer released "Girls Just Want to Have Fun" and "Time After Time"?', NULL,
        'Cyndi Lauper', ARRAY['Madonna', 'Pat Benatar', 'Debbie Harry', 'Belinda Carlisle', 'Bonnie Tyler', 'Joan Jett'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which Norwegian band released "Take On Me" in 1985?', NULL,
        'a-ha', ARRAY['Roxette', 'Europe', 'Tears for Fears', 'Duran Duran', 'Depeche Mode', 'Erasure'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which R&B group sang "End of the Road" and "I''ll Make Love to You"?', NULL,
        'Boyz II Men', ARRAY['Jodeci', 'New Edition', 'Color Me Badd', 'Bell Biv DeVoe', 'Shai', 'Dru Hill'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which band released "Mr. Brightside"?', NULL,
        'The Killers', ARRAY['The Strokes', 'Arctic Monkeys', 'Franz Ferdinand', 'Kings of Leon', 'Fall Out Boy', 'Interpol'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper won a Pulitzer Prize for his album "DAMN."?', NULL,
        'Kendrick Lamar', ARRAY['J. Cole', 'Kanye West', 'Drake', 'Jay-Z', 'Chance the Rapper', 'Childish Gambino'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'The piano''s original name, "pianoforte," means what in Italian?', NULL,
        'Soft-loud', ARRAY['Many keys', 'Little harp', 'Struck strings', 'Fast-slow', 'High-low', 'Sweet sound'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which singer wrote both "Jolene" and "I Will Always Love You"?', NULL,
        'Dolly Parton', ARRAY['Loretta Lynn', 'Tammy Wynette', 'Patsy Cline', 'Reba McEntire', 'Emmylou Harris', 'Crystal Gayle'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which instrument family does the saxophone belong to, even though it''s made of brass?', NULL,
        'Woodwind', ARRAY['Brass', 'Percussion', 'Strings', 'Keyboard', 'Electronic', 'Bells'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which singer was known as "The Godfather of Soul"?', NULL,
        'James Brown', ARRAY['Ray Charles', 'Otis Redding', 'Sam Cooke', 'Wilson Pickett', 'Marvin Gaye', 'Al Green'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What 1985 charity single was recorded by the supergroup USA for Africa?', NULL,
        '"We Are the World"', ARRAY['"Do They Know It''s Christmas?"', '"Heal the World"', '"Imagine"', '"Man in the Mirror"', '"Hands Across America"', '"That''s What Friends Are For"'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What is the Italian musical term for gradually getting louder?', NULL,
        'Crescendo', ARRAY['Diminuendo', 'Fortissimo', 'Staccato', 'Allegro', 'Legato', 'Pianissimo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer was known as "the Queen of Tejano music"?', NULL,
        'Selena', ARRAY['Celia Cruz', 'Jennifer Lopez', 'Thalía', 'Paulina Rubio', 'Linda Ronstadt', 'Gloria Trevi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'The steel drum (or steelpan) was invented in which country?', NULL,
        'Trinidad and Tobago', ARRAY['Jamaica', 'Cuba', 'Barbados', 'Haiti', 'The Bahamas', 'Puerto Rico'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which rock singer was born Farrokh Bulsara?', NULL,
        'Freddie Mercury', ARRAY['Robert Plant', 'George Michael', 'Rod Stewart', 'Brian May', 'Roger Daltrey', 'Steven Tyler'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which British punk band released "London Calling"?', NULL,
        'The Clash', ARRAY['The Sex Pistols', 'The Ramones', 'The Jam', 'The Damned', 'Buzzcocks', 'The Specials'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Seattle grunge band released "Black Hole Sun"?', NULL,
        'Soundgarden', ARRAY['Alice in Chains', 'Stone Temple Pilots', 'Mudhoney', 'Screaming Trees', 'Temple of the Dog', 'Green River'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which band released "Sweet Child o'' Mine" and "Paradise City"?', NULL,
        'Guns N'' Roses', ARRAY['Mötley Crüe', 'Def Leppard', 'Skid Row', 'Poison', 'Warrant', 'Cinderella'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What is the lowest standard male singing voice?', NULL,
        'Bass', ARRAY['Baritone', 'Tenor', 'Alto', 'Countertenor', 'Contralto', 'Mezzo-soprano'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Italian marking tells a musician to play very softly?', NULL,
        'Pianissimo', ARRAY['Fortissimo', 'Allegro', 'Staccato', 'Legato', 'Sforzando', 'Presto'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which tempo marking means "slow"?', NULL,
        'Adagio', ARRAY['Allegro', 'Presto', 'Vivace', 'Allegretto', 'Prestissimo', 'Moderato'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'How many symphonies did Beethoven complete?', NULL,
        'Nine', ARRAY['Five', 'Six', 'Seven', 'Twelve', 'Fifteen', 'Forty-one'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which jazz singer was called "the First Lady of Song"?', NULL,
        'Ella Fitzgerald', ARRAY['Sarah Vaughan', 'Nina Simone', 'Etta James', 'Dinah Washington', 'Bessie Smith', 'Peggy Lee'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Irish band sang "Linger" and "Zombie"?', NULL,
        'The Cranberries', ARRAY['The Corrs', 'The Undertones', 'Snow Patrol', 'The Pogues', 'Thin Lizzy', 'Westlife'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which singer, nicknamed "the Genius," recorded "Georgia on My Mind"?', NULL,
        'Ray Charles', ARRAY['Otis Redding', 'Sam Cooke', 'Lionel Richie', 'Smokey Robinson', 'Al Green', 'Bill Withers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which British singer released the album "Back to Black"?', NULL,
        'Amy Winehouse', ARRAY['Duffy', 'Lily Allen', 'Joss Stone', 'Florence Welch', 'Paloma Faith', 'Dido'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Jamaican band did Bob Marley lead?', NULL,
        'The Wailers', ARRAY['The Skatalites', 'Toots and the Maytals', 'The Melodians', 'Black Uhuru', 'Third World', 'Steel Pulse'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What does "pizzicato" tell a string player to do?', NULL,
        'Pluck the strings', ARRAY['Bow faster', 'Play softly', 'Slide between notes', 'Mute the strings', 'Tap the wood', 'Play an octave higher'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What is the Italian term for short, detached notes?', NULL,
        'Staccato', ARRAY['Legato', 'Tenuto', 'Fermata', 'Glissando', 'Vibrato', 'Ritardando'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which band was fronted by Sting?', NULL,
        'The Police', ARRAY['The Cure', 'Duran Duran', 'Tears for Fears', 'Simple Minds', 'Spandau Ballet', 'UB40'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Who composed the opera "The Magic Flute"?', NULL,
        'Wolfgang Amadeus Mozart', ARRAY['Ludwig van Beethoven', 'Giuseppe Verdi', 'Richard Wagner', 'Giacomo Puccini', 'Franz Schubert', 'Johann Strauss II'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which trumpeter and singer, nicknamed "Satchmo," recorded "What a Wonderful World"?', NULL,
        'Louis Armstrong', ARRAY['Miles Davis', 'Dizzy Gillespie', 'Duke Ellington', 'Chet Baker', 'Nat King Cole', 'Charlie Parker'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which composer wrote "The Nutcracker" ballet?', NULL,
        'Pyotr Ilyich Tchaikovsky', ARRAY['Igor Stravinsky', 'Sergei Prokofiev', 'Nikolai Rimsky-Korsakov', 'Modest Mussorgsky', 'Alexander Borodin', 'Dmitri Shostakovich'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Which 1971 album by Marvin Gaye is considered a landmark of socially conscious soul music?', NULL,
        'What''s Going On', ARRAY['Let''s Get It On', 'I Want You', 'Here, My Dear', 'Midnight Love', 'Trouble Man', 'In Our Lifetime'], 400, 'Motown''s Berry Gordy didn''t want to release it, fearing a protest album wouldn''t sell.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'Who is often credited as the "Father of the Blues" for his composition "St. Louis Blues"?', NULL,
        'W.C. Handy', ARRAY['Robert Johnson', 'Muddy Waters', 'B.B. King', 'Howlin'' Wolf', 'Son House', 'Lead Belly'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'ORIGINAL', NULL,
        'What Italian term, meaning "robbed time," lets a performer speed up and slow down for expression?', NULL,
        'Rubato', ARRAY['Staccato', 'Legato', 'Vibrato', 'Crescendo', 'Fermata', 'Fortissimo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which bandleader and clarinetist was known as the "King of Swing"?', NULL,
        'Benny Goodman', ARRAY['Glenn Miller', 'Count Basie', 'Artie Shaw', 'Tommy Dorsey', 'Duke Ellington', 'Cab Calloway'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer fronted Eurythmics on hits like "Sweet Dreams (Are Made of This)"?', NULL,
        'Annie Lennox', ARRAY['Debbie Harry', 'Chrissie Hynde', 'Kate Bush', 'Siouxsie Sioux', 'Alison Moyet', 'Sade'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer-songwriter released "Blue" (1971), often named one of the greatest albums ever?', NULL,
        'Joni Mitchell', ARRAY['Carole King', 'Joan Baez', 'Judy Collins', 'Carly Simon', 'Linda Ronstadt', 'Stevie Nicks'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer-songwriter recorded "Fire and Rain" and a hit version of "You''ve Got a Friend"?', NULL,
        'James Taylor', ARRAY['Jackson Browne', 'Cat Stevens', 'Gordon Lightfoot', 'Jim Croce', 'Harry Chapin', 'Carly Simon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which 1965 Beatles album, named after the film it went with, includes "Yesterday"?', NULL,
        'Help!', ARRAY['Rubber Soul', 'A Hard Day''s Night', 'Revolver', 'Beatles for Sale', 'Please Please Me', 'With the Beatles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which singer fronted Culture Club on "Karma Chameleon"?', NULL,
        'Boy George', ARRAY['Simon Le Bon', 'George Michael', 'Adam Ant', 'Morrissey', 'Marilyn', 'Holly Johnson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper fronted Public Enemy on "Fight the Power"?', NULL,
        'Chuck D', ARRAY['Flavor Flav', 'KRS-One', 'Rakim', 'LL Cool J', 'Ice-T', 'Q-Tip'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'Which rapper released "Baby Got Back" in 1992?', NULL,
        'Sir Mix-a-Lot', ARRAY['Coolio', 'Tone Loc', 'Vanilla Ice', 'MC Hammer', 'Young MC', 'Kris Kross'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What Jamaican genre from the late 1970s made Sean Paul and Shaggy stars?', NULL,
        'Dancehall', ARRAY['Ska', 'Rocksteady', 'Dub', 'Calypso', 'Soca', 'Mento'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Billboard magazine''s main weekly chart of the most popular songs in the US?', NULL,
        'The Hot 100', ARRAY['The Top 40', 'The Billboard 200', 'The Fab 50', 'The Power 100', 'The Gold List', 'The Big 75'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'POP_CULTURE_FOLD_1', NULL,
        'The trophy at MTV''s Video Music Awards, first given in 1984, is an astronaut. What was it called for decades?', NULL,
        'The Moonman', ARRAY['The Starman', 'The Rocketeer', 'The Spaceman', 'The Astro', 'The Comet', 'The Orbiter'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which composer wrote "Boléro," which repeats one melody while slowly getting louder?', NULL,
        'Maurice Ravel', ARRAY['Claude Debussy', 'Erik Satie', 'Camille Saint-Saëns', 'Gabriel Fauré', 'Georges Bizet', 'Hector Berlioz'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which opera features the "Habanera" and the "Toreador Song"?', NULL,
        'Carmen', ARRAY['La Traviata', 'Aida', 'Tosca', 'La Bohème', 'Madama Butterfly', 'Rigoletto'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Who composed "Rhapsody in Blue" (1924)?', NULL,
        'George Gershwin', ARRAY['Leonard Bernstein', 'Aaron Copland', 'Cole Porter', 'Irving Berlin', 'Duke Ellington', 'Scott Joplin'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which ragtime composer wrote "The Entertainer" and "Maple Leaf Rag"?', NULL,
        'Scott Joplin', ARRAY['Jelly Roll Morton', 'James Scott', 'Eubie Blake', 'Fats Waller', 'Joseph Lamb', 'James P. Johnson'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which saxophonist, a founder of bebop, was nicknamed "Bird"?', NULL,
        'Charlie Parker', ARRAY['John Coltrane', 'Sonny Rollins', 'Lester Young', 'Coleman Hawkins', 'Stan Getz', 'Cannonball Adderley'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which 1959 Miles Davis album, featuring "So What," is often called the best-selling record of its genre?', NULL,
        'Kind of Blue', ARRAY['A Love Supreme', 'Time Out', 'Blue Train', 'Sketches of Spain', 'Mingus Ah Um', 'Birth of the Cool'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'In an orchestra, which instrument usually plays the note everyone tunes to?', NULL,
        'Oboe', ARRAY['Flute', 'Clarinet', 'Trumpet', 'French horn', 'Bassoon', 'Cello'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'What nationality was the composer Frédéric Chopin?', NULL,
        'Polish', ARRAY['French', 'Austrian', 'Russian', 'Hungarian', 'Czech', 'German'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which composer wrote the "Brandenburg Concertos"?', NULL,
        'Johann Sebastian Bach', ARRAY['George Frideric Handel', 'Antonio Vivaldi', 'Georg Philipp Telemann', 'Joseph Haydn', 'Wolfgang Amadeus Mozart', 'Arcangelo Corelli'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which composer wrote "Messiah," with its famous "Hallelujah" chorus?', NULL,
        'George Frideric Handel', ARRAY['Johann Sebastian Bach', 'Joseph Haydn', 'Wolfgang Amadeus Mozart', 'Henry Purcell', 'Antonio Vivaldi', 'Felix Mendelssohn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which Seattle band released the album "Ten" in 1991?', NULL,
        'Pearl Jam', ARRAY['Soundgarden', 'Alice in Chains', 'Nirvana', 'Stone Temple Pilots', 'Mudhoney', 'Screaming Trees'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which folk singer wrote "This Land Is Your Land"?', NULL,
        'Woody Guthrie', ARRAY['Pete Seeger', 'Bob Dylan', 'Lead Belly', 'Joan Baez', 'Phil Ochs', 'Ramblin'' Jack Elliott'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'MUSIC_BATCH_1', NULL,
        'Which Puccini opera about poor artists in Paris inspired the musical "Rent"?', NULL,
        'La Bohème', ARRAY['Tosca', 'Madama Butterfly', 'Turandot', 'Carmen', 'La Traviata', 'Rigoletto'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which jazz singer, nicknamed "Lady Day," recorded "Strange Fruit"?', NULL,
        'Billie Holiday', ARRAY['Sarah Vaughan', 'Etta James', 'Dinah Washington', 'Bessie Smith', 'Peggy Lee', 'Lena Horne'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer''s ballet "The Rite of Spring" caused an uproar at its 1913 Paris premiere?', NULL,
        'Igor Stravinsky', ARRAY['Erik Satie', 'Sergei Rachmaninoff', 'Dmitri Shostakovich', 'Nikolai Rimsky-Korsakov', 'Alexander Scriabin', 'Gustav Mahler'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote the piano piece "Clair de Lune"?', NULL,
        'Claude Debussy', ARRAY['Erik Satie', 'Gabriel Fauré', 'Franz Liszt', 'Robert Schumann', 'Camille Saint-Saëns', 'Franz Schubert'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which English composer wrote "The Planets" suite?', NULL,
        'Gustav Holst', ARRAY['Ralph Vaughan Williams', 'Benjamin Britten', 'Henry Purcell', 'Frederick Delius', 'Arthur Sullivan', 'William Walton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which English composer wrote "Pomp and Circumstance," heard at many graduations?', NULL,
        'Edward Elgar', ARRAY['Ralph Vaughan Williams', 'Benjamin Britten', 'Henry Purcell', 'Frederick Delius', 'Arthur Sullivan', 'William Walton'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote "Ride of the Valkyries"?', NULL,
        'Richard Wagner', ARRAY['Johannes Brahms', 'Richard Strauss', 'Anton Bruckner', 'Carl Maria von Weber', 'Franz Schubert', 'Robert Schumann'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote the opera "Aida"?', NULL,
        'Giuseppe Verdi', ARRAY['Giacomo Puccini', 'Gaetano Donizetti', 'Vincenzo Bellini', 'Claudio Monteverdi', 'Ruggero Leoncavallo', 'Pietro Mascagni'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which "Waltz King" composed "The Blue Danube"?', NULL,
        'Johann Strauss II', ARRAY['Johann Strauss I', 'Richard Strauss', 'Franz Lehár', 'Joseph Haydn', 'Franz Schubert', 'Émile Waldteufel'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote the opera "The Barber of Seville"?', NULL,
        'Gioachino Rossini', ARRAY['Gaetano Donizetti', 'Vincenzo Bellini', 'Claudio Monteverdi', 'Ruggero Leoncavallo', 'Pietro Mascagni', 'Antonio Salieri'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'In music, what is a coda?', NULL,
        'A closing section', ARRAY['An opening theme', 'A repeated chorus', 'A slow movement', 'A key change', 'A solo', 'A rest'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'What do you call a piece for a solo instrument with an orchestra?', NULL,
        'A concerto', ARRAY['A symphony', 'A sonata', 'An overture', 'A suite', 'A requiem', 'An étude'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which jazz pianist wrote "''Round Midnight"?', NULL,
        'Thelonious Monk', ARRAY['Bud Powell', 'Art Tatum', 'Oscar Peterson', 'Herbie Hancock', 'Bill Evans', 'Dave Brubeck'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Dave Brubeck Quartet hit is famous for its unusual 5/4 time?', NULL,
        '"Take Five"', ARRAY['"Blue Rondo à la Turk"', '"So What"', '"In a Sentimental Mood"', '"Take the ''A'' Train"', '"Moanin''"', '"Watermelon Man"'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which blues guitarist named his guitars "Lucille"?', NULL,
        'B.B. King', ARRAY['Buddy Guy', 'John Lee Hooker', 'Howlin'' Wolf', 'Albert King', 'T-Bone Walker', 'Elmore James'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which bluesman, legend says, sold his soul to the devil at a crossroads?', NULL,
        'Robert Johnson', ARRAY['Lead Belly', 'Son House', 'Charley Patton', 'Blind Lemon Jefferson', 'Skip James', 'Big Bill Broonzy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Chicago blues musician recorded "Hoochie Coochie Man" and "Mannish Boy"?', NULL,
        'Muddy Waters', ARRAY['Buddy Guy', 'John Lee Hooker', 'Howlin'' Wolf', 'Albert King', 'T-Bone Walker', 'Elmore James'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which Motown group sang "My Girl" and "Ain''t Too Proud to Beg"?', NULL,
        'The Temptations', ARRAY['The Four Tops', 'The Miracles', 'The Isley Brothers', 'The O''Jays', 'The Drifters', 'The Spinners'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which country singer had a hit with "Crazy," written by Willie Nelson?', NULL,
        'Patsy Cline', ARRAY['Loretta Lynn', 'Tammy Wynette', 'Kitty Wells', 'Brenda Lee', 'Dottie West', 'Emmylou Harris'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'In which city is the Rock and Roll Hall of Fame?', NULL,
        'Cleveland', ARRAY['Memphis', 'Detroit', 'New York', 'Chicago', 'Los Angeles', 'Seattle'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'MUSIC', 'DEPTH_NOV_2026', NULL,
        'Which composer wrote "Peter and the Wolf"?', NULL,
        'Sergei Prokofiev', ARRAY['Dmitri Shostakovich', 'Sergei Rachmaninoff', 'Nikolai Rimsky-Korsakov', 'Modest Mussorgsky', 'Alexander Borodin', 'Alexander Scriabin'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'MUSIC';
