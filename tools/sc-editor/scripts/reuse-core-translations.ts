import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
function pairs(filename: string): Map<string, string> {
  const lines = readFileSync(resolve(project, `Text_deutsch_core/${filename}`), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
  const section = lines.findIndex((line) => /^\[[A-Z_]+\]$/.test(line));
  const result = new Map<string, string>();
  for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) if (lines[i] !== lines[i + 1]) result.set(lines[i], lines[i + 1]);
  return result;
}

const known = new Map([...pairs('MOVE_DESCRIPTIONS.txt'), ...pairs('ABILITY_DESCRIPTIONS.txt')]);
const pbsMoves = new Map<string, string>();
let currentMove = '';
for (const line of readFileSync(resolve(project, 'PBS/moves.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const section = line.match(/^\[([^\]]+)\]$/);
  if (section) currentMove = section[1];
  if (currentMove && line.startsWith('Description = ')) pbsMoves.set(currentMove, line.slice(14));
}
let itemMove = '';
let itemDescription = '';
const flushItem = () => {
  const moveDescription = pbsMoves.get(itemMove);
  const translated = moveDescription && known.get(moveDescription);
  if (itemDescription && translated) known.set(itemDescription, translated);
};
for (const line of readFileSync(resolve(project, 'PBS/items.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  if (/^\[[^\]]+\]$/.test(line)) { flushItem(); itemMove = ''; itemDescription = ''; }
  if (line.startsWith('Move = ')) itemMove = line.slice(7);
  if (line.startsWith('Description = ')) itemDescription = line.slice(14);
}
flushItem();
const path = resolve(project, 'Text_deutsch_core/ITEM_DESCRIPTIONS.txt');
const lines = readFileSync(path, 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[ITEM_DESCRIPTIONS]');
let changed = 0;
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) {
  const translated = known.get(lines[i]);
  if (translated && lines[i + 1] === lines[i]) { lines[i + 1] = translated; changed++; }
}
writeFileSync(path, `\uFEFF${lines.join('\n')}`, 'utf8');
console.log(`ITEM_DESCRIPTIONS.txt: ${changed} bereits geprüfte Attacken-/Fähigkeitstexte für TMs wiederverwendet`);
