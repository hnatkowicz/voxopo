// Venue memory (Randy, Nov 2026): an access code remembers which questions
// its rooms have played over the last four weeks, so regulars -- a pub's
// weekly crowd, a family on its home code -- don't see repeats from one
// night to the next. Before this, each room only remembered what it had
// played itself, and forgot it all when it closed.
//
// What's kept: the access code, a kind ("q" a Thinking Pants / Trivi-yeah!
// question id, "lr" a Letter Rip phrase, "ots" an On the Spectrum statement
// id), the item, and when it was last played. Nothing about players -- the
// privacy promise on /info still holds (its wording now mentions this).
// Table: venue_memory.sql. Until it's run, all of this quietly does nothing.
//
// How it plugs in: a room's three "already played" lists become
// RememberingSets. They behave exactly like the plain Sets the game code
// already uses (it prefers unplayed items and starts over when it runs out),
// but every new item is also queued for the database, and when the room
// opens the lists are pre-filled with what the venue played in the window.
// Writes are batched once a minute, never per tap.
import pool, { isDatabaseDownError } from '../config/database.js';

// Four weeks: a month of weekly pub nights (and a league season, if that
// ever happens) without a repeat while fresh questions last.
export const VENUE_MEMORY_DAYS = 28;
const FLUSH_EVERY_MS = 60 * 1000;
const PURGE_EVERY_MS = 60 * 60 * 1000;
const MAX_PENDING_PER_CODE = 5000; // if the database is away a long time

// The room property behind each kind, and whether its items are numbers.
// Profiler and EmpossDurr joined Nov 23 2026 (the family noticed repeats in
// the social games); their kinds need venue_memory_more_kinds.sql, and until
// it's run they're quietly left out (the others carry on).
const LISTS = [
    { prop: 'seenQuestionIds', kind: 'q', numeric: true },
    { prop: 'letterRipPlayed', kind: 'lr', numeric: false },
    { prop: 'otsSeen', kind: 'ots', numeric: true },
    { prop: 'profilerSeen', kind: 'pf', numeric: true, newer: true },
    { prop: 'empossdurrSeen', kind: 'ed', numeric: false, newer: true }
];
const NEWER_KINDS = new Set(LISTS.filter(l => l.newer).map(l => l.kind));

const pending = new Map(); // access code -> Map("kind|item" -> {kind, item})
let tableMissing = false;
let newerKindsBlocked = false; // venue_memory_more_kinds.sql not run yet
let lastPurge = 0;

class RememberingSet extends Set {
    constructor(onAdd) {
        super();
        this.onAdd = onAdd;
    }
    add(value) {
        if (this.onAdd && !this.has(value)) this.onAdd(value);
        return super.add(value);
    }
    // Loading the venue's history shouldn't queue it to be written back.
    quietAdd(value) {
        return super.add(value);
    }
}

function queue(code, kind, item) {
    if (tableMissing) return;
    if (newerKindsBlocked && NEWER_KINDS.has(kind)) return;
    let forCode = pending.get(code);
    if (!forCode) pending.set(code, (forCode = new Map()));
    if (forCode.size >= MAX_PENDING_PER_CODE) return;
    forCode.set(`${kind}|${item}`, { kind, item: String(item) });
}

// Called once, right after a room is created. Safe to call for a room with
// no access code (it does nothing).
export function attachVenueMemory(room) {
    const code = room && room.accessCode;
    if (!code) return;
    LISTS.forEach(({ prop, kind }) => {
        room[prop] = new RememberingSet(value => queue(code, kind, value));
    });
    if (tableMissing) return;
    pool.query(
        `SELECT kind, item FROM venue_memory
         WHERE access_code = $1 AND played_at > now() - make_interval(days => $2)`,
        [code, VENUE_MEMORY_DAYS]
    ).then(result => {
        result.rows.forEach(row => {
            const list = LISTS.find(l => l.kind === row.kind);
            const set = list && room[list.prop];
            if (!(set instanceof RememberingSet)) return;
            const value = list.numeric ? Number(row.item) : row.item;
            if (!list.numeric || Number.isFinite(value)) set.quietAdd(value);
        });
    }).catch(error => {
        if (error.code === '42P01') { tableMissing = true; return; } // venue_memory.sql not run yet
        if (!isDatabaseDownError(error)) console.warn('[Venue memory] load failed:', error.message);
    });
}

async function flush() {
    if (tableMissing) { pending.clear(); return; }
    for (const [code, items] of [...pending.entries()]) {
        if (!items.size) { pending.delete(code); continue; }
        const rows = [...items.values()];
        try {
            await pool.query(
                `INSERT INTO venue_memory (access_code, kind, item)
                 SELECT $1, k, i FROM unnest($2::text[], $3::text[]) AS t(k, i)
                 ON CONFLICT (access_code, kind, item) DO UPDATE SET played_at = now()`,
                [code, rows.map(r => r.kind), rows.map(r => r.item)]
            );
            rows.forEach(r => items.delete(`${r.kind}|${r.item}`));
            if (!items.size) pending.delete(code);
        } catch (error) {
            if (error.code === '42P01') { tableMissing = true; pending.clear(); return; }
            if (error.code === '23503') { pending.delete(code); continue; } // the code itself was deleted
            if (error.code === '23514') { // a kind the table doesn't allow yet: drop those, keep the rest
                newerKindsBlocked = true;
                for (const queued of pending.values()) {
                    for (const [key, entry] of [...queued.entries()]) if (NEWER_KINDS.has(entry.kind)) queued.delete(key);
                }
                return; // the rest go next minute
            }
            if (!isDatabaseDownError(error)) console.warn('[Venue memory] save failed:', error.message);
            return; // try again next minute
        }
    }
    if (Date.now() - lastPurge > PURGE_EVERY_MS) {
        lastPurge = Date.now();
        // Nothing older than the window is ever needed again.
        pool.query(`DELETE FROM venue_memory WHERE played_at < now() - make_interval(days => $1)`, [VENUE_MEMORY_DAYS + 1])
            .catch(() => {});
    }
}

// Once an hour, look again in case venue_memory.sql was run since the server
// started (so it starts working without a restart).
setInterval(() => { tableMissing = false; newerKindsBlocked = false; }, PURGE_EVERY_MS).unref();
setInterval(() => { flush().catch(() => {}); }, FLUSH_EVERY_MS).unref();

// For the smoke test and shutdown paths.
export function flushVenueMemoryNow() {
    return flush();
}
