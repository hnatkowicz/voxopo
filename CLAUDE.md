# RandoMania! (repo: voxopo)

A party-game platform where any TV becomes the shared big screen and every
player's phone becomes their controller. One person hosts, and everyone plays
live at the same time, so nobody waits for a turn. It's built by Randy H.,
with Claude as a co-developer. It's played for real, mostly with family, and
playtest feedback drives most changes.

## Why it exists

It started at home. Our family watched geography and trivia quizzes on
YouTube, TikTok quizzes, and Jeopardy! together, and RandoMania! was a way to
*play* those things instead of passively watching them. It was also a chance to
build better versions of the party apps we already played. The core idea:
**phones are the controllers, and the TV stays the center of the room.**

From there it grew into something that could run in pubs, libraries, PTO
meetings and similar places, hosting general trivia or trivia built for the
event, for a small fee. That's why hosting is gated behind access codes.

### Design principles

- **The TV is the focus.** Phones are for input. The shared moment happens on
  the big screen, with everyone looking up together.
- **No game leader.** Proctoring is democratic: the room votes, the clock
  runs, and the server decides. The host's only job is opening the room. They
  aren't a game master and don't get extra powers mid-game. New features
  shouldn't sneak a "someone has to run this" role back in.
- **Everyone plays at once.** No hot seat, no waiting for your turn.
- **Two audiences.** It has to be fun around the family TV *and* hold up when
  a stranger runs it at a pub night. That means clear on-screen instructions,
  no insider knowledge, and robust handling of reconnects and stragglers.

## How it fits together

- **Server:** Node (ES modules) + Express + `ws`, entry point `src/server.js`.
  Run with `npm start`. There's no build step, no framework, and no test suite.
- **Game logic:** almost all of it is in `src/services/gameEngine.js` (a large
  file). Live room state lives in the in-memory `activeRooms` object. Nothing
  about players or games is persisted. That's deliberate and is promised on the
  Privacy section of `/info`, so don't add persistence of player data.
