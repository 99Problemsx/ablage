import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const core = resolve(project, 'Text_deutsch_core');
const data = process.argv[2];
if (!data) throw new Error('Usage: tsx scripts/merge-official-german-descriptions.ts <csv-directory>');

const jobs = [
  ['ability_flavor_text.csv', 'ABILITY_DESCRIPTIONS.txt'],
  ['move_flavor_text.csv', 'MOVE_DESCRIPTIONS.txt'],
  ['item_flavor_text.csv', 'ITEM_DESCRIPTIONS.txt'],
  ['pokemon_species_flavor_text.csv', 'POKEDEX_ENTRIES.txt'],
] as const;

function parseCsv(input: string): string[][] {
  const rows: string[][] = [];
  let row: string[] = [];
  let field = '';
  let quoted = false;
  for (let index = 0; index < input.length; index++) {
    const char = input[index];
    if (char === '"') {
      if (quoted && input[index + 1] === '"') { field += '"'; index++; }
      else quoted = !quoted;
    } else if (char === ',' && !quoted) {
      row.push(field); field = '';
    } else if ((char === '\n' || char === '\r') && !quoted) {
      if (char === '\r' && input[index + 1] === '\n') index++;
      row.push(field);
      if (row.some(Boolean)) rows.push(row);
      row = []; field = '';
    } else field += char;
  }
  if (field || row.length) { row.push(field); rows.push(row); }
  return rows;
}

function normalize(value: string): string {
  return value.replace(/[\n\r\f]+/g, ' ').replace(/\s+/g, ' ').trim();
}

function translationMap(path: string): Map<string, string> {
  const versions = new Map<string, { de?: string; en?: string }>();
  for (const row of parseCsv(readFileSync(path, 'utf8')).slice(1)) {
    const [entity, version, language, flavor] = row;
    if (language !== '6' && language !== '9') continue;
    const key = `${entity}:${version}`;
    const pair = versions.get(key) ?? {};
    if (language === '6') pair.de = normalize(flavor);
    if (language === '9') pair.en = normalize(flavor);
    versions.set(key, pair);
  }
  const result = new Map<string, string>();
  for (const pair of versions.values()) {
    if (pair.en && pair.de) result.set(pair.en, pair.de);
  }
  return result;
}

for (const [csv, filename] of jobs) {
  const translations = translationMap(resolve(data, csv));
  const path = resolve(core, filename);
  const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let applied = 0;
  let unresolved = 0;
  for (let index = section + 1; index > 0 && index + 1 < lines.length; index += 2) {
    const translation = translations.get(normalize(lines[index]));
    if (translation) {
      if (lines[index + 1] !== translation) applied++;
      lines[index + 1] = translation;
    } else if (lines[index + 1] === lines[index]) unresolved++;
  }
  writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
  console.log(`${filename}: ${applied} offiziell übernommen, ${unresolved} noch offen`);
}
