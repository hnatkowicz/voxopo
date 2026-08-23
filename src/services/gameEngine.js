// src/services/gameEngine.js
import { broadcastToRoom } from '../socket/connection.js';
import pool from '../config/database.js';

// This global object acts as our in-memory data bucket for all active rooms
const activeRooms = {};

/**
 * Creates a brand new 4-digit room instance in memory
 * @param {string} roomCode - The unique 4-digit room code
 */
export function initializeRoom(roomCode) {
    if (!activeRooms[roomCode]) {
        activeRooms[roomCode] = {
            players: {},       // Key: Phone number, Value: Player object
            gameState: 'LOBBY', // LOBBY, QUESTION, LEADERBOARD, PAUSED
            currentQuestion: 0,
            answers: {},        // Track responses for the active question
            timerId: null       // Reference to clear the running interval clock
        };
        console.log(`[Engine] Room ${roomCode} successfully initialized.`);
    }
    return activeRooms[roomCode];
}

/**
 * Kicks off a hands-free 30-second automated countdown loop for a specific room
 * @param {string} roomCode - The target 4-digit room ID
 * @param {object} questionData - The raw row question block from PostgreSQL
 */
function startQuestionCountdown(roomCode, questionData) {
    const room = activeRooms[roomCode];
    if (!room) return;

    // Set the state parameters
    room.gameState = 'QUESTION';
    room.currentQuestion = questionData.question_number;
    room.answers = {}; // Wipe any previous question answer logs clean

    // Broadcast the initial question data and visual vector assets to the TV screen via WebSockets
    broadcastToRoom(roomCode, {
        type: 'NEW_QUESTION',
        number: questionData.question_number,
        text: questionData.question_text,
        gameMode: questionData.game_mode,
        visualAsset: questionData.visual_asset // Pushes your raw inline vector SVG code directly to the TV!
    });

    let secondsLeft = 30;

    // Clear any loose background ticking clocks if they accidentally exist
    if (room.timerId) clearInterval(room.timerId);

    // Initialize an automated 1-second ticking loop on the server
    room.timerId = setInterval(() => {
        secondsLeft--;

        // Push the new countdown tick out to the venue display screen live
        broadcastToRoom(roomCode, {
            type: 'TIMER_TICK',
            secondsLeft: secondsLeft
        });

        // When the timer ticks down to 0, close the submission window automatically
        if (secondsLeft <= 0) {
            clearInterval(room.timerId);
            room.timerId = null;
            room.gameState = 'LEADERBOARD';

            console.log(`[Engine] Room ${roomCode} Question #${room.currentQuestion} submission window closed.`);
            
            // Broadcast a transition signal to show the scoring update on the venue monitor
            broadcastToRoom(roomCode, {
                type: 'TIMER_TICK',
                secondsLeft: 'TIME\'S UP!'
            });
        }
    }, 1000);
}

/**
 * Processes an incoming player's SMS message payload
 * @param {string} fromPhone - The sender's unique phone identification number
 * @param {string} textBody - The message body content string
 */
export function handleIncomingMessage(fromPhone, textBody) {
    const cleanText = textBody.trim();

    // 1. Check if the player is text-joining a room using a 4-digit code
    // Format: "1234 Randy"
    const joinMatch = cleanText.match(/^(\d{4})\s+(.+)$/);

    if (joinMatch) {
        const roomCode = joinMatch[1];
        const playerName = joinMatch[2].trim();

        const room = initializeRoom(roomCode);

        // Map player phone identifier to their username bucket
        room.players[fromPhone] = {
            name: playerName,
            joinedAt: Date.now()
        };

        return `Welcome to Voxopo, ${playerName}! You are checked into Room ${roomCode}. Stand by for the game to begin!`;
    }

    // 2. Identify if the sender is currently checked into a live room instance
    const associatedRoomCode = Object.keys(activeRooms).find(code => 
        activeRooms[code].players[fromPhone]
    );

    if (!associatedRoomCode) {
        return "Welcome to Voxopo! To join a live game, please text your 4-digit room code followed by your name (e.g., 1234 Randy).";
    }

    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[fromPhone];

    // [HOST COMMAND] Handle "START" trigger to fetch the custom SVG Flag row from Neon and test our asset engine
    if (cleanText.toUpperCase() === 'START') {
        // Querying question_number = 2 to explicitly test your vector asset rendering!
        pool.query('SELECT * FROM questions WHERE question_number = 2;').then((result) => {
            if (result.rows.length > 0) {
                // Pass your cloud data object row directly into our automated countdown function
                startQuestionCountdown(associatedRoomCode, result.rows[0]);
            }
        }).catch(err => console.error('[Engine Database Error]', err.message));

        return `[Host Action] Triggered Question #2 visual loop for Room ${associatedRoomCode}! Watch the TV monitor!`;
    }

    // 3. Handle democratic pause activation request
    if (cleanText.toUpperCase() === 'PAUSE') {
        if (currentRoom.timerId) {
            clearInterval(currentRoom.timerId); // Freeze the master background ticker loop process
            currentRoom.timerId = null;
        }
        currentRoom.gameState = 'PAUSED';
        broadcastToRoom(associatedRoomCode, { type: 'GAME_PAUSED' });
        return `[Vote Confirmed] ${player.name} activated the Democratic Pause Button. The countdown timer has frozen.`;
    }

    // 4. Handle incoming trivia answer inputs based on active state window rules
    if (currentRoom.gameState !== 'QUESTION') {
        return `Sorry, ${player.name}, the answer window is closed right now! Wait for the next question to appear on screen.`;
    }

    // Save their text submission under their number bucket for server-side score updates later
    currentRoom.answers[fromPhone] = cleanText;
    return `Got it, ${player.name}! Answer recorded for Question #${currentRoom.currentQuestion}: "${cleanText}"`;
}
