# Resumen: Cómo hacer WEB SCRAPING con Python

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2018-09-25-como-hacer-web-scraping-con-python.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «rick est»→requests, «jordi full sur»→BeautifulSoup, «bandas/bandas son/bandas data frame»→pandas, «believe el psuv»→BeautifulSoup, «paisa --equipos»→BeautifulSoup, «díaz»→diario AS, «fortich»→for-each, «psv/psv csv»→CSV) — https://www.youtube.com/watch?v=rhnMvvmfBFI — Errodringer, 2018-09-25 (11:55). Nota: el título del video dice «2020» pero la fecha de publicación del canal es 2018 (los metadatos mandan).

## El flujo básico en tres librerías

Scraping de la clasificación de LaLiga del diario **AS** como ejemplo. Pipeline clásico de 2018: **requests** descarga el HTML (`requests.get(url)`, el contenido en `.content`) → **BeautifulSoup** lo parsea (`html.parser`) para navegar el árbol → **pandas** organiza el resultado y lo exporta [00:43-03:04]. La instalación es por separado con pip (Python 3.7).

## Localizar elementos: inspeccionar y filtrar por clase

El paso de análisis es manual: clic derecho → inspeccionar elemento para descubrir la estructura (los nombres de equipo viven en etiquetas `<span class="nombre-equipo">`). En BeautifulSoup: `soup.find_all('span', class_='nombre-equipo')` y, por cada resultado, `.text` para quedarse con el texto limpio [03:04-05:20].

## El detalle práctico: descartar duplicados

La página repite los elementos (la misma clase aparece en varias secciones), así que la lista cruda trae cada equipo varias veces. Solución pragmática del video: un contador en el bucle que agrega solo los **primeros 20** resultados [05:20-06:59]. Mismo procedimiento para los puntos (`<td class="destacado">`); aquí no hizo falta filtro porque esa clase solo aparece en la columna deseada [06:59-08:38].

## Del scraping al dato estructurado

Los dos listados (equipos + puntos) se convierten en un **DataFrame** de pandas desde un diccionario `{nombre: [...], puntos: [...]}`, con índice explícito 1-20 (`range(1,21)`) para respetar la posición de clasificación, y exportación final a **CSV** (`to_csv`, sin índice extra) [08:38-11:03]. El canal cierra con ideas de práctica: precios de productos de Amazon como caso útil.

## Dónde encaja en la wiki

Es la fuente más elemental del dominio sobre scraping: el flujo requests+BeautifulSoup+pandas es el punto de partida que [[playwright]] (extracción de sitios con login/JS) y el pipeline de [[automatizacion-con-python]] superan para casos modernos; la etapa final DataFrame→CSV conecta con [[polars]] y [[duckdb]] como consumidores siguientes de esos datos.

---

**Ver también**: [[playwright]] · [[automatizacion-con-python]] · [[polars]] · [[duckdb]].
