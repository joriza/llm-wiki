# Eric Risco

- **Tipo**: página de entidad (canal/creador).
- **Fuentes**: [[resumen-como-hacer-que-una-ia-construya-el-proyecto-que-tu-quieres-eric-risco]] y [[resumen-WL078-ninguna-metodologia-correcta]] (WL-78, tramo 6, en tránsito — consolidación 2026-11-14). Total: 2.

Constructor de **RSC Factory / RSC Harness** (fábricas de código con agentes; producto propio — promoción señalada). Caso real: 8 h de `/goal` con 12 specs y 4.500 tests = «Frankenstein» (asumió gaps, omitió requisitos «por seguridad», añadió lo no pedido — OAuth con QR). Diagnóstico: «solo pasar tests no es suficiente». Solución: **ASDD** (Agent Spec Driven Development) — review dentro de la implementación + spec de 4 preguntas (qué podrá hacer el usuario, qué resultado debe obtener, qué debe respetar, cómo lo demuestra con evidencia) + 7 pasos de revisión.

WL-78 (2026-11-05) es la panorámica comparativa del mismo autor: SDD (falla por specs ambiguas → el agente rellena con decisiones no pedidas), ODD (le gusta la clasificación pero «si falla la clasificación falla todo»), su propio FTD (checklist demostrable + fase de riesgo tras el bug del botón), RSC meta-harness (memoria de decisiones estilo Zettelkasten) y ASDD (verificación dentro de cada tarea + lista de decisiones para el humano + no-ship con riesgo); conclusión: ninguna metodología es la correcta — aprender de todas y adaptar la propia. Confirmación externa e independiente del diagnóstico que motivó ODD; ver [[ambiguedad-rellenada-por-el-sistema]].

**Ver también**: [[spec-driven-development]], [[verificacion-como-valor]], [[odd-metodologia]], [[gentleman-programming]] (ODD desde dentro), [[agentes-de-codigo]].
