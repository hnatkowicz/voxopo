import pool from '../config/database.js';
import { randomUUID } from 'node:crypto';

export const activeRooms = {};

// Every votable game mode. The display side (names, blurbs, icons) lives in
// public/modes.js -- keep the keys in step when adding a mode.
export const GAME_MODE_KEYS = ['TRIVI_YEAH', 'TRIVI_YEAH_II', 'COUNTRY_MONKEY', 'FLAG_ME_DOWN', 'EMPOSSDURR', 'ON_THE_SPECTRUM', 'PROFILER'];
// A venue's access code can limit which modes its rooms offer (a pub shows
// only a few) -- the vote tally only ever has those keys, so a vote for any
// other mode simply never counts.
export function allowedModesFor(room) {
    const allowed = room && room.venue && room.venue.allowedModes;
    return allowed && allowed.length ? allowed : GAME_MODE_KEYS;
}
export function emptyModeVotes(room) {
    return Object.fromEntries(allowedModesFor(room).map(key => [key, 0]));
}

// Recognized subcategory values for TRIVI_YEAH specifically; the per-group
// depth check below (MIN_GROUP_SIZE_FOR_DISTRACTORS) is what actually excludes
// any specific category+subcategory+faction combo that's too thin to supply
// distractors -- this list is just which values are queried for at all. Other
// game modes (Country Monkey, etc.) define their own subcategory vocabulary
// and aren't filtered against this list -- see loadQuestionBank.
const ELIGIBLE_SUBCATEGORIES = ['PERSON', 'PLACE', 'THING', 'EVENT', 'DATE'];
const MIN_GROUP_SIZE_FOR_DISTRACTORS = 4; // correct answer + 3 distractors
const MIN_OWN_WRONG_ANSWERS = 3; // a question with its own pool needs at least 3 to draw from
const MAX_QUESTIONS_PER_GAME = 30;
const MIN_QUESTIONS_PER_GAME = 12;
// Fixed length, no lobby picker for this right now. Was 15; Randy cut it to
// 12 (Oct 2026) to match Profiler's 12 rounds -- consistency across modes.
const DEFAULT_QUESTIONS_PER_GAME = 12;
// Post-game Play Again / Main Menu votes wait this long from the FIRST vote
// cast before resolving with whatever's been cast so far -- long enough that
// everyone actually gets to read the final leaderboard before the room
// moves on, but short enough that it can't be stalled forever by someone who
// never taps anything. Was 20s with a majority early-out; Randy's call was
// that the room only moves on once EVERYONE has voted (or this runs out), so
// 3 of 5 can't drag the table off a game the others were still enjoying.
// See castReturnToLobbyVote.
const GAME_OVER_RETURN_VOTE_SECONDS = 30;
// How long a room survives after its last active player leaves, before it's
// actually closed and the room code freed up -- long enough that a group
// stepping away for a short break (or just wrapping up for now) can come
// straight back to the same code instead of recreating the room from
// scratch. Cancelled the moment anyone (re)joins -- see the join handler.
const ROOM_EMPTY_GRACE_MS = 30 * 60 * 1000;
const REVEAL_DURATION_MS = 5000;
const GAME_ROUND_DURATION_SECONDS = 30;
const FAST_FORWARD_SECONDS = 3; // once everyone's answered, snap the clock down to this for a beat of suspense
const MAX_NAME_LENGTH = 30; // matches the phone's input maxlength
// Phones poll the room every second. One that's been silent this long has
// almost certainly been closed, so its name can be reclaimed by whoever
// types it in next (see the join handler).
const PLAYER_QUIET_RECLAIM_MS = 20 * 1000;

// EmpossDurr (impostor social-deduction mode). Round count scales with the
// roster instead of a flat number -- "roster + 3" gives a small table (5-6
// players) a couple of bonus rounds past one full impostor-rotation's worth
// of variety, without making a big table drag on forever. Bounded on both
// ends so a 2-person test room and a hypothetical 30-person room both land
// somewhere sane. Deliberately NOT a rotation/bag system -- impostor pick
// stays pure independent random every round by design (see design chat):
// true unpredictability is the point, even though it means one player might
// never get picked all game while another gets picked repeatedly.
const EMPOSSDURR_MIN_ROUNDS = 5;
const EMPOSSDURR_MAX_ROUNDS = 12;
// Real family play went both ways on this: no timer at all meant a vote
// could hang forever if someone got absorbed in conversation, but the
// original 15s/10s timers cut discussion off mid-thought. 30s for both
// votes is the compromise -- long enough for the group to actually
// wrap up, short enough that the game doesn't stall on one distracted
// player. A vote still resolves immediately if everyone submits sooner.
const EMPOSSDURR_VOTE_SECONDS = 30;

// On the Spectrum (agree/disagree slider-guessing mode). Points are a flat
// lookup by distance from the named player's locked-in target, not a curve --
// simple to explain out loud at the table, which matters more here than a
// mathematically "smoother" formula would.
const ON_THE_SPECTRUM_EXACT_POINTS = 7;
const ON_THE_SPECTRUM_WITHIN_3_POINTS = 4;
const ON_THE_SPECTRUM_WITHIN_5_POINTS = 2;
const ON_THE_SPECTRUM_WITHIN_8_POINTS = 1;
// Purely for the "Lost in Space" badge, not scoring -- anything past 8 away
// already earns 0 points, so this just adds a laugh on top of a whiff big
// enough to actually be funny rather than just "not close."
const ON_THE_SPECTRUM_LOST_IN_SPACE_DISTANCE = 25;
// Same "give the room time to actually argue about it" reasoning as the
// GAME_OVER return vote, just longer -- the whole point of the reveal is the
// discussion afterward, not rushing to the next topic.
const ON_THE_SPECTRUM_CONTINUE_SECONDS = 45;
// On a shared TV that can't scroll, this is roughly the ceiling before rows
// get too thin to read from across a room -- the rest of the sorted list
// still goes to every phone in full.
const ON_THE_SPECTRUM_TV_REVEAL_LIMIT = 6;

// Clamps a requested question count into [MIN_QUESTIONS_PER_GAME,
// MAX_QUESTIONS_PER_GAME]. Falls back to the fixed default for anything
// missing/non-numeric. The bounds stay in place (and this stays exported) for
// whenever a "Game Night" picker resurfaces the choice; today no caller passes
// a real value, so every room lands on the fixed DEFAULT_QUESTIONS_PER_GAME (12).
export function resolveRequestedQuestionCount(rawValue) {
    const parsed = parseInt(rawValue, 10);
    if (Number.isNaN(parsed)) return DEFAULT_QUESTIONS_PER_GAME;
    return Math.max(MIN_QUESTIONS_PER_GAME, Math.min(parsed, MAX_QUESTIONS_PER_GAME));
}

// Picks k items, each draw weighted by weightOf(item) among what's left.
function weightedSampleWithoutReplacement(items, weightOf, k) {
    const remaining = items.map(item => ({ item, weight: Math.max(0, weightOf(item)) }));
    const picked = [];
    while (picked.length < k && remaining.length) {
        const total = remaining.reduce((sum, entry) => sum + entry.weight, 0);
        let roll = Math.random() * total;
        let index = remaining.findIndex(entry => (roll -= entry.weight) < 0);
        if (index < 0) index = remaining.length - 1;
        picked.push(remaining.splice(index, 1)[0].item);
    }
    return picked;
}

function shuffleArray(items) {
    const copy = [...items];
    for (let i = copy.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [copy[i], copy[j]] = [copy[j], copy[i]];
    }
    return copy;
}

// The real trivia main categories -- their keys double as the `category`
// column value in the questions table, so loadQuestionBank can filter
// directly on room.activeCategoryKey with no separate mapping step.
const TRIVIA_CATEGORIES = [
    { key: 'WWII_HISTORY', label: 'WWII History' },
    { key: 'PRIMARY_SCHOOL', label: 'Primary School' },
    { key: 'POP_CULTURE', label: 'Pop Culture' },
    { key: 'SCIENCE', label: 'Science' },
    { key: 'CAPITALS', label: 'Capitals' },
    { key: 'GEOGRAPHY', label: 'Geography' }
];
// The questions table's game_mode column predates the room-state vote keys
// (TRIVI_YEAH, COUNTRY_MONKEY, ...) and TRIVI_YEAH's rows were already seeded
// under 'TRIVIA' -- kept as a one-off exception rather than renamed. Every
// mode added since just uses its own vote key as the DB value directly, so
// no mapping entry is needed for them.
function gameModeToDbValue(winningGameMode) {
    return winningGameMode === 'TRIVI_YEAH' ? 'TRIVIA' : winningGameMode;
}

// Country Monkey's explicit "pull from every region" option -- unlike the
// per-region keys (AFRICA, EUROPE, ...) this deliberately matches no real
// `category` value, so loadQuestionBank's filter is skipped and it draws
// from the mode's whole pool.
const ALL_REGIONS_KEY = 'WORLDWIDE';

// Real category keys (WWII_HISTORY, Country Monkey's AFRICA/EUROPE/etc.)
// come straight from the `category` column and should filter the question
// bank. The content-less modes' placeholder categories (getCategoriesForMode)
// use synthetic CAT_1/CAT_2/CAT_3 keys instead, which never match a real
// category value -- this tells the two apart without needing a mode-by-mode
// allowlist. ALL_REGIONS_KEY is deliberately non-filtering too.
function isRealCategoryKey(categoryKey) {
    return !!categoryKey && categoryKey !== ALL_REGIONS_KEY && !/^CAT_\d+$/.test(categoryKey);
}

// Shared category list lookup so lobby, category, and reconnect/catch-up
// broadcasts never fall out of sync with each other. The other game modes
// don't have real question content yet, so their categories are synthetic
// placeholders (CAT_1/2/3 keys) that loadQuestionBank never filters on.
export function getCategoriesForMode(winningGameMode) {
    if (winningGameMode === 'COUNTRY_MONKEY') {
        return [
            // 5 regions + World Wide (Randy's call, Oct 2026): Southeast
            // Asia (11 countries) and the Pacific (8) were too thin for a
            // full game, so they folded into ASIA -- same key, new label.
            { key: 'AFRICA', label: 'Africa' },
            { key: 'EUROPE', label: 'Europe' },
            { key: 'ASIA', label: 'Asia & Pacific' },
            { key: 'MIDDLE_EAST_ASIA', label: 'Middle East' },
            { key: 'AMERICAS', label: 'Americas' },
            { key: ALL_REGIONS_KEY, label: 'World Wide!' }
        ];
    }
    // ON_THE_SPECTRUM and EMPOSSDURR have no category vote at all -- see
    // executeLobbyPhaseExpiration, which skips straight into the game for
    // both. ON_THE_SPECTRUM has one unified statement pool with no theme to
    // pick between; EmpossDurr's word pool was already unified the same way,
    // with nothing behind its old CAT_1/2/3 vote screen to actually filter.
    // TRIVI_YEAH also bypasses the vote now (see executeLobbyPhaseExpiration)
    // but still picks a real category -- just automatically instead of by vote.
    return TRIVIA_CATEGORIES;
}

function broadcastToRoom(roomCode, payload) {
    const room = activeRooms[roomCode];
    if (room && room.screens) {
        room.screens.forEach(socket => {
            if (socket.readyState === 1) {
                socket.send(JSON.stringify(payload));
            }
        });
    }
}

// Fired right before a content-missing bounce-to-lobby (see the empty-bank
// and EmpossDurr-startup catch above) so the TV shows *why* everyone just
// got dropped back to module selection instead of it looking like the app
// silently broke. TV-only -- phones just quietly follow the room back to
// the lobby like any other reset, same as they already do.
function broadcastContentUnavailable(roomCode, deckLabel) {
    broadcastToRoom(roomCode, {
        type: 'CONTENT_UNAVAILABLE',
        message: `${deckLabel} isn't ready yet -- back to module selection.`
    });
}

// ==========================================
// PHASE 1: LOBBY MACHINERY
// ==========================================
function startLobbyCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.lobbySecondsLeft = 60;
    if (room.lobbyTimerInterval) return;

    room.lobbyTimerInterval = setInterval(() => {
        room.lobbySecondsLeft--;
        
        if (room.lobbySecondsLeft > 0) {
            broadcastToRoom(roomCode, { type: 'LOBBY_TIMER_TICK', secondsLeft: room.lobbySecondsLeft + " s" });
        } else {
            executeLobbyPhaseExpiration(roomCode);
        }
    }, 1000);
}

function executeLobbyPhaseExpiration(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.lobbyTimerInterval) {
        clearInterval(room.lobbyTimerInterval);
        room.lobbyTimerInterval = null;
    }

    startGameForMode(roomCode, calculateElectionWinner(room));
}

