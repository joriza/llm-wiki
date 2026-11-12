# Resumen: TurboQuant en llama.cpp — Cómo Reducir la VRAM de tus Modelos de IA sin Perder Calidad

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-11-turboquant-en-llama-cpp-como-reducir-la-vram-de-tus-modelos-de-ia-sin-perder-cal.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»/«GMA»→Gemma, «Quen»→Qwen, «KVK»→KV cache, «KVCH»→KV cache) — https://www.youtube.com/watch?v=ERNNwzXWoSg — Nichonauta, 2026-08-11 (11:23).
- **Nota**: fuente 28/58 del lote ia-local (entrada 33 del playlist). Primera mención explícita de **TurboQuant** (paper de Google Research) y su integración nativa en llama.cpp como «mejora gratis».

## Qué es TurboQuant

Algoritmo de **cuantización vectorial online** (Google Research) que cuantiza la **KV cache** minimizando la distorsión de su estructura geométrica. En el paper: neutralidad de calidad absoluta con **3.5 bits por canal** en cuantización de KV cache. En llama.cpp: **mejora gratis** que se activa automáticamente al cuantizar la KV cache a 8 bits — **no hay que activar nada**, la «tensión rotativa» (rotary attention) se enciende sola en las versiones actuales.

## El truco: KV cache a 8 bits + rotary attention = misma calidad, la mitad de memoria

- Sin cuantizar KV cache: calidad 100 %, VRAM base.
- KV cache a **Q8 + rotary attention** (estilo TurboQuant): **~90 %+ de la calidad original, consumiendo la mitad de VRAM**.
- KV cache a Q8 **sin** rotary attention: calidad cae drásticamente (ej. benchmark AIME2: 37.9 % → 31 % en GPT OSS 20B).
- Q4 sin rotary: calidad colapsa (2 % en el mismo benchmark); Q4 + rotary → 21.7 %.

**Conclusión medida**: la rotary attention es lo que **protege la calidad** al cuantizar; el ahorro de memoria lo hace la cuantización. En llama.cpp actual: **cuantizar a 8 bits enciende la rotary automáticamente**.

## Demo realista: Gemma 4 12B (QAT Q4) en RTX 3060 12 GB

- Modelo original: >24 GB VRAM.
- Gemma 4 12B **QAT Q4** (Google permite cuantizar a 4 bits sin perder calidad): **6.25 GB** modelo + **MTP** (speculative decoding) + **MMProj** (visión) = **6.65 GB** total.
- Ventana de contexto nativa: 131k tokens → **no cabe 262k** (KV cache requiere más VRAM libre).
- **Activar KV cache Q8** (parámetro `--kv-q8` o equivalente en config): VRAM baja de 9.8 GB → **9.1 GB** → **ya cabe 262k tokens** (262,144) consumiendo **10.9 GB** (doble contexto, ~misma VRAM).
- **Rotary attention ya está activa** (se ve en logs: «KV cache quantized, rotary attention active» — no hay que hacer nada extra).

## Dónde más impacta

- **Gemma**: ya optimizada (KV cache nativa pequeña), el ganancia es menor.
- **Modelos NO optimizados** (Qwen, LFM, etc.): su KV cache nativa es grande — cuantizar a 8 bits **corta la VRAM a la mitad** (ej. 30 GB → 15 GB; 3 GB → 1.5 GB; 1 GB → 0.5 GB) y la rotary protege la calidad.
- Regla práctica: **si el modelo no es Gemma, TurboQuant en llama.cpp es «más perfecto aún»**.

## Cruces en la wiki

Entidad principal: [[llama-cpp]] (sección TurboQuant / KV cache Q8 + rotary attention). Modelo del demo: [[gemma-4]] (QAT Q4, 12B). Técnica complementaria: [[llama-cpp]] (sección N-gram / MTP para speculative decoding). Hardware: [[hardware-para-ia-local]] (VRAM como cuello de botella). Canal: [[nichonauta]].