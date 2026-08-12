/**
 * Renders RPG Maker event commands as readable lines.
 *
 * Two design choices worth stating:
 *
 * 1. Unknown codes degrade to `Code 357 [params]` rather than being hidden.
 *    Essentials and this project's plugins add commands (357 is the Essentials
 *    script-call bridge), and silently dropping them would make the event editor
 *    lie about what an event does.
 *
 * 2. Continuation codes (401 text, 408 comment, 655 script) are folded into the
 *    line they continue. RPG Maker stores a five-line message as five separate
 *    commands; showing them separately is noise.
 */

import { asArray, asStr, type Deref, type EventCommand } from './model';
import type { JNode, JValue } from '../marshal/json';

/** A command flattened for display. */
export interface CommandLine {
  /** Index of the first source command, for selection and editing. */
  index: number;
  code: number;
  indent: number;
  text: string;
  /** Colour class, chosen by what the command does. */
  kind: CommandKind;
}

export type CommandKind =
  | 'message'
  | 'flow'
  | 'data'
  | 'movement'
  | 'audio'
  | 'screen'
  | 'script'
  | 'comment'
  | 'battle'
  | 'other'
  | 'blank';

function param(params: JValue[], i: number): JValue | undefined {
  return params[i];
}

function num(params: JValue[], i: number, fallback = 0): number {
  const v = param(params, i);
  return typeof v === 'number' ? v : fallback;
}

function text(params: JValue[], i: number): string {
  return asStr(param(params, i));
}

/** Formats an operand that may be a literal or a variable reference. */
function operand(kind: number, value: number): string {
  return kind === 1 ? `variable ${value}` : String(value);
}

const COMPARE = ['==', '>=', '<=', '>', '<', '!='];

/** RMXP's event-id convention: -1 is the player, 0 is the event itself. */
function whoName(id: number): string {
  return id === -1 ? 'Player' : id === 0 ? 'This event' : `character ${id}`;
}

/** Conditional Branch (111) reads very differently per sub-type. */
function conditionalBranch(p: JValue[]): string {
  const type = num(p, 0);
  switch (type) {
    case 0:
      return `If switch ${num(p, 1)} is ${num(p, 2) === 0 ? 'ON' : 'OFF'}`;
    case 1: {
      const cmp = COMPARE[num(p, 4)] ?? '==';
      const rhs = num(p, 2) === 0 ? String(num(p, 3)) : `variable ${num(p, 3)}`;
      return `If variable ${num(p, 1)} ${cmp} ${rhs}`;
    }
    case 2:
      return `If self switch ${text(p, 1)} is ${num(p, 2) === 0 ? 'ON' : 'OFF'}`;
    case 3:
      return `If timer ${num(p, 2) === 0 ? '>=' : '<='} ${num(p, 1)} sec`;
    case 4:
      return `If actor ${num(p, 1)} condition`;
    case 5:
      return `If enemy ${num(p, 1)} condition`;
    case 6:
      return `If character ${num(p, 1)} faces ${['down', 'left', 'right', 'up'][num(p, 2) / 2 - 1] ?? '?'}`;
    case 7:
      return `If gold ${num(p, 2) === 0 ? '>=' : '<='} ${num(p, 1)}`;
    case 8:
      return `If item ${num(p, 1)} is owned`;
    case 9:
      return `If weapon ${num(p, 1)} is owned`;
    case 10:
      return `If armor ${num(p, 1)} is owned`;
    case 11:
      return `If button ${num(p, 1)} is pressed`;
    case 12:
      return `If script: ${text(p, 1)}`;
    default:
      return `If (type ${type})`;
  }
}

function controlVariables(p: JValue[]): string {
  const first = num(p, 0);
  const last = num(p, 1);
  const target = first === last ? `variable ${first}` : `variables ${first}..${last}`;
  const op = ['=', '+=', '-=', '*=', '/=', '%='][num(p, 2)] ?? '=';
  const kind = num(p, 3);
  let rhs: string;
  switch (kind) {
    case 0:
      rhs = String(num(p, 4));
      break;
    case 1:
      rhs = `variable ${num(p, 4)}`;
      break;
    case 2:
      rhs = `random ${num(p, 4)}..${num(p, 5)}`;
      break;
    case 3:
      rhs = `item ${num(p, 4)} count`;
      break;
    case 4:
      rhs = `actor ${num(p, 4)} stat`;
      break;
    case 5:
      rhs = `enemy ${num(p, 4)} stat`;
      break;
    case 6:
      rhs = `character ${num(p, 4)} property`;
      break;
    case 7:
      rhs = 'other';
      break;
    default:
      rhs = `kind ${kind}`;
  }
  return `Set ${target} ${op} ${rhs}`;
}

