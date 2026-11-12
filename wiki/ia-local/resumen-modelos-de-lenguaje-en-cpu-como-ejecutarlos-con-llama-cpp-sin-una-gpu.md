# Resumen: Modelos de Lenguaje en CPU — CÓMO Ejecutarlos con llama.cpp sin una GPU

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-06-modelos-de-lenguaje-en-cpu-como-ejecutarlos-con-llama-cpp-sin-una-gpu.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «Q»→Qwen) — https://www.youtube.com/watch?v=EyZMuU9SE3g — Nichonauta, 2026-09-06 (07:10).
- **Nota**: fuente 30/58 del lote ia-local (entrada 35 del playlist). Demostración práctica de **llama.cpp versión CPU-only** en Windows (Ryzen 5 5600G + 128 GB DDR4 3200 MHz dual channel).

## El punto: llama.cpp CPU-only = misma capacidad, velocidad usable, fracción del costo

- Descargar **llama.cpp build CPU** (Windows: `llama.cpp-cpu-windows.zip`) en lugar del build CUDA/Vulkan.
- Cambio en el `.bat`: solo apuntar al binario CPU. Los modelos (GGUF) son **los mismos** — Gemma 4 E2B, Qwen 3.5 2B, Qwen 3.6 35B-A3B MoE MXFP4.
- Consumo de memoria: **igual que en GPU, pero en RAM** (no VRAM).

## Benchmarks medidos (grabando video = carga extra)

| Modelo | Config | RAM usada | Tok/s | Nota |
|--------|--------|-----------|-------|------|
| Gemma 4 E2B (2B activos, QAT Q4 + MTP) | CPU only | ~poco | «bastante utilizable», no rapidísima | MTP a veces baja velocidad en CPU |
| Qwen 3.6 35B-A3B MoE MXFP4 (3B activos) + mmproj | CPU only | **35 GB RAM** (modelo + sistema) | **>11 tok/s** | Sin MTP, grabando video |

## La economía: 250 USD vs 5000+ USD

- **128 GB RAM** (DDR4) → ~250 USD (si falta RAM, comprar 32 GB).
- **RTX 5090** (para que quepa 35B) → 5000+ USD + fuente + calor + espacio + corriente.
- **GPU con 128 GB VRAM** → «cuesta lo que una casa o media casa».
- Conclusión: **modelos grandes MoE en CPU+RAM son perfectamente utilizables** (11+ tok/s en 35B-A3B), a fracción del costo. No es rapidísima, pero «no es lenta, es usable».

## Detalles técnicos

- MoE es el caso ideal para CPU: solo parámetros activos cargan compute (3B de 35B).
- Modelos densos grandes en CPU: no conviene (velocidad cae en picado).
- Speculative Decoding (MTP, N-gram) puede mejorar más, pero ya de base es usable.
- `llama.cpp` CPU build evita la capa de Ollama/LM Studio (más desactualizada y limitada).

## Cruces en la wiki

Entidad principal: [[llama-cpp]] (build CPU-only como alternativa documentada). Hardware: [[hardware-para-ia-local]] (RAM vs VRAM, economía CPU para MoE). Modelos: [[gemma-4]] (E2B), [[qwen]] (3.6 35B-A3B MoE). Canal: [[nichonauta]].