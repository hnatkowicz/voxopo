import express from 'express';
import dotenv from 'dotenv';
import path from 'path';
import { WebSocketServer } from 'ws';
import pool from './config/database.js';
import { handleIncomingMessage, activeRooms, getCategoryLabels } from './services/gameEngine.js';
import { fileURLToPath } from 'url';

// Recreate __dirname cleanly for ES module environments
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Tell Express to serve everything inside the 'public' folder as static assets
app.use(express.static(path.join(__dirname, '..public')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));

// 1. DYNAMIC ROOM LIFECYCLE CREATOR ENDPOINT
app.get('/api/create-room', (req, res) => {
    try {
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
            activeDeckName: null,
            answers: {},
            questionBank: [],
            questionGroups: {},
            currentQuestionIndex: -1,
            askedQuestionIds: new Set(),
            votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 },
            categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 },
            lastActivity: Date.now() // Time the room was "born"
        };

        console.log(`[Room Organizer] Created dynamic session bubble: ${code}`);
        return res.json({ success: true, roomCode: code });
    } catch (e) {
        return res.status(500).json({ success: false, error: 'Lifecycle allocation failure.' });
    }
});

app.post('/api/message', async (req, res) => {
    try {
        const { From, Body } = req.body;
        if (!From || !Body) return res.status(400).json({ success: false, reply: 'Missing parameters.' });

        const engineResponse = await handleIncomingMessage(From, Body);
        if (typeof engineResponse === 'string' && engineResponse.startsWith('⚠️')) {
            return res.json({ success: false, reply: engineResponse });
        }
        return res.json({ success: true, reply: engineResponse });
    } catch (error) {
        return res.status(500).json({ success: false, reply: 'Engine error.' });
    }
});

app.post('/api/room-status', (req, res) => {
    try {
        const { roomCode } = req.body;
        const targetRoom = activeRooms[roomCode];
        if (targetRoom) {
            // A player just interacted with this room! Bump the clock to keep it alive
            targetRoom.lastActivity = Date.now();
        }

        if (targetRoom && targetRoom.gameState === 'CATEGORY_VOTE') {
            let cat1 = 'WWII History', cat2 = 'Primary School', cat3 = 'Pop Culture';
            if (targetRoom.winningGameMode === 'COUNTRY_MONKEY') {
                cat1 = 'Global Mix'; cat2 = 'Europe & Americas'; cat3 = 'Asia & Africa';
            } else if (targetRoom.winningGameMode === 'EMPOSSDURR') {
                cat1 = 'Standard Circle'; cat2 = 'Traitor Pack'; cat3 = 'Chaos Mode';
            } else if (targetRoom.winningGameMode === 'FLAG_ME_DOWN') {
                cat1 = 'Modern Nations'; cat2 = 'Historical Standards'; cat3 = 'Bizarre Banners';
            } else if (targetRoom.winningGameMode === 'ON_THE_SPECTRUM') {
                cat1 = 'Numeric Scales'; cat2 = 'Extreme Measures'; cat3 = 'Chrono Orders';
            }
            return res.json({ phase: 'CATEGORY_VOTE_PHASE', label1: cat1, label2: cat2, label3: cat3 });
        }
        // FIX: If the clock expired and moved to gameplay, shout the round phase back to the phone poller!
        // FIX ALIGNMENT: Flatten the object parameters so it matches Phase 2 perfectly!
        if (targetRoom && targetRoom.gameState === 'GAME_ROUND') {
            return res.json({ phase: 'GAME_ROUND_PHASE' });
        }
        return res.json({ phase: 'WAITING' });
    } catch (error) {
        return res.status(500).json({ error: 'Status track exception.' });
    }
});

app.get('/', (req, res) => { res.send('Voxopo Backend Engine Active!'); });
app.get('/tv', (req, res) => { res.sendFile(path.resolve('public/index.html')); });
app.get('/play', (req, res) => { res.sendFile(path.resolve('public/play.html')); });

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
                        
                        // Check structural allocation container baseline overrides
                        if (!activeRooms[roomCode]) {
                            activeRooms[roomCode] = {
                                gameState: 'LOBBY', players: {}, screens: [], timerInterval: null,
                                lobbyTimerInterval: null, categoryTimerInterval: null, revealTimeout: null,
                                lobbySecondsLeft: 60, categorySecondsLeft: 30, gameSecondsLeft: 25, winningGameMode: null,
                                activeQuestionData: null, activeDeckName: null, answers: {},
                                questionBank: [], questionGroups: {}, currentQuestionIndex: -1, askedQuestionIds: new Set(),
                                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 },
                                categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 }
                            };
                        }

                        activeRooms[roomCode].screens.push(socket);
                        console.log(`✅ [WebSocket] Room ${roomCode} TV layout screen explicitly locked live.`);

                        socket.send(JSON.stringify({
                            type: 'LEADERBOARD_UPDATE',
                            players: Object.values(activeRooms[roomCode].players)
                        }));

                        const currentRoomState = activeRooms[roomCode];
                            if (currentRoomState.gameState !== 'LOBBY') {
                                // Recompute the same category labels the CATEGORY_VOTE broadcast used,
                                // so a reconnecting screen shows the real sub-deck names, not defaults.
                                const { cat1, cat2, cat3 } = getCategoryLabels(currentRoomState.winningGameMode);

                                socket.send(JSON.stringify({
                                    type: 'STATE_CATCH_UP',
                                    gameState: currentRoomState.gameState,
                                    winningGameMode: currentRoomState.winningGameMode,
                                    label1: cat1,
                                    label2: cat2,
                                    label3: cat3,
                                    activeQuestionData: currentRoomState.activeQuestionData, // Sends the live trivia question text!
                                    // Pass down whatever timer metrics are left on the clock
                                    lobbySecondsLeft: currentRoomState.lobbySecondsLeft,
                                    categorySecondsLeft: currentRoomState.categorySecondsLeft,
                                    gameSecondsLeft: currentRoomState.gameSecondsLeft
                                }));
                                console.log(`[Sync Engine] Sent catch-up payload for active room ${roomCode} to fresh display listener.`);
                            }
                        }
                } catch (err) {
                    console.error('❌ [Socket Error]:', err.message);
                }
            });
            // ========================================================
            // 🧹 AUTOMATED GARBAGE COLLECTION REAPER (Keeps room pool fresh)
            // ========================================================
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

            socket.on('close', () => {
                for (const code in activeRooms) {
                    activeRooms[code].screens = activeRooms[code].screens.filter(s => s !== socket);
                }
            });
        });

    } catch (error) {
        console.error('❌ [Initialization Exception]:', error.message);
    }
}

startServer();
