import { readdirSync, readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
const project = resolve(import.meta.dirname, '../../..'); const deDir = process.argv[2]; const enDir = process.argv[3];
if (!deDir || !enDir) throw new Error('Usage: tsx scripts/merge-nationaldex-form-pokedex.ts <de-dir> <en-dir>');
const normalize = (s: string) => s.replace(/\\u([0-9a-f]{4})/gi, (_, n) => String.fromCharCode(parseInt(n, 16))).replace(/\\"/g, '"').replace(/\\n/g, ' ').replace(/[\n\r\f]+/g, ' ').replace(/\s+/g, ' ').trim();
function entries(path: string): Map<string, string> {
  const html = readFileSync(path, 'utf8'); const block = html.match(/\\"entries\\":\[(.*?)\]/s)?.[1]; const result = new Map<string, string>();
  if (!block) return result; for (const match of block.matchAll(/\\"version\\":\\"(.*?)\\",\\"flavorText\\":\\"(.*?)\\"/g)) result.set(match[1], normalize(match[2]));
  return result;
}
const translations = new Map<string, string>();
for (const file of readdirSync(deDir).filter((f) => f.endsWith('.html'))) {
  const enPath = resolve(enDir, file); let en: Map<string, string>; try { en = entries(enPath); } catch { continue; }
  const de = entries(resolve(deDir, file)); for (const [version, english] of en) { const german = de.get(version); if (german) translations.set(english, german); }
}
const path = resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'); const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]'); let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) { const de = translations.get(normalize(lines[i])); if (de && lines[i] === lines[i + 1]) { lines[i + 1] = de; changed++; } }
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8'); console.log(`${changed} aktuelle Formtexte editionsgenau von NationalDex übernommen (${translations.size} Internet-Textpaare).`);
