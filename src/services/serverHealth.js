// Live server health for the /admin "Live health" panel (Randy, Nov 2026,
// getting ready for busy pub nights). Everything here is counts and
// timings kept in memory -- nothing about who is playing, and nothing is
// saved anywhere (the /info privacy promise).
//
// Why these numbers: a load test of one 80-player room (Nov 2026) showed
// the server answering phones in about a millisecond, so the thing worth
// watching on a busy night is bandwidth (every phone asks "what's
// happening?" once a second) and, for peace of mind, response time and
// memory. Uptime doubles as "when did the server last restart" -- a
// restart or deploy ends every live game, since rooms live in memory.

const SAMPLE_MS = 10 * 1000;           // take a reading every 10 seconds
const KEEP_SAMPLES = 6 * 60;           // ...and keep an hour of them

const startedAt = Date.now();
const liveSockets = new Set();
let closedSocketBytes = 0;             // bytes sent on connections that have closed
let requestCount = 0;
let statusTimes = [];                  // phone poll response times (ms) since the last reading
const samples = [];                    // { at, bytes, requests }

function totalBytesSent() {
    let live = 0;
    for (const socket of liveSockets) live += socket.bytesWritten || 0;
    return closedSocketBytes + live;
}

// Counts every request, and times the phones' once-a-second status poll.
export function healthMiddleware(req, res, next) {
    requestCount++;
    if (req.path === '/api/room-status') {
        const start = process.hrtime.bigint();
        res.on('finish', () => {
            statusTimes.push(Number(process.hrtime.bigint() - start) / 1e6);
            if (statusTimes.length > 20000) statusTimes = statusTimes.slice(-10000);
        });
    }
    next();
}

let lastStatusTimes = [];
// Watches the server's network connections (phones, TVs, the admin page),
// so the byte counts are what actually went out, after compression and
// with headers -- the number a hosting bill is based on.
export function attachHealthTracking(server) {
    server.on('connection', socket => {
        liveSockets.add(socket);
        socket.on('close', () => {
            closedSocketBytes += socket.bytesWritten || 0;
            liveSockets.delete(socket);
        });
    });
    samples.push({ at: Date.now(), bytes: 0, requests: 0 });
    setInterval(() => {
        samples.push({ at: Date.now(), bytes: totalBytesSent(), requests: requestCount });
        if (samples.length > KEEP_SAMPLES + 1) samples.shift();
        lastStatusTimes = statusTimes;
        statusTimes = [];
    }, SAMPLE_MS).unref();
}

// Change between the newest reading and the one `ms` earlier (or the oldest
// we have, if the server hasn't been up that long).
function changeOver(ms, field) {
    if (samples.length < 2) return { amount: 0, seconds: 0 };
    const newest = samples[samples.length - 1];
    let older = samples[0];
    for (let i = samples.length - 1; i >= 0; i--) {
        if (newest.at - samples[i].at >= ms) { older = samples[i]; break; }
    }
    return { amount: newest[field] - older[field], seconds: (newest.at - older.at) / 1000 };
}

export function healthSnapshot(activeRooms) {
    const rooms = Object.values(activeRooms);
    const now = Date.now();
    let players = 0, phonesCheckingIn = 0, tvs = 0;
    for (const room of rooms) {
        for (const p of Object.values(room.players || {})) {
            if (p.left) continue;
            players++;
            // Phones poll every second; one heard from in the last 10s is live.
            if (now - (p.lastSeen || 0) < 10 * 1000) phonesCheckingIn++;
        }
        const liveTvs = (room.screens || []).filter(s => s.readyState === 1).length;
        // A TV on the fallback (no live connection) checks in twice a second.
        tvs += liveTvs || (now - (room.tvLastPoll || 0) < 5000 ? 1 : 0);
    }
    const minute = changeOver(60 * 1000, 'requests');
    const hourBytes = changeOver(60 * 60 * 1000, 'bytes');
    const minuteBytes = changeOver(60 * 1000, 'bytes');
    const times = lastStatusTimes.slice().sort((a, b) => a - b);
    const pick = q => times.length ? Math.round(times[Math.min(times.length - 1, Math.floor(times.length * q))] * 10) / 10 : null;
    const mem = process.memoryUsage();
    return {
        rooms: rooms.length,
        players,
        phonesCheckingIn,
        tvs,
        requestsPerSecond: minute.seconds ? Math.round(minute.amount / minute.seconds * 10) / 10 : 0,
        pollMs: { typical: pick(0.5), slow: pick(0.95) },
        bandwidth: {
            lastMinuteMB: Math.round(minuteBytes.amount / 1e6 * 100) / 100,
            lastHourMB: Math.round(hourBytes.amount / 1e6 * 10) / 10,
            hourWindowMinutes: Math.round(hourBytes.seconds / 60),
            sinceStartMB: Math.round(totalBytesSent() / 1e6 * 10) / 10
        },
        memoryMB: Math.round(mem.rss / 1e6),
        upSinceISO: new Date(startedAt).toISOString(),
        upMinutes: Math.round((now - startedAt) / 60000)
    };
}
