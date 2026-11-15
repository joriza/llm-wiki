# Resumen: Videotutorial 18 — Taller Práctico Programación con Python. Introducción al Web Scraping

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-08-30-videotutorial-18-taller-practico-programacion-con-python-introduccion-al-web-scr.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «webs craving/crafting/having/corp/grappin/rápido»→web scraping, «reyes/reik/lakers/requés»→requests, «payton»→Python, «borra/la borre»→la URL, «end point»→endpoint, «fin o bien»→findall, «chopeo/choteo/chope»→shoping/shopping (monitoreo de precios), «prising»→pricing, «cornershop»→Cornershop) — https://www.youtube.com/watch?v=77XkXOInk1k — César Cancino, 2020-08-30 (26:56). Clase 18 del taller práctico del canal (cesarcancino.com); la autopromoción del sitio queda fuera de la síntesis.

## Qué es (y qué no es) scraping

Definición técnica: ejecutar una petición **HTTP GET** a una página pública y extraer del HTML/CSS/JS renderizado solo los datos que interesan — nunca se entra al servidor ni a la base de datos ajena [01:09-02:14]. Nació asociado a técnicas de ataque, pero hoy es una técnica considerada válida y muy demandada; el uso estrella que describe el canal es el **monitoreo de precios de la competencia (pricing)** como servicio de agencias digitales: ir a las webs de otras ferreterías/retails y extraer los precios publicados para estrategias comerciales [02:14-03:45]. Ejemplos citados: indicadores financieros (divisas, dólar, euro, unidad de fomento) y el caso real de **Cornershop**, que habría hecho scraping masivo de las webs de sus proveedores para su registro de competitividad [05:38-09:09].

## El proceso en requests + expresiones regulares

Pasos del taller: (1) **identificar objetivo** — URL y el link interno exacto; (2) pelear con el código fuente para ubicar la zona (aquí un `<div class="price">`); (3) descargar y extraer [06:40-08:12]. En código:

- **requests** («HTTP para humanos», ya incluida conceptualmente en la instalación base): `requests.get(url)`; el video repasa los métodos HTTP disponibles y remarca que scraping usa GET porque son páginas públicas [10:15-13:55].
- Verificación con `response.status_code`: repaso didáctico de estados HTTP con httpstatus.com — 200 éxito, 201 creación en APIs, 3xx redirección, 4xx error del cliente (401 sin cabeceras/token, 404 no existe), 5xx error de servidor (con la nota práctica de que muchos frameworks devuelven 500 para todo en producción) [14:28-17:37].
- El scraping va dentro de `if response.status_code == 200` con un `else` que registra el fallo: en automatizaciones que leen listados, un error no debe tirar el proceso completo [18:11-19:54]. El HTML queda en `response.text`.
- Extracción con el módulo **`re`** (expresiones regulares) en vez de BeautifulSoup: patrón tomado del HTML real con el valor dinámico reemplazado por el comodín `(.+?)`, y `re.findall(patron, contenido)` en un bucle `for` que imprime cada precio [20:23-24:05].
- Limpieza final por slicing de strings: quitar el símbolo de moneda con `[1:len(precio)]`, dejando el valor listo para un reporte (el desafío del canal: exportar a Excel) [24:47-25:45]. Contexto 2020: auge del e-commerce por pandemia hace el pricing especialmente demandado [26:16].

## Dónde encaja en la wiki

Segunda fuente de scraping del dominio y contraste directo con la fuente 4 (Errodringer): mismo flujo requests → parseo → reporte, pero con **expresiones regulares** en lugar de BeautifulSoup — dos estrategias de extracción sobre el mismo pipeline, que [[playwright]] supera cuando hay login o JavaScript. El caso de uso pricing alimenta [[micro-saas-con-python]] (servicio vendible a clientes comerciales) y el paso «reporte para el cliente» conecta con [[automatizacion-con-python]].

---

**Ver también**: [[playwright]] · [[automatizacion-con-python]] · [[micro-saas-con-python]].