interface Formatted {
  text: string;
  kind: CommandKind;
}

function formatOne(cmd: EventCommand): Formatted {
  const p = cmd.parameters;
  switch (cmd.code) {
    case 0:
      return { text: '', kind: 'blank' };
    case 101:
      return { text: text(p, 0), kind: 'message' };
    case 102:
      return {
        text: `Show Choices: ${asArray(param(p, 0)).map((c) => asStr(c)).join(' / ')}`,
        kind: 'message',
      };
    case 402:
      return { text: `When ${text(p, 1)}`, kind: 'flow' };
    case 403:
      return { text: 'When Cancel', kind: 'flow' };
    case 404:
      return { text: 'Branch End', kind: 'flow' };
    case 103:
      return { text: `Input Number: variable ${num(p, 0)}, ${num(p, 1)} digits`, kind: 'message' };
    case 104:
      return { text: `Text Options: position ${num(p, 0)}, frame ${num(p, 1)}`, kind: 'message' };
    case 105:
      return { text: `Button Input: variable ${num(p, 0)}`, kind: 'message' };
    case 106:
      return { text: `Wait ${num(p, 0)} frames`, kind: 'flow' };
    case 108:
      return { text: text(p, 0), kind: 'comment' };
    case 111:
      return { text: conditionalBranch(p), kind: 'flow' };
    case 411:
      return { text: 'Else', kind: 'flow' };
    case 412:
      return { text: 'Branch End', kind: 'flow' };
    case 112:
      return { text: 'Loop', kind: 'flow' };
    case 413:
      return { text: 'Repeat Above', kind: 'flow' };
    case 113:
      return { text: 'Break Loop', kind: 'flow' };
    case 115:
      return { text: 'Exit Event Processing', kind: 'flow' };
    case 116:
      return { text: 'Erase Event', kind: 'flow' };
    case 117:
      return { text: `Call Common Event ${num(p, 0)}`, kind: 'flow' };
    case 118:
      return { text: `Label: ${text(p, 0)}`, kind: 'flow' };
    case 119:
      return { text: `Jump to Label: ${text(p, 0)}`, kind: 'flow' };
    case 121: {
      const a = num(p, 0);
      const b = num(p, 1);
      const target = a === b ? `switch ${a}` : `switches ${a}..${b}`;
      return { text: `Set ${target} ${num(p, 2) === 0 ? 'ON' : 'OFF'}`, kind: 'data' };
    }
    case 122:
      return { text: controlVariables(p), kind: 'data' };
    case 123:
      return {
        text: `Set self switch ${text(p, 0)} ${num(p, 1) === 0 ? 'ON' : 'OFF'}`,
        kind: 'data',
      };
    case 124:
      return { text: num(p, 0) === 0 ? `Start timer ${num(p, 1)}s` : 'Stop timer', kind: 'data' };
    case 125:
      return { text: `Change gold ${num(p, 0) === 0 ? '+' : '-'}${operand(num(p, 1), num(p, 2))}`, kind: 'data' };
    case 126:
      return {
        text: `Change item ${num(p, 0)} ${num(p, 1) === 0 ? '+' : '-'}${operand(num(p, 2), num(p, 3))}`,
        kind: 'data',
      };
    case 127:
      return { text: `Change weapon ${num(p, 0)}`, kind: 'data' };
    case 128:
      return { text: `Change armor ${num(p, 0)}`, kind: 'data' };
    case 129:
      return { text: `Change party member ${num(p, 0)}`, kind: 'data' };
    case 201:
      return {
        text: `Transfer Player: map ${operand(num(p, 0), num(p, 1))} (${num(p, 2)}, ${num(p, 3)})`,
        kind: 'movement',
      };
    case 202:
      return {
        text: `Set ${whoName(num(p, 0))} Location (${num(p, 2)}, ${num(p, 3)})`,
        kind: 'movement',
      };
    case 203:
      return { text: `Scroll Map ${num(p, 0)} by ${num(p, 1)}`, kind: 'movement' };
    case 204:
      return { text: 'Change Map Settings', kind: 'screen' };
    case 205:
      return { text: 'Change Fog Color Tone', kind: 'screen' };
    case 206:
      return { text: `Change Fog Opacity ${num(p, 0)}`, kind: 'screen' };
    case 207:
      return { text: `Show Animation ${num(p, 1)} on ${whoName(num(p, 0))}`, kind: 'screen' };
    case 208:
      return { text: `Transparent Flag ${num(p, 0) === 0 ? 'ON' : 'OFF'}`, kind: 'screen' };
    case 209:
      return { text: `Set Move Route: ${whoName(num(p, 0))}`, kind: 'movement' };
    case 210:
      return { text: "Wait for Move's Completion", kind: 'movement' };
    case 221:
      return { text: 'Prepare for Transition', kind: 'screen' };
    case 222:
      return { text: 'Execute Transition', kind: 'screen' };
    case 223:
      return { text: 'Change Screen Color Tone', kind: 'screen' };
    case 224:
      return { text: 'Screen Flash', kind: 'screen' };
    case 225:
      return { text: 'Screen Shake', kind: 'screen' };
    case 231:
      return { text: `Show Picture ${num(p, 0)}: ${text(p, 1)}`, kind: 'screen' };
    case 232:
      return { text: `Move Picture ${num(p, 0)}`, kind: 'screen' };
    case 233:
      return { text: `Rotate Picture ${num(p, 0)}`, kind: 'screen' };
    case 234:
      return { text: `Picture Color Tone ${num(p, 0)}`, kind: 'screen' };
    case 235:
      return { text: `Erase Picture ${num(p, 0)}`, kind: 'screen' };
    case 236:
      return {
        text: `Weather: ${['none', 'rain', 'storm', 'snow'][num(p, 0)] ?? num(p, 0)} · power ${num(p, 1)} · ${num(p, 2)} frames`,
        kind: 'screen',
      };
    case 241:
      return { text: `Play BGM: ${audioName(param(p, 0))}`, kind: 'audio' };
    case 242:
      return { text: `Fade Out BGM ${num(p, 0)}s`, kind: 'audio' };
    case 245:
      return { text: `Play BGS: ${audioName(param(p, 0))}`, kind: 'audio' };
    case 246:
      return { text: `Fade Out BGS ${num(p, 0)}s`, kind: 'audio' };
    case 247:
      return { text: 'Memorize BGM/BGS', kind: 'audio' };
    case 248:
      return { text: 'Restore BGM/BGS', kind: 'audio' };
    case 249:
      return { text: `Play ME: ${audioName(param(p, 0))}`, kind: 'audio' };
    case 250:
      return { text: `Play SE: ${audioName(param(p, 0))}`, kind: 'audio' };
    case 251:
      return { text: 'Stop SE', kind: 'audio' };
    case 301:
      return { text: `Battle Processing: troop ${num(p, 1)}`, kind: 'battle' };
    case 302:
      return { text: 'Shop Processing', kind: 'battle' };
    case 303:
      return { text: `Name Input: actor ${num(p, 0)}`, kind: 'battle' };
    case 311:
      return { text: `Change HP: actor ${num(p, 1)}`, kind: 'battle' };
    case 312:
      return { text: `Change SP: actor ${num(p, 1)}`, kind: 'battle' };
    case 313:
      return { text: `Change State: actor ${num(p, 1)}`, kind: 'battle' };
    case 314:
      return {
        text: num(p, 0) === 0 ? 'Recover All: entire party' : `Recover All: actor ${num(p, 1)}`,
        kind: 'battle',
      };
    case 315:
      return { text: `Change EXP: actor ${num(p, 1)}`, kind: 'battle' };
    case 316:
      return { text: `Change Level: actor ${num(p, 1)}`, kind: 'battle' };
    case 319:
      return { text: `Change Equipment: actor ${num(p, 0)}`, kind: 'battle' };
    case 320:
      return { text: `Change Actor Name: actor ${num(p, 0)}`, kind: 'battle' };
    case 322:
      return { text: `Change Actor Graphic: actor ${num(p, 0)}`, kind: 'battle' };
    case 351:
      return { text: 'Call Menu Screen', kind: 'other' };
    case 352:
      return { text: 'Call Save Screen', kind: 'other' };
    case 353:
      return { text: 'Game Over', kind: 'other' };
    case 354:
      return { text: 'Return to Title Screen', kind: 'other' };
    case 355:
      return { text: text(p, 0), kind: 'script' };
    default:
      // Deliberately visible. Essentials adds codes (357 is its script bridge)
      // and pretending they are not there would misrepresent the event.
      return { text: `Code ${cmd.code} ${summariseParams(p)}`, kind: 'other' };
  }
}