// Everything that happens once a mode has been chosen -- shared by the lobby
// election above and by Play Again (resetRoomForReplay), so every mode gets
// Play Again for free instead of each one needing its own shortcut.
function startGameForMode(roomCode, winningModule) {
    const room = activeRooms[roomCode];
    if (!room) return;
    room.winningGameMode = winningModule;

    // One unified statement pool, no theme to pick between -- skip the
    // category vote screen entirely rather than make everyone click through
    // a "vote" with exactly one option.
    if (winningModule === 'ON_THE_SPECTRUM') {
        startOnTheSpectrumGame(roomCode).catch(error => {
            console.error(`❌ [On the Spectrum] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'On the Spectrum');
            resetRoomToLobby(roomCode);
        });
        return;
    }

    // Profiler only works among people who know each other, and with fewer
    // than 4 every post is close to a coin flip -- so it won't start. Back
    // to the lobby with a notice on the TV saying why, so the room can pick
    // something else (mode votes carry over, so whoever voted Profiler can
    // switch from their phone).
    if (winningModule === 'PROFILER') {
        if (Object.values(room.players).filter(p => !p.left).length < PROFILER_MIN_PLAYERS) {
            broadcastToRoom(roomCode, {
                type: 'CONTENT_UNAVAILABLE',
                message: `Profiler needs at least ${PROFILER_MIN_PLAYERS} players. Pick another game!`
            });
            resetRoomToLobby(roomCode);
            return;
        }
        startProfilerGame(roomCode).catch(error => {
            console.error(`❌ [Profiler] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'Profiler');
            resetRoomToLobby(roomCode);
        });
        return;
    }

    if (winningModule === 'FLAG_ME_DOWN') {
        startFlagMeDownGame(roomCode).catch(error => {
            console.error(`❌ [Flag Me Down] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'Flag Me Down');
            resetRoomToLobby(roomCode);
        });
        return;
    }

    // EmpossDurr's category vote was always cosmetic -- its word pool is
    // unified same as On the Spectrum's statements, with nothing behind the
    // old CAT_1/2/3 screen to actually filter. Skip straight into the round.
    if (winningModule === 'EMPOSSDURR') {
        startEmpossDurrGame(roomCode).catch(error => {
            console.error(`❌ [EmpossDurr] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'EmpossDurr');
            resetRoomToLobby(roomCode);
        });
        return;
    }

    // Jeopardy-style grid prototype -- its own category selection (3 random
    // picks from TRIVI_YEAH_II_CATEGORIES) happens inside startTriviYeahIIGame,
    // no vote screen involved at all.
    if (winningModule === 'TRIVI_YEAH_II') {
        startTriviYeahIIGame(roomCode).catch(error => {
            console.error(`❌ [Trivi-Yeah II] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'Thinking Pants');
            resetRoomToLobby(roomCode);
        });
        return;
    }

    // Trivi-Yeah's categories are real and still filter the question bank --
    // just picked automatically now instead of through a player vote, so the
    // group lands straight on a question instead of a click-through screen.
    if (winningModule === 'TRIVI_YEAH') {
        const categories = getCategoriesForMode('TRIVI_YEAH');
        const picked = categories[Math.floor(Math.random() * categories.length)];
        room.activeCategoryKey = picked.key;
        room.activeDeckName = picked.label;
        console.log(`[Room Engine] Room ${roomCode} starting TRIVI_YEAH. Auto-picked deck: ${picked.label}`);
        startQuestionBankGame(roomCode);
        return;
    }

    room.gameState = 'CATEGORY_VOTE';
    const categories = getCategoriesForMode(winningModule);
    // Fresh vote tally keyed to this mode's actual categories -- the previous
    // room's categoryVotes (if any) belonged to a different mode's key set.
    room.categoryVotes = {};
    categories.forEach(c => { room.categoryVotes[c.key] = 0; });

    // A Start left over from the lobby (the clock started the game before
    // everyone pressed it) mustn't count toward closing this vote.
    Object.values(room.players).forEach(p => { p.requestedStart = false; });

    console.log(`[Room Engine] Room ${roomCode} starting ${winningModule} -- opening its category vote.`);

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_CATEGORY_VOTE',
        winner: winningModule,
        categories
    });

    startCategoryCountdown(roomCode);
}

function calculateElectionWinner(room) {
    const votes = room.votes;
    let maxVotes = -1;
    let candidates = [];

    for (const mode in votes) {
        if (votes[mode] > maxVotes) {
            maxVotes = votes[mode];
            candidates = [mode];
        } else if (votes[mode] === maxVotes) {
            candidates.push(mode);
        }
    }
    if (candidates.length === 1) return candidates[0];

    let earliestTime = new Date('2030-01-01');
    let tieBreakingWinner = candidates[0];

    Object.values(room.players).forEach(player => {
        if (candidates.includes(player.vote)) {
            const playerJoinTime = new Date(player.joinedAt);
            if (playerJoinTime < earliestTime) {
                earliestTime = playerJoinTime;
                tieBreakingWinner = player.vote;
            }
        }
    });
    return tieBreakingWinner;
}

// ==========================================
// PHASE 2: CATEGORY MACHINERY
// ==========================================
function startCategoryCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = 30;
    room.categorySecondsLeft = count;

    if (room.categoryTimerInterval) clearInterval(room.categoryTimerInterval);

    room.categoryTimerInterval = setInterval(() => {
        count--;
        room.categorySecondsLeft = count;
        
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'CATEGORY_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            executeCategoryPhaseExpiration(roomCode);
        }
    }, 1000);
}

async function executeCategoryPhaseExpiration(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.categoryTimerInterval) {
        clearInterval(room.categoryTimerInterval);
        room.categoryTimerInterval = null;
    }

    const winningCategoryKey = calculateCategoryWinner(room);

    const categories = getCategoriesForMode(room.winningGameMode);
    const matchedCategory = categories.find(c => c.key === winningCategoryKey);
    room.activeCategoryKey = winningCategoryKey;
    room.activeDeckName = matchedCategory ? matchedCategory.label : 'General Deck';

    console.log(`[Room Engine] Category selection finalized for Room ${roomCode}. Loaded: ${room.activeDeckName}`);

    await startQuestionBankGame(roomCode);
}

// Shared tail for every mode whose gameplay is a multiple-choice question
// bank (Trivi-Yeah, Country Monkey) -- loads the bank for
// whatever category is already set on the room (room.activeCategoryKey), then
// starts the first question. Called straight from executeLobbyPhaseExpiration
// for Trivi-Yeah (which auto-picks its category, no vote) and from
// executeCategoryPhaseExpiration for the modes that still vote on one.
// EmpossDurr never reaches here -- it has no multiple-choice question bank at
// all, it's a completely separate engine (see PHASE 3B below).
async function startQuestionBankGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    try {
        await loadQuestionBank(room);
    } catch (error) {
        console.error(`❌ [Question Bank] Failed to load questions for Room ${roomCode}:`, error.message);
        return;
    }

    if (room.questionBank.length === 0) {
        // A deck with real map/content assets but no matching DB rows yet
        // (e.g. a region's SQL not applied to this environment) would
        // otherwise leave everyone stuck with zero feedback -- bounce back to
        // the lobby instead so the room recovers and someone can pick a
        // different deck.
        console.error(`❌ [Question Bank] No eligible questions found for Room ${roomCode} (category: ${room.activeCategoryKey}). Returning to lobby instead of hanging.`);
        broadcastContentUnavailable(roomCode, room.activeDeckName || 'This deck');
        resetRoomToLobby(roomCode);
        return;
    }

    startNextQuestion(roomCode);
}

// Pulls every row for the room's winning game mode (filtered down to the
// winning main category whenever that's a real category key -- the
// content-less modes' synthetic CAT_1/2/3 keys never match a real `category`
// column value, so they fall back to drawing from that mode's whole pool).
// Two distractor sources coexist: a question with its own wrong_answers pool
// (>=3 curated wrong answers, 3 drawn at random each play for replayability)
// never needs peers at all; older content still leans on the original
// mechanism -- grouping peers by category+subcategory+faction and pulling
// their correct answers as this question's distractors -- which only works
// if that group has enough peers to supply 3. Shuffled once per room so
// question order (and which questions get asked at all) varies game to game.
async function loadQuestionBank(room) {
    const dbGameMode = gameModeToDbValue(room.winningGameMode);
    const params = [dbGameMode];
    let filters = '';

    // TRIVI_YEAH's subcategory vocabulary (PERSON/PLACE/THING/EVENT/DATE) is
    // specific to it -- other modes define their own and aren't gated by it.
    // A question carrying its own wrong_answers pool is exempt: it doesn't
    // need a subcategory at all since it never draws distractors from peers,
    // so requiring one here would just make it invisible for no reason.
    if (dbGameMode === 'TRIVIA') {
        params.push(ELIGIBLE_SUBCATEGORIES);
        filters += ` AND (subcategory = ANY($${params.length}::text[]) OR wrong_answers IS NOT NULL)`;
    }

    if (isRealCategoryKey(room.activeCategoryKey)) {
        params.push(room.activeCategoryKey);
        filters += ` AND category = $${params.length}`;
    }

    const result = await pool.query(
        `SELECT id, category, subcategory, faction, question_text, correct_answer, wrong_answers, points, visual_asset
         FROM questions
         WHERE game_mode = $1${filters}`,
        params
    );

    const groups = {};
    result.rows.forEach(row => {
        const key = `${row.category}|${row.subcategory}|${row.faction}`;
        if (!groups[key]) groups[key] = [];
        groups[key].push(row);
    });

    // Eligibility is about *distinct* correct answers, not row count -- a
    // group can hold several rows for the same answer (e.g. one country
    // shown via multiple different regional map crops), and those don't
    // each count as a fresh distractor source. Needs >=4 distinct answers
    // to guarantee a real answer plus 3 unique distractors.
    const distinctAnswerCounts = {};
    Object.keys(groups).forEach(key => {
        distinctAnswerCounts[key] = new Set(groups[key].map(r => r.correct_answer)).size;
    });

    const eligibleQuestions = result.rows.filter(row => {
        if ((row.wrong_answers || []).length >= MIN_OWN_WRONG_ANSWERS) return true;
        const key = `${row.category}|${row.subcategory}|${row.faction}`;
        return distinctAnswerCounts[key] >= MIN_GROUP_SIZE_FOR_DISTRACTORS;
    });

    room.questionGroups = groups;
    let candidates = shuffleArray(eligibleQuestions);
    if (room.winningGameMode === 'COUNTRY_MONKEY') {
        room.questionBank = buildCountryMonkeyBank(candidates);
        room.currentQuestionIndex = -1;
        room.askedQuestionIds = new Set();
        return;
    }
    const targetCount = Math.min(room.requestedQuestionCount || MAX_QUESTIONS_PER_GAME, candidates.length);
    room.questionBank = candidates.slice(0, targetCount);
    room.currentQuestionIndex = -1;
    room.askedQuestionIds = new Set();
}

// Country Monkey's question mix, by type (the row's subcategory). Randy's
// starting point (Oct 2026): 15 questions -- 10 maps, 3 flags, 2 water --
// "to be adjusted if necessary... my hunch is more countries." A type with
// too few questions for the region (no Asia & Pacific water yet) is topped
// up with maps. Future types (capitals, landmarks, skylines) are a new
// subcategory plus a number here.
// Landmarks joined as a 15-photo test (Randy, Oct 2026): one flag slot
// became a landmark slot to see how it plays.
const COUNTRY_MONKEY_MIX = { FLAG: 2, LANDMARK: 1, WATER: 2, COUNTRY: 10 };
const COUNTRY_MONKEY_TYPE_LABELS = { COUNTRY: 'Maps', FLAG: 'Flags', LANDMARK: 'Landmarks', WATER: 'Water' };
const countryMonkeyType = row => (row.subcategory && COUNTRY_MONKEY_MIX[row.subcategory] !== undefined) ? row.subcategory : 'COUNTRY';

// Fills the mix from already-shuffled rows. Several maps have more than one
// framing (albania.webp, albania-2.webp) and a country has both a map and a
// flag -- a game never asks about the same answer twice, so each country,
// flag or body of water shows up at most once.
function buildCountryMonkeyBank(shuffledRows) {
    const seenAnswers = new Set();
    const picked = [];
    const takeFrom = (rows, n) => {
        for (const row of rows) {
            if (n <= 0) break;
            if (seenAnswers.has(row.correct_answer)) continue;
            seenAnswers.add(row.correct_answer);
            picked.push(row);
            n--;
        }
        return n; // how many it couldn't fill
    };
    // Flags and water first; whatever they couldn't fill goes to maps.
    let missing = 0;
    Object.entries(COUNTRY_MONKEY_MIX).forEach(([type, count]) => {
        if (type === 'COUNTRY') return;
        missing += takeFrom(shuffledRows.filter(row => countryMonkeyType(row) === type), count);
    });
    missing = takeFrom(shuffledRows.filter(row => countryMonkeyType(row) === 'COUNTRY'), COUNTRY_MONKEY_MIX.COUNTRY + missing);
    // Still short (a thin region)? Take whatever's left, any type.
    if (missing > 0) takeFrom(shuffledRows, missing);
    return shuffleArray(picked);
}

// Question pictures go out under a disguised address (/q-img/<random>), never
// their real path -- a map file named "nigeria.webp" would otherwise hand the
// answer to anyone who long-presses the picture on their phone and opens it
// in a new tab (Randy's catch, Oct 2026). Each room gets its own random
// address per question row, so nothing carries over between rooms.
// server.js's /q-img/:token route turns the address back into the file.
const disguisedAssets = new Map(); // token -> { path, createdAt }
const DISGUISED_ASSET_TTL_MS = 12 * 60 * 60 * 1000; // far longer than any game night
let disguisedAssetSweepAt = Date.now();

function disguisedAssetUrl(room, row) {
    if (!row || !row.visual_asset) return null;
    room.assetTokens = room.assetTokens || {};
    if (room.assetTokens[row.id]) return `/q-img/${room.assetTokens[row.id]}`;

    const now = Date.now();
    if (now - disguisedAssetSweepAt > 60 * 60 * 1000) {
        disguisedAssetSweepAt = now;
        for (const [token, entry] of disguisedAssets) {
            if (now - entry.createdAt > DISGUISED_ASSET_TTL_MS) disguisedAssets.delete(token);
        }
    }
    const token = randomUUID().replace(/-/g, '');
    disguisedAssets.set(token, { path: row.visual_asset, createdAt: now });
    room.assetTokens[row.id] = token;
    return `/q-img/${token}`;
}

// The real public/ path behind a disguised address, or null if unknown.
export function resolveDisguisedAsset(token) {
    const entry = disguisedAssets.get(String(token || ''));
    return entry ? entry.path : null;
}

// Builds the shuffled 4-choice payload for one question row. A question with
// its own wrong_answers pool draws 3 at random straight from it; everything
// else falls back to the original mechanism -- distractors pulled from
// sibling rows sharing subcategory+faction (excluding itself).
function buildQuestionPayload(room, row, categoryLabel) {
    let distractors;
    if ((row.wrong_answers || []).length >= MIN_OWN_WRONG_ANSWERS) {
        distractors = shuffleArray(row.wrong_answers).slice(0, 3);
    } else {
        const groupKey = `${row.category}|${row.subcategory}|${row.faction}`;
        // Dedupe by answer text, not row id -- a sibling row can share this row's
        // own correct answer (e.g. a different map crop of the same country), and
        // without this it could get pulled in as a "wrong" choice identical to the
        // right one, or the same wrong answer could appear in two choice slots.
        const seenAnswers = new Set([row.correct_answer]);
        const distractorPool = [];
        (room.questionGroups[groupKey] || []).forEach(peer => {
            if (peer.id === row.id || seenAnswers.has(peer.correct_answer)) return;
            seenAnswers.add(peer.correct_answer);
            distractorPool.push(peer.correct_answer);
        });
        distractors = shuffleArray(distractorPool).slice(0, 3);
    }

    const shuffledChoices = shuffleArray([row.correct_answer, ...distractors]);
    const letters = ['A', 'B', 'C', 'D'];
    const correctLetter = letters[shuffledChoices.indexOf(row.correct_answer)];

    return {
        questionId: row.id,
        categoryLabel,
        questionText: row.question_text,
        points: row.points,
        visualAsset: disguisedAssetUrl(room, row),
        choiceA: shuffledChoices[0],
        choiceB: shuffledChoices[1],
        choiceC: shuffledChoices[2],
        choiceD: shuffledChoices[3],
        correctLetter
    };
}

function startNextQuestion(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.currentQuestionIndex++;

    if (room.currentQuestionIndex >= room.questionBank.length) {
        // Country Monkey closes every game on a Final Wager (Randy's call,
        // Oct 2026) -- same closer as Thinking Pants, with a map to name.
        if (room.winningGameMode === 'COUNTRY_MONKEY') {
            startCountryMonkeyFinalWager(roomCode).catch(error => {
                console.error(`❌ [Country Monkey] Failed to start Final Wager for Room ${roomCode}:`, error.message);
                endGame(roomCode);
            });
            return;
        }
        endGame(roomCode);
        return;
    }

    const row = room.questionBank[room.currentQuestionIndex];
    room.askedQuestionIds.add(row.id);
    room.answers = {};
    room.answerOrder = [];
    room.gameState = 'GAME_ROUND';

    // currentQuestionData (server-only) carries correctLetter/points for scoring
    // and reveal. activeQuestionData is the public-safe copy with the answer
    // stripped out — it's what gets broadcast, handed to reconnecting/refreshed
    // TV screens via STATE_CATCH_UP, and polled by phones via /api/room-status,
    // so the answer can't leak early through any of those paths.
    const fullQuestionData = buildQuestionPayload(room, row, room.activeDeckName);
    const { correctLetter, ...publicQuestionData } = fullQuestionData;
    room.currentQuestionData = fullQuestionData;
    room.activeQuestionData = {
        ...publicQuestionData,
        questionNumber: room.currentQuestionIndex + 1,
        totalQuestions: room.questionBank.length,
        // This mode starts the clock the moment a question appears, so the
        // NEXT question's picture is fetched in the background now -- nobody
        // should lose seconds to a slow download.
        preloadAsset: disguisedAssetUrl(room, room.questionBank[room.currentQuestionIndex + 1])
    };

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_QUESTION',
        ...room.activeQuestionData
    });

    startGameRoundCountdown(roomCode);
}

// Ranks by score, then correct-answer count, then lifetime times-fastest
// (rewards speed as its own skill, not just a coin-flip), then join time as
// the final fallback -- join time is always unique, so this never leaves two
// players tied for the same medal. Exported so server.js's /api/room-status
// can compute a player's own final placement for the phone's game-over
// screen using the exact same ordering.
export function compareByRank(a, b) {
    return b.score - a.score
        || (b.bullseyeCount || 0) - (a.bullseyeCount || 0)
        || (b.correctAnswers || 0) - (a.correctAnswers || 0)
        || (b.timesFastest || 0) - (a.timesFastest || 0)
        || new Date(a.joinedAt) - new Date(b.joinedAt);
}

function endGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }

    room.gameState = 'GAME_OVER';
    // Players who left mid-game keep their score internally (in case they
    // rejoin before this fires) but don't appear in the final standings.
    const finalStandings = Object.values(room.players).filter(p => !p.left).sort(compareByRank);

    const roundsPlayedDescription = room.winningGameMode === 'EMPOSSDURR'
        ? `${room.empossdurr ? room.empossdurr.currentRound : 0} rounds`
        : room.winningGameMode === 'TRIVI_YEAH_II'
            ? `${room.triviYeahII ? room.triviYeahII.round : 0}/${room.triviYeahII ? room.triviYeahII.totalRounds : 0} rounds`
        : room.winningGameMode === 'ON_THE_SPECTRUM'
            ? `${room.onTheSpectrum ? room.onTheSpectrum.roundIndex + 1 : 0} rounds`
        : room.winningGameMode === 'PROFILER'
            ? `${room.profiler ? Math.min(room.profiler.round, room.profiler.totalRounds) : 0} rounds`
        : room.winningGameMode === 'FLAG_ME_DOWN'
            ? `${room.flagMeDown ? Math.min(room.flagMeDown.roundIndex + 1, room.flagMeDown.totalRounds) : 0} flags`
            : `${room.questionBank.length} questions`;
    console.log(`🏁 [Game Engine] Room ${roomCode} finished ${roundsPlayedDescription}. Broadcasting final leaderboard.`);

    broadcastToRoom(roomCode, {
        type: 'GAME_OVER',
        players: finalStandings
    });
}

// ==========================================
// PHASE 3C: TRIVI-YEAH II ENGINE (Jeopardy-style grid, prototype)
// ==========================================
// Board shape: 3 categories x 4 point tiers = 12 tiles, drawn from the
// TRIVI_YEAH_II question pool seeded separately (trivi_yeah_ii_prototype.sql).
// No category vote, no sub-category filtering -- categories are picked at
// random when the board is built, same "skip straight into it" philosophy
// as every other mode's lobby-close bypass. Phase 1 scope deliberately
// excludes Daily Double/side-betting and the Bonus/speed currency -- picker
// privilege is the one piece of that design pulled forward, since "fastest
// correct answerer picks next" is core to how the board actually plays.
const TRIVI_YEAH_II_CATEGORIES = [
    { key: 'SCIENCE_NATURE', label: 'Science & Nature' },
    { key: 'MOVIES_TV', label: 'Movies & TV' },
    { key: 'MUSIC', label: 'Music' },
    { key: 'SPORTS', label: 'Sports' },
    { key: 'WORLD_HISTORY', label: 'World History' },
    { key: 'GEOGRAPHY', label: 'Geography' },
    { key: 'TECHNOLOGY', label: 'Technology' },
    { key: 'FOOD_AND_DRINK', label: 'Food & Drink' },
    { key: 'MYTHOLOGY', label: 'Mythology' },
    { key: 'LITERATURE', label: 'Literature' },
    { key: 'ASTRONOMY_SPACE', label: 'Astronomy & Space' },
    { key: 'ART_AND_ARCHITECTURE', label: 'Art & Architecture' },
    { key: 'FAMOUS_FIRSTS', label: 'Famous Firsts' },
    { key: 'FAMOUS_KNIGHTS', label: 'Famous (K)nights' },
    { key: 'JUST_IN_TIME', label: 'Just in Time' },
    { key: 'FICTIONAL_LOCATIONS', label: 'Fictional Locations' },
    { key: 'LYRICS', label: 'Lyrics' },
    // Grown-up word trivia, folded from Trivi-yeah!'s Primary School word
    // questions (Randy: pub-safe, not a laughing stock). content/word_nerd.csv.
    { key: 'WORD_NERD', label: 'Word Nerd' },
    // Picture category: Randy's maps (public/maps/), shared with the Country
    // Monkey mode. 80 maps, 20 per tier (trivi_yeah_ii_country_monkey.sql).
    { key: 'COUNTRY_MONKEY', label: 'Country Monkey' },
    // Randy's flags (public/flags/, trivi_yeah_ii_flag_me_down.sql, 80) and
    // water maps (public/water/, trivi_yeah_ii_wet_pants.sql, 48).
    { key: 'FLAG_ME_DOWN', label: 'Flag Me Down' },
    { key: 'WET_PANTS', label: 'Wet Pants' }
];
const TRIVI_YEAH_II_CATEGORIES_PER_BOARD = 3;
const TRIVI_YEAH_II_TIERS = [100, 200, 300, 400];
// Both pauses grow with the tile's value -- per family playtest, harder
// (higher-point) questions deserve more time to take in. 100 -> 400 points:
// category 2.0 -> 3.5s, question reading 4 -> 7s. The 100-point values are
// the old flat ones (the reading pause was already doubled once per family
// feedback, so options don't bias the room before everyone's read it).
const TRIVI_YEAH_II_CATEGORY_REVEAL_MS = { 100: 2000, 200: 2500, 300: 3000, 400: 3500 };
const TRIVI_YEAH_II_QUESTION_REVEAL_MS = { 100: 4000, 200: 5000, 300: 6000, 400: 7000 };
function triviYeahIIPauseFor(pauses, points) {
    return pauses[points] || pauses[400];
}
const TRIVI_YEAH_II_ANSWER_SECONDS = 10;
// Picking a tile used to have no clock, so a picker who wandered off froze
// the board. Randy's call after a family playtest: 30s, then a random tile.
const TRIVI_YEAH_II_PICK_SECONDS = 30;

// Traps (Randy's design, Oct 2026): sweeping a column ALONE in round 2 or 3
// earns the sweeper a secret trap to hide on one of the board's remaining
// tiles (see finalizeTriviYeahIITileClear for what counts as a sweep).
// Deliberately rare and deliberately secret -- nobody else learns whether a
// trap was set, or where, until someone picks that tile. No carry-over: if
// the sweep cleared the board, or it's round 1, there's simply no trap. A
// trap placed on a Doubler tile fizzles silently (the Doubler wins).
const TRIVI_YEAH_II_TRAP_SET_SECONDS = 30; // then no trap -- an idle setter can't freeze the board
const TRIVI_YEAH_II_TRAP_REVEAL_MS = 3500; // "TRAP! Set by Jake" beat before the question
const TRIVI_YEAH_II_TRAPS = {
    PANTS_ON_FIRE: { label: 'Pants on Fire', emoji: '🔥', rule: 'Everyone must answer -- no passing. Wrong answers lose double.' },
    HOT_SEAT: { label: 'Hot Seat', emoji: '🪑', rule: 'The picker answers alone -- no passing. Right or wrong, it counts double.' },
    WEDGIE: { label: 'Wedgie', emoji: '🩲', rule: "Normal question -- but if the picker misses it, the trap setter collects the points." }
};
// Column sweep: every tile in a category right -- speed doesn't matter.
// Paid to EVERY sweeper; only a lone sweeper also earns a trap. Was 200 for
// a solo fastest-correct sweep; Randy raised it to 400 when sweeps became
// "all correct" (Oct 2026) -- watch it in play, 300 is the fallback if a
// single miss on an easy column starts to feel too punishing.
const TRIVI_YEAH_II_COLUMN_SWEEP_BONUS = 400;
const TRIVI_YEAH_II_SWEEP_MIN_RIGHT = 3; // a Hot Seat you were locked out of doesn't count, but you still need the other 3
const TRIVI_YEAH_II_TOTAL_ROUNDS = 3;
const TRIVI_YEAH_II_ROUND_TRANSITION_MS = 3000; // "Round N complete!" announcement, before the next board appears
const TRIVI_YEAH_II_DOUBLERS_PER_ROUND = [0, 1, 2]; // indexed by round - 1
const TRIVI_YEAH_II_DOUBLER_REVEAL_MS = 2500; // "DOUBLER!" beat, after the normal category reveal
const TRIVI_YEAH_II_WAGER_TIMEOUT_MS = 20000; // backstop if the picker never sets a wager
const TRIVI_YEAH_II_SIDE_BET_SECONDS = 20; // was 10 -- too tight in practice: a late bet (polling lag + reaction time) landed after the phase had already moved on and got silently dropped, which read as "it timed out" / "didn't record" / defaulted to a sat-out result

// Final Wager -- a Final-Jeopardy-style closer after round 3's board clears.
// Every active player privately wagers against their OWN score, then
// everyone gets the same single (harder) free-text question, then wagers
// and answers reveal one player at a time, lowest score first, building to
// the leader last -- the one dramatic beat the Doubler's informed betting
// deliberately doesn't have.
const TRIVI_YEAH_II_FINAL_CATEGORY_REVEAL_MS = 3000; // "FINAL WAGER" + topic, before wagering opens
const TRIVI_YEAH_II_FINAL_WAGER_TIMEOUT_MS = 30000; // backstop if a player never wagers -- defaults to 0
const TRIVI_YEAH_II_FINAL_ANSWER_SECONDS = 30; // fixed, matches thirty-second-timer.mp3 -- never fast-forwarded, even if everyone's answered early
const TRIVI_YEAH_II_FINAL_REVEAL_STEP_MS = 4500; // pause between each player's one-by-one reveal
const TRIVI_YEAH_II_FINAL_GAME_OVER_DELAY_MS = 2500; // beat after the last reveal before GAME_OVER takes over

// Used both for the very first tile of the game (no "previous question" yet
// to crown a picker) and as the fallback when nobody answers a question
// correctly (nobody earns the pick honestly, so it falls to chance instead).
function pickRandomActivePlayer(room) {
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    if (activePlayers.length === 0) return null;
    return activePlayers[Math.floor(Math.random() * activePlayers.length)].name;
}

// The client-safe view of the board -- category/points/cleared only. The
// underlying question row (and its correct answer) stays server-side until
// a tile is actually picked and staged through the reveal sequence below.
function publicTriviYeahIIGrid(room) {
    return room.triviYeahII.grid.map((cell, index) => ({
        index,
        categoryLabel: cell.categoryLabel,
        points: cell.points,
        cleared: cell.cleared
    }));
}

// Builds one round's 12-tile board (3 random categories x 4 tiers, one
// random question per combo) and returns it, throwing if the content pool
// can't fill every tile. Pure -- no room mutation -- so it's safe to call
// again for round 2/3 without tearing down state first. doublersCount tiles
// are marked isDoubler at random -- hidden from the public grid view
// (publicTriviYeahIIGrid never includes it), revealed only once picked.
// house (optional): { key, label, usedIds } -- a venue's own questions as
// the LEFT column (always the same spot, so regulars learn where it lives).
// House sets aren't in TRIVI_YEAH_II_CATEGORIES, so they never turn up on an
// ordinary board. usedIds keeps a game's house rounds from repeating a
// question; an incomplete house set just means a normal board.
async function buildTriviYeahIIBoard(doublersCount, house = null, usedCategoryKeys = new Set()) {
    // Only categories with a question at every tier in the database are
    // eligible -- so a category can ship in code before its .sql file has been
    // run in Neon (or be missing a tier) without ever breaking a game.
    const tierCounts = await pool.query(
        `SELECT category, points, COUNT(*) AS n
         FROM questions
         WHERE game_mode = 'TRIVI_YEAH_II' AND points = ANY($1::int[])
         GROUP BY category, points`,
        [TRIVI_YEAH_II_TIERS]
    );
    // A category's depth = questions at its THINNEST tier (40 easy ones don't
    // help if there are only 5 at 400 -- those 400s are what repeat).
    const tiersByCategory = {};
    tierCounts.rows.forEach(r => {
        tiersByCategory[r.category] = tiersByCategory[r.category] || {};
        tiersByCategory[r.category][Number(r.points)] = Number(r.n);
    });
    const depthOf = key => Math.min(...TRIVI_YEAH_II_TIERS.map(t => (tiersByCategory[key] || {})[t] || 0));
    const completeKeys = new Set(Object.keys(tiersByCategory).filter(key => depthOf(key) > 0));
    const eligibleCategories = TRIVI_YEAH_II_CATEGORIES.filter(c => completeKeys.has(c.key));
    const useHouse = !!(house && completeKeys.has(house.key));
    if (house && !useHouse) console.warn(`[Thinking Pants] House set ${house.key} isn't complete in the database (every tier needed) -- normal board instead.`);
    // Deeper categories come up more often (Randy, Oct 2026: thin ones should
    // be rarer so their questions don't repeat). Weight = square root of the
    // depth, so a category 4x as deep shows up about 2x as often -- a nudge,
    // not a takeover (proportional would put the 80-question geography
    // categories on most boards). A category already used earlier in this
    // game sits out, unless there aren't enough others to fill the board.
    const needed = TRIVI_YEAH_II_CATEGORIES_PER_BOARD - (useHouse ? 1 : 0);
    const fresh = eligibleCategories.filter(c => !usedCategoryKeys.has(c.key));
    let picked = weightedSampleWithoutReplacement(fresh, c => Math.sqrt(depthOf(c.key)), needed);
    if (picked.length < needed) {
        const repeats = eligibleCategories.filter(c => !picked.includes(c));
        picked = picked.concat(weightedSampleWithoutReplacement(repeats, c => Math.sqrt(depthOf(c.key)), needed - picked.length));
    }
    const chosenCategories = useHouse ? [{ key: house.key, label: house.label }, ...picked] : picked;
    if (chosenCategories.length < TRIVI_YEAH_II_CATEGORIES_PER_BOARD) {
        throw new Error(`Only ${chosenCategories.length} complete Trivi-Yeah II categories in the database`);
    }

    const result = await pool.query(
        `SELECT id, category, question_text, correct_answer, wrong_answers, points, visual_asset
         FROM questions
         WHERE game_mode = 'TRIVI_YEAH_II' AND category = ANY($1::text[])`,
        [chosenCategories.map(c => c.key)]
    );

    const grid = [];
    chosenCategories.forEach(cat => {
        TRIVI_YEAH_II_TIERS.forEach(tier => {
            let tierRows = result.rows.filter(r => r.category === cat.key && r.points === tier);
            if (useHouse && cat.key === house.key) {
                const fresh = tierRows.filter(r => !house.usedIds.has(r.id));
                if (fresh.length) tierRows = fresh;
            }
            const row = shuffleArray(tierRows)[0];
            if (useHouse && cat.key === house.key && row) house.usedIds.add(row.id);
            grid.push({
                categoryKey: cat.key,
                categoryLabel: cat.label,
                points: tier,
                row,
                cleared: false
            });
        });
    });

    // A category+tier with zero matching rows (an incomplete content pool)
    // would otherwise sit silently in the grid as `row: undefined` -- the
    // board would display just fine (categoryLabel/points don't need the
    // row) and only crash much later, uncaught inside a bare setTimeout,
    // the moment some player actually picks that one specific tile. Catching
    // it here instead -- before the caller touches gameState or broadcasts
    // anything -- means the room can bounce to the lobby with an honest
    // reason up front, instead of silently hanging mid-game once someone
    // finally hits it.
    if (grid.some(cell => !cell.row)) {
        throw new Error(`Incomplete Trivi-Yeah II content pool for categories: ${chosenCategories.map(c => c.label).join(', ')}`);
    }

    if (doublersCount > 0) {
        const doublerIndices = shuffleArray(grid.map((_, i) => i)).slice(0, doublersCount);
        doublerIndices.forEach(i => { grid[i].isDoubler = true; });
    }

    return { grid, chosenCategories };
}

async function startTriviYeahIIGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.gameState = 'TRIVI_YEAH_II_ROUND';
    room.triviYeahII = {
        round: 1,
        totalRounds: TRIVI_YEAH_II_TOTAL_ROUNDS,
        grid: [],
        currentPicker: pickRandomActivePlayer(room),
        phase: 'PICK_TILE',
        activeCellIndex: null,
        activeQuestionData: null, // server-only, carries correctLetter once a tile is staged
        answers: {},
        answerOrder: [],
        clearedCount: 0,
        doubler: null // { wagerAmount, sideBets } while a Doubler tile is in progress
    };

    await startTriviYeahIIRound(roomCode);
}

// Builds and broadcasts the board for whatever round room.triviYeahII.round
// is currently set to -- used both for the game's opening board (round 1,
// called from startTriviYeahIIGame) and for every subsequent round's fresh
// board once the previous one fully clears (see evaluateTriviYeahIIAnswers).
// currentPicker is deliberately left untouched -- whoever earned the next
// pick at the end of the previous round carries that privilege straight
// into the new board, same continuity Daily Double-style shows use.
async function startTriviYeahIIRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;

    const doublersCount = TRIVI_YEAH_II_DOUBLERS_PER_ROUND[ty2.round - 1] || 0;
    // House column (set per access code on /admin): rounds 1 & 3 by default
    // -- the venue opens and closes the night, round 2 is all general -- or
    // every round for one-off events (weddings, showers, PTA nights).
    const houseSetting = room.venue && room.venue.house;
    const houseThisRound = houseSetting && (houseSetting.rounds === 'ALL' || (houseSetting.rounds === 'ROUNDS_1_3' && (ty2.round === 1 || ty2.round === 3)));
    if (houseSetting && !ty2.usedHouseIds) ty2.usedHouseIds = new Set();
    ty2.usedCategoryKeys = ty2.usedCategoryKeys || new Set(); // no general category twice in one game
    const { grid, chosenCategories } = await buildTriviYeahIIBoard(doublersCount,
        houseThisRound ? { key: houseSetting.key, label: houseSetting.label, usedIds: ty2.usedHouseIds } : null,
        ty2.usedCategoryKeys);
    chosenCategories.forEach(c => ty2.usedCategoryKeys.add(c.key));

    ty2.grid = grid;
    ty2.phase = 'PICK_TILE';
    ty2.activeCellIndex = null;
    ty2.activeQuestionData = null;
    ty2.answers = {};
    ty2.answerOrder = [];
    ty2.clearedCount = 0;
    ty2.doubler = null;
    ty2.trap = null; // traps never carry over -- each board starts clean
    ty2.pendingTrapSetter = null;
    if (!ty2.currentPicker) ty2.currentPicker = pickRandomActivePlayer(room);

    console.log(`[Trivi-Yeah II] Room ${roomCode} round ${ty2.round}/${ty2.totalRounds} board set: ${chosenCategories.map(c => c.label).join(', ')}. First pick: ${ty2.currentPicker}`);

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_TRIVI_YEAH_II',
        grid: publicTriviYeahIIGrid(room),
        currentPicker: ty2.currentPicker,
        round: ty2.round,
        totalRounds: ty2.totalRounds
    });
    startTriviYeahIIPickTimer(roomCode);
}

// Staged reveal, start to finish: category+points alone, then (after a
// beat) the question text, then (after another beat) the answer choices and
// the answer clock -- matching the "category before question before
// buttons" pacing agreed on, so nobody's reading answers before they've
// even seen what's being asked.
function startTriviYeahIIPickTimer(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    let count = TRIVI_YEAH_II_PICK_SECONDS;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (ty2 !== room.triviYeahII || ty2.phase !== 'PICK_TILE') {
            clearInterval(room.timerInterval);
            room.timerInterval = null;
            return;
        }
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
            return;
        }
        clearInterval(room.timerInterval);
        room.timerInterval = null;
        const open = ty2.grid.map((cell, index) => ({ cell, index })).filter(({ cell }) => !cell.cleared);
        if (open.length === 0) return;
        const { index } = open[Math.floor(Math.random() * open.length)];
        console.log(`[Trivi-Yeah II] Room ${roomCode}: ${ty2.currentPicker} ran out of time -- random tile ${index}.`);
        broadcastToRoom(roomCode, { type: 'TRIVI_YEAH_II_AUTO_PICK', picker: ty2.currentPicker, index });
        startTriviYeahIITileReveal(roomCode, index);
    }, 1000);
}

function startTriviYeahIITileReveal(roomCode, cellIndex) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[cellIndex];

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; } // the pick clock
    ty2.activeCellIndex = cellIndex;
    ty2.trap = null;
    ty2.lastTrapOutcome = null;
    ty2.phase = 'CATEGORY_REVEAL';
    ty2.preloadAsset = cell.isDoubler ? null : disguisedAssetUrl(room, cell.row);
    ty2.answers = {};
    ty2.answerOrder = [];
    ty2.doubler = null;

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_CATEGORY_REVEAL',
        index: cellIndex,
        categoryLabel: cell.categoryLabel,
        points: cell.points,
        // Fetched in the background during the category beat so the picture
        // is ready when the question appears. Never for a Doubler: the picker
        // wagers before seeing the question.
        preloadAsset: ty2.preloadAsset
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        if (cell.isDoubler) {
            revealTriviYeahIIDoubler(roomCode);
        } else if (cell.trap) {
            revealTriviYeahIITrap(roomCode);
        } else {
            revealTriviYeahIIQuestion(roomCode);
        }
    }, triviYeahIIPauseFor(TRIVI_YEAH_II_CATEGORY_REVEAL_MS, cell.points));
}

// Doubler sequence: a dramatic "DOUBLER!" beat, then the picker sets a
// wager (0 up to the greater of their own score or the tile's own value --
// same floor real Daily Doubles use so a player with a low/negative score
// can still wager something meaningful), then everyone else gets to see
// that wager and bet For/Against/Pass at the tile's own value before the
// question itself ever reveals. Only after side bets close does this
// rejoin the normal question->answer pipeline (revealTriviYeahIIQuestion),
// just gated to the picker alone answering.
function revealTriviYeahIIDoubler(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];

    ty2.phase = 'DOUBLER_REVEAL';
    ty2.doubler = { wagerAmount: null, sideBets: {} };

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_DOUBLER_REVEAL',
        index: ty2.activeCellIndex,
        picker: ty2.currentPicker,
        points: cell.points,
        categoryLabel: cell.categoryLabel
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        openTriviYeahIIWager(roomCode);
    }, TRIVI_YEAH_II_DOUBLER_REVEAL_MS);
}

function openTriviYeahIIWager(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];
    const picker = room.players[ty2.currentPicker];
    const maxWager = Math.max(picker ? picker.score : 0, cell.points);

    ty2.phase = 'DOUBLER_WAGER';

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_WAGER_PROMPT',
        picker: ty2.currentPicker,
        maxWager,
        tileValue: cell.points,
        categoryLabel: cell.categoryLabel
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        // Picker never responded -- default to the tile's own value rather
        // than leave the room stuck waiting forever.
        if (room.triviYeahII && room.triviYeahII.doubler && room.triviYeahII.doubler.wagerAmount === null) {
            resolveTriviYeahIIWager(roomCode, cell.points);
        }
    }, TRIVI_YEAH_II_WAGER_TIMEOUT_MS);
}

