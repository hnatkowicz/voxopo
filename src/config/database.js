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
  },
  // Give up on a connection after 10s (Nov 2026 resilience work). pg's
  // default is to wait forever, so with the database unreachable a host
  // login or a game start would hang instead of saying something.
  connectionTimeoutMillis: 10000
});

// An idle connection that breaks (Neon restarts, the network blips) is
// reported here. Without a listener it would be an uncaught error.
pool.on('error', (error) => {
  console.error('⚠️ [Database] Idle connection dropped:', error.message);
});

console.log('🔹 [Database] Cloud PostgreSQL pool initialized.');

// "The database can't be reached" as opposed to a bug in a query: network
// errors, connect timeouts, and Postgres's own connection-class (08xxx),
// shutdown (57P0x) and too-many-connections (53300) codes. Used to show a
// plain message instead of "Something went wrong", and so an outage isn't
// counted against a room as if the room were broken.
const NETWORK_CODES = new Set(['ECONNREFUSED', 'ECONNRESET', 'ENOTFOUND', 'EAI_AGAIN', 'ETIMEDOUT', 'EHOSTUNREACH', 'ENETUNREACH', 'EPIPE']);
export function isDatabaseDownError(error) {
  if (!error) return false;
  const code = String(error.code || '');
  if (NETWORK_CODES.has(code) || code.startsWith('08') || code.startsWith('57P0') || code === '53300') return true;
  return /timeout exceeded when trying to connect|Connection terminated|connect ETIMEDOUT|getaddrinfo/i.test(String(error.message || ''));
}

// The TV's line when a game can't start for that reason.
export const DATABASE_DOWN_MESSAGE = "Couldn't reach the questions. Back to the lobby. Try again in a minute.";

export default pool;
