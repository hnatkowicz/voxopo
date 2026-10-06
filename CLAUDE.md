# RandoMania! (repo: voxopo)

A party-game platform where any TV becomes the shared big screen and every
player's phone becomes their controller. One person hosts, and everyone plays
live at the same time, so nobody waits for a turn. It's built by Randy H.,
with Claude as a co-developer. It's played for real, mostly with family, and
playtest feedback drives most changes.

<!-- TODO(Randy): In a few sentences, what is this *for*? Who do you picture
     playing it, and what should a night of RandoMania! feel like? What would
     "done" or "successful" look like to you? -->

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

Mode keys are used in room votes and in `gameEngine.js`:

- **TRIVI_YEAH** (Trivi-yeah!): multiple-choice trivia. Its rows are stored
  under `game_mode = 'TRIVIA'`, a legacy exception that is kept on purpose (see
  the mapping near the top of `gameEngine.js`).
- **TRIVI_YEAH_II**: a Jeopardy-style board with 3 rounds, the Doubler
  (wagering + side bets), column-sweep bonuses, and a Final Wager closer.
  Categories are listed in `TRIVI_YEAH_II_CATEGORIES`. Every category needs a
  full pool for every tier (the engine fails fast if one is incomplete).
- **COUNTRY_MONKEY**: find the highlighted country on the map. Country art is
  in `public/countries/`.
- **EMPOSSDURR**: impostor social deduction. Impostor selection is
  *intentionally* pure random every round, not a rotation. Don't "fix" it.
- **ON_THE_SPECTRUM**: guess where a player landed on a slider.
- **FLAG_ME_DOWN**: not playable yet. Its content still needs to be written.

## Content

- New or changed game content ships as standalone `.sql` files at the repo
  root (e.g. `trivi_yeah_ii_new_categories.sql`), named for what they add.
- <!-- TODO(Randy): How do these get applied? Do you run them by hand in the
     Neon console? Should Claude ever touch the live DB directly? -->
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

<!-- TODO(Randy): How do you like to work with Claude? For example: ask
     first or just build? How much explanation do you want? Anything you
     wish every new session already knew? -->

## Known loose ends

- `src/server.js` has a first `express.static` call with the path `'..public'`
  (missing a slash). It's harmless because the second static mount serves
  `public/`, but it's dead code.
- `voxopo-state-catchup.patch` sits at the repo root. It's unclear whether it
  has been applied or is still pending.
  <!-- TODO(Randy): keep, apply, or delete? -->
