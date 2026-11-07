# Christmas theme

Randy's Christmas decorations for the TV (first mockup, Nov 2026: a string
of lights hanging from the wordmark, blue ornaments, icicles on the
scoreboard, frost across the bottom of the scoreboard). Read
`../README.md` first for the rules every theme follows.

Upload the pieces here (`public/themes/christmas/`) with these names. A
piece that isn't here yet is simply left off, so they can arrive one at a
time. Names can change -- just tell Claude.

| File | What it is | Hangs from |
|---|---|---|
| `garland.svg` | Tinsel | Over "Rando" only, hanging from the top of the "R" and the crook of the "M" (Randy) |
| `lights.svg` | The string of lights | Along the top bar after the wordmark (at a pub, after the venue's name, shortened to stop before "Room") |
| `ornament-2.svg` | Glass ornament | Just past "Mania!" (at a pub, past the venue's name) |
| `ornament-1.svg` | Blue ornament | Under the room code |
| `icicles-scores.svg` | Icicles | The scoreboard's top-right corner |
| `icicles-scan.svg` | Icicles | "Scan to join" (**never over the QR code**) |
| `frost-scores.svg` | Frost | Across the bottom of the scoreboard, **on top** of it (Randy: "such a cool winter vibe"). Drawn at 30% opacity; it can go lower in code, no redraw needed, if names get hard to read with a full room |
| `peek-*.svg` | Peeking characters (Santa, an elf, a snowman of your own design) | Later: from behind the scoreboard's edge, the QR block or the mode tiles |

## The twinkle

The lights blink slowly, a few bulbs at a time, done in code. For that,
**keep each bulb a separate shape** and either put all the bulbs on a layer
named `bulbs`, or give each bulb the name `bulb` (in Inkscape: Object
Properties > ID or Label; in Illustrator: the layer or object name). No
"lit" and "unlit" versions are needed.

## Sizes to draw for

The TV is laid out for 16:9. On a Fire Stick it's 960 x 540 pixels; on a
1080p TV, 1920 x 1080. The art scales with the screen, so draw at any
size; just check that fine detail (tinsel, frost needles) still reads at
960 x 540.
