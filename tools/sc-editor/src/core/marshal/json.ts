/**
 * Lossless JSON encoding of a Marshal value tree.
 *
 * Event command trees are the reason this exists. RPG Maker has ~100 command
 * codes and Essentials adds more; hand-modelling them would guarantee that some
 * unmodelled field gets dropped the first time the editor saves one of the 72
 * existing maps. Instead we encode the Ruby tree structurally and let the event
 * editor manipulate that, so anything we do not understand still round-trips.
 *
 * Encoding uses a `$` discriminator on objects, since Ruby values do not
 * otherwise map onto JSON's type set:
 *   null / true / false / number   -> themselves (Fixnum only)
 *   {$:'sym',  n}                  -> Symbol
 *   {$:'str',  v, e?}              -> String (v is UTF-8 text)
 *   {$:'bytes',b, e?}              -> String with non-UTF-8 bytes (base64)
 *   {$:'flt',  v, raw?}            -> Float
 *   {$:'big',  v}                  -> Bignum (decimal string)
 *   {$:'arr',  v, cls?, iv?}       -> Array
 *   {$:'hash', v, d?, cls?, iv?}   -> Hash (v is [key, value] pairs)
 *   {$:'obj',  c, iv}              -> Object (c = class name)
 *   {$:'tbl',  x, y, z, d}         -> Table (d is base64 int16 LE)
 *   {$:'col',  c, r, g, b, a}      -> Color / Tone
 *   {$:'udef', c, p}               -> opaque userdef (p is base64)
 *   {$:'ref',  i}                  -> backreference to encoded object #i
 */

import {
  extraIvars,
  RBignum,
  RColor,
  RFloat,
  RHash,
  RObject,
  RString,
  RSymbol,
  RTable,
  RUserDef,
  setExtraIvar,
  subclassOf,
  type RValue,
} from './types';

export type JValue = null | boolean | number | JNode | JValue[];
export interface JNode {
  $: string;
  [key: string]: unknown;
}

function toBase64(bytes: Uint8Array): string {
  let s = '';
  // Chunked to stay clear of argument-count limits on large tile tables.
  const CHUNK = 0x8000;
  for (let i = 0; i < bytes.length; i += CHUNK) {
    s += String.fromCharCode(...bytes.subarray(i, i + CHUNK));
  }
  return btoa(s);
}

function fromBase64(text: string): Uint8Array {
  const s = atob(text);
  const out = new Uint8Array(s.length);
  for (let i = 0; i < s.length; i++) out[i] = s.charCodeAt(i);
  return out;
}

/** True when the bytes decode to UTF-8 and re-encode identically. */
function isCleanUtf8(bytes: Uint8Array): boolean {
  try {
    const text = new TextDecoder('utf-8', { fatal: true }).decode(bytes);
    const back = new TextEncoder().encode(text);
    if (back.length !== bytes.length) return false;
    for (let i = 0; i < back.length; i++) if (back[i] !== bytes[i]) return false;
    return true;
  } catch {
    return false;
  }
}

// ------------------------------------------------------------------- to JSON

export function marshalToJson(value: RValue): JValue {
  return new Encoder().encode(value);
}

class Encoder {
  /** Identity -> index, mirroring Marshal's own backreference semantics. */
  private readonly seen = new Map<object, number>();
  private counter = 0;

  encode(value: RValue): JValue {
    if (value === null || value === undefined) return null;
    if (typeof value === 'boolean') return value;
    if (typeof value === 'number') return value;
    if (value instanceof RSymbol) return { $: 'sym', n: value.name };

    const prior = this.seen.get(value as object);
    if (prior !== undefined) return { $: 'ref', i: prior };
    const id = this.counter++;
    this.seen.set(value as object, id);

    if (value instanceof RFloat) {
      const node: JNode = { $: 'flt', v: Number.isFinite(value.value) ? value.value : String(value.value) };
      if (value.raw !== undefined) node.raw = value.raw;
      return node;
    }
    if (value instanceof RBignum) return { $: 'big', v: value.value.toString() };

    if (value instanceof RString) {
      const node: JNode = isCleanUtf8(value.bytes)
        ? { $: 'str', v: value.value }
        : { $: 'bytes', b: toBase64(value.bytes) };
      if (value.encoding) node.e = value.encoding;
      this.attachMeta(value, node);
      return node;
    }

    if (Array.isArray(value)) {
      const node: JNode = { $: 'arr', v: value.map((v) => this.encode(v)) };
      this.attachMeta(value, node);
      return node;
    }

    if (value instanceof RHash) {
      const node: JNode = {
        $: 'hash',
        v: value.entries.map(([k, v]) => [this.encode(k), this.encode(v)]),
      };
      if (value.defaultValue !== null) node.d = this.encode(value.defaultValue);
      this.attachMeta(value, node);
      return node;
    }

    if (value instanceof RTable) {
      return {
        $: 'tbl',
        x: value.xsize,
        y: value.ysize,
        z: value.zsize,
        d: toBase64(new Uint8Array(value.data.buffer, value.data.byteOffset, value.data.byteLength)),
      };
    }

    if (value instanceof RColor) {
      return { $: 'col', c: value.className, r: value.red, g: value.green, b: value.blue, a: value.alpha };
    }

    if (value instanceof RUserDef) {
      return { $: 'udef', c: value.className, p: toBase64(value.payload) };
    }

    if (value instanceof RObject) {
      const iv: Array<[string, JValue]> = [];
      for (const [name, v] of value.ivars) iv.push([name, this.encode(v)]);
      return { $: 'obj', c: value.className, iv };
    }

    throw new Error(`marshalToJson: unsupported value ${Object.prototype.toString.call(value)}`);
  }

