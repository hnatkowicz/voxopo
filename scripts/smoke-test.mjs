// Bot smoke test: every mode played start to finish by bots, all at once.
//
// Why (Nov 2026): there's no test suite, and a change to one mode could
// quietly break another that nobody touched. This plays one room per mode
// at the same time, sped up, through the real server and engine, and fails
// if any room breaks, gets stuck, or never reaches Game Over. Run it before
// every merge that touches the engine.
//
// It also forces the screens real games rarely reach: the Thinking Pants
// traps (one bot answers everything right, so it sweeps columns alone and
// hides Pants on Fire, Hot Seat and Wedgie in turn), Doublers, both Final
// Wagers with clues bought, the Letter Rip Spotlight, a pub room with a
// venue break and the night's tally, and a vote to end a game early.
//
// LOCAL TEST DATABASE ONLY. It refuses any DATABASE_URL that isn't on
// localhost: it adds two test access codes (SMOKE-HOME, SMOKE-PUB) and only
// reads content otherwise, but the live database is Randy's alone.
// The test database needs the content loaded (content/sql/*.sql and the
// root .sql files).
//
//   DATABASE_URL=postgres://postgres@localhost:54329/postgres node scripts/smoke-test.mjs
//
// Options (environment):
//   MODES=LETTER_RIP,PROFILER   only these rooms (default: all)
//   SPEED=8                     how much faster than real time timers run
//   SHOTS=some/folder           a TV screenshot of every room at each new
//                               screen, via Playwright (if installed)
//   PORT=3990
import pg from 'pg';

const DB = process.env.DATABASE_URL || '';
if (!/@(localhost|127\.0\.0\.1)(:\d+)?\//.test(DB)) {
    console.error('Refusing to run: DATABASE_URL must point at a local test database (localhost). Never the live one.');
    process.exit(2);
}
const SPEED = Number(process.env.SPEED || 8);
const PORT = Number(process.env.PORT || 3990);
process.env.PORT = String(PORT);
process.env.ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'smoke-test';
const SHOTS = process.env.SHOTS || '';

// Speed up every timer before the engine loads (it captures them at import).
const realSetTimeout = globalThis.setTimeout;
const realSetInterval = globalThis.setInterval;
globalThis.setTimeout = (fn, ms, ...a) => realSetTimeout(fn, Math.max(1, (ms || 0) / SPEED), ...a);
globalThis.setInterval = (fn, ms, ...a) => realSetInterval(fn, Math.max(1, (ms || 0) / SPEED), ...a);
const sleep = ms => new Promise(r => realSetTimeout(r, ms));

// Count every contained crash and stray error the server logs.
const problems = [];
const realError = console.error;
console.error = (...args) => {
    const text = args.map(a => (a && a.stack) || String(a)).join(' ');
    if (/Error contained|\[Uncaught\]|\[Unhandled promise\]|Couldn't recover/.test(text)) problems.push(text.split('\n').slice(0, 6).join('\n'));
    realError(...args);
};
// The engine is chatty; keep the output to this script's own lines.
const realLog = console.log;
console.log = () => {};
const say = (...a) => realLog(...a);

// Test access codes (local database only, checked above).
const db = new pg.Pool({ connectionString: DB });
await db.query(`INSERT INTO access_codes (code, label, active) VALUES ('SMOKE-HOME', 'smoke test', true) ON CONFLICT (code) DO UPDATE SET active = true`);
await db.query(`INSERT INTO access_codes (code, label, active) VALUES ('SMOKE-PUB', 'smoke test', true) ON CONFLICT (code) DO UPDATE SET active = true`);
// Board rules, profiles and breaks exist only once their SQL has run.
await db.query(`UPDATE access_codes SET board_rules = 'CLASSIC', profile = 'HOME' WHERE code = 'SMOKE-HOME'`).catch(() => {});
await db.query(`UPDATE access_codes SET profile = 'PUB', venue_name = 'Smoke Test Pub', allowed_modes = NULL, break_minutes = 2, break_notes = ARRAY['Test note one', 'Test note two'] WHERE code = 'SMOKE-PUB'`).catch(() => {});
await db.end();

await import('../src/server.js');
const { handleIncomingMessage, activeRooms } = await import('../src/services/gameEngine.js');
await sleep(2500);
const BASE = `http://localhost:${PORT}`;
const api = async (path, body) => (await fetch(BASE + path, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) })).json();

