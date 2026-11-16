# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-15, consolidación T40 de los tramos 28-37): **0 resúmenes en la estación**. Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14, los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14** los **49 pares útiles de los tramos 8-17 (WL-102..WL-151; 1 SKIP `.no-subs` WL-136) el 2026-11-15** los **51 pares útiles de los tramos 18-27 (WL-152..WL-203; 5 SKIP `.no-subs`: WL-157 y 4 videos eliminados sin número) el 2026-11-15 (T39)** y los **50 pares útiles de los tramos 28-37 (WL-204..WL-257; 5 SKIP sin migrar: 1 `.no-subs` WL-204a `uGQ5aJt7RZU` video eliminado + 4 SKIP-DUPLICATE pre-flight WL-237/242/243/245, ya procesadas antes de la numeración WL) el 2026-11-15 (T40)** — general/ 24, agentes-de-codigo/ 9, ia-local/ 6, sociedad-argentina/ 5, ia-critica-y-fronteras/ 5, ciencias-tierra/ 1 — todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19), **1 meta-fail sin fuente** (WL-13, re-pass), **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`) y **1 SKIP definitivo sin subtítulos del tramo 14** (WL-136 `fh8f3UdpWzU`, GP Vods, marcador `.no-subs`). Los tramos 1-37 figuran como **consolidados**; las secciones por tramo se retiraron al migrar cada fuente (las filas migradas viven en el historial git). Producto de la consolidación T40: concepto nuevo [[inferencia-local]] (ia-local/) y actualización de [[cognix]] (12 fuentes), [[fazt]] (12), [[gentleman-programming]], [[agentes-de-codigo]], [[historia-de-la-tecnologia]], [[spec-driven-development]], [[el-nino]], [[secretos-geograficos-argentina]] (discrepancia Campo del Cielo armonizada). Enlaces resueltos a texto plano por umbral <2: PepoTech (WL-222), Tirando Código (WL-217), llama-swap (WL-253).

| WL | Título | Canal | Dominio destino previsto | Tramo | Estado |
| --- | --- | --- | --- | --- | --- |
| WL-1 | Gentle Shell: cambié toda la interfaz y el diseño (`niubcMYfdWU`) | Gentleman Programming Vods | agentes-de-codigo | 1 | Baja — raw eliminado (2026-11-13) |
| WL-6 | Cardiólogo advierte: millones hacen ESTO cada mañana… (`_DB1IK5s_1s`) | Secretos de la Longevidad | general (clúster fitness-senior) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-9 | El Papa y la CARPA VIP para «FAMOSOS» (`SFQ6rvooB58`) | Tipito LIVE | general (candidata a sociedad-argentina) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-19 | Últimos días 11.11 AliExpress 🗑️ baja (`QOug4_hsCGI`; resumen y raw eliminados) | acaele | — | 2 | Baja — raw eliminado (2026-11-13) |
| WL-13 | El mito del hardware caro: cómo ejecutar LLM sin arruinarte | sin identificar | por definir | 1 | Meta-fail ×2 — re-pass (sin descarga) |

## Tramo 38 — en estación (T41, 2026-11-15, relevo 31)

5 fuentes útiles ingestadas en `wiki/wl/tramo-38/` (raws en `raw/wl/tramo-38/`), pendientes de consolidación:

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-261 | Lo que NUNCA te explicaron de las Transacciones en SQL (`DBOuemO4q0k`) | TheDebugDuck | informatica-teoria o general | En estación — 5ª fuente del canal (entidad thedebugduck) |
| WL-262 | Hablemos de Hacktivismo 🌐... ¿es Solarpunk? ✴ (`eoYC4gIw_Zs`) | Tamychi | ia-critica-y-fronteras o general | En estación — videoensayo de opinión, NO factual |
| WL-263 | ¡NOS MINTIERON! Nuevo Descubrimiento en Egipto (`DYLNggoAbFU`) | TopFacts ES | general (arqueología) | En estación — content-farm clickbait, candidata a baja |
| WL-265 | Lone Survivor — película completa (`vbBVhmhQkBw`) | Diamond Films Plus | general (cultura pop) | En estación — CANDIDATA A BAJA (ficción subida no autorizada) |
| WL-266 | Esto es lo más grande que ha pasado desde ChatGPT (`d1fKvNlEj60`) | Gustavo Entrala | ia-uso-practico o ia-critica-y-fronteras | En estación — 3ª fuente del canal (entidad gustavo-entrala) |

Skips sin numeración útil: WL-258 `pzFzku0VAUc` [Deleted video] `.no-subs`, WL-259 `0eL-Bz0rqmU` [Deleted video] `.no-subs`, WL-260 `Z1Z8DziVhzo` SKIP-DUPLICATE (ya procesado), WL-264 `VX1eYYyJ3XQ` [Deleted video] `.no-subs`. Cabeza del backlog tras el tramo: WL-267.
## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14; tramos 8-37: 2026-11-15 — T38, T39 y T40). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo. La estación queda **vacía y sin secciones activas**; la cabeza futura del backlog es WL-258 (`pzFzku0VAUc`, video eliminado — probable SKIP).


## Tramos 28-37 — consolidados (T40, 2026-11-15)

Los 50 pares útiles migraron a sus dominios definitivos (detalle por fuente en `log.md`, bloque CONSOLIDACIÓN WL T40, y en `index.md`):

| Dominio | Fuentes | WL |
|---|---|---|
| general/ | 24 | 204, 207, 212, 213, 215, 216, 217, 219, 220, 221, 222, 223, 227, 229, 231, 232, 235, 238, 244, 246, 248, 252, 255, 256 |
| agentes-de-codigo/ | 9 | 211, 214, 228, 230, 233, 234, 247, 249, 257 |
| ia-local/ | 6 | 206, 209, 239, 240, 253, 254 |
| sociedad-argentina/ | 5 | 208, 224, 225, 236, 251 |
| ia-critica-y-fronteras/ | 5 | 205, 210, 218, 241, 250 |
| ciencias-tierra/ | 1 | 226 |

SKIP sin migrar (no generaron resumen): WL-204a (`uGQ5aJt7RZU`, `.no-subs`, video eliminado) y duplicados pre-flight WL-237/242/243/245 (ya procesados antes de la numeración WL).
