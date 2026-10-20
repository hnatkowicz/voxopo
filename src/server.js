import express from 'express';
import dotenv from 'dotenv';
import path from 'path';
import { WebSocketServer } from 'ws';
import pool from './config/database.js';
import { handleIncomingMessage, activeRooms, getCategoriesForMode, resolveRequestedQuestionCount, compareByRank, closeRoom, profilerStatusFor, profilerTvSnapshot, triviYeahIITrapInfo, emptyModeVotes, finalWagerWinShare, resolveDisguisedAsset, flagMeDownStatusFor, GAME_MODE_KEYS, allowedModesFor, finalWagerRevealFor } from './services/gameEngine.js';
import {
    isHostAuthorized, grantHostSession, isAccessCodeActive,
    isAdminAuthorized, grantAdminSession,
    isAdminLoginRateLimited, recordFailedAdminLogin, clearAdminLoginAttempts,
    isRoomCreateRateLimited, recordFailedRoomCreateAttempt, clearRoomCreateAttempts,
    listAccessCodes, addAccessCode, setAccessCodeActive, normalizeCode,
    hostSessionCode, getAccessCodeVenue, venueProfilesInstalled, sanitizeVenue, updateAccessCodeVenue, houseColumnInstalled, listHouseSets, boardRulesInstalled
} from './services/accessControl.js';
import { fileURLToPath } from 'url';

// Recreate __dirname cleanly for ES module environments
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;
// Render terminates TLS and forwards over plain HTTP internally -- without this,
// req.secure and req.ip would reflect that internal hop, not the real client,
// which would silently disable the Secure cookie flag and admin-login rate limit.
app.set('trust proxy', 1);

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
// Tell Express to serve everything inside the 'public' folder as static assets.
// index: false -- express.static auto-serves index.html for a bare "/"
// request by default, which would silently short-circuit the explicit "/"
// route below (the landing page) before it ever runs.
// no-cache (not no-store) so browsers still revalidate via ETag/Last-Modified
// instead of serving a stale cached copy of index.html/app.js/play.html after
// a deploy -- avoids "I don't see the fix" confusion from a cached old build.
app.use(express.static('public', {
    index: false,
    setHeaders: (res) => res.setHeader('Cache-Control', 'no-cache')
}));

// Question pictures under a disguised address (see disguisedAssetUrl in
// gameEngine.js) so a phone never sees a revealing filename like
// "nigeria.webp". Only paths the engine itself handed out resolve, and only
// inside public/.
const PUBLIC_DIR = path.resolve('public');
app.get('/q-img/:token', (req, res) => {
    const assetPath = resolveDisguisedAsset(req.params.token);
    if (!assetPath) return res.status(404).end();
    const filePath = path.resolve(PUBLIC_DIR, '.' + path.posix.normalize('/' + assetPath));
    if (!filePath.startsWith(PUBLIC_DIR + path.sep)) return res.status(404).end();
    res.setHeader('Cache-Control', 'private, max-age=86400');
    res.sendFile(filePath, err => { if (err && !res.headersSent) res.status(404).end(); });
});

