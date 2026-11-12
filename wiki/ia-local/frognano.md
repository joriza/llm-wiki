# FrogNano

- **Tipo**: página de entidad (modelo).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuente 52).
- **Fuentes**: [[resumen-frognano-4b-es-realmente-mejor-que-qwen-3-5-original]] (Nichonauta, 2026-10-02).

**FrogNano 4B** (v2609): fine-tune de Microsoft sobre **Qwen 3.5 4B**, «propósito general: lenguaje, razonamiento, codificación, agentes, multimodal». Ficha sin benchmarks ni comparativas (solo texto generado por IA). Cuantización probada: **Q4_K_M + mmproj de [[ia-uso-practico/bartowski]]**; conserva **MTP** (muchos fine-tunes lo pierden).

## Resultados de las pruebas (vs Qwen 3.5 4B original)

| Test | Resultado |
|------|-----------|
| Visión (describir imagen) | Funciona; **redacción más robótica** (dice «Windows 11» siendo 10) |
| Tetris (con reasoning) | Igual al original — «literalmente el mismo juego» |
| Iteración cyberpunk | **No mejora**: rompe el juego; «corrige» sin indicar fallos → sigue roto |
| Asteroids (sin reasoning) | **Mejora puntual**: código sólido, uno de los pocos fine-tunes que «no funciona peor» |

**Veredicto**: «no pinta mal ni bien» — similar al original, pierde naturalidad en redacción (típico de entrenamiento con datos sintéticos), MTP bien integrado. Opción interesante para tareas puntuales; **no reemplaza al original**. El día a día dirá si mejora en contextos largos/razonamiento/agéntico.

## Cruces

[[qwen]] (base) · [[llama-cpp]] · [[gemma-4]] (contraejemplo: fine-tune QAT que sí mejora) · [[ornith]] (otro fine-tune, con mejor suerte).
