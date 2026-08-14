import { readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { basename, resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const csvDir = process.argv[2];
const pagesDir = process.argv[3];
if (!csvDir || !pagesDir) throw new Error('Usage: tsx scripts/merge-nationaldex-pokedex.ts <csv-directory> <pages-directory>');

function parseCsv(input: string): string[][] {
  const rows: string[][] = []; let row: string[] = []; let field = ''; let quoted = false;
  for (let i = 0; i < input.length; i++) {
    const c = input[i];
    if (c === '"') { if (quoted && input[i + 1] === '"') { field += '"'; i++; } else quoted = !quoted; }
    else if (c === ',' && !quoted) { row.push(field); field = ''; }
    else if ((c === '\n' || c === '\r') && !quoted) { if (c === '\r' && input[i + 1] === '\n') i++; row.push(field); if (row.some(Boolean)) rows.push(row); row = []; field = ''; }
    else field += c;
  }
  if (field || row.length) { row.push(field); rows.push(row); }
  return rows;
}
const normalize = (s: string) => s.replace(/[\n\r\f]+/g, ' ').replace(/\s+/g, ' ').trim();
const unescapeJson = (s: string) => JSON.parse(`"${s.replace(/"/g, '\\"')}"`);

const versionIds = new Map(parseCsv(readFileSync(resolve(csvDir, 'versions.csv'), 'utf8')).slice(1).map((row) => [row[0], row[2]]));
const germanByEntityVersion = new Map<string, string>();
for (const filename of readdirSync(pagesDir).filter((name) => name.endsWith('.html'))) {
  const entity = basename(filename).split('-')[0];
  const html = readFileSync(resolve(pagesDir, filename), 'utf8');
  const block = html.match(/\\"entries\\":\[(.*?)\]/s)?.[1];
  if (!block) continue;
  const entryRegex = /\\"version\\":\\"(.*?)\\",\\"flavorText\\":\\"(.*?)\\"/g;
  for (const match of block.matchAll(entryRegex)) germanByEntityVersion.set(`${entity}:${match[1]}`, normalize(unescapeJson(match[2])));
}

const translations = new Map<string, string>();
for (const [entity, versionId, language, flavor] of parseCsv(readFileSync(resolve(csvDir, 'pokemon_species_flavor_text.csv'), 'utf8')).slice(1)) {
  if (language !== '9') continue;
  const version = versionIds.get(versionId);
  const german = version && germanByEntityVersion.get(`${entity}:${version}`);
  if (german) translations.set(normalize(flavor), german);
}

const path = resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt');
const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]'); let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
  const translated = translations.get(normalize(lines[i]));
  if (translated && lines[i] === lines[i + 1]) { lines[i + 1] = translated; changed++; }
}
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
console.log(`POKEDEX_ENTRIES.txt: ${changed} offizielle deutsche Internet-Einträge von NationalDex übernommen (${translations.size} Textpaare).`);
