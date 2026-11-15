# Ingesta playlist python

Ingesta de la playlist de YouTube PLqe2XRWDm9RHSidWrA_4BSEUjj9JqtDr6 «Python» (37 entradas; 1 privado SKIP) al dominio `python-practico/`, con bucle descarga→ingesta del runner v2 y relevo de subagente cada 5 fuentes.

## Specs

- S1: «Procese la lista https://www.youtube.com/playlist?list=PLqe2XRWDm9RHSidWrA_4BSEUjj9JqtDr6» (pedido textual del usuario).
- S2: «Recuerde procesar en un unico sub-agente.» (un subagente por tramo, relevos; contexto principal delgado).
- S3: «con relevo cada 5 fuentes» (cortes solo en frontera committed).
- S4: Dominio destino: `python-practico/` (existente, registrado en dominios.md).
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md` (Regla de descarga v2: puerta mecánica, sonda, taxonomía de errores, commit por fuente con git add por archivo, SKIP definitivo sin subtítulos o privado, 429 → TRAMO-CLOSED).

## Tasks

- T1 (S1-S5, worker, commit): Relevo 1 — fuentes 1-5. Runner `--one --budget 5`; ciclo por fuente completo (raw intacto → resumen → cruces → index/log → commit por archivo); lectura-tramo1.md.
- T2 (S1-S5, worker, commit): Relevo 2 — fuentes 6-10. Mismo ciclo; lectura-tramo2.md.
- T3+ (S1-S5, worker o parent, commit): Relevos siguientes de a 5 hasta agotar la lista (o TRAMO-CLOSED); relevo final incluye consolidación (páginas de concepto/entidad, cruces, contradicciones), overview.md, sintesis.md, lectura-tramoN.md. Push solo bajo orden del usuario.

## Log

- L1: 2026-11-15 — «Procese la lista https://www.youtube.com/playlist?list=PLqe2XRWDm9RHSidWrA_4BSEUjj9JqtDr6 Recuerde procesar en un unico sub-agente. con relevo cada 5 fuentes».
- L2: Pre-flight: 37 entradas listadas; NkvvWMS220g es video privado (SKIP definitivo). Dominio `python-practico/` existente, sin consulta de dominio nuevo necesaria.
- L3: 2026-11-15 — Relevo 1 (T1) completado: fuentes 1-5 con ciclo completo raw→resumen→index/log→commit por archivo (qWYx5neOh2s MongoDB/PyMongo; 1bLWSsocsxI Serverless; cFED4bHaK9I hilos/race condition; rhnMvvmfBFI scraping BeautifulSoup; 77XkXOInk1k scraping regex). Salida 45.239.32.215 sin 429 (sonda OK y 5 descargas timedtext consecutivas); presupuesto relanzado a 16 por uso acumulado del día (11 previos en otros lotes) según regla «presupuesto estimado» — primera invocación con --budget 5 devolvió BUDGET-REACHED inmediato, sin contacto con YouTube. Cruces: [[bases-de-datos-especializadas]] actualizada con la fuente MongoDB; [[automatizacion-con-python]] con línea serverless; 3 resúmenes con cruces por búsqueda en wiki/. lectura-tramo1.md generada en .atl/scratch/python/. Nota: .atl/salidas.md está gitignored (registro operativo no versionado); línea de relevo appendeada sin commit. Pendientes T2 (fuentes 6-10) y resto de la lista; consolidación en relevo final.
- L4: 2026-11-15 — Relevo 2 (T2, S1-S5) completado: fuentes 6-10 con ciclo completo (emLz-uzBScc funciones/módulos/paquetes, Cancino; ckjUa76F9Vg ejercicio pandas encuesta StackOverflow, Dimas; NtobWmD1A0w PEP8/linters/formatters/git hooks, CodinEric; Mm1L4Bde6_w intro pandas teórica, La Cartilla; m6Ij39K-TPc IDE Spyder, La Cartilla). Salida 45.239.32.215 sin 429 (5 descargas --one --budget 21 consecutivas; presupuesto estimado consumido sin incidente). Cruces por búsqueda en wiki/: fuente 6 a [[automatizacion-con-python]]/uv; 7 a [[duckdb]]/[[polars]]/[[automatizacion-con-python]]; 8 a [[codigo-de-plomeria]]/[[mapa-del-ecosistema-python]]; 9 al resumen de pandas aplicado + duckdb/polars; 10 a pandas aplicado + uv. Sin SKIP ni fallos. lectura-tramo2.md generada en .atl/scratch/python/. Contenido señalado: título clickbait en fuente 7 (ejercicio intermedio); Kite (fuente 10) descontinuado — nota histórica en resumen; CI (GitHub Actions) queda como laguna abierta del dominio. Pendiente T3+: fuentes 11-37 y consolidación en relevo final.
