# Retired SQL: do not run

These files built the Thinking Pants text categories before they moved into
spreadsheets (`content/`, Oct 2026). Every category they touched now lives
in `content/<category>.csv`, and its SQL is `content/sql/<category>.sql`.

**Running any of these would put old, unfixed questions back.**
`trivi_yeah_ii_prototype.sql` is worse: it starts by deleting *every*
Thinking Pants question, including Country Monkey, Flag Me Down, Wet Pants,
the Final Wager and the venues' house sets.

They're kept only as history.

`letter_rip_puzzles.sql` is Letter Rip's first 102 puzzles (Nov 2026). They
moved to `content/letter_rip.csv`, and its SQL is now
`content/sql/letter_rip.sql`. Running the old file would bring back only
the first 102 puzzles.
