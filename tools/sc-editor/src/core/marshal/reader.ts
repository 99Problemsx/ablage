/**
 * Ruby Marshal 4.8 reader, scoped to the type tags RPG Maker XP emits.
 *
 * Reference for the wire format: ruby/marshal.c. The tags we handle are:
 *   0 nil   T true   F false   i Fixnum   f Float   : Symbol   ; symlink
 *   @ objlink   " String   [ Array   { Hash   } Hash+default
 *   o Object   u userdef (_dump)   U usrmarshal (marshal_dump)   I ivar-wrapped
 *   e extended   C subclassed-builtin   l Bignum
 */

import {
  RColor,
  RHash,
  RObject,
  RString,
  RBignum,
  RFloat,
  RSymbol,
  RTable,
  RUserDef,
  setExtraIvar,
  subclassOf,
  type RValue,
} from './types';

export class MarshalError extends Error {}

export class MarshalReader {
  private pos = 0;
  /** Symbol table for `;` symlinks — index order is first-appearance order. */
  private readonly symbols: RSymbol[] = [];
  /** Object table for `@` objlinks. Note: symbols are NOT in this table. */
  private readonly objects: RValue[] = [];

  constructor(private readonly buf: Uint8Array) {}

  static parse(buf: Uint8Array): RValue {
    return new MarshalReader(buf).read();
  }

  read(): RValue {
    const major = this.byte();
    const minor = this.byte();
    if (major !== 4) {
      throw new MarshalError(`Unsupported Marshal major version ${major}.${minor}`);
    }
    return this.readValue();
  }

  // ---------------------------------------------------------------- primitives

  private byte(): number {
    if (this.pos >= this.buf.length) throw new MarshalError('Unexpected end of stream');
    return this.buf[this.pos++];
  }

  private bytes(n: number): Uint8Array {
    if (this.pos + n > this.buf.length) {
      throw new MarshalError(`Unexpected end of stream reading ${n} bytes at ${this.pos}`);
    }
    const out = this.buf.subarray(this.pos, this.pos + n);
    this.pos += n;
    return out;
  }

  /**
   * Marshal's packed integer ("long") encoding. The first byte is either the
   * value biased by 5 (for small ints), or a signed count of following
   * little-endian bytes.
   */
  private long(): number {
    const c = (this.byte() << 24) >> 24; // sign-extend to int8
    if (c === 0) return 0;
    if (c > 0) {
      if (c > 4) return c - 5;
      let n = 0;
      for (let i = 0; i < c; i++) n |= this.byte() << (8 * i);
      return n;
    }
    if (c < -4) return c + 5;
    // Negative multi-byte: start from -1 and mask in each byte.
    let n = -1;
    for (let i = 0; i < -c; i++) {
      n = (n & ~(0xff << (8 * i))) | (this.byte() << (8 * i));
    }
    return n;
  }

  // ------------------------------------------------------------------- values

  private readValue(): RValue {
    const tag = String.fromCharCode(this.byte());
    switch (tag) {
      case '0':
        return null;
      case 'T':
        return true;
      case 'F':
        return false;
      case 'i':
        return this.long();
      case 'f':
        return this.readFloat();
      case 'l':
        return this.readBignum();
      case ':':
        return this.readSymbolDef();
      case ';':
        return this.readSymLink();
      case '@':
        return this.readObjLink();
      case '"':
        return this.readString();
      case '[':
        return this.readArray();
      case '{':
        return this.readHash(false);
      case '}':
        return this.readHash(true);
      case 'o':
        return this.readObject();
      case 'u':
        return this.readUserDef();
      case 'U':
        return this.readUserMarshal();
      case 'I':
        return this.readIvarWrapped();
      case 'e':
        return this.readExtended();
      case 'C':
        return this.readSubclassed();
      default:
        throw new MarshalError(
          `Unhandled Marshal tag '${tag}' (0x${tag.charCodeAt(0).toString(16)}) at ${this.pos - 1}`,
        );
    }
  }

  private readFloat(): RFloat {
    const text = new TextDecoder('ascii').decode(this.bytes(this.long()));
    // Ruby dumps these specials as literal words.
    const value =
      text === 'inf'
        ? Infinity
        : text === '-inf'
          ? -Infinity
          : text === 'nan'
            ? NaN
            : Number.parseFloat(text);
    const f = new RFloat(value, text);
    this.objects.push(f);
    return f;
  }

  private readBignum(): RBignum {
    const negative = String.fromCharCode(this.byte()) === '-';
    // Length is in 16-bit words.
    const words = this.long();
    let value = 0n;
    for (let i = 0; i < words; i++) {
      const lo = this.byte();
      const hi = this.byte();
      value |= BigInt(lo | (hi << 8)) << BigInt(16 * i);
    }
    const b = new RBignum(negative ? -value : value);
    this.objects.push(b);
    return b;
  }

  private readSymbolDef(): RSymbol {
    const name = new TextDecoder('utf-8').decode(this.bytes(this.long()));
    const sym = RSymbol.of(name);
    this.symbols.push(sym);
    return sym;
  }

