import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import './ui/theme/theme.css';
import './ui/App.css';
import { App } from './ui/App';
import { BridgeMissing, ErrorBoundary, isBridgeReady } from './ui/components/BridgeGuard';

const container = document.getElementById('root');
if (!container) throw new Error('#root is missing from index.html');

createRoot(container).render(
  <StrictMode>
    <ErrorBoundary>{isBridgeReady() ? <App /> : <BridgeMissing />}</ErrorBoundary>
  </StrictMode>,
);
