// seed.js
import pg from 'pg';
import dotenv from 'dotenv';

dotenv.config();

const { Client } = pg;

async function seed() {
  console.log('⏳ Re-connecting to Neon Cloud PostgreSQL to expand schema...');

  const client = new Client({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
  });

  try {
    await client.connect();
    // Drop the old basic table structure so we can build the upgraded version
    console.log('🧹 Dropping old table layout...');
    await client.query('DROP TABLE IF EXISTS questions;');

    // 1. Create the questions table with the agreed TRIVIA question shape.
    //    category/subcategory/faction are nullable so other polymorphic
    //    game_mode rows (FLAG, EMPOSSDURR, etc.) aren't forced to populate them.
    console.log('🔹 Building expanded table with category/subcategory/faction support...');
    await client.query(`
      CREATE TABLE IF NOT EXISTS questions (
        id SERIAL PRIMARY KEY,
        question_number INTEGER UNIQUE NOT NULL,
        game_mode TEXT NOT NULL DEFAULT 'TRIVIA', -- TRIVIA, FLAG, GEOGRAPHY, EMPOSSDURR
        category TEXT,                            -- e.g. WWII_HISTORY (maps to CAT_1/CAT_2/CAT_3 sub-decks)
        subcategory TEXT,                         -- PERSON / PLACE / THING / EVENT / DATE
        faction TEXT,                             -- ALLIED / AXIS (keeps distractors from being an easy "tell")
        question_text TEXT NOT NULL,
        visual_asset TEXT,                        -- Stores raw custom inline SVG markup text
        correct_answer TEXT NOT NULL,
        points INTEGER NOT NULL
      );
    `);

    // Clear old test rows to avoid column count mismatches
    await client.query('TRUNCATE TABLE questions;');

    // 2. Seed a real WWII trivia bank. Distractors are pulled at runtime from
    //    other rows sharing the same subcategory + faction, so each group needs
    //    enough peers to draw 3 distractors from (PERSON and EVENT groups below
    //    have 4-5 rows each; PLACE is intentionally thin for now and will need
    //    backfilling before it can support 4-choice questions on its own).
    console.log('🌱 Seeding WWII trivia questions into the cloud...');
    await client.query(`
      INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, points)
      VALUES
        -- PERSON / ALLIED
        (1, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which U.S. general commanded Allied forces during the D-Day invasion of Normandy?', NULL, 'Dwight D. Eisenhower', 100),
        (2, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Who served as British Prime Minister for most of World War II?', NULL, 'Winston Churchill', 100),
        (3, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which U.S. general famously said "I shall return" after leaving the Philippines?', NULL, 'Douglas MacArthur', 200),
        (4, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which aggressive U.S. general led the Third Army across France in 1944?', NULL, 'George Patton', 200),
        (5, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Who was the Soviet leader who led the USSR throughout World War II?', NULL, 'Joseph Stalin', 100),

        -- PERSON / AXIS
        (6, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who was the dictator of Nazi Germany during World War II?', NULL, 'Adolf Hitler', 100),
        (7, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Which German field marshal was nicknamed the "Desert Fox"?', NULL, 'Erwin Rommel', 200),
        (8, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who was the Prime Minister of Japan at the time of the attack on Pearl Harbor?', NULL, 'Hideki Tojo', 300),
        (9, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who served as Hitler''s Minister of Propaganda?', NULL, 'Joseph Goebbels', 300),
        (10, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Which Italian dictator led the Fascist regime allied with Nazi Germany?', NULL, 'Benito Mussolini', 100),

        -- EVENT / ALLIED
        (11, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'ALLIED', 'What was the codename for the Allied invasion of Normandy on June 6, 1944?', NULL, 'Operation Overlord', 200),
        (12, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'ALLIED', 'Which naval battle in June 1942 turned the tide of the Pacific War in the Allies'' favor?', NULL, 'Battle of Midway', 200),
        (13, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'ALLIED', 'What 1945 conference between the Allied leaders divided up post-war Europe?', NULL, 'Yalta Conference', 300),
        (14, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'ALLIED', 'What was the codename for the Allied invasion of Sicily in 1943?', NULL, 'Operation Husky', 300),

        -- EVENT / AXIS
        (15, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'AXIS', 'What was the codename for Germany''s 1941 invasion of the Soviet Union?', NULL, 'Operation Barbarossa', 200),
        (16, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'AXIS', 'What surprise attack on December 7, 1941 brought the United States into World War II?', NULL, 'Attack on Pearl Harbor', 100),
        (17, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'AXIS', 'What was Germany''s rapid war strategy of fast, concentrated armored attacks called?', NULL, 'Blitzkrieg', 100),
        (18, 'TRIVIA', 'WWII_HISTORY', 'EVENT', 'AXIS', 'What is the name of the German 1940 campaign that led to France''s surrender in six weeks?', NULL, 'Fall of France', 300),

        -- PLACE (thin pools for now)
        (19, 'TRIVIA', 'WWII_HISTORY', 'PLACE', 'ALLIED', 'Which French region served as the primary landing site for Allied troops on D-Day?', NULL, 'Normandy', 100),
        (20, 'TRIVIA', 'WWII_HISTORY', 'PLACE', 'AXIS', 'What was the capital city of Nazi Germany?', NULL, 'Berlin', 100),

        -- PERSON / ALLIED (round 2 -- deepens the pool so a 4-choice question has real distractor depth)
        (21, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Who was President of the United States for most of World War II, dying in office in April 1945?', NULL, 'Franklin D. Roosevelt', 100),
        (22, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which French general led the Free French Forces from exile in London?', NULL, 'Charles de Gaulle', 200),
        (23, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which British field marshal commanded the Allied victory at El Alamein?', NULL, 'Bernard Montgomery', 200),
        (24, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which U.S. admiral commanded the Pacific Fleet for most of the war?', NULL, 'Chester Nimitz', 200),
        (25, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which U.S. Army Chief of Staff later devised the postwar European recovery plan bearing his name?', NULL, 'George Marshall', 300),
        (26, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'ALLIED', 'Which Soviet marshal led the Red Army''s defense of Moscow and the capture of Berlin?', NULL, 'Georgy Zhukov', 300),

        -- PERSON / AXIS (round 2)
        (27, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who commanded the German Luftwaffe throughout World War II?', NULL, 'Hermann Goering', 200),
        (28, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who led the SS and organized the Nazi regime''s system of concentration camps?', NULL, 'Heinrich Himmler', 200),
        (29, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Which Japanese admiral planned the attack on Pearl Harbor?', NULL, 'Isoroku Yamamoto', 200),
        (30, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Which German admiral commanded the U-boat fleet and briefly succeeded Hitler as head of state?', NULL, 'Karl Doenitz', 300),
        (31, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who was the Emperor of Japan throughout World War II?', NULL, 'Hirohito', 100),
        (32, 'TRIVIA', 'WWII_HISTORY', 'PERSON', 'AXIS', 'Who served as Nazi Germany''s Minister of Armaments and War Production?', NULL, 'Albert Speer', 300);
    `);

    // 3. Seed the 5 new main trivia categories (WWII_HISTORY's the 6th, seeded
    //    above). Each gets 3 subcategory/faction groups of 4 questions apiece --
    //    "faction" isn't literal here like WWII's ALLIED/AXIS, it's just a second
    //    grouping axis so a category can offer more than one distractor pool
    //    (e.g. CAPITALS splits into world/US-state/org-HQ questions). Placeholder
    //    content per the phased plan -- broader per-category content comes later.
    console.log('🌱 Seeding placeholder content for the 5 new main categories...');
    await client.query(`
      INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, points)
      VALUES
        -- PRIMARY_SCHOOL / PERSON / HISTORICAL
        (33, 'TRIVIA', 'PRIMARY_SCHOOL', 'PERSON', 'HISTORICAL', 'Who was the first President of the United States?', NULL, 'George Washington', 100),
        (34, 'TRIVIA', 'PRIMARY_SCHOOL', 'PERSON', 'HISTORICAL', 'Which civil rights leader delivered the "I Have a Dream" speech?', NULL, 'Martin Luther King Jr.', 100),
        (35, 'TRIVIA', 'PRIMARY_SCHOOL', 'PERSON', 'HISTORICAL', 'Which inventor is commonly credited with inventing the light bulb?', NULL, 'Thomas Edison', 100),
        (36, 'TRIVIA', 'PRIMARY_SCHOOL', 'PERSON', 'HISTORICAL', 'Which explorer is credited with reaching the Americas in 1492?', NULL, 'Christopher Columbus', 100),

        -- PRIMARY_SCHOOL / THING / SCIENCE_BASICS
        (37, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'SCIENCE_BASICS', 'What gas do plants absorb from the air to make their food?', NULL, 'Carbon Dioxide', 100),
        (38, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'SCIENCE_BASICS', 'How many planets are in our solar system?', NULL, 'Eight', 100),
        (39, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'SCIENCE_BASICS', 'What is the closest star to Earth?', NULL, 'The Sun', 100),
        (40, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'SCIENCE_BASICS', 'Which state of matter has no fixed shape and no fixed volume?', NULL, 'Gas', 100),

        -- PRIMARY_SCHOOL / THING / MATH_BASICS
        (41, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'MATH_BASICS', 'How many sides does a hexagon have?', NULL, 'Six', 100),
        (42, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'MATH_BASICS', 'What is the sum of the interior angles in a triangle?', NULL, '180 degrees', 100),
        (43, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'MATH_BASICS', 'What do you call a number that can only be divided evenly by 1 and itself?', NULL, 'Prime number', 200),
        (44, 'TRIVIA', 'PRIMARY_SCHOOL', 'THING', 'MATH_BASICS', 'What is 7 multiplied by 8?', NULL, '56', 100),

        -- POP_CULTURE / PERSON / MUSIC
        (45, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MUSIC', 'Which artist is known as the "King of Pop"?', NULL, 'Michael Jackson', 100),
        (46, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MUSIC', 'Which British rock band recorded the album "Abbey Road"?', NULL, 'The Beatles', 100),
        (47, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MUSIC', 'Which pop star released the albums "1989" and "Lover"?', NULL, 'Taylor Swift', 100),
        (48, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MUSIC', 'Which singer is known for the hit song "Rolling in the Deep"?', NULL, 'Adele', 200),

        -- POP_CULTURE / PERSON / MOVIES
        (49, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MOVIES', 'Which actor played Iron Man in the Marvel Cinematic Universe?', NULL, 'Robert Downey Jr.', 100),
        (50, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MOVIES', 'Who directed the original 1977 "Star Wars" film?', NULL, 'George Lucas', 200),
        (51, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MOVIES', 'Which actress played Hermione Granger in the Harry Potter films?', NULL, 'Emma Watson', 100),
        (52, 'TRIVIA', 'POP_CULTURE', 'PERSON', 'MOVIES', 'Who directed the 1975 film "Jaws"?', NULL, 'Steven Spielberg', 200),

        -- POP_CULTURE / THING / MOVIES
        (53, 'TRIVIA', 'POP_CULTURE', 'THING', 'MOVIES', 'Which 1997 film about a shipwreck starred Leonardo DiCaprio and Kate Winslet?', NULL, 'Titanic', 100),
        (54, 'TRIVIA', 'POP_CULTURE', 'THING', 'MOVIES', 'Which 1994 animated Disney film features the song "Circle of Life"?', NULL, 'The Lion King', 100),
        (55, 'TRIVIA', 'POP_CULTURE', 'THING', 'MOVIES', 'Which animation studio produced the "Toy Story" film franchise?', NULL, 'Pixar', 100),
        (56, 'TRIVIA', 'POP_CULTURE', 'THING', 'MOVIES', 'What footwear does Dorothy click together to return home in "The Wizard of Oz"?', NULL, 'Ruby slippers', 200),

        -- SCIENCE / THING / BIOLOGY
        (57, 'TRIVIA', 'SCIENCE', 'THING', 'BIOLOGY', 'What is commonly called the "powerhouse of the cell"?', NULL, 'Mitochondria', 200),
        (58, 'TRIVIA', 'SCIENCE', 'THING', 'BIOLOGY', 'What gas do humans need to breathe in to survive?', NULL, 'Oxygen', 100),
        (59, 'TRIVIA', 'SCIENCE', 'THING', 'BIOLOGY', 'What is the largest organ in the human body?', NULL, 'Skin', 100),
        (60, 'TRIVIA', 'SCIENCE', 'THING', 'BIOLOGY', 'How many chambers does the human heart have?', NULL, 'Four', 100),

        -- SCIENCE / THING / PHYSICS
        (61, 'TRIVIA', 'SCIENCE', 'THING', 'PHYSICS', 'What force pulls objects toward the center of the Earth?', NULL, 'Gravity', 100),
        (62, 'TRIVIA', 'SCIENCE', 'THING', 'PHYSICS', 'What is the chemical symbol for water?', NULL, 'H2O', 100),
        (63, 'TRIVIA', 'SCIENCE', 'THING', 'PHYSICS', 'At what temperature, in Celsius, does water freeze?', NULL, '0 degrees Celsius', 100),
        (64, 'TRIVIA', 'SCIENCE', 'THING', 'PHYSICS', 'Which travels faster: light or sound?', NULL, 'Light', 100),

        -- SCIENCE / PERSON / SCIENTISTS
        (65, 'TRIVIA', 'SCIENCE', 'PERSON', 'SCIENTISTS', 'Which scientist developed the theory of general relativity?', NULL, 'Albert Einstein', 100),
        (66, 'TRIVIA', 'SCIENCE', 'PERSON', 'SCIENTISTS', 'Which scientist is known for his laws of motion and universal gravitation?', NULL, 'Isaac Newton', 200),
        (67, 'TRIVIA', 'SCIENCE', 'PERSON', 'SCIENTISTS', 'Which scientist discovered penicillin?', NULL, 'Alexander Fleming', 200),
        (68, 'TRIVIA', 'SCIENCE', 'PERSON', 'SCIENTISTS', 'Which naturalist proposed the theory of evolution by natural selection?', NULL, 'Charles Darwin', 200),

        -- CAPITALS / PLACE / WORLD
        (69, 'TRIVIA', 'CAPITALS', 'PLACE', 'WORLD', 'What is the capital of France?', NULL, 'Paris', 100),
        (70, 'TRIVIA', 'CAPITALS', 'PLACE', 'WORLD', 'What is the capital of Japan?', NULL, 'Tokyo', 100),
        (71, 'TRIVIA', 'CAPITALS', 'PLACE', 'WORLD', 'What is the capital of Australia?', NULL, 'Canberra', 200),
        (72, 'TRIVIA', 'CAPITALS', 'PLACE', 'WORLD', 'What is the capital of Canada?', NULL, 'Ottawa', 100),

        -- CAPITALS / PLACE / US_STATE
        (73, 'TRIVIA', 'CAPITALS', 'PLACE', 'US_STATE', 'What is the capital of California?', NULL, 'Sacramento', 200),
        (74, 'TRIVIA', 'CAPITALS', 'PLACE', 'US_STATE', 'What is the capital of Texas?', NULL, 'Austin', 100),
        (75, 'TRIVIA', 'CAPITALS', 'PLACE', 'US_STATE', 'What is the capital of New York State?', NULL, 'Albany', 200),
        (76, 'TRIVIA', 'CAPITALS', 'PLACE', 'US_STATE', 'What is the capital of Florida?', NULL, 'Tallahassee', 200),

        -- CAPITALS / PLACE / ORGANIZATION
        (77, 'TRIVIA', 'CAPITALS', 'PLACE', 'ORGANIZATION', 'Which U.S. city hosts the headquarters of the United Nations?', NULL, 'New York City', 100),
        (78, 'TRIVIA', 'CAPITALS', 'PLACE', 'ORGANIZATION', 'Which Belgian city serves as the de facto capital of the European Union?', NULL, 'Brussels', 200),
        (79, 'TRIVIA', 'CAPITALS', 'PLACE', 'ORGANIZATION', 'Which Dutch city hosts the International Court of Justice?', NULL, 'The Hague', 300),
        (80, 'TRIVIA', 'CAPITALS', 'PLACE', 'ORGANIZATION', 'Which Swiss city hosts the headquarters of the International Red Cross?', NULL, 'Geneva', 300),

        -- GEOGRAPHY / PLACE / PHYSICAL
        (81, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'PHYSICAL', 'What is the longest river in the world?', NULL, 'The Nile', 100),
        (82, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'PHYSICAL', 'What is the tallest mountain in the world?', NULL, 'Mount Everest', 100),
        (83, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'PHYSICAL', 'What is the largest ocean on Earth?', NULL, 'The Pacific Ocean', 100),
        (84, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'PHYSICAL', 'What is the largest hot desert in the world?', NULL, 'The Sahara', 200),

        -- GEOGRAPHY / PLACE / POLITICAL
        (85, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'POLITICAL', 'Which is the largest country in the world by land area?', NULL, 'Russia', 100),
        (86, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'POLITICAL', 'Which continent is Egypt located on?', NULL, 'Africa', 100),
        (87, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'POLITICAL', 'Which country has the largest population in the world?', NULL, 'India', 200),
        (88, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'POLITICAL', 'How many continents are there?', NULL, 'Seven', 100),

        -- GEOGRAPHY / PLACE / LANDMARKS
        (89, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'LANDMARKS', 'In which country is the Great Barrier Reef located?', NULL, 'Australia', 100),
        (90, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'LANDMARKS', 'In which country would you find the Great Wall?', NULL, 'China', 100),
        (91, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'LANDMARKS', 'In which city would you find the Eiffel Tower?', NULL, 'Paris', 100),
        (92, 'TRIVIA', 'GEOGRAPHY', 'PLACE', 'LANDMARKS', 'In which country would you find Machu Picchu?', NULL, 'Peru', 200);
    `);

    console.log('✅ [Database] Cloud schema expanded, WWII bank, and 5 new main categories seeded!');
  } catch (error) {
    console.error('❌ Schema expansion failed:', error.message);
  } finally {
    await client.end();
    process.exit(0);
  }
}

seed();