function resolveTriviYeahIIWager(roomCode, amount) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII || !room.triviYeahII.doubler) return;
    room.triviYeahII.doubler.wagerAmount = amount;

    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }

    openTriviYeahIISideBets(roomCode);
}

function openTriviYeahIISideBets(roomCode, startCount = TRIVI_YEAH_II_SIDE_BET_SECONDS) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];

    ty2.phase = 'DOUBLER_SIDE_BET';

    if (startCount === TRIVI_YEAH_II_SIDE_BET_SECONDS) {
        broadcastToRoom(roomCode, {
            type: 'TRIVI_YEAH_II_SIDE_BETS_OPEN',
            picker: ty2.currentPicker,
            wagerAmount: ty2.doubler.wagerAmount,
            tileValue: cell.points,
            categoryLabel: cell.categoryLabel
        });
    }

    let count = startCount;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);
    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            closeTriviYeahIISideBets(roomCode);
        }
    }, 1000);
}

// Same "snap to a short beat instead of an instant cut" pacing as the
// answer clock's fast-forward -- once every eligible bettor (everyone but
// the picker) has weighed in, there's no reason to sit through the rest of
// the countdown.
function fastForwardTriviYeahIISideBets(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;
    if (room.gameSecondsLeft > FAST_FORWARD_SECONDS) {
        broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: FAST_FORWARD_SECONDS + " s" });
        openTriviYeahIISideBets(roomCode, FAST_FORWARD_SECONDS);
    }
}

function closeTriviYeahIISideBets(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    revealTriviYeahIIQuestion(roomCode);
}

function revealTriviYeahIIQuestion(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];

    ty2.phase = 'QUESTION_REVEAL';
    ty2.activeQuestionData = buildQuestionPayload(room, cell.row, cell.categoryLabel);

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_QUESTION_REVEAL',
        index: ty2.activeCellIndex,
        questionText: ty2.activeQuestionData.questionText,
        visualAsset: ty2.activeQuestionData.visualAsset,
        points: cell.points
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        openTriviYeahIIAnswering(roomCode);
    }, triviYeahIIPauseFor(TRIVI_YEAH_II_QUESTION_REVEAL_MS, cell.points));
}

function openTriviYeahIIAnswering(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const { correctLetter, ...publicQuestionData } = ty2.activeQuestionData;

    ty2.phase = 'ANSWERING';

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_ANSWERS_REVEAL',
        index: ty2.activeCellIndex,
        // Lets every phone know whether this is the normal everyone-answers
        // question or a Doubler (picker alone) without needing a second
        // round-trip -- the non-pickers' screen stays in a spectator view.
        doublerPicker: ty2.doubler ? ty2.currentPicker : null,
        trap: triviYeahIITrapInfo(ty2),
        ...publicQuestionData
    });

    startTriviYeahIIAnswerCountdown(roomCode);
}

function startTriviYeahIIAnswerCountdown(roomCode, startCount = TRIVI_YEAH_II_ANSWER_SECONDS) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = startCount;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);

    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            evaluateTriviYeahIIAnswers(roomCode);
        }
    }, 1000);
}

// Same "snap to a short beat instead of an instant cut" pacing as the
// classic mode's fastForwardToReveal, kept as its own copy (rather than
// generalizing the shared one) so this prototype can't destabilize the
// live classic Trivi-Yeah timer logic while it's still being iterated on.
function fastForwardTriviYeahIIReveal(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;
    if (room.gameSecondsLeft > FAST_FORWARD_SECONDS) {
        // fastForward marks this as the everyone's-answered snap, not a real
        // tick -- the TV's low-time chime must stay silent for it. Without
        // the flag, a snap that happens to land right after the "4 s" tick
        // looked exactly like a natural 4->3 tick and chimed anyway.
        broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: FAST_FORWARD_SECONDS + " s", fastForward: true });
        startTriviYeahIIAnswerCountdown(roomCode, FAST_FORWARD_SECONDS);
    }
}

// Someone left mid-game. Thinking Pants used to have no handling for this
// at all -- and since picking a tile has no clock, a picker who left froze
// the board forever (it broke a whole family game night). Hand the pick to
// someone still here, and don't make anyone wait on the person who's gone.
function handleTriviYeahIILeave(roomCode, leaverName) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const active = Object.values(room.players).filter(p => !p.left);
    if (active.length === 0) return;

    if (ty2.phase === 'PICK_TILE' && ty2.currentPicker === leaverName) {
        ty2.currentPicker = pickRandomActivePlayer(room);
        broadcastToRoom(roomCode, {
            type: 'TRIVI_YEAH_II_PICK_TURN',
            currentPicker: ty2.currentPicker,
            grid: publicTriviYeahIIGrid(room)
        });
        startTriviYeahIIPickTimer(roomCode); // a fresh 30s for whoever took over
        return;
    }
    if (ty2.phase === 'TRAP_SET' && ty2.trapSetter === leaverName) {
        openTriviYeahIIPickTurn(roomCode); // setter left -- no trap
        return;
    }
    if (ty2.phase === 'ANSWERING') {
        if (ty2.doubler || (ty2.trap && ty2.trap.type === 'HOT_SEAT')) {
            // The Doubler's (or Hot Seat's) picker answers alone -- if
            // they're gone, there's nothing to wait for.
            if (ty2.currentPicker === leaverName) fastForwardTriviYeahIIReveal(roomCode);
        } else if (active.every(p => p.name in ty2.answers)) {
            fastForwardTriviYeahIIReveal(roomCode);
        }
        return;
    }
    if (ty2.phase === 'DOUBLER_SIDE_BET' && ty2.doubler) {
        const eligibleBettors = active.filter(p => p.name !== ty2.currentPicker);
        if (eligibleBettors.every(p => p.name in ty2.doubler.sideBets)) fastForwardTriviYeahIISideBets(roomCode);
    }
    // DOUBLER_WAGER and the Final Wager already have backstop timers.
}

// Shared by every resolution path below (normal, Hot Seat, Doubler).
// `results` is who got this tile right and who sat it out through no choice
// of their own: { right: [names], lockedOut: [names] }.
//
// Column sweep (Randy's rule, Oct 2026): you swept a category if you got
// every tile in it right -- speed doesn't matter. On a Doubler, a winning
// side bet (For or Against) counts as right; passing or not betting doesn't,
// same as passing a normal question. A Hot Seat you weren't allowed to answer
// doesn't count against you, but you still need the other 3 -- otherwise
// hiding a Hot Seat could block everyone else's sweep. Everyone who sweeps
// gets the bonus; the trap goes only to a lone sweeper ("owning" the column).
// Joining or leaving mid-column means missed tiles, so no sweep.
function finalizeTriviYeahIITileClear(room, roomCode, cell, results) {
    const ty2 = room.triviYeahII;
    cell.cleared = true;
    cell.rightNames = results.right || [];
    cell.lockedOutNames = results.lockedOut || [];
    ty2.clearedCount++;

    // Plain rules (set per access code on /admin): no sweep bonus, and so no
    // traps. Asked for after a one-on-one family game, where a lone sweep
    // (and the trap it earns) happens all the time and piles on the only
    // other player.
    if (room.venue && room.venue.boardRules === 'PLAIN') return;

    const categoryTiles = ty2.grid.filter(c => c.categoryKey === cell.categoryKey);
    if (!categoryTiles.every(c => c.cleared)) return;

    const sweepers = Object.values(room.players).filter(player => {
        if (player.left) return false;
        let right = 0;
        for (const tile of categoryTiles) {
            if (tile.rightNames.includes(player.name)) right++;
            else if (!tile.lockedOutNames.includes(player.name)) return false;
        }
        return right >= TRIVI_YEAH_II_SWEEP_MIN_RIGHT;
    }).map(player => player.name);
    if (sweepers.length === 0) return;

    sweepers.forEach(name => { room.players[name].score += TRIVI_YEAH_II_COLUMN_SWEEP_BONUS; });
    // A lone sweep in round 2+ with untouched tiles still on the board earns
    // a secret trap -- set up after this tile's reveal (see
    // scheduleTriviYeahIINextStep). No tiles left means no trap.
    if (sweepers.length === 1 && ty2.round >= 2 && ty2.grid.some(c => !c.cleared)) ty2.pendingTrapSetter = sweepers[0];
    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_COLUMN_BONUS',
        playerNames: sweepers,
        categoryLabel: cell.categoryLabel,
        bonusPoints: TRIVI_YEAH_II_COLUMN_SWEEP_BONUS
    });
}

// Shared by both resolution paths below -- once a tile (normal or Doubler)
// has fully resolved and broadcast its own result, decide what's next:
// another pick this round, a round transition, or game over after round 3.
function scheduleTriviYeahIINextStep(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;

    console.log(`[Trivi-Yeah II] Room ${roomCode} tile ${ty2.activeCellIndex} resolved. Next picker: ${ty2.currentPicker}. Cleared ${ty2.clearedCount}/${ty2.grid.length}.`);

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        if (ty2.clearedCount >= ty2.grid.length) {
            if (ty2.round >= ty2.totalRounds) {
                startTriviYeahIIFinalWager(roomCode).catch(error => {
                    // Used to bounce the whole room back to the lobby, throwing
                    // away three full rounds of scores (a playtest lost its
                    // Final Wager this way). If the closer can't load, the
                    // game still ends properly, on its real final standings.
                    console.error(`❌ [Trivi-Yeah II] Failed to start Final Wager for Room ${roomCode}:`, error.message);
                    broadcastToRoom(roomCode, {
                        type: 'CONTENT_UNAVAILABLE',
                        message: `The Final Wager question couldn't load -- here are the final standings.`
                    });
                    endGame(roomCode);
                });
                return;
            }
            // Board's done but more rounds remain -- announce the round
            // change, give the room a beat to read it, then build and
            // broadcast the next board. currentPicker carries over untouched
            // (set earlier this tile), so whoever just earned the pick opens
            // the new round too.
            const completedRound = ty2.round;
            ty2.round += 1;
            broadcastToRoom(roomCode, {
                type: 'TRIVI_YEAH_II_ROUND_TRANSITION',
                completedRound,
                nextRound: ty2.round,
                totalRounds: ty2.totalRounds
            });
            room.revealTimeout = setTimeout(() => {
                room.revealTimeout = null;
                startTriviYeahIIRound(roomCode).catch(error => {
                    console.error(`❌ [Trivi-Yeah II] Failed to start round ${ty2.round} for Room ${roomCode}:`, error.message);
                    broadcastContentUnavailable(roomCode, 'Thinking Pants');
                    resetRoomToLobby(roomCode);
                });
            }, TRIVI_YEAH_II_ROUND_TRANSITION_MS);
            return;
        }
        ty2.activeCellIndex = null;
        ty2.activeQuestionData = null;
        ty2.doubler = null;
        ty2.trap = null;
        const setter = ty2.pendingTrapSetter;
        ty2.pendingTrapSetter = null;
        if (setter && room.players[setter] && !room.players[setter].left) {
            startTriviYeahIITrapSetting(roomCode, setter);
            return;
        }
        openTriviYeahIIPickTurn(roomCode);
    }, REVEAL_DURATION_MS);
}

function openTriviYeahIIPickTurn(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    ty2.phase = 'PICK_TILE';
    ty2.trapSetter = null;
    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_PICK_TURN',
        currentPicker: ty2.currentPicker,
        grid: publicTriviYeahIIGrid(room)
    });
    startTriviYeahIIPickTimer(roomCode);
}

// The sweeper gets a private screen to hide a trap (or decline). Everyone
// else only sees that they're "up to something" -- and the outcome is the
// same "done" either way, so nobody can tell whether a trap was actually set.
function startTriviYeahIITrapSetting(roomCode, setter) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    ty2.phase = 'TRAP_SET';
    ty2.trapSetter = setter;
    console.log(`[Trivi-Yeah II] Room ${roomCode}: ${setter} swept a column and may set a trap.`);
    broadcastToRoom(roomCode, { type: 'TRIVI_YEAH_II_TRAP_SETTING', setter });

    let count = TRIVI_YEAH_II_TRAP_SET_SECONDS;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (ty2 !== room.triviYeahII || ty2.phase !== 'TRAP_SET') {
            clearInterval(room.timerInterval);
            room.timerInterval = null;
            return;
        }
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
            return;
        }
        clearInterval(room.timerInterval);
        room.timerInterval = null;
        console.log(`[Trivi-Yeah II] Room ${roomCode}: ${setter} ran out of time -- no trap.`);
        openTriviYeahIIPickTurn(roomCode);
    }, 1000);
}

// type null = the setter chose "No trap". Returns nothing about whether the
// trap actually stuck -- a Doubler tile (or an already-trapped one) quietly
// swallows it, and the setter is never told.
function placeTriviYeahIITrap(roomCode, cellIndex, type) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    const cell = type ? ty2.grid[cellIndex] : null;
    if (cell && !cell.isDoubler && !cell.trap) {
        cell.trap = { type, setter: ty2.trapSetter };
        console.log(`[Trivi-Yeah II] Room ${roomCode}: ${ty2.trapSetter} hid ${type} on tile ${cellIndex}.`);
    } else if (cell) {
        console.log(`[Trivi-Yeah II] Room ${roomCode}: ${ty2.trapSetter}'s ${type} on tile ${cellIndex} fizzled (${cell.isDoubler ? 'Doubler' : 'already trapped'}).`);
    } else {
        console.log(`[Trivi-Yeah II] Room ${roomCode}: ${ty2.trapSetter} chose no trap.`);
    }
    openTriviYeahIIPickTurn(roomCode);
}

function revealTriviYeahIITrap(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;
    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];
    ty2.trap = { ...cell.trap, picker: ty2.currentPicker };
    ty2.phase = 'TRAP_REVEAL';
    const info = TRIVI_YEAH_II_TRAPS[ty2.trap.type];
    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_TRAP_REVEAL',
        trapType: ty2.trap.type,
        label: info.label,
        emoji: info.emoji,
        rule: info.rule,
        setter: ty2.trap.setter,
        picker: ty2.currentPicker,
        points: cell.points,
        categoryLabel: cell.categoryLabel
    });
    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        revealTriviYeahIIQuestion(roomCode);
    }, TRIVI_YEAH_II_TRAP_REVEAL_MS);
}

// Status-friendly view of the live trap (null when there isn't one).
export function triviYeahIITrapInfo(ty2) {
    if (!ty2 || !ty2.trap) return null;
    const info = TRIVI_YEAH_II_TRAPS[ty2.trap.type];
    return { type: ty2.trap.type, label: info.label, emoji: info.emoji, rule: info.rule, setter: ty2.trap.setter, picker: ty2.trap.picker };
}

// Hot Seat: the picker answered alone, double or nothing either way. The
// fastest-correct bolt isn't touched (same as a Doubler -- "fastest" means
// nothing with one answerer).
function evaluateTriviYeahIIHotSeat(room, roomCode, cell, correctLetter, pickerName) {
    const ty2 = room.triviYeahII;
    const pickerCorrect = ty2.answers[pickerName] === correctLetter;
    const delta = cell.points * 2 * (pickerCorrect ? 1 : -1);
    const picker = room.players[pickerName];
    if (picker) {
        picker.score += delta;
        if (pickerCorrect) picker.correctAnswers = (picker.correctAnswers || 0) + 1;
    }
    const nextPicker = pickerCorrect && picker && !picker.left ? pickerName : pickRandomActivePlayer(room);
    const trapOutcome = { ...triviYeahIITrapInfo(ty2), pickerCorrect, delta };
    ty2.lastTrapOutcome = trapOutcome;

    ty2.currentPicker = nextPicker;
    finalizeTriviYeahIITileClear(room, roomCode, cell, {
        right: pickerCorrect ? [pickerName] : [],
        lockedOut: Object.keys(room.players).filter(name => name !== pickerName)
    });

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_ROUND_REVEAL',
        index: ty2.activeCellIndex,
        correctLetter,
        answers: ty2.answers,
        nextPicker,
        grid: publicTriviYeahIIGrid(room),
        trap: trapOutcome
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });
    scheduleTriviYeahIINextStep(roomCode);
}

function evaluateTriviYeahIIAnswers(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.triviYeahII) return;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }

    const ty2 = room.triviYeahII;
    const cell = ty2.grid[ty2.activeCellIndex];
    const correctLetter = ty2.activeQuestionData.correctLetter;
    const points = cell.points;

    ty2.phase = 'ROUND_REVEAL';
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: "TIME'S UP!" });

    if (ty2.doubler) {
        evaluateTriviYeahIIDoublerAnswer(room, roomCode, cell, correctLetter);
        return;
    }

    const trap = ty2.trap;
    const tilePicker = ty2.currentPicker; // still this tile's picker until nextPicker is set below
    if (trap && trap.type === 'HOT_SEAT') {
        evaluateTriviYeahIIHotSeat(room, roomCode, cell, correctLetter, tilePicker);
        return;
    }

    // Picker privilege: whoever answered correctly fastest earns the next
    // pick (answerOrder is submission order, so the first match is the
    // fastest). Nobody correct -- including nobody answering at all --
    // falls back to a random active player, same as the opening tile.
    const fastestCorrectName = ty2.answerOrder.find(name => ty2.answers[name] === correctLetter);
    const nextPicker = fastestCorrectName || pickRandomActivePlayer(room);
    const onFire = trap && trap.type === 'PANTS_ON_FIRE';

    Object.values(room.players).forEach(player => {
        if (player.left) return;
        const submitted = ty2.answers[player.name];
        if (submitted === correctLetter) {
            player.score += points;
            player.correctAnswers = (player.correctAnswers || 0) + 1;
        } else if (onFire) {
            // Pants on Fire: everyone MUST answer -- a wrong answer or no
            // answer at all costs double.
            player.score -= points * 2;
        } else if (submitted && submitted !== 'PASS') {
            // A real wrong guess costs the same amount the tile would have
            // paid out -- symmetric risk, scaling with how hard the question
            // was. PASS and silence (no submission at all) are both treated
            // as sitting this one out, never penalized -- the penalty is for
            // guessing wrong, not for being unsure.
            player.score -= points;
        }

        // The bolt is a live, contested status, not an accumulated streak --
        // it belongs to whoever earned picker privilege THIS tile (fastest
        // correct, same person the "next pick" banner already names), full
        // stop. Taken away from anyone else holding it, same as classic
        // Trivi-yeah!'s version, so it's always showing the room's current
        // fastest-correct player, never a stale one from a prior tile.
        player.awards = player.awards || {};
        if (player.name === fastestCorrectName) {
            player.awards.SPEED3 = 1;
            player.timesFastest = (player.timesFastest || 0) + 1;
        } else if (player.awards.SPEED3) {
            delete player.awards.SPEED3;
        }
    });

    // Wedgie: the picker missed (wrong, passed, or silent) -> the trap
    // setter collects the tile's points. Can't wedgie yourself.
    let trapOutcome = trap ? { ...triviYeahIITrapInfo(ty2) } : null;
    if (trap && trap.type === 'WEDGIE') {
        const pickerCorrect = ty2.answers[tilePicker] === correctLetter;
        const setterPlayer = room.players[trap.setter];
        const collected = !pickerCorrect && trap.setter !== tilePicker && setterPlayer && !setterPlayer.left ? points : 0;
        if (collected) setterPlayer.score += collected;
        trapOutcome = { ...trapOutcome, pickerCorrect, collected };
    }
    ty2.lastTrapOutcome = trapOutcome;

    ty2.currentPicker = nextPicker;
    finalizeTriviYeahIITileClear(room, roomCode, cell, {
        right: Object.keys(ty2.answers).filter(name => ty2.answers[name] === correctLetter)
    });

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_ROUND_REVEAL',
        index: ty2.activeCellIndex,
        correctLetter,
        answers: ty2.answers,
        nextPicker,
        grid: publicTriviYeahIIGrid(room),
        trap: trapOutcome
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });

    scheduleTriviYeahIINextStep(roomCode);
}

// Doubler resolution -- only the picker actually answered (everyone else
// placed a side bet instead), so this is a solo win/lose on their own
// wager, plus every side bet resolving against that same outcome: For wins
// when the picker's right, Against wins when they're wrong, Pass is inert
// either way. SPEED3 (the bolt) is deliberately left untouched here -- it
// means "fastest," which doesn't mean anything when only one person answered.
function evaluateTriviYeahIIDoublerAnswer(room, roomCode, cell, correctLetter) {
    const ty2 = room.triviYeahII;
    const pickerName = ty2.currentPicker;
    const pickerCorrect = ty2.answers[pickerName] === correctLetter;
    const wagerAmount = ty2.doubler.wagerAmount;

    const picker = room.players[pickerName];
    if (picker) {
        picker.score += pickerCorrect ? wagerAmount : -wagerAmount;
        if (pickerCorrect) picker.correctAnswers = (picker.correctAnswers || 0) + 1;
    }

    // Every side bettor staked the same fixed amount -- the tile's own
    // value (bet.amount, set when the bet was placed) -- so this is simpler
    // than the picker's own wager, just a shared stake split by direction.
    const sideBetResults = {};
    const betWinners = [];
    Object.entries(ty2.doubler.sideBets).forEach(([name, bet]) => {
        const bettor = room.players[name];
        if (!bettor || bet.choice === 'PASS' || !bet.amount) { sideBetResults[name] = 0; return; }
        const won = (bet.choice === 'FOR' && pickerCorrect) || (bet.choice === 'AGAINST' && !pickerCorrect);
        bettor.score += won ? bet.amount : -bet.amount;
        sideBetResults[name] = won ? bet.amount : -bet.amount;
        if (won) betWinners.push(name);
    });

    // ty2.currentPicker is about to move on to whoever picks next -- stash
    // who actually answered this Doubler (and the result) on ty2.doubler
    // itself so a polling phone can still tell the two apart once the
    // "next picker" has already changed out from under it.
    ty2.doubler.pickerName = pickerName;
    ty2.doubler.resolved = true;
    ty2.doubler.pickerCorrect = pickerCorrect;
    ty2.doubler.sideBetResults = sideBetResults;

    // Daily-Double continuity: a correct picker keeps control and opens the
    // next tile themselves; a wrong one forfeits it, same random fallback
    // as nobody answering a normal tile correctly.
    const nextPicker = pickerCorrect ? pickerName : pickRandomActivePlayer(room);
    ty2.currentPicker = nextPicker;
    // A winning side bet counts toward a column sweep, same as a right answer.
    finalizeTriviYeahIITileClear(room, roomCode, cell, {
        right: (pickerCorrect ? [pickerName] : []).concat(betWinners)
    });

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_DOUBLER_RESULT',
        index: ty2.activeCellIndex,
        correctLetter,
        picker: pickerName,
        pickerCorrect,
        wagerAmount,
        sideBetResults,
        nextPicker,
        grid: publicTriviYeahIIGrid(room)
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });

    // ty2.doubler stays populated (now carrying the result) through the
    // ROUND_REVEAL pause so a polling phone can render the outcome --
    // cleared only once the next tile's pick phase actually opens, same
    // moment activeCellIndex/activeQuestionData reset below.
    scheduleTriviYeahIINextStep(roomCode);
}

// ==========================================
// PHASE 3C-2: TRIVI-YEAH II FINAL WAGER (Final-Jeopardy-style closer)
// ==========================================
// Free-text matching: trim, uppercase, collapse whitespace, and strip the
// handful of punctuation marks a typed answer might include -- "Mars."
// and "mars" both need to match 'Mars' without requiring a letter-perfect
// retype.
// Also folds accents ("Côte" = "Cote"), hyphens ("Guinea-Bissau" = "Guinea
// Bissau"), "&" vs "and", "Saint" vs "St", and a leading "The" -- small
// differences that shouldn't cost anyone a wager.
function normalizeFinalWagerAnswer(text) {
    return (text || '')
        .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
        .trim()
        .toUpperCase()
        .replace(/&/g, ' AND ')
        .replace(/[-–—/]/g, ' ')
        .replace(/[.,!?'"’()]/g, '')
        .replace(/\s+/g, ' ')
        .trim()
        .replace(/^THE /, '')
        .replace(/\bSAINT\b/g, 'ST');
}

// Standard dynamic-programming edit distance (insert/delete/substitute, all
// cost 1) between two already-normalized strings. No dependency needed --
// this is the whole algorithm.
function levenshteinDistance(a, b) {
    const m = a.length, n = b.length;
    if (m === 0) return n;
    if (n === 0) return m;
    let prevRow = Array.from({ length: n + 1 }, (_, j) => j);
    for (let i = 1; i <= m; i++) {
        const currRow = [i];
        for (let j = 1; j <= n; j++) {
            currRow[j] = a[i - 1] === b[j - 1]
                ? prevRow[j - 1]
                : 1 + Math.min(prevRow[j - 1], prevRow[j], currRow[j - 1]);
        }
        prevRow = currRow;
    }
    return prevRow[n];
}

// How many typo'd characters to forgive for a string this long -- short
// answers ("Atlas") still need a real match, longer ones ("Sleipnir",
// "Alexander Graham Bell") can absorb more drift before it stops looking
// like the same word. Deliberately modest: this is a safety net for
// genuine misspellings, not a license to guess loosely on a question
// worth real points.
function finalWagerFuzzyTolerance(normalizedLength) {
    if (normalizedLength <= 4) return 1;
    if (normalizedLength <= 8) return 2;
    if (normalizedLength <= 14) return 3;
    return 4;
}

// A Final Wager answer is correct if it exactly matches ANY authored
// variant (full name, surname-only, short title vs. long title -- whatever
// the question's own accepted_answers lists), or is within a small typo
// tolerance of one. Authored variants are for legitimately different
// phrasings; the fuzzy fallback is for misspellings of a phrasing nobody
// explicitly listed -- two different problems, two different mechanisms
// (see design chat).
//
// rivalAnswers (Country Monkey): other real answers the typo net must never
// reach. "Niger" is a close spelling of "Nigeria" but it's a different
// country -- so an answer that IS a rival, or is closer to a rival than to
// the real answer, is wrong. "Nigerria" still counts; "Niger", "Austria"
// (for Australia) and "Zambia" (for Gambia) don't. A dead-even typo
// ("Irak": one letter from Iraq and from Iran) gets the benefit of the
// doubt -- it's a wager, and the spirit of the answer was right.
function isFinalWagerAnswerCorrect(submittedRaw, acceptedAnswers, rivalAnswers = []) {
    const submitted = normalizeFinalWagerAnswer(submittedRaw);
    if (!submitted) return false;
    const accepted = acceptedAnswers.map(normalizeFinalWagerAnswer).filter(Boolean);
    if (accepted.includes(submitted)) return true;
    const acceptedSet = new Set(accepted);
    const rivals = rivalAnswers.map(normalizeFinalWagerAnswer).filter(r => r && !acceptedSet.has(r));
    if (rivals.includes(submitted)) return false;
    const closestRival = rivals.reduce((best, r) => Math.min(best, levenshteinDistance(submitted, r)), Infinity);
    return accepted.some(variant => {
        const tolerance = finalWagerFuzzyTolerance(variant.length);
        const distance = levenshteinDistance(submitted, variant);
        return tolerance > 0 && distance <= tolerance && distance <= closestRival;
    });
}

// One random question from its own 'FINAL_WAGER' category -- a pool
// entirely separate from the 5 regular board categories (never added to
// TRIVI_YEAH_II_CATEGORIES), so it can never show up mid-game and is only
// ever drawn here. subcategory doubles as the dramatic "topic" shown
// before wagering opens, same way real Final Jeopardy announces a category
// before the question itself.
async function pickFinalWagerQuestion() {
    let result;
    try {
        result = await pool.query(
            `SELECT question_text, correct_answer, subcategory, accepted_answers
             FROM questions
             WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER'
             ORDER BY random() LIMIT 1`
        );
    } catch (error) {
        // A database that never got the accepted_answers column (it came with
        // a later revision of trivi_yeah_ii_final_wager_content.sql) shouldn't
        // cost the room its Final Wager -- the fuzzy matcher still works off
        // correct_answer alone.
        console.error(`⚠️ [Trivi-Yeah II] Final Wager query failed (${error.message}) -- retrying without accepted_answers.`);
        result = await pool.query(
            `SELECT question_text, correct_answer, subcategory
             FROM questions
             WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER'
             ORDER BY random() LIMIT 1`
        );
    }
    if (result.rows.length === 0) {
        throw new Error('No Final Wager content available.');
    }
    const row = result.rows[0];
    // accepted_answers is the author's list of legitimate alternate
    // phrasings (surname-only, short title vs. long title, etc.) -- falls
    // back to just the one correct_answer for any row that doesn't bother
    // customizing it.
    const acceptedAnswers = (row.accepted_answers && row.accepted_answers.length > 0)
        ? row.accepted_answers
        : [row.correct_answer];
    return { questionText: row.question_text, correctAnswer: row.correct_answer, acceptedAnswers, topicLabel: row.subcategory || 'Final Wager' };
}

async function startTriviYeahIIFinalWager(roomCode) {
    const question = await pickFinalWagerQuestion();
    startFinalWager(roomCode, { ...question, modeLabel: 'Thinking Pants' });
}

// The Final Wager is shared: Thinking Pants and Country Monkey both close on
// it. The internal gameState keeps its original Thinking Pants name; what
// players see comes from modeLabel. visualAsset (optional) is the question's
// picture, shown once answering opens -- never during the wager, which is
// placed on the topic alone, same as Thinking Pants.
function startFinalWager(roomCode, { questionText, correctAnswer, acceptedAnswers, topicLabel, visualAsset = null, rivalAnswers = [], modeLabel, hints = null }) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.gameState = 'TRIVI_YEAH_II_FINAL_WAGER';
    room.finalWager = {
        modeLabel,
        topicLabel,
        questionText,
        visualAsset,
        correctAnswer, // server-only -- never broadcast until the reveal step that needs it
        acceptedAnswers, // server-only -- the variants correct is actually checked against
        rivalAnswers, // server-only -- near-misses that are a different answer (see isFinalWagerAnswerCorrect)
        hints, // Flag Me Down: { region, capital, mapUrl } -- each one a player opens costs a share of their winnings
        hintsUsed: {}, // name -> ['REGION', 'CAPITAL', 'MAP'] (server-only until the reveal)
        wagers: {},
        answers: {},
        phase: 'CATEGORY_REVEAL',
        revealSteps: [],
        revealIndex: -1
    };

    console.log(`[Final Wager] Room ${roomCode} (${modeLabel}) entering Final Wager. Topic: ${topicLabel}`);

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_FINAL_CATEGORY_REVEAL',
        topicLabel,
        modeLabel
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        openTriviYeahIIFinalWagerPhase(roomCode);
    }, TRIVI_YEAH_II_FINAL_CATEGORY_REVEAL_MS);
}

