import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const csvDir = process.argv[2];
if (!csvDir) throw new Error('Usage: tsx scripts/merge-descriptions-by-entity.ts <pokeapi-csv-directory>');

function parseCsv(input: string): string[][] {
  const rows: string[][] = []; let row: string[] = []; let field = ''; let quoted = false;
  for (let i = 0; i < input.length; i++) {
    const c = input[i];
    if (c === '"') {
      if (quoted && input[i + 1] === '"') { field += '"'; i++; } else quoted = !quoted;
    } else if (c === ',' && !quoted) { row.push(field); field = ''; }
    else if ((c === '\n' || c === '\r') && !quoted) {
      if (c === '\r' && input[i + 1] === '\n') i++;
      row.push(field); if (row.some(Boolean)) rows.push(row); row = []; field = '';
    } else field += c;
  }
  if (field || row.length) { row.push(field); rows.push(row); }
  return rows;
}

const normalize = (value: string) => value.replace(/[\n\r\f]+/g, ' ').replace(/\s+/g, ' ').trim();

function englishNameToId(filename: string): Map<string, string> {
  const result = new Map<string, string>();
  for (const row of parseCsv(readFileSync(resolve(csvDir, filename), 'utf8')).slice(1)) {
    if (row[1] === '9') result.set(row[2], row[0]);
  }
  return result;
}

function latestGermanFlavor(filename: string): Map<string, string> {
  const result = new Map<string, { version: number; text: string }>();
  for (const row of parseCsv(readFileSync(resolve(csvDir, filename), 'utf8')).slice(1)) {
    const [entity, version, language, flavor] = row;
    if (language !== '6' || !flavor) continue;
    const numericVersion = Number(version);
    const previous = result.get(entity);
    if (!previous || numericVersion >= previous.version) result.set(entity, { version: numericVersion, text: normalize(flavor) });
  }
  return new Map([...result].map(([id, value]) => [id, value.text]));
}

interface PbsEntry { id: string; values: Map<string, string> }
function parsePbs(filename: string): PbsEntry[] {
  const entries: PbsEntry[] = []; let current: PbsEntry | undefined;
  for (const raw of readFileSync(resolve(project, filename), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
    const section = raw.match(/^\[([^\]]+)\]$/);
    if (section) { current = { id: section[1], values: new Map() }; entries.push(current); continue; }
    const property = raw.match(/^([^#=]+?)\s*=\s*(.*)$/);
    if (current && property) current.values.set(property[1].trim(), property[2]);
  }
  return entries;
}

function merge(job: {
  target: string; pbs: string[]; property: string; nameCsv: string; flavorCsv: string;
}): void {
  const names = englishNameToId(job.nameCsv);
  const flavors = latestGermanFlavor(job.flavorCsv);
  const translations = new Map<string, string>();
  for (const pbsFile of job.pbs) {
    for (const entry of parsePbs(pbsFile)) {
      const englishText = entry.values.get(job.property);
      const englishName = entry.values.get('Name');
      if (!englishText || !englishName) continue;
      const id = names.get(englishName);
      const german = id && flavors.get(id);
      if (german) translations.set(normalize(englishText), german);
    }
  }
  const path = resolve(project, `Text_deutsch_core/${job.target}`);
  const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let changed = 0;
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
    const translated = translations.get(normalize(lines[i]));
    if (translated && translated !== lines[i + 1]) { lines[i + 1] = translated; changed++; }
  }
  writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
  console.log(`${job.target}: ${changed} anhand der zugehörigen PBS-Objekte offiziell aktualisiert`);
}

merge({ target: 'ABILITY_DESCRIPTIONS.txt', pbs: ['PBS/abilities.txt'], property: 'Description', nameCsv: 'ability_names.csv', flavorCsv: 'ability_flavor_text.csv' });
merge({ target: 'MOVE_DESCRIPTIONS.txt', pbs: ['PBS/moves.txt'], property: 'Description', nameCsv: 'move_names.csv', flavorCsv: 'move_flavor_text.csv' });
merge({ target: 'ITEM_DESCRIPTIONS.txt', pbs: ['PBS/items.txt'], property: 'Description', nameCsv: 'item_names.csv', flavorCsv: 'item_flavor_text.csv' });
merge({ target: 'POKEDEX_ENTRIES.txt', pbs: ['PBS/pokemon.txt'], property: 'Pokedex', nameCsv: 'pokemon_species_names.csv', flavorCsv: 'pokemon_species_flavor_text.csv' });
