import express from 'express';
import dotenv from 'dotenv';
import path from 'path';
import { WebSocketServer } from 'ws'; // Directly utilize the native websocket server library
import pool from './config/database.js';
import { handleIncomingMessage, activeRooms } from './services/gameEngine.js'; // Explicitly share the same room memory bucket

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));

// New High-Utility Web Intake Gateway Route (Upgraded to async to perfectly handle database commands)
app.post('/api/message', async (req, res) => {
    try {
        const { From, Body } = req.body;
        console.log(`[Web Intake API] Packet received from ID ${From}: "${Body}"`);

        if (!From || !Body) {
            return res.status(400).json({ success: false, reply: 'Missing transaction parameters.' });
        }

        const engineResponse = await handleIncomingMessage(From, Body);

        // FIX: If the engine returns a warning flag string (starts with ⚠️), pass it back gracefully as a clean, intentional message block!
        if (typeof engineResponse === 'string' && engineResponse.startsWith('⚠️')) {
            return res.json({ success: false, reply: engineResponse });
        }

        return res.json({ success: true, reply: engineResponse });
    } catch (error) {
        console.error('❌ [Web API Gateway Exception]:', error.message);
        return res.status(500).json({ success: false, reply: 'Engine processing error.' });
    }
});


app.get('/', (req, res) => {
    res.send('Voxopo Backend Engine is Active and Running!');
});

app.get('/tv', (req, res) => {
    res.sendFile(path.resolve('public/index.html'));
});

app.get('/play', (req, res) => {
    res.sendFile(path.resolve('public/play.html'));
});

async function startServer() {
    try {
        console.log('⏳ Verifying cloud database availability...');
        const result = await pool.query('SELECT COUNT(*) FROM questions;');
        const questionCount = result.rows[0]?.count || 0;
        console.log(`✅ [Database Connection Verified] Found ${questionCount} trivia questions waiting in the cloud.`);

        // 1. Capture the running instance of your HTTP web server process
        const serverInstance = app.listen(PORT, () => {
            console.log(`===============================================`);
            console.log(`🚀 [Voxopo Alive] Server running on port ${PORT}`);
            console.log(`===============================================`);
        });

        // 2. Attach the WebSocket Server directly to this instance inline
        const wss = new WebSocketServer({ server: serverInstance });

        wss.on('connection', (socket) => {
            console.log('[WebSocket] A venue TV screen layout has opened a raw network socket line.');

            socket.on('message', (messageText) => {
                try {
                    const data = JSON.parse(messageText);
                    
                    if (data.type === 'REGISTER_SCREEN') {
                        const roomCode = data.roomCode;
                        console.log(`[WebSocket] TV Screen is requesting link authorization for Room: ${roomCode}`);

                        // Initialize room tracking fields if they don't exist yet
                        if (!activeRooms[roomCode]) {
                            activeRooms[roomCode] = {
                                gameState: 'LOBBY',
                                players: {},
                                screens: [],
                                timerInterval: null,
                                activeQuestionData: null,
                                answers: {}
                            };
                        }

                        // Securely lock this live socket straight into the core game engine's screen array!
                        activeRooms[roomCode].screens.push(socket);
                        console.log(`✅ [WebSocket] Room ${roomCode} TV screen is officially synced and locked live.`);

                        // Instantly send back a current score list so late refreshing screens don't look empty
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
                // Cleanly purge dead socket links out of all active rooms to optimize memory performance
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
