# Qwen (familia 3.5 / 3.6)

- **Tipo**: página de entidad (modelos).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuentes 2, 3, 5 y 6/58 del lote ia-local).
- **Fuentes**: [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]] · [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] · [[resumen-gemma-4-es-mejor-que-qwen-en-codigo-y-velocidad]] · [[resumen-qwen-3-5-4b-el-modelo-gratis-que-supera-al-o3-mini-en-local]].

**Qwen** (Alibaba) es la familia de modelos abiertos que el lote ia-local documenta como **los mejores para desarrollo y uso agéntico** en tamaños de hardware de hogar.

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

## Reglas de uso (del lote)

MTP prediciendo 2 tokens; KV cache a q8_0 (TurboQuant ~99 % calidad); sampling oficial de Qwen para agéntico; descargar siempre la variante **-MTP** del GGUF (algunas subidas viejas lo quitaban); «el más grande que quepa 100 % en GPU».
