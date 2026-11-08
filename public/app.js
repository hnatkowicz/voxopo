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

    // ---------- Full screen, and keeping the TV awake (Nov 2026) ----------
    // A Fire TV stick's browser shows its address bar and starts the
    // screensaver after a few minutes without a remote press, mid-game.
    // Pressing Show goes full screen and asks the device to stay awake;
    // the top bar's Full screen button gets back in after Back/Esc.
    function isFullscreen() { return !!(document.fullscreenElement || document.webkitFullscreenElement); }
    function enterFullscreen() {
        const el = document.documentElement;
        const request = el.requestFullscreen || el.webkitRequestFullscreen;
        if (!request || isFullscreen()) return;
        try { const result = request.call(el); if (result && result.catch) result.catch(() => {}); } catch (err) {}
    }
    let screenWakeLock = null;
    async function keepScreenAwake() {
        if (!('wakeLock' in navigator) || screenWakeLock || document.visibilityState !== 'visible') return;
        try {
            screenWakeLock = await navigator.wakeLock.request('screen');
            screenWakeLock.addEventListener('release', () => { screenWakeLock = null; });
        } catch (err) { /* not allowed here -- nothing else to do */ }
    }
    // The device drops the wake lock whenever the page is hidden; take it back.
    document.addEventListener('visibilitychange', () => {
        if (document.body.getAttribute('data-view') === 'game') keepScreenAwake();
    });
    const syncFullscreenButton = () => document.body.classList.toggle('is-fullscreen', isFullscreen());
    document.addEventListener('fullscreenchange', syncFullscreenButton);
    document.addEventListener('webkitfullscreenchange', syncFullscreenButton);
    const canFullscreen = !!(document.documentElement.requestFullscreen || document.documentElement.webkitRequestFullscreen);
    document.body.classList.toggle('no-fullscreen', !canFullscreen);
    const btnFullscreen = document.getElementById('btn-fullscreen');
    if (btnFullscreen) btnFullscreen.addEventListener('click', () => { enterFullscreen(); keepScreenAwake(); });

