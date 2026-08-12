/**
 * Ruby Marshal 4.8 writer — the inverse of reader.ts.
 *
 * This exists so the editor can export back to genuine .rxdata, which keeps two
 * escape hatches open: the project stays openable in RPG Maker XP, and vanilla
 * Essentials can still boot if the SCMap runtime plugin is disabled.
 *
 * Symbol and object backreference tables must be maintained exactly as Ruby
 * does, or indices drift and the stream decodes to garbage.
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
  subclassOf,
  type RValue,
} from './types';

export class MarshalWriter {
  private out: number[] = [];
  private readonly symbols = new Map<string, number>();
  private readonly objects = new Map<object, number>();

  static dump(value: RValue): Uint8Array {
    const w = new MarshalWriter();
    w.out.push(4, 8);
    w.writeValue(value);
    return new Uint8Array(w.out);
  }

  // ---------------------------------------------------------------- primitives

  private byte(b: number): void {
    this.out.push(b & 0xff);
  }

  private tag(ch: string): void {
    this.out.push(ch.charCodeAt(0));
  }

  private raw(bytes: Uint8Array): void {
    for (let i = 0; i < bytes.length; i++) this.out.push(bytes[i]);
  }

  /** Marshal packed integer encoding; mirrors reader's `long()`. */
  private long(n: number): void {
    if (n === 0) return this.byte(0);
    if (n > 0 && n < 123) return this.byte(n + 5);
    if (n < 0 && n > -124) return this.byte(n - 5);

    const buf: number[] = [];
    let v = n;
    for (let i = 0; i < 4; i++) {
      buf.push(v & 0xff);
      v >>= 8;
      // Stop once the remaining bits are pure sign extension.
      if ((n > 0 && v === 0) || (n < 0 && v === -1)) break;
    }
    this.byte(n < 0 ? -buf.length : buf.length);
    for (const b of buf) this.byte(b);
  }

  private writeBytesWithLength(bytes: Uint8Array): void {
    this.long(bytes.length);
    this.raw(bytes);
  }

  // ------------------------------------------------------------------- values

  private writeValue(value: RValue): void {
    if (value === null || value === undefined) return this.tag('0');
    if (value === true) return this.tag('T');
    if (value === false) return this.tag('F');

    if (typeof value === 'number') {
      // Bare JS numbers are Fixnums. Marshal's packed long covers 32 bits;
      // anything wider or fractional would be a lie to encode as `i`.
      if (Number.isInteger(value) && value >= -0x40000000 && value < 0x40000000) {
        this.tag('i');
        return this.long(value);
      }
      throw new Error(
        `Cannot encode ${value} as Fixnum; wrap it in RFloat or RBignum to pick a Ruby type`,
      );
    }

    if (value instanceof RSymbol) return this.writeSymbol(value);

    if (value instanceof RFloat) {
      if (this.objects.has(value)) {
        this.tag('@');
        return this.long(this.objects.get(value)!);
      }
      this.register(value);
      return this.writeFloat(value);
    }

    if (value instanceof RBignum) {
      if (this.objects.has(value)) {
        this.tag('@');
        return this.long(this.objects.get(value)!);
      }
      this.register(value);
      return this.writeBignum(value);
    }

    // Everything below is an object and participates in the objlink table.
    const existing = this.objects.get(value as object);
    if (existing !== undefined) {
      this.tag('@');
      return this.long(existing);
    }

    if (value instanceof RString) return this.writeString(value);
    if (Array.isArray(value)) return this.writeArray(value);
    if (value instanceof RHash) return this.writeHash(value);
    if (value instanceof RTable) return this.writeTable(value);
    if (value instanceof RColor) return this.writeColor(value);
    if (value instanceof RUserDef) return this.writeUserDef(value);
    if (value instanceof RObject) return this.writeObject(value);

    throw new Error(`Cannot marshal value of type ${Object.prototype.toString.call(value)}`);
  }

  private register(value: object): number {
    // marshal.c's w_remember uses the table's current entry count, so the first
    // object written is link 0. Reader and writer must agree exactly.
    const idx = this.objects.size;
    this.objects.set(value, idx);
    return idx;
  }

  private writeFloat(f: RFloat): void {
    this.tag('f');
    // Prefer the exact text Ruby produced, so imported data round-trips byte for
    // byte. Only synthesise a repr for floats the editor created itself.
    let text = f.raw;
    if (text === undefined) {
      const n = f.value;
      if (Number.isNaN(n)) text = 'nan';
      else if (n === Infinity) text = 'inf';
      else if (n === -Infinity) text = '-inf';
      // Ruby always prints a decimal point; JS's String(98) would emit "98",
      // which Ruby reloads as a Float but re-dumps differently.
      else text = Number.isInteger(n) ? `${n}.0` : String(n);
    }
    this.writeBytesWithLength(new TextEncoder().encode(text));
  }

  private writeBignum(b: RBignum): void {
    this.tag('l');
    const negative = b.value < 0n;
    this.tag(negative ? '-' : '+');
    let v = negative ? -b.value : b.value;
    const words: number[] = [];
    while (v > 0n) {
      words.push(Number(v & 0xffffn));
      v >>= 16n;
    }
    if (words.length === 0) words.push(0);
    this.long(words.length);
    for (const w of words) {
      this.byte(w & 0xff);
      this.byte((w >> 8) & 0xff);
    }
  }

  private writeSymbol(sym: RSymbol): void {
    const existing = this.symbols.get(sym.name);
    if (existing !== undefined) {
      this.tag(';');
      return this.long(existing);
    }
    this.symbols.set(sym.name, this.symbols.size);
    this.tag(':');
    this.writeBytesWithLength(new TextEncoder().encode(sym.name));
  }

  /**
   * Emits the `I` (has-ivars) and `C` (subclassed-builtin) prefixes a container
   * may need, registers the objlink, then hands back a closure that writes the
   * trailing ivar block. Ordering is load-bearing: Ruby emits `I C:Klass [ …`
   * and only registers the objlink at the container tag itself, so reader and
   * writer stay index-aligned.
   */
  private beginContainer(value: object, ivars: Array<[string, RValue]>): () => void {
    if (ivars.length > 0) this.tag('I');
    const subclass = subclassOf.get(value);
    if (subclass !== undefined) {
      this.tag('C');
      this.writeSymbol(RSymbol.of(subclass));
    }
    this.register(value);
    return () => {
      if (ivars.length === 0) return;
      this.long(ivars.length);
      for (const [name, v] of ivars) {
        this.writeSymbol(RSymbol.of(name));
        this.writeValue(v);
      }
    };
  }

  private ivarsFor(value: object): Array<[string, RValue]> {
    return [...(extraIvars.get(value) ?? [])];
  }

  private writeString(s: RString): void {
    // An encoding-tagged string carries its flag as an `E` ivar; anything else
    // recorded on the string comes along too.
    const ivars = this.ivarsFor(s);
    if (s.encoding === 'UTF-8' && !ivars.some(([n]) => n === 'E')) {
      ivars.unshift(['E', true]);
    }
    const finish = this.beginContainer(s, ivars);
    this.tag('"');
    this.writeBytesWithLength(s.bytes);
    finish();
  }

  private writeArray(arr: RValue[]): void {
    const finish = this.beginContainer(arr, this.ivarsFor(arr));
    this.tag('[');
    this.long(arr.length);
    for (const v of arr) this.writeValue(v);
    finish();
  }

  private writeHash(h: RHash): void {
    const finish = this.beginContainer(h, this.ivarsFor(h));
    const hasDefault = h.defaultValue !== null;
    this.tag(hasDefault ? '}' : '{');
    this.long(h.entries.length);
    for (const [k, v] of h.entries) {
      this.writeValue(k);
      this.writeValue(v);
    }
    if (hasDefault) this.writeValue(h.defaultValue);
    finish();
  }

  private writeObject(o: RObject): void {
    // `U` (marshal_dump) objects were stashed with a reserved ivar on read.
    const wrapped = o.ivars.get('@__marshal_dump');
    if (wrapped !== undefined) {
      this.register(o);
      this.tag('U');
      this.writeSymbol(RSymbol.of(o.className));
      return this.writeValue(wrapped);
    }

    this.register(o);
    this.tag('o');
    this.writeSymbol(RSymbol.of(o.className));
    const ivars = [...o.ivars].filter(([name]) => !name.startsWith('@__'));
    this.long(ivars.length);
    for (const [name, v] of ivars) {
      this.writeSymbol(RSymbol.of(name));
      this.writeValue(v);
    }
  }

  private writeTable(t: RTable): void {
    const payload = new Uint8Array(20 + t.data.length * 2);
    const dv = new DataView(payload.buffer);
    dv.setInt32(0, t.dim, true);
    dv.setInt32(4, t.xsize, true);
    dv.setInt32(8, t.ysize, true);
    dv.setInt32(12, t.zsize, true);
    dv.setInt32(16, t.data.length, true);
    for (let i = 0; i < t.data.length; i++) dv.setInt16(20 + i * 2, t.data[i], true);
    this.register(t);
    this.emitUserDef('Table', payload);
  }

  private writeColor(c: RColor): void {
    const payload = new Uint8Array(32);
    const dv = new DataView(payload.buffer);
    dv.setFloat64(0, c.red, true);
    dv.setFloat64(8, c.green, true);
    dv.setFloat64(16, c.blue, true);
    dv.setFloat64(24, c.alpha, true);
    this.register(c);
    this.emitUserDef(c.className, payload);
  }

  private writeUserDef(u: RUserDef): void {
    this.register(u);
    this.emitUserDef(u.className, u.payload);
  }

  private emitUserDef(className: string, payload: Uint8Array): void {
    this.tag('u');
    this.writeSymbol(RSymbol.of(className));
    this.writeBytesWithLength(payload);
  }
}
