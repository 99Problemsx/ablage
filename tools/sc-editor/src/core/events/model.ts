/**
 * Typed view over the stored RPG::Event Marshal tree.
 *
 * The tree itself stays authoritative — see `SCEvent.raw`. This module only
 * *reads* it into shapes the UI can render, and offers narrow writers for the
 * fields the editor actually edits. Anything unmodelled is untouched and still
 * round-trips, which is the only safe way to open 557 hand-authored events that
 * span 60+ plugins.
 */

import type { JNode, JValue } from '../marshal/json';

// ---------------------------------------------------------------- tree access

/** Reads an ivar out of an encoded `{$:'obj'}` node. */
export function ivar(node: JValue | undefined, name: string): JValue | undefined {
  if (!node || typeof node !== 'object' || Array.isArray(node)) return undefined;
  if ((node as JNode).$ !== 'obj') return undefined;
  const key = name.startsWith('@') ? name : `@${name}`;
  const entries = (node as JNode).iv as Array<[string, JValue]> | undefined;
  return entries?.find(([n]) => n === key)?.[1];
}

export function asInt(v: JValue | undefined, fallback = 0): number {
  return typeof v === 'number' ? v : fallback;
}

export function asBool(v: JValue | undefined, fallback = false): boolean {
  return typeof v === 'boolean' ? v : fallback;
}

/** Encoded strings are `{$:'str', v}`; anything else reads as empty. */
export function asStr(v: JValue | undefined, fallback = ''): string {
  if (v && typeof v === 'object' && !Array.isArray(v) && (v as JNode).$ === 'str') {
    return (v as JNode).v as string;
  }
  return fallback;
}

/** Encoded arrays are `{$:'arr', v}`. */
export function asArray(v: JValue | undefined): JValue[] {
  if (v && typeof v === 'object' && !Array.isArray(v) && (v as JNode).$ === 'arr') {
    return (v as JNode).v as JValue[];
  }
  return [];
}

// -------------------------------------------------------------------- model

export interface EventCondition {
  switch1Valid: boolean;
  switch1Id: number;
  switch2Valid: boolean;
  switch2Id: number;
  variableValid: boolean;
  variableId: number;
  variableValue: number;
  selfSwitchValid: boolean;
  selfSwitchCh: string;
}

export interface EventGraphic {
  tileId: number;
  characterName: string;
  characterHue: number;
  direction: number;
  pattern: number;
  opacity: number;
  blendType: number;
}

/** RMXP trigger values, in their stored order. */
export const TRIGGERS = [
  'Action Button',
  'Player Touch',
  'Event Touch',
  'Autorun',
  'Parallel Process',
] as const;

export const MOVE_TYPES = ['Fixed', 'Random', 'Approach', 'Custom'] as const;

export interface EventCommand {
  code: number;
  indent: number;
  parameters: JValue[];
}

export interface EventPage {
  condition: EventCondition;
  graphic: EventGraphic;
  trigger: number;
  moveType: number;
  moveSpeed: number;
  moveFrequency: number;
  walkAnime: boolean;
  stepAnime: boolean;
  directionFix: boolean;
  through: boolean;
  alwaysOnTop: boolean;
  commands: EventCommand[];
}

export interface DecodedEvent {
  id: number;
  name: string;
  x: number;
  y: number;
  pages: EventPage[];
}

function decodeCondition(node: JValue | undefined): EventCondition {
  return {
    switch1Valid: asBool(ivar(node, 'switch1_valid')),
    switch1Id: asInt(ivar(node, 'switch1_id')),
    switch2Valid: asBool(ivar(node, 'switch2_valid')),
    switch2Id: asInt(ivar(node, 'switch2_id')),
    variableValid: asBool(ivar(node, 'variable_valid')),
    variableId: asInt(ivar(node, 'variable_id')),
    variableValue: asInt(ivar(node, 'variable_value')),
    selfSwitchValid: asBool(ivar(node, 'self_switch_valid')),
    selfSwitchCh: asStr(ivar(node, 'self_switch_ch'), 'A'),
  };
}

function decodeGraphic(node: JValue | undefined): EventGraphic {
  return {
    tileId: asInt(ivar(node, 'tile_id')),
    characterName: asStr(ivar(node, 'character_name')),
    characterHue: asInt(ivar(node, 'character_hue')),
    direction: asInt(ivar(node, 'direction'), 2),
    pattern: asInt(ivar(node, 'pattern')),
    opacity: asInt(ivar(node, 'opacity'), 255),
    blendType: asInt(ivar(node, 'blend_type')),
  };
}

