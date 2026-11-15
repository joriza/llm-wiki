# Plantilla: ingesta de playlist de YouTube

> Copiar este archivo a `odd/tasks/ingesta-<nombre>.md` y completar TODO_LO_QUE_ESTA_ENTRE_ANGULARES antes de lanzar el primer writer. Borrar esta línea al copiar. La ingesta de playlist es tarea grande ODD por definición (multi-sesión, esperas externas, estado en archivos, no resumible desde diff): el doc es legítimo, no un truco de admisión.

# Ingesta playlist <nombre>

Ingesta de la playlist de YouTube <PLAYLIST_URL_OR_ID> (<N> entradas únicas) al dominio `<dominio>/`, con bucle descarga→ingesta del runner v2 y relevo de subagente cada 5 fuentes.

## Specs

- S1: «Procese la lista <PLAYLIST_URL>» (pedido textual del usuario).
- S2: «Recuerde procesar en un unico sub-agente.» (un subagente por tramo, relevos; contexto principal delgado).
- S3: «con relevo cada 5 fuentes» (cortes solo en frontera committed).
- S4: Dominio destino: <EXISTENTE_O_NUEVO> — si es nuevo, aprobado por el usuario y registrado en dominios.md/index.md/log.md antes de T1.
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md` (Regla de descarga v2: puerta mecánica, sonda, taxonomía de errores, commit por fuente con git add por archivo, SKIP definitivo sin subtítulos, 429 → TRAMO-CLOSED).

## Tasks

- T1 (S1-S5, worker, commit): Relevo 1 — fuentes 1-5. Runner `--one --budget 5`; ciclo por fuente completo (raw intacto → resumen → cruces → index/log → commit por archivo); lectura-tramo1.md.
- T2 (S1-S5, worker, commit): Relevo 2 — fuentes 6-10. Mismo ciclo; lectura-tramo2.md.
- T3 (S1-S5, worker o parent, commit): Relevo final — fuentes restantes + consolidación (páginas de concepto/entidad, cruces, contradicciones), overview.md, sintesis.md, lectura-tramoN.md. Push solo bajo orden del usuario.

## Log

- L1: <pedido original del usuario, textual, con fecha>.
- L2+: decisiones de dominio, pausas, desviaciones del runner, todo textual.
