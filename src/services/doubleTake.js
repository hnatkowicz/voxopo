// Double Take photo pairs (Randy, Nov 2026; the mode itself isn't built yet).
//
// The photos are files in the repo, public/double-take/<name>-original.webp
// and <name>-altered.webp, uploaded through GitHub like every other picture
// (Render's disk is wiped on each deploy, so uploading to the site wouldn't
// keep them). /admin/double-take finds the differences in the browser and
// saves only the boxes around them here (double_take.sql). Nothing about
// players.
import fs from 'fs';
import path from 'path';
import pool from '../config/database.js';

export const DOUBLE_TAKE_DIR = path.resolve('public/double-take');
export const DOUBLE_TAKE_WIDTH = 1600;
export const DOUBLE_TAKE_HEIGHT = 1200;
const MAX_SPOTS = 12;
const NAME_RE = /^[a-z0-9][a-z0-9_-]{0,60}$/;

// Every <name>-original.webp with a matching -altered.webp, plus any file
// that doesn't pair up (a typo in a name, a JPEG), so /admin can say so.
export function listPhotoPairs() {
    let files = [];
    try { files = fs.readdirSync(DOUBLE_TAKE_DIR); } catch { return { pairs: [], strays: [] }; }
    const visible = files.filter(f => !f.startsWith('.'));
    const pairs = [];
    const used = new Set();
    visible.forEach(f => {
        const m = f.match(/^(.+)-original\.webp$/);
        if (!m || !visible.includes(`${m[1]}-altered.webp`) || !NAME_RE.test(m[1])) return;
        pairs.push(m[1]);
        used.add(f).add(`${m[1]}-altered.webp`);
    });
    return { pairs: pairs.sort(), strays: visible.filter(f => !used.has(f)).sort() };
}

export async function readSavedPairs() {
    const result = await pool.query('SELECT name, spots, ready, updated_at FROM double_take_photos');
    const saved = {};
    result.rows.forEach(r => { saved[r.name] = { spots: r.spots || [], ready: r.ready, updatedAt: r.updated_at }; });
    return saved;
}

// Whole pixels inside the photo, at least 4 px a side; null if it's garbage.
function cleanSpot(s) {
    if (!s || typeof s !== 'object') return null;
    let x = Math.round(Number(s.x)), y = Math.round(Number(s.y));
    let w = Math.round(Number(s.w)), h = Math.round(Number(s.h));
    if (![x, y, w, h].every(Number.isFinite)) return null;
    x = Math.max(0, Math.min(DOUBLE_TAKE_WIDTH - 4, x));
    y = Math.max(0, Math.min(DOUBLE_TAKE_HEIGHT - 4, y));
    w = Math.max(4, Math.min(DOUBLE_TAKE_WIDTH - x, w));
    h = Math.max(4, Math.min(DOUBLE_TAKE_HEIGHT - y, h));
    return { x, y, w, h };
}

// Returns false for a name that isn't a pair on disk.
export async function savePairSpots(name, spots, ready) {
    if (!NAME_RE.test(String(name)) || !listPhotoPairs().pairs.includes(name)) return false;
    const clean = (Array.isArray(spots) ? spots : []).slice(0, MAX_SPOTS).map(cleanSpot).filter(Boolean);
    await pool.query(
        `INSERT INTO double_take_photos (name, spots, ready, updated_at)
         VALUES ($1, $2::jsonb, $3, now())
         ON CONFLICT (name) DO UPDATE SET spots = EXCLUDED.spots, ready = EXCLUDED.ready, updated_at = now()`,
        [name, JSON.stringify(clean), !!ready]
    );
    return true;
}
