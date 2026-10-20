import crypto from 'crypto';

// Opaque, server-checked session tokens rather than JWTs -- this app already
// keeps all its live state (activeRooms) in plain memory with no persistence
// promise across restarts, so a Set of valid tokens fits the same pattern
// instead of pulling in a signing library for two small cookies.
// token -> the access code that opened it, so every room a host opens that
// night gets that code's venue profile (pub name, logo, allowed modes).
const hostSessions = new Map();
const adminSessions = new Set();

const HOST_SESSION_MAX_AGE_SECONDS = 12 * 60 * 60; // covers "one night" without asking again
const ADMIN_SESSION_MAX_AGE_SECONDS = 30 * 24 * 60 * 60; // trusted single operator, low friction

// Five failed guesses per IP within 15 minutes, then locked out. Shared by
// both the admin password (the one credential that can mint unlimited free
// access codes) and room-creation access codes (a short code like a bare
// 4-digit number is otherwise brute-forceable in a few thousand guesses with
// nothing standing in the way, once it isn't behind a login form).
const RATE_LIMIT_MAX_ATTEMPTS = 5;
const RATE_LIMIT_WINDOW_MS = 15 * 60 * 1000;

function createRateLimiter() {
    const attempts = new Map(); // ip -> { count, windowStart }
    return {
        isLimited(ip) {
            const entry = attempts.get(ip);
            if (!entry) return false;
            if (Date.now() - entry.windowStart > RATE_LIMIT_WINDOW_MS) {
                attempts.delete(ip);
                return false;
            }
            return entry.count >= RATE_LIMIT_MAX_ATTEMPTS;
        },
        recordFailure(ip) {
            const entry = attempts.get(ip);
            if (!entry || Date.now() - entry.windowStart > RATE_LIMIT_WINDOW_MS) {
                attempts.set(ip, { count: 1, windowStart: Date.now() });
            } else {
                entry.count += 1;
            }
        },
        clear(ip) {
            attempts.delete(ip);
        }
    };
}

const adminLoginLimiter = createRateLimiter();
const roomCreateLimiter = createRateLimiter();

export function normalizeCode(raw) {
    return (raw || '').toString().trim().toUpperCase();
}

export function createSessionToken() {
    return crypto.randomBytes(24).toString('hex');
}

export function parseCookies(req) {
    const header = req.headers.cookie;
    const out = {};
    if (!header) return out;
    header.split(';').forEach(pair => {
        const idx = pair.indexOf('=');
        if (idx === -1) return;
        const key = pair.slice(0, idx).trim();
        const value = pair.slice(idx + 1).trim();
        if (key) out[key] = decodeURIComponent(value);
    });
    return out;
}

// Secure flag is conditional on the request actually being HTTPS -- with
// `app.set('trust proxy', 1)` in server.js, req.secure reflects the real
// client protocol behind Render's proxy. Omitting it in local/http dev is
// required, not optional: browsers silently drop Secure cookies over plain
// http://localhost, which would otherwise break every local Playwright test.
export function setCookie(res, req, name, value, maxAgeSeconds) {
    const parts = [
        `${name}=${encodeURIComponent(value)}`,
        'Path=/',
        'HttpOnly',
        'SameSite=Lax',
        `Max-Age=${maxAgeSeconds}`
    ];
    if (req.secure) parts.push('Secure');
    res.append('Set-Cookie', parts.join('; '));
}

export function isHostAuthorized(req) {
    const cookies = parseCookies(req);
    return !!(cookies.host_session && hostSessions.has(cookies.host_session));
}

// The access code behind this host's session (null if none).
export function hostSessionCode(req) {
    const cookies = parseCookies(req);
    return (cookies.host_session && hostSessions.get(cookies.host_session)) || null;
}

export function grantHostSession(res, req, code) {
    const token = createSessionToken();
    hostSessions.set(token, normalizeCode(code) || null);
    setCookie(res, req, 'host_session', token, HOST_SESSION_MAX_AGE_SECONDS);
}

export function isAdminAuthorized(req) {
    const cookies = parseCookies(req);
    return !!(cookies.admin_session && adminSessions.has(cookies.admin_session));
}

export function grantAdminSession(res, req) {
    const token = createSessionToken();
    adminSessions.add(token);
    setCookie(res, req, 'admin_session', token, ADMIN_SESSION_MAX_AGE_SECONDS);
}

export function isAdminLoginRateLimited(ip) {
    return adminLoginLimiter.isLimited(ip);
}

export function recordFailedAdminLogin(ip) {
    adminLoginLimiter.recordFailure(ip);
}

