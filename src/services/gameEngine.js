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

// Automated Lobby Countdown Clock Machinery (Phase 1)
function startLobbyCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    room.lobbySecondsLeft = 60;
    if (room.lobbyTimerInterval) return;

    room.lobbyTimerInterval = setInterval(() => {
        room.lobbySecondsLeft--;
        
        if (room.lobbySecondsLeft > 0) {
            broadcastToRoom(roomCode, { type: 'LOBBY_TIMER_TICK', secondsLeft: room.lobbySecondsLeft + "s" });
        } else {
            clearInterval(room.lobbyTimerInterval);
            room.lobbyTimerInterval = null;
            
            const winningModule = calculateElectionWinner(room);
            room.gameState = 'CATEGORY_VOTE';
            room.winningGameMode = winningModule;
            
            let cat1 = 'WWII History', cat2 = 'Primary School', cat3 = 'Pop Culture';
            if (winningModule === 'COUNTRY_MONKEY') {
                cat1 = 'Global Mix'; cat2 = 'Europe & Americas'; cat3 = 'Asia & Africa';
            } else if (winningModule === 'EMPOSSDURR') {
                cat1 = 'Standard Circle'; cat2 = 'Traitor Pack'; cat3 = 'Chaos Mode';
            } else if (winningModule === 'FLAG_ME_DOWN') {
                cat1 = 'Modern Nations'; cat2 = 'Historical Standards'; cat3 = 'Bizarre Banners';
            } else if (winningModule === 'ON_THE_SPECTRUM') {
                cat1 = 'Numeric Scales'; cat2 = 'Extreme Measures'; cat3 = 'Chrono Orders';
            }
            
            console.log(`[Lobby Clock] Election closed. Winning module: ${winningModule}.`);

            broadcastToRoom(roomCode, {
                type: 'TRANSITION_TO_CATEGORY_VOTE',
                winner: winningModule,
                label1: cat1,
                label2: cat2,
                label3: cat3
            });

            startCategoryCountdown(roomCode);
        }
    }, 1000);
}

function calculateElectionWinner(room) {
    const votes = room.votes;
    let maxVotes = -1;
    let candidates = [];

    for (const mode in votes) {
        if (votes[mode] > maxVotes) {
            maxVotes = votes[mode];
            candidates = [mode];
        } else if (votes[mode] === maxVotes) {
            candidates.push(mode);
        }
    }
    if (candidates.length === 1) return candidates[0];

    let earliestTime = new Date('2030-01-01');
    let tieBreakingWinner = candidates[0];

    Object.values(room.players).forEach(player => {
        if (candidates.includes(player.vote)) {
            const playerJoinTime = new Date(player.joinedAt);
            if (playerJoinTime < earliestTime) {
                earliestTime = playerJoinTime;
                tieBreakingWinner = player.vote;
            }
        }
    });
    return tieBreakingWinner;
}

// Automated Micro Category Countdown Timer Loop (Phase 2)
function startCategoryCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = 30;
    room.categorySecondsLeft = count;

    if (room.categoryTimerInterval) clearInterval(room.categoryTimerInterval);

    room.categoryTimerInterval = setInterval(() => {
        count--;
        room.categorySecondsLeft = count;
        
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'CATEGORY_TIMER_TICK', secondsLeft: count + "s" });
        } else {
            clearInterval(room.categoryTimerInterval);
            room.categoryTimerInterval = null;
            
            const winningCategoryKey = calculateCategoryWinner(room);
            room.gameState = 'QUESTION'; // Transition cleanly to our active question phase
            room.answers = {}; // Reset answer array memory storage buckets for the fresh round
            
            let labelMap = { CAT_1: 'WWII History', CAT_2: 'Primary School', CAT_3: 'Pop Culture' };
            if (room.winningGameMode === 'COUNTRY_MONKEY') {
                labelMap = { CAT_1: 'Global Mix', CAT_2: 'Europe & Americas', CAT_3: 'Asia & Africa' };
            }
            const activeDeckName = labelMap[winningCategoryKey] || 'General Deck';

            console.log(`[Category Clock] Sub-election closed. Winner: ${winningCategoryKey} (${activeDeckName}).`);

            broadcastToRoom(roomCode, {
                type: 'TRANSITION_TO_QUESTION',
                categoryLabel: activeDeckName,
                questionText: "Which country was the first to implement radar technology defensively during the structural operations of World War II?",
                choiceA: "Great Britain",
                choiceB: "Germany",
                choiceC: "United States",
                choiceD: "Japan"
            });

            startGameRoundCountdown(roomCode);
        }
    }, 1000);
}

function calculateCategoryWinner(room) {
    const votes = room.categoryVotes;
    let maxVotes = -1;
    let candidates = [];

    for (const key in votes) {
        if (votes[key] > maxVotes) {
            maxVotes = votes[key];
            candidates = [key];
        } else if (votes[key] === maxVotes) {
            candidates.push(key);
        }
    }
    const randomIndex = Math.floor(Math.random() * candidates.length);
    return candidates[randomIndex];
}

// Active Gameplay Phase Timer Loop (Phase 3 - 25-Second Active Clock Engine)
function startGameRoundCountdown(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    let count = 25; 
    if (room.timerInterval) clearInterval(room.timerInterval);

    room.timerInterval = setInterval(() => {
        count--;
        if (count > 0) {
            broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: count + "s" });
        } else {
            // Force standard clock runtime expiration reveal if time runs out naturally
            evaluateRoundAndRevealAnswer(roomCode);
        }
    }, 1000);
}

