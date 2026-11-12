# Qwen (familia 3.5 / 3.6)

- **Tipo**: página de entidad (modelos).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 37/58 del lote ia-local — Qwen 3.5 2B fix loops DRY runtime; Qwen 3.8-27B arquitectura híbrida).
- **Fuentes**: [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]] · [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] · [[resumen-gemma-4-es-mejor-que-qwen-en-codigo-y-velocidad]] · [[resumen-qwen-3-5-4b-el-modelo-gratis-que-supera-al-o3-mini-en-local]] · [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local]] · [[resumen-probe-todos-los-4-bits-de-qwen3-8-27b-este-es-el-mejor-para-tu-gpu]] · [[resumen-asi-corregi-qwen-3-5-2b-la-solucion-a-las-repeticiones-sin-fine-tuning]].

**Qwen** (Alibaba) es la familia de modelos abiertos que el lote ia-local documenta como **los mejores para desarrollo y uso agéntico** en tamaños de hardware de hogar.

## Qwen 3.5 2B: fix loops DRY runtime (fuente 37)

Problema: con **reasoning activado** → loops infinitos (MTP acelera el loop), benchmark incompleto.
Solución: **parámetros DRY de llama.cpp** (runtime, sin fine-tuning, inspirado en Liquid AI LoRA anti-loops). Añadir flags DRY al `.bat` → cuando el modelo va a repetir token ya repetido, elige otro probable → **corta loop, no razonamiento**.
Resultado: benchmark 50 preguntas **completado con reasoning**, velocidades variables, razonamiento + respuesta final, sin loops. Funciona en «cualquier modelo que te esté sucediendo esto».

## Qwen 3.8-27B: arquitectura híbrida y la trampa de «4 bits» (fuente 35)

- 64 capas: **16 atención completa** + **48 atención lineal con compuertas** → solo 16 capas generan KV cache clásica.
- KV cache: 32,768 valores/token (4 heads × 256 dim) = 64 KB/token a 16 bits → **16 GB solo KV cache a 262k tokens** (sin pesos).
- **4 bits ≠ una etiqueta**: precisión (FP8/INT4/NF4) × algoritmo (AWQ/GPTQ/calibración) × contenedor (GGUF/EXL3) × kernel (llama.cpp/EXLlama/VLLM/SGLang).
- **Unsloth UD recetas dinámicas v3**: calibración 45→200+ fragmentos, hasta 14 cuantizaciones/archivo (UD_Q4_XS 14.3 GB, UD_Q4_K_XL 17.6 GB, UD_Q3_K_XL 13.1 GB protegiendo atención).
- **Por GPU**: RTX 30/40 → **EXL3** (vectorial; 3090 24 GB: 22 GB con ctx 196k → 43+ tok/s corto, 30+ >100k); Blackwell (serie 50) → **NF4** (tensor cores 4-bit nativos; 77.26 vs 77.50 Blue Pro); Apple Silicon → **MLX 4-bit groups of 64** (Mac 32 GB → ~15 GB); producción multi-GPU → **AWQ/GPTQ + VLLM/SGLang**.
- Modelo 1.71 bits (<6 GB) = versión anterior + reentrenamiento baja precisión (no cuantización post-entrenamiento).

## Geografía de tamaños (3.5 y 3.6)

0.8B · 2B · 4B · 9B · 27B · **35B-A3B** (MoE: 35B totales / 3B activos) · 122B · 397B. Regla del canal (Nichonauta): los 27B/35B convienen en la **3.6** (más nueva); para hardware de hogar el rango útil es 0.8B-9B, y el **9B es el más grande que cabe 100 % en una RTX 3060 de 12 GB a Q4** (criterio de encaje de [[desarrollo-con-modelos-locales]]).

## Características distintivas (frente a Gemma 4)

