import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';

const project = resolve(import.meta.dirname, '../../..');
const output = process.argv[2];
if (!output) throw new Error('Usage: tsx scripts/report-open-pokedex.ts <output>');
const lines = readFileSync(resolve(project, 'Text_deutsch_core/POKEDEX_ENTRIES.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/);
const section = lines.indexOf('[POKEDEX_ENTRIES]');
const open = new Set<string>();
for (let i = section + 1; i > 0 && i + 1 < lines.length; i += 2) if (lines[i] === lines[i + 1]) open.add(lines[i]);

const names = new Map<string, string>(); let id = '';
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) id = match[1];
  if (id && line.startsWith('Name = ')) names.set(id, line.slice(7));
}
const rows: string[] = []; let base = ''; let form = ''; let dex = '';
function flush(): void { if (dex && open.has(dex)) rows.push(`${names.get(base) ?? base} | ${form || 'Base'} | ${dex}`); }
for (const line of readFileSync(resolve(project, 'PBS/pokemon_forms.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+),\d+\]$/); if (match) { flush(); base = match[1]; form = ''; dex = ''; }
  if (line.startsWith('FormName = ')) form = line.slice(11);
  if (line.startsWith('Pokedex = ')) dex = line.slice(10);
}
flush();
base = ''; dex = '';
function flushBase(): void { if (dex && open.has(dex)) rows.push(`${names.get(base) ?? base} | Base | ${dex}`); }
for (const line of readFileSync(resolve(project, 'PBS/pokemon.txt'), 'utf8').replace(/^\uFEFF/, '').split(/\r?\n/)) {
  const match = line.match(/^\[([^,\]]+)\]$/); if (match) { flushBase(); base = match[1]; dex = ''; }
  if (line.startsWith('Pokedex = ')) dex = line.slice(10);
}
flushBase();
writeFileSync(output, rows.join('\n') + '\n');
console.log(`${open.size} offene Texte, ${rows.length} Form-Zuordnungen.`);
