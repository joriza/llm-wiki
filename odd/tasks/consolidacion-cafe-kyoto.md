# Consolidación del lote Café Kyoto

Consolidación (AGENTS.md, Operaciones 3) de las 11 fuentes del lote 2026-11-10, más propuesta de dominios para confirmación del usuario. Posterior a esto: ingesta por lotes de la playlist «IA-Recursos» (57 videos) en los dominios que se confirmen.

## Specs

- S1: «Consolidación (tras un lote, o bajo demanda): revisar los resúmenes acumulados pendientes; crear/actualizar páginas de concepto y entidad; fusionar conceptos duplicados en páginas únicas; construir referencias cruzadas; señalar contradicciones entre fuentes; actualizar overview.md y sintesis.md; evaluar propuestas de dominios nuevos; registrar en log.md y hacer commit.» (AGENTS.md, Operaciones 3).
- S2: «Los conceptos que aparezcan en varios dominios... se documentan en una única página de concepto... nunca se duplica el contenido.» (AGENTS.md).
- S3: Toda fusión o división de dominios requiere confirmación del usuario (AGENTS.md, Dominios).
- S4: Enlaces entre páginas con la sintaxis de doble corchete propia de la wiki; los resúmenes citan su archivo raw.
- S5: Decisión del usuario (2026-11-10): primero consolidación + propuesta de dominios; después, ingesta por lotes de la playlist «IA-Recursos» (57 videos) en los dominios confirmados.

## Tasks

- T1 [S1] Página de entidad: café-kyoto — HECHA.
- T2 [S1-S2] Páginas de concepto únicas (9): sociedades-de-control, industria-cultural, efecto-enjambre, estetica-de-la-regresion, doctrina-del-odio, construccion-del-acontecimiento, radicalizacion-digital, meritocracia-y-moral-del-esfuerzo, low-tech-y-fuga — HECHAS.
- T3 [S4] Referencias cruzadas: 11 resúmenes actualizados (Canal + conceptos) — HECHAS.
- T4 [S1] overview.md y sintesis.md creados — HECHO.
- T5 [S1] index.md: 10 filas nuevas — HECHO.
- T6 [S1] log.md entrada de consolidación + lint (enlace huérfano ia-y-lenguaje eliminado) + commit — HECHO.
- T7 [S3] Propuesta de dominios → confirmación del usuario (STOP hasta decisión) — EN CURSO.
- T8 [S5] (post-decisión) Ingesta por lotes de la playlist «IA-Recursos» en dominios confirmados.

## Log

- L1: Usuario: «puedes procesar como ingesta esta lista personal de youtube? https://www.youtube.com/playlist?list=PLqe2XRWDm9RFPm-m87F0OUigdK8GDla3N» — playlist «IA-Recursos», 57 videos, listado en .atl/playlist-ia-recursos.json.
- L2: Decisión del usuario (ask_user_choice): primero consolidar + dominios, luego la lista.
