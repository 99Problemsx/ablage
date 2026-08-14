import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const core = resolve(project, 'Text_deutsch_core');
const data = process.argv[2];
const opgg = process.argv[3];
const formBaseline = process.argv[4];
if (!data || !opgg) {
  throw new Error('Usage: tsx scripts/merge-champions-and-forms.ts <pokeapi-csv-directory> <opgg-directory>');
}

function csvRow(line: string): string[] {
  const fields: string[] = [];
  let field = '';
  let quoted = false;
  for (let i = 0; i < line.length; i++) {
    const c = line[i];
    if (c === '"') {
      if (quoted && line[i + 1] === '"') { field += '"'; i++; }
      else quoted = !quoted;
    } else if (c === ',' && !quoted) {
      fields.push(field); field = '';
    } else field += c;
  }
  fields.push(field);
  return fields;
}

function updatePairs(filename: string, translations: Map<string, string>): number {
  const path = resolve(core, filename);
  const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let changed = 0;
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
    const translated = translations.get(lines[i]);
    if (translated && translated !== lines[i + 1]) {
      lines[i + 1] = translated;
      changed++;
    }
  }
  writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
  return changed;
}

function opggEntries(filename: string): Map<string, string> {
  const html = readFileSync(resolve(opgg, filename), 'utf8');
  const entries = new Map<string, string>();
  const regex = /\\"key\\":\\"(.*?)\\",\\"name\\":\\"(.*?)\\"/g;
  for (const match of html.matchAll(regex)) entries.set(match[1], match[2]);
  return entries;
}

function pairedOpgg(kind: 'moves' | 'items'): Map<string, string> {
  const en = opggEntries(`opgg-${kind}-en.html`);
  const de = opggEntries(`opgg-${kind}-de.html`);
  const result = new Map<string, string>();
  for (const [key, english] of en) {
    const german = de.get(key);
    if (german) result.set(english, german);
  }
  console.log(`OP.GG ${kind}: ${result.size} zweisprachige Einträge`);
  return result;
}