// 1. DYNAMIC ROOM LIFECYCLE CREATOR ENDPOINT
// Gated: only reachable with a valid access code (checked against the
// access_codes table) or an existing host session cookie from an earlier
// successful code entry this "night" -- see accessControl.js. The TV screen
// no longer calls this at all; only /host does.
app.post('/api/create-room', async (req, res) => {
    try {
        // A typed code always wins (and is checked), even with a session --
        // that's how a host switches between, say, a home code and a pub code.
        const typedCode = normalizeCode(req.body && req.body.code);
        let authorized = isHostAuthorized(req) && !typedCode;
        if (!authorized) {
            const ip = req.ip;
            // A short access code (a bare 4-digit number, say) is otherwise
            // brute-forceable in a few thousand automated guesses once it
            // isn't sitting behind a login form the way the admin password
            // is -- same 5-per-15-minutes floor as admin login.
            if (isRoomCreateRateLimited(ip)) {
                return res.status(429).json({ success: false, error: 'Too many attempts. Try again in a bit.' });
            }
            const submittedCode = req.body && req.body.code;
            authorized = submittedCode ? await isAccessCodeActive(pool, submittedCode) : false;
            if (!authorized) {
                recordFailedRoomCreateAttempt(ip);
                return res.status(submittedCode ? 403 : 400).json({
                    success: false,
                    error: submittedCode ? 'Invalid or inactive access code.' : 'Access code required.'
                });
            }
            clearRoomCreateAttempts(ip);
        }

        // The venue profile (pub name/logo, allowed modes) of whichever code
        // opened this room -- null for a plain home code.
        const openingCode = typedCode || hostSessionCode(req);
        const venue = openingCode ? await getAccessCodeVenue(pool, openingCode) : null;

        let code;
        let checks = 0;

        // Randomly pull numbers until we find an absolute unallocated code string
        do {
            code = Math.floor(1000 + Math.random() * 9000).toString();
            checks++;
        } while (activeRooms[code] && checks < 100);

        // Initialize the unified memory container state properties on the backend instantly
        activeRooms[code] = {
            gameState: 'LOBBY',
            players: {},
            screens: [],
            timerInterval: null,
            lobbyTimerInterval: null,
            categoryTimerInterval: null,
            revealTimeout: null,
            lobbySecondsLeft: 60,
            categorySecondsLeft: 30,
            gameSecondsLeft: 25,
            winningGameMode: null,
            activeQuestionData: null,
            currentQuestionData: null,
            activeDeckName: null,
            activeCategoryKey: null,
            answers: {},
            answerOrder: [],
            questionBank: [],
            questionGroups: {},
            currentQuestionIndex: -1,
            askedQuestionIds: new Set(),
            requestedQuestionCount: resolveRequestedQuestionCount(req.body && req.body.questionCount),
            venue,
            votes: emptyModeVotes({ venue }),
            // Populated with real keys once the category vote phase actually starts.
            categoryVotes: {},
            // Bumped by every "fresh game" reset (Main Menu or Play Again
            // from Game Over) -- lets a rejoining player who missed
            // one of those resets (they were marked left at the time) get
            // their stale score/badges cleared on the way back in instead of
            // carrying them into whatever game the room is on now.
            gameEpoch: 0,
            lastActivity: Date.now() // Time the room was "born"
        };

        if (!isHostAuthorized(req) || typedCode) grantHostSession(res, req, openingCode);

        console.log(`[Room Organizer] Created dynamic session bubble: ${code}`);
        return res.json({ success: true, roomCode: code });
    } catch (e) {
        return res.status(500).json({ success: false, error: 'Lifecycle allocation failure.' });
    }
});

// 1b. ADMIN PASSWORD LOGIN -- gates the access-code management page (/admin)
app.post('/api/admin/login', (req, res) => {
    const ip = req.ip;
    if (isAdminLoginRateLimited(ip)) {
        return res.status(429).json({ success: false, error: 'Too many attempts. Try again in a bit.' });
    }
    const { password } = req.body || {};
    if (!password || !process.env.ADMIN_PASSWORD || password !== process.env.ADMIN_PASSWORD) {
        recordFailedAdminLogin(ip);
        return res.status(401).json({ success: false, error: 'Incorrect password.' });
    }
    clearAdminLoginAttempts(ip);
    grantAdminSession(res, req);
    return res.json({ success: true });
});

function requireAdmin(req, res, next) {
    if (isAdminAuthorized(req)) return next();
    return res.status(401).json({ success: false, error: 'Not authenticated.' });
}

app.get('/api/admin/codes', requireAdmin, async (req, res) => {
    try {
        const codes = await listAccessCodes(pool);
        // venueProfiles: false until access_codes_venue_profiles.sql is run.
        const houseColumn = await houseColumnInstalled(pool);
        return res.json({ success: true, codes, venueProfiles: await venueProfilesInstalled(pool), houseColumn, houseSets: houseColumn ? await listHouseSets(pool) : [], boardRules: await boardRulesInstalled(pool), modes: GAME_MODE_KEYS });
    } catch (e) {
        return res.status(500).json({ success: false, error: 'Failed to load codes.' });
    }
});

app.post('/api/admin/codes', requireAdmin, async (req, res) => {
    const code = normalizeCode(req.body && req.body.code);
    const label = ((req.body && req.body.label) || '').trim();
    if (!code) return res.status(400).json({ success: false, error: 'Code required.' });
    try {
        await addAccessCode(pool, code, label);
        return res.json({ success: true });
    } catch (e) {
        return res.status(409).json({ success: false, error: 'That code already exists.' });
    }
});

app.post('/api/admin/codes/:code/toggle', requireAdmin, async (req, res) => {
    try {
        const active = !!(req.body && req.body.active);
        await setAccessCodeActive(pool, req.params.code, active);
        return res.json({ success: true });
    } catch (e) {
        return res.status(500).json({ success: false, error: 'Failed to update code.' });
    }
});

// Venue profile for a code: home or pub, name, tagline, logo file, and which
// modes its rooms offer. Applies to rooms opened after the change.
app.post('/api/admin/codes/:code/venue', requireAdmin, async (req, res) => {
    try {
        if (!(await venueProfilesInstalled(pool))) {
            return res.status(409).json({ success: false, error: 'Run access_codes_venue_profiles.sql in Neon first.' });
        }
        const venue = sanitizeVenue(req.body, GAME_MODE_KEYS);
        const found = await updateAccessCodeVenue(pool, req.params.code, venue, await houseColumnInstalled(pool), await boardRulesInstalled(pool));
        if (!found) return res.status(404).json({ success: false, error: 'No such code.' });
        return res.json({ success: true, venue });
    } catch (e) {
        return res.status(500).json({ success: false, error: 'Failed to save the venue profile.' });
    }
});

