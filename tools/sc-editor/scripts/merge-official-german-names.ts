import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const core = resolve(project, 'Text_deutsch_core');
const data = process.argv[2];
if (!data) throw new Error('Usage: tsx scripts/merge-official-german-names.ts <csv-directory>');

const jobs = [
  ['pokemon_species_names.csv', 'SPECIES_NAMES.txt'],
  ['move_names.csv', 'MOVE_NAMES.txt'],
  ['item_names.csv', 'ITEM_NAMES.txt'],
  ['ability_names.csv', 'ABILITY_NAMES.txt'],
  ['type_names.csv', 'TYPE_NAMES.txt'],
] as const;

function csvRow(line: string): string[] {
  const fields: string[] = [];
  let field = '';
  let quoted = false;
  for (let index = 0; index < line.length; index++) {
    const char = line[index];
    if (char === '"') {
      if (quoted && line[index + 1] === '"') { field += '"'; index++; }
      else quoted = !quoted;
    } else if (char === ',' && !quoted) {
      fields.push(field); field = '';
    } else field += char;
  }
  fields.push(field);
  return fields;
}

function officialMap(path: string): Map<string, string> {
  const byId = new Map<string, { de?: string; en?: string }>();
  for (const line of readFileSync(path, 'utf8').split(/\r?\n/).slice(1)) {
    if (!line) continue;
    const [id, language, name] = csvRow(line);
    if (language !== '6' && language !== '9') continue;
    const entry = byId.get(id) ?? {};
    if (language === '6') entry.de = name;
    if (language === '9') entry.en = name;
    byId.set(id, entry);
  }
  return new Map([...byId.values()].flatMap((entry) => entry.en && entry.de ? [[entry.en, entry.de]] : []));
}

for (const [csv, filename] of jobs) {
  const official = officialMap(resolve(data, csv));
  const path = resolve(core, filename);
  const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let applied = 0;
  let unresolved = 0;
  const unresolvedNames: string[] = [];
  for (let index = section + 1; index > 0 && index + 1 < lines.length; index += 2) {
    const translation = official.get(lines[index]);
    if (translation) {
      if (lines[index + 1] !== translation) applied++;
      lines[index + 1] = translation;
    } else if (lines[index + 1] === lines[index]) {
      unresolved++;
      unresolvedNames.push(lines[index]);
    }
  }
  writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
  console.log(`${filename}: ${applied} offiziell aktualisiert, ${unresolved} ohne offizielle Zuordnung`);
  if (unresolvedNames.length) console.log(`  ${unresolvedNames.join(' | ')}`);
}
