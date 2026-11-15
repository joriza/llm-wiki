# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-15, cierre del tramo 9): **10 resúmenes en la estación** — `wiki/wl/tramo-8/` (WL-102..WL-106, relevo 1) y `wiki/wl/tramo-9/` (WL-107..WL-111, relevo 2; raws espejados en `raw/wl/tramo-N/`). Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14 y los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14**, todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19) y **1 meta-fail sin fuente** (WL-13, re-pass); **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`).

| WL | Título | Canal | Dominio destino previsto | Tramo | Estado |
| --- | --- | --- | --- | --- | --- |
| WL-1 | Gentle Shell: cambié toda la interfaz y el diseño (`niubcMYfdWU`) | Gentleman Programming Vods | agentes-de-codigo | 1 | Baja — raw eliminado (2026-11-13) |
| WL-6 | Cardiólogo advierte: millones hacen ESTO cada mañana… (`_DB1IK5s_1s`) | Secretos de la Longevidad | general (clúster fitness-senior) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-9 | El Papa y la CARPA VIP para «FAMOSOS» (`SFQ6rvooB58`) | Tipito LIVE | general (candidata a sociedad-argentina) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-19 | Últimos días 11.11 AliExpress 🗑️ baja (`QOug4_hsCGI`; resumen y raw eliminados) | acaele | — | 2 | Baja — raw eliminado (2026-11-13) |
| WL-13 | El mito del hardware caro: cómo ejecutar LLM sin arruinarte | sin identificar | por definir | 1 | Meta-fail ×2 — re-pass (sin descarga) |

### Tramo 8 (2026-11-15, relevo 1 — WL-102..WL-106, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-102 | Cuantización de LLM explicada: la trampa de calidad del Q4 (`IK-mFMiTvK8`) | Jorge Marfil | ia-uso-practico / agentes-de-codigo | Resumen en `tramo-8/` |
| WL-103 | La IA no está salvando a nadie. DirecTV y Tinder en problemas (`EbohAJufhnE`) | Lógicamente Aclarado | ia-critica-y-fronteras | Resumen en `tramo-8/` |
| WL-104 | Si no entendés esto, no vas a recibirte NUNCA (`otMZ3SKi9wo`) | Franco Pisso | general (autoayuda-académica) | Resumen en `tramo-8/` |
| WL-105 | Tren bala argentino: US$ 4.000 millones y ni un metro de vía (`jsIZS6WhqcQ`) | Quien Mueve el Mundo | general / sociedad-argentina | Resumen en `tramo-8/` |
| WL-106 | No se detuvieron ante las protestas (`--wYmLW7mtA`) | SORPRENDENTE | general (candidata a baja) | Resumen en `tramo-8/` |

### Tramo 9 (2026-11-15, relevo 2 — WL-107..WL-111, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-107 | Viale vs Samid: cronología de la pelea más histórica de la TV argentina (`__hi27gOnbQ`) | GELATINA | general / sociedad-argentina | Resumen en `tramo-9/` |
| WL-108 | La habilidad más importante de un Ingeniero no es programar (`vl6LOZNku1U`) | BettaTech | ia-uso-practico / agentes-de-codigo | Resumen en `tramo-9/` |
| WL-109 | Los seres vivos están empezando a comerse nuestra basura plástica (`iTd93ZngVgc`) | Astrovía | general (ecología/ambiente) | Resumen en `tramo-9/` |
| WL-110 | 50 curiosidades de Les Luthiers (`eeuv_gca0G8`) | Capitán Milanesa | general (cultura argentina) | Resumen en `tramo-9/` |
| WL-111 | Internet nunca volverá a ser como antes (`VqsmMAVeHco`) | Finanzas para todos | ia-critica-y-fronteras | Resumen en `tramo-9/` |
| WL-112 | Milei, Trump y la fuga de Bolsonaro: el papelón internacional (`v4hYfc-gUCA`) | PDB | general / sociedad-argentina | RAW DESCARGADO en scratch, pendiente tramo 10 (cabeza de la ventana) |

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo.
