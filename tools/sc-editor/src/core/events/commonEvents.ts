/**
 * Common events — the shared command lists in Data/CommonEvents.rxdata.
 *
 * A common event is a flat `@list` of RPG::EventCommand plus four scalars. That
 * makes it structurally simpler than a map event, which nests the same lists
 * inside pages, so the command tree is carried verbatim as JSON exactly as map
 * events are and only the scalars are modelled.
 */

import { marshalToJson, jsonToMarshal, type JValue } from '../marshal/json';
import { RObject, RString, type RValue } from '../marshal/types';

/** How the engine runs a common event. */
export const COMMON_EVENT_TRIGGERS = ['None', 'Autorun', 'Parallel'] as const;
export type CommonEventTrigger = 0 | 1 | 2;

export interface SCCommonEvent {
  id: number;
  name: string;
  /** 0 none, 1 autorun, 2 parallel. */
  trigger: number;
  /** Switch that gates an autorun or parallel event; 0 when unused. */
  switchId: number;
  /** Marshal tree of RPG::CommonEvent, as JSON. Round-trips exactly. */
  raw: unknown;
  /** Command count, so the list can show it without decoding the tree. */
  commandCount: number;
}

/**
 * Writes a string ivar without inventing an encoding.
 *
 * RPG Maker was not consistent about this: tileset names in this project carry
 * an `:E` UTF-8 ivar and common event names do not. Reusing the existing string
 * when the text has not changed sidesteps the guess, and matching its encoding
 * when it has keeps a rename from rewriting the whole entry.
 */
export function setRmxpString(target: RObject, name: string, text: string): void {
  const current = target.get(name);
  if (current instanceof RString) {
    if (current.value === text) return;
    target.set(name, new RString(new TextEncoder().encode(text), current.encoding));
    return;
  }
  target.set(name, new RString(new TextEncoder().encode(text)));
}

/** Reads Data/CommonEvents.rxdata into the editable shape. */
export function importCommonEvents(parsed: RValue): SCCommonEvent[] {
  if (!Array.isArray(parsed)) return [];
  const out: SCCommonEvent[] = [];
  for (const entry of parsed) {
    // Index 0 is nil, as in every RMXP id-indexed array.
    if (!(entry instanceof RObject)) continue;
    const list = entry.get('@list');
    out.push({
      id: entry.int('@id'),
      name: entry.str('@name'),
      trigger: entry.int('@trigger'),
      switchId: entry.int('@switch_id'),
      raw: marshalToJson(entry),
      commandCount: Array.isArray(list) ? list.length : 0,
    });
  }
  return out.sort((a, b) => a.id - b.id);
}

/**
 * Applies edited entries to the parsed array.
 *
 * Entries not mentioned are left exactly as they were, so saving one common
 * event does not rewrite the other nine.
 */
export function patchCommonEvents(parsed: RValue, entries: SCCommonEvent[]): RValue[] {
  const list: RValue[] = Array.isArray(parsed) ? [...parsed] : [null];
  if (list.length === 0) list.push(null);

  for (const entry of entries) {
    if (!Number.isInteger(entry.id) || entry.id < 1) continue;
    const decoded = jsonToMarshal(entry.raw as JValue);
    if (!(decoded instanceof RObject)) continue;

    // The form owns these four; everything else rides along in the raw tree.
    decoded.set('@id', entry.id);
    setRmxpString(decoded, '@name', entry.name);
    decoded.set('@trigger', entry.trigger);
    decoded.set('@switch_id', entry.switchId);

    while (list.length <= entry.id) list.push(null);
    list[entry.id] = decoded;
  }
  return list;
}

/** Lowest unused id, for adding a common event. */
export function nextCommonEventId(used: Iterable<number>): number {
  const taken = new Set(used);
  let id = 1;
  while (taken.has(id)) id++;
  return id;
}

/** A blank common event, shaped as RPG Maker XP creates one. */
export function blankCommonEvent(id: number, name: string): SCCommonEvent {
  const raw = new RObject('RPG::CommonEvent');
  raw.set('@id', id);
  raw.set('@name', new RString(new TextEncoder().encode(name)));
  raw.set('@trigger', 0);
  raw.set('@switch_id', 1);
  // RMXP always terminates a command list with a code-0 command; an empty array
  // makes the interpreter run off the end.
  const terminator = new RObject('RPG::EventCommand');
  terminator.set('@code', 0);
  terminator.set('@indent', 0);
  terminator.set('@parameters', []);
  raw.set('@list', [terminator]);

  return {
    id,
    name,
    trigger: 0,
    switchId: 1,
    raw: marshalToJson(raw),
    commandCount: 1,
  };
}
