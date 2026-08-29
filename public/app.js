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
            // Update this string to point directly to your exact Express GET route
            const response = await fetch('/api/create-room'); 
            const data = await response.json();
            
            if (data.success && data.roomCode) {
                // Update the active room metric tracking element label
                document.getElementById('display-room-code-badge').innerText = data.roomCode;
                
                // Fire the CSS toggle selector rule to drop the gateway screen
                document.body.setAttribute('data-view', 'game');

                                if (typeof setupWebSocket === 'function') {
                    setupWebSocket(data.roomCode);
                } else if (typeof connectToRoom === 'function') {
                    connectToRoom(data.roomCode);
                }
                
                // Let your existing WebSocket framework take over from here
                // Example: setupWebSocket(data.roomCode);
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

    // 3. SUBMIT CODE AND CONNECT AS SPECTATOR VIEW
    if (btnSubmitSpectate) {
        btnSubmitSpectate.addEventListener('click', () => {
            const enteredCode = inputRoomCode.value.trim().toUpperCase();
            if (enteredCode.length === 4) {
                document.getElementById('display-room-code-badge').innerText = enteredCode;
                
                // Transition panel view layout completely over to game tracking board
                document.body.setAttribute('data-view', 'game');
                
                // Fire off your room-joining telemetry initialization routines here...
            }
        });
    }
});

