# WL-431 — Spark X2.5 4B: ¿realmente es superior a Gemma 4 y Qwen?

- **Fuente original**: `raw/wl/tramo-71/2026-09-03-spark-x2-5-4b-realmente-es-superior-a-gemma-4-y-qwen.md` ([vídeo](https://www.youtube.com/watch?v=7zUD_rh9MLQ))
- **Canal**: Nichonauta · **Publicado**: 2026-09-03 · **Duración**: 06:02 · **Dominio**: ia-uso-practico/ia-local

## Qué trata

Demo de inferencia local (06:02, Nichonauta) del **Spark X2.5 4B** (texto-only, Apache 2.0, ~200 idiomas, 1 M tokens de contexto prometidos), siguiendo la batería del video previo del canal (WL-428, Gemma 4 E4B) para comparar de forma consistente:

- **Promesas del fabricante** (XH Token): superior a Qwen 3.5 4B/9B y Gemma 4 E4B, bueno en código y tareas agénticas (Codex, Claude Code, etc.).
- **Fricción de ejecución**: solo GGUF a precisión completa (8,23 GB), requiere una **versión modificada de llama.cpp** compilada aparte — no compatible nativo con llama.cpp, Ollama ni LM Studio. Con 32.768 tokens de contexto la GPU pasa de 0 a ~7,8 GB: la promesa de eficiencia de memoria «no es cierta».
- **Resultados** (~36 tok/s, FP16 vs rivales a 4 bits): landing page con hero decente pero secciones vacías y JS roto; calculadora no funcional (teclas que se escriben en vez de operar); reloj analógico sin sentido, tema claro/oscuro parcial; simulación de fluidos sin interacción real.
- **Veredicto**: no está ni cerca de las versiones 2B de Gemma 4 E2B ni Qwen 3.5 2B cuantizadas a 4 bits; no lo recomienda, ni tampoco el 1.7B previo.

## Señales de triage

- Primera mano con verificación funcional de cada artefacto (metodología consistente con WL-428).
- Comparación asimétrica declarada por el propio canal (FP16 vs 4 bits) — favorece aún más el veredicto negativo.
- Benchmarks del fabricante autocreportados, refutados empíricamente aquí.
- ASR fuerte (XH Token, Claude Code→«Cloud Code») normalizado solo aquí.

## Cruces

- [[nichonauta]] (5.ª fuente WL), [[gemma-4]], [[qwen]], [[inferencia-local]], [[llama-cpp]].
- [[percepcion-de-regresion-de-modelos]] (benchmarks autocreportados vs experiencia real), WL-428 (misma batería), concepto candidato [[kit-usb-portable]] tangencial.
