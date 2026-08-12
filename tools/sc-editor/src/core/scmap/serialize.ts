/**
 * SCMap serialisation with hand-tuned formatting.
 *
 * `JSON.stringify(map, null, 2)` is the obvious choice and the wrong one: it
 * explodes the opaque event command trees into millions of indented lines (23
 * MiB across the project) while adding no readability, since nobody reads a
 * Marshal tree by eye. Meanwhile the parts an author *does* review in a diff —
 * tile rows, connections, lighting — are the parts that benefit from one entry
 * per line.
 *
 * So: pretty-print the authored structure, and keep each event's `raw` tree on a
 * single line. Output stays valid JSON either way.
 */

import type { SCMap } from './format';

/** Keys whose values are written compactly regardless of nesting depth. */
const COMPACT_KEYS = new Set(['raw', 'passages', 'priorities', 'terrainTags']);

export function serialiseMap(map: SCMap): string {
  return `${render(map, 0, null)}\n`;
}

function render(value: unknown, indent: number, key: string | null): string {
  if (key !== null && COMPACT_KEYS.has(key)) return JSON.stringify(value);

  if (value === null || typeof value !== 'object') return JSON.stringify(value) ?? 'null';

  const pad = '  '.repeat(indent + 1);
  const closePad = '  '.repeat(indent);

  if (Array.isArray(value)) {
    if (value.length === 0) return '[]';
    // Arrays of plain strings (tile rows) read best one per line; arrays of
    // numbers are almost always coordinates and read best inline.
    if (value.every((v) => typeof v === 'number')) return JSON.stringify(value);
    const items = value.map((v) => `${pad}${render(v, indent + 1, null)}`);
    return `[\n${items.join(',\n')}\n${closePad}]`;
  }

  const entries = Object.entries(value as Record<string, unknown>).filter(
    ([, v]) => v !== undefined,
  );
  if (entries.length === 0) return '{}';
  const rendered = entries.map(
    ([k, v]) => `${pad}${JSON.stringify(k)}: ${render(v, indent + 1, k)}`,
  );
  return `{\n${rendered.join(',\n')}\n${closePad}}`;
}

export function parseMap(text: string): SCMap {
  const parsed = JSON.parse(text) as SCMap;
  if (typeof parsed !== 'object' || parsed === null) throw new Error('SCMap is not an object');
  if (typeof parsed.id !== 'number') throw new Error('SCMap is missing a numeric id');
  return parsed;
}
