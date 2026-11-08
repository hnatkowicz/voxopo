// Builds the Thinking Pants question SQL from the spreadsheets in content/.
//
//   node content/build.mjs
//
// Each content/<category>.csv is the master copy of one Thinking Pants
// category (movies_tv.csv -> MOVIES_TV). This checks every row and writes
// content/sql/<category>.sql, which replaces that whole category in the
// database when Randy runs it in Neon. Rows marked retired stay in the
// spreadsheet but are left out of the game.
//
// No dependencies on purpose: plain Node, so it runs anywhere.
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const DIR = path.dirname(fileURLToPath(import.meta.url));
const TIERS = [100, 200, 300, 400];
const COLUMNS = ['points', 'question', 'answer', 'wrong_1', 'wrong_2', 'wrong_3', 'wrong_4', 'wrong_5', 'wrong_6', 'image', 'source', 'added', 'retired', 'notes'];
// `facts` (Randy, Nov 2026): optional, the last column. One interesting
// sentence the TV shows under the revealed answer ("a rare bonus" -- only
// when it's genuinely interesting). Unlike `notes`, players see it.
const FACTS_MAX = 140;

// RFC 4180 CSV: quoted fields, doubled quotes, commas/newlines inside quotes.
export function parseCsv(text) {
    text = text.replace(/^﻿/, ''); // Excel's byte-order mark
    const rows = [];
    let row = [], field = '', inQuotes = false;
    for (let i = 0; i < text.length; i++) {
        const ch = text[i];
        if (inQuotes) {
            if (ch === '"' && text[i + 1] === '"') { field += '"'; i++; }
            else if (ch === '"') inQuotes = false;
            else field += ch;
        } else if (ch === '"') inQuotes = true;
        else if (ch === ',') { row.push(field); field = ''; }
        else if (ch === '\n' || ch === '\r') {
            if (ch === '\r' && text[i + 1] === '\n') i++;
            row.push(field); field = '';
            if (row.some(f => f.trim() !== '')) rows.push(row);
            row = [];
        } else field += ch;
    }
    row.push(field);
    if (row.some(f => f.trim() !== '')) rows.push(row);
    return rows;
}

