# ¿Cómo Analizar Empresas usando Python? | Tutorial QuantStats

- **Fuente**: [[../../raw/python-practico/2021-11-13-como-analizar-empresas-usando-python-tutorial-quantstats.md|2021-11-13-como-analizar-empresas-usando-python-tutorial-quantstats.md]]
- **Canal**: PythonIA
- **Publicado**: 2021-11-13
- **Dominio**: `python-practico/`
- **Tipo**: resumen de fuente (tutorial, 10 min)
- **Tema**: análisis cuantitativo de acciones con la librería **QuantStats**: reportes de rendimiento automatizados sobre datos de yfinance.

## Qué hace

Tutorial corto en Google Colab: con `pip install quantstats` se genera, en pocas líneas, un **reporte HTML completo** de rendimiento de una acción — retornos acumulados, evolución en escala logarítmica, volatilidad comparada con el benchmark (S&P 500), los cinco peores periodos de drawdown, retornos por año y por mes (mejor año de Tesla en el ejemplo: +743 %), y heatmap mensual para detectar comportamientos cíclicos.

## Flujo demostrado

1. **Extracción de datos**: descarga del histórico de precios vía la extensión de pandas que trae QuantStats (usa yfinance por debajo; en el vídeo, Tesla desde su salida a bolsa en 2010).
2. **Reporte**: `quantstats` genera el informe con una llamada; cambiar el ticker es la única modificación necesaria para analizar otra empresa.
3. **Lectura del reporte**: interpretación de retorno acumulado vs benchmark, volatilidad relativa (Tesla mucho más volátil que el S&P), drawdowns y estacionalidad mensual.

## Valor y contexto

- Tercera fuente del hilo **trading/quant** del dominio, junto a [[resumen-como-crear-un-porfolio-de-criptomonedas-en-python]] (Bollinger manuales en pandas + Dash) y [[resumen-trading-con-python-1-indicadores-de-analisis-tecnico]] (TA-Lib): QuantStats es la pieza de **análisis retrospectivo** (qué habría pasado invirtiendo), no de señales de compra/venta.
- Complementa al ejercicio pandas del dominio mostrando que las métricas cuant (retornos, volatilidad, drawdown) ya vienen calculadas por una librería especializada.
- Nota de época (2021): API de QuantStats con extensión directa sobre pandas; el vídeo cierra con promoción propia (cursos de Udemy, bots de trading) — sin patrocinios externos.

## Citas al original

Todas las afirmaciones provienen de `raw/python-practico/2021-11-13-como-analizar-empresas-usando-python-tutorial-quantstats.md` (transcripción automática; garbiñeos de ASR normalizados solo aquí; marcas de tiempo en el original).
