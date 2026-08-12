/**
 * Connection geometry — where a neighbouring map sits relative to the selected one.
 *
 * The offsets here are not invented. They are derived from Essentials' own two
 * halves of the same conversion:
 *
 *  - `Game_MapFactory#getRelativePos` treats a compiled connection as
 *    `[mapA, xA, yA, mapB, xB, yB]` and computes the origin delta of B relative
 *    to A as `(xA - xB, yA - yB)`.
 *  - `Compiler#get_connection_text` shows how the edge form maps onto those
 *    numbers, e.g. `North` means `yA == 0` and `yB == heightB`.
 *
 * Composing the two gives the table in `neighbourOffset`. Getting this wrong
 * would misplace the translucent overlay, which is exactly the bug the overlay
 * exists to catch — so it is worth deriving rather than eyeballing.
 */

import type { Edge, SCConnection } from './format';
import { TILE_SIZE } from './format';

export interface MapDims {
  width: number;
  height: number;
}

/** The opposite edge, which a well-formed connection always pairs with. */
export function oppositeEdge(edge: Edge): Edge {
  switch (edge) {
    case 'N':
      return 'S';
    case 'S':
      return 'N';
    case 'E':
      return 'W';
    case 'W':
      return 'E';
  }
}

/**
 * Origin offset of the neighbour, in tiles, relative to this map's origin.
 *
 * `self` is the map being edited, `other` the neighbour being previewed.
 */
export function neighbourOffset(
  connection: SCConnection,
  self: MapDims,
  other: MapDims,
): { x: number; y: number } {
  const along = connection.offset - connection.toOffset;
  switch (connection.edge) {
    case 'N':
      // Neighbour sits directly above: its bottom edge meets our top edge.
      return { x: along, y: -other.height };
    case 'S':
      return { x: along, y: self.height };
    case 'W':
      return { x: -other.width, y: along };
    case 'E':
      return { x: self.width, y: along };
  }
}

/** The same offset in world pixels, which is what the renderer consumes. */
export function neighbourPixelOffset(
  connection: SCConnection,
  self: MapDims,
  other: MapDims,
): { x: number; y: number } {
  const tiles = neighbourOffset(connection, self, other);
  return { x: tiles.x * TILE_SIZE, y: tiles.y * TILE_SIZE };
}

export interface ConnectionIssue {
  connection: SCConnection;
  severity: 'error' | 'warning';
  message: string;
}

/**
 * Validates a map's connections against what the engine will accept.
 *
 * The compiler hard-raises on mismatched edge pairs, which means a bad entry
 * breaks the whole game on next compile rather than degrading gracefully. Surfacing
 * it in the editor turns a startup crash into a visible warning.
 */
export function validateConnections(
  connections: SCConnection[],
  self: MapDims,
  dimsOf: (mapId: number) => MapDims | null,
): ConnectionIssue[] {
  const issues: ConnectionIssue[] = [];

  for (const conn of connections) {
    if (conn.toEdge !== oppositeEdge(conn.edge)) {
      issues.push({
        connection: conn,
        severity: 'error',
        message: `${conn.edge} must pair with ${oppositeEdge(conn.edge)}, not ${conn.toEdge}. The PBS compiler will refuse to build this.`,
      });
      continue;
    }

    const other = dimsOf(conn.toMapId);
    if (!other) {
      issues.push({
        connection: conn,
        severity: 'error',
        message: `Map ${conn.toMapId} does not exist.`,
      });
      continue;
    }

    // A seam only works where the two edges actually overlap. Zero overlap means
    // the player can walk to the edge and hit an invisible wall.
    const horizontal = conn.edge === 'N' || conn.edge === 'S';
    const selfSpan = horizontal ? self.width : self.height;
    const otherSpan = horizontal ? other.width : other.height;
    const delta = conn.offset - conn.toOffset;
    const overlap = Math.min(selfSpan, delta + otherSpan) - Math.max(0, delta);

    if (overlap <= 0) {
      issues.push({
        connection: conn,
        severity: 'error',
        message: `The edges do not overlap at all (offset ${conn.offset} vs ${conn.toOffset}). The seam is unreachable.`,
      });
    } else if (overlap < 4) {
      issues.push({
        connection: conn,
        severity: 'warning',
        message: `The edges overlap by only ${overlap} tile${overlap === 1 ? '' : 's'}, which is easy to miss in game.`,
      });
    }
  }

  return issues;
}
