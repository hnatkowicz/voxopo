import pkg from 'pg';
const { Pool } = pkg;

const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
});

export const activeRooms = {};

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

// Automated Lobby Countdown Clock Machinery (Upgraded with Tie-Breaker & Phase 2 Transition Logic)
function startLobbyCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.lobbySecondsLeft = 60;
    
    if (room.lobbyTimerInterval) return;

    room.lobbyTimerInterval = setInterval(() => {
        room.lobbySecondsLeft--;
        
        if (room.lobbySecondsLeft > 0) {
            broadcastToRoom(roomCode, {
                type: 'LOBBY_TIMER_TICK',
                secondsLeft: room.lobbySecondsLeft + "s"
            });
        } else {
            clearInterval(room.lobbyTimerInterval);
            room.lobbyTimerInterval = null;
            
            // 1. CHOOSE THE WINNING MODULE WITH CHRONOLOGICAL TIE-BREAKER
            const winningModule = calculateElectionWinner(room);
            room.gameState = 'CATEGORY_VOTE';
            room.winningGameMode = winningModule;
            
            console.log(`[Lobby Clock] Election closed. Winning module: ${winningModule}. Shifting to Category Vote.`);

            // 2. BROADCAST PHASE 2 MORPH COMMAND TO TV SCREEN
            broadcastToRoom(roomCode, {
                type: 'TRANSITION_TO_CATEGORY_VOTE',
                winner: winningModule,
                secondsLeft: "30s"
            });

            // 3. START THE 30-SECOND MICRO CATEGORY TIMER LOOP
            startCategoryCountdown(roomCode);
        }
    }, 1000);
}

// Helper math block to count votes and break stalemates by giving more weight to earlier entries
function calculateElectionWinner(room) {
    const votes = room.votes;
    let maxVotes = -1;
    let candidates = [];

    // Find the highest vote score
    for (const mode in votes) {
        if (votes[mode] > maxVotes) {
            maxVotes = votes[mode];
            candidates = [mode];
        } else if (votes[mode] === maxVotes) {
            candidates.push(mode);
        }
    }

    // If there's a single clear winner, return it immediately
    if (candidates.length === 1) return candidates[0];

    // TIE-BREAKER: Scan player profiles chronologically to find which tied module had the earliest logged entry
    let earliestTime = new Date('2030-01-01'); // Safe future baseline date
    let tieBreakingWinner = candidates[0]; // Fallback fallback

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

// Automated Micro Category 30-second Timer Loop
function startCategoryCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = 30;
    room.categorySecondsLeft = count;

    room.categoryTimerInterval = setInterval(() => {
        count--;
        if (count > 0) {
            broadcastToRoom(roomCode, {
                type: 'CATEGORY_TIMER_TICK',
                secondsLeft: count + "s"
            });
        } else {
            clearInterval(room.categoryTimerInterval);
            room.categoryTimerInterval = null;
            room.gameState = 'ACTIVE_GAME';
            
            // Future extension node: Tally category sub-votes and fetch exact database questions here!
            broadcastToRoom(roomCode, {
                type: 'CATEGORY_TIMER_TICK',
                secondsLeft: "MATCH START!"
            });
            console.log(`[Category Clock] Room ${roomCode} micro category voting closed.`);
        }
    }, 1000);
}

function startQuestionCountdown(roomCode, questionData) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.gameState = 'QUESTION';
    room.activeQuestionData = questionData;
    room.answers = {};

    if (room.timerInterval) clearInterval(room.timerInterval);

    let count = 30;
    
    broadcastToRoom(roomCode, {
        type: 'NEW_QUESTION',
        number: questionData.question_number,
        text: questionData.question_text,
        visualAsset: questionData.visual_asset,
        gameMode: questionData.game_mode
    });

    room.timerInterval = setInterval(() => {
        count--;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'TIMER_TICK', secondsLeft: count + "s" });
        } else {
            clearInterval(room.timerInterval);
            room.gameState = 'LOBBY';
            broadcastToRoom(roomCode, { type: 'TIMER_TICK', secondsLeft: "TIME'S UP!" });
        }
    }, 1000);
}

