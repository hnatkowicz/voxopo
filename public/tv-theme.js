// TV themes (Randy, Nov 2026): seasonal and event decorations, Randy's art
// in public/themes/<theme>/. app.js calls applyTvTheme(venue.theme) when a
// room's venue arrives (ROOM_VENUE) and clearTvTheme() when the room closes.
//
// Four slots, each a fixed box hung from a part of the TV that's on every
// screen and never moves (Randy, Nov 2026, after the first Christmas art
// went "from fun and campy to gaudy": understated is the rule). A theme is
// up to four pictures, one per slot, named <theme>_<slot>.webp (or .svg):
//
//   over-r      5 x 5    over the top-left of "Rando", partly covering the R
//   under-room  5 x 5    hanging under the word ROOM, left edges lined up (or _room)
//   hanging     5 x 15   over the scoreboard's top-right corner, 1.4 up and
//                        1.4 out (Randy: 15px in his sketch); behind the scores
//   bottom      panel's width x 250/600 of it, across the scoreboard's
//               bottom (a semi-opaque frost); behind the scores
//
// Sizes are in u (1% of the 16:9 frame's width), like the rest of the TV.
// Art is drawn on an artboard of the same shape (100 x 100, 100 x 300,
// 600 x 250) and shown at its drawn size, centered on the box. A box is where a piece
// hangs and how big it can get, not a fence (Randy: "artistically obscuring
// is much better"), but a piece never covers the QR code, the question or
// the answers, and the scores always sit on top of the two scoreboard
// pieces. Nothing moves. A slot with no file is simply left empty.
//
// /tv?slots=1 outlines the four boxes on any screen, theme or not, for
// checking them on a real TV.
(function () {
    const THEMES = {
        CHRISTMAS: { folder: '/themes/christmas/', prefix: 'christmas_' }
    };
    const SLOT_NAMES = ['over-r', 'under-room', 'hanging', 'bottom'];
    const NUDGE = 1.4; // the hanging strip's offset up and right, in u

    const unit = () => Math.min(window.innerWidth, window.innerHeight * 16 / 9) / 100;
    const shown = rect => rect && (rect.width || rect.height);

    // The word ROOM itself (not the number, whose width changes).
    function roomWordRect() {
        const badge = document.getElementById('display-room-code-badge');
        const label = badge && badge.parentElement;
        const text = label && [...label.childNodes].find(n => n.nodeType === 3 && n.textContent.trim());
        if (!text) return null;
        const range = document.createRange();
        range.selectNodeContents(text);
        return range.getBoundingClientRect();
    }
    const rectOf = id => { const el = document.getElementById(id); return el ? el.getBoundingClientRect() : null; };

    // Each slot's box in screen pixels, or null when its anchor isn't on screen.
    function slotBox(slot) {
        const u = unit();
        if (slot === 'over-r') {
            const r = rectOf('hud-logo');
            return shown(r) ? { left: r.left, top: r.top, width: 5 * u, height: 5 * u } : null;
        }
        if (slot === 'under-room') {
            const r = roomWordRect();
            return shown(r) ? { left: r.left, top: r.bottom, width: 5 * u, height: 5 * u } : null;
        }
        const rail = rectOf('score-rail');
        if (!shown(rail)) return null;
        if (slot === 'hanging') return { left: rail.right + NUDGE * u - 5 * u, top: rail.top - NUDGE * u, width: 5 * u, height: 15 * u };
        const height = rail.width * 250 / 600;
        return { left: rail.left, top: rail.bottom - height, width: rail.width, height };
    }
    const behindScores = slot => slot === 'hanging' || slot === 'bottom';

    // Two layers: one over the game (above the scoreboard too) and one
    // under the scoreboard's text but over its panel, so the scores always
    // read. Both see-through to taps and remote clicks.
    let overLayer = null, underLayer = null;
    function layers() {
        if (!overLayer) {
            overLayer = document.createElement('div');
            overLayer.id = 'tv-theme-layer';
            overLayer.setAttribute('aria-hidden', 'true');
            // Above the game, below the announcement (9500) and the toasts (9999).
            overLayer.style.cssText = 'position: fixed; inset: 0; pointer-events: none; z-index: 9000; overflow: hidden;';
            document.body.appendChild(overLayer);
            underLayer = document.createElement('div');
            underLayer.id = 'tv-theme-under';
            underLayer.setAttribute('aria-hidden', 'true');
            // z-index 0: over the panel's background, under its text (the
            // scoreboard's contents sit at z-index 1, see styles.css).
            underLayer.style.cssText = 'position: fixed; inset: 0; pointer-events: none; z-index: 0; overflow: hidden;';
            document.body.appendChild(underLayer);
        }
        return { overLayer, underLayer };
    }

    let active = null; // the theme's key while it's showing
    let placed = [];   // [{ slot, el }]
    let watchTimer = null;

    // Dates are plain YYYY-MM-DD from /admin, checked against this TV's own
    // calendar, so "December 1" is the venue's December 1.
    function inDateRange(theme) {
        const now = new Date();
        const today = `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, '0')}-${String(now.getDate()).padStart(2, '0')}`;
        if (theme.starts && today < theme.starts) return false;
        if (theme.ends && today > theme.ends) return false;
        return true;
    }

    // A slot's picture: the WebP if it's there, else an SVG, else nothing.
    function loadSlot(spec, slot) {
        const tryUrl = url => new Promise(resolve => {
            const img = new Image();
            img.onload = () => resolve(img);
            img.onerror = () => resolve(null);
            img.src = url;
        });
        // under-room also answers to "room" (Randy's first upload's name).
        const names = slot === 'under-room' ? ['under-room', 'room'] : [slot];
        const urls = names.flatMap(n => ['.webp', '.svg'].map(ext => spec.folder + spec.prefix + n + ext));
        const first = i => (i >= urls.length ? Promise.resolve(null) : tryUrl(urls[i]).then(img => img || first(i + 1)));
        return first(0).then(img => {
            if (!img) return null;
            img.alt = '';
            img.className = 'tv-theme-piece';
            img.style.position = 'absolute';
            return { slot, el: img, w: img.naturalWidth, h: img.naturalHeight };
        });
    }

    function sizeTo(el, box) {
        if (!box) { el.style.display = 'none'; return; }
        el.style.display = 'block';
        el.style.left = box.left + 'px';
        el.style.top = box.top + 'px';
        el.style.width = box.width + 'px';
        el.style.height = box.height + 'px';
    }

    // Each picture at its own drawn size, never cropped or stretched
    // (Randy, Nov 2026: he adjusts the art in Inkscape), centered on its
    // box. Its pixels are artboard units: 100 is a 5u box's width, and 600
    // is the scoreboard's width for the bottom piece.
    const ARTBOARD_WIDTH = { 'over-r': 100, 'under-room': 100, hanging: 100, bottom: 600 };
    function place() {
        if (active) placed.forEach(({ slot, el, w, h }) => {
            const box = slotBox(slot);
            if (!box || !w) return sizeTo(el, null);
            const scale = box.width / ARTBOARD_WIDTH[slot];
            const width = w * scale, height = h * scale;
            sizeTo(el, { left: box.left + (box.width - width) / 2, top: box.top + (box.height - height) / 2, width, height });
        });
        if (outlines) outlines.forEach(({ slot, el }) => sizeTo(el, slotBox(slot)));
    }

    async function applyTvTheme(theme) {
        const key = theme && theme.key;
        const spec = key && THEMES[key];
        if (!spec || !inDateRange(theme)) return clearTvTheme();
        if (active === key) return place();
        clearTvTheme();
        active = key;
        const { overLayer: over, underLayer: under } = layers();
        const loaded = await Promise.all(SLOT_NAMES.map(slot => loadSlot(spec, slot)));
        if (active !== key) return; // switched off while loading
        placed = loaded.filter(Boolean);
        placed.forEach(p => (behindScores(p.slot) ? under : over).appendChild(p.el));
        place();
        startWatching();
    }

    // Re-measure now and then: the TV's screens change under the pieces,
    // and a remote's full-screen toggle resizes everything.
    function startWatching() {
        if (!watchTimer) watchTimer = setInterval(place, 1000);
    }

    function clearTvTheme() {
        active = null;
        placed.forEach(({ el }) => el.remove());
        placed = [];
        if (watchTimer && !outlines) { clearInterval(watchTimer); watchTimer = null; }
    }

    // /tv?slots=1: dashed outlines of the four boxes, for checking on a TV.
    let outlines = null;
    if (/[?&]slots=1\b/.test(location.search)) {
        const { overLayer: over } = layers();
        outlines = SLOT_NAMES.map(slot => {
            const el = document.createElement('div');
            el.style.cssText = 'position: absolute; box-sizing: border-box; border: 2px dashed var(--rm-text);';
            el.innerHTML = `<span style="position: absolute; left: 2px; top: 0; font: 12px sans-serif; color: var(--rm-text);">${slot}</span>`;
            over.appendChild(el);
            return { slot, el };
        });
        startWatching();
        window.addEventListener('load', place);
    }

    window.addEventListener('resize', () => place());
    window.applyTvTheme = applyTvTheme;
    window.clearTvTheme = clearTvTheme;
    window.placeTvTheme = place;
})();
