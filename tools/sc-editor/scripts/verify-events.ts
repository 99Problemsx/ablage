/**
 * Decodes every event in the project and reports coverage.
 *
 * The interesting number is how many command codes fall through to the generic
 * `Code NNN` formatter: those are the ones the event editor will show as opaque,
 * so the list tells us exactly which Essentials/plugin commands are worth
 * teaching the formatter about next.
 */

import { readdirSync, readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { decodeEvent, makeDeref } from '../src/core/events/model.ts';
import { formatCommands, commandsToText } from '../src/core/events/commands.ts';
import type { SCMap } from '../src/core/scmap/format.ts';

const ROOT = resolve(import.meta.dirname, '../../..');
const DIR = join(ROOT, 'Data', 'SCMaps');

let events = 0;
let pages = 0;
let commands = 0;
const unknown = new Map<number, number>();
const kinds = new Map<string, number>();
let failed = 0;

for (const file of readdirSync(DIR).sort()) {
  if (!/^Map\d+\.json$/.test(file)) continue;
  const map = JSON.parse(readFileSync(join(DIR, file), 'utf8')) as SCMap;
  for (const event of map.events) {
    const deref = makeDeref(event.raw as never);
    const decoded = decodeEvent(event.raw);
    if (!decoded) {
      failed++;
      continue;
    }
    events++;
    for (const page of decoded.pages) {
      pages++;
      commands += page.commands.length;
      for (const line of formatCommands(page.commands, deref)) {
        kinds.set(line.kind, (kinds.get(line.kind) ?? 0) + 1);
        if (line.text.startsWith(`Code ${line.code}`)) {
          unknown.set(line.code, (unknown.get(line.code) ?? 0) + 1);
        }
      }
    }
  }
}

console.log(`Events decoded : ${events}  (${failed} failed)`);
console.log(`Pages          : ${pages}`);
console.log(`Commands       : ${commands}`);
console.log(`\nBy kind:`);
for (const [kind, n] of [...kinds].sort((a, b) => b[1] - a[1])) {
  console.log(`  ${kind.padEnd(10)} ${n}`);
}
console.log(`\nUnrecognised command codes:`);
if (unknown.size === 0) console.log('  none');
for (const [code, n] of [...unknown].sort((a, b) => b[1] - a[1])) {
  console.log(`  ${code}: ${n} occurrences`);
}

// Print one real event so the output is inspectable rather than just counted.
const sample = JSON.parse(readFileSync(join(DIR, 'Map002.json'), 'utf8')) as SCMap;
const first = sample.events.find((e) => (decodeEvent(e.raw)?.pages[0]?.commands.length ?? 0) > 3);
if (first) {
  const d = decodeEvent(first.raw)!;
  console.log(`\nSample — "${d.name}" at (${d.x}, ${d.y}), ${d.pages.length} page(s):`);
  d.pages.forEach((page, i) => {
    const c = page.condition;
    const conds = [
      c.switch1Valid && `switch ${c.switch1Id}`,
      c.switch2Valid && `switch ${c.switch2Id}`,
      c.variableValid && `var ${c.variableId} >= ${c.variableValue}`,
      c.selfSwitchValid && `self ${c.selfSwitchCh}`,
    ].filter(Boolean);
    console.log(`  Page ${i + 1}: trigger=${page.trigger} conditions=[${conds.join(', ')}]`);
    const body = commandsToText(page.commands, makeDeref(first.raw as never));
    for (const line of body.split('\n').slice(0, 10)) console.log(`    ${line}`);
  });
}
