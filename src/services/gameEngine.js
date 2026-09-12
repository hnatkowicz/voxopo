import pool from '../config/database.js';
import { randomUUID } from 'node:crypto';

export const activeRooms = {};

// Recognized subcategory values for TRIVI_YEAH specifically; the per-group
// depth check below (MIN_GROUP_SIZE_FOR_DISTRACTORS) is what actually excludes
// any specific category+subcategory+faction combo that's too thin to supply
// distractors -- this list is just which values are queried for at all. Other
// game modes (Country Monkey, etc.) define their own subcategory vocabulary
// and aren't filtered against this list -- see loadQuestionBank.
const ELIGIBLE_SUBCATEGORIES = ['PERSON', 'PLACE', 'THING', 'EVENT', 'DATE'];
const MIN_GROUP_SIZE_FOR_DISTRACTORS = 4; // correct answer + 3 distractors
const MAX_QUESTIONS_PER_GAME = 30;
const MIN_QUESTIONS_PER_GAME = 15;
const DEFAULT_QUESTIONS_PER_GAME = 15; // fixed length, no lobby picker for this right now
// Post-game "return to lobby" votes wait this long from the FIRST vote cast
// before resolving with whatever's been cast so far -- long enough that
// everyone actually gets to read the final leaderboard before the room
// moves on, but short enough that it can't be stalled forever by someone who
// never taps anything. See castReturnToLobbyVote.
const GAME_OVER_RETURN_VOTE_SECONDS = 20;
const REVEAL_DURATION_MS = 5000;
const GAME_ROUND_DURATION_SECONDS = 30;
const FAST_FORWARD_SECONDS = 3; // once everyone's answered, snap the clock down to this for a beat of suspense
const MAX_NAME_LENGTH = 30; // matches the phone's input maxlength

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
// a real value, so every room lands on the fixed DEFAULT_QUESTIONS_PER_GAME (15).
export function resolveRequestedQuestionCount(rawValue) {
    const parsed = parseInt(rawValue, 10);
    if (Number.isNaN(parsed)) return DEFAULT_QUESTIONS_PER_GAME;
    return Math.max(MIN_QUESTIONS_PER_GAME, Math.min(parsed, MAX_QUESTIONS_PER_GAME));
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
            { key: 'AFRICA', label: 'Africa' },
            { key: 'EUROPE', label: 'Europe' },
            { key: 'ASIA', label: 'Asia' },
            { key: 'MIDDLE_EAST_ASIA', label: 'Middle East' },
            { key: 'AMERICAS', label: 'Americas' },
            { key: 'SOUTHEAST_ASIA', label: 'Southeast Asia' },
            { key: 'PACIFIC_ISLANDS', label: 'Pacific Islands' },
            { key: ALL_REGIONS_KEY, label: 'World Wide!' }
        ];
    } else if (winningGameMode === 'EMPOSSDURR') {
        return [
            { key: 'CAT_1', label: 'Standard Circle' },
            { key: 'CAT_2', label: 'Traitor Pack' },
            { key: 'CAT_3', label: 'Chaos Mode' }
        ];
    } else if (winningGameMode === 'FLAG_ME_DOWN') {
        return [
            { key: 'CAT_1', label: 'Modern Nations' },
            { key: 'CAT_2', label: 'Historical Standards' },
            { key: 'CAT_3', label: 'Bizarre Banners' }
        ];
    }
    // ON_THE_SPECTRUM has no category vote at all -- see executeLobbyPhaseExpiration,
    // which skips straight into the game for this mode. One unified statement
    // pool, no theme to pick between.
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

    const winningModule = calculateElectionWinner(room);
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

    room.gameState = 'CATEGORY_VOTE';
    const categories = getCategoriesForMode(winningModule);
    // Fresh vote tally keyed to this mode's actual categories -- the previous
    // room's categoryVotes (if any) belonged to a different mode's key set.
    room.categoryVotes = {};
    categories.forEach(c => { room.categoryVotes[c.key] = 0; });

    console.log(`[Room Engine] Lobby phase closed for Room ${roomCode}. Winner: ${winningModule}`);

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

    // EmpossDurr has no multiple-choice question bank at all -- it's a
    // completely separate engine (see PHASE 3B below) with its own word deck,
    // round counting, and phase machine.
    if (room.winningGameMode === 'EMPOSSDURR') {
        try {
            await startEmpossDurrGame(roomCode);
        } catch (error) {
            console.error(`❌ [EmpossDurr] Failed to start Room ${roomCode}:`, error.message);
            broadcastContentUnavailable(roomCode, 'EmpossDurr');
            resetRoomToLobby(roomCode);
        }
        return;
    }

    try {
        await loadQuestionBank(room);
    } catch (error) {
        console.error(`❌ [Question Bank] Failed to load questions for Room ${roomCode}:`, error.message);
        return;
    }

    if (room.questionBank.length === 0) {
        // A deck with real map/content assets but no matching DB rows yet
        // (e.g. a region's SQL not applied to this environment) would
        // otherwise leave every player stuck on the category screen forever
        // with zero feedback -- bounce back to the lobby instead so the
        // room recovers and someone can pick a different deck.
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
// column value, so they fall back to drawing from that mode's whole pool),
// groups peers by category+subcategory+faction for distractor sourcing, and
// keeps only questions whose group has enough peers to supply 3 distractors.
// Shuffled once per room so question order (and which questions get asked at
// all) varies game to game.
async function loadQuestionBank(room) {
    const dbGameMode = gameModeToDbValue(room.winningGameMode);
    const params = [dbGameMode];
    let filters = '';

    // TRIVI_YEAH's subcategory vocabulary (PERSON/PLACE/THING/EVENT/DATE) is
    // specific to it -- other modes define their own and aren't gated by it.
    if (dbGameMode === 'TRIVIA') {
        params.push(ELIGIBLE_SUBCATEGORIES);
        filters += ` AND subcategory = ANY($${params.length}::text[])`;
    }

    if (isRealCategoryKey(room.activeCategoryKey)) {
        params.push(room.activeCategoryKey);
        filters += ` AND category = $${params.length}`;
    }

    const result = await pool.query(
        `SELECT id, category, subcategory, faction, question_text, correct_answer, points, visual_asset
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
        const key = `${row.category}|${row.subcategory}|${row.faction}`;
        return distinctAnswerCounts[key] >= MIN_GROUP_SIZE_FOR_DISTRACTORS;
    });

    room.questionGroups = groups;
    const targetCount = Math.min(room.requestedQuestionCount || MAX_QUESTIONS_PER_GAME, eligibleQuestions.length);
    room.questionBank = shuffleArray(eligibleQuestions).slice(0, targetCount);
    room.currentQuestionIndex = -1;
    room.askedQuestionIds = new Set();
}

// Builds the shuffled 4-choice payload for one question row: distractors are
// pulled from sibling rows sharing subcategory+faction (excluding itself).
function buildQuestionPayload(room, row, categoryLabel) {
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

    const distractors = shuffleArray(distractorPool).slice(0, 3);
    const shuffledChoices = shuffleArray([row.correct_answer, ...distractors]);
    const letters = ['A', 'B', 'C', 'D'];
    const correctLetter = letters[shuffledChoices.indexOf(row.correct_answer)];

    return {
        questionId: row.id,
        categoryLabel,
        questionText: row.question_text,
        points: row.points,
        visualAsset: row.visual_asset,
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
        totalQuestions: room.questionBank.length
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
        : room.winningGameMode === 'ON_THE_SPECTRUM'
            ? `${room.onTheSpectrum ? room.onTheSpectrum.roundIndex + 1 : 0} rounds`
            : `${room.questionBank.length} questions`;
    console.log(`🏁 [Game Engine] Room ${roomCode} finished ${roundsPlayedDescription}. Broadcasting final leaderboard.`);

    broadcastToRoom(roomCode, {
        type: 'GAME_OVER',
        players: finalStandings
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
    // they cast as misdirection) never counts toward the tally or its
    // denominator. A real family game found the opposite treatment (counting
    // every active player, impostor included) meant a majority of the actual
    // accusers still wasn't enough to resolve the vote.
    const accusers = Object.values(room.players).filter(p => !p.left && p.name !== ed.impostorName);
    broadcastToRoom(roomCode, {
        type: 'EMPOSSDURR_ACCUSE_VOTE_START',
        votedCount: 0,
        totalNeeded: accusers.length,
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
        // Points for surviving this one vote, yes -- but NOT the badge.
        // The badge means "won the round" (a correct declare, or someone
        // else getting wrongly accused), and this queued via
        // pendingBadges used to survive a later flush regardless of how
        // THIS round actually ended: an impostor who out-lasted one
        // "continue" vote and then declared and guessed wrong still
        // walked away with the badge once flushEmpossDurrPendingScoring
        // ran unconditionally at the end of tallyEmpossDurrDeclareVerdict.
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
        if (impostorPlayer) { impostorPlayer.score += 3; awardEmpossDurrBadge(impostorPlayer, 'IMPOSTOR_WIN'); }
    } else {
        // Correctly-caught impostor gets 0 score for this outcome, but everyone
        // who voted for the real impostor earns the spyglass -- a persistent
        // badge for the rest of the game, same spirit as STREAK/SPEED3.
        Object.entries(ed.accuseVotes).forEach(([voterName, vote]) => {
            if (voterName === ed.impostorName || vote.mode !== 'accuse' || vote.target !== ed.impostorName) return;
            const voterPlayer = room.players[voterName];
            if (voterPlayer) awardEmpossDurrBadge(voterPlayer, 'SPYGLASS');
        });
    }
}

// Sets a persistent, boolean-style EmpossDurr award the instant it's earned.
// Unlike STREAK (which climbs tiers) or SPEED3 (which is live/contested),
// these three are one-shot: once true, they stay on the leaderboard row for
// the rest of the game (cleared only on the next game-reset, alongside every
// other stat in player.awards).
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

    // Bullseye: reward correctly reading a split room, not just being right
    // when everyone already agreed. Only counts votes actually cast (a
    // juror who never responded isn't "wrong," just absent from the split).
    const yesVoters = jurors.filter(j => ed.declareVotes[j.name] === 'yes');
    const noVoters = jurors.filter(j => ed.declareVotes[j.name] === 'no');
    if (yesVoters.length > 0 && noVoters.length > 0) {
        const correctSideVoters = correct ? yesVoters : noVoters;
        correctSideVoters.forEach(j => awardEmpossDurrBadge(j, 'BULLSEYE'));
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
}

// Resets score/roster state exactly like resetRoomToLobby, but short-circuits
// straight back into EmpossDurr's category-vote phase instead of the full
// 5-way mode election -- lets a group that's enjoying EmpossDurr jump back in
// without re-litigating the mode vote every time. Single-tap, same reasoning
// as the Play Again fix: no unanimous consensus required.
function resetRoomToEmpossDurrCategoryVote(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    clearEmpossDurrTimers(room);
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.categoryTimerInterval) { clearInterval(room.categoryTimerInterval); room.categoryTimerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }
    room.returnVotes = new Map();

    room.winningGameMode = 'EMPOSSDURR';
    room.gameState = 'CATEGORY_VOTE';
    room.empossdurr = null;
    room.answers = {};
    room.answerOrder = [];

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    const categories = getCategoriesForMode('EMPOSSDURR');
    room.categoryVotes = {};
    categories.forEach(c => { room.categoryVotes[c.key] = 0; });

    // Bumping this marks "a fresh game started" -- a player who left before
    // this reset and rejoins afterward gets caught by the epoch mismatch in
    // the join handler and reset then too, instead of carrying a stale score
    // into whatever mode this room plays next.
    room.gameEpoch = (room.gameEpoch || 0) + 1;
    activePlayers.forEach(player => {
        resetPlayerStatsForFreshGame(player);
        player.statsEpoch = room.gameEpoch;
    });

    console.log(`[Room Engine] Room ${roomCode} jumping straight back into EmpossDurr -- roster kept, stats cleared.`);

    // Without this the TV's Active Standings panel just keeps showing the
    // previous game's final scores until some unrelated event (a vote tally,
    // an answer) happens to redraw it -- same fix as resetRoomToLobby already has.
    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayers });

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_CATEGORY_VOTE',
        winner: 'EMPOSSDURR',
        categories
    });

    startCategoryCountdown(roomCode);
}

// Same shortcut reasoning as resetRoomToEmpossDurrCategoryVote, but On the
// Spectrum has no category-vote phase to land in first -- it's always drawn
// from one unified statement pool -- so this jumps straight into
// startOnTheSpectrumGame instead.
function resetRoomToOnTheSpectrumGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    clearOnTheSpectrumTimers(room);
    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.categoryTimerInterval) { clearInterval(room.categoryTimerInterval); room.categoryTimerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }
    room.returnVotes = new Map();

    room.winningGameMode = 'ON_THE_SPECTRUM';
    room.onTheSpectrum = null;

    const activePlayers = Object.values(room.players).filter(p => !p.left);
    room.gameEpoch = (room.gameEpoch || 0) + 1;
    activePlayers.forEach(player => {
        resetPlayerStatsForFreshGame(player);
        player.statsEpoch = room.gameEpoch;
    });

    console.log(`[Room Engine] Room ${roomCode} jumping straight back into On the Spectrum -- roster kept, stats cleared.`);

    broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: activePlayers });

    startOnTheSpectrumGame(roomCode).catch(error => {
        console.error(`❌ [On the Spectrum] Failed to restart Room ${roomCode}:`, error.message);
        broadcastContentUnavailable(roomCode, 'On the Spectrum');
        resetRoomToLobby(roomCode);
    });
}

// A single tap on "Play Again"/"Play EmpossDurr Again" used to reset the
// whole room instantly -- fine for not stranding a room on an AFK player,
// but real play surfaced the opposite problem: one fast player could yank
// everyone else off the leaderboard before they'd had a chance to look at
// it. This is the middle ground -- majority resolves immediately, and a
// backstop timer (started on the FIRST vote, not at game-over) still
// guarantees the room can't be stuck forever on one holdout.
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

    const neededForMajority = Math.floor(activePlayers.length / 2) + 1;
    if (room.returnVotes.size >= neededForMajority) {
        resolveReturnToLobbyVote(roomCode);
        return `Majority's in -- moving on!`;
    }

    if (!room.returnVoteTimeout) {
        room.returnVoteTimeout = setTimeout(() => resolveReturnToLobbyVote(roomCode), GAME_OVER_RETURN_VOTE_SECONDS * 1000);
    }
    return `Vote recorded (${room.returnVotes.size}/${activePlayers.length}) -- resolves once a majority agrees, or in ${GAME_OVER_RETURN_VOTE_SECONDS}s.`;
}

// Resolves whichever destination has more votes cast so far (ties favor the
// plain lobby, since it's always a valid choice regardless of what the last
// game was). Only ever called with at least one vote already cast -- either
// castReturnToLobbyVote just added one, or the backstop timer only starts
// once the first vote lands.
function resolveReturnToLobbyVote(roomCode) {
    const room = activeRooms[roomCode];
    if (!room || !room.returnVotes || room.returnVotes.size === 0) return;
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }

    const counts = { START: 0, PLAY_EMPOSSDURR_AGAIN: 0, PLAY_ON_THE_SPECTRUM_AGAIN: 0 };
    room.returnVotes.forEach(action => { if (action in counts) counts[action]++; });
    room.returnVotes = new Map();

    // Whichever destination has the STRICTLY most votes wins; a tie for the
    // top spot (between any combination, including "nobody voted a
    // shortcut at all") falls through to the plain lobby -- same "always a
    // valid choice" reasoning as before, just extended from two options to three.
    if (counts.PLAY_EMPOSSDURR_AGAIN > counts.START && counts.PLAY_EMPOSSDURR_AGAIN > counts.PLAY_ON_THE_SPECTRUM_AGAIN) {
        resetRoomToEmpossDurrCategoryVote(roomCode);
    } else if (counts.PLAY_ON_THE_SPECTRUM_AGAIN > counts.START && counts.PLAY_ON_THE_SPECTRUM_AGAIN > counts.PLAY_EMPOSSDURR_AGAIN) {
        resetRoomToOnTheSpectrumGame(roomCode);
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
    clearOnTheSpectrumTimers(room);
    clearEmpossDurrTimers(room);
    broadcastToRoom(roomCode, { type: 'ROOM_CLOSED' });
    delete activeRooms[roomCode];
    return true;
}

// Triggered by post-game consensus (every active player voting START while
// GAME_OVER) -- keeps the room code and roster intact (nobody rescans a QR
// code or retypes their name) but wipes every game-specific stat clean, per
// the explicit "no score/badges/streaks carry over" design: this starts a
// fresh game, not a running Game Night total. Mode votes are the one thing
// left untouched -- they're cast once at join time with no separate "change
// your vote" command, so clearing them would leave a player with no way to
// ever vote again.
function resetRoomToLobby(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.categoryTimerInterval) { clearInterval(room.categoryTimerInterval); room.categoryTimerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }
    if (room.returnVoteTimeout) { clearTimeout(room.returnVoteTimeout); room.returnVoteTimeout = null; }
    room.returnVotes = new Map();
    clearOnTheSpectrumTimers(room);
    clearEmpossDurrTimers(room);

    room.gameState = 'LOBBY';
    room.winningGameMode = null;
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

    room.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
    const activePlayers = Object.values(room.players).filter(p => !p.left);
    room.gameEpoch = (room.gameEpoch || 0) + 1;
    activePlayers.forEach(player => {
        resetPlayerStatsForFreshGame(player);
        player.statsEpoch = room.gameEpoch;
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
                // Every 3-in-a-row bumps a single badge's level (framework for future
                // award types -- see AWARD_DISPLAY in app.js) instead of stacking a new
                // icon -- the badge's own label/tier climbs bronze/silver/gold (3/6/9),
                // capped at level 3 (9). Checkpointing every 3 (not the whole game) means
                // breaking a streak only ever costs up to 2 questions of progress.
                if (player.currentStreak >= 3) {
                    player.currentStreak = 0;
                    player.awards = player.awards || {};
                    if ((player.awards.STREAK || 0) < 3) {
                        player.awards.STREAK = (player.awards.STREAK || 0) + 1;
                    }
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

            parts.shift(); // Evacuate code segment
            const votedModule = parts.pop();
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
            if (existingPlayer && existingPlayer.sessionToken !== presentedToken) {
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
                    awards: {},
                    statsEpoch: currentRoom.gameEpoch || 0, // matches the room's current game -- see the rejoin branch above
                    sessionToken, // proves later requests claiming this name are from the same device -- see play.html's auto-resume flow
                    left: false,
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
                currentRoom.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
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
                const neededForMajority = Math.floor(remainingActivePlayers.length / 2) + 1;
                if (currentRoom.returnVotes.size >= neededForMajority) {
                    resolveReturnToLobbyVote(associatedRoomCode);
                } else {
                    broadcastToRoom(associatedRoomCode, {
                        type: 'RETURN_VOTE_UPDATE',
                        votedCount: currentRoom.returnVotes.size,
                        totalNeeded: remainingActivePlayers.length
                    });
                }
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
            // The last active player just left -- nobody's around to look at
            // the TV anymore, so release the room entirely rather than let it
            // sit there dead until the server eventually garbage-collects it.
            closeRoom(associatedRoomCode);
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
            currentRoom.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
            activePlayers.forEach(p => { if (currentRoom.votes[p.vote] !== undefined) currentRoom.votes[p.vote]++; });

            broadcastToRoom(associatedRoomCode, { type: 'VOTE_UPDATE', votes: currentRoom.votes, totalVotes: activePlayers.length });

            return `Vote switched to ${modeChoice}, ${player.name}!`;
        }
    }

    // 3. DEMOCRACY WITH OOMPH: Clock skipping override calculation loops
    if (cleanText.toUpperCase() === 'START') {
        // Play Again used to fire the instant a single active player tapped
        // it -- that fixed an earlier problem (unanimous consensus let one
        // player who'd silently wandered off strand everyone else on Game
        // Over forever) but traded it for a new one real play surfaced: a
        // fast player could yank the whole table off the leaderboard before
        // anyone else had a chance to actually look at it. Majority vote
        // with a backstop timer (see castReturnToLobbyVote) is the middle
        // ground -- still can't be stranded, but one tap alone isn't enough.
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
                return "Consensus secured! Shifting to category selections.";
            } else if (currentRoom.gameState === 'CATEGORY_VOTE') {
                executeCategoryPhaseExpiration(associatedRoomCode);
                return "Consensus secured! Shifting to active trivia round.";
            }
        }
        return `Start intent recorded (${startRequestsCount}/${playersList.length} votes secured). Waiting for consensus.`;
    }

    // 3.5. "Play EmpossDurr Again" shortcut -- same majority-vote reasoning as
    // the Play Again fix above, but resolving to EmpossDurr's category-vote
    // phase directly instead of the full 5-way mode election. A room can have
    // votes cast for both this and plain START at once (some players want a
    // fresh election, others want to jump straight back into EmpossDurr) --
    // resolveReturnToLobbyVote breaks that tie by whichever has more votes.
    if (cleanText.toUpperCase() === 'PLAY_EMPOSSDURR_AGAIN' && currentRoom.gameState === 'GAME_OVER' && currentRoom.winningGameMode === 'EMPOSSDURR') {
        return castReturnToLobbyVote(associatedRoomCode, actingPlayerName, 'PLAY_EMPOSSDURR_AGAIN');
    }

    // 3.6. "Play On the Spectrum Again" shortcut -- same reasoning as
    // EmpossDurr's above, but resolving straight into a fresh round instead
    // of a category-vote phase (this mode never had one to begin with).
    if (cleanText.toUpperCase() === 'PLAY_ON_THE_SPECTRUM_AGAIN' && currentRoom.gameState === 'GAME_OVER' && currentRoom.winningGameMode === 'ON_THE_SPECTRUM') {
        return castReturnToLobbyVote(associatedRoomCode, actingPlayerName, 'PLAY_ON_THE_SPECTRUM_AGAIN');
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
            // camouflage the Abstain option exists for. The votedCount/
            // totalNeeded numbers themselves, though, only ever count the
            // real accusers -- the impostor isn't part of the jury, so
            // their tap (or a decoy accusation) never moves either number.
            const accusers = Object.values(currentRoom.players).filter(p => !p.left && p.name !== ed.impostorName);
            const accuserVotesCast = Object.keys(ed.accuseVotes).filter(n => n !== ed.impostorName).length;
            broadcastToRoom(associatedRoomCode, {
                type: 'EMPOSSDURR_VOTE_SUBMITTED',
                playerName: actingPlayerName,
                votedCount: accuserVotesCast,
                totalNeeded: accusers.length
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

