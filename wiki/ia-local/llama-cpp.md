# llama.cpp

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 30/58 del lote ia-local — build CPU-only demostrado).
- **Fuentes**: [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]] · [[resumen-turboquant-en-llama-cpp-como-reducir-la-vram-de-tus-modelos-de-ia-sin-perder-calidad]] · [[resumen-modelos-de-lenguaje-en-cpu-como-ejecutarlos-con-llama-cpp-sin-una-gpu]].

**llama.cpp** es el conjunto de herramientas y librerías open source (GitHub `ggml-org/llama.cpp`) que ejecuta modelos de lenguaje estilo GPT **en tu propia PC**, con GPU NVIDIA (CUDA), AMD/Intel (Vulkan) o CPU puro — con fallback automático a CPU si la GPU no está disponible.

## Instalación

Releases con **binarios precompilados por hardware** (CUDA 12/13 + librerías CUDA aparte, Vulkan, CPU). Filosofía anti-FOMO: cada release apunta a hardware/modelos específicos — solo actualizar si tu caso lo necesita.

## Formato de modelos: GGUF

Los modelos van en **GGUF** (Hugging Face), que aporta: **cuantización** (16→8/6/4 bits: menos precisión pero mucho menos tamaño y más velocidad — típica UD-Q4_K_XL: 2,91 GB vs 8,42 GB), **partición GPU/CPU** (lo que no cabe en VRAM va a CPU/RAM), **visión** (encoder `mmproj` aparte, BF16) y **submodelos MTP** (ver abajo). Las colecciones cuantizadas de **Unsloth** son el punto de partida recomendado. Criterio de elección: descargas sostenidas en el último mes + tamaño adecuado a tu VRAM.

## Herramienta principal: llama-server

`llama-server -m modelo.gguf` abre chat web propio + **endpoint OpenAI-compatible** local (`http://127.0.0.1:8080/v1`) — conectable desde Open WebUI, AnythingLLM, OpenCode, Codex o código Python. Sin flags, auto-aprovecha toda la VRAM (slots paralelos + contexto máximo).

## Optimizaciones clave (comando .bat por modelo)

- **Contexto explícito**: `-c 131072`.
- **KV cache a 8 bits** (`-ctk/-ctv q8_0`): mitad de memoria, ~99 % de calidad (atención rotativa TurboQuant).
- **MTP / decodificación especulativa**: submodelo borrador incluido en Qwen 3.5/3.6 que predice los siguientes tokens; el modelo grande valida (cero pérdida de calidad, gran aceleración en código); Gemma 4 lo trae como archivo aparte (`-md`); predecir ~2 tokens por pasada. Ojo: algunos GGUF cuantizados venían **sin MTP** (quitar el flag o descargar la variante -MTP).
- **Slots paralelos** (`-np 4`): respuestas simultáneas para varios clientes; velocidad individual menor, suma total mayor; KV cache unificada.
- **Visión**: `--image-min-tokens 1024`.
- **Cache de conversaciones en RAM**: no reprocesar al cambiar de chat.
- **Alias**: `-a nombre-para-clientes`.
- **MoE que no cabe**: `--n-cpu-moe N` mueve los expertos de N capas a CPU (Qwen 3.6 35B-A3B: 35B totales / 3B activos por token → usable en CPU, ~26 tok/s vs 70-100 tok/s del 4B).
- **Sampling**: parámetros recomendados por el equipo de Qwen para uso agéntico en 3.5/3.6.

## Aritmética de encaje modelo↔hardware (fuente 11)