export function clearAdminLoginAttempts(ip) {
    adminLoginLimiter.clear(ip);
}

export function isRoomCreateRateLimited(ip) {
    return roomCreateLimiter.isLimited(ip);
}

export function recordFailedRoomCreateAttempt(ip) {
    roomCreateLimiter.recordFailure(ip);
}

export function clearRoomCreateAttempts(ip) {
    roomCreateLimiter.clear(ip);
}

export async function isAccessCodeActive(pool, rawCode) {
    const code = normalizeCode(rawCode);
    if (!code) return false;
    const result = await pool.query('SELECT active FROM access_codes WHERE code = $1', [code]);
    return result.rows.length > 0 && result.rows[0].active === true;
}

// ---------- Venue profiles (access_codes_venue_profiles.sql) ----------
// Everything here still works before that SQL has been run: a missing column
// (Postgres error 42703) just means "no venue profiles yet", so every code
// behaves as HOME with all modes, and /admin says the SQL is needed.
const UNDEFINED_COLUMN = '42703';
export const VENUE_PROFILES = ['HOME', 'PUB'];
// House column (access_codes_house_column.sql): the code's own questions as
// the left column of the Thinking Pants board, in rounds 1 & 3 or all 3.
export const HOUSE_ROUNDS = ['OFF', 'ROUNDS_1_3', 'ALL'];
// Thinking Pants board rules (access_codes_board_rules.sql): PLAIN turns off
// column sweeps and the traps they earn.
export const BOARD_RULES = ['CLASSIC', 'PLAIN'];
// House sets are named HOUSE_<something> so a code can never point its
// house column at an ordinary category.
const HOUSE_CATEGORY_PATTERN = /^HOUSE_[A-Z0-9_]{1,40}$/;
const VENUE_LOGO_PATTERN = /^[A-Za-z0-9][A-Za-z0-9._-]*\.(svg|png|webp|jpg|jpeg)$/;

// Cleans what /admin sends (never trusted as-is): a known profile, short
// text, a plain file name in public/venues/, and only real mode keys.
export function sanitizeVenue(input, knownModes) {
    const v = input || {};
    const profile = VENUE_PROFILES.includes(v.profile) ? v.profile : 'HOME';
    const text = (value, max) => ((value || '').toString().trim().slice(0, max)) || null;
    const logo = text(v.logo, 80);
    const modes = Array.isArray(v.allowedModes) ? v.allowedModes.filter(m => knownModes.includes(m)) : [];
    const houseCategory = (text(v.houseCategory, 46) || '').toUpperCase();
    const houseValid = HOUSE_CATEGORY_PATTERN.test(houseCategory);
    return {
        profile,
        name: text(v.name, 40),
        tagline: text(v.tagline, 80),
        logo: logo && VENUE_LOGO_PATTERN.test(logo) ? logo : null,
        allowedModes: [...new Set(modes)],
        houseCategory: houseValid ? houseCategory : null,
        houseLabel: text(v.houseLabel, 40),
        // No (valid) house set means nothing to show, whatever was picked.
        houseRounds: houseValid && HOUSE_ROUNDS.includes(v.houseRounds) ? v.houseRounds : 'OFF',
        boardRules: BOARD_RULES.includes(v.boardRules) ? v.boardRules : 'CLASSIC'
    };
}

export async function boardRulesInstalled(pool) {
    try {
        await pool.query('SELECT board_rules FROM access_codes LIMIT 1');
        return true;
    } catch (e) {
        if (e.code === UNDEFINED_COLUMN) return false;
        throw e;
    }
}

// Every house set in the database with its questions per tier, so /admin can
// suggest real names and flag a typo (a misspelled set silently means a
// normal board -- Randy hit exactly that with HOUSE_PICKELS_PINS).
export async function listHouseSets(pool) {
    const result = await pool.query(
        `SELECT category, points, COUNT(*)::int AS n FROM questions
         WHERE game_mode = 'TRIVI_YEAH_II' AND category LIKE 'HOUSE\\_%'
         GROUP BY category, points ORDER BY category, points`
    );
    const sets = {};
    result.rows.forEach(r => {
        sets[r.category] = sets[r.category] || { key: r.category, total: 0, tiers: {} };
        sets[r.category].tiers[r.points] = r.n;
        sets[r.category].total += r.n;
    });
    return Object.values(sets).map(set => ({ ...set, complete: [100, 200, 300, 400].every(t => set.tiers[t] > 0) }));
}

export async function houseColumnInstalled(pool) {
    try {
        await pool.query('SELECT house_rounds FROM access_codes LIMIT 1');
        return true;
    } catch (e) {
        if (e.code === UNDEFINED_COLUMN) return false;
        throw e;
    }
}

