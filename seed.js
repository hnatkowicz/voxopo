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

    console.log('✅ [Database] Cloud schema expanded and WWII trivia bank seeded!');
  } catch (error) {
    console.error('❌ Schema expansion failed:', error.message);
  } finally {
    await client.end();
    process.exit(0);
  }
}

seed();
