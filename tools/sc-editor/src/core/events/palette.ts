/**
 * The Event Command catalogue, laid out exactly as RPG Maker XP's own
 * "Event Command" window: three pages of buttons in the order Enterbrain
 * shipped them.
 *
 * The ordering is not cosmetic. Anyone who has used RMXP knows Show Text is
 * top-left of page 1 and Script is bottom of page 3; reshuffling the list into
 * "sensible" categories would throw away that muscle memory, which is the whole
 * point of cloning the tool rather than inventing a new one.
 *
 * Each entry builds a correctly-shaped parameter array for its command code,
 * so picking one yields a valid RPG::EventCommand rather than an empty shell
 * that would need hand-assembly in the raw JSON editor.
 */

import { strNode } from './model';
import type { JNode, JValue } from '../marshal/json';

function arr(items: JValue[]): JNode {
  return { $: 'arr', v: items };
}

function audioFile(name = '', volume = 100, pitch = 100): JNode {
  return {
    $: 'obj',
    c: 'RPG::AudioFile',
    iv: [
      ['@name', strNode(name)],
      ['@volume', volume],
      ['@pitch', pitch],
    ],
  };
}

/** A move route with no steps; Set Move Route needs one to be well-formed. */
function moveRoute(): JNode {
  return {
    $: 'obj',
    c: 'RPG::MoveRoute',
    iv: [
      ['@repeat', true],
      ['@skippable', false],
      // A route always ends with a code-0 terminator, same as a command list.
      ['@list', arr([{ $: 'obj', c: 'RPG::MoveCommand', iv: [['@code', 0], ['@parameters', arr([])]] }])],
    ],
  };
}

function tone(r = 0, g = 0, b = 0, grey = 0): JNode {
  return { $: 'col', c: 'Tone', r, g, b, a: grey };
}

function color(r = 255, g = 255, b = 255, a = 255): JNode {
  return { $: 'col', c: 'Color', r, g, b, a };
}

/** Context available when building a command's default parameters. */
export interface PaletteContext {
  /** The map the event lives on, offered as a sane default for Transfer Player. */
  currentMapId: number;
}

export interface PaletteEntry {
  code: number;
  label: string;
  params: (ctx: PaletteContext) => JValue[];
}

/** One page of the RMXP Event Command window. */
export interface PalettePage {
  name: string;
  entries: PaletteEntry[];
}

/** No-parameter command, of which RMXP has a fair few. */
function bare(code: number, label: string): PaletteEntry {
  return { code, label, params: () => [] };
}

