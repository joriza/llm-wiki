# Ingesta playlist casa-2

Ingesta de la playlist de YouTube PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD (77 entradas únicas listadas 2026-11-17; se procesan las primeras 50) al dominio `construccion-y-vivienda/`, con bucle descarga→ingesta del runner v2 y relevo de subagente cada 5 fuentes.

## Specs

- S1: «Hacé refresh de la lista Casa de YouTube para leerla como está ahora mismo, y procesá 50 fuentes desde la cabeza de esa lista fresca, en un único sub-agente con relevo cada 5 fuentes.» (pedido textual del usuario).
- S2: «Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» (re-chequeo de cabeza al inicio de cada relevo).
- S3: Lista aclarada por el usuario tras el refresh: «Lista hecha pública. Este es el enlace https://www.youtube.com/playlist?list=PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD» (ID distinto del viejo PLqe2XRWDm9RERlx1WjdfcR1MfTedCZRco, ya cerrado 27/27).
- S4: Dominio destino: `construccion-y-vivienda/` — nuevo, nombre elegido por el usuario (ask_user_choice 2026-11-17), registrado en dominios.md/log.md antes de T1.
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md` (Regla de descarga v2: puerta mecánica 60-90 s, sonda de salida, taxonomía de errores, commit por fuente con git add por archivo, SKIP definitivo sin subtítulos, 429 → TRAMO-CLOSED, dedupe pre-flight contra raw/).
- S6: «procesá 50 fuentes desde la cabeza» — exactamente las 50 primeras entradas únicas del listado fresco (`.atl/scratch/playlist-casa-2.json`); las 27 restantes quedan para un lote futuro.

## Allowed edit surfaces

raw/construccion-y-vivienda/
wiki/construccion-y-vivienda/
wiki/entidades/
index.md
log.md
.atl/scratch/casa-2/
.atl/descarga-casa-2.log

## Tasks

- T1 (S1-S6, worker, commit): Relevo 1 — fuentes 1-5. Runner `python .atl/descarga_playlist.py URL_DE_LA_PLAYLIST casa-2 --one --budget 5` (una pasada por fuente); ciclo por fuente completo (raw intacto → resumen en wiki/construccion-y-vivienda/ → cruces con sintaxis wiki de corchetes dobles → index/log → commit por archivo); lectura-tramo1.md. **HECHO (2026-11-21): 4 committed (f1e0979e, 450c050a, 40eff8ca, ee736029 skip-nosubs n6Y9J34R1yw, 7f6521f8) + presupuesto elevado a 110 por regla 2026-11-14 tras BUDGET-REACHED de la salida WARP (salidas.md: 0 429); cabeza S2 sin cambios.**
- T2 (S1-S6, worker, commit): Relevo 2 — fuentes 6-10. Igual + lectura-tramo2.md. **HECHO (2026-11-21): 3 committed (ef52ecfa, e89d67f1, 904711f8, b76ca616) + 2 skip-nosubs (Bt0iMYzV8dE, b0de6c5d); cabeza S2 sin cambios; siguiente i2aPDEKMYYk.**
- T3 (S1-S6, worker, commit): Relevo 3 — fuentes 11-15. Igual + lectura-tramo3.md. **HECHO (2026-11-21): 3 committed (907ce4a0, ef018f98, 5186bf4a) + 2 skip-nosubs (i2aPDEKMYYk, b024WRun-vE; c4a9368c, 673d6456); cabeza S2 sin cambios; siguiente yT_ei2MXXYg.**
- T4 (S1-S6, worker, commit): Relevo 4 — fuentes 16-20. Igual + lectura-tramo4.md. **HECHO (2026-11-21): 3 committed (c5650890, 09a11569, 722e214e) + 2 skip-nosubs (VBxRmXU7L-s, 8OqnoQY8POA; 483ea39d, d6a44718) + fix fila index (7e2dcc86); cabeza S2 sin cambios; siguiente s0py4jIXh4U.**
- T5 (S1-S6, worker, commit): Relevo 5 — fuentes 21-25. Igual + lectura-tramo5.md. **HECHO (2026-11-21): 4 committed (747e2dda, 2443f0e2, f275b087, 82483c55) + 1 skip-nosubs (7srtxvyy0zo, d91f295a); mitad del lote 25/50; cabeza S2 sin cambios; siguiente 8xbV0YX0hlY.**
- T6 (S1-S6, worker, commit): Relevo 6 — fuentes 26-30. Igual + lectura-tramo6.md. **HECHO (2026-11-21): 4 committed (8950cc46, 237ef0df, 95553fc1, c5fb1fb4) + 1 skip-nosubs (FVbbs8VOOTg, d2fa1ac9); bloque SIP 5 fuentes consecutivas (prioritario en T11, contraste comercial vs fuente 22); cabeza S2 sin cambios; siguiente Rt0_BYNb4n0.**
- T7 (S1-S6, worker, commit): Relevo 7 — fuentes 31-35. Igual + lectura-tramo7.md. **HECHO (2026-11-21): 1 committed (UPTYQ19xUJU, eedad191) + 4 skip-nosubs seguidos (31-34; racha sin aborto por protocolo); cabeza S2 sin cambios; siguiente r58UzpTQZW4.**
- T8 (S1-S6, worker, commit): Relevo 8 — fuentes 36-40. Igual + lectura-tramo8.md. **HECHO (2026-11-21): 5/5 committed (e94302af, 48be709f, 6a2939f5→6a294395, 5d4a6169, 6cf939e2); bloque didáctico Seia completo; Seia acumula 14 fuentes (entidad dominante T11); cabeza S2 sin cambios; siguiente xteeXKbsz7c.**
- T9 (S1-S6, worker, commit): Relevo 9 — fuentes 41-45. Igual + lectura-tramo9.md. **HECHO COMPLETO (2026-11-21): 41-43 committed en relevo 9 (cbac3c07, 8e0f9419, 4e52040f) tras primer 429 real en la 44 → TRAMO-CLOSED WARP; 44-45 completadas en relevo 10 con salida ISP 45.239.32.215 (06b593e7, d4136531).**
- T10 (S1-S6, worker, commit): Relevo 10 — fuentes 46-50. Igual + lectura-tramo10.md. **HECHO (2026-11-21): 44-50 resueltas + extra 51 (5-8BoV2OEoU quincha, ya bajada en scratch): 6 committed (06b593e7, d4136531, 44e2fe18, 9bfca227, d506223e, 7db80a64, 746fc507) + 1 skip-duplicate (tULqbx1Lw94, ya en otro lote); fuente 48 (0rwLwL6I6rk) con ASR italiano — no sintetizable, re-ingesta opcional; cabeza futura Azl6iwtc2dY (26 entradas restantes).**
- T11 (S1-S6, worker o parent, commit): Cierre del lote — consolidación aplazada (páginas de concepto/entidad, cruces, contradicciones), overview.md, sintesis.md, evaluación de división de dominio (50 fuentes > umbral 30), lectura-tramos consolidada. Push solo bajo orden del usuario. **HECHO (2026-11-21): 5 conceptos (paneles-sip con tabla de contradicción comercial-vs-independiente, micro-viviendas, aislamiento-termico, humedades, techos-de-chapa) + 4 entidades (arquitecto-marcelo-seia ×16, cotaparedes, arquitecto-gratis, lucas-alarcon) + permacultura-holistica actualizada por el orquestador (09a7683e); 38 resúmenes cableados; overview Hilo 35 + sintesis sección 33; commits f4437cb0, f189a766, 5b564278, 58ce4b1b, 1deb8113. División de dominio: no propuesta — 38 resúmenes reales (< umbral 30 de un solo subtema); lint futuro vigila. Push PENDIENTE de orden del usuario.**

Cada relevo (T1-T10) arranca con el re-chequeo de cabeza de S2: re-listar (`--refresh-list` implícito por frescura o forzado), comparar las 5 primeras IDs contra el cache; si cambiaron, re-listar y retomar desde la nueva cabeza sin procesar.

## Log

- L1: «Hacé refresh de la lista Casa de YouTube para leerla como está ahora mismo, y procesá 50 fuentes desde la cabeza de esa lista fresca, en un único sub-agente con relevo cada 5 fuentes. Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» (2026-11-17).
- L2: El refresh de la lista «Casa» vieja (PLqe2XRWDm9RERlx1WjdfcR1MfTedCZRco) mostró 0 pendientes (27/27 cerradas). El usuario aclaró: «Lista hecha pública. Este es el enlace https://www.youtube.com/playlist?list=PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD» — playlist nueva, 77 entradas únicas, 0 procesadas.
- L3: Dominio nuevo `construccion-y-vivienda/` aprobado por el usuario (opción 1 de 3 propuestas); registrado en dominios.md y log.md antes de T1.

## Lote 2 — videos restantes de la lista (26 entradas)

- L4: «conectado warp nuevamente. complete los videos del canal.» → aclarado por el usuario: «complete los videos restante de la lista» — las 26 entradas aún no procesadas de PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD, cabeza Azl6iwtc2dY (2026-11-21). Mismo régimen: un único subagente, relevo cada 5, re-chequeo de cabeza por relevo, salida WARP reconectada.
- T12 (S1-S6, worker, commit): Relevo L2-1 — entradas 52-56 del listado (Azl6iwtc2dY, Z8jZvdQM9_w, uSYqd-NhhvQ, zLJNYTGXwKA, vnWeccCWToI). Ciclo completo + lectura-tramo11.md.
- T13 (S1-S6, worker, commit): Relevo L2-2 — siguientes 5 únicas. + lectura-tramo12.md.
- T14 (S1-S6, worker, commit): Relevo L2-3 — siguientes 5 únicas. + lectura-tramo13.md.
- T15 (S1-S6, worker, commit): Relevo L2-4 — siguientes 5 únicas. + lectura-tramo14.md.
- T16 (S1-S6, worker, commit): Relevo L2-5 — siguientes 5 únicas. + lectura-tramo15.md.
- T17 (S1-S6, worker, commit): Relevo L2-6 FINAL — restantes + consolidación del lote 2 (conceptos/entidades nuevos, cruces, overview/sintesis, log). Push solo bajo orden del usuario.
- L5: «al final de cada relevo consulte si consulta con otro relevo, me queda poca ventana de uso» (2026-11-21) — modo confirmación activado: tras cada relevo del lote 2, el orquestador pregunta al usuario antes de lanzar el siguiente; ningún relevo se encadena solo.
- L6: «pause» (2026-11-21) — lote 2 en pausa tras el relevo L2-2 interrumpido por error de cuota del worker (no un 429 de YouTube). Salida WARP reconectada y validada, 6/26 fuentes del lote 2 procesadas (52-61 + 62 pendiente). Pendientes del lote 2: aprox. 20-21 entradas (relevos L2-3, L2-4, L2-5, L2-6 FINAL con consolidación).
- T15/T16/T17 (L2-4 FINAL, fusionados): **HECHO (2026-11-21): fuentes 71-77 procesadas (6 committed: 043844a3, fda2e0eb, 29f427e7, c07356fe, 6bff05d7, 91e9935f + 1 skip-nosubs f72) → PLAYLIST CERRADA 77/77. Consolidación lote 2 (3448b3e8): humedades +7, aislamiento-termico +5, techos-de-chapa +2, micro-viviendas +2, entidad adrian-pintor, Seia 27 fuentes con nota de lint (división a evaluar, no ejecutada), overview + sintesis sección 34.** PENDIENTE: push (orden del usuario); lint futuro: división Seia, concepto acústica, re-ingesta 0rwLwL6I6rk (ASR italiano).
