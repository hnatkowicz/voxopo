-- ============================================================================
-- content/sql/video_games.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/video_games.csv, the master copy of the
-- Thinking Pants category VIDEO_GAMES. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 120 live questions
-- (100: 30, 200: 30, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'VIDEO_GAMES';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, which green creature sneaks up on you and explodes?', NULL,
        'A Creeper', ARRAY['A Zombie', 'An Enderman', 'A Skeleton', 'A Slime', 'A Ghast', 'A Spider'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of Mario''s taller brother, who dresses in green?', NULL,
        'Luigi', ARRAY['Wario', 'Toad', 'Yoshi', 'Waluigi', 'Bowser', 'Daisy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of Mario''s friendly green dinosaur, who gobbles enemies with his tongue?', NULL,
        'Yoshi', ARRAY['Rex', 'Dino', 'Birdo', 'Koopa', 'Spike', 'Gex'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which spiky-shelled king of the Koopas is Mario''s archenemy?', NULL,
        'Bowser', ARRAY['Wario', 'Ganon', 'King K. Rool', 'Kamek', 'Dr. Eggman', 'Ridley'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "The Legend of Zelda" games, what is the name of the hero in the green tunic?', NULL,
        'Link', ARRAY['Zelda', 'Epona', 'Navi', 'Impa', 'Sheik', 'Malon'], 100, 'Many players assume the hero is Zelda. She''s the princess; Link is the one with the sword.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which yellow, electric Pokémon is Ash Ketchum''s partner?', NULL,
        'Pikachu', ARRAY['Raichu', 'Clefairy', 'Pichu', 'Psyduck', 'Meowth', 'Togepi'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Pokémon, what do trainers throw to catch a wild Pokémon?', NULL,
        'A Poké Ball', ARRAY['A Poké Net', 'A Catch Cube', 'A Lure', 'A Capture Disk', 'A Pokécage', 'A Trainer Box'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, which dark purple block do you need to build a portal to the fiery dimension?', NULL,
        'Obsidian', ARRAY['Bedrock', 'Cobblestone', 'Netherrack', 'Glowstone', 'Redstone', 'Basalt'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Super Mario Bros.," what does a Super Mushroom do to Mario?', NULL,
        'Makes him grow bigger', ARRAY['Shrinks him', 'Makes him fly', 'Lets him throw fireballs', 'Makes him invincible', 'Gives him an extra life', 'Makes him faster'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Fortnite, what do players ride over the island before skydiving in?', NULL,
        'The Battle Bus', ARRAY['The Battle Blimp', 'The Party Plane', 'The Rocket Van', 'The Drop Ship', 'The Storm Truck', 'The Loot Llama'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What do gamers call the big, tough enemy waiting at the end of a level?', NULL,
        'The boss', ARRAY['The captain', 'The warden', 'The chief', 'The guardian', 'The titan', 'The champion'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which arcade game has a frog hopping across a busy road and a log-filled river?', NULL,
        'Frogger', ARRAY['Q*bert', 'Dig Dug', 'Centipede', 'Galaga', 'Joust', 'Paperboy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which game lets you live in a village of talking animal neighbors, with a landlord named Tom Nook?', NULL,
        'Animal Crossing', ARRAY['Stardew Valley', 'Harvest Moon', 'The Sims', 'Viva Piñata', 'Story of Seasons', 'Slime Rancher'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In the game "Among Us," what are the secret saboteurs on the crew called?', NULL,
        'Impostors', ARRAY['Traitors', 'Spies', 'Mimics', 'Infiltrators', 'Moles', 'Saboteurs'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "NPC" stand for in video games?', NULL,
        'Non-player character', ARRAY['New player challenge', 'Next-phase checkpoint', 'Normal power character', 'Network player client', 'No-pause cutscene', 'Neutral path creature'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does a "1-Up" give a player?', NULL,
        'An extra life', ARRAY['A higher level', 'Double points', 'A shield', 'A new weapon', 'A map', 'A shortcut'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, what is the fiery dimension of lava oceans and ghasts called?', NULL,
        'The Nether', ARRAY['The End', 'The Underworld', 'The Abyss', 'The Void', 'The Inferno', 'The Deep Dark'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What kind of animal is Spyro, the purple video game hero?', NULL,
        'A dragon', ARRAY['A dinosaur', 'A lizard', 'A gargoyle', 'A griffin', 'A salamander', 'A wyvern'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What color is Kirby, the round, floating video game hero?', NULL,
        'Pink', ARRAY['Yellow', 'Blue', 'White', 'Purple', 'Orange', 'Red'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which game pits sunflowers, peashooters and wall-nuts against a lawn full of zombies?', NULL,
        'Plants vs. Zombies', ARRAY['Garden Warfare', 'Zombie Farm', 'Lawn of the Dead', 'Zombies Ate My Neighbors', 'Bloons TD', 'Kingdom Rush'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What do you call a hidden secret a game''s makers tuck inside it for players to find?', NULL,
        'An Easter egg', ARRAY['A treasure chest', 'A golden ticket', 'A time capsule', 'A side quest', 'A loot box', 'A cheat code'], 100, '"Adventure" (1979) hid the first famous one: designer Warren Robinett''s name, in a secret room.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "RPG" stand for in gaming?', NULL,
        'Role-playing game', ARRAY['Rapid-play game', 'Real player gameplay', 'Ranked player grid', 'Random puzzle game', 'Rocket-powered gun', 'Rival party game'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In online games, what is a "noob"?', NULL,
        'A beginner', ARRAY['A cheater', 'A champion', 'A team captain', 'A computer player', 'A spectator', 'A moderator'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What color is Mega Man''s armor?', NULL,
        'Blue', ARRAY['Red', 'Green', 'Silver', 'Gold', 'Purple', 'Orange'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which archaeologist adventurer stars in the "Tomb Raider" games?', NULL,
        'Lara Croft', ARRAY['Nathan Drake', 'Samus Aran', 'Jill Valentine', 'Chun-Li', 'Aloy', 'Indiana Jones'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, which shiny blue gem makes the best tools until Netherite?', NULL,
        'Diamond', ARRAY['Emerald', 'Sapphire', 'Lapis lazuli', 'Amethyst', 'Quartz', 'Prismarine'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Roblox, what is the in-game money called?', NULL,
        'Robux', ARRAY['V-Bucks', 'Blox Coins', 'Gems', 'Brickbucks', 'Credits', 'Simoleons'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "GG," typed at the end of a match, mean?', NULL,
        'Good game', ARRAY['Get going', 'Great goal', 'Go go', 'Game''s gone', 'Good grief', 'Got gold'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which Pokémon is a big, sleepy blob who naps across roads, blocking your way?', NULL,
        'Snorlax', ARRAY['Jigglypuff', 'Slowpoke', 'Munchlax', 'Wobbuffet', 'Drowzee', 'Lapras'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Mario Kart," which item heads straight for the racer in first place?', NULL,
        'The Blue Shell', ARRAY['The Red Shell', 'The Green Shell', 'The Banana', 'The Lightning Bolt', 'The Bob-omb', 'The Bullet Bill'], 100, 'Officially it''s the Spiny Shell. Players have called it the Blue Shell, and dreaded it, since 1996.');

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which Pokémon does Charmander evolve into?', NULL,
        'Charmeleon', ARRAY['Charizard', 'Vulpix', 'Ponyta', 'Magmar', 'Growlithe', 'Flareon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Pokémon Red and Blue, which professor gives you your first Pokémon?', NULL,
        'Professor Oak', ARRAY['Professor Elm', 'Professor Birch', 'Professor Rowan', 'Professor Juniper', 'Professor Willow', 'Professor Kukui'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the villainous gang that keeps stealing Pokémon in the first games?', NULL,
        'Team Rocket', ARRAY['Team Magma', 'Team Aqua', 'Team Galactic', 'Team Plasma', 'Team Skull', 'Team Flare'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Pokémon, what happens when a Pokémon''s HP drops to zero?', NULL,
        'It faints', ARRAY['It dies', 'It runs away', 'It evolves', 'It falls asleep', 'It goes back to the wild', 'It turns to stone'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which pink, balloon-shaped Pokémon sings everyone to sleep?', NULL,
        'Jigglypuff', ARRAY['Clefairy', 'Chansey', 'Igglybuff', 'Skitty', 'Wigglytuff', 'Snubbull'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Super Mario Bros.," what power-up lets Mario throw fireballs?', NULL,
        'The Fire Flower', ARRAY['The Super Star', 'The Fire Mushroom', 'The Hot Pepper', 'The Fire Feather', 'The Flame Coin', 'The Magic Lamp'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In the 1981 arcade game "Donkey Kong," what does the giant ape hurl down at the hero?', NULL,
        'Barrels', ARRAY['Bananas', 'Rocks', 'Coconuts', 'Bombs', 'Fireballs', 'Logs'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1978 arcade game had players shooting rows of aliens marching down the screen?', NULL,
        'Space Invaders', ARRAY['Asteroids', 'Galaga', 'Defender', 'Centipede', 'Missile Command', 'Robotron'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1979 arcade game had players blasting space rocks that split into smaller pieces?', NULL,
        'Asteroids', ARRAY['Space Invaders', 'Defender', 'Galaga', 'Gravitar', 'Tempest', 'Lunar Lander'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Mortal Kombat," what is the gruesome move that finishes off a beaten opponent called?', NULL,
        'A Fatality', ARRAY['A Finisher', 'A Knockout', 'A Takedown', 'A Wipeout', 'A Smackdown', 'A Final Blow'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the armored super-soldier hero of the "Halo" series?', NULL,
        'Master Chief', ARRAY['Commander Shepard', 'Marcus Fenix', 'Doomguy', 'Gordon Freeman', 'Sergeant Johnson', 'Captain Price'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In the puzzle game "Portal," which dessert does the AI GLaDOS keep promising you?', NULL,
        'Cake', ARRAY['Pie', 'Cookies', 'Ice cream', 'Donuts', 'Cupcakes', 'Brownies'], 200, '"The cake is a lie" became one of gaming''s most famous jokes.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which evil king, a giant boar-like beast in some games, is the main villain of "The Legend of Zelda"?', NULL,
        'Ganon', ARRAY['Bowser', 'Ridley', 'King Dedede', 'Majora', 'Vaati', 'Sephiroth'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "FPS" mean when describing a game like "Call of Duty"?', NULL,
        'First-person shooter', ARRAY['Fast-paced strategy', 'Full-power soldier', 'Free play server', 'Final player standing', 'Field position simulator', 'Friendly-fire protection'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2012 mobile hit had players matching rows of striped and wrapped sweets?', NULL,
        'Candy Crush Saga', ARRAY['Bejeweled', 'Fruit Ninja', 'Cookie Jam', 'Toon Blast', 'Gardenscapes', 'Homescapes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2005 game came with a plastic guitar-shaped controller to strum along to rock songs?', NULL,
        'Guitar Hero', ARRAY['Rock Band', 'Amplitude', 'Frequency', 'Rocksmith', 'DJ Hero', 'Band Hero'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which arcade game had players stomping on arrows on a dance floor pad?', NULL,
        'Dance Dance Revolution', ARRAY['Pump It Up', 'Just Dance', 'Dance Central', 'In the Groove', 'Beatmania', 'Para Para Paradise'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Final Fantasy," which big yellow bird do players ride?', NULL,
        'A Chocobo', ARRAY['A Moogle', 'A Cactuar', 'A Tonberry', 'A Chickadoo', 'A Roc', 'A Bomb'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "DLC" stand for in gaming?', NULL,
        'Downloadable content', ARRAY['Digital level creator', 'Direct live chat', 'Double-length campaign', 'Deluxe limited copy', 'Data loading cache', 'Daily login credit'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is "speedrunning"?', NULL,
        'Beating a game as fast as possible', ARRAY['Racing games played on fast-forward', 'Playing two games at once', 'Finishing a game without dying', 'Reviewing games quickly', 'Collecting every item in a game', 'Holding the run button the whole game'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Fortnite, what is the in-game money called?', NULL,
        'V-Bucks', ARRAY['Robux', 'Fort Coins', 'Battle Bucks', 'Gold Bars', 'Llama Bucks', 'Storm Points'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, what is the final boss you face in The End?', NULL,
        'The Ender Dragon', ARRAY['The Elder Guardian', 'The Warden', 'The Nether King', 'The Void Serpent', 'The Ghast Queen', 'The Iron Golem'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which company makes the "Call of Duty" games?', NULL,
        'Activision', ARRAY['EA', 'Ubisoft', 'Bethesda', 'Epic Games', 'Blizzard', 'Valve'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which company makes Fortnite?', NULL,
        'Epic Games', ARRAY['Activision', 'EA', 'Ubisoft', 'Riot Games', 'Valve', 'Blizzard'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "MMO" stand for, as in games like "EverQuest"?', NULL,
        'Massively multiplayer online', ARRAY['Mega multi-objective', 'Multiple map online', 'Massive mission overload', 'Mostly melee opponents', 'Many-match overtime', 'Multi-mode offline'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does Kirby famously do to enemies to copy their powers?', NULL,
        'Inhale them and copy their powers', ARRAY['Freeze them into blocks', 'Turn them into friends', 'Shrink them down', 'Trap them in bubbles', 'Bounce them off walls', 'Paint them pink'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of Donkey Kong''s little sidekick in a red cap, in "Donkey Kong Country"?', NULL,
        'Diddy Kong', ARRAY['Cranky Kong', 'Funky Kong', 'Lanky Kong', 'Tiny Kong', 'Chunky Kong', 'Swanky Kong'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which greedy, penguin-like king does Kirby battle in "Kirby''s Dream Land"?', NULL,
        'King Dedede', ARRAY['Bowser', 'Meta Knight', 'Dr. Robotnik', 'Wario', 'Ganon', 'Ridley'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Street Fighter," what does Ryu shout as he throws his famous fireball?', NULL,
        '"Hadouken!"', ARRAY['"Shoryuken!"', '"Tatsumaki!"', '"Sonic Boom!"', '"Yoga Fire!"', '"Kikoken!"', '"Kamehameha!"'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Super Mario Bros.," what does grabbing a Super Star do?', NULL,
        'Makes you briefly invincible', ARRAY['Gives you an extra life', 'Makes you grow bigger', 'Lets you fly', 'Doubles your coins', 'Skips the level', 'Turns enemies into coins'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Who is the bounty hunter heroine of the "Metroid" games?', NULL,
        'Samus Aran', ARRAY['Lara Croft', 'Jill Valentine', 'Chun-Li', 'Bayonetta', 'Aloy', 'Joanna Dark'], 300, 'At the end of the first game (1986), players who finished fast learned, to many people''s surprise, that Samus is a woman.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which famous cheat code goes Up, Up, Down, Down, Left, Right, Left, Right, B, A?', NULL,
        'The Konami Code', ARRAY['The Cheat Code', 'The Arcade Code', 'The Debug Code', 'The Capcom Code', 'The Atari Code', 'The Midway Code'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1993 shooter has a space marine battling demons on the moons of Mars?', NULL,
        'Doom', ARRAY['Quake', 'Wolfenstein 3D', 'Duke Nukem 3D', 'Halo', 'Marathon', 'Descent'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which AI companion, later the name of a Microsoft voice assistant, guides the hero of "Halo"?', NULL,
        'Cortana', ARRAY['GLaDOS', 'SHODAN', 'EDI', 'Alexa', 'Siri', 'HAL'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "The Sims," what is the green crystal that floats over a Sim''s head called?', NULL,
        'A plumbob', ARRAY['A mood gem', 'A lifeline', 'A wishstone', 'A hovergem', 'A sim-crystal', 'A spirit stone'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the made-up language that Sims speak called?', NULL,
        'Simlish', ARRAY['Simspeak', 'Gibberese', 'Simulese', 'Plumbobian', 'Sim-glish', 'Babblish'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1989 game made players mayor of a growing city, managing zoning, power and disasters?', NULL,
        'SimCity', ARRAY['Civilization', 'Caesar', 'Railroad Tycoon', 'Populous', 'Cities: Skylines', 'Theme Park'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which game designer created both Mario and "The Legend of Zelda"?', NULL,
        'Shigeru Miyamoto', ARRAY['Satoru Iwata', 'Yuji Naka', 'Gunpei Yokoi', 'Hironobu Sakaguchi', 'Masahiro Sakurai', 'Satoshi Tajiri'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In which fictional city, based on Los Angeles, is "Grand Theft Auto V" set?', NULL,
        'Los Santos', ARRAY['Vice City', 'Liberty City', 'San Fierro', 'Las Venturas', 'Bullworth', 'Carcer City'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2018 Western game follows outlaw Arthur Morgan and the Van der Linde gang?', NULL,
        'Red Dead Redemption 2', ARRAY['Call of Juarez', 'Gun', 'Desperados III', 'Weird West', 'Hunt: Showdown', 'Wild West Online'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which hero of "Final Fantasy VII" has spiky blond hair and a giant Buster Sword?', NULL,
        'Cloud Strife', ARRAY['Squall Leonhart', 'Tidus', 'Zack Fair', 'Noctis', 'Lightning', 'Vincent Valentine'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In which game series does the Spartan warrior Kratos battle the gods?', NULL,
        'God of War', ARRAY['Devil May Cry', 'Bayonetta', 'Darksiders', 'Dante''s Inferno', 'Ryse', 'Titan Quest'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which survival horror series is set in and around the zombie-overrun Raccoon City?', NULL,
        'Resident Evil', ARRAY['Silent Hill', 'Dead Space', 'Outlast', 'The Evil Within', 'Left 4 Dead', 'Dead Rising'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the thumbs-up, blond mascot of the nuclear-wasteland "Fallout" series?', NULL,
        'Vault Boy', ARRAY['Atom Kid', 'Nuka Ned', 'Pip-Boy', 'Rad Rodney', 'Mr. Handy', 'Wasteland Willy'], 300, '"Pip-Boy" is the wrist computer he''s printed on, a classic mix-up.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Ocarina of Time," what is the name of the hero''s chatty fairy companion?', NULL,
        'Navi', ARRAY['Tatl', 'Midna', 'Fi', 'Ezlo', 'Tael', 'Epona'], 300, 'She''s famous for one line: "Hey! Listen!"');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the hero''s trusty horse in "The Legend of Zelda" games?', NULL,
        'Epona', ARRAY['Navi', 'Ganon', 'Malon', 'Agro', 'Roach', 'Shadowfax'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which "Street Fighter" fighter is famous for lightning-fast kicks and is often called gaming''s first great female fighter?', NULL,
        'Chun-Li', ARRAY['Cammy', 'Juri', 'Sakura', 'Sonya Blade', 'Kitana', 'Nina Williams'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Mortal Kombat," which spear-throwing ninja shouts "Get over here!"?', NULL,
        'Scorpion', ARRAY['Sub-Zero', 'Raiden', 'Liu Kang', 'Reptile', 'Smoke', 'Noob Saibot'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2011 dragon-hunting game made "I took an arrow in the knee" a meme?', NULL,
        'Skyrim', ARRAY['Oblivion', 'Morrowind', 'Dragon Age', 'The Witcher 3', 'Dark Souls', 'Fable'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2013 phone game was pulled from stores by its creator at the height of its fame, for being too addictive?', NULL,
        'Flappy Bird', ARRAY['Doodle Jump', 'Crossy Road', 'Temple Run', 'Jetpack Joyride', 'Tiny Wings', 'Subway Surfers'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What kind of animal is the master thief Sly Cooper?', NULL,
        'A raccoon', ARRAY['A fox', 'A cat', 'A ferret', 'A weasel', 'A possum', 'A badger'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What do you call a game that''s free to download but sells extras inside it?', NULL,
        'Free-to-play', ARRAY['Pay-to-win', 'Early access', 'Shareware', 'Open-world', 'Battle pass', 'Demo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which online card game from Blizzard launched in 2014?', NULL,
        'Hearthstone', ARRAY['Gwent', 'Legends of Runeterra', 'Magic Arena', 'Shadowverse', 'Elder Scrolls: Legends', 'Marvel Snap'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which greedy rival of Mario wears yellow and purple, with a "W" on his cap?', NULL,
        'Wario', ARRAY['Waluigi', 'Bowser Jr.', 'Toadsworth', 'Fawful', 'Kamek', 'King Boo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2022 open-world game has a lone Tarnished warrior exploring the Lands Between?', NULL,
        'Elden Ring', ARRAY['Dark Souls III', 'Bloodborne', 'Sekiro', 'Lies of P', 'Nioh 2', 'Dragon''s Dogma'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In Minecraft, which tall, black mob teleports and turns hostile if you look it in the eye?', NULL,
        'The Enderman', ARRAY['The Creeper', 'The Wither', 'The Phantom', 'The Blaze', 'The Shulker', 'The Warden'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2017 indie game has a little knight bug exploring the ruined kingdom of Hallownest?', NULL,
        'Hollow Knight', ARRAY['Ori and the Blind Forest', 'Dead Cells', 'Celeste', 'Salt and Sanctuary', 'Blasphemous', 'Axiom Verge'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2017 "Legend of Zelda" game lets you climb nearly anything and cook your own meals?', NULL,
        'Breath of the Wild', ARRAY['Tears of the Kingdom', 'Twilight Princess', 'Skyward Sword', 'Wind Waker', 'Majora''s Mask', 'A Link Between Worlds'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What does "AFK" mean in online games?', NULL,
        'Away from keyboard', ARRAY['Always fighting kills', 'Ally for keeps', 'All for kicks', 'Auto-fire key', 'Armed for killing', 'Ask for keys'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1981 arcade game had players shooting a segmented bug winding down through a field of mushrooms?', NULL,
        'Centipede', ARRAY['Millipede', 'Galaga', 'Defender', 'Tempest', 'Berzerk', 'Joust'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2007 game is set in Rapture, a ruined city at the bottom of the sea?', NULL,
        'BioShock', ARRAY['Dead Space', 'Prey', 'System Shock 2', 'Soma', 'Subnautica', 'Half-Life 2'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which silver-haired swordsman is the villain of "Final Fantasy VII"?', NULL,
        'Sephiroth', ARRAY['Kefka', 'Ultimecia', 'Seymour', 'Jenova', 'Vayne', 'Exdeath'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In which game did a player named Leeroy Jenkins famously charge into a room and ruin his team''s careful plan?', NULL,
        'World of Warcraft', ARRAY['EverQuest', 'Guild Wars', 'RuneScape', 'Final Fantasy XI', 'Star Wars Galaxies', 'Ultima Online'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the physicist with a crowbar who stars in "Half-Life"?', NULL,
        'Gordon Freeman', ARRAY['Isaac Clarke', 'Adam Jensen', 'Alyx Vance', 'Corvo Attano', 'B.J. Blazkowicz', 'Max Payne'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Who is the wisecracking treasure hunter hero of the "Uncharted" series?', NULL,
        'Nathan Drake', ARRAY['Joel Miller', 'Sam Fisher', 'Max Payne', 'Cole MacGrath', 'Alex Mercer', 'Victor Sullivan'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which punishing 2011 game came to PCs in 2012 as the "Prepare to Die" edition?', NULL,
        'Dark Souls', ARRAY['Demon''s Souls', 'Bloodborne', 'Sekiro', 'Elden Ring', 'Nioh', 'Lords of the Fallen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which game designer created the "Metal Gear" series?', NULL,
        'Hideo Kojima', ARRAY['Shigeru Miyamoto', 'Shinji Mikami', 'Hidetaka Miyazaki', 'Yu Suzuki', 'Tetsuya Nomura', 'Fumito Ueda'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Who created Pokémon, inspired by his childhood love of collecting insects?', NULL,
        'Satoshi Tajiri', ARRAY['Ken Sugimori', 'Junichi Masuda', 'Tsunekazu Ishihara', 'Shigeru Miyamoto', 'Hideo Kojima', 'Akira Toriyama'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which engineer, known as the "father of video games," invented the first home console, the Magnavox Odyssey?', NULL,
        'Ralph Baer', ARRAY['Nolan Bushnell', 'Al Alcorn', 'William Higinbotham', 'Jerry Lawson', 'Steve Wozniak', 'Gunpei Yokoi'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which engineer led the team behind the Fairchild Channel F (1976), the first console with interchangeable game cartridges?', NULL,
        'Jerry Lawson', ARRAY['Ralph Baer', 'Nolan Bushnell', 'Al Alcorn', 'Steve Wozniak', 'Joe Decuir', 'Jay Miner'], 400, 'He was one of the very few Black engineers in the early video game industry.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which character in the "Final Fantasy" series is a small, white, pom-pom-topped creature that says "Kupo!"?', NULL,
        'A Moogle', ARRAY['A Chocobo', 'A Cactuar', 'A Tonberry', 'A Carbuncle', 'A Bomb', 'A Malboro'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Donkey Kong" (1981), what was Mario''s original name?', NULL,
        'Jumpman', ARRAY['Mr. Video', 'Carpenter', 'Plumber Joe', 'Barrelman', 'Climber', 'Super Guy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Metal Gear Solid," what is the codename of the stealthy hero?', NULL,
        'Solid Snake', ARRAY['Big Boss', 'Raiden', 'Revolver Ocelot', 'Liquid Snake', 'Gray Fox', 'Sniper Wolf'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2015 indie RPG lets you spare every monster, and stars a skeleton named Sans?', NULL,
        'Undertale', ARRAY['Cuphead', 'Hollow Knight', 'Celeste', 'Shovel Knight', 'Stardew Valley', 'Hyper Light Drifter'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2017 run-and-gun game copied the hand-drawn look of 1930s cartoons?', NULL,
        'Cuphead', ARRAY['Undertale', 'Hollow Knight', 'Ori and the Blind Forest', 'Rayman Legends', 'Bendy and the Ink Machine', 'Enchanted Portals'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Super Mario 64," what does Mario collect to open the doors of Peach''s castle?', NULL,
        'Power Stars', ARRAY['Shine Sprites', 'Star Coins', 'Moons', 'Golden Mushrooms', 'Crystal Hearts', 'Dragon Coins'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the open-world hero of "The Witcher" series, a monster hunter with white hair?', NULL,
        'Geralt of Rivia', ARRAY['Ciri', 'Yennefer', 'Dandelion', 'Vesemir', 'Triss', 'Eskel'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which game''s hero, Commander Shepard, fights to save the galaxy from the Reapers?', NULL,
        'Mass Effect', ARRAY['Halo', 'Destiny', 'Star Wars: Knights of the Old Republic', 'Dead Space', 'Starfield', 'Anthem'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "Overwatch," what is the name of the gorilla scientist from the Moon?', NULL,
        'Winston', ARRAY['Harambe', 'Bastion', 'Torbjörn', 'Reinhardt', 'Wrecking Ball', 'Kong'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2008 game had players build creatures from a single cell up to space travel?', NULL,
        'Spore', ARRAY['Black & White', 'Evolution', 'Darwinia', 'E.V.O.', 'Creatures', 'SimEarth'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1980 dungeon game gave its name to a whole genre with random levels and permanent death?', NULL,
        'Rogue', ARRAY['NetHack', 'Adventure', 'Hack', 'Moria', 'Angband', 'Dungeon'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 1980 text adventure begins with the player "west of a white house"?', NULL,
        'Zork', ARRAY['Colossal Cave Adventure', 'Mystery House', 'The Hobbit', 'Planetfall', 'Hitchhiker''s Guide', 'Adventureland'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'In "The Legend of Zelda: Majora''s Mask," how many days do you get before the moon crashes?', NULL,
        'Three', ARRAY['One', 'Two', 'Five', 'Seven', 'Ten', 'Thirteen'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which composer wrote the music for the original "Super Mario Bros." and "The Legend of Zelda"?', NULL,
        'Koji Kondo', ARRAY['Yoko Shimomura', 'Koichi Sugiyama', 'Akira Yamaoka', 'Grant Kirkhope', 'David Wise', 'Yuzo Koshiro'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which composer wrote most of the music for the "Final Fantasy" series?', NULL,
        'Nobuo Uematsu', ARRAY['Koji Kondo', 'Yoko Shimomura', 'Koichi Sugiyama', 'Yasunori Mitsuda', 'Masashi Hamauzu', 'Hiroki Kikuta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which much-mocked 1982 game, with thousands of copies buried in a New Mexico landfill, became a symbol of the 1983 video game crash?', NULL,
        'E.T. the Extra-Terrestrial', ARRAY['Pac-Man for the 2600', 'Custer''s Revenge', 'Superman', 'Raiders of the Lost Ark', 'Swordquest', 'Pepsi Invaders'], 400, 'Digging up the landfill in 2014 proved the legend true: the cartridges really were there.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'What is the name of the silent test subject you play in "Portal"?', NULL,
        'Chell', ARRAY['Alyx', 'GLaDOS', 'Wheatley', 'Cave Johnson', 'Caroline', 'Atlas'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2005 game has a lone hero on horseback felling sixteen giant colossi?', NULL,
        'Shadow of the Colossus', ARRAY['Ico', 'The Last Guardian', 'Okami', 'God of War', 'Monster Hunter', 'Dragon''s Dogma'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which 2012 indie game has a robed traveler crossing a desert toward a glowing mountain, with strangers as silent companions?', NULL,
        'Journey', ARRAY['Flower', 'Abzû', 'Gris', 'Sky', 'Inside', 'Limbo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'VIDEO_GAMES', 'ORIGINAL', NULL,
        'Which space-pirate dragon is the recurring villain of the "Metroid" series?', NULL,
        'Ridley', ARRAY['Kraid', 'Mother Brain', 'Dark Samus', 'Serris', 'Phantoon', 'Draygon'], 400, NULL);

COMMIT;

-- Check: should return 120.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'VIDEO_GAMES';
