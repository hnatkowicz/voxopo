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

/**
 * Core Webhook Endpoint for Twilio
 * Twilio hits this URL instantly every single time a player texts your phone number.
 */
app.post('/webhook/sms', (req, res) => {
    // Extract the sender's phone number and message body from the Twilio payload
    const fromPhone = req.body.From;
    const textBody = req.body.Body;

    console.log(`[Twilio Webhook] Received message from ${fromPhone}: "${textBody}"`);

    if (!fromPhone || !textBody) {
        return res.status(400).send('Missing Twilio payload data.');
    }

    // Pass the text to our in-memory engine and capture the programmatic reply text
    const autoReplyMessage = handleIncomingMessage(fromPhone, textBody);

    // Format the response using Twilio's standard XML messaging language (TwiML)
    // This instructs Twilio to instantly text this reply back to the player's handset
    res.type('text/xml');
    res.send(`
        <Response>
            <Message>${autoReplyMessage}</Message>
        </Response>
    `);
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

