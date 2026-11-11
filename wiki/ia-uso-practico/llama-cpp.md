# llama.cpp

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 2/58 del lote ia-local — tutorial técnico completo de 53 min).
- **Fuentes**: [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]].

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

Depuración de `.bat` que se cierra solo: ejecutarlo desde una consola `cmd` abierta para ver el error.

## Dónde queda en la wiki

Es el motor descrito como alternativa a Ollama/LM Studio en [[ia-local-texto]]; su endpoint OpenAI-compatible conecta los clientes de [[agentes-de-codigo]] (OpenCode, Codex). El ecosistema de hardware/cuantización se desarrolla en las fuentes siguientes del lote ia-local.
