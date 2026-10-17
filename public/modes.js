// The lobby's game modes -- the ONE list both the TV (index.html/app.js) and
// the phones (play.html) build their mode tiles from. Adding a mode is one
// entry here (plus its key in GAME_MODE_KEYS in gameEngine.js). It used to be
// copied by hand into four places, which is how lists drifted out of sync.
//
// Icons: Randy's art at public/modes/<icon>.svg. Until a file exists, the
// tile shows the emoji instead -- uploading the SVG needs no code change.
window.RANDOMANIA_MODES = [
    { key: 'TRIVI_YEAH',      name: 'Trivi-yeah!',     blurb: 'Classic multiple-choice trivia', tag: null,         color: '#00e676', emoji: '❓', icon: 'mode-trivi-yeah' },
    { key: 'TRIVI_YEAH_II',   name: 'Thinking Pants',  blurb: 'Pick a tile, bet big',           tag: 'Beta',       color: '#06b6d4', emoji: '👖', icon: 'mode-thinking-pants' },
    { key: 'COUNTRY_MONKEY',  name: 'Country Monkey',  blurb: 'Find it on the map',             tag: null,         color: '#ffa500', emoji: '🐒', icon: 'mode-country-monkey' },
    { key: 'FLAG_ME_DOWN',    name: 'Flag Me Down',    blurb: 'Name it before the clues do',    tag: 'New',        color: '#facc15', emoji: '🚩', icon: 'mode-flag-me-down' },
    { key: 'EMPOSSDURR',      name: 'EmpossDurr',      blurb: 'Find the impostor',              tag: null,         color: '#ff4757', emoji: '🕵️', icon: 'mode-empossdurr' },
    { key: 'ON_THE_SPECTRUM', name: 'On The Spectrum', blurb: 'Guess where friends land',       tag: null,         color: '#bb6bd9', emoji: '🎚️', icon: 'mode-on-the-spectrum' },
    { key: 'PROFILER',        name: 'Profiler',        blurb: 'Who said that?',                 tag: '4+ players', color: '#f472b6', emoji: '🔍', icon: 'mode-profiler' }
];

window.RANDOMANIA_MODE_NAMES = Object.fromEntries(window.RANDOMANIA_MODES.map(m => [m.key, m.name]));

window.modeIconHtml = function (mode, sizePx) {
    return `<img src="/modes/${mode.icon}.svg" alt="" style="height: ${sizePx}px; width: auto; flex-shrink: 0;" onerror="this.outerHTML='<span style=&quot;font-size: ${Math.round(sizePx * 0.75)}px; line-height: 1; flex-shrink: 0;&quot;>${mode.emoji}</span>'">`;
};

// TV lobby: a 2-column grid of tiles, each with its own live vote bar
// (ids vcount-<KEY> / vbar-<KEY>, filled in by app.js's updateModuleElectionUI).
window.renderModeElectionTiles = function () {
    return `
        <div class="panel-box">
            <h2 class="panel-title">Active Module Election</h2>
            <div class="mode-grid">
                ${window.RANDOMANIA_MODES.map(m => `
                    <div class="mode-tile">
                        <div class="mode-tile-head">
                            ${window.modeIconHtml(m, 34)}
                            <div style="min-width: 0; flex: 1;">
                                <div class="mode-tile-name">${m.name}${m.tag ? ` <span class="mode-tile-tag">${m.tag}</span>` : ''}</div>
                                <div class="mode-tile-blurb">${m.blurb}</div>
                            </div>
                            <div id="vcount-${m.key}" class="mode-tile-count">0 votes (0%)</div>
                        </div>
                        <div class="progress-track" style="height: 6px;"><div id="vbar-${m.key}" class="progress-fill" style="background: ${m.color};"></div></div>
                    </div>
                `).join('')}
            </div>
        </div>
    `;
};

// Phone: a 2-column grid of tappable tiles. onTap is the name of the page's
// handler, called as onTap(this, '<KEY>').
window.renderModePickerTiles = function (onTap) {
    return window.RANDOMANIA_MODES.map(m => `
        <div class="module-row mode-pick" data-mode-key="${m.key}" onclick="${onTap}(this, '${m.key}')">
            ${window.modeIconHtml(m, 34)}
            <div class="mode-pick-name">${m.name}</div>
            <div class="mode-pick-blurb">${m.blurb}${m.tag ? ` · ${m.tag}` : ''}</div>
        </div>
    `).join('');
};
