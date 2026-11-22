# TMP01-010 — Gemopus: Gemma 4 ajustada al estilo de Claude Opus (Decrypt)

- **Fuente**: [Artículo web — Decrypt (versión ES)](https://decrypt.co/es/364362/gemopus-gemma-4-google-claude-opus-modelo-local-iphone), ~11/2026.
- **Dominio**: `ia-local/` — fine-tunes comunitarios sobre modelos abiertos, destilación de estilo y rendimiento edge (banco de pruebas del corpus).

## Qué es

**Gemopus**, del desarrollador **Jackrong** (creador de Qwopus), una familia de modelos ajustados «al estilo de Claude Opus» construidos íntegramente sobre **Gemma 4** (código abierto de Google, lanzado el 2 de abril). Dos variantes:

- **Gemopus-4-26B-A4B**: MoE de 26.000 M de parámetros totales con ~4.000 M activos por inferencia — rinde por encima de su peso en hardware limitado; contexto nativo 131K, 524K con YaRN.
- **Gemopus-4-E4B**: edge, 4.000 M de parámetros, corre en un iPhone moderno o MacBook ultradelgado sin GPU.

## La filosofía (lo que lo diferencia)

Jackrong **no forzó las trazas de razonamiento en cadena de Claude en los pesos** de Gemma (el atajo habitual de los fine-tunes «estilo Opus»). Su argumento, respaldado por investigaciones recientes: llenar un modelo estudiante con el texto de razonamiento superficial del maestro enseña **imitación, no lógica**. «Estability first»: los modelos Gemma tienden a volverse inestables si se les fuerzan trazas de thinking de Claude (constatado en otros fine-tunes de Hugging Face). Sacrificio consciente: no se siente tan «Opus-brained» como Qwopus.

## Benchmarks (Kyle Hessling, independientes, en la model card)

- 26B: veredicto favorable («excelente fine-tune de un modelo ya excepcional»); needle-in-haystack «aplastado» hasta 524K.
- E4B: pasó 14 pruebas de competencia central (instrucciones, código, matemática, razonamiento multi-paso, traducción, seguridad) y 12 de contexto largo a 30K/60K; 13 en NIAH.
- Velocidad edge: **45-60 tok/s en iPhone 17 Pro Max; 90-120 tok/s en MacBook Air M3/M4 vía MLX**; el MoE descarga bien en memoria unificada o GPUs de consumo.

## Disponibilidad y límites

- Ambos en **GGUF**, plug-and-play en LM Studio y llama.cpp; código de entrenamiento y guía de fine-tune en el GitHub de Jackrong (mismo pipeline que Qwopus).
- Debilidades declaradas: **tool calling problemático en toda la serie Gemma 4** (fallos, bucles, incompatibilidades de formato) — no apto aún para flujos agénticos con herramientas; entrenar sobre Gemma es más delicado que sobre Qwen (fluctuaciones de pérdida, sensibilidad a hiperparámetros — reconocido por el propio autor).
- Proyecto comunitario afín a seguir: **Ornstein** (DJLougen), misma base Gemma 4 26B enfocada en razonamiento.

## Señalado

- Cobertura de lanzamiento comunitario basada en benchmarks autopublicados en la model card (Hessling) y reportes del propio autor — no auditoría externa; cifras de velocidad declaradas, no medidas por el medio.
- Título sensacionalista del índice («Alguien logró que también pensara como Claude Opus»): la nota misma desmiente el exceso (imitación de estilo, no replicación).

## Cruces

- Hilo central de ia-local: fine-tunes comunitarios sobre familias abiertas ([[inferencia-local]], [[llama-cpp]], LM Studio), con paralelo directo a la línea Qwen ([[qwen]]); debate de fondo: destilación de estilo vs. capacidad (imitación ≠ lógica) — conectable con ia-critica-y-fronteras.
- TMP01-002/003 del mismo tramo: la comunidad abierta como contrapeso de las salvaguardas unilaterales de los modelos premium.
