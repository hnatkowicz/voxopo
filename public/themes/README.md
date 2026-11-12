# TV themes

Seasonal and event decorations for the TV: Christmas first, with room for
Halloween, the 4th of July, a wedding, a cinema night and the rest. Each
theme is a folder of Randy's art (`public/themes/<theme>/`). The game code
places the pieces; it doesn't care which holiday it is, so a new theme is
new drawings, not new code.

**Built** (Nov 2026): `access_codes_theme.sql` adds the setting,
`public/tv-theme.js` places the pieces, and `THEMES` in
`src/services/accessControl.js` lists the themes /admin offers.

**Four fixed slots** (Randy, Nov 2026, after the first Christmas art went
"from fun and campy to gaudy": **understated** is the rule). Each slot is a
box of fixed size and shape, hung from a part of the TV that's on every
screen and never moves. A theme is up to four pictures, one per slot:

| Slot | File | Draw on | Where |
|---|---|---|---|
| over-r | `<theme>_over-r.webp` | 100 x 100 (export 200 x 200) | over the top-left of "Rando", partly covering the R |
| under-room | `<theme>_under-room.webp` | 100 x 100 (export 200 x 200) | hanging under the word ROOM, left edges lined up |
| hanging | `<theme>_hanging.webp` | 100 x 300 (export 200 x 600) | over the scoreboard's top-right corner, a little up and out; **behind the scores** |
| bottom | `<theme>_bottom.webp` | 600 x 250 (export 1200 x 500) | across the scoreboard's bottom, rounded corners trimmed for you; **behind the scores** |

- **A box is where a piece hangs and how big it can get, not a fence**
  (Randy: "artistically obscuring is much better"). Partly covering the R
  or drifting into the lobby's space is fine. Never over the QR code, the
  question or the answers, and the scores always sit on top of the two
  scoreboard pieces.
- **Nothing moves.** No twinkling, no peekers (Randy: too cutesy).
- **Fill only the slots you want.** A missing file leaves its slot empty.
- **WebP for anything painterly** (frost, glows, gradients, texture): small
  files and cheap for the Fire Stick to show. **SVG** works for clean flat
  shapes (same name, `.svg`). Never a picture inside an SVG.
- **Check on a real TV:** `/tv?slots=1` outlines the four boxes.
- The first Christmas pieces (`garland.svg`, `lights.svg`, ...) are no
  longer used; they're kept in the folder until Randy says to remove them.

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

- **One file per slot**, transparent background, drawn on the slot's
  artboard shape (above). Empty space on the artboard is fine: the
  artboard's edges are the box's edges.
- **Turn any lettering into outlines** (no fonts inside the file).
- **Keep each file light** -- under about 100 KB if you can. Fine detail
  (tinsel, frost) adds lots of points, and the Fire Stick feels it.
- **Names:** lowercase, words joined by hyphens, like the avatars.
