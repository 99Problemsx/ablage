import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { reviewedGermanStoryTranslations } from './story-translations-de';

const project = resolve(import.meta.dirname, '../../..');
const storyPath = resolve(project, 'Text_deutsch_game/Story.txt');
const translationsPath = resolve(import.meta.dirname, 'story-translations-de.ts');

const lines = readFileSync(storyPath, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const start = lines.indexOf('[SCRIPT_TEXTS]') + 1;
const additions: string[] = [];

for (let index = start; index > 0 && index + 1 < lines.length; index += 2) {
  const source = lines[index];
  const translation = lines[index + 1];
  if (!source || reviewedGermanStoryTranslations.has(source)) continue;
  additions.push(`  [${JSON.stringify(source)}, ${JSON.stringify(translation)}],`);
}

if (!additions.length) {
  console.log('No unreviewed story translations remain.');
  process.exit(0);
}

const text = readFileSync(translationsPath, 'utf8');
const marker = '\n]);\n\nconst germanSpeakerLabels';
const markerIndex = text.indexOf(marker);
if (markerIndex < 0) throw new Error('Could not find the reviewed translation map boundary.');

const updated = `${text.slice(0, markerIndex)}\n${additions.join('\n')}${text.slice(markerIndex)}`;
writeFileSync(translationsPath, updated, 'utf8');
console.log(`Promoted ${additions.length} reviewed story translations.`);
