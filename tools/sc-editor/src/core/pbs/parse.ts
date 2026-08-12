/**
 * Parsers for the PBS text files the editor needs to read and write.
 *
 * These files are hand-edited by the project author and full of comments that
 * carry real information (`# Route 5 (41) - Route 4 Cycling Road (40)`). A
 * parser that discards them would quietly vandalise the project on first save,
 * so every parser here keeps enough structure to round-trip.
 */

import type { Edge, SCEncounterSlot, SCEncounterTable, SCMapMetadata } from '../scmap/format';

/** Strips the UTF-8 BOM that RPG Maker's tooling leaves on PBS files. */
export function stripBom(text: string): string {
  return text.charCodeAt(0) === 0xfeff ? text.slice(1) : text;
}

function splitLines(text: string): string[] {
  return stripBom(text).split(/\r?\n/);
}

// -------------------------------------------------------------- connections

export interface ParsedConnection {
  mapA: number;
  edgeA: Edge;
  offsetA: number;
  mapB: number;
  edgeB: Edge;
  offsetB: number;
  /** Comment lines that immediately preceded this entry. */
  comment: string[];
}

const EDGES = new Set(['N', 'S', 'E', 'W']);

function asEdge(token: string): Edge | null {
  const t = token.trim().toUpperCase();
  return EDGES.has(t) ? (t as Edge) : null;
}

/**
 * Parses PBS/map_connections.txt.
 *
 * Each entry is `mapA,edgeA,offsetA,mapB,edgeB,offsetB`. Essentials also accepts
 * the older `mapA,edgeA,offsetA,mapB,edgeB,offsetB` with whitespace padding, so
 * we split on commas and trim rather than matching a rigid pattern.
 */
export function parseMapConnections(text: string): {
  connections: ParsedConnection[];
  header: string[];
} {
  const lines = splitLines(text);
  const connections: ParsedConnection[] = [];
  const header: string[] = [];
  let pending: string[] = [];
  let seenAnyEntry = false;

  for (const line of lines) {
    const trimmed = line.trim();
    if (trimmed.length === 0) {
      if (!seenAnyEntry) header.push(line);
      continue;
    }
    if (trimmed.startsWith('#')) {
      // Comments before the first entry are the file header; after, they label
      // the entry that follows.
      if (seenAnyEntry || connections.length > 0) pending.push(line);
      else header.push(line);
      continue;
    }

    const parts = trimmed.split(',').map((p) => p.trim());
    if (parts.length < 6) {
      pending = [];
      continue;
    }
    const edgeA = asEdge(parts[1]);
    const edgeB = asEdge(parts[4]);
    const mapA = Number.parseInt(parts[0], 10);
    const mapB = Number.parseInt(parts[3], 10);
    if (edgeA === null || edgeB === null || Number.isNaN(mapA) || Number.isNaN(mapB)) {
      pending = [];
      continue;
    }
    connections.push({
      mapA,
      edgeA,
      offsetA: Number.parseInt(parts[2], 10) || 0,
      mapB,
      edgeB,
      offsetB: Number.parseInt(parts[5], 10) || 0,
      comment: pending,
    });
    pending = [];
    seenAnyEntry = true;
  }

  // The very first comment block is the header; anything the loop assigned to
  // `header` before the first entry stays there.
  return { connections, header };
}

export function serialiseMapConnections(
  connections: ParsedConnection[],
  header: string[],
): string {
  const out: string[] = [...header];
  for (const c of connections) {
    for (const line of c.comment) out.push(line);
    out.push(`${c.mapA},${c.edgeA},${c.offsetA},${c.mapB},${c.edgeB},${c.offsetB}`);
  }
  return `${out.join('\n')}\n`;
}

// ----------------------------------------------------------------- metadata

/**
 * Parses a PBS file shaped as `[section]` headers followed by `Key = value`
 * lines. Used by map_metadata.txt, metadata.txt, trainer_types.txt and friends.
 */
export interface PbsSection {
  /** The text inside the brackets, e.g. `001` or `PIDGEY`. */
  key: string;
  /** Trailing comment on the header line, e.g. `# Lappet Town`. */
  headerComment: string;
  /** Ordered key/value pairs, with the original key casing preserved. */
  fields: Array<{ key: string; value: string; comment: string }>;
  /** Comment lines preceding the section header. */
  leading: string[];
}