// Support tool for a stuck or abandoned room -- bounces that room's TV back
// to its gateway screen and frees the code, same end state as everyone
// leaving on their own, just admin-triggered on demand instead of waiting on
// the roster to empty out.
app.post('/api/admin/rooms/:roomCode/reset', requireAdmin, (req, res) => {
    const found = closeRoom(req.params.roomCode);
    if (!found) return res.status(404).json({ success: false, error: 'No active room with that code.' });
    return res.json({ success: true });
});

app.post('/api/message', async (req, res) => {
    try {
        const { From, Body, roomCode, sessionToken } = req.body;
        if (!From || !Body) return res.status(400).json({ success: false, reply: 'Missing parameters.' });

        const engineResponse = await handleIncomingMessage(From, Body, roomCode, sessionToken);
        // Every non-join reply is a plain string. A successful join/rejoin is the
        // one case that returns { reply, sessionToken } instead -- the phone needs
        // that token back so it can silently reclaim this same name later (see
        // play.html's auto-resume flow).
        if (typeof engineResponse === 'string') {
            if (engineResponse.startsWith('⚠️')) {
                return res.json({ success: false, reply: engineResponse });
            }
            return res.json({ success: true, reply: engineResponse });
        }
        return res.json({ success: true, reply: engineResponse.reply, sessionToken: engineResponse.sessionToken });
    } catch (error) {
        return res.status(500).json({ success: false, reply: 'Engine error.' });
    }
});

// What a phone needs before joining: the room's venue (name, logo) and which
// modes it offers, so the join screen only shows those. Nothing about players.
app.get('/api/room-info/:roomCode', (req, res) => {
    const room = activeRooms[req.params.roomCode];
    if (!room) return res.status(404).json({ success: false });
    return res.json({ success: true, venue: room.venue || null, allowedModes: allowedModesFor(room) });
});