function openTriviYeahIIFinalWagerPhase(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.finalWager) return;

    room.finalWager.phase = 'WAGER';

    // The picture (if any) downloads in the background while people wager,
    // so it's on screen the instant answering opens.
    broadcastToRoom(roomCode, { type: 'TRIVI_YEAH_II_FINAL_WAGER_OPEN', preloadAsset: room.finalWager.visualAsset });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        // Any active player who never wagered defaults to 0 -- same "don't
        // leave the room stuck waiting forever" backstop as the Doubler.
        const activePlayers = Object.values(room.players).filter(p => !p.left);
        activePlayers.forEach(p => {
            if (!(p.name in room.finalWager.wagers)) room.finalWager.wagers[p.name] = 0;
        });
        openTriviYeahIIFinalAnswerPhase(roomCode);
    }, TRIVI_YEAH_II_FINAL_WAGER_TIMEOUT_MS);
}

function openTriviYeahIIFinalAnswerPhase(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.finalWager) return;
    const fw = room.finalWager;
    // Opens once. When everyone wagered early, the 30s wager backstop was
    // still pending and reopened answering 30s later -- restarting the
    // timer music and handing out a second 30 seconds.
    if (fw.phase !== 'WAGER') return;
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }

    fw.phase = 'ANSWER';

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_FINAL_ANSWER_OPEN',
        topicLabel: fw.topicLabel,
        questionText: fw.questionText,
        visualAsset: fw.visualAsset,
        modeLabel: fw.modeLabel,
        secondsLeft: TRIVI_YEAH_II_FINAL_ANSWER_SECONDS
    });

    // Deliberately no fast-forward-on-everyone-answered here, unlike every
    // other timed phase in this mode -- the full 30 seconds plays out no
    // matter what (see design chat), both for suspense and because it's
    // timed to match thirty-second-timer.mp3 exactly.
    let count = TRIVI_YEAH_II_FINAL_ANSWER_SECONDS;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);
    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            closeTriviYeahIIFinalAnswerPhase(roomCode);
        }
    }, 1000);
}

function closeTriviYeahIIFinalAnswerPhase(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.finalWager) return;
    const fw = room.finalWager;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    fw.phase = 'REVEAL';

    // Lowest score first, building to the leader last -- the deliberate
    // "comeback or confirm the win" climax a hidden wager is for. Ties keep
    // insertion order, which is fine; there's no meaningful tiebreak rule
    // for who reveals first among equals.
    const activePlayers = Object.values(room.players).filter(p => !p.left).sort((a, b) => a.score - b.score);

    fw.revealSteps = activePlayers.map(p => {
        const wagerAmount = fw.wagers[p.name] || 0;
        const rawAnswer = fw.answers[p.name] || '';
        const correct = rawAnswer.length > 0 && isFinalWagerAnswerCorrect(rawAnswer, fw.acceptedAnswers, fw.rivalAnswers);
        // Flag Me Down: each clue opened takes a share off the winnings,
        // rounded up to a whole point; a wrong answer still loses the wager.
        const hintsUsed = (fw.hintsUsed[p.name] || []).length;
        const winAmount = Math.ceil(wagerAmount * Math.max(0, 1 - FLAG_ME_DOWN_HINT_COST * hintsUsed));
        return { playerName: p.name, wagerAmount, winAmount, hintsUsed, answerText: rawAnswer, correct };
    });
    fw.revealIndex = -1;

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_FINAL_REVEAL_START',
        correctAnswer: fw.correctAnswer,
        totalSteps: fw.revealSteps.length
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => advanceTriviYeahIIFinalReveal(roomCode), TRIVI_YEAH_II_FINAL_REVEAL_STEP_MS);
}

// Score deltas are applied one at a time, right as each player's own step
// reveals -- not all at once up front -- so the TV leaderboard visibly
// shifts player by player instead of jumping straight to the final order.
function advanceTriviYeahIIFinalReveal(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.finalWager) return;
    const fw = room.finalWager;

    fw.revealIndex++;
    if (fw.revealIndex >= fw.revealSteps.length) {
        if (room.revealTimeout) clearTimeout(room.revealTimeout);
        room.revealTimeout = setTimeout(() => endGame(roomCode), TRIVI_YEAH_II_FINAL_GAME_OVER_DELAY_MS);
        return;
    }

    const step = fw.revealSteps[fw.revealIndex];
    const player = room.players[step.playerName];
    if (player) {
        player.score += step.correct ? step.winAmount : -step.wagerAmount;
        if (step.correct) player.correctAnswers = (player.correctAnswers || 0) + 1;
    }

    broadcastToRoom(roomCode, {
        type: 'TRIVI_YEAH_II_FINAL_REVEAL_STEP',
        playerName: step.playerName,
        wagerAmount: step.wagerAmount,
        winAmount: step.winAmount,
        hintsUsed: fw.hints ? step.hintsUsed : null,
        answerText: step.answerText,
        correct: step.correct,
        newScore: player ? player.score : null,
        stepIndex: fw.revealIndex,
        totalSteps: fw.revealSteps.length
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => advanceTriviYeahIIFinalReveal(roomCode), TRIVI_YEAH_II_FINAL_REVEAL_STEP_MS);
}

// Country Monkey's closer: a map, flag or body of water (Randy: "can be
// country, flag, or water feature" -- each type equally likely, among those
// the region has) from the region just played (World Wide: any), one nobody
// saw this game, from the easier middle difficulty levels -- typed in,
// with the usual typo net. accepted_answers carries alternate names
// ("Swaziland", "Burma", "Ivory Coast"/"Côte d'Ivoire"); every other answer
// and wrong answer in the mode becomes a rival, so a near-miss that's really
// a different country (Niger for Nigeria) is never accepted.
async function startCountryMonkeyFinalWager(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const region = isRealCategoryKey(room.activeCategoryKey) ? room.activeCategoryKey : null; // null = World Wide
    let result;
    try {
        result = await pool.query(
            `SELECT id, category, subcategory, question_text, correct_answer, wrong_answers, accepted_answers, points, visual_asset
             FROM questions WHERE game_mode = 'COUNTRY_MONKEY'`, []
        );
    } catch (error) {
        console.error(`⚠️ [Country Monkey] Final Wager query failed (${error.message}) -- retrying without accepted_answers.`);
        result = await pool.query(
            `SELECT id, category, subcategory, question_text, correct_answer, wrong_answers, points, visual_asset
             FROM questions WHERE game_mode = 'COUNTRY_MONKEY'`, []
        );
    }
    const allRows = result.rows;
    const asked = new Set(room.questionBank.map(row => row.correct_answer));
    const regionRows = allRows.filter(row => row.visual_asset && (!region || row.category === region) && !asked.has(row.correct_answer));
    if (regionRows.length === 0) throw new Error('No Country Monkey Final Wager question available.');
    const types = [...new Set(regionRows.map(countryMonkeyType))];
    const type = types[Math.floor(Math.random() * types.length)];
    const typeRows = regionRows.filter(r => countryMonkeyType(r) === type);
    // The easier half of the middle difficulty levels, for every type
    // (Randy, Oct 2026 -- "I don't want someone to fight me over this!",
    // then "I want all to have a chance at glory!"). The easiest (US flag,
    // Brazil's map) make a flat finale; the hardest (East African Community,
    // Eswatini's map, the White Nile) are a coin flip to type -- and typing
    // any answer from memory is already hard.
    const levels = [...new Set(typeRows.map(r => r.points))].sort((a, b) => a - b);
    const middle = levels.length >= 3 ? levels.slice(1, -1) : levels;
    const easierMiddle = middle.slice(0, Math.ceil(middle.length / 2));
    const row = shuffleArray(typeRows.filter(r => easierMiddle.includes(r.points)))[0];

    const acceptedAnswers = [row.correct_answer, ...(row.accepted_answers || [])];
    const rivalSet = new Set();
    allRows.forEach(other => {
        if (other.correct_answer === row.correct_answer) return;
        rivalSet.add(other.correct_answer);
        (other.accepted_answers || []).forEach(name => rivalSet.add(name));
    });
    allRows.forEach(other => (other.wrong_answers || []).forEach(name => rivalSet.add(name)));
    acceptedAnswers.forEach(name => rivalSet.delete(name));

    startFinalWager(roomCode, {
        questionText: `${row.question_text} Type its name!`,
        correctAnswer: row.correct_answer,
        acceptedAnswers,
        rivalAnswers: [...rivalSet],
        // "Africa · Flags" -- the wager is placed knowing the region and the
        // kind of question, never the picture itself.
        topicLabel: `${room.activeDeckName || 'World Wide!'} · ${COUNTRY_MONKEY_TYPE_LABELS[type]}`,
        visualAsset: disguisedAssetUrl(room, row),
        modeLabel: 'Country Monkey'
    });
}

// ==========================================
// PHASE 3E: FLAG ME DOWN
// (name the flag before the clues give it away)
// ==========================================
// Randy's design (Oct 2026), after the family loved the flags in Country
// Monkey and asked where "Flag Me Down" went. Each round shows a flag and
// four countries; clues unlock one at a time -- the local region, then the
// capital, then the map -- and you can lock in at any moment. Lock in early
// and right for more points; one lock-in, no changing it, no penalty for a
// wrong answer. 15 rounds (5 easy, 5 medium, 5 hard, in that order), then a
// Final Wager where you can buy the same clues privately on your phone.
// Content: flag_me_down_countries (flag_me_down_countries.sql) -- countries
// only, each with a flag, a map, a local region and a capital.
const FLAG_ME_DOWN_ROUNDS_PER_DIFFICULTY = 5; // x3 difficulties = 15, matching Country Monkey
// How long each stage shows before the next clue: flag only, +region,
// +capital, +map. First guesses -- tune by feel in play.
const FLAG_ME_DOWN_STAGE_MS = [7000, 6000, 6000, 6000];
const FLAG_ME_DOWN_STAGE_POINTS = [400, 300, 200, 100]; // what a right lock-in is worth at each stage
const FLAG_ME_DOWN_STAGE_LABELS = ['Flag', 'Region', 'Capital', 'Map'];
const FLAG_ME_DOWN_REVEAL_MS = 6000;
const FLAG_ME_DOWN_ALL_LOCKED_MS = 1200; // short beat once everyone's locked in, then the reveal
// Final Wager clues: each one you peek at takes this share off what you can
// win (rounded up to a whole point). A wrong answer still loses the wager.
const FLAG_ME_DOWN_HINT_COST = 0.25;

function fmdAsset(room, kind, country) {
    return disguisedAssetUrl(room, { id: `fmd-${kind}-${country.name}`, visual_asset: kind === 'flag' ? country.flag_asset : country.map_asset });
}

// Three believable wrong answers: one from the same local region (so the
// region clue narrows things without settling them), two from elsewhere on
// the same continent -- then the capital decides, and the map is the
// safety net. Falls back to anywhere if a continent runs short.
function fmdChoices(country, pool) {
    const others = pool.filter(c => c.name !== country.name);
    const sameLocal = shuffleArray(others.filter(c => c.local_region === country.local_region));
    const sameContinent = shuffleArray(others.filter(c => c.continent === country.continent && c.local_region !== country.local_region));
    const picked = [];
    const take = (list, n) => { for (const c of list) { if (picked.length >= 3 || n <= 0) break; if (!picked.includes(c.name)) { picked.push(c.name); n--; } } };
    take(sameLocal, 1);
    take(sameContinent, 3 - picked.length);
    take(shuffleArray(others), 3 - picked.length);
    return shuffleArray([country.name, ...picked]);
}

async function startFlagMeDownGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;
    const result = await pool.query(
        `SELECT name, continent, local_region, capital, capital_clue, flag_asset, map_asset, accepted_answers, difficulty
         FROM flag_me_down_countries`
    );
    const countries = result.rows;
    const rounds = [];
    for (const difficulty of [1, 2, 3]) {
        const pick = shuffleArray(countries.filter(c => c.difficulty === difficulty)).slice(0, FLAG_ME_DOWN_ROUNDS_PER_DIFFICULTY);
        if (pick.length < FLAG_ME_DOWN_ROUNDS_PER_DIFFICULTY) throw new Error(`Flag Me Down needs ${FLAG_ME_DOWN_ROUNDS_PER_DIFFICULTY} countries of difficulty ${difficulty}, found ${pick.length}.`);
        rounds.push(...pick);
    }
    room.gameState = 'FLAG_ME_DOWN_ROUND';
    room.flagMeDown = {
        countries,
        rounds,
        roundIndex: -1,
        totalRounds: rounds.length,
        stage: 0,
        phase: 'CLUES', // CLUES | REVEAL
        choices: [],
        lockIns: {}, // name -> { choice, stage }
        lastResults: null
    };
    console.log(`[Flag Me Down] Room ${roomCode} starting ${rounds.length} rounds.`);
    startFlagMeDownRound(roomCode);
}

function startFlagMeDownRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.flagMeDown) return;
    const fmd = room.flagMeDown;
    fmd.roundIndex++;
    if (fmd.roundIndex >= fmd.totalRounds) {
        startFlagMeDownFinalWager(roomCode).catch(error => {
            console.error(`❌ [Flag Me Down] Failed to start Final Wager for Room ${roomCode}:`, error.message);
            endGame(roomCode);
        });
        return;
    }
    const country = fmd.rounds[fmd.roundIndex];
    fmd.current = country;
    fmd.choices = fmdChoices(country, fmd.countries);
    fmd.lockIns = {};
    fmd.lastResults = null;
    fmd.phase = 'CLUES';
    fmd.stage = 0;
    fmd.flagUrl = fmdAsset(room, 'flag', country);
    fmd.mapUrl = null; // sent only once the map clue unlocks
    const next = fmd.rounds[fmd.roundIndex + 1];
    broadcastToRoom(roomCode, {
        type: 'FLAG_ME_DOWN_ROUND',
        round: fmd.roundIndex + 1,
        totalRounds: fmd.totalRounds,
        flagUrl: fmd.flagUrl,
        choices: fmd.choices,
        stage: 0,
        stagePoints: FLAG_ME_DOWN_STAGE_POINTS[0],
        // The next round's flag downloads in the background meanwhile.
        preloadAsset: next ? fmdAsset(room, 'flag', next) : null
    });
    scheduleFlagMeDownStage(roomCode);
}

function scheduleFlagMeDownStage(roomCode) {
    const room = activeRooms[roomCode];
    const fmd = room.flagMeDown;
    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    const roundAtSchedule = fmd.roundIndex;
    room.gameSecondsLeft = Math.round(FLAG_ME_DOWN_STAGE_MS[fmd.stage] / 1000);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        if (room.flagMeDown !== fmd || fmd.roundIndex !== roundAtSchedule || fmd.phase !== 'CLUES') return;
        if (fmd.stage >= FLAG_ME_DOWN_STAGE_MS.length - 1) { revealFlagMeDownRound(roomCode); return; }
        fmd.stage++;
        const country = fmd.current;
        const clue = fmd.stage === 1 ? { region: country.local_region }
            : fmd.stage === 2 ? { capital: country.capital_clue }
            : { mapUrl: (fmd.mapUrl = fmdAsset(room, 'map', country)) };
        broadcastToRoom(roomCode, {
            type: 'FLAG_ME_DOWN_CLUE',
            stage: fmd.stage,
            stageLabel: FLAG_ME_DOWN_STAGE_LABELS[fmd.stage],
            stagePoints: FLAG_ME_DOWN_STAGE_POINTS[fmd.stage],
            ...clue,
            // The map downloads during the capital stage so it's instant.
            preloadAsset: fmd.stage === 2 ? fmdAsset(room, 'map', country) : null
        });
        scheduleFlagMeDownStage(roomCode);
    }, FLAG_ME_DOWN_STAGE_MS[fmd.stage]);
}

function revealFlagMeDownRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.flagMeDown) return;
    const fmd = room.flagMeDown;
    if (fmd.phase !== 'CLUES') return;
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    fmd.phase = 'REVEAL';
    const country = fmd.current;
    const results = Object.values(room.players).filter(p => !p.left).map(player => {
        const lock = fmd.lockIns[player.name];
        const correct = !!lock && lock.choice === country.name;
        const points = correct ? FLAG_ME_DOWN_STAGE_POINTS[lock.stage] : 0;
        if (correct) {
            player.score += points;
            player.correctAnswers = (player.correctAnswers || 0) + 1;
        }
        return { name: player.name, choice: lock ? lock.choice : null, stage: lock ? lock.stage : null, stageLabel: lock ? FLAG_ME_DOWN_STAGE_LABELS[lock.stage] : null, correct, points };
    }).sort((a, b) => b.points - a.points);
    fmd.lastResults = results;
    broadcastToRoom(roomCode, {
        type: 'FLAG_ME_DOWN_REVEAL',
        round: fmd.roundIndex + 1,
        totalRounds: fmd.totalRounds,
        answer: country.name,
        region: country.local_region,
        capital: country.capital,
        flagUrl: fmd.flagUrl,
        mapUrl: fmd.mapUrl || fmdAsset(room, 'map', country),
        results
    });
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: Object.values(room.players).filter(p => !p.left) });
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        if (room.flagMeDown === fmd) startFlagMeDownRound(roomCode);
    }, FLAG_ME_DOWN_REVEAL_MS);
}

function handleFlagMeDownAction(roomCode, room, playerName, cleanText) {
    const fmd = room.flagMeDown;
    const match = /^FLAGLOCK\s+([A-D])$/i.exec(cleanText);
    if (!match) return `⚠️ That action isn't available right now.`;
    if (fmd.phase !== 'CLUES') return `⚠️ Too late -- this one's already revealed.`;
    if (playerName in fmd.lockIns) return `⚠️ Already locked in -- no changing it.`;
    const choice = fmd.choices['ABCD'.indexOf(match[1].toUpperCase())];
    if (!choice) return `⚠️ That's not one of the choices.`;
    fmd.lockIns[playerName] = { choice, stage: fmd.stage };
    broadcastToRoom(roomCode, { type: 'ANSWER_SUBMITTED', playerName });
    checkFlagMeDownAllLocked(roomCode);
    return `Locked in: ${choice}. Worth ${FLAG_ME_DOWN_STAGE_POINTS[fmd.stage]} if you're right!`;
}

// Everyone's locked in (or left) -- no reason to sit through the rest of the clues.
function checkFlagMeDownAllLocked(roomCode) {
    const room = activeRooms[roomCode];
    const fmd = room && room.flagMeDown;
    if (!fmd || fmd.phase !== 'CLUES') return;
    const active = Object.values(room.players).filter(p => !p.left);
    if (active.length && active.every(p => p.name in fmd.lockIns)) {
        if (room.revealTimeout) clearTimeout(room.revealTimeout);
        room.revealTimeout = setTimeout(() => { room.revealTimeout = null; revealFlagMeDownRound(roomCode); }, FLAG_ME_DOWN_ALL_LOCKED_MS);
    }
}

// Status for one phone: the round so far (never the answer before the reveal).
export function flagMeDownStatusFor(room, playerName) {
    const fmd = room.flagMeDown;
    if (!fmd) return null;
    const country = fmd.current;
    const lock = fmd.lockIns[playerName] || null;
    const mine = fmd.phase === 'REVEAL' && fmd.lastResults ? (fmd.lastResults.find(r => r.name === playerName) || null) : null;
    return {
        round: fmd.roundIndex + 1,
        totalRounds: fmd.totalRounds,
        fmdPhase: fmd.phase,
        stage: fmd.stage,
        stagePoints: FLAG_ME_DOWN_STAGE_POINTS[fmd.stage],
        flagUrl: fmd.flagUrl,
        choices: fmd.choices,
        region: fmd.stage >= 1 || fmd.phase === 'REVEAL' ? country.local_region : null,
        capital: fmd.phase === 'REVEAL' ? country.capital : (fmd.stage >= 2 ? country.capital_clue : null),
        mapUrl: fmd.mapUrl,
        myLock: lock ? { choice: lock.choice, stage: lock.stage, points: FLAG_ME_DOWN_STAGE_POINTS[lock.stage] } : null,
        answer: fmd.phase === 'REVEAL' ? country.name : null,
        myResult: mine,
        lockedCount: Object.keys(fmd.lockIns).length,
        totalPlayers: Object.values(room.players).filter(p => !p.left).length
    };
}

// The closer: a medium flag nobody saw this game, typed in. Each clue
// (region, capital, map) can be bought privately on your phone while
// answering, for a share of what you'd win.
async function startFlagMeDownFinalWager(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.flagMeDown) return;
    const fmd = room.flagMeDown;
    const used = new Set(fmd.rounds.map(c => c.name));
    const unused = fmd.countries.filter(c => !used.has(c.name));
    // Medium, like every Final Wager (Randy: "I want all to have a chance at glory!").
    const pool = unused.filter(c => c.difficulty === 2).length ? unused.filter(c => c.difficulty === 2) : unused;
    if (!pool.length) throw new Error('No unused country for the Final Wager.');
    const country = shuffleArray(pool)[0];
    const rivals = new Set();
    fmd.countries.forEach(c => { if (c.name !== country.name) { rivals.add(c.name); (c.accepted_answers || []).forEach(a => rivals.add(a)); } });
    const accepted = [country.name, ...(country.accepted_answers || [])];
    accepted.forEach(a => rivals.delete(a));
    startFinalWager(roomCode, {
        questionText: 'Whose flag is this? Type the country!',
        correctAnswer: country.name,
        acceptedAnswers: accepted,
        rivalAnswers: [...rivals],
        topicLabel: 'One last flag',
        visualAsset: fmdAsset(room, 'flag', country),
        modeLabel: 'Flag Me Down',
        hints: {
            region: country.local_region,
            capital: country.capital_clue,
            mapUrl: fmdAsset(room, 'map', country)
        }
    });
}

// ==========================================
// PHASE 3B: EMPOSSDURR ENGINE (impostor social-deduction mode)
// ==========================================

// Loaded once per process and cached -- the deck barely ever changes
// mid-runtime, and re-querying it every single game would be wasteful. A
// server restart naturally picks up any new rows added since.
let empossDurrWordCache = null;
async function loadEmpossDurrWordPool() {
    if (empossDurrWordCache) return empossDurrWordCache;
    const result = await pool.query('SELECT word, clue_1, clue_2, clue_3, clue_4 FROM empossdurr_words');
    empossDurrWordCache = result.rows.map(row => ({
        word: row.word,
        clues: [row.clue_1, row.clue_2, row.clue_3, row.clue_4]
    }));
    return empossDurrWordCache;
}

function clearEmpossDurrTimers(room) {
    if (!room.empossdurr) return;
    if (room.empossdurr.accuseTimerInterval) { clearInterval(room.empossdurr.accuseTimerInterval); room.empossdurr.accuseTimerInterval = null; }
    if (room.empossdurr.declareTimerInterval) { clearInterval(room.empossdurr.declareTimerInterval); room.empossdurr.declareTimerInterval = null; }
}

function clearOnTheSpectrumTimers(room) {
    if (!room.onTheSpectrum) return;
    if (room.onTheSpectrum.continueVoteTimeout) { clearTimeout(room.onTheSpectrum.continueVoteTimeout); room.onTheSpectrum.continueVoteTimeout = null; }
    if (room.onTheSpectrum.continueCountdownInterval) { clearInterval(room.onTheSpectrum.continueCountdownInterval); room.onTheSpectrum.continueCountdownInterval = null; }
}