function decodeCommands(node: JValue | undefined): EventCommand[] {
  return asArray(node).map((entry) => ({
    code: asInt(ivar(entry, 'code')),
    indent: asInt(ivar(entry, 'indent')),
    parameters: asArray(ivar(entry, 'parameters')),
  }));
}

export function decodeEvent(raw: unknown): DecodedEvent | null {
  const node = raw as JValue;
  if (!node || typeof node !== 'object' || Array.isArray(node)) return null;

  return {
    id: asInt(ivar(node, 'id')),
    name: asStr(ivar(node, 'name')),
    x: asInt(ivar(node, 'x')),
    y: asInt(ivar(node, 'y')),
    pages: asArray(ivar(node, 'pages')).map((page) => ({
      condition: decodeCondition(ivar(page, 'condition')),
      graphic: decodeGraphic(ivar(page, 'graphic')),
      trigger: asInt(ivar(page, 'trigger')),
      moveType: asInt(ivar(page, 'move_type')),
      moveSpeed: asInt(ivar(page, 'move_speed'), 3),
      moveFrequency: asInt(ivar(page, 'move_frequency'), 3),
      walkAnime: asBool(ivar(page, 'walk_anime'), true),
      stepAnime: asBool(ivar(page, 'step_anime')),
      directionFix: asBool(ivar(page, 'direction_fix')),
      through: asBool(ivar(page, 'through')),
      alwaysOnTop: asBool(ivar(page, 'always_on_top')),
      commands: decodeCommands(ivar(page, 'list')),
    })),
  };
}

// ---------------------------------------------------------------- references

/**
 * Resolver for Marshal object backreferences.
 *
 * `marshalToJson` emits `{$:'ref', i}` wherever an object recurs, and RPG Maker
 * leans on this hard: a door animation's eight identical move steps are one
 * object referenced eight times. Reading a ref without resolving it yields
 * nothing, so anything walking an event tree needs this.
 */
export type Deref = (v: JValue | undefined) => JValue | undefined;

/**
 * Rebuilds the encoder's id -> node table by replaying its traversal order.
 *
 * The encoder assigns an id when it *first* reaches an object, before descending
 * into that object's children, so a pre-order walk in the same child order
 * reproduces the numbering exactly.
 */
export function refTable(root: JValue): Map<number, JValue> {
  const table = new Map<number, JValue>();
  let counter = 0;

  const walk = (v: JValue | undefined): void => {
    if (!v || typeof v !== 'object' || Array.isArray(v)) return;
    const node = v as JNode;
    if (node.$ === 'sym' || node.$ === 'ref') return;

    table.set(counter++, node);

    switch (node.$) {
      case 'arr':
        for (const item of (node.v as JValue[]) ?? []) walk(item);
        break;
      case 'hash':
        for (const [k, val] of (node.v as Array<[JValue, JValue]>) ?? []) {
          walk(k);
          walk(val);
        }
        if (node.d !== undefined) walk(node.d as JValue);
        break;
      case 'obj':
        for (const [, val] of (node.iv as Array<[string, JValue]>) ?? []) walk(val);
        break;
      default:
        break;
    }
    // Strings, arrays and hashes may carry extra ivars, encoded after the body.
    if (node.$ !== 'obj' && Array.isArray(node.iv)) {
      for (const [, val] of node.iv as Array<[string, JValue]>) walk(val);
    }
  };

  walk(root);
  return table;
}

/** Builds a `Deref` over one event tree. */
export function makeDeref(root: JValue): Deref {
  const table = refTable(root);
  return (v) => {
    if (v && typeof v === 'object' && !Array.isArray(v) && (v as JNode).$ === 'ref') {
      return table.get((v as JNode).i as number);
    }
    return v;
  };
}

// ------------------------------------------------------------------ writers

/**
 * Sets an ivar on an encoded object node, in place.
 *
 * Editing through the original tree rather than re-serialising a typed model is
 * what keeps unmodelled fields intact.
 */
export function setIvar(node: JValue | undefined, name: string, value: JValue): boolean {
  if (!node || typeof node !== 'object' || Array.isArray(node)) return false;
  if ((node as JNode).$ !== 'obj') return false;
  const key = name.startsWith('@') ? name : `@${name}`;
  const entries = (node as JNode).iv as Array<[string, JValue]> | undefined;
  if (!entries) return false;
  const found = entries.find(([n]) => n === key);
  if (found) found[1] = value;
  else entries.push([key, value]);
  return true;
}

/** Wraps a JS string as an encoded Ruby String node. */
export function strNode(text: string): JNode {
  return { $: 'str', v: text, e: 'UTF-8' };
}

/** The page node inside a raw event tree, for in-place edits. */
export function pageNode(raw: unknown, index: number): JValue | undefined {
  return asArray(ivar(raw as JValue, 'pages'))[index];
}

