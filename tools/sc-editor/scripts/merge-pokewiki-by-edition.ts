import { readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..'); const deDir = process.argv[2]; const enDir = process.argv[3];
if (!deDir || !enDir) throw new Error('Usage: tsx scripts/merge-pokewiki-by-edition.ts <pokewiki-dir> <bulbapedia-dir>');
const decode = (s: string) => s.replace(/<[^>]*>/g, ' ').replace(/&#x([0-9a-f]+);/gi, (_, n) => String.fromCodePoint(parseInt(n, 16)))
  .replace(/&#([0-9]+);/g, (_, n) => String.fromCodePoint(Number(n))).replace(/&nbsp;|&#160;/g, ' ').replace(/&amp;/g, '&')
  .replace(/&quot;/g, '"').replace(/&apos;|&#0*39;/g, "'").replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/\s+/g, ' ').trim();
const norm = (s: string) => decode(s).replace(/[’‘]/g, "'").replace(/‑/g, '-').toLowerCase();
function pairs(filename: string): Map<string, string> {
  const lines = readFileSync(resolve(project, `Text_deutsch_core/${filename}`), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line)); const map = new Map<string, string>();
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) map.set(lines[i], lines[i + 1]); return map;
}
const speciesGerman = pairs('SPECIES_NAMES.txt'); const formsGerman = pairs('SPECIES_FORM_NAMES.txt');
const gameCodes: [string, string][] = [
  ["Let's Go Pikachu", 'LGP'], ["Let's Go Eevee", 'LGE'], ['Ultra Sun', 'US'], ['Ultra Moon', 'UM'],
  ['Sword', 'SW'], ['Shield', 'SH'], ['Legends: Arceus', 'PLA'], ['Scarlet', 'KA'], ['Violet', 'PU'],
  ['Sun', 'S'], ['Moon', 'M'], ['X', 'X'], ['Y', 'Y'], ['Omega Ruby', 'ΩR'], ['Alpha Sapphire', 'αS'],
];

const englishHtml = new Map<string, string>();
for (const file of readdirSync(enDir).filter((f) => f.endsWith('.html'))) englishHtml.set(decodeURIComponent(file.slice(0, -5)), readFileSync(resolve(enDir, file), 'utf8'));
const germanHtml = new Map<string, string>();
for (const file of readdirSync(deDir).filter((f) => f.endsWith('.html'))) germanHtml.set(decodeURIComponent(file.slice(0, -5)), readFileSync(resolve(deDir, file), 'utf8'));

function editionFor(species: string, description: string): string | undefined {
  const html = englishHtml.get(species); if (!html) return;
  const wanted = norm(description);
  for (const row of html.matchAll(/<tr[^>]*>(.*?)<\/tr>/gs)) {
    const text = norm(row[1]); if (!text.includes(wanted)) continue;
    for (const [label, code] of gameCodes) if (text.includes(label.toLowerCase())) return code;
  }
}
function germanEntry(species: string, form: string, code: string): string | undefined {
  const html = germanHtml.get(species); if (!html) return;
  const headings = [...html.matchAll(/<dl><dt>(.*?)<\/dt><\/dl>/gs)]; const wanted = norm(form);
  for (let h = 0; h < headings.length; h++) {
    if (norm(headings[h][1]) !== wanted) continue;
    const start = (headings[h].index ?? 0) + headings[h][0].length; const end = headings[h + 1]?.index ?? html.length;
    const block = html.slice(start, end);
    for (const row of block.matchAll(/<tr[^>]*>(.*?)<\/tr>/gs)) {
      const rowText = decode(row[1]);
      if (!new RegExp(`(^|\\s)${code.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}(\\s|$)`).test(rowText)) continue;
      const cell = row[1].match(/<td[^>]*style="background:\s*#FFFFFF;"[^>]*>(.*?)<\/td>/s)?.[1];
      const text = cell && decode(cell); if (text && text.length >= 25) return text;
    }
  }
}

const baseNames = new Map<string, string>(); let baseId = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) baseId = match[1]; if (baseId && line.startsWith('Name = ')) baseNames.set(baseId, line.slice(7));
}
const translations = new Map<string, string>(); let formBase = ''; let formName = ''; let pokedex = '';
function flush(): void {
  const enSpecies = baseNames.get(formBase); const deSpecies = enSpecies && speciesGerman.get(enSpecies); const deForm = formsGerman.get(formName);
  if (!enSpecies || !deSpecies || !deForm || !pokedex) return; const edition = editionFor(enSpecies, pokedex); if (!edition) return;
  const translated = germanEntry(deSpecies, deForm, edition); if (translated) translations.set(pokedex, translated);
}
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+),\d+\]$/); if (match) { flush(); formBase = match[1]; formName = ''; pokedex = ''; }
  if (line.startsWith('FormName = ')) formName = line.slice(11); if (line.startsWith('Pokedex = ')) pokedex = line.slice(10);
}
flush();
const path = resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'); const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]'); let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) { const de = translations.get(lines[i]); if (de && lines[i] === lines[i + 1]) { lines[i + 1] = de; changed++; } }
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8'); console.log(`${changed} weitere Formtexte editionsgenau über Bulbapedia + PokéWiki übernommen (${translations.size} Zuordnungen).`);
