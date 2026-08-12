/**
 * Exercises the command-editing primitives the Event dialog uses
 * (commandListArray, blankCommandNode, setIvar) against a real event, since
 * the dialog itself can only be verified by clicking in a running window.
 *
 * This is not a UI test — it proves the underlying tree mutations produce a
 * command list that decodes correctly afterwards, which is the part that
 * would actually corrupt data if it were wrong.
 */

import { readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import {
  blankCommandNode,
  commandListArray,
  decodeEvent,
  ivar,
  pageNode,
  setIvar,
} from '../src/core/events/model.ts';
import { formatCommands } from '../src/core/events/commands.ts';
import type { SCMap } from '../src/core/scmap/format.ts';
import { jsonToMarshal, marshalToJson, type JValue } from '../src/core/marshal/json.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { MarshalReader } from '../src/core/marshal/reader.ts';

const ROOT = resolve(import.meta.dirname, '../../..');
const map = JSON.parse(
  readFileSync(join(ROOT, 'Data', 'SCMaps', 'Map002.json'), 'utf8'),
) as SCMap;

const event = map.events.find((e) => e.name === 'Home door');
if (!event) throw new Error('Fixture event "Home door" not found in Map002');

const before = decodeEvent(event.raw)!;
const beforeCount = before.pages[0].commands.length;
console.log(`Before: ${beforeCount} commands on page 1`);

const page0 = pageNode(event.raw, 0);
const commands = commandListArray(page0);
if (!commands) throw new Error('commandListArray returned null');

// --- insert -----------------------------------------------------------
commands.splice(2, 0, blankCommandNode(1));
const afterInsert = decodeEvent(event.raw)!;
console.log(`After insert: ${afterInsert.pages[0].commands.length} commands (expected ${beforeCount + 1})`);
if (afterInsert.pages[0].commands.length !== beforeCount + 1) throw new Error('Insert count mismatch');
if (afterInsert.pages[0].commands[2].code !== 0) throw new Error('Inserted command is not code 0');
if (afterInsert.pages[0].commands[2].indent !== 1) throw new Error('Inserted command has wrong indent');

// --- edit via raw JSON round-trip (what applyRaw does) -----------------
const target = commands[2];
setIvar(target, 'code', 108);
setIvar(target, 'indent', 1);
setIvar(target, 'parameters', { $: 'arr', v: [{ $: 'str', v: 'Inserted by verify-command-edit', e: 'UTF-8' }] });
const afterEdit = decodeEvent(event.raw)!;
const editedLine = formatCommands(afterEdit.pages[0].commands).find((l) => l.index === 2);
console.log(`After edit: line 2 reads "${editedLine?.text}"`);
if (editedLine?.text !== 'Inserted by verify-command-edit') throw new Error('Raw edit did not take effect');

// --- delete -------------------------------------------------------------
commands.splice(2, 1);
const afterDelete = decodeEvent(event.raw)!;
console.log(`After delete: ${afterDelete.pages[0].commands.length} commands (expected ${beforeCount})`);
if (afterDelete.pages[0].commands.length !== beforeCount) throw new Error('Delete did not restore original count');

// --- confirm the rest of the event tree is untouched --------------------
const condition = ivar(page0, 'condition');
console.log(`Condition node still present: ${condition !== undefined}`);
if (condition === undefined) throw new Error('Editing commands corrupted the condition ivar');

// --- full Marshal round-trip of the edited tree --------------------------
// This is the path a real save-to-.rxdata would take, so it is the strongest
// guarantee that the edits above did not produce something the writer chokes
// on or the reader would decode differently.
commands.splice(2, 0, blankCommandNode(1));
setIvar(commands[2], 'code', 108);
setIvar(commands[2], 'parameters', {
  $: 'arr',
  v: [{ $: 'str', v: 'Round-trip check', e: 'UTF-8' }],
});

const marshalValue = jsonToMarshal(event.raw as JValue);
const bytes = MarshalWriter.dump(marshalValue);
const reparsed = MarshalReader.parse(bytes);
const reJson = marshalToJson(reparsed);
const reDecoded = decodeEvent(reJson);
const reLine = formatCommands(reDecoded!.pages[0].commands).find((l) => l.index === 2);
console.log(`\nMarshal round-trip: ${bytes.length} bytes, line 2 = "${reLine?.text}"`);
if (reLine?.text !== 'Round-trip check') throw new Error('Marshal round-trip lost the edit');

console.log('\nAll command-editing checks passed.');
