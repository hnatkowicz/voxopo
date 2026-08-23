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

    // 1. Create or alter the questions table with polymorphism support
    console.log('🔹 Building expanded table with game_mode and visual_asset support...');
    await client.query(`
      CREATE TABLE IF NOT EXISTS questions (
        id SERIAL PRIMARY KEY,
        question_number INTEGER UNIQUE NOT NULL,
        game_mode TEXT NOT NULL DEFAULT 'TRIVIA', -- TRIVIA, FLAG, GEOGRAPHY, EMPOSSDURR
        question_text TEXT NOT NULL,
        visual_asset TEXT,                        -- Stores raw custom inline SVG markup text
        correct_answer TEXT NOT NULL,
        points INTEGER NOT NULL
      );
    `);

    // Clear old test rows to avoid column count mismatches
    await client.query('TRUNCATE TABLE questions;');

    // Mock SVG string for testing (A clean, scalable blue square placeholder representing an asset)
    const testSvgFlag = `<svg viewBox="0 0 100 100" width="150" height="150" style="margin:20px auto; display:block;"><rect width="100" height="100" fill="#00e676" rx="10"/></svg>`;

    // 2. Insert diverse test questions for each mode
    console.log('🌱 Seeding polymorphic game modes into the cloud...');
    await client.query(`
      INSERT INTO questions (question_number, game_mode, question_text, visual_asset, correct_answer, points)
      VALUES 
        (1, 'TRIVIA', 'What is the only mammal capable of true flight?', NULL, 'Bat', 100),
        (2, 'FLAG', 'Which nation handles this visual vector color block arrangement?', $1, 'Voxopo', 200),
        (3, 'EMPOSSDURR', 'Decrypt this character block prompt configuration string!', NULL, 'Secret', 150);
    `, [testSvgFlag]); // Safely passes the giant SVG string text parameter into the $1 bucket

    console.log('✅ [Database] Cloud schema expanded and polymorphic rows seeded!');
  } catch (error) {
    console.error('❌ Schema expansion failed:', error.message);
  } finally {
    await client.end();
    process.exit(0);
  }
}

seed();
