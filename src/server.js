// src/server.js
import express from 'express';
import dotenv from 'dotenv';
import pool from './config/database.js';
import { handleIncomingMessage } from './services/gameEngine.js';
import { initializeWebSocketServer } from './socket/connection.js'; // MAKE SURE THIS LINE IS EXACTLY HERE!

// Load environmental variables from your hidden .env file
dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware to automatically parse incoming standard URL-encoded form data
// This is critical because Twilio sends its text messages as a POST form payload!
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));

// New High-Utility Web Intake Gateway Route
app.post('/api/message', (req, res) => {
    try {
        const { From, Body } = req.body;
        console.log(`[Web Intake API] Packet received from ID ${From}: "${Body}"`);

        if (!From || !Body) {
            return res.status(400).json({ success: false, reply: 'Missing transaction parameters.' });
        }

        // Pass variables directly into our existing game engine layout
        const engineResponse = handleIncomingMessage(From, Body);

        // Return a clean web-ready JSON string object instead of messy telecom XML
        return res.json({ success: true, reply: engineResponse });

    } catch (error) {
        console.error('❌ [Web API Gateway Exception]:', error.message);
        return res.status(500).json({ success: false, reply: 'Engine processing error.' });
    }
});

/**
 * Core Webhook Endpoint for Twilio
 * Twilio hits this URL instantly every single time a player texts your phone number.
 */
app.post('/webhook/sms', async (req, res) => {
    // Set response headers to pure, strict Twilio XML format immediately
    res.header('Content-Type', 'text/xml');

    try {
        const { From, Body } = req.body;
        console.log(`[Twilio Inbound] Incoming payload from ${From}: "${Body}"`);

        // Safeguard against missing body data parsing bugs
        if (!Body) {
            return res.send('<Response><Message>System error: Empty payload text body received.</Message></Response>');
        }

        // Pass payload straight into the game state engine
        const replyMessage = handleIncomingMessage(From, Body);

        // Return a clean, verified XML string packet back to the carrier grid
        return res.send(`<Response><Message>${replyMessage || 'Message processed securely.'}</Message></Response>`);

    } catch (error) {
        console.error('❌ [Webhook Crash Log]:', error.message);
        // Bypasses the 12200 crash trap by always returning a clean fallback XML packet
        return res.send(`<Response><Message><![CDATA[${replyMessage || 'Message processed securely.'}]]></Message></Response>`);
    }
});


// A simple home route so we can verify the server is running via a web browser
app.get('/', (req, res) => {
    res.send('Voxopo Backend Engine is Active and Running Locally!');
});

// Route to load the Venue TV Leaderboard
app.get('/tv', (req, res) => {
    res.sendFile(path.resolve('public/index.html'));
});

// Route to load the Mobile Player Instruction Guide
app.get('/play', (req, res) => {
    res.sendFile(path.resolve('public/play.html'));
});

// TEST THE CLOUD CONNECTION BEFORE BOOTING THE WEB SERVER
async function startServer() {
    try {
        console.log('⏳ Verifying cloud database availability...');
        
        // Query the database to fetch the count of your seeded questions
        const result = await pool.query('SELECT COUNT(*) FROM questions;');
        
        // PostgreSQL returns count inside rows property
        const questionCount = result.rows[0]?.count || 0;
        
        console.log(`✅ [Database Connection Verified] Found ${questionCount} trivia questions waiting in the cloud.`);
        
        // Start listening for player traffic and capture the running instance
        const serverInstance = app.listen(PORT, () => {
            console.log(`===============================================`);
            console.log(`🚀 [Voxopo Alive] Server running on port ${PORT}`);
            console.log(`📡 Local Webhook Path: http://localhost:${PORT}/webhook/sms`);
            console.log(`===============================================`);
        });

        // ATTACH THE LIVE WEBSOCKET SERVER TO OUR RUNNING PROCESS HERE
        initializeWebSocketServer(serverInstance);

    } catch (error) {
        console.error('❌ [Critical Error] Server failed to boot due to database failure:', error.message);
        process.exit(1);
    }
}

startServer();

