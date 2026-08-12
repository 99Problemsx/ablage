/**
 * Renders one frame of a character sheet — the same frame RMXP would draw for
 * this event in-game, given its facing and walk pattern. Used so the event
 * dialog shows what the event actually looks like instead of just its file
 * name, which is what "doors5" or "NPC 06" tells you nothing about.
 */

import { useEffect, useRef, useState } from 'react';

const SHEET_COLS = 4;
const SHEET_ROWS = 4;
const ROW_DIRECTION = [2, 4, 6, 8];

interface Props {
  characterName: string;
  direction: number;
  pattern: number;
  hue: number;
  /** On-screen size in CSS pixels; the sprite is scaled to fit within it. */
  size?: number;
}

export function EventSprite({ characterName, direction, pattern, hue, size = 56 }: Props): React.JSX.Element {
  const [sheet, setSheet] = useState<ImageBitmap | null>(null);
  const [missing, setMissing] = useState(false);
  const canvasRef = useRef<HTMLCanvasElement | null>(null);

  useEffect(() => {
    let cancelled = false;
    if (!characterName) {
      setSheet(null);
      setMissing(false);
      return;
    }
    void (async () => {
      const loaded = await window.sc.image('Characters', characterName);
      if (cancelled) return;
      if (!loaded) {
        setSheet(null);
        setMissing(true);
        return;
      }
      const copy = new Uint8Array(loaded.bytes.length);
      copy.set(loaded.bytes);
      try {
        const bmp = await createImageBitmap(new Blob([copy.buffer]));
        if (!cancelled) {
          setSheet(bmp);
          setMissing(false);
        }
      } catch {
        if (!cancelled) {
          setSheet(null);
          setMissing(true);
        }
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [characterName]);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const dpr = window.devicePixelRatio || 1;
    canvas.width = Math.round(size * dpr);
    canvas.height = Math.round(size * dpr);
    canvas.style.width = `${size}px`;
    canvas.style.height = `${size}px`;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    ctx.imageSmoothingEnabled = false;
    ctx.clearRect(0, 0, size, size);
    if (!sheet) return;

    const frameW = sheet.width / SHEET_COLS;
    const frameH = sheet.height / SHEET_ROWS;
    const row = Math.max(0, ROW_DIRECTION.indexOf(direction));
    const col = Math.max(0, Math.min(SHEET_COLS - 1, pattern));

    // Fit the frame into the square without distortion, since character
    // sheets mix tall humanoid frames with square object/vehicle frames.
    const scale = Math.min(size / frameW, size / frameH);
    const w = frameW * scale;
    const h = frameH * scale;
    ctx.drawImage(
      sheet,
      col * frameW,
      row * frameH,
      frameW,
      frameH,
      (size - w) / 2,
      (size - h) / 2,
      w,
      h,
    );

    // Hue rotation is rare in practice; approximate it as a tint overlay
    // rather than pulling in a full HSL pixel-shift for a preview thumbnail.
    if (hue > 0) {
      ctx.globalCompositeOperation = 'hue';
      ctx.fillStyle = `hsl(${hue}, 70%, 50%)`;
      ctx.fillRect((size - w) / 2, (size - h) / 2, w, h);
      ctx.globalCompositeOperation = 'source-over';
    }
  }, [sheet, direction, pattern, hue, size]);

  if (!characterName) {
    return <div className="sc-sprite-empty">—</div>;
  }
  if (missing) {
    return <div className="sc-sprite-empty sc-faint">missing</div>;
  }
  return <canvas ref={canvasRef} className="sc-sprite-canvas" />;
}
