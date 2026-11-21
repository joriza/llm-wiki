# Reorganización de hubs y recategorización de dominios (lote pendientes)

Ejecutar los cambios de taxonomía pendientes de la wiki, en el orden que el orquestador considere efectivo; verificación de enlaces rotos al final y push a remoto solo tras la verificación.

## Specs

- S1: «ejecute todos esos cambios pendientes con el orden que considere efectivo, preferentemente en sub agentes, pero lo dejo a su criterio»
- S2: «si todo sale bien verifique que no haya enlaces rotos y pushee a remoto luego de la verificacion»
- S3 (contexto aprobación): taxonomía de hubs de primer nivel (d) APROBADA por el usuario 2026-11-21, PENDIENTE de ejecución — 6 hubs: `ia/`, `electronica-y-energia/`, `argentina/`, `hogar-y-vida-practica/`, `tecnologia-y-sociedad/`, `historia-y-archivo/`; sueltos: python-practico, informatica-teoria, general/, wl/.
- S4 (decisión del orquestador, autorizada por S1): propuesta (a) se ejecuta físicamente — unificar historia-argentina/ (33), sociedad-argentina/ (82) y economia-argentina/ (15) en `wiki/argentina/{historia,sociedad,economia}/` con espejo `raw/argentina/...`; con esto (b) absorción de economia-argentina y (c) división de sociedad-argentina quedan RESUELTAS (sub-temas del dominio unificado).
- S5 (pendiente menor 1): colisión WL-402 — la pieza Gen X de Mente Descubierta (J8CCv5zwBT0) fue citada como «WL-402» en conexiones previas, pero el archivo resumen-WL402-... es de BettaTech; corregir numeración y la nota de colisión en la entidad [[mente-descubierta]].
- S6 (pendiente menor 2): tema JEV (WL-346/350/353) «queda cruzado entre dominios, a consolidar en próxima ingesta» — verificar cableado contra [[paradoja-jevons-software]] (ya existente) y completar si falta.
- S7 (evaluación lint): informatica/ (~72 fuentes, > umbral 30) — evaluar división; si no hay sub-temas claramente diferenciados con evidencia, NO dividir físicamente: documentar la evaluación y eventual propuesta en dominios.md.

## Tasks

- T1 (S4) [worker] Migración física argentina: crear wiki/argentina/{historia,sociedad,economia}/ + raw/argentina/{...}; git mv de los 3 dominios; corregir citas «Fuente original»/«Raw»; filas de index.md; página-hub wiki/argentina/argentina.md; commits atómicos por sub-tema.
- T2 (S5) [worker] Lint WL-402: corregir referencias mal numeradas (pieza Gen X J8CCv5zwBT0) y la nota de colisión en [[mente-descubierta]].
- T3 (S6) [worker] JEV: verificar/cablear WL-346/350/353 a [[paradoja-jevons-software]]; verificar resolución documentada de «canales de 1 fuente».
- T4 (S3,S7) [inline] Vista de hubs: reescribir overview.md y wiki/dominios.md con los 6 hubs + sueltos; documentar decisiones (a) ejecutada, (b)/(c) resueltas, evaluación informatica/; Hilo nuevo en overview + sección en sintesis.md.
- T5 (S2) [inline] Verificación: script de enlaces rotos ([[...]]) sobre wiki/ + index.md; corregir los rotos que la reorganización causó.
- T6 (S2) [inline] Push a origin solo tras verificación limpia.

## Log

- L1 (verbatim): «ejecute todos esos cambios pendientes con el orden que considere efectivo, preferentemente en sub agentes, pero lo dejo a su criterio / si todo sale bien verifique que no haya enlaces rotos y pushee a remoto luego de la verificacion»

## Cierre (2026-11-21)

- T1 ✅ commit 4c0d3217 · T2 ✅ 385a6d9c (opción A) · T3 ✅ sin ediciones (JEV no-aplicable, verificado por worker) · T4 ✅ e89b4c8f · T5 ✅ cec74d21 (0 rotos causados por la reorganización; 42 preexistentes catalogados en log.md) · T6 ✅ push b8510d35..cec74d21 a origin/master.
- S1-S7 cubiertos. Nota S4: unificación física argentina ejecutada bajo la autorización de S1; S5 resuelto por opción A (pieza pre-lista WL sin número); S6 no-aplicable; S7 sin división física documentada en dominios.md.