// ------------------------------------------------------------ command editing

/**
 * The live command array behind a page's `@list` ivar.
 *
 * `asArray` unwraps to the same array instance the tree holds (JS arrays are
 * objects, so `.v` is not copied), so splicing the result mutates the page in
 * place — which is what lets Insert/Delete work without rebuilding the tree.
 */
export function commandListArray(page: JValue | undefined): JValue[] | null {
  const list = ivar(page, 'list');
  if (!list || typeof list !== 'object' || Array.isArray(list) || (list as JNode).$ !== 'arr') {
    return null;
  }
  return (list as JNode).v as JValue[];
}

/** A new, empty RPG::EventCommand node — RMXP's code 0 is a harmless no-op. */
export function blankCommandNode(indent: number): JNode {
  return {
    $: 'obj',
    c: 'RPG::EventCommand',
    iv: [
      ['@code', 0],
      ['@indent', indent],
      ['@parameters', { $: 'arr', v: [] }],
    ],
  };
}

function arrNode(values: JValue[]): JNode { return { $: 'arr', v: values }; }
function objNode(c: string, iv: Array<[string, JValue]>): JNode { return { $: 'obj', c, iv }; }

/** Creates a complete, valid one-page RPG::Event for map-context creation. */
export function newEventRaw(id: number, x: number, y: number, name = `EV${String(id).padStart(3, '0')}`): JNode {
  const condition = objNode('RPG::Event::Page::Condition', [
    ['@switch1_valid', false], ['@switch2_valid', false], ['@variable_valid', false],
    ['@self_switch_valid', false], ['@switch1_id', 1], ['@switch2_id', 1],
    ['@variable_id', 1], ['@variable_value', 0], ['@self_switch_ch', strNode('A')],
  ]);
  const graphic = objNode('RPG::Event::Page::Graphic', [
    ['@tile_id', 0], ['@character_name', strNode('')], ['@character_hue', 0],
    ['@direction', 2], ['@pattern', 0], ['@opacity', 255], ['@blend_type', 0],
  ]);
  const route = objNode('RPG::MoveRoute', [
    ['@repeat', true], ['@skippable', false],
    ['@list', arrNode([objNode('RPG::MoveCommand', [['@code', 0], ['@parameters', arrNode([])]])])],
  ]);
  const page = objNode('RPG::Event::Page', [
    ['@condition', condition], ['@graphic', graphic], ['@move_type', 0],
    ['@move_speed', 3], ['@move_frequency', 3], ['@move_route', route],
    ['@walk_anime', true], ['@step_anime', false], ['@direction_fix', false],
    ['@through', false], ['@always_on_top', false], ['@trigger', 0],
    ['@list', arrNode([blankCommandNode(0)])],
  ]);
  return objNode('RPG::Event', [
    ['@id', id], ['@name', strNode(name)], ['@x', x], ['@y', y], ['@pages', arrNode([page])],
  ]);
}

export function commandCode(node: JValue | undefined): number {
  return asInt(ivar(node, 'code'), -1);
}

/** Last physical index belonging to a displayed command and its continuations. */
export function commandBlockEnd(commands: JValue[], start: number): number {
  const code = commandCode(commands[start]);
  const structuralEnd = code === 102 ? 404 : code === 111 ? 412 : code === 112 ? 413 : -1;
  if (structuralEnd !== -1) {
    const indent = asInt(ivar(commands[start], 'indent'));
    for (let i = start + 1; i < commands.length; i++) {
      if (commandCode(commands[i]) === structuralEnd && asInt(ivar(commands[i], 'indent')) === indent) return i;
    }
  }
  const continuation = code === 101 ? 401 : code === 108 ? 408 : code === 355 ? 655 : code === 209 ? 509 : -1;
  let end = start;
  while (continuation !== -1 && commandCode(commands[end + 1]) === continuation) end++;
  // RMXP presents this as a checkbox inside Set Move Route even though it is
  // physically stored as the following event command.
  if (code === 209 && commandCode(commands[end + 1]) === 210) end++;
  return end;
}

/** Resolves structural marker rows back to the command which owns them. */
export function commandBlockStart(commands: JValue[], index: number): number {
  const code = commandCode(commands[index]);
  const owner = [402, 403, 404].includes(code) ? 102 : [411, 412].includes(code) ? 111 : code === 413 ? 112 : -1;
  if (owner === -1) return index;
  const indent = asInt(ivar(commands[index], 'indent'));
  for (let i = index - 1; i >= 0; i--) {
    if (commandCode(commands[i]) === owner && asInt(ivar(commands[i], 'indent')) === indent) return i;
  }
  return index;
}
