# TV themes

Seasonal and event decorations for the TV: Christmas first, with room for
Halloween, the 4th of July, a wedding, a cinema night and the rest. Each
theme is a folder of Randy's art (`public/themes/<theme>/`). The game code
places the pieces; it doesn't care which holiday it is, so a new theme is
new drawings, not new code.

**Built** (Nov 2026): `access_codes_theme.sql` adds the setting,
`public/tv-theme.js` places the pieces (where each hangs is a short list at
its top, tuned by eye), and `THEMES` in `src/services/accessControl.js`
lists the themes /admin offers. How it works:

- **Per venue, on /admin.** Each access code gets a Theme setting (Off,
  Christmas, ...) with optional start and end dates. Blank dates mean
  "on until switched off". A room picks up its venue's theme when it opens.
- **Pinned to the screen's fixed parts.** Each piece hangs from something
  that is on every TV screen and never moves -- the wordmark, the room
  code, the clock, the scoreboard, "Scan to join" -- so it stays put while
  the game changes underneath, at any TV size.
- **Always on top, and see-through to touch.** Decorations sit above the
  game (frost included), and taps and remote clicks pass straight through
  them, so nothing can block a button.
- **Peekers** (characters peeking out from behind things) appear now and
  then, only in calm moments (the lobby, between questions, breaks), never
  while people are reading or answering.

## Rules every theme follows

- **Never on the QR code.** A phone finds the code by its three corner
  squares; anything over them can stop it scanning, and at a pub that ends
  the night. Hang pieces from "Scan to join" or beside the code instead.
- **Green means right and red means wrong** on these screens. A theme can
  use red and green in its decorations, but never recolors the game itself
  (buttons, answers, the reveal, the clock).
- **Your own characters only.** Santa and elves are folklore and free to
  draw; licensed characters (Frosty the Snowman, movie characters, studio
  logos) are off the table for a paid game.
- **Airy.** Decorations live in the margins and on the fixed parts, not
  across the question or the answers.

## Files

- **SVG**, one file per piece, transparent background.
- **Crop each file tight to the art.** Pieces are placed by their file's
  edges, so empty margin pushes a piece off its spot.
- **Turn any lettering into outlines** (no fonts inside the file).
- **Keep each file light** -- under about 100 KB if you can. Fine detail
  (tinsel, frost) adds lots of points, and the Fire Stick feels it.
- **Names:** lowercase, words joined by hyphens, like the avatars.
