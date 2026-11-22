// Run content SQL against the live Neon database, from a Claude session.
//
// Why (Randy, Nov 2026): "There is truly no need for me to review and enter
// the SQL; you're better and faster." Claude now runs the content files
// itself, through the content-only login made by neon_claude_role.sql
// (claude_content: read/add/change/delete game content, read venue settings,
// no DROP/TRUNCATE/ALTER). Its connection string is NEON_URL in the "voxopo"
// cloud environment -- never in the repo or the chat.
//
// The cloud sandbox only allows web traffic, so this talks to Neon's HTTPS
// SQL endpoint (https://<host>/sql) instead of a normal Postgres connection.
//
//   node scripts/neon-sql.mjs check                 who am I, and how many questions (read only)
//   node scripts/neon-sql.mjs query "SELECT ..."    one read-only query, printed as a table
//   node scripts/neon-sql.mjs run path/to/file.sql  a whole file in ONE transaction:
//                                                   all of it or none of it
//
// `run` drops the file's own BEGIN/COMMIT (the whole batch is already one
// transaction), and skips "ALTER TABLE ... ADD COLUMN IF NOT EXISTS" lines
// when the column is already there (only the owner can run ALTER). If such a
// column is really missing, it stops before changing anything: that file
// needs Randy's owner login.
import { spawnSync } from 'node:child_process';
import { readFileSync } from 'node:fs';
import { pathToFileURL } from 'node:url';

let URL_ = '', host = '';

async function neon(body, extraHeaders = {}) {
    const response = await fetch(`https://${host}/sql`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'Neon-Connection-String': URL_, 'Neon-Array-Mode': 'false', ...extraHeaders },
        body: JSON.stringify(body)
    });
    const text = await response.text();
    let data;
    try { data = JSON.parse(text); } catch { data = { message: text }; }
    if (!response.ok) throw new Error(data.message || `HTTP ${response.status}`);
    return data;
}
const one = (query, params = []) => neon({ query, params });
const batch = (queries, readOnly = false) => neon(
    { queries: queries.map(query => ({ query, params: [] })) },
    { 'Neon-Batch-Isolation-Level': 'ReadCommitted', 'Neon-Batch-Read-Only': String(readOnly) }
);

function printRows(result) {
    const rows = result.rows || [];
    if (!rows.length) { console.log(`(${result.command || 'OK'}${result.rowCount != null ? ' ' + result.rowCount : ''})`); return; }
    console.table(rows);
}

// Split a .sql file into statements: respects quotes, $$ blocks and comments.
export function splitSql(sql) {
    const out = [];
    let cur = '', i = 0;
    while (i < sql.length) {
        const c = sql[i], two = sql.slice(i, i + 2);
        if (two === '--') { const end = sql.indexOf('\n', i); i = end === -1 ? sql.length : end + 1; cur += '\n'; continue; }
        if (two === '/*') { const end = sql.indexOf('*/', i + 2); i = end === -1 ? sql.length : end + 2; continue; }
        if (c === "'" || c === '"') {
            let j = i + 1;
            while (j < sql.length) { if (sql[j] === c) { if (sql[j + 1] === c) { j += 2; continue; } break; } j++; }
            cur += sql.slice(i, j + 1); i = j + 1; continue;
        }
        if (c === '$') {
            const m = /^\$[A-Za-z_]*\$/.exec(sql.slice(i));
            if (m) { const end = sql.indexOf(m[0], i + m[0].length); const stop = end === -1 ? sql.length : end + m[0].length; cur += sql.slice(i, stop); i = stop; continue; }
        }
        if (c === ';') { if (cur.trim()) out.push(cur.trim()); cur = ''; i++; continue; }
        cur += c; i++;
    }
    if (cur.trim()) out.push(cur.trim());
    return out;
}

async function main() {
    const [cmd, arg] = process.argv.slice(2);
    if (cmd === 'check') {
        const r = await one("SELECT current_user AS login, (SELECT COUNT(*) FROM questions)::int AS questions");
        printRows(r);
        return;
    }
    if (cmd === 'query') {
        if (!/^\s*(select|with)\b/i.test(arg || '')) throw new Error('query is read-only: SELECT or WITH only. Use run for changes.');
        printRows(await batch([arg], true).then(r => r.results[0]));
        return;
    }
    if (cmd === 'run') {
        const statements = splitSql(readFileSync(arg, 'utf8'))
            .filter(s => !/^(begin|commit|start transaction)$/i.test(s.replace(/\s+/g, ' ').trim()));
        const keep = [];
        for (const s of statements) {
            const m = /^alter\s+table\s+(\w+)\s+add\s+column\s+if\s+not\s+exists\s+(\w+)/i.exec(s);
            if (!m) { keep.push(s); continue; }
            const r = await one('SELECT 1 FROM information_schema.columns WHERE table_name = $1 AND column_name = $2', [m[1], m[2]]);
            if (r.rows.length) { console.log(`skip (already there): ${m[1]}.${m[2]}`); continue; }
            throw new Error(`${m[1]}.${m[2]} is missing and only the owner login can add it. Nothing was changed; this file needs Randy.`);
        }
        console.log(`${arg}: ${keep.length} statements, one transaction...`);
        const r = await batch(keep);
        const results = r.results || [];
        const changed = results.filter(x => /INSERT|UPDATE|DELETE/.test(x.command || ''));
        const sum = cmd => changed.filter(x => x.command === cmd).reduce((n, x) => n + (x.rowCount || 0), 0);
        console.log(`done: ${sum('DELETE')} deleted, ${sum('INSERT')} inserted, ${sum('UPDATE')} updated.`);
        // The file's own check queries (its trailing SELECTs) are printed.
        results.forEach((x, i) => { if (x.command === 'SELECT') { console.log(`-- ${keep[i].replace(/\s+/g, ' ').slice(0, 100)}`); printRows(x); } });
        return;
    }
    console.error('usage: node scripts/neon-sql.mjs check | query "SELECT ..." | run file.sql');
    process.exit(2);
}

// Only when run directly (`node scripts/neon-sql.mjs ...`), not when imported.
if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
    // Node's fetch uses the sandbox's proxy only with this flag (Node >= 22.21).
    if (process.env.HTTPS_PROXY && process.env.NODE_USE_ENV_PROXY !== '1') {
        const again = spawnSync(process.execPath, process.argv.slice(1), { stdio: 'inherit', env: { ...process.env, NODE_USE_ENV_PROXY: '1' } });
        process.exit(again.status ?? 1);
    }
    URL_ = process.env.NEON_URL || '';
    if (!URL_) {
        console.error('NEON_URL is not set. It lives in the "voxopo" cloud environment; a session picks it up when it starts.');
        process.exit(2);
    }
    host = new URL(URL_.replace(/^postgres(ql)?:/, 'http:')).hostname;
    if (!/\.neon\.tech$/.test(host)) { console.error(`Refusing: ${host} is not a Neon host.`); process.exit(2); }
    main().catch(e => { console.error('Neon:', e.message); process.exit(1); });
}
