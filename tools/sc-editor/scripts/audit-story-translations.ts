import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { reviewedGermanStoryTranslations } from './story-translations-de';

const project = resolve(import.meta.dirname, '../../..');
const source = readFileSync(resolve(project, 'Data/Scripts/Story/Main_Story.rb'), 'utf8');
const lines = readFileSync(resolve(project, 'Text_deutsch_game/Story.txt'), 'utf8')
  .replace(/^\uFEFF/, '')
  .split(/\r?\n/);

function unescapeRuby(value: string): string {
  return value.replace(/\\"/g, '"').replace(/\\\\/g, '\\');
}

const pattern = /^\s*scene\.message\s+"((?:[^"\\]|\\.)*)"/gm;
const messages = [...new Set([...source.matchAll(pattern)].map((match) => unescapeRuby(match[1])))];
const start = lines.indexOf('[SCRIPT_TEXTS]') + 1;

const unreviewed = messages.flatMap((key, index) => {
  if (reviewedGermanStoryTranslations.has(key)) return [];
  return [{ index: index + 1, key, translation: lines[start + index * 2 + 1] }];
});

// Short standalone lines are easy to mistake for names during a visual audit.
// Keep common English dialogue words explicit so entries such as "Always."
// and "Together." can never be accepted as language-neutral exceptions.
const forbiddenIdenticalWords = new Set([
  'always',
  'together',
]);

const untranslatedStandaloneWords = messages.flatMap((key, index) => {
  const translation = lines[start + index * 2 + 1];
  if (translation !== key) return [];
  const text = key
    .replace(/^\\[bi][^\]]*\]/, '')
    .replace(/^\\b[^\\]*\\b:\s*/, '')
    .replace(/[.?!…()[\]*_\s-]/g, '')
    .toLowerCase();
  if (!forbiddenIdenticalWords.has(text)) return [];
  return [{ index: index + 1, key }];
});

const offset = Math.max(0, Number.parseInt(process.argv[2] ?? '0', 10) || 0);
const limit = Math.max(0, Number.parseInt(process.argv[3] ?? String(unreviewed.length), 10) || 0);

for (const entry of unreviewed.slice(offset, offset + limit)) {
  console.log(`${entry.index}\t${JSON.stringify(entry.key)}\t${JSON.stringify(entry.translation)}`);
}
console.error(`Unreviewed: ${unreviewed.length}/${messages.length}; showing ${offset}-${Math.min(offset + limit, unreviewed.length)}`);

if (untranslatedStandaloneWords.length) {
  for (const entry of untranslatedStandaloneWords) {
    console.error(`Untranslated English word at ${entry.index}: ${JSON.stringify(entry.key)}`);
  }
  process.exitCode = 1;
}
