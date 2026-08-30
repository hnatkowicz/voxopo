import pool from '../config/database.js';

export const activeRooms = {};

// PLACE/THING/DATE pools are too thin right now to supply 3 distractors each,
// so the loop only draws from subcategories with enough peers per faction.
const ELIGIBLE_SUBCATEGORIES = ['PERSON', 'EVENT'];
const MIN_GROUP_SIZE_FOR_DISTRACTORS = 4; // correct answer + 3 distractors
const MAX_QUESTIONS_PER_GAME = 30;
const MIN_QUESTIONS_PER_GAME = 15;
const REVEAL_DURATION_MS = 5000;
const GAME_ROUND_DURATION_SECONDS = 30;
const FAST_FORWARD_SECONDS = 3; // once everyone's answered, snap the clock down to this for a beat of suspense
const MAX_NAME_LENGTH = 30; // matches the phone's input maxlength

// Clamps the host's requested question count (from the lobby picker) into
// [MIN_QUESTIONS_PER_GAME, MAX_QUESTIONS_PER_GAME]. Falls back to the max for
// anything missing/non-numeric, e.g. the defensive room-init paths that don't
// go through the picker at all.
export function resolveRequestedQuestionCount(rawValue) {
    const parsed = parseInt(rawValue, 10);
    if (Number.isNaN(parsed)) return MAX_QUESTIONS_PER_GAME;
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

// Shared label lookup so lobby, category, and reconnect/catch-up broadcasts
// never fall out of sync with each other.
export function getCategoryLabels(winningGameMode) {
    let cat1 = 'WWII History', cat2 = 'Primary School', cat3 = 'Pop Culture';
    if (winningGameMode === 'COUNTRY_MONKEY') {
        cat1 = 'Global Mix'; cat2 = 'Europe & Americas'; cat3 = 'Asia & Africa';
    } else if (winningGameMode === 'EMPOSSDURR') {
        cat1 = 'Standard Circle'; cat2 = 'Traitor Pack'; cat3 = 'Chaos Mode';
    } else if (winningGameMode === 'FLAG_ME_DOWN') {
        cat1 = 'Modern Nations'; cat2 = 'Historical Standards'; cat3 = 'Bizarre Banners';
    } else if (winningGameMode === 'ON_THE_SPECTRUM') {
        cat1 = 'Numeric Scales'; cat2 = 'Extreme Measures'; cat3 = 'Chrono Orders';
    }
    return { cat1, cat2, cat3 };
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
    room.gameState = 'CATEGORY_VOTE';
    room.winningGameMode = winningModule;

    const { cat1, cat2, cat3 } = getCategoryLabels(winningModule);

    console.log(`[Room Engine] Lobby phase closed for Room ${roomCode}. Winner: ${winningModule}`);

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_CATEGORY_VOTE',
        winner: winningModule,
        label1: cat1,
        label2: cat2,
        label3: cat3
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

    const { cat1, cat2, cat3 } = getCategoryLabels(room.winningGameMode);
    const labelMap = { CAT_1: cat1, CAT_2: cat2, CAT_3: cat3 };
    room.activeDeckName = labelMap[winningCategoryKey] || 'General Deck';

    console.log(`[Room Engine] Category selection finalized for Room ${roomCode}. Loaded: ${room.activeDeckName}`);

    try {
        await loadQuestionBank(room);
    } catch (error) {
        console.error(`❌ [Question Bank] Failed to load questions for Room ${roomCode}:`, error.message);
        return;
    }

    if (room.questionBank.length === 0) {
        console.error(`❌ [Question Bank] No eligible questions found for Room ${roomCode}.`);
        return;
    }

    startNextQuestion(roomCode);
}

// Pulls every TRIVIA row from an eligible subcategory, groups peers by
// subcategory+faction for distractor sourcing, and keeps only questions
// whose group has enough peers to supply 3 distractors. Shuffled once per
// room so question order (and which questions get asked at all) varies game to game.
async function loadQuestionBank(room) {
    const result = await pool.query(
        `SELECT id, subcategory, faction, question_text, correct_answer, points, visual_asset
         FROM questions
         WHERE game_mode = 'TRIVIA' AND subcategory = ANY($1::text[])`,
        [ELIGIBLE_SUBCATEGORIES]
    );

    const groups = {};
    result.rows.forEach(row => {
        const key = `${row.subcategory}|${row.faction}`;
        if (!groups[key]) groups[key] = [];
        groups[key].push(row);
    });

    const eligibleQuestions = result.rows.filter(row => {
        const key = `${row.subcategory}|${row.faction}`;
        return groups[key].length >= MIN_GROUP_SIZE_FOR_DISTRACTORS;
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
    const groupKey = `${row.subcategory}|${row.faction}`;
    const distractorPool = (room.questionGroups[groupKey] || [])
        .filter(peer => peer.id !== row.id)
        .map(peer => peer.correct_answer);

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

// Ranks by score, then correct-answer count, then join time -- the last one is
// always unique, so this never leaves two players tied for the same medal.
function compareByRank(a, b) {
    return b.score - a.score
        || (b.correctAnswers || 0) - (a.correctAnswers || 0)
        || new Date(a.joinedAt) - new Date(b.joinedAt);
}

function endGame(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.timerInterval) { clearInterval(room.timerInterval); room.timerInterval = null; }
    if (room.revealTimeout) { clearTimeout(room.revealTimeout); room.revealTimeout = null; }

    room.gameState = 'GAME_OVER';
    const finalStandings = Object.values(room.players).sort(compareByRank);

    console.log(`🏁 [Game Engine] Room ${roomCode} finished ${room.questionBank.length} questions. Broadcasting final leaderboard.`);

    broadcastToRoom(roomCode, {
        type: 'GAME_OVER',
        players: finalStandings
    });
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
        Object.entries(room.answers).forEach(([playerName, submittedLetter]) => {
            if (submittedLetter === correctLetter) {
                const player = room.players[playerName];
                if (player) {
                    player.score += points;
                    player.correctAnswers = (player.correctAnswers || 0) + 1; // tiebreak for the final leaderboard
                }
            }
        });
    }

    broadcastToRoom(roomCode, {
        type: 'REVEAL_CORRECT_ANSWER',
        correctLetter
    });
    broadcastToRoom(roomCode, {
        type: 'LEADERBOARD_UPDATE',
        players: Object.values(room.players)
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
export function handleIncomingMessage(fromPhone, bodyText, explicitRoomCode) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts) return "⚠️ Error: Empty input payload.";
    const firstWord = parts[0].toUpperCase();

    // 1. Handle Room Onboarding / Entry Checkout Transactions
    if (!isNaN(firstWord) && firstWord.length === 4) {
        const roomCode = firstWord;
        
        if (!activeRooms[roomCode]) {
            activeRooms[roomCode] = {
                gameState: 'LOBBY', players: {}, screens: [], timerInterval: null,
                lobbyTimerInterval: null, categoryTimerInterval: null, revealTimeout: null,
                lobbySecondsLeft: 60, categorySecondsLeft: 30, gameSecondsLeft: 25, winningGameMode: null,
                activeQuestionData: null, currentQuestionData: null, activeDeckName: null, answers: {},
                questionBank: [], questionGroups: {}, currentQuestionIndex: -1, askedQuestionIds: new Set(),
                requestedQuestionCount: MAX_QUESTIONS_PER_GAME,
                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 },
                categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 }
            };
        }

        const currentRoom = activeRooms[roomCode];
        if (currentRoom) currentRoom.lastActivity = Date.now();

        // Late joins are welcome any time before the match wraps up -- their
        // phone's status poller will catch them up to whatever phase is live.
        if (currentRoom.gameState === 'GAME_OVER') return "⚠️ This match has already ended.";

        if (parts.length >= 4) {
            parts.shift(); // Evacuate code segment
            const votedModule = parts.pop();
            const playerEmoji = parts.pop() || '👤';
            const playerNickname = parts.join(' ').trim();

            if (!playerNickname) return "⚠️ Setup Error: Blank nickname field.";
            // Matches the phone's input maxlength -- rejected rather than truncated so the
            // stored name (used as the player's key everywhere) is never silently altered.
            // Display-side truncation (ellipsis) handles anything still too long to fit visually.
            if (playerNickname.length > MAX_NAME_LENGTH) return `⚠️ Nickname too long (max ${MAX_NAME_LENGTH} characters).`;
            if (currentRoom.players[playerNickname]) return `⚠️ Name taken inside Room ${roomCode}.`;

            currentRoom.players[playerNickname] = {
                phoneHandle: fromPhone,
                name: playerNickname, 
                emoji: playerEmoji, 
                vote: votedModule, 
                categoryVote: null, 
                requestedStart: false,
                score: 0,
                correctAnswers: 0,
                joinedAt: new Date()
            };

            const playersArray = Object.values(currentRoom.players);
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

                return `Welcome to RandoMania, ${playerNickname}! Entry logged live.`;
            }

            return `Welcome to RandoMania, ${playerNickname}! Jumping into the action already in progress.`;
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

    // 3. DEMOCRACY WITH OOMPH: Clock skipping override calculation loops
    if (cleanText.toUpperCase() === 'START') {
        player.requestedStart = true;
        
        const playersList = Object.values(currentRoom.players);
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

    // 4. Handle Sub-Category Voting Selection Track Overrides (Phase 2)
    if (currentRoom.gameState === 'CATEGORY_VOTE') {
        const choice = cleanText.toUpperCase();
        if (['CAT_1', 'CAT_2', 'CAT_3'].includes(choice)) {
            player.categoryVote = choice;

            currentRoom.categoryVotes = { CAT_1: 0, CAT_2: 0, CAT_3: 0 };
            const activePlayers = Object.values(currentRoom.players);
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
            currentRoom.answers[actingPlayerName] = answerChoice;
            
            const totalPlayersCount = Object.keys(currentRoom.players).length;
            const totalAnswersLogged = Object.keys(currentRoom.answers).length;

            console.log(`[Match Engine] Submission received from ${player.name}: "${answerChoice}". Total logged: ${totalAnswersLogged}/${totalPlayersCount}`);

            if (totalAnswersLogged === totalPlayersCount) {
                console.log(`🚀 [Match Engine] Final submission secured! Fast-forwarding clock to ${FAST_FORWARD_SECONDS}s.`);
                fastForwardToReveal(associatedRoomCode);
            }
            return `Got it, ${player.name}! Option ${answerChoice} logged.`;
        }
    }

    return `Sorry, ${player.name}, response submission window closed.`;
}