function audioName(v: JValue | undefined): string {
  if (!v || typeof v !== 'object' || Array.isArray(v)) return '(none)';
  const iv = (v as JNode).iv as Array<[string, JValue]> | undefined;
  const name = iv?.find(([n]) => n === '@name')?.[1];
  return asStr(name, '(none)');
}

function summariseParams(p: JValue[]): string {
  const parts = p.map((v) => {
    if (typeof v === 'number' || typeof v === 'boolean') return String(v);
    if (v === null) return 'nil';
    const s = asStr(v);
    if (s) return JSON.stringify(s);
    if (typeof v === 'object' && !Array.isArray(v)) return `<${(v as JNode).$}>`;
    return '?';
  });
  return parts.length > 0 ? `[${parts.join(', ')}]` : '';
}

/**
 * RPG::MoveCommand codes, as used inside a Set Move Route (209/509) block.
 * Without these, a door animation reads as eight identical `Code 509` lines.
 */
const MOVE_COMMANDS: Record<number, string> = {
  1: 'Move Down', 2: 'Move Left', 3: 'Move Right', 4: 'Move Up',
  5: 'Move Lower Left', 6: 'Move Lower Right', 7: 'Move Upper Left',
  8: 'Move Upper Right', 9: 'Move at Random', 10: 'Move toward Player',
  11: 'Move away from Player', 12: 'Step Forward', 13: 'Step Backward',
  14: 'Jump', 15: 'Wait', 16: 'Turn Down', 17: 'Turn Left', 18: 'Turn Right',
  19: 'Turn Up', 20: 'Turn 90 Right', 21: 'Turn 90 Left', 22: 'Turn 180',
  23: 'Turn 90 Right or Left', 24: 'Turn at Random', 25: 'Turn toward Player',
  26: 'Turn away from Player', 27: 'Switch ON', 28: 'Switch OFF',
  29: 'Change Speed', 30: 'Change Frequency', 31: 'Walk Anime ON',
  32: 'Walk Anime OFF', 33: 'Step Anime ON', 34: 'Step Anime OFF',
  35: 'Direction Fix ON', 36: 'Direction Fix OFF', 37: 'Through ON',
  38: 'Through OFF', 39: 'Always on Top ON', 40: 'Always on Top OFF',
  41: 'Change Graphic', 42: 'Change Opacity', 43: 'Change Blending',
  44: 'Play SE', 45: 'Script',
};

