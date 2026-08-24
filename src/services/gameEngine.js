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

// The core core intake processor called by your /api/message route endpoint
export function handleIncomingMessage(fromPhone, bodyText) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
        const targetRoomCode = parts[0];
    const playerNickname = parts[1];
    
    // Dynamically grab the third piece if an emoji exists
    const playerEmoji = parts[2] || '👤';

    // 1. Establish room structure on the fly if it doesn't exist in state properties
    // Checks if the user's first input parameter reads like a standard 4-digit numeric room registration code
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

        // Process space-separated onboarding credentials string
        // Web UI Form Layout text construction layout: "1234 Nickname Emoji"
        if (parts.length >= 2) {
            const playerNickname = parts[1];
            const playerEmoji = parts[2] || '👤'; // Default to standard profile avatar asset if empty

            // Inject account credentials directly into our room state dictionary mapping block
            currentRoom.players[fromPhone] = {
                name: playerNickname,
                emoji: playerEmoji,
                score: 0,
                joinedAt: new Date()
            };

            console.log(`[Onboarding System] Player "${playerNickname} ${playerEmoji}" checked into Room ${roomCode}`);

            // Direct real-time layout broadcast push up to synchronize our split-screen TV table!
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
        // Query target Question #2 row elements straight from your Neon database pool
        return pool.query('SELECT * FROM questions WHERE question_number = 2;')
            .then((result) => {
                if (result.rows.length > 0) {
                    startQuestionCountdown(associatedRoomCode, result.rows[0]);
                    return "🚀 Trivia Question #2 broadcasted live to TV layout grid canvas!";
                } else {
                    return "❌ Database response warning: Question #2 row object data target not found inside table schema.";
                }
            })
            .catch((err) => {
                console.error('❌ [Neon SQL Engine Crash]:', err.message);
                return "⚠️ System error: Failed to pull question content from Cloud Database infrastructure layers.";
            });
    }

    // 4. Handle default incoming trivia response submissions based on turn active state window rules
    if (currentRoom.gameState !== 'QUESTION') {
        return `Sorry, ${player.name}, the response submission window is closed right now! Wait for the next round clock to boot up.`;
    }

    // Record answer submission and notify player state has saved
    return `Got it, ${player.name}! Input transaction logged securely. Stand by for scoring evaluation!`;
}