  private readSymLink(): RSymbol {
    const idx = this.long();
    const sym = this.symbols[idx];
    if (!sym) throw new MarshalError(`Bad symlink index ${idx}`);
    return sym;
  }

  private readObjLink(): RValue {
    const idx = this.long();
    if (idx >= this.objects.length) throw new MarshalError(`Bad objlink index ${idx}`);
    return this.objects[idx];
  }

  private readString(): RString {
    const s = new RString(new Uint8Array(this.bytes(this.long())));
    this.objects.push(s);
    return s;
  }

  private readArray(): RValue[] {
    const n = this.long();
    const arr: RValue[] = [];
    // Register before reading elements so self-referential arrays resolve.
    this.objects.push(arr);
    for (let i = 0; i < n; i++) arr.push(this.readValue());
    return arr;
  }

  private readHash(withDefault: boolean): RHash {
    const n = this.long();
    const h = new RHash();
    this.objects.push(h);
    for (let i = 0; i < n; i++) {
      const k = this.readValue();
      h.entries.push([k, this.readValue()]);
    }
    if (withDefault) h.defaultValue = this.readValue();
    return h;
  }

  private readObject(): RObject {
    const className = this.readSymbolRef().name;
    const o = new RObject(className);
    this.objects.push(o);
    const n = this.long();
    for (let i = 0; i < n; i++) {
      const name = this.readSymbolRef().name;
      o.ivars.set(name, this.readValue());
    }
    return o;
  }

  /** `u` — class implements `_dump`; payload is opaque bytes. */
  private readUserDef(): RValue {
    const className = this.readSymbolRef().name;
    const payload = new Uint8Array(this.bytes(this.long()));
    const value = decodeUserDef(className, payload);
    this.objects.push(value);
    return value;
  }

  /** `U` — class implements `marshal_dump`; payload is a normal Marshal value. */
  private readUserMarshal(): RValue {
    const className = this.readSymbolRef().name;
    const o = new RObject(className);
    this.objects.push(o);
    // Stash the wrapped value under a reserved key so the writer can restore it.
    o.set('@__marshal_dump', this.readValue());
    return o;
  }

  /**
   * `I` — the next value is followed by an ivar block. Usually a String
   * carrying its `:E` encoding flag, but Essentials also ships ivar-bearing
   * Array subclasses (PkmnAnimations.rxdata).
   */
  private readIvarWrapped(): RValue {
    const inner = this.readValue();
    const n = this.long();
    for (let i = 0; i < n; i++) {
      const name = this.readSymbolRef().name;
      const value = this.readValue();
      if (inner instanceof RString && (name === 'E' || name === 'encoding')) {
        inner.encoding =
          name === 'E'
            ? value === true
              ? 'UTF-8'
              : 'US-ASCII'
            : value instanceof RString
              ? value.value
              : undefined;
      } else if (inner instanceof RObject) {
        inner.ivars.set(name, value);
      } else if (inner !== null && typeof inner === 'object') {
        setExtraIvar(inner, name, value);
      }
    }
    return inner;
  }

  /** `e` — object extended with a module. We record it but keep the object. */
  private readExtended(): RValue {
    const module = this.readSymbolRef().name;
    const inner = this.readValue();
    if (inner instanceof RObject) inner.set('@__extended', RString.from(module));
    return inner;
  }

  /** `C` — a builtin (String/Array/Hash) subclassed by a user class. */
  private readSubclassed(): RValue {
    const className = this.readSymbolRef().name;
    const inner = this.readValue();
    if (inner !== null && typeof inner === 'object') subclassOf.set(inner, className);
    return inner;
  }

  /** Symbols in structural positions may be either a definition or a link. */
  private readSymbolRef(): RSymbol {
    const tag = String.fromCharCode(this.byte());
    if (tag === ':') return this.readSymbolDef();
    if (tag === ';') return this.readSymLink();
    throw new MarshalError(`Expected symbol, got '${tag}' at ${this.pos - 1}`);
  }
}

/** Decode the raw `_dump` payloads for the RGSS classes we understand. */
function decodeUserDef(className: string, payload: Uint8Array): RValue {
  const dv = new DataView(payload.buffer, payload.byteOffset, payload.byteLength);

  if (className === 'Table') {
    // Layout: dim, xsize, ysize, zsize, total (all int32 LE), then int16 data.
    const xsize = dv.getInt32(4, true);
    const ysize = dv.getInt32(8, true);
    const zsize = dv.getInt32(12, true);
    const count = dv.getInt32(16, true);
    const data = new Int16Array(count);
    for (let i = 0; i < count; i++) data[i] = dv.getInt16(20 + i * 2, true);
    return new RTable(xsize, ysize, zsize, data);
  }

  if (className === 'Color' || className === 'Tone') {
    return new RColor(
      dv.getFloat64(0, true),
      dv.getFloat64(8, true),
      dv.getFloat64(16, true),
      dv.getFloat64(24, true),
      className,
    );
  }

  return new RUserDef(className, payload);
}