  private attachMeta(value: object, node: JNode): void {
    const cls = subclassOf.get(value);
    if (cls !== undefined) node.cls = cls;
    const iv = extraIvars.get(value);
    if (iv && iv.size > 0) {
      node.iv = [...iv].map(([name, v]) => [name, this.encode(v)]);
    }
  }
}

// ----------------------------------------------------------------- from JSON

export function jsonToMarshal(value: JValue): RValue {
  return new Decoder().decode(value);
}

class Decoder {
  private readonly byId = new Map<number, RValue>();
  private counter = 0;

  decode(value: JValue): RValue {
    if (value === null) return null;
    if (typeof value === 'boolean' || typeof value === 'number') return value;
    if (Array.isArray(value)) {
      // Bare arrays only appear inside node payloads, never as a Ruby value.
      throw new Error('jsonToMarshal: unexpected bare array');
    }

    const node = value;
    if (node.$ === 'sym') return RSymbol.of(node.n as string);
    if (node.$ === 'ref') {
      const target = this.byId.get(node.i as number);
      if (target === undefined) throw new Error(`jsonToMarshal: dangling ref ${node.i}`);
      return target;
    }

    const id = this.counter++;
    const remember = <T extends RValue>(v: T): T => {
      this.byId.set(id, v);
      return v;
    };

    switch (node.$) {
      case 'flt': {
        const v = node.v;
        const num = typeof v === 'number' ? v : Number(v);
        return remember(new RFloat(num, node.raw as string | undefined));
      }
      case 'big':
        return remember(new RBignum(BigInt(node.v as string)));
      case 'str': {
        const s = new RString(new TextEncoder().encode(node.v as string), node.e as string | undefined);
        remember(s);
        this.restoreMeta(node, s);
        return s;
      }
      case 'bytes': {
        const s = new RString(fromBase64(node.b as string), node.e as string | undefined);
        remember(s);
        this.restoreMeta(node, s);
        return s;
      }
      case 'arr': {
        const arr: RValue[] = [];
        remember(arr);
        for (const item of node.v as JValue[]) arr.push(this.decode(item));
        this.restoreMeta(node, arr);
        return arr;
      }
      case 'hash': {
        const h = new RHash();
        remember(h);
        for (const [k, v] of node.v as Array<[JValue, JValue]>) {
          h.entries.push([this.decode(k), this.decode(v)]);
        }
        if (node.d !== undefined) h.defaultValue = this.decode(node.d as JValue);
        this.restoreMeta(node, h);
        return h;
      }
      case 'tbl': {
        const bytes = fromBase64(node.d as string);
        // Copy rather than view: the base64 buffer has no alignment guarantee.
        const data = new Int16Array(bytes.length / 2);
        const dv = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
        for (let i = 0; i < data.length; i++) data[i] = dv.getInt16(i * 2, true);
        return remember(
          new RTable(node.x as number, node.y as number, node.z as number, data),
        );
      }
      case 'col':
        return remember(
          new RColor(
            node.r as number,
            node.g as number,
            node.b as number,
            node.a as number,
            node.c as 'Color' | 'Tone',
          ),
        );
      case 'udef':
        return remember(new RUserDef(node.c as string, fromBase64(node.p as string)));
      case 'obj': {
        const o = new RObject(node.c as string);
        remember(o);
        for (const [name, v] of node.iv as Array<[string, JValue]>) {
          o.ivars.set(name, this.decode(v));
        }
        return o;
      }
      default:
        throw new Error(`jsonToMarshal: unknown node type '${node.$}'`);
    }
  }

  private restoreMeta(node: JNode, target: object): void {
    if (typeof node.cls === 'string') subclassOf.set(target, node.cls);
    if (Array.isArray(node.iv)) {
      for (const [name, v] of node.iv as Array<[string, JValue]>) {
        setExtraIvar(target, name, this.decode(v));
      }
    }
  }
}
