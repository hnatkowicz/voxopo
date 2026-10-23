-- ============================================================================
-- content/sql/lyrics.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/lyrics.csv, the master copy of the
-- Thinking Pants category LYRICS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LYRICS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'In the Beatles'' "Let It Be," what wise figure comes to the singer "speaking words of wisdom"?', NULL,
        'Mother Mary', ARRAY['Father Time', 'Sister Mary', 'Grandmother', 'A guardian angel', 'A fortune teller', 'An old friend'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which nursery rhyme wonders, "Up above the world so high, like a diamond in the sky"?', NULL,
        'Twinkle, Twinkle, Little Star', ARRAY['Rock-a-bye Baby', 'Hush, Little Baby', 'Row, Row, Row Your Boat', 'Mary Had a Little Lamb', 'Little Bo-Peep', 'The Itsy Bitsy Spider'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Queen song repeats the question "Is this the real life? Is this just fantasy?" in its opening lines?', NULL,
        '"Bohemian Rhapsody"', ARRAY['"We Will Rock You"', '"Somebody to Love"', '"Don''t Stop Me Now"', '"Radio Ga Ga"', '"Killer Queen"', '"Under Pressure"'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Beatles song looks back to a time when "all my troubles seemed so far away"?', NULL,
        '"Yesterday"', ARRAY['"Let It Be"', '"Hey Jude"', '"In My Life"', '"The Long and Winding Road"', '"Something"', '"Here, There and Everywhere"'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Eagles song warns "you can check out any time you like, but you can never leave"?', NULL,
        '"Hotel California"', ARRAY['"Take It Easy"', '"Desperado"', '"Life in the Fast Lane"', '"New Kid in Town"', '"Witchy Woman"', '"Heartache Tonight"'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which ABBA song begins a verse with "Young and sweet, only seventeen"?', NULL,
        'Dancing Queen', ARRAY['Mamma Mia', 'Waterloo', 'Fernando', 'Take a Chance on Me', 'The Winner Takes It All', 'Super Trouper'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Village People hit opens "Young man, there''s no need to feel down"?', NULL,
        'Y.M.C.A.', ARRAY['Macho Man', 'In the Navy', 'Go West', 'Can''t Stop the Music', 'Fire Island', 'San Francisco'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Michael Jackson song warns "Something evil''s lurking in the dark"?', NULL,
        'Thriller', ARRAY['Beat It', 'Billie Jean', 'Bad', 'Smooth Criminal', 'Black or White', 'Man in the Mirror'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'In "Over the Rainbow," troubles melt like what?', NULL,
        'Lemon drops', ARRAY['Snowflakes', 'Ice cream', 'Butter', 'Candle wax', 'Raindrops', 'Chocolate'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Beatles song urges "Take a sad song and make it better"?', NULL,
        'Hey Jude', ARRAY['Let It Be', 'Yesterday', 'Help!', 'Something', 'Come Together', 'Here Comes the Sun'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Spice Girls song says "I''ll tell you what I want, what I really, really want"?', NULL,
        'Wannabe', ARRAY['Spice Up Your Life', 'Say You''ll Be There', '2 Become 1', 'Stop', 'Viva Forever', 'Who Do You Think You Are'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Taylor Swift song says "Players gonna play, play, play"?', NULL,
        'Shake It Off', ARRAY['Blank Space', 'Bad Blood', 'Love Story', 'Style', 'We Are Never Ever Getting Back Together', 'Cruel Summer'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Pharrell Williams song invites you to clap along "like a room without a roof"?', NULL,
        'Happy', ARRAY['Get Lucky', 'Blurred Lines', 'Uptown Funk', 'Can''t Stop the Feeling!', 'Shut Up and Dance', 'Freedom'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which disco anthem opens "At first I was afraid, I was petrified"?', NULL,
        'I Will Survive', ARRAY['I''m Every Woman', 'Never Can Say Goodbye', 'It''s Raining Men', 'Last Dance', 'Hot Stuff', 'I Feel Love'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bob Marley song promises "every little thing gonna be all right"?', NULL,
        'Three Little Birds', ARRAY['One Love', 'No Woman, No Cry', 'Redemption Song', 'Is This Love', 'Buffalo Soldier', 'Jamming'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'In "Jingle Bells," how many horses pull the open sleigh?', NULL,
        'One', ARRAY['Two', 'Three', 'Four', 'Six', 'Eight', 'Twelve'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bon Jovi song cries "Whoa, we''re half way there"?', NULL,
        'Livin'' on a Prayer', ARRAY['You Give Love a Bad Name', 'Wanted Dead or Alive', 'Bad Medicine', 'It''s My Life', 'Always', 'Runaway'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which "Frozen" song ends "The cold never bothered me anyway"?', NULL,
        'Let It Go', ARRAY['Do You Want to Build a Snowman?', 'For the First Time in Forever', 'Love Is an Open Door', 'Into the Unknown', 'Show Yourself', 'How Far I''ll Go'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'In "The Lion King," what does "Hakuna Matata" mean?', NULL,
        'No worries', ARRAY['Be happy', 'Live free', 'Stay strong', 'Good friends', 'Long live the king', 'Welcome home'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Eminem song begins "His palms are sweaty, knees weak, arms are heavy"?', NULL,
        'Lose Yourself', ARRAY['The Real Slim Shady', 'Stan', 'Without Me', 'Mockingbird', 'Not Afraid', 'Cleanin'' Out My Closet'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Journey song, a karaoke staple, urges listeners to "hold on to that feelin''" in its final chorus?', NULL,
        '"Don''t Stop Believin''"', ARRAY['"Any Way You Want It"', '"Open Arms"', '"Faithfully"', '"Wheel in the Sky"', '"Separate Ways"', '"Lights"'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'According to the lyrics of Billy Joel''s "Piano Man," what specific object in the bar "smells like a beer"?', NULL,
        'The microphone', ARRAY['The jukebox', 'The piano', 'The bartender''s rag', 'The carpet', 'The barstool', 'The ashtray'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Simon & Garfunkel song begins "Hello darkness, my old friend"?', NULL,
        '"The Sound of Silence"', ARRAY['"Mrs. Robinson"', '"Bridge over Troubled Water"', '"Scarborough Fair"', '"The Boxer"', '"America"', '"Cecilia"'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'According to Taylor Swift''s hit song "Anti-Hero," who is explicitly named as "the problem"?', NULL,
        'Me (the singer herself)', ARRAY['You', 'Him', 'Her', 'We', 'They', 'It'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Bob Dylan song asks "How many roads must a man walk down, before you call him a man?"', NULL,
        '"Blowin'' in the Wind"', ARRAY['"The Times They Are a-Changin''"', '"Like a Rolling Stone"', '"Mr. Tambourine Man"', '"Knockin'' on Heaven''s Door"', '"All Along the Watchtower"', '"Masters of War"'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bryan Adams song begins "I got my first real six-string"?', NULL,
        'Summer of ''69', ARRAY['Run to You', 'Heaven', 'Cuts Like a Knife', 'Somebody', '(Everything I Do) I Do It for You', 'Kids Wanna Rock'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Beatles song begins "Picture yourself in a boat on a river"?', NULL,
        'Lucy in the Sky with Diamonds', ARRAY['Strawberry Fields Forever', 'Yellow Submarine', 'I Am the Walrus', 'Across the Universe', 'Penny Lane', 'Octopus''s Garden'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Elvis Presley hit complains "You ain''t never caught a rabbit"?', NULL,
        'Hound Dog', ARRAY['Jailhouse Rock', 'Blue Suede Shoes', 'All Shook Up', 'Heartbreak Hotel', 'Don''t Be Cruel', 'Love Me Tender'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Adele song laments "We could have had it all"?', NULL,
        'Rolling in the Deep', ARRAY['Someone Like You', 'Hello', 'Set Fire to the Rain', 'Skyfall', 'Easy on Me', 'Chasing Pavements'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Toto song admits "It''s gonna take a lot to drag me away from you"?', NULL,
        'Africa', ARRAY['Rosanna', 'Hold the Line', 'I''ll Be Over You', '99', 'Pamela', 'Georgy Porgy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Johnny Cash song begins "I keep a close watch on this heart of mine"?', NULL,
        'I Walk the Line', ARRAY['Ring of Fire', 'Folsom Prison Blues', 'A Boy Named Sue', 'Man in Black', 'Jackson', 'Get Rhythm'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Dolly Parton song opens "Tumble outta bed and I stumble to the kitchen"?', NULL,
        '9 to 5', ARRAY['Jolene', 'Coat of Many Colors', 'Islands in the Stream', 'Here You Come Again', 'Two Doors Down', 'I Will Always Love You'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Nirvana song demands "Here we are now, entertain us"?', NULL,
        'Smells Like Teen Spirit', ARRAY['Come as You Are', 'Lithium', 'In Bloom', 'Heart-Shaped Box', 'All Apologies', 'About a Girl'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Oasis song begins "Today is gonna be the day"?', NULL,
        'Wonderwall', ARRAY['Don''t Look Back in Anger', 'Champagne Supernova', 'Live Forever', 'Supersonic', 'Stop Crying Your Heart Out', 'Some Might Say'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Survivor song, from "Rocky III," begins "Risin'' up, back on the street"?', NULL,
        'Eye of the Tiger', ARRAY['Burning Heart', 'The Search Is Over', 'I Can''t Hold Back', 'High on You', 'Hearts on Fire', 'Gonna Fly Now'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Aretha Franklin hit begins "What you want, baby, I got it"?', NULL,
        'Respect', ARRAY['Think', 'Chain of Fools', '(You Make Me Feel Like) A Natural Woman', 'I Say a Little Prayer', 'Day Dreaming', 'Rock Steady'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Lady Gaga song chants "Rah-rah-ah-ah-ah, roma-roma-ma"?', NULL,
        'Bad Romance', ARRAY['Poker Face', 'Just Dance', 'Alejandro', 'Paparazzi', 'Born This Way', 'Telephone'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Kenny Rogers song advises "You got to know when to hold ''em"?', NULL,
        'The Gambler', ARRAY['Lucille', 'Islands in the Stream', 'Coward of the County', 'Lady', 'Ruby, Don''t Take Your Love to Town', 'Through the Years'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which John Denver song begins "Almost heaven, West Virginia"?', NULL,
        'Take Me Home, Country Roads', ARRAY['Rocky Mountain High', 'Annie''s Song', 'Leaving on a Jet Plane', 'Sunshine on My Shoulders', 'Thank God I''m a Country Boy', 'Calypso'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Louis Armstrong song begins "I see trees of green"?', NULL,
        'What a Wonderful World', ARRAY['Hello, Dolly!', 'La Vie en Rose', 'Mack the Knife', 'When the Saints Go Marching In', 'Moon River', 'Blueberry Hill'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Queen song declares "Jaws was never my scene, and I don''t like Star Wars"?', NULL,
        '"Bicycle Race"', ARRAY['"Fat Bottomed Girls"', '"I''m in Love with My Car"', '"Don''t Stop Me Now"', '"Crazy Little Thing Called Love"', '"Good Old-Fashioned Lover Boy"', '"Play the Game"'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'In "American Pie," what was the young Don McLean delivering when "February made me shiver"?', NULL,
        'Newspapers', ARRAY['Milk', 'Groceries', 'Mail', 'Pizzas', 'Flowers', 'Telegrams'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'In Suzanne Vega''s "Tom''s Diner," what is the singer waiting at the counter for the man to pour?', NULL,
        'Coffee', ARRAY['Milk', 'Tea', 'Orange juice', 'Soda', 'Water', 'Lemonade'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which classic 1968 Steppenwolf rock track is widely credited with the very first use of the phrase "heavy metal" in song lyrics?', NULL,
        '"Born to Be Wild"', ARRAY['"Magic Carpet Ride"', '"Rock Me"', '"Monster"', '"The Pusher"', '"Hey Lawdy Mama"', '"Move Over"'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Queen song, co-written with David Bowie, repeats the line "This is our last dance" alongside the title phrase?', NULL,
        '"Under Pressure"', ARRAY['"Bohemian Rhapsody"', '"Radio Ga Ga"', '"Somebody to Love"', '"Killer Queen"', '"Don''t Stop Me Now"', '"We Are the Champions"'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Prince song opens with the sermon "Dearly beloved, we are gathered here today"?', NULL,
        'Let''s Go Crazy', ARRAY['Purple Rain', 'When Doves Cry', '1999', 'Kiss', 'Little Red Corvette', 'Raspberry Beret'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Elton John song predicts "I''m gonna be high as a kite by then"?', NULL,
        'Rocket Man', ARRAY['Tiny Dancer', 'Your Song', 'Bennie and the Jets', 'Daniel', 'Crocodile Rock', 'Goodbye Yellow Brick Road'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Cyndi Lauper hit complains "Some boys take a beautiful girl and hide her away"?', NULL,
        'Girls Just Want to Have Fun', ARRAY['Time After Time', 'True Colors', 'She Bop', 'All Through the Night', 'Money Changes Everything', 'Change of Heart'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Beatles song describes someone who "picks up the rice in the church where a wedding has been"?', NULL,
        'Eleanor Rigby', ARRAY['Penny Lane', 'Lady Madonna', 'Michelle', 'Julia', 'Dear Prudence', 'Paperback Writer'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bruce Springsteen song declares "Tramps like us, baby"?', NULL,
        'Born to Run', ARRAY['Thunder Road', 'Born in the U.S.A.', 'Dancing in the Dark', 'Glory Days', 'The River', 'Badlands'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Simon & Garfunkel song tells its subject "Jesus loves you more than you will know"?', NULL,
        'Mrs. Robinson', ARRAY['The Boxer', 'Cecilia', 'America', 'Scarborough Fair', 'Homeward Bound', 'Bridge over Troubled Water'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Leonard Cohen song begins "I''ve heard there was a secret chord"?', NULL,
        'Hallelujah', ARRAY['Suzanne', 'So Long, Marianne', 'Bird on the Wire', 'Famous Blue Raincoat', 'Everybody Knows', 'Dance Me to the End of Love'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Radiohead song confesses "I wish I was special"?', NULL,
        'Creep', ARRAY['Karma Police', 'High and Dry', 'No Surprises', 'Fake Plastic Trees', 'Paranoid Android', 'Just'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which OutKast song tells you to "Shake it like a Polaroid picture"?', NULL,
        'Hey Ya!', ARRAY['Ms. Jackson', 'Roses', 'The Way You Move', 'So Fresh, So Clean', 'B.O.B.', 'Rosa Parks'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Michael Jackson song keeps asking "Annie, are you OK?"', NULL,
        'Smooth Criminal', ARRAY['Dirty Diana', 'Bad', 'Beat It', 'Billie Jean', 'Black or White', 'The Way You Make Me Feel'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Rolling Stones song begins "Please allow me to introduce myself"?', NULL,
        'Sympathy for the Devil', ARRAY['Paint It Black', 'Gimme Shelter', 'Jumpin'' Jack Flash', 'Brown Sugar', 'Start Me Up', 'Angie'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Lynyrd Skynyrd song begins "Big wheels keep on turnin''"?', NULL,
        'Sweet Home Alabama', ARRAY['Free Bird', 'Simple Man', 'Gimme Three Steps', 'Tuesday''s Gone', 'That Smell', 'Saturday Night Special'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bob Dylan song asks "How does it feel to be on your own"?', NULL,
        'Like a Rolling Stone', ARRAY['Mr. Tambourine Man', 'Positively 4th Street', 'Subterranean Homesick Blues', 'It Ain''t Me Babe', 'Tangled Up in Blue', 'Just Like a Woman'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which 1982 hit chants "Too-ra-loo-ra, too-ra-loo-rye-ay"?', NULL,
        'Come On Eileen', ARRAY['Tainted Love', 'Don''t You Want Me', 'Karma Chameleon', 'The Safety Dance', 'Mickey', 'Our House'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Bee Gees song begins "Well, you can tell by the way I use my walk"?', NULL,
        'Stayin'' Alive', ARRAY['Night Fever', 'How Deep Is Your Love', 'You Should Be Dancing', 'Jive Talkin''', 'More Than a Woman', 'Tragedy'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Fleetwood Mac song, from the "Rumours" album, repeats the line "players only love you when they''re playing"?', NULL,
        '"Dreams"', ARRAY['"Go Your Own Way"', '"The Chain"', '"Don''t Stop"', '"You Make Loving Fun"', '"Songbird"', '"Second Hand News"'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which R.E.M. song name-checks Leonard Bernstein, Leonid Brezhnev and Lenny Bruce?', NULL,
        '"It''s the End of the World as We Know It (And I Feel Fine)"', ARRAY['"Losing My Religion"', '"Man on the Moon"', '"Stand"', '"The One I Love"', '"Shiny Happy People"', '"Everybody Hurts"'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Billy Joel song lists a rapid sequence of historical names and events from 1949 to 1989 in its chorus, titled after its own refrain?', NULL,
        '"We Didn''t Start the Fire"', ARRAY['"Piano Man"', '"Uptown Girl"', '"Movin'' Out (Anthony''s Song)"', '"Only the Good Die Young"', '"My Life"', '"Allentown"'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Don McLean song opens with "Starry, starry night, paint your palette blue and grey"?', NULL,
        '"Vincent"', ARRAY['"American Pie"', '"Castles in the Air"', '"And I Love You So"', '"Crying"', '"Wonderful Baby"', '"Dreidel"'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Beatles song features "a barber showing photographs of every head he''s had the pleasure to know"?', NULL,
        'Penny Lane', ARRAY['Strawberry Fields Forever', 'Lady Madonna', 'Getting Better', 'Good Day Sunshine', 'A Day in the Life', 'Paperback Writer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'In Queen''s operatic 1975 epic, who is asked "will you do the fandango?"', NULL,
        'Scaramouche', ARRAY['Galileo', 'Figaro', 'Beelzebub', 'Bismillah', 'Mama', 'Pagliacci'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Joni Mitchell song complains "They paved paradise and put up a parking lot"?', NULL,
        'Big Yellow Taxi', ARRAY['Both Sides Now', 'Woodstock', 'A Case of You', 'Help Me', 'River', 'Free Man in Paris'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Kinks song watches as "Terry meets Julie" every Friday night?', NULL,
        'Waterloo Sunset', ARRAY['Lola', 'You Really Got Me', 'Sunny Afternoon', 'All Day and All of the Night', 'Days', 'Dedicated Follower of Fashion'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Gilbert and Sullivan operetta features "I am the very model of a modern Major-General"?', NULL,
        'The Pirates of Penzance', ARRAY['The Mikado', 'H.M.S. Pinafore', 'The Gondoliers', 'Iolanthe', 'Patience', 'The Yeomen of the Guard'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Meat Loaf song keeps promising "But I won''t do that"?', NULL,
        'I''d Do Anything for Love', ARRAY['Paradise by the Dashboard Light', 'Bat Out of Hell', 'Two Out of Three Ain''t Bad', 'Dead Ringer for Love', 'You Took the Words Right Out of My Mouth', 'Rock and Roll Dreams Come Through'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Carly Simon song begins "You walked into the party like you were walking onto a yacht"?', NULL,
        'You''re So Vain', ARRAY['Anticipation', 'Nobody Does It Better', 'Coming Around Again', 'That''s the Way I''ve Always Heard It Should Be', 'Let the River Run', 'Jesse'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Beatles song counts "4,000 holes in Blackburn, Lancashire"?', NULL,
        'A Day in the Life', ARRAY['Strawberry Fields Forever', 'Being for the Benefit of Mr. Kite!', 'Good Morning Good Morning', 'She''s Leaving Home', 'Getting Better', 'I Am the Walrus'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which song, made famous by Nina Simone and later Michael Bublé, begins "Birds flying high, you know how I feel"?', NULL,
        'Feeling Good', ARRAY['Sinnerman', 'I Put a Spell on You', 'My Baby Just Cares for Me', 'Wild Is the Wind', 'Ain''t Got No, I Got Life', 'Here Comes the Sun'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which 1985 Dire Straits hit opens with Sting singing "I want my MTV"?', NULL,
        'Money for Nothing', ARRAY['Sultans of Swing', 'Walk of Life', 'Brothers in Arms', 'Romeo and Juliet', 'So Far Away', 'Private Investigations'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Gordon Lightfoot song says "The lake, it is said, never gives up her dead"?', NULL,
        'The Wreck of the Edmund Fitzgerald', ARRAY['If You Could Read My Mind', 'Sundown', 'Carefree Highway', 'Early Morning Rain', 'Rainy Day People', 'Canadian Railroad Trilogy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Elton John song originally bid "Goodbye, Norma Jean"?', NULL,
        'Candle in the Wind', ARRAY['Tiny Dancer', 'Your Song', 'Daniel', 'Sacrifice', 'Don''t Let the Sun Go Down on Me', 'Nikita'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'LYRICS_BATCH_1', NULL,
        'Which Coldplay song begins its chorus "Nobody said it was easy"?', NULL,
        'The Scientist', ARRAY['Fix You', 'Yellow', 'Clocks', 'Viva la Vida', 'Speed of Sound', 'In My Place'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Harry Chapin song ends with a father realizing "He''d grown up just like me"?', NULL,
        'Cat''s in the Cradle', ARRAY['Taxi', 'W*O*L*D', 'Circle', 'Sniper', 'Sequel', 'Better Place to Be'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Simon & Garfunkel song begins "I am just a poor boy"?', NULL,
        'The Boxer', ARRAY['Mrs. Robinson', 'Cecilia', 'America', 'Homeward Bound', 'Scarborough Fair', 'Bridge over Troubled Water'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LYRICS', 'ORIGINAL', NULL,
        'Which Talking Heads song asks "Well, how did I get here?"', NULL,
        'Once in a Lifetime', ARRAY['Burning Down the House', 'Psycho Killer', 'Road to Nowhere', 'And She Was', 'Take Me to the River', 'Life During Wartime'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LYRICS';
