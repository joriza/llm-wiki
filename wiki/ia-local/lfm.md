# Liquid LFM (familia 2.5)

- **Tipo**: página de entidad (modelos).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 8/58 del lote ia-local; la fuente 28 comparará el 8B-A1B).
- **Fuentes**: [[resumen-liquid-lfm-2-5-una-alternativa-potente-para-uso-agentico-y-de-texto]] · [[resumen-cree-un-modelo-moe-0-1b-ultra-rapido-incluso-en-cpu]] (fuente 22 — conversiones MoE del canal) · [[resumen-ling3-0-tiny-vs-lfm-2-5-8b-a1b-cual-es-el-mejor-modelo-de-ia-pequeno]] (fuente 23 — comparativa contra Ling 3.0 Tiny).

**Liquid LFM 2.5** es la familia de modelos de texto de Liquid, en variantes de tamaño 0.23B, 1.2B, 1.5B, **2.6B** (la probada) y **8B-A1B MoE**. GGUF oficial del propio proveedor.

## Perfil (según la prueba del 2.6B, RTX 3060 12 GB)

- **Solo texto**: sin visión, sin audio; pocos idiomas (español e inglés entre ellos, vs 200+ de Qwen/Gemma).
- Contexto: **128k literal** (128.000 exactos — ni el redondeo estándar de 131.072).
- **Sin MTP** ni especulación nativa → velocidad de salida menor que Qwen 3.5 2B / Gemma 4 E2B (que dan 130-180 tok/s en ese tamaño).
- **Procesamiento de entrada sobresaliente**: >5.000 tok/s (vs 1.000-4.000 típico).
- **Razonamiento conciso**: solo los tokens que la tarea requiere.
- **Fortaleza confirmada: uso agéntico** en OpenCode — llamadas correctas a Brave Search, Playwright (navegación a la primera), Context 7, escritura/lectura de archivos (con correcciones puntuales); 80+ tok/s sostenidos a 28k de contexto.
- **Debilidades**: código (peor que Gemma E2B y Qwen 2B en Tetris; corrección inferior a Gemma, que generaliza mejor al estar menos overfitted) y **eficiencia de VRAM**: Q8 a 128k ocupó 4,9 GB totales — Gemma E2B con visión a 131k ocupa <3 GB gracias a QAT.

## La advertencia metodológica que acompaña a la familia

Los benchmarks del proveedor están elegidos donde mejor salen parados, y las comparaciones «2.6B vs Gemma 5.1B» son trampa de contabilidad: **los parámetros totales ≠ VRAM real** (la entrada de texto de Gemma E2B son 2B) ni calidad tras QAT. Criterio: contrastar siempre con el banco de pruebas propio.

En la wiki:_peer de [[qwen]] y [[gemma-4]] en el bloque de modelos chicos; re-evaluación pendiente con el 8B-A1B (fuente 28 del playlist).

## Conversiones MoE propias del canal (fuente 22)

Nichonauta convirtió las variantes **densas** del LFM 2.5 (230M, 350M — y planea 1.2B y 2.6B) a **arquitectura MoE** manteniendo F16/safetensors completos (no LoRA), publicándolas también en GGUF (Q4_K_M, Q8, F16) en su perfil de Hugging Face. La tesis: un modelo ya eficiente + MoE (solo una parte activa) = tres capas de reducción. Números del 350M MoE en Q4_K_M: >400 tok/s en RTX 3060 (0,8 GB) y **121 tok/s en CPU puro** (Q4) / ~80 tok/s (Q8). Posicionamiento del canal: «no son ChatGPT» — bases para desarrollos y automatizaciones.

## Comparativa directa vs Ling 3.0 Tiny (fuente 23)

En el duelo de MoE chicos (~1B activo, solo texto): el LFM 2.5 8B-A1B es **más rápido** (167 vs 122 tok/s) pero **pierde en todo lo demás** contra Ling 3.0 Tiny: más VRAM (6,8 vs 5,3 GB), menos contexto (128k literal vs 131k), peor calidad (código corto sin cercado, respuesta en inglés sin sentido en una pasada), y ambos fallaron la trampa de teoría de la mente (José/pelota). En el juego completo imposible: LFM entregó errores de sintaxis; Ling generó 52k+ tokens con autocorrección sin fin — cerca del logro. Veredicto: «para prácticamente todo, Ling 3.0 Tiny es mejor».


## LFM 2.5 24B A2B (fuente 58)

La guía de [[ia-uso-practico/holamundo]] lo recomienda como **modelo de implementación de código** cuando el Qwen 3.6 35B no corre: sigue instrucciones y patrones sin desviarse. Medido en la 3060 del tutorial: 32 tok/s con offload parcial + ctx 60k + KV Q8, **183.78 tok/s con el modelo completo en VRAM (sin MTP — velocidad nativa)**, 22-26 tok/s en CPU casi puro.