function officialForms(): Map<string, string> {
  const rows = new Map<string, { de?: string; en?: string; dePokemon?: string }>();
  const path = resolve(data, 'pokemon_form_names.csv');
  for (const line of readFileSync(path, 'utf8').split(/\r?\n/).slice(1)) {
    if (!line) continue;
    const [id, language, formName, pokemonName] = csvRow(line);
    if (language !== '6' && language !== '9') continue;
    const entry = rows.get(id) ?? {};
    // pokemon_name is not a form label. Falling back to it would turn a
    // generic label such as "Normal" into a species name such as "Formeo".
    const name = formName;
    if (language === '6') { entry.de = name; entry.dePokemon = pokemonName; }
    if (language === '9') entry.en = name;
    rows.set(id, entry);
  }

  // A generic English form label is only safe if every official occurrence has
  // the same German equivalent (e.g. "Sunshine Form" -> "Sonnenform").
  const candidates = new Map<string, Set<string>>();
  for (const row of rows.values()) {
    if (!row.en || !row.de || row.de === row.dePokemon) continue;
    const values = candidates.get(row.en) ?? new Set<string>();
    values.add(row.de);
    candidates.set(row.en, values);
  }
  const result = new Map([...candidates].flatMap(([en, values]) =>
    values.size === 1 ? [[en, [...values][0]]] : []));

  const species = new Map<string, string>();
  const speciesRows = new Map<string, { de?: string; en?: string }>();
  for (const line of readFileSync(resolve(data, 'pokemon_species_names.csv'), 'utf8').split(/\r?\n/).slice(1)) {
    if (!line) continue;
    const [id, language, name] = csvRow(line);
    if (language !== '6' && language !== '9') continue;
    const row = speciesRows.get(id) ?? {};
    if (language === '6') row.de = name;
    if (language === '9') row.en = name;
    speciesRows.set(id, row);
  }
  for (const row of speciesRows.values()) if (row.en && row.de) species.set(row.en, row.de);

  const formPath = resolve(core, 'SPECIES_FORM_NAMES.txt');
  const formLines = readFileSync(formPath, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const formSection = formLines.indexOf('[SPECIES_FORM_NAMES]');
  const parenthetical: Record<string, string> = {
    'Original Color': 'Originalfarbe', 'Curly Form': 'Gebogene Form',
    'Droopy Form': 'Hängende Form', 'Stretchy Form': 'Langgestreckte Form',
  };
  for (let i = formSection + 1; i > 0 && i + 1 < formLines.length; i += 2) {
    const english = formLines[i];
    const match = english.match(/^Mega (.+?)( [XYZ])?(?: \((.+)\))?$/);
    if (!match) continue;
    const germanSpecies = species.get(match[1]);
    if (!germanSpecies) continue;
    const extra = match[3] ? ` (${parenthetical[match[3]] ?? match[3]})` : '';
    result.set(english, `Mega-${germanSpecies}${match[2] ?? ''}${extra}`);
  }
  result.set('Alolan', 'Alola-Form');
  result.set('Galarian', 'Galar-Form');
  result.set('Hisuian', 'Hisui-Form');
  result.set('Paldean', 'Paldea-Form');
  result.set('Primal Kyogre', 'Proto-Kyogre');
  result.set('Primal Groudon', 'Proto-Groudon');
  result.set('Bloodmoon Ursaluna', 'Blutmond-Ursaluna');
  const officialModernForms: Record<string, string> = {
    'Red-Striped': 'Rotlinige Form', 'Blue-Striped': 'Blaulinige Form',
    'White-Striped': 'Weißlinige Form', 'Family of Four': 'Viererfamilie',
    'Family of Three': 'Dreierfamilie', 'Green Plumage': 'Grüngefiedert',
    'Blue Plumage': 'Blaugefiedert', 'Yellow Plumage': 'Gelbgefiedert',
    'White Plumage': 'Weißgefiedert', 'Zero Form': 'Nullform',
    'Hero Form': 'Heldenform', 'Curly Form': 'Gebogene Form',
    'Droopy Form': 'Hängende Form', 'Stretchy Form': 'Gestreckte Form',
    'Two-Segment Form': 'Zweisegmentform', 'Three-Segment Form': 'Dreisegmentform',
    'Chest Form': 'Truhenform', 'Roaming Form': 'Wanderform',
    'Spiky-Eared': 'Strubbelohr', 'Unknown Type': 'Unbekannter Typ',
    'Type: Unknown': 'Typ: Unbekannt', 'Galarian Standard Mode': 'Galar-Normalmodus',
    'Galarian Zen Mode': 'Galar-Trance-Modus', 'Small Variety': 'Kleine Form',
    'Medium Variety': 'Mittlere Form', 'Large Variety': 'Große Form',
    'Jumbo Variety': 'Maxi-Form', 'Therian Form': 'Tiergeistform',
  };
  for (const [en, de] of Object.entries(officialModernForms)) result.set(en, de);
  return result;
}

const forms = officialForms();
if (formBaseline) {
  const baselineLines = readFileSync(formBaseline, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const baselineSection = baselineLines.findIndex((line) => /^\[SPECIES_FORM_NAMES\]$/.test(line));
  const baseline = new Map<string, string>();
  for (let i = baselineSection + 1; i > 0 && i + 1 < baselineLines.length; i += 2) baseline.set(baselineLines[i], baselineLines[i + 1]);
  console.log(`SPECIES_FORM_NAMES.txt: ${updatePairs('SPECIES_FORM_NAMES.txt', baseline)} aus Ausgangsdatei wiederhergestellt`);
}
console.log(`SPECIES_FORM_NAMES.txt: ${updatePairs('SPECIES_FORM_NAMES.txt', forms)} offiziell aktualisiert (${forms.size} eindeutige Formnamen)`);
console.log(`MOVE_NAMES.txt: ${updatePairs('MOVE_NAMES.txt', pairedOpgg('moves'))} über Pokémon Champions aktualisiert`);
console.log(`ITEM_NAMES.txt: ${updatePairs('ITEM_NAMES.txt', pairedOpgg('items'))} über Pokémon Champions aktualisiert`);