// 1. SUBMIT MANUALLY ENTERED LOBBY CODE -- the only way into a game from the
// TV now. Room creation lives exclusively on /host, gated by an access code;
// the TV only ever joins a lobby that already exists.
if (inputRoomCode && btnSubmitSpectate) {
    inputRoomCode.addEventListener('keydown', e => { if (e.key === 'Enter') btnSubmitSpectate.click(); });
}
if (btnSubmitSpectate) {
    btnSubmitSpectate.addEventListener('click', () => {
        unlockAllAudio(); // real user gesture right here -- primes playback for later WebSocket-triggered calls
        enterFullscreen(); // same click: full screen needs one too
        keepScreenAwake();
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
        let letterRipRoundKey = null; // which Letter Rip pick round the "picked" dots belong to
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
                banner.style.cssText = 'position: fixed; top: 14px; left: 50%; transform: translateX(-50%); z-index: 50; background: var(--rm-surface-2); border: 1px solid var(--rm-slate-700); border-radius: 999px; padding: 8px 18px; color: var(--rm-text-light); font-size: 0.95rem; font-weight: 600;';
                document.body.appendChild(banner);
            }
            banner.innerText = `${votes} of ${needed} needed to end this game`;
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
            // Same pieces as the game screens (Nov 2026), sized to the screen.
            document.getElementById('active-content-stage').innerHTML = tpStage('tp-center break-stage', `
                ${venue.logoUrl ? `<img class="break-logo" src="${venue.logoUrl}" alt="" onerror="this.remove()">` : ''}
                <div class="tp-big" style="font-size: calc(var(--u) * 4);">Break time</div>
                ${notes.length ? `<div id="venue-break-note" class="break-note"></div>` : ''}
                <div id="venue-break-headsup" class="tp-mid" style="display: none; color: var(--rm-brand);">Back in 30 seconds!</div>
                <div id="venue-break-tally" class="tp-small">${data.backCount || 0} of ${data.totalPlayers || 0} are back</div>
            `);
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


        // The clock (Randy, Nov 2026): informational, so a quiet denim gray,
        // smaller than the wordmark, and just the number (no "s" -- a number
        // counting down says it). It brightens to cream for the last 3
        // seconds, with the TV's warning tone, when the room scrambles.
        // Never red: red means wrong. Its slot is a fixed size (styles.css),
        // so it appearing or clearing never moves the screen.
        function setClock(value) {
            const el = document.getElementById('lobby-countdown');
            if (!el) return;
            const text = String(value ?? '').replace(/\s*s$/i, '').trim();
            const number = /^\d+$/.test(text) ? Number(text) : null;
            el.innerText = number === null ? '' : String(number);
            el.classList.toggle('clock-final', number !== null && number > 0 && number <= 3);
        }

        // ---------- The TV's connection to the room ----------
        // Normally a live connection (WebSocket). If it never opens (some
        // hotel, school and library networks block them) or drops (a Wi-Fi
        // blip), the TV checks in twice a second over plain web requests
        // instead (/api/tv-events) and keeps retrying the live connection
        // in the background (Nov 2026). Before this, a dropped connection
        // froze the TV until someone reloaded the page. Every message is
        // numbered, so switching between the two never skips or repeats one.
        let tvRoomCode = null;
        let tvLastSeq = null;   // the last numbered message this TV has handled
        let tvClosed = false;   // the room's gone; stop trying
        let tvPollTimer = null, tvRetryTimer = null, tvPollBusy = false;
        const TV_POLL_MS = 500;
        const TV_RETRY_LIVE_MS = 15000;

        function tvSocketOpen() { return !!socket && socket.readyState === 1; }

        function connectWebSocketEngine(roomCode) {
            showRoomQrCode(roomCode);
            tvRoomCode = roomCode;
            tvLastSeq = null;
            tvClosed = false;
            stopTvFallback();
            openTvSocket();
            // A live connection that hasn't opened in 5 seconds probably won't.
            setTimeout(() => { if (!tvSocketOpen() && tvRoomCode === roomCode) startTvFallback(); }, 5000);
        }

        function openTvSocket() {
            const ws = new WebSocket(`wss://${window.location.host}`);
            socket = ws;
            ws.onopen = () => {
                if (tvLastSeq === null) document.getElementById('room-status-text').innerText = "Live";
                // After a drop, say how far we got, to get just what was missed.
                ws.send(JSON.stringify({ type: 'REGISTER_SCREEN', roomCode: tvRoomCode, after: tvLastSeq }));
                stopTvFallback();
            };
            ws.onmessage = (event) => receiveTvMessage(JSON.parse(event.data));
            ws.onclose = () => { if (socket === ws && !tvClosed) startTvFallback(); };
        }

        function startTvFallback() {
            if (tvPollTimer || tvClosed) return;
            console.warn('[TV] No live connection -- checking in over plain requests instead.');
            const poll = async () => {
                if (tvPollBusy || tvClosed) return;
                tvPollBusy = true;
                try {
                    const res = await fetch('/api/tv-events', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify({ roomCode: tvRoomCode, after: tvLastSeq })
                    });
                    const body = await res.json();
                    if (body.closed) receiveTvMessage({ type: 'ROOM_CLOSED' });
                    else (body.messages || []).forEach(m => receiveTvMessage(JSON.parse(m)));
                } catch (err) {
                    // A blip on the fallback too: just try again next time.
                } finally {
                    tvPollBusy = false;
                }
            };
            poll();
            tvPollTimer = setInterval(poll, TV_POLL_MS);
            tvRetryTimer = setInterval(() => { if (!tvSocketOpen() && !tvClosed) openTvSocket(); }, TV_RETRY_LIVE_MS);
        }

        function stopTvFallback() {
            if (tvPollTimer) clearInterval(tvPollTimer);
            if (tvRetryTimer) clearInterval(tvRetryTimer);
            tvPollTimer = tvRetryTimer = null;
        }

        // Every message, from either path, comes through here once.
        function receiveTvMessage(data) {
            if (typeof data._seq === 'number') {
                // A snapshot (joining, or too far behind) always applies;
                // anything else already handled is skipped.
                if (!data._snapshot && tvLastSeq !== null && data._seq <= tvLastSeq) return;
                tvLastSeq = data._seq;
            }
            handleTvMessage(data);
        }

        function handleTvMessage(data) {
                console.log("[WebSocket API Event Received]", data);
                updateTpLayout(data);

                // The room's gone -- everyone left, or an admin force-reset it.
                // Bounce back to the gateway screen and drop this connection;
                // there's nothing left on the other end to stay wired to.
                if (data.type === 'ROOM_CLOSED') {
                    document.body.setAttribute('data-view', 'gateway');
                    if (window.clearTvTheme) window.clearTvTheme();
                    tvClosed = true;
                    stopTvFallback();
                    if (socket) socket.close();
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
                        setClock(data.categorySecondsLeft + " s");
                        switchToCategoryVotingUI(data.winningGameMode, data.categories);
                        playCategoryMusic();
                    } else if (data.gameState === 'GAME_ROUND' && data.activeQuestionData) {
                        document.getElementById('room-status-text').innerText = "Gameplay Phase";
                        setClock(data.gameSecondsLeft + " s");
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
                    // The venue's TV theme (Christmas...), if it has one on
                    // today; see public/tv-theme.js.
                    if (window.applyTvTheme) window.applyTvTheme(data.venue && data.venue.theme);
                }
                if (data.type === 'LEADERBOARD_UPDATE') {
                    detectNewPlayerArrival(data.players);
                    updateLeaderboardUI(data.players);
                }
                // The lobby clock ran out with no game picked: the room waits
                // for a vote (Randy, Nov 2026), and the TV says what's needed.
                if (data.type === 'LOBBY_WAITING_FOR_VOTE') {
                    setClock('');
                    setStatusMessage(`<div style="font-weight: 600; color: var(--rm-periwinkle);">Pick a game on your phone</div>`);
                }
                if (data.type === 'VOTE_UPDATE' && currentGamePhase === 'LOBBY' && currentStatusHtml.includes('Pick a game')) {
                    setStatusMessage(`<div style="font-weight: 600; color: var(--rm-periwinkle);">Everyone in? Press Start</div>`);
                }
                if (data.type === 'VOTE_UPDATE') {
                    updateModuleElectionUI(data.votes, data.totalVotes);
                }
                if (data.type === 'RETURN_VOTE_UPDATE') {
                    const tally = document.getElementById('return-vote-tally');
                    // Which way the room is leaning (Randy, Nov 2026: in a bigger room
                    // people can't tell each other what they want).
                    if (tally) {
                        const again = data.playAgain || 0, menu = data.mainMenu || 0, total = Math.max(1, again + menu);
                        tally.innerHTML = `
                            <div class="go-vote">
                                <span class="go-vote-label">Play again <strong>${again}</strong></span>
                                <span class="go-vote-bar"><span class="go-vote-again" style="width:${Math.round(100 * again / total)}%"></span></span>
                                <span class="go-vote-label"><strong>${menu}</strong> Main menu</span>
                            </div>
                            <div class="go-vote-count">${data.votedCount} of ${data.totalNeeded} voted</div>`;
                    }
                }
                // A player just locked in an answer -- flip their status-indicator to
                // "answered" (yellow) immediately, well before the round's reveal.
                if (data.type === 'ANSWER_SUBMITTED') {
                    playerAnswerStatus[data.playerName] = 'answered';
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'LOBBY_TIMER_TICK') {
                    setClock(data.secondsLeft);
                }
                if (data.type === 'CATEGORY_TIMER_TICK') {
                    setClock(data.secondsLeft);
                }
                // Listen for Phase 3 active question clock ticks to drive the round countdown banner!
                if (data.type === 'GAME_TIMER_TICK') {
                    // "TIME'S UP!" from the server shows as 0: the countdown says it
                    // (Randy, Nov 2026 -- it took two lines and made the top bar jump).
                    setClock(/^\d/.test(String(data.secondsLeft)) ? data.secondsLeft : '0 s');
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
                    setClock("0 s");
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
                    setClock("30 s"); // Reset banner clock visually
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
                    setStatusMessage(''); // the last tile's "Ben's pick!" isn't news during a break
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
                    setClock('');
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
                    document.getElementById('room-status-text').innerText = "Live";
                    setClock("60s");
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
                    setClock('');
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
                    setClock(''); // the setting clock's last tick
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
                    setClock("0 s");
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
                    setClock('');
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
                    setClock('');
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
                    setClock("0 s");
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
                    setClock('');
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
                    setClock("0 s");
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
                    setClock('');
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
                    setClock(data.secondsLeft + " s");
                    switchToEmpossDurrAccuseVoteUI(data.votedCount, data.totalNeeded);
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
                    setClock(data.secondsLeft + " s");
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
                    setClock('');
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
                    setClock(data.secondsLeft + " s");
                    switchToEmpossDurrDeclareSplashUI(data.impostorName, data.votedCount, data.totalNeeded);
                    stopCategoryMusic();
                    stopCountdownMusic();
                    playAudioTrack('declare-music');
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'EMPOSSDURR_DECLARE_TIMER_TICK') {
                    setClock(data.secondsLeft + " s");
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
                    setClock('');
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
                    setClock(data.secondsLeft + " s");
                    switchToOnTheSpectrumRevealUI(data.namedPlayerName, data.statementText, data.targetValue, data.results, data.tvLimit);
                    playerAnswerStatus = {};
                    updateLeaderboardUI(cachedPlayersSnapshot);
                }
                if (data.type === 'ON_THE_SPECTRUM_CONTINUE_UPDATE') {
                    updateOnTheSpectrumContinueTallyTV(data.votedCount, data.totalNeeded);
                }
                if (data.type === 'ON_THE_SPECTRUM_CONTINUE_TIMER_TICK') {
                    setClock(data.secondsLeft + " s");
                    const t = document.getElementById('ots-tv-timer');
                    if (t) t.innerText = data.secondsLeft + " s";
                }

                // ---------- Profiler ----------
                // Lock-in dots: ANSWER_SUBMITTED (shared with every mode, above)
                // marks answers; PROFILER_GUESS_SUBMITTED marks picks.
                // ---------- Letter Rip ----------
                // One message carries the whole public board; each new pick
                // round clears the scoreboard's "picked" dots.
                if (data.type === 'LETTER_RIP_STATE') {
                    const roundKey = `${data.puzzle}-${data.round}-${data.lrPhase}`;
                    // New pick round, or The Spotlight's wager / first tap round (dots then mean "locked in").
                    const freshRound = (data.lrPhase === 'PICK' && !data.pickedCount)
                        || (data.lrPhase === 'SPOT_WAGER' && data.spotlight && !data.spotlight.wageredCount)
                        || (data.lrPhase === 'SPOT_TAP' && data.round === 1 && data.spotlight && !data.spotlight.lockedCount);
                    if (freshRound && letterRipRoundKey !== roundKey) {
                        playerAnswerStatus = {};
                        updateLeaderboardUI(cachedPlayersSnapshot);
                    }
                    letterRipRoundKey = roundKey;
                    renderLetterRipTV(data);
                }
                if (data.type === 'LETTER_RIP_TICK') {
                    setClock(data.secondsLeft);
                    // The TV's usual last-seconds cue (design rule 5).
                    if (Number(data.secondsLeft) === 3) playAudioTrack('answer-warning-sound');
                }

                // ---------- Flag Me Down ----------
                if (data.type === 'FLAG_ME_DOWN_ROUND') {
                    currentGamePhase = 'FLAG_ME_DOWN'; // before the standings refresh below, or it re-posts the lobby's "Press Start" line
                    document.getElementById('room-status-text').innerText = `Flag Me Down — Flag ${data.round}/${data.totalRounds}`;
                    setClock('');
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
                    if (tally) tally.innerText = `${flagMeDownTV.locked} locked in`; // informative: stays small
                }
                if (data.type === 'FLAG_ME_DOWN_REVEAL' && flagMeDownTV) {
                    Object.assign(flagMeDownTV, { region: data.region, capital: data.capital, mapUrl: data.mapUrl, stage: 3, reveal: data });
                    renderFlagMeDownTV();
                }

                if (data.type === 'PROFILER_QUESTION') {
                    document.getElementById('room-status-text').innerText = "Profiler";
                    setClock('');
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
                    setClock('');
                    switchToProfilerUnanimousUI(data);
                }
                if (data.type === 'PROFILER_REVEAL') {
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Profiler — Reveal";
                    setClock('');
                    playerAnswerStatus = {};
                    switchToProfilerRevealUI(data);
                    setClock((data.secondsLeft || 60) + ' s');
                }
                if (data.type === 'PROFILER_CONTINUE_UPDATE') {
                    updateProfilerContinueTally(data.votedCount, data.totalNeeded);
                }
                if (data.type === 'PROFILER_AWARDS') {
                    profilerCountdownActive = false;
                    document.getElementById('room-status-text').innerText = "Profiler — Results";
                    setClock('');
                    switchToProfilerAwardsUI(data);
                    playAudioTrack('win-music');
                }
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

        // ---------- Thinking Pants read-along layout (Phase 2) ----------
        // Turned on by Thinking Pants' own broadcasts and off by anything
        // that starts something else. The Final Wager's broadcasts are
        // shared with Country Monkey and Flag Me Down, so they leave the
        // layout as it was.
        // The lobby uses it too (Nov 2026): a TV joining a room hears
        // ROOM_VENUE first, and a mid-game join's STATE_CATCH_UP follows.
        // Country Monkey and Trivi-yeah! too (Nov 2026): their region/deck
        // vote and their questions.
        const TP_LAYOUT_ON = new Set(['ROOM_CLOSED', 'ROOM_VENUE', 'RETURN_TO_LOBBY', 'TRANSITION_TO_CATEGORY_VOTE', 'TRANSITION_TO_QUESTION', 'FLAG_ME_DOWN_ROUND', 'PROFILER_QUESTION', 'EMPOSSDURR_ROUND_START', 'ON_THE_SPECTRUM_ROUND_START', 'LETTER_RIP_STATE', 'GAME_OVER']);
        // Every screen uses the new layout now (Nov 2026); kept for any
        // future screen that isn't ready for it.
        const TP_LAYOUT_OFF = new Set([]);
        function updateTpLayout(data) {
            let on = null;
            if (data.type === 'TRANSITION_TO_TRIVI_YEAH_II' || /^TRIVI_YEAH_II_(?!FINAL_)/.test(data.type) || TP_LAYOUT_ON.has(data.type)) on = true;
            else if (TP_LAYOUT_OFF.has(data.type)) on = false;
            else if (data.type === 'STATE_CATCH_UP') on = ['TRIVI_YEAH_II_ROUND', 'CATEGORY_VOTE', 'GAME_ROUND', 'ROUND_REVEAL', 'FLAG_ME_DOWN_ROUND', 'PROFILER_ROUND', 'EMPOSSDURR_ROUND', 'ON_THE_SPECTRUM_ROUND', 'LETTER_RIP_ROUND'].includes(data.gameState);
            if (on === null || on === document.body.classList.contains('tp-layout')) return;
            document.body.classList.toggle('tp-layout', on);
            railMoves = {};
            railLastScores = null;
            updateLeaderboardUI(cachedPlayersSnapshot);
        }

        // The rail's arrows: who moved up or down at the last score change.
        // They stay put until scores change again (joins and answer dots
        // redraw the rail without moving anyone).
        const RAIL_MAX_ROWS = 8; // then "+N more playing" (pub rooms)
        let railMoves = {};
        let railLastScores = null;
        let railLastRanks = {};
        function updateRailMoves(sorted) {
            const scores = sorted.map(p => `${p.name}:${p.score || 0}`).sort().join('|');
            const ranks = {};
            sorted.forEach((p, i) => { ranks[p.name] = i; });
            if (railLastScores !== null && scores !== railLastScores) {
                railMoves = {};
                sorted.forEach((p, i) => {
                    const before = railLastRanks[p.name];
                    if (before === undefined || before === i) return;
                    railMoves[p.name] = before > i ? 'up' : 'down';
                });
            }
            railLastScores = scores;
            railLastRanks = ranks;
        }

        function renderRailRows(sorted) {
            const shown = sorted.slice(0, RAIL_MAX_ROWS);
            const rows = shown.map((player, index) => {
                const status = playerAnswerStatus[player.name];
                const indicatorClass = status === 'correct' ? 'correct' : (status === 'answered' ? 'answered' : '');
                const move = railMoves[player.name];
                return `
                    <tr class="rail-row${index === 0 && (player.score || 0) > 0 ? ' lead' : ''}">
                        <td class="rail-rank"><span class="status-indicator ${indicatorClass}"></span>${index + 1}</td>
                        <td class="rail-id"><span class="rail-wrap">
                            <span class="rail-emoji">${avatarHtml(player.emoji, 1.15)}</span>
                            <span class="rail-name">${escapeHtml(player.name)}</span>
                            <span class="rail-badges">${renderAwardBadges(player.awards)}</span>
                            ${move ? `<span class="rail-move ${move}">${move === 'up' ? '▲' : '▼'}</span>` : ''}
                        </span></td>
                        <td class="rail-score">${(player.score || 0).toLocaleString()}</td>
                    </tr>`;
            }).join('');
            const more = sorted.length - shown.length;
            return rows + (more > 0 ? `<tr class="rail-more"><td colspan="3">+${more} more playing</td></tr>` : '');
        }

        function updateLeaderboardUI(playersList) {
            document.getElementById('lobby-player-count').innerText = playersList.length;
            const tbody = document.getElementById('leaderboard-rows');

            if (!playersList || playersList.length === 0) {
                tbody.innerHTML = `
                    <tr>
                        <td class="indicator-col"></td>
                        <td class="rank-col" style="color: var(--rm-border);">—</td>
                        <td class="awards-col"></td>
                        <td class="identity-col"><span class="identity-wrap"><span class="player-emoji" style="color: var(--rm-border);">👤</span><span class="player-name" style="color: var(--rm-text-muted); font-style: italic;">Waiting for players...</span></span></td>
                        <td class="score-col" style="color: var(--rm-border);">0</td>
                    </tr>
                `;
                return;
            }
            //Automatically reveal the text instructions on the main lobby screen!
            // Gated to LOBBY specifically -- this fires on every LEADERBOARD_UPDATE,
            // including the ones broadcast after every reveal once the game is live,
            // and would otherwise stomp the in-game/game-over status message.
            if (currentGamePhase === 'LOBBY' && !currentStatusHtml.includes('Press Start') && !currentStatusHtml.includes('Pick a game')) {
                setStatusMessage(`<div style="font-weight: 600; color: var(--rm-periwinkle);">Everyone in? Press Start</div>`);
            }

            tbody.innerHTML = '';
            playersList.sort(compareByRank);
            updateRailMoves(playersList);
            if (document.body.classList.contains('tp-layout')) {
                tbody.innerHTML = renderRailRows(playersList);
                return;
            }

            playersList.forEach((player, index) => {
                const row = document.createElement('tr');
                const status = playerAnswerStatus[player.name]; // 'answered' | 'correct' | undefined
                const indicatorClass = status === 'correct' ? 'correct' : (status === 'answered' ? 'answered' : '');
                row.innerHTML = `
                    <td class="indicator-col"><span class="status-indicator ${indicatorClass}"></span></td>
                    <td class="rank-col">${index + 1}</td>
                    <td class="awards-col">${renderAwardBadges(player.awards)}</td>
                    <td class="identity-col"><span class="identity-wrap"><span class="player-emoji">${avatarHtml(player.emoji)}</span><span class="player-name">${player.name}</span></span></td>
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
                    toastQueue.push({ ...player, queuedAt: Date.now() });
                    processToastQueuePipeline();
                }
            });
            cachedPlayersSnapshot = [...freshPlayersList];
            if (wasEmpty && freshPlayersList.length > 0) {
                toastQueue.push({ ...freshPlayersList[0], queuedAt: Date.now() }); // Welcome the very first player into an empty room
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
                <div style="font-weight: 700; color: var(--rm-orange); margin-bottom: 2px;">Heads up</div>
                <div style="font-size: 0.85rem; color: var(--rm-text-2);">${escapeHtml(message)}</div>
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
            // Join announcements queue up one after another; when several people
            // join together the backlog used to run well into the game ("New
            // player joined -- Dee" during round 2). Anything over 10 seconds
            // old is stale news, so it's dropped (say it once, Nov 2026).
            // Once a game is running, only a fresh join (a mid-game arrival) is news.
            const staleAfter = currentGamePhase === 'LOBBY' ? 10000 : 2000;
            while (toastQueue.length && Date.now() - (toastQueue[0].queuedAt || 0) > staleAfter) toastQueue.shift();
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
                            <div style="font-size: 0.85rem; font-weight: 600; color: var(--rm-brand); letter-spacing: -0.01em;">New player joined</div>
                            <div style="font-size: 0.85rem; color: var(--rm-text-muted);">${nextPlayer.name}</div>
                        </div>
                        <span style="font-size: 1.1rem;">${avatarHtml(nextPlayer.emoji)}</span>
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
        const CATEGORY_BAR_COLORS = ['var(--rm-orange)', 'var(--rm-green)', 'var(--rm-red)', 'var(--rm-blue)', 'var(--rm-purple)', 'var(--rm-yellow-soft)'];

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
            setStatusMessage(`<div style="font-weight: 600; color: var(--rm-periwinkle);">Everyone in? Press Start</div>`);

            // Same tiles as the lobby's modes (Nov 2026): the name, a vote bar
            // and a plain count. The phones say what to do, so no instructions.
            const tiles = categoryList.map((c, index) => `
                <div class="lobby-mode">
                    <div class="lobby-mode-head">
                        <div id="lbl-${c.key}" class="lobby-mode-name" style="flex: 1;">${c.label}</div>
                    </div>
                    <div class="lobby-mode-track"><div id="cbar-${c.key}" class="progress-fill" style="background: ${CATEGORY_BAR_COLORS[index % CATEGORY_BAR_COLORS.length]};"></div></div>
                </div>
            `).join('');

            panel.innerHTML = `
                <div class="lobby-stage">
                    <h2 class="lobby-title">${displayGameName}</h2>
                    <div class="lobby-modes">${tiles}</div>
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
            });
        }

        // Country Monkey and Trivi-yeah! questions, in the new layout (Nov
        // 2026): the same pieces as Thinking Pants. The deck (or the venue's
        // logo and name) and "3 / 20" sit in the small line above the question.
        function switchToQuestionUI(categoryLabel, questionText, choiceA, choiceB, choiceC, choiceD, questionNumber, totalQuestions, visualAsset, brand) {
            const panel = document.getElementById('active-content-stage');
            const where = brand
                ? `<span style="display: inline-flex; align-items: center; gap: calc(var(--u) * 0.8); vertical-align: middle;">${brand.logoUrl ? `<img src="${brand.logoUrl}" alt="" style="height: calc(var(--u) * 2.4); width: auto; max-width: calc(var(--u) * 6); object-fit: contain;" onerror="this.remove()">` : ''}Trivi-yeah! at ${escapeHtml(brand.name)}</span>`
                : (categoryLabel || '');
            const progress = questionNumber && totalQuestions ? ` &middot; <span class="tp-pts">${questionNumber} / ${totalQuestions}</span>` : '';
            const eyebrow = `<div class="tp-eyebrow">${where}${progress}</div>`;

            currentGamePhase = 'GAME_ROUND';
            setStatusMessage('');

            // The choice rows keep their choice-row-X ids, so the answer spread
            // and highlightCorrectAnswerOnTV work on them unchanged.
            const answers = `
                <div class="tp-answers">
                    ${[['A', choiceA], ['B', choiceB], ['C', choiceC], ['D', choiceD]].map(([letter, text]) =>
                        `<div id="choice-row-${letter}" class="tp-ans"><b>${letter}</b><span>${text}</span></div>`).join('')}
                </div>`;

            // Pictures (maps, flags, water, landmarks): the picture on the left,
            // the words and answers on the right.
            if (visualAsset) {
                panel.innerHTML = tpStage('tp-split', `
                    <div class="tp-pic"><img src="${visualAsset}" alt=""></div>
                    <div class="tp-words">${eyebrow}${tpQuestion(questionText, true)}${answers}</div>
                `);
                return;
            }
            panel.innerHTML = tpStage('', `${eyebrow}${tpQuestion(questionText, false)}${answers}`);
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

// The Thinking Pants screens below are built from the tp-* pieces in
// styles.css, sized to the screen (Phase 2, Randy, Nov 2026: the question
// is ~3x its old size). They stay readable in the old boxed layout too,
// since the Final Wager is shared with Country Monkey and Flag Me Down.
function tpStage(classes, inner) {
    return `<div class="tp-stage ${classes || ''}">${inner}</div>`;
}
// Long questions step down a size so the answers still fit.
function tpQuestion(text, isPicture) {
    const long = (text || '').length > (isPicture ? 80 : 120);
    return `<div class="tp-q${long ? ' tp-long' : ''}">${text || ''}</div>`;
}

function switchToTriviYeahIIBoardUI(grid, currentPicker, round, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    const boardGrid = grid || [];
    triviYeahIISpotlightCache = {};
    if (round) triviYeahIICurrentRound = round;
    if (totalRounds) triviYeahIITotalRounds = totalRounds;

    currentGamePhase = 'TRIVI_YEAH_II_ROUND';
    document.getElementById('room-status-text').innerText = `Thinking Pants — Round ${triviYeahIICurrentRound}/${triviYeahIITotalRounds}`;
    setStatusMessage(`<div style="font-weight: 600; color: var(--rm-brand);">${currentPicker}'s pick!</div>`);

    // The grid arrives category-major (3 categories x 4 tiers, flat array of
    // 12) -- transposed here into a 3-column x 4-row CSS grid so categories
    // read as columns and point tiers read as rows, the familiar board shape.
    const categoryCount = 3;
    const tierCount = boardGrid.length / categoryCount || 4;

    const headerCells = [];
    for (let c = 0; c < categoryCount; c++) {
        const first = boardGrid[c * tierCount];
        headerCells.push(`<div class="tp-board-head">${first ? first.categoryLabel : ''}</div>`);
    }

    const tileCells = [];
    for (let t = 0; t < tierCount; t++) {
        for (let c = 0; c < categoryCount; c++) {
            const cell = boardGrid[c * tierCount + t];
            if (!cell) { tileCells.push('<div></div>'); continue; }
            tileCells.push(cell.cleared
                ? `<div class="tp-tile tp-gone">&mdash;</div>`
                : `<div class="tp-tile">${cell.points}</div>`);
        }
    }

    panel.innerHTML = tpStage('', `<div class="tp-board">${headerCells.join('')}${tileCells.join('')}</div>`);
}

// Brief full-panel announcement between rounds -- fires once a board's fully
// cleared but more rounds remain, giving the room a beat to register "round
// over" before the next board silently appears underneath it.
function showTriviYeahIIRoundTransitionUI(completedRound, nextRound, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = `Thinking Pants — Round ${completedRound} Complete`;
    panel.innerHTML = tpStage('tp-center', `
        <div class="tp-kicker">Round ${completedRound} Complete</div>
        <div class="tp-big">Starting Round ${nextRound} of ${totalRounds}</div>
    `);
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

    if (stage === 'category') {
        panel.innerHTML = tpStage('tp-center', `
            <div class="tp-kicker">Up next</div>
            <div class="tp-big">${categoryLabel}</div>
            <div class="tp-mid" style="color: var(--rm-brand);">${points} points</div>
        `);
        return;
    }

    const eyebrow = `<div class="tp-eyebrow">${categoryLabel || ''}${points ? ` &middot; <span class="tp-pts">${points}</span>` : ''}</div>`;

    // stage === 'answers' -- the choice rows keep their choice-row-X ids, so
    // the answer spread and highlightCorrectAnswerOnTV work on them unchanged.
    const answers = stage === 'answers' ? `
        <div class="tp-answers">
            ${[['A', choiceA], ['B', choiceB], ['C', choiceC], ['D', choiceD]].map(([letter, text]) =>
                `<div id="choice-row-${letter}" class="tp-ans"><b>${letter}</b><span>${text}</span></div>`).join('')}
        </div>` : '';

    // Picture questions (maps, flags, paintings...): the picture on the left,
    // the words and answers on the right.
    if (visualAsset) {
        panel.innerHTML = tpStage('tp-split', `
            <div class="tp-pic"><img src="${visualAsset}" alt=""></div>
            <div class="tp-words">${eyebrow}${tpQuestion(questionText, true)}${answers}</div>
        `);
        return;
    }
    panel.innerHTML = tpStage('', `${eyebrow}${tpQuestion(questionText, false)}${answers}`);
}

// Dramatic full-panel beat before the wager prompt -- same shape as the
// round-transition announcement, just themed to call out the twist.
// categoryBadge is shown through the whole Doubler sequence (reveal, wager,
// side bets) -- players kept losing track of which category they were
// wagering on once the tile's category label disappeared after the opening
// beat.
function doublerCategoryBadge(categoryLabel) {
    return categoryLabel
        ? `<div class="tp-eyebrow" style="color: var(--rm-orange);">Category: ${categoryLabel}</div>`
        : '';
}

// ---------- Thinking Pants traps ----------
// Icons: Randy's SVGs in public/traps/ when they exist, emoji until then --
// a missing file just falls back, so dropping the art in needs no code change.
const TRAP_ICON_FILES = { SETTING: 'trap-setting', PANTS_ON_FIRE: 'trap-pants-on-fire', HOT_SEAT: 'trap-hot-seat', WEDGIE: 'trap-wedgie' };
const TRAP_ICON_EMOJI = { SETTING: '🤫', PANTS_ON_FIRE: '🔥', HOT_SEAT: '🪑', WEDGIE: '🩲' };
let activeTrapTV = null; // the revealed trap on the current tile, for the question-phase banner

// size is in screen units (--u), so the icons grow with the screen too.
function trapIconHtml(key, sizeU) {
    const emoji = TRAP_ICON_EMOJI[key] || '⚠️';
    return `<img src="/traps/${TRAP_ICON_FILES[key]}.svg" alt="" style="height: calc(var(--u) * ${sizeU}); width: auto;" onerror="this.outerHTML='<span style=&quot;font-size: calc(var(--u) * ${sizeU * 0.8}); line-height: 1;&quot;>${emoji}</span>'">`;
}

function trapRuleFor(trap) {
    if (trap.trapType === 'HOT_SEAT' || trap.type === 'HOT_SEAT') return `${escapeHtml(trap.picker)} answers alone -- no passing. Right or wrong, it counts double.`;
    if (trap.trapType === 'WEDGIE' || trap.type === 'WEDGIE') return `Normal question -- but if ${escapeHtml(trap.picker)} misses it, ${escapeHtml(trap.setter)} collects the points.`;
    return 'Everyone must answer -- no passing. Wrong answers lose double.';
}

function showTriviYeahIITrapSettingUI(setter) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Shhh...";
    panel.innerHTML = tpStage('tp-center', `
        <div>${trapIconHtml('SETTING', 9)}</div>
        <div class="tp-big" style="font-size: calc(var(--u) * 4);">${escapeHtml(setter)} swept a column...</div>
        <div class="tp-small">...and is up to something.</div>
    `);
    setStatusMessage(`<div style="font-weight: 600; color: var(--rm-periwinkle);">🤫 Shhh...</div>`);
}

function showTriviYeahIITrapRevealUI(data) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = `Thinking Pants — ${data.label}!`;
    panel.innerHTML = tpStage('tp-center', `
        ${doublerCategoryBadge(data.categoryLabel)}
        <div class="tp-kicker">It's a trap!</div>
        <div>${trapIconHtml(data.trapType, 10)}</div>
        <div class="tp-big" style="color: var(--rm-red-soft); text-shadow: 0 0 20px rgba(var(--rm-red-soft-rgb), 0.35);">${escapeHtml(data.label).toUpperCase()}</div>
        <div class="tp-mid">${trapRuleFor(data)}</div>
        <div class="tp-small">Set by ${escapeHtml(data.setter)} · ${data.points} points</div>
    `);
}

// Keeps the trap visible while the question plays out.
function addTriviYeahIITrapBanner() {
    if (!activeTrapTV) return;
    const box = document.querySelector('#active-content-stage .tp-words') || document.querySelector('#active-content-stage .tp-stage');
    if (!box) return;
    const banner = document.createElement('div');
    banner.className = 'tp-banner';
    banner.innerHTML = `${trapIconHtml(activeTrapTV.trapType, 3.4)}<span>${escapeHtml(activeTrapTV.label).toUpperCase()} · ${trapRuleFor(activeTrapTV)}</span>`;
    box.insertBefore(banner, box.firstChild);
    document.getElementById('room-status-text').innerText = `Thinking Pants — ${activeTrapTV.label}`;
}

function showTriviYeahIITrapOutcome(trap) {
    let line;
    if (trap.type === 'WEDGIE') {
        line = trap.collected
            ? `Wedgie! ${escapeHtml(trap.picker)} missed -- ${escapeHtml(trap.setter)} collects ${trap.collected}.`
            : `${escapeHtml(trap.picker)} dodged the Wedgie!`;
    } else if (trap.type === 'HOT_SEAT') {
        line = trap.pickerCorrect
            ? `${escapeHtml(trap.picker)} survived the Hot Seat: +${Math.abs(trap.delta)}!`
            : `${escapeHtml(trap.picker)} got burned in the Hot Seat: -${Math.abs(trap.delta)}.`;
    } else {
        line = `Pants on Fire! Wrong answers cost double.`;
    }
    setStatusMessage(`<div style="font-weight: 700; color: var(--rm-red-soft);">${line}</div>`);
}

// Last-round Doublers pay double (Randy, Oct 2026); set by the reveal.
let doublerMultiplier = 1;
function showTriviYeahIIDoublerRevealUI(picker, points, categoryLabel, multiplier) {
    doublerMultiplier = multiplier || 1;
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Doubler!";
    panel.innerHTML = tpStage('tp-center', `
        ${doublerCategoryBadge(categoryLabel)}
        <div class="tp-big" style="color: var(--rm-orange); text-shadow: 0 0 20px rgba(var(--rm-orange-rgb), 0.4);">DOUBLER!</div>
        <div class="tp-mid">${picker} is on the hook for this one.</div>
        <div class="tp-small">${points} points</div>
        ${doublerMultiplier > 1 ? `<div class="tp-mid" style="color: var(--rm-orange-hot);">Side bets are doubled</div>` : ''}
    `);
}

// Waiting room while only the picker's phone shows a wager input -- nothing
// for anyone else to do yet, so this stays deliberately passive.
function showTriviYeahIIWagerPromptUI(picker, maxWager, tileValue, categoryLabel) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center', `
        ${doublerCategoryBadge(categoryLabel)}
        <div class="tp-kicker">Waiting on the wager</div>
        <div class="tp-mid">${picker} is deciding how much to risk&hellip;</div>
    `);
}

// Once the picker's wager locks in, the room sees it immediately -- then
// everyone else places an informed For/Against/Pass bet at the tile's own
// fixed value while the shared countdown (GAME_TIMER_TICK, same banner as
// every other timed phase) ticks down lobby-countdown.
function showTriviYeahIISideBetsOpenUI(picker, wagerAmount, tileValue, categoryLabel) {
    const panel = document.getElementById('active-content-stage');
    document.getElementById('room-status-text').innerText = "Thinking Pants — Side Bets Open";
    panel.innerHTML = tpStage('tp-center', `
        ${doublerCategoryBadge(categoryLabel)}
        <div class="tp-kicker">${picker}'s wager</div>
        <div class="tp-big" style="color: var(--rm-orange);">${wagerAmount} points</div>
    `);
}

// Final beat of the Doubler sequence -- shows the picker's wager outcome
// plus every side-bettor's own win/lose, since each stakes a different
// amount against a different outcome.
function showTriviYeahIIDoublerResultUI(data) {
    const panel = document.getElementById('active-content-stage');

    // Say it once (Randy, Nov 2026): no "-0 points", and no "passed" lines --
    // only side bets that won or lost are news.
    const pickerLine = data.pickerCorrect
        ? `<span style="color: var(--rm-green);">${data.picker} got it right${data.wagerAmount ? ` -- +${data.wagerAmount} points!` : '!'}</span>`
        : `<span style="color: var(--rm-red-soft);">${data.picker} missed it${data.wagerAmount ? ` -- &minus;${data.wagerAmount} points.` : '.'}</span>`;

    const sideBetRows = Object.entries(data.sideBetResults || {}).map(([name, delta]) => {
        if (delta === 0) return '';
        const won = delta > 0;
        return `<div class="tp-small" style="color: ${won ? 'var(--rm-green)' : 'var(--rm-red-soft)'};">${name} ${won ? 'won' : 'lost'} ${Math.abs(delta)} points.</div>`;
    }).join('');

    panel.innerHTML = tpStage('tp-center', `
        <div class="tp-kicker">Correct answer was ${data.correctLetter}</div>
        <div class="tp-mid">${pickerLine}</div>
        <div style="display: flex; flex-direction: column; gap: calc(var(--u) * 0.4);">${sideBetRows}</div>
    `);
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
    panel.innerHTML = tpStage('tp-center', `
        <div class="tp-kicker">One question left. Everything's on the line.</div>
        <div class="tp-big" style="color: var(--rm-gold); text-shadow: 0 0 24px rgba(var(--rm-gold-rgb), 0.35);">FINAL WAGER</div>
        <div class="tp-mid">Topic: ${topicLabel}</div>
    `);
}

function showTriviYeahIIFinalWagerOpenUI() {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center', `
        <div class="tp-kicker">Wagering now</div>
        <div class="tp-mid">Everyone's deciding how much to risk&hellip;</div>
    `);
}

function showTriviYeahIIFinalAnswerOpenUI(topicLabel, questionText, visualAsset) {
    const panel = document.getElementById('active-content-stage');
    const eyebrow = `<div class="tp-eyebrow">Final Wager &middot; ${topicLabel}</div>`;
    const typeLine = ''; // the phone says how to answer
    if (visualAsset) {
        // A picture question: the picture on the left, same as the board's.
        panel.innerHTML = tpStage('tp-split', `
            <div class="tp-pic"><img src="${visualAsset}" alt=""></div>
            <div class="tp-words">${eyebrow}${tpQuestion(questionText, true)}${typeLine}</div>
        `);
        return;
    }
    panel.innerHTML = tpStage('', `${eyebrow}${tpQuestion(questionText, false)}${typeLine}`);
}

function showTriviYeahIIFinalRevealStartUI(correctAnswer) {
    finalWagerRevealLog = [];
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('', `
        <div style="text-align: center; display: flex; flex-direction: column; gap: calc(var(--u) * 0.6);">
            <div class="tp-kicker">The answer</div>
            <div class="tp-big" style="color: var(--rm-green); font-size: calc(var(--u) * 4.2);">${correctAnswer}</div>
        </div>
        <div id="final-wager-reveal-log" class="tp-reveal-log"></div>
    `);
}

function showTriviYeahIIFinalRevealStepUI(data) {
    finalWagerRevealLog.push(data);
    const log = document.getElementById('final-wager-reveal-log');
    if (!log) return;

    const rows = finalWagerRevealLog.map((step, i) => {
        const isLatest = i === finalWagerRevealLog.length - 1;
        const resultColor = step.correct ? 'var(--rm-green)' : 'var(--rm-red-soft)';
        const sign = step.correct ? '+' : '&minus;';
        return `
            <div class="tp-reveal-row${isLatest ? ' tp-latest' : ''}">
                <div style="text-align: left; min-width: 0;">
                    <div class="tp-who">${step.playerName}${step.allIn ? ` <span class="all-in-stamp${isLatest ? ' slam' : ''}">ALL IN!</span>` : ''}</div>
                    <div class="tp-said">Answered: "${step.answerText ? escapeHtml(step.answerText) : '(no answer)'}"</div>
                </div>
                <div style="text-align: right; flex-shrink: 0;">
                    <div class="tp-result" style="color: ${resultColor};">${step.correct ? 'Correct' : 'Incorrect'}${(step.correct && step.winAmount != null ? step.winAmount : step.wagerAmount) ? ` &middot; ${sign}${step.correct && step.winAmount != null ? step.winAmount : step.wagerAmount}` : ''}</div>
                    ${step.hintsUsed != null ? `<div class="tp-note">${step.hintsUsed === 0 ? 'no clues!' : `${step.hintsUsed} clue${step.hintsUsed > 1 ? 's' : ''} used`}</div>` : ''}
                    <div class="tp-note">New score: ${step.newScore}</div>
                </div>
            </div>
        `;
    });
    log.innerHTML = rows.join('');
    // A big room's list outgrows the screen: keep the newest reveal in view.
    log.lastElementChild && log.lastElementChild.scrollIntoView({ block: 'nearest' });
}

// ---------- EmpossDurr ----------
// In the new TV layout (Nov 2026). There's no question to show (the secret
// word is phone-only), so the screen is about the room: who starts the
// clues, the vote, the declaration. The ready/skip counts are informational
// and stay small; the clock lives only in the top bar (said once); the
// phones carry the how-to. Randy's vote/declare art stays: real families
// missed the switch into a vote before it had its own icon and sound.
function switchToEmpossDurrDiscussionUI(round, totalRounds, starterName) {
    currentEmpossDurrRound = round;
    currentEmpossDurrTotalRounds = totalRounds;
    // Only a fresh round broadcasts a starter -- EMPOSSDURR_RESUME_DISCUSSION
    // (the "group couldn't agree" outcome) reopens the SAME round with no new
    // starter, so it passes nothing here and this just keeps the cached name.
    if (starterName) currentEmpossDurrStarterName = starterName;
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'EMPOSSDURR_ROUND';
    setStatusMessage('');
    panel.innerHTML = tpStage('tp-center ed-stage', `
        <div class="tp-eyebrow">Round <span class="tp-pts">${round} / ${totalRounds}</span></div>
        <div class="tp-big">${escapeHtml(currentEmpossDurrStarterName || 'Someone')}</div>
        <div class="tp-mid">starts the round of one-word clues</div>
        <div class="ed-tallies">
            <span id="ed-tv-ready-tally"></span>
            <span id="ed-tv-skip-tally"></span>
        </div>
    `);
}

function updateEmpossDurrReadyTally(readyNames, totalActive) {
    const el = document.getElementById('ed-tv-ready-tally');
    if (el) el.innerText = `${(readyNames || []).length} / ${totalActive || 0} ready to vote`;
}

// Resolves the instant everyone required has submitted, or when the clock
// (top bar) runs out -- real family feedback: no timer at all let a vote
// hang forever on one distracted player.
function switchToEmpossDurrAccuseVoteUI(votedCount, totalNeeded) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center ed-stage', `
        <img class="ed-icon" src="/vote.svg" alt="">
        <div class="tp-kicker">Accuse vote</div>
        <div id="ed-tv-tally" class="tp-big">${votedCount ?? 0} / ${totalNeeded ?? 0}</div>
        <div class="tp-small">Votes are secret.</div>
    `);
}

function switchToEmpossDurrAccuseResultUI(resolution, impostorName) {
    const panel = document.getElementById('active-content-stage');
    let headline, sub;
    if (resolution.type === 'accuse') {
        headline = `${escapeHtml(resolution.targetName)} was accused!`;
        sub = resolution.targetName === impostorName
            ? "They WERE the impostor. Round over."
            : "They were NOT the impostor. The real one escapes with a bonus.";
    } else {
        headline = "The group couldn't agree.";
        sub = "Back to discussion. The impostor survives this vote.";
    }
    panel.innerHTML = tpStage('tp-center ed-stage', `
        <div class="tp-big" style="font-size: calc(var(--u) * 4);">${headline}</div>
        <div class="tp-mid">${sub}</div>
    `);
}

// The one moment allowed to interrupt everything else -- a takeover naming
// the impostor. Not a secret leak: declaring is inherently self-outing in
// person (everyone watches them speak up), same as the phone's splash.
function switchToEmpossDurrDeclareSplashUI(impostorName, votedCount, totalNeeded) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center ed-stage', `
        <img class="ed-icon" src="/exclaim.svg" alt="">
        <div class="tp-big" style="color: var(--rm-orange);">${escapeHtml(impostorName)} declares!</div>
        <div class="tp-mid">Was their guess right?</div>
        <div id="ed-tv-tally" class="tp-big" style="font-size: calc(var(--u) * 3.4);">${votedCount ?? 0} / ${totalNeeded ?? 0}</div>
    `);
}

function switchToEmpossDurrSkippedUI() {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center ed-stage', `
        <div class="tp-big" style="font-size: calc(var(--u) * 4);">Round skipped</div>
        <div class="tp-mid">No scores changed.</div>
    `);
}

function switchToEmpossDurrDeclareResultUI(correct, impostorName) {
    const panel = document.getElementById('active-content-stage');
    // The correct-guess splash already got its moment (the declare
    // takeover's exclaim.svg); a wrong guess gets its own beat. Nothing
    // secret is at stake here: the impostor already self-outed by declaring.
    const wrongGuessIcon = correct ? '' : `<img class="ed-icon" src="/impostor-no.svg" alt="">`;
    panel.innerHTML = tpStage('tp-center ed-stage', `
        ${wrongGuessIcon}
        <div class="tp-big" style="font-size: calc(var(--u) * 4);">${correct ? `${escapeHtml(impostorName)} guessed right!` : `${escapeHtml(impostorName)} guessed wrong!`}</div>
    `);
}

// ==========================================
// ON THE SPECTRUM TV UI
// ==========================================
// In the new TV layout (Nov 2026): whose answer it is, the statement and
// the reveal bars get the room; the round and the locked-in/continue
// counts stay small (blank until the first real count); the clock lives
// only in the top bar; the phones carry the how-to.

function switchToOnTheSpectrumSetTargetUI(namedPlayerName, statementText, round, totalRounds) {
    const panel = document.getElementById('active-content-stage');
    // Set before the standings refresh, or it re-posts the lobby's "Press
    // Start" line beside the QR code mid-game.
    currentGamePhase = 'ON_THE_SPECTRUM';
    setStatusMessage('');
    panel.innerHTML = tpStage('tp-center ots-stage', `
        <div class="tp-eyebrow">Round <span class="tp-pts">${round} / ${totalRounds}</span></div>
        <div class="tp-big">${escapeHtml(namedPlayerName)}</div>
        <div class="tp-mid">sets their true answer</div>
        ${tpQuestion(statementText, false)}
    `);
}

function switchToOnTheSpectrumGuessingUI(namedPlayerName, statementText) {
    currentGamePhase = 'ON_THE_SPECTRUM';
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center ots-stage', `
        <div class="tp-kicker">Guessing ${escapeHtml(namedPlayerName)}'s answer</div>
        ${tpQuestion(statementText, false)}
        <div id="ots-tv-lockin-tally" class="pf-tally"></div>
    `);
}

function updateOnTheSpectrumLockInTallyTV(lockedInNames, totalGuessersNeeded) {
    const el = document.getElementById('ots-tv-lockin-tally');
    if (el) el.innerText = `${(lockedInNames || []).length} / ${totalGuessersNeeded || 0} locked in`;
}

// Same purple as this mode's own vote bar on the lobby screen -- one
// consistent color for every row here, the named player's row told apart
// by label/border instead, so the bar color always just means "On the
// Spectrum" rather than trying to also encode accuracy.
const ON_THE_SPECTRUM_BAR_COLOR = 'var(--rm-purple)';

function otsBarRow(name, value, isNamed) {
    const pct = Math.max(0, Math.min(100, value));
    return `
        <div class="ots-row${isNamed ? ' actual' : ''}">
            <span class="ots-name">${escapeHtml(name)}${isNamed ? ' <span class="ots-actual">actual</span>' : ''}</span>
            <div class="lobby-mode-track" style="flex: 1;"><div class="progress-fill" style="background: ${ON_THE_SPECTRUM_BAR_COLOR}; width: ${pct}%;"></div></div>
            <span class="ots-value">${value}</span>
        </div>
    `;
}

// Truncates guesser rows to tvLimit (a shared TV can't scroll, and past a
// handful the rows get too thin to read from across a room) -- the complete
// sorted list still goes to every phone via /api/room-status. The named
// player's own row always shows, on top, uncounted against that limit.
function switchToOnTheSpectrumRevealUI(namedPlayerName, statementText, targetValue, results, tvLimit) {
    currentGamePhase = 'ON_THE_SPECTRUM';
    const panel = document.getElementById('active-content-stage');
    const shown = (results || []).slice(0, tvLimit || 6);
    const remaining = (results || []).length - shown.length;
    const rows = [otsBarRow(namedPlayerName, targetValue, true)]
        .concat(shown.map(r => otsBarRow(r.name, r.value, false)))
        .join('');
    panel.innerHTML = tpStage('ots-stage', `
        <div class="tp-small" style="text-align: center; max-width: none;">${statementText}</div>
        <div class="ots-rows">${rows}</div>
        ${remaining > 0 ? `<div class="pf-tally" style="text-align: center;">+${remaining} more</div>` : ''}
        <div id="ots-tv-continue-tally" class="pf-tally" style="text-align: center;"></div>
    `);
}

function updateOnTheSpectrumContinueTallyTV(votedCount, totalNeeded) {
    const el = document.getElementById('ots-tv-continue-tally');
    if (el) el.innerText = `${votedCount ?? 0} / ${totalNeeded ?? 0} ready`;
}

// ==========================================
// LETTER RIP TV UI (Randy, Nov 2026)
// ==========================================
// The board gets the room: the category (the clue) and the phrase as tiles,
// each word kept whole on its line. What a solve is worth and how many have
// picked stay small underneath, and the clock lives in the top bar. Picks
// are secret, so the TV only ever shows what the room has earned: the
// letters it lit, how many picked each, and who solved it.
let letterRipShown = { puzzle: null, keys: new Set() };

// Tiles that weren't showing a moment ago flip in. Tracked by position, so
// a Spotlight flip (one square) and a letter (every copy) both work.
function letterRipTilesHtml(tiles, fresh, spots) {
    let at = 0;
    return tiles.map(word => {
        const html = `<span class="lr-word">${word.map((ch, k) => {
            const i = at + k;
            let tile;
            if (ch === '') tile = '<span class="lr-tile"></span>';
            else if (!/[A-Z]/.test(ch)) tile = `<span class="lr-tile lr-punct">${escapeHtml(ch)}</span>`;
            else tile = `<span class="lr-tile lr-lit${fresh.has(i) ? ' lr-new' : ''}">${ch}</span>`;
            if (!spots) return tile;
            // The Spotlight: whoever is on this tile, under it (3 avatars, then +N).
            const here = spots.filter(s => s.tile === i);
            const lit = here.length ? ' lr-spotlit' : '';
            const faces = here.slice(0, 3).map(s => avatarHtml(s.emoji, 1)).join('') + (here.length > 3 ? `<span class="lr-spot-more">+${here.length - 3}</span>` : '');
            return `<span class="lr-cell${lit}">${tile}<span class="lr-spots">${faces}</span></span>`;
        }).join('')}</span>`;
        at += word.length + 1;
        return html;
    }).join('');
}

function letterRipFreshKeys(data) {
    const key = data.spotlight ? 'spotlight' : data.puzzle;
    if (letterRipShown.puzzle !== key) letterRipShown = { puzzle: key, keys: new Set() };
    const showing = new Set();
    let at = 0;
    data.tiles.forEach(word => { word.forEach((ch, k) => { if (/[A-Z]/.test(ch)) showing.add(at + k); }); at += word.length + 1; });
    const fresh = new Set([...showing].filter(i => !letterRipShown.keys.has(i)));
    letterRipShown.keys = showing;
    return fresh;
}

function renderLetterRipTV(data) {
    if (data.spotlight) return renderSpotlightTV(data);
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'LETTER_RIP';
    setStatusMessage('');
    const fresh = letterRipFreshKeys(data);

    let foot = '';
    if (data.lrPhase === 'DONE') {
        foot = data.solver
            ? `<div class="lr-solver">${avatarHtml(data.solver.emoji, 1)}<span class="lr-solver-name">${escapeHtml(data.solver.name)}</span><span class="lr-solver-points">+${data.solver.points.toLocaleString('en-US')}</span></div>`
            : `<div class="lr-note">Nobody solved it</div>`;
    } else if (data.lrPhase === 'REVEAL') {
        const lit = (data.lastReveal || []).map(r => `<span class="lr-chip">${r.letter}<span class="lr-chip-count">${r.pickers} picked</span></span>`).join('');
        const free = data.freeLetter ? `<span class="lr-chip lr-chip-free">${data.freeLetter}<span class="lr-chip-count">no hits, a free letter</span></span>` : '';
        foot = `<div class="lr-chips">${lit}${free}</div>`;
    } else {
        foot = `<div class="lr-note">${data.pickedCount ? `${data.pickedCount} / ${data.playerCount} picked` : '&nbsp;'}</div>`;
    }
    const wrong = data.wrong && data.lrPhase !== 'DONE'
        ? `<div class="lr-wrong">${avatarHtml(data.wrong.emoji, 1)} ${escapeHtml(data.wrong.name)} guessed wrong</div>` : '';

    panel.innerHTML = tpStage('tp-center lr-stage', `
        <div class="tp-eyebrow">Puzzle <span class="tp-pts">${data.puzzle} / ${data.total}</span>${data.lrPhase !== 'DONE' ? ` &middot; Worth <span class="tp-pts">${data.pot.toLocaleString('en-US')}</span>` : ''}</div>
        <div class="lr-category">${escapeHtml(data.category)}</div>
        <div class="lr-board">${letterRipTilesHtml(data.tiles, fresh)}</div>
        ${foot}
        ${wrong}
    `);
    if (data.lrPhase === 'PICK') setClock(data.secondsLeft);
    else setClock('');
}

// The Spotlight (Letter Rip's wager final). The board and the avatars on
// it get the room; the round and what a right answer pays stay small on
// top. Wagers and answers stay secret until each player's result.
function renderSpotlightTV(data) {
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'LETTER_RIP';
    setStatusMessage('');
    const sp = data.spotlight;
    const fresh = letterRipFreshKeys(data);
    const pays = x => `${String(x).replace('.5', '&frac12;')}&times;`;
    let eyebrow = '', foot = '';
    if (data.lrPhase === 'SPOT_WAGER') {
        foot = `<div class="lr-note">${sp.wageredCount ? `${sp.wageredCount} / ${data.playerCount} wagered` : '&nbsp;'}</div>`;
    } else if (data.lrPhase === 'SPOT_REVEAL') {
        eyebrow = `<div class="tp-eyebrow">The Spotlight</div>`;
        const rows = sp.results.slice(-6).map(r => `
            <div class="lr-result">
                ${avatarHtml(r.emoji, 1)}<span class="lr-result-name">${escapeHtml(r.name)}</span>
                <span class="lr-result-answer">${r.answer ? escapeHtml(r.answer) : 'No answer'}</span>
                <span class="lr-result-delta ${r.right ? 'lr-right' : r.delta ? 'lr-miss' : ''}">${r.delta > 0 ? '+' : ''}${r.delta ? r.delta.toLocaleString('en-US') : ''}${r.right && r.pays > 1 ? ` <span class="lr-result-pays">${pays(r.pays)}</span>` : ''}</span>
            </div>`).join('');
        foot = `<div class="lr-results">${rows}</div>`;
    } else {
        const what = data.lrPhase === 'SPOT_LAST' ? 'Last call' : `Round <span class="tp-pts">${sp.round} / ${sp.rounds}</span>`;
        eyebrow = `<div class="tp-eyebrow">The Spotlight &middot; ${what} &middot; Right pays <span class="tp-pts">${pays(sp.pays)}</span></div>`;
        foot = `<div class="lr-note">${sp.lockedCount ? `${sp.lockedCount} / ${data.playerCount} locked in` : '&nbsp;'}</div>`;
    }
    const title = data.lrPhase === 'SPOT_WAGER' ? `<div class="lr-splash">The Spotlight</div>` : '';
    panel.innerHTML = tpStage('tp-center lr-stage', `
        ${eyebrow}${title}
        <div class="lr-category">${escapeHtml(data.category)}</div>
        <div class="lr-board lr-board-spot${data.lrPhase === 'SPOT_REVEAL' ? ' lr-board-small' : ''}">${letterRipTilesHtml(data.tiles, fresh, data.lrPhase === 'SPOT_TAP' ? sp.spots : [])}</div>
        ${foot}
    `);
    if (data.lrPhase === 'SPOT_TAP' || data.lrPhase === 'SPOT_LAST') setClock(data.secondsLeft);
    else setClock('');
}

// ==========================================
// PROFILER TV UI
// ==========================================

const PROFILER_COLOR = 'var(--rm-pink)';
let profilerAnsweredCount = 0;
let profilerGuessedCount = 0;
let profilerTallyTotal = 0;
let profilerTallyVerb = 'answered';

function profilerEmojiFor(name) {
    const p = (cachedPlayersSnapshot || []).find(player => player.name === name);
    return avatarHtml(p && p.emoji);
}

// ---------- Flag Me Down ----------
// One screen that fills in as clues unlock: the flag on the left; on the
// right the value ladder (400 -> 100), the clues so far, and the four
// choices. The reveal lights up the answer and shows who locked in when.
let flagMeDownTV = null;
const FMD_COLOR = 'var(--rm-yellow)';
const FMD_STAGES = [['Flag', 400], ['Region', 300], ['Capital', 200], ['Map', 100]];

// Flag Me Down in the new TV layout (Nov 2026). What's crucial to play gets
// the room: the flag and the map (same-size boxes, side by side; the map's
// box holds its place until the last clue, so nothing jumps), the region
// and capital clues, and the four answers. What's only informative --
// "Flag 3 / 15" and the points ladder -- shares one small line on top.
// Said once: no "Whose flag is this?" (a flag and four countries say it),
// no "Lock in on your phone" (the phone says it).
function renderFlagMeDownTV() {
    const t = flagMeDownTV;
    const panel = document.getElementById('active-content-stage');
    currentGamePhase = 'FLAG_ME_DOWN';
    const reveal = t.reveal;
    const ladder = FMD_STAGES.map(([label, pts], i) => {
        const now = !reveal && i === t.stage, past = i < t.stage || reveal;
        return `<span class="fmd-step${now ? ' now' : ''}${past && !now ? ' past' : ''}">${label} <b>${pts}</b></span>`;
    }).join('');
    const clueCell = (label, value) => `
        <div class="fmd-clue">
            <div class="fmd-clue-label">${label}</div>
            <div class="fmd-clue-value${value ? '' : ' empty'}">${value ? escapeHtml(value) : '&middot; &middot; &middot;'}</div>
        </div>`;
    const spread = t.spread;
    const choices = t.choices.map((name, i) => {
        const letter = 'ABCD'[i];
        const isAnswer = reveal && name === reveal.answer;
        // How the room split (drawAnswerSpread): grows in once, then stays.
        const pct = spread ? Math.round(100 * (spread.counts[letter] || 0) / Math.max(1, spread.total)) : 0;
        const fill = spread ? `<div class="spread-fill" data-pct="${pct}" style="position: absolute; left: 0; top: 0; bottom: 0; width: ${t.spreadDrawn ? pct : 0}%; background: ${isAnswer ? SPREAD_FILL_RIGHT : SPREAD_FILL}; z-index: -1; transition: width 0.6s ease;"></div>` : '';
        return `<div class="tp-ans" style="position: relative; overflow: hidden; z-index: 0;${isAnswer ? ' background: rgba(var(--rm-green-rgb), 0.12); border-color: var(--rm-green);' : ''} opacity: ${reveal && !isAnswer ? 0.45 : 1};">${fill}<b>${letter}</b><span>${escapeHtml(name)}</span></div>`;
    }).join('');
    const footer = reveal
        ? `<div class="fmd-results">${reveal.results.map(r => `
            <span class="fmd-result${r.correct ? ' right' : ''}">${escapeHtml(r.name)} ${r.correct ? `+${r.points}` : (r.choice ? '&#10007;' : '&ndash;')}</span>`).join('')}</div>`
        : `<div class="fmd-results"><span id="fmd-tv-tally" class="fmd-tally">${t.locked ? `${t.locked} locked in` : ''}</span></div>`;
    const showMap = t.mapUrl && (t.stage >= 3 || reveal);
    const mapBox = showMap
        ? `<img class="fmd-pic" src="${t.mapUrl}" alt="">`
        : `<div class="fmd-pic fmd-pic-waiting"></div>`;
    panel.innerHTML = tpStage('fmd-stage', `
        <div class="fmd-top">
            <div class="tp-eyebrow">Flag <span class="tp-pts">${t.round} / ${t.totalRounds}</span></div>
            <div class="fmd-ladder">${ladder}</div>
        </div>
        <div class="fmd-pics"><img class="fmd-pic" src="${t.flagUrl}" alt="">${mapBox}</div>
        <div class="fmd-clues">${clueCell('Region', t.region)}${clueCell('Capital', t.capital)}</div>
        <div class="tp-answers fmd-answers">${choices}</div>
        ${footer}
    `);
    // The spread grows in the first time it's drawn; redraws (the reveal) keep it.
    if (t.spread && !t.spreadDrawn) {
        t.spreadDrawn = true;
        const fills = panel.querySelectorAll('.spread-fill');
        requestAnimationFrame(() => requestAnimationFrame(() => fills.forEach(f => { f.style.width = f.dataset.pct + '%'; })));
    }
}

// Profiler in the new TV layout (Nov 2026), same rules as the rest: what's
// crucial (the question, the posted answer, who said it, the awards) gets
// the room; what's informational (the round, the "3 / 5 answered" counts)
// stays small; instructions the phones already give are said once, there.
// "Nobody sees it yet" stays: that promise is what gets honest answers.
function profilerHeader(round, totalRounds) {
    setStatusMessage('');
    return `<div class="tp-eyebrow">Round <span class="tp-pts">${round} / ${totalRounds}</span></div>`;
}

function updateProfilerTally() {
    const el = document.getElementById('pf-tv-tally');
    if (!el) return;
    const count = currentGamePhase === 'PROFILER_ANSWER' ? profilerAnsweredCount : profilerGuessedCount;
    el.innerText = `${Math.min(count, profilerTallyTotal)} / ${profilerTallyTotal} ${profilerTallyVerb}`;
}

function switchToProfilerQuestionUI(data) {
    const panel = document.getElementById('active-content-stage');
    const options = (data.options || []).map(o => `<div class="pf-option">${escapeHtml(o.text)}</div>`).join('');
    panel.innerHTML = tpStage('tp-center pf-stage', `
        ${profilerHeader(data.round, data.totalRounds)}
        ${data.isReplacement ? `<div class="tp-kicker" style="color: ${PROFILER_COLOR};">New question</div>` : ''}
        ${tpQuestion(escapeHtml(data.questionText), false)}
        <div class="pf-options">${options}</div>
        <div class="tp-small">Answer honestly on your phone -- nobody sees it yet.</div>
        <div id="pf-tv-tally" class="pf-tally"></div>
    `);
    currentGamePhase = 'PROFILER_ANSWER';
    profilerTallyTotal = data.rosterCount || 0;
    profilerTallyVerb = 'answered';
    updateProfilerTally();
}

function switchToProfilerPostUI(data) {
    const panel = document.getElementById('active-content-stage');
    const who = data.count === 1 ? '1 of you said' : `${data.count} of you said`;
    panel.innerHTML = tpStage('tp-center pf-stage', `
        ${profilerHeader(data.round, data.totalRounds)}
        <div class="tp-small">${escapeHtml(data.questionText)}</div>
        <div class="tp-kicker" style="color: ${PROFILER_COLOR};">${who}</div>
        <div class="tp-big pf-answer">“${escapeHtml(data.answerText)}”</div>
        <div id="pf-tv-tally" class="pf-tally"></div>
    `);
    currentGamePhase = 'PROFILER_GUESS';
    profilerTallyTotal = data.guessersNeeded || 0;
    profilerTallyVerb = 'locked in';
    updateProfilerTally();
}

function switchToProfilerUnanimousUI(data) {
    const panel = document.getElementById('active-content-stage');
    panel.innerHTML = tpStage('tp-center pf-stage', `
        <div class="tp-big" style="color: ${PROFILER_COLOR};">Unanimous!</div>
        <div class="tp-mid">${data.answerText ? `Everyone said “${escapeHtml(data.answerText)}”` : 'Not enough answers to play this one.'}</div>
    `);
    currentGamePhase = 'PROFILER_UNANIMOUS';
}

function switchToProfilerRevealUI(data) {
    const panel = document.getElementById('active-content-stage');
    const choosers = (data.choosers || []).map(name => {
        const finders = (data.foundBy && data.foundBy[name]) || [];
        return `
            <div class="pf-person">
                <div class="pf-person-name">${profilerEmojiFor(name)} ${escapeHtml(name)}</div>
                <div class="pf-person-note">${finders.length ? `Found by ${finders.map(escapeHtml).join(', ')}` : 'Nobody found them!'}</div>
                ${data.openBook && data.openBook[name] ? `<div class="pf-person-note" style="color: var(--rm-brand); font-weight: 700;">+${data.openBook[name]} open book</div>` : ''}
            </div>
        `;
    }).join('');
    const scorers = (data.results || []).filter(r => r.points > 0).map(r => `
        <span class="fmd-result right">${escapeHtml(r.name)} +${r.points}${r.perfect && r.needed >= 2 ? ' 🎯' : ''}</span>
    `).join('');
    panel.innerHTML = tpStage('tp-center pf-stage', `
        ${profilerHeader(data.round, data.totalRounds)}
        <div class="tp-small">${escapeHtml(data.questionText)}</div>
        <div class="tp-mid">“${escapeHtml(data.answerText)}” was...</div>
        <div class="pf-people">${choosers}</div>
        <div class="fmd-results" style="justify-content: center;">${scorers || '<span class="fmd-tally">Nobody read this one right.</span>'}</div>
        <div id="pf-tv-continue-tally" class="pf-tally"></div>
    `);
    currentGamePhase = 'PROFILER_REVEAL';
    updateProfilerContinueTally(data.continueVotedCount || 0, data.continueTotalNeeded || 0);
}

function updateProfilerContinueTally(votedCount, totalNeeded) {
    const el = document.getElementById('pf-tv-continue-tally');
    if (el) el.innerText = `${votedCount} / ${totalNeeded} ready`;
}

function switchToProfilerAwardsUI(data) {
    const panel = document.getElementById('active-content-stage');
    const awards = (data.awards || []).map(a => `
        <div class="pf-award">
            <div class="pf-award-emoji">${a.emoji}</div>
            <div class="pf-award-title">${escapeHtml(a.title)}</div>
            <div class="pf-award-names">${a.names.map(escapeHtml).join(' & ')}</div>
            <div class="pf-award-detail">${escapeHtml(a.detail || '')}</div>
        </div>
    `).join('');
    const bars = (data.bars || []).map(b => `
        <div class="pf-bar">
            <span class="pf-bar-name">${profilerEmojiFor(b.name)} ${escapeHtml(b.name)}</span>
            <div class="lobby-mode-track" style="flex: 1;"><div class="progress-fill" style="background: ${PROFILER_COLOR}; width: ${Math.max(0, Math.min(100, b.accuracy))}%;"></div></div>
            <span class="pf-bar-pct">${b.accuracy}%</span>
        </div>
    `).join('');
    panel.innerHTML = tpStage('pf-stage pf-awards-stage', `
        <div class="tp-big" style="font-size: calc(var(--u) * 3); text-align: center;">Who Knows Who</div>
        <div class="pf-awards">${awards}</div>
        <div class="tp-eyebrow" style="color: var(--rm-text-muted);">How well you read the room</div>
        <div class="pf-bars">${bars}</div>
    `);
    currentGamePhase = 'PROFILER_AWARDS';
    setStatusMessage('');
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

// The podium (Randy, Nov 2026: "If you win, your avatar wins"). The winner's
// avatar big in the middle with a gold glow, second and third smaller on
// either side, each name on a gold/silver/bronze plate like the old buttons.
// No "Final scores" title and no list: the rail already has every score.
// Ties can't happen here -- compareByRank breaks them (bullseyes, right
// answers, fastest, then who joined first).
function switchToGameOverUI(players, brand) {
    const panel = document.getElementById('active-content-stage');
    const topThree = [...(players || [])].sort(compareByRank).slice(0, 3);
    const medals = ['gold', 'silver', 'bronze'];
    const place = (player, index) => player ? `
        <div class="go-place go-p${index + 1}">
            <div class="go-avatar">${avatarHtml(player.emoji, 1)}</div>
            <div class="go-plate go-${medals[index]}">
                <span class="go-name">${escapeHtml(player.name)}</span>
                <span class="go-score">${(player.score || 0).toLocaleString("en-US")}</span>
            </div>
        </div>` : '';
    // Second, first, third: the winner stands in the middle.
    const podium = [place(topThree[1], 1), place(topThree[0], 0), place(topThree[2], 2)].join('');
    const venue = brand ? `
        <div class="go-venue">
            ${brand.logoUrl ? `<img src="${brand.logoUrl}" alt="" onerror="this.remove()">` : ''}
            <span>Thanks for playing at ${escapeHtml(brand.name)}${brand.tagline ? ` <span class="go-tagline">&middot; ${escapeHtml(brand.tagline)}</span>` : ''}</span>
        </div>` : '';

    panel.innerHTML = tpStage('go-stage', `
        <div class="go-podium">${podium}</div>
        ${venue}
        <div id="return-vote-tally" class="pf-tally" style="text-align: center;"></div>
    `);

    currentGamePhase = 'GAME_OVER';
    setStatusMessage('');
}

// How the room split, as a fill on each answer button (Randy, Oct 2026:
// fills only, no names or counts). It grows in, then stays through the
// reveal; the right answer's fill turns green.
const SPREAD_FILL = 'rgba(var(--rm-text-soft-rgb), 0.34)';
const SPREAD_FILL_RIGHT = 'rgba(var(--rm-green-rgb), 0.32)';
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
                rowNode.style.background = "rgba(var(--rm-green-rgb), 0.08)";
                rowNode.style.borderColor = "var(--rm-green)";
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
