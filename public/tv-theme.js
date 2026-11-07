// TV themes (Randy, Nov 2026): seasonal and event decorations, Randy's art
// in public/themes/<theme>/. app.js calls applyTvTheme(venue.theme) when a
// room's venue arrives (ROOM_VENUE) and clearTvTheme() when the room closes.
//
// How it works:
// - Each piece hangs from a part of the TV that's on every screen and never
//   moves (the wordmark, the room code, the scoreboard, "Scan to join"), so
//   it stays put while the game changes underneath, at any TV size.
// - The pieces sit in one layer on top of the game (Randy: designed for on
//   top), below the toasts, and see-through to taps and remote clicks.
// - Positions are in "u" (1% of the 16:9 frame's width), like the rest of
//   the TV, and are re-measured whenever the screen changes.
// - A piece whose file isn't uploaded yet is simply left off.
// - Rules every theme keeps (public/themes/README.md): never over the QR
//   code, never recolors the game, no licensed characters.
(function () {
    // Where each piece hangs. anchor: which part of the TV. x/y: where on
    // that part (0 = its left/top edge, 1 = its right/bottom edge), then
    // dx/dy nudges and w (the piece's width) in u. Tune by eye on the stick.
    const THEMES = {
        CHRISTMAS: {
            folder: '/themes/christmas/',
            pieces: [
                // Tinsel draped over "Rando" only, hanging from the top of the
                // "R" and the crook of the "M" (Randy, Nov 2026). Measured:
                // the garland's high points sit 6% and 93% across it, the R's
                // top at 4% of the wordmark and the M's crook at 56%, so at
                // 60.5% of the wordmark's width both points line up. (A
                // shallower, squashed version was tried and looked thin; the
                // drawn depth stays. hScale/rotate/origin can still reshape a
                // piece if a later drawing needs it.)
                { file: 'garland', anchor: 'logo', x: 0.003, y: 0, dx: 0, dy: 0, wOfAnchor: 0.605 },
                // A glass ornament just past "Mania!" (not over the "!"), or
                // past a pub's name in the top bar -- never over the venue's
                // branding, which they pay for.
                { file: 'ornament-2', anchor: 'brand', x: 1, y: 0, dx: 1.0, dy: -1.4, w: 2.6 },
                // The string of lights along the top, after the wordmark (or
                // the pub's name); its bulbs' glows twinkle (see loadPiece).
                // At a pub the top bar is fuller, so it shortens to stop
                // short of "Room".
                { file: 'lights', anchor: 'brand', x: 1, y: 0, dx: 3.6, dy: -1.2, w: 24, stopBefore: 'roomlabel', twinkle: true },
                // The blue ornament hanging under the room code (Randy's mockup).
                { file: 'ornament-1', anchor: 'roomcode', x: 0.5, y: 1, dx: -1.3, dy: -1.4, w: 2.6 },
                // Icicles off the scoreboard's top-right corner, centered on
                // its border so they hang clear of the score column.
                { file: 'icicles-scores', anchor: 'scores', x: 1, y: 0, dx: -1.1, dy: -0.4, w: 2.2 },
                // Not drawn yet: icicles-scan (from "Scan to join", never over
                // the QR code), frost-scores (on top of the scoreboard's bottom).
                { file: 'icicles-scan', anchor: 'scan', x: 0, y: 0, dx: 0, dy: -0.4, w: 2.2 },
                { file: 'frost-scores', anchor: 'scores', x: 0, y: 1, dx: 0, dy: 0, wOfAnchor: 1, fromBottom: true }
            ]
        }
    };

    // The parts of the TV a piece can hang from.
    const ANCHORS = {
        logo: () => document.getElementById('hud-logo'),
        // A pub's name and logo in the top bar when it's showing, else the wordmark.
        brand: () => {
            const venue = document.getElementById('venue-hud');
            return venue && venue.getBoundingClientRect().width ? venue : document.getElementById('hud-logo');
        },
        roomcode: () => document.getElementById('display-room-code-badge'),
        roomlabel: () => { const badge = document.getElementById('display-room-code-badge'); return badge && badge.parentElement; },
        scores: () => document.getElementById('score-rail'),
        scan: () => document.getElementById('onboarding-text-slot')
    };

    let layer = null;
    let active = null; // the theme's key while it's showing
    let placed = [];   // [{ piece, el, ratio }]
    let watchTimer = null;

    const unit = () => Math.min(window.innerWidth, window.innerHeight * 16 / 9) / 100;

    // Dates are plain YYYY-MM-DD from /admin, checked against this TV's own
    // calendar, so "December 1" is the venue's December 1.
    function inDateRange(theme) {
        const now = new Date();
        const today = `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, '0')}-${String(now.getDate()).padStart(2, '0')}`;
        if (theme.starts && today < theme.starts) return false;
        if (theme.ends && today > theme.ends) return false;
        return true;
    }

    function ensureLayer() {
        if (layer) return layer;
        layer = document.createElement('div');
        layer.id = 'tv-theme-layer';
        layer.setAttribute('aria-hidden', 'true');
        // Above the game, below the toasts (9999); taps pass straight through.
        layer.style.cssText = 'position: fixed; inset: 0; pointer-events: none; z-index: 9000; overflow: hidden;';
        document.body.appendChild(layer);
        return layer;
    }

    // Lights are put into the page as real SVG so their bulbs' glows (the
    // blurred shapes Randy drew around each bulb) can twinkle one by one.
    // Everything else is a plain picture.
    async function loadPiece(folder, piece) {
        const url = folder + piece.file + '.svg';
        let el, ratio;
        try {
            const response = await fetch(url);
            if (!response.ok) return null; // not uploaded yet
            const text = await response.text();
            const box = /viewBox="\s*[-\d.]+[\s,]+[-\d.]+[\s,]+([\d.]+)[\s,]+([\d.]+)/.exec(text);
            ratio = box ? Number(box[2]) / Number(box[1]) : 1;
            if (piece.twinkle) {
                el = document.createElement('div');
                el.innerHTML = text.replace(/<\?xml[^>]*\?>/, '');
                const svg = el.querySelector('svg');
                if (svg) { svg.removeAttribute('width'); svg.removeAttribute('height'); svg.style.cssText = 'width: 100%; height: 100%; display: block;'; }
                // Each glow is a shape with a blur on it; give each its own
                // slow pace and start, so a few change at a time.
                el.querySelectorAll('path[style*="filter"]').forEach((glow, i) => {
                    glow.classList.add('tv-theme-glow');
                    glow.style.animationDuration = (2.6 + (i * 7 % 5) * 0.5) + 's';
                    glow.style.animationDelay = (-(i * 1.3) % 4) + 's';
                });
            } else {
                el = document.createElement('img');
                el.src = url;
                el.alt = '';
            }
        } catch (e) {
            return null;
        }
        el.className = (el.className ? el.className + ' ' : '') + 'tv-theme-piece';
        el.style.position = 'absolute';
        return { piece, el, ratio };
    }

    function place() {
        if (!active || !layer) return;
        const u = unit();
        placed.forEach(({ piece, el, ratio }) => {
            const anchor = ANCHORS[piece.anchor] && ANCHORS[piece.anchor]();
            const rect = anchor && anchor.getBoundingClientRect();
            // An anchor that isn't on screen (the start screen) hides its pieces.
            if (!rect || (!rect.width && !rect.height)) { el.style.display = 'none'; return; }
            let left = rect.left + piece.x * rect.width + piece.dx * u;
            let w = piece.wOfAnchor ? rect.width * piece.wOfAnchor : piece.w * u;
            // Shorten to end a little before another part (the lights stop
            // short of "Room" when a pub's name fills the top bar).
            const stop = piece.stopBefore && ANCHORS[piece.stopBefore] && ANCHORS[piece.stopBefore]();
            if (stop) w = Math.max(0, Math.min(w, stop.getBoundingClientRect().left - 1.5 * u - left));
            const h = w * ratio * (piece.hScale || 1);
            if (piece.rotate) {
                el.style.transformOrigin = piece.origin || '0 0';
                el.style.transform = `rotate(${piece.rotate}deg)`;
            }
            let top = rect.top + piece.y * rect.height + piece.dy * u;
            if (piece.fromBottom) top -= h; // sits up from the anchor's bottom edge
            el.style.display = 'block';
            el.style.left = left + 'px';
            el.style.top = top + 'px';
            el.style.width = w + 'px';
            el.style.height = h + 'px';
        });
    }

    async function applyTvTheme(theme) {
        const key = theme && theme.key;
        const spec = key && THEMES[key];
        if (!spec || !inDateRange(theme)) return clearTvTheme();
        if (active === key) return place();
        clearTvTheme();
        active = key;
        ensureLayer();
        const loaded = await Promise.all(spec.pieces.map(p => loadPiece(spec.folder, p)));
        if (active !== key) return; // switched off while loading
        placed = loaded.filter(Boolean);
        placed.forEach(p => layer.appendChild(p.el));
        place();
        // Re-measure now and then: the TV's screens change under the pieces,
        // and a remote's full-screen toggle resizes everything.
        watchTimer = setInterval(place, 1000);
    }

    function clearTvTheme() {
        active = null;
        placed = [];
        if (watchTimer) { clearInterval(watchTimer); watchTimer = null; }
        if (layer) layer.innerHTML = '';
    }

    window.addEventListener('resize', () => place());
    window.applyTvTheme = applyTvTheme;
    window.clearTvTheme = clearTvTheme;
    window.placeTvTheme = place;
})();
