import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..'); const output = process.argv[2];
if (!output) throw new Error('Usage: tsx scripts/list-open-pokedex-german-pages.ts <output>');
function pairs(filename: string): Map<string, string> {
  const lines = readFileSync(resolve(project, `Text_deutsch_core/${filename}`), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line)); const map = new Map<string, string>();
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) map.set(lines[i], lines[i + 1]);
  return map;
}
const speciesGerman = pairs('SPECIES_NAMES.txt');
const target = readFileSync(resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = target.indexOf('[POKEDEX_ENTRIES]'); const open = new Set<string>();
for (let i = section + 1; i > 0 && i + 1 < target.length; i += 2) if (target[i] === target[i + 1]) open.add(target[i]);
const baseNames = new Map<string, string>(); let baseId = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) baseId = match[1];
  if (baseId && line.startsWith('Name = ')) baseNames.set(baseId, line.slice(7));
}
const pages = new Set<string>(); const englishPages = new Set<string>(); let formBase = ''; let description = '';
const flush = () => { if (open.has(description)) { const en = baseNames.get(formBase); const de = en && speciesGerman.get(en); if (de && en) { pages.add(de); englishPages.add(en); } } };
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+),\d+\]$/); if (match) { flush(); formBase = match[1]; description = ''; }
  if (line.startsWith('Pokedex = ')) description = line.slice(10);
}
flush();
let speciesId = ''; let speciesDescription = '';
const flushSpecies = () => { if (open.has(speciesDescription)) { const en = baseNames.get(speciesId); const de = en && speciesGerman.get(en); if (de && en) { pages.add(de); englishPages.add(en); } } };
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) { flushSpecies(); speciesId = match[1]; speciesDescription = ''; }
  if (line.startsWith('Pokedex = ')) speciesDescription = line.slice(10);
}
flushSpecies();
writeFileSync(output, [...pages].sort().join('\n') + '\n');
writeFileSync(output.replace(/(\.[^.]*)?$/, '-english$1'), [...englishPages].sort().join('\n') + '\n');
console.log(`${pages.size} deutsche PokéWiki-Speziesseiten benötigt.`);
