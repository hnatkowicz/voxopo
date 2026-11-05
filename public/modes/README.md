# Mode icons

Randy's icons for the game modes. They show on the mode tiles on the TV
lobby and on every phone's join screen. Until a file is here, that tile
shows its emoji instead, so icons can arrive one at a time.

## File names

Upload each icon here (`public/modes/`) with exactly this name:

| Mode | File |
|---|---|
| Trivi-yeah! | `mode-trivi-yeah.svg` |
| Thinking Pants | `mode-thinking-pants.svg` |
| Country Monkey | `mode-country-monkey.svg` |
| Flag Me Down | `mode-flag-me-down.svg` |
| EmpossDurr | `mode-empossdurr.svg` |
| On The Spectrum | `mode-on-the-spectrum.svg` |
| Profiler | `mode-profiler.svg` |

The names come from `public/modes.js` (the `icon` of each mode). No code
change is needed: upload a file and its tile picks it up.

## What works best

- **SVG** (tell Claude if you'd rather use PNG or WebP; that's a small change).
- **Square** (a square viewBox), with a **transparent background**.
- **Bold and simple.** Today the icon is drawn 34 pixels tall on the tiles;
  the new read-along TV will show it bigger, and SVG stays sharp at any size.
- **Drawn for a dark background.** The new look (Denim & Gold, Nov 2026):

| Role | Color |
|---|---|
| Background | `#0b1424` (deep denim) |
| Tile | `#12203a` |
| Brand (gold) | `#f5b82e` |
| Second (denim blue) | `#5b8bd9` |
| Text (cream) | `#f4f1e8` |
| Right | `#34d47f` |
| Wrong | `#ff5a5f` |

  Each mode also keeps its own color in `modes.js` (Thinking Pants cyan,
  Country Monkey orange, Flag Me Down yellow...), used for its vote bar.
  Icons can use their mode's color, the brand gold, or any mix.
