import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
const csv = process.argv[2]; const speciesFile = process.argv[3]; const output = process.argv[4];
if (!csv || !speciesFile || !output) throw new Error('Usage: tsx scripts/list-pokeapi-form-slugs.ts <csv-dir> <english-species-list> <output>');
const wanted = new Set(readFileSync(speciesFile, 'utf8').split(/\r?\n/).filter(Boolean));
const ids = new Set<string>();
for (const line of readFileSync(resolve(csv, 'pokemon_species_names.csv'), 'utf8').split(/\r?\n/).slice(1)) {
  const [id, language, name] = line.split(','); if (language === '9' && wanted.has(name)) ids.add(id);
}
const slugs = new Set<string>();
for (const line of readFileSync(resolve(csv, 'pokemon.csv'), 'utf8').split(/\r?\n/).slice(1)) {
  const [, identifier, speciesId] = line.split(','); if (ids.has(speciesId)) slugs.add(identifier);
}
writeFileSync(output, [...slugs].sort().join('\n') + '\n'); console.log(`${ids.size} Spezies ergeben ${slugs.size} offizielle PokeAPI-Formschlüssel.`);
