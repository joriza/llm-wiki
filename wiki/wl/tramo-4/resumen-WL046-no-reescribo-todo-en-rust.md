# Resumen: ¿Por qué NO reescribo todo en Rust? (aunque la IA escriba el código por mí)

- **Fuente original**: `raw/wl/tramo-4/2026-11-13-por-que-no-reescribo-todo-en-rust-aunque-la-ia-escriba-el-codigo-por-mi.md` (WL-46, tramo 4 — descargada como cabeza de la lista curada)
- **URL**: https://www.youtube.com/watch?v=7hkKvzsVuu8
- **Canal**: Fazt Code
- **Publicado**: 2026-11-13 · **Duración**: 18:59 · **Idioma**: es (subtítulos automáticos, transcripción literal)
- Nota: el título del listing era «Bun AOT: TypeScript se acerca a Go… ¿entonces para qué Rust?» — el video es una continuación de su análisis de los «hackeos de octubre» (Linux, Node, PHP) y la pregunta del público sobre reescribir todo en Rust.

## Tesis central

Rust es más rápido y seguro, pero la reescritura total rara vez vale la pena: el rendimiento depende de lo que «viaja» con el código (GC, intérprete, JIT — no del destino a código máquina), el cuello de botella típico no está en el lenguaje, y el ecosistema de SDKs sigue naciendo en lenguajes de alto nivel. Con la IA escribiendo código, la ergonomía pesa menos y la compilación AOT cambia el tablero: **TypeScript con AOT se acerca a Go** (no a Rust).

## El mapa técnico (explicación por capas)

- Tres filas de lenguajes: C/C++/Rust → máquina directa (compilador decide todo antes); Go/Java/C# → máquina + GC embebido; JS/Python/Ruby → máquina + GC + intérprete + JIT en caliente. «Cada ayuda te quita trabajo pero cuesta memoria y CPU» — JS consume más que Go, Go más que Rust, no por peor lenguaje sino por lo que lleva encima.
- **Bun AOT**: Bun (Jarred Sumor/«Jared» según ASR — creador de Bun; OpenCode y Claude Code —«Cloud Code» ASR— corren sobre Bun) incorpora un flag AOT que compila TypeScript directamente a código máquina sin JIT. Consecuencias: (1) los tipos de TypeScript dejan de ser ficción de transpilación y **llegan al compilador** — `strict` sin `any` pasa de documentación a optimización (los `any`/casts/JSON.parse generan chequeos runtime y pierden la ganancia); (2) mejora de arranque medible en proyectos reales.
- **Por qué se acerca a Go y no a Rust**: (1) sigue teniendo GC; (2) modelo de datos — arrays de punteros a objetos sueltos vs memoria lineal (float64array existe pero destruye ergonomía — «y aunque en la era IA la ergonomía quizás ya no importa, puede ser punto a favor de TS»); (3) precisión numérica — solo `number` (f64) vs u8/u32/i64.
- **Las 4 razones contra la reescritura total**: (1) años de bugs corregidos y «lógica que nadie recuerda por qué existe» se pierden en la traducción por IA; (2) el cuello de botella web casi nunca es el lenguaje (endpoint de 80 ms con 75 ms de Postgres — reescribir ahorra ~5); (3) ecosistema: los SDKs/integraciones nuevas no salen para Rust — mantener tus propios ports es perder las validaciones y el conocimiento acumulado de la librería (analogía criptográfica: no inventes tu algoritmo aunque la IA te lo genere); (4) cuesta encontrar equipo que conozca el lenguaje — «vi-coding» para uno mismo vs producto real con otros.
- **Cuándo Rust SÍ**: CPU intensivo (parsers, compiladores, cripto); latencia predecible sin pausas de GC (trading, audio, juegos realtime); manejo de memoria como costo dominante a escala. **Ejemplo de la semana**: Anthropic migró *un servicio* crítico de Python a Rust con «Fable 5.2» (ASR) y arranca 26× más rápido — servicio puntual, no el backend entero.
- Cierre fino: C++ no puede recibir un borrow checker sin romper compatibilidad — se reescribe en Rust «no por seguro y ya, sino porque lenguaje nuevo + compilador nuevo = diseño nuevo»; la reescritura funciona como validación (el compilador saca errores que no veías). El día que TypeScript tenga ownership/borrow checker «dejará de correr en npm, y esa sería toda su ventaja».

## Notas críticas

- Divulgación técnica sólida con dial correcta (GC/JIT/AOT/borrow checker bien explicados para audiencia hispanohablante); patrocinio de Coursera (especialización IA-agents: LangChain, LangGraph, CrewAI, MCP) al inicio — declarado como tal.
- Nombres propios garuñados por ASR a verificar: «Jarred/Jared» (Jarred Sumner, creador de Bun), «Open Cloud» (Claude Code), «Fable 5.2» y «Mythos 5.2»-family (los modelos 2026 del ecosistema narrativo del canal), «MSP» (MCP), «PM/PM» (npm/npx), «BAAI» en el patrocinio.
- La noticia Anthropic→Rust 26× es claim del emisor sin cita — registrar para consolidación.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** (compiladores/lenguajes/rendimiento — clúster Rust de WL-14/26).
- **WL-14 y WL-26 (Rust)**: continúa directamente el clúster Rust ↔ roadmap; y el dato «OpenCode corre sobre Bun» actualiza el clúster agentes-de-codigo ([[deepseek-harness]] familia).
- **WL-31/WL-45**: tercera voz en el debate «¿qué hay que saber programando en la era IA?» — aquí la IA escribe el código pero las decisiones de lenguaje/arquitectura/equipo siguen siendo humanas.
- Tema-candidato: **TypeScript-AOT vs Go vs Rust** (nueva línea de rendimiento 2026) — primera fuente del tema en la wiki.
