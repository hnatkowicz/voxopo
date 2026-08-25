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

// 1. NEW ENGINE ASSET: Automated Lobby Countdown Clock Machinery
function startLobbyCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = 60;
    
    // Clear any loose trailing background intervals to prevent race conditions
    if (room.lobbyTimerInterval) clearInterval(room.lobbyTimerInterval);

    room.lobbyTimerInterval = setInterval(() => {
        count--;
        if (count > 0) {
            broadcastToRoom(roomCode, {
                type: 'LOBBY_TIMER_TICK',
                secondsLeft: count + "s"
            });
        } else {
            clearInterval(room.lobbyTimerInterval);
            room.gameState = 'ACTIVE_GAME';
            
            broadcastToRoom(roomCode, {
                type: 'LOBBY_TIMER_TICK',
                secondsLeft: "MATCH START!"
            });
            
            console.log(`[Lobby Clock] Room ${roomCode} election window closed. Transitioning to Active Match state.`);
            // Future extension node: Automatically trigger the winning game module cartridge execution here!
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
    
    if (parts.length === 0 || !parts) {
        return "⚠️ Error: Received an empty input payload.";
    }

    const firstWord = parts.toUpperCase();

    // 2. Handle incoming room check-in / player registration fields
    if (!isNaN(firstWord) && firstWord.length === 4) {
        const roomCode = firstWord;
        
        if (!activeRooms[roomCode]) {
            activeRooms[roomCode] = {
                gameState: 'LOBBY',
                players: {},
                screens: [],
                timerInterval: null,
                lobbyTimerInterval: null, // Track lobby loop separate from question intervals
                activeQuestionData: null,
                answers: {},
                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 }
            };
            console.log(`[Room Engine] Initialized Room Container: ${roomCode}`);
        }

        const currentRoom = activeRooms[roomCode];

        if (parts.length >= 4) {
            const playerNickname = parts;
            const playerEmoji = parts || '👤';
            const votedModule = parts;

            if (currentRoom.players[playerNickname]) {
                return `⚠️ Name "${playerNickname}" is already taken in Room ${roomCode}! Please try a different nickname.`;
            }

            // Lock the player profile securely into cloud memory state arrays
            currentRoom.players[playerNickname] = {
                name: playerNickname,
                emoji: playerEmoji,
                vote: votedModule,
                score: 0,
                joinedAt: new Date()
            };

            // Recalculate module election tallies live
            currentRoom.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
            const playersArray = Object.values(currentRoom.players);
            
            playersArray.forEach(p => {
                if (currentRoom.votes[p.vote] !== undefined) {
                    currentRoom.votes[p.vote]++;
                }
            });

            console.log(`[Lobby Engine] Player checked in. Room ${roomCode} vote tallies:`, currentRoom.votes);

            // Synchronize visual stands lists and election progress track fills immediately
            broadcastToRoom(roomCode, {
                type: 'LEADERBOARD_UPDATE',
                players: playersArray
            });

            broadcastToRoom(roomCode, {
                type: 'VOTE_UPDATE',
                votes: currentRoom.votes,
                totalVotes: playersArray.length
            });

            // 3. CORE TRIGGER TRIGGER CHECK: Start the 60-second countdown loop ONLY when the very first player arrives
            if (playersArray.length === 1) {
                console.log(`[Lobby Engine] First player detected inside Room ${roomCode}. Initializing clock machine.`);
                startLobbyCountdown(roomCode);
            }

            return `Welcome to RandoMania, ${playerNickname}! Your registration and vote have been logged live.`;
        }
    }

    // 4. Global cross-reference search to locate room container by Player Name tracking key
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

    // 5. Process game host operation administration commands
    if (cleanText.toUpperCase() === 'START') {
        executeDatabaseQuery(associatedRoomCode);
        return "🚀 Initializing selected game module framework... Look up at the TV screen canvas!";
    }

    // 6. Handle default incoming trivia response submissions based on active rules
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
