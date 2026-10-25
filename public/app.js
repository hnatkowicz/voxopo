document.addEventListener("DOMContentLoaded", () => {
    document.body.setAttribute('data-view', 'gateway');
    document.getElementById('active-content-stage').innerHTML = window.renderModeElectionTiles();

    ['countdown-music', 'category-music', 'win-music', 'declare-music', 'final-wager-timer-sound', 'answer-warning-sound', 'doubler-reveal-sound', 'doubler-correct-sound', 'doubler-wrong-sound', 'break-return-sound'].forEach(id => {
        const audio = document.getElementById(id);
        if (audio) audio.volume = 0.5;
    });
    // The category-vote music is the first thing a room hears, and the file is
    // mastered louder than the rest -- half again (Randy, Oct 2026).
    const categoryMusic = document.getElementById('category-music');
    if (categoryMusic) categoryMusic.volume = 0.25;

    // Live counts on the start screen, refreshed while it's showing.
    const refreshLiveCounts = () => {
        if (document.body.getAttribute('data-view') !== 'gateway') return;
        fetch('/api/live-counts').then(r => r.json()).then(c => {
            document.getElementById('global-active-rooms').innerText = c.rooms;
            document.getElementById('global-players-count').innerText = c.players;
        }).catch(() => {});
    };
    refreshLiveCounts();
    setInterval(refreshLiveCounts, 15000);

    const btnSubmitSpectate = document.getElementById('btn-submit-spectate');
    const inputRoomCode = document.getElementById('input-room-code');

// 1. SUBMIT MANUALLY ENTERED LOBBY CODE -- the only way into a game from the
// TV now. Room creation lives exclusively on /host, gated by an access code;
// the TV only ever joins a lobby that already exists.
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

        let socket = null;
        let toastQueue = [];
        let isToastPlaying = false;
        let cachedPlayersSnapshot = [];
        // name -> 'answered' | 'correct'. Absent = invisible. Reset every new
        // question (TRANSITION_TO_QUESTION); 'answered' set on ANSWER_SUBMITTED;
        // resolved to 'correct' or deleted on REVEAL_CORRECT_ANSWER.
        let playerAnswerStatus = {};
        let currentStatusHtml = ''; // Whatever the status slot should show at rest for the current phase (toasts restore to this)
        let contentWarningHideTimer = null; // set while a notice is showing in the status slot
        let contentWarningHtml = '';
        let currentGamePhase = 'LOBBY'; // LOBBY / CATEGORY_VOTE / GAME_ROUND / GAME_OVER -- gates the "PRESS START" nudge to lobby only
        // Venue profile from the access code that opened this room (ROOM_VENUE):
        // a pub gets its name/logo on screen and a bigger QR code, and only
        // the modes it offers appear in the lobby. null = home, every mode.
        let roomVenue = null;
        let roomAllowedModes = null;
        // body.tv-lobby drives the pub lobby look (banner + big QR code); every
        // screen switch sets currentGamePhase, so one cheap check covers them all.
        setInterval(() => document.body.classList.toggle('tv-lobby', currentGamePhase === 'LOBBY'), 300);
        let currentEmpossDurrRound = null; // cached so EMPOSSDURR_RESUME_DISCUSSION can redraw the same round header
        let currentEmpossDurrTotalRounds = null;
        let currentEmpossDurrStarterName = null; // same reason -- resuming discussion keeps the same starter, no new broadcast for it
        // True only while a Trivi-Yeah II tile's ANSWERING countdown is live
        // (normal or Doubler) -- gates the 3-tone warning chime so it never
        // fires during classic Trivi-yeah!, side bets, or the Final Wager
        // (which has its own dedicated timer sound). Armed on
        // TRIVI_YEAH_II_ANSWERS_REVEAL, disarmed the moment that tile resolves.
        let ty2AnswerCountdownActive = false;
        // Same idea for Profiler: armed while its answer or pick clock is
        // live, so the 3-second chime warns anyone who hasn't locked in yet.
        let profilerCountdownActive = false;
        // Last secondsLeft value seen on a GAME_TIMER_TICK, so the chime can
        // tell a natural 4->3 tick (time's genuinely running low) apart from
        // a fast-forward snap landing on "3" because everyone already
        // answered -- the family doesn't want the chime firing on the
        // latter, since the round's already resolving.
        let lastSeenGameSecondsLeft = null;

        // Primes all three <audio> elements against a real user gesture (a click), so
        // later programmatic .play() calls fired from WebSocket handlers aren't blocked
        // by the browser's autoplay policy, which only allows audio after interaction.
        // Primed MUTED: playing them audibly made a burst of every game
        // sound at once when the TV joined the lobby (family playtest).
        // A muted play still counts as the user-gesture unlock.
        function unlockAllAudio() {
            ['countdown-music', 'category-music', 'win-music', 'declare-music', 'final-wager-timer-sound', 'answer-warning-sound', 'doubler-reveal-sound', 'doubler-correct-sound', 'doubler-wrong-sound', 'vote-sound', 'impostor-correct-sound', 'break-return-sound'].forEach(id => {
                const audio = document.getElementById(id);
                if (!audio) return;
                audio.muted = true;
                const p = audio.play();
                const reset = () => { audio.pause(); audio.currentTime = 0; audio.muted = false; };
                if (p && typeof p.then === 'function') {
                    p.then(reset).catch(() => { audio.muted = false; });
                } else {
                    reset();
                }
            });
        }

        // Ranks by score, then correct-answer count, then lifetime times-fastest,
        // then join time as the final fallback -- join time is always unique, so
        // ties never leave two players sharing the same medal. Mirrors
        // gameEngine.js's compareByRank exactly.
        function compareByRank(a, b) {
            return b.score - a.score
                || (b.bullseyeCount || 0) - (a.bullseyeCount || 0)
                || (b.correctAnswers || 0) - (a.correctAnswers || 0)
                || (b.timesFastest || 0) - (a.timesFastest || 0)
                || new Date(a.joinedAt) - new Date(b.joinedAt);
        }

        // Sets the muted, right-hand status message next to the permanent QR block.
        // The QR + join instructions on the left never change, so late arrivals can
        // always scan in -- this slot is the only thing that varies by phase.
        function setStatusMessage(html) {
            currentStatusHtml = html;
            // A notice is showing in the slot -- remember the new message and
            // show it once the notice clears (see showContentWarningToast).
            if (contentWarningHideTimer) return;
            const slot = document.getElementById('onboarding-status-slot');
            if (slot) slot.innerHTML = html;
        }

        // The in-room QR code carries the room code (play?room=1234), so a
        // scan fills it in on the phone. Drawn locally by public/vendor/qrcode.js
        // (MIT, credited on /info); falls back to the plain /play qr.png.
        function showRoomQrCode(roomCode) {
            const image = document.getElementById('room-qr-image');
            if (!image || typeof window.qrcode !== 'function') return;
            try {
                const qr = window.qrcode(0, 'M');
                qr.addData(`${window.location.origin}/play?room=${encodeURIComponent(roomCode)}`);
                qr.make();
                const svg = qr.createSvgTag({ cellSize: 4, margin: 2, scalable: true });
                image.src = 'data:image/svg+xml;charset=utf-8,' + encodeURIComponent(svg);
            } catch (error) {
                console.warn('[QR] Could not draw the room QR code; keeping the plain one.', error);
            }
        }

        function showEndVoteBanner(votes, needed) {
            let banner = document.getElementById('end-vote-banner');
            if (!votes) { if (banner) banner.remove(); return; }
            if (!banner) {
                banner = document.createElement('div');
                banner.id = 'end-vote-banner';
                banner.style.cssText = 'position: fixed; top: 14px; left: 50%; transform: translateX(-50%); z-index: 50; background: #1e222b; border: 1px solid #334155; border-radius: 999px; padding: 8px 18px; color: #cbd5e1; font-size: 0.95rem; font-weight: 600;';
                document.body.appendChild(banner);
            }
            banner.innerText = `🚪 ${votes} of ${needed} needed to end this game`;
        }

        let venueBreakNotesTimer = null;
        function showVenueBreakUI(data) {
            if (venueBreakNotesTimer) { clearInterval(venueBreakNotesTimer); venueBreakNotesTimer = null; }
            // No QR block here: the TV's regular "Scan to join" strip stays on
            // screen, and the room's messages get the space (Randy, Oct 2026).
            const venue = data.venue || {};
            // No notes set in /admin? The venue's tagline fills the slot, and
            // with neither the slot closes up (Randy's first test: a big gap).
            const notes = (data.notes && data.notes.length) ? data.notes : (venue.tagline ? [venue.tagline] : []);
            document.getElementById('active-content-stage').innerHTML = `
                <div class="panel-box" style="padding: 32px 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box; gap: 12px;">
                    ${venue.logoUrl ? `<img src="${venue.logoUrl}" alt="" style="height: 140px; width: auto; max-width: 80%; object-fit: contain;" onerror="this.remove()">` : ''}
                    <div style="font-size: 2.2rem; font-weight: 800; color: #ffffff;">☕ Break time${venue.name ? ` <span style="color: #94a3b8; font-weight: 600;">at ${escapeHtml(venue.name)}</span>` : ''}</div>
                    ${notes.length ? `<div id="venue-break-note" style="font-size: 2.8rem; font-weight: 700; line-height: 1.25; color: #facc15; min-height: 2.5em; max-width: 92%; display: flex; align-items: center; justify-content: center; transition: opacity 0.4s;"></div>` : ''}
                    <div id="venue-break-headsup" style="display: none; font-size: 1.6rem; font-weight: 800; color: #00e676;">⏰ Back in 30 seconds!</div>
                    <div id="venue-break-tally" style="color: #94a3b8; font-size: 1rem;">${data.backCount || 0} of ${data.totalPlayers || 0} are back</div>
                    <div style="color: #64748b; font-size: 0.9rem;">Tap "I'm back" on your phone -- we pick up when everyone has, or when the clock runs out.</div>
                </div>
            `;
            // The venue's notes, one at a time, every 10 seconds.
            const noteEl = document.getElementById('venue-break-note');
            let index = 0;
            const showNote = () => {
                if (!noteEl || !noteEl.isConnected) return;
                noteEl.style.opacity = 0;
                setTimeout(() => { noteEl.innerText = notes[index % notes.length]; noteEl.style.opacity = 1; index++; }, 400);
            };
            if (noteEl) showNote();
            if (noteEl && notes.length > 1) venueBreakNotesTimer = setInterval(showNote, 10000);
        }

        function connectWebSocketEngine(roomCode) {
            showRoomQrCode(roomCode);
            socket = new WebSocket(`wss://${window.location.host}`);
            
            socket.onopen = () => {
                document.getElementById('room-status-text').innerText = "Connected Live";
                socket.send(JSON.stringify({ type: 'REGISTER_SCREEN', roomCode: roomCode }));
            };

            socket.onmessage = (event) => {
                const data = JSON.parse(event.data);
                console.log("[WebSocket API Event Received]", data);

                // The room's gone -- everyone left, or an admin force-reset it.
                // Bounce back to the gateway screen and drop this connection;
                // there's nothing left on the other end to stay wired to.
                if (data.type === 'ROOM_CLOSED') {
                    document.body.setAttribute('data-view', 'gateway');
                    socket.close();
                    return;
                }

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
                        switchToQuestionUI(q.categoryLabel, q.questionText, q.choiceA, q.choiceB, q.choiceC, q.choiceD, q.questionNumber, q.totalQuestions, q.visualAsset, q.brand);
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
                    } else if (data.gameState === 'ON_THE_SPECTRUM_ROUND') {
                        // Same reasoning as EmpossDurr above -- a refreshed TV
                        // can't recover exactly which sub-phase was live, and
                        // the next real broadcast corrects it within a second.
                        document.getElementById('room-status-text').innerText = "On the Spectrum in progress";
                    } else if (data.gameState === 'TRIVI_YEAH_II_ROUND') {
                        // Same lean-reconnect reasoning as EmpossDurr/On the Spectrum
                        // above -- the next pick/reveal broadcast corrects the board
                        // within a few seconds, not worth serializing the full staged-
                        // reveal state through this payload too.
                        document.getElementById('room-status-text').innerText = "Thinking Pants in progress";
                    } else if (data.gameState === 'PROFILER_ROUND' && data.profiler) {
                        // Unlike the modes above, Profiler's snapshot carries
                        // everything the current phase needs, so a reloaded TV
                        // redraws exactly what everyone else is looking at.
                        restoreProfilerTV(data.profiler);
                    }
                }
                if (data.type === 'ROOM_VENUE') {
                    applyRoomVenue(data.venue, data.allowedModes);
                }
                if (data.type === 'LEADERBOARD_UPDATE') {
                    detectNewPlayerArrival(data.players);
                    updateLeaderboardUI(data.players);
                }
                if (data.type === 'VOTE_UPDATE') {
                    updateModuleElectionUI(data.votes, data.totalVotes);
                }
                if (data.type === 'RETURN_VOTE_UPDATE') {
                    const tally = document.getElementById('return-vote-tally');
                    if (tally) tally.innerText = `${data.votedCount} / ${data.totalNeeded} have voted`;
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
                    // The family asked for NO music through a Trivi-Yeah II tile's
                    // countdown -- just a light three-tone cue near the end so the
                    // room still knows the question is live. Only on a genuine
                    // 4->3 tick, never when "3" arrives via the fast-forward snap
                    // (everyone already answered -- nothing left to warn about).
                    // The server flags that snap (fastForward) because the
                    // 4->3 check alone misses a snap that lands right after
                    // the "4 s" tick, when everyone answers with 4s left.
                    const secondsNum = parseInt(data.secondsLeft, 10);
                    if ((ty2AnswerCountdownActive || profilerCountdownActive) && secondsNum === 3 && lastSeenGameSecondsLeft === 4 && !data.fastForward) {
                        playAudioTrack('answer-warning-sound');
                    }
                    lastSeenGameSecondsLeft = secondsNum;
                }
                // Listen for the server's clock expiration to reveal the correct answer
                // Time's up: the answer buttons fill to show how the room split,
                // a beat before the right one lights (see answerSpreadFirst).
                if (data.type === 'ANSWER_SPREAD') {
                    stopCountdownMusic();
                    ty2AnswerCountdownActive = false;
                    if (currentGamePhase === 'FLAG_ME_DOWN' && flagMeDownTV) {
                        flagMeDownTV.spread = data;
                        renderFlagMeDownTV();
                    } else {
                        drawAnswerSpread(data.counts, data.total, letter => document.getElementById(`choice-row-${letter}`));
                    }
                }
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
                    switchToQuestionUI(data.categoryLabel, data.questionText, data.choiceA, data.choiceB, data.choiceC, data.choiceD, data.questionNumber, data.totalQuestions, data.visualAsset, data.brand);
                    preloadQuestionImage(data.preloadAsset); // the next question's picture
                    // Fresh question: every player's status-indicator goes back to invisible.
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    stopCategoryMusic();
                    playCountdownMusic();
                }
                // Fired once the question loop runs out of questions for this game.
                // Venue break (Randy, Oct 2026): the venue's big logo, the
                // join QR code, a countdown and the venue's notes in rotation.
                if (data.type === 'VENUE_BREAK_START') {
                    document.getElementById('room-status-text').innerText = "Break Time";
                    stopCountdownMusic();
                    showVenueBreakUI(data);
                }
                if (data.type === 'VENUE_BREAK_UPDATE') {
                    const tally = document.getElementById('venue-break-tally');
                    if (tally) tally.innerText = `${data.backCount} of ${data.totalPlayers} are back`;
                }
                // Vote to end the game: a quiet line on the TV once anyone has voted.
                if (data.type === 'END_VOTE_UPDATE') showEndVoteBanner(data.votes, data.needed);
                if (data.type === 'RETURN_TO_LOBBY' || data.type === 'GAME_OVER') showEndVoteBanner(0);
                if (data.type === 'VENUE_BREAK_HEADSUP') {
                    playAudioTrack('break-return-sound');
                    const headsUp = document.getElementById('venue-break-headsup');
                    if (headsUp) headsUp.style.display = 'block';
                }
                if (data.type === 'VENUE_BREAK_END') {
                    if (venueBreakNotesTimer) { clearInterval(venueBreakNotesTimer); venueBreakNotesTimer = null; }
                }
                if (data.type === 'GAME_OVER') {
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Game Over";
                    document.getElementById('lobby-countdown').innerText = "FINAL";
                    stopCategoryMusic();
                    stopCountdownMusic();
                    stopAudioTrack('final-wager-timer-sound');
                    switchToGameOverUI(data.players, data.brand);
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
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Connected Live";
                    document.getElementById('lobby-countdown').innerText = "60s";
                    stopCategoryMusic();
                    stopCountdownMusic();
                    switchToLobbyVoteUI();
                    // Otherwise the last round's green "correct" dot would still be
                    // sitting next to a player's name on the fresh lobby screen.
                    playerAnswerStatus = {};
                }

                // ---------- Trivi-Yeah II (Jeopardy-style grid, prototype) ----------
                // Two view modes within #active-content-stage: the grid (picking
                // phase) and a focused "spotlight" panel (category/question/answers),
                // reusing the exact choice-row markup/ids classic Trivi-yeah! already
                // uses -- highlightCorrectAnswerOnTV works unmodified on either.
                if (data.type === 'TRANSITION_TO_TRIVI_YEAH_II') {
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToTriviYeahIIBoardUI(data.grid, data.currentPicker, data.round, data.totalRounds);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    stopCategoryMusic();
                    stopCountdownMusic();
                }
                if (data.type === 'TRIVI_YEAH_II_ROUND_TRANSITION') {
                    showTriviYeahIIRoundTransitionUI(data.completedRound, data.nextRound, data.totalRounds);
                    stopCountdownMusic();
                }
                if (data.type === 'TRIVI_YEAH_II_CATEGORY_REVEAL') {
                    activeTrapTV = null; // a fresh tile -- any trap shows up via its own reveal
                    showTriviYeahIISpotlightUI({ stage: 'category', categoryLabel: data.categoryLabel, points: data.points, visualAsset: null });
                    preloadQuestionImage(data.preloadAsset);
                }
                if (data.type === 'TRIVI_YEAH_II_TRAP_SETTING') {
                    showTriviYeahIITrapSettingUI(data.setter);
                }
                if (data.type === 'TRIVI_YEAH_II_TRAP_REVEAL') {
                    activeTrapTV = data;
                    document.getElementById('lobby-countdown').innerText = ''; // the setting clock's last tick
                    showTriviYeahIITrapRevealUI(data);
                }
                if (data.type === 'TRIVI_YEAH_II_QUESTION_REVEAL') {
                    showTriviYeahIISpotlightUI({ stage: 'question', questionText: data.questionText, points: data.points, visualAsset: data.visualAsset || null });
                    addTriviYeahIITrapBanner();
                }
                if (data.type === 'TRIVI_YEAH_II_ANSWERS_REVEAL') {
                    showTriviYeahIISpotlightUI({ stage: 'answers', questionText: data.questionText, points: data.points, choiceA: data.choiceA, choiceB: data.choiceB, choiceC: data.choiceC, choiceD: data.choiceD });
                    addTriviYeahIITrapBanner();
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    ty2AnswerCountdownActive = true;
                }
                if (data.type === 'TRIVI_YEAH_II_ROUND_REVEAL') {
                    document.getElementById('room-status-text').innerText = "Thinking Pants — Round Evaluation";
                    document.getElementById('lobby-countdown').innerText = "0 s";
                    highlightCorrectAnswerOnTV(data.correctLetter);
                    if (data.answers) {
                        Object.keys(data.answers).forEach(name => {
                            playerAnswerStatus[name] = (data.answers[name] === data.correctLetter) ? 'correct' : undefined;
                            if (!playerAnswerStatus[name]) delete playerAnswerStatus[name];
                        });
                    }
                    ty2AnswerCountdownActive = false;
                    stopCountdownMusic();
                    if (data.trap) showTriviYeahIITrapOutcome(data.trap);
                }
                if (data.type === 'TRIVI_YEAH_II_COLUMN_BONUS') {
                    showColumnBonusToast(data.playerNames || [data.playerName], data.categoryLabel, data.bonusPoints);
                    playAudioTrack('impostor-correct-sound');
                }
                if (data.type === 'TRIVI_YEAH_II_AUTO_PICK') {
                    document.getElementById('room-status-text').innerText = `Time's up, ${data.picker}! Random tile...`;
                }
                if (data.type === 'TRIVI_YEAH_II_PICK_TURN') {
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToTriviYeahIIBoardUI(data.grid, data.currentPicker);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                // ---------- Trivi-Yeah II: Doubler (Daily Double) ----------
                // A Doubler tile detours the normal category->question flow through
                // four extra beats: a dramatic reveal, the picker's private wager,
                // the room's informed side bets (placed only once the wager is
                // visible), then back into the shared question/answers staging.
                if (data.type === 'TRIVI_YEAH_II_DOUBLER_REVEAL') {
                    document.getElementById('lobby-countdown').innerText = '';
                    showTriviYeahIIDoublerRevealUI(data.picker, data.points, data.categoryLabel, data.multiplier);
                    stopCountdownMusic();
                    playAudioTrack('doubler-reveal-sound');
                }
                if (data.type === 'TRIVI_YEAH_II_WAGER_PROMPT') {
                    showTriviYeahIIWagerPromptUI(data.picker, data.maxWager, data.tileValue, data.categoryLabel);
                }
                if (data.type === 'TRIVI_YEAH_II_SIDE_BETS_OPEN') {
                    showTriviYeahIISideBetsOpenUI(data.picker, data.wagerAmount, data.tileValue, data.categoryLabel);
                }
                if (data.type === 'TRIVI_YEAH_II_DOUBLER_RESULT') {
                    document.getElementById('room-status-text').innerText = "Thinking Pants — Doubler Result";
                    document.getElementById('lobby-countdown').innerText = "0 s";
                    playAudioTrack(data.pickerCorrect ? 'doubler-correct-sound' : 'doubler-wrong-sound');
                    showTriviYeahIIDoublerResultUI(data);
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    ty2AnswerCountdownActive = false;
                    stopCountdownMusic();
                }

                // ---------- Trivi-Yeah II: Final Wager (Final-Jeopardy-style closer) ----------
                // Fires once after round 3's board fully clears, never mid-round.
                // Wagers stay hidden the whole way through -- the TV never learns
                // any player's wager amount until their own reveal step.
                if (data.type === 'TRIVI_YEAH_II_FINAL_CATEGORY_REVEAL') {
                    document.getElementById('lobby-countdown').innerText = '';
                    finalWagerModeLabel = data.modeLabel || 'Thinking Pants';
                    setStatusMessage(''); // e.g. Country Monkey's last "Question 12 / 12"
                    showTriviYeahIIFinalCategoryRevealUI(data.topicLabel);
                    stopCountdownMusic();
                }
                if (data.type === 'TRIVI_YEAH_II_FINAL_WAGER_OPEN') {
                    showTriviYeahIIFinalWagerOpenUI();
                    preloadQuestionImage(data.preloadAsset);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'TRIVI_YEAH_II_FINAL_ANSWER_OPEN') {
                    document.getElementById('room-status-text').innerText = `${finalWagerModeLabel} — Final Wager`;
                    showTriviYeahIIFinalAnswerOpenUI(data.topicLabel, data.questionText, data.visualAsset);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                // The answer clock is 40s but the timer music is 30s: the
                // server says when to start it, so it still ends on zero.
                if (data.type === 'TRIVI_YEAH_II_FINAL_MUSIC_START') {
                    playAudioTrack('final-wager-timer-sound');
                }
                if (data.type === 'TRIVI_YEAH_II_FINAL_REVEAL_START') {
                    stopAudioTrack('final-wager-timer-sound');
                    document.getElementById('lobby-countdown').innerText = "0 s";
                    showTriviYeahIIFinalRevealStartUI(data.correctAnswer);
                }
                if (data.type === 'TRIVI_YEAH_II_FINAL_REVEAL_STEP') {
                    showTriviYeahIIFinalRevealStepUI(data);
                    updateLeaderboardUI(cachedPlayersSnapshot);
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
                    switchToEmpossDurrDiscussionUI(data.round, data.totalRounds, data.starter);
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
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    switchToEmpossDurrAccuseVoteUI(data.votedCount, data.totalNeeded, data.secondsLeft);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    // The ready-to-accuse mechanic itself tested well, but its
                    // silent transition into the vote didn't -- real families
                    // missed that the game had changed phases entirely. A
                    // one-shot stinger plus this icon (same size/placement as
                    // the impostor-declares one) makes the switch impossible
                    // to miss even glancing at the TV.
                    playAudioTrack('vote-sound');
                }
                if (data.type === 'EMPOSSDURR_ACCUSE_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    const t = document.getElementById('ed-tv-timer');
                    if (t) t.innerText = data.secondsLeft + " s";
                }
                if (data.type === 'EMPOSSDURR_VOTE_SUBMITTED') {
                    playerAnswerStatus[data.playerName] = 'answered';
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    const tally = document.getElementById('ed-tv-tally');
                    if (tally) tally.innerText = `${data.votedCount ?? 0} / ${data.totalNeeded ?? 0}`;
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
                if (data.type === 'EMPOSSDURR_SKIP_UPDATE') {
                    const skipTally = document.getElementById('ed-tv-skip-tally');
                    if (skipTally) skipTally.innerText = `${(data.skipNames || []).length} / ${data.totalActive || 0} want to skip`;
                }
                if (data.type === 'EMPOSSDURR_ROUND_SKIPPED') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Round Skipped";
                    switchToEmpossDurrSkippedUI();
                    playerAnswerStatus = {};
                }
                if (data.type === 'EMPOSSDURR_DECLARE') {
                    document.getElementById('room-status-text').innerText = "EmpossDurr — Declaration!";
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    switchToEmpossDurrDeclareSplashUI(data.impostorName, data.votedCount, data.totalNeeded, data.secondsLeft);
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
                    if (data.correct) {
                        playAudioTrack('impostor-correct-sound');
                    }
                    playerAnswerStatus = {};
                }

                // On the Spectrum -- unlike EmpossDurr's secret word/clue, the
                // statement itself isn't hidden from anyone, so it's fine to
                // show on the TV from the start. Only the target VALUE stays
                // hidden until every guess is locked in.
                if (data.type === 'ON_THE_SPECTRUM_ROUND_START') {
                    document.getElementById('room-status-text').innerText = "On the Spectrum";
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToOnTheSpectrumSetTargetUI(data.namedPlayerName, data.statementText, data.roundNumber, data.totalRounds);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'ON_THE_SPECTRUM_GUESSING_START') {
                    document.getElementById('room-status-text').innerText = "On the Spectrum — Guessing";
                    switchToOnTheSpectrumGuessingUI(data.namedPlayerName, data.statementText);
                }
                if (data.type === 'ON_THE_SPECTRUM_LOCKIN_UPDATE') {
                    updateOnTheSpectrumLockInTallyTV(data.lockedInNames, data.totalGuessersNeeded);
                    playerAnswerStatus = {};
                    (data.lockedInNames || []).forEach(name => { playerAnswerStatus[name] = 'answered'; });
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'ON_THE_SPECTRUM_REVEAL') {
                    document.getElementById('room-status-text').innerText = "On the Spectrum — Reveal";
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    switchToOnTheSpectrumRevealUI(data.namedPlayerName, data.statementText, data.targetValue, data.results, data.tvLimit, data.secondsLeft);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'ON_THE_SPECTRUM_CONTINUE_UPDATE') {
                    updateOnTheSpectrumContinueTallyTV(data.votedCount, data.totalNeeded);
                }
                if (data.type === 'ON_THE_SPECTRUM_CONTINUE_TIMER_TICK') {
                    document.getElementById('lobby-countdown').innerText = data.secondsLeft + " s";
                    const t = document.getElementById('ots-tv-timer');
                    if (t) t.innerText = data.secondsLeft + " s";
                }

                // ---------- Profiler ----------
                // Lock-in dots: ANSWER_SUBMITTED (shared with every mode, above)
                // marks answers; PROFILER_GUESS_SUBMITTED marks picks.
                // ---------- Flag Me Down ----------
                if (data.type === 'FLAG_ME_DOWN_ROUND') {
                    currentGamePhase = 'FLAG_ME_DOWN'; // before the standings refresh below, or it re-posts the lobby's "Press Start" line
                    document.getElementById('room-status-text').innerText = `Flag Me Down — Flag ${data.round}/${data.totalRounds}`;
                    document.getElementById('lobby-countdown').innerText = '';
                    setStatusMessage('');
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    flagMeDownTV = { round: data.round, totalRounds: data.totalRounds, flagUrl: data.flagUrl, choices: data.choices, stage: 0, region: null, capital: null, mapUrl: null, locked: 0, reveal: null };
                    renderFlagMeDownTV();
                    preloadQuestionImage(data.preloadAsset);
                }
                if (data.type === 'FLAG_ME_DOWN_CLUE' && flagMeDownTV) {
                    flagMeDownTV.stage = data.stage;
                    if (data.region) flagMeDownTV.region = data.region;
                    if (data.capital) flagMeDownTV.capital = data.capital;
                    if (data.mapUrl) flagMeDownTV.mapUrl = data.mapUrl;
                    renderFlagMeDownTV();
                    preloadQuestionImage(data.preloadAsset);
                }
                if (data.type === 'ANSWER_SUBMITTED' && flagMeDownTV && !flagMeDownTV.reveal && currentGamePhase === 'FLAG_ME_DOWN') {
                    flagMeDownTV.locked += 1;
                    const tally = document.getElementById('fmd-tv-tally');
                    if (tally) tally.innerText = `${flagMeDownTV.locked} locked in`;
                }
                if (data.type === 'FLAG_ME_DOWN_REVEAL' && flagMeDownTV) {
                    Object.assign(flagMeDownTV, { region: data.region, capital: data.capital, mapUrl: data.mapUrl, stage: 3, reveal: data });
                    renderFlagMeDownTV();
                }

                if (data.type === 'PROFILER_QUESTION') {
                    document.getElementById('room-status-text').innerText = "Profiler";
                    document.getElementById('lobby-countdown').innerText = '';
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    switchToProfilerQuestionUI(data);
                    profilerAnsweredCount = 0;
                    profilerCountdownActive = true;
                }
                if (data.type === 'ANSWER_SUBMITTED' && currentGamePhase === 'PROFILER_ANSWER') {
                    profilerAnsweredCount += 1;
                    updateProfilerTally();
                }
                if (data.type === 'PROFILER_POST') {
                    document.getElementById('room-status-text').innerText = "Profiler — Who said it?";
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                    switchToProfilerPostUI(data);
                    profilerGuessedCount = 0;
                    profilerCountdownActive = true;
                }
                if (data.type === 'PROFILER_GUESS_SUBMITTED') {
                    // Count only -- no per-player dot. Whoever gave the posted
                    // answer has fewer people to find (or none at all), so a
                    // dot that lit up early (or never) gave away exactly who
                    // said it. Caught in the first family playtest.
                    profilerGuessedCount += 1;
                    updateProfilerTally();
                }
                if (data.type === 'PROFILER_UNANIMOUS') {
                    profilerCountdownActive = false;
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToProfilerUnanimousUI(data);
                }
                if (data.type === 'PROFILER_REVEAL') {
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Profiler — Reveal";
                    document.getElementById('lobby-countdown').innerText = '';
                    playerAnswerStatus = {};
                    switchToProfilerRevealUI(data);
                    document.getElementById('lobby-countdown').innerText = (data.secondsLeft || 60) + ' s';
                }
                if (data.type === 'PROFILER_CONTINUE_UPDATE') {
                    updateProfilerContinueTally(data.votedCount, data.totalNeeded);
                }
                if (data.type === 'PROFILER_AWARDS') {
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Profiler — Results";
                    document.getElementById('lobby-countdown').innerText = '';
                    switchToProfilerAwardsUI(data);
                    playAudioTrack('win-music');
                }
            };
        }

        // Award-type framework: each entry in a player's `awards` map (type -> level)
        // renders via this lookup, so adding a new award later is just one more
        // entry here, no other code to touch. All awards below are one-shot,
        // boolean-style badges now (level is always 1, set the instant earned,
        // never re-evaluated) -- STREAK used to climb bronze/silver/gold tiers
        // at 3/6/9 in a row, but real play found even 3 rare enough on its own
        // that 6/9 never got reached, so the ladder was dropped in favor of a
        // single flat badge at 3 (same design as the rest). SPEED3 is the
        // exception: a live, contested status (not a streak) that belongs to
        // whoever answered fastest THIS round and is lost the instant someone
        // else wins it -- the one badge still forced to a specific color
        // (electric yellow, "still up for grabs") via a CSS mask, since
        // nothing about "fastest" is drawn into bolt-icon.svg itself.
        //
        // Every other nativeIcon badge renders its SVG as a plain <img>,
        // keeping the art's own baked-in colors (including, for STREAK and
        // SPYGLASS, a "3" marking the three-in-a-row threshold both require)
        // rather than forcing a single flat color over it via a CSS mask.
        const AWARD_DISPLAY = {
            STREAK: { pulse: false, title: '3 correct answers in a row', nativeIcon: true, iconSrc: '/muscle.svg' },
            SPEED3: { pulse: false, title: 'Fastest answer this round', imageBadge: true, iconClass: 'badge-speed3' },
            SPYGLASS: { pulse: false, title: '3 correct impostor calls in a row', nativeIcon: true, iconSrc: '/mag-glass.svg' },
            IMPOSTOR_WIN: { pulse: false, title: 'Successful impostor', nativeIcon: true, iconSrc: '/spy.svg' },
            // On the Spectrum badges -- distinct key names from EmpossDurr's
            // own achievements on purpose (different game, different
            // achievement; reusing a name would make them visually
            // indistinguishable in awards). /spectrum-bow.svg is still a
            // CSS-masked placeholder shape, not yet drawn with its own colors.
            SPECTRUM_BULLSEYE: { pulse: false, title: 'Exact match on On the Spectrum', nativeIcon: true, iconSrc: '/spectrum-target.svg' },
            SPECTRUM_SHARPSHOOTER: { pulse: false, title: 'Within 3 on On the Spectrum', imageBadge: true, iconClass: 'badge-spectrum-sharpshooter' },
            // Just for laughs -- awarded to EVERY guesser 25+ off in the same
            // round, so a room full of wild misses is funnier, not penalized.
            SPECTRUM_LOST_IN_SPACE: { pulse: false, title: 'Lost in Space -- 25+ off on On the Spectrum', imageBadge: true, iconClass: 'badge-spectrum-lost-in-space' }
        };

        function renderAwardBadges(awards) {
            if (!awards) return '';
            return Object.keys(AWARD_DISPLAY).map(type => {
                const level = awards[type] || 0;
                if (level <= 0) return '';
                const def = AWARD_DISPLAY[type];
                const classes = ['award-badge'];
                if (def.pulse) classes.push('award-pulse');
                const title = def.title || '';
                if (def.nativeIcon) {
                    classes.push('award-badge-native');
                    return `<span class="${classes.join(' ')}" title="${title}"><img src="${def.iconSrc}" alt=""></span>`;
                }
                classes.push('award-badge-icon');
                if (def.iconClass) classes.push(def.iconClass);
                return `<span class="${classes.join(' ')}" title="${title}"></span>`;
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
                    <div style="font-weight: 600; color: #8892b0; margin-bottom: 2px;">PRESS START TO CONFIRM</div>
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
            const keys = window.RANDOMANIA_MODES.map(m => m.key);
            keys.forEach(key => {
                const bar = document.getElementById(`vbar-${key}`);
                if (!bar) return; // a mode this venue doesn't show
                const count = votes[key] || 0;
                const percentage = Math.round((count / totalVotes) * 100);
                bar.style.width = `${percentage}%`;
                document.getElementById(`vcount-${key}`).innerText = `${count} ${count === 1 ? 'vote' : 'votes'} (${percentage}%)`;
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

        // Shown in the status slot beside the QR code (where "Press Start"
        // lives) -- it used to be a floating card that covered the QR code
        // itself, right when people needed it to join (family playtest).
        function showContentWarningToast(message) {
            const slot = document.getElementById('onboarding-status-slot');
            if (!slot) return;
            contentWarningHtml = `
                <div style="font-weight: 700; color: #ffa500; margin-bottom: 2px;">⚠️ Heads up</div>
                <div style="font-size: 0.85rem; color: #e2e5e9;">${escapeHtml(message)}</div>
            `;
            slot.innerHTML = contentWarningHtml;
            slot.style.opacity = "1";

            // Re-triggerable -- a second warning while one's already showing
            // just resets the clock rather than stacking or getting cut short.
            if (contentWarningHideTimer) clearTimeout(contentWarningHideTimer);
            contentWarningHideTimer = setTimeout(() => {
                contentWarningHideTimer = null;
                slot.innerHTML = currentStatusHtml;
            }, 10000);
        }

        let columnBonusHideTimer = null;
        // Everyone who got the whole column right shares the moment; a lone
        // sweeper also gets the trap (that screen follows the reveal).
        function showColumnBonusToast(playerNames, categoryLabel, bonusPoints) {
            const card = document.getElementById('column-bonus-card');
            const text = document.getElementById('column-bonus-text');
            if (!card || !text) return;

            const names = playerNames.map(name => `<span class="toast-highlight">${escapeHtml(name)}</span>`);
            const who = names.length === 1 ? names[0]
                : `${names.slice(0, -1).join(', ')} &amp; ${names[names.length - 1]}`;
            const each = names.length > 1 ? ' each' : '';
            text.innerHTML = `${who} swept ${escapeHtml(categoryLabel)} -- +${bonusPoints || 400}${each}!`;
            card.classList.add('active');

            if (columnBonusHideTimer) clearTimeout(columnBonusHideTimer);
            columnBonusHideTimer = setTimeout(() => {
                card.classList.remove('active');
                columnBonusHideTimer = null;
            }, 5000);
        }

        function processToastQueuePipeline() {
            if (isToastPlaying || toastQueue.length === 0) return;
            // A notice is using the slot -- join announcements wait their
            // turn instead of overwriting it.
            if (contentWarningHideTimer) { setTimeout(processToastQueuePipeline, 1000); return; }

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
                    // (A notice that arrived mid-toast wins over both.)
                    slot.innerHTML = contentWarningHideTimer ? contentWarningHtml : currentStatusHtml;
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
        const GAME_MODE_LABELS = window.RANDOMANIA_MODE_NAMES; // public/modes.js

        function switchToCategoryVotingUI(winnerModule, categories) {
            const panel = document.getElementById('active-content-stage');
            const categoryList = categories || [];

            activeCategoryLabels = {};
            categoryList.forEach(c => { activeCategoryLabels[c.key] = c.label; });

            const displayGameName = GAME_MODE_LABELS[winnerModule] || winnerModule;

            currentGamePhase = 'CATEGORY_VOTE';
            // Phones have a Start button here too now, same as the lobby.
            setStatusMessage(`
                <div style="font-weight: 600; color: #8892b0; margin-bottom: 2px;">PRESS START TO CONFIRM</div>
                <div style="font-size: 0.8rem; color: #64748b;">Skips the countdown once everyone's in</div>
            `);

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
                if (countNode) countNode.innerText = `${count} ${count === 1 ? 'vote' : 'votes'} (${percentage}%)`;
            });
        }

        function switchToQuestionUI(categoryLabel, questionText, choiceA, choiceB, choiceC, choiceD, questionNumber, totalQuestions, visualAsset, brand) {
            const panel = document.getElementById('active-content-stage');
            // The venue's Trivi-yeah! carries its logo and name instead of a deck name.
            const deckLine = brand
                ? `<span style="display: inline-flex; align-items: center; gap: 12px;">${brand.logoUrl ? `<img src="${brand.logoUrl}" alt="" style="height: 34px; width: auto; max-width: 90px; object-fit: contain;" onerror="this.remove()">` : ''}<span>Trivi-yeah! <span style="color: #94a3b8;">at ${escapeHtml(brand.name)}</span></span></span>`
                : `Active Deck: ${categoryLabel}`;

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

            // Pictures (maps, flags, water -- all 4:3) fill a 4:3 frame:
            // flag SVGs carry no size of their own and would otherwise render tiny.
            // Visual questions (Country Monkey's highlighted-map SVGs, etc.) put the
            // image on the left and the choice buttons on the right, instead of
            // stacking the choices under a full-width question block -- naming the
            // country in text next to its own map was redundant with the buttons.
            if (visualAsset) {
                panel.innerHTML = `
                    <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: row; align-items: center; gap: 32px; box-sizing: border-box; min-height: 400px;">
                        <div style="flex: 1; text-align: center;">
                            <img src="${visualAsset}" alt="" style="width: 100%; aspect-ratio: 4 / 3; max-height: 340px; object-fit: contain; border-radius: 8px;">
                        </div>
                        <div style="flex: 1; text-align: left; display: flex; flex-direction: column; gap: 16px;">
                            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em;">
                                ${deckLine}
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
                        ${deckLine}
                    </div>

                    <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; flex: 1; display: flex; align-items: center; margin-bottom: 24px; letter-spacing: -0.01em;">
                        ${questionText}
                    </div>

                    ${choiceGrid}
                </div>
            `;
        }

// ---------- Trivi-Yeah II (Jeopardy-style grid, prototype) ----------
// Accumulates across the staged CATEGORY_REVEAL -> QUESTION_REVEAL ->
// ANSWERS_REVEAL broadcasts (each one only carries the fields new to that
// stage) so the spotlight panel can keep showing the category label once
// the question/choices arrive later, rather than it blanking out.
let triviYeahIISpotlightCache = {};
// TRIVI_YEAH_II_PICK_TURN (fired after every tile, not just round starts)
// doesn't resend round/totalRounds since neither changes between tiles --
// cached here from the last TRANSITION_TO_TRIVI_YEAH_II so the room-status
// text can keep showing it on every redraw regardless of which broadcast
// triggered this call.
let triviYeahIICurrentRound = 1;
let triviYeahIITotalRounds = 3;

function switchToTriviYeahIIBoardUI(grid, currentPicker, round, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    const boardGrid = grid || [];
    triviYeahIISpotlightCache = {};
    if (round) triviYeahIICurrentRound = round;
    if (totalRounds) triviYeahIITotalRounds = totalRounds;

    currentGamePhase = 'TRIVI_YEAH_II_ROUND';
    document.getElementById('room-status-text').innerText = `Thinking Pants — Round ${triviYeahIICurrentRound}/${triviYeahIITotalRounds}`;
    setStatusMessage(`<div style="font-weight: 600; color: #00e676;">${currentPicker}'s pick!</div>`);

    // The grid arrives category-major (3 categories x 4 tiers, flat array of
    // 12) -- transposed here into a 3-column x 4-row CSS grid so categories
    // read as columns and point tiers read as rows, the familiar board shape.
    const categoryCount = 3;
    const tierCount = boardGrid.length / categoryCount || 4;

    const headerCells = [];
    for (let c = 0; c < categoryCount; c++) {
        const first = boardGrid[c * tierCount];
        headerCells.push(`<div style="padding: 8px 4px; text-align: center; font-size: 0.72rem; font-weight: 700; color: #94a3b8; text-transform: uppercase; letter-spacing: 0.04em;">${first ? first.categoryLabel : ''}</div>`);
    }

    const tileCells = [];
    for (let t = 0; t < tierCount; t++) {
        for (let c = 0; c < categoryCount; c++) {
            const cell = boardGrid[c * tierCount + t];
            if (!cell) { tileCells.push('<div></div>'); continue; }
            tileCells.push(cell.cleared
                ? `<div style="background: #14161d; border: 1px solid #1c1f28; border-radius: 8px; padding: 16px 4px; text-align: center; color: #334155; font-size: 1.1rem; font-weight: 700;">&mdash;</div>`
                : `<div style="background: #14161d; border: 2px solid #00e676; box-shadow: 0 0 10px rgba(0, 230, 118, 0.25); border-radius: 8px; padding: 15px 4px; text-align: center; color: #00e676; font-size: 1.25rem; font-weight: 800;">${cell.points}</div>`);
        }
    }

    panel.innerHTML = `
        <div class="panel-box" style="padding: 24px; flex: 1; display: flex; flex-direction: column; justify-content: center;">
            <div style="display: grid; grid-template-columns: repeat(${categoryCount}, 1fr); gap: 8px;">
                ${headerCells.join('')}
                ${tileCells.join('')}
            </div>
        </div>
    `;
}

// Brief full-panel announcement between rounds -- fires once a board's fully
// cleared but more rounds remain, giving the room a beat to register "round
// over" before the next board silently appears underneath it.
function showTriviYeahIIRoundTransitionUI(completedRound, nextRound, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = `Thinking Pants — Round ${completedRound} Complete`;

    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.9rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">Round ${completedRound} Complete</div>
            <div style="font-size: 2rem; font-weight: 800; color: #ffffff; margin-bottom: 8px;">Starting Round ${nextRound} of ${totalRounds}</div>
        </div>
    `;
}

// Fetches a question picture in the background so it's already in the
// browser's cache when the question appears (see preloadAsset in gameEngine).
const preloadedQuestionImages = [];
function preloadQuestionImage(url) {
    if (!url) return;
    const img = new Image();
    img.src = url;
    preloadedQuestionImages.push(img);
    if (preloadedQuestionImages.length > 4) preloadedQuestionImages.shift();
}

function showTriviYeahIISpotlightUI(partial) {
    const panel = document.getElementById('active-content-stage');
    Object.assign(triviYeahIISpotlightCache, partial);
    const { stage, categoryLabel, questionText, points, choiceA, choiceB, choiceC, choiceD, visualAsset } = triviYeahIISpotlightCache;

    // Picture questions (Country Monkey maps, etc.): picture on the left,
    // text on the right -- same layout as the Country Monkey mode's screen.
    const pictureBlock = visualAsset ? `
        <div style="flex: 1.2; text-align: center; min-width: 0;">
            <img src="${visualAsset}" alt="" style="width: 100%; aspect-ratio: 4 / 3; max-height: 420px; object-fit: contain; border-radius: 8px; display: block; margin: 0 auto;">
        </div>
    ` : '';

    const categoryBlock = `
        <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">
            ${categoryLabel || ''}${points ? ` &middot; ${points} pts` : ''}
        </div>
    `;

    if (stage === 'category') {
        panel.innerHTML = `
            <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
                <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">Up next</div>
                <div style="font-size: 2rem; font-weight: 800; color: #ffffff; margin-bottom: 10px;">${categoryLabel}</div>
                <div style="font-size: 1.1rem; font-weight: 700; color: #00e676;">${points} points</div>
            </div>
        `;
        return;
    }

    if (stage === 'question' && visualAsset) {
        panel.innerHTML = `
            <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: row; align-items: center; gap: 32px; min-height: 400px; box-sizing: border-box;">
                ${pictureBlock}
                <div style="flex: 1; text-align: left; min-width: 0;">
                    ${categoryBlock}
                    <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; letter-spacing: -0.01em;">
                        ${questionText}
                    </div>
                </div>
            </div>
        `;
        return;
    }

    if (stage === 'question') {
        panel.innerHTML = `
            <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; text-align: left; min-height: 400px; box-sizing: border-box;">
                ${categoryBlock}
                <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; letter-spacing: -0.01em;">
                    ${questionText}
                </div>
            </div>
        `;
        return;
    }

    // stage === 'answers' -- identical choice-row markup/ids to classic
    // Trivi-yeah!'s switchToQuestionUI, so highlightCorrectAnswerOnTV (fired
    // on TRIVI_YEAH_II_ROUND_REVEAL) works completely unmodified on it.
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

    if (visualAsset) {
        // Choices stack in one column beside the picture (same ids, so the
        // correct-answer highlight still works).
        panel.innerHTML = `
            <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: row; align-items: center; gap: 32px; min-height: 400px; box-sizing: border-box;">
                ${pictureBlock}
                <div style="flex: 1; text-align: left; min-width: 0;">
                    ${categoryBlock}
                    <div style="font-size: 1.2rem; font-weight: 600; color: #ffffff; line-height: 1.3; margin-bottom: 18px; letter-spacing: -0.01em;">
                        ${questionText}
                    </div>
                    ${choiceGrid.replace('grid-template-columns: repeat(2, 1fr)', 'grid-template-columns: 1fr')}
                </div>
            </div>
        `;
        return;
    }

    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: space-between; text-align: left; min-height: 400px; box-sizing: border-box;">
            ${categoryBlock}
            <div style="font-size: 1.4rem; font-weight: 600; color: #ffffff; line-height: 1.4; flex: 1; display: flex; align-items: center; margin-bottom: 24px; letter-spacing: -0.01em;">
                ${questionText}
            </div>
            ${choiceGrid}
        </div>
    `;
}

// Dramatic full-panel beat before the wager prompt -- same shape as the
// round-transition announcement, just themed to call out the twist.
// categoryBadge is shown through the whole Doubler sequence (reveal, wager,
// side bets) -- players kept losing track of which category they were
// wagering on once the tile's category label disappeared after the opening
// beat.
function doublerCategoryBadge(categoryLabel) {
    return categoryLabel
        ? `<div style="font-size: 0.8rem; font-weight: 600; color: #ffa500; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 10px;">Category: ${categoryLabel}</div>`
        : '';
}

// ---------- Thinking Pants traps ----------
// Icons: Randy's SVGs in public/traps/ when they exist, emoji until then --
// a missing file just falls back, so dropping the art in needs no code change.
const TRAP_ICON_FILES = { SETTING: 'trap-setting', PANTS_ON_FIRE: 'trap-pants-on-fire', HOT_SEAT: 'trap-hot-seat', WEDGIE: 'trap-wedgie' };
const TRAP_ICON_EMOJI = { SETTING: '🤫', PANTS_ON_FIRE: '🔥', HOT_SEAT: '🪑', WEDGIE: '🩲' };
let activeTrapTV = null; // the revealed trap on the current tile, for the question-phase banner

function trapIconHtml(key, sizePx) {
    const emoji = TRAP_ICON_EMOJI[key] || '⚠️';
    return `<img src="/traps/${TRAP_ICON_FILES[key]}.svg" alt="" style="height: ${sizePx}px; width: auto;" onerror="this.outerHTML='<span style=&quot;font-size: ${Math.round(sizePx * 0.8)}px; line-height: 1;&quot;>${emoji}</span>'">`;
}

function trapRuleFor(trap) {
    if (trap.trapType === 'HOT_SEAT' || trap.type === 'HOT_SEAT') return `${escapeHtml(trap.picker)} answers alone -- no passing. Right or wrong, it counts double.`;
    if (trap.trapType === 'WEDGIE' || trap.type === 'WEDGIE') return `Normal question -- but if ${escapeHtml(trap.picker)} misses it, ${escapeHtml(trap.setter)} collects the points.`;
    return 'Everyone must answer -- no passing. Wrong answers lose double.';
}

function showTriviYeahIITrapSettingUI(setter) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Shhh...";
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="margin-bottom: 14px;">${trapIconHtml('SETTING', 90)}</div>
            <div style="font-size: 1.9rem; font-weight: 800; color: #ffffff; margin-bottom: 8px;">${escapeHtml(setter)} swept a column...</div>
            <div style="font-size: 1.2rem; color: #94a3b8;">...and is up to something.</div>
        </div>
    `;
    setStatusMessage(`<div style="font-weight: 600; color: #8892b0;">🤫 Shhh...</div>`);
}

function showTriviYeahIITrapRevealUI(data) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = `Thinking Pants — ${data.label}!`;
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${doublerCategoryBadge(data.categoryLabel)}
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 10px;">It's a trap!</div>
            <div style="margin-bottom: 10px;">${trapIconHtml(data.trapType, 110)}</div>
            <div style="font-size: 2.6rem; font-weight: 800; color: #ff5c5c; margin-bottom: 10px; text-shadow: 0 0 20px rgba(255, 92, 92, 0.35);">${escapeHtml(data.label).toUpperCase()}</div>
            <div style="font-size: 1.2rem; font-weight: 600; color: #ffffff; max-width: 700px;">${trapRuleFor(data)}</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-top: 10px;">Set by ${escapeHtml(data.setter)} · ${data.points} points</div>
        </div>
    `;
}

// Keeps the trap visible while the question plays out.
function addTriviYeahIITrapBanner() {
    if (!activeTrapTV) return;
    const box = document.querySelector('#active-content-stage .panel-box');
    if (!box) return;
    const banner = document.createElement('div');
    banner.style.cssText = 'display: flex; align-items: center; justify-content: center; gap: 10px; margin-bottom: 14px; font-weight: 700; color: #ff5c5c;';
    banner.innerHTML = `${trapIconHtml(activeTrapTV.trapType, 34)}<span>${escapeHtml(activeTrapTV.label).toUpperCase()} · ${trapRuleFor(activeTrapTV)}</span>`;
    box.insertBefore(banner, box.firstChild);
    document.getElementById('room-status-text').innerText = `Thinking Pants — ${activeTrapTV.label}`;
}

function showTriviYeahIITrapOutcome(trap) {
    let line;
    if (trap.type === 'WEDGIE') {
        line = trap.collected
            ? `🩲 Wedgie! ${escapeHtml(trap.picker)} missed -- ${escapeHtml(trap.setter)} collects ${trap.collected}.`
            : `🩲 ${escapeHtml(trap.picker)} dodged the Wedgie!`;
    } else if (trap.type === 'HOT_SEAT') {
        line = trap.pickerCorrect
            ? `🪑 ${escapeHtml(trap.picker)} survived the Hot Seat: +${Math.abs(trap.delta)}!`
            : `🪑 ${escapeHtml(trap.picker)} got burned in the Hot Seat: -${Math.abs(trap.delta)}.`;
    } else {
        line = `🔥 Pants on Fire! Wrong answers cost double.`;
    }
    setStatusMessage(`<div style="font-weight: 700; color: #ff5c5c;">${line}</div>`);
}

// Last-round Doublers pay double (Randy, Oct 2026); set by the reveal.
let doublerMultiplier = 1;
function showTriviYeahIIDoublerRevealUI(picker, points, categoryLabel, multiplier) {
    doublerMultiplier = multiplier || 1;
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Doubler!";
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${doublerCategoryBadge(categoryLabel)}
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">Surprise tile</div>
            <div style="font-size: 2.4rem; font-weight: 800; color: #ffa500; margin-bottom: 10px; text-shadow: 0 0 20px rgba(255, 165, 0, 0.4);">DOUBLER!</div>
            <div style="font-size: 1.2rem; font-weight: 700; color: #ffffff;">${picker} is on the hook for this one.</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-top: 6px;">Tile value: ${points} points</div>
            ${doublerMultiplier > 1 ? `<div style="font-size: 1.4rem; font-weight: 800; color: #ff7a1a; margin-top: 14px;">🔥 Final round: side bets are DOUBLED, win or lose!</div>` : ''}
        </div>
    `;
}

// Waiting room while only the picker's phone shows a wager input -- nothing
// for anyone else to do yet, so this stays deliberately passive.
function showTriviYeahIIWagerPromptUI(picker, maxWager, tileValue, categoryLabel) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${doublerCategoryBadge(categoryLabel)}
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">Waiting on the wager</div>
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; margin-bottom: 10px;">${picker} is deciding how much to risk&hellip;</div>
            <div style="font-size: 1rem; color: #94a3b8;">Anywhere from 0 to ${maxWager} points (tile is worth ${tileValue})</div>
        </div>
    `;
}

// Once the picker's wager locks in, the room sees it immediately -- then
// everyone else places an informed For/Against/Pass bet at the tile's own
// fixed value while the shared countdown (GAME_TIMER_TICK, same banner as
// every other timed phase) ticks down lobby-countdown.
function showTriviYeahIISideBetsOpenUI(picker, wagerAmount, tileValue, categoryLabel) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Side Bets Open";
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${doublerCategoryBadge(categoryLabel)}
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">${picker}'s wager</div>
            <div style="font-size: 2.2rem; font-weight: 800; color: #ffa500; margin-bottom: 18px;">${wagerAmount} points</div>
            <div style="font-size: 1.1rem; font-weight: 600; color: #ffffff;">Will ${picker} get it right?</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-top: 6px;">Place your side bet -- For, Against, or Pass -- at ${tileValue * doublerMultiplier} points${doublerMultiplier > 1 ? ` <strong style="color: #ff7a1a;">(doubled!)</strong>` : ''}</div>
        </div>
    `;
}

// Final beat of the Doubler sequence -- shows the picker's wager outcome
// plus every side-bettor's own win/lose, since each stakes a different
// amount against a different outcome.
function showTriviYeahIIDoublerResultUI(data) {
    const panel = document.getElementById('active-content-stage');

    const pickerLine = data.pickerCorrect
        ? `<span style="color: #00e676;">${data.picker} got it right -- +${data.wagerAmount} points!</span>`
        : `<span style="color: #ff5c5c;">${data.picker} missed it -- &minus;${data.wagerAmount} points.</span>`;

    const sideBetRows = Object.entries(data.sideBetResults || {}).map(([name, delta]) => {
        if (delta === 0) return `<div style="font-size: 0.95rem; color: #64748b;">${name} passed.</div>`;
        const won = delta > 0;
        return `<div style="font-size: 0.95rem; color: ${won ? '#00e676' : '#ff5c5c'};">${name} ${won ? 'won' : 'lost'} ${Math.abs(delta)} points.</div>`;
    }).join('');

    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box; gap: 6px;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 4px;">Correct answer was ${data.correctLetter}</div>
            <div style="font-size: 1.5rem; font-weight: 700; margin-bottom: 10px;">${pickerLine}</div>
            ${sideBetRows}
        </div>
    `;
}

// ---------- Trivi-Yeah II: Final Wager ----------
// Accumulates one entry per TRIVI_YEAH_II_FINAL_REVEAL_STEP so the reveal
// renders as a growing list (everyone revealed so far stays on screen)
// rather than wiping between players -- the climbing suspense depends on
// being able to see how the room is shaping up, not just the latest name.
let finalWagerRevealLog = [];
// Thinking Pants and Country Monkey share the Final Wager; this is which
// one is playing it (sent with the category reveal).
let finalWagerModeLabel = 'Thinking Pants';

function showTriviYeahIIFinalCategoryRevealUI(topicLabel) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = `${finalWagerModeLabel} — Final Wager`;
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">One question left. Everything's on the line.</div>
            <div style="font-size: 2.6rem; font-weight: 800; color: #ffd700; margin-bottom: 14px; text-shadow: 0 0 24px rgba(255, 215, 0, 0.35);">FINAL WAGER</div>
            <div style="font-size: 1.3rem; font-weight: 700; color: #ffffff;">Topic: ${topicLabel}</div>
        </div>
    `;
}

function showTriviYeahIIFinalWagerOpenUI() {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 14px;">Wagering now</div>
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; margin-bottom: 10px;">Everyone's deciding how much to risk&hellip;</div>
            <div style="font-size: 1rem; color: #94a3b8;">Every wager stays secret until the big reveal.</div>
        </div>
    `;
}

function showTriviYeahIIFinalAnswerOpenUI(topicLabel, questionText, visualAsset) {
    const panel = document.getElementById('active-content-stage');
    if (visualAsset) {
        // Country Monkey: the map on the left, same layout as its questions.
        panel.innerHTML = `
            <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: row; align-items: center; gap: 32px; min-height: 400px; box-sizing: border-box;">
                <div style="flex: 1.2; text-align: center; min-width: 0;">
                    <img src="${visualAsset}" alt="" style="width: 100%; aspect-ratio: 4 / 3; max-height: 420px; object-fit: contain; border-radius: 8px; display: block; margin: 0 auto;">
                </div>
                <div style="flex: 1; text-align: left; min-width: 0;">
                    <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">Final Wager &middot; ${topicLabel}</div>
                    <div style="font-size: 1.5rem; font-weight: 600; color: #ffffff; line-height: 1.4; letter-spacing: -0.01em;">${questionText}</div>
                    <div style="font-size: 1rem; color: #94a3b8; margin-top: 14px;">Type your answer on your phone. Close spellings count.</div>
                </div>
            </div>
        `;
        return;
    }
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center; text-align: left; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 16px;">Final Wager &middot; ${topicLabel}</div>
            <div style="font-size: 1.5rem; font-weight: 600; color: #ffffff; line-height: 1.4; letter-spacing: -0.01em;">
                ${questionText}
            </div>
        </div>
    `;
}

function showTriviYeahIIFinalRevealStartUI(correctAnswer) {
    finalWagerRevealLog = [];
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 32px 40px; flex: 1; display: flex; flex-direction: column; min-height: 400px; box-sizing: border-box;">
            <div style="text-align: center; margin-bottom: 20px;">
                <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 8px;">Time's up! The correct answer was</div>
                <div style="font-size: 1.8rem; font-weight: 800; color: #00e676;">${correctAnswer}</div>
            </div>
            <div id="final-wager-reveal-log" style="display: flex; flex-direction: column; gap: 10px; overflow-y: auto;"></div>
        </div>
    `;
}

function showTriviYeahIIFinalRevealStepUI(data) {
    finalWagerRevealLog.push(data);
    const log = document.getElementById('final-wager-reveal-log');
    if (!log) return;

    const rows = finalWagerRevealLog.map((step, i) => {
        const isLatest = i === finalWagerRevealLog.length - 1;
        const resultColor = step.correct ? '#00e676' : '#ff5c5c';
        const sign = step.correct ? '+' : '&minus;';
        return `
            <div style="background: ${isLatest ? 'rgba(255, 215, 0, 0.08)' : '#1e222b'}; border: 1px solid ${isLatest ? '#ffd700' : '#222630'}; border-radius: 8px; padding: 14px 18px; display: flex; justify-content: space-between; align-items: center; gap: 16px;">
                <div style="text-align: left;">
                    <div style="font-weight: 700; font-size: 1.05rem; color: #ffffff;">${step.playerName}${step.allIn ? ` <span class="all-in-stamp${isLatest ? ' slam' : ''}">ALL IN!</span>` : ''}</div>
                    <div style="font-size: 0.9rem; color: #94a3b8; margin-top: 2px;">Answered: "${step.answerText ? escapeHtml(step.answerText) : '(no answer)'}"</div>
                </div>
                <div style="text-align: right;">
                    <div style="font-weight: 700; color: ${resultColor};">${step.correct ? 'Correct' : 'Incorrect'} &middot; ${sign}${step.correct && step.winAmount != null ? step.winAmount : step.wagerAmount}</div>
                    ${step.hintsUsed != null ? `<div style="font-size: 0.85rem; color: #94a3b8;">${step.hintsUsed === 0 ? 'no clues!' : `${step.hintsUsed} clue${step.hintsUsed > 1 ? 's' : ''} used`}</div>` : ''}
                    <div style="font-size: 0.9rem; color: #94a3b8; margin-top: 2px;">New score: ${step.newScore}</div>
                </div>
            </div>
        `;
    });
    log.innerHTML = rows.join('');
}

// ---------- EmpossDurr ----------
// Deliberately sparse -- there's no question text or visual asset to show
// (the secret word/clue is private, phone-only), so the panel is mostly a
// calm round counter and a live ready-tally instead of dense content. See
// design chat: reusing the same panel chrome as every other mode rather
// than building new layout, just with leaner content dropped into it.
function switchToEmpossDurrDiscussionUI(round, totalRounds, starterName) {
    currentEmpossDurrRound = round;
    currentEmpossDurrTotalRounds = totalRounds;
    // Only a fresh round broadcasts a starter -- EMPOSSDURR_RESUME_DISCUSSION
    // (the "group couldn't agree" outcome) reopens the SAME round with no new
    // starter, so it passes nothing here and this just keeps the cached name.
    if (starterName) currentEmpossDurrStarterName = starterName;
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
                ${currentEmpossDurrStarterName || 'Someone'}, start the round of one-word clues.
            </div>
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 6px;">Round ${round} of ${totalRounds}</div>
            <div id="ed-tv-ready-tally" style="font-size: 1.1rem; font-weight: 600; color: #ffa500;">0 / 0 ready to vote</div>
            <div id="ed-tv-skip-tally" style="font-size: 0.9rem; font-weight: 600; color: #64748b; margin-top: 6px;">0 / 0 want to skip</div>
        </div>
    `;
}

function updateEmpossDurrReadyTally(readyNames, totalActive) {
    const el = document.getElementById('ed-tv-ready-tally');
    if (el) el.innerText = `${(readyNames || []).length} / ${totalActive || 0} ready to vote`;
}

// Resolves the instant everyone required has submitted, or at
// secondsLeft with whoever has voted so far -- votedCount/totalNeeded show
// real progress, secondsLeft is the backstop clock (real family feedback:
// no timer at all let a vote hang forever on one distracted player).
function switchToEmpossDurrAccuseVoteUI(votedCount, totalNeeded, secondsLeft) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <img src="/vote.svg" alt="" style="width: 56px; height: 56px; margin-bottom: 12px;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 8px;">
                Accuse Vote In Progress
            </div>
            <div id="ed-tv-tally" style="font-size: 3rem; font-weight: 700; color: #ffffff;">${votedCount ?? 0} / ${totalNeeded ?? 0}</div>
            <div id="ed-tv-timer" style="font-size: 1.3rem; font-weight: 600; color: #ffa500; margin-top: 8px;">${secondsLeft ?? ''} s</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-top: 12px;">Votes are secret -- resolves once everyone's in, or when time runs out. Watch names light up below as they lock in.</div>
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
function switchToEmpossDurrDeclareSplashUI(impostorName, votedCount, totalNeeded, secondsLeft) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box; background: rgba(255, 165, 0, 0.06); border-color: rgba(255, 165, 0, 0.4);">
            <img src="/exclaim.svg" alt="" style="width: 56px; height: 56px; margin-bottom: 12px;">
            <div style="font-size: 2rem; font-weight: 700; color: #ffa500; letter-spacing: -0.02em; margin-bottom: 12px;">${impostorName} DECLARES!</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 20px;">Everyone but the impostor is voting: was their guess correct? Resolves once every juror's in, or when time runs out.</div>
            <div id="ed-tv-tally" style="font-size: 2.2rem; font-weight: 700; color: #ffffff;">${votedCount ?? 0} / ${totalNeeded ?? 0}</div>
            <div id="ed-tv-timer" style="font-size: 1.2rem; font-weight: 600; color: #ffa500; margin-top: 8px;">${secondsLeft ?? ''} s</div>
        </div>
    `;
}

function switchToEmpossDurrSkippedUI() {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 12px;">Round skipped by group vote!</div>
            <div style="font-size: 1rem; color: #94a3b8;">A fresh word is coming up -- no scores changed.</div>
        </div>
    `;
}

function switchToEmpossDurrDeclareResultUI(correct, impostorName) {
    const panel = document.getElementById('active-content-stage');
    // The correct-guess splash already got its moment (the ED_DECLARE
    // overlay's exclaim.svg); a wrong guess used to resolve into plain text
    // with no visual beat of its own. Same reasoning as every other
    // declare-inspired icon: nothing secret is at stake here (the impostor
    // already self-outed by declaring), so there's no peek-leak risk to
    // weigh against giving this its own payoff.
    const wrongGuessIcon = correct ? '' : `<img src="/impostor-no.svg" alt="" style="width: 56px; height: 56px; margin-bottom: 12px;">`;
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${wrongGuessIcon}
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 12px;">
                ${correct ? `${impostorName} guessed correctly!` : `${impostorName} guessed wrong!`}
            </div>
            <div style="font-size: 1rem; color: #94a3b8;">Round over -- next round starting shortly.</div>
        </div>
    `;
}

// ==========================================
// ON THE SPECTRUM TV UI
// ==========================================

function switchToOnTheSpectrumSetTargetUI(namedPlayerName, statementText, round, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    setStatusMessage(`<div style="font-weight: 600; color: #64748b;">Round ${round} / ${totalRounds}</div>`);
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 8px;">Active Deck: On the Spectrum</div>
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 20px;">${namedPlayerName}, set your true answer.</div>
            <div style="font-size: 1.1rem; color: #e2e5e9; margin-bottom: 6px; max-width: 640px;">${statementText}</div>
            <div style="font-size: 0.9rem; color: #64748b; margin-top: 12px;">Everyone else, get ready to guess.</div>
        </div>
    `;
}

function switchToOnTheSpectrumGuessingUI(namedPlayerName, statementText) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 8px;">Guessing ${namedPlayerName}'s answer</div>
            <div style="font-size: 1.3rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 24px; max-width: 640px;">${statementText}</div>
            <div id="ots-tv-lockin-tally" style="font-size: 1.1rem; font-weight: 600; color: #ffa500;">0 / 0 locked in</div>
        </div>
    `;
}

function updateOnTheSpectrumLockInTallyTV(lockedInNames, totalGuessersNeeded) {
    const el = document.getElementById('ots-tv-lockin-tally');
    if (el) el.innerText = `${(lockedInNames || []).length} / ${totalGuessersNeeded || 0} locked in`;
}

// Same purple as this mode's own vote bar on the lobby screen -- one
// consistent color for every row here, the named player's row told apart
// by label/border instead, so the bar color always just means "On the
// Spectrum" rather than trying to also encode accuracy.
const ON_THE_SPECTRUM_BAR_COLOR = '#bb6bd9';

function otsBarRow(name, value, isNamed) {
    const pct = Math.max(0, Math.min(100, value));
    const nameLabel = isNamed
        ? `${name} <span style="color: ${ON_THE_SPECTRUM_BAR_COLOR}; font-weight: 700; font-size: 0.7rem; text-transform: uppercase; letter-spacing: 0.06em; margin-left: 6px;">actual</span>`
        : name;
    return `
        <div style="display: flex; align-items: center; gap: 16px; background: #14161d; border: 1px solid ${isNamed ? ON_THE_SPECTRUM_BAR_COLOR : '#222630'}; border-radius: 8px; padding: 10px 18px;">
            <span style="font-weight: 600; color: #f4f5f6; min-width: 160px; flex-shrink: 0;">${nameLabel}</span>
            <div class="progress-track" style="flex: 1;"><div class="progress-fill" style="background: ${ON_THE_SPECTRUM_BAR_COLOR}; width: ${pct}%;"></div></div>
            <span style="font-weight: 700; color: #f4f5f6; min-width: 32px; text-align: right;">${value}</span>
        </div>
    `;
}

// Truncates guesser rows to tvLimit (a shared TV can't scroll, and past a
// handful the rows get too thin to read from across a room) -- the complete
// sorted list still goes to every phone via /api/room-status. The named
// player's own row always shows, on top, uncounted against that limit.
function switchToOnTheSpectrumRevealUI(namedPlayerName, statementText, targetValue, results, tvLimit, secondsLeft) {
    const panel = document.getElementById('active-content-stage');
    const shown = (results || []).slice(0, tvLimit || 6);
    const remaining = (results || []).length - shown.length;
    const rows = [otsBarRow(namedPlayerName, targetValue, true)]
        .concat(shown.map(r => otsBarRow(r.name, r.value, false)))
        .join('');

    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; justify-content: center;">
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 20px; text-align: center;">${statementText}</div>
            <div style="display: flex; flex-direction: column; gap: 10px;">${rows}</div>
            ${remaining > 0 ? `<div style="text-align: center; color: #64748b; margin-top: 12px; font-size: 0.9rem;">+${remaining} more -- check your phone for the full list</div>` : ''}
            <div id="ots-tv-continue-tally" style="text-align: center; color: #64748b; margin-top: 20px; font-size: 0.9rem;">0 / 0 want to continue</div>
            <div id="ots-tv-timer" style="text-align: center; font-size: 1.2rem; font-weight: 600; color: #ffa500; margin-top: 8px;">${secondsLeft ?? ''} s</div>
        </div>
    `;
}

function updateOnTheSpectrumContinueTallyTV(votedCount, totalNeeded) {
    const el = document.getElementById('ots-tv-continue-tally');
    if (el) el.innerText = `${votedCount ?? 0} / ${totalNeeded ?? 0} want to continue`;
}

// ==========================================
// PROFILER TV UI
// ==========================================

const PROFILER_COLOR = '#f472b6';
let profilerAnsweredCount = 0;
let profilerGuessedCount = 0;
let profilerTallyTotal = 0;
let profilerTallyVerb = 'answered';

function profilerEmojiFor(name) {
    const p = (cachedPlayersSnapshot || []).find(player => player.name === name);
    return p && p.emoji ? p.emoji : '👤';
}

function profilerHeader(round, totalRounds) {
    setStatusMessage(`<div style="font-weight: 600; color: #64748b;">Round ${round} / ${totalRounds}</div>`);
    return `<div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 10px;">Profiler · Round ${round} of ${totalRounds}</div>`;
}

// ---------- Flag Me Down ----------
// One screen that fills in as clues unlock: the flag on the left; on the
// right the value ladder (400 -> 100), the clues so far, and the four
// choices. The reveal lights up the answer and shows who locked in when.
let flagMeDownTV = null;
const FMD_COLOR = '#facc15';
const FMD_STAGES = [['Flag', 400], ['Region', 300], ['Capital', 200], ['Map', 100]];

function renderFlagMeDownTV() {
    const t = flagMeDownTV;
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'FLAG_ME_DOWN';
    const reveal = t.reveal;
    const ladder = FMD_STAGES.map(([label, pts], i) => {
        const now = !reveal && i === t.stage, past = i < t.stage || reveal;
        return `<div style="flex: 1; text-align: center; padding: 8px 4px; border-radius: 8px; background: ${now ? 'rgba(250, 204, 21, 0.15)' : '#14161d'}; border: 1px solid ${now ? FMD_COLOR : '#222630'}; opacity: ${past && !now ? 0.45 : 1};">
            <div style="font-size: 0.75rem; font-weight: 700; color: #94a3b8; text-transform: uppercase; letter-spacing: 0.06em;">${label}</div>
            <div style="font-size: 1.15rem; font-weight: 800; color: ${now ? FMD_COLOR : '#f4f5f6'};">${pts}</div>
        </div>`;
    }).join('');
    // Two clue cells side by side; the value space is always there, so
    // nothing shifts when a clue lands.
    const clueCell = (label, value) => `
        <div style="flex: 1; min-width: 0; background: #14161d; border: 1px solid #222630; border-radius: 8px; padding: 8px 14px;">
            <div style="font-size: 0.75rem; font-weight: 700; color: #64748b; text-transform: uppercase; letter-spacing: 0.06em;">${label}</div>
            <div style="font-size: 1.1rem; font-weight: 600; color: ${value ? '#ffffff' : '#475569'}; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${value ? escapeHtml(value) : '&middot; &middot; &middot;'}</div>
        </div>`;
    const spread = t.spread;
    const choices = t.choices.map((name, i) => {
        const letter = 'ABCD'[i];
        const isAnswer = reveal && name === reveal.answer;
        // How the room split (drawAnswerSpread): grows in once, then stays.
        const pct = spread ? Math.round(100 * (spread.counts[letter] || 0) / Math.max(1, spread.total)) : 0;
        const fill = spread ? `<div class="spread-fill" data-pct="${pct}" style="position: absolute; left: 0; top: 0; bottom: 0; width: ${t.spreadDrawn ? pct : 0}%; background: ${isAnswer ? SPREAD_FILL_RIGHT : SPREAD_FILL}; z-index: -1; transition: width 0.6s ease;"></div>` : '';
        return `<div style="position: relative; overflow: hidden; z-index: 0; background: ${isAnswer ? 'rgba(0, 230, 118, 0.15)' : '#1e222b'}; border: 1px solid ${isAnswer ? '#00e676' : '#222630'}; border-radius: 8px; padding: 10px 14px; display: flex; align-items: center; gap: 10px; opacity: ${reveal && !isAnswer ? 0.45 : 1};">${fill}
            <span style="background: rgba(250, 204, 21, 0.12); color: ${FMD_COLOR}; font-weight: 700; padding: 3px 9px; border-radius: 4px; font-size: 0.85rem;">${letter}</span>
            <span style="font-size: 1.05rem; font-weight: 600; color: #f4f5f6;">${escapeHtml(name)}</span>
        </div>`;
    }).join('');
    const results = reveal ? `<div style="display: flex; flex-wrap: wrap; gap: 8px; min-height: 32px;">${reveal.results.map(r => `
        <div style="background: #14161d; border: 1px solid ${r.correct ? '#00e676' : '#222630'}; border-radius: 999px; padding: 5px 12px; font-size: 0.95rem; color: ${r.correct ? '#00e676' : '#94a3b8'};">
            ${escapeHtml(r.name)} ${r.correct ? `+${r.points} <span style="color: #64748b;">(${r.stageLabel})</span>` : (r.choice ? '&#10007;' : '&ndash;')}
        </div>`).join('')}</div>`
        : `<div style="display: flex; justify-content: space-between; align-items: center; min-height: 32px;">
            <div id="fmd-tv-tally" style="font-size: 1rem; font-weight: 600; color: #ffa500;">${t.locked} locked in</div>
            <div style="font-size: 0.9rem; color: #94a3b8;">Lock in on your phone -- the sooner you're sure, the more it's worth.</div>
        </div>`;
    // Flag and map side by side in two same-size boxes (Randy: it got
    // crowded once the map arrived, and they're on the phones too). The map
    // box holds its space until the map clue, so nothing jumps around.
    const box = 'flex: 1; min-width: 0; height: 210px; border-radius: 8px; box-sizing: border-box;';
    const showMap = t.mapUrl && (t.stage >= 3 || reveal);
    const mapBox = showMap
        ? `<img src="${t.mapUrl}" alt="" style="${box} object-fit: contain; background: #14161d;">`
        : `<div style="${box} border: 1px dashed #2a2f3a; display: flex; align-items: center; justify-content: center; color: #475569; font-weight: 600; font-size: 1rem;">🗺️ Map &middot; last clue</div>`;
    panel.innerHTML = `
        <div class="panel-box" style="padding: 24px 32px; flex: 1; display: flex; flex-direction: column; gap: 12px; min-height: 400px; box-sizing: border-box; text-align: left;">
            <div style="display: flex; align-items: baseline; justify-content: space-between; gap: 16px;">
                <div style="font-size: 1.5rem; font-weight: 700; color: #ffffff;">${reveal ? `It's ${escapeHtml(reveal.answer)}!` : 'Whose flag is this?'}</div>
                <div style="font-size: 0.85rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; white-space: nowrap;">Flag ${t.round} of ${t.totalRounds}</div>
            </div>
            <div style="display: flex; gap: 16px;">
                <img src="${t.flagUrl}" alt="" style="${box} object-fit: contain;">
                ${mapBox}
            </div>
            <div style="display: flex; gap: 6px;">${ladder}</div>
            <div style="display: flex; gap: 10px;">${clueCell('Region', t.region)}${clueCell('Capital', t.capital)}</div>
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 10px;">${choices}</div>
            ${results}
        </div>
    `;
    // The spread grows in the first time it's drawn; redraws (the reveal) keep it.
    if (t.spread && !t.spreadDrawn) {
        t.spreadDrawn = true;
        const fills = panel.querySelectorAll('.spread-fill');
        requestAnimationFrame(() => requestAnimationFrame(() => fills.forEach(f => { f.style.width = f.dataset.pct + '%'; })));
    }
}

function updateProfilerTally() {
    const el = document.getElementById('pf-tv-tally');
    if (!el) return;
    const count = currentGamePhase === 'PROFILER_ANSWER' ? profilerAnsweredCount : profilerGuessedCount;
    el.innerText = `${Math.min(count, profilerTallyTotal)} / ${profilerTallyTotal} ${profilerTallyVerb}`;
}

function switchToProfilerQuestionUI(data) {
    const panel = document.getElementById('active-content-stage');
    const options = (data.options || []).map(o => `
        <div style="background: #14161d; border: 1px solid #222630; border-radius: 10px; padding: 12px 18px; font-size: 1.15rem; font-weight: 600; color: #f4f5f6;">${escapeHtml(o.text)}</div>
    `).join('');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${profilerHeader(data.round, data.totalRounds)}
            ${data.isReplacement ? `<div style="color: ${PROFILER_COLOR}; font-weight: 700; margin-bottom: 10px;">New question!</div>` : ''}
            <div style="font-size: 1.9rem; font-weight: 700; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 28px; max-width: 760px;">${escapeHtml(data.questionText)}</div>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 12px; width: 100%; max-width: 760px; margin-bottom: 24px;">${options}</div>
            <div style="font-size: 0.95rem; color: #94a3b8; margin-bottom: 8px;">Answer honestly on your phone -- nobody sees it yet.</div>
            <div id="pf-tv-tally" style="font-size: 1.1rem; font-weight: 600; color: #ffa500;"></div>
        </div>
    `;
    currentGamePhase = 'PROFILER_ANSWER';
    profilerTallyTotal = data.rosterCount || 0;
    profilerTallyVerb = 'answered';
    updateProfilerTally();
}

function switchToProfilerPostUI(data) {
    const panel = document.getElementById('active-content-stage');
    const who = data.count === 1 ? '1 of you said' : `${data.count} of you said`;
    const pickLine = data.count === 1 ? 'Who was it? Pick them on your phone.' : `Who were they? Pick ${data.count} people on your phone.`;
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${profilerHeader(data.round, data.totalRounds)}
            <div style="font-size: 1.1rem; color: #94a3b8; margin-bottom: 22px; max-width: 760px;">${escapeHtml(data.questionText)}</div>
            <div style="font-size: 1.3rem; font-weight: 600; color: ${PROFILER_COLOR}; margin-bottom: 6px;">${who}</div>
            <div style="font-size: 2.6rem; font-weight: 800; color: #ffffff; letter-spacing: -0.02em; margin-bottom: 26px; max-width: 760px;">“${escapeHtml(data.answerText)}”</div>
            <div style="font-size: 1rem; color: #94a3b8; margin-bottom: 8px;">${pickLine}</div>
            <div id="pf-tv-tally" style="font-size: 1.1rem; font-weight: 600; color: #ffa500;"></div>
        </div>
    `;
    currentGamePhase = 'PROFILER_GUESS';
    profilerTallyTotal = data.guessersNeeded || 0;
    profilerTallyVerb = 'locked in';
    updateProfilerTally();
}

function switchToProfilerUnanimousUI(data) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            <div style="font-size: 3rem; font-weight: 800; color: ${PROFILER_COLOR}; margin-bottom: 12px;">Unanimous!</div>
            ${data.answerText
                ? `<div style="font-size: 1.3rem; color: #e2e5e9; margin-bottom: 18px;">Everyone said “${escapeHtml(data.answerText)}”</div>`
                : `<div style="font-size: 1.3rem; color: #e2e5e9; margin-bottom: 18px;">Not enough answers to play this one.</div>`}
            <div style="font-size: 1rem; color: #64748b;">Nothing to guess -- here comes a new question.</div>
        </div>
    `;
    currentGamePhase = 'PROFILER_UNANIMOUS';
}

function switchToProfilerRevealUI(data) {
    const panel = document.getElementById('active-content-stage');
    const choosers = (data.choosers || []).map(name => {
        const finders = (data.foundBy && data.foundBy[name]) || [];
        return `
            <div style="background: rgba(244, 114, 182, 0.08); border: 1px solid ${PROFILER_COLOR}; border-radius: 12px; padding: 16px 22px; min-width: 200px;">
                <div style="font-size: 1.7rem; font-weight: 800; color: #ffffff;">${profilerEmojiFor(name)} ${escapeHtml(name)}</div>
                <div style="font-size: 0.95rem; color: #94a3b8; margin-top: 4px;">${finders.length ? `Found by ${finders.map(escapeHtml).join(', ')}` : 'Nobody found them!'}</div>
                ${data.openBook && data.openBook[name] ? `<div style="font-weight: 700; color: ${PROFILER_COLOR}; margin-top: 4px;">+${data.openBook[name]} open book</div>` : ''}
            </div>
        `;
    }).join('');
    const scorers = (data.results || []).filter(r => r.points > 0).map(r => `
        <span style="background: #14161d; border: 1px solid #222630; border-radius: 20px; padding: 6px 14px; font-weight: 600; color: #f4f5f6;">
            ${escapeHtml(r.name)} <span style="color: #00e676;">+${r.points}</span>${r.perfect && r.needed >= 2 ? ' 🎯' : ''}
        </span>
    `).join('');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 40px; flex: 1; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; min-height: 400px; box-sizing: border-box;">
            ${profilerHeader(data.round, data.totalRounds)}
            <div style="font-size: 1.1rem; color: #94a3b8; margin-bottom: 6px;">${escapeHtml(data.questionText)}</div>
            <div style="font-size: 1.6rem; font-weight: 700; color: #ffffff; margin-bottom: 24px;">“${escapeHtml(data.answerText)}” was...</div>
            <div style="display: flex; flex-wrap: wrap; gap: 14px; justify-content: center; margin-bottom: 24px;">${choosers}</div>
            <div style="display: flex; flex-wrap: wrap; gap: 8px; justify-content: center;">${scorers || '<span style="color: #64748b;">Nobody read this one right.</span>'}</div>
            <div style="margin-top: 26px; font-size: 0.95rem; color: #94a3b8;">Talk it over -- tap <strong style="color: #f4f5f6;">Continue</strong> on your phone when you're ready.</div>
            <div id="pf-tv-continue-tally" style="font-size: 1.05rem; font-weight: 600; color: #ffa500; margin-top: 6px;"></div>
        </div>
    `;
    currentGamePhase = 'PROFILER_REVEAL';
    updateProfilerContinueTally(data.continueVotedCount || 0, data.continueTotalNeeded || 0);
}

function updateProfilerContinueTally(votedCount, totalNeeded) {
    const el = document.getElementById('pf-tv-continue-tally');
    if (el) el.innerText = `${votedCount} / ${totalNeeded} ready for the next question`;
}

function switchToProfilerAwardsUI(data) {
    const panel = document.getElementById('active-content-stage');
    const awards = (data.awards || []).map(a => `
        <div style="background: #14161d; border: 1px solid #222630; border-radius: 12px; padding: 14px 18px; text-align: center; flex: 1 1 160px;">
            <div style="font-size: 1.8rem;">${a.emoji}</div>
            <div style="font-size: 0.75rem; font-weight: 700; color: ${PROFILER_COLOR}; text-transform: uppercase; letter-spacing: 0.06em; margin-top: 4px;">${escapeHtml(a.title)}</div>
            <div style="font-size: 1.15rem; font-weight: 700; color: #ffffff; margin-top: 4px;">${a.names.map(escapeHtml).join(' & ')}</div>
            <div style="font-size: 0.8rem; color: #64748b; margin-top: 2px;">${escapeHtml(a.detail || '')}</div>
        </div>
    `).join('');
    const bars = (data.bars || []).map(b => `
        <div style="display: flex; align-items: center; gap: 14px;">
            <span style="font-weight: 600; color: #f4f5f6; min-width: 150px; text-align: left; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${profilerEmojiFor(b.name)} ${escapeHtml(b.name)}</span>
            <div class="progress-track" style="flex: 1;"><div class="progress-fill" style="background: ${PROFILER_COLOR}; width: ${Math.max(0, Math.min(100, b.accuracy))}%;"></div></div>
            <span style="font-weight: 700; color: #f4f5f6; min-width: 48px; text-align: right;">${b.accuracy}%</span>
        </div>
    `).join('');
    panel.innerHTML = `
        <div class="panel-box" style="padding: 36px; flex: 1; display: flex; flex-direction: column; justify-content: center; box-sizing: border-box;">
            <h2 class="panel-title" style="margin-bottom: 18px; text-align: center;">Who Knows Who</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 12px; margin-bottom: 26px;">${awards}</div>
            <div style="font-size: 0.8rem; font-weight: 600; color: #64748b; text-transform: uppercase; letter-spacing: 0.08em; margin-bottom: 10px;">How well you read the room</div>
            <div style="display: flex; flex-direction: column; gap: 10px;">${bars}</div>
            <div style="text-align: center; color: #64748b; margin-top: 20px; font-size: 0.9rem;">Check your phone for who you know best.</div>
        </div>
    `;
    currentGamePhase = 'PROFILER_AWARDS';
    setStatusMessage(`<div style="font-weight: 600; color: #8892b0;">Final results</div>`);
}

// A reloaded TV gets a full snapshot of the current phase (see
// profilerTvSnapshot in gameEngine.js) and redraws it.
function restoreProfilerTV(snap) {
    document.getElementById('room-status-text').innerText = "Profiler";
    if (snap.phase === 'ANSWER') {
        switchToProfilerQuestionUI({ round: snap.round, totalRounds: snap.totalRounds, questionText: snap.questionText, options: snap.options, rosterCount: snap.rosterCount });
        profilerAnsweredCount = (snap.answeredNames || []).length;
        updateProfilerTally();
        profilerCountdownActive = true;
    } else if (snap.phase === 'GUESS' && snap.post) {
        switchToProfilerPostUI({ round: snap.round, totalRounds: snap.totalRounds, questionText: snap.questionText, answerText: snap.post.answerText, count: snap.post.count, guessersNeeded: snap.guessersNeeded });
        profilerGuessedCount = (snap.guessedNames || []).length;
        updateProfilerTally();
        profilerCountdownActive = true;
    } else if (snap.phase === 'REVEAL' && snap.reveal) {
        switchToProfilerRevealUI({ round: snap.round, totalRounds: snap.totalRounds, ...snap.reveal, continueVotedCount: snap.continueVotedCount, continueTotalNeeded: snap.continueTotalNeeded });
    } else if (snap.phase === 'AWARDS' && snap.results) {
        switchToProfilerAwardsUI(snap.results);
    } else if (snap.phase === 'UNANIMOUS') {
        switchToProfilerUnanimousUI({});
    }
}

// Rebuilds the "Active Module Election" panel from scratch -- switchToCategoryVotingUI/
// switchToQuestionUI/switchToGameOverUI all overwrite this same #active-content-stage,
// so returning to the lobby (post-game consensus) needs to reconstruct the exact
// markup index.html originally shipped with, not just toggle visibility.
function applyRoomVenue(venue, allowedModes) {
    roomVenue = venue || null;
    window.RANDOMANIA_VENUE = roomVenue;
    roomAllowedModes = allowedModes || null;
    const isPub = !!(roomVenue && roomVenue.profile === 'PUB');
    document.body.classList.toggle('pub-profile', isPub);
    const name = (roomVenue && roomVenue.name) || '';
    ['venue-banner-name', 'venue-hud-name'].forEach(id => { document.getElementById(id).innerText = name; });
    document.getElementById('venue-banner-tagline').innerText = (roomVenue && roomVenue.tagline) || '';
    ['venue-banner-logo', 'venue-hud-logo'].forEach(id => {
        const img = document.getElementById(id);
        const url = roomVenue && roomVenue.logoUrl;
        img.style.display = url ? '' : 'none';
        if (url) { img.onerror = () => { img.style.display = 'none'; }; img.src = url; }
    });
    if (currentGamePhase === 'LOBBY') switchToLobbyVoteUI();
}

function switchToLobbyVoteUI() {
    document.getElementById('active-content-stage').innerHTML = window.renderModeElectionTiles(roomAllowedModes);
    currentGamePhase = 'LOBBY';
}

function switchToGameOverUI(players, brand) {
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
            ${brand && brand.logoUrl ? `<img src="${brand.logoUrl}" alt="" style="display: block; height: 120px; width: auto; max-width: 70%; object-fit: contain; margin: 0 auto 20px;" onerror="this.remove()">` : ''}
            <h2 class="panel-title" style="margin-bottom: 8px;">Final Leaderboard</h2>
            <p style="color: #64748b; font-size: 0.95rem; margin: 0 0 32px 0; font-weight: 500;">${brand ? `Thanks for playing at ${escapeHtml(brand.name)}!${brand.tagline ? ` <span style="color: #94a3b8;">${escapeHtml(brand.tagline)}</span>` : ''}` : 'Thanks for playing!'}</p>
            <div style="display: flex; flex-direction: column; gap: 36px;">${rows}</div>
            <div id="return-vote-tally" style="color: #64748b; font-size: 0.85rem; text-align: center; margin-top: 28px;"></div>
        </div>
    `;

    currentGamePhase = 'GAME_OVER';
    setStatusMessage(`<div style="font-weight: 600; color: #8892b0;">Match complete</div>`);
}

// How the room split, as a fill on each answer button (Randy, Oct 2026:
// fills only, no names or counts). It grows in, then stays through the
// reveal; the right answer's fill turns green.
const SPREAD_FILL = 'rgba(148, 163, 184, 0.34)';
const SPREAD_FILL_RIGHT = 'rgba(0, 230, 118, 0.32)';
function drawAnswerSpread(counts, total, rowFor) {
    ['A', 'B', 'C', 'D'].forEach(letter => {
        const row = rowFor(letter);
        if (!row) return;
        let fill = row.querySelector('.spread-fill');
        if (!fill) {
            // z-index -1 inside the row's own stacking context: above the
            // row's background, below its letter and text.
            row.style.position = 'relative';
            row.style.overflow = 'hidden';
            row.style.zIndex = '0';
            fill = document.createElement('div');
            fill.className = 'spread-fill';
            fill.style.cssText = `position: absolute; left: 0; top: 0; bottom: 0; width: 0; background: ${SPREAD_FILL}; z-index: -1; transition: width 0.6s ease, background 0.3s ease;`;
            row.prepend(fill);
        }
        const pct = Math.round(100 * (counts[letter] || 0) / Math.max(1, total));
        fill.dataset.pct = pct;
        requestAnimationFrame(() => requestAnimationFrame(() => { fill.style.width = pct + '%'; }));
    });
}

function highlightCorrectAnswerOnTV(correctLetter) {
    // Highlighting the correct choice row below is the whole reveal -- the status
    // slot's "Question X/Y" progress indicator stays as-is through this, no
    // redundant "Answer: X" text repeated elsewhere.
    const ids = ['A', 'B', 'C', 'D'];

    ids.forEach(letter => {
        const rowNode = document.getElementById(`choice-row-${letter}`) || null;
        const fill = rowNode && rowNode.querySelector('.spread-fill');
        if (letter === correctLetter) {
            if (rowNode) {
                rowNode.style.background = "rgba(0, 230, 118, 0.08)";
                rowNode.style.borderColor = "#00e676";
            }
            if (fill) fill.style.background = SPREAD_FILL_RIGHT;
        } else if (rowNode) {
            // An answer somebody picked stays readable, so the split still shows.
            rowNode.style.opacity = fill && Number(fill.dataset.pct) > 0 ? "0.45" : "0.15";
        }
    });
}

// A Final Wager answer is free-typed player input rendered straight into
// innerHTML (unlike a letter choice or a tile index) -- escape it before
// display so a typed "answer" can't inject markup into the TV page.
function escapeHtml(text) {
    return (text || '').replace(/[&<>"']/g, ch => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[ch]));
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

// 🎯 THIS CLOSES THE MASTER DOMContentLoaded WRAPPER WE ADDED AT THE VERY TOP!
});
