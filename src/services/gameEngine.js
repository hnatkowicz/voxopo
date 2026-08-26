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

// Phase 1: Lobby Countdown Controller
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
            executeLobbyPhaseExpiration(roomCode);
        }
    }, 1000);
}

// Unified gate to handle moving from Lobby to Category Selection
function executeLobbyPhaseExpiration(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.lobbyTimerInterval) {
        clearInterval(room.lobbyTimerInterval);
        room.lobbyTimerInterval = null;
    }

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
    
    console.log(`[Room Engine] Lobby phase closed for Room ${roomCode}. Winner: ${winningModule}`);

    broadcastToRoom(roomCode, {
        type: 'TRANSITION_TO_CATEGORY_VOTE',
        winner: winningModule,
        label1: cat1,
        label2: cat2,
        label3: cat3
    });

    startCategoryCountdown(roomCode);
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

// Phase 2: Category Voting Countdown Loop
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
            executeCategoryPhaseExpiration(roomCode);
        }
    }, 1000);
}

// Unified gate to transition from Category Selection to the Active Question Canvas
function executeCategoryPhaseExpiration(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.categoryTimerInterval) {
        clearInterval(room.categoryTimerInterval);
        room.categoryTimerInterval = null;
    }

    const winningCategoryKey = calculateCategoryWinner(room);
    room.gameState = 'GAME_ROUND';
    room.answers = {}; // Initialize blank answer map block for the active question
    
    let labelMap = { CAT_1: 'WWII History', CAT_2: 'Primary School', CAT_3: 'Pop Culture' };
    if (room.winningGameMode === 'COUNTRY_MONKEY') {
        labelMap = { CAT_1: 'Global Mix', CAT_2: 'Europe & Americas', CAT_3: 'Asia & Africa' };
    }
    const activeDeckName = labelMap[winningCategoryKey] || 'General Deck';

    console.log(`[Room Engine] Category selection finalized for Room ${roomCode}. Loaded: ${activeDeckName}`);

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

// Phase 3: Active Gameplay Timer Loop (Rigidly set to 25 seconds)
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
            evaluateRoundAndRevealAnswer(roomCode);
        }
    }, 1000);
}

function evaluateRoundAndRevealAnswer(roomCode) {
    const room = activeRooms[roomCode];
    if (!room) return;

    if (room.timerInterval) {
        clearInterval(room.timerInterval);
        room.timerInterval = null;
    }

    room.gameState = 'ROUND_REVEAL';
    broadcastToRoom(roomCode, { type: 'GAME_TIMER_TICK', secondsLeft: "TIME'S UP!" });
    
    broadcastToRoom(roomCode, {
        type: 'REVEAL_CORRECT_ANSWER',
        correctLetter: "A"
    });
}

export function handleIncomingMessage(fromPhone, bodyText) {
    const cleanText = bodyText.trim();
    const parts = cleanText.split(' ');
    
    if (parts.length === 0 || !parts) return "⚠️ Error: Empty input payload.";
    const firstWord = parts[0].toUpperCase();

    // 1. Handle Initial Room Join & Check-In
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
                phoneHandle: fromPhone, // Map incoming message signature key
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

    // Lookup Associated Room
    let associatedRoomCode = null;
    let actingPlayerName = null;

    for (const code in activeRooms) {
        // Cross reference by incoming unique phone message signature handles
        const match = Object.values(activeRooms[code].players).find(p => p.phoneHandle === fromPhone || p.name === fromPhone);
        if (match) {
            associatedRoomCode = code;
            actingPlayerName = match.name;
            break;
        }
    }
    if (!associatedRoomCode) return "⚠️ Setup Warning: Join a live room first.";
    const currentRoom = activeRooms[associatedRoomCode];
    const player = currentRoom.players[actingPlayerName];

    // Handle Category Selection Input (Phase 2)
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

            return `Got it, ${player.name}! Sub-vote recorded.`;
        }
    }

    // Handle Trivia Response Submissions (Phase 3)
    if (currentRoom.gameState === 'QUESTION') {
        const answerChoice = cleanText.toUpperCase();
        if (['A', 'B', 'C', 'D'].includes(answerChoice)) {
            currentRoom.answers[actingPlayerName] = answerChoice;
            
            const totalPlayersCount = Object.keys(currentRoom.players).length;
            const totalAnswersLogged = Object.keys(currentRoom.answers).length;

            if (totalAnswersLogged === totalPlayersCount) {
                evaluateRoundAndRevealAnswer(associatedRoomCode);
            }
            return `Got it, ${player.name}! Option ${answerChoice} logged.`;
        }
    }

    if (cleanText.toUpperCase() === 'START') return "🚀 Framework active! Watch the TV screen canvas.";
    return `Sorry, ${player.name}, response submission window closed.`;
}
