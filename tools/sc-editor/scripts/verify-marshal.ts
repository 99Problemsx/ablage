/**
 * Round-trips every .rxdata file in the project through the Marshal codec and
 * reports any byte-level differences.
 *
 * Byte-identical output is the bar we hold ourselves to: it proves we are not
 * silently dropping ivars, mis-ordering symbol backreferences, or corrupting
 * Table payloads before we ever let the editor write to the user's project.
 */

import { readdirSync, readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { RObject, RString, RTable, type RValue } from '../src/core/marshal/types.ts';

const PROJECT_ROOT = resolve(import.meta.dirname, '../../..');
const DATA_DIR = join(PROJECT_ROOT, 'Data');

function firstDiff(a: Uint8Array, b: Uint8Array): number {
  const n = Math.min(a.length, b.length);
  for (let i = 0; i < n; i++) if (a[i] !== b[i]) return i;
  return a.length === b.length ? -1 : n;
}

function hexWindow(buf: Uint8Array, at: number, radius = 16): string {
  const start = Math.max(0, at - radius);
  const end = Math.min(buf.length, at + radius);
  return [...buf.subarray(start, end)]
    .map((byte, i) => {
      const hex = byte.toString(16).padStart(2, '0');
      return start + i === at ? `[${hex}]` : hex;
    })
    .join(' ');
}

let pass = 0;
let fail = 0;
const failures: string[] = [];

const files = readdirSync(DATA_DIR)
  .filter((f) => f.endsWith('.rxdata'))
  .sort();

for (const file of files) {
  const path = join(DATA_DIR, file);
  const original = new Uint8Array(readFileSync(path));
  try {
    const parsed = MarshalReader.parse(original);
    const written = MarshalWriter.dump(parsed);
    const diff = firstDiff(original, written);
    if (diff === -1) {
      pass++;
    } else {
      fail++;
      failures.push(
        `${file}: diverges at byte ${diff} (orig ${original.length}B, ours ${written.length}B)\n` +
          `    orig: ${hexWindow(original, diff)}\n` +
          `    ours: ${hexWindow(written, diff)}`,
      );
    }
  } catch (err) {
    fail++;
    failures.push(`${file}: ${(err as Error).message}`);
  }
}

console.log(`\nRound-trip: ${pass} identical, ${fail} failed, of ${files.length} files.`);
if (failures.length) {
  console.log('\nFailures:');
  for (const f of failures.slice(0, 12)) console.log(`  ${f}`);
  if (failures.length > 12) console.log(`  ... and ${failures.length - 12} more`);
}

// Sanity-check that we are reading meaningful structure, not just shuffling bytes.
const map = MarshalReader.parse(new Uint8Array(readFileSync(join(DATA_DIR, 'Map002.rxdata'))));
if (!(map instanceof RObject)) throw new Error('Map002 did not decode to an object');
const data = map.get('@data');
const events = map.get('@events');
console.log('\nMap002 structure:');
console.log(`  class      ${map.className}`);
console.log(`  tileset_id ${map.int('@tileset_id')}`);
console.log(`  size       ${map.int('@width')}x${map.int('@height')}`);
if (data instanceof RTable) {
  console.log(`  data       Table(${data.xsize}, ${data.ysize}, ${data.zsize}) dim=${data.dim}`);
}
console.log(`  events     ${events && typeof events === 'object' && 'size' in events ? (events as { size: number }).size : '?'}`);
console.log(`  ivars      ${[...map.ivars.keys()].join(', ')}`);

// Tilesets tell us the tileset<->graphic mapping the editor's palette needs.
const tilesets = MarshalReader.parse(
  new Uint8Array(readFileSync(join(DATA_DIR, 'Tilesets.rxdata'))),
) as RValue[];
const named = (tilesets as RValue[])
  .filter((t): t is RObject => t instanceof RObject)
  .slice(0, 5)
  .map((t) => {
    const autotiles = t.get('@autotile_names');
    const count = Array.isArray(autotiles)
      ? autotiles.filter((a) => a instanceof RString && a.value.length > 0).length
      : 0;
    return `#${t.int('@id')} ${t.str('@name')} (graphic="${t.str('@tileset_name')}", ${count} autotiles)`;
  });
console.log(`\nTilesets: ${tilesets.length} entries`);
for (const n of named) console.log(`  ${n}`);

process.exit(fail === 0 ? 0 : 1);
