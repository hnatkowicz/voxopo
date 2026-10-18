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
const core = s => s.toLowerCase().replace(/^(the|a|an)\s+/, '').replace(/-(?=\d)/g, 'minus ').replace(/[^a-z0-9 ]/g, '').trim();

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
        if (wrong.length < 3) problems.push(`${where}: needs at least 3 wrong answers (has ${wrong.length})`);
        const all = [answer, ...wrong].map(core);
        if (new Set(all).size !== all.length) problems.push(`${where}: the answer and wrong answers must all be different`);
        if (answer && core(answer).length > 2 && core(question).includes(core(answer))) problems.push(`${where}: the question gives away its own answer ("${answer}")`);
        // Picture rounds reuse one question ("Which country is this?") with a different picture.
        const key = core(question) + '|' + get(r, 'image').toLowerCase();
        if (seenQuestions.has(key)) problems.push(`${where}: same question as row ${seenQuestions.get(key)}`);
        seenQuestions.set(key, line);
        if (isRetired(get(r, 'retired'))) return;
        questions.push({ points, question, answer, wrong, image: get(r, 'image') || null, source: get(r, 'source') || null });
    });
    TIERS.forEach(t => { if (!questions.some(q => q.points === t)) problems.push(`${file}: no live questions at ${t} points (the board needs every tier)`); });
    const answers = new Map();
    questions.forEach(q => answers.set(core(q.answer), (answers.get(core(q.answer)) || 0) + 1));
    [...answers].filter(([, n]) => n > 1).forEach(([a]) => warnings.push(`${file}: the answer "${a}" is used more than once (allowed, but they could land on the same board)`));
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

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = '${category}';
`];
    let tier = null;
    [...questions].sort((a, b) => a.points - b.points).forEach(q => {
        if (q.points !== tier) { out.push(`\n-- ${q.points} points`); tier = q.points; }
        out.push(`INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', '${category}', ${q.source ? sq(q.source) : 'NULL'}, NULL,
        ${sq(q.question)}, ${q.image ? sq(q.image) : 'NULL'},
        ${sq(q.answer)}, ARRAY[${q.wrong.map(sq).join(', ')}], ${q.points});`);
    });
    out.push(`
COMMIT;

-- Check: should return ${questions.length}.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = '${category}';
`);
    return out.join('\n');
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
    const files = fs.readdirSync(DIR).filter(f => f.endsWith('.csv')).sort();
    let failed = false;
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
    process.exit(failed ? 1 : 0);
}
