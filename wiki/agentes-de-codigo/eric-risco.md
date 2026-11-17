# Eric Risco

- **Tipo**: página de entidad (canal/creador).
- **Fuentes**: [[resumen-como-hacer-que-una-ia-construya-el-proyecto-que-tu-quieres-eric-risco]] y [[resumen-WL078-ninguna-metodologia-correcta]] (WL-78, tramo 6, en tránsito — consolidación 2026-11-14). Total: 2.

Constructor de **RSC Factory / RSC Harness** (fábricas de código con agentes; producto propio — promoción señalada). Caso real: 8 h de `/goal` con 12 specs y 4.500 tests = «Frankenstein» (asumió gaps, omitió requisitos «por seguridad», añadió lo no pedido — OAuth con QR). Diagnóstico: «solo pasar tests no es suficiente». Solución: **ASDD** (Agent Spec Driven Development) — review dentro de la implementación + spec de 4 preguntas (qué podrá hacer el usuario, qué resultado debe obtener, qué debe respetar, cómo lo demuestra con evidencia) + 7 pasos de revisión.

WL-78 (2026-11-05) es la panorámica comparativa del mismo autor: SDD (falla por specs ambiguas → el agente rellena con decisiones no pedidas), ODD (le gusta la clasificación pero «si falla la clasificación falla todo»), su propio FTD (checklist demostrable + fase de riesgo tras el bug del botón), RSC meta-harness (memoria de decisiones estilo Zettelkasten) y ASDD (verificación dentro de cada tarea + lista de decisiones para el humano + no-ship con riesgo); conclusión: ninguna metodología es la correcta — aprender de todas y adaptar la propia. Confirmación externa e independiente del diagnóstico que motivó ODD; ver [[ambiguedad-rellenada-por-el-sistema]].

Consolidación T39 (2026-11-15): dos fuentes nuevas del autor en la wiki — **WL-178** ([[resumen-WL178-asi-se-programa-con-agentes-de-ia-en-2026]], demo del meta-arnés RSC: memoria estructurada con documentación forzada OKF, constitución de reglas por encima de cualquier agente) y **WL-180** ([[resumen-WL180-monta-tu-software-factory]], pipeline «AI Factory» spec writer → builder TDD → 4 revisores → approver con puerta humana graduada); pareja directa (la factory es la industrialización del RSC de WL-178), autopromoción y cifras de terceros sin verificar señaladas en ambos triages.

**Ver también**: [[spec-driven-development]], [[verificacion-como-valor]], [[odd-metodologia]], [[gentleman-programming]] (ODD desde dentro), [[agentes-de-codigo]].

## Actualización 2026-11-17 (consolidación T6, tramo 98 — total 4 fuentes)

Dos fuentes nuevas del autor en el tramo 98, ambas con su producto como destino y conflicto de interés señalado:

- **WL-611** ([[resumen-WL611-rsc-brain-llm-wiki-vs-rag-eric-risco]], tramo 98): la evolución de ASDD — «los sistemas de hace 6 meses ya no sirven»; tutorial RAG vs. patrón LLM Wiki de Karpathy y presentación de **RSC Brain** (memoria persistente en la nube por MCP: permisos reader/contributor/curator, aprobación humana de ingestas, grafo, Postgres). Veredicto equilibrado pese al producto propio («empezar por un buen RAG; añadir wiki solo si hace falta»). Cableado a [[obsidian-memoria-agentes]].
- **WL-620** ([[resumen-WL620-codigo-ia-obsolescencia-arnes-eric-risco]], tramo 98): la tesis fuerte del autor — el progreso del modelo devora el meta-arnés (su propia skill de diseño borrada → prompt simple ganó; SDD/ASDD/ODD/FTD «sin sentido en 6 meses»; ODD homónima ≠ la de esta wiki, aclarado); lo único estructuralmente no resoluble: memoria persistente y continua (prueba: 2 de 3 sesiones nuevas olvidaron decisiones; caché fría 1 h) → RSC Harness (OKF) y RSC Brain. La línea temporal del autor (WL-78 ASDD → WL-178/180 meta-arnés → WL-611 Brain → WL-620 «el andamiaje caduca, la memoria queda») es en sí misma un registro de iteración de producto — valiosa como fuente, con sesgo comercial permanente.

**Autores citados por él en el tramo**: Karpathy (LLM Wiki), Engram de Gentleman Programming (competidor citado).
