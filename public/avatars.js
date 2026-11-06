// Randy's drawn avatars (public/avatars/), the only picks on the join screen
// since Nov 2026 -- they replaced the 24-emoji grid (Randy: "my drawn
// avatars only"). Add one: upload <name>.svg to public/avatars/ and add
// its name here. Keep a name once people are using it.
//
// A player's pick travels as "av:<name>" in the same slot the emoji used
// (the join message, player.emoji, every scoreboard). Anything else in that
// slot (an old phone still sending an emoji) is shown as plain text, so
// nothing breaks mid-rollout.
const AVATARS = [
    'boy', 'girl', 'monkey', 'owl', 'pants', 'crown',
    'book', 'brain', 'lightbulb', 'microscope', 'compass', 'lighthouse',
    'bicycle', 'motorcycle', 'hat', 'clarinet', 'drum', 'strat'
];

const AVATAR_PATTERN = /^av:([a-z0-9-]+)$/;

// The avatar as HTML: a square, centered picture for a drawn avatar (some
// are wider or taller than square), escaped text for anything else. Sized
// in em, so it follows the font size of wherever it's placed.
function avatarHtml(value, sizeEm) {
    const size = sizeEm || 1.25;
    const m = AVATAR_PATTERN.exec(value || '');
    if (m) {
        return `<img class="avatar-img" src="/avatars/${m[1]}.svg" alt="" style="width: ${size}em; height: ${size}em; object-fit: contain; vertical-align: middle; flex-shrink: 0;">`;
    }
    const text = String(value || '👤').replace(/[&<>"']/g, c => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));
    return `<span>${text}</span>`;
}
