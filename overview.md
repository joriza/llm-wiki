# Overview de la Wiki

Catálogo general por dominio. Se actualiza en cada consolidación.

## Dominios y estado

| Dominio | Fuentes procesadas | Páginas de concepto | Páginas de entidad | Resúmenes | Hilo temático activo |
|---------|-------------------|---------------------|---------------------|-----------|---------------------|
| `casa-calefaccion/` | 13 (lote completo) | 4 | 13+ | 13 | ✅ Consolidado |
| `ciencias-tierra/` | 3 | 4 | 1 | 3 | Estable |
| `critica-tecnologica/` | 11 (Café Kyoto) | 9 | 1 | 11 | Estable |
| `ia-critica-y-fronteras/` | 12+ | 8 | 5 | 12+ | Activo (Gary Marcus, IA China, world models) |
| `ia-media-generativa/` | 10+ | 2 | 2 | 10+ | Activo (FLUX, ComfyUI, clonación voz) |
| `ia-uso-practico/` | **37/58** (lote IA Local en curso) | **14** | **28** | **37** | **🔥 Activo (llama.cpp, Qwen, Gemma, agentes locales)** |
| `informatica-teoria/` | 10+ | 8 | 2 | 10+ | Activo (algoritmos, POO, testing, redes) |
| `historia-informatica/` | 12+ | 4 | 10 | 12+ | Estable |
| `python-practico/` | 7 (lote completo) | 6 | 17 | 7 | ✅ Consolidado |

**Total general**: 143+ fuentes, 49+ conceptos, 84+ entidades, 143+ resúmenes.

---

## Hilo temático 9: IA Local (ia-uso-practico) — EN CURSO

**Playlist**: https://www.youtube.com/playlist?list=PLeaYlHPISoSQ (58 videos, dominio `ia-uso-practico/`)

**Procesadas**: 37/58 (64 %). **Descargadas pendientes**: 16 + 1 UNKNOWN.

### Ejes principales consolidados

| Eje | Entidades / Conceptos clave | Fuentes que lo alimentan |
|-----|----------------------------|--------------------------|
| **Motor base** | [[llama-cpp]] (GGUF, KV Q8 TurboQuant, MTP, DRY, build CPU/CUDA/Vulkan, offload GPU↔CPU) | 2, 9, 11, 16, 28, 30, 33, 37 |
| **Modelos estrella** | [[gemma-4]] (12B QAT, E2B/E4B, MTP aparte, mmproj, 166-186 tok/s), [[qwen]] (3.5/3.6, MTP integrado, 3.8-27B híbrido, 3.5 2B fix DRY), [[lfm]] (MoE, conversiones), [[odysseus-ai]] (workspace PewDiePie) | 3, 5, 6, 10, 12, 17, 24, 29, 35, 37 |
| **Cuantización / hardware** | [[hardware-para-ia-local]] (VRAM vs RAM, iGPU 40 GB, MoE en CPU, Mac Studio M5, EXL3/NF4/MLX), TurboQuant | 4, 21, 22, 23, 25, 28, 30, 35 |
| **Agentes / arneses** | [[pi-agent]] (Custom Provider TS), [[deepseek-harness]] (Ollama + preset optimizado 6× tokens), [[proxy-atomico]] (Atomic AI depth 1-3, reinicio al cambiar), [[opencode]], [[desarrollo-con-modelos-locales]] (workflow GPU 100%, MCPs) | 13, 15, 17, 24, 25, 26, 31, 33 |
| **Ecosistema local** | [[ia-local-texto]] (Ollama/LM Studio runners), [[por-que-ia-local]] (Odysseus híbrido, veredicto 30 días), [[panorama-herramientas-open-source-ia]] (20+ tools) | 1, 7, 19, 20 |
| **Canales dominantes** | [[nichonauta]] (21 fuentes), [[informatica-teoria/cognix]] (5 fuentes: pila inferencia, Mac Studio, TimesFM, Qwen 4-bits), **atareao** (botiquín 8 GB), **Apasoft Training** (Ollama Modelfile) | 2-37 |

### Decisiones de arquitectura consolidadas