export function toCsv(rows) {
    const cell = v => {
        const s = v == null ? '' : String(v);
        return /[",\n\r]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
    };
    return '﻿' + rows.map(r => r.map(cell).join(',')).join('\r\n') + '\r\n';
}

const sq = s => `'${String(s).replace(/'/g, "''")}'`;
const isRetired = v => /^(y|yes|true|x|1)$/i.test((v || '').trim());
// "The Lion King" vs "lion king": ignore case, a leading "The/A/An" and punctuation.
// A minus sign before a number is kept, so -32 and 32 stay different answers.
// "Homer's" counts as "Homer", so a possessive can't hide a give-away.
const core = s => s.toLowerCase().replace(/['’]s\b/g, '').replace(/^(the|a|an)\s+/, '').replace(/-(?=\d)/g, 'minus ').replace(/[^a-z0-9 ]/g, '').trim();

export function checkCategory(file, rows) {
    const problems = [], warnings = [];
    const [header, ...body] = rows;
    const missing = COLUMNS.filter(c => !header.map(h => h.trim().toLowerCase()).includes(c));
    if (missing.length) return { problems: [`${file}: missing columns: ${missing.join(', ')}`], warnings, questions: [] };
    const col = Object.fromEntries(header.map((h, i) => [h.trim().toLowerCase(), i]));
    const get = (r, c) => (r[col[c]] || '').trim();
    const questions = [];
    const seenQuestions = new Map();
    body.forEach((r, i) => {
        const line = i + 2; // spreadsheet row number (row 1 is the header)
        const where = `${file} row ${line}`;
        const points = Number(get(r, 'points'));
        const question = get(r, 'question'), answer = get(r, 'answer');
        const wrong = ['wrong_1', 'wrong_2', 'wrong_3', 'wrong_4', 'wrong_5', 'wrong_6'].map(c => get(r, c)).filter(Boolean);
        if (!TIERS.includes(points)) problems.push(`${where}: points must be 100, 200, 300 or 400 (got "${get(r, 'points')}")`);
        if (!question) problems.push(`${where}: no question`);
        if (!answer) problems.push(`${where}: no answer`);
        // A picture path always starts with "/"; anything else means the
        // row's cells shifted a column (a stray quote or comma).
        const image = get(r, 'image');
        if (image && !image.startsWith('/')) problems.push(`${where}: the image column should be a picture path like /maps/peru.webp (got "${image}") -- check this row's commas and quotes`);
        if (wrong.length < 3) problems.push(`${where}: needs at least 3 wrong answers (has ${wrong.length})`);
        const all = [answer, ...wrong].map(core);
        if (new Set(all).size !== all.length) problems.push(`${where}: the answer and wrong answers must all be different`);
        if (answer && core(answer).length > 2 && core(question).includes(core(answer))) problems.push(`${where}: the question gives away its own answer ("${answer}")`);
        // Picture rounds reuse one question ("Which country is this?") with a different picture.
        const key = core(question) + '|' + get(r, 'image').toLowerCase();
        if (seenQuestions.has(key)) problems.push(`${where}: same question as row ${seenQuestions.get(key)}`);
        seenQuestions.set(key, line);
        const facts = 'facts' in col ? get(r, 'facts') : '';
        if (facts.length > FACTS_MAX) problems.push(`${where}: the fact is ${facts.length} characters; keep it to ${FACTS_MAX} so the room can read it in a glance`);
        if (facts && answer && core(answer).length > 2 && core(facts) === core(answer)) problems.push(`${where}: the fact just repeats the answer`);
        if (isRetired(get(r, 'retired'))) return;
        questions.push({ points, question, answer, wrong, image: get(r, 'image') || null, source: get(r, 'source') || null, facts: facts || null });
    });
    TIERS.forEach(t => { if (!questions.some(q => q.points === t)) problems.push(`${file}: no live questions at ${t} points (the board needs every tier)`); });
    const answers = new Map();
    questions.forEach(q => answers.set(core(q.answer), (answers.get(core(q.answer)) || 0) + 1));
    [...answers].filter(([, n]) => n > 1).forEach(([a]) => warnings.push(`${file}: the answer "${a}" is used more than once (allowed -- the game never puts both on one board -- but check it is meant)`));
    return { problems, warnings, questions };
}

export function categorySql(category, file, questions) {
    const counts = TIERS.map(t => `${t}: ${questions.filter(q => q.points === t).length}`).join(', ');
    const out = [`-- ============================================================================
-- content/sql/${path.basename(file, '.csv')}.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/${file}, the master copy of the
-- Thinking Pants category ${category}. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's ${questions.length} live questions
-- (${counts}), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = '${category}';
`];
    let tier = null;
    [...questions].sort((a, b) => a.points - b.points).forEach(q => {
        if (q.points !== tier) { out.push(`\n-- ${q.points} points`); tier = q.points; }
        out.push(`INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', '${category}', ${q.source ? sq(q.source) : 'NULL'}, NULL,
        ${sq(q.question)}, ${q.image ? sq(q.image) : 'NULL'},
        ${sq(q.answer)}, ARRAY[${q.wrong.map(sq).join(', ')}], ${q.points}, ${q.facts ? sq(q.facts) : 'NULL'});`);
    });
    out.push(`
COMMIT;

-- Check: should return ${questions.length}.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = '${category}';
`);
    return out.join('\n');
}


// ---------------------------------------------------------------------------
// Letter Rip's puzzles (Randy, Nov 2026: "This one has legs"). One sheet,
// content/letter_rip.csv: category, phrase, added, retired, notes. Builds
// content/sql/letter_rip.sql, which replaces every puzzle. Not a Thinking
// Pants category, so it stays out of ALL_CATEGORIES.sql.
export const LETTER_RIP_FILE = 'letter_rip.csv';
const LR_COLUMNS = ['category', 'phrase', 'added', 'retired', 'notes'];
const LR_MIN_CATEGORIES = 7; // a game draws each puzzle from a different category
// The TV board keeps each word whole on one line. A word wider than about 13
// letter tiles (punctuation tiles are half width) runs off a 960x540 TV.
const LR_MAX_WORD = 13, LR_MAX_LENGTH = 30;
// Small words a phrase may share with its category ("On the Road").
const LR_SMALL = new Set(['A', 'AN', 'THE', 'OF', 'ON', 'IN', 'AT', 'TO', 'AND', 'OR', 'IS', 'OUT', 'BY', 'FOR', 'UP', 'ONE']);
// Every plain form a word could be: TIMES -> TIMES, TIME, TIM; PARTIES -> PARTY.
const lrForms = w => { const b = w.replace(/'S$/, ''); return [b, b.replace(/S$/, ''), b.replace(/ES$/, ''), b.replace(/IES$/, 'Y')]; };

export function checkLetterRip(file, rows) {
    const problems = [], warnings = [];
    const [header, ...body] = rows;
    const missing = LR_COLUMNS.filter(c => !header.map(h => h.trim().toLowerCase()).includes(c));
    if (missing.length) return { problems: [`${file}: missing columns: ${missing.join(', ')}`], warnings, puzzles: [] };
    const col = Object.fromEntries(header.map((h, i) => [h.trim().toLowerCase(), i]));
    const get = (r, c) => (r[col[c]] || '').trim();
    const puzzles = [], seen = new Map();
    body.forEach((r, i) => {
        const line = i + 2;
        const where = `${file} row ${line}`;
        const category = get(r, 'category');
        // Typed in any case; the board is capitals. Curly apostrophes become straight ones.
        const phrase = get(r, 'phrase').toUpperCase().replace(/[’‘]/g, "'").replace(/\s+/g, ' ');
        if (!category) problems.push(`${where}: no category`);
        if (!phrase) { problems.push(`${where}: no phrase`); return; }
        if (!/^[A-Z' -]+$/.test(phrase)) problems.push(`${where}: "${phrase}" can only use letters, spaces, apostrophes and hyphens (no numbers -- spell them out)`);
        if (phrase.length > LR_MAX_LENGTH) problems.push(`${where}: "${phrase}" is ${phrase.length} characters; the most that fits the TV is ${LR_MAX_LENGTH}`);
        phrase.split(' ').forEach(w => {
            const width = w.replace(/[^A-Z]/g, '').length + w.replace(/[A-Z]/g, '').length / 2;
            if (width > LR_MAX_WORD) problems.push(`${where}: "${w}" is too long to fit on one line of the TV board (${LR_MAX_WORD} letters at most)`);
        });
        // The category is the clue, so a phrase never repeats one of its real words.
        const catWords = new Set(category.toUpperCase().replace(/[^A-Z ]/g, '').split(' ').filter(w => w && !LR_SMALL.has(w)).flatMap(lrForms));
        const shared = phrase.replace(/[^A-Z' ]/g, ' ').split(' ').filter(w => w && !LR_SMALL.has(w) && lrForms(w).some(f => catWords.has(f)));
        if (shared.length) problems.push(`${where}: "${phrase}" repeats "${shared[0]}" from its category "${category}"`);
        const key = phrase.replace(/[^A-Z]/g, '');
        if (seen.has(key)) problems.push(`${where}: "${phrase}" is already on row ${seen.get(key)}`);
        seen.set(key, line);
        if (isRetired(get(r, 'retired'))) return;
        puzzles.push({ category, phrase });
    });
    const counts = new Map();
    puzzles.forEach(p => counts.set(p.category, (counts.get(p.category) || 0) + 1));
    if (counts.size < LR_MIN_CATEGORIES) problems.push(`${file}: a game needs at least ${LR_MIN_CATEGORIES} categories with live puzzles (has ${counts.size})`);
    return { problems, warnings, puzzles, counts };
}

export function letterRipSql(file, puzzles, counts) {
    const out = [`-- ============================================================================
-- content/sql/letter_rip.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/${file}, the master copy of Letter
-- Rip's puzzles. To change a puzzle, change the spreadsheet and rebuild.
--
-- Replaces EVERY Letter Rip puzzle with the spreadsheet's ${puzzles.length} live ones
-- (${counts.size} categories), inside a transaction. Creates the table if needed.
-- Safe to re-run. Touches nothing else.
-- ============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS letter_rip_puzzles (
    id        SERIAL PRIMARY KEY,
    category  TEXT NOT NULL,
    phrase    TEXT NOT NULL UNIQUE
);

DELETE FROM letter_rip_puzzles;
`];
    let cat = null;
    puzzles.forEach(p => {
        if (p.category !== cat) { out.push(`\n-- ${p.category} (${counts.get(p.category)})`); cat = p.category; }
        out.push(`INSERT INTO letter_rip_puzzles (category, phrase) VALUES (${sq(p.category)}, ${sq(p.phrase)});`);
    });
    out.push(`
COMMIT;

-- Check: should return ${puzzles.length}.
SELECT COUNT(*) FROM letter_rip_puzzles;
`);
    return out.join('\n');
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
    const files = fs.readdirSync(DIR).filter(f => f.endsWith('.csv') && f !== LETTER_RIP_FILE).sort();
    let failed = false;
    if (fs.existsSync(path.join(DIR, LETTER_RIP_FILE))) {
        const { problems, warnings, puzzles, counts } = checkLetterRip(LETTER_RIP_FILE, parseCsv(fs.readFileSync(path.join(DIR, LETTER_RIP_FILE), 'utf8')));
        warnings.forEach(w => console.log(`  note: ${w}`));
        if (problems.length) {
            failed = true;
            problems.forEach(p => console.log(`  PROBLEM: ${p}`));
            console.log(`${LETTER_RIP_FILE}: NOT built -- fix the problems above.`);
        } else {
            fs.mkdirSync(path.join(DIR, 'sql'), { recursive: true });
            fs.writeFileSync(path.join(DIR, 'sql', 'letter_rip.sql'), letterRipSql(LETTER_RIP_FILE, puzzles, counts));
            console.log(`${LETTER_RIP_FILE}: ${puzzles.length} live puzzles in ${counts.size} categories -> content/sql/letter_rip.sql`);
        }
    }
    for (const file of files) {
        const category = path.basename(file, '.csv').toUpperCase();
        const { problems, warnings, questions } = checkCategory(file, parseCsv(fs.readFileSync(path.join(DIR, file), 'utf8')));
        warnings.forEach(w => console.log(`  note: ${w}`));
        if (problems.length) {
            failed = true;
            problems.forEach(p => console.log(`  PROBLEM: ${p}`));
            console.log(`${file}: NOT built -- fix the problems above.`);
            continue;
        }
        fs.mkdirSync(path.join(DIR, 'sql'), { recursive: true });
        fs.writeFileSync(path.join(DIR, 'sql', path.basename(file, '.csv') + '.sql'), categorySql(category, file, questions));
        console.log(`${file}: ${questions.length} live questions (${TIERS.map(t => `${t}: ${questions.filter(q => q.points === t).length}`).join(', ')}) -> content/sql/${path.basename(file, '.csv')}.sql`);
    }
    // One file with every category, so a big batch of changes is one paste in
    // Neon instead of one per sheet. Each category is still its own
    // transaction, so a run cut short can simply be run again.
    if (!failed) {
        const parts = files.map(f => fs.readFileSync(path.join(DIR, 'sql', path.basename(f, '.csv') + '.sql'), 'utf8'));
        fs.writeFileSync(path.join(DIR, 'sql', 'ALL_CATEGORIES.sql'), `-- ============================================================================
-- content/sql/ALL_CATEGORIES.sql -- GENERATED, don't edit by hand.
-- Every Thinking Pants category in content/, one after another (${files.length} files).
-- Same as running each content/sql/<category>.sql. Safe to re-run.
-- ============================================================================
\n` + parts.join('\n'));
        console.log(`all ${files.length} categories -> content/sql/ALL_CATEGORIES.sql`);
    }
    process.exit(failed ? 1 : 0);
}
