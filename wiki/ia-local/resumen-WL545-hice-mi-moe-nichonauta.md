# WL-545 — Hice mi MoE 🚀 Cómo Crear un Mezcla de Expertos LLM

- **Fuente original**: `raw/ia-local/2026-08-25-hice-mi-moe-como-crear-un-mezcla-de-expertos-llm.md` ([Vídeo](https://www.youtube.com/watch?v=aS8eLlm-vTM))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-25 · **Duración**: 07:58
- **Dominio definitivo**: ia-local (consolidación T97, 2026-11-17) (conversión de modelos)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Segunda parte del experimento del canal con **TuMoE** (proyecto con paper y repo GitHub: convertir un modelo denso en mezcla de expertos mediante poda estructural/dinámica): esta vez, intento práctico sobre **Qwen 3.5 4B** propio:

- **Objetivo distinto de la poda clásica**: no reducir tamaño, sino mantener inteligencia y tamaño exactos acelerando la inferencia (denso → MoE con ~0,9B de parámetros activos; mínimo del 4B ≈ 0,6B porque el embedding no es divisible).
- **Obstáculos documentados**: curva de aprendizaje de la herramienta; la arquitectura de Qwen 3.5 no es Transformer clásico y TuMoE no es compatible 100 % — investigación conjunta con IA (Dipsy/«QV4 Flash») sobre paper + repo + arquitectura; plan previo y resumen generado con IA; pruebas progresivas 0,8B → 2B → 4B.
- **Ingeniería de contención**: sin GPU Nvidia grande, preprocesó el modelo en archivos pequeños para que el entrenamiento no requiera el modelo completo en memoria.
- **Resultados en pantalla**: SafeTensors MoE funcional; GGUF cuantizado (cuantización típica de llama.cpp) falla — incompatibilidad con la nueva arquitectura MoE; GGUF F16 sin cuantizar carga completo: 9,1 GB de VRAM en RTX 3060 al límite (ventana de contexto reducida).
- **Cierre honesto**: «esta es una introducción» — la prueba real de calidad/velocidad y los cuantizados quedan para el siguiente video, con publicación en Hugging Face; nota de contexto: los MoE suelen perder algo de inteligencia a cambio de velocidad (ejemplo declarado: Qwen 3.6 35B MoE «menos listo» que el 27B denso); promete sumar MTP (extraído en video previo de «Agents A1») para más velocidad.

## Señales de triage

- **Registro de 1.ª mano con resultados parciales**: los fallos (GGUF cuantizado incompatible) se muestran sin maquillaje; la promesa de rendimiento («va a volar») no está medida — quedó pendiente para el video siguiente; versión de modelos (Qwen 3.5/3.6, TuMoE) de 1.ª mano pero sin citas en pantalla — señalado lo no verificado.
- ASR: «Dipsy»/«QV4 Flash» (modelos con IA de apoyo, nombres ilegibles), «Tumoy» por TuMoE, «Safe Tensors» por safetensors — normalizado solo aquí; raw intacto.
- Sin patrocinios; llamada final a like/suscribir estándar.

## Cruces

- [[inferencia-local]], [[qwen]] +1 (Qwen 3.5 4B como sujeto), [[llama-cpp]] (integración GGUF/VRAM RTX 3060), batería Nichonauta +1 (canal recurrente).
- [[percepcion-de-regresion-de-modelos]]: el trade-off MoE (velocidad ↔ inteligencia, 35B vs 27B) como ejemplo de que «más grande ≠ mejor».
- [[delegacion-cognitiva-ia]]: el flujo plan → investigación con IA → pruebas incrementales espeja la metodología ODD/SDD de la wiki (WL-450).
- MTP como pieza desacoplable ↔ WL-494 (harness/routing de modelos) y [[routing-por-coste]] (parámetros activos = coste por token).
- Precedente directo del canal en la wiki (WL-455 Granite refutado, WL-459/468): hilo de «prueba propia como criterio».

## Veredicto de triage

Útil: registro técnico honesto de un experimento en curso (conversión denso→MoE de Qwen 3.5 4B), con fallos documentados y resultados aún no medidos — señalado. Consolidación diferida (L12): [[inferencia-local]]/[[qwen]]/[[llama-cpp]], batería Nichonauta +1, posible enlace al video-siguiente cuando se ingiera.
