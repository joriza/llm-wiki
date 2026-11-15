# Resumen: Extrayendo datos de Mercado Libre con Python | Web Scraping PARTE 8

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-07-07-extrayendo-datos-de-mercado-libre-con-python-web-scraping-parte-8.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «webs crafting/scripting»→web scraping, «ayten»→Item, «de kroll spider»→CrawlSpider, «history yankee»→USER_AGENT, «close spider page cam/count»→CLOSESPIDER_PAGECOUNT, «la web domains»→allowed_domains, «las ms guión»→/MCO- (patrón de URL), «su guión desde»→_Since_37 (paginación), «link extracto»→LinkExtractor, «pars aytem»→parse_item, «x paz»→XPath, «map compose»→MapCompose, «scrap y»→Scrapy, «biutiful sub»→BeautifulSoup) — https://www.youtube.com/watch?v=6VRKj8KTKm0 — Leonardo Kuffo, 2020-07-07 (28:13). Nota: clase 8 del curso de scraping del canal (fragmento promocional).

## Extracción vertical + horizontal con Scrapy CrawlSpider

Objetivo: scrape el listado paginado de mascotas de Mercado Libre (~5.500 resultados) yendo **horizontalmente** por las páginas de paginación y **verticalmente** al detalle de cada producto; los datos (título, precio, descripción) se extraen solo en la vertical [00:00-02:10]. Contraste directo con la clase anterior ( scraping de una sola página).

## Configuración del spider

`Item` `Articulo` con 3 campos; spider que hereda de **CrawlSpider** (no Spider) [02:10-03:23]. Custom settings clave: `USER_AGENT` (evitar banners anti-bot), `CLOSESPIDER_PAGECOUNT = 20` (corte automático tras 20 páginas — no arrastrar los 5.500 resultados), `DOWNLOAD_DELAY = 1` (1 s entre requests, cortesía al servidor) [03:23-05:08]. `allowed_domains` lista los dominios permitidos (listado y artículo de mercadolibre.com.co): restringe el espectro para que el crawler no se escape a páginas externas por publicidad o links [05:08-06:33].

## Rules: detectar patrones de URL

Cada regla se construye inspeccionando varias URLs hasta hallar el patrón que se repite [07:07-09:45]:
- **Regla de paginación**: patrón de la URL de listados (…`_Since_`+número), `LinkExtractor` con regex, `follow=True`, **sin callback** — esas páginas solo sirven para seguir navegando.
- **Regla de detalle**: patrón común de los productos (…`MCO-`+número), `follow=True` + `callback='parse_item'` — aquí sí se extrae.
Las reglas se aplican en cada página visitada, no solo en la semilla; Scrapy no re-visita URLs idénticas ya recorridas, lo que evita ciclos de paginación (página 3 enlaza a la 2, etc.) [13:10-15:42].

## parse_item y limpieza

Una página de detalle = un ítem: se instancia `ArticuloLoader` con `response` (árbol completo, sin iteraciones) y se llenan los campos con XPath únicos — título en `<h1>`, descripción en el `<p>` hijo del `<div class="ui-pdp-description…">`, precio en el `<span class="price-tag-fraction">` (elegir la clase realmente única) [15:42-19:46]. Errores reales de la demo: olvidar `/text()` en el XPath del precio (sale el tag completo) y saltos de línea/tabulaciones en título y descripción — se corrigen con `MapCompose(limpiar_texto)`, una función que hace `replace('\n'/'\r'/'\t', ' ')` + `strip()` [20:28-24:24]. Resultado: 23 ítems para un límite de 20, porque Scrapy hace requests **concurrentes** y sobrepasa el corte [25:02-25:43].

## Dónde encaja en la wiki

Segunda fuente Scrapy del dominio y primera con **crawl spider**: completa la progresión de scraping — flujo manual requests+BeautifulSoup ([[resumen-como-hacer-web-scraping-con-python]], [[resumen-videotutorial-18-taller-practico-introduccion-al-web-scraping]]) → crawlers con reglas de URL y paginación aquí. El DOWNLOAD_DELAY y el USER_AGENT conectan con la ética de scraping de la fuente 18 (GET público, no saturar servidores) y la salida CSV puede alimentar a [[polars]]/[[duckdb]].

---

**Ver también**: [[resumen-como-hacer-web-scraping-con-python]] · [[resumen-videotutorial-18-taller-practico-introduccion-al-web-scraping]] · [[polars]] · [[duckdb]].
