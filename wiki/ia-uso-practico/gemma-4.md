# Gemma 4

- **Tipo**: página de entidad (modelo).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 5/58 del lote ia-local — REVISA el veredicto de la fuente 3, ver «Actualización»).
- **Fuentes**: [[resumen-gemma-4-es-mejor-que-qwen-en-codigo-y-velocidad]] · [[resumen-gemma-4-e2b-el-modelo-de-ia-mas-eficiente-para-redaccion-en-espanol]] (fuente 10 — el E2B en detalle) · [[resumen-configurar-modelos-de-ia-con-maximo-rendimiento-tutorial-en-llama-cpp]] (fuente 11 — el 12B QAT como caso de encaje) · mencionada en [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] (fuente 3) y en [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]].

**Gemma 4** es la familia de modelos abiertos de **Google**, en variantes 12B, 26B, 31B, E2B y E4B (además de la 12B base, con versión **QAT** — *quantization-aware training* — que mantiene ~99 % de calidad a 4 bits).

## Perfil (post-actualización de Google, 2026-07)

Históricamente: superior a Qwen 3.5 en **todo lo lingüístico** (redacción, traducción, ortografía, escritura creativa, idiomas) pero débil en uso de herramientas. La **actualización de Google** (plantilla del modelo corregida + **MTP añadido**) cambió el veredicto — según benchmarks del canal (Artificial Analysis, Terminal Bench, no verificados):

- Índice de inteligencia 22 vs 21 del Qwen 3.5 9B (con razonamiento).
- Terminal Bench pasó de 18 %/11 % a niveles equiparables o superiores — ya usa herramientas bien.
- En **código** ya era superior *antes*: 38 % con CoT vs 28 % del Qwen.
- **Velocidad ×3** con MTP: ~92-93 tok/s en código en una RTX 3060 12 GB, sostenidos aun con mucho contexto — consumiendo la misma memoria que el Qwen 9B (KV sin cuantizar).

Prueba práctica en [[desarrollo-con-modelos-locales]] + OpenCode: Flappy Bird funcional a la primera usando herramientas, iteraciones de estilo fluidas.

## Diferencia con Qwen en MTP

El MTP de Gemma 4 es **archivo aparte** que se añade con el flag `-md` de [[llama-cpp]]; el de Qwen 3.5/3.6 viene **incluido en el propio GGUF**.

## Historial de veredictos (para no perder la evolución)

- **Fuente 3 (2026-07-16)**: «bueno para redacción/escritura, no para herramientas ni desarrollo» — veredicto previo a la actualización.
- **Fuente 5 (2026-07-19)**: con la actualización, «mejor en lenguaje, mejor en código, ahora usa bien las herramientas y es mucho más rápido» — recomendado en todas sus variantes «mientras te quepa alguno».
- **Fuente 10 (2026-07-07, el E2B en detalle)**: variante *any-to-any* (texto + imágenes + vídeo + audio — único con audio en su tamaño) con **5,1B totales / ~2B activos para texto**; QAT → Q4 mantiene ~100 % de calidad; **en disco pesa más que el Qwen 3.5 2B pero en runtime consume casi la mitad** (3,6 vs 6,4 GB); su MTP (archivo aparte, en Q4) acelera más que el de Qwen (draft 4 en su hardware); escribe mejor en cualquier idioma, menos faltas y palabras inventadas en español, menos loops infinitos; Qwen lo supera en código (según tipo), uso de herramientas y a veces visión — Gemma para redacción/traducción/RAG, Qwen para razonamiento complejo. Anécdota del canal: vivía generando textos con Gemma 2 4B hace un año; este E2B es similar y en muchos casos superior al Gemma 2 27B de aquella generación.
