import crypto from 'crypto';

// Opaque, server-checked session tokens rather than JWTs -- this app already
// keeps all its live state (activeRooms) in plain memory with no persistence
// promise across restarts, so a Set of valid tokens fits the same pattern
// instead of pulling in a signing library for two small cookies.
const hostSessions = new Set();
const adminSessions = new Set();

const HOST_SESSION_MAX_AGE_SECONDS = 12 * 60 * 60; // covers "one night" without asking again
const ADMIN_SESSION_MAX_AGE_SECONDS = 30 * 24 * 60 * 60; // trusted single operator, low friction

// Five failed guesses per IP within 15 minutes, then locked out -- the admin
// password is the one credential that can mint unlimited free access codes,
// so it's worth a floor even though this is a single-operator tool.
const ADMIN_RATE_LIMIT_MAX_ATTEMPTS = 5;
const ADMIN_RATE_LIMIT_WINDOW_MS = 15 * 60 * 1000;
const adminLoginAttempts = new Map(); // ip -> { count, windowStart }

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

export function grantHostSession(res, req) {
    const token = createSessionToken();
    hostSessions.add(token);
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
    const entry = adminLoginAttempts.get(ip);
    if (!entry) return false;
    if (Date.now() - entry.windowStart > ADMIN_RATE_LIMIT_WINDOW_MS) {
        adminLoginAttempts.delete(ip);
        return false;
    }
    return entry.count >= ADMIN_RATE_LIMIT_MAX_ATTEMPTS;
}

export function recordFailedAdminLogin(ip) {
    const entry = adminLoginAttempts.get(ip);
    if (!entry || Date.now() - entry.windowStart > ADMIN_RATE_LIMIT_WINDOW_MS) {
        adminLoginAttempts.set(ip, { count: 1, windowStart: Date.now() });
    } else {
        entry.count += 1;
    }
}

export function clearAdminLoginAttempts(ip) {
    adminLoginAttempts.delete(ip);
}

export async function isAccessCodeActive(pool, rawCode) {
    const code = normalizeCode(rawCode);
    if (!code) return false;
    const result = await pool.query('SELECT active FROM access_codes WHERE code = $1', [code]);
    return result.rows.length > 0 && result.rows[0].active === true;
}

export async function listAccessCodes(pool) {
    const result = await pool.query('SELECT code, label, active, created_at FROM access_codes ORDER BY created_at DESC');
    return result.rows;
}

export async function addAccessCode(pool, rawCode, label) {
    const code = normalizeCode(rawCode);
    await pool.query('INSERT INTO access_codes (code, label) VALUES ($1, $2)', [code, label || null]);
}

export async function setAccessCodeActive(pool, rawCode, active) {
    const code = normalizeCode(rawCode);
    await pool.query('UPDATE access_codes SET active = $1 WHERE code = $2', [active, code]);
}
