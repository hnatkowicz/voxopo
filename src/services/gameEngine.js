import pkg from 'pg';
const { Pool } = pkg;

// Initialize connection routing to your Neon PostgreSQL Cloud infrastructure
const pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false }
});

// Primary global storage bucket to track rooms, players, scores, and timer state windows in memory
export const activeRooms = {};

// Helper broadcast agent to shoot secure WebSocket text payloads straight to client browsers
function broadcastToRoom(roomCode, payload) {
    const room = activeRooms[roomCode];
    if (room && room.screens) {
        room.screens.forEach(socket => {
            if (socket.readyState === 1) { // 1 explicitly means OPEN state connection
                socket.send(JSON.stringify(payload));
            }
        });
    }
}

// Automated multi-room clock countdown machinery tracker
function startQuestionCountdown(roomCode, questionData) {
    const room = activeRooms[roomCode];
    if (!room) return;

    // Cache the active database row variables safely inside the room object frame
    room.gameState = 'QUESTION';
    room.activeQuestionData = questionData;
    room.answers = {}; // Reset text submissions table slice for this round

    // Clear any loose trailing ghost intervals running in background tasks
    if (room.timerInterval) clearInterval(room.timerInterval);

    let count = 30;
    
    // Shoot the baseline NEW_QUESTION event containing vector graphic data to client browsers
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
            broadcastToRoom(roomCode, { type: 'TIMER_TICK', secondsLeft: count });
        } else {
            clearInterval(room.timerInterval);
            room.gameState = 'LOBBY';
            broadcastToRoom(roomCode, { type: 'TIMER_TICK', secondsLeft: "TIME'S UP!" });
            console.log(`[Timer Clock Engine] Room ${roomCode} turn evaluation window closed.`);
        }
    }, 1000);
}

// The core intake processor called by your /api/message route endpoint
export function handleIncomingMessage(fromPhone, bodyText) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts[0]) {
        return "⚠️ Error: Received an empty payload input text body.";
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
                activeQuestionData: null,
                answers: {}
            };
            console.log(`[Room Infrastructure Engine] Initialized Room Container Slot: ${roomCode}`);
        }

        const currentRoom = activeRooms[roomCode];

        if (parts.length >= 2) {
            const playerNickname = parts[1];
            const playerEmoji = parts[2] || '👤';

            currentRoom.players[fromPhone] = {
                name: playerNickname,
                emoji: playerEmoji,
                score: 0,
                joinedAt: new Date()
            };

            console.log(`[Onboarding System] Player "${playerNickname} ${playerEmoji}" checked into Room ${roomCode}`);

            broadcastToRoom(roomCode, {
                type: 'LEADERBOARD_UPDATE',
                players: Object.values(currentRoom.players)
            });

            return `Welcome to Voxopo, ${playerNickname}! Check the TV screen scoreboard—your row is live.`;
        }
    }

    // 2. Global cross-reference search to locate which room container this tracking phone ID belongs to
    let associatedRoomCode = null;
    for (const code in activeRooms) {
        if (activeRooms[code].players[fromPhone]) {
            associatedRoomCode = code;
            break;
        }
    }

    if (!associatedRoomCode) {
        return "⚠️ Setup Warning: Register your device into a room session first! Type your 4-digit room code followed by your nickname.";
    }

    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[fromPhone];

    // 3. Process game host operation administration commands
    if (cleanText.toUpperCase() === 'START') {
        // Run database operation inside an async task execution block to prevent syntax short-circuits
        executeDatabaseQuery(associatedRoomCode);
        return "🚀 Querying Neon database for game text data fields... Look up at the TV screen canvas!";
    }

    // 4. Handle default incoming trivia response submissions based on turn active state window rules
    if (currentRoom.gameState !== 'QUESTION') {
        return `Sorry, ${player.name}, the response submission window is closed right now! Wait for the next round clock to boot up.`;
    }

    return `Got it, ${player.name}! Input transaction logged securely. Stand by for scoring evaluation!`;
}

// Separate helper utility function to encapsulate asynchronous database calls perfectly
async function executeDatabaseQuery(roomCode) {
    try {
        const result = await pool.query('SELECT * FROM questions WHERE question_number = 2;');
        if (result.rows.length > 0) {
            startQuestionCountdown(roomCode, result.rows[0]);
        } else {
            console.warn("❌ Database response warning: Question #2 data target not found.");
        }
    } catch (err) {
        console.error('❌ [Neon SQL Engine Crash]:', err.message);
    }
}
