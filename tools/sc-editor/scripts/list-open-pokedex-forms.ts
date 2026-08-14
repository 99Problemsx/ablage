import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const csvDir = process.argv[2]; const output = process.argv[3];
if (!csvDir || !output) throw new Error('Usage: tsx scripts/list-open-pokedex-forms.ts <csv-directory> <output>');
const normalize = (s: string) => s.replace(/\s+/g, ' ').trim();
const slug = (s: string) => s.toLowerCase().replace(/[’']/g, '').replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');

const target = readFileSync(resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const targetSection = target.indexOf('[POKEDEX_ENTRIES]'); const open = new Set<string>();
for (let i = targetSection + 1; i > 0 && i + 1 < target.length; i += 2) if (target[i] === target[i + 1]) open.add(normalize(target[i]));

const baseNames = new Map<string, string>(); let baseId = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const section = line.match(/^\[([^,\]]+)\]$/); if (section) baseId = section[1];
  if (baseId && line.startsWith('Name = ')) baseNames.set(baseId, line.slice(7));
}

const candidates = new Set<string>(); let formBase = ''; let formName = ''; let formPokedex = '';
function flush(): void {
  if (!open.has(normalize(formPokedex))) return;
  const baseName = baseNames.get(formBase); if (!baseName) return;
  const baseSlug = slug(baseName);
  const formSlug = slug(formName).replace(new RegExp(`^mega-${baseSlug}`), `${baseSlug}-mega`).replace(new RegExp(`^${baseSlug}-`), '');
  if (/^Mega /.test(formName)) {
    const suffix = slug(formName.replace(/^Mega\s+/, '').replace(new RegExp(`^${baseName}\s*`, 'i'), ''));
    candidates.add(`${baseSlug}-mega${suffix ? `-${suffix}` : ''}`);
  } else if (formSlug) candidates.add(`${baseSlug}-${formSlug}`);
}
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const section = line.match(/^\[([^,\]]+),\d+\]$/);
  if (section) { flush(); formBase = section[1]; formName = ''; formPokedex = ''; continue; }
  if (line.startsWith('FormName = ')) formName = line.slice(11);
  if (line.startsWith('Pokedex = ')) formPokedex = line.slice(10);
}
flush();

writeFileSync(output, [...candidates].sort().join('\n') + '\n');
console.log(`${open.size} offene Texte ergeben ${candidates.size} konkrete Formseiten.`);
