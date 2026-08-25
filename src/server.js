import express from 'express';
import dotenv from 'dotenv';
import path from 'path';
import { WebSocketServer } from 'ws';
import pool from './config/database.js';
import { handleIncomingMessage, activeRooms } from './services/gameEngine.js';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));

// 1. CLEAN REGULAR MESSAGE PORT (Handles pure text registration strings)
app.post('/api/message', async (req, res) => {
    try {
        const { From, Body } = req.body;

        if (!From || !Body) {
            return res.status(400).json({ success: false, reply: 'Missing transaction parameters.' });
        }

        const engineResponse = await handleIncomingMessage(From, Body);

        if (typeof engineResponse === 'string' && engineResponse.startsWith('⚠️')) {
            return res.json({ success: false, reply: engineResponse });
        }

        return res.json({ success: true, reply: engineResponse });
    } catch (error) {
        console.error('❌ [Web API Gateway Exception]:', error.message);
        return res.status(500).json({ success: false, reply: 'Engine processing error.' });
    }
});

// 2. NEW CLEAN POLL ENDPOINT (Surgically handles background checks with pure JSON objects!)
app.post('/api/room-status', (req, res) => {
    try {
        const { roomCode } = req.body;
        const targetRoom = activeRooms[roomCode];

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

            return res.json({
                phase: 'CATEGORY_VOTE_PHASE',
                label1: cat1,
                label2: cat2,
                label3: cat3
            });
        }
        
        return res.json({ phase: 'WAITING' });
    } catch (error) {
        return res.status(500).json({ error: 'Status tracking error.' });
    }
});

app.get('/', (req, res) => { res.send('Voxopo Backend Engine Active!'); });
app.get('/tv', (req, res) => { res.sendFile(path.resolve('public/index.html')); });
app.get('/play', (req, res) => { res.sendFile(path.resolve('public/play.html')); });

async function startServer() {
    try {
        console.log('⏳ Verifying cloud database availability...');
        const result = await pool.query('SELECT COUNT(*) FROM questions;');
        const questionCount = result.rows[0]?.count || 0;
        console.log(`✅ [Database Connection Verified] Found ${questionCount} trivia questions waiting in the cloud.`);

        const serverInstance = app.listen(PORT, () => {
            console.log(`===============================================`);
            console.log(`🚀 [Voxopo Alive] Server running on port ${PORT}`);
            console.log(`===============================================`);
        });

        const wss = new WebSocketServer({ server: serverInstance });

        wss.on('connection', (socket) => {
            console.log('[WebSocket] A venue TV screen layout has opened a raw network socket line.');

            socket.on('message', (messageText) => {
                try {
                    const data = JSON.parse(messageText);
                    
                    if (data.type === 'REGISTER_SCREEN') {
                        const roomCode = data.roomCode;
                        console.log(`[WebSocket] TV Screen is requesting link authorization for Room: ${roomCode}`);

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
                                categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 }
                            };
                        }

                        activeRooms[roomCode].screens.push(socket);
                        console.log(`✅ [WebSocket] Room ${roomCode} TV screen is officially synced and locked live.`);

                        socket.send(JSON.stringify({
                            type: 'LEADERBOARD_UPDATE',
                            players: Object.values(activeRooms[roomCode].players)
                        }));
                    }
                } catch (err) {
                    console.error('❌ [Socket Parsing Error]:', err.message);
                }
            });

            socket.on('close', () => {
                console.log('[WebSocket] A layout screen disconnected from the pipeline loop.');
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
