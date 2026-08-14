/**
 * Verifies the SCMap -> .rxdata export against the project's real maps.
 *
 * The bar is byte-identity: take Data/SCMaps/MapNNN.json (an untouched import of
 * Data/MapNNN.rxdata), export it, and require the result to equal the original
 * file exactly. Anything less means the first save the author performs silently
 * rewrites parts of a map they did not edit — and .rxdata is binary, so nobody
 * would notice until the game misbehaved.
 *
 * Also checks that MapInfos survives a no-op patch, since every map operation
 * rewrites that file.
 */

import { existsSync, readdirSync, readFileSync } from 'node:fs';
import { join, resolve } from 'node:path';
import { MarshalReader } from '../src/core/marshal/reader.ts';
import { MarshalWriter } from '../src/core/marshal/writer.ts';
import { marshalToJson } from '../src/core/marshal/json.ts';
import { RHash, RObject, RString, RTable, type RValue } from '../src/core/marshal/types.ts';
import { mapToRmxp, patchMapInfos, type MapInfoPatch } from '../src/core/export/rxdata.ts';
import { blankMap } from '../src/core/scmap/create.ts';
import {
  parseMapConnections,
  serialiseMapConnections,
  stripBom,
} from '../src/core/pbs/parse.ts';
import type { SCMap } from '../src/core/scmap/format.ts';

const PROJECT_ROOT = resolve(import.meta.dirname, '../../..');
const DATA_DIR = join(PROJECT_ROOT, 'Data');
const SCMAPS_DIR = join(DATA_DIR, 'SCMaps');

function firstDiff(a: Uint8Array, b: Uint8Array): number {
  const n = Math.min(a.length, b.length);
  for (let i = 0; i < n; i++) if (a[i] !== b[i]) return i;
  return a.length === b.length ? -1 : n;
}

function hexWindow(buf: Uint8Array, at: number, radius = 14): string {
  const start = Math.max(0, at - radius);
  const end = Math.min(buf.length, at + radius);
  return [...buf.subarray(start, end)]
    .map((byte, i) => {
      const hex = byte.toString(16).padStart(2, '0');
      return start + i === at ? `[${hex}]` : hex;
    })
    .join(' ');
}

/**
 * True when the JSON's event trees still match the .rxdata's.
 *
 * A map edited in the editor legitimately no longer matches its .rxdata — that
 * is the entire point of saving — so a byte difference is only a bug when the
 * two sides are supposed to be saying the same thing.
 */
function eventsMatchOriginal(reference: RValue, map: SCMap): boolean {
  if (!(reference instanceof RHash)) return map.events.length === 0;
  if (reference.entries.length !== map.events.length) return false;
  for (const [key, value] of reference.entries) {
    const event = map.events.find((candidate) => candidate.id === key);
    if (!event) return false;
    if (JSON.stringify(marshalToJson(value)) !== JSON.stringify(event.raw)) return false;
  }
  return true;
}

let pass = 0;
let fail = 0;
let edited = 0;
const failures: string[] = [];
const editedMaps: string[] = [];
const warned = new Set<string>();

const files = readdirSync(SCMAPS_DIR)
  .filter((f) => /^Map\d+\.json$/.test(f))
  .sort();

for (const file of files) {
  const id = Number.parseInt(file.slice(3, -5), 10);
  const rxdataPath = join(DATA_DIR, `Map${String(id).padStart(3, '0')}.rxdata`);
  if (!existsSync(rxdataPath)) continue;

  const original = new Uint8Array(readFileSync(rxdataPath));
  try {
    const map = JSON.parse(readFileSync(join(SCMAPS_DIR, file), 'utf8')) as SCMap;
    // Parsed twice on purpose: `mapToRmxp` patches the template in place, so the
    // "what did the file originally say" comparison needs its own copy.
    const template = MarshalReader.parse(original);
    const reference = MarshalReader.parse(original);
    const { map: exported, warnings } = mapToRmxp(map, template);
    for (const warning of warnings) warned.add(`Map${id}: ${warning}`);

    const written = MarshalWriter.dump(exported);
    const diff = firstDiff(original, written);
    if (diff === -1) {
      pass++;
    } else if (
      reference instanceof RObject &&
      !eventsMatchOriginal(reference.get('@events'), map)
    ) {
      edited++;
      editedMaps.push(`Map${id}: JSON events differ from the .rxdata, so a differing export is correct.`);
    } else {
      fail++;
      failures.push(
        `Map${id}: diverges at byte ${diff} (orig ${original.length}B, ours ${written.length}B)\n` +
          `    orig: ${hexWindow(original, diff)}\n` +
          `    ours: ${hexWindow(written, diff)}`,
      );
    }
  } catch (err) {
    fail++;
    failures.push(`Map${id}: ${(err as Error).message}`);
  }
}

console.log(
  `\nMap export: ${pass} byte-identical, ${edited} already edited in the editor, ${fail} failed, of ${files.length} maps.`,
);
for (const line of editedMaps) console.log(`  ${line}`);
if (failures.length) {
  console.log('\nFailures:');
  for (const f of failures.slice(0, 10)) console.log(`  ${f}`);
  if (failures.length > 10) console.log(`  ... and ${failures.length - 10} more`);
}
if (warned.size) {
  console.log('\nConversion warnings (expected where a map uses features .rxdata lacks):');
  for (const w of [...warned].slice(0, 10)) console.log(`  ${w}`);
}

// ------------------------------------------------------------------ MapInfos

const infosPath = join(DATA_DIR, 'MapInfos.rxdata');
const infosOriginal = new Uint8Array(readFileSync(infosPath));
const parsedInfos = MarshalReader.parse(infosOriginal);