// Entry point once EmpossDurr wins the lobby election and its (currently
// single) category phase resolves -- the equivalent of loadQuestionBank +
// startNextQuestion for the trivia modes, but EmpossDurr has no
// multiple-choice question bank at all, just a word deck.
async function startEmpossDurrGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const wordPool = shuffleArray(await loadEmpossDurrWordPool());
    const activePlayerCount = Object.values(room.players).filter(p => !p.left).length;
    const totalRounds = Math.max(EMPOSSDURR_MIN_ROUNDS, Math.min(activePlayerCount + 3, EMPOSSDURR_MAX_ROUNDS));

    room.empossdurr = {
        wordPool,
        totalRounds,
        currentRound: 0,
        secretWord: null,
        impostorClue: null,
        impostorName: null,
        phase: null, // DISCUSSION | ACCUSE_VOTE | DECLARE_VERDICT
        readyToAccuse: new Set(),
        skipVotes: new Set(), // majority-gated "skip this word/round" during DISCUSSION -- a repeat word or a clue nobody can work with
        accuseVotes: {}, // name -> { mode: 'accuse'|'abstain', target }
        declareVotes: {}, // name -> 'yes'|'no'
        // Score/badge changes from a "continue" accuse-vote outcome (the
        // round didn't end -- same word, same impostor, discussion resumes)
        // are held here instead of applied immediately. Revealing them right
        // away would hand the table exactly what "votes are secret" is
        // supposed to withhold: whose score just moved (who guessed right)
        // and a strong tell on the impostor's own score ticking up. Flushed
        // into real score/awards the instant this round actually ends (a
        // resolved accusation, right or wrong, or a declare verdict).
        pendingScoreDeltas: {}, // name -> accumulated, not-yet-applied score delta
        pendingBadges: {} // name -> array of award types, not yet granted
    };

    startEmpossDurrRound(roomCode);
}

function startEmpossDurrRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;

    clearEmpossDurrTimers(room);
    const ed = room.empossdurr;
    ed.currentRound += 1;

    if (ed.currentRound > ed.totalRounds) {
        endGame(roomCode);
        return;
    }

    if (ed.wordPool.length === 0) {
        // Ran through the whole deck this game -- reshuffle a fresh lap rather
        // than reusing the exact same draw order.
        loadEmpossDurrWordPool().then(fullPool => { ed.wordPool = shuffleArray(fullPool); });
    }
    const nextWord = ed.wordPool.pop();

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    const impostor = activePlayers[Math.floor(Math.random() * activePlayers.length)];
    const clue = nextWord.clues[Math.floor(Math.random() * nextWord.clues.length)];
    // Independent random draw, same reasoning as the impostor pick -- no
    // rotation/bag system, so it's possible (by design) for one player to
    // start more often than another across a game. Who starts reveals
    // nothing about who the impostor is, so this is safe to broadcast
    // openly to the TV, unlike the word/clue/impostor identity.
    const starter = activePlayers[Math.floor(Math.random() * activePlayers.length)];

    ed.secretWord = nextWord.word;
    ed.impostorClue = clue;
    ed.impostorName = impostor.name;
    ed.starterName = starter.name;
    ed.phase = 'DISCUSSION';
    ed.readyToAccuse = new Set();
    ed.skipVotes = new Set();
    ed.accuseVotes = {};
    ed.declareVotes = {};

    room.gameState = 'EMPOSSDURR_ROUND';

    console.log(`[EmpossDurr] Room ${roomCode} round ${ed.currentRound}/${ed.totalRounds}. Impostor: ${impostor.name}. Starts: ${starter.name}.`);

    // Deliberately no secret content in this broadcast -- the TV only ever
    // learns the round number, never the word or who the impostor is. Each
    // phone gets its own private content by polling /api/room-status.
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_ROUND_START',
        round: ed.currentRound,
        totalRounds: ed.totalRounds,
        starter: ed.starterName
    });
}

function broadcastEmpossDurrReadyUpdate(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_READY_UPDATE',
        readyNames: Array.from(room.empossdurr.readyToAccuse),
        totalActive: activePlayers.length
    });
}

function broadcastEmpossDurrSkipUpdate(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_SKIP_UPDATE',
        skipNames: Array.from(room.empossdurr.skipVotes),
        totalActive: activePlayers.length
    });
}

// A group mulligan for a repeat word or a clue nobody can work with -- no
// score or badge changes, and the impostor's identity stays hidden, same as
// any other still-in-progress round. Doesn't spend one of totalRounds: the
// round number is decremented first so startEmpossDurrRound's own increment
// lands back on the same round, just with a freshly-drawn word and impostor.
function skipEmpossDurrRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    clearEmpossDurrTimers(room);

    const ed = room.empossdurr;
    broadcastToRoom(roomCode, { type: 'EMPOSSDURR_ROUND_SKIPPED' });

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        ed.currentRound -= 1;
        startEmpossDurrRound(roomCode);
    }, REVEAL_DURATION_MS);
}

// Resolves as soon as everyone's submitted, or at EMPOSSDURR_VOTE_SECONDS
// with whoever has voted so far -- a non-voter simply isn't counted either
// way, same as tallyEmpossDurrAccuseVotes always worked for a partial vote.
function startEmpossDurrAccuseVote(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    clearEmpossDurrTimers(room);

    const ed = room.empossdurr;
    ed.phase = 'ACCUSE_VOTE';
    ed.accuseVotes = {};
    ed.readyToAccuse = new Set();
    ed.skipVotes = new Set();
    ed.accuseSecondsLeft = EMPOSSDURR_VOTE_SECONDS;

    // Same "impostor isn't part of the jury" treatment startEmpossDurrDeclare
    // already gives its own vote -- the impostor can still tap Abstain so
    // their hands move like everyone else's, but that tap (or any accusation
    // they cast as misdirection) never counts toward the RESOLUTION threshold
    // (tallyEmpossDurrAccuseVotes recomputes that on its own). The DISPLAYED
    // totalNeeded below is a different number on purpose -- see the matching
    // comment at the EMPOSSDURR_VOTE_SUBMITTED broadcast for why it's literal
    // activity (every active player) rather than an accuser-only count.
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_ACCUSE_VOTE_START',
        votedCount: 0,
        totalNeeded: activePlayers.length,
        secondsLeft: ed.accuseSecondsLeft
    });

    ed.accuseTimerInterval = setInterval(() => {
        ed.accuseSecondsLeft -= 1;
        if (ed.accuseSecondsLeft > 0) {
            broadcastToRoom(roomCode, { type: 'EMPOSSDURR_ACCUSE_TIMER_TICK', secondsLeft: ed.accuseSecondsLeft });
        } else {
            tallyEmpossDurrAccuseVotes(roomCode);
        }
    }, 1000);
}

// Mirrors the original single-device game's scoring exactly: every accuse
// vote scores regardless of outcome, a "continue" result nets the impostor
// a small survival bonus, and a resolved accusation ends the round --
// rewarding the impostor handsomely for a wrong accusation, giving them
// nothing for a correct one. A "continue" outcome doesn't end the round, so
// its scoring is queued (see pendingScoreDeltas) rather than applied and
// revealed immediately -- real family feedback: seeing scores move mid-round
// told the table who'd guessed right, defeating the point of a secret vote.
function applyEmpossDurrAccuseScoring(room, resolution) {
    const ed = room.empossdurr;
    const impostorPlayer = room.players[ed.impostorName];

    updateImpostorCatchStreaks(room, resolution);

    // The impostor's own entry (an abstain, or a decoy accusation cast as
    // misdirection) is never a real accuser's vote -- excluded here the same
    // way it's excluded from the tally itself, so it can't accidentally
    // score or badge the impostor as though they'd voted against themselves.
    const voterDeltas = {};
    Object.entries(ed.accuseVotes).forEach(([voterName, vote]) => {
        if (voterName === ed.impostorName || vote.mode !== 'accuse') return;
        voterDeltas[voterName] = vote.target === ed.impostorName ? 2 : -1;
    });

    if (resolution.type === 'continue') {
        Object.entries(voterDeltas).forEach(([voterName, delta]) => {
            ed.pendingScoreDeltas[voterName] = (ed.pendingScoreDeltas[voterName] || 0) + delta;
        });
        // Points for surviving this one vote -- IMPOSTOR_WIN is never in
        // play here regardless: it's reserved exclusively for a correct
        // declare (see tallyEmpossDurrDeclareVerdict), not for surviving an
        // accuse vote of any kind, "continue" or otherwise.
        if (impostorPlayer) {
            ed.pendingScoreDeltas[impostorPlayer.name] = (ed.pendingScoreDeltas[impostorPlayer.name] || 0) + 1;
        }
        return;
    }

    // The round is ending (accusation right or wrong) -- reveal everything
    // queued from earlier "continue" outcomes this round together with this
    // vote's own scoring, all at once.
    flushEmpossDurrPendingScoring(room);
    Object.entries(voterDeltas).forEach(([voterName, delta]) => {
        const voterPlayer = room.players[voterName];
        if (voterPlayer) voterPlayer.score += delta;
    });

    if (resolution.targetName !== ed.impostorName) {
        // Score-only, no badge -- surviving a wrong accusation reflects the
        // table's read, not something the impostor actually did. IMPOSTOR_WIN
        // is reserved for the one outcome that's genuinely the impostor's own
        // accomplishment: a correct declare (see tallyEmpossDurrDeclareVerdict).
        if (impostorPlayer) { impostorPlayer.score += 3; }
    }
    // Correctly-caught impostor gets 0 score for this outcome. SPYGLASS
    // itself is no longer awarded here -- updateImpostorCatchStreaks above
    // already handles it (and covers a personally-correct vote even when the
    // round's own majority got it wrong), so there's nothing outcome-specific
    // left to do in either branch.
}

// SPYGLASS now means "three correct accuse-vote calls in a row," not "caught
// them once" -- a deliberate rarity bump (mag-glass.svg's own art carries a
// baked-in "3" to match). Tracked per player across every accuse vote they
// personally cast: voting for the real impostor extends the streak; voting
// for anyone else, abstaining, or not voting at all before a timer/leave
// forces the tally breaks it -- the same "sitting it out costs you the same
// as getting it wrong" rule trivia's own STREAK already uses. A round where
// this player IS the impostor is skipped entirely (not a break, not real
// participation), so the streak survives their turn in the hot seat.
function updateImpostorCatchStreaks(room, resolution) {
    const ed = room.empossdurr;
    const isRoundEnding = resolution.type !== 'continue';
    const accusers = Object.values(room.players).filter(p => !p.left && p.name !== ed.impostorName);

    accusers.forEach(accuser => {
        const vote = ed.accuseVotes[accuser.name];
        const correct = !!vote && vote.mode === 'accuse' && vote.target === ed.impostorName;
        if (!correct) {
            accuser.impostorCatchStreak = 0;
            return;
        }
        accuser.impostorCatchStreak = (accuser.impostorCatchStreak || 0) + 1;
        if (accuser.impostorCatchStreak < 3) return;
        accuser.impostorCatchStreak = 0;
        // A "continue" outcome doesn't end the round, so awarding (and
        // thereby revealing) the badge right now would leak exactly what
        // the secret vote exists to hide -- who guessed right. Queue it the
        // same way pendingScoreDeltas already does, flushed the instant the
        // round actually ends (flushEmpossDurrPendingScoring already awards
        // any badge type generically, SPYGLASS included).
        if (isRoundEnding) {
            awardEmpossDurrBadge(accuser, 'SPYGLASS');
        } else {
            ed.pendingBadges[accuser.name] = ed.pendingBadges[accuser.name] || [];
            ed.pendingBadges[accuser.name].push('SPYGLASS');
        }
    });
}

// Sets a persistent, boolean-style EmpossDurr award the instant it's earned.
// Unlike SPEED3 (which is live/contested), every badge here is one-shot:
// once true, it stays on the leaderboard row for the rest of the game
// (cleared only on the next game-reset, alongside every other stat in
// player.awards).
function awardEmpossDurrBadge(player, type) {
    if (!player) return;
    player.awards = player.awards || {};
    player.awards[type] = 1;
}

// Applies and clears any score/badge changes queued by an earlier
// "continue" outcome this round -- called right before a round-ending event
// (a resolved accusation or a declare verdict) applies its own scoring, so
// the whole round's worth of changes lands and gets revealed in one shot.
function flushEmpossDurrPendingScoring(room) {
    const ed = room.empossdurr;
    if (!ed) return;
    Object.entries(ed.pendingScoreDeltas || {}).forEach(([name, delta]) => {
        const player = room.players[name];
        if (player) player.score += delta;
    });
    Object.entries(ed.pendingBadges || {}).forEach(([name, types]) => {
        const player = room.players[name];
        if (!player) return;
        types.forEach(type => awardEmpossDurrBadge(player, type));
    });
    ed.pendingScoreDeltas = {};
    ed.pendingBadges = {};
}

function tallyEmpossDurrAccuseVotes(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    // A resolution already fired and is just waiting out its reveal pause
    // before the next round starts -- ed.phase stays 'ACCUSE_VOTE' and
    // ed.accuseVotes stays populated for that whole gap, so a vote that
    // arrives late (the impostor's own decoy tap, submitted after every real
    // accuser already completed the vote) would otherwise re-satisfy the
    // "everyone's voted" check and re-tally the same votes a second time,
    // double-applying every score change. room.revealTimeout is the signal
    // that a resolution is already in flight.
    if (room.revealTimeout) return;
    clearEmpossDurrTimers(room);

    const ed = room.empossdurr;
    // The impostor isn't part of the jury -- same treatment declare-verdict
    // already gives its own vote. Real play with 4 players (1 impostor, 3
    // real accusers) found a 2/3 agreement among the actual accusers still
    // wasn't enough against a denominator of 4, effectively requiring
    // unanimity to ever resolve.
    const accusers = Object.values(room.players).filter(p => !p.left && p.name !== ed.impostorName);
    const neededForMajority = Math.floor(accusers.length / 2) + 1;

    const targetCounts = {};
    Object.entries(ed.accuseVotes).forEach(([voterName, vote]) => {
        if (voterName === ed.impostorName || vote.mode !== 'accuse') return;
        targetCounts[vote.target] = (targetCounts[vote.target] || 0) + 1;
    });

    let bestTarget = null, bestCount = 0, tie = false;
    Object.entries(targetCounts).forEach(([targetName, count]) => {
        if (count > bestCount) { bestTarget = targetName; bestCount = count; tie = false; }
        else if (count === bestCount) { tie = true; }
    });

    let resolution;
    if (bestTarget && bestCount >= neededForMajority && !tie) {
        resolution = { type: 'accuse', targetName: bestTarget };
    } else {
        resolution = { type: 'continue' };
    }

    applyEmpossDurrAccuseScoring(room, resolution);

    const activePlayersArray = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_ACCUSE_RESULT',
        resolution,
        impostorName: resolution.type === 'accuse' ? ed.impostorName : undefined
    });
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayersArray });

    if (resolution.type === 'accuse') {
        // Give the room a beat to actually read who got accused (and whether
        // they were right) before the next round's content overwrites it --
        // same REVEAL_DURATION_MS pause the trivia modes use between a
        // question's reveal and the next question.
        if (room.revealTimeout) clearTimeout(room.revealTimeout);
        room.revealTimeout = setTimeout(() => {
            room.revealTimeout = null;
            startEmpossDurrRound(roomCode);
        }, REVEAL_DURATION_MS);
    } else {
        // Same word, same impostor -- just re-open the floor for more talk,
        // after the same reveal pause so "the group couldn't agree" actually
        // gets read before discussion resumes.
        if (room.revealTimeout) clearTimeout(room.revealTimeout);
        room.revealTimeout = setTimeout(() => {
            room.revealTimeout = null;
            ed.phase = 'DISCUSSION';
            ed.readyToAccuse = new Set();
            ed.skipVotes = new Set();
            ed.accuseVotes = {};
            broadcastToRoom(roomCode, { type: 'EMPOSSDURR_RESUME_DISCUSSION' });
        }, REVEAL_DURATION_MS);
    }
}

// The impostor's own one-shot bet: always ends the round, win or lose. Can
// be pressed from either DISCUSSION or ACCUSE_VOTE -- it deliberately
// preempts an in-flight accuse vote (see design chat: this is what "handles
// the impostor being caught out immediately" down to the millisecond,
// something the original pass-around version had no clean way to do).
// Same 30s-or-everyone-in resolution as the accuse vote. Waits for every
// juror (every active player except the impostor) to submit a verdict.
function startEmpossDurrDeclare(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    clearEmpossDurrTimers(room);

    const ed = room.empossdurr;
    ed.phase = 'DECLARE_VERDICT';
    ed.declareVotes = {};
    ed.readyToAccuse = new Set();
    ed.skipVotes = new Set();
    ed.declareSecondsLeft = EMPOSSDURR_VOTE_SECONDS;

    const jurors = Object.values(room.players).filter(p => !p.left && p.name !== ed.impostorName);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_DECLARE',
        impostorName: ed.impostorName,
        votedCount: 0,
        totalNeeded: jurors.length,
        secondsLeft: ed.declareSecondsLeft
    });

    ed.declareTimerInterval = setInterval(() => {
        ed.declareSecondsLeft -= 1;
        if (ed.declareSecondsLeft > 0) {
            broadcastToRoom(roomCode, { type: 'EMPOSSDURR_DECLARE_TIMER_TICK', secondsLeft: ed.declareSecondsLeft });
        } else {
            tallyEmpossDurrDeclareVerdict(roomCode);
        }
    }, 1000);
}

function tallyEmpossDurrDeclareVerdict(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.empossdurr) return;
    // Same re-entry guard as tallyEmpossDurrAccuseVotes -- a juror leaving
    // during the reveal pause recomputes a smaller jurors list, which could
    // spuriously match the already-cast declareVotes count and re-tally
    // (double-applying score) before the round actually transitions.
    if (room.revealTimeout) return;
    clearEmpossDurrTimers(room);

    const ed = room.empossdurr;
    const jurors = Object.values(room.players).filter(p => !p.left && p.name !== ed.impostorName);
    const neededForMajority = Math.floor(jurors.length / 2) + 1;

    let yesCount = 0;
    jurors.forEach(j => { if (ed.declareVotes[j.name] === 'yes') yesCount++; });
    const correct = yesCount >= neededForMajority;

    // Declaring always ends the round -- reveal anything queued from an
    // earlier "continue" outcome this round together with this verdict's
    // own scoring, same as a resolved accusation does.
    flushEmpossDurrPendingScoring(room);

    const impostorPlayer = room.players[ed.impostorName];
    if (impostorPlayer) {
        impostorPlayer.score += correct ? 5 : -2;
        if (correct) awardEmpossDurrBadge(impostorPlayer, 'IMPOSTOR_WIN');
    }

    const activePlayersArray = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, { type: 'EMPOSSDURR_DECLARE_RESULT', correct, impostorName: ed.impostorName });
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayersArray });

    // Declaring always ends the round, right or wrong -- same reveal pause
    // as the accuse-vote result gets before the next round overwrites it.
    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        startEmpossDurrRound(roomCode);
    }, REVEAL_DURATION_MS);
}

// The one place that has to know every stat field a "fresh game" reset
// touches -- used by every reset path below (the plain lobby return, both
// "Play X Again" shortcuts) AND by a rejoining player who missed one of
// those resets entirely because they were marked left at the time (see
// player.statsEpoch / room.gameEpoch). Resets fields a given mode doesn't
// even use (categoryVote for On the Spectrum, bullseyeCount for EmpossDurr)
// -- harmless, and it means a future mode never has to remember the list.
function resetPlayerStatsForFreshGame(player) {
    player.requestedStart = false;
    player.categoryVote = null;
    player.score = 0;
    player.correctAnswers = 0;
    player.currentStreak = 0;
    player.timesFastest = 0;
    player.awards = {};
    player.bullseyeCount = 0;
    player.impostorCatchStreak = 0;
}

// Play Again: same roster, same mode, every stat cleared -- skips the mode
// election and goes straight into whatever that mode does first (its round,
// its board, or for Country Monkey its region vote, since replaying the same
// region would mostly repeat countries). One shared path for every mode so a
// new mode gets Play Again automatically -- this used to be a separate
// hand-built shortcut per mode, and only EmpossDurr and On the Spectrum ever
// got one.
function resetRoomForReplay(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const mode = room.winningGameMode;
    const activePlayers = clearRoomForFreshGame(room);

    console.log(`[Room Engine] Room ${roomCode} playing ${mode} again -- roster kept, stats cleared.`);

    // Without this the TV's Active Standings panel just keeps showing the
    // previous game's final scores until some unrelated event (a vote tally,
    // an answer) happens to redraw it -- same fix as resetRoomToLobby has.
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayers });

    startGameForMode(roomCode, mode);
}

// The Game Over screen's Play Again / Main Menu vote. A single tap used to
// reset the whole room instantly (one fast player could yank everyone off
// the leaderboard), then a majority did (still let 3 of 5 end things for
// the other 2). Now it waits for EVERYONE -- the group's already talked it
// over out loud by the time they're tapping -- with a backstop timer
// (started on the FIRST vote, not at game-over) so one player who wandered
// off can't strand the room.
function castReturnToLobbyVote(roomCode, playerName, action) {
    const room = activeRooms[roomCode];
    if (!room) return null;
    if (!room.returnVotes) room.returnVotes = new Map();
    room.returnVotes.set(playerName, action);

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'RETURN_VOTE_UPDATE',
        votedCount: room.returnVotes.size,
        totalNeeded: activePlayers.length
    });

    if (activePlayers.every(p => room.returnVotes.has(p.name))) {
        resolveReturnToLobbyVote(roomCode);
        return `Everyone's in -- moving on!`;
    }

    if (!room.returnVoteTimeout) {
        room.returnVoteTimeout = setTimeout(() => resolveReturnToLobbyVote(roomCode), GAME_OVER_RETURN_VOTE_SECONDS * 1000);
    }
    return `Vote recorded (${room.returnVotes.size}/${activePlayers.length}) -- moves on once everyone's voted, or ${GAME_OVER_RETURN_VOTE_SECONDS}s after the first vote.`;
}

// Play Again needs STRICTLY more votes than Main Menu; a tie goes to the
// lobby, since it's always a valid choice whatever the last game was.
// Anyone who never voted simply isn't counted. Only ever called with at
// least one vote already cast -- either castReturnToLobbyVote just added
// one, or the backstop timer only starts once the first vote lands.
function resolveReturnToLobbyVote(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.returnVotes || room.returnVotes.size === 0) return;
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }

    const counts = { START: 0, PLAY_AGAIN: 0 };
    room.returnVotes.forEach(action => { if (action in counts) counts[action]++; });
    room.returnVotes = new Map();

    if (counts.PLAY_AGAIN > counts.START) {
        resetRoomForReplay(roomCode);
    } else {
        resetRoomToLobby(roomCode);
    }
}

// Releases a room entirely -- broadcasts the TV back to its gateway/lobby-code
// screen and frees the room code for reuse. Used both when the last active
// player leaves (see the LEAVE handler) and by the admin force-reset endpoint.
export function closeRoom(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return false;
    if (room.timerInterval) clearInterval(room.timerInterval);
    if (room.lobbyTimerInterval) clearInterval(room.lobbyTimerInterval);
    if (room.categoryTimerInterval) clearInterval(room.categoryTimerInterval);
    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    if (room.returnVoteTimeout) clearTimeout(room.returnVoteTimeout);
    if (room.emptyRoomTimeout) clearTimeout(room.emptyRoomTimeout);
    clearOnTheSpectrumTimers(room);
    clearEmpossDurrTimers(room);
    broadcastToRoom(roomCode, { type: 'ROOM_CLOSED' });
    delete activeRooms[roomCode];
    return true;
}

// Wipes every game-specific stat and timer clean while keeping the room code
// and roster intact (nobody rescans a QR code or retypes their name), per
// the explicit "no score/badges/streaks carry over" design: what comes next
// is a fresh game, not a running Game Night total. Shared by
// resetRoomToLobby and resetRoomForReplay. Returns the active players.
function clearRoomForFreshGame(room) {
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.categoryTimerInterval) { clearInterval(room.categoryTimerInterval); room.categoryTimerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }
    room.returnVotes = new Map();
    clearOnTheSpectrumTimers(room);
    clearEmpossDurrTimers(room);

    room.activeQuestionData = null;
    room.currentQuestionData = null;
    room.activeDeckName = null;
    room.activeCategoryKey = null;
    room.answers = {};
    room.answerOrder = [];
    room.questionBank = [];
    room.questionGroups = {};
    room.currentQuestionIndex = -1;
    room.askedQuestionIds = new Set();
    room.categoryVotes = {};
    room.empossdurr = null;
    room.onTheSpectrum = null;
    room.triviYeahII = null;
    room.finalWager = null;
    room.profiler = null;
    room.profilerOnExpire = null;
    room.flagMeDown = null;

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    // Bumping this marks "a fresh game started" -- a player who left before
    // this reset and rejoins afterward gets caught by the epoch mismatch in
    // the join handler and reset then too, instead of carrying a stale score
    // into whatever this room plays next.
    room.gameEpoch = (room.gameEpoch || 0) + 1;
    activePlayers.forEach(player => {
        resetPlayerStatsForFreshGame(player);
        player.statsEpoch = room.gameEpoch;
    });
    return activePlayers;
}

// Main Menu from Game Over: back to the mode election. Mode votes are the
// one thing left untouched -- they're cast once at join time with no
// separate "change your vote" command, so clearing them would leave a
// player with no way to ever vote again.
function resetRoomToLobby(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const activePlayers = clearRoomForFreshGame(room);
    room.gameState = 'LOBBY';
    room.winningGameMode = null;

    room.votes = emptyModeVotes(room);
    activePlayers.forEach(player => {
        if (room.votes[player.vote] !== undefined) room.votes[player.vote]++;
    });

    console.log(`[Room Engine] Room ${roomCode} returned to the lobby for a fresh game -- roster kept, all stats cleared.`);

    broadcastToRoom(roomCode, { type: 'RETURN_TO_LOBBY' });
    broadcastToRoom(roomCode, { type: 'VOTE_UPDATE', votes: room.votes, totalVotes: activePlayers.length });
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayers });

    startLobbyCountdown(roomCode);
    broadcastToRoom(roomCode, { type: 'LOBBY_TIMER_TICK', secondsLeft: "60 s" });
}

// ==========================================
// PHASE 3D: PROFILER ENGINE
// (how well do you know each other)
// ==========================================
// Each round: everyone privately answers a personality/values question, the
// TV posts ONE answer that was given ("2 of you said: Gentle truth"), and
// everyone picks exactly that many people they think said it. Detective
// points for reading people, open-book points for being read -- so answering
// honestly pays, and lying only hurts yourself. Home mode: it only works
// among people who know each other, so it needs at least 4 players to start.

