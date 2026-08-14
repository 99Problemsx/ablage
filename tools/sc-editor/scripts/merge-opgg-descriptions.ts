import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const sourceDir = process.argv[2] ?? '/tmp';
const normalize = (value: string) => value.replace(/\s+/g, ' ').trim();
const decode = (value: string) => value.replace(/\\"/g, '"').replace(/\\n/g, ' ').replace(/\\\\/g, '\\');

interface Entry { key: string; name: string; text: string }
function entries(kind: 'abilities' | 'moves' | 'items', language: 'en' | 'de'): Entry[] {
  const html = readFileSync(resolve(sourceDir, `opgg-${kind}-${language}.html`), 'utf8');
  const textField = kind === 'abilities' ? 'description' : kind === 'moves' ? 'description' : 'effect';
  const regex = new RegExp(`\\\\"key\\\\":\\\\"(.*?)\\\\"(?:(?!\\\\"key\\\\").)*?\\\\"name\\\\":\\\\"(.*?)\\\\"(?:(?!\\\\"key\\\\").)*?\\\\"${textField}\\\\":\\\\"(.*?)\\\\"`, 'gs');
  return [...html.matchAll(regex)].map((match) => ({ key: decode(match[1]), name: decode(match[2]), text: decode(match[3]) }));
}

function pbsDescriptionToName(filename: string): Map<string, string> {
  const result = new Map<string, string>();
  let name = '';
  for (const line of readFileSync(resolve(project, filename), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
    if (line.startsWith('Name = ')) name = line.slice(7);
    if (name && line.startsWith('Description = ')) result.set(normalize(line.slice(14)), name);
  }
  return result;
}

function merge(kind: 'abilities' | 'moves' | 'items', pbs: string, target: string): void {
  const english = entries(kind, 'en');
  const german = new Map(entries(kind, 'de').map((entry) => [entry.key, entry]));
  const keyByEnglishName = new Map(english.map((entry) => [entry.name, entry.key]));
  const descriptionToName = pbsDescriptionToName(pbs);
  const translations = new Map<string, string>();
  for (const [description, name] of descriptionToName) {
    const key = keyByEnglishName.get(name);
    const translated = key && german.get(key)?.text;
    if (translated) translations.set(description, normalize(translated));
  }

  const path = resolve(project, `Text_deutsch_core/${target}`);
  const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let changed = 0;
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
    const translated = translations.get(normalize(lines[i]));
    if (translated && translated !== lines[i + 1]) { lines[i + 1] = translated; changed++; }
  }
  writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
  console.log(`${target}: ${changed} über Pokémon Champions aktualisiert (${english.length}/${german.size} Quelldatensätze)`);
}

merge('abilities', 'PBS/abilities.txt', 'ABILITY_DESCRIPTIONS.txt');
merge('moves', 'PBS/moves.txt', 'MOVE_DESCRIPTIONS.txt');
merge('items', 'PBS/items.txt', 'ITEM_DESCRIPTIONS.txt');
