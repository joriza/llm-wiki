# Ingesta WL fresca (post-vaciado) — cabeza en vivo

## Allowed edit surfaces
raw/wl/
wiki/wl/
index.md
log.md
.atl/scratch/
.atl/salidas.md
odd/tasks/

Ingesta de la lista WL de YouTube tras el vaciado total de 2026-11-17: 22 entradas únicas (cache fresco `.atl/scratch/playlist-ver-mas-tarde.json`, refresh 2026-11-17, cabeza `scuLj28t83k`). Un único subagente (`gentle-ai-worker`, esfuerzo low) con relevo cada 5 fuentes útiles; el orquestador verifica la cabeza de la lista al cierre de cada relevo: si cambió respecto del cache, re-lista, reemplaza el cache y el relevo siguiente arranca desde la nueva cabeza.

## Specs

- S1: «Hacé refresh de la lista WL de YouTube para leerla como está ahora mismo, y procesá las fuentes desde la cabeza de esa lista fresca» (pedido textual 2026-11-17; refresh hecho por el orquestador: 22 entradas, backup del cache viejo no necesario — la lista fue vaciada y reconstruida por el usuario).
- S2: «en un único sub-agente con relevo cada 5 fuentes» — un solo worker reanudado por relevo (`subagent_run`/`subagent_continue`), cortes solo en frontera committed.
- S3: «Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza» — verificación de cabeza por el orquestador entre relevos (listing yt-dlp fresco; head ID ≠ cache head → reemplazar cache y arrancar desde el índice 0 del cache nuevo; skips por dedupe/marcadores protegen lo ya procesado).
- S4: Flujo WL vigente (regla L7 del doc `ingesta-ver-mas-tarde.md`): raw → `raw/wl/tramo-9X/`, resumen → `wiki/wl/tramo-9X/resumen-WL<NNN>-*.md`, fila en `index.md`, línea en `log.md`, commit por fuente con `git add` por archivo. Sin dominios nuevos ni consolidación durante la ingesta (aplazada bajo orden).
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md`: Regla de descarga v2 (puerta mecánica, sonda de salida, taxonomía de errores, dedupe cruzado contra `raw/`), salida WARP actual (`104.28.199.111`) con `--gate-floor 85` y cierre de tramo ante cualquier 429, SKIP definitivo `.no-subs`/`.private`, numeración WL<NNN> en orden de lista.

## Tasks

- T1 (S1-S5, worker, commit): Relevo 1 — 5 fuentes útiles desde la cabeza (`scuLj28t83k`…). Runner `--one --budget 5 --gate-floor 85`; ciclo completo por fuente (S4); lectura-tramo98.md.
  - **COMPLETADO 2026-11-17** (worker relevo 1): 5/5 útiles — WL-601 scuLj28t83k `88c4d77f`, WL-602 9iZRgCVcA6Q `d6e8796e`, WL-603 PXd2KzUhDUc `16f7135b`, WL-604 WIriMsfscYw `5deeb42b`, WL-605 poUx6yhbcfg `82d9e95a` (+1 skip .no-subs FlBHb5wTtTU sin commit de par). Último ID procesado: `poUx6yhbcfg` (índice 5 del cache); cabeza futura: `XCaI7do8Nkk` (índice 6). Egress real WARP **104.28.199.112** (EXIT-ROTATED desde .111 prevista; PROBE-OK al iniciar). Un BUDGET-REACHED (5 entradas = 4 útiles + 1 skip) resuelto por L13 con presupuesto suave 5→8, sin rotar; sin 429. lectura-tramo98.md en scratch.
- T2 (S1-S5, worker, commit): Relevo 2 — 5 útiles siguientes (tras verificación de cabeza del orquestador).
- T3 (S1-S5, worker, commit): Relevo 3 — 5 útiles siguientes.
- T4 (S1-S5, worker, commit): Relevo 4 — 5 útiles siguientes.
- T5 (S1-S5, worker, commit): Relevo final — útiles restantes (hasta agotar las 22 del cache, contando skips/dupes sin valor útil).

## Log

- L1: «Hacé refresh de la lista WL de YouTube para leerla como está ahora mismo, y procesá las fuentes desde la cabeza de esa lista fresca, en un único sub-agente con relevo cada 5 fuentes. Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» (2026-11-17)
- L2: Refresh ejecutado por el orquestador (yt-dlp, cookies Firefox): 22 entradas únicas, cabeza `scuLj28t83k` («⛈️ URGENTE! | EL NIÑO HISTÓRICO…»). Cache reemplazado: `.atl/scratch/playlist-ver-mas-tarde.json`. Ruta vigente: WARP `104.28.199.111` (salidas.md; regla WARP: gate-floor 85, cierre ante 429).
- L3: PEDIDO 2026-11-17: «detengase al finalizar el tramo.» — SUPERADO por L4.
- L4: PEDIDO 2026-11-17: «Limpie caché, quiero procesar la lista completa de los que no se han procesado antes.» + repetición del pedido L1 (único subagente, relevo cada 5, verificación de cabeza entre relevos). El caché interno fue verificado intacto (estado.json, 531 marcadores, dedupe contra raw/): nada que reconstruir; «limpiar caché» no borró nada del pipeline. T2-T5 reactivadas: procesar TODAS las entradas del cache fresco de 22 (útiles + skips), relevos de 5 útiles hasta agotar la lista, con verificación de cabeza del orquestador al cierre de cada relevo (cabeza cambiada → re-listar y seguir desde la nueva cabeza).