const PROFILER_MIN_PLAYERS = 4; // with 3, every post is close to a coin flip
const PROFILER_MIN_PLAYERS_MIDGAME = 3; // below this after leavers, skip to the results
const PROFILER_TOTAL_ROUNDS = 12;
// All three got +5s after the first family playtest -- the pace was fun,
// but a few players felt pressured.
const PROFILER_ANSWER_SECONDS = 20; // up to 7 options to read, so longer than trivia's 10
const PROFILER_GUESS_SECONDS = 25; // picking people takes real thought
// The reveal waits for everyone to tap Continue (60s backstop) instead of a
// fixed beat -- the family kept wanting to talk about the answers, and the
// old 8s (then 13s) clock cut those conversations off. Everyone, not a
// majority, same reasoning as the Game Over vote: nobody's mid-sentence
// gets cut short by the people who are already done.
const PROFILER_CONTINUE_SECONDS = 60;
const PROFILER_UNANIMOUS_MS = 3500; // "Unanimous!" beat before a replacement question
const PROFILER_MAX_REPLACEMENTS_PER_ROUND = 2; // then the round just counts, so a game always ends
const PROFILER_AWARDS_MS = 15000; // long enough to read the TV awards and your own phone
// A perfect read is worth the same however many people gave the answer --
// split evenly across the people you have to find (6 divides by 1, 2 and 3).
// The bonus only applies when there was more than one person to find.
const PROFILER_PERFECT_READ_POINTS = 6;
const PROFILER_PERFECT_READ_BONUS = 2;
const PROFILER_OPEN_BOOK_POINTS = 2; // per person who correctly picked you
const PROFILER_OPTION_KEYS = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];

// Cached once per process, same as On the Spectrum's statements -- a server
// restart picks up newly-added questions.
let profilerQuestionCache = null;
async function loadProfilerQuestions() {
    if (profilerQuestionCache) return profilerQuestionCache;
    const result = await pool.query(
        `SELECT id, question_text, intensity, option_a, option_b, option_c, option_d, option_e, option_f, option_g
           FROM profiler_questions WHERE active = true`
    );
    profilerQuestionCache = result.rows.map(row => ({
        id: row.id,
        text: row.question_text,
        intensity: row.intensity,
        options: PROFILER_OPTION_KEYS
            .map(key => ({ key, text: row[`option_${key.toLowerCase()}`] }))
            .filter(option => option.text)
    })).filter(q => q.options.length >= 2);
    return profilerQuestionCache;
}

function activePlayerNames(room) {
    return Object.values(room.players).filter(p => !p.left).map(p => p.name);
}

// Roughly one deeper question for every two lighter ones, so the game never
// stays heavy for long: light, medium, deep, light, medium, deep...
function profilerIntensityForRound(round) {
    return [1, 2, 3][(round - 1) % 3];
}

function drawProfilerQuestion(pf, intensity) {
    const bucket = pf.deck[intensity];
    if (bucket && bucket.length) return bucket.pop();
    const fallback = [1, 2, 3].map(i => pf.deck[i]).find(b => b && b.length);
    return fallback ? fallback.pop() : null;
}

function profilerStatsFor(pf, name) {
    if (!pf.stats[name]) {
        pf.stats[name] = { correctPicks: 0, picksNeeded: 0, timesFeatured: 0, timesFound: 0, timesSought: 0 };
    }
    return pf.stats[name];
}

async function startProfilerGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const questionPool = await loadProfilerQuestions();
    if (questionPool.length < PROFILER_TOTAL_ROUNDS) throw new Error(`Profiler needs at least ${PROFILER_TOTAL_ROUNDS} questions, found ${questionPool.length}.`);

    const deck = { 1: [], 2: [], 3: [] };
    shuffleArray(questionPool).forEach(q => { (deck[q.intensity] || deck[2]).push(q); });

    room.profiler = {
        round: 0,
        totalRounds: PROFILER_TOTAL_ROUNDS,
        replacementsThisRound: 0,
        phase: null, // ANSWER | GUESS | REVEAL | UNANIMOUS | AWARDS
        deck,
        roster: [], // who's playing THIS round -- a mid-round joiner waits for the next one
        question: null,
        answers: {}, // name -> option key
        post: null, // { key, text, choosers: [names] }
        guesses: {}, // name -> [picked names]
        lastReveal: null,
        stats: {}, // name -> running totals for the awards
        reads: {}, // reads[guesser][target] = { hits, chances }
        results: null // filled in at AWARDS
    };

    startProfilerRound(roomCode, false);
}

// isReplacement: the last question was unanimous, so draw a new one without
// using up a round.
function startProfilerRound(roomCode, isReplacement) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler) return;
    const pf = room.profiler;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }

    if (isReplacement) {
        pf.replacementsThisRound += 1;
    } else {
        pf.round += 1;
        pf.replacementsThisRound = 0;
    }
    if (pf.round > pf.totalRounds) { finishProfilerGame(roomCode); return; }

    const roster = activePlayerNames(room);
    if (roster.length < PROFILER_MIN_PLAYERS_MIDGAME) { finishProfilerGame(roomCode); return; }

    const question = drawProfilerQuestion(pf, profilerIntensityForRound(pf.round));
    if (!question) { finishProfilerGame(roomCode); return; }

    pf.roster = roster;
    pf.question = question;
    pf.answers = {};
    pf.post = null;
    pf.guesses = {};
    pf.lastReveal = null;
    pf.phase = 'ANSWER';
    room.gameState = 'PROFILER_ROUND';

    console.log(`[Profiler] Room ${roomCode} round ${pf.round}/${pf.totalRounds}${isReplacement ? ' (replacement)' : ''}: ${question.text}`);

    broadcastToRoom(roomCode, {
        type: 'PROFILER_QUESTION',
        round: pf.round,
        totalRounds: pf.totalRounds,
        questionText: question.text,
        options: question.options,
        rosterCount: roster.length,
        isReplacement: !!isReplacement
    });

    startProfilerCountdown(roomCode, PROFILER_ANSWER_SECONDS, () => resolveProfilerAnswers(roomCode));
}

// Shared clock for both the answer and the guess phase -- same GAME_TIMER_TICK
// shape every other mode uses, so the TV's countdown and its low-time chime
// work unchanged.
function startProfilerCountdown(roomCode, seconds, onExpire) {
    const room = activeRooms[roomCode];
    if (!room) return;
    let count = seconds;
    room.gameSecondsLeft = count;
    room.profilerOnExpire = onExpire;
    if (room.timerInterval) clearInterval(room.timerInterval);
    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            clearInterval(room.timerInterval);
            room.timerInterval = null;
            onExpire();
        }
    }, 1000);
}

// Everyone's in -- snap to a short beat instead of waiting out the clock,
// same as every other mode. Flagged so the TV doesn't play the low-time
// chime for it (see the Thinking Pants fix).
function fastForwardProfiler(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profilerOnExpire) return;
    if (room.gameSecondsLeft > FAST_FORWARD_SECONDS) {
        broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: FAST_FORWARD_SECONDS + " s", fastForward: true });
        startProfilerCountdown(roomCode, FAST_FORWARD_SECONDS, room.profilerOnExpire);
    }
}

function profilerActiveRoster(room) {
    return room.profiler.roster.filter(name => room.players[name] && !room.players[name].left);
}

// How many people this player is actually trying to FIND (for scoring): if
// you gave the posted answer yourself, you're finding the others who did --
// and if you were the only one, nobody.
function profilerPicksNeeded(pf, name) {
    if (!pf.post) return 0;
    return pf.post.choosers.includes(name) ? pf.post.choosers.length - 1 : pf.post.choosers.length;
}

// ...but EVERY phone makes the same number of picks from the same list
// (their own name included), so nobody's screen gives them away. People who
// gave the answer just pick themselves as one of them -- a dummy tap that
// looks like everyone else's and never scores. Family playtest: a phone
// showing "that's you!" with nothing to tap was a dead giveaway at a glance.
function profilerPickCount(pf) {
    return pf.post ? pf.post.choosers.length : 0;
}

function profilerGuessers(room) {
    return profilerActiveRoster(room); // everyone picks -- see profilerPickCount
}

function checkProfilerPhaseComplete(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler) return;
    const pf = room.profiler;
    if (pf.phase === 'ANSWER') {
        const roster = profilerActiveRoster(room);
        if (roster.length > 0 && roster.every(name => name in pf.answers)) fastForwardProfiler(roomCode);
    } else if (pf.phase === 'GUESS') {
        const guessers = profilerGuessers(room);
        if (guessers.every(name => name in pf.guesses)) fastForwardProfiler(roomCode);
    } else if (pf.phase === 'REVEAL') {
        const roster = profilerActiveRoster(room);
        broadcastToRoom(roomCode, { type: 'PROFILER_CONTINUE_UPDATE', votedCount: roster.filter(n => pf.continueVotes.has(n)).length, totalNeeded: roster.length });
        if (roster.length > 0 && roster.every(name => pf.continueVotes.has(name))) startProfilerRound(roomCode, false);
    }
}

function resolveProfilerAnswers(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler) return;
    const pf = room.profiler;
    room.profilerOnExpire = null;

    const answered = profilerActiveRoster(room).filter(name => name in pf.answers);
    const choosersByKey = {};
    answered.forEach(name => { (choosersByKey[pf.answers[name]] = choosersByKey[pf.answers[name]] || []).push(name); });

    // Only an answer SOME but not all of the answerers gave is guessable.
    const candidates = Object.entries(choosersByKey).filter(([, choosers]) => choosers.length < answered.length);

    if (candidates.length === 0) {
        // Everyone agreed (or almost nobody answered): show the beat, then a
        // fresh question -- unless this round has already been replaced
        // enough times, in which case it just counts and the game moves on.
        const unanimousKey = Object.keys(choosersByKey)[0];
        const unanimousOption = unanimousKey ? pf.question.options.find(o => o.key === unanimousKey) : null;
        pf.phase = 'UNANIMOUS';
        broadcastToRoom(roomCode, {
            type: 'PROFILER_UNANIMOUS',
            questionText: pf.question.text,
            answerText: answered.length >= 2 && unanimousOption ? unanimousOption.text : null
        });
        const replace = pf.replacementsThisRound < PROFILER_MAX_REPLACEMENTS_PER_ROUND;
        room.revealTimeout = setTimeout(() => {
            room.revealTimeout = null;
            startProfilerRound(roomCode, replace);
        }, PROFILER_UNANIMOUS_MS);
        return;
    }

    // Post the RAREST answer -- that's where knowing each other matters most.
    // Ties go to whoever's been featured least, so everyone gets a turn in
    // the spotlight; still tied, chance decides.
    const featuredScore = choosers => choosers.reduce((sum, name) => sum + profilerStatsFor(pf, name).timesFeatured, 0);
    const [postKey, postChoosers] = shuffleArray(candidates).sort((a, b) =>
        a[1].length - b[1].length || featuredScore(a[1]) - featuredScore(b[1])
    )[0];
    const postOption = pf.question.options.find(o => o.key === postKey);
    postChoosers.forEach(name => { profilerStatsFor(pf, name).timesFeatured += 1; });

    pf.post = { key: postKey, text: postOption.text, choosers: postChoosers };
    pf.guesses = {};
    pf.phase = 'GUESS';

    console.log(`[Profiler] Room ${roomCode} posting "${postOption.text}" (${postChoosers.length} of ${answered.length}).`);

    broadcastToRoom(roomCode, {
        type: 'PROFILER_POST',
        round: pf.round,
        totalRounds: pf.totalRounds,
        questionText: pf.question.text,
        answerText: postOption.text,
        count: postChoosers.length,
        answeredCount: answered.length,
        guessersNeeded: profilerGuessers(room).length
    });

    // Nobody has anything to pick (can't happen with 2+ distinct answers, but
    // cheap insurance) -- go straight to the reveal.
    if (profilerGuessers(room).length === 0) { revealProfilerRound(roomCode); return; }
    startProfilerCountdown(roomCode, PROFILER_GUESS_SECONDS, () => revealProfilerRound(roomCode));
}

function revealProfilerRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler) return;
    const pf = room.profiler;
    room.profilerOnExpire = null;
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    pf.phase = 'REVEAL';

    const choosers = pf.post.choosers;
    const foundBy = {};
    choosers.forEach(name => { foundBy[name] = []; });

    const results = Object.entries(pf.guesses).map(([guesser, picks]) => {
        const needed = profilerPicksNeeded(pf, guesser);
        const hits = picks.filter(name => choosers.includes(name) && name !== guesser);
        if (needed === 0) {
            // The only one who said it -- their pick was the dummy tap.
            return { name: guesser, picks, hits: [], needed: 0, points: 0, perfect: false };
        }
        hits.forEach(name => foundBy[name].push(guesser));
        const perfect = hits.length === needed;
        const points = Math.round(PROFILER_PERFECT_READ_POINTS * hits.length / needed)
            + (perfect && needed >= 2 ? PROFILER_PERFECT_READ_BONUS : 0);

        const stats = profilerStatsFor(pf, guesser);
        stats.correctPicks += hits.length;
        stats.picksNeeded += needed;
        // Who-knows-who bookkeeping: every chooser this guesser was looking
        // for counts as one chance to read them.
        choosers.filter(name => name !== guesser).forEach(target => {
            const row = (pf.reads[guesser] = pf.reads[guesser] || {});
            const cell = (row[target] = row[target] || { hits: 0, chances: 0 });
            cell.chances += 1;
            if (hits.includes(target)) cell.hits += 1;
        });

        const player = room.players[guesser];
        if (player) {
            player.score += points;
            player.correctAnswers = (player.correctAnswers || 0) + hits.length;
        }
        return { name: guesser, picks, hits, needed, points, perfect };
    });

    const openBook = {};
    choosers.forEach(name => {
        const finders = foundBy[name];
        const stats = profilerStatsFor(pf, name);
        stats.timesFound += finders.length;
        stats.timesSought += results.filter(r => r.name !== name).length;
        openBook[name] = finders.length * PROFILER_OPEN_BOOK_POINTS;
        if (room.players[name]) room.players[name].score += openBook[name];
    });

    pf.lastReveal = {
        questionText: pf.question.text,
        answerText: pf.post.text,
        choosers,
        foundBy,
        openBook,
        results: results.sort((a, b) => b.points - a.points)
    };

    pf.continueVotes = new Set();
    broadcastToRoom(roomCode, {
        type: 'PROFILER_REVEAL', round: pf.round, totalRounds: pf.totalRounds, ...pf.lastReveal,
        continueTotalNeeded: profilerActiveRoster(room).length, secondsLeft: PROFILER_CONTINUE_SECONDS
    });
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: Object.values(room.players).filter(p => !p.left) });

    startProfilerCountdown(roomCode, PROFILER_CONTINUE_SECONDS, () => startProfilerRound(roomCode, false));
    room.profilerOnExpire = null; // the continue clock is never fast-forwarded -- only "everyone's in" ends it early
}

// "Who knows who best": ratio of hits to chances, preferring more evidence on
// a tie (2/2 beats 1/1).
function bestRead(cells) {
    return cells
        .filter(c => c.chances > 0)
        .sort((a, b) => (b.hits / b.chances) - (a.hits / a.chances) || b.chances - a.chances)[0] || null;
}

function computeProfilerResults(room) {
    const pf = room.profiler;
    const names = activePlayerNames(room);
    const accuracy = name => {
        const s = profilerStatsFor(pf, name);
        return s.picksNeeded ? s.correctPicks / s.picksNeeded : 0;
    };

    // One bar per player: how well they read the room.
    const bars = names
        .map(name => ({ name, accuracy: Math.round(accuracy(name) * 100), score: room.players[name].score }))
        .sort((a, b) => b.accuracy - a.accuracy || b.score - a.score);

    const awards = [];
    const detective = [...names].sort((a, b) => profilerStatsFor(pf, b).correctPicks - profilerStatsFor(pf, a).correctPicks || accuracy(b) - accuracy(a))[0];
    if (detective && profilerStatsFor(pf, detective).correctPicks > 0) {
        awards.push({ key: 'DETECTIVE', title: 'Best Detective', emoji: '🔍', names: [detective], detail: `${profilerStatsFor(pf, detective).correctPicks} correct picks` });
    }
    const featured = names.filter(name => profilerStatsFor(pf, name).timesSought > 0);
    const foundRatio = name => profilerStatsFor(pf, name).timesFound / profilerStatsFor(pf, name).timesSought;
    const openBook = [...featured].sort((a, b) => foundRatio(b) - foundRatio(a) || profilerStatsFor(pf, b).timesFound - profilerStatsFor(pf, a).timesFound)[0];
    if (openBook && profilerStatsFor(pf, openBook).timesFound > 0) {
        awards.push({ key: 'OPEN_BOOK', title: 'Open Book', emoji: '📖', names: [openBook], detail: 'Easiest to read' });
    }
    const mystery = [...featured].sort((a, b) => foundRatio(a) - foundRatio(b) || profilerStatsFor(pf, b).timesSought - profilerStatsFor(pf, a).timesSought)[0];
    if (mystery && mystery !== openBook) {
        awards.push({ key: 'MYSTERY', title: 'Total Mystery', emoji: '🌀', names: [mystery], detail: 'Hardest to read' });
    }

    // Soulmates: the pair who read EACH OTHER best, both directions combined.
    let soulmates = null;
    for (let i = 0; i < names.length; i++) {
        for (let j = i + 1; j < names.length; j++) {
            const a = names[i], b = names[j];
            const ab = (pf.reads[a] && pf.reads[a][b]) || { hits: 0, chances: 0 };
            const ba = (pf.reads[b] && pf.reads[b][a]) || { hits: 0, chances: 0 };
            const hits = ab.hits + ba.hits, chances = ab.chances + ba.chances;
            if (chances < 2 || hits === 0) continue;
            const candidate = { names: [a, b], hits, chances, ratio: hits / chances };
            if (!soulmates || candidate.ratio > soulmates.ratio || (candidate.ratio === soulmates.ratio && candidate.hits > soulmates.hits)) {
                soulmates = candidate;
            }
        }
    }
    if (soulmates) {
        awards.push({ key: 'SOULMATES', title: 'Soulmates', emoji: '💞', names: soulmates.names, detail: 'Read each other best' });
    }

    // Per-player lines for their own phone.
    const personal = {};
    names.forEach(me => {
        const iRead = bestRead(names.filter(n => n !== me).map(n => ({ name: n, ...((pf.reads[me] && pf.reads[me][n]) || { hits: 0, chances: 0 }) })));
        const readMe = bestRead(names.filter(n => n !== me).map(n => ({ name: n, ...((pf.reads[n] && pf.reads[n][me]) || { hits: 0, chances: 0 }) })));
        personal[me] = {
            accuracy: Math.round(accuracy(me) * 100),
            youKnowBest: iRead && iRead.hits > 0 ? iRead.name : null,
            knowsYouBest: readMe && readMe.hits > 0 ? readMe.name : null
        };
    });

    return { bars, awards, personal };
}

function finishProfilerGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler) return;
    const pf = room.profiler;
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    room.profilerOnExpire = null;

    pf.phase = 'AWARDS';
    pf.results = computeProfilerResults(room);
    console.log(`[Profiler] Room ${roomCode} finished after ${Math.min(pf.round, pf.totalRounds)} rounds.`);

    broadcastToRoom(roomCode, { type: 'PROFILER_AWARDS', bars: pf.results.bars, awards: pf.results.awards, secondsLeft: PROFILER_AWARDS_MS / 1000 });
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        endGame(roomCode);
    }, PROFILER_AWARDS_MS);
}

// Phone-side view of the round for /api/room-status -- only what this player
// is allowed to see. Nobody learns who gave the posted answer until REVEAL.
export function profilerStatusFor(room, playerName) {
    const pf = room.profiler;
    if (!pf) return null;
    const inRoster = pf.roster.includes(playerName);
    const showQuestion = ['ANSWER', 'GUESS', 'REVEAL', 'UNANIMOUS'].includes(pf.phase);
    const picksNeeded = pf.phase === 'GUESS' && inRoster ? profilerPickCount(pf) : 0;
    return {
        profilerPhase: pf.phase,
        round: pf.round,
        totalRounds: pf.totalRounds,
        replacement: pf.replacementsThisRound,
        inRoster,
        questionText: showQuestion && pf.question ? pf.question.text : null,
        options: pf.phase === 'ANSWER' && pf.question ? pf.question.options : null,
        myAnswer: pf.answers[playerName] || null,
        answeredCount: Object.keys(pf.answers).length,
        rosterCount: pf.roster.length,
        post: pf.post && pf.phase !== 'ANSWER' ? { answerText: pf.post.text, count: pf.post.choosers.length } : null,
        // Never sent while picking -- every phone has to look identical then.
        iGaveThisAnswer: pf.phase === 'REVEAL' && !!(pf.post && pf.post.choosers.includes(playerName)),
        picksNeeded,
        pickCandidates: pf.phase === 'GUESS' ? profilerActiveRoster(room) : [], // your own name included -- see profilerPickCount
        myPicks: pf.guesses[playerName] || null,
        guessedCount: Object.keys(pf.guesses).length,
        guessersNeeded: pf.phase === 'GUESS' ? profilerGuessers(room).length : 0,
        reveal: pf.phase === 'REVEAL' ? pf.lastReveal : null,
        continueVotedCount: pf.phase === 'REVEAL' && pf.continueVotes ? profilerActiveRoster(room).filter(n => pf.continueVotes.has(n)).length : 0,
        continueTotalNeeded: pf.phase === 'REVEAL' ? profilerActiveRoster(room).length : 0,
        iHaveVotedContinue: !!(pf.phase === 'REVEAL' && pf.continueVotes && pf.continueVotes.has(playerName)),
        personal: pf.results ? (pf.results.personal[playerName] || null) : null,
        awards: pf.results ? pf.results.awards : null,
        gameSecondsLeft: room.gameSecondsLeft
    };
}

// TV-side snapshot for a reloaded TV (STATE_CATCH_UP) -- everything the TV
// would have been shown by the live broadcasts for the current phase.
export function profilerTvSnapshot(room) {
    const pf = room.profiler;
    if (!pf) return null;
    return {
        phase: pf.phase,
        round: pf.round,
        totalRounds: pf.totalRounds,
        questionText: pf.question ? pf.question.text : null,
        options: pf.question ? pf.question.options : null,
        rosterCount: pf.roster.length,
        answeredNames: Object.keys(pf.answers),
        post: pf.post ? { answerText: pf.post.text, count: pf.post.choosers.length } : null,
        guessedNames: Object.keys(pf.guesses),
        guessersNeeded: pf.phase === 'GUESS' ? profilerGuessers(room).length : 0,
        reveal: pf.phase === 'REVEAL' ? pf.lastReveal : null,
        continueVotedCount: pf.phase === 'REVEAL' && pf.continueVotes ? profilerActiveRoster(room).filter(n => pf.continueVotes.has(n)).length : 0,
        continueTotalNeeded: pf.phase === 'REVEAL' ? profilerActiveRoster(room).length : 0,
        results: pf.phase === 'AWARDS' ? { bars: pf.results.bars, awards: pf.results.awards } : null
    };
}

// Phone actions: PROFILER_ANSWER:<key> and PROFILER_PICK:<JSON array of names>.
function handleProfilerAction(roomCode, room, playerName, cleanText) {
    const pf = room.profiler;
    if (!pf) return `⚠️ That action isn't available right now.`;
    if (!pf.roster.includes(playerName)) return `You'll join in at the start of the next round.`;

    if (cleanText.toUpperCase().startsWith('PROFILER_ANSWER:')) {
        if (pf.phase !== 'ANSWER') return `⚠️ Answering is closed for this round.`;
        if (playerName in pf.answers) return `Answer already locked in.`;
        const key = cleanText.slice('PROFILER_ANSWER:'.length).trim().toUpperCase();
        if (!pf.question.options.some(o => o.key === key)) return `⚠️ That isn't one of the options.`;
        pf.answers[playerName] = key;
        broadcastToRoom(roomCode, { type: 'ANSWER_SUBMITTED', playerName });
        checkProfilerPhaseComplete(roomCode);
        return `Locked in!`;
    }

    if (cleanText.toUpperCase().startsWith('PROFILER_PICK:')) {
        if (pf.phase !== 'GUESS') return `⚠️ Picking is closed for this round.`;
        if (playerName in pf.guesses) return `Picks already locked in.`;
        const needed = profilerPickCount(pf);
        let picks;
        try { picks = JSON.parse(cleanText.slice('PROFILER_PICK:'.length)); } catch (e) { picks = null; }
        const valid = profilerActiveRoster(room);
        if (!Array.isArray(picks) || new Set(picks).size !== picks.length || picks.length !== needed || !picks.every(name => valid.includes(name))) {
            return `⚠️ Pick exactly ${needed} ${needed === 1 ? 'person' : 'people'}.`;
        }
        pf.guesses[playerName] = picks;
        broadcastToRoom(roomCode, { type: 'PROFILER_GUESS_SUBMITTED' }); // no name: who's locked in hints at who gave the answer
        checkProfilerPhaseComplete(roomCode);
        return `Picks locked in!`;
    }

    if (cleanText.toUpperCase() === 'PROFILER_CONTINUE') {
        if (pf.phase !== 'REVEAL') return `⚠️ Nothing to continue right now.`;
        pf.continueVotes.add(playerName);
        checkProfilerPhaseComplete(roomCode);
        return `Ready for the next one!`;
    }

    return `⚠️ That action isn't available right now.`;
}

// Someone left mid-round: the game may now be too small, or they may have
// been the last one the phase was waiting on.
function handleProfilerLeave(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.profiler || room.profiler.phase === 'AWARDS') return;
    if (activePlayerNames(room).length < PROFILER_MIN_PLAYERS_MIDGAME) { finishProfilerGame(roomCode); return; }
    checkProfilerPhaseComplete(roomCode);
}

// ==========================================
// PHASE 3C: ON THE SPECTRUM ENGINE
// (agree/disagree slider-guessing mode)
// ==========================================

// Loaded once per process and cached, same reasoning as the EmpossDurr word
// pool -- 35+ rows barely ever change mid-runtime, and re-querying every
// single round would be wasteful. A server restart naturally picks up any
// newly-added statements.
let onTheSpectrumStatementCache = null;
async function loadOnTheSpectrumStatements() {
    if (onTheSpectrumStatementCache) return onTheSpectrumStatementCache;
    const result = await pool.query('SELECT id, statement_text FROM on_the_spectrum_statements');
    onTheSpectrumStatementCache = result.rows;
    return onTheSpectrumStatementCache;
}

function pointsForSpectrumDistance(distance) {
    if (distance === 0) return ON_THE_SPECTRUM_EXACT_POINTS;
    if (distance <= 3) return ON_THE_SPECTRUM_WITHIN_3_POINTS;
    if (distance <= 5) return ON_THE_SPECTRUM_WITHIN_5_POINTS;
    if (distance <= 8) return ON_THE_SPECTRUM_WITHIN_8_POINTS;
    return 0;
}

