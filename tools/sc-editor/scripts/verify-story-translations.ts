import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { localizeGermanSpeakerLabel, reviewedGermanStoryTranslations } from './story-translations-de';

const project = resolve(import.meta.dirname, '../../..');
const source = readFileSync(resolve(project, 'Data/Scripts/Story/Main_Story.rb'), 'utf8');
const localized = readFileSync(resolve(project, 'Text_deutsch_game/Story.txt'), 'utf8')
  .replace(/^\uFEFF/, '')
  .split(/\r?\n/);

function unescapeRuby(value: string): string {
  return value.replace(/\\"/g, '"').replace(/\\\\/g, '\\');
}

const pattern = /^\s*scene\.message\s+"((?:[^"\\]|\\.)*)"/gm;
const keys = [...source.matchAll(pattern)].map((match) => unescapeRuby(match[1]));
const messages = [...new Set(keys)];
const start = localized.indexOf('[SCRIPT_TEXTS]') + 1;
const body = localized.slice(start);
const errors: string[] = [];

// These are the only source lines whose German text is intentionally identical:
// names, Pokémon cries, punctuation, the language-neutral montage cue and title.
const allowedIdenticalTranslations = new Set([
  '\\bPikachu\\b: Pika!',
  '\\bPikachu\\b: Pika pika!',
  '\\bKael\\b: ...',
  '\\bKael\\b: Hmm.',
  '\\bNidorino\\b: NIDO!',
  '\\b\\PN\\b: Ragnar?!',
  '\\bShadow\\b: Zor!',
  '\\bKael\\b: ...Kael.',
  '\\bShadow\\b: Zor?',
  '\\b\\PN\\b: RAGNAR?!',
  '\\bRagnar\\b: ...',
  '\\bShadow\\b: Zor...?',
  '\\bZorua\\b: Zor. Zorua.',
  '\\bLyra\\b: ...',
  '\\bKael\\b: Shadow!',
  '\\bLyra\\b: Hey, Shadow.',
  '\\bKael\\b: ...!',
  '\\bKael\\b: ...Mira.',
  '\\b\\PN\\b: Viktor?',
  '\\bLyra\\b: Mira?',
  '\\bLyra\\b: Kael!',
  '\\b\\PN\\b: Lyra?',
  '\\bLyra\\b: Kael. \\PN. Willow. Elena.',
  '\\bShadow\\b: Zor.',
  '\\bLyra\\b: HEY!',
  '\\bKael\\b: \\PN. Lyra.',
  '\\b\\PN\\b: Nidhoggr.',
  '\\bKael\\b: General Dread.',
  '\\b\\PN\\b: ...',
  '\\bLyra\\b: ELENA!',
  '\\b\\PN\\b: Xerneas?',
  '\\bShadow\\b: ZORUA!',
  '\\bLyra\\b: Elena. \\PN. Kael.',
  '\\bKael\\b: LYRA!',
  '\\bElena\\b: LYRA!',
  '\\b\\PN\\b: Professor!',
  '\\bKael\\b: M-Mira?!',
  '\\bKael\\b: Mira...',
  '\\bLyra\\b: KAEL!',
  '\\bKael\\b: Shadow?!',
  '\\b\\PN\\b: Hey.',
  '\\bRagnar\\b: \\PN!!!',
  '\\b\\PN\\b: RAGNAR!!!',
  '\\bRaichu\\b: RAI! RAI RAI!',
  '\\b\\PN\\b: Lyra. Kael.',
  '\\bLyra\\b: Elena?!',
  '\\b\\PN\\b: Professor Aldric.',
  '\\bLyra\\b: ELEEEENAAA!',
  '\\bMarcus\\b: \\PN!',
  'Zacian. Xerneas. Yveltal.',
  'Aldric. Elena. Ragnar. Giratina.',
  '\\bLyra\\b: \\PN!',
  '\\i[MONTAGE]',
  'Xerneas. Yveltal. Zacian.',
  '...',
]);

// German occasionally replaces a gendered English description with the
// player's actual name. These reviewed lines intentionally add \PN.
const allowedAddedPlayerName = new Set([
  "\\bRagnar (Recording)\\b: My rival's gonna save the world.",
  '\\bRagnar\\b: Catch you later, rival!',
]);

function structuralControls(value: string): string[] {
  return [...value.matchAll(/\\(PN|ts(?=\[)|i(?=\[)|c(?=\[)|v(?=\[)|b)/g)].map((match) => match[1]);
}

for (let index = 0; index < messages.length; index++) {
  const actual = body[index * 2];
  const translation = body[index * 2 + 1];
  if (actual !== messages[index]) {
    errors.push(`Pair ${index + 1}: expected ${JSON.stringify(messages[index])}, got ${JSON.stringify(actual)}`);
  }
  if (translation === actual && !allowedIdenticalTranslations.has(actual)) {
    errors.push(`Pair ${index + 1}: untranslated text is identical to its English key: ${JSON.stringify(actual)}`);
  }
  const sourceControls = structuralControls(actual);
  const translatedControls = structuralControls(translation);
  const controlsMatch = JSON.stringify(sourceControls) === JSON.stringify(translatedControls);
  const addsAllowedPlayerName = allowedAddedPlayerName.has(actual)
    && JSON.stringify([...sourceControls, 'PN']) === JSON.stringify(translatedControls);
  if (!controlsMatch && !addsAllowedPlayerName) {
    errors.push(`Pair ${index + 1}: control-code mismatch (${sourceControls.join(', ')} vs ${translatedControls.join(', ')})`);
  }
}

const sourceKeySet = new Set(messages);
for (const [key, translation] of reviewedGermanStoryTranslations) {
  if (!sourceKeySet.has(key)) {
    errors.push(`Reviewed translation has no source key: ${JSON.stringify(key)}`);
    continue;
  }
  const index = messages.indexOf(key);
  const actual = body[index * 2 + 1];
  const expected = localizeGermanSpeakerLabel(translation);
  if (actual !== expected) {
    errors.push(`Translation mismatch for ${JSON.stringify(key)}: expected ${JSON.stringify(expected)}, got ${JSON.stringify(actual)}`);
  }
}

if (start === 0) errors.push('Missing [SCRIPT_TEXTS] section.');
if (body.length < messages.length * 2) errors.push(`Expected ${messages.length} pairs, file is too short.`);

if (errors.length) {
  console.error(errors.slice(0, 20).join('\n'));
  console.error(`${errors.length} invalid English key(s).`);
  process.exit(1);
}

console.log(`Verified ${messages.length} pairs and ${reviewedGermanStoryTranslations.size} reviewed translations.`);
