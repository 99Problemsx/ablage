import type { ScApi } from '../electron/preload';

declare global {
  interface Window {
    /** The preload bridge. The only route from the UI to the filesystem. */
    readonly sc: ScApi;
  }
}
