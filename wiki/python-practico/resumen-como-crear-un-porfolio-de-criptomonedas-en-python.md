# Resumen: Cómo crear un porfolio de criptomonedas en Python fácil con una estrategia de compra venta

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-06-08-como-crear-un-porfolio-de-criptomonedas-en-python-facil-con-una-estrategia-de-co.md` (video en español, subtítulos **manuales** — sin garbiñeos de ASR) — https://www.youtube.com/watch?v=xs6eiVPbCNQ — Argonauta digital, 2021-06-08 (35:59). Nota: el autor se declara no financiero («perdonad si cometo algún error»); orientado al trading algorítmico como ejercicio técnico.

## Stack: datos de Yahoo Finance en un DataFrame

Notebook de Jupyter Lab en un venv (dependencias luego exportables a requirements.txt) [00:58-02:39]. **yfinance** conecta con la API de Yahoo Finance: `ticker('ETH-EUR')` + `.history(interval='1d', start=…, end=…)` trae OHLC directo a un DataFrame de pandas; el precio de cierre es la base de todo el análisis [02:39-08:07]. Resto del stack: **Plotly** (con extensión de Jupyter Lab fijada a la 4.14.3) y **Dash** para el dashboard web, más matplotlib y numpy [03:22-05:54].

## Bandas de Bollinger

Indicador técnico simple: sobre una ventana de 20 días y multiplicador 2, banda superior = media móvil + 2·desviación estándar, banda inferior = media − 2·std, calculadas sobre `Close` con `df['Close'].rolling(period).mean()/std()` [08:07-12:12]. Los NaN iniciales son esperables: los primeros 19 días no completan la ventana. Regla de trading: cierre por encima de la banda superior → señal de venta; por debajo de la inferior → señal de compra. Primera visualización con matplotlib para validar el concepto [12:12-13:43].

## Señales de compra/venta con apply + lambda

Dos funciones (`sell_func`/`buy_func`) devuelven el precio de cierre solo si se cumple la condición (cierre ≥ banda superior / ≤ banda inferior) y NaN en caso contrario; se aplican por fila con `df.apply(lambda row: …, axis=1)` creando columnas `vender`/`comprar` [13:43-17:14]. Los NaN no se pintan: el scatter solo muestra los puntos con señal — truco limpio para marcar eventos dispersos.

## Dashboard con Dash (basado en Flask)

Dash usa componentes core que envuelven HTML de alto nivel (`html.Div`, `html.H1`) y `dcc.Graph` para el plot; el layout es un div con título + figura [18:05-22:20]. `app.run_server(debug=False)` con nota práctica: en Jupyter hace falta `use_reloader=False`; en script puro el reloader funciona por defecto. La figura se construye con `px.line` (precio de cierre) y se enriquece con `add_scatter` para cada banda y cada señal (markers con `mode='markers'` — error didáctico: sin ese parámetro Plotly pinta líneas; markers con dict de color RGBA y símbolo triángulo-arriba rojo para compra, triángulo-abajo verde para venta) [22:20-33:03]. Resultado interactivo (zoom, pan, captura) con señales visibles que coinciden con mínimos reales del período [33:03-34:38]. Nota honesta: cuando las bandas se estrechan solo indica cambio potencial, no dirección.

## Dónde encaja en la wiki

Fusión de tres hilos del dominio: pandas aplicado ([[resumen-podras-contra-este-ejercicio-avanzado-de-python]] — rolling/apply/lambda en vez de groupby), consumo de API ([[resumen-taller-consumir-apis-con-python-poke-api]] — yfinance como wrapper de datos) y Flask ([[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]] — Dash explícitamente basado en Flask, run_server con debug/reloader análogo a app.run). Es la primera fuente de trading/finanzas cuantitativas del dominio; el concepto de ventana móvil conecta con duckdb/polars como motores alternativos de análisis ([[duckdb]], [[polars]]).

---

**Ver también**: [[resumen-podras-contra-este-ejercicio-avanzado-de-python]] · [[resumen-taller-consumir-apis-con-python-poke-api]] · [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]] · [[duckdb]] · [[polars]].
