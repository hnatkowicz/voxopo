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

## Building

```
node content/build.mjs
```

This checks every spreadsheet and writes `content/sql/<category>.sql`. It
stops on real problems (a missing tier, fewer than 3 wrong answers, two
choices that are the same, a question that gives away its answer, a
duplicate question) and gives a note on softer ones (the same answer used
twice in a category).

Each generated SQL file **replaces the whole category**, inside a
transaction, so it's safe to re-run. It ends with a count to check.

## Which categories live here

| Spreadsheet | Category | Replaces these older SQL files for that category |
|---|---|---|
| `movies_tv.csv` | `MOVIES_TV` | the MOVIES_TV parts of `trivi_yeah_ii_prototype.sql` and `trivi_yeah_ii_more_questions.sql`; `trivi_yeah_ii_movies_tv_pop_culture_1.sql` |

Once a category moves in here, **don't re-run the older SQL files for it**:
they'd add back the old versions of the questions. Every other category
still lives in the SQL files at the repo root until it moves over.