let currentActiveRoomCode = '----';
        let socket = null;
        let toastQueue = [];
        let isToastPlaying = false;
        let cachedPlayersSnapshot = [];

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
                // Listen for Phase 3 active question clock ticks to drive your 25s banner countdown!
                if (data.type === 'GAME_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft;
                }
                // Listen for the server's 25s clock expiration to highlight the correct answer choice
                if (data.type === 'REVEAL_CORRECT_ANSWER') {
                    document.getElementById('room-status-text').innerText = "Round Evaluation";
                    document.getElementById('lobby-countdown').innerText = "0s";
                    highlightCorrectAnswerOnTV(data.correctLetter);
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
                    document.getElementById('lobby-countdown').innerText = "30s"; // Reset banner clock visually
                    switchToQuestionUI(data.categoryLabel, data.questionText, data.choiceA, data.choiceB, data.choiceC, data.choiceD);
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
            const onboardingSlot = document.getElementById('onboarding-text-slot');
            if (onboardingSlot && !onboardingSlot.innerHTML.includes('START')) {
                onboardingSlot.innerHTML = `
                    <div style="font-size: 1rem; font-weight: 600; color: #00e676; letter-spacing: -0.01em; margin-bottom: 2px;">⚡ TYPE "START" TO CONFIRM AND OVERRIDE LOBBY CLOCK</div>
                    <div style="font-size: 0.85rem; color: #64748b; font-weight: 500;">When every player submits start, the system skips countdowns instantly.</div>
                `;
            }

            tbody.innerHTML = '';
            playersList.sort((a, b) => b.score - a.score);

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
            freshPlayersList.forEach(player => {
                const exists = cachedPlayersSnapshot.some(p => p.name === player.name);
                if (!exists && cachedPlayersSnapshot.length > 0) {
                    toastQueue.push(player);
                    processToastQueuePipeline();
                }
            });
            cachedPlayersSnapshot = [...freshPlayersList];
            if (cachedPlayersSnapshot.length === 1 && toastQueue.length === 0) {
                toastQueue.push(freshPlayersList[0]); // Fixes passing the exact player node instead of the array list!
                processToastQueuePipeline();
            }
        }

        function processToastQueuePipeline() {
            if (isToastPlaying || toastQueue.length === 0) return;

            isToastPlaying = true;
            const nextPlayer = toastQueue.shift();
            const slot = document.getElementById('onboarding-text-slot');

            if (!slot) {
                isToastPlaying = false;
                return;
            }

            slot.style.opacity = "0";

            setTimeout(() => {
                slot.innerHTML = `
                    <div style="display: flex; align-items: center; gap: 14px; transition: transform 0.3s ease; transform: scale(0.95); opacity: 0;" id="inline-toast-card">
                        <span style="font-size: 1.6rem; background: #1e222b; padding: 6px 12px; border-radius: 6px; border: 1px solid #222630;">${nextPlayer.emoji || '👤'}</span>
                        <div>
                            <div style="font-size: 1.2rem; font-weight: 600; color: #00e676; letter-spacing: -0.01em; text-transform: uppercase;">New Entry Arrival</div>
                            <div style="font-size: 1.0rem; color: #ffffff; font-weight: 500;"><span style="font-weight: 700; text-decoration: underline;">${nextPlayer.name}</span> has locked into the match!</div>
                        </div>
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
                    slot.innerHTML = `
                        <div style="font-size: 1rem; font-weight: 600; color: #ffffff; margin-bottom: 4px; letter-spacing: -0.01em;">SCAN TO JOIN THE LOBBY NOW</div>
                        <div style="font-size: 0.85rem; color: #64748b; font-weight: 500;">Or open your phone browser and type: <br><span style="color: #00e676; font-weight: 600;">https://voxopo.onrender.com/play</span></div>
                    `;
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
            
            // 1. DYNAMIC LOWER PANEL CLEANUP: Wipe out the raw QR image image handle from view view
            const onboardingSlot = document.getElementById('onboarding-text-slot');
            if (onboardingSlot) {
                // Find and clear out the parent white wrapping container box cleanly
                const qrBox = onboardingSlot.previousElementSibling;
                if (qrBox) qrBox.style.display = "none"; 
                
                // Rewrite text blocks to match your sleek new gameplay instruction banner row
                onboardingSlot.innerHTML = `
                    <div style="font-size: 1.1rem; font-weight: 600; color: #00e676; letter-spacing: -0.01em; margin-bottom: 2px;">⚡ TYPE "START" TO CONFIRM AND OVERRIDE CLOCK</div>
                    <div style="font-size: 0.85rem; color: #64748b; font-weight: 500;">When every player submits start, the system skips countdowns instantly.</div>
                `;
            }

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
            
            // CLEAN FOOTER: Wipe the QR code box out and inject the live gameplay text placeholder!
            const onboardingSlot = document.getElementById('onboarding-text-slot');
            if (onboardingSlot) {
                const qrBox = onboardingSlot.previousElementSibling;
                if (qrBox) qrBox.style.display = "none"; // Permanently hide white QR container block
                
                onboardingSlot.innerHTML = `
                    <div id="gameplay-answer-row" style="font-size: 1.1rem; font-weight: 600; color: #64748b; letter-spacing: -0.01em; transition: all 0.3s ease;">
                        📝 Answer: <span style="font-weight: 500; font-style: italic; font-size: 1rem;">Waiting for player submissions...</span>
                    </div>
                `;
            }
            panel.innerHTML = `
                <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: space-between; text-align: left; min-height: 400px; box-sizing: border-box;">
                    
                    <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">
                        🎯 Active Deck: ${categoryLabel}
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
        
        function highlightCorrectAnswerOnTV(correctLetter) {
            const ids = ['A', 'B', 'C', 'D'];
            
            // Map the choice letters back to their true string values for display text output
            const answersMap = { 'A': 'Great Britain', 'B': 'Germany', 'C': 'United States', 'D': 'Japan' };

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
                answerRow.style.color = "#ffffff";
                answerRow.innerHTML = `
                    📝 Answer: <span style="color: #00e676; font-weight: 700; text-transform: uppercase; background: rgba(0, 230, 118, 0.06); padding: 4px 10px; border-radius: 4px; border: 1px solid rgba(0,230,118,0.2); margin-left: 6px;">${correctLetter}) ${answersMap[correctLetter]}</span>
                `;
            }
        }

        // Trigger dynamic assignment protocols on page wakeup
        initializeDynamicRoomSession();
