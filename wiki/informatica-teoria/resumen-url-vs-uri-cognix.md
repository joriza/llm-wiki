# Resumen: URL vs URI — la diferencia que confunde a casi todos los programadores

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-10-01-url-vs-uri-la-diferencia-que-confunde-a-casi-todos-los-programadores.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=nmWRGw7qSd4 — Cognix, 2026-10-01 (06:10).
- **Nota**: fuente 18/20 del lote informatica-teoria; segunda fuente del canal Cognix en la wiki (la primera fue la serie de lenguajes en historia-informatica). Video breve y didáctico. Sin enlaces cruzados todavía (consolidación aplazada).

## La confusión y la relación de contención

URL y URI se usan casi como sinónimos — hasta la documentación oficial de muchas herramientas los mezcla. La forma más fácil de entenderlo: **URI es el concepto más amplio y URL es un tipo particular de URI**.

- **URI** (*Uniform Resource Identifier*): su trabajo es simplemente **identificar** un recurso — que puede ser una página web, una imagen, un endpoint de API, un archivo, una dirección de email o cualquier otra cosa. El estándar que lo define, **RFC 3986**, es claro: «un recurso es cualquier cosa que pueda ser identificada».
- **URL** (*Uniform Resource Locator*): va un paso más allá — dice **dónde está el recurso y cómo accederlo**: qué protocolo usar (HTTP/HTTPS), qué servidor conectar y qué recurso dentro de ese servidor.

Como una URL identifica un recurso, también es una URI: **toda URL es una URI, pero no toda URI es una URL**.

## URN: identificar por nombre, no por ubicación

Analogías del video: el **ISBN** de un libro identifica ese libro concreto pero no le dice a tu computadora dónde está ni cómo obtenerlo por red — como el número de documento de una persona: te dice quién es, no dónde vive. Eso es un **URN** (*Uniform Resource Name*): un **nombre permanente que no cambia aunque el recurso se mueva**; ejemplo clásico: `urn:isbn:` + número del libro.

Esquema mental: URI es la categoría general; **URL y URN son dos formas de identificar recursos** dentro de esa categoría — la URL dice dónde y cómo acceder, el URN da un nombre permanente.

## Más ejemplos cotidianos

Los links que empiezan con `mailto:` (abrir el email) o `tel:` (llamar por teléfono) también son URIs; igual que las direcciones con esquema `file` (archivos locales) o `ftp` (transferencia de archivos). Todos siguen el mismo esquema general de identificación aunque no todos apuntan a un sitio web.

## Las partes de una URI

Un URI completo suele tener: **scheme** (el protocolo), **authority** (el servidor), **path** (apunta al recurso), **query** (los parámetros después del signo de pregunta) y **fragment** (después del numeral, apunta a una sección específica). Ejemplo con un endpoint de API de clientes: la dirección al recurso de clientes más un query param para un cliente particular — toda esa cadena es una URI y, como dice cómo localizar el recurso vía HTTP, también es una URL.

Detalle que complica: una URI **no siempre incluye una ubicación de red completa** — dentro de un sitio web se puede referenciar otro recurso con una **referencia relativa** (un path corto que el navegador completa según la página actual).

## La memoria práctica y el uso moderno

Forma de recordarlo: identidad vs. dirección de una persona — **el nombre identifica, la dirección dice dónde encontrarlo**. La URI identifica el recurso; la URL lo identifica **y** da la forma de localizarlo.

En el desarrollo web moderno se usa «URL» para casi cualquier dirección web, lo cual es normal en la conversación cotidiana — el propio estándar actual reconoce que la distinción ha perdido importancia práctica. Los navegadores tienen barras de dirección diseñadas alrededor de URLs, se habla de *URL parameters* y los frameworks de *URL routing*. Preguntar «¿cuál es la URL de esta página?» es preguntar dónde se encuentra el recurso; hablar de una URI es usar el término más amplio para identificarlo. Conclusión práctica: **en una app web o API común, las direcciones con las que trabajás son casi siempre URLs**, aunque muchas veces se las describa más genéricamente como URIs — entendida la relación de contención, la diferencia se vuelve fácil de recordar.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen. La transcripción garbiña un pasaje («also a UR») y el esquema URN («URN {colon} ISBN»); reconstruidos por contexto.
- Cruces temáticos con el mismo lote: tipos de API y endpoints (fuente 2/10, Codist) y las partes de la URL en el contexto de las signed URLs (fuente 17/20, TheDebugDuck). Segunda fuente del canal Cognix (la serie de lenguajes está en historia-informatica).
- Sin patrocinios ni autopromoción identificables.