const BOTS = ['Ace', 'Bea', 'Cy', 'Di']; // 4: Profiler needs 4+
const ROOMS = [
    { mode: 'TRIVI_YEAH_II', code: 'SMOKE-HOME', traps: true },
    { mode: 'TRIVI_YEAH_II', code: 'SMOKE-PUB', label: 'TRIVI_YEAH_II (pub, break)' },
    { mode: 'TRIVI_YEAH', code: 'SMOKE-HOME' },
    { mode: 'COUNTRY_MONKEY', code: 'SMOKE-HOME' },
    { mode: 'COUNTRY_MONKEY', code: 'SMOKE-PUB', label: 'COUNTRY_MONKEY (pub, tally)' },
    { mode: 'FLAG_ME_DOWN', code: 'SMOKE-HOME' },
    { mode: 'LETTER_RIP', code: 'SMOKE-HOME' },
    { mode: 'EMPOSSDURR', code: 'SMOKE-HOME' },
    { mode: 'ON_THE_SPECTRUM', code: 'SMOKE-HOME' },
    { mode: 'PROFILER', code: 'SMOKE-HOME' },
    { mode: 'COUNTRY_MONKEY', code: 'SMOKE-HOME', endVote: true, label: 'vote to end early' },
].filter(r => !process.env.MODES || process.env.MODES.split(',').includes(r.mode));

const TIMEOUT_MS = 8 * 60 * 1000; // wall clock, per room
const STUCK_MS = 60 * 1000;       // no change of screen for this long = stuck

for (const r of ROOMS) {
    r.label = r.label || r.mode;
    const res = await api('/api/create-room', { code: r.code });
    if (!res.roomCode) { say(`✗ ${r.label}: couldn't open a room (${res.error})`); r.failed = 'no room'; continue; }
    r.roomCode = res.roomCode;
    for (const n of BOTS) await api('/api/message', { From: n, Body: `${r.roomCode} ${n} av:fox ${r.mode}`, roomCode: r.roomCode });
    for (const n of BOTS) await api('/api/message', { From: n, Body: 'START', roomCode: r.roomCode });
    r.started = Date.now(); r.lastSig = ''; r.lastChange = Date.now(); r.seen = new Set(); r.traps = r.traps ? [] : null;
}

// ---------- optional screenshots ----------
let browser = null;
if (SHOTS) {
    const { mkdirSync } = await import('node:fs');
    mkdirSync(SHOTS, { recursive: true });
    // Playwright isn't a dependency of the game; use the machine's copy.
    const { createRequire } = await import('node:module');
    const { chromium } = createRequire(import.meta.url)('playwright');
    browser = await chromium.launch();
    for (const r of ROOMS.filter(x => x.roomCode)) {
        const page = await (await browser.newContext({ viewport: { width: 960, height: 540 } })).newPage();
        // The TV asks for wss:// when served over https; plain ws:// here.
        await page.addInitScript(() => { const W = window.WebSocket; window.WebSocket = function (u, p) { return new W(u.replace('wss://', 'ws://'), p); }; window.WebSocket.prototype = W.prototype; Object.assign(window.WebSocket, { OPEN: 1, CLOSED: 3 }); });
        await page.goto(BASE + '/tv'); await page.fill('#input-room-code', r.roomCode); await page.click('#btn-submit-spectate');
        r.tv = page; r.shot = 0;
    }
}
const shoot = async (r, why) => {
    if (!r.tv) return;
    const name = `${SHOTS}/${r.label.replace(/[^A-Za-z0-9]+/g, '_')}-${String(r.shot++).padStart(3, '0')}-${why}.png`;
    await r.tv.screenshot({ path: name }).catch(() => {});
};

// ---------- the bots ----------
const TRAP_TYPES = ['PANTS_ON_FIRE', 'HOT_SEAT', 'WEDGIE'];
const wrongLetter = right => (right === 'A' ? 'B' : 'A');
const act = (room, code, name, text) => { try { return handleIncomingMessage(name, text, code); } catch (e) { problems.push(`bot ${name} "${text}": ${e.stack}`); } };

function sigOf(room) {
    const ty2 = room.triviYeahII, lr = room.letterRip, pf = room.profiler, ed = room.empossdurr, ots = room.onTheSpectrum, fmd = room.flagMeDown, fw = room.finalWager;
    return [room.gameState, room.currentQuestionIndex, ty2 && ty2.phase, ty2 && ty2.activeCellIndex, ty2 && ty2.round,
        lr && lr.index, lr && lr.round, lr && lr.phase, pf && pf.round, pf && pf.phase, ed && ed.currentRound, ed && ed.phase, ed && ed.secretWord,
        ots && ots.phase, ots && ots.namedPlayerName, fmd && fmd.phase, fmd && fmd.stage, fmd && fmd.index, fw && fw.phase].join('|');
}

