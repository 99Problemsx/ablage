import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const csvDir = process.argv[2];
const output = process.argv[3];
if (!csvDir || !output) throw new Error('Usage: tsx scripts/list-open-pokedex-species.ts <csv-directory> <output>');

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
const target = readFileSync(resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = target.indexOf('[POKEDEX_ENTRIES]');
const open = new Set<string>();
for (let i = section + 1; i > 0 && i + 1 < target.length; i += 2) if (target[i] === target[i + 1]) open.add(normalize(target[i]));

const ids = new Set<string>(); const unmatched = new Set(open);
for (const [entity, , language, flavor] of parseCsv(readFileSync(resolve(csvDir, 'pokemon_species_flavor_text.csv'), 'utf8')).slice(1)) {
  if (language !== '9') continue;
  const text = normalize(flavor);
  if (open.has(text)) { ids.add(entity); unmatched.delete(text); }
}
writeFileSync(output, [...ids].sort((a, b) => Number(a) - Number(b)).join('\n') + '\n');
console.log(`${open.size} offene eindeutige Texte: ${ids.size} Spezies-IDs gefunden, ${unmatched.size} projektspezifisch/unbekannt.`);
if (unmatched.size) console.log([...unmatched].map((text) => `? ${text}`).join('\n'));