async function startOnTheSpectrumGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    const statementPool = await loadOnTheSpectrumStatements();
    if (statementPool.length === 0) throw new Error('Statement pool is empty.');

    // Deliberately the SAME shuffled order run twice, not two independent
    // shuffles -- that guarantees the seam between the two passes always
    // lands on two different people (the shuffle's last name, then its own
    // first name), so nobody's ever named twice back-to-back, with zero
    // extra seam-handling logic needed.
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    const shuffledOnce = shuffleArray(activePlayers.map(p => p.name));
    const rotation = shuffledOnce.concat(shuffledOnce);

    room.onTheSpectrum = {
        rotation,
        roundIndex: -1, // incremented by startOnTheSpectrumRound before use
        totalRounds: rotation.length,
        namedPlayerName: null,
        statementId: null,
        statementText: null,
        phase: null, // SET_TARGET | GUESSING | REVEAL
        targetValue: null,
        guesses: {}, // name -> locked-in guess value (0-100)
        lastResults: null, // sorted [{name, value, distance, points}] from the most recent reveal
        continueVotes: new Set(),
        continueVoteTimeout: null,
        continueCountdownInterval: null
    };

    startOnTheSpectrumRound(roomCode);
}

function startOnTheSpectrumRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.onTheSpectrum) return;
    const ots = room.onTheSpectrum;

    clearOnTheSpectrumTimers(room);

    // Skip forward past any slot whose scheduled named player is no longer
    // active (left before their turn came up) -- they simply lose that turn,
    // no makeup round later, same as leaving forfeits a role anywhere else
    // in this app.
    let namedPlayerName;
    do {
        ots.roundIndex += 1;
        if (ots.roundIndex >= ots.totalRounds) {
            endGame(roomCode);
            return;
        }
        namedPlayerName = ots.rotation[ots.roundIndex];
    } while (!room.players[namedPlayerName] || room.players[namedPlayerName].left);

    const statementPool = onTheSpectrumStatementCache || [];
    const pick = statementPool[Math.floor(Math.random() * statementPool.length)];

    ots.namedPlayerName = namedPlayerName;
    ots.statementId = pick.id;
    ots.statementText = pick.statement_text;
    ots.phase = 'SET_TARGET';
    ots.targetValue = null;
    ots.guesses = {};
    ots.lastResults = null;
    ots.continueVotes = new Set();

    room.gameState = 'ON_THE_SPECTRUM_ROUND';

    console.log(`[On the Spectrum] Room ${roomCode} round ${ots.roundIndex + 1}/${ots.totalRounds}. Named: ${namedPlayerName}.`);

    // No statement content here -- the TV never needs it during SET_TARGET,
    // and it's included in every phone's own /api/room-status poll instead.
    broadcastToRoom(roomCode, {
        type: 'ON_THE_SPECTRUM_ROUND_START',
        namedPlayerName,
        statementText: ots.statementText,
        roundNumber: ots.roundIndex + 1,
        totalRounds: ots.totalRounds
    });
}

// Progressive lock-in status only -- never the guessed values themselves,
// so a slow guesser can't just copy someone else's number instead of
// guessing independently. Actual values all arrive together at reveal.
function broadcastOnTheSpectrumLockInUpdate(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.onTheSpectrum) return;
    const ots = room.onTheSpectrum;
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    const guessersNeeded = activePlayers.filter(p => p.name !== ots.namedPlayerName).length;
    broadcastToRoom(roomCode, {
        type: 'ON_THE_SPECTRUM_LOCKIN_UPDATE',
        lockedInNames: Object.keys(ots.guesses),
        totalGuessersNeeded: guessersNeeded
    });
}

function revealOnTheSpectrumRound(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.onTheSpectrum) return;
    const ots = room.onTheSpectrum;
    ots.phase = 'REVEAL';

    const results = Object.entries(ots.guesses).map(([name, value]) => {
        const distance = Math.abs(value - ots.targetValue);
        const points = pointsForSpectrumDistance(distance);
        const player = room.players[name];
        if (player) {
            player.score += points;
            // Mutually exclusive by design -- Sharpshooter means "close but
            // not perfect" (1-3 away), not "within 3 including a bullseye."
            if (distance === 0) {
                player.bullseyeCount = (player.bullseyeCount || 0) + 1;
                awardEmpossDurrBadge(player, 'SPECTRUM_BULLSEYE');
            } else if (distance <= 3) {
                awardEmpossDurrBadge(player, 'SPECTRUM_SHARPSHOOTER');
            } else if (distance >= ON_THE_SPECTRUM_LOST_IN_SPACE_DISTANCE) {
                // Purely for laughs -- every guesser this far off in the same
                // round gets it, so a room full of wild misses is funnier,
                // not penalized further.
                awardEmpossDurrBadge(player, 'SPECTRUM_LOST_IN_SPACE');
            }
        }
        return { name, value, distance, points };
    }).sort((a, b) => a.distance - b.distance);

    ots.lastResults = results;

    console.log(`[On the Spectrum] Room ${roomCode} round ${ots.roundIndex + 1} revealed. Target: ${ots.targetValue}. ${results.length} guesses scored.`);

    broadcastToRoom(roomCode, {
        type: 'ON_THE_SPECTRUM_REVEAL',
        namedPlayerName: ots.namedPlayerName,
        statementText: ots.statementText,
        targetValue: ots.targetValue,
        results,
        tvLimit: ON_THE_SPECTRUM_TV_REVEAL_LIMIT,
        secondsLeft: ON_THE_SPECTRUM_CONTINUE_SECONDS
    });
    // Scoring above changes standings -- without this the TV's Active
    // Standings panel just sits frozen on pre-round numbers until some
    // unrelated event (like a new player joining) happens to redraw it.
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });

    startOnTheSpectrumContinueCountdown(roomCode);
}

// Per-second ticks for the reveal screen's 45s backstop -- same shape as
// startCategoryCountdown/the EmpossDurr accuse-vote timer, so the TV's
// shared countdown clock behaves identically here. castOnTheSpectrumContinueVote's
// own continueVoteTimeout still does the actual resolving; this is purely
// the visual tick alongside it, cleared whenever that vote resolves early.
function startOnTheSpectrumContinueCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.onTheSpectrum) return;
    const ots = room.onTheSpectrum;

    if (ots.continueCountdownInterval) clearInterval(ots.continueCountdownInterval);

    let count = ON_THE_SPECTRUM_CONTINUE_SECONDS;
    ots.continueCountdownInterval = setInterval(() => {
        count--;
        const r = activeRooms[roomCode];
        if (!r || !r.onTheSpectrum || r.onTheSpectrum !== ots || ots.phase !== 'REVEAL' || count <= 0) {
            clearInterval(ots.continueCountdownInterval);
            ots.continueCountdownInterval = null;
            return;
        }
        broadcastToRoom(roomCode, { type: 'ON_THE_SPECTRUM_CONTINUE_TIMER_TICK', secondsLeft: count });
    }, 1000);
}

// Same majority-with-backstop-timer shape as the GAME_OVER return vote, but
// deliberately not the same function -- that one resolves BETWEEN two
// competing destinations (plain lobby vs. EmpossDurr shortcut), which this
// doesn't need: there's only one action, continue to the next round, so a
// simpler dedicated version reads more clearly than threading an unused
// "which action wins" parameter through a shared one.
function castOnTheSpectrumContinueVote(roomCode, playerName) {
    const room = activeRooms[roomCode];
    if (!room || !room.onTheSpectrum) return null;
    const ots = room.onTheSpectrum;
    ots.continueVotes.add(playerName);

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    broadcastToRoom(roomCode, {
        type: 'ON_THE_SPECTRUM_CONTINUE_UPDATE',
        votedCount: ots.continueVotes.size,
        totalNeeded: activePlayers.length
    });

    const neededForMajority = Math.floor(activePlayers.length / 2) + 1;
    if (ots.continueVotes.size >= neededForMajority) {
        startOnTheSpectrumRound(roomCode);
        return "Majority's in -- next topic!";
    }

    if (!ots.continueVoteTimeout) {
        ots.continueVoteTimeout = setTimeout(() => {
            const r = activeRooms[roomCode];
            if (!r || !r.onTheSpectrum) return;
            r.onTheSpectrum.continueVoteTimeout = null;
            startOnTheSpectrumRound(roomCode);
        }, ON_THE_SPECTRUM_CONTINUE_SECONDS * 1000);
    }
    return `Vote recorded (${ots.continueVotes.size}/${activePlayers.length}) -- resolves once a majority agrees, or in ${ON_THE_SPECTRUM_CONTINUE_SECONDS}s.`;
}

function calculateCategoryWinner(room) {
    const votes = room.categoryVotes;
    let maxVotes = -1;
    let candidates = [];

    for (const key in votes) {
        if (votes[key] > maxVotes) {
            maxVotes = votes[key];
            candidates = [key];
        } else if (votes[key] === maxVotes) {
            candidates.push(key);
        }
    }
    const randomIndex = Math.floor(Math.random() * candidates.length);
    return candidates[randomIndex];
}

// ==========================================
// PHASE 3: CORE QUESTIONS ENGINE
// ==========================================
function startGameRoundCountdown(roomCode, startCount = GAME_ROUND_DURATION_SECONDS) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = startCount;
    room.gameSecondsLeft = count;
    if (room.timerInterval) clearInterval(room.timerInterval);

    room.timerInterval = setInterval(() => {
        count--;
        room.gameSecondsLeft = count;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + " s" });
        } else {
            evaluateRoundAndRevealAnswer(roomCode);
        }
    }, 1000);
}

// Once every player has answered, don't reveal instantly -- snap the remaining
// time down to a short beat (never lengthening it) so the room gets a "3...2...1"
// moment instead of a jarring instant cut to the answer.
function fastForwardToReveal(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.gameSecondsLeft > FAST_FORWARD_SECONDS) {
        // The countdown interval decrements before it broadcasts, so without this
        // the display would jump straight to "2 s" and skip showing "3 s" at all.
        broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: FAST_FORWARD_SECONDS + " s" });
        startGameRoundCountdown(roomCode, FAST_FORWARD_SECONDS);
    }
}

function evaluateRoundAndRevealAnswer(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.timerInterval) {
        clearInterval(room.timerInterval);
        room.timerInterval = null;
    }

    room.gameState = 'ROUND_REVEAL';
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: "TIME'S UP!" });

    const correctLetter = room.currentQuestionData ? room.currentQuestionData.correctLetter : null;
    const points = room.currentQuestionData ? room.currentQuestionData.points : 0;

    if (correctLetter) {
        // Iterates every player, not just those who answered, so a player who
        // sat this one out (no submission) has their streak broken same as a
        // wrong answer -- only an unbroken run of *correct* answers counts.
        // First name to submit any answer this round (right or wrong) -- fastest
        // is a raw-speed achievement, independent of whether it was correct.
        const fastestPlayerName = room.answerOrder && room.answerOrder[0];

        Object.values(room.players).forEach(player => {
            const submittedLetter = room.answers[player.name];
            if (submittedLetter === correctLetter) {
                player.score += points;
                player.correctAnswers = (player.correctAnswers || 0) + 1; // tiebreak for the final leaderboard
                player.currentStreak = (player.currentStreak || 0) + 1;
                // Flat, one-shot badge (same style as SPYGLASS/IMPOSTOR_WIN)
                // rather than a climbing bronze/silver/gold ladder --
                // real play found even the first 3-in-a-row rung rare enough on
                // its own that the 6/9 tiers above it were never actually
                // reached, so the escalation was dead weight. Streak still
                // resets after hitting 3 (not carried further), so this stays
                // a genuine "did it happen this game" moment, not a one-time
                // permanent unlock from an early lucky run.
                if (player.currentStreak >= 3) {
                    player.currentStreak = 0;
                    player.awards = player.awards || {};
                    player.awards.STREAK = 1;
                }
            } else {
                player.currentStreak = 0;
            }

            // The bolt is a live, contested status, not an accumulated streak --
            // it belongs to whoever answered fastest THIS round, full stop. It's
            // taken away from anyone else holding it the moment someone else wins
            // the round, so it's always showing the room's current fastest player.
            player.awards = player.awards || {};
            if (player.name === fastestPlayerName) {
                player.awards.SPEED3 = 1;
                // Unlike the badge, this lifetime count never resets -- it exists
                // solely as the final leaderboard's tiebreaker (compareByRank),
                // one step more meaningful than falling straight to join order.
                player.timesFastest = (player.timesFastest || 0) + 1;
            } else if (player.awards.SPEED3) {
                delete player.awards.SPEED3;
            }
        });
    }

    broadcastToRoom(roomCode, {
        type: 'REVEAL_CORRECT_ANSWER',
        correctLetter,
        // Lets the TV mark each player's per-round status indicator green
        // (correct) or back to invisible (wrong/no answer) after the reveal.
        answers: room.answers
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players).filter(p => !p.left)
    });

    console.log(`[Game Round Clock] Round countdown finished for Room ${roomCode}. Broadcasted answer reveal.`);

    if (room.revealTimeout) clearTimeout(room.revealTimeout);
    room.revealTimeout = setTimeout(() => {
        room.revealTimeout = null;
        startNextQuestion(roomCode);
    }, REVEAL_DURATION_MS);
}

