-- ============================================================================
-- content/sql/world_wars.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/world_wars.csv, the master copy of the
-- Thinking Pants category WORLD_WARS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_WARS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In what year did World War I end?', NULL,
        '1918', ARRAY['1915', '1916', '1917', '1920', '1921', '1922'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In 1914, British and German soldiers along parts of the Western Front stopped fighting, swapped gifts and sang carols in an unofficial truce named after which holiday?', NULL,
        'Christmas', ARRAY['Easter', 'New Year''s Day', 'Thanksgiving', 'All Saints'' Day', 'Saint Nicholas Day', 'Epiphany'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German fighter ace was nicknamed the Red Baron?', NULL,
        'Manfred von Richthofen', ARRAY['Ernst Udet', 'Hermann Göring', 'Oswald Boelcke', 'Max Immelmann', 'Werner Voss', 'Rudolf Berthold'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which armored fighting vehicle, given a code name to keep it secret, first went into battle with the British army in 1916?', NULL,
        'The tank', ARRAY['The armored car', 'The armored train', 'The half-track', 'The jeep', 'The self-propelled gun', 'The amphibious truck'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What were German submarines commonly called in World War I?', NULL,
        'U-boats', ARRAY['E-boats', 'Q-ships', 'Dreadnoughts', 'Torpedo boats', 'Ironclads', 'Frigates'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which U.S. president led the country into World War I?', NULL,
        'Woodrow Wilson', ARRAY['Theodore Roosevelt', 'William Howard Taft', 'Warren G. Harding', 'Calvin Coolidge', 'Herbert Hoover', 'Franklin D. Roosevelt'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which flower, which bloomed on the battlefields of Flanders, became the symbol of remembrance for those who died in World War I?', NULL,
        'The poppy', ARRAY['The rose', 'The tulip', 'The carnation', 'The daisy', 'The lily', 'The sunflower'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Who was Germany''s emperor, or Kaiser, during World War I?', NULL,
        'Wilhelm II', ARRAY['Wilhelm I', 'Frederick III', 'Frederick William IV', 'Franz Joseph I', 'Ludwig III', 'Karl I'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In which year did Britain and France declare war on Germany?', NULL,
        '1939', ARRAY['1935', '1936', '1937', '1938', '1940', '1941'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which U.S. naval base in Hawaii did Japan attack by surprise on December 7, 1941?', NULL,
        'Pearl Harbor', ARRAY['San Diego', 'Guam', 'Wake Island', 'Subic Bay', 'Norfolk', 'Dutch Harbor'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'On D-Day, June 6, 1944, Allied troops stormed the beaches of which region of France?', NULL,
        'Normandy', ARRAY['Brittany', 'Provence', 'Picardy', 'Flanders', 'Gascony', 'Pas-de-Calais'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which U.S. president led America into World War II but died in office weeks before Germany surrendered?', NULL,
        'Franklin D. Roosevelt', ARRAY['Harry S. Truman', 'Herbert Hoover', 'Dwight D. Eisenhower', 'Calvin Coolidge', 'Woodrow Wilson', 'Theodore Roosevelt'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Fascist dictator led Italy into World War II as Germany''s ally?', NULL,
        'Benito Mussolini', ARRAY['Francisco Franco', 'Miklós Horthy', 'Ion Antonescu', 'António Salazar', 'Galeazzo Ciano', 'Pietro Badoglio'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Who led the Soviet Union throughout World War II?', NULL,
        'Joseph Stalin', ARRAY['Vladimir Lenin', 'Leon Trotsky', 'Nikita Khrushchev', 'Vyacheslav Molotov', 'Georgy Zhukov', 'Lavrentiy Beria'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What name is given to the 1940 air campaign in which the RAF fought off the German air force over southern England?', NULL,
        'The Battle of Britain', ARRAY['The Battle of the Atlantic', 'The Battle of France', 'The Battle of Crete', 'The Battle of Berlin', 'The Battle of the Ruhr', 'The Battle of Narvik'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What name was given to Japanese pilots who deliberately crashed their planes into Allied ships?', NULL,
        'Kamikaze', ARRAY['Samurai', 'Ronin', 'Banzai', 'Bushido', 'Shinobi', 'Shogun'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which American general was Supreme Allied Commander for D-Day and later became U.S. president?', NULL,
        'Dwight D. Eisenhower', ARRAY['George S. Patton', 'Douglas MacArthur', 'Omar Bradley', 'George C. Marshall', 'Mark Clark', 'Chester Nimitz'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In which year did World War II end?', NULL,
        '1945', ARRAY['1942', '1943', '1944', '1946', '1947', '1948'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What nickname, from a wartime song, came to stand for American women working in defense factories?', NULL,
        'Rosie the Riveter', ARRAY['Molly Pitcher', 'Betty Crocker', 'Lady Liberty', 'Rosie O''Grady', 'Molly Brown', 'Annie Oakley'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What does the "E" stand for in VE Day, celebrated on May 8?', NULL,
        'Europe', ARRAY['England', 'Empire', 'East', 'End', 'Emperor', 'Earth'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Who led Nazi Germany during World War II?', NULL,
        'Adolf Hitler', ARRAY['Heinrich Himmler', 'Hermann Goring', 'Joseph Goebbels', 'Paul von Hindenburg', 'Erwin Rommel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British prime minister led his country through most of World War II?', NULL,
        'Winston Churchill', ARRAY['Neville Chamberlain', 'Clement Attlee', 'Anthony Eden', 'Lloyd George', 'Stanley Baldwin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which two Japanese cities were destroyed by atomic bombs in August 1945?', NULL,
        'Hiroshima and Nagasaki', ARRAY['Tokyo and Osaka', 'Kyoto and Kobe', 'Hiroshima and Tokyo', 'Nagasaki and Yokohama', 'Osaka and Kyoto'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Much of World War I on the Western Front was fought from long ditches dug into the ground. What were they called?', NULL,
        'Trenches', ARRAY['Bunkers', 'Foxholes', 'Tunnels', 'Moats', 'Barricades'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which teenager kept a famous diary while hiding from the Nazis in a secret annex in Amsterdam?', NULL,
        'Anne Frank', ARRAY['Corrie ten Boom', 'Sophie Scholl', 'Irena Sendler', 'Hannah Senesh', 'Miep Gies'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name of the secret U.S. project that built the atomic bomb?', NULL,
        'The Manhattan Project', ARRAY['Operation Overlord', 'The Brooklyn Project', 'Project Trinity', 'Operation Paperclip', 'The Apollo Project'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In World War II, the Allies fought Germany, Italy and Japan, known together as the what?', NULL,
        'The Axis', ARRAY['The Central Powers', 'The Coalition', 'The Triple Alliance', 'The Warsaw Pact', 'The Entente'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Germany''s invasion of which country on September 1, 1939, started World War II in Europe?', NULL,
        'Poland', ARRAY['France', 'Czechoslovakia', 'Austria', 'Belgium', 'Norway'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What name was given to the German bombing of London and other British cities in 1940 and 1941?', NULL,
        'The Blitz', ARRAY['The Barrage', 'The Storm', 'The Siege', 'The Onslaught', 'The Raid'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was World War I called at the time, before anyone knew there would be a second?', NULL,
        'The Great War', ARRAY['The World War', 'The War of Nations', 'The Last War', 'The European War', 'The Long War'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which young Bosnian Serb shot and killed Archduke Franz Ferdinand in 1914?', NULL,
        'Gavrilo Princip', ARRAY['Leon Czolgosz', 'Luigi Lucheni', 'Raoul Villain', 'Charles Guiteau', 'Gaetano Bresci', 'Dmitry Bogrov'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Austria-Hungary''s declaration of war on which country, in July 1914, began World War I?', NULL,
        'Serbia', ARRAY['Russia', 'France', 'Bulgaria', 'Montenegro', 'Romania', 'Italy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Germany''s invasion of which neutral country in August 1914 brought Britain into the war?', NULL,
        'Belgium', ARRAY['The Netherlands', 'Switzerland', 'Denmark', 'Norway', 'Sweden', 'Spain'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British ocean liner was sunk by a German submarine off the coast of Ireland in May 1915, helping turn American opinion against Germany?', NULL,
        'The Lusitania', ARRAY['The Titanic', 'The Mauretania', 'The Olympic', 'The Aquitania', 'The Queen Mary', 'The Campania'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which huge British and French offensive, beginning on July 1, 1916, was named after a river in northern France?', NULL,
        'The Battle of the Somme', ARRAY['The Battle of Verdun', 'The Battle of Passchendaele', 'The Battle of the Aisne', 'The Battle of Arras', 'The Battle of Cambrai', 'The Battle of Loos'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In which year did the United States enter World War I?', NULL,
        '1917', ARRAY['1913', '1914', '1915', '1916', '1918', '1919'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which international organization, set up after World War I to keep the peace, was the forerunner of the United Nations?', NULL,
        'The League of Nations', ARRAY['The Concert of Europe', 'The Triple Entente', 'The Commonwealth of Nations', 'The International Red Cross', 'The Council of Europe', 'The Permanent Court of Arbitration'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which giant German airships, named after the count who developed them, carried out bombing raids on Britain?', NULL,
        'Zeppelins', ARRAY['Blimps', 'Fokkers', 'Gothas', 'Hindenburgs', 'Taubes', 'Messerschmitts'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'The U.S. Marine Corps'' famous "code talkers" in the Pacific sent messages in which Native American language?', NULL,
        'Navajo', ARRAY['Cherokee', 'Apache', 'Shawnee', 'Mohawk', 'Iroquois', 'Blackfoot'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which American general vowed "I shall return" when he was ordered to leave the Philippines in 1942?', NULL,
        'Douglas MacArthur', ARRAY['Jonathan Wainwright', 'Joseph Stilwell', 'Chester Nimitz', 'Walter Krueger', 'George S. Patton', 'Omar Bradley'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which elliptical-winged fighter, designed by R.J. Mitchell, became the RAF''s most famous plane of the war?', NULL,
        'Supermarine Spitfire', ARRAY['Hawker Hurricane', 'Gloster Gladiator', 'Hawker Typhoon', 'Bristol Beaufighter', 'de Havilland Mosquito', 'Boulton Paul Defiant'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German word, meaning "lightning war," names fast attacks led by tanks and dive bombers?', NULL,
        'Blitzkrieg', ARRAY['Lebensraum', 'Anschluss', 'Wehrmacht', 'Luftwaffe', 'Kampfgruppe', 'Panzerfaust'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for Germany''s June 1941 invasion of the Soviet Union?', NULL,
        'Operation Barbarossa', ARRAY['Operation Sea Lion', 'Operation Citadel', 'Operation Torch', 'Operation Market Garden', 'Operation Bagration', 'Case Yellow'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What popular name was given to Germany''s surprise offensive through the Ardennes forest in December 1944?', NULL,
        'The Battle of the Bulge', ARRAY['The Battle of the Hürtgen Forest', 'The Battle of Arnhem', 'The Battle of Anzio', 'The Battle of the Falaise Pocket', 'The Battle of Monte Cassino', 'The Battle of Aachen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German field marshal was nicknamed "the Desert Fox"?', NULL,
        'Erwin Rommel', ARRAY['Heinz Guderian', 'Erich von Manstein', 'Gerd von Rundstedt', 'Walter Model', 'Albert Kesselring', 'Friedrich Paulus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Joe Rosenthal''s famous photo shows U.S. Marines raising the flag on Mount Suribachi, on which island?', NULL,
        'Iwo Jima', ARRAY['Okinawa', 'Guadalcanal', 'Saipan', 'Tarawa', 'Peleliu', 'Guam'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Japanese emperor announced his country''s surrender in a radio broadcast in August of the war''s final year?', NULL,
        'Hirohito', ARRAY['Akihito', 'Meiji', 'Taishō', 'Naruhito', 'Kōmei', 'Jimmu'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which French general led the Free French from London after France fell in 1940?', NULL,
        'Charles de Gaulle', ARRAY['Philippe Pétain', 'Maxime Weygand', 'Maurice Gamelin', 'François Darlan', 'Jean de Lattre de Tassigny', 'Ferdinand Foch'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British prime minister came home from Munich in 1938 promising "peace for our time"?', NULL,
        'Neville Chamberlain', ARRAY['Stanley Baldwin', 'Ramsay MacDonald', 'Anthony Eden', 'Lord Halifax', 'Clement Attlee', 'Winston Churchill'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Under which 1941 U.S. program were weapons and supplies sent to Britain, the Soviet Union and other Allies?', NULL,
        'Lend-Lease', ARRAY['The Marshall Plan', 'The New Deal', 'Cash and Carry', 'Destroyers for Bases', 'The Truman Doctrine', 'The Good Neighbor Policy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1919 treaty formally ended World War I with Germany?', NULL,
        'The Treaty of Versailles', ARRAY['The Treaty of Paris', 'The Treaty of Ghent', 'The Treaty of Brest-Litovsk', 'The Treaty of Trianon', 'The Treaty of London'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'From which French port''s beaches were more than 300,000 Allied troops rescued in 1940, many by little civilian boats?', NULL,
        'Dunkirk', ARRAY['Calais', 'Le Havre', 'Cherbourg', 'Brest', 'Marseille'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'At which June 1942 battle did the US Navy sink four Japanese aircraft carriers, turning the Pacific war?', NULL,
        'Midway', ARRAY['Coral Sea', 'Guadalcanal', 'Leyte Gulf', 'Iwo Jima', 'Okinawa'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which city on the Volga saw a German army surrounded and forced to surrender in early 1943?', NULL,
        'Stalingrad', ARRAY['Moscow', 'Leningrad', 'Kiev', 'Kursk', 'Sevastopol'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the overall code name for the Allied invasion of Normandy?', NULL,
        'Operation Overlord', ARRAY['Operation Torch', 'Operation Market Garden', 'Operation Neptune', 'Operation Barbarossa', 'Operation Husky'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which mathematician, a father of computer science, helped break German codes at Bletchley Park?', NULL,
        'Alan Turing', ARRAY['John von Neumann', 'Charles Babbage', 'Ada Lovelace', 'Claude Shannon', 'Tommy Flowers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Black American pilots, trained in Alabama, earned fame escorting bombers over Europe?', NULL,
        'The Tuskegee Airmen', ARRAY['The Flying Tigers', 'The Doolittle Raiders', 'The Black Sheep Squadron', 'The Harlem Hellfighters', 'The Buffalo Soldiers'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the name of the B-29 bomber that dropped the atomic bomb on Hiroshima?', NULL,
        'Enola Gay', ARRAY['Bockscar', 'Memphis Belle', 'Spirit of St. Louis', 'Flying Fortress', 'Little Boy'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which line of French forts along the German border was simply bypassed in 1940?', NULL,
        'The Maginot Line', ARRAY['The Siegfried Line', 'The Hindenburg Line', 'The Atlantic Wall', 'The Gothic Line', 'The Mannerheim Line'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1916 battle around a French fortress city was the longest of World War I?', NULL,
        'Verdun', ARRAY['Ypres', 'Passchendaele', 'Amiens', 'Cambrai', 'Arras'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which secret German message, decoded by British intelligence, offered Mexico an alliance against the United States?', NULL,
        'The Zimmermann Telegram', ARRAY['The Ems Dispatch', 'The Kruger Telegram', 'The Willy-Nicky Telegrams', 'The Balfour Declaration', 'The Blank Cheque', 'The Lansdowne Letter'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Australian and New Zealand troops landed in April 1915 on which peninsula, a landing remembered every year on Anzac Day?', NULL,
        'Gallipoli', ARRAY['Crimea', 'Sinai', 'The Peloponnese', 'Jutland', 'Istria', 'Kola'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'T. E. Lawrence, "Lawrence of Arabia," helped lead an Arab revolt against which empire?', NULL,
        'The Ottoman Empire', ARRAY['The Persian Empire', 'The Russian Empire', 'The Austro-Hungarian Empire', 'The Italian Empire', 'The Mughal Empire', 'The Byzantine Empire'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1914 battle stopped the German advance on Paris, with French reinforcements famously rushed to the front in Paris taxis?', NULL,
        'The First Battle of the Marne', ARRAY['The Battle of Mons', 'The Battle of the Frontiers', 'The First Battle of Ypres', 'The Battle of the Aisne', 'The Battle of Le Cateau', 'The Battle of Verdun'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British war minister''s stern face and pointing finger appeared on the famous 1914 "Wants You" recruiting poster?', NULL,
        'Lord Kitchener', ARRAY['Douglas Haig', 'John French', 'David Lloyd George', 'H. H. Asquith', 'Winston Churchill', 'Edward Grey'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British soldier-poet wrote "Dulce et Decorum Est" and was killed just a week before the fighting ended?', NULL,
        'Wilfred Owen', ARRAY['Siegfried Sassoon', 'Rupert Brooke', 'Laurence Binyon', 'Isaac Rosenberg', 'Robert Graves', 'Edward Thomas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'The U.S. president''s wartime plan for peace, calling for open diplomacy, freedom of the seas and lower trade barriers, is known by what name?', NULL,
        'The Fourteen Points', ARRAY['The Atlantic Charter', 'The Four Freedoms', 'The New Freedom', 'The Open Door Policy', 'The Square Deal', 'The Monroe Doctrine'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was Germany''s pre-war plan to defeat France quickly by sweeping around its fortified border, before turning to fight Russia?', NULL,
        'The Schlieffen Plan', ARRAY['Plan XVII', 'Operation Michael', 'The Tirpitz Plan', 'The Bismarck Plan', 'The Hindenburg Programme', 'The Ludendorff Plan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for the November 1942 Allied landings in French North Africa?', NULL,
        'Operation Torch', ARRAY['Operation Husky', 'Operation Avalanche', 'Operation Dragoon', 'Operation Shingle', 'Operation Jubilee', 'Operation Compass'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Operation Husky, in July 1943, was the Allied invasion of which island?', NULL,
        'Sicily', ARRAY['Sardinia', 'Corsica', 'Crete', 'Malta', 'Cyprus', 'Rhodes'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which September 1944 airborne operation tried to seize a chain of Dutch bridges, ending in defeat at Arnhem?', NULL,
        'Operation Market Garden', ARRAY['Operation Varsity', 'Operation Cobra', 'Operation Goodwood', 'Operation Plunder', 'Operation Veritable', 'Operation Infatuate'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1942 battle in Egypt, won by Montgomery''s Eighth Army, turned the tide of the desert war?', NULL,
        'El Alamein', ARRAY['Tobruk', 'Kasserine Pass', 'Gazala', 'Mareth Line', 'Bir Hakeim', 'Beda Fomm'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which American general, known for his ivory-handled revolvers, led the Third Army across France in 1944?', NULL,
        'George S. Patton', ARRAY['Omar Bradley', 'Mark Clark', 'Courtney Hodges', 'Lucian Truscott', 'Matthew Ridgway', 'Joseph Stilwell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which admiral, commander of Japan''s Combined Fleet, conceived the December 1941 surprise attack on Hawaii?', NULL,
        'Isoroku Yamamoto', ARRAY['Hideki Tojo', 'Takeo Kurita', 'Jisaburo Ozawa', 'Mineichi Koga', 'Tomoyuki Yamashita', 'Heihachiro Togo'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German battleship, after sinking HMS Hood, was hunted down and sunk by the Royal Navy in May 1941?', NULL,
        'Bismarck', ARRAY['Tirpitz', 'Scharnhorst', 'Gneisenau', 'Admiral Graf Spee', 'Prinz Eugen', 'Lützow'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Juno Beach, one of the five D-Day landing beaches, was assigned to troops from which country?', NULL,
        'Canada', ARRAY['The United Kingdom', 'The United States', 'France', 'Australia', 'Poland', 'Norway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Codebreakers from which country first cracked the German Enigma machine, then shared their secrets with Britain and France just before the war?', NULL,
        'Poland', ARRAY['Czechoslovakia', 'France', 'The Netherlands', 'Belgium', 'Austria', 'Norway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'At which Black Sea resort did the "Big Three" Allied leaders meet in February of the war''s final year to plan the postwar world?', NULL,
        'Yalta', ARRAY['Tehran', 'Potsdam', 'Casablanca', 'Cairo', 'Quebec', 'Sochi'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German officer planted the briefcase bomb in the failed July 1944 plot to kill Hitler?', NULL,
        'Claus von Stauffenberg', ARRAY['Henning von Tresckow', 'Ludwig Beck', 'Wilhelm Canaris', 'Friedrich Olbricht', 'Erwin von Witzleben', 'Fabian von Schlabrendorff'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'On the deck of which U.S. battleship did Japan formally sign its surrender in Tokyo Bay on September 2?', NULL,
        'USS Missouri', ARRAY['USS Arizona', 'USS Iowa', 'USS Wisconsin', 'USS New Jersey', 'USS Nevada', 'USS Texas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1942 executive order led to the forced removal of Japanese Americans to camps?', NULL,
        'Executive Order 9066', ARRAY['Executive Order 8802', 'Executive Order 9981', 'The Smith Act', 'Executive Order 6102', 'The Alien Enemies Act'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which revolutionary led the Bolsheviks to power in Russia in 1917?', NULL,
        'Vladimir Lenin', ARRAY['Leon Trotsky', 'Joseph Stalin', 'Alexander Kerensky', 'Karl Marx', 'Nicholas II'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'The "Harlem Hellfighters" of World War I were which U.S. Army regiment?', NULL,
        'The 369th Infantry', ARRAY['The 54th Massachusetts', 'The 82nd Airborne', 'The 101st Airborne', 'The 1st Infantry', 'The 10th Cavalry'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Japanese American unit became the most decorated for its size in US military history?', NULL,
        'The 442nd Regimental Combat Team', ARRAY['The 100th Bomb Group', 'The 1st Marine Division', 'The 3rd Infantry', 'The 82nd Airborne', 'The 7th Cavalry'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Solomon Islands campaign, begun in August 1942, was the first major Allied offensive against Japan?', NULL,
        'Guadalcanal', ARRAY['Tarawa', 'Saipan', 'Bougainville', 'New Guinea', 'Peleliu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which general commanded the American Expeditionary Forces in World War I?', NULL,
        'John J. Pershing', ARRAY['Douglas MacArthur', 'George Marshall', 'Leonard Wood', 'Omar Bradley', 'George S. Patton'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'At which conference outside Berlin in July 1945 did the Allies demand Japan''s surrender?', NULL,
        'Potsdam', ARRAY['Yalta', 'Tehran', 'Casablanca', 'Cairo', 'Versailles'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'The 1942 Doolittle Raid was the first American air attack on which city?', NULL,
        'Tokyo', ARRAY['Hiroshima', 'Osaka', 'Yokohama', 'Nagasaki', 'Kobe'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Who was America''s top fighter ace of World War I, later the head of Eastern Air Lines?', NULL,
        'Eddie Rickenbacker', ARRAY['Frank Luke', 'Raoul Lufbery', 'Billy Mitchell', 'Charles Lindbergh', 'Elliott White Springs'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1916 North Sea clash was World War I''s biggest battle between battleships?', NULL,
        'The Battle of Jutland', ARRAY['The Battle of Dogger Bank', 'The Battle of Coronel', 'The Battle of Heligoland Bight', 'The Battle of the Falkland Islands', 'The Battle of the River Plate'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In August 1914, German forces destroyed an invading Russian army at which battle in East Prussia?', NULL,
        'The Battle of Tannenberg', ARRAY['The Battle of Gorlice-Tarnów', 'The Battle of Łódź', 'The Battle of Galicia', 'The Battle of Warsaw', 'The Kerensky Offensive', 'The Siege of Przemyśl'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Austro-German forces broke the Italian lines and sent Italy''s army into retreat at which battle, later described in Hemingway''s "A Farewell to Arms"?', NULL,
        'The Battle of Caporetto', ARRAY['The Battle of the Piave', 'The Battle of Vittorio Veneto', 'The Battle of Asiago', 'The Battle of Gorizia', 'The Battle of Monte Grappa', 'The Battle of Solferino'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In which battle did all four Canadian divisions attack together for the first time, a victory that became a symbol of Canadian nationhood?', NULL,
        'Vimy Ridge', ARRAY['Passchendaele', 'Beaumont-Hamel', 'Messines', 'Cambrai', 'Hill 70', 'Amiens'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In which forest was the armistice ending the fighting of World War I signed, in a railway carriage, in November?', NULL,
        'The Forest of Compiègne', ARRAY['The Forest of Fontainebleau', 'The Argonne Forest', 'The Ardennes', 'The Forest of Chantilly', 'The Forest of Rambouillet', 'The Forest of Vincennes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'The 1916 Russian offensive against Austria-Hungary, one of Russia''s greatest successes of the war, is named after which general?', NULL,
        'Aleksei Brusilov', ARRAY['Alexander Samsonov', 'Paul von Rennenkampf', 'Lavr Kornilov', 'Anton Denikin', 'Mikhail Alekseyev', 'Nikolai Yudenich'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which American songwriter wrote the rousing World War I song "Over There," with its promise that "the Yanks are coming"?', NULL,
        'George M. Cohan', ARRAY['Irving Berlin', 'John Philip Sousa', 'Cole Porter', 'Jerome Kern', 'George Gershwin', 'Scott Joplin'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which treaty, signed with Germany and its allies, took Bolshevik Russia out of the war?', NULL,
        'The Treaty of Brest-Litovsk', ARRAY['The Treaty of Trianon', 'The Treaty of Neuilly', 'The Treaty of Saint-Germain', 'The Treaty of Sèvres', 'The Treaty of Rapallo', 'The Treaty of Riga'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'In April 1915, Germany made the first large-scale poison gas attack on the Western Front, releasing it from cylinders. Which gas was it?', NULL,
        'Chlorine', ARRAY['Mustard gas', 'Phosgene', 'Sarin', 'Hydrogen cyanide', 'Carbon monoxide', 'Ammonia'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Bletchley Park machine, built by Tommy Flowers to attack the Lorenz cipher, is often called the first programmable electronic digital computer?', NULL,
        'Colossus', ARRAY['ENIAC', 'The Bombe', 'Z3', 'Harvard Mark I', 'Atanasoff-Berry Computer', 'Manchester Baby'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the name of Britain''s network of coastal radar stations that gave early warning of German air raids?', NULL,
        'Chain Home', ARRAY['Kammhuber Line', 'GHQ Line', 'Atlantic Wall', 'Maginot Line', 'Gustav Line', 'Siegfried Line'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for the mass evacuation of children from British cities at the very start of the war?', NULL,
        'Operation Pied Piper', ARRAY['Operation Dynamo', 'Operation Aerial', 'Operation Fish', 'Operation Mincemeat', 'Operation Cycle', 'Operation Sea Lion'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for the deception, with a phantom army and dummy tanks, that convinced Germany the main D-Day landing would come at Calais?', NULL,
        'Operation Fortitude', ARRAY['Operation Mincemeat', 'Operation Neptune', 'Operation Cobra', 'Operation Jubilee', 'Operation Goodwood', 'Operation Anvil'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Fought off the Philippines in October 1944, which is often called the largest naval battle in history?', NULL,
        'The Battle of Leyte Gulf', ARRAY['The Battle of the Philippine Sea', 'The Battle of the Coral Sea', 'The Battle of the Java Sea', 'The Battle of Savo Island', 'The Battle of the Santa Cruz Islands', 'The Battle of Cape Esperance'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for the huge Soviet offensive of summer 1944 that destroyed Germany''s Army Group Centre?', NULL,
        'Operation Bagration', ARRAY['Operation Uranus', 'Operation Mars', 'Operation Kutuzov', 'Operation Saturn', 'Operation Iskra', 'Operation Citadel'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What name was given to the prefabricated harbours towed across the Channel to supply the Allies after D-Day?', NULL,
        'Mulberry harbours', ARRAY['PLUTO', 'Hobart''s Funnies', 'Higgins boats', 'Bailey bridges', 'Habbakuk', 'DUKWs'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Swedish diplomat saved thousands of Jews in Budapest by issuing protective passports?', NULL,
        'Raoul Wallenberg', ARRAY['Oskar Schindler', 'Chiune Sugihara', 'Folke Bernadotte', 'Nicholas Winton', 'Dag Hammarskjöld', 'Aristides de Sousa Mendes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Soviet foreign minister gave his name both to a pact with Nazi Germany and to a homemade firebomb?', NULL,
        'Vyacheslav Molotov', ARRAY['Maxim Litvinov', 'Lavrentiy Beria', 'Andrei Gromyko', 'Georgy Malenkov', 'Lazar Kaganovich', 'Andrei Vyshinsky'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which British engineer designed the "bouncing bomb" used in the 1943 Dambusters raid?', NULL,
        'Barnes Wallis', ARRAY['Frank Whittle', 'R.J. Mitchell', 'Robert Watson-Watt', 'Sydney Camm', 'Tommy Flowers', 'Guy Gibson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Australian city was bombed by Japanese aircraft in February 1942, the first attack on the Australian mainland?', NULL,
        'Darwin', ARRAY['Perth', 'Brisbane', 'Sydney', 'Melbourne', 'Adelaide', 'Hobart'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which July 1943 clash in Russia is often called the largest tank battle in history?', NULL,
        'The Battle of Kursk', ARRAY['The Battle of Stalingrad', 'The Battle of Moscow', 'The Battle of Kharkov', 'The Battle of Smolensk', 'The Battle of Rzhev', 'The Battle of the Bulge'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What was the code name for the Allied landings in southern France in August 1944?', NULL,
        'Operation Dragoon', ARRAY['Operation Goodwood', 'Operation Cobra', 'Operation Avalanche', 'Operation Shingle', 'Operation Jubilee'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What name is given to Germany''s last big push on the Western Front, in spring 1918?', NULL,
        'The Spring Offensive', ARRAY['The Hundred Days Offensive', 'The Nivelle Offensive', 'The Meuse-Argonne Offensive', 'The Brusilov Offensive', 'The Somme Offensive'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1918 campaign through a French forest was the largest offensive in US military history up to then?', NULL,
        'The Meuse-Argonne Offensive', ARRAY['The Battle of Belleau Wood', 'The Battle of Saint-Mihiel', 'The Battle of Cantigny', 'The Second Battle of the Marne', 'The Battle of Chateau-Thierry'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Tennessee soldier captured 132 Germans in October 1918 and won the Medal of Honor?', NULL,
        'Alvin York', ARRAY['Audie Murphy', 'Sam Dreben', 'Dan Daly', 'Charles Whittlesey', 'Henry Johnson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which German field marshal of World War I, later Germany''s president, gave his name to an airship that burned in 1937?', NULL,
        'Paul von Hindenburg', ARRAY['Erich Ludendorff', 'Helmuth von Moltke', 'Alfred von Tirpitz', 'Ferdinand von Zeppelin', 'August von Mackensen'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1945 island battle, with kamikazes offshore, was the bloodiest of the Pacific war?', NULL,
        'Okinawa', ARRAY['Iwo Jima', 'Saipan', 'Tarawa', 'Peleliu', 'Guadalcanal'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'What three-word signal told Japan''s fleet that the Pearl Harbor attack had achieved surprise?', NULL,
        'Tora! Tora! Tora!', ARRAY['Banzai! Banzai! Banzai!', 'Kamikaze! Kamikaze! Kamikaze!', 'Climb Mount Niitaka', 'East wind, rain', 'Rising sun now'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which 1941 statement of war aims did Roosevelt and Churchill issue after meeting on ships off Newfoundland?', NULL,
        'The Atlantic Charter', ARRAY['The Four Freedoms', 'The Declaration by United Nations', 'The Casablanca Declaration', 'The Potsdam Declaration', 'The Newfoundland Accord'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which Soviet city held out through a siege of nearly 900 days, from 1941 to 1944?', NULL,
        'Leningrad', ARRAY['Moscow', 'Stalingrad', 'Sevastopol', 'Odessa', 'Kiev'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'WORLD_WARS', 'ORIGINAL', NULL,
        'Which American general answered a German demand to surrender Bastogne with one word: "Nuts!"?', NULL,
        'Anthony McAuliffe', ARRAY['George S. Patton', 'Omar Bradley', 'Maxwell Taylor', 'Matthew Ridgway', 'Courtney Hodges'], 400);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_WARS';