// A patch that restates what is already there must produce the original file.
const restate: MapInfoPatch[] = [];
if (parsedInfos instanceof RHash) {
  for (const [key, value] of parsedInfos.entries) {
    if (typeof key !== 'number' || !(value instanceof RObject)) continue;
    restate.push({
      id: key,
      name: value.get('@name') instanceof RString ? (value.get('@name') as RString).value : '',
      parentId: value.int('@parent_id'),
      order: value.int('@order'),
    });
  }
}

const rewritten = MarshalWriter.dump(patchMapInfos(parsedInfos, { upsert: restate }));
const infosDiff = firstDiff(infosOriginal, rewritten);
if (infosDiff === -1) {
  console.log(`\nMapInfos: no-op patch of ${restate.length} entries is byte-identical.`);
} else {
  fail++;
  console.log(
    `\nMapInfos: no-op patch diverges at byte ${infosDiff} (orig ${infosOriginal.length}B, ours ${rewritten.length}B)\n` +
      `    orig: ${hexWindow(infosOriginal, infosDiff)}\n` +
      `    ours: ${hexWindow(rewritten, infosDiff)}`,
  );
}

// Adding a map must append one entry and leave every existing one alone.
const grown = patchMapInfos(MarshalReader.parse(infosOriginal), {
  upsert: [{ id: 999, name: 'Verification Map', parentId: 0, order: 999 }],
});
const growProblems: string[] = [];
if (grown.entries.length !== restate.length + 1) {
  growProblems.push(`entry count went ${restate.length} -> ${grown.entries.length}`);
}
const added = MarshalReader.parse(MarshalWriter.dump(grown));
const readBack = added instanceof RHash ? added.get(999) : null;
if (!(readBack instanceof RObject) || readBack.className !== 'RPG::MapInfo') {
  growProblems.push('the new entry did not survive a dump/parse cycle');
} else if (
  !(readBack.get('@name') instanceof RString) ||
  (readBack.get('@name') as RString).value !== 'Verification Map'
) {
  growProblems.push('the new entry came back with the wrong name');
} else if (!readBack.has('@expanded') || !readBack.has('@scroll_x') || !readBack.has('@scroll_y')) {
  growProblems.push('the new entry is missing the ivars RPG Maker XP expects');
}
if (growProblems.length === 0) {
  console.log('MapInfos: adding a map appends exactly one well-formed entry.');
} else {
  fail++;
  console.log(`MapInfos: ${growProblems.join('; ')}`);
}

// ------------------------------------------------------------- a brand-new map

/**
 * A created map has no template to patch, so this is the only path that builds
 * an RPG::Map from nothing. If it is malformed the game does not fail politely —
 * it fails on the loading screen.
 */
const fresh = blankMap({
  id: 999,
  name: 'Verification Map',
  width: 20,
  height: 15,
  tilesetId: 1,
  parentId: 0,
  order: 999,
});
const freshBytes = MarshalWriter.dump(mapToRmxp(fresh).map);
const reloaded = MarshalReader.parse(freshBytes);
const freshProblems: string[] = [];
if (!(reloaded instanceof RObject) || reloaded.className !== 'RPG::Map') {
  freshProblems.push('did not decode back to an RPG::Map');
} else {
  const data = reloaded.get('@data');
  if (reloaded.int('@width') !== 20 || reloaded.int('@height') !== 15) {
    freshProblems.push(`size came back as ${reloaded.int('@width')}x${reloaded.int('@height')}`);
  }
  if (!(data instanceof RTable) || data.xsize !== 20 || data.ysize !== 15 || data.zsize !== 3) {
    freshProblems.push('@data is not a Table(20, 15, 3)');
  }
  if (!(reloaded.get('@events') instanceof RHash)) freshProblems.push('@events is not a Hash');
  if (!(reloaded.get('@bgm') instanceof RObject)) freshProblems.push('@bgm is not an AudioFile');
  for (const ivar of ['@tileset_id', '@autoplay_bgm', '@autoplay_bgs', '@encounter_list', '@encounter_step']) {
    if (!reloaded.has(ivar)) freshProblems.push(`missing ${ivar}`);
  }
}
if (freshProblems.length === 0) {
  console.log(`\nNew map: builds a valid RPG::Map (${freshBytes.length}B) with no template.`);
} else {
  fail++;
  console.log(`\nNew map: ${freshProblems.join('; ')}`);
}

// ------------------------------------------------------------- connections file

/**
 * Deleting a map and editing seams both rewrite map_connections.txt wholesale.
 * The file is full of hand-written labels, so a lossy round-trip would quietly
 * strip the author's own notes from every entry they did not touch.
 */
const connectionsPath = join(PROJECT_ROOT, 'PBS', 'map_connections.txt');
if (existsSync(connectionsPath)) {
  const text = readFileSync(connectionsPath, 'utf8');
  const { connections, header } = parseMapConnections(text);
  const rebuilt = serialiseMapConnections(connections, header);
  const bare = stripBom(text);
  if (rebuilt === bare || rebuilt === `${bare}\n` || `${rebuilt}` === bare.replace(/\n*$/, '\n')) {
    console.log(`Connections: ${connections.length} entries round-trip unchanged.`);
  } else {
    fail++;
    const at = firstDiff(new TextEncoder().encode(bare), new TextEncoder().encode(rebuilt));
    console.log(
      `Connections: round-trip differs at byte ${at}\n` +
        `    orig: ${JSON.stringify(bare.slice(Math.max(0, at - 60), at + 60))}\n` +
        `    ours: ${JSON.stringify(rebuilt.slice(Math.max(0, at - 60), at + 60))}`,
    );
  }
}

process.exit(fail === 0 ? 0 : 1);
