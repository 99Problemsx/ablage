import { resolve } from 'node:path';
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import electron from 'vite-plugin-electron/simple';

export default defineConfig({
  resolve: {
    alias: {
      '@core': resolve(import.meta.dirname, 'src/core'),
      '@render': resolve(import.meta.dirname, 'src/render'),
      '@ui': resolve(import.meta.dirname, 'src/ui'),
      '@state': resolve(import.meta.dirname, 'src/state'),
    },
  },
  plugins: [
    react(),
    electron({
      main: {
        entry: 'electron/main.ts',
        vite: {
          build: {
            outDir: 'dist-electron',
            rollupOptions: { external: ['electron'] },
          },
        },
      },
      preload: {
        input: resolve(import.meta.dirname, 'electron/preload.ts'),
        vite: {
          build: {
            outDir: 'dist-electron',
            rollupOptions: {
              external: ['electron'],
              // Preload must be CommonJS. Electron loads it in a context without
              // ESM `import`, and `electron` itself is only reachable via
              // `require` — emitting .mjs makes Node parse it as ESM and the
              // bundled `require("electron")` then throws before any code runs.
              output: { format: 'cjs', entryFileNames: 'preload.cjs' },
            },
          },
        },
      },
    }),
  ],
  build: {
    outDir: 'dist',
    // Monaco is large and lazily loaded; a bigger warning threshold keeps the
    // build output readable instead of drowning in expected warnings.
    chunkSizeWarningLimit: 2500,
  },
});
