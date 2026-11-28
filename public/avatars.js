// Randy's drawn avatars (public/avatars/), the only picks on the join screen
// since Nov 2026 -- they replaced the 24-emoji grid (Randy: "my drawn
// avatars only").
//
// ADD ONE: just upload <name>.svg to public/avatars/ (Randy, Nov 28 2026:
// "I want to continue adding until I'm blue in the face"). The server adds
// every drawing that isn't on the list below to the end of it, A to Z
// (src/services/avatarList.js), and a GitHub Action makes its small copy in
// thumbs/. Writing a name into the list is only for choosing its place.
// HOLD ONE BACK: put its name in AVATARS_HELD_BACK and keep the file, so
// anyone already playing as it still shows.
//
// A player's pick travels as "av:<name>" in the same slot the emoji used
// (the join message, player.emoji, every scoreboard). Anything else in that
// slot (an old phone still sending an emoji) is shown as plain text, so
// nothing breaks mid-rollout.
const AVATARS = [
    'boy', 'girl', 'monkey', 'owl', 'rubber-ducky', 'crown',
    'book', 'brain', 'lightbulb', 'microscope', 'compass', 'lighthouse',
    'bicycle', 'motorcycle', 'hat', 'boot', 'tulips', 'coffee',
    'clarinet', 'drum', 'drum-kit', 'strat', 'palette', 'theater-masks',
    // Nov 2026, the first batch after the list began scrolling. 'genie' is
    // drawn but held back: a blue genie with a goatee and topknot reads as
    // Disney's, and licensed characters stay out of a paid pub game.
    'camera', 'camp-fire', 'mountain', 'mustache-mask', 'peace', 'penguin',
    'pie', 'radioactive', 'surf-wave', 'tape-measure', 'union-jack'
];

// Drawn but not offered. pants came off when the list grew from 18 to 24
// (Randy, Nov 2026). genie: a blue genie with a goatee and topknot reads as
// Disney's. fawkes: Randy's own drawing (from a reference), on hold by his choice
// (Nov 28 2026) while he draws more; the "V for Vendetta" mask's design is
// Warner Bros.', the same licensed-look question as the genie.
const AVATARS_HELD_BACK = ['pants', 'genie', 'fawkes'];

const AVATAR_PATTERN = /^av:([a-z0-9-]+)$/;

// The avatar as HTML: a square, centered picture for a drawn avatar (some
// are wider or taller than square), escaped text for anything else. Sized
// in em, so it follows the font size of wherever it's placed.
//
// Small by default: a few-KB WebP from thumbs/ (scripts/avatar-thumbs.mjs;
// the full SVGs weigh up to ~350 KB each, too much for a phone on a pub's
// cell data to pull for a grid of them). { full: true } loads the drawing
// itself, for where an avatar is shown big: the phone's tap-to-enlarge, the
// TV podium, the Champion card. A missing thumb (a fresh upload, before the
// thumbs are rebuilt) falls back to the SVG.
function avatarSrc(name, full) {
    return full ? `/avatars/${name}.svg` : `/avatars/thumbs/${name}.webp`;
}
function avatarHtml(value, sizeEm, opts) {
    const size = sizeEm || 1.25;
    const full = !!(opts && opts.full);
    const m = AVATAR_PATTERN.exec(value || '');
    if (m) {
        // Small ones load lazily too, so a long list only fetches what's on screen.
        const fallback = full ? '' : ` loading="lazy" onerror="this.onerror=null;this.src='${avatarSrc(m[1], true)}'"`;
        return `<img class="avatar-img" src="${avatarSrc(m[1], full)}"${fallback} alt="" style="width: ${size}em; height: ${size}em; object-fit: contain; vertical-align: middle; flex-shrink: 0;">`;
    }
    const text = String(value || '👤').replace(/[&<>"']/g, c => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));
    return `<span>${text}</span>`;
}
