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
  (the `questions` table, polymorphic on `game_mode`) and `access_codes`.
- **Access control:** `src/services/accessControl.js` provides host access
  codes, an admin password (`ADMIN_PASSWORD`), cookie sessions, and per-IP rate
  limits.
- **Hosting:** Render, which terminates TLS. That's why `trust proxy` is set.
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

The flow: access code → host's phone → room code → typed into the TV → players
join on their phones via the TV's QR code or `/play`.

## Game modes

**Adding a mode to the lobby:** one entry in `public/modes.js` (name, short
blurb, tag, color, emoji, icon file) plus its key in `GAME_MODE_KEYS` in
`gameEngine.js`. The TV and phones both build their 2-column mode tiles from
that one list. Mode icons are Randy's art at `public/modes/mode-*.svg`, with
the emoji as a fallback until a file exists.

Mode keys are used in room votes and in `gameEngine.js`:

- **Game length:** Trivi-yeah! is 12 questions, matching Profiler's 12
  rounds. Country Monkey is 15 (Randy's call once flags and water joined).
- **TRIVI_YEAH** (Trivi-yeah!): multiple-choice trivia. Its rows are stored
  under `game_mode = 'TRIVIA'`, a legacy exception that is kept on purpose (see
  the mapping near the top of `gameEngine.js`).
- **TRIVI_YEAH_II** (shown to players as **Thinking Pants**, renamed from
  "Trivi-Yeah II"; the internal key and `game_mode` value kept the old name):
  a Jeopardy-style board with 3 rounds, the Doubler
  (wagering + side bets), column-sweep bonuses, and a Final Wager closer.
  The picker gets 30s to choose a tile, then a random one is picked; a
  picker who leaves hands the pick to someone still in the room.
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
  Categories are listed in `TRIVI_YEAH_II_CATEGORIES`. Every category needs a
  full pool for every tier (the engine fails fast if one is incomplete).
- **COUNTRY_MONKEY**: a geography quiz for the geography nut, built from
  question *types* (the row's `subcategory`) mixed by `COUNTRY_MONKEY_MIX`
  in `gameEngine.js`: 10 maps (`COUNTRY`), 2 flags (`FLAG`), 1 landmark
  (`LANDMARK`), 2 water (`WATER`) per 15-question game -- Randy's starting
  point was 10/3/2 ("my hunch is more countries"); one flag slot became a
  landmark slot to test landmarks. Future types (capitals, landmarks, skylines) are a new
  subcategory plus a number in the mix. A type a region lacks is topped up
  with maps; a game never repeats an answer.
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
  - Landmarks (a 15-photo test): `public/structures/` (photos, 3:2);
    `country_monkey_landmarks.sql`. Asks for the landmark, not its country
    (the country is nearly free points and would block that country's map).
    Switching to "Which country is this in?" is a content edit.
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
  country ("Niger" for Nigeria) is never accepted. The same maps power the **Country Monkey** category
  in Thinking Pants (`trivi_yeah_ii_country_monkey.sql`, 80 maps, 20 per tier).
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
  Down** (flags, `trivi_yeah_ii_flag_me_down.sql`, 80) and **Wet Pants**
  (water, `trivi_yeah_ii_wet_pants.sql`, 48) -- the cross-play with Country
  Monkey is deliberate.
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
  flag, typed; region/capital/map clues open privately on your phone, each
  taking 25% off the winnings, rounded up to a whole point (Randy's call);
  a wrong answer loses the full wager. The stage timings
  (`FLAG_ME_DOWN_STAGE_MS`) are first guesses, to be tuned in play.

## Content

- New or changed game content ships as standalone `.sql` files at the repo
  root (e.g. `trivi_yeah_ii_new_categories.sql`), named for what they add.
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

- **Thinking Pants art:** a jeans mascot, "pants on fire" for a missed
  Doubler, a leg kick for a correct one, and gold pants spinning for the
  winner. "Answers in Your Pants" is a candidate name for the speed badge.
- **Profiler** content rule: every option must be one a person would
  comfortably own out loud. No politics, religion as identity, sex, bodies,
  money, health, or questions about people in the room.
- **Mind Field:** a name saved for a future mode built around hidden traps
  on a board.