export const COMMAND_PAGES: PalettePage[] = [
  {
    name: 'Page 1',
    entries: [
      { code: 101, label: 'Show Text', params: () => [strNode('')] },
      { code: 102, label: 'Show Choices', params: () => [arr([strNode('Yes'), strNode('No')]), 1] },
      { code: 103, label: 'Input Number', params: () => [0, 1] },
      { code: 104, label: 'Change Text Options', params: () => [0, 0] },
      { code: 105, label: 'Button Input Processing', params: () => [0] },
      { code: 106, label: 'Wait', params: () => [10] },
      { code: 108, label: 'Comment', params: () => [strNode('')] },
      { code: 111, label: 'Conditional Branch', params: () => [0, 1, 0] },
      { code: 112, label: 'Loop', params: () => [] },
      bare(113, 'Break Loop'),
      bare(115, 'Exit Event Processing'),
      bare(116, 'Erase Event'),
      { code: 117, label: 'Call Common Event', params: () => [1] },
      { code: 118, label: 'Label', params: () => [strNode('Label1')] },
      { code: 119, label: 'Jump to Label', params: () => [strNode('Label1')] },
      { code: 121, label: 'Control Switches', params: () => [1, 1, 0] },
      { code: 122, label: 'Control Variables', params: () => [1, 1, 0, 0, 0] },
      { code: 123, label: 'Control Self Switch', params: () => [strNode('A'), 0] },
      { code: 124, label: 'Control Timer', params: () => [0, 60] },
      { code: 125, label: 'Change Gold', params: () => [0, 0, 0] },
      { code: 126, label: 'Change Items', params: () => [1, 0, 0, 1] },
      { code: 127, label: 'Change Weapons', params: () => [1, 0, 0, 1] },
      { code: 128, label: 'Change Armor', params: () => [1, 0, 0, 1] },
      { code: 129, label: 'Change Party Member', params: () => [1, 0, 0] },
    ],
  },
  {
    name: 'Page 2',
    entries: [
      { code: 131, label: 'Change Windowskin', params: () => [strNode('')] },
      { code: 132, label: 'Change Battle BGM', params: () => [audioFile()] },
      { code: 133, label: 'Change Battle End ME', params: () => [audioFile()] },
      { code: 134, label: 'Change Save Access', params: () => [0] },
      { code: 135, label: 'Change Menu Access', params: () => [0] },
      { code: 136, label: 'Change Encounter', params: () => [0] },
      { code: 201, label: 'Transfer Player', params: (ctx) => [0, ctx.currentMapId, 0, 0, 0, 0] },
      { code: 202, label: 'Set Event Location', params: () => [0, 0, 0, 0, 0] },
      { code: 203, label: 'Scroll Map', params: () => [2, 1, 4] },
      { code: 204, label: 'Change Map Settings', params: () => [0, 0, strNode('')] },
      { code: 205, label: 'Change Fog Color Tone', params: () => [tone(), 20] },
      { code: 206, label: 'Change Fog Opacity', params: () => [64, 20] },
      { code: 207, label: 'Show Animation', params: () => [0, 1] },
      { code: 208, label: 'Change Transparent Flag', params: () => [0] },
      { code: 209, label: 'Set Move Route', params: () => [0, moveRoute()] },
      bare(210, "Wait for Move's Completion"),
      bare(221, 'Prepare for Transition'),
      { code: 222, label: 'Execute Transition', params: () => [strNode('')] },
      { code: 223, label: 'Change Screen Color Tone', params: () => [tone(), 20] },
      { code: 224, label: 'Screen Flash', params: () => [color(), 20] },
      { code: 225, label: 'Screen Shake', params: () => [5, 5, 20] },
      { code: 231, label: 'Show Picture', params: () => [1, strNode(''), 0, 0, 0, 0, 100, 100, 255, 0] },
      { code: 232, label: 'Move Picture', params: () => [1, 20, 0, 0, 0, 0, 100, 100, 255, 0] },
      { code: 233, label: 'Rotate Picture', params: () => [1, 0] },
      { code: 234, label: 'Change Picture Color Tone', params: () => [1, tone(), 20] },
      { code: 235, label: 'Erase Picture', params: () => [1] },
      { code: 236, label: 'Set Weather Effects', params: () => [0, 0, 20] },
      { code: 241, label: 'Play BGM', params: () => [audioFile()] },
      { code: 242, label: 'Fade Out BGM', params: () => [5] },
      { code: 245, label: 'Play BGS', params: () => [audioFile('', 80)] },
      { code: 246, label: 'Fade Out BGS', params: () => [5] },
      bare(247, 'Memorize BGM/BGS'),
      bare(248, 'Restore BGM/BGS'),
      { code: 249, label: 'Play ME', params: () => [audioFile()] },
      { code: 250, label: 'Play SE', params: () => [audioFile('', 80)] },
      bare(251, 'Stop SE'),
    ],
  },
  {
    name: 'Page 3',
    entries: [
      { code: 301, label: 'Battle Processing', params: () => [0, 1, false, false] },
      { code: 302, label: 'Shop Processing', params: () => [0, 1] },
      { code: 303, label: 'Name Input Processing', params: () => [1, 8] },
      { code: 311, label: 'Change HP', params: () => [0, 1, 0, 0, 1, false] },
      { code: 312, label: 'Change SP', params: () => [0, 1, 0, 0, 1] },
      { code: 313, label: 'Change State', params: () => [0, 1, 0, 1] },
      { code: 314, label: 'Recover All', params: () => [0, 1] },
      { code: 315, label: 'Change EXP', params: () => [0, 1, 0, 0, 1] },
      { code: 316, label: 'Change Level', params: () => [0, 1, 0, 0, 1] },
      { code: 317, label: 'Change Parameters', params: () => [0, 1, 0, 0, 0, 1] },
      { code: 318, label: 'Change Skills', params: () => [0, 1, 0, 1] },
      { code: 319, label: 'Change Equipment', params: () => [1, 0, 0] },
      { code: 320, label: 'Change Actor Name', params: () => [1, strNode('')] },
      { code: 321, label: 'Change Actor Class', params: () => [1, 1] },
      { code: 322, label: 'Change Actor Graphic', params: () => [1, strNode(''), 0, strNode(''), 0] },
      { code: 331, label: 'Change Enemy HP', params: () => [0, 0, 0, 1, false] },
      { code: 332, label: 'Change Enemy SP', params: () => [0, 0, 0, 1] },
      { code: 333, label: 'Change Enemy State', params: () => [0, 0, 1] },
      { code: 334, label: 'Enemy Recover All', params: () => [0] },
      { code: 335, label: 'Enemy Appearance', params: () => [0] },
      { code: 336, label: 'Enemy Transform', params: () => [0, 1] },
      { code: 337, label: 'Show Battle Animation', params: () => [0, 1, false] },
      { code: 338, label: 'Deal Damage', params: () => [0, 0, 0, 0, 1] },
      { code: 339, label: 'Force Action', params: () => [0, 0, 0, 0, -1] },
      bare(340, 'Abort Battle'),
      bare(351, 'Call Menu Screen'),
      bare(352, 'Call Save Screen'),
      bare(353, 'Game Over'),
      bare(354, 'Return to Title Screen'),
      { code: 355, label: 'Script', params: () => [strNode('')] },
    ],
  },
];

/** Builds a ready-to-insert RPG::EventCommand node for a palette entry. */
export function buildCommandNode(entry: PaletteEntry, indent: number, ctx: PaletteContext): JNode {
  return {
    $: 'obj',
    c: 'RPG::EventCommand',
    iv: [
      ['@code', entry.code],
      ['@indent', indent],
      ['@parameters', arr(entry.params(ctx))],
    ],
  };
}
