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

// Automated Lobby Countdown Clock Machinery
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
            room.gameState = 'ACTIVE_GAME';
            
            broadcastToRoom(roomCode, {
                type: 'LOBBY_TIMER_TICK',
                secondsLeft: "MATCH START!"
            });
            console.log(`[Lobby Clock] Room ${roomCode} election window closed.`);
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
    
    if (parts.length === 0 || !parts || !parts[0]) {
        return "⚠️ Error: Received an empty input payload.";
    }

    const firstWord = parts[0].toUpperCase();

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
                lobbySecondsLeft: 60,
                activeQuestionData: null,
                answers: {},
                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 }
            };
            console.log(`[Room Engine] Initialized Room Container: ${roomCode}`);
        }

        const currentRoom = activeRooms[roomCode];

        // Ensure we have enough segments to parse structural tokens safely
        if (parts.length >= 4) {
            // Remove the 4-digit room code off the absolute front
            parts.shift();
            
            // Pop the module preference and avatar emoji off the absolute end of the array
            const votedModule = parts.pop();
            const playerEmoji = parts.pop() || '👤';
            
            // Stitch whatever elements are left trapped in the middle back together as the Full Name string!
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

            console.log(`[Lobby Engine] Player "${playerNickname}" joined. Tallies:`, currentRoom.votes);

            // Synchronize visual stands lists and election progress tracks
            broadcastToRoom(roomCode, {
                type: 'LEADERBOARD_UPDATE',
                players: playersArray
            });

            broadcastToRoom(roomCode, {
                type: 'VOTE_UPDATE',
                votes: currentRoom.votes,
                totalVotes: playersArray.length
            });

            // Clock Reset Trigger: Refreshes to exactly 60 seconds on every entry!
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
