// src/config/database.js
import pg from 'pg';
import dotenv from 'dotenv';

dotenv.config();

const { Pool } = pg;

// Spin up a reusable connection pool to handle rapid player message traffic
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false // Required by Neon for encrypted database handshakes
  }
});

console.log('🔹 [Database] Cloud PostgreSQL pool initialized.');

export default pool;