- **Parámetros × 2 = GB a 16 bits** (precisión de entrenamiento); ÷2 a 8 bits; ÷4 a 4 bits. Ejemplos: Qwen 9B → 18 → 9 → 4,5 GB; Gemma 12B → 24 → 12 → 6 GB.
- **Regla de elección**: el más grande de la colección que quepa, mínimo a 4 bits (<4 bits ya pierde calidad seria). A igual memoria, prefiera el modelo más grande a menos bits (9B@4b rinde más que 4B@8b).
- **Colecciones**: Qwen 3.6 solo tiene 27B y 35B-A3B — los tamaños chicos (0.8B-9B) solo existen en la 3.5, que sigue vigente.
- **Cadena de optimización del caso Gemma 4 12B** (RTX 3060 12 GB): base QAT + cuantización dinámica Unsloth (UD: mayormente 4 bits con partes a 8/16; 6,3 GB reales; «99,9 % de calidad pesando una cuarta parte») + mmproj de visión de solo 175 MB + **borrador MTP aparte en Q4** (contraintuición medida: el borrador en Q4 da más velocidad real que en precisión mayor — pesar ¼ importa más que adivinar un poco mejor; aceleración hasta ×3) + **KV cache q8_0 (TurboQuant)** para llevar el contexto al máximo (262.144) a mitad de memoria. Resultado: 10,9 GB de 12 — **regla: dejar ~1 GB libre** por los picos de un segundo. Hasta 110 tok/s generando código.
- Gemma 4 12B vs Qwen 3.5 9B en ese hardware: misma VRAM en ejecución (la KV del Qwen pide más) e inteligencia «a la par» — ambas válidas; el Gemma con MTP «tiene la velocidad de un modelo de un tercio de su tamaño con inteligencia de 12B».

Depuración de `.bat` que se cierra solo: ejecutarlo desde una consola `cmd` abierta para ver el error.

## Decodificación especulativa: N-gram (fuente 16)

Además de MTP, llama.cpp trae la familia **N-gram**: usa el mismo contexto como borrador para predecir los siguientes tokens — **sin modelo extra y casi sin memoria extra**, y funciona en cualquier modelo, en chat y en agentes. La comparativa medida (iteración de código sobre contexto extenso, RTX 3060):

| Método | Dónde acelera | Números observados |
| --- | --- | --- |
| N-gram solo | Solo cuando lo generado es **similar a lo ya en contexto** (reescrituras, ediciones menores) | >100 constantes, picos 200-277 tok/s; promedio 86,64 vs ~50 original |
| MTP solo | Siempre (incluido razonamiento, aunque lento ~40 tok/s) | >200-306 tok/s en código; ~86 promedio |
| MTP + N-gram | Decente en todo, incluso modificando código real | ~200 frecuente, picos ~300; 10 GB VRAM; procesamiento de contexto algo más lento |

**El insight para agentes**: el patrón típico de edición es «reemplazar líneas con contenido casi idéntico» (un punto, una coma, un paréntesis) — exactamente el caso que N-gram acelera masivamente, por lo que beneficia a los agentes aunque ellos tengan su propia lista de tareas.

**El cuello de botella de la iteración**: resultó ser el razonamiento (no coincide con lo ya en contexto y N-gram no ayuda ahí). La filosofía del caso: modelos chicos + iteración rápida + humano guiando correcciones + tareas divididas en pasos = trabajo bien hecho sin modelos de pago.

## TurboQuant / KV cache Q8 + rotary attention (fuente 28)

Paper de Google Research: cuantización vectorial online que minimiza distorsión geométrica de la KV cache; neutralidad de calidad absoluta a **3.5 bits/canal**. En llama.cpp actual: **mejora gratis, automática** — al cuantizar la KV cache a 8 bits (`-ctk/-ctv q8_0`), la **rotary attention (tensión rotativa) se enciende sola**. No hay que activar nada; se ve en los logs («KV cache quantized, rotary attention active»).

