# Trading y análisis cuantitativo con Python

- **Tipo**: página de concepto (transversal al dominio `python-practico/`).
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes que la alimentan**: [[resumen-como-crear-un-porfolio-de-criptomonedas-en-python]] · [[resumen-trading-con-python-1-indicadores-de-analisis-tecnico]] · [[resumen-como-analizar-empresas-usando-python-tutorial-quantstats]].

## El corpus fija tres niveles de sofisticación

1. **Cálculo manual sobre pandas** (porfolio cripto, 2021): bandas de Bollinger con `rolling(20).mean()/std()` ±2·std, señales de compra/venta con `apply`+lambda, dashboard interactivo con Dash+Plotly. Nota honesta de la fuente: banda estrecha indica cambio de régimen, no dirección.
2. **Librería de indicadores** (TA-Lib, 2021): +200 indicadores precalculados (BBANDS, RSI validado contra TradingView), serie con yfinance, entorno científico Anaconda/Spyder de época (Python 3.6 fijo, TA-Lib por Wheels).
3. **Reporte cuant automático** (QuantStats, 2021): una llamada genera el informe completo — retornos acumulados, escala logarítmica, volatilidad vs S&P 500, peores drawdowns, retornos por año/mes, heatmap de estacionalidad.

## Continuidad del hilo

Todos usan **yfinance** como fuente de datos OHLCV; la progresión manual→librería→reporte paralela a la de cualquier dominio técnico. El contraste didáctico útil: Bollinger calculado a mano (fuente 1) vs `BBANDS` de TA-Lib (fuente 2) vs las mismas métricas dentro de un reporte completo (fuente 3) — el mismo concepto visto a tres niveles de abstracción.

## Lagunas y precauciones

- Ninguna fuente cubre backtesting riguroso ni gestión de riesgo (el vídeo de bots de trading queda mencionado pero no procesado).
- Las cifras de rendimiento exhibidas (mejor año +743 %) son retrospectivas de activo único: sesgo de superviviente, no estrategia.
- El hilo conecta con [[polars]]/[[duckdb]] (alternativas modernas a pandas para los cálculos) y con [[resumen-la-estrategia-de-python-para-freelance-millonaria]] (el análisis cuant como servicio freelance).