function drive(r) {
    const code = r.roomCode, room = activeRooms[code];
    if (!room) return;
    const live = Object.keys(room.players).filter(n => !room.players[n].left);
    const now = Date.now();
    const sig = sigOf(room);
    const fresh = sig !== r.lastSig;
    if (fresh) { r.lastSig = sig; r.lastChange = now; r.phaseAt = now; r.acted = false; r.seen.add(room.gameState); }
    const waited = now - r.phaseAt > 400; // let each screen draw before acting

    if (r.endVote && room.gameState === 'GAME_ROUND' && room.currentQuestionIndex >= 2 && !r.voted) {
        r.voted = true; live.forEach(n => act(room, code, n, 'ENDVOTE'));
        r.endedByVote = room.gameState === 'LOBBY';
        return;
    }
    if (room.gameState === 'VENUE_BREAK' && waited && !r.acted) { r.acted = true; r.sawBreak = true; live.forEach(n => act(room, code, n, 'BACK')); }

    // Topic / region / deck pick
    if (room.gameState === 'CATEGORY_VOTE' && waited && !r.acted) {
        r.acted = true;
        if (room.winningGameMode === 'TRIVI_YEAH') live.forEach((n, i) => act(room, code, n, i % 2 ? 'SURPRISE' : 'SCIENCE_NATURE'));
    }

    // Question-bank modes: Trivi-yeah!, Country Monkey
    if (room.gameState === 'GAME_ROUND' && room.currentQuestionData && waited && !r.acted) {
        r.acted = true;
        const right = room.currentQuestionData.correctLetter;
        live.forEach((n, i) => act(room, code, n, i < 2 ? right : wrongLetter(right)));
    }

    // Thinking Pants
    const ty2 = room.triviYeahII;
    // A trap's reveal is brief at test speed: note it the moment it shows.
    if (fresh && ty2 && ty2.phase === 'TRAP_REVEAL' && r.traps) { r.sprung = r.sprung || []; r.sprung.push(ty2.trap && ty2.trap.type); }
    if (room.gameState === 'TRIVI_YEAH_II_ROUND' && ty2 && waited && !r.acted) {
        r.acted = true;
        if (ty2.phase === 'PICK_TILE' && live.includes(ty2.currentPicker)) {
            // Trapped tiles first, so every trap that was set gets sprung.
            let i = ty2.grid.findIndex(c => !c.cleared && c.trap);
            if (i < 0) i = ty2.grid.findIndex(c => !c.cleared);
            if (i >= 0) act(room, code, ty2.currentPicker, `PICK ${i}`);
        }
        if (ty2.phase === 'DOUBLER_WAGER') act(room, code, ty2.currentPicker, `WAGER ${Math.max(0, Math.floor((room.players[ty2.currentPicker].score || 0) / 2))}`);
        if (ty2.phase === 'DOUBLER_SIDE_BET') live.forEach((n, i) => n !== ty2.currentPicker && act(room, code, n, i % 2 ? 'PASS' : (i % 3 ? 'AGAINST' : 'FOR')));
        if (ty2.phase === 'TRAP_SET') {
            if (r.traps) {
                const type = TRAP_TYPES[r.traps.length % 3];
                const i = ty2.grid.findIndex(c => !c.cleared && !c.isDoubler && !c.trap);
                act(room, code, ty2.trapSetter, i >= 0 ? `TRAP ${i} ${type}` : 'TRAP_SKIP');
                if (i >= 0) r.traps.push(type);
            } else act(room, code, ty2.trapSetter, 'TRAP_SKIP');
        }
        if (ty2.phase === 'ANSWERING' && ty2.activeQuestionData) {
            const right = ty2.activeQuestionData.correctLetter;
            // Ace is always right: lone column sweeps, so traps get set.
            live.forEach(n => !(n in (ty2.answers || {})) && act(room, code, n, (n === 'Ace' || !r.traps) && n !== 'Di' ? right : wrongLetter(right)));
        }
    }

    // Final Wager (Thinking Pants, Country Monkey, Flag Me Down)
    const fw = room.finalWager;
    if (room.gameState === 'TRIVI_YEAH_II_FINAL_WAGER' && fw && waited && !r.acted) {
        r.acted = true;
        if (fw.phase === 'WAGER') live.forEach((n, i) => !(n in fw.wagers) && act(room, code, n, `FWAGER ${i === 0 ? room.players[n].score : Math.floor(room.players[n].score / 3)}`));
        if (fw.phase === 'ANSWER') {
            (fw.hints || []).forEach(h => act(room, code, 'Bea', `FHINT ${h.kind}`));
            live.forEach((n, i) => act(room, code, n, `FANSWER ${i < 2 ? fw.correctAnswer : 'not it'}`));
        }
    }

    // Flag Me Down
    const fmd = room.flagMeDown;
    if (room.gameState === 'FLAG_ME_DOWN_ROUND' && fmd && fmd.phase === 'CLUES' && fresh) {
        // One bot locks in at each clue stage, so every stage is scored.
        const n = live[fmd.stage % live.length];
        if (n && !(n in fmd.lockIns)) act(room, code, n, `FLAGLOCK ${'ABCD'[(fmd.stage + fmd.index) % 4]}`);
    }

    // Letter Rip and the Spotlight
    const lr = room.letterRip;
    if (room.gameState === 'LETTER_RIP_ROUND' && lr && waited && !r.acted) {
        r.acted = true;
        if (lr.phase === 'PICK') {
            const order = 'ETAOINSRHLDCUMFPGWYBVKXJQZ';
            live.forEach((n, i) => {
                const tried = lr.banks[n] || {};
                const options = [...order].filter(l => !lr.revealed.has(l) && !(l in tried));
                if (options.length) act(room, code, n, 'LRPICK ' + options[(i * 3) % Math.min(options.length, 8)]);
            });
            if (lr.round === 2) act(room, code, 'Di', 'LRSOLVE surely not this');
            if (lr.round === 3) act(room, code, 'Ace', 'LRSOLVE ' + lr.phrase.toLowerCase());
        }
        const sp = lr.spot;
        if (sp && lr.phase === 'SPOT_WAGER') live.forEach(n => { if (!(n in sp.wagers)) act(room, code, n, 'LRWAGER ' + Math.floor(Math.max(sp.startScores[n] || 0, sp.floor) / 2)); });
        if (sp && lr.phase === 'SPOT_TAP') {
            const hidden = [...lr.phrase].map((c, i) => i).filter(i => /[A-Z]/.test(lr.phrase[i]) && !sp.flipped.has(i));
            live.forEach((n, k) => { if (!(n in sp.answers) && hidden.length) act(room, code, n, 'LRSPOT ' + hidden[(k * 5) % hidden.length]); });
            if (lr.round === 1) act(room, code, 'Ace', 'LRSOLVE ' + lr.phrase.toLowerCase());
            if (lr.round === 2) act(room, code, 'Bea', 'LRDRAFT ' + lr.phrase.toLowerCase().slice(0, 6));
        }
        if (sp && lr.phase === 'SPOT_LAST') act(room, code, 'Cy', 'LRSOLVE wrong answer here');
    }

    // Profiler
    const pf = room.profiler;
    if (room.gameState === 'PROFILER_ROUND' && pf && waited && !r.acted) {
        r.acted = true;
        if (pf.phase === 'ANSWER' && pf.question) live.forEach(n => { if (pf.roster.includes(n) && !(n in pf.answers)) { const o = pf.question.options; act(room, code, n, `PROFILER_ANSWER:${o[(n.charCodeAt(0) * 7 + pf.round) % o.length].key}`); } });
        if (pf.phase === 'GUESS' && pf.post) live.forEach(n => { if (!(n in pf.guesses) && !pf.post.choosers.includes(n)) act(room, code, n, `PROFILER_PICK:${JSON.stringify(pf.roster.filter(x => x !== n).slice(0, pf.post.choosers.length))}`); });
        if (pf.phase === 'REVEAL' || pf.phase === 'AWARDS') live.forEach(n => act(room, code, n, 'PROFILER_CONTINUE'));
    }

    // EmpossDurr: round 1 ready + accuse, round 2 the impostor declares, round 3 skip
    const ed = room.empossdurr;
    if (room.gameState === 'EMPOSSDURR_ROUND' && ed && now - r.phaseAt > 800 && !r.acted) {
        r.acted = true;
        const turn = ed.currentRound % 3;
        if (ed.phase === 'DISCUSSION') {
            if (turn === 1) live.forEach(n => act(room, code, n, 'READY_TOGGLE'));
            else if (turn === 2 && ed.impostorName) act(room, code, ed.impostorName, 'DECLARE');
            // Skip once only: a skipped round replays with a new word, and
            // skipping it every time would never end.
            else if (!r.skipped) { r.skipped = true; live.forEach(n => act(room, code, n, 'SKIP_TOGGLE')); }
            else live.forEach(n => act(room, code, n, 'READY_TOGGLE'));
        }
        if (ed.phase === 'ACCUSE_VOTE') live.forEach(n => { if (!ed.accuseVotes[n]) act(room, code, n, `ACCUSE_TARGET:${live.find(x => x !== n)}`); });
        if (ed.phase === 'DECLARE_VERDICT') live.forEach(n => { if (n !== ed.impostorName && !ed.declareVotes[n]) act(room, code, n, 'DECLARE_YES'); });
    }

    // On the Spectrum
    const ots = room.onTheSpectrum;
    if (room.gameState === 'ON_THE_SPECTRUM_ROUND' && ots && waited && !r.acted) {
        r.acted = true;
        if (ots.phase === 'SET_TARGET') act(room, code, ots.namedPlayerName, 'SET_TARGET:63');
        if (ots.phase === 'GUESSING') live.forEach((n, i) => n !== ots.namedPlayerName && act(room, code, n, `GUESS:${(i * 23 + 10) % 100}`));
        if (ots.phase === 'REVEAL') live.forEach(n => act(room, code, n, 'CONTINUE'));
    }
}