- **Efecto medido**: KV cache a Q8 + rotary → ~90 %+ calidad, **mitad de VRAM**; Q8 sin rotary → calidad cae drásticamente (AIME2: 37.9 % → 31 % en GPT OSS 20B); Q4 sin rotary → colapso (2 %); Q4 + rotary → 21.7 %.
- **Demo realista**: Gemma 4 12B QAT Q4 (6.25 GB modelo + MTP + mmproj = 6.65 GB) en RTX 3060 12 GB. Sin KV Q8: 9.8 GB VRAM, no cabe 262k tokens. Con KV Q8: 9.1 GB → **cabe 262k tokens consumiendo 10.9 GB** (doble contexto, ~misma VRAM). Rotary ya activa.
- **Dónde más impacta**: modelos **NO optimizados** (Qwen, LFM, etc.) — su KV cache nativa es grande, cuantizar a 8 bits corta VRAM a la mitad (30 GB → 15 GB; 3 GB → 1.5 GB; 1 GB → 0.5 GB) y la rotary protege la calidad. Gemma ya optimizada → ganancia menor.
- **Regla práctica**: si el modelo no es Gemma, TurboQuant en llama.cpp es «más perfecto aún».

## Anti-bucles: parámetros DRY (fuente 9)

Los modelos chicos entran en **loops infinitos** (repiten la misma cadena sin salir — principal problema de modelos como Qwen 0.8B, sobre todo con la cadena de razonamiento activa). Solución: la familia **DRY** de llama.cpp — un filtro externo que revisa los tokens/cadenas ya generadas y penaliza repeticiones, encima del sampling clásico. Se agregan ~4 líneas DRY al `.bat` sin tocar el sampling oficial del modelo. Compensaciones: ajustable estricto/laxo (si la tarea requiere repetir, un filtro agresivo empeora la respuesta; demasiado estricto hace las respuestas sin sentido), costo de velocidad mínimo, y efecto lateral de mayor variedad. No es 100 % infalible — método de ajuste iterativo: pegarle a un modelo online el comando + el texto loopeado + «reescribe mi comando cambiando solo los DRY», aplicar, y si reincide, pegar el nuevo loop (en el experimento con Qwen 0.8B muy cuantizado hizo falta además ajustar `repeat_penalty` y `repeat_last_n`).

## Dónde queda en la wiki

Es el motor descrito como alternativa a Ollama/LM Studio en [[ia-local-texto]]; su endpoint OpenAI-compatible conecta los clientes de [[agentes-de-codigo]] (OpenCode, Codex). El ecosistema de hardware/cuantización se desarrolla en las fuentes siguientes del lote ia-local. TurboQuant / KV cache Q8 + rotary attention es una mejora gratuita que se activa automáticamente en versiones actuales. **Build CPU-only** (fuente 30): misma capacidad y modelos GGUF, velocidad usable (11+ tok/s en Qwen 35B-A3B MoE, 35 GB RAM), a fracción del costo de GPU equivalente (250 USD RAM vs 5000+ USD GPU).


## Del cierre del lote (fuentes 43-58)

- **Caché de expertos** (fuentes 51, 55): tras el éxito de [[strata]], la **PR #29887** la añade a llama.cpp (pendiente de aceptar; RTX 4090: 25→39.4 tok/s, 1.57×; 5090: 2.2×). La idea salta de proyecto a motor general en días.
- **Soporte de la arquitectura Qwen 4 XP** (fuente 56): en la rama main; **MTP integrado** desde el 1-oct (`qwen4xp_ad_mtp`; en una 3060 suma poco, +0.8 tok/s — compensa solo en memoria unificada tipo DGX Park: 1.55×). La tabla n-grams de 51B se lee del SSD vía **memory mapping** — el diseño «aburrido» que funciona donde [[strata]]-competidores como Free Token clavan todo en RAM y cuelgan la máquina.
- **Compilación**: ~33 % más rápida en Mac que en PC equivalente (fuente 47).
- **Server**: continuous batching + ranuras paralelas **activados por defecto desde marzo 2024** (fuente 44) — la concurrencia ya está ahí; el cuello real es la KV cache (40 GB/cliente a 128k contexto).
- **Endpoint OpenAI-compatible** conecta MinAgent, Pi (plugin LM Studio aparte), agentes Python (fuente 45) y clientes de chat.