export function handleIncomingMessage(fromPhone, bodyText) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts || !parts) {
        return "⚠️ Error: Received an empty input payload.";
    }

    const firstWord = parts.toUpperCase();

    // 1. Handle incoming room check-in / player registration fields
    if (!isNaN(firstWord) && firstWord.length === 4) {
        const roomCode = firstWord;
        
        if (!activeRooms[roomCode]) {
            activeRooms[roomCode] = {
                gameState: 'LOBBY',
                players: {},
                screens: [],
                timerInterval: null,
                lobbyTimerInterval: null,
                categoryTimerInterval: null,
                lobbySecondsLeft: 60,
                categorySecondsLeft: 30,
                winningGameMode: null,
                activeQuestionData: null,
                answers: {},
                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 },
                categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 } // Sub-vote counters container initialization
            };
            console.log(`[Room Engine] Initialized Room Container: ${roomCode}`);
        }

        const currentRoom = activeRooms[roomCode];

        // LATE REGISTRATION SAFEGUARD SHIELD: If lobby clock ended, lock the door out!
        if (currentRoom.gameState !== 'LOBBY') {
            return "⚠️ Registration closed! A match is currently initializing. Please stand by for Round 2.";
        }

        if (parts.length >= 4) {
            parts.shift();
            const votedModule = parts.pop();
            const playerEmoji = parts.pop() || '👤';
            const playerNickname = parts.join(' ').trim();

            if (!playerNickname) {
                return "⚠️ Setup Error: Nickname field cannot be blank!";
            }

            if (currentRoom.players[playerNickname]) {
                return `⚠️ Name "${playerNickname}" is already taken in Room ${roomCode}! Please try a different nickname.`;
            }

            currentRoom.players[playerNickname] = {
                name: playerNickname,
                emoji: playerEmoji,
                vote: votedModule,
                categoryVote: null, // Prep placeholder variable for micro phase selection
                score: 0,
                joinedAt: new Date() // The precise millisecond clock timestamp anchor!
            };

            currentRoom.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
            const playersArray = Object.values(currentRoom.players);
            
            playersArray.forEach(p => {
                if (currentRoom.votes[p.vote] !== undefined) {
                    currentRoom.votes[p.vote]++;
                }
            });

            console.log(`[Lobby Engine] Player "${playerNickname}" joined. Tallies:`, currentRoom.votes);

            broadcastToRoom(roomCode, {
                type: 'LEADERBOARD_UPDATE',
                players: playersArray
            });

            broadcastToRoom(roomCode, {
                type: 'VOTE_UPDATE',
                votes: currentRoom.votes,
                totalVotes: playersArray.length
            });

            startLobbyCountdown(roomCode);

            broadcastToRoom(roomCode, {
                type: 'LOBBY_TIMER_TICK',
                secondsLeft: "60s"
            });

            return `Welcome to RandoMania, ${playerNickname}! Your registration and vote have been logged live.`;
        }
    }

    // 2. Global cross-reference search to locate room container by Player Name tracking key
    let associatedRoomCode = null;
    for (const code in activeRooms) {
        if (activeRooms[code].players[fromPhone]) {
            associatedRoomCode = code;
            break;
        }
    }

    if (!associatedRoomCode) {
        return "⚠️ Setup Warning: Log into a live room session first from the main lobby gate card screen.";
    }

    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[fromPhone];

    // NEW: Handle Micro Category sub-voting inputs during CATEGORY_VOTE phase windows
    if (currentRoom.gameState === 'CATEGORY_VOTE') {
        const choice = cleanText.toUpperCase();
        if (['CAT_1', 'CAT_2', 'CAT_3'].includes(choice)) {
            player.categoryVote = choice;

            // Recalculate micro vote progress tracks
            currentRoom.categoryVotes = { CAT_1: 0, CAT_2: 0, CAT_3: 0 };
            const activePlayers = Object.values(currentRoom.players);
            let totalSubVotes = 0;

            activePlayers.forEach(p => {
                if (p.categoryVote) {
                    currentRoom.categoryVotes[p.categoryVote]++;
                    totalSubVotes++;
                }
            });

            // Stream micro percentages instantly up the web socket line to repaint bars
            broadcastToRoom(associatedRoomCode, {
                type: 'CATEGORY_VOTE_UPDATE',
                votes: currentRoom.categoryVotes,
                totalVotes: totalSubVotes
            });

            return `Got it, ${player.name}! Your sub-category vote for ${choice} has been counted.`;
        }
    }

    // 3. Process game host operation administration commands
    if (cleanText.toUpperCase() === 'START') {
        executeDatabaseQuery(associatedRoomCode);
        return "🚀 Initializing selected game module framework... Look up at the TV screen canvas!";
    }

    // 4. Handle default incoming trivia response submissions based on active rules
    if (currentRoom.gameState !== 'QUESTION') {
        return `Sorry, ${player.name}, the response submission window is closed right now!`;
    }

    return `Got it, ${player.name}! Input logged securely. Stand by for round evaluation.`;
}

async function executeDatabaseQuery(roomCode) {
    try {
        const result = await pool.query('SELECT * FROM questions WHERE question_number = 1;');
        if (result.rows.length > 0) {
            startQuestionCountdown(roomCode, result.rows);
        } else {
            console.warn("❌ Database response warning: Question #1 data target not found.");
        }
    } catch (err) {
        console.error('❌ [Neon SQL Engine Crash]:', err.message);
    }
}