// ==========================================
// MASTER PACKET DATA INTAKE GATEWAY
// ==========================================
export function handleIncomingMessage(fromPhone, bodyText, explicitRoomCode, presentedToken) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts) return "⚠️ Error: Empty input payload.";
    const firstWord = parts[0].toUpperCase();

    // 1. Handle Room Onboarding / Entry Checkout Transactions
    if (!isNaN(firstWord) && firstWord.length === 4) {
        const roomCode = firstWord;

        if (parts.length >= 4) {
            // A room only ever comes into existence through the gated /host
            // flow now -- this used to auto-create one right here for any
            // unrecognized code, which was a live bypass of the entire
            // access-code gate (and hardcoded a 30-question bank on top of
            // it, independent of whatever the real default was).
            if (!activeRooms[roomCode]) {
                return `⚠️ Room ${roomCode} not found. Ask your host for the current lobby code.`;
            }

            const currentRoom = activeRooms[roomCode];
            currentRoom.lastActivity = Date.now();
            // A room sitting in its post-empty grace period is still fully
            // alive -- anyone walking back in (new face or a returning
            // player) cancels the countdown to closing it.
            if (currentRoom.emptyRoomTimeout) {
                clearTimeout(currentRoom.emptyRoomTimeout);
                currentRoom.emptyRoomTimeout = null;
            }

            parts.shift(); // Evacuate code segment
            let votedModule = parts.pop();
            // A phone showing a stale (unfiltered) mode list can't vote for a
            // mode this venue's rooms don't offer -- it lands on the first one
            // that is offered instead.
            const allowedModes = allowedModesFor(currentRoom);
            if (!allowedModes.includes(votedModule)) votedModule = allowedModes[0];
            const playerEmoji = parts.pop() || '👤';
            const playerNickname = parts.join(' ').trim();

            if (!playerNickname) return "⚠️ Setup Error: Blank nickname field.";
            // Matches the phone's input maxlength -- rejected rather than truncated so the
            // stored name (used as the player's key everywhere) is never silently altered.
            // Display-side truncation (ellipsis) handles anything still too long to fit visually.
            if (playerNickname.length > MAX_NAME_LENGTH) return `⚠️ Nickname too long (max ${MAX_NAME_LENGTH} characters).`;

            // A name already claimed by someone else is a genuine collision --
            // whether that identity is currently active or was left behind by
            // whoever holds it. Matching the stored session token is what lets
            // the SAME device silently reclaim its own name later (this is the
            // whole point of the token -- a stranger retyping a taken name,
            // active or not, can't just inherit it). A brand-new name has no
            // existingPlayer at all, so this never blocks a genuine first join.
            const existingPlayer = currentRoom.players[playerNickname];
            // ...unless that name is effectively abandoned: its player left,
            // or their phone has stopped checking in (a closed tab, a dead
            // battery, a different browser). Real play hit this -- someone
            // left by accident, lost their saved session, and couldn't get
            // back in under their own name, which stalled the whole night.
            // A name that's actively in use stays protected.
            const nameIsAbandoned = existingPlayer && (existingPlayer.left
                || Date.now() - (existingPlayer.lastSeen || 0) > PLAYER_QUIET_RECLAIM_MS);
            if (existingPlayer && existingPlayer.sessionToken !== presentedToken && !nameIsAbandoned) {
                return `⚠️ Name taken inside Room ${roomCode}.`;
            }

            // Late joins are welcome any time before the match wraps up -- their
            // phone's status poller will catch them up to whatever phase is live.
            // A finished match still lets its OWN players reconnect (e.g. an
            // auto-resume after the game already ended) -- it just won't let a
            // brand-new stranger join one that's already over.
            if (currentRoom.gameState === 'GAME_OVER' && !existingPlayer) {
                return "⚠️ This match has already ended.";
            }

            let sessionToken;
            if (existingPlayer) {
                // A player who left mid-game and comes back after the room's
                // already moved on to a fresh game (a plain lobby return, or
                // either "Play X Again" shortcut) missed that reset entirely
                // -- resetRoomToLobby's reset loop only ever touches players
                // who were still active at the time, so a left player's old
                // score/badges from the PREVIOUS game would otherwise still
                // be sitting on their record, ready to carry straight into
                // whatever mode gets played next. room.gameEpoch bumps on
                // every such reset; a mismatch here means this player missed
                // the most recent one and needs it applied now, on rejoin.
                if (existingPlayer.statsEpoch !== currentRoom.gameEpoch) {
                    resetPlayerStatsForFreshGame(existingPlayer);
                    existingPlayer.statsEpoch = currentRoom.gameEpoch;
                }
                existingPlayer.left = false;
                existingPlayer.lastSeen = Date.now();
                existingPlayer.phoneHandle = fromPhone;
                existingPlayer.emoji = playerEmoji;
                existingPlayer.vote = votedModule;
                sessionToken = existingPlayer.sessionToken;
            } else {
                sessionToken = randomUUID();
                currentRoom.players[playerNickname] = {
                    phoneHandle: fromPhone,
                    name: playerNickname,
                    emoji: playerEmoji,
                    vote: votedModule,
                    categoryVote: null,
                    requestedStart: false,
                    score: 0,
                    correctAnswers: 0,
                    currentStreak: 0,
                    timesFastest: 0, // lifetime count, purely for tie-breaking -- independent of the bolt badge's live per-round status
                    bullseyeCount: 0, // On the Spectrum exact matches -- also a tiebreak field
                    impostorCatchStreak: 0, // EmpossDurr: consecutive correct accuse-vote calls, see updateImpostorCatchStreaks
                    awards: {},
                    statsEpoch: currentRoom.gameEpoch || 0, // matches the room's current game -- see the rejoin branch above
                    sessionToken, // proves later requests claiming this name are from the same device -- see play.html's auto-resume flow
                    left: false,
                    lastSeen: Date.now(), // refreshed by every status poll -- see PLAYER_QUIET_RECLAIM_MS
                    joinedAt: new Date()
                };
            }

            const playersArray = Object.values(currentRoom.players).filter(p => !p.left);
            broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: playersArray });

            // Module voting and the lobby clock are only meaningful pre-game --
            // restarting them for a late joiner would silently reset a match
            // already in progress (executeLobbyPhaseExpiration would fire again
            // in 60s and stomp on whatever real phase is live by then).
            if (currentRoom.gameState === 'LOBBY') {
                currentRoom.votes = emptyModeVotes(currentRoom);
                playersArray.forEach(p => {
                    if (currentRoom.votes[p.vote] !== undefined) currentRoom.votes[p.vote]++;
                });
                broadcastToRoom(roomCode, { type: 'VOTE_UPDATE', votes: currentRoom.votes, totalVotes: playersArray.length });

                startLobbyCountdown(roomCode);
                broadcastToRoom(roomCode, { type: 'LOBBY_TIMER_TICK', secondsLeft: "60 s" });

                return { reply: `Welcome to RandoMania, ${playerNickname}! Entry logged live.`, sessionToken };
            }

            return {
                reply: existingPlayer
                    ? `Welcome back, ${playerNickname}! Rejoining Room ${roomCode} with your score intact.`
                    : `Welcome to RandoMania, ${playerNickname}! Jumping into the action already in progress.`,
                sessionToken
            };
        }
    }

    // 2. Room resolution. Prefer the room code the phone told us it's in --
    // every real client sends this now (set in localStorage at join time).
    // The old behavior searched every room in memory for a name/phoneHandle
    // match with `for...in`, which iterates numeric-string keys (room codes)
    // in ascending numeric order, NOT creation order -- so once the server had
    // accumulated multiple rooms across a long testing session, a player could
    // get silently matched into an old, numerically-lower-coded stale room
    // that happened to share their name, rather than the room they were
    // actually looking at. That fallback search still exists below for any
    // caller that doesn't supply a roomCode, but now prefers the
    // most-recently-active room on a name collision instead of the smallest
    // room code.
    let associatedRoomCode = null;
    let actingPlayerName = null;

    if (explicitRoomCode && activeRooms[explicitRoomCode]) {
        const directMatch = Object.values(activeRooms[explicitRoomCode].players)
            .find(p => p.phoneHandle === fromPhone || p.name === fromPhone);
        if (directMatch) {
            associatedRoomCode = explicitRoomCode;
            actingPlayerName = directMatch.name;
        }
    }

    if (!associatedRoomCode) {
        const roomCodesByRecency = Object.keys(activeRooms)
            .sort((a, b) => (activeRooms[b].lastActivity || 0) - (activeRooms[a].lastActivity || 0));

        for (const code of roomCodesByRecency) {
            const match = Object.values(activeRooms[code].players).find(p => p.phoneHandle === fromPhone || p.name === fromPhone);
            if (match) {
                associatedRoomCode = code;
                actingPlayerName = match.name;
                break;
            }
        }

        // SOLO TESTING AUTOCORRECT SHIELD: Fallback safely if a browser string header matches an unallocated key
        if (!associatedRoomCode) {
            for (const code of roomCodesByRecency) {
                const currentRoomPlayers = Object.values(activeRooms[code].players);
                if (currentRoomPlayers.length > 0) {
                    associatedRoomCode = code;
                    actingPlayerName = currentRoomPlayers[0].name; // Auto-bind onto the first registered profile row
                    break;
                }
            }
        }
    }

    if (!associatedRoomCode) return "⚠️ Setup Warning: Join a live room first.";
    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[actingPlayerName];

    // A player who left is out of the active roster until they rejoin through
    // the login screen (same room code + name) -- block any further game
    // actions from their stale phone session in the meantime.
    if (player.left) return `⚠️ You left Room ${associatedRoomCode}. Rejoin from the lobby screen to keep playing.`;

    // 2.5 Handle "Leave Room" -- lets a player step away without leaving the
    // rest of the room stuck waiting on their START vote or their answer.
    if (cleanText.toUpperCase() === 'LEAVE') {
        player.left = true;
        player.requestedStart = false;
        delete currentRoom.answers[actingPlayerName];

        const remainingActivePlayers = Object.values(currentRoom.players).filter(p => !p.left);
        broadcastToRoom(associatedRoomCode, { type: 'LEADERBOARD_UPDATE', players: remainingActivePlayers });

        // Re-check whichever gate the current phase is waiting on -- leaving
        // shouldn't leave everyone else stuck if they'd already cleared it.
        if (remainingActivePlayers.length > 0) {
            if (currentRoom.gameState === 'LOBBY' && remainingActivePlayers.every(p => p.requestedStart)) {
                remainingActivePlayers.forEach(p => p.requestedStart = false);
                executeLobbyPhaseExpiration(associatedRoomCode);
            } else if (currentRoom.gameState === 'CATEGORY_VOTE' && remainingActivePlayers.every(p => p.requestedStart)) {
                remainingActivePlayers.forEach(p => p.requestedStart = false);
                executeCategoryPhaseExpiration(associatedRoomCode);
            } else if (currentRoom.gameState === 'GAME_ROUND') {
                const totalAnswersLogged = remainingActivePlayers.filter(p => currentRoom.answers[p.name] !== undefined).length;
                if (totalAnswersLogged === remainingActivePlayers.length) {
                    fastForwardToReveal(associatedRoomCode);
                }
            } else if (currentRoom.gameState === 'EMPOSSDURR_ROUND' && currentRoom.empossdurr) {
                const ed = currentRoom.empossdurr;
                // The impostor leaving mid-round breaks the round's whole
                // premise (nobody left to catch) -- just move on rather than
                // leave everyone stuck talking about someone who's gone.
                if (actingPlayerName === ed.impostorName) {
                    startEmpossDurrRound(associatedRoomCode);
                } else if (ed.phase === 'DISCUSSION') {
                    ed.readyToAccuse.delete(actingPlayerName);
                    broadcastEmpossDurrReadyUpdate(associatedRoomCode);
                    const neededForMajority = Math.floor(remainingActivePlayers.length / 2) + 1;
                    if (ed.readyToAccuse.size >= neededForMajority) {
                        startEmpossDurrAccuseVote(associatedRoomCode);
                    } else {
                        ed.skipVotes.delete(actingPlayerName);
                        broadcastEmpossDurrSkipUpdate(associatedRoomCode);
                        if (ed.skipVotes.size >= neededForMajority) {
                            skipEmpossDurrRound(associatedRoomCode);
                        }
                    }
                } else if (ed.phase === 'ACCUSE_VOTE') {
                    delete ed.accuseVotes[actingPlayerName];
                    // Same non-juror treatment as DECLARE_VERDICT just below --
                    // this branch only ever runs for a real accuser leaving
                    // (the impostor leaving is caught by the branch above), but
                    // the impostor is still active and still excluded from the
                    // count being compared against.
                    const accusers = remainingActivePlayers.filter(p => p.name !== ed.impostorName);
                    const accuserVotesCast = Object.keys(ed.accuseVotes).filter(n => n !== ed.impostorName).length;
                    if (accuserVotesCast === accusers.length) {
                        tallyEmpossDurrAccuseVotes(associatedRoomCode);
                    }
                } else if (ed.phase === 'DECLARE_VERDICT') {
                    delete ed.declareVotes[actingPlayerName];
                    const jurors = remainingActivePlayers.filter(p => p.name !== ed.impostorName);
                    if (Object.keys(ed.declareVotes).length === jurors.length) {
                        tallyEmpossDurrDeclareVerdict(associatedRoomCode);
                    }
                }
            } else if (currentRoom.gameState === 'GAME_OVER' && currentRoom.returnVotes) {
                currentRoom.returnVotes.delete(actingPlayerName);
                // Whoever's left may now all have voted -- don't make them
                // wait out the backstop for someone who's gone.
                if (currentRoom.returnVotes.size > 0 && remainingActivePlayers.every(p => currentRoom.returnVotes.has(p.name))) {
                    resolveReturnToLobbyVote(associatedRoomCode);
                } else {
                    broadcastToRoom(associatedRoomCode, {
                        type: 'RETURN_VOTE_UPDATE',
                        votedCount: currentRoom.returnVotes.size,
                        totalNeeded: remainingActivePlayers.length
                    });
                }
            } else if (currentRoom.gameState === 'PROFILER_ROUND' && currentRoom.profiler) {
                handleProfilerLeave(associatedRoomCode);
            } else if (currentRoom.gameState === 'FLAG_ME_DOWN_ROUND' && currentRoom.flagMeDown) {
                checkFlagMeDownAllLocked(associatedRoomCode);
            } else if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII) {
                handleTriviYeahIILeave(associatedRoomCode, actingPlayerName);
            } else if (currentRoom.gameState === 'ON_THE_SPECTRUM_ROUND' && currentRoom.onTheSpectrum) {
                const ots = currentRoom.onTheSpectrum;
                if (actingPlayerName === ots.namedPlayerName && ots.phase === 'SET_TARGET') {
                    // Nothing to guess without a locked target -- scrap this
                    // slot and move straight to the next scheduled round.
                    startOnTheSpectrumRound(associatedRoomCode);
                } else if (ots.phase === 'GUESSING') {
                    delete ots.guesses[actingPlayerName];
                    const guessersNeeded = remainingActivePlayers.filter(p => p.name !== ots.namedPlayerName).length;
                    if (Object.keys(ots.guesses).length >= guessersNeeded) {
                        revealOnTheSpectrumRound(associatedRoomCode);
                    } else {
                        broadcastOnTheSpectrumLockInUpdate(associatedRoomCode);
                    }
                } else if (ots.phase === 'REVEAL') {
                    ots.continueVotes.delete(actingPlayerName);
                    const neededForMajority = Math.floor(remainingActivePlayers.length / 2) + 1;
                    if (ots.continueVotes.size >= neededForMajority) {
                        // startOnTheSpectrumRound clears both the vote's
                        // backstop timeout and the countdown-tick interval
                        // itself, right at its top.
                        startOnTheSpectrumRound(associatedRoomCode);
                    } else {
                        broadcastToRoom(associatedRoomCode, {
                            type: 'ON_THE_SPECTRUM_CONTINUE_UPDATE',
                            votedCount: ots.continueVotes.size,
                            totalNeeded: remainingActivePlayers.length
                        });
                    }
                }
            }
        } else {
            // The last active player just left -- rather than releasing the
            // room immediately, give it ROOM_EMPTY_GRACE_MS before actually
            // closing it. The room (and its room code) stays reserved and
            // exactly as it was the whole time, so a group that's just
            // stepping away briefly can walk right back into the same code
            // instead of recreating everything. Cancelled on the way back in
            // -- see the join handler.
            if (currentRoom.emptyRoomTimeout) clearTimeout(currentRoom.emptyRoomTimeout);
            currentRoom.emptyRoomTimeout = setTimeout(() => {
                currentRoom.emptyRoomTimeout = null;
                closeRoom(associatedRoomCode);
            }, ROOM_EMPTY_GRACE_MS);
        }

        return `You've left Room ${associatedRoomCode}. Come back any time using the same name to pick up where you left off.`;
    }

    // 2.6 Handle re-voting for a different game mode while sitting in the
    // lobby -- e.g. after "Main Menu" bounces everyone back from a finished
    // game. player.vote is otherwise cast once at join time and never
    // touched again, which meant a room was stuck replaying whatever mode
    // it first picked forever, with no way to ever pick a different one.
    // Reuses the exact same mode keys the join form already sends.
    if (currentRoom.gameState === 'LOBBY' && currentRoom.votes) {
        const modeChoice = cleanText.toUpperCase();
        if (Object.prototype.hasOwnProperty.call(currentRoom.votes, modeChoice)) {
            player.vote = modeChoice;

            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            currentRoom.votes = emptyModeVotes(currentRoom);
            activePlayers.forEach(p => { if (currentRoom.votes[p.vote] !== undefined) currentRoom.votes[p.vote]++; });

            broadcastToRoom(associatedRoomCode, { type: 'VOTE_UPDATE', votes: currentRoom.votes, totalVotes: activePlayers.length });

            return `Vote switched to ${modeChoice}, ${player.name}!`;
        }
    }

    // 3. DEMOCRACY WITH OOMPH: Clock skipping override calculation loops
    if (cleanText.toUpperCase() === 'START') {
        // Main Menu from Game Over -- everyone-votes-or-backstop-timer, see
        // castReturnToLobbyVote for how that rule got here.
        if (currentRoom.gameState === 'GAME_OVER') {
            return castReturnToLobbyVote(associatedRoomCode, actingPlayerName, 'START');
        }

        player.requestedStart = true;

        const playersList = Object.values(currentRoom.players).filter(p => !p.left);
        const startRequestsCount = playersList.filter(p => p.requestedStart === true).length;

        console.log(`[Democracy Check] Room ${associatedRoomCode}: ${startRequestsCount}/${playersList.length} players voted START.`);

        if (startRequestsCount === playersList.length) {
            playersList.forEach(p => p.requestedStart = false); // Wipe trigger parameters clean for safety

            if (currentRoom.gameState === 'LOBBY') {
                executeLobbyPhaseExpiration(associatedRoomCode);
                // Most modes skip the category-vote screen entirely now (On the
                // Spectrum, EmpossDurr, and Trivi-Yeah's auto-picked deck) -- this
                // reply has to stay true whether the room lands on a category
                // vote or straight on the first question/round.
                return "Consensus secured! Game's starting!";
            } else if (currentRoom.gameState === 'CATEGORY_VOTE') {
                executeCategoryPhaseExpiration(associatedRoomCode);
                return "Consensus secured! Shifting to active trivia round.";
            }
        }
        return `Start intent recorded (${startRequestsCount}/${playersList.length} votes secured). Waiting for consensus.`;
    }

    // 3.5. "Play Again" -- same mode, same roster, fresh stats. Shares the
    // Game Over vote with Main Menu (START above); resolveReturnToLobbyVote
    // decides between them once everyone's voted or the backstop runs out.
    if (cleanText.toUpperCase() === 'PLAY_AGAIN' && currentRoom.gameState === 'GAME_OVER') {
        return castReturnToLobbyVote(associatedRoomCode, actingPlayerName, 'PLAY_AGAIN');
    }

    // 4. Handle Sub-Category Voting Selection Track Overrides (Phase 2)
    if (currentRoom.gameState === 'CATEGORY_VOTE') {
        const choice = cleanText.toUpperCase();
        const validCategoryKeys = Object.keys(currentRoom.categoryVotes);
        if (validCategoryKeys.includes(choice)) {
            player.categoryVote = choice;

            currentRoom.categoryVotes = {};
            validCategoryKeys.forEach(key => { currentRoom.categoryVotes[key] = 0; });
            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            let totalSubVotes = 0;

            activePlayers.forEach(p => {
                if (p.categoryVote) {
                    currentRoom.categoryVotes[p.categoryVote]++;
                    totalSubVotes++;
                }
            });

            broadcastToRoom(associatedRoomCode, {
                type: 'CATEGORY_VOTE_UPDATE',
                votes: currentRoom.categoryVotes,
                totalVotes: totalSubVotes
            });

            return `Got it, ${player.name}! Sub-vote recorded.`;
        }
    }

    // 5. Handle Live Active Choice Submissions (Phase 3)
    if (currentRoom.gameState === 'GAME_ROUND') {
        const answerChoice = cleanText.toUpperCase();
        if (['A', 'B', 'C', 'D'].includes(answerChoice)) {
            if (!(actingPlayerName in currentRoom.answers)) {
                currentRoom.answerOrder = currentRoom.answerOrder || [];
                currentRoom.answerOrder.push(actingPlayerName);
            }
            currentRoom.answers[actingPlayerName] = answerChoice;
            // Lets the TV light up this player's per-round status indicator
            // immediately, without waiting for the reveal broadcast.
            broadcastToRoom(associatedRoomCode, { type: 'ANSWER_SUBMITTED', playerName: actingPlayerName });

            const totalPlayersCount = Object.values(currentRoom.players).filter(p => !p.left).length;
            const totalAnswersLogged = Object.keys(currentRoom.answers).length;

            console.log(`[Match Engine] Submission received from ${player.name}: "${answerChoice}". Total logged: ${totalAnswersLogged}/${totalPlayersCount}`);

            if (totalAnswersLogged === totalPlayersCount) {
                console.log(`🚀 [Match Engine] Final submission secured! Fast-forwarding clock to ${FAST_FORWARD_SECONDS}s.`);
                fastForwardToReveal(associatedRoomCode);
            }
            return `Got it, ${player.name}! Option ${answerChoice} logged.`;
        }
    }

    // 5.1 Trivi-Yeah II: tile pick -- current picker only, PICK_TILE phase only
    if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII.phase === 'PICK_TILE') {
        const pickMatch = /^PICK (\d+)$/.exec(cleanText.toUpperCase());
        if (pickMatch) {
            const ty2 = currentRoom.triviYeahII;
            if (actingPlayerName !== ty2.currentPicker) {
                return `⚠️ Not your pick -- waiting on ${ty2.currentPicker}.`;
            }
            const cellIndex = parseInt(pickMatch[1], 10);
            const cell = ty2.grid[cellIndex];
            if (!cell || cell.cleared) {
                return `⚠️ That tile isn't available.`;
            }
            startTriviYeahIITileReveal(associatedRoomCode, cellIndex);
            return `Nice pick, ${player.name}!`;
        }
    }

    // 5.15 Trivi-Yeah II: trap setting -- the sweeper only, TRAP_SET phase.
    // "TRAP <tile> <TYPE>" or "TRAP_SKIP". Same reply either way, and
    // whether it actually stuck (vs. fizzling on a Doubler) is never said.
    if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII.phase === 'TRAP_SET') {
        const ty2 = currentRoom.triviYeahII;
        const upper = cleanText.toUpperCase();
        if (upper === 'TRAP_SKIP' || upper.startsWith('TRAP ')) {
            if (actingPlayerName !== ty2.trapSetter) return `⚠️ ${ty2.trapSetter} is busy with something. Hang tight!`;
            if (upper === 'TRAP_SKIP') {
                placeTriviYeahIITrap(associatedRoomCode, null, null);
                return `No trap this time. Back to the board!`;
            }
            const match = /^TRAP (\d+) (PANTS_ON_FIRE|HOT_SEAT|WEDGIE)$/.exec(upper);
            const cell = match ? ty2.grid[parseInt(match[1], 10)] : null;
            if (!cell || cell.cleared) return `⚠️ Pick an open tile and a trap.`;
            placeTriviYeahIITrap(associatedRoomCode, parseInt(match[1], 10), match[2]);
            return `Trap set. 🤫`;
        }
    }

    // 5.2 Trivi-Yeah II: live answer submissions -- ANSWERING phase only.
    // PASS is a genuine third option alongside A-D, not a fallback -- it's
    // the deliberate "sit this one out" opt-out from the wrong-answer
    // penalty (see evaluateTriviYeahIIAnswers), tracked and broadcast
    // exactly like a lettered answer so the room sees it as a real response.
    // A Doubler tile is different: only the picker answers (everyone else
    // already placed their side bet instead), and PASS doesn't make sense
    // on a question you already committed a wager to -- A-D only, from the
    // picker alone.
    if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII.phase === 'ANSWERING') {
        const ty2 = currentRoom.triviYeahII;
        const answerChoice = cleanText.toUpperCase();
        const trapType = ty2.trap ? ty2.trap.type : null;
        // Doubler and Hot Seat: the picker answers alone. Those two plus
        // Pants on Fire: no passing.
        const isDoublerQuestion = !!ty2.doubler || trapType === 'HOT_SEAT';
        const noPass = isDoublerQuestion || trapType === 'PANTS_ON_FIRE';
        const validChoices = noPass ? ['A', 'B', 'C', 'D'] : ['A', 'B', 'C', 'D', 'PASS'];
        if (noPass && answerChoice === 'PASS') return `⚠️ No passing on this one!`;

        if (validChoices.includes(answerChoice)) {
            if (isDoublerQuestion && actingPlayerName !== ty2.currentPicker) {
                return trapType === 'HOT_SEAT'
                    ? `⚠️ Only ${ty2.currentPicker} answers this one -- they're in the Hot Seat.`
                    : `⚠️ Only ${ty2.currentPicker} answers this one -- it's their Doubler.`;
            }
            if (!(actingPlayerName in ty2.answers)) {
                ty2.answerOrder.push(actingPlayerName);
            }
            ty2.answers[actingPlayerName] = answerChoice;
            broadcastToRoom(associatedRoomCode, { type: 'ANSWER_SUBMITTED', playerName: actingPlayerName });

            // A Doubler only ever waits on one answer (the picker's); a
            // normal tile waits on everyone.
            const totalAnswersLogged = Object.keys(ty2.answers).length;
            if (isDoublerQuestion) {
                fastForwardTriviYeahIIReveal(associatedRoomCode);
            } else {
                const totalPlayersCount = Object.values(currentRoom.players).filter(p => !p.left).length;
                if (totalAnswersLogged === totalPlayersCount) {
                    fastForwardTriviYeahIIReveal(associatedRoomCode);
                }
            }
            return answerChoice === 'PASS' ? `Got it, ${player.name} -- passing this one.` : `Got it, ${player.name}! Option ${answerChoice} logged.`;
        }
    }

    // 5.3 Trivi-Yeah II: Doubler wager -- current picker only, DOUBLER_WAGER phase.
    if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII.phase === 'DOUBLER_WAGER') {
        const wagerMatch = /^WAGER (\d+)$/.exec(cleanText.toUpperCase());
        if (wagerMatch) {
            const ty2 = currentRoom.triviYeahII;
            if (actingPlayerName !== ty2.currentPicker) {
                return `⚠️ Only ${ty2.currentPicker} wagers on their own Doubler.`;
            }
            const cell = ty2.grid[ty2.activeCellIndex];
            const maxWager = Math.max(player.score, cell.points);
            const amount = Math.min(Math.max(0, parseInt(wagerMatch[1], 10)), maxWager);
            resolveTriviYeahIIWager(associatedRoomCode, amount);
            return `Wager locked in at ${amount} points, ${player.name}!`;
        }
    }

    // 5.4 Trivi-Yeah II: Doubler side bets -- everyone except the picker,
    // DOUBLER_SIDE_BET phase. Every side bet stakes the tile's own fixed
    // value, same for every bettor -- no amount to enter, just a direction
    // (or Pass to sit it out). (Briefly let each bettor pick their own
    // amount -- reverted after playtesting: not worth the typing-on-a-phone
    // friction for how rarely a Doubler comes up.)
    if (currentRoom.gameState === 'TRIVI_YEAH_II_ROUND' && currentRoom.triviYeahII.phase === 'DOUBLER_SIDE_BET') {
        const betChoice = cleanText.toUpperCase();
        if (['FOR', 'AGAINST', 'PASS'].includes(betChoice) || betChoice === 'BET_FOR' || betChoice === 'BET_AGAINST' || betChoice === 'BET_PASS') {
            const ty2 = currentRoom.triviYeahII;
            if (actingPlayerName === ty2.currentPicker) {
                return `⚠️ You're the one on the hook this time -- no side bet for you.`;
            }
            const choice = betChoice.replace('BET_', '');
            const amount = choice === 'PASS' ? 0 : ty2.grid[ty2.activeCellIndex].points;
            ty2.doubler.sideBets[actingPlayerName] = { choice, amount };
            broadcastToRoom(associatedRoomCode, { type: 'ANSWER_SUBMITTED', playerName: actingPlayerName });

            const eligibleBettors = Object.values(currentRoom.players).filter(p => !p.left && p.name !== ty2.currentPicker);
            const betsLogged = eligibleBettors.filter(p => p.name in ty2.doubler.sideBets).length;
            if (betsLogged === eligibleBettors.length) {
                fastForwardTriviYeahIISideBets(associatedRoomCode);
            }
            return choice === 'PASS' ? `Got it, ${player.name} -- sitting this bet out.` : `Got it, ${player.name}! Betting ${amount} points ${choice}.`;
        }
    }

    // 5.4b Trivi-Yeah II: Final Wager -- private wager against your own
    // score, WAGER phase, any active player. One-shot (no resubmitting) --
    // the whole point is it stays secret from everyone else until reveal.
    if (currentRoom.gameState === 'TRIVI_YEAH_II_FINAL_WAGER' && currentRoom.finalWager.phase === 'WAGER') {
        const wagerMatch = /^FWAGER\s+(\d+)$/i.exec(cleanText);
        if (wagerMatch) {
            const fw = currentRoom.finalWager;
            if (actingPlayerName in fw.wagers) {
                return `⚠️ Wager already locked in -- no changing it now.`;
            }
            const amount = Math.min(Math.max(0, parseInt(wagerMatch[1], 10)), Math.max(player.score, 0));
            fw.wagers[actingPlayerName] = amount;
            broadcastToRoom(associatedRoomCode, { type: 'ANSWER_SUBMITTED', playerName: actingPlayerName });

            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            if (activePlayers.every(p => p.name in fw.wagers)) {
                openTriviYeahIIFinalAnswerPhase(associatedRoomCode);
            }
            return `Wager locked in, ${player.name} -- keep it secret!`;
        }
    }

    // 5.4c Trivi-Yeah II: Final Wager -- free-text answer, ANSWER phase, any
    // active player. Resubmittable right up until time's up, same as
    // changing your mind on a written answer before the buzzer -- only the
    // last value in before the 30s clock hits zero counts.
    if (currentRoom.gameState === 'TRIVI_YEAH_II_FINAL_WAGER' && currentRoom.finalWager.phase === 'ANSWER') {
        const answerMatch = /^FANSWER(?:\s+([\s\S]*))?$/i.exec(cleanText);
        if (answerMatch) {
            const fw = currentRoom.finalWager;
            fw.answers[actingPlayerName] = (answerMatch[1] || '').trim();
            broadcastToRoom(associatedRoomCode, { type: 'ANSWER_SUBMITTED', playerName: actingPlayerName });
            return `Final answer locked in, ${player.name}!`;
        }
        // Flag Me Down: open a clue on your own phone, for a share of your
        // winnings. Can't be closed again once opened.
        const hintMatch = /^FHINT\s+(REGION|CAPITAL|MAP)$/i.exec(cleanText);
        if (hintMatch && currentRoom.finalWager.hints) {
            const fw = currentRoom.finalWager;
            const kind = hintMatch[1].toUpperCase();
            fw.hintsUsed[actingPlayerName] = fw.hintsUsed[actingPlayerName] || [];
            if (!fw.hintsUsed[actingPlayerName].includes(kind)) fw.hintsUsed[actingPlayerName].push(kind);
            return `Clue opened -- your winnings drop to ${Math.round(100 * Math.max(0, 1 - FLAG_ME_DOWN_HINT_COST * fw.hintsUsed[actingPlayerName].length))}%.`;
        }
    }

    // 5.5. EmpossDurr round messages
    if (currentRoom.gameState === 'EMPOSSDURR_ROUND') {
        const ed = currentRoom.empossdurr;
        const command = cleanText.toUpperCase();

        // The impostor's declare button preempts whatever's currently
        // happening (open talk or an in-flight accuse vote) -- see design
        // chat: this is deliberately the one action allowed to interrupt
        // another phase, since real-table it was the impostor physically
        // speaking up, which nothing could stop either.
        if (command === 'DECLARE') {
            if (actingPlayerName !== ed.impostorName) {
                return "⚠️ Only the impostor can declare.";
            }
            if (ed.phase === 'DECLARE_VERDICT') {
                return "The declaration is already in progress.";
            }
            startEmpossDurrDeclare(associatedRoomCode);
            return "You've declared! Say your guess out loud now.";
        }

        if (ed.phase === 'DISCUSSION' && (command === 'READY_TOGGLE')) {
            if (ed.readyToAccuse.has(actingPlayerName)) {
                ed.readyToAccuse.delete(actingPlayerName);
            } else {
                ed.readyToAccuse.add(actingPlayerName);
            }
            broadcastEmpossDurrReadyUpdate(associatedRoomCode);

            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            const neededForMajority = Math.floor(activePlayers.length / 2) + 1;
            if (ed.readyToAccuse.size >= neededForMajority) {
                startEmpossDurrAccuseVote(associatedRoomCode);
                return "Majority's ready -- vote is on!";
            }
            return ed.readyToAccuse.has(actingPlayerName)
                ? "You're marked ready to accuse."
                : "Ready status retracted.";
        }

        // A repeat word, or a clue nobody can work with -- any player can
        // flag it, and once a majority agree the round is scrapped for a
        // freshly-drawn one. No score/badge changes, impostor stays hidden,
        // same majority threshold as the ready-to-accuse toggle above.
        if (ed.phase === 'DISCUSSION' && (command === 'SKIP_TOGGLE')) {
            if (ed.skipVotes.has(actingPlayerName)) {
                ed.skipVotes.delete(actingPlayerName);
            } else {
                ed.skipVotes.add(actingPlayerName);
            }
            broadcastEmpossDurrSkipUpdate(associatedRoomCode);

            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            const neededForMajority = Math.floor(activePlayers.length / 2) + 1;
            if (ed.skipVotes.size >= neededForMajority) {
                skipEmpossDurrRound(associatedRoomCode);
                return "Majority wants to skip -- new word coming up!";
            }
            return ed.skipVotes.has(actingPlayerName)
                ? "You've flagged this round to skip."
                : "Skip flag retracted.";
        }

        if (ed.phase === 'ACCUSE_VOTE' && (command === 'ACCUSE_ABSTAIN' || command.startsWith('ACCUSE_TARGET:'))) {
            if (actingPlayerName in ed.accuseVotes) {
                return "Vote already locked in for this round.";
            }
            if (command === 'ACCUSE_ABSTAIN') {
                ed.accuseVotes[actingPlayerName] = { mode: 'abstain' };
            } else {
                const targetName = cleanText.slice('ACCUSE_TARGET:'.length);
                if (!currentRoom.players[targetName] || currentRoom.players[targetName].left) {
                    return "⚠️ Unknown player.";
                }
                ed.accuseVotes[actingPlayerName] = { mode: 'accuse', target: targetName };
            }

            // Lets the TV light up this player's tile without revealing
            // what they chose -- same treatment as ANSWER_SUBMITTED, and
            // deliberately unconditional (impostor included): their tile
            // lighting up right along with everyone else's is exactly the
            // camouflage the Abstain option exists for.
            //
            // The displayed votedCount/totalNeeded used to only count real
            // accusers (the actual resolution threshold), which created a
            // real leak: the impostor's own tap always lit their tile
            // without ever moving the number, and that mismatch was visible
            // and consistent round after round -- watch the TV for one
            // round and you've identified the impostor with zero vote
            // content involved. Fixed by decoupling the two: what's shown
            // now is literal activity (every submission, impostor included,
            // against every active player), which always matches the lit
            // tiles 1:1 and leaks nothing. The actual resolution check right
            // below is untouched -- still gated on real accusers only.
            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            const accusers = activePlayers.filter(p => p.name !== ed.impostorName);
            const accuserVotesCast = Object.keys(ed.accuseVotes).filter(n => n !== ed.impostorName).length;
            broadcastToRoom(associatedRoomCode, {
                type: 'EMPOSSDURR_VOTE_SUBMITTED',
                playerName: actingPlayerName,
                votedCount: Object.keys(ed.accuseVotes).length,
                totalNeeded: activePlayers.length
            });

            if (accuserVotesCast === accusers.length) {
                tallyEmpossDurrAccuseVotes(associatedRoomCode);
            }
            return `Got it, ${player.name}! Vote logged.`;
        }

        if (ed.phase === 'DECLARE_VERDICT' && (command === 'DECLARE_YES' || command === 'DECLARE_NO')) {
            if (actingPlayerName === ed.impostorName) {
                return "⚠️ The impostor doesn't get a vote on their own declaration.";
            }
            if (actingPlayerName in ed.declareVotes) {
                return "Vote already locked in.";
            }
            ed.declareVotes[actingPlayerName] = command === 'DECLARE_YES' ? 'yes' : 'no';

            const jurors = Object.values(currentRoom.players).filter(p => !p.left && p.name !== ed.impostorName);
            broadcastToRoom(associatedRoomCode, {
                type: 'EMPOSSDURR_VOTE_SUBMITTED',
                playerName: actingPlayerName,
                votedCount: Object.keys(ed.declareVotes).length,
                totalNeeded: jurors.length
            });

            if (Object.keys(ed.declareVotes).length === jurors.length) {
                tallyEmpossDurrDeclareVerdict(associatedRoomCode);
            }
            return `Got it, ${player.name}! Verdict logged.`;
        }

        return `⚠️ That action isn't available right now.`;
    }

    // 5.55. Profiler round messages
    if (currentRoom.gameState === 'PROFILER_ROUND') {
        return handleProfilerAction(associatedRoomCode, currentRoom, actingPlayerName, cleanText);
    }

    // 5.56. Flag Me Down round messages
    if (currentRoom.gameState === 'FLAG_ME_DOWN_ROUND' && currentRoom.flagMeDown) {
        return handleFlagMeDownAction(associatedRoomCode, currentRoom, actingPlayerName, cleanText);
    }

    // 5.6. On the Spectrum round messages
    if (currentRoom.gameState === 'ON_THE_SPECTRUM_ROUND') {
        const ots = currentRoom.onTheSpectrum;
        const command = cleanText.toUpperCase();

        if (command.startsWith('SET_TARGET:') && ots.phase === 'SET_TARGET') {
            if (actingPlayerName !== ots.namedPlayerName) {
                return "⚠️ Only the named player sets the target this round.";
            }
            const rawValue = parseInt(command.split(':')[1], 10);
            if (Number.isNaN(rawValue)) return "⚠️ Invalid slider value.";
            ots.targetValue = Math.max(0, Math.min(100, rawValue));
            ots.phase = 'GUESSING';

            broadcastToRoom(associatedRoomCode, {
                type: 'ON_THE_SPECTRUM_GUESSING_START',
                namedPlayerName: ots.namedPlayerName,
                statementText: ots.statementText
            });
            broadcastOnTheSpectrumLockInUpdate(associatedRoomCode);
            return "Target locked in -- let the guessing begin!";
        }

        if (command.startsWith('GUESS:') && ots.phase === 'GUESSING') {
            if (actingPlayerName === ots.namedPlayerName) {
                return "⚠️ You're the named player this round -- nothing to guess.";
            }
            if (actingPlayerName in ots.guesses) {
                return "Guess already locked in for this round.";
            }
            const rawValue = parseInt(command.split(':')[1], 10);
            if (Number.isNaN(rawValue)) return "⚠️ Invalid slider value.";
            ots.guesses[actingPlayerName] = Math.max(0, Math.min(100, rawValue));

            broadcastOnTheSpectrumLockInUpdate(associatedRoomCode);

            const activePlayers = Object.values(currentRoom.players).filter(p => !p.left);
            const guessersNeeded = activePlayers.filter(p => p.name !== ots.namedPlayerName).length;
            if (Object.keys(ots.guesses).length >= guessersNeeded) {
                revealOnTheSpectrumRound(associatedRoomCode);
            }
            return `Got it, ${player.name}! Guess locked in.`;
        }

        if (command === 'CONTINUE' && ots.phase === 'REVEAL') {
            return castOnTheSpectrumContinueVote(associatedRoomCode, actingPlayerName);
        }

        return `⚠️ That action isn't available right now.`;
    }

    return `Sorry, ${player.name}, response submission window closed.`;
}

