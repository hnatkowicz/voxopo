# Thinking Pants content spreadsheets

Each `.csv` file here is the **master copy** of one Thinking Pants category.
The file name is the category: `movies_tv.csv` is `MOVIES_TV`. Edit the
spreadsheet, rebuild, and run the generated SQL in Neon.

## Editing

Open the `.csv` in Excel, Numbers or Google Sheets. One row is one question.

| Column | What goes in it |
|---|---|
| `points` | 100, 200, 300 or 400 |
| `question` | The question. It must not contain its own answer. |
| `answer` | The right answer |
| `wrong_1` .. `wrong_6` | At least 3 wrong answers, ideally 6. They should be the same kind of thing as the answer, and plausible. |
| `image` | A picture path (e.g. `/maps/peru.webp`), or blank |
| `source` | Where the question came from (`ORIGINAL`, `POP_CULTURE_FOLD_1`, ...). Saved as the row's `subcategory`. |
| `added` | Date the row was added, `2026-10-18` |
| `retired` | `yes` to take a question out of the game but keep it in the sheet |
| `notes` | Anything worth remembering: why it was rewritten, a fact-check source |

- **Retire, don't delete.** A retired row stays as a record of what was
  tried and why it went.
- **Save as CSV (UTF-8).** In Excel: File > Save As > "CSV UTF-8".
- **Watch Excel's autoformat.** It turns `1-2` into a date and drops
  leading zeros. If a cell looks wrong after opening, set the column to Text.

## Changing questions (Randy's steps)

1. Download the `.csv` from GitHub (open it, then the download button), or
   use your own copy.
2. Edit it in Excel or Google Sheets and save as CSV (see above).
3. Upload it back: in the `content` folder on GitHub, **Add file > Upload
   files**, drop it in with the **same file name**, and commit to `main`.
4. Wait about a minute. GitHub checks the sheet and rebuilds its SQL by
   itself (the **Actions** tab shows the run):
   - **Green check:** the new SQL is saved in `content/sql/`. The run's
     summary page lists which files changed. Run those in Neon.
   - **Red X:** something in the sheet needs fixing. The run's summary
     page lists each problem with its spreadsheet row number. Nothing was
     saved, so the old SQL is still there. Fix the row and upload again.
5. Run the new SQL file in Neon and check the count at the end.

Nothing here ever touches the database by itself; step 5 is always a person.

## Building by hand

```
node content/build.mjs
```

This is what GitHub runs (`.github/workflows/build-content.yml`). It
checks every spreadsheet and writes `content/sql/<category>.sql`. It
stops on real problems (a missing tier, fewer than 3 wrong answers, two
choices that are the same, a question that gives away its answer, a
row whose cells slipped a column (text in the image column), a
duplicate question) and gives a note on softer ones (the same answer used
twice in a category).

Each generated SQL file **replaces the whole category**, inside a
transaction, so it's safe to re-run. It ends with a count to check.

`content/sql/ALL_CATEGORIES.sql` is every category in one file: handy
after a big batch of changes. It shows one count per category at the end.
If the Neon console balks at its size, run the single files instead;
anything already run is fine to run again.

## Which categories live here

Every Thinking Pants **text** category: Art & Architecture, Astronomy &
Space, College Athletics, Famous Firsts, Famous (K)nights, Fictional
Locations, Food & Drink, Geography, Just in Time, Literature, Lyrics,
Brush With Greatness (paintings, every row has a picture), Logo My Eggo
(logos), Movies & TV, Music, Mythology, Science & Nature,
Sports, Technology, Red, White & Who? (US history), War & Pieces (the
World Wars), Word Nerd and World History. Logo My Eggo mixes picture rows
(`image` = `/iconic-logos/<file>.webp`) with text-only ones.

Plus one picture category, **Wish You Were Here** (`landmarks.csv`, Randy's
landmark photos). Its rows start from `content/landmarks_source.py`, which
also writes Country Monkey's landmark questions; new photos go there (run
`python3 content/landmarks_source.py`), and it only *adds* rows for new
photos, so edits made in `landmarks.csv` stay. An edit to a wrong answer in
the sheet doesn't reach Country Monkey; change `landmarks_source.py` for that.

Not here (yet): the other picture categories (Country Monkey, Flag Me Down,
Wet Pants), the Final Wager and the venues' house sets. They still come from
their own SQL files at the repo root.

The SQL files that used to build the text categories are in
`retired_sql/`. **Never run them**: they'd put old, unfixed questions back,
and one of them deletes every Thinking Pants question first.
