// src/socket/connection.js
import { WebSocketServer } from 'ws';

// Tracks active TV screen connections (Key: RoomCode, Value: Socket connection instance)
const connectedScreens = {};

/**
 * Initializes the native WebSocket Server attached to our main HTTP loop
 * @param {object} httpServer - The active Node.js server instance
 */
export function initializeWebSocketServer(httpServer) {
    // Attach the WebSocket server directly to your existing HTTP server process
    const wss = new WebSocketServer({ server: httpServer });

    console.log('📡 [WebSockets] Live Real-Time screen sync engine active.');

    wss.on('connection', (ws) => {
        console.log('[WebSocket] A venue TV screen has loaded the layout.');

        // Listen for message events coming up from the TV screen
        ws.on('message', (message) => {
            try {
                const event = JSON.parse(message);
                
                // When a TV boots up, it announces its assignment: { type: 'REGISTER_SCREEN', roomCode: '1234' }
                if (event.type === 'REGISTER_SCREEN') {
                    connectedScreens[event.roomCode] = ws;
                    console.log(`[WebSocket] Room ${event.roomCode} TV screen is officially synced and locked live.`);
                }
            } catch (err) {
                console.error('[WebSocket Error] Failed to parse incoming screen message:', err.message);
            }
        });

        ws.on('close', () => {
            // Clean up disconnected screens from our active server memory
            Object.keys(connectedScreens).forEach((roomCode) => {
                if (connectedScreens[roomCode] === ws) {
                    delete connectedScreens[roomCode];
                    console.log(`[WebSocket] Room ${roomCode} TV monitor has disconnected.`);
                }
            });
        });
    });
}

/**
 * Sends a live, un-delayed gameplay event straight to a specific room's TV screen
 * @param {string} roomCode - The target 4-digit room ID
 * @param {object} payload - The event object (e.g., { type: 'NEW_QUESTION', text: '...' })
 */
export function broadcastToRoom(roomCode, payload) {
    const screenSocket = connectedScreens[roomCode];
    
    if (screenSocket && screenSocket.readyState === 1) { // 1 means the connection is actively OPEN
        screenSocket.send(JSON.stringify(payload));
        console.log(`[WebSocket Broadcast] Sent event "${payload.type}" to Room ${roomCode} TV.`);
    } else {
        console.log(`[WebSocket Notice] Event ready for Room ${roomCode}, but no TV screen is listening yet.`);
    }
}
