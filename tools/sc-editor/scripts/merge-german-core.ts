import { readFileSync, writeFileSync } from 'node:fs';
import { basename, resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const sourceDir = process.argv[2];
if (!sourceDir) throw new Error('Usage: tsx scripts/merge-german-core.ts <translated-core-directory>');

const targetDir = resolve(project, 'Text_deutsch_core');
const files = [
  'SPECIES_NAMES.txt',
  'SPECIES_FORM_NAMES.txt',
  'TYPE_NAMES.txt',
  'MOVE_NAMES.txt',
  'ITEM_NAMES.txt',
  'ITEM_NAME_PLURALS.txt',
  'ITEM_PORTION_NAMES.txt',
  'ITEM_PORTION_NAME_PLURALS.txt',
  'ABILITY_NAMES.txt',
  'ABILITY_DESCRIPTIONS.txt',
  'TRAINER_TYPE_NAMES.txt',
  'RIBBON_NAMES.txt',
];

function lines(path: string): string[] {
  return readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
}

function pairs(input: string[]): Map<string, string> {
  const section = input.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  const result = new Map<string, string>();
  for (let index = section + 1; index > 0 && index + 1 < input.length; index += 2) {
    if (!input[index] || input[index].startsWith('#')) continue;
    result.set(input[index], input[index + 1]);
  }
  return result;
}

for (const file of files) {
  const sourcePath = resolve(sourceDir, file);
  const targetPath = resolve(targetDir, file);
  const translations = pairs(lines(sourcePath));
  const target = lines(targetPath);
  const section = target.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  let applied = 0;
  let missing = 0;
  for (let index = section + 1; index > 0 && index + 1 < target.length; index += 2) {
    const translated = translations.get(target[index]);
    if (translated && translated !== target[index]) {
      target[index + 1] = translated;
      applied++;
    } else if (target[index + 1] === target[index]) {
      missing++;
    }
  }
  writeFileSync(targetPath, `\uFEFF${target.join('\n')}`, 'utf8');
  console.log(`${basename(file)}: ${applied} übernommen, ${missing} noch offen`);
}