- **Database:** Neon Postgres via `DATABASE_URL`. It holds only game content
  (the `questions` table, polymorphic on `game_mode`) and `access_codes`
  (with each code's venue profile).
- **Access control:** `src/services/accessControl.js` provides host access
  codes, an admin password (`ADMIN_PASSWORD`), cookie sessions, and per-IP rate
  limits.
- **Venue profiles:** an access code can be HOME (the living-room version)
  or PUB, with a venue name, tagline, logo (`public/venues/`, 2:1, see its
  README) and a list of allowed modes, all set on `/admin`
  (`access_codes_venue_profiles.sql` adds the columns; until it's run every
  code acts as HOME). A room copies its code's profile when it opens, and
  the host's session remembers which code it used. PUB rooms get the venue
  banner and a big QR code in the lobby (scannable from a table), the venue
  in the top bar and a medium QR code during play. Allowed modes are
  enforced by the server, not just hidden on screens; one allowed mode
  skips the choice. Pub default list (Randy, Oct 2026): Thinking Pants,
  Flag Me Down, Country Monkey. **House column** (`access_codes_house_column.sql`):
  a code (HOME or PUB) can put its own question set, a `HOUSE_<NAME>`
  category in `questions` (game_mode `TRIVI_YEAH_II`, all 4 tiers), as the
  left column of the Thinking Pants board in rounds 1 & 3 (pub nights: the
  venue opens and closes the night, round 2 stays general) or all 3 rounds
  (one-off events: weddings, showers, PTA nights), titled with the venue
  name unless set otherwise. House sets aren't in `TRIVI_YEAH_II_CATEGORIES`,
  so they never appear on ordinary boards; a game never repeats a house
  question; an incomplete set means a normal board. Pub house questions
  should mostly be themed trivia anyone can play (the "two audiences"
  rule); insider questions suit one-off events. Each house SQL file ends
  with a commented-out DELETE for cleaning up after the event
  (`pickles_and_pins_house.sql`, 16 questions, is the example). **Board
  rules** (`access_codes_board_rules.sql`): a code's Thinking Pants board is
  CLASSIC (column sweeps +400 and traps) or PLAIN (no sweep bonus, so no
  traps; Doublers and the Final Wager stay). Plain came from a one-on-one
  family game: with two players a lone sweep, and the trap it earns, happens
  constantly and piles on the only other player (Randy's call: a per-code
  setting rather than a rule tied to player count). Pickles & Pins is the test venue
  (Randy's logo `pickles-pins.svg`: the pickle-jar-and-pin mark, no
  lettering, since the banner prints the name beside it).
- **Hosting:** Render (a paid plan, Nov 2026), which terminates TLS. That's
  why `trust proxy` is set. **Every deploy restarts the server and ends
  every live game** (rooms live in memory), so nothing is merged during a
  venue event -- Randy says when events are.
- **Load and bandwidth (Nov 2026 load test, one 80-player room):** phones
  don't use WebSockets (only the TV does); each phone polls
  `/api/room-status` once a second. Replies took ~1-4 ms, so CPU isn't the
  limit -- bandwidth was: ~1.6 GB/hour, mostly the scoreboard inside every
  reply (it grows with the room, so traffic grew with the square of the
  players). Now replies are gzipped (`compression`), and the scoreboard
  is sent only when it changed (`phoneStandingsVersion`; the phone sends
  back the version it holds and reuses its copy): ~330 MB/hour for the
  same room, headers included. The database is read only when a game or
  board starts and at host login -- never per tap. **/admin "Live
  health"** (`src/services/serverHealth.js`, `/api/admin/health`): rooms,
  phones connected, TVs, requests/second, phone reply time, bandwidth
  this hour, memory, time since the last restart. Counts only, nothing
  about players, nothing saved.
- **Colors live in `public/theme.css`** (Nov 2026): every color the pages
  use is a named variable there (`var(--rm-green)`, or with transparency
  `rgba(var(--rm-green-rgb), 0.15)`), linked first in every page's head.
  Never type a hex color into a page again -- add or reuse a name. The
  first version copied the old ~900 hand-typed colors exactly (checked
  pixel for pixel), so near-identical shades are still separate names,
  to merge when the palette changes. Map, flag and state pictures have
  their colors drawn in and aren't affected.
- **The look (Phase 1 rebrand, Randy, Nov 2026):** **Denim & Gold** --
  deep denim backgrounds, cream text, gold (`--rm-brand`) as the brand
  color for buttons, highlights and the wordmark. **Green means only
  right/correct and red only wrong** (or a destructive "yes"); a timer or
  a mode color is never red or green. Fonts are self-hosted in
  `public/fonts/` (OFL, credited on `/info`): **Bricolage Grotesque** for
  headings and big names (`--rm-font-display`; Randy: "Bricolage FTW!",
  after Fredoka felt too "Comic Sans"), **DM Sans** for everything else
  (`--rm-font-body`). The wordmark (`randomania-logo.svg`, "Rando" cream,
  "Mania!" gold) and the **R!** icon (`r-icon.svg`, favicon, apple-touch
  icon) are drawn from Bricolage -- Randy: "the R! in the right font with
  the right background color is enough." Copy is plain voice ("Join",
  "Pick a game", "Couldn't reach the room. Try again."), no jargon.
  **Phase 2 (built Nov 2026): the read-along TV for Thinking Pants**
  (Randy: "we all wear glasses begrudgingly"). While a Thinking Pants
  game is on, `body.tp-layout` sizes everything to the screen (`--u` =
  1% of the width, or of a 16:9 frame on taller screens), drops the
  boxes, and makes the question about 2.3x its old size (2.6u, 50px on a
  1080p TV; was 22px; the first build's 3.6u was "about 30% too big" on
  Randy's Fire Stick test). The scoreboard is a 30%-wide rail that's
  always on screen: emojis and every badge kept (badges right after the
  name), ▲▼ after a score change, top 8 + "+N more playing", and the
  name is the only thing that shortens. The screens use the `tp-*` pieces
  in `styles.css`; `updateTpLayout` in `app.js` turns the layout on for
  Thinking Pants' broadcasts and off for anything else. The Final Wager
  is shared, so in Country Monkey and Flag Me Down it uses the same
  pieces inside the old boxed layout. **Phase 3** (the other screens)
  started with **the lobby** (Nov 2026): on Randy's Fire Stick the old one
  overflowed, and on a laptop over HDMI it filled half the TV. Now it uses
  the same layout (`ROOM_VENUE` and `RETURN_TO_LOBBY` turn it on): no
  boxes, the mode tiles (`lobby-*`, built by `renderModeElectionTiles` in
  `modes.js`; the phones' tiles are separate) with a vote bar and a plain
  vote count (the bar shows the share), the scoreboard rail, and a bigger
  QR code (10u, 13u at a pub, where the venue's banner replaces "What
  should we play?"). Checked at 960x540 and 1080p, home and pub. Still in
  the old layout: the TV's start screen and every mode but Thinking Pants.
- **TV design rules (Randy, Nov 2026, after the Fire Stick test) -- apply
  to every TV screen from here on:**
  1. **Say it once.** Don't add information: where something sits, how
     it looks and the data itself say what it is. So the top bar is just
     the logo (plus a pub's name), "Room 1234" (not "Room code") and the
     clock. There's no "Players joined", no game/state pill (the phones'
     side pages have that) and no "Time's up" (the clock at 0 says it).
     The footer is "Scan to join / randomania.tv/play". On the Doubler,
     the wager screen ends at the amount, nobody's "passed", and there's
     no "-0 points".
  2. **Airy.** Text takes no more than ~70% of its container; pictures and
     the board no more than ~70% of the space they have (the board is 84%
     wide and centered, pictures max 28u tall).
  3. **Two sizes of moment.** Splash moments ("Up next / Art &
     Architecture", "Starting Round 2 of 3", DOUBLER!) stay big (5.2u):
     "clean, bold, right-sized". Reading moments are calmer: question
     2.6u, answers 1.7u, tile values 2.5u, scoreboard rows 1.55u.
  4. **Nothing jumps.** The top bar never wraps or shifts.
- **Env vars:** `DATABASE_URL`, `ADMIN_PASSWORD`, `PORT`.

### The three devices

| Route | File | Role |
|---|---|---|
| `/` | `public/landing.html` | Role picker hub |
| `/host` | `public/host.html` | Host enters an access code and gets a room code |
| `/tv` | `public/index.html` + `public/app.js` | The shared TV screen |
| `/play` | `public/play.html` | Each player's phone |
| `/info` | `public/info.html` | Rules, TV setup, privacy, about |
| `/admin` | `public/admin.html` | Manage access codes, reset rooms |

**TV hardening (Nov 2026; Fire TV sticks are common, and hotels, schools
and libraries can block things):**
- **Fallback connection.** The TV normally gets everything over a live
  connection (WebSocket). Before this, if it dropped, the TV froze until
  someone reloaded. Now every TV message is numbered, and the room keeps
  the last 150 (`room.tvLog`, `broadcastToRoom`). If the live connection
  never opens (5s) or drops, the TV checks in twice a second at
  `/api/tv-events` with the last number it saw, and retries the live
  connection every 15s, which picks up from that number. If it falls too
  far behind, it gets a fresh snapshot (`tvSnapshotMessages`, shared with
  `REGISTER_SCREEN`). A TV on the fallback counts as connected for the
  phones' sounds and /admin health (`tvIsConnected`). Tested: a fully
  blocked network, a mid-game drop and recovery (no message missed or
  repeated), and a normal network (the fallback never fires).
- **Full screen and staying awake.** Pressing Show on the TV goes full
  screen and asks the device to stay awake (Wake Lock, taken back when
  the page returns). A Full screen button in the top bar gets back in
  after Back/Esc; it's hidden while full screen.
- **Installable.** `public/tv.webmanifest` (TV page only, opens `/tv`
  full screen): Chrome/Edge on a laptop offer to install it as an app.
  There's no service worker and no offline copy on purpose, since a TV
  running an old page against a new server would break.
- **Parked:** the TV shows its own code and the host's phone links it (no
  typing on a remote), and a Fire TV app (a wrapper around the website),
  pending Randy's Fire Stick test. Raspberry Pi box: dropped (Randy wasn't
  impressed with the family's). Hosting at a hotel: bring a laptop plus
  HDMI, and a phone hotspot as backup. Phones don't need the venue's
  Wi-Fi at all.

The TV's start screen shows live counts (rooms open, people playing) from
`/api/live-counts` -- numbers only, never room codes, since a code is the
only lock on a room (Randy chose counts over a list of lobbies).

The flow: access code → host's phone → room code → typed into the TV → players
join on their phones via the TV's QR code or `/play`. The in-room QR code is
drawn on the TV for that room (`/play?room=1234`), which fills the room code
in on the phone (still editable). It's drawn by `public/vendor/qrcode.js`
(qrcode-generator 1.4.4, MIT -- keep `public/vendor/qrcode-LICENSE.txt`;
credited on `/info`), copied into the repo so nothing is fetched from outside.

**Phone side pages** (Randy, Oct 2026): kids on a school trip played with
no TV at all, so the phone grew a page on each side of the game, in the
order Room | Game | Info. Swipe left (or tap the dots in the top strip)
for **Info**: where we are (mode, question/round/flag x of y, tiles left),
a **last question** card in the quiz modes (the answer, "2 of 5 got it",
who was fastest -- Flag Me Down names the earliest-clue scorer -- and how
you did; Doubler/Hot Seat tiles say how the picker did), set by
`setPhoneRecap` at the same moment the TV reveals, tagged with
`room.gameEpoch` so a new game starts clean; your own stats (right x/y and hit rate in every quiz mode -- "out of" is
the server's `questionsFaced`, a Doubler/Hot Seat counting only for its
picker -- answered first / fastest right,
people found, bullseyes -- they only change when an answer is scored), and
the scores, showing the standings the TV was last sent
(`room.phoneStandings`, captured in `broadcastToRoom`), never live scores,
so they can't give away who's right before a reveal. Those counters and the
mode titles used to sit atop each game screen ("Active Match Question" was
dropped outright). Swipe right for
**Room**: the room's QR code and code (a friend scans in from your phone)
the Sound setting, **Vote to end this game** and Leave Room, which asks first (it used to sit under the answers on every
screen and got bumped in fast play). The final "yes" of leaving or voting
to end is solid red (`.btn-danger`), unlike the outlined button that opens
it (Randy, Nov 2026: the two looked alike). Vote to end (Randy, Oct 2026): no
game leader, so ending early is a room vote -- more than half the players
(`endGameVoteFor`), votes can be taken back, and it goes straight to the
lobby; the TV shows a small "x of n needed" pill while votes are in. The game page keeps only what changes
what you'd tap; a thin strip on top keeps your emoji, name and score.
Swipes starting within 30px of either edge are ignored (iPhone Safari's
Back/Forward), and a side page closes itself whenever the player has
something to do (`scoresActionKeyFor` in `play.html`; a new phone-input
moment needs a line there). Rule of thumb: **the phone tells you about
you; the TV tells everyone about everyone** (the scores page is the one
tucked-away exception). **Final Wager on the phone** follows the TV's
reveal: the answer when the TV shows it, your answer, and your own result
once the TV reaches you (`finalWagerRevealFor`); the same line sits on the
Game Over card (the leader is revealed last, just before Game Over) and the
Info card gets the Final Wager once every result is out. Parked: a
how-to-play card per mode on Room (Randy, Oct 2026). A full phone-only room
(reveals on phones, no TV page) is not planned. Answer picks show white
until the reveal paints them green/red, with no right/wrong text under
them (`.picked`; votes keep green; Doubler and trap lines stay). **Phone
sounds** (Randy, Oct 2026: phone-only play "feels too quiet"; then "should
always be on" with a way to turn them down): your right/wrong sting at the
reveal and a ping for your turn (pick, Doubler wager, trap, On the Spectrum
target) always play; the last-3-seconds warning and the break's return
chime play only with no TV (the TV already plays them for the room). Each
phone picks Off / Low / High on the Room page (localStorage
`randomania_sound`). The server sends `tvConnected` and
`clock`. The sting/ping are short tones made in the page (no downloads on
mobile data); uploading `public/audio/phone-right.mp3`, `phone-wrong.mp3`
or `phone-turn.mp3` replaces them, no code change. The warning is the TV's
`answer-warning.wav`. iPhones in silent mode stay silent.

## Game modes

**Adding a mode to the lobby:** one entry in `public/modes.js` (name, short
blurb, tag, color, emoji, icon file) plus its key in `GAME_MODE_KEYS` in
`gameEngine.js`. The TV and phones both build their 2-column mode tiles from
that one list. Mode icons are Randy's art at `public/modes/mode-*.svg`, with
the emoji as a fallback until a file exists.

Mode keys are used in room votes and in `gameEngine.js`:

- **Game length:** Trivi-yeah! is 12 questions, matching Profiler's 12
  rounds. Country Monkey is 20 (15 once flags and water joined, 20 once it
  grew into a standalone mode with 132 landmarks -- Randy, Oct 2026).
- **TRIVI_YEAH** (Trivi-yeah!): **the venue's own game** (Randy, Oct 2026,
  the "1.0" pub-test build). It plays the access code's **house set** (the
  `HOUSE_<NAME>` category, the same questions as the Thinking Pants house
  column) and appears in the lobby exactly when the code has one, whatever
  is ticked in /admin (`allowedModesFor`; the admin checkbox is gone), even
  with the house column Off. Easy to hard by tier, up to 20 a game
  (`HOUSE_TRIVIA_MAX_QUESTIONS`, about 8-10 minutes); Play Again picks up
  the questions this room hasn't played (`room.houseTriviaPlayed`, room
  memory only), then starts over. The Thinking Pants house column keeps its
  own count, so a question can come up in both (Randy: fun to watch someone
  miss it twice). Branding (`venueBrand`): the venue's logo on its tile with
  "at <venue>" as the byline, logo + "Trivi-yeah! at <venue>" atop each TV
  question, a big logo and "Thanks for playing at <venue>!" (+ tagline) on
  the TV's Game Over, and the thanks on the phones. No venue banner during
  play (Randy). /admin shows how a set plays ("plays all 16 in one game")
  and warns under 8. The old general decks (`game_mode = 'TRIVIA'`, kept as
  a legacy name) stay in the database but are no longer played.
  **Venue breaks** (`access_codes_breaks.sql`; Randy, Oct 2026): a code can
  set breaks of 2, 5 or 10 minutes (Off by default; 10 for pubs) with up to 10 one-line
  notes (deals, event news, facts about the bride). A break comes between
  Thinking Pants rounds and after a Trivi-yeah! game (once the room has
  voted what's next) -- never mid-game, and no venue banner during play.
  TV: the venue's big logo and the notes, big, rotating every 10s (no QR
  block -- Randy: the messages get the space), who's back; phones: the
  clock and an "I'm back" button. At 30s left the TV and phones say "Back
  in 30 seconds" with a chime (`break-return.mp3`, cut from
  `cat-select.wav`, Randy's pick). No game
  leader: it ends on its own clock, or as soon as everyone taps I'm back
  (`runVenueBreak` / `endVenueBreak`, game state `VENUE_BREAK`).
- **TRIVI_YEAH_II** (shown to players as **Thinking Pants**, renamed from
  "Trivi-Yeah II"; the internal key and `game_mode` value kept the old name):
  a Jeopardy-style board with 3 rounds, the Doubler
  (wagering + side bets), column-sweep bonuses, and a Final Wager closer.
  The picker gets 30s to choose a tile, then a random one is picked; a
  picker who leaves hands the pick to someone still in the room. The answer
  clock grows with the tile, 12/14/16/18s (Randy, Oct 2026: room to
  deliberate), and ends as soon as everyone has answered.
  **Column sweep:** every tile in a category right, speed doesn't matter;
  a winning Doubler side bet counts as right, passing or not betting
  doesn't, and a Hot Seat you were locked out of is skipped (still need the
  other 3). +400 to every sweeper.
  **Traps:** a *lone* column sweep in round 2 or 3, with tiles left on the
  board, lets the sweeper secretly hide one trap (Pants on Fire / Hot Seat /
  Wedgie) or decline; 30s, then no trap. Secret by design: nobody learns
  whether or where until it's picked. No carry-over, and a trap on a
  Doubler fizzles silently. Trap icons are Randy's art in `public/traps/`
  (`trap-setting`, `trap-pants-on-fire`, `trap-hot-seat`, `trap-wedgie`
  .svg), used on the TV and phones, with emoji fallbacks if one's missing.
  **Risk It All** (Randy's son's idea, Oct 2026): the Final Wager's wager
  box has a pun button per mode ("Bet Your Pants!", "Go Bananas!", "All
  Flags Flying!") that only *fills in* your whole score -- you still press
  Lock In and can type over it -- with campy quips and a "Right: x · Wrong:
  y" line; an all-in wager gets an "ALL IN!" stamp on the TV reveal and
  its own result line on the phone. **Max Bet** on a Doubler (Randy, Oct
  2026): "Pants on the Line!" fills in the most you can wager, same rules.
  **Round 3 Doublers double the side bets**, win or lose: each bettor
  stakes 2x the tile (`multiplier` on `ty2.doubler`). A leveler, so the
  rest of the room can catch up on someone else's Doubler; the picker's
  own wager is never doubled (Randy, Oct 2026 -- the first build doubled
  the picker's wager, a misunderstanding).
  The answer clock is 40s (Randy: "needs 10 more seconds"), music over the
  last 30. **Final Wager questions** (`trivi_yeah_ii_final_wager_content.sql`,
  87): typed answers, each with a **"second-cousin" clue** -- one that
  takes knowledge and reasoning to turn into the answer, never the answer
  itself (Randy, Nov 2026: "...also names the top bone of your spine" for
  Atlas, "the same Latin word as the chemical symbol Ag" for Argentina).
  Aim for 250-350 difficulty on average; a famous fact alone (the painter
  who cut off his ear) is too easy, and a capital city is never the clue
  unless it's the point. 11 of them (about 1 in 8) are **picture
  questions** -- a flag, landmark, painting or logo (`visual_asset`),
  shown once answering opens, still with a knowledge clue. No guard
  against a picture that was on the board earlier (Randy: rare by
  definition, "and fun if encountered").
  Categories are listed in `TRIVI_YEAH_II_CATEGORIES`. Every category needs a
  full pool for every tier (the engine fails fast if one is incomplete).
  **Board draw:** deeper categories come up more often (Randy, Oct 2026).
  Depth = questions at a category's thinnest tier; weight = its square root,
  so 4x the depth shows up about 2x as often (a nudge, not a takeover). No
  general category appears twice in one game, and no two tiles on one
  board share an answer or a picture (two Apple logos, an Art picture's
  artist and title questions). Growing a category raises its
  share on its own, with no setting to touch.
  **Category dial** (Randy, Oct 2026): on /admin each category is
  **Off / Normal / Boost** (`thinking_pants_category_settings`, from
  `thinking_pants_category_settings.sql`; no row = Normal). Boost doubles
  the draw weight on top of the depth rule -- for a new category, to get
  the family's verdict fast (Art), or one that rarely turns up (Logo My
  Eggo starts on Boost: Randy's youngest had found one logo in several
  games). Off keeps the questions but never draws the category. Three
  settings on purpose, not a slider. **Per venue** (Randy, Nov 2026:
  boosting state capitals for his youngest boosted them at every venue
  too): each access code's **Categories** button on /admin sets Default
  (follow the global dial) / Off / Normal / Boost for that code's rooms
  only (`access_code_category_settings`, from
  `access_code_category_settings.sql`; no row = Default). The room
  remembers which code opened it (`room.accessCode`) and the board reads
  the venue's settings live, so a change applies from the next board.
  /admin warns under 9 categories on (a game uses 9, so some repeat); a
  venue whose settings can't fill a board falls back to the global dial
  rather than breaking the game. Main use is Off (no College Athletics at
  a library night).
  **Direction (Randy, Oct 2026):** new general trivia goes into Thinking
  Pants categories. Trivi-yeah! is to become the house-questions-only mode
  for one-off events (baby showers, etc.), so its general decks won't grow.
- **COUNTRY_MONKEY**: a geography quiz for the geography nut, built from
  question *types* (the row's `subcategory`) mixed by `COUNTRY_MONKEY_MIX`
  in `gameEngine.js`: 12 maps (`COUNTRY`), 3 flags (`FLAG`), 2 landmarks
  (`LANDMARK`), 3 water (`WATER`) per 20-question game (the game's length
  is the sum of the mix). History: Randy's 15-question start was 10/3/2
  ("my hunch is more countries"), then a flag slot became a landmark test.
  Future types (capitals, skylines) are a new subcategory plus a number in
  the mix. A type a region lacks is topped up with maps; a game never
  repeats an answer.
  - Maps: 1200x900 WebP (quality 85) in `public/maps/`, from one SVG master
    Randy keeps on his computer (only the WebPs go in the repo);
    `country_monkey_new_maps.sql`, 6 hand-picked wrong answers each
    (neighbors, look-alike names).
  - Flags: `public/flags/` is the flag-icons set (MIT -- keep
    `public/flags/LICENSE`; credited on `/info`); `country_monkey_flags.sql`.
    All flags are fair game (territories, regional flags, organizations);
    files that are just a parent country's flag are left out. Wrong answers
    are look-alike flags, never a near-twin (Chad/Romania, Monaco/Indonesia).
  - Water: `public/water/` (same recipe as the maps);
    `country_monkey_water.sql`, wrong answers of the same kind of water.
  - Landmarks: `public/structures/`, Randy's 132 photos of buildings and
    natural wonders, 1500x1000 WebP (quality 85). `content/landmarks_source.py`
    is the master list (answer, regions, difficulty 1-4, 6 look-alike wrong
    answers, alternate names) and writes both `country_monkey_landmarks.sql`
    and the Thinking Pants sheet `content/landmarks.csv`. Asks for the
    landmark, not its country (the country is nearly free points and would
    block that country's map). Africa (16) and the Middle East (22) are the thinnest regions.
  - Each SQL file only replaces its own subcategory, so they run
    independently. 5 regions + World Wide (Africa, Europe, Asia & Pacific,
    Middle East, Americas); `WORLD` rows (UN, Antarctica) are World Wide only.
  Every game closes on a **Final Wager**
  (shared with Thinking Pants): an unseen map, flag, water feature or landmark
  (equally likely) from the region played, answered by typing. Every type draws from the
  easier half of the middle difficulty levels (Randy's call: the easiest
  are a flat finale, the hardest too obscure to type, and "I want all to
  have a chance at glory!"). Typos are forgiven, `accepted_answers` holds alternate
  names (Swaziland, Burma, ...), and a near-miss that is really a different
  country ("Niger" for Nigeria) is never accepted. **One clue** can be
  bought on your phone for half the winnings (`COUNTRY_MONKEY_CLUE_COST`):
  map or flag -> the capital (from `flag_me_down_countries`), landmark ->
  where it is (`hint` column, written by `landmarks_source.py`), water -> a
  place it touches (`country_monkey_clues.sql`, re-run after the water
  SQL). No clue on file (a territory's flag) -> no button. Clues are data
  (`hints: [{ kind, label, cost, text | imageUrl }]`), shared with Flag Me
  Down's Final Wager. The same maps power the **Country Monkey** category
  in Thinking Pants (`trivi_yeah_ii_country_monkey.sql`, 120 maps, 30 per tier;
  grown from 80 in Nov 2026 with maps already in the repo).
- **The answer spread** (Randy, Oct 2026, after his brother said the
  phones made the TV easy to ignore): when time's up in Trivi-yeah!,
  Country Monkey, Thinking Pants and Flag Me Down, the TV's answer buttons
  fill to show how the room split -- **fills only, no names or counts**
  (Randy's call) -- and a one-second beat later the right answer lights
  up (`answerSpreadFirst`, `ANSWER_SPREAD`, `drawAnswerSpread`). Answers
  are locked during the beat, and phones learn the answer only at the
  reveal. A Doubler or Hot Seat's spread is out of one (the picker).
- **Question pictures** (any mode) are shown on the TV *and* phones, fetched in
  the background before they're needed, and served under a disguised address
  (`/q-img/<random>`) so a filename like `nigeria.webp` never reaches a phone.
  A Thinking Pants board only picks categories that have every tier in the
  database, so a category's code can ship before its SQL is run.
- **EMPOSSDURR**: impostor social deduction. Impostor selection is
  *intentionally* pure random every round, not a rotation. Don't "fix" it.
- **ON_THE_SPECTRUM**: guess where a player landed on a slider.
- **PROFILER**: home mode, 4+ players. Each round everyone privately answers
  a question about themselves, the TV posts the rarest answer given ("2 of
  you said X"), and everyone picks who said it. Questions live in their own
  `profiler_questions` table (`profiler_questions_seed.sql`), not in
  `questions`. Scoring: a perfect read is 6 points split across the people
  to find (+2 bonus when there were 2+), and +2 open-book for each person who
  found you. Each reveal waits for everyone to tap Continue (60s backstop),
  so the room can talk it over. Ends on a "Who Knows Who" awards screen
  before Game Over. The pool is 300 questions (`profiler_questions_seed.sql`
  + `profiler_questions_batch_2.sql`), balanced 100/100/100 across
  intensity 1/2/3 because each game cycles light -> medium -> deep.
- **Thinking Pants geography categories:** Country Monkey (maps), **Flag Me
  Down** (flags, `trivi_yeah_ii_flag_me_down.sql`, 120), **Wet Pants**
  (water, `trivi_yeah_ii_wet_pants.sql`, 103) and **Wish You Were Here**
  (landmarks, `content/landmarks.csv`, 132; a postcard name because it has
  natural wonders too) -- the cross-play with Country Monkey is deliberate.
- **FLAG_ME_DOWN** (also a standalone mode, after the family asked where it
  went): 15 flags, 5 easy -> 5 medium -> 5 hard, each with 4 country choices
  (1 wrong answer from the same local region, 2 from the same continent).
  Clues unlock over time: flag alone 400, + local region 300, + capital 200,
  + map 100. One lock-in, no changing it (Randy: "Lock it and no changing
  back"); wrong = 0, no penalty; once everyone's locked in it skips to the
  reveal. A capital that contains the country's name is shown as "The
  capital shares the country's name". Its own table,
  `flag_me_down_countries` (`flag_me_down_countries.sql`, 170 countries
  that have both a flag and a map; countries only for now -- US states and
  Canadian/Mexican provinces maybe later). Final Wager: a medium unused
  flag, typed; region/capital/map clues open privately on your phone,
  costing 10% / 25% / 50% of the winnings (`FLAG_ME_DOWN_HINT_COSTS`; was
  a flat 25% each until Randy: "I use map almost exclusively, and it should
  cost me more"), rounded up to a whole point; a wrong answer loses the
  full wager. The stage timings
  (`FLAG_ME_DOWN_STAGE_MS`) are first guesses, to be tuned in play.

## Content

- New or changed game content ships as `.sql` files Randy runs in Neon:
  standalone files at the repo root named for what they add (e.g.
  `country_monkey_water.sql`), or generated ones in `content/sql/`.
- **Thinking Pants text categories live in spreadsheets** (Randy, Oct
  2026): `content/<category>.csv` is the master copy of a category, and
  `node content/build.mjs` checks every sheet (give-aways, duplicate
  choices, missing tiers) and generates `content/sql/<category>.sql`, which
  replaces the whole category. A GitHub Action
  (`.github/workflows/build-content.yml`) runs the build on every push to
  `main` that touches a sheet and commits the SQL back, so Randy can upload
  an edited `.csv` and get SQL without Claude; a red X lists the problems.
  Claude still commits rebuilt SQL with its own sheet changes. Rows are
  retired, not deleted. See
  `content/README.md` for the columns and which old SQL files a moved
  category supersedes. Every text category lives there now (Oct 2026);
  the old SQL that built them is in `retired_sql/`, never to be re-run
  (`trivi_yeah_ii_prototype.sql` deletes every Thinking Pants question).
  Picture categories, the Final Wager and house sets still have their own
  root `.sql` files. Movies & TV, Music and Literature folded in Pop
  Culture's questions on their subject, Word Nerd grew from Primary
  School's word questions, Science/Space/Geography from its science ones
  (those Trivi-yeah! decks are left alone). **College Athletics** (Randy's
  idea): Heismans, coaches, mascots, rivalry trophies, athlete arcs.
- **Randy applies these by hand** in the Neon console. Content is the part of
  the codebase Randy works on directly, so keep it that way: Claude writes and
  reviews `.sql` files but never runs anything against the live database.
  Write SQL that a person can read and check: one statement per question,
  consistent column order, and a short header comment saying what the file
  adds and whether it's safe to re-run.
- `seed.js` is the original schema bootstrap. It **drops the `questions`
  table**, so never run it against the live database.
- Trivia quality bar: distractors should be plausible and shouldn't give away
  the answer (e.g. matching `faction`/`subcategory`), and a question must not
  contain its own answer. Recent fixes have targeted exactly these problems.
  Fact-check anything you write.

## How we work

- Randy often uploads files (SVGs, audio, SQL edits) directly through the
  GitHub web UI ("Add files via upload"). Fetch and merge `origin/main` before
  starting so you don't clobber them.
- Changes come in small, focused commits, with messages that say what changed
  and why (see `git log`).
- Comments in this codebase explain *why*, often citing a real playtest
  ("doubled per family feedback"). Keep that habit: when a constant or behavior
  was tuned through play, say so next to it so nobody "fixes" it back later.
- There are no automated tests, so verify by reasoning carefully and, where
  possible, by running the server and exercising the flow. Say plainly what
  you did and didn't verify.
- Timing, sounds, and pacing matter a lot here. They're tuned by feel during
  real play, so change them only when asked.

### Working together

Randy's style is to brain-dump an idea, get honest pushback, and refine it back
and forth until we both agree the idea is good **and** worth the effort. So:

- When an idea comes in, engage with it before building. Say what's great,
  what's risky, what it would cost, and whether there's a simpler version.
  Disagree out loud when you disagree. Agreeable-but-wrong helps nobody.
- Build once we've landed on something. For a small, clear fix or request,
  just do it.
- **Ship it yourself.** Once a change is built and verified, Claude commits,
  pushes, opens the PR and merges it into `main`. Randy doesn't want to be a
  step in the git workflow. Merging deploys to the live site on Render, so
  "verified" means it really works as intended (and say plainly what
  couldn't be checked). Two things still go to Randy first: design decisions
  (per the pushback loop above) and anything touching the live database.
- Explain in plain language. SQL is the part of the code that makes the most
  sense to Randy, so for everything else say what changed and why it matters
  for play, not just which functions moved.

## Ideas in the works

- **Logo My Eggo** (Logos, built Oct 2026 -- Randy's youngest's idea;
  the title is a working one and **she gets the final say**):
  `content/logos.csv`, Randy's logos in `public/iconic-logos/` (white
  backgrounds, brand names stripped off) plus text-only logo and mascot
  trivia, cars, airlines, apps, consoles and bands (Randy's logos, Oct
  2026; 153 in all). A logo that spells its own name (Coca-Cola, Ford,
  IBM...) is a 100-point **"Freebie!"** tile with silly wrong answers
  ("Fjord", "Coca-Koala") -- on purpose: Randy, "even in a serious pub
  game, everyone needs a laugh from time to time." That's the one place
  joke answers belong. A text tile that a logo picture would give away
  (Subaru's six stars, Porsche's STUTTGART) is retired. More logo
  batches: add picture rows to the sheet.
- **Brush With Greatness** (the art category, built Oct 2026):
  `content/art_gallery.csv`, **picture-only** (Randy: every tile shows the
  painting), 70 of Randy's paintings in `public/art/` (1500x1000 WebP on a
  gallery backdrop), up to four questions each: artist, title (only when
  it can't be read off the canvas; wrong answers are the same artist's
  real titles), what's in it ("Which river is being crossed?"), movement,
  and a few stories (the Syndics on Dutch Masters cigar boxes). Title
  questions use **fill-in-the-blank** where the whole title would show on
  the canvas (Randy's idea: "_____ of the Normandy Train"); the blanked
  word is never something you can see. **"Which painting is this?"**
  (Randy, Nov 2026) covers most of the rest: wrong answers are other
  real, well-known paintings, the same artist first, then the same era or
  subject -- never a reworded title. Skipped where the title is the
  subject (Joan of Arc, View of Toledo) or near-twin paintings (Monet's
  two footbridges). 171 questions. Hard
  paintings get a leading question ("This artist's portrait of the same
  man is on the $1 bill"). Launched on Boost. Randy stopped at 70 to see
  how it plays before gathering more. Sources: public-domain works from
  open-access museums
  (Met, Art Institute of Chicago, National Gallery of Art, Rijksmuseum,
  Cleveland, Smithsonian, Getty), each image's source page kept on file;
  no Italian-held works (Italy lets museums charge for images even of old
  art). One image can carry an artist question and, when the title can't
  be read off the canvas, a title question; the board builder already
  keeps a picture or an answer from appearing twice on one board. Randy is gathering the
  images in a spreadsheet. Logos: simple wordmarks and shapes, plus
  text-only logo trivia ("What animal is on the Ferrari logo?"); no Disney,
  sports leagues or Olympic rings, and never parodied or mocked-up logos
  (stripping the name off for the quiz is fine).
- **Spellbound** (Randy, Nov 2026: "a spelling test during trivia night"):
  `content/spellbound.csv`, 256 questions, **all spelling, no vocab** (vocab
  stays in Word Nerd, whose old spelling-bee rows are retired). Three kinds:
  "Which is spelled correctly? (meaning)", "Which of these <theme> words is
  misspelled?" and "Fill in the blank: acco_odate". American spelling,
  one right answer per tile: no words whose "misspelling" is a dictionary
  variant (judgment/judgement, minuscule/miniscule, supersede/supercede).
  Wrong answers are mistakes real people make. No word is the target of
  two tiles, so one tile can't give another away.
- **The Great State of...** (Randy, Nov 2026): `content/great_state.csv`,
  307 questions (145 text, 162 picture) -- capitals, city nicknames (Big Apple, La La Land),
  state nicknames, flags, where names came from. Famous nicknames asked
  straight; obscure ones get a second-cousin clue ("Utah's pioneers called
  their land Deseret, a word for the honeybee"). **No "currently has /
  doesn't have" facts** (Randy, on Montpelier having no McDonald's: true
  now, maybe not later). Randy is drawing the state pictures: highlighted
  on the US map, and the state's outline with a star on its capital
  (Randy, Nov 2026: an outline alone is too hard for some states, and
  the star is a fair clue) -- `public/states/<state>-map.webp` and
  `<state>-capital.webp`; no `-outline` files (lowercase, hyphens:
  `new-hampshire-map.webp`; 1200x900 WebP like the country maps). Randy
  drew all 100 (Nov 2026; his youngest is learning the capitals). Picture
  questions: "Which state is highlighted?" (map), "The star marks a state
  capital. Which city is it?" and "Which state is this?" (outline + star),
  and questions about the highlighted state (Yellowstone, the Ohio River,
  Louisiana's parishes). (`colorado-map.webp` first showed Wyoming;
  Randy re-exported it.) Geography's New York capital question was retired to avoid a
  repeat.
- **Saturday Mornings** (cartoons and kids' TV) is parked (Randy, Nov
  2026). Text-only if it happens: cartoon characters and real people's
  likenesses are off the table for a paid pub game.
- **Category depth (Randy, Oct 2026):** every text category has at least
  20 questions per tier. Science & Nature and Astronomy & Space are at 30
  per tier (Nov 2026: "we're nerds"). The family's favorites are school subjects
  (biology, astronomy, the World Wars, US history) and pop culture; new
  categories get pun names. Next, separate pop-culture categories (**Video
  Games**, **Cartoons & Kids' TV**, **Pop Culture**: celebrities, viral
  moments, slogans, toys).
- **Water images:** Wet Pants is 103 (Oct 2026). Rivers are coming in
  batches from a list Claude gave Randy: batch 1 brought the Danube,
  Rhine, Volga, Euphrates, Ganges, Mekong, Yangtze, Niger and Rio Grande;
  batch 2 the Yellow River, Indus, Brahmaputra, Irrawaddy, Amur, Rhône and
  Yukon. **Still to draw -- remind him:** Tigris, Jordan, Thames, Po,
  Vistula, Orange, Limpopo, St. Lawrence, Columbia, Murray. (He's also
  re-exporting the Yangtze, which Claude patched to un-highlight Lake
  Balkhash.) A
  `-2` file is a second drawing (another scale or angle): the newer ones
  (Danube, Rio Grande) are their own Wet Pants tiles, kept off the same
  board by the no-repeat rule; the older ones (Caribbean, Gulf of Mexico,
  ...) only give Country Monkey a second region.
- **Thinking Pants art:** a jeans mascot, "pants on fire" for a missed
  Doubler, a leg kick for a correct one, and gold pants spinning for the
  winner. "Answers in Your Pants" is a candidate name for the speed badge.
- **Profiler** content rule: every option must be one a person would
  comfortably own out loud. No politics, religion as identity, sex, bodies,
  money, health, or questions about people in the room.
- **Category subtitles** (a small gray line under each pun name on the
  board, "Wet Pants: Oceans, rivers & lakes"): pinned (Randy, Nov 2026).
  The first question makes a title clear, and regulars knowing the names
  is a small, fair edge.
- **Depth plan (Nov 2026):** Country Monkey, Flag Me Down, Red, White &
  Who?, War & Pieces and World History are at 120, and **Cell Mates**
  (biology, `content/cell_mates.csv`, 120) is built. World History's 13
  questions that duplicated Red, White & Who? and War & Pieces were
  retired there. Next: Sports and Food & Drink. Niche pun
  categories (Famous (K)nights, Fictional Locations, Just in Time,
  Lyrics) stay at 80 on purpose.
- **Mode bylines** (the small gray line under each mode's name on the TV
  and phone tiles, `public/modes.js`): Thinking Pants reads "Board
  trivia, bet big" so strangers know it's trivia, its "Beta" tag is gone,
  and the gray was brightened for dim pubs (Randy, Nov 2026).
- **Rename Thinking Pants to "Trivia Night"?** (Randy asked, Nov 2026;
  undecided.) Claude's view: clearer for strangers, but generic, and the
  pants jokes (Pants on Fire, Wet Pants, Bet Your Pants!, the Wedgie) lose
  their anchor; it also sits awkwardly next to Trivi-yeah!. Suggested a
  clearer tile byline instead ("Trivia night: a Jeopardy-style board...")
  and, if pubs want it, a venue-chosen display name later.
- **Standalone states quiz page** (Randy, Nov 2026, "another time"): his
  100 state pictures as a phone quiz anyone can run.
- **Mind Field:** a name saved for a future mode built around hidden traps
  on a board.
- **Final Wager clues elsewhere:** the bought-clue mechanic now runs in
  Flag Me Down (3 clues) and Country Monkey (1). Thinking Pants' Final
  Wager could get one too, but each of its questions would need a
  hand-written hint; see how Country Monkey's plays first.

