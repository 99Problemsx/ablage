/**
 * Guards against a missing or broken preload bridge.
 *
 * Every panel reaches for `window.sc`, so if the preload script fails to load the
 * first component to touch it throws during render and React unmounts the whole
 * tree — presenting as a black window with the cause only visible in devtools.
 * This turns that failure mode into a readable diagnostic.
 */

import { Component, type ErrorInfo, type ReactNode } from 'react';

export function isBridgeReady(): boolean {
  return typeof window !== 'undefined' && typeof window.sc === 'object' && window.sc !== null;
}

export function BridgeMissing(): React.JSX.Element {
  return (
    <div className="sc-fatal">
      <div className="sc-fatal-card sc-panel">
        <h1>Preload bridge unavailable</h1>
        <p>
          <code>window.sc</code> was not injected, so the editor cannot reach the
          filesystem. The preload script most likely failed to load.
        </p>
        <ul>
          <li>
            Check the terminal for a <code>[preload]</code> line — it names the failure.
          </li>
          <li>
            Confirm <code>dist-electron/preload.cjs</code> exists and is CommonJS.
            An ESM build cannot <code>require('electron')</code>.
          </li>
        </ul>
      </div>
    </div>
  );
}

interface Props {
  children: ReactNode;
}

interface State {
  error: Error | null;
  stack: string;
}

/**
 * Catches render errors anywhere below it. Without this, one throwing panel takes
 * the entire editor down; with it, the error is on screen and the rest of the app
 * can often still be used after a reload.
 */
export class ErrorBoundary extends Component<Props, State> {
  state: State = { error: null, stack: '' };

  static getDerivedStateFromError(error: Error): Partial<State> {
    return { error };
  }

  componentDidCatch(error: Error, info: ErrorInfo): void {
    // Also surface it in the terminal, which is where main forwards renderer logs.
    console.error('Editor crashed:', error, info.componentStack);
    this.setState({ stack: info.componentStack ?? '' });
  }

  render(): ReactNode {
    const { error, stack } = this.state;
    if (!error) return this.props.children;
    return (
      <div className="sc-fatal">
        <div className="sc-fatal-card sc-panel">
          <h1>Editor crashed</h1>
          <p className="sc-fatal-message">{error.message}</p>
          <pre className="sc-fatal-stack">{stack.trim() || error.stack}</pre>
          <button className="sc-btn" onClick={() => this.setState({ error: null, stack: '' })}>
            Try again
          </button>
        </div>
      </div>
    );
  }
}