/** Renders one RPG::MoveCommand node from a 509 command's parameter. */
function moveStep(raw: JValue | undefined, deref: Deref): string {
  // Identical steps are stored once and referenced, so this must be resolved.
  const v = deref(raw);
  if (!v || typeof v !== 'object' || Array.isArray(v)) return '?';
  const iv = (v as JNode).iv as Array<[string, JValue]> | undefined;
  const code = iv?.find(([n]) => n === '@code')?.[1];
  const params = asArray(iv?.find(([n]) => n === '@parameters')?.[1]);
  const id = typeof code === 'number' ? code : -1;
  const name = MOVE_COMMANDS[id] ?? `Move code ${id}`;
  if (id === 45 || id === 41) {
    const arg = asStr(params[0]);
    return arg ? `${name}: ${arg}` : name;
  }
  if (params.length > 0 && typeof params[0] === 'number') return `${name} ${params[0]}`;
  return name;
}

/** Continuation codes, each folded into the command they extend. */
const CONTINUATIONS: Record<number, number> = {
  401: 101, // Show Text
  408: 108, // Comment
  655: 355, // Script
  509: 209, // Move Route step
};

/**
 * Flattens a command list into display lines, folding continuations.
 */
export function formatCommands(
  commands: EventCommand[],
  deref: Deref = (v) => v,
): CommandLine[] {
  const lines: CommandLine[] = [];
  for (let i = 0; i < commands.length; i++) {
    const cmd = commands[i];
    if (CONTINUATIONS[cmd.code] !== undefined) {
      // Belongs to the previous line; if there is none, fall through and show it
      // rather than dropping data.
      const prev = lines[lines.length - 1];
      if (prev && prev.code === CONTINUATIONS[cmd.code]) {
        prev.text +=
          cmd.code === 509
            ? `\n${moveStep(cmd.parameters[0], deref)}`
            : `\n${asStr(cmd.parameters[0])}`;
        continue;
      }
    }
    // The trailing code-0 terminator is deliberately kept. RPG Maker XP shows it
    // as an empty `@>` row and that row is the primary way you add a command:
    // you click it and the command menu opens. Filtering it out leaves nothing
    // to click.
    const { text: t, kind } = formatOne(cmd);
    lines.push({ index: i, code: cmd.code, indent: cmd.indent, text: t, kind });
  }
  return lines;
}

/** Plain-text form of a whole page, used by search. */
export function commandsToText(commands: EventCommand[], deref?: Deref): string {
  return formatCommands(commands, deref)
    .map((l) => `${'  '.repeat(l.indent)}${l.text}`)
    .join('\n');
}
