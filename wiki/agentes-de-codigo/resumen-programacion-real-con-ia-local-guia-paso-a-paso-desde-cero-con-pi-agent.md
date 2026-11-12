# Resumen: Programación Real con IA Local — Guía Paso a Paso desde Cero con Pi Agent

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-10-programacion-real-con-ia-local-guia-paso-a-paso-desde-cero-con-pi-agent.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «MM Prof»→mmproj, «Llama CPP»→llama.cpp) — https://www.youtube.com/watch?v=Q8U438iPzc4 — Nichonauta, 2026-09-10 (51:53).
- **Nota**: fuente 33/58 del lote ia-local (entrada 38 del playlist). Guía completa de **setup end-to-end**: hardware → modelo (Gemma 4 12B QAT) → llama.cpp build CUDA → Pi Agent conectado via Custom Provider. El video más largo y detallado del canal sobre pipeline local.

## Pipeline completo: hardware → modelo → runtime → agente

### 1. Evaluación de hardware (RTX 3060 12 GB + 128 GB RAM DDR4)
- **Regla de oro**: «cargar modelos que se adapten a nuestro hardware, no adaptar hardware a modelos».
- GPU dedicada (VRAM) >> iGPU (RAM) >> CPU pura.
- MoE (Mixture of Experts) = caso ideal para RAM/GPU parcial: solo parámetros activos computan → velocidad usable incluso en CPU.
- Modelos densos grandes: **solo** si caben 100 % en GPU; offload GPU+CPU = cuello de botella severo.

### 2. Selección del modelo: Gemma 4 12B QAT Q4
- **Criterio**: el más inteligente que quepa en VRAM a ≥4 bits (Q4 mínimo; <4 bits pierde calidad seria).
- Benchmarks de referencia: agente terminal / dev (no confiar ciegamente; probar).
- **Gemma 4 12B QAT** (Quantization-Aware Training): preparado por Google para Q4 sin perder calidad → «mejor aprovechar si existe».
- Archivos descargados (6.65 GB total): modelo `UD_Q4_K_XL` (Q4) + `mmproj` BF16 (visión) + `MTP` Q4 (speculative decoding draft).
- **Contexto**: 12B en Q4 = ~6-7 GB modelo; queda ~5 GB para KV cache + contexto completo (262k tokens con KV Q8 TurboQuant).

### 3. llama.cpp build CUDA + .bat optimizado
- Descargar release CUDA 13 (o 12) + librerías CUDA → descomprimir en `bin/`.
- **Flags clave en .bat**:
  - `-m modelo.gguf --mmproj mmproj.gguf --mtmdraft mtp.gguf --draft mtp --draft-min 1` (probar 1-2-3… hasta máximo velocidad real).
  - `--no-mmap` / `--mlock` (carga completa en RAM → copia única a GPU; milisegundos de diferencia al abrir).
  - `-ngl 999` (todas las capas en GPU; evita offload automático a CPU si hay 2 GPUs).
  - `--reasoning` (cadena de razonamiento activa).
  - `--ctx-size 262144` + `--cache-type-k q8_0 --cache-type-v q8_0` (TurboQuant automático: KV Q8 + rotary attention → mitad VRAM, ~99 % calidad).
  - Sampling: parámetros recomendados por Google (temp, top_k, top_p, min_p, etc. — adaptados a sintaxis llama.cpp).
  - `--parallel 1` (una respuesta a la vez; evita presión de KV cache).
  - `--verbose` (debug si falla).
  - `-a "Gemma 4 12B QAT"` (alias legible).

### 4. Pi Agent + Custom Provider (TypeScript)
- Instalar Node.js + Git Bash → `curl ... | bash` instala Pi Agent.
- Conectar a llama.cpp endpoint OpenAI (`http://localhost:8080/v1`):
  - Archivo: `~/.pi-agent/Extensions/PP-Provider.ts`
  - Define: nombre, URL base + `/v1`, API key dummy, modelo `Gemma 4 12B`, `reasoning: true`, `input: ["text","image"]`, `cost: 0`, `context_window: 262144`, `max_tokens: 32768` (para autocompactación).
- Verificación: `pi` → aparece extensión → `hola` → ve razonamiento + respuesta en UI + tokens en llama.cpp logs.

### 5. Demo real: Snake en HTML + autocompactación + `/compact`
- `ls -R` → lista archivos; `escribe index.html Snake` → crea archivo funcional.
- `/compact` → autocompacta cuando contexto cerca del límite (aquí 1.2 % → no deja).
- `mejora estilo visual al máximo` → reescribe archivo completo (tokens 70+ tok/s con MTP).
- Bug menor: colisión snake consigo mismo al bajar flecha.

## Cruces en la wiki

Entidades: [[pi-agent]] (nueva: agente minimalista extensible, Custom Provider TS), [[gemma-4]] (12B QAT Q4 pipeline completo), [[llama-cpp]] (build CUDA, .bat optimizado, TurboQuant KV Q8, MTP draft), [[hardware-para-ia-local]] (regla de encaje modelo↔VRAM, MoE vs denso), [[desarrollo-con-modelos-locales]] (Pi Agent como arnés agéntico). Canal: [[nichonauta]].