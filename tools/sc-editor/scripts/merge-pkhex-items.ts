import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const englishPath = process.argv[2];
const germanPath = process.argv[3];
const targetFilename = process.argv[4] ?? 'ITEM_NAMES.txt';
if (!englishPath || !germanPath) throw new Error('Usage: tsx scripts/merge-pkhex-items.ts <english> <german>');

const english = readFileSync(englishPath, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const german = readFileSync(germanPath, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
if (english.length !== german.length) throw new Error(`List lengths differ: ${english.length} / ${german.length}`);

const official = new Map<string, string>();
for (let i = 0; i < english.length; i++) {
  if (english[i] && german[i]) official.set(english[i], german[i]);
}

// Essentials retains several older/abbreviated English labels. They refer to
// the same official items, so map those aliases to the extracted German name.
const aliases: Record<string, string> = {
  "Leader's Crest": 'Leader’s Crest',
  'Itemfinder': 'Dowsing Machine',
  'Ylw Apricorn': 'Yellow Apricorn',
  'Blu Apricorn': 'Blue Apricorn',
  'Grn Apricorn': 'Green Apricorn',
  'Pnk Apricorn': 'Pink Apricorn',
  'Wht Apricorn': 'White Apricorn',
  'Blk Apricorn': 'Black Apricorn',
  'Pretty Wing': 'Pretty Feather',
  'Health Wing': 'Health Feather',
  'Muscle Wing': 'Muscle Feather',
  'Resist Wing': 'Resist Feather',
  'Genius Wing': 'Genius Feather',
  'Clever Wing': 'Clever Feather',
  'Swift Wing': 'Swift Feather',
  'Stick': 'Leek',
};
for (const [alias, canonical] of Object.entries(aliases)) {
  const translated = official.get(canonical);
  if (translated) official.set(alias, translated);
}

const path = resolve(project, `Text_deutsch_core/${targetFilename}`);
const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
  const translated = official.get(lines[i]);
  if (translated && translated !== lines[i + 1]) {
    lines[i + 1] = translated;
    changed++;
  }
}
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
console.log(`${targetFilename}: ${changed} über ${official.size} aus den Spielen extrahierte Namenspaare aktualisiert`);
