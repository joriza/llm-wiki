# Ingesta playlist casa-2

Ingesta de la playlist de YouTube PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD (77 entradas únicas listadas 2026-11-17; se procesan las primeras 50) al dominio `construccion-y-vivienda/`, con bucle descarga→ingesta del runner v2 y relevo de subagente cada 5 fuentes.

## Specs

- S1: «Hacé refresh de la lista Casa de YouTube para leerla como está ahora mismo, y procesá 50 fuentes desde la cabeza de esa lista fresca, en un único sub-agente con relevo cada 5 fuentes.» (pedido textual del usuario).
- S2: «Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» (re-chequeo de cabeza al inicio de cada relevo).
- S3: Lista aclarada por el usuario tras el refresh: «Lista hecha pública. Este es el enlace https://www.youtube.com/playlist?list=PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD» (ID distinto del viejo PLqe2XRWDm9RERlx1WjdfcR1MfTedCZRco, ya cerrado 27/27).
- S4: Dominio destino: `construccion-y-vivienda/` — nuevo, nombre elegido por el usuario (ask_user_choice 2026-11-17), registrado en dominios.md/log.md antes de T1.
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md` (Regla de descarga v2: puerta mecánica 60-90 s, sonda de salida, taxonomía de errores, commit por fuente con git add por archivo, SKIP definitivo sin subtítulos, 429 → TRAMO-CLOSED, dedupe pre-flight contra raw/).
- S6: «procesá 50 fuentes desde la cabeza» — exactamente las 50 primeras entradas únicas del listado fresco (`.atl/scratch/playlist-casa-2.json`); las 27 restantes quedan para un lote futuro.

## Tasks

- T1 (S1-S6, worker, commit): Relevo 1 — fuentes 1-5. Runner `python .atl/descarga_playlist.py <URL> casa-2 --one --budget 5` (una pasada por fuente); ciclo por fuente completo (raw intacto → resumen en wiki/construccion-y-vivienda/ → cruces [[...]] → index/log → commit por archivo); lectura-tramo1.md.
- T2 (S1-S6, worker, commit): Relevo 2 — fuentes 6-10. Igual + lectura-tramo2.md.
- T3 (S1-S6, worker, commit): Relevo 3 — fuentes 11-15. Igual + lectura-tramo3.md.
- T4 (S1-S6, worker, commit): Relevo 4 — fuentes 16-20. Igual + lectura-tramo4.md.
- T5 (S1-S6, worker, commit): Relevo 5 — fuentes 21-25. Igual + lectura-tramo5.md.
- T6 (S1-S6, worker, commit): Relevo 6 — fuentes 26-30. Igual + lectura-tramo6.md.
- T7 (S1-S6, worker, commit): Relevo 7 — fuentes 31-35. Igual + lectura-tramo7.md.
- T8 (S1-S6, worker, commit): Relevo 8 — fuentes 36-40. Igual + lectura-tramo8.md.
- T9 (S1-S6, worker, commit): Relevo 9 — fuentes 41-45. Igual + lectura-tramo9.md.
- T10 (S1-S6, worker, commit): Relevo 10 — fuentes 46-50. Igual + lectura-tramo10.md.
- T11 (S1-S6, worker o parent, commit): Cierre del lote — consolidación aplazada (páginas de concepto/entidad, cruces, contradicciones), overview.md, sintesis.md, evaluación de división de dominio (50 fuentes > umbral 30), lectura-tramos consolidada. Push solo bajo orden del usuario.

Cada relevo (T1-T10) arranca con el re-chequeo de cabeza de S2: re-listar (`--refresh-list` implícito por frescura o forzado), comparar las 5 primeras IDs contra el cache; si cambiaron, re-listar y retomar desde la nueva cabeza sin procesar.

## Log

- L1: «Hacé refresh de la lista Casa de YouTube para leerla como está ahora mismo, y procesá 50 fuentes desde la cabeza de esa lista fresca, en un único sub-agente con relevo cada 5 fuentes. Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» (2026-11-17).
- L2: El refresh de la lista «Casa» vieja (PLqe2XRWDm9RERlx1WjdfcR1MfTedCZRco) mostró 0 pendientes (27/27 cerradas). El usuario aclaró: «Lista hecha pública. Este es el enlace https://www.youtube.com/playlist?list=PLqe2XRWDm9REoA-pabUfCenKfXBNyhBOD» — playlist nueva, 77 entradas únicas, 0 procesadas.
- L3: Dominio nuevo `construccion-y-vivienda/` aprobado por el usuario (opción 1 de 3 propuestas); registrado en dominios.md y log.md antes de T1.
