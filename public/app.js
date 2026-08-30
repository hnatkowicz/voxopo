document.addEventListener("DOMContentLoaded", () => {
    document.body.setAttribute('data-view', 'gateway');
    
    const btnGenerate = document.getElementById('btn-generate-lobby');
    const btnToggleSpectate = document.getElementById('btn-toggle-spectate');
    const spectateDrawer = document.getElementById('spectate-input-drawer');
    const btnSubmitSpectate = document.getElementById('btn-submit-spectate');
    const inputRoomCode = document.getElementById('input-room-code');

// 1. DYNAMIC LIFECYCLE CREATION ROUTINE
if (btnGenerate) {
    btnGenerate.addEventListener('click', async () => {
        try {
            const response = await fetch('/api/create-room'); 
            const data = await response.json();
            
            if (data.success && data.roomCode) {
                // Update the active room metric tracking element label
                document.getElementById('display-room-code-badge').innerText = data.roomCode;
                
                // Fire the CSS toggle selector rule to drop the gateway screen
                document.body.setAttribute('data-view', 'game');
                
                // ========================================================
                // 🚀 WAKE UP YOUR SOCKET ENGINE INSTANTLY HERE:
                // ========================================================
                connectWebSocketEngine(data.roomCode);
            }
        } catch (err) {
            console.error("Critical server synchronization failure:", err);
        }
    });
}

    // 2. TOGGLE SPECTATOR CODE ENTRY DRAWER
    if (btnToggleSpectate && spectateDrawer) {
        btnToggleSpectate.addEventListener('click', () => {
            const isHidden = spectateDrawer.style.display === 'none';
            spectateDrawer.style.display = isHidden ? 'flex' : 'none';
            if (isHidden) inputRoomCode.focus();
        });
    }

// 3. SUBMIT MANUALLY ENTERED SPECTATOR CODE
if (btnSubmitSpectate) {
    btnSubmitSpectate.addEventListener('click', () => {
        const enteredCode = inputRoomCode.value.trim().toUpperCase();
        if (enteredCode.length === 4) {
            document.getElementById('display-room-code-badge').innerText = enteredCode;
            
            // Shift layout view over to the match screen tracker panel
            document.body.setAttribute('data-view', 'game');
            
            // 🚀 Wake up the connection engine for the spectator view!
            connectWebSocketEngine(enteredCode);
        }
    });
}

let currentActiveRoomCode = '----';
        let socket = null;
        let toastQueue = [];
        let isToastPlaying = false;
        let cachedPlayersSnapshot = [];
        let currentStatusHtml = ''; // Whatever the status slot should show at rest for the current phase (toasts restore to this)
        let currentGamePhase = 'LOBBY'; // LOBBY / CATEGORY_VOTE / GAME_ROUND / GAME_OVER -- gates the "TYPE START" nudge to lobby only

        // Ranks by score, then correct-answer count, then join time -- the last one
        // is always unique, so ties never leave two players sharing the same medal.
        function compareByRank(a, b) {
            return b.score - a.score
                || (b.correctAnswers || 0) - (a.correctAnswers || 0)
                || new Date(a.joinedAt) - new Date(b.joinedAt);
        }

        // Sets the muted, right-hand status message next to the permanent QR block.
        // The QR + join instructions on the left never change, so late arrivals can
        // always scan in -- this slot is the only thing that varies by phase.
        function setStatusMessage(html) {
            currentStatusHtml = html;
            const slot = document.getElementById('onboarding-status-slot');
            if (slot) slot.innerHTML = html;
        }

        // Fetch a randomized code from the server on demand automatically on load
        async function initializeDynamicRoomSession() {
            try {
                const response = await fetch('/api/create-room');
                const data = await response.json();
                
                if (data && data.success) {
                    currentActiveRoomCode = data.roomCode;
                    
                    // Rewrite the top HUD display string visually hands-free
                    document.getElementById('display-room-code-badge').innerText = currentActiveRoomCode;
                    
                    // Fire up the WebSocket pipeline and pass the newly generated room token
                    connectWebSocketEngine(currentActiveRoomCode);
                }
            } catch (e) {
                console.error("Failed to allocate room index.");
            }
        }

        function connectWebSocketEngine(roomCode) {
            socket = new WebSocket(`wss://${window.location.host}`);
            
            socket.onopen = () => {
                document.getElementById('room-status-text').innerText = "Connected Live";
                socket.send(JSON.stringify({ type: 'REGISTER_SCREEN', roomCode: roomCode }));
            };

            socket.onmessage = (event) => {
                const data = JSON.parse(event.data);
                console.log("[WebSocket API Event Received]", data);

                // Fired once right after REGISTER_SCREEN if the room is already
                // mid-game (e.g. the TV screen reloaded). Re-draws whichever
                // phase the server says is actually active.
                if (data.type === 'STATE_CATCH_UP') {
                    console.log("[Sync Engine] Synchronizing layout with active server phase:", data.gameState);

                    document.body.setAttribute('data-view', 'game');

                    if (data.gameState === 'CATEGORY_VOTE') {
                        document.getElementById('room-status-text').innerText = "Category Selection";
                        document.getElementById('lobby-countdown').innerText = data.categorySecondsLeft + " s";
                        switchToCategoryVotingUI(data.winningGameMode, data.label1, data.label2, data.label3);
                    } else if (data.gameState === 'GAME_ROUND' && data.activeQuestionData) {
                        document.getElementById('room-status-text').innerText = "Gameplay Phase";
                        document.getElementById('lobby-countdown').innerText = data.gameSecondsLeft + " s";
                        const q = data.activeQuestionData;
                        // Kept in sync with the choices shown, so a REVEAL_CORRECT_ANSWER
                        // that lands after reconnect still highlights the real answer text.
                        window.activeQuestion = { choices: { A: q.choiceA, B: q.choiceB, C: q.choiceC, D: q.choiceD } };
                        switchToQuestionUI(q.categoryLabel, q.questionText, q.choiceA, q.choiceB, q.choiceC, q.choiceD);
                        playCountdownMusic();
                    } else if (data.gameState === 'ROUND_REVEAL') {
                        // Reveal happened while we were away; there's no correctLetter here,
                        // so just drop into the gameplay view and wait for the next broadcast.
                        document.getElementById('room-status-text').innerText = "Round Evaluation";
                    }
                }
                if (data.type === 'LEADERBOARD_UPDATE') {
                    detectNewPlayerArrival(data.players);
                    updateLeaderboardUI(data.players);
                }
                if (data.type === 'VOTE_UPDATE') {
                    updateModuleElectionUI(data.votes, data.totalVotes);
                }
                if (data.type === 'LOBBY_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft;
                }
                if (data.type === 'CATEGORY_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft;
                }
                // Listen for Phase 3 active question clock ticks to drive the round countdown banner!
                if (data.type === 'GAME_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft;
                }
                // Listen for the server's clock expiration to highlight the correct answer choice
                if (data.type === 'REVEAL_CORRECT_ANSWER') {
                    document.getElementById('room-status-text').innerText = "Round Evaluation";
                    document.getElementById('lobby-countdown').innerText = "0 s";
                    highlightCorrectAnswerOnTV(data.correctLetter);
                    stopCountdownMusic();
                }
                // FIX: Explicitly pass data.label1, data.label2, and data.label3 into the painter!
                if (data.type === 'TRANSITION_TO_CATEGORY_VOTE') {
                    document.getElementById('room-status-text').innerText = "Category Selection";
                    switchToCategoryVotingUI(data.winner, data.label1, data.label2, data.label3);
                }
                if (data.type === 'CATEGORY_VOTE_UPDATE') {
                    updateCategorySubElectionUI(data.votes, data.totalVotes);
                }
                // Listen for the server's Category Phase expiration signal to draw the question canvas
                if (data.type === 'TRANSITION_TO_QUESTION') {
                    document.getElementById('room-status-text').innerText = "Gameplay Phase";
                    document.getElementById('lobby-countdown').innerText = "30 s"; // Reset banner clock visually
                    switchToQuestionUI(data.categoryLabel, data.questionText, data.choiceA, data.choiceB, data.choiceC, data.choiceD);
                    playCountdownMusic();
                }
                // Fired once the question loop runs out of questions for this game.
                if (data.type === 'GAME_OVER') {
                    document.getElementById('room-status-text').innerText = "Game Over";
                    document.getElementById('lobby-countdown').innerText = "FINAL";
                    stopCountdownMusic();
                    switchToGameOverUI(data.players);
                }
            };
        }

        function updateLeaderboardUI(playersList) {
            document.getElementById('lobby-player-count').innerText = playersList.length;
            const tbody = document.getElementById('leaderboard-rows');
            
            if (!playersList || playersList.length === 0) {
                tbody.innerHTML = `
                    <tr>
                        <td class="rank-col" style="color: #222630;">—</td>
                        <td class="emoji-col" style="color: #222630;">👤</td>
                        <td class="name-col" style="color: #64748b; font-style: italic;">Lobby is empty...</td>
                        <td class="score-col" style="color: #222630;">0</td>
                    </tr>
                `;
                return;
            }
            //Automatically reveal the text instructions on the main lobby screen!
            // Gated to LOBBY specifically -- this fires on every LEADERBOARD_UPDATE,
            // including the ones broadcast after every reveal once the game is live,
            // and would otherwise stomp the in-game/game-over status message.
            if (currentGamePhase === 'LOBBY' && !currentStatusHtml.includes('START')) {
                setStatusMessage(`
                    <div style="font-weight: 600; color: #8892b0; margin-bottom: 2px;">TYPE "START" TO CONFIRM</div>
                    <div style="font-size: 0.8rem; color: #64748b;">Skips the countdown once everyone's in</div>
                `);
            }

            tbody.innerHTML = '';
            playersList.sort(compareByRank);

            playersList.forEach((player, index) => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td class="rank-col">${index + 1}</td>
                    <td class="emoji-col">${player.emoji || '👤'}</td>
                    <td class="name-col">${player.name}</td>
                    <td class="score-col">${player.score || 0}</td>
                `;
                tbody.appendChild(row);
            });
        }

        function updateModuleElectionUI(votes, totalVotes) {
            if (!totalVotes || totalVotes === 0) return;
            const keys = ['TRIVI_YEAH', 'COUNTRY_MONKEY', 'EMPOSSDURR', 'FLAG_ME_DOWN', 'ON_THE_SPECTRUM'];
            keys.forEach(key => {
                const count = votes[key] || 0;
                const percentage = Math.round((count / totalVotes) * 100);
                document.getElementById(`vbar-${key}`).style.width = `${percentage}%`;
                document.getElementById(`vcount-${key}`).innerText = `${count} votes (${percentage}%)`;
            });
        }

        function detectNewPlayerArrival(freshPlayersList) {
            // Snapshot BEFORE reassignment -- was the room empty prior to this update?
            // (Checking cachedPlayersSnapshot.length === 1 *after* reassigning it below
            // used to just mean "the room currently has 1 player," which re-fired the
            // welcome toast on every later broadcast in a solo game, e.g. after every
            // question's LEADERBOARD_UPDATE -- not just the genuine first arrival.)
            const wasEmpty = cachedPlayersSnapshot.length === 0;

            freshPlayersList.forEach(player => {
                const exists = cachedPlayersSnapshot.some(p => p.name === player.name);
                if (!exists && !wasEmpty) {
                    toastQueue.push(player);
                    processToastQueuePipeline();
                }
            });
            cachedPlayersSnapshot = [...freshPlayersList];
            if (wasEmpty && freshPlayersList.length > 0) {
                toastQueue.push(freshPlayersList[0]); // Welcome the very first player into an empty room
                processToastQueuePipeline();
            }
        }

        function processToastQueuePipeline() {
            if (isToastPlaying || toastQueue.length === 0) return;

            isToastPlaying = true;
            const nextPlayer = toastQueue.shift();
            const slot = document.getElementById('onboarding-status-slot');

            if (!slot) {
                isToastPlaying = false;
                return;
            }

            slot.style.opacity = "0";

            setTimeout(() => {
                slot.innerHTML = `
                    <div style="display: flex; align-items: center; justify-content: flex-end; gap: 10px; transition: transform 0.3s ease; transform: scale(0.95); opacity: 0;" id="inline-toast-card">
                        <div style="text-align: right;">
                            <div style="font-size: 0.85rem; font-weight: 600; color: #00e676; letter-spacing: -0.01em;">New player joined</div>
                            <div style="font-size: 0.85rem; color: #64748b;">${nextPlayer.name}</div>
                        </div>
                        <span style="font-size: 1.1rem;">${nextPlayer.emoji || '👤'}</span>
                    </div>
                `;

                const badge = document.getElementById('inline-toast-card');
                slot.style.opacity = "1";
                if (badge) {
                    badge.style.opacity = "1";
                    badge.style.transform = "scale(1)";
                }
            }, 300);

            setTimeout(() => {
                slot.style.opacity = "0";

                setTimeout(() => {
                    // Restore whatever the current phase's real status message is,
                    // rather than a hardcoded string -- the toast is just a brief overlay.
                    slot.innerHTML = currentStatusHtml;
                    slot.style.opacity = "1";

                    setTimeout(() => {
                        isToastPlaying = false;
                        processToastQueuePipeline();
                    }, 300);
                }, 300);
            }, 3000);
        }

        // Global memory cache to lock dynamic names on screen during rapid button mashing
        let activeLabel1 = "Category 1";
        let activeLabel2 = "Category 2";
        let activeLabel3 = "Category 3";

       function switchToCategoryVotingUI(winnerModule, label1, label2, label3) {
            const panel = document.getElementById('active-content-stage');
            
            activeLabel1 = label1 || "WWII History";
            activeLabel2 = label2 || "Primary School";
            activeLabel3 = label3 || "Pop Culture";

            const displayGameName = winnerModule.replace('_', ' ').toLowerCase().replace(/\b\w/g, c => c.toUpperCase());

            currentGamePhase = 'CATEGORY_VOTE';
            // QR + join instructions stay put -- only the muted status slot changes.
            setStatusMessage(`
                <div style="font-weight: 600; color: #8892b0; margin-bottom: 2px;">TYPE "START" TO CONFIRM</div>
                <div style="font-size: 0.8rem; color: #64748b;">Skips the countdown once everyone's in</div>
            `);

            panel.innerHTML = `
                <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center;">
                    <h2 class="panel-title" style="margin-bottom: 8px;">Winner: ${displayGameName}</h2>
                    <p style="color: #64748b; font-size: 0.95rem; margin: 0 0 32px 0; font-weight: 500;">Select your sub-deck preference on your phone now</p>
                    
                    <div style="display: flex; flex-direction: column;">
                        <div class="vote-row">
                            <div class="vote-meta">
                                <span id="lbl-cat1" style="font-weight: 500; color: #ffffff;">${activeLabel1}</span>
                                <span id="ccount-CAT_1" style="color: #64748b; font-weight: 500;">0 votes (0%)</span>
                            </div>
                            <div class="progress-track"><div id="cbar-CAT_1" class="progress-fill" style="background: #ffa500;"></div></div>
                        </div>
                        <div class="vote-row">
                            <div class="vote-meta">
                                <span id="lbl-cat2" style="font-weight: 500; color: #ffffff;">${activeLabel2}</span>
                                <span id="ccount-CAT_2" style="color: #64748b; font-weight: 500;">0 votes (0%)</span>
                            </div>
                            <div class="progress-track"><div id="cbar-CAT_2" class="progress-fill" style="background: #00e676;"></div></div>
                        </div>
                        <div class="vote-row">
                            <div class="vote-meta">
                                <span id="lbl-cat3" style="font-weight: 500; color: #ffffff;">${activeLabel3}</span>
                                <span id="ccount-CAT_3" style="color: #64748b; font-weight: 500;">0 votes (0%)</span>
                            </div>
                            <div class="progress-track"><div id="cbar-CAT_3" class="progress-fill" style="background: #ff4757;"></div></div>
                        </div>
                    </div>
                </div>
            `;
        }

        function updateCategorySubElectionUI(votes, totalVotes) {
            if (!totalVotes || totalVotes === 0) return;
            const subKeys = ['CAT_1', 'CAT_2', 'CAT_3'];

            // Ensure the text strings are explicitly repainted alongside the bar widths
            const labelsMap = { 'CAT_1': activeLabel1, 'CAT_2': activeLabel2, 'CAT_3': activeLabel3 };
            const labelIds = { 'CAT_1': 'lbl-cat1', 'CAT_2': 'lbl-cat2', 'CAT_3': 'lbl-cat3' };

            subKeys.forEach(key => {
                const count = votes[key] || 0;
                const percentage = Math.round((count / totalVotes) * 100);
                
                // Keep the custom names rigidly locked to their header lines
                const nameNode = document.getElementById(labelIds[key]);
                if (nameNode) nameNode.innerText = labelsMap[key];

                document.getElementById(`cbar-${key}`).style.width = `${percentage}%`;
                document.getElementById(`ccount-${key}`).innerText = `${count} votes (${percentage}%)`;
            });
        }

        function switchToQuestionUI(categoryLabel, questionText, choiceA, choiceB, choiceC, choiceD) {
            const panel = document.getElementById('active-content-stage');
            
            currentGamePhase = 'GAME_ROUND';
            // QR + join instructions stay put -- only the muted status slot changes.
            setStatusMessage(`
                <div id="gameplay-answer-row" style="font-weight: 600; color: #64748b; transition: color 0.3s ease;">
                    Answer: <span style="font-style: italic;">Waiting for submissions...</span>
                </div>
            `);
            panel.innerHTML = `
                <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: space-between; text-align: left; min-height: 400px; box-sizing: border-box;">
                    
                    <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">
                        Active Deck: ${categoryLabel}
                    </div>

                    <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; flex: 1; display: flex; align-items: center; margin-bottom: 24px; letter-spacing: -0.01em;">
                        ${questionText}
                    </div>

                    <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 14px; width: 100%;">
                        <div id="choice-row-A" style="background: #1e222b; border: 1px solid #222630; border-radius: 8px; padding: 16px; display: flex; align-items: center; gap: 12px; transition: all 0.3s ease;">
                            <span style="background: rgba(0, 230, 118, 0.1); color: #00e676; font-weight: 700; padding: 4px 10px; border-radius: 4px; font-size: 0.85rem;">A</span>
                            <span style="font-size: 1rem; font-weight: 500; color: #e2e5e9;">${choiceA}</span>
                        </div>
                        <div id="choice-row-B" style="background: #1e222b; border: 1px solid #222630; border-radius: 8px; padding: 16px; display: flex; align-items: center; gap: 12px; transition: all 0.3s ease;">
                            <span style="background: rgba(0, 230, 118, 0.1); color: #00e676; font-weight: 700; padding: 4px 10px; border-radius: 4px; font-size: 0.85rem;">B</span>
                            <span style="font-size: 1rem; font-weight: 500; color: #e2e5e9;">${choiceB}</span>
                        </div>
                        <div id="choice-row-C" style="background: #1e222b; border: 1px solid #222630; border-radius: 8px; padding: 16px; display: flex; align-items: center; gap: 12px; transition: all 0.3s ease;">
                            <span style="background: rgba(0, 230, 118, 0.1); color: #00e676; font-weight: 700; padding: 4px 10px; border-radius: 4px; font-size: 0.85rem;">C</span>
                            <span style="font-size: 1rem; font-weight: 500; color: #e2e5e9;">${choiceC}</span>
                        </div>
                        <div id="choice-row-D" style="background: #1e222b; border: 1px solid #222630; border-radius: 8px; padding: 16px; display: flex; align-items: center; gap: 12px; transition: all 0.3s ease;">
                            <span style="background: rgba(0, 230, 118, 0.1); color: #00e676; font-weight: 700; padding: 4px 10px; border-radius: 4px; font-size: 0.85rem;">D</span>
                            <span style="font-size: 1rem; font-weight: 500; color: #e2e5e9;">${choiceD}</span>
                        </div>
                    </div>
                </div>
            `;
        }
        
function switchToGameOverUI(players) {
    const panel = document.getElementById('active-content-stage');
    const topThree = [...(players || [])].sort(compareByRank).slice(0, 3);
    const rankClasses = ['rank-gold', 'rank-silver', 'rank-bronze'];

    const rows = topThree.map((player, index) => `
        <div class="leaderboard-btn ${rankClasses[index]}">
            <span class="leaderboard-btn-name">${player.name}</span>
            <span class="leaderboard-btn-score">${player.score || 0} pts</span>
        </div>
    `).join('');

    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center;">
            <h2 class="panel-title" style="margin-bottom: 8px;">Final Leaderboard</h2>
            <p style="color: #64748b; font-size: 0.95rem; margin: 0 0 32px 0; font-weight: 500;">Thanks for playing!</p>
            <div style="display: flex; flex-direction: column; gap: 12px;">${rows}</div>
        </div>
    `;

    currentGamePhase = 'GAME_OVER';
    setStatusMessage(`<div style="font-weight: 600; color: #8892b0;">Match complete</div>`);
}

function highlightCorrectAnswerOnTV(correctLetter) {
    const ids = ['A', 'B', 'C', 'D']; 
    
    // 💡 DYNAMIC CONTENT FIX: Check if your global window question tracking object exists.
    // If it does, we pull the true choice answers; otherwise, it falls back gracefully!
    const answersMap = (window.activeQuestion && window.activeQuestion.choices) ? {
        'A': window.activeQuestion.choices.A || 'A',
        'B': window.activeQuestion.choices.B || 'B',
        'C': window.activeQuestion.choices.C || 'C',
        'D': window.activeQuestion.choices.D || 'D'
    } : { 'A': 'Choice A', 'B': 'Choice B', 'C': 'Choice C', 'D': 'Choice D' };

    ids.forEach(letter => { 
        const rowNode = document.getElementById(`choice-row-${letter}`) || null; 
        if (letter === correctLetter) { 
            if (rowNode) { 
                rowNode.style.background = "rgba(0, 230, 118, 0.08)"; 
                rowNode.style.borderColor = "#00e676"; 
            } 
        } else { 
            if (rowNode) rowNode.style.opacity = "0.15"; 
        } 
    }); 

    // REVEAL LIVE TEXT BLOCK: Overwrite the lower panel placeholder with the true historical winner! 
    const answerRow = document.getElementById('gameplay-answer-row'); 
    if (answerRow) { 
        const trueAnswerText = answersMap[correctLetter] || 'Revealed!';
        answerRow.style.color = "#ffffff"; 
        answerRow.innerHTML = `Answer: <span style="color: #00e676; font-weight: 700; text-transform: uppercase;">${trueAnswerText}</span>`; 
    } 
} // 🔓 1. THIS CLOSES THE FUNCTION SAFELY!

function playCountdownMusic() {
    const music = document.getElementById('countdown-music');
    if (!music) return;
    music.currentTime = 0;
    // Autoplay can be blocked until the page has seen a user gesture -- clicking
    // "Generate New Lobby" or "View" to get here usually satisfies that, but
    // swallow the rejection rather than letting it throw if it doesn't.
    const playPromise = music.play();
    if (playPromise && typeof playPromise.catch === 'function') {
        playPromise.catch(err => console.warn('[Audio] Countdown music blocked or failed:', err.message));
    }
}

function stopCountdownMusic() {
    const music = document.getElementById('countdown-music');
    if (!music) return;
    music.pause();
    music.currentTime = 0;
}

// Trigger dynamic assignment protocols on page wakeup
if (typeof initializeDynamicRoomSession === 'function') { 
    initializeDynamicRoomSession(); 
} 

// 🎯 2. THIS CLOSES THE MASTER DOMContentLoaded WRAPPER WE ADDED AT THE VERY TOP!
});
