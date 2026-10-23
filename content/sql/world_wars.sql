-- ============================================================================
-- content/sql/world_wars.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/world_wars.csv, the master copy of the
-- Thinking Pants category WORLD_WARS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
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

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'WORLD_WARS';