- **MTP incluido en el propio GGUF** (Gemma 4 lo trae como archivo aparte con `-md`): decodificación especulativa integrada, entrenada con el modelo — medido: 67 vs 49 tok/s en texto (+40 %), aún más en código.
- Contexto: hasta **262k** (expansible a 1.010.000); los conceptos usan 131k a 181k según VRAM.
- Visión (encoder `mmproj` aparte, BF16), razonamiento activable, entrada de texto/imagen/vídeo (sin audio — Gemma 4 sí tiene).
- **Parámetros de sampling oficiales de Qwen** para uso agéntico/código con razonamiento (de la model card; ojo: el `repetition_penalty` de la card se escribe `repeat penalty` en llama.cpp).
- Cuantizaciones recomendadas: las colecciones de **Unsloth** («slot»).

## Posicionamiento medido (RTX 3060 12 GB)

- **9B UD-Q4_K_XL** (6,14 GB): el techo de calidad del hardware de hogar; 67 tok/s.
- **4B UD-Q4_K_XL** (2,99 GB): >100 tok/s con MTP; según el leaderboard citado (Artificial Analysis, no verificado) **supera al O3 Mini High** en índice general (~20 vs 16) y lo aplaza en visión, herramientas, formato de código y costo (fuente 6).
- **35B-A3B MoE** (22 GB MXFP4): no cabe en 12 GB pero con `--n-cpu-moe` corre a ~26 tok/s (3B activos por token).
- Frente a Gemma 4 12B (post-actualización): Gemma gana en velocidad y equla memoria; Qwen mantiene ventaja en ecosistema/uso agéntico según la fuente 3 (evolución en [[gemma-4]]).

Presión macro: modelo razonamiento híbrido 27B abierto en RTX 3090 usada ($500) o workstation media → **costo/token ≈ electricidad local** → presiona precios cloud (fuente 35).

## Reglas de uso (del lote)

MTP prediciendo 2 tokens; KV cache a q8_0 (TurboQuant ~99 % calidad); sampling oficial de Qwen para agéntico; descargar siempre la variante **-MTP** del GGUF (algunas subidas viejas lo quitaban); «el más grande que quepa 100 % en GPU».


## La generación Qwen 3.8 / vista previa Qwen 4 (lote ia-local, fuentes 40-56)

- **Qwen 3.8 27B** (fuente 40): arquitectura **híbrida** — 16 capas de atención completa → KV cache de 16 GB a 262k tokens; «4 bits» no es una etiqueta única (precisión × algoritmo × contenedor × kernel); por GPU: RTX 30/40 → EXL3 (3090 24 GB: 43+ tok/s), Blackwell → NF4, Apple → MLX; dinámicas Unsloth UD v3 (14 cuantizaciones por archivo). En SWE-Bench Pro: 61.7 vs 62.5 del Flash Next — casi a la par; Reddit: «Flash Next a 3 bits bastante mejor que el 27B a 5».
- **Qwen 3.8 Flash Next** (fuentes 41, 51, 55, 56): adelanto experimental de la **arquitectura Qwen 4** (internamente `Qwen4XP`, `Qwen4XForConditionalGeneration`). 180B totales = 125B cerebro MoE (48 capas × 512 expertos, top-10+1 → ~6B activos/token) + **51B de tabla n-grams («chuleta», 2ª capa, vive en SSD vía mmap)** + 4B MTP. Es la pieza que permite correr un modelo de primer nivel en una RTX 3060: 82 GB en 3-bit, 24 tok/s con 6 hilos y 61 GB RAM; **17/17 en el laboratorio de trampas de [[ia-uso-practico/jorge-marfil]], empatando con Claude Opus 5** (a 1/4-1/20 de la velocidad). Contexto 262k de serie, estirable a 1M.
- **Ecosistema de fine-tunes (fuente 46, 52)**: **[[ornith]] 1.5 9B** (gana calidad agéntica al original, pierde ~10 tok/s) y **[[frognano]] 4B** de Microsoft (similar, más robótico en redacción) — el primero es el fine-tune que por fin mejora al original en su tarea objetivo.
- **QAT ternario**: [[ternary-bonsai]] 2 (Prism ML) = Qwen 3.8 27B distilado a pesos ternarios desde los pesos reales → 5.9 GB, 98.2 % del score; corre en una 5060 Ti de 16 GB (ver [[bitnet]]).
