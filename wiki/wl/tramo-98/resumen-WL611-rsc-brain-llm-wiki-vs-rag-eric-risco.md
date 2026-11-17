# WL-611 — Cómo usar agentes de IA sin empezar de cero cada día (RSC Brain: LLM Wiki vs. RAG)

- **Fuente original**: `raw/wl/tramo-98/2026-11-12-como-usar-agentes-de-ia-sin-empezar-de-cero-cada-dia.md` ([Vídeo](https://www.youtube.com/watch?v=XCaI7do8Nkk))
- **Canal**: Eric Risco | Inteligencia Artificial (1.ª fuente; autor de RSC Brain, RSC Factory, docente)
- **Publicado**: 2026-11-12 · **Duración**: 28:38
- **Dominio**: memoria persistente de agentes (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tutorial doble: explicación técnica RAG vs. LLM Wiki (patrón de Karpathy, abril 2026 — «diversos markdown organizados para que un agente los encuentre fácil», en lugar de trozos en vectores) + demo de RSC Brain, su implementación open source en la nube conectable por MCP.

1. **Fundamentos RAG**: in-context learning (ejemplo Maduro/actualidad), retrieval (BM25 por palabras clave o vector stores: FAISS, Qdrant, Weaviate, Elastic, PGVector), embeddings (similaridad por coseno; ejemplo pedagógico café/manzana/plátano vs. Messi/coche; modelos: EmbeddingGemma, BGE Large, text-embedding — elegir por idioma; multimodales como EmbeddingGemma guardan imágenes+texto), augmented (lo recuperado entra en el prompt) y generation. Estrategias de chunking/versionado mencionadas sin desarrollar.
2. **LLM Wiki / second brain**: el agente lee cada fuente UNA vez en la ingesta y produce páginas (10-15 por documento largo) separando conceptos/procesos, con enlaces entre sí y con el conocimiento previo — «mono no toca wiki: la wiki está pensada para agentes». Tres operaciones: **ingesta** (crea nube de conexiones, enlaza gaps, detecta choques entre documentos — «ahí tiene que entrar el usuario a resolver el conflicto»), **preguntar** (no lanza el dardo: encuentra un nodo y recorre relaciones a 1-4 niveles de profundidad — «si algo empieza de una manera y acaba de otra, llega al punto final») y **revisión/lint** (contradicciones, páginas huérfanas — «como el sueño humano: el ruido se asienta y mañana el agente arranca con contexto limpio»). Nodo de índice obligatorio (URL + frase por documento). Escalado más difícil que embeddings → limpieza periódica por el agente.
3. **RSC Brain** (su implementación): memoria persistente y continua **para cualquier agente** (no solo código — diferencia con Grafiti... «Grafifai» y Engram de Gentleman Programming/Alan Buscaglia, que cita como alternativas), pensada para acoplarse a RSC Factory; instalable en Linux/Mac (servidor Hetzner + Tailscale para HTTPS obligatorio del MCP); instalador tipo WordPress; brains múltiples con permisos (reader/contributor/curator) por equipo; MCP con ~22 tools; ingestas que requieren **aprobación humana** por defecto (13 páginas de la demo: investigar LLM Wiki de Karpathy vs. RAG); grafo de conocimiento por comunidades; búsqueda BM25; registro de decisiones del agente (curator/contributor/reader de la propia investigación); limpieza automática diaria (enlaces rotos, contradicciones, páginas obsoletas — fusiona conceptos duplicados de papers distintos); Postgres como backend (a diferencia de la implementación de Karpathy, versionada en Git).
4. **Comparativa honesta**: RAG — escala a millones de documentos, barato, no requiere curación permanente; pero **no acumula** («cada pregunta empieza de cero»: amnesia de decisiones, duplicación de código, gasto de tokens), y su fallo es difícil de trazar. LLM Wiki — acumula, relaciona, registra preguntas previas (trazable), versiona (en Karpathy); pero más caro de construir y mantener, y **riesgo de decisiones contradictorias no detectadas** (decisión vieja vs. nueva de hace un año — «hay que estar atento» aunque su objetivo es end-to-end sin intervención). Veredicto de la investigación que documenta en vivo: **«ninguno gana siempre»** — empezar por un buen RAG y añadir wiki solo si hace falta (cuándo la gana la wiki: fuentes ilimitadas, preguntas multi-documento, alguien que la revise periódicamente «porque si no acaba entrando basura»). Su propio RSC Harness pierde sentido como documentación interna de Git una vez conectado a RSC Brain.

## Señales de triage

- **Tutorial técnico competente**: fundamentos correctos (embeddings, BM25, VCSEL no aplica — correcto en nombres de vector stores y modelos), demo real de punta a punta (instalación, MCP, auth, ingesta, revisión, grafo, limpieza) con fallos reconocidos del propio producto («versión no definitiva, bugs»).
- **Singularidad para esta wiki**: documenta el patrón LLM Wiki de Karpathy y su ecosistema (Engram de Gentleman Programming citado) — el patrón que rige la propia estructura de esta wiki (resúmenes, conceptos únicos, índice, log, lint, contradicciones). Par directo para la página de concepto que ya existe sobre LLM wiki en el backlog.
- Conflicto de interés declarado: promociona su propio proyecto open source (funnel suave a comentarios/miembros); la comparativa, sin embargo, es equilibrada (recomienda empezar por RAG).
- Nombres ASR normalizados solo aquí («Carpati» → Karpathy, «Rack/RAG», «Cloud Code/Clouds» → Claude Code, «RSS/RSC Brain», «Grafifai» → probable GraffitAI); raw intacto. Sin patrocinios externos.

## Cruces

- Consolidación aplazada: fuente central para la futura página de concepto del patrón LLM Wiki (la estructura de esta wiki es una implementación del patrón: ingesta/index/log/lint/contradicciones — ver el propio AGENTS.md); clúster agentes con WL-603 (guardrails/revisiones), WL-600, WL-604; Engram (Gentleman Programming) ya es entidad del backlog.

## Veredicto de triage

Fuente muy relevante: explica y demuestra el patrón LLM Wiki de Karpathy con una comparativa equilibrada contra RAG, desde el autor de una implementación propia. Sesgo promocional declarado y señalado. Sin consolidación (aplazada).
