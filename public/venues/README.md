# Venue logos

Logos for venue (pub) access codes. Set a code's logo on `/admin` by typing
the file name, e.g. `pickles-pins.svg`.

- **Shape:** the TV gives a logo a 2:1 space (800×400 is a good size for a
  wide one). Square or tall logos fit too; they sit centered in that space.
- **Lettering:** the banner prints the venue name in big letters beside the
  logo, so a mark without the name in it often looks best.
- **Format:** SVG is best (sharp at any size). PNG or WebP work too.
- **Background:** transparent. The TV is dark, so dark-on-transparent art
  needs a light outline or its own light background.
- **Text:** convert all text to shapes before saving (Inkscape: select all,
  then Path > Object to Path). Live text only looks right on computers that
  have the same fonts installed; a TV substitutes another font, which can
  change the look and push letters off the edge.
- **Edges:** fit the page to the artwork before saving (Inkscape: Edit >
  Resize Page to Selection) so nothing sits outside the page.
- **File names:** plain lowercase words and dashes, no spaces.

`pickles-pins.svg` is Randy's logo for the Pickles & Pins test venue.

## Announcement pictures and narration

A code's scheduled announcement (set on `/admin`) can use two more files
from this folder:

- **Background picture:** shown full screen, dimmed, behind the words.
  Wide like the TV: 1920×1080 WebP or JPG. (The US flag is built in, no
  file needed.)
- **Narration:** an MP3 the venue records, like a member reading the post
  charter or a bugler. The words stay on screen exactly as long as it
  plays (`/admin` reads its length when you save, so save again after
  replacing the file). No popular music: it isn't licensed for this.
