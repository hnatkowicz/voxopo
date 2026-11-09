# Avatars

Randy's avatars for players to pick when they join. To add one: upload
`<name>.svg` here and add its name to `AVATARS` in `public/avatars.js`
(the order there is the order on the join screen; batches of 6 fill a
row). The list scrolls on the phone, so there's no hard limit.

**Small copies are automatic.** A GitHub Action (`avatar-thumbs.yml`)
draws a few-KB WebP of each new or changed SVG into `thumbs/` and commits
it. Phones and the TV's scoreboard use those, so a long list stays light
on cell data; the full drawing only loads where an avatar is big (tap to
enlarge on the join screen, the TV podium, the Champion card). Until the
Action runs, the full drawing is used, so nothing ever shows blank.

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
