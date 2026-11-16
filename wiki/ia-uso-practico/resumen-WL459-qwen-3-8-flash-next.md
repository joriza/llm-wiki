# WL-459 — Mejor que DeepSeek V4 Pro en mi PC 🚀 Qwen 3.8 Flash Next es INCREÍBLE

- **Fuente original**: `raw/wl/tramo-76/2026-08-28-mejor-que-deepseek-v4-pro-en-mi-pc-qwen-3-8-flash-next-es-increible.md` ([Vídeo](https://www.youtube.com/watch?v=RirKlGTe9fE))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-27 · **Duración**: 09:59
- **Dominio provisional**: ia-uso-practico/ia-local (inferencia local de modelos grandes en RAM — clúster Nichonauta)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Primera prueba local del **Qwen 3.8 Flash Next** (previsualización de la arquitectura Qwen 4): MoE de ~125B «billions» totales con solo ~6B activos por token + ~51B de n-gram memory + ~4B de MTP (speculative decoding); contexto 262k expandible a 1M; con visión (mmproj). Anuncio oficial: 180B de parámetros contando todo.

## Prueba en hardware modesto

- Carga en **Q2_K_XL + mmproj**: ~74 GB; ejecutado en RAM sobre Ryzen 5 5600G con DDR4 (sin CUDA compilada al inicio): ~5 tok/s.
- Copiadas las librerías CUDA: 6,3 GB de VRAM usados; más del doble de velocidad.
- Offload selectivo: 43 capas en CPU/RAM y 4 en GPU → **13 tok/s** con 1,2 GB de VRAM libres.
- MTP: el GGUF de Unsloth no lo incluye y el MTP separado (Q4_K_M) aún no está soportado por la versión estable de llama.cpp — queda pendiente; el autor especula ~30 tok/s en Q4 cuando funcione.
- Alternativa Q3/Q4: 90-111 GB — «GPU 12 GB + 128 GB RAM cabe perfectamente».

## Tesis de benchmark (2.ª mano — señalada)

Según benchmarks externos (incl. Artificial Analysis) y del propio Alibaba: Qwen 3.8 Flash Next supera al checkpoint nuevo de **DeepSeek V4 Pro** con esfuerzo máximo — «en mi PC puedo cargar algo superior a DeepSeek V4 Pro» cuantizado, gratis, privado. Comparación también con **GLM 5.3 Flash** (WL-440): este queda 3.º de pesos abiertos vs 4.º del Qwen; GLM a 4 bits no cabe en 128 GB de RAM y su mejora «es mínima comparado con el aumento de peso». Demos de terceros citadas: dibujo del pelícano en IQ1S, demo 3D.

## Señales de triage

- Prueba de primera mano con configuración reproducible; la tesis «mejor que DeepSeek V4 Pro» es de benchmarks (y con el modelo cuantizado a 2 bits en RAM lenta) — condicional declarada pero titular optimista — señalado.
- Título clickbait; CTA excluido.

## Cruces

- Batería Nichonauta +1; [[qwen]] (+1), [[deepseek-harness]] (contrapunto con DeepSeek), [[routing-por-coste]] (RAM vs GPU vs API), [[inferencia-local]], [[llama-cpp]], WL-440 (GLM 5.3 Flash — comparación directa), WL-428/431/432/434/436 (batería anterior), WL-455 (Granite refutado — misma metodología).

## Veredicto de triage

Demo técnica interesante de carga de MoE gigante en RAM; conservar con la señal de titular condicional.


## Ver también

- [[deepseek-harness]]
- [[hardware-para-ia-local]]
- [[ia-local-texto]]
- [[inferencia-local]]
- [[routing-por-coste]]
