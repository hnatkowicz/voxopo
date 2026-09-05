document.addEventListener("DOMContentLoaded", () => {
    document.body.setAttribute('data-view', 'gateway');

    ['countdown-music', 'category-music', 'win-music', 'declare-music'].forEach(id => {
        const audio = document.getElementById(id);
        if (audio) audio.volume = 0.5;
    });

    const btnGenerate = document.getElementById('btn-generate-lobby');
    const btnToggleSpectate = document.getElementById('btn-toggle-spectate');
    const spectateDrawer = document.getElementById('spectate-input-drawer');
    const btnSubmitSpectate = document.getElementById('btn-submit-spectate');
    const inputRoomCode = document.getElementById('input-room-code');

// 1. DYNAMIC LIFECYCLE CREATION ROUTINE
if (btnGenerate) {
    btnGenerate.addEventListener('click', async () => {
        unlockAllAudio(); // real user gesture right here -- primes playback for later WebSocket-triggered calls
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
        unlockAllAudio(); // real user gesture right here -- primes playback for later WebSocket-triggered calls
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
        // name -> 'answered' | 'correct'. Absent = invisible. Reset every new
        // question (TRANSITION_TO_QUESTION); 'answered' set on ANSWER_SUBMITTED;
        // resolved to 'correct' or deleted on REVEAL_CORRECT_ANSWER.
        let playerAnswerStatus = {};
        let currentStatusHtml = ''; // Whatever the status slot should show at rest for the current phase (toasts restore to this)
        let currentGamePhase = 'LOBBY'; // LOBBY / CATEGORY_VOTE / GAME_ROUND / GAME_OVER -- gates the "TYPE START" nudge to lobby only
        let currentEmpossDurrRound = null; // cached so EMPOSSDURR_RESUME_DISCUSSION can redraw the same round header
        let currentEmpossDurrTotalRounds = null;

        // Primes all three <audio> elements against a real user gesture (a click), so
        // later programmatic .play() calls fired from WebSocket handlers aren't blocked
        // by the browser's autoplay policy, which only allows audio after interaction.
        function unlockAllAudio() {
            ['countdown-music', 'category-music', 'win-music', 'declare-music'].forEach(id => {
                const audio = document.getElementById(id);
                if (!audio) return;
                const p = audio.play();
                if (p && typeof p.catch === 'function') {
                    p.then(() => { audio.pause(); audio.currentTime = 0; }).catch(() => {});
                }
            });
        }

        // Ranks by score, then correct-answer count, then lifetime times-fastest,
        // then join time as the final fallback -- join time is always unique, so
        // ties never leave two players sharing the same medal. Mirrors
        // gameEngine.js's compareByRank exactly.
        function compareByRank(a, b) {
            return b.score - a.score
                || (b.correctAnswers || 0) - (a.correctAnswers || 0)
                || (b.timesFastest || 0) - (a.timesFastest || 0)
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
                        switchToCategoryVotingUI(data.winningGameMode, data.categories);
                        playCategoryMusic();
                    } else if (data.gameState === 'GAME_ROUND' && data.activeQuestionData) {
                        document.getElementById('room-status-text').innerText = "Gameplay Phase";
                        document.getElementById('lobby-countdown').innerText = data.gameSecondsLeft + " s";
                        const q = data.activeQuestionData;
                        switchToQuestionUI(q.categoryLabel, q.questionText, q.choiceA, q.choiceB, q.choiceC, q.choiceD, q.questionNumber, q.totalQuestions, q.visualAsset);
                        stopCategoryMusic();
                        playCountdownMusic();
                    } else if (data.gameState === 'ROUND_REVEAL') {
                        // Reveal happened while we were away; there's no correctLetter here,
                        // so just drop into the gameplay view and wait for the next broadcast.
                        document.getElementById('room-status-text').innerText = "Round Evaluation";
                    } else if (data.gameState === 'EMPOSSDURR_ROUND') {
                        // A refreshed TV can't recover exactly which EmpossDurr
                        // sub-phase (discussion/vote/declare) was live -- the
                        // next broadcast (ready update, timer tick, etc.) will
                        // correct it within a second or two. Good enough for a
                        // rare mid-round refresh; not worth serializing the
                        // whole EmpossDurr sub-state through this payload too.
                        document.getElementById('room-status-text').innerText = "EmpossDurr in progress";
                        switchToEmpossDurrDiscussionUI(data.empossdurrRound || '?', data.empossdurrTotalRounds || '?');
                    }
                }
                if (data.type === 'LEADERBOARD_UPDATE') {
                    detectNewPlayerArrival(data.players);
                    updateLeaderboardUI(data.players);
                }
                if (data.type === 'VOTE_UPDATE') {
                    updateModuleElectionUI(data.votes, data.totalVotes);
                }
                // A player just locked in an answer -- flip their status-indicator to
                // "answered" (yellow) immediately, well before the round's reveal.
                if (data.type === 'ANSWER_SUBMITTED') {
                    playerAnswerStatus[data.playerName] = 'answered';
                    updateLeaderboardUI(cachedPlayersSnapshot);
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
                // Listen for the server's clock expiration to reveal the correct answer
                if (data.type === 'REVEAL_CORRECT_ANSWER') {
                    document.getElementById('room-status-text').innerText = "Round Evaluation";
                    document.getElementById('lobby-countdown').innerText = "0 s";
                    highlightCorrectAnswerOnTV(data.correctLetter);
                    // Mark each player's status-indicator green (correct) or back to
                    // invisible (wrong/no answer) -- the next LEADERBOARD_UPDATE (sent
                    // right after this by the server) is what actually redraws the table.
                    if (data.answers) {
                        Object.keys(data.answers).forEach(name => {
                            if (data.answers[name] === data.correctLetter) {
                                playerAnswerStatus[name] = 'correct';
                            } else {
                                delete playerAnswerStatus[name];
                            }
                        });
                    }
                    stopCountdownMusic();
                }
                if (data.type === 'TRANSITION_TO_CATEGORY_VOTE') {
                    document.getElementById('room-status-text').innerText = "Category Selection";
                    switchToCategoryVotingUI(data.winner, data.categories);
                    playCategoryMusic();
                }
                if (data.type === 'CATEGORY_VOTE_UPDATE') {
                    updateCategorySubElectionUI(data.votes, data.totalVotes);
                }
                // Listen for the server's Category Phase expiration signal to draw the question canvas
                if (data.type === 'TRANSITION_TO_QUESTION') {
                    document.getElementById('room-status-text').innerText = "Gameplay Phase";
                    document.getElementById('lobby-countdown').innerText = "30 s"; // Reset banner clock visually
                    switchToQuestionUI(data.categoryLabel, data.questionText, data.choiceA, data.choiceB, data.choiceC, data.choiceD, data.questionNumber, data.totalQuestions, data.visualAsset);
                    // Fresh question: every player's status-indicator goes back to invisible.
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    stopCategoryMusic();
                    playCountdownMusic();
                }
                // Fired once the question loop runs out of questions for this game.
                if (data.type === 'GAME_OVER') {
                    document.getElementById('room-status-text').innerText = "Game Over";
                    document.getElementById('lobby-countdown').innerText = "FINAL";
                    stopCategoryMusic();
                    stopCountdownMusic();
                    switchToGameOverUI(data.players);
                    playAudioTrack('win-music');
                }
                // Post-game consensus (everyone voting START from the game-over
                // screen) sends everyone back to the mode-election lobby -- same
                // room code and roster, every stat wiped for a genuinely fresh game.
                // Fired right before a content-missing bounce-to-lobby, so the
                // room shows *why* it just landed back on module selection
                // instead of it looking like the app silently broke. Always
                // arrives just ahead of RETURN_TO_LOBBY, but lives in a fixed
                // overlay outside #active-content-stage so that panel swap
                // doesn't wipe it out early.
                if (data.type === 'CONTENT_UNAVAILABLE') {
                    showContentWarningToast(data.message);
                }
                if (data.type === 'RETURN_TO_LOBBY') {
                    document.getElementById('room-status-text').innerText = "Connected Live";
                    document.getElementById('lobby-countdown').innerText = "60s";
                    stopCategoryMusic();
                    stopCountdownMusic();
                    switchToLobbyVoteUI();
                    // Otherwise the last round's green "correct" dot would still be
                    // sitting next to a player's name on the fresh lobby screen.
                    playerAnswerStatus = {};
                }

                // ---------- EmpossDurr ----------
                // Deliberately never carries the word or who the impostor is --
                // that content is private, delivered only to each phone via
                // /api/room-status. The TV only ever learns round numbers,
                // ready/vote *counts*, and (once someone declares) that one
                // name -- which is self-outing anyway, see EMPOSSDURR_DECLARE.
                if (data.type === 'EMPOSSDURR_ROUND_START') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Open Discussion";
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToEmpossDurrDiscussionUI(data.round, data.totalRounds);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    stopCategoryMusic();
                    stopCountdownMusic();
                }
                if (data.type === 'EMPOSSDURR_READY_UPDATE') {
                    updateEmpossDurrReadyTally(data.readyNames, data.totalActive);
                    // Reuse the same lit/dim dot as ANSWER_SUBMITTED -- a player
                    // marking themselves ready lights up exactly the same way a
                    // trivia answer does, deliberately indistinguishable.
                    playerAnswerStatus = {};
                    (data.readyNames || []).forEach(name => { playerAnswerStatus[name] = 'answered'; });
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_ACCUSE_VOTE_START') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Accuse Vote";
                    switchToEmpossDurrAccuseVoteUI(data.secondsLeft);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_ACCUSE_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    const t = document.getElementById('ed-tv-timer');
                    if (t) t.innerText = data.secondsLeft + " s";
                }
                if (data.type === 'EMPOSSDURR_VOTE_SUBMITTED') {
                    playerAnswerStatus[data.playerName] = 'answered';
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_ACCUSE_RESULT') {
                    switchToEmpossDurrAccuseResultUI(data.resolution, data.impostorName);
                    playerAnswerStatus = {};
                }
                if (data.type === 'EMPOSSDURR_RESUME_DISCUSSION') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Open Discussion";
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToEmpossDurrDiscussionUI(currentEmpossDurrRound, currentEmpossDurrTotalRounds);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_DECLARE') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Declaration!";
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    switchToEmpossDurrDeclareSplashUI(data.impostorName, data.secondsLeft);
                    stopCategoryMusic();
                    stopCountdownMusic();
                    playAudioTrack('declare-music');
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_DECLARE_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    const t = document.getElementById('ed-tv-timer');
                    if (t) t.innerText = data.secondsLeft + " s";
                }
                if (data.type === 'EMPOSSDURR_DECLARE_RESULT') {
                    switchToEmpossDurrDeclareResultUI(data.correct, data.impostorName);
                    playerAnswerStatus = {};
                }
            };
        }

        // Award-type framework: each entry in a player's `awards` map (type -> level)
        // renders via this lookup, so adding a new award later is just one more
        // entry here, no other code to touch. STREAK climbs bronze/silver/gold
        // tiers (3/6/9 in a row) as its level increases, capped at gold -- a
        // genuine accumulated achievement. SPEED3 is the opposite: a live,
        // contested status (not a streak) that belongs to whoever answered
        // fastest THIS round and is lost the instant someone else wins it.
        // Tier colors/backgrounds mirror the final-screen medal buttons
        // (.leaderboard-btn.rank-gold/silver/bronze in styles.css) so a tier
        // reads as "the same medal," not a re-skin.
        const AWARD_DISPLAY = {
            STREAK: {
                pulse: false,
                tiers: [
                    { threshold: 3, color: '#cd7f32', bg: 'rgba(205, 127, 50, 0.08)' },  // bronze
                    { threshold: 6, color: '#b8bcc4', bg: 'rgba(184, 188, 196, 0.08)' }, // silver
                    { threshold: 9, color: '#d4af37', bg: 'rgba(212, 175, 55, 0.08)' }   // gold
                ]
            },
            SPEED3: { pulse: false, title: 'Fastest answer this round', imageBadge: true }
        };

        function renderAwardBadges(awards) {
            if (!awards) return '';
            return Object.keys(AWARD_DISPLAY).map(type => {
                const level = awards[type] || 0;
                if (level <= 0) return '';
                const def = AWARD_DISPLAY[type];
                const classes = ['award-badge'];
                if (def.pulse) classes.push('award-pulse');
                if (def.imageBadge) classes.push('award-badge-icon');
                let content = '';
                let title = def.title || '';
                let styleAttr = '';
                if (def.tiers) {
                    const tier = def.tiers[Math.min(level, def.tiers.length) - 1];
                    content = String(tier.threshold);
                    title = `${tier.threshold} correct answers in a row`;
                    styleAttr = ` style="background: ${tier.bg}; border: 2px solid ${tier.color}; color: ${tier.color};"`;
                }
                return `<span class="${classes.join(' ')}"${styleAttr} title="${title}">${content}</span>`;
            }).join('');
        }

        function updateLeaderboardUI(playersList) {
            document.getElementById('lobby-player-count').innerText = playersList.length;
            const tbody = document.getElementById('leaderboard-rows');

            if (!playersList || playersList.length === 0) {
                tbody.innerHTML = `
                    <tr>
                        <td class="indicator-col"></td>
                        <td class="rank-col" style="color: #222630;">—</td>
                        <td class="awards-col"></td>
                        <td class="identity-col"><span class="identity-wrap"><span class="player-emoji" style="color: #222630;">👤</span><span class="player-name" style="color: #64748b; font-style: italic;">Lobby is empty...</span></span></td>
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
                const status = playerAnswerStatus[player.name]; // 'answered' | 'correct' | undefined
                const indicatorClass = status === 'correct' ? 'correct' : (status === 'answered' ? 'answered' : '');
                row.innerHTML = `
                    <td class="indicator-col"><span class="status-indicator ${indicatorClass}"></span></td>
                    <td class="rank-col">${index + 1}</td>
                    <td class="awards-col">${renderAwardBadges(player.awards)}</td>
                    <td class="identity-col"><span class="identity-wrap"><span class="player-emoji">${player.emoji || '👤'}</span><span class="player-name">${player.name}</span></span></td>
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

        let contentWarningHideTimer = null;
        function showContentWarningToast(message) {
            const card = document.getElementById('content-warning-card');
            const text = document.getElementById('content-warning-text');
            if (!card || !text) return;

            text.innerText = message;
            card.classList.add('active');

            // Re-triggerable -- a second warning while one's already showing
            // just resets the clock rather than stacking or getting cut short.
            if (contentWarningHideTimer) clearTimeout(contentWarningHideTimer);
            contentWarningHideTimer = setTimeout(() => {
                card.classList.remove('active');
                contentWarningHideTimer = null;
            }, 10000);
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

        // Global memory cache to lock dynamic category labels on screen during rapid
        // button mashing, keyed by the category's real key (e.g. WWII_HISTORY) rather
        // than fixed cat1/2/3 slots -- supports any number of categories per mode.
        let activeCategoryLabels = {};
        const CATEGORY_BAR_COLORS = ['#ffa500', '#00e676', '#ff4757', '#2d9cdb', '#bb6bd9', '#f9c74f'];

        // Canonical display names, matching exactly what the lobby's own module
        // election rows show (index.html). A generic key.replace('_', ' ') +
        // title-case transform used to derive this instead, which silently turned
        // TRIVI_YEAH into "Trivi Yeah" -- losing the hyphen and the exclamation mark.
        const GAME_MODE_LABELS = {
            TRIVI_YEAH: 'Trivi-yeah!',
            COUNTRY_MONKEY: 'Country Monkey',
            EMPOSSDURR: 'EmpossDurr',
            FLAG_ME_DOWN: 'Flag Me Down',
            ON_THE_SPECTRUM: 'On The Spectrum'
        };

        function switchToCategoryVotingUI(winnerModule, categories) {
            const panel = document.getElementById('active-content-stage');
            const categoryList = categories || [];

            activeCategoryLabels = {};
            categoryList.forEach(c => { activeCategoryLabels[c.key] = c.label; });

            const displayGameName = GAME_MODE_LABELS[winnerModule] || winnerModule;

            currentGamePhase = 'CATEGORY_VOTE';
            // The category-screen on the phone has no free-text input (only the
            // lobby's game-screen does), so there's no way to actually act on a
            // "TYPE START" nudge here -- leave the status slot blank instead of
            // showing an instruction nobody can follow.
            setStatusMessage('');

            const rows = categoryList.map((c, index) => `
                <div class="vote-row">
                    <div class="vote-meta">
                        <span id="lbl-${c.key}" style="font-weight: 500; color: #ffffff;">${c.label}</span>
                        <span id="ccount-${c.key}" style="color: #64748b; font-weight: 500;">0 votes (0%)</span>
                    </div>
                    <div class="progress-track"><div id="cbar-${c.key}" class="progress-fill" style="background: ${CATEGORY_BAR_COLORS[index % CATEGORY_BAR_COLORS.length]};"></div></div>
                </div>
            `).join('');

            panel.innerHTML = `
                <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center;">
                    <h2 class="panel-title" style="margin-bottom: 8px;">Winner: ${displayGameName}</h2>
                    <p style="color: #64748b; font-size: 0.95rem; margin: 0 0 32px 0; font-weight: 500;">Select your sub-deck preference on your phone now</p>

                    <div style="display: flex; flex-direction: column;">
                        ${rows}
                    </div>
                </div>
            `;
        }

        function updateCategorySubElectionUI(votes, totalVotes) {
            if (!totalVotes || totalVotes === 0) return;

            Object.keys(votes).forEach(key => {
                const count = votes[key] || 0;
                const percentage = Math.round((count / totalVotes) * 100);

                // Keep the custom names rigidly locked to their header lines
                const nameNode = document.getElementById(`lbl-${key}`);
                if (nameNode && activeCategoryLabels[key]) nameNode.innerText = activeCategoryLabels[key];

                const barNode = document.getElementById(`cbar-${key}`);
                if (barNode) barNode.style.width = `${percentage}%`;
                const countNode = document.getElementById(`ccount-${key}`);
                if (countNode) countNode.innerText = `${count} votes (${percentage}%)`;
            });
        }

        function switchToQuestionUI(categoryLabel, questionText, choiceA, choiceB, choiceC, choiceD, questionNumber, totalQuestions, visualAsset) {
            const panel = document.getElementById('active-content-stage');

            currentGamePhase = 'GAME_ROUND';
            // QR + join instructions stay put -- only the muted status slot changes. The
            // correct answer is already shown by highlighting the choice buttons below, so
            // repeating it here as text would just be redundant -- this stays as progress
            // (Question X/Y) through both the waiting and reveal states of the round.
            setStatusMessage(`
                <div style="font-weight: 600; color: #64748b;">Question ${questionNumber || '?'} / ${totalQuestions || '?'}</div>
            `);

            // Choice-row markup is identical whether or not there's a visual_asset --
            // reveal always works by highlighting the correct row (highlightCorrectAnswerOnTV),
            // so this stays the single source of truth for what "the choices" look like.
            const choiceGrid = `
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
            `;

            // Visual questions (Country Monkey's highlighted-map SVGs, etc.) put the
            // image on the left and the choice buttons on the right, instead of
            // stacking the choices under a full-width question block -- naming the
            // country in text next to its own map was redundant with the buttons.
            if (visualAsset) {
                panel.innerHTML = `
                    <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: row; align-items: center; gap: 32px; box-sizing: border-box; min-height: 400px;">
                        <div style="flex: 1; text-align: center;">
                            <img src="${visualAsset}" alt="" style="max-width: 100%; max-height: 340px; border-radius: 8px;">
                        </div>
                        <div style="flex: 1; text-align: left; display: flex; flex-direction: column; gap: 16px;">
                            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em;">
                                Active Deck: ${categoryLabel}
                            </div>
                            <div style="font-size: 1.2rem; font-weight: 600; color: #ffffff; line-height: 1.3; letter-spacing: -0.01em;">
                                ${questionText}
                            </div>
                            ${choiceGrid}
                        </div>
                    </div>
                `;
                return;
            }

            panel.innerHTML = `
                <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: space-between; text-align: left; min-height: 400px; box-sizing: border-box;">

                    <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">
                        Active Deck: ${categoryLabel}
                    </div>

                    <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; flex: 1; display: flex; align-items: center; margin-bottom: 24px; letter-spacing: -0.01em;">
                        ${questionText}
                    </div>

                    ${choiceGrid}
                </div>
            `;
        }
        
// ---------- EmpossDurr ----------
// Deliberately sparse -- there's no question text or visual asset to show
// (the secret word/clue is private, phone-only), so the panel is mostly a
// calm round counter and a live ready-tally instead of dense content. See
// design chat: reusing the same panel chrome as every other mode rather
// than building new layout, just with leaner content dropped into it.
function switchToEmpossDurrDiscussionUI(round, totalRounds) {
    currentEmpossDurrRound = round;
    currentEmpossDurrTotalRounds = totalRounds;
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'EMPOSSDURR_ROUND';
    setStatusMessage(`
        <div style="font-weight: 600; color: #64748b;">Round ${round} / ${totalRounds}</div>
    `);
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 8px;">
                Active Deck: EmpossDurr
            </div>
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 20px;">
                Give your one-word clues out loud
            </div>
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 6px;">Round ${round} of ${totalRounds}</div>
            <div id="ed-tv-ready-tally" style="font-size: 1.1rem; font-weight: 600; color: #ffa500;">0 / 0 ready to vote</div>
        </div>
    `;
}

function updateEmpossDurrReadyTally(readyNames, totalActive) {
    const el = document.getElementById('ed-tv-ready-tally');
    if (el) el.innerText = `${(readyNames || []).length} / ${totalActive || 0} ready to vote`;
}

function switchToEmpossDurrAccuseVoteUI(secondsLeft) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 8px;">
                Accuse Vote In Progress
            </div>
            <div id="ed-tv-timer" style="font-size: 3rem; font-weight: 700; color: #ffffff;">${secondsLeft} s</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-top: 12px;">Votes are secret -- watch names light up below as everyone locks in.</div>
        </div>
    `;
}

function switchToEmpossDurrAccuseResultUI(resolution, impostorName) {
    const panel = document.getElementById('active-content-stage');
    let headline, sub;
    if (resolution.type === 'accuse') {
        headline = `${resolution.targetName} was accused!`;
        sub = resolution.targetName === impostorName
            ? "They WERE the impostor. Round over."
            : "They were NOT the impostor -- the real one escapes with a bonus.";
    } else {
        headline = "The group couldn't agree.";
        sub = "Back to discussion -- the impostor survives this vote.";
    }
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 12px;">${headline}</div>
            <div style="font-size: 1rem; color: #94a3b8;">${sub}</div>
        </div>
    `;
}

// The one moment allowed to interrupt everything else -- a near-full-panel
// takeover naming the impostor. Not a secret leak: declaring is inherently
// self-outing in person (everyone watches them speak up), same as the
// phone's splash.
function switchToEmpossDurrDeclareSplashUI(impostorName, secondsLeft) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box; background: rgba(255, 165, 0, 0.06); border-color: rgba(255, 165, 0, 0.4);">
            <div style="font-size: 3rem; margin-bottom: 12px;">🕵️</div>
            <div style="font-size: 2rem; font-weight: 700; color: #ffa500; letter-spacing: -0.02em; margin-bottom: 12px;">${impostorName} DECLARES!</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 20px;">Everyone but the impostor is voting: was their guess correct?</div>
            <div id="ed-tv-timer" style="font-size: 2.2rem; font-weight: 700; color: #ffffff;">${secondsLeft} s</div>
        </div>
    `;
}

function switchToEmpossDurrDeclareResultUI(correct, impostorName) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 12px;">
                ${correct ? `${impostorName} guessed correctly!` : `${impostorName} guessed wrong!`}
            </div>
            <div style="font-size: 1rem; color: #94a3b8;">Round over -- next round starting shortly.</div>
        </div>
    `;
}

// Rebuilds the "Active Module Election" panel from scratch -- switchToCategoryVotingUI/
// switchToQuestionUI/switchToGameOverUI all overwrite this same #active-content-stage,
// so returning to the lobby (post-game consensus) needs to reconstruct the exact
// markup index.html originally shipped with, not just toggle visibility.
function switchToLobbyVoteUI() {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box">
            <h2 class="panel-title">Active Module Election</h2>
            <div style="display: flex; flex-direction: column;">
                <div class="vote-row">
                    <div class="vote-meta"><span>Trivi-yeah! <span class="module-descriptor">Multiple-choice trivia across a mix of subjects.</span></span><span id="vcount-TRIVI_YEAH" style="color: #64748b;">0 votes (0%)</span></div>
                    <div class="progress-track"><div id="vbar-TRIVI_YEAH" class="progress-fill"></div></div>
                </div>
                <div class="vote-row">
                    <div class="vote-meta"><span>Country Monkey <span class="module-descriptor">Guess the highlighted country on the map.</span></span><span id="vcount-COUNTRY_MONKEY" style="color: #64748b;">0 votes (0%)</span></div>
                    <div class="progress-track"><div id="vbar-COUNTRY_MONKEY" class="progress-fill" style="background: #ffa500;"></div></div>
                </div>
                <div class="vote-row">
                    <div class="vote-meta"><span>EmpossDurr <span class="module-descriptor">Find the impostor hiding in the group.</span></span><span id="vcount-EMPOSSDURR" style="color: #64748b;">0 votes (0%)</span></div>
                    <div class="progress-track"><div id="vbar-EMPOSSDURR" class="progress-fill" style="background: #ff4757;"></div></div>
                </div>
                <div class="vote-row">
                    <div class="vote-meta"><span>Flag Me Down <span class="module-descriptor">World and historical flags, banners, and symbols.</span></span><span id="vcount-FLAG_ME_DOWN" style="color: #64748b;">0 votes (0%)</span></div>
                    <div class="progress-track"><div id="vbar-FLAG_ME_DOWN" class="progress-fill" style="background: #2d9cdb;"></div></div>
                </div>
                <div class="vote-row">
                    <div class="vote-meta"><span>On The Spectrum <span class="module-descriptor">Guess where it lands between two extremes.</span></span><span id="vcount-ON_THE_SPECTRUM" style="color: #64748b;">0 votes (0%)</span></div>
                    <div class="progress-track"><div id="vbar-ON_THE_SPECTRUM" class="progress-fill" style="background: #bb6bd9;"></div></div>
                </div>
            </div>
        </div>
    `;
    currentGamePhase = 'LOBBY';
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
            <div style="display: flex; flex-direction: column; gap: 36px;">${rows}</div>
        </div>
    `;

    currentGamePhase = 'GAME_OVER';
    setStatusMessage(`<div style="font-weight: 600; color: #8892b0;">Match complete</div>`);
}

function highlightCorrectAnswerOnTV(correctLetter) {
    // Highlighting the correct choice row below is the whole reveal -- the status
    // slot's "Question X/Y" progress indicator stays as-is through this, no
    // redundant "Answer: X" text repeated elsewhere.
    const ids = ['A', 'B', 'C', 'D'];

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
}

function playAudioTrack(elementId) {
    const audio = document.getElementById(elementId);
    if (!audio) return;
    audio.currentTime = 0;
    // Autoplay can be blocked until the page has seen a user gesture -- clicking
    // "Generate New Lobby" or "View" to get here usually satisfies that, but
    // swallow the rejection rather than letting it throw if it doesn't.
    const playPromise = audio.play();
    if (playPromise && typeof playPromise.catch === 'function') {
        playPromise.catch(err => console.warn(`[Audio] ${elementId} blocked or failed:`, err.message));
    }
}

function stopAudioTrack(elementId) {
    const audio = document.getElementById(elementId);
    if (!audio) return;
    audio.pause();
    audio.currentTime = 0;
}

function playCountdownMusic() { playAudioTrack('countdown-music'); }
function stopCountdownMusic() { stopAudioTrack('countdown-music'); }
function playCategoryMusic() { playAudioTrack('category-music'); }
function stopCategoryMusic() { stopAudioTrack('category-music'); }

// Trigger dynamic assignment protocols on page wakeup
if (typeof initializeDynamicRoomSession === 'function') { 
    initializeDynamicRoomSession(); 
} 

// 🎯 2. THIS CLOSES THE MASTER DOMContentLoaded WRAPPER WE ADDED AT THE VERY TOP!
});
