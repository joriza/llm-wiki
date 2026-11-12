# Wiki de conocimiento personal — patrón LLM Wiki (Karpathy)

## Estructura

- `raw/`: fuentes originales (apuntes, transcripciones, PDFs exportados a texto). **Nunca modificar los archivos de esta carpeta**: son la fuente de verdad.
- `wiki/`: páginas Markdown mantenidas por el agente. El usuario solo las consulta.
- `wiki/dominios.md`: registro vivo de dominios activos (nombre de carpeta + alcance en una línea). Consultar antes de cada ingesta.
- `index.md`: catálogo de contenido (página + resumen de una línea + dominio). Se actualiza en cada ingesta; es lo primero que el agente lee al responder.
- `log.md`: registro cronológico de solo adición, con formato `## [YYYY-MM-DD] ingesta | Título`.

La carpeta `wiki/`, `index.md` y `log.md` se crean en la primera ingesta; no existen previamente.

## Dominios (temas) — taxonomía emergente

Los dominios NO se definen de antemano: surgen de las fuentes. La lista fija de temas se sustituye por el siguiente procedimiento.

**Estado inicial**: si `wiki/dominios.md` no existe, crearlo en la primera ingesta con un único dominio `general/` (alcance: "fuentes que aún no justifican un dominio propio").

**Creación de un dominio nuevo**: procede únicamente cuando una fuente no encaje razonablemente en ningún dominio existente. Durante la ingesta, proponer al usuario el nombre de carpeta (kebab-case) y la descripción de alcance en una línea; con su confirmación, crear la carpeta en `wiki/`, registrarla en `dominios.md`, `index.md` y `log.md`, y procesar la fuente en esa misma ingesta.

**Unión y división (durante lint)**: evaluar en cada revisión: dos dominios con solapamiento creciente (proporción alta de conceptos compartidos) → proponer fusión; un dominio con más de ~30 fuentes o con subtemas claramente diferenciados → proponer división. Toda fusión o división requiere confirmación del usuario y se registra en `log.md`.

**Conceptos transversales**: los conceptos que aparezcan en varios dominios (incluidos los contactos tangenciales entre áreas distintas) se documentan en **una única página** de concepto, enlazada desde cada dominio con `[[...]]`; nunca se duplica el contenido.

## Tipos de página

- Resumen de fuente (uno por documento de `raw/`).
- Página de concepto (temas transversales; consolidan todas las fuentes que los tratan).
- Página de entidad (personas, organizaciones, herramientas, canales).
- `wiki/overview.md`: visión general de la wiki completa.
- `wiki/sintesis.md`: síntesis acumulativa del estado del conocimiento.

## Operaciones

1. **Ingesta individual** (predeterminada): leer UNA fuente de `raw/`, discutir los puntos clave con el usuario, escribir el resumen, crear/actualizar páginas de concepto y entidad afectadas, actualizar `index.md` y añadir entrada a `log.md`. Compromiso completo: la ingesta ES la compilación; no existe fase de construcción separada.
2. **Ingesta por lotes** (solo bajo orden expresa, p. ej. "ingesta por lotes de raw/"): procesar los documentos EN SECUENCIA (uno a la vez; fragmentar los largos). De cada fuente: leer, escribir resumen, actualizar `index.md` y `log.md`. **Aplazar** deliberadamente: páginas de concepto y entidad, referencias cruzadas y detección de contradicciones. Al finalizar el lote, listar en `log.md` las fuentes pendientes de consolidación.
3. **Consolidación** (tras un lote, o bajo demanda): revisar los resúmenes acumulados pendientes; crear/actualizar páginas de concepto y entidad; fusionar conceptos duplicados en páginas únicas; construir referencias cruzadas; señalar contradicciones entre fuentes; actualizar `overview.md` y `sintesis.md`; evaluar propuestas de dominios nuevos; registrar en `log.md` y hacer commit. Se recomienda ejecutarla antes de iniciar el uso intensivo por consultas.
4. **Consulta**: responder únicamente desde las páginas de `wiki/` e `index.md`. Las citas a `raw/` provienen de las páginas ya compiladas, **no** de una relectura de las fuentes. En modo consulta está prohibido: leer fuentes de `raw/` no procesadas, buscar en la web o completar con conocimiento general del modelo. Si la wiki no cubre la pregunta, declarar explícitamente la laguna y proponer la ingesta de las fuentes necesarias, sin rellenar la respuesta con material externo. Si la respuesta es valiosa y no existe como página, archivarla en la wiki para que el conocimiento se acumule.
5. **Lint** (bajo demanda o periódico): revisar contradicciones entre fuentes, páginas huérfanas sin enlaces entrantes, enlaces cruzados faltantes, páginas en el dominio equivocado y afirmaciones obsoletas. Registrar los hallazgos en `log.md`.
6. **Ingesta de playlists de YouTube**: seguir el protocolo de `protocolo-ingesta-youtube.md` (puerta mecánica global 60-90 s con sonda de salida y presupuesto por IP, dedupe pre-flight de la lista, subtítulos primero con ingesta en streaming en el modo indicado al lanzar — subagente o inline —, SKIP definitivo sin subtítulos, playbook 429 con rotación de salida, commit por fuente).

## Convenciones

- Enlaces entre páginas con sintaxis `[[nombre-pagina]]`.
- Todo resumen cita el archivo original de `raw/` del que procede.
- Transcripciones de video (YouTube): guardar en `raw/` como Markdown con metadatos (URL, canal, fecha) y marcas de tiempo `[mm:ss]` por bloque; las citas pueden referirse al momento aproximado del video. Los subtítulos automáticos se normalizan (puntuación, errores de reconocimiento) SOLO en los resúmenes, jamás en el archivo original.
- Fuentes largas: fragmentar la lectura por secciones antes de sintetizar.
- Tras cada ingesta: `git add -A && git commit` con mensaje descriptivo de la operación.