// ---------- run ----------
say(`Smoke test: ${ROOMS.length} rooms at ${SPEED}x, bots ${BOTS.join(', ')}`);
const t0 = Date.now();
for (;;) {
    let running = 0;
    for (const r of ROOMS) {
        if (!r.roomCode || r.done) continue;
        const room = activeRooms[r.roomCode];
        if (!room) { r.done = true; r.failed = 'room closed'; continue; }
        const before = r.lastSig;
        drive(r);
        if (r.lastSig !== before && SHOTS) await shoot(r, ((room.triviYeahII && room.gameState === 'TRIVI_YEAH_II_ROUND' && room.triviYeahII.phase) || room.gameState).toLowerCase());
        if (r.endVote && r.voted) { r.done = true; if (room.gameState !== 'LOBBY') r.failed = `vote to end left it in ${room.gameState}`; continue; }
        if (room.gameState === 'GAME_OVER') {
            r.done = true; r.took = Math.round((Date.now() - r.started) / 1000);
            if (r.code === 'SMOKE-PUB') r.tally = room.nightTally ? Object.keys(room.nightTally).length : 0;
            continue;
        }
        if (Date.now() - r.lastChange > STUCK_MS) { r.done = true; r.failed = `stuck on ${r.lastSig}`; continue; }
        if (Date.now() - r.started > TIMEOUT_MS) { r.done = true; r.failed = `no Game Over after ${TIMEOUT_MS / 60000} min (on ${r.lastSig})`; continue; }
        running++;
    }
    if (!running) break;
    await sleep(100);
}