// Unified Answer Reveal Engine (Triggers on Timer Runout OR when all player votes lock!)
function evaluateRoundAndRevealAnswer(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    // Clear background interval clocks instantly to prevent double-firing crashes
    if (room.timerInterval) {
        clearInterval(room.timerInterval);
        room.timerInterval = null;
    }

    room.gameState = 'ROUND_REVEAL';
    
    // Announce timer completion on the visual top HUD banner layout
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: "TIME'S UP!" });
    
    // Broadcast answer reveal command (Historical Winner: Option A - Great Britain)
    broadcastToRoom(roomCode, {
        type: 'REVEAL_CORRECT_ANSWER',
        correctLetter: "A"
    });
    
    console.log(`[Match Engine] Round closed for Room ${roomCode}. All choices frozen and compiled.`);
}

export function handleIncomingMessage(fromPhone, bodyText) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts) return "⚠️ Error: Empty packet payload.";
    const firstWord = parts[0].toUpperCase();

    if (!isNaN(firstWord) && firstWord.length === 4) {
        const roomCode = firstWord;
        
        if (!activeRooms[roomCode]) {
            activeRooms[roomCode] = {
                gameState: 'LOBBY', players: {}, screens: [], timerInterval: null,
                lobbyTimerInterval: null, categoryTimerInterval: null,
                lobbySecondsLeft: 60, categorySecondsLeft: 30, winningGameMode: null,
                activeQuestionData: null, answers: {},
                votes: { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 },
                categoryVotes: { CAT_1: 0, CAT_2: 0, CAT_3: 0 }
            };
        }

        const currentRoom = activeRooms[roomCode];
        if (currentRoom.gameState !== 'LOBBY') return "⚠️ Registration closed! Match active.";

        if (parts.length >= 4) {
            parts.shift();
            const votedModule = parts.pop();
            const playerEmoji = parts.pop() || '👤';
            const playerNickname = parts.join(' ').trim();

            if (!playerNickname) return "⚠️ Setup Error: Blank nickname field.";
            if (currentRoom.players[playerNickname]) return `⚠️ Name taken inside Room ${roomCode}.`;

            currentRoom.players[playerNickname] = {
                name: playerNickname, emoji: playerEmoji, vote: votedModule, categoryVote: null, score: 0, joinedAt: new Date()
            };

            currentRoom.votes = { TRIVI_YEAH: 0, COUNTRY_MONKEY: 0, EMPOSSDURR: 0, FLAG_ME_DOWN: 0, ON_THE_SPECTRUM: 0 };
            const playersArray = Object.values(currentRoom.players);
            
            playersArray.forEach(p => {
                if (currentRoom.votes[p.vote] !== undefined) currentRoom.votes[p.vote]++;
            });

            broadcastToRoom(roomCode, { type: 'LEADERBOARD_UPDATE', players: playersArray });
            broadcastToRoom(roomCode, { type: 'VOTE_UPDATE', votes: currentRoom.votes, totalVotes: playersArray.length });

            startLobbyCountdown(roomCode);
            broadcastToRoom(roomCode, { type: 'LOBBY_TIMER_TICK', secondsLeft: "60s" });

            return `Welcome to RandoMania, ${playerNickname}! Entry logged live.`;
        }
    }

    let associatedRoomCode = null;
    for (const code in activeRooms) {
        if (activeRooms[code].players[fromPhone]) {
            associatedRoomCode = code;
            break;
        }
    }
    if (!associatedRoomCode) return "⚠️ Setup Warning: Join a live room first.";

    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[fromPhone];

    // Handle Category Sub-Voting Window (Phase 2)
    if (currentRoom.gameState === 'CATEGORY_VOTE') {
        const choice = cleanText.toUpperCase();
        if (['CAT_1', 'CAT_2', 'CAT_3'].includes(choice)) {
            player.categoryVote = choice;

            currentRoom.categoryVotes = { CAT_1: 0, CAT_2: 0, CAT_3: 0 };
            const activePlayers = Object.values(currentRoom.players);
            let totalSubVotes = 0;

            activePlayers.forEach(p => {
                if (p.categoryVote) {
                    currentRoom.categoryVotes[p.categoryVote]++;
                    totalSubVotes++;
                }
            });

            broadcastToRoom(associatedRoomCode, {
                type: 'CATEGORY_VOTE_UPDATE',
                votes: currentRoom.categoryVotes,
                totalVotes: totalSubVotes
            });

            return `Got it, ${player.name}! Vote counted.`;
        }
    }

    // Handle Active Question Submission Input Locking Window (Phase 3)
    if (currentRoom.gameState === 'QUESTION') {
        const answerChoice = cleanText.toUpperCase();
        if (['A', 'B', 'C', 'D'].includes(answerChoice)) {
            
            // Register or overwrite the player's active answer selection in memory maps
            currentRoom.answers[fromPhone] = answerChoice;
            
            const totalPlayersCount = Object.keys(currentRoom.players).length;
            const totalAnswersLogged = Object.keys(currentRoom.answers).length;

            console.log(`[Match Engine] Submission received from ${player.name}: "${answerChoice}". Total logged: ${totalAnswersLogged}/${totalPlayersCount}`);

            // INTERRUPT TRIGGER CHECK: If every registered player has logged an answer, end the timer NOW!
            if (totalAnswersLogged === totalPlayersCount) {
                console.log(`🚀 [Match Engine] Final submission secured! Blowing out countdown loop fields immediately.`);
                evaluateRoundAndRevealAnswer(associatedRoomCode);
            }

            return `Got it, ${player.name}! Input logged securely.`;
        }
    }

    if (cleanText.toUpperCase() === 'START') return "🚀 Framework active! Watch the TV screen canvas.";
    return `Sorry, ${player.name}, response gateway closed right now.`;
}
