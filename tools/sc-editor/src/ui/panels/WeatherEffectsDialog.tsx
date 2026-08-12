import { useEffect, useState } from 'react';

export interface WeatherEffectsValue {
  type: number;
  power: number;
  duration: number;
}

interface Props {
  value: WeatherEffectsValue;
  onCancel: () => void;
  onConfirm: (value: WeatherEffectsValue) => void;
}

const WEATHER_TYPES = ['None', 'Rain', 'Storm', 'Snow'];

export function WeatherEffectsDialog({ value, onCancel, onConfirm }: Props): React.JSX.Element {
  const [weather, setWeather] = useState(value);

  useEffect(() => {
    const onKey = (event: KeyboardEvent): void => {
      if (event.key === 'Escape') {
        event.preventDefault();
        event.stopImmediatePropagation();
        onCancel();
      }
    };
    window.addEventListener('keydown', onKey, true);
    return () => window.removeEventListener('keydown', onKey, true);
  }, [onCancel]);

  return (
    <div className="sc-command-scrim" onMouseDown={(event) => {
      event.stopPropagation();
      if (event.target === event.currentTarget) onCancel();
    }}>
      <section className="sc-modal sc-weather-dialog" role="dialog" aria-modal="true" aria-labelledby="sc-weather-title" onMouseDown={(event) => event.stopPropagation()}>
        <header className="sc-modal-head">
          <h2 id="sc-weather-title">Set Weather Effects</h2>
          <button className="sc-modal-x" onClick={onCancel} aria-label="Close">×</button>
        </header>

        <div className="sc-weather-body">
          <fieldset className="sc-fs">
            <legend>Weather</legend>
            <div className="sc-weather-types">
              {WEATHER_TYPES.map((label, type) => (
                <label key={label} className="sc-weather-type" data-active={weather.type === type}>
                  <input type="radio" name="weather-type" checked={weather.type === type} onChange={() => setWeather({ ...weather, type })} />
                  <span className="sc-weather-glyph" data-weather={type}>{type === 0 ? '○' : type === 1 ? '☂' : type === 2 ? 'ϟ' : '❄'}</span>
                  <span>{label}</span>
                </label>
              ))}
            </div>
          </fieldset>

          <label className="sc-field">Power
            <div className="sc-weather-slider">
              <input type="range" min={1} max={9} value={Math.max(1, weather.power)} disabled={weather.type === 0} onChange={(e) => setWeather({ ...weather, power: Number(e.target.value) })} />
              <input className="sc-input sc-mono sc-narrow" type="number" min={1} max={9} value={Math.max(1, weather.power)} disabled={weather.type === 0} onChange={(e) => setWeather({ ...weather, power: Math.min(9, Math.max(1, Number(e.target.value))) })} />
            </div>
          </label>

          <label className="sc-field">Transition time
            <div className="sc-weather-slider">
              <input type="range" min={0} max={200} value={weather.duration} onChange={(e) => setWeather({ ...weather, duration: Number(e.target.value) })} />
              <input className="sc-input sc-mono sc-narrow" type="number" min={0} max={9999} value={weather.duration} onChange={(e) => setWeather({ ...weather, duration: Math.max(0, Number(e.target.value)) })} />
              <span className="sc-faint">frames</span>
            </div>
          </label>
        </div>

        <footer className="sc-modal-foot">
          <span className="sc-faint">None clears the current weather.</span>
          <span style={{ flex: 1 }} />
          <button className="sc-btn" onClick={onCancel}>Cancel</button>
          <button className="sc-btn" data-active onClick={() => onConfirm({ ...weather, power: weather.type === 0 ? 0 : Math.max(1, weather.power) })}>OK</button>
        </footer>
      </section>
    </div>
  );
}
