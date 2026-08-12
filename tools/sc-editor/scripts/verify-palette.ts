/**
 * Confirms every "Event Commands" page entry builds a node that survives a
 * full Marshal round-trip and decodes back to a sane command line. Since the
 * popover can only really be exercised by clicking in a running window, this
 * is what actually proves the parameter shapes are correct RGSS structures.
 */

import { readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { COMMAND_PAGES, buildCommandNode } from '../src/core/events/palette.ts';
import { decodeEvent, commandListArray, pageNode } from '../src/core/events/model.ts';
import { formatCommands } from '../src/core/events/commands.ts';
import { jsonToMarshal, marshalToJson, type JValue } from '../src/core/marshal/json.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import type { SCMap } from '../src/core/scmap/format.ts';

const ROOT = resolve(import.meta.dirname, '../../..');
const map = JSON.parse(
  readFileSync(join(ROOT, 'Data', 'SCMaps', 'Map002.json'), 'utf8'),
) as SCMap;
const event = map.events.find((e) => e.name === 'Home door');
if (!event) throw new Error('Fixture event not found');

let total = 0;
let failed = 0;

for (const cat of COMMAND_PAGES) {
  for (const entry of cat.entries) {
    total++;
    // Fresh copy of the event tree per entry, so failures don't cascade.
    const raw = JSON.parse(JSON.stringify(event.raw)) as JValue;
    const page0 = pageNode(raw, 0);
    const commands = commandListArray(page0);
    if (!commands) {
      console.log(`FAIL ${cat.name}/${entry.label}: no command array`);
      failed++;
      continue;
    }
    const node = buildCommandNode(entry, 0, { currentMapId: map.id });
    commands.unshift(node);

    try {
      const bytes = MarshalWriter.dump(jsonToMarshal(raw));
      const reJson = marshalToJson(MarshalReader.parse(bytes));
      const decoded = decodeEvent(reJson)!;
      const line = formatCommands(decoded.pages[0].commands).find((l) => l.index === 0);
      const ok = decoded.pages[0].commands[0].code === entry.code;
      console.log(`${ok ? 'ok  ' : 'FAIL'} ${cat.name.padEnd(11)} ${entry.label.padEnd(24)} -> ${line?.text}`);
      if (!ok) failed++;
    } catch (err) {
      console.log(`FAIL ${cat.name}/${entry.label}: ${(err as Error).message}`);
      failed++;
    }
  }
}

console.log(`\n${total - failed}/${total} palette entries round-trip cleanly.`);
if (failed > 0) process.exit(1);