export function parseSectionedPbs(text: string): { sections: PbsSection[]; header: string[] } {
  const lines = splitLines(text);
  const sections: PbsSection[] = [];
  const header: string[] = [];
  let current: PbsSection | null = null;
  let pending: string[] = [];

  for (const line of lines) {
    const trimmed = line.trim();

    if (trimmed.startsWith('[') && trimmed.includes(']')) {
      const close = trimmed.indexOf(']');
      const key = trimmed.slice(1, close);
      const rest = trimmed.slice(close + 1).trim();
      current = { key, headerComment: rest, fields: [], leading: pending };
      pending = [];
      sections.push(current);
      continue;
    }

    if (trimmed.length === 0 || trimmed.startsWith('#')) {
      if (current === null) header.push(line);
      else pending.push(line);
      continue;
    }

    const eq = trimmed.indexOf('=');
    if (eq === -1 || current === null) {
      pending = [];
      continue;
    }
    // A `#` inside a value is legitimate (colour codes, text), so only treat a
    // trailing `#` as a comment when it follows whitespace.
    const rawValue = trimmed.slice(eq + 1);
    const commentAt = rawValue.search(/\s#/);
    const value = (commentAt === -1 ? rawValue : rawValue.slice(0, commentAt)).trim();
    const comment = commentAt === -1 ? '' : rawValue.slice(commentAt).trim();
    current.fields.push({ key: trimmed.slice(0, eq).trim(), value, comment });
    pending = [];
  }

  return { sections, header };
}

export function serialiseSectionedPbs(sections: PbsSection[], header: string[]): string {
  const out: string[] = [...header];
  for (const s of sections) {
    for (const line of s.leading) out.push(line);
    out.push(s.headerComment ? `[${s.key}]   ${s.headerComment}` : `[${s.key}]`);
    for (const f of s.fields) {
      out.push(f.comment ? `${f.key} = ${f.value}   ${f.comment}` : `${f.key} = ${f.value}`);
    }
  }
  return `${out.join('\n')}\n`;
}

// ------------------------------------------------- map_metadata -> SCMapMetadata

const BOOL_KEYS: Record<string, keyof SCMapMetadata> = {
  Outdoor: 'outdoor',
  ShowArea: 'showArea',
  BicycleUsable: 'bicycleUsable',
  BicycleAlways: 'bicycleAlways',
  DarkMap: 'darkMap',
  Dark: 'dark',
  SafariMap: 'safariMap',
  SnapEdges: 'snapEdges',
  FlyDestination: 'flyDestination',
};

const STRING_KEYS: Record<string, keyof SCMapMetadata> = {
  Name: 'name',
  BattleBack: 'battleBack',
  LocationSign: 'locationSign',
  WildBattleBGM: 'wildBattleBGM',
  TrainerBattleBGM: 'trainerBattleBGM',
  WildVictoryBGM: 'wildVictoryBGM',
  TrainerVictoryBGM: 'trainerVictoryBGM',
  WildCaptureME: 'wildCaptureME',
  MapWeather: 'mapWeather',
};

function numbers(value: string): number[] {
  return value
    .split(',')
    .map((p) => Number.parseInt(p.trim(), 10))
    .filter((n) => !Number.isNaN(n));
}

export function metadataFromSection(section: PbsSection): SCMapMetadata {
  const meta: SCMapMetadata = { extra: {} };
  // The bool/string tables map PBS keys onto known fields; this alias lets us
  // assign through them without widening SCMapMetadata with an index signature.
  const assign = meta as unknown as Record<string, unknown>;
  for (const { key, value } of section.fields) {
    const boolKey = BOOL_KEYS[key];
    if (boolKey) {
      assign[boolKey] = value.toLowerCase() === 'true';
      continue;
    }
    const strKey = STRING_KEYS[key];
    if (strKey) {
      assign[strKey] = value;
      continue;
    }
    switch (key) {
      case 'HealingSpot': {
        const n = numbers(value);
        if (n.length >= 3) meta.healingSpot = [n[0], n[1], n[2]];
        break;
      }
      case 'MapPosition': {
        const n = numbers(value);
        if (n.length >= 3) meta.mapPosition = [n[0], n[1], n[2]];
        break;
      }
      case 'MapSize': {
        const comma = value.indexOf(',');
        if (comma !== -1) {
          meta.mapSize = {
            width: Number.parseInt(value.slice(0, comma).trim(), 10) || 1,
            layout: value.slice(comma + 1).trim(),
          };
        }
        break;
      }
      case 'Dive':
        meta.dive = Number.parseInt(value, 10) || 0;
        break;
      case 'Weather': {
        const parts = value.split(',').map((p) => p.trim());
        meta.weatherPBS = [parts[0] ?? 'None', Number.parseInt(parts[1] ?? '0', 10) || 0];
        break;
      }
      default:
        // Anything Essentials or a plugin added that we do not model yet.
        meta.extra[key] = value;
    }
  }
  return meta;
}

// --------------------------------------------------------------- encounters

/**
 * Parses PBS/encounters.txt.
 *
 * Format is `[mapId]` or `[mapId,version]`, then encounter-type headers with an
 * optional step count, then indented `probability,SPECIES,minLevel[,maxLevel]`
 * rows. Levels may be a single value or a range.
 */
export function parseEncounters(text: string): Map<number, SCEncounterTable[]> {
  const lines = splitLines(text);
  const result = new Map<number, SCEncounterTable[]>();
  let mapId: number | null = null;
  let table: SCEncounterTable | null = null;

  for (const raw of lines) {
    const line = raw.split('#')[0].trimEnd();
    const trimmed = line.trim();
    if (trimmed.length === 0) continue;

    if (trimmed.startsWith('[')) {
      const inner = trimmed.slice(1, trimmed.indexOf(']'));
      mapId = Number.parseInt(inner.split(',')[0].trim(), 10);
      table = null;
      if (!Number.isNaN(mapId) && !result.has(mapId)) result.set(mapId, []);
      continue;
    }
    if (mapId === null) continue;

    // A slot row always begins with a number; anything else starts a new type.
    if (/^\d/.test(trimmed)) {
      if (table === null) continue;
      const parts = trimmed.split(',').map((p) => p.trim());
      if (parts.length < 3) continue;
      const min = Number.parseInt(parts[2], 10);
      const max = parts.length >= 4 ? Number.parseInt(parts[3], 10) : min;
      const slot: SCEncounterSlot = {
        probability: Number.parseInt(parts[0], 10) || 0,
        species: parts[1],
        minLevel: Number.isNaN(min) ? 1 : min,
        maxLevel: Number.isNaN(max) ? (Number.isNaN(min) ? 1 : min) : max,
      };
      table.slots.push(slot);
      continue;
    }

    const parts = trimmed.split(',').map((p) => p.trim());
    table = {
      type: parts[0],
      step: parts.length > 1 ? Number.parseInt(parts[1], 10) || 0 : 0,
      slots: [],
    };
    result.get(mapId)!.push(table);
  }

  return result;
}

export function serialiseEncounters(
  byMap: Map<number, SCEncounterTable[]>,
  mapNames: Map<number, string>,
): string {
  const out: string[] = [
    '# See the documentation on the wiki to learn how to edit this file.',
    '#-------------------------------',
  ];
  for (const mapId of [...byMap.keys()].sort((a, b) => a - b)) {
    const tables = byMap.get(mapId)!;
    if (tables.length === 0) continue;
    const name = mapNames.get(mapId);
    out.push(`[${String(mapId).padStart(3, '0')}]${name ? `   # ${name}` : ''}`);
    for (const t of tables) {
      out.push(t.step > 0 ? `${t.type},${t.step}` : t.type);
      for (const s of t.slots) {
        const level = s.minLevel === s.maxLevel ? `${s.minLevel}` : `${s.minLevel},${s.maxLevel}`;
        out.push(`    ${s.probability},${s.species},${level}`);
      }
    }
    out.push('#-------------------------------');
  }
  return `${out.join('\n')}\n`;
}
