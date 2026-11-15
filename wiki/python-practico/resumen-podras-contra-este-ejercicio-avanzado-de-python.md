# Resumen: ¿Podrás contra este ejercicio AVANZADO de PYTHON? 🐉🤺

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-11-23-podras-contra-este-ejercicio-avanzado-de-python.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «payton»→Python, «rip gsv»→read_csv, «pazo relativo/plazo»→path relativo, «de matt groening»→matplotlib, «pipe plot»→pyplot, «matt plot de lib»→matplotlib lib, «magcloud»→NumPy, «bandas»→pandas, «remake»→rename, «salar/salar y/sal lari/sanar/salari»→salary, «yerli»→yearly, «el eje»→la serie/columna, «script»→split, «mun pie/nun»→NumPy, «min»→mean, «block/ley»→pandas, «short by/short values/y punto short values»→sort_values, «lock/block»→loc, «str contains/stream contains»→str.contains, «red.es skype/re(dot)escape»→re.escape, «célula»→celda, «crack/ix axis»→gca/get xaxis, «set mayor fort matters»→set_major_formatter, «carnet»→kernel, «seaborn/seabourn»→seaborn, «cover flow»→StackOverflow) — https://www.youtube.com/watch?v=ckjUa76F9Vg — Dimas, 2021-11-23. Parte de su curso de Python para data science; el título clickbait («ejercicio avanzado») es en realidad un ejercicio guiado de pandas de dificultad intermedia.

## El ejercicio: salario medio por lenguaje con la encuesta de StackOverflow

En Jupyter Notebook (creación del `.ipynb` en VS Code, selección de kernel, `shift+enter`, `clear output`), sobre dos CSV de la encuesta de desarrolladores de StackOverflow (~85 000 respuestas + esquema con 48 preguntas):

- **Carga con contexto**: `pd.read_csv` con `index_col='ResponseId'` para reusar la columna identificadora como índice en vez del numérico automático.
- **Limpieza**: `rename` con diccionario (¡pasando explícitamente `columns=`!) e `inplace=True`; `dropna(subset=['salary','languages'])` elimina la fila entera solo si hay NaN en esas columnas → de 85 000 a ~46 700 filas con sueldo numérico; recorte de extremos no realistas con un filtro (sueldo anual en USD entre 10 000 y 3 000 000 — el caso curioso: alguien que cobra 45 M y programa «en papel»); `loc` para quedarse con `Country/Salary/Languages` y `sort_values`.
- **Valores únicos**: las respuestas traen lenguajes separados por `;` (la barra `/` indica un pack equivalente, ej. HTML/CSS); bucle anidado con `split(';')` + constructor `set()` para deduplicar — alternativa comentada: `nunique` de pandas.
- **Cálculo por lenguaje**: DataFrame de medias con índice = lista de lenguajes y columna inicializada a ceros vía `np.zeros`; para cada lenguaje, máscara con `str.contains` sobre la columna de lenguajes, `loc[mascara]['salary'].mean()` y asignación al DataFrame de resultados.
- **Peculiaridad real del dataset**: `C++` rompe `str.contains` (los `+` son metacaracteres); solución con `re.escape()` del módulo estándar y `try/except` genérico dentro del bucle para detectar qué lenguajes fallan — demostración útil de depuración iterativa.
- **Visualización**: gráfico de barras horizontales (`barh`) con matplotlib estilo seaborn, ordenado de mayor a menor salario medio, con `axvline` de la media global (roja, discontinua) para separar lenguajes sobre/debajo de la media, formateo del eje X con símbolo `$` (`set_major_formatter`), título y etiquetas.

## Las dos conclusiones del canal

1. **Interpretación del gráfico**: los salarios medios más altos (COBOL, F#, Julia, Elixir, Crystal…) reflejan escasez de oferta profesional, no una recomendación para empezar — nadie contrata un primer empleo en esos lenguajes. La «zona sana» para quien comienza es la banda de demanda alta con oferta abundante (donde sitúa R, JavaScript, Python).
2. **Comunicación**: quien paga (jefes/clientes no técnicos) no lee código ni estadística; el deber del analista es traducir el análisis en gráficos claros y presentables — la representación de datos es parte del trabajo, no un adorno.

## Dónde encaja en la wiki

Tercera fuente del hilo de análisis de datos del dominio: el flujo cargar → limpiar (rename/dropna/filtros de extremos) → agregar → visualizar es el mismo trabajo que [[duckdb]] permite hacer en SQL y que [[polars]] ejecuta más rápido que pandas en datasets grandes; el método aquí es el punto de partida pedagógico con pandas puro. El mensaje de comunicación con no técnicos conecta con [[automatizacion-con-python]] (el reporte como producto vendible) y [[micro-saas-con-python]].

---

**Ver también**: [[duckdb]] · [[polars]] · [[automatizacion-con-python]].
