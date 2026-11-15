# Resumen: Trading con Python #1 🐍 — Indicadores de análisis técnico

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-05-03-trading-con-python-1-indicadores-de-analisis-tecnico.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «pasión/paisa/pasar/spicer»→Spyder, «payton»→Python, «talib/tea le/deal/alí»→TA-Lib, «yfinance/jeffer/defiance/jay finance»→yfinance, «mac loughlin/makled/makul/más blot/mclaughlin»→Matplotlib, «rc/r6/recibí»→RSI, «valencia metaphor hacker»→«valentine», estilo de Matplotlib, «invest pedja»→Investopedia, «pip install» en garbiñeos varios) — https://www.youtube.com/watch?v=oKpisYJ-CMw — Ronny Portillo, 2021-05-03 (35:05, video 1 de una serie de trading).

## Setup de la serie: entorno y librerías

Video de puesta a punto que instala y prueba las herramientas de la serie sobre datos reales de Apple:

- **Anaconda + Spyder**: proyecto con ambiente conda y **Python 3.6** a propósito — la librería de backtesting que usará más adelante en la serie lo requiere (nota de época: hoy sería una decisión extraña). Spyder se usa en modo «científico»: celdas inline con `# %%`, autocompletado que muestra los parámetros de cada función e inspector de DataFrames (ver como DataFrame, desglose de columnas como series).
- **TA-Lib**: librería de análisis técnico con +200 indicadores (medias móviles, RSI, bandas de Bollinger, patrones de velas); multi-lenguaje (C/C++, Java, Python). En Windows con Python < 3.9 el `pip install` normal falla: hay que instalar desde los **Wheels precompilados** del repositorio no oficial, elegidos según versión de Python y arquitectura (misma receta que ya usó Kivy en este dominio).
- **yfinance**: trae directamente a un DataFrame los precios OHLCV de acciones y cripto de Yahoo Finance (sin descargar CSV a mano, como en su video anterior); arrastra como dependencias pandas y requests.
- **Matplotlib**: estilos con `plt.style.use(...)` (usa el estilo «dark»; el nombre no tiene relación con hacking, es un theme); renderizado del `DataFrame.plot()` de pandas vía el backend de Matplotlib.

## Demostración: indicadores sobre AAPL (2019–2021)

- **Descarga**: `yf.download('AAPL', start='2019-01-01', end='2021-05-03')` → DataFrame con open/high/low/close/adj close/volume. Detalle didáctico útil: los mercados solo traen datos de días cerrados — el lunes en curso no aparece hasta el cierre; y las fechas van en formato americano YYYY-MM-DD.
- **Medias móviles**: `talib.SMA(close, timeperiod=21)` y `talib.EMA(close, timeperiod=55)`, graficadas junto al precio de cierre (azul precio, roja SMA, morada EMA). Nota de acceso a columnas: `df.close` funciona si el nombre no tiene espacios; `df['Adj Close']` exige corchetes.
- **Bandas de Bollinger**: `talib.BBANDS(close, timeperiod=20)` devuelve **tres series** (banda superior, media móvil, banda inferior) que se agregan como columnas nuevas al DataFrame original y se grafican envolviendo el precio. Teoría referenciada de Investopedia: líneas de tendencia a ±desviaciones estándar alrededor de una media móvil.
- **RSI**: `talib.RSI(close, timeperiod=14)` (14 es el período por defecto), graficado solo; validación externa en TradingView comparando nivel por nivel, con los umbrales 30 (sobreventa) y 70 (sobrecompra) coincidentes.

## Dónde encaja en la wiki

Segunda fuente de trading/finanzas del dominio después del porfolio de cripto ([[resumen-como-crear-un-porfolio-de-criptomonedas-en-python]]) — y contraste directo con ella: Argonauta digital calcula a mano las bandas de Bollinger con `rolling().mean()/std()` de pandas, aquí TA-Lib las entrega como función de biblioteca; ambos usan yfinance como fuente de datos. El ecosistema de datos (pandas, yfinance) ya cruzaba [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]] y [[automatizacion-con-python]]. Notas: setup pesado por Wheels y Python 3.6 fijado por una dependencia — señales de época 2021; la serie completa de trading del canal queda como posible fuente futura.

---

**Ver también**: [[resumen-como-crear-un-porfolio-de-criptomonedas-en-python]] · [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]] · [[automatizacion-con-python]].
