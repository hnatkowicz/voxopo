# Avatars

Randy's avatars for players to pick when they join, alongside (or in place
of) the emoji grid. Nothing uses this folder yet: once the files are here,
Claude wires them into the join screen, the TV's scoreboard and the phones,
with a test sheet showing every avatar at every size it's drawn.

## File names

Upload each avatar here (`public/avatars/`) with a short, lowercase name
joined by hyphens, saying what it is:

    cowboy-hat.svg
    pickle.svg
    robot-dog.svg

No spaces or capitals (web addresses are picky about both). The name is
how the code tells avatars apart, so once players are using one, keep its
name. Different styles can live side by side; there's no need to group
them by style.

## What works best

- **SVG**, square (a square viewBox), with a **transparent background**.
  PNG or WebP works too (512x512); tell Claude which.
- **Readable small.** An avatar is drawn about 24 pixels tall in the TV's
  scoreboard and the phone's top strip, and bigger on the join screen and
  Game Over. Bold shapes and a clear outline survive shrinking; fine detail
  and thin lines don't.
- **Drawn for a dark background** (deep denim `#0b1424`, tiles `#12203a`).
  Avoid relying on pure green or red as the main color: on these screens
  green means "right" and red means "wrong".
