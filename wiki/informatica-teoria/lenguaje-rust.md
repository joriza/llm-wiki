# Rust: el lenguaje y su clúster WL

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»; completa el clúster Rust WL-14/WL-26).
- **Fuentes**: [[resumen-WL080-rust-ascensor-graydon-hoare]] (WL-80, CodingBiceps — historia), [[resumen-como-aprender-rust-si-ya-sabes-programar-roadmap-2026]] (WL-14, canal CD — el cómo) y [[resumen-rust-no-viene-a-por-python-viene-a-por-algo-peor]] (WL-26, canal CD — el por qué). En tránsito (tramo 4): [[resumen-WL046-no-reescribo-todo-en-rust]] (cuándo NO) y [[resumen-WL055-gus-lenguaje-sin-heap]] (la alternativa sin borrow checker).
- **Ver también**: [[generadores-4gl-1986-2026]] · dominio `informatica-teoria/`.

## La historia en una línea (WL-80)

Vancouver 2005: el ascensor de Graydon Hoare se cuelga por software («seemed so pathetic») — la gota, no la causa, de un lenguaje garabateado desde hace años (commit más antiguo 23/7/2006, en paralelo con arreglar la memoria de Firefox en C++). Mozilla lo adopta en 2009-2010 (Whistler: «We are not rewriting the browser. Put down the gun»), bootstrap reproducible bit a bit en 2011, Hoare deja la dirección en 2013 «quite draining», 1.0 en 2015. Crisis Mozilla 2020 → Rust Foundation 2021 (AWS/Google/Huawei/Microsoft/Mozilla) — «taking ownership» jurídico. El precedente circular: Monotone pierde → Linus escribe Git «decidedly a copy» de su estructura de datos → Git 3.0 planifica Rust obligatorio.

## Ownership: la idea central

- Cada valor tiene un dueño; solo hay un dueño a la vez; cuando el dueño sale del bloque, el valor se libera (WL-14, fase 2 — «el muro grande»). Muchos lectores o un escritor, nunca ambos; el compilador lo comprueba **en compilación, sin costo runtime** (WL-80). La concurrencia «sin miedo» es la misma regla aplicada a hilos: la carrera de datos directamente no compila (WL-14, fase 4).
- La letra pequeña declarada por las tres fuentes: el código `unsafe` queda fuera de la garantía y los fallos de lógica siguen siendo del programador. Cloudflare (18/11/2025) lo aprendió: un `unwrap()` sobre un archivo de permisos duplicado causó su peor caída desde 2019 — con post-mortem público el mismo día (WL-80); WL-26 cita la misma caída como ejemplo de que «Rust te quita una familia entera de errores y los demás siguen siendo tuyos».

## El por qué ahora: la capa de sistemas de la IA (WL-26)

- Microsoft (2019): ~70 % de las vulnerabilidades con CVE que asigna cada año son de seguridad de memoria; en Chromium, ~70 % de los fallos graves vienen del mismo sitio (WL-26; WL-80 cita a Microsoft feb 2019 y el caso Discord: el GC de Go con picos cada 2 min → Rust sin picos).
- Android/Google: memoria-vulns 76 % (2019) → 24 % (2024) con ~5 M de líneas Rust y densidad de vulnerabilidades ×1000 menor (WL-80).
- Adopción documentada: Copilot reescrito de TypeScript a Rust (~430k líneas, gran parte por agentes de IA), tokenizers y Candle de Hugging Face, uv/Ruff/Polars/tiktoken/Pydantic-core/Qdrant dentro del ecosistema Python vía PyO3 (WL-26); Firefox MP4 (0 fallos en >1 B de usos) y Stylo (160k C++ → 85k Rust) (WL-80); kernel Linux desde 6.1 (2022) — Linus «on the whole I don't hate it» + «never a panic», guerra de mantenedores 2024-2025 (Wedson renuncia, Hellwig «this cancer», Linus «YOU ARE WRONG»: nadie obligado a Rust, nadie con veto), Tokio 2025 «el experimento terminó» (WL-80); Ubuntu migrando sudo+coreutils (bug en `date` y auditoría de 44 vulnerabilidades incluidas, WL-80).
- Honestidad de las fuentes: PyTorch y llama.cpp siguen en C++ y Rust salió del top 10 de TIOBE adelantado por Go (WL-26); Hoare 2023 «The Rust I Wanted Had No Future» — triunfó por no ser el lenguaje simple que él quería (WL-80).

## El cómo: el roadmap de 4 fases (WL-14)

Rustup/Cargo → sintaxis e inmutabilidad por defecto → ownership/moves/préstamos/lifetimes (leer el error entero, `rustc --explain`, «clonar sin culpa» mientras se aprende) → `Result`/`Option`/`?`/traits/iteradores («ni un solo unwrap» en el proyecto) → concurrencia (`Arc`+`Mutex`, async con Tokio al final). Caminos por especialidad: backend (Axum), CLI (Clap/Ratatui), WebAssembly (wasm-bindgen), embebido (Embassy). Recursos gratuitos: libro oficial (traducido al español), Rust by Example, Exercism, rustlings.

## Cruces

- **WL-80 ↔ WL-14/WL-26**: mismo canal CD para el par roadmap/adopción (el roadmap cierra anunciando el video de adopción) + la crónica de WL-80 como tercera pata.
- **WL-46** (en tránsito tramo 4): «no reescribo todo en Rust» — el contrapeso pragmático al entusiasmo del clúster; con **WL-55**: Gus como alternativa al borrow checker (arenas + referencias relativas) y precedente ML de los 90.
- **WL-81** ([[reglas-cableadas-vs-programadas]]): el «primer bug de seguridad oficial del Rust del kernel» ocurrió en un bloque `unsafe` — «trust me», el día que se autoriza el paradigma se rompe; el mismo día Kroah-Hartman contó 159 vulnerabilidades en C.
- **WL-78** ([[ambiguedad-rellenada-por-el-sistema]]): el debate del kernel como ownership de decisiones humanas («nadie obligado, nadie con veto»).
- **WL-64** ([[generadores-4gl-1986-2026]]): la compatibilidad hacia atrás como activo — el contrapunto de un lenguaje que rompe compatibilidad para garantizar memoria.
- **Consolidación tramos 3-4-7 (2026-11-14)**: WL-46 y WL-55 dejaron de estar «en tránsito» (migrados a este dominio); **WL-87** añade la tercera pata de Eich — quien lanzó Rust en Mozilla es el creador de JavaScript, worse-is-better vs safety-first en la misma persona; **WL-92** aporta la cuarta fuente institucional (uutils/Rust reemplazando GNU coreutils en Microsoft/Ubuntu — «el caso institucional más grande del Rust reescribe lo heredado»), con el debate GPL-vs-MIT registrado.
