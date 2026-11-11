# Resumen: Configurar Modelos de IA con Máximo RENDIMIENTO — Tutorial en llama.cpp

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-12-configurar-modelos-de-ia-con-maximo-rendimiento-tutorial-en-llama-cpp.md` (video en español; transcripción literal por subtítulos automáticos, «Kwen»→Qwen, «Gema»→Gemma, «un slot»→Unsloth) — https://www.youtube.com/watch?v=FMuUEe-QWXg — Nichonauta, 2026-08-11 (24:47).
- **Nota**: fuente 11/58 del lote ia-local. Es la **guía madre de encaje modelo↔hardware** del sub-hilo: formaliza con aritmética lo que las fuentes 2-6 mostraban empíricamente. Consolidada en [[llama-cpp]] y [[gemma-4]].

## La aritmética de selección (formalizada)

- **Parámetros × 2 = GB a 16 bits** (precisión de entrenamiento); ÷2 a 8 bits; ÷4 a 4 bits. Ejemplos: Qwen 3.5 9B → 18 GB → 9 → **4,5 GB**; Gemma 4 12B → 24 → 12 → **6 GB**.
- **Regla**: descargar «el más grande de la colección que quepa en tu hardware, mínimo a 4 bits» (menos de 4 bits ya pierde calidad seria).
- A igual tamaño en bits, **prefiere el modelo más grande**: 9B a 4 bits (4,5 GB) rinde más que 4B a 8 bits (4 GB) por la misma memoria.
- Ojo con las colecciones: **Qwen 3.6 solo tiene 27B y 35B-A3B** — los tamaños chicos (0.8B-9B) solo existen en la 3.5; por eso la 3.5 sigue vigente.
- **Geografía de tamaños para hardware de hogar**: mucha RAM → MoE; poca → 4B/E4B/E2B/2B/0.8B.

## La cadena de optimización (todo junto en un Gemma 4 12B QAT)

1. **Modelo base QAT** de Google (preparado por post-entrenamiento para cuantizarse a 4 bits sin perder calidad).
2. **Cuantización dinámica de Unsloth** (UD): mayormente 4 bits, con partes a 8/16 donde ganan — 6,72 GB nominales, 6,3 GB reales. «Al 99,9 % de calidad del original pesando una cuarta parte».
3. **mmproj de visión mínimo**: en Gemma pesa **solo 175 MB** (BF16) frente a los multi-GB de otros modelos.
4. **MTP borrador aparte en Q4** (254 MB): contraintuición medida — el borrador en Q4 da **más velocidad real** que en precisión mayor, porque pesar ¼ importa más que adivinar un poco mejor; aceleración hasta **×3** (300 %).
5. **KV cache a 8 bits (TurboQuant)**: permite subir el contexto al **máximo del modelo (262.144)** consumiendo la mitad, con ~99 % de calidad (rotación de atención estilo paper de Google).
6. Resultado: **10,9 GB de 12** con contexto completo — dejando ~1 GB libre por los picos de un segundo (regla del canal).
7. Rendimiento final: hasta **110 tok/s generando código**.

## Comparativa dentro del mismo hardware

Gemma 4 12B vs Qwen 3.5 9B en RTX 3060: **requieren prácticamente lo mismo en ejecución** (la KV cache del Qwen 9B demanda más) y en benchmarks de inteligencia «están a la par» — ambas opciones válidas. Pero el Gemma con su MTP «tiene la velocidad de un modelo de una tercera parte de su tamaño, con la inteligencia de un 12B».

## El resto del flujo (ya consolidado)

Organización de carpetas (bin/gguf/zip), `.bat` por modelo (con salto de línea final), comando con -ngl 99, cache de contextos en RAM, -np 1, alias, Google sampling params — igual que [[llama-cpp]] y [[desarrollo-con-modelos-locales]]. Cliente final: cualquiera (ChatGPT desktop apuntando al endpoint, Codex, OpenCode, Pi Agent, AnythingLLM, Hermes, RAG, código propio). Y el objetivo declarado: «no era mostrar Gemma 4, sino cómo elegir y configurar un modelo para tu hardware».

---

**Ver también**: [[llama-cpp]] (sección «Aritmética de encaje») · [[gemma-4]] · [[qwen]] · [[nichonauta]] · [[desarrollo-con-modelos-locales]].