app.post('/api/room-status', (req, res) => {
    try {
        const { roomCode, playerName } = req.body;
        const targetRoom = activeRooms[roomCode];
        // Every answer below also carries what the phone's swipe-left Info
        // page needs: the standings the TV last showed (see broadcastToRoom,
        // so a phone never learns a score early), which mode is on, and this
        // player's own stats. Those stats only change when an answer is
        // scored, at the reveal, so they can't give anything away either.
        if (targetRoom) {
            const sendJson = res.json.bind(res);
            const me = playerName ? targetRoom.players[playerName] : null;
            res.json = body => sendJson(body && body.phase ? {
                ...body,
                standings: targetRoom.phoneStandings || [],
                mode: targetRoom.gameState === 'LOBBY' ? null : (targetRoom.winningGameMode || null),
                myStats: me ? { fastest: me.timesFastest || 0, bullseyes: me.bullseyeCount || 0 } : null,
                // The last question's answer and who got it, set at the TV's reveal.
                recap: targetRoom.phoneRecap && targetRoom.phoneRecap.epoch === (targetRoom.gameEpoch || 0) ? targetRoom.phoneRecap : null
            } : body);
        }
        if (targetRoom) {
            // A player just interacted with this room! Bump the clock to keep it alive
            targetRoom.lastActivity = Date.now();
        }

        // Current-round score only -- no cross-round "Game Night" total exists yet,
        // and that mechanic isn't designed, so deliberately not stubbing a field for it.
        const myPlayer = (targetRoom && playerName) ? targetRoom.players[playerName] : null;
        // Proof of life for the rejoin rule: a name whose phone stops
        // checking in can be reclaimed (see PLAYER_QUIET_RECLAIM_MS).
        if (myPlayer) myPlayer.lastSeen = Date.now();
        const myScore = myPlayer ? myPlayer.score : null;
        // Included in every phase (not just GAME_OVER) so the phone can show a
        // running "X/Y correct" stat during active gameplay, not just at the end.
        const myCorrectAnswers = myPlayer ? (myPlayer.correctAnswers || 0) : 0;
        // Lets a reloaded phone (play.html's auto-resume check) tell "still an
        // active player, safe to silently resume" apart from "explicitly left,
        // don't drop them back in without asking" -- and restore the right
        // avatar without needing to remember it client-side.
        const myLeft = myPlayer ? !!myPlayer.left : null;
        const myEmoji = myPlayer ? myPlayer.emoji : null;

        // Covers both a fresh join and a "return to lobby" reset after
        // GAME_OVER -- either way, the phone's poller just needs to know to
        // show the "Vote START to lock in" screen.
        if (targetRoom && targetRoom.gameState === 'LOBBY') {
            // Lets the phone highlight which mode this player currently has
            // selected, so a returning "Main Menu" player can see (and change)
            // their standing vote instead of it being a silent, unchangeable
            // choice locked in back at join time.
            const myVote = myPlayer ? myPlayer.vote : null;
            return res.json({ phase: 'LOBBY_PHASE', myScore, myCorrectAnswers, myLeft, myEmoji, myVote, allowedModes: allowedModesFor(targetRoom), venue: targetRoom.venue || null });
        }
        if (targetRoom && targetRoom.gameState === 'CATEGORY_VOTE') {
            const categories = getCategoriesForMode(targetRoom.winningGameMode);
            return res.json({ phase: 'CATEGORY_VOTE_PHASE', categories, myScore, myCorrectAnswers, myLeft, myEmoji });
        }
        // FIX: If the clock expired and moved to gameplay, shout the round phase back to the phone poller!
        // FIX ALIGNMENT: Flatten the object parameters so it matches Phase 2 perfectly!
        if (targetRoom && targetRoom.gameState === 'GAME_ROUND' && targetRoom.activeQuestionData) {
            // activeQuestionData is already answer-safe (correctLetter stripped in gameEngine.js)
            return res.json({ phase: 'GAME_ROUND_PHASE', ...targetRoom.activeQuestionData, myScore, myCorrectAnswers, myLeft, myEmoji });
        }
        // The few seconds after the clock: same question, now with the
        // answer, so the phone can light it green (and a wrong pick red).
        if (targetRoom && targetRoom.gameState === 'ROUND_REVEAL' && targetRoom.activeQuestionData && targetRoom.currentQuestionData) {
            return res.json({
                phase: 'GAME_ROUND_PHASE', ...targetRoom.activeQuestionData,
                revealedLetter: targetRoom.currentQuestionData.correctLetter,
                myAnswer: (targetRoom.answers && targetRoom.answers[playerName]) || null,
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'TRIVI_YEAH_II_ROUND' && targetRoom.triviYeahII) {
            const ty2 = targetRoom.triviYeahII;
            // activeQuestionData (server-only) carries correctLetter -- strip it
            // the same way GAME_ROUND's activeQuestionData already does, same
            // reasoning: never let the answer reach the wire before it's revealed.
            const safeQuestionData = ty2.activeQuestionData
                ? (({ correctLetter, ...rest }) => rest)(ty2.activeQuestionData)
                : null;
            return res.json({
                phase: 'TRIVI_YEAH_II_ROUND_PHASE',
                triviYeahIIPhase: ty2.phase, // PICK_TILE | CATEGORY_REVEAL | QUESTION_REVEAL | ANSWERING | ROUND_REVEAL
                round: ty2.round,
                totalRounds: ty2.totalRounds,
                grid: ty2.grid.map((cell, index) => ({ index, categoryLabel: cell.categoryLabel, points: cell.points, cleared: cell.cleared })),
                currentPicker: ty2.currentPicker,
                isMyPick: playerName === ty2.currentPicker,
                activeCellIndex: ty2.activeCellIndex,
                // Doubler state -- null outside a Doubler tile's lifecycle (from
                // DOUBLER_REVEAL through DOUBLER_SIDE_BET). maxWager only comes
                // through for the picker, during DOUBLER_WAGER, same clamp rule
                // the WAGER message handler itself enforces server-side. A side
                // bet always stakes the tile's own value (tileValue, above) --
                // mySideBet is {choice, amount} once placed, same shape the
                // FOR/AGAINST message handler stores, with amount always equal
                // to that tile value.
                doubler: ty2.doubler ? {
                    categoryLabel: ty2.grid[ty2.activeCellIndex] ? ty2.grid[ty2.activeCellIndex].categoryLabel : null,
                    tileValue: ty2.grid[ty2.activeCellIndex] ? ty2.grid[ty2.activeCellIndex].points : null,
                    wagerAmount: ty2.doubler.wagerAmount,
                    maxWager: (ty2.phase === 'DOUBLER_WAGER' && playerName === ty2.currentPicker)
                        ? Math.max(myScore || 0, ty2.grid[ty2.activeCellIndex].points)
                        : null,
                    mySideBet: ty2.doubler.sideBets ? (ty2.doubler.sideBets[playerName] || null) : null,
                    // currentPicker has already moved on to the NEXT picker by
                    // the time resolved flips true (see evaluateTriviYeahIIDoublerAnswer) --
                    // pickerName is who actually answered this tile, stashed
                    // separately so a polling phone can still tell them apart.
                    resolved: !!ty2.doubler.resolved,
                    pickerName: ty2.doubler.pickerName || ty2.currentPicker,
                    pickerCorrect: ty2.doubler.resolved ? ty2.doubler.pickerCorrect : null,
                    mySideBetResult: (ty2.doubler.resolved && ty2.doubler.sideBetResults && playerName in ty2.doubler.sideBetResults)
                        ? ty2.doubler.sideBetResults[playerName]
                        : null
                } : null,
                // Only populated once the matching reveal stage has actually
                // fired -- a phone reconnecting mid-stage sees exactly what it
                // would have seen if it had never disconnected.
                questionText: ty2.phase === 'QUESTION_REVEAL' || ty2.phase === 'ANSWERING' || ty2.phase === 'ROUND_REVEAL'
                    ? (safeQuestionData ? safeQuestionData.questionText : null)
                    : null,
                // The question's picture (disguised address), shown with the
                // question; preloadAsset lets a phone fetch it during the
                // category/trap beat (never for a Doubler -- see gameEngine).
                visualAsset: ty2.phase === 'QUESTION_REVEAL' || ty2.phase === 'ANSWERING' || ty2.phase === 'ROUND_REVEAL'
                    ? (safeQuestionData ? safeQuestionData.visualAsset : null)
                    : null,
                preloadAsset: ty2.phase === 'CATEGORY_REVEAL' || ty2.phase === 'TRAP_REVEAL' ? (ty2.preloadAsset || null) : null,
                choices: ty2.phase === 'ANSWERING' || ty2.phase === 'ROUND_REVEAL'
                    ? (safeQuestionData ? { A: safeQuestionData.choiceA, B: safeQuestionData.choiceB, C: safeQuestionData.choiceC, D: safeQuestionData.choiceD } : null)
                    : null,
                gameSecondsLeft: targetRoom.gameSecondsLeft,
                // Traps: only who's setting one (never where, or whether one
                // was set) during TRAP_SET; the live trap once it's revealed;
                // and the result on the reveal screen.
                trapSetter: ty2.phase === 'TRAP_SET' ? ty2.trapSetter : null,
                isTrapSetter: ty2.phase === 'TRAP_SET' && playerName === ty2.trapSetter,
                trap: triviYeahIITrapInfo(ty2),
                trapOutcome: ty2.phase === 'ROUND_REVEAL' ? (ty2.lastTrapOutcome || null) : null,
                myAnswer: ty2.answers ? ty2.answers[playerName] : null,
                // Only once the answer is out -- lights it green on the phone.
                revealedLetter: ty2.phase === 'ROUND_REVEAL' && ty2.activeQuestionData ? ty2.activeQuestionData.correctLetter : null,
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'TRIVI_YEAH_II_FINAL_WAGER' && targetRoom.finalWager) {
            const fw = targetRoom.finalWager;
            // Everyone's own wager is secret from everyone else until the
            // reveal sequence -- this only ever returns the POLLING
            // player's own value, never anyone else's. The reveal itself
            // (TRIVI_YEAH_II_FINAL_REVEAL_STEP) is TV-only, same as the
            // user's own framing: phones watch the TV for results, so no
            // reveal-step polling fields are needed here at all.
            return res.json({
                phase: 'TRIVI_YEAH_II_FINAL_WAGER_PHASE',
                finalWagerPhase: fw.phase, // CATEGORY_REVEAL | WAGER | ANSWER | REVEAL
                topicLabel: fw.topicLabel,
                modeLabel: fw.modeLabel,
                questionText: fw.phase === 'ANSWER' || fw.phase === 'REVEAL' ? fw.questionText : null,
                // The question's picture (Country Monkey's map): shown once
                // answering opens, fetched in the background while wagering.
                visualAsset: fw.phase === 'ANSWER' || fw.phase === 'REVEAL' ? (fw.visualAsset || null) : null,
                preloadAsset: fw.phase === 'WAGER' ? (fw.visualAsset || null) : null,
                // Clues you can open on your own phone while answering (Flag
                // Me Down: three; Country Monkey: one). The menu carries only
                // names and costs; the content comes back only for the clues
                // THIS player opened.
                hintsAvailable: !!fw.hints && fw.phase === 'ANSWER',
                myHints: fw.hints && (fw.phase === 'ANSWER' || fw.phase === 'REVEAL') ? (() => {
                    const used = (fw.hintsUsed && fw.hintsUsed[playerName]) || [];
                    return {
                        used,
                        menu: fw.hints.map(h => ({ kind: h.kind, label: h.label, cost: h.cost })),
                        opened: fw.hints.filter(h => used.includes(h.kind)).map(h => ({ kind: h.kind, label: h.label, icon: h.icon, text: h.text || null, imageUrl: h.imageUrl || null })),
                        share: finalWagerWinShare(fw, playerName)
                    };
                })() : null,
                gameSecondsLeft: targetRoom.gameSecondsLeft,
                myWager: fw.wagers && (playerName in fw.wagers) ? fw.wagers[playerName] : null,
                // Your own result, in step with the TV's reveal (lowest score
                // first): the answer once the TV shows it, your result once
                // the TV reaches you. Never anyone else's (Randy, Oct 2026).
                myReveal: fw.phase === 'REVEAL' && fw.revealSteps ? finalWagerRevealFor(fw, playerName) : null,
                myAnswer: fw.answers ? (fw.answers[playerName] || null) : null,
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'EMPOSSDURR_ROUND' && targetRoom.empossdurr) {
            const ed = targetRoom.empossdurr;
            const isImpostor = playerName === ed.impostorName;
            const activePlayers = Object.values(targetRoom.players).filter(p => !p.left);
            return res.json({
                phase: 'EMPOSSDURR_ROUND_PHASE',
                empossdurrPhase: ed.phase, // DISCUSSION | ACCUSE_VOTE | DECLARE_VERDICT
                round: ed.currentRound,
                totalRounds: ed.totalRounds,
                isImpostor,
                // Never both -- a real player sees the word, the impostor
                // sees only their one clue, and never the other's content.
                displayWord: isImpostor ? null : ed.secretWord,
                displayClue: isImpostor ? ed.impostorClue : null,
                readyToAccuse: Array.from(ed.readyToAccuse || []),
                iAmReady: ed.readyToAccuse ? ed.readyToAccuse.has(playerName) : false,
                skipVotes: Array.from(ed.skipVotes || []),
                iHaveFlaggedSkip: ed.skipVotes ? ed.skipVotes.has(playerName) : false,
                totalActive: activePlayers.length,
                // A vote resolves the instant everyone required has
                // submitted, or at accuseSecondsLeft/declareSecondsLeft with
                // whoever has voted so far. DECLARE_VERDICT's votedCount/
                // totalNeeded are the real resolution threshold (jurors
                // only -- the impostor never casts a declare vote at all, so
                // there's no mismatch to leak). ACCUSE_VOTE's pair used to
                // be accuser-only too, which created a real leak on the TV:
                // the impostor's own tap always lit their tile (deliberately
                // unconditional, so their hands move like everyone else's)
                // without ever moving this number, and that mismatch was
                // visible and consistent round after round. These two are
                // now literal activity -- every submission against every
                // active player -- so the number always matches the lit
                // tiles 1:1. The actual resolution threshold (gameEngine.js's
                // tallyEmpossDurrAccuseVotes) is unaffected -- still gated on
                // real accusers only, computed independently of this display.
                votedCount: ed.phase === 'ACCUSE_VOTE'
                    ? Object.keys(ed.accuseVotes).length
                    : (ed.phase === 'DECLARE_VERDICT' ? Object.keys(ed.declareVotes).length : 0),
                totalNeeded: ed.phase === 'ACCUSE_VOTE'
                    ? activePlayers.length
                    : (ed.phase === 'DECLARE_VERDICT' ? activePlayers.filter(p => p.name !== ed.impostorName).length : 0),
                accuseSecondsLeft: ed.accuseSecondsLeft,
                declareSecondsLeft: ed.declareSecondsLeft,
                iHaveVoted: ed.phase === 'ACCUSE_VOTE'
                    ? (playerName in ed.accuseVotes)
                    : (ed.phase === 'DECLARE_VERDICT' ? (playerName in ed.declareVotes) : false),
                // Only revealed once a declaration is actually in progress --
                // pressing "I Declare!" is inherently self-outing in person
                // (everyone watches you speak up), so naming them here isn't
                // leaking anything they didn't already announce out loud.
                impostorName: ed.phase === 'DECLARE_VERDICT' ? ed.impostorName : undefined,
                playerNames: activePlayers.map(p => p.name),
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'ON_THE_SPECTRUM_ROUND' && targetRoom.onTheSpectrum) {
            const ots = targetRoom.onTheSpectrum;
            const activePlayers = Object.values(targetRoom.players).filter(p => !p.left);
            const isNamedPlayer = playerName === ots.namedPlayerName;
            return res.json({
                phase: 'ON_THE_SPECTRUM_ROUND_PHASE',
                otsPhase: ots.phase, // SET_TARGET | GUESSING | REVEAL
                namedPlayerName: ots.namedPlayerName,
                statementText: ots.statementText,
                roundNumber: ots.roundIndex + 1,
                totalRounds: ots.totalRounds,
                isNamedPlayer,
                lockedInNames: ots.phase === 'GUESSING' ? Object.keys(ots.guesses) : [],
                totalGuessersNeeded: activePlayers.filter(p => p.name !== ots.namedPlayerName).length,
                iHaveGuessed: playerName ? (playerName in ots.guesses) : false,
                myGuessValue: (playerName && ots.guesses[playerName] !== undefined) ? ots.guesses[playerName] : null,
                results: ots.phase === 'REVEAL' ? ots.lastResults : null,
                targetValue: ots.phase === 'REVEAL' ? ots.targetValue : null,
                tvLimit: 6,
                continueVotedCount: ots.phase === 'REVEAL' ? ots.continueVotes.size : 0,
                continueTotalNeeded: activePlayers.length,
                iHaveVotedContinue: ots.phase === 'REVEAL' && playerName ? ots.continueVotes.has(playerName) : false,
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'FLAG_ME_DOWN_ROUND' && targetRoom.flagMeDown) {
            return res.json({
                phase: 'FLAG_ME_DOWN_PHASE',
                ...flagMeDownStatusFor(targetRoom, playerName),
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'PROFILER_ROUND' && targetRoom.profiler) {
            return res.json({
                phase: 'PROFILER_ROUND_PHASE',
                ...profilerStatusFor(targetRoom, playerName),
                myScore, myCorrectAnswers, myLeft, myEmoji
            });
        }
        if (targetRoom && targetRoom.gameState === 'GAME_OVER') {
            // Same ordering the TV's final leaderboard used, so a player's phone
            // shows the exact placement (and can style itself gold/silver/bronze)
            // that matches what's on screen -- players who left don't get ranked.
            const finalStandings = Object.values(targetRoom.players).filter(p => !p.left).sort(compareByRank);
            const myIndex = playerName ? finalStandings.findIndex(p => p.name === playerName) : -1;
            const myRank = myIndex >= 0 ? myIndex + 1 : null;
            return res.json({
                phase: 'GAME_OVER_PHASE',
                myScore,
                myRank,
                myCorrectAnswers,
                totalPlayers: finalStandings.length,
                myLeft,
                myEmoji,
                // Lets the phone show a mode-specific "Play X Again" shortcut
                // (EmpossDurr, On the Spectrum) only when that's actually the
                // mode that just finished.
                winningGameMode: targetRoom.winningGameMode,
                // Your Final Wager result, so the leader (revealed last, just
                // before Game Over) still gets to read theirs.
                myFinalWager: targetRoom.finalWager && targetRoom.finalWager.revealSteps
                    ? finalWagerRevealFor(targetRoom.finalWager, playerName)
                    : null,
                // Profiler's "you know X best / X knows you best" lines,
                // kept on the Game Over card so they don't vanish with the
                // awards screen.
                profilerPersonal: (targetRoom.winningGameMode === 'PROFILER' && targetRoom.profiler && targetRoom.profiler.results)
                    ? (targetRoom.profiler.results.personal[playerName] || null)
                    : null
            });
        }
        return res.json({ phase: 'WAITING', myScore, myCorrectAnswers, myLeft, myEmoji });
    } catch (error) {
        return res.status(500).json({ error: 'Status track exception.' });
    }
});

// `/` is the role-picker hub (host/TV/player/info) -- `/tv` stays a stable,
// direct alias straight to the TV experience for anyone who already knows
// that URL (a bookmark, a QR code printed somewhere), so it keeps working
// exactly as it always has even though `/` no longer serves the same file.
app.get('/', (req, res) => { res.sendFile(path.resolve('public/landing.html')); });
app.get('/tv', (req, res) => { res.sendFile(path.resolve('public/index.html')); });
app.get('/play', (req, res) => { res.sendFile(path.resolve('public/play.html')); });
app.get('/host', (req, res) => { res.sendFile(path.resolve('public/host.html')); });
app.get('/info', (req, res) => { res.sendFile(path.resolve('public/info.html')); });
app.get('/admin', (req, res) => { res.sendFile(path.resolve('public/admin.html')); });

async function startServer() {
    try {
        console.log('⏳ Verifying cloud database availability...');
        const result = await pool.query('SELECT COUNT(*) FROM questions;');
        console.log(`✅ [Database Connection Verified] Ready for production requests.`);

        const serverInstance = app.listen(PORT, () => {
            console.log(`===============================================`);
            console.log(`🚀 [Voxopo Alive] Server running on port ${PORT}`);
            console.log(`===============================================`);
        });

        const wss = new WebSocketServer({ server: serverInstance });

        wss.on('connection', (socket) => {
            socket.on('message', (messageText) => {
                try {
                    const data = JSON.parse(messageText);
                    
                    if (data.type === 'REGISTER_SCREEN') {
                        const roomCode = data.roomCode;

                        // A room only ever comes into existence through the gated /host
                        // flow -- this used to auto-create one right here for any
                        // unrecognized code sent over a raw WebSocket connection,
                        // completely independent of (and bypassing) the access-code
                        // gate. ROOM_CLOSED reuses the exact same client handler that
                        // already bounces the TV back to its gateway screen and closes
                        // the socket for an admin-reset or emptied-out room.
                        if (!activeRooms[roomCode]) {
                            socket.send(JSON.stringify({ type: 'ROOM_CLOSED' }));
                            return;
                        }

                        activeRooms[roomCode].screens.push(socket);
                        console.log(`✅ [WebSocket] Room ${roomCode} TV layout screen explicitly locked live.`);

                        // Pub look and which mode tiles to show -- sent first so the
                        // TV draws the right lobby.
                        socket.send(JSON.stringify({
                            type: 'ROOM_VENUE',
                            venue: activeRooms[roomCode].venue || null,
                            allowedModes: allowedModesFor(activeRooms[roomCode])
                        }));

                        socket.send(JSON.stringify({
                            type: 'LEADERBOARD_UPDATE',
                            players: Object.values(activeRooms[roomCode].players)
                        }));

                        const currentRoomState = activeRooms[roomCode];
                            if (currentRoomState.gameState !== 'LOBBY') {
                                // Recompute the same category list the CATEGORY_VOTE broadcast used,
                                // so a reconnecting screen shows the real sub-deck names, not defaults.
                                const categories = getCategoriesForMode(currentRoomState.winningGameMode);

                                socket.send(JSON.stringify({
                                    type: 'STATE_CATCH_UP',
                                    gameState: currentRoomState.gameState,
                                    winningGameMode: currentRoomState.winningGameMode,
                                    categories,
                                    activeQuestionData: currentRoomState.activeQuestionData, // Sends the live trivia question text!
                                    // Pass down whatever timer metrics are left on the clock
                                    lobbySecondsLeft: currentRoomState.lobbySecondsLeft,
                                    categorySecondsLeft: currentRoomState.categorySecondsLeft,
                                    gameSecondsLeft: currentRoomState.gameSecondsLeft,
                                    // Round numbers only -- never the secret word or who the
                                    // impostor is, same rule as every other EmpossDurr broadcast.
                                    empossdurrRound: currentRoomState.empossdurr ? currentRoomState.empossdurr.currentRound : null,
                                    empossdurrTotalRounds: currentRoomState.empossdurr ? currentRoomState.empossdurr.totalRounds : null,
                                    profiler: currentRoomState.gameState === 'PROFILER_ROUND' ? profilerTvSnapshot(currentRoomState) : null
                                }));
                                console.log(`[Sync Engine] Sent catch-up payload for active room ${roomCode} to fresh display listener.`);
                            }
                        }
                } catch (err) {
                    console.error('❌ [Socket Error]:', err.message);
                }
            });
            socket.on('close', () => {
                for (const code in activeRooms) {
                    activeRooms[code].screens = activeRooms[code].screens.filter(s => s !== socket);
                }
            });
        });

        // ========================================================
        // 🧹 AUTOMATED GARBAGE COLLECTION REAPER (Keeps room pool fresh)
        // ========================================================
        // Registered once here, outside wss.on('connection', ...) -- it used
        // to be registered INSIDE that callback, so every single new TV
        // connection quietly added another redundant sweep interval that
        // never got cleared, leaking one more every reconnect/page reload
        // for the life of the process.
        const ROOM_TIMEOUT_MS = 60 * 60 * 1000; // 1 Hour (Adjust this to whatever you like!)

        setInterval(() => {
            const now = Date.now();
            let reapedCount = 0;

            for (const code in activeRooms) {
                const room = activeRooms[code];

                // If the room has been sitting completely idle for over an hour, wipe it out
                if (now - room.lastActivity > ROOM_TIMEOUT_MS) {

                    // Clean up and clear out any active room countdown intervals to prevent RAM leaks
                    if (room.timerInterval) clearInterval(room.timerInterval);
                    if (room.lobbyTimerInterval) clearInterval(room.lobbyTimerInterval);
                    if (room.categoryTimerInterval) clearInterval(room.categoryTimerInterval);
                    if (room.revealTimeout) clearTimeout(room.revealTimeout);
                    if (room.emptyRoomTimeout) clearTimeout(room.emptyRoomTimeout);

                    // Securely drop the sockets
                    room.screens.forEach(socket => {
                        try { socket.close(); } catch (e) {}
                    });

                    // Erase the room memory mapping completely out of RAM
                    delete activeRooms[code];
                    reapedCount++;
                }
            }

            if (reapedCount > 0) {
                console.log(`[Reaper Engine] Cleaned up ${reapedCount} dead/abandoned lobby sessions.`);
            }
        }, 5 * 60 * 1000); // Wakes up automatically every 5 minutes to sweep the server

    } catch (error) {
        console.error('❌ [Initialization Exception]:', error.message);
    }
}

startServer();