if (browser) await browser.close();

say('');
let failed = 0;
for (const r of ROOMS) {
    const extras = [];
    if (r.traps) extras.push(`traps set ${r.traps.join(', ') || 'none'}; sprung ${(r.sprung || []).join(', ') || 'none'}`);
    if (r.sawBreak) extras.push('venue break');
    if (r.tally !== undefined) extras.push(`tally for ${r.tally} players`);
    if (r.failed) { failed++; say(`✗ ${r.label}: ${r.failed}`); }
    else if (r.endVote) say(`✓ ${r.label}: back in the lobby`);
    else say(`✓ ${r.label}: Game Over in ${r.took}s${extras.length ? ' (' + extras.join('; ') + ')' : ''}`);
}
if (ROOMS.some(r => r.traps)) {
    const tr = ROOMS.find(r => r.traps);
    const missing = TRAP_TYPES.filter(t => !(tr.sprung || []).includes(t));
    if (missing.length) { failed++; say(`✗ traps never sprung: ${missing.join(', ')}`); }
}
if (ROOMS.some(r => r.code === 'SMOKE-PUB' && r.mode === 'TRIVI_YEAH_II') && !ROOMS.find(r => r.code === 'SMOKE-PUB' && r.mode === 'TRIVI_YEAH_II').sawBreak) {
    say('  (no venue break seen: run access_codes_breaks.sql on the test database to cover it)');
}
if (problems.length) { failed++; say(`\n✗ ${problems.length} error(s) logged by the server:`); problems.slice(0, 10).forEach(p => say('  ' + p.replace(/\n/g, '\n    '))); }
say(failed ? `\nFAILED (${failed})` : `\nAll good in ${Math.round((Date.now() - t0) / 1000)}s.`);
process.exit(failed ? 1 : 0);
