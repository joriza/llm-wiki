# Bartowski

- **Tipo**: página de entidad (cuantizador).
- **Dominio**: `modelos-llm-locales`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — 1 fuente citada; rol transversal del ecosistema GGUF).
- **Fuentes**: [[resumen-frognano-4b-es-realmente-mejor-que-qwen-3-5-original]] (cuantización Q4_K_M + mmproj usada en la prueba).

Cuantizador de referencia del ecosistema **GGUF** en Hugging Face: publica versiones cuantizadas (Q2→Q8, *_K_M, *_K_S, IQ/UD) de los modelos poco después de su lanzamiento, incluyendo los `mmproj` de visión separados. Es el proveedor por defecto de facto cuando un laboratorio no publica GGUF propio — en el lote aparece tanto en FrogNano como de manera implícita en varias descargas del banco de pruebas de [[nichonauta]] (que distingue GGUF oficial del proveedor, como los de [[lfm]], de los de terceros).

Regla del lote: cuando exista GGUF oficial (Qwen, Gemma, LFM), preferirlo; si no, las cuantizaciones de Bartowski/Unsloth («UD» dinámicas, ver [[qwen]]) son las alternativas de confianza.

## Cruces

[[qwen]] · [[gemma-4]] · [[llama-cpp]] · [[frognano]].
