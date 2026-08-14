import { readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..'); const pagesDir = process.argv[2];
if (!pagesDir) throw new Error('Usage: tsx scripts/merge-pokewiki-form-entries.ts <mirror-pages-directory>');
function pairs(filename: string): Map<string, string> {
  const lines = readFileSync(resolve(project, `Text_deutsch_core/${filename}`), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line)); const map = new Map<string, string>();
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) map.set(lines[i], lines[i + 1]); return map;
}
const formsGerman = pairs('SPECIES_FORM_NAMES.txt'); const speciesGerman = pairs('SPECIES_NAMES.txt');
const decode = (s: string) => s.replace(/<[^>]*>/g, '').replace(/&#([0-9]+);/g, (_, n) => String.fromCodePoint(Number(n)))
  .replace(/&nbsp;/g, ' ').replace(/&amp;/g, '&').replace(/&quot;/g, '"').replace(/&apos;|&#039;/g, "'").replace(/\s+/g, ' ').trim();
const normalizeLabel = (s: string) => decode(s).replace(/‑/g, '-').toLowerCase();

const sectionsBySpecies = new Map<string, Map<string, string[]>>();
for (const filename of readdirSync(pagesDir).filter((name) => name.endsWith('.html'))) {
  const species = decodeURIComponent(filename.slice(0, -5)); const html = readFileSync(resolve(pagesDir, filename), 'utf8');
  const sections = new Map<string, string[]>();
  const matches = [...html.matchAll(/<dl><dt>(.*?)<\/dt><\/dl>/gs)];
  for (let i = 0; i < matches.length; i++) {
    const start = (matches[i].index ?? 0) + matches[i][0].length; const end = matches[i + 1]?.index ?? html.length;
    const block = html.slice(start, end); const texts = new Set<string>();
    for (const cell of block.matchAll(/<td[^>]*style="background:\s*#FFFFFF;"[^>]*>(.*?)<\/td>/gs)) {
      const text = decode(cell[1]); if (text.length >= 25) texts.add(text);
    }
    if (texts.size) sections.set(normalizeLabel(matches[i][1]), [...texts]);
  }
  sectionsBySpecies.set(species, sections);
}

const baseNames = new Map<string, string>(); let baseId = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) baseId = match[1];
  if (baseId && line.startsWith('Name = ')) baseNames.set(baseId, line.slice(7));
}
const translations = new Map<string, string>(); let formBase = ''; let formName = ''; let pokedex = '';
function flush(): void {
  const englishSpecies = baseNames.get(formBase); const germanSpecies = englishSpecies && speciesGerman.get(englishSpecies);
  const germanForm = formsGerman.get(formName); if (!germanSpecies || !germanForm || !pokedex) return;
  const candidates = sectionsBySpecies.get(germanSpecies)?.get(normalizeLabel(germanForm));
  if (candidates?.length === 1) translations.set(pokedex, candidates[0]);
}
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+),\d+\]$/); if (match) { flush(); formBase = match[1]; formName = ''; pokedex = ''; }
  if (line.startsWith('FormName = ')) formName = line.slice(11); if (line.startsWith('Pokedex = ')) pokedex = line.slice(10);
}
flush();

const path = resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'); const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]'); let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
  const translated = translations.get(lines[i]); if (translated && lines[i] === lines[i + 1]) { lines[i + 1] = translated; changed++; }
}
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8'); console.log(`${changed} eindeutige offizielle Formtexte aus dem PokéWiki-Spiegel übernommen (${translations.size} Zuordnungen).`);
