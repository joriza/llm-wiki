# WL-241 — «El software ha muerto»: la verdad detrás del post que explotó en Twitter

- **Fuente original**: `raw/wl/tramo-35/2026-10-13-el-software-ha-muerto-la-verdad-detras-del-post-que-exploto-en-twitter.md`
- **Video**: [«El software ha muerto»: la verdad detrás del post que explotó en Twitter](https://www.youtube.com/watch?v=pn-lBojduEs)
- **Canal**: Fazt · **Publicado**: 2026-10-13 · **Duración**: 13:29 · **Ingesta**: 2026-11-15 (tramo 35)

## Qué trata

Opinión del canal Fazt sobre el post viral «el software ha muerto → era del software personal», contextualizado con casos recientes:

1. **El detonante**: un post viral en Twitter sostiene que el software tradicional murió y vivimos «la era del software personal» — cualquiera pide/construye lo que necesita al momento con IA. Lo refuerza otro post: «la IA es lo suficientemente buena para hacer ingeniería inversa y mejorar casi cualquier cosa».
2. **Casos citados**: el repo **REA (Reverse Engineer Anything)**, #1 en GitHub en octubre, que da pautas y herramientas a un agente de código para decompilar programas (ejemplo: la biblioteca de juegos del PS5); y el proyecto **Arc Craft**, que en Rust ha clonado con rapidez sospechosa Photoshop, Premiere, Lightroom y la suite de Microsoft (Word, PowerPoint, Excel, AutoCAD, una DAW tipo FL Studio). El propio Fazt aclara que **no hay prueba** de ingeniería inversa en Arc Craft — es su opinión, aunque «parecen copias idénticas». Menciona la técnica **clean room / «muralla china»** (un agente decompila → especificaciones → otro agente implementa) como vía plausible histórica para copiar sin infracción directa.
3. **El fondo del debate**: el error habitual es confundir «el software» con «escribir código a mano». Ya nadie necesita escribir código manual; lo que sigue necesario es diseñar, revisar y resolver. Cita el libro **«El fin de la programación»** (CTO de InfluxData): la escritura manual y la revisión humana «están muy cerca de su extinción», con la **reescritura de Bun** como ejemplo de migración masiva hecha con modelos frontera; predice ~10 años más de código manual en organizaciones grandes (gobierno, banca) por **inercia organizacional**.
4. **Código para máquinas**: si quien lee/mantiene el código es una IA, ¿siguen aplicando los principios de clean code (escritos para humanos)? La respuesta del propio autor de Clean Code: el código desordenado también hace lentos a los agentes.
5. **Veredicto**: el software no ha muerto — cambia cómo se desarrolla. Nuance interesante: «si sos desarrollador que le vende a otros desarrolladores, sí, ese mercado está muerto» (el cliente puede generar su propia app); pero el enorme mercado no digitalizado (comercios con Excel, clínicas sin papeleo digitalizado) sigue abierto, y la barrera de entrada bajó de meses a horas.

## Observaciones de triage

- Opinión-ensayo del canal sobre una polémica de Twitter; los casos (REA, Arc Craft, Bun) se citan de segunda mano y sin enlaces — verificar en consolidación.
- Contenido con patrocinio al inicio (plataforma de despliegue con precio fijo, ~12 USD/mes por stack) — excluido de la síntesis.
- ASR con garabeos normados en este resumen: «bycoding» → vibe coding; «Sinut/Sin Out» → patrocinador; «Feibol 5» → nombre de modelo frontera (ilegible en ASR); «Cloud, Code» → Claude Code.
- Cierre autopromocional (fast.dev, asesorías) — excluido.

## Cruces (en texto plano, candidatas)

- Debate «fin del software/programación»: WL-181 (industria software/IA), WL-165 (Harness²), WL-228 (context rot), WL-214 (agentes de código).
- Técnica clean room / ingeniería inversa por agentes: candidata a concepto propio; conecta con WL-132 (crítica del hype) y WL-183 (ciberseguridad).
- Canal Fazt ya acumula varias fuentes del tramo 33 — entidad de canal candidata en consolidación.

## Dominio destino sugerido (pendiente de consolidación)

- **ia-critica-y-fronteras** o **ia-uso-practico/agentes-de-codigo** — debate sobre el efecto de los agentes de código en la profesión (primera opción: ia-critica-y-fronteras por ser el marco central del video).
