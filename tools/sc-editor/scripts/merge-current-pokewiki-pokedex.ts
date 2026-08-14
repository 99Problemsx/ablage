import { readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const deDir = process.argv[2];
const enDir = process.argv[3];
const csvDir = process.argv[4];
if (!deDir || !enDir || !csvDir) throw new Error('Usage: tsx scripts/merge-current-pokewiki-pokedex.ts <pokewiki-dir> <bulbapedia-dir> <pokeapi-csv-dir>');

const decode = (s: string) => s.replace(/<[^>]*>/g, ' ')
  .replace(/&#x([0-9a-f]+);/gi, (_, n) => String.fromCodePoint(parseInt(n, 16)))
  .replace(/&#([0-9]+);/g, (_, n) => String.fromCodePoint(Number(n)))
  .replace(/&nbsp;|&#160;/g, ' ').replace(/&amp;/g, '&').replace(/&quot;/g, '"')
  .replace(/&apos;|&#0*39;/g, "'").replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/\s+/g, ' ').trim();
const norm = (s: string) => decode(s).replace(/[’‘]/g, "'").replace(/[‑–—]/g, '-').toLowerCase();
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

function pairs(filename: string): Map<string, string> {
  const lines = readFileSync(resolve(project, `Text_deutsch_core/${filename}`), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  const result = new Map<string, string>();
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) result.set(lines[i], lines[i + 1]);
  return result;
}

const speciesGerman = pairs('SPECIES_NAMES.txt');
const formsGerman = pairs('SPECIES_FORM_NAMES.txt');
const gameCodes: [string, string][] = [
  ["Let's Go Pikachu", 'LGP'], ["Let's Go Eevee", 'LGE'], ['Ultra Sun', 'US'], ['Ultra Moon', 'UM'],
  ['Sword', 'SW'], ['Shield', 'SH'], ['Legends: Arceus', 'PLA'], ['Scarlet', 'KA'], ['Violet', 'PU'],
  ['Sun', 'S'], ['Moon', 'M'], ['X', 'X'], ['Y', 'Y'], ['Omega Ruby', 'OR'], ['Alpha Sapphire', 'AS'],
  ['Legends: Z-A', 'PLZA'],
];
const identifierCodes = new Map<string, string>([
  ['x', 'X'], ['y', 'Y'], ['omega-ruby', 'ΩR'], ['alpha-sapphire', 'αS'], ['sun', 'S'], ['moon', 'M'],
  ['ultra-sun', 'US'], ['ultra-moon', 'UM'], ['lets-go-pikachu', 'LGP'], ['lets-go-eevee', 'LGE'],
  ['sword', 'SW'], ['shield', 'SH'], ['legends-arceus', 'PLA'], ['scarlet', 'KA'], ['violet', 'PU'],
]);
const versionCodes = new Map<string, string>();
for (const row of parseCsv(readFileSync(resolve(csvDir, 'versions.csv'), 'utf8')).slice(1)) {
  const code = identifierCodes.get(row[2]); if (code) versionCodes.set(row[0], code);
}
const flavorEditions = new Map<string, string>();
for (const row of parseCsv(readFileSync(resolve(csvDir, 'pokemon_species_flavor_text.csv'), 'utf8')).slice(1)) {
  const code = row[2] === '9' && versionCodes.get(row[1]);
  if (code && row[3]) flavorEditions.set(norm(row[3]), code);
}

const loadPages = (dir: string): Map<string, string> => new Map(readdirSync(dir).filter((f) => f.endsWith('.html'))
  .map((f) => [decodeURIComponent(f.slice(0, -5)), readFileSync(resolve(dir, f), 'utf8')]));
const englishHtml = loadPages(enDir);
const germanHtml = loadPages(deDir);

function editionFor(species: string, description: string): string | undefined {
  const html = englishHtml.get(species);
  if (!html) return flavorEditions.get(norm(description));
  const wanted = norm(description);
  for (const row of html.matchAll(/<tr[^>]*>(.*?)<\/tr>/gs)) {
    const text = norm(row[1]);
    if (!text.includes(wanted)) continue;
    for (const [label, code] of gameCodes) if (text.includes(label.toLowerCase())) return code;
  }
  return flavorEditions.get(wanted);
}

function entriesFor(species: string, form: string): Map<string, string> {
  const html = germanHtml.get(species);
  const result = new Map<string, string>();
  if (!html) return result;
  const headings = [...html.matchAll(/<dl><dt>(.*?)<\/dt><\/dl>/gs)];
  const wanted = norm(form);
  const regional = form.match(/^(Alola|Galar|Hisui)(?:-|$)/)?.[1];
  const regionalSpecies = regional ? norm(`${regional}-${species}`) : '';
  const coloredCore = /Kern$/.test(form) ? norm('Farbiger Kern') : '';
  const blocks: string[] = [];
  if (wanted === norm(species)) {
    const main = html.match(/<h3>.*?id="Pokédex-Einträge".*?<\/h3>(.*?)(?=<h3)/s);
    if (main) blocks.push(main[1]);
  }
  for (let h = 0; h < headings.length; h++) {
    const heading = norm(headings[h][1]);
    if (heading !== wanted && !heading.includes(wanted) && heading !== regionalSpecies && heading !== coloredCore) continue;
    const start = (headings[h].index ?? 0) + headings[h][0].length;
    const end = headings[h + 1]?.index ?? html.indexOf('<h3', start);
    blocks.push(html.slice(start, end > start ? end : html.length));
  }
  for (const block of blocks) {
    for (const match of block.matchAll(/class="sk&#95;item"[^>]*>(.*?)<\/span>.*?<\/div><div>(.*?)<\/div>/gs)) {
      const code = decode(match[1]);
      const text = decode(match[2]);
      if (code && text.length >= 20) result.set(code, text);
    }
  }
  return result;
}

const baseNames = new Map<string, string>();
let baseId = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/);
  if (match) baseId = match[1];
  if (baseId && line.startsWith('Name = ')) baseNames.set(baseId, line.slice(7));
}

const translations = new Map<string, string>();
let formBase = ''; let formName = ''; let pokedex = '';
function flush(): void {
  const enSpecies = baseNames.get(formBase);
  const deSpecies = enSpecies && speciesGerman.get(enSpecies);
  const deForm = formsGerman.get(formName);
  if (!enSpecies || !deSpecies || !deForm || !pokedex) return;
  const entries = entriesFor(deSpecies, deForm);
  const edition = editionFor(enSpecies, pokedex);
  const uniqueEntries = [...new Set(entries.values())];
  const translated = (edition && entries.get(edition)) || (uniqueEntries.length === 1 ? uniqueEntries[0] : undefined);
  if (translated) translations.set(pokedex, translated);
}
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+),\d+\]$/);
  if (match) { flush(); formBase = match[1]; formName = ''; pokedex = ''; }
  if (line.startsWith('FormName = ')) formName = line.slice(11);
  if (line.startsWith('Pokedex = ')) pokedex = line.slice(10);
}
flush();

// Base species use the same exact edition matching, but their heading is the localized species name.
baseId = ''; let basePokedex = '';
function flushBase(): void {
  const enSpecies = baseNames.get(baseId);
  const deSpecies = enSpecies && speciesGerman.get(enSpecies);
  if (!enSpecies || !deSpecies || !basePokedex) return;
  const entries = entriesFor(deSpecies, deSpecies);
  const edition = editionFor(enSpecies, basePokedex);
  const uniqueEntries = [...new Set(entries.values())];
  const translated = (edition && entries.get(edition)) || (uniqueEntries.length === 1 ? uniqueEntries[0] : undefined);
  if (translated) translations.set(basePokedex, translated);
}
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/);
  if (match) { flushBase(); baseId = match[1]; basePokedex = ''; }
  if (line.startsWith('Pokedex = ')) basePokedex = line.slice(10);
}
flushBase();

const path = resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt');
const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]');
let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
  const translated = translations.get(lines[i]);
  if (translated && lines[i] === lines[i + 1]) { lines[i + 1] = translated; changed++; }
}
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
console.log(`${changed} offene Formtexte aus dem aktuellen PokéWiki übernommen (${translations.size} sichere Zuordnungen).`);
