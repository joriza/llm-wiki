# WL-436 · FreeToken me Decepcionó: ¿realmente es más RÁPIDO que llama.cpp?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=T1o7X2Uz4oo) · raw: `raw/wl/tramo-72/2026-08-27-freetoken-me-decepciono-realmente-es-mas-rapido-que-llama-cpp.md`
- **Canal**: Nichonauta (8.ª fuente WL)
- **Publicado**: 2026-08-27 · **Duración**: ~07:30
- **Dominio destino previsto**: `ia-uso-practico/ia-local/`; cruces: [[nichonauta]] (8.ª fuente), [[inferencia-local]], [[llama-cpp]], [[qwen]], [[routing-por-coste]]

## Qué trata

Review primera mano de **FreeToken** (aplicación de escritorio de flashml.ai, Windows/Linux): promete ejecutar LLMs más rápido que otras herramientas, enfocada a modelos MoE, **solo NVIDIA**. El canal lo compara contra llama.cpp con el Qwen 3.6 35B-A3B en RTX 3060.

Hallazgos de FreeToken:
- Modelos en safetensors (NVFP4/MXFP4), menos variados y versátiles que GGUF; carga lenta (la primera «prepara/compila algo» y las siguientes tampoco son rápidas).
- Parámetros mínimos: no se ve dónde configurar ventana de contexto; «auto» sugiere combinaciones («acelera ×24» sin base de comparación clara).
- Huella alta: 10,6 GB VRAM + **27 GB RAM**; retardo en arrancar cada respuesta nueva.
- Rendimiento: ~9-11 tok/s (NVFP4).

Contra llama.cpp (mismo modelo, MXFP4 MoE, con visión + MTP + contexto completo): carga mucho más rápida, 10,6 GB VRAM + solo 24 GB RAM, **33,35 tok/s promedio**. Veredicto: «promete mucho y cumple poco» — un tercio de la velocidad de llama.cpp en el mismo hardware; no recomendado.

## Señales de fiabilidad

- Primera mano con medición en vivo; el propio canal acota el alcance («solo un ejemplo», no barre todos los modelos/precisiones/hardwares) — honesta.
- Corrida única por herramienta, sin estadística — señalado (consistente con la disciplina del canal en WL-428/431/432/434).
- Sin patrocinios; ASR fuerte («llama CP», «cuentres.6.35b») normalizado solo aquí.

## Cruces y temas

- Continúa la batería Nichonauta de inferencia local (WL-428 Gemma 4, WL-431 Spark X2.5, WL-432 Llama 3.1, WL-434 Qwen 0.8B): ahora el comparado es un runtime, no un modelo.
- [[llama-cpp]] +1: runtime maduro que sigue ganando comparativas frente a runtimes nuevos.
- [[routing-por-coste]] / [[inferencia-local]]: alternativas de runtime para MoE en GPU de consumo.
- Cruce WL-333/342 (Qwen 3.6 35B-A3B, mismo modelo en benchmarks previos del canal).