1. **Encaje 100 % en GPU** → el modelo más grande que quepa a ≥4 bits (no el más inteligente abstracto).
2. **TurboQuant (KV Q8 + rotary attention)** → mejora gratis, automática en llama.cpp actual; mitad VRAM, ~99 % calidad; decisivo para contexto 262k.
3. **MTP (speculative decoding)** → Gemma: archivo aparte Q4; Qwen: integrado en GGUF; predice ~2 tokens; +40 % tok/s en texto, más en código.
4. **DRY (anti-bucles runtime)** → parámetros llama.cpp; corta loops sin cortar razonamiento; funciona en cualquier modelo afectado (Qwen 3.5 2B probado).
4. **MoE = caso ideal para CPU/RAM parcial** → solo parámetros activos computan (Qwen 35B-A3B 3B activos → 11+ tok/s en CPU, 26 tok/s con `--n-cpu-moe`).
5. **Build CPU-only llama.cpp** → mismos GGUF, 11+ tok/s en Qwen 35B-A3B MoE (35 GB RAM), economía 250 USD RAM vs 5000+ USD GPU.
6. **Ollama Modelfile** = Dockerfile para modelos; `ollama create` no duplica GB (solo metadatos); bloques FROM/TEMPLATE/SYSTEM/ADAPTER/LICENSE/PARAMETER/MESSAGE (few-shot).
7. **Proxy Atómico (Atomic AI)** → depth 1-3, reinicio al cambiar, puerto 8000 OpenAI-compatible; depth 1 ya mejora notable; teaser ×6 tokens vía N-gram.
8. **Pi Agent** → agente minimalista extensible (Node.js/TS), Custom Provider `.ts` conecta a endpoint OpenAI (llama.cpp localhost:8080/v1).
9. **Mac Studio M5** → Max 128 GB $5.1k = punto dulce; Ultra 256 GB para MoE 170-180 GB; $20-60/mes → olvida local; API por uso (centavos/M tokens) = decenas $/mes brutal.
10. **TimesFM 3.0** (330M, 1.5 GB) → forecasting multi-series, predicción paralela, rangos prob.; **licencia no comercial** → producción en Google Cloud (BigQuery/Vertex AI).

### Contradicciones / tensiones detectadas

| Tema | Fuentes | Tensión |
|------|---------|---------|
| **Gemma 4 vs Qwen en código** | 5 (Gemma > Qwen post-update), 3/17 (Qwen ventaja agéntica), 29 (Gemma E2B mejor redacción, Qwen supera en código/herramientas/visión) | Evolución temporal: actualización Google cambió veredicto; benchmark no verificado; caso de uso define ganador. |
| **KV cache: Q8 vs Q4** | 11/28 (Q8 + rotary = 99 %; Q4 + rotary = 21.7 %; Q4 sin rotary = colapso 2 %) | Q4 en KV no recomendado salvo modelo QAT (Gemma) donde KV nativa ya es chica. |
| **MTP: archivo aparte vs integrado** | Gemma 4 (archivo aparte `-md`), Qwen 3.5/3.6 (integrado en GGUF), Gemma E2B (archivo aparte) | Diferencia de UX: Gemma requiere paso extra; Qwen "just works". |
| **Offload GPU+CPU para modelos densos** | 11/33 (cuello de botella severo, solo si 100 % no cabe) vs 30 (CPU-only usable para MoE) | Densos grandes: solo GPU; MoE: CPU+RAM viable. |
| **Licencia TimesFM 3.0** | 36 (pesos abiertos, uso comercial prohibido → Google Cloud) | Patrón open-core/cloud-tethered repetido en big tech. |

### Páginas de concepto pendientes de consolidar (fuentes 38-58)

- Modelos MoE comparados (Ling vs LFM, Qwen 3.8-27B híbrido)
- Hardware: CPU sin GPU, guía compra, cientos usuarios concurrentes, Mac Studio vs AMD, Kaggle GPU gratis, servidor 32 GB VRAM gratis
- Agentes: MinAgent (2 fuentes), FreeLLMAPI v2, Kilo Code + GLM, OpenSpec, Herdr, Gentle AI/ODD
- Herramientas: SpecJudge, Promptfoo curso, Postgres.new, DuckDB, Loguru, Polars, Playwright, FastAPI, SQLModel, Dramatiq, Dynaconf, Manim, Faker, Gradio, Diagrams, Marimo, Alembic, Celery
- IA China: 11 casos (GLM, Manus, Kimi, DeepSeek, Qwen, MiniMax, Kling)
- Clonación voz, FLUX Kontext, Fooocus, ComfyUI, Remotion, HyperFrames, FreeLLMAPI, OmniRouter, Herdr/Orca

---

## Próximas consolidaciones

- **Al cierre del lote ia-local (58/58)**: consolidación final completa + overview/sintesis + push.
- **Revisión periódica**: cada ~10 fuentes o cuando aparezcan contradicciones nuevas.