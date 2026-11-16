# Web scraping con Python

- **Tipo**: página de concepto (transversal al dominio `python-practico/`).
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes que la alimentan**: [[resumen-como-hacer-web-scraping-con-python]] (BeautifulSoup) · [[resumen-videotutorial-18-taller-practico-introduccion-al-web-scraping]] (regex, taller) · [[resumen-extrayendo-datos-de-mercado-libre-con-python-web-scraping-parte-8]] (Scrapy CrawlSpider).

## Las tres herramientas del corpus, por escala

1. **`requests` + regex** (taller 18, 2020): la forma mínima — pedir el HTML y extraer patrones con expresiones regulares. Sirve para entender qué es el scraping; frágil ante cualquier cambio de formato.
2. **`requests` + BeautifulSoup** (Cancino): parseo del DOM con selectores; el estándar didáctico para páginas estáticas puntuales.
3. **Scrapy con `CrawlSpider`** (Kuffo, Mercado Libre): framework completo — araña con reglas de enlace (`LinkExtractor`) que **pagina automáticamente** por patrones de URL, exporta a JSON/CSV y separa extracción de pipeline. El corpus lo presenta como el paso a scraping serio (múltiples páginas, volumen).

## Hilo con el resto de la wiki

- El scraping es la **fuente de datos** del pipeline de [[automatizacion-con-python]]: los datos extraídos entran a [[polars]]/[[duckdb]] para análisis (ejemplo del corpus: scraping → dataset → ejercicio pandas de la encuesta StackOverflow).
- Contraste ético/legal tocado de paso en las fuentes (respetar robots.txt y términos de servicio); sin desarrollo profundo — laguna abierta del dominio.
- `playwright` (entidad de la wiki, fuera de este lote) cubre la parte que las tres fuentes no tocan: páginas dinámicas con JavaScript.


## Ver también

- [[automatizacion-con-python]]