export async function venueProfilesInstalled(pool) {
    try {
        await pool.query('SELECT profile FROM access_codes LIMIT 1');
        return true;
    } catch (e) {
        if (e.code === UNDEFINED_COLUMN) return false;
        throw e;
    }
}

// The venue settings a room opened with this code should carry, or null for
// a plain home code (the living-room version, every mode).
export async function getAccessCodeVenue(pool, rawCode) {
    const code = normalizeCode(rawCode);
    if (!code) return null;
    const base = 'profile, venue_name, venue_tagline, venue_logo, allowed_modes';
    // Newest columns first; fall back step by step for whichever SQL files
    // haven't been run yet.
    const houseCols = 'house_category, house_label, house_rounds';
    for (const columns of [`${base}, ${houseCols}, board_rules`, `${base}, ${houseCols}`, `${base}, board_rules`, base]) {
        try {
            const result = await pool.query(`SELECT ${columns} FROM access_codes WHERE code = $1 AND active = true`, [code]);
            const row = result.rows[0];
            if (!row) return null;
            const allowedModes = row.allowed_modes || [];
            const house = row.house_category && row.house_rounds && row.house_rounds !== 'OFF'
                ? { key: row.house_category, label: row.house_label || row.venue_name || 'House Special', rounds: row.house_rounds }
                : null;
            // The code's house questions, whether or not they're also a
            // Thinking Pants column: they ARE Trivi-yeah!, the venue's own
            // game (Randy, Oct 2026). No set, no Trivi-yeah!.
            const houseSet = row.house_category && HOUSE_CATEGORY_PATTERN.test(row.house_category)
                ? { key: row.house_category, label: row.house_label || row.venue_name || 'House Special' }
                : null;
            const boardRules = row.board_rules === 'PLAIN' ? 'PLAIN' : 'CLASSIC';
            if (row.profile !== 'PUB' && !allowedModes.length && !house && !houseSet && boardRules === 'CLASSIC') return null;
            return {
                profile: row.profile === 'PUB' ? 'PUB' : 'HOME',
                name: row.venue_name || null,
                tagline: row.venue_tagline || null,
                logoUrl: row.venue_logo ? `/venues/${row.venue_logo}` : null,
                allowedModes,
                house,
                houseSet,
                boardRules
            };
        } catch (e) {
            if (e.code !== UNDEFINED_COLUMN) throw e;
        }
    }
    return null;
}

export async function listAccessCodes(pool) {
    const base = 'code, label, active, created_at';
    const venue = 'profile, venue_name, venue_tagline, venue_logo, allowed_modes';
    const houseCols = 'house_category, house_label, house_rounds';
    for (const columns of [`${base}, ${venue}, ${houseCols}, board_rules`, `${base}, ${venue}, ${houseCols}`, `${base}, ${venue}, board_rules`, `${base}, ${venue}`, base]) {
        try {
            const result = await pool.query(`SELECT ${columns} FROM access_codes ORDER BY created_at DESC`);
            return result.rows;
        } catch (e) {
            if (e.code !== UNDEFINED_COLUMN) throw e;
        }
    }
    return [];
}

export async function addAccessCode(pool, rawCode, label) {
    const code = normalizeCode(rawCode);
    await pool.query('INSERT INTO access_codes (code, label) VALUES ($1, $2)', [code, label || null]);
}

// venue is already sanitized (sanitizeVenue). Returns false if no such code.
// The house settings are only written once their columns exist.
export async function updateAccessCodeVenue(pool, rawCode, venue, withHouse, withRules) {
    const code = normalizeCode(rawCode);
    const params = [code, venue.profile, venue.name, venue.tagline, venue.logo, venue.allowedModes.length ? venue.allowedModes : null];
    let sql = 'UPDATE access_codes SET profile = $2, venue_name = $3, venue_tagline = $4, venue_logo = $5, allowed_modes = $6';
    if (withHouse) {
        sql += ', house_category = $7, house_label = $8, house_rounds = $9';
        params.push(venue.houseCategory, venue.houseLabel, venue.houseRounds);
    }
    if (withRules) {
        params.push(venue.boardRules);
        sql += `, board_rules = $${params.length}`;
    }
    const result = await pool.query(`${sql} WHERE code = $1`, params);
    return result.rowCount > 0;
}

export async function setAccessCodeActive(pool, rawCode, active) {
    const code = normalizeCode(rawCode);
    await pool.query('UPDATE access_codes SET active = $1 WHERE code = $2', [active, code]);
}
