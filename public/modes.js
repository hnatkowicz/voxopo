// The lobby's game modes -- the ONE list both the TV (index.html/app.js) and
// the phones (play.html) build their mode tiles from. Adding a mode is one
// entry here (plus its key in GAME_MODE_KEYS in gameEngine.js). It used to be
// copied by hand into four places, which is how lists drifted out of sync.
//
// Icons: Randy's art at public/modes/<icon>.svg. Until a file exists, the
// tile shows the emoji instead -- uploading the SVG needs no code change.
window.RANDOMANIA_MODES = [
    { key: 'TRIVI_YEAH',      name: 'Trivi-yeah!',     blurb: 'Pick a topic, 12 questions', tag: null,         color: 'var(--rm-brand)', emoji: '❓', icon: 'mode-trivi-yeah' },
    // Byline says "trivia" so a stranger at a pub knows what it is; the
    // "Beta" tag came off once it became the flagship (Randy, Nov 2026).
    { key: 'TRIVI_YEAH_II',   name: 'Thinking Pants',  blurb: 'Board trivia, bet big',          tag: null,         color: 'var(--rm-cyan)', emoji: '👖', icon: 'mode-thinking-pants' },
    { key: 'COUNTRY_MONKEY',  name: 'Country Monkey',  blurb: 'Find it on the map',             tag: null,         color: 'var(--rm-orange)', emoji: '🐒', icon: 'mode-country-monkey' },
    { key: 'FLAG_ME_DOWN',    name: 'Flag Me Down',    blurb: 'Name it before the clues do',    tag: null,          color: 'var(--rm-yellow)', emoji: '🚩', icon: 'mode-flag-me-down' },
    // The letter race (Randy, Nov 2026). "Letter Rip" is a working name.
    { key: 'LETTER_RIP',      name: 'Letter Rip',      blurb: 'Solve the phrase first',         tag: 'New',        color: 'var(--rm-periwinkle)', emoji: '🔤', icon: 'mode-letter-rip' },
    { key: 'EMPOSSDURR',      name: 'EmpossDurr',      blurb: 'Find the impostor',              tag: null,         color: 'var(--rm-orange-hot)', emoji: '🕵️', icon: 'mode-empossdurr' },
    { key: 'ON_THE_SPECTRUM', name: 'On The Spectrum', blurb: 'Guess where friends land',       tag: null,         color: 'var(--rm-purple)', emoji: '🎚️', icon: 'mode-on-the-spectrum' },
    { key: 'PROFILER',        name: 'Profiler',        blurb: 'Who said that?',                 tag: '4+ players', color: 'var(--rm-pink)', emoji: '🔍', icon: 'mode-profiler' }
];

window.RANDOMANIA_MODE_NAMES = Object.fromEntries(window.RANDOMANIA_MODES.map(m => [m.key, m.name]));

window.modeIconHtml = function (mode, sizePx) {
    if (mode.logoUrl) {
        return `<img src="${mode.logoUrl}" alt="" style="height: ${sizePx}px; max-width: ${sizePx * 2.4}px; width: auto; object-fit: contain; flex-shrink: 0;" onerror="this.outerHTML='<span style=&quot;font-size: ${Math.round(sizePx * 0.75)}px; line-height: 1; flex-shrink: 0;&quot;>${mode.emoji}</span>'">`;
    }
    return `<img src="/modes/${mode.icon}.svg" alt="" style="height: ${sizePx}px; width: auto; flex-shrink: 0;" onerror="this.outerHTML='<span style=&quot;font-size: ${Math.round(sizePx * 0.75)}px; line-height: 1; flex-shrink: 0;&quot;>${mode.emoji}</span>'">`;
};

// TV lobby: a 2-column grid of tiles, each with its own live vote bar
// (id vbar-<KEY>, filled in by app.js's updateModuleElectionUI). No vote
// count on the tile: the bar says it (Randy, Nov 2026).
// A venue's access code can limit which modes its rooms show (a pub shows
// only a few); null/empty means all of them.
window.modesShown = function (allowedKeys) {
    const modes = allowedKeys && allowedKeys.length
        ? window.RANDOMANIA_MODES.filter(m => allowedKeys.includes(m.key))
        : window.RANDOMANIA_MODES;
    return modes.map(window.modeForVenue);
};

// The venue's own Trivi-yeah! (Randy, Oct 2026) wears the venue's logo and
// says where it is: "at Pickles & Pins". The page sets RANDOMANIA_VENUE once
// it knows the room's venue.
window.RANDOMANIA_VENUE = null;
window.modeForVenue = function (mode) {
    const venue = window.RANDOMANIA_VENUE;
    if (mode.key !== 'TRIVI_YEAH' || !venue || !venue.houseSet) return mode;
    const name = venue.name || venue.houseSet.label;
    return { ...mode, blurb: name ? `at ${name}` : mode.blurb, tag: null, logoUrl: venue.logoUrl || null };
};

window.renderModeElectionTiles = function (allowedKeys) {
    // TV lobby (Nov 2026): no boxes, sized to the screen (lobby-* in
    // styles.css). Votes show as each tile's bar plus a plain number --
    // the bar already says the share, so no "(50%)".
    return `
        <div class="lobby-stage">
            <h2 class="lobby-title">What should we play?</h2>
            <div class="lobby-modes">
                ${window.modesShown(allowedKeys).map(m => `
                    <div class="lobby-mode">
                        <div class="lobby-mode-head">
                            <span class="lobby-mode-icon">${window.modeIconHtml(m, 64)}</span>
                            <div style="min-width: 0; flex: 1;">
                                <div class="lobby-mode-name">${m.name}${m.tag ? ` <span class="mode-tile-tag">${m.tag}</span>` : ''}</div>
                                <div class="lobby-mode-blurb">${m.blurb}</div>
                            </div>
                        </div>
                        <div class="lobby-mode-track"><div id="vbar-${m.key}" class="progress-fill" style="background: ${m.color};"></div></div>
                    </div>
                `).join('')}
            </div>
        </div>
    `;
};
// Phone: a 2-column grid of tappable tiles. onTap is the name of the page's
// handler, called as onTap(this, '<KEY>').
window.renderModePickerTiles = function (onTap, allowedKeys) {
    return window.modesShown(allowedKeys).map(m => `
        <div class="module-row mode-pick" data-mode-key="${m.key}" onclick="${onTap}(this, '${m.key}')">
            ${window.modeIconHtml(m, 34)}
            <div class="mode-pick-name">${m.name}</div>
            <div class="mode-pick-blurb">${m.blurb}${m.tag ? ` · ${m.tag}` : ''}</div>
        </div>
    `).join('');
};
