# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-16, cierre del pedido L31 — consolidación T53 de los tramos 45-47): **la estación queda a 0 resúmenes**. Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14, los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14** los **49 pares útiles de los tramos 8-17 (WL-102..WL-151; 1 SKIP `.no-subs` WL-136) el 2026-11-15** los **51 pares útiles de los tramos 18-27 (WL-152..WL-203; 5 SKIP `.no-subs`: WL-157 y 4 videos eliminados sin número) el 2026-11-15 (T39)** y los **50 pares útiles de los tramos 28-37 (WL-204..WL-257; 5 SKIP sin migrar: 1 `.no-subs` WL-204a `uGQ5aJt7RZU` video eliminado + 4 SKIP-DUPLICATE pre-flight WL-237/242/243/245, ya procesadas antes de la numeración WL) el 2026-11-15 (T40)** y los **20 pares útiles de los tramos 38-41 (WL-261..WL-284; 6 SKIP `.no-subs` sin migrar: WL-258/259/264/268/277/281 + 1 SKIP-DUPLICATE WL-260) el 2026-11-16 (T48)** y los **15 pares útiles de los tramos 42-44 (WL-285..WL-300; 1 SKIP-DUPLICATE WL-289 sin migrar) el 2026-11-16 (T49)** y los **15 pares útiles de los tramos 45-47 (WL-301..WL-315; 0 skips) el 2026-11-16 (T53)** y los **60 pares útiles de los tramos 48-60 (WL-316..WL-376; 1 SKIP `.no-subs` WL-347) el 2026-11-16 (T61)** — T48: ia-uso-practico/ 5, general/ 4, agentes-de-codigo/ 2, informatica-teoria/ 2, ia-local/ 2, ia-critica-y-fronteras/ 1, sociedad-argentina/ 1, electromecanica/ 1, python-practico/ 1, desarrollo-personal/ 1; T49: ia-uso-practico/ 4, informatica-teoria/ 4, general/ 4, ia-local/ 2, agentes-de-codigo/ 1; T53: general/ 8, desarrollo-personal/ 3, agentes-de-codigo/ 1, informatica-teoria/ 1, sociedad-argentina/ 1, salud-fitness/ 1 — todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19), **1 meta-fail sin fuente** (WL-13, re-pass), **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`) y **1 SKIP definitivo sin subtítulos del tramo 14** (WL-136 `fh8f3UdpWzU`, GP Vods, marcador `.no-subs`). Los tramos 1-47 figuran como **consolidados**; las secciones por tramo se retiraron al migrar cada fuente (las filas migradas viven en el historial git). Producto de la consolidación T40: concepto nuevo [[inferencia-local]] (ia-local/) y actualización de [[cognix]] (12 fuentes), [[fazt]] (12), [[gentleman-programming]], [[agentes-de-codigo]], [[historia-de-la-tecnologia]], [[spec-driven-development]], [[el-nino]], [[secretos-geograficos-argentina]] (discrepancia Campo del Cielo armonizada). Producto de la consolidación T48: concepto nuevo [[routing-por-coste]] (ia-uso-practico/) y actualización de entidades ([[thedebugduck]] 5.ª fuente WL, [[gustavo-entrala]] 3.ª, [[codigo-espinoza]] +2, [[nichonauta]] +1, [[fazt]], [[cognix]] 13, [[franco-pisso]], [[gentleman-programming]], [[archivo-del-futuro]]), conceptos [[deepseek-harness]] (WL-270), [[inferencia-local]] (WL-283), [[clonacion-de-voz]] (WL-282/284), [[secretos-geograficos-argentina]] (WL-267), [[historia-de-la-tecnologia]] (WL-279), [[agentes-de-codigo]] (WL-271/272/278), [[bases-de-datos]] (WL-261/280). Enlaces resueltos a texto plano por umbral <2: PepoTech (WL-222), Tirando Código (WL-217), llama-swap (WL-253), NullSafe Architect (WL-270), Tamychi (WL-262), hdeleon.net (WL-280), Javier Amblar (WL-282), Pablo Martínez (WL-284), Pelado Nerd (WL-278), TopFacts ES (WL-263), Diamond Films Plus (WL-265), LATAM ABANDONADA (WL-267), PCA Electricidad (WL-273).

| WL | Título | Canal | Dominio destino previsto | Tramo | Estado |
| --- | --- | --- | --- | --- | --- |
| WL-1 | Gentle Shell: cambié toda la interfaz y el diseño (`niubcMYfdWU`) | Gentleman Programming Vods | agentes-de-codigo | 1 | Baja — raw eliminado (2026-11-13) |
| WL-6 | Cardiólogo advierte: millones hacen ESTO cada mañana… (`_DB1IK5s_1s`) | Secretos de la Longevidad | general (clúster fitness-senior) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-9 | El Papa y la CARPA VIP para «FAMOSOS» (`SFQ6rvooB58`) | Tipito LIVE | general (candidata a sociedad-argentina) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-19 | Últimos días 11.11 AliExpress 🗑️ baja (`QOug4_hsCGI`; resumen y raw eliminados) | acaele | — | 2 | Baja — raw eliminado (2026-11-13) |
| WL-13 | El mito del hardware caro: cómo ejecutar LLM sin arruinarte | sin identificar | por definir | 1 | Meta-fail ×2 — re-pass (sin descarga) |

## Tramos 38-41 — consolidados (T48, 2026-11-16)

Los 20 pares útiles migraron a sus dominios definitivos (primera opción registrada en resumen/index/doc; detalle por fuente en `log.md`, bloque CONSOLIDACIÓN WL T48, y en `index.md`):

| Dominio | Fuentes | WL |
|---|---|---|
| ia-uso-practico/ | 5 | 266, 274, 278, 282, 284 |
| general/ | 4 | 263, 265, 269, 279 |
| agentes-de-codigo/ | 2 | 271, 272 |
| informatica-teoria/ | 2 | 261, 280 |
| ia-local/ | 2 | 270, 283 |
| ia-critica-y-fronteras/ | 1 | 262 |
| sociedad-argentina/ | 1 | 267 |
| electromecanica/ | 1 | 273 |
| python-practico/ | 1 | 275 |
| desarrollo-personal/ | 1 | 276 |

SKIP sin migrar (no generaron resumen): WL-258 `pzFzku0VAUc`, WL-259 `0eL-Bz0rqmU`, WL-264 `VX1eYYyJ3XQ`, WL-268 `RXZgXhyGSsg`, WL-277 `8VLCT9ueymM`, WL-281 `OOylxha2qqg` (todos `.no-subs` — videos eliminados/privados) y los duplicados WL-260 `Z1Z8DziVhzo` (SKIP-DUPLICATE). Producto de la consolidación T48: concepto nuevo [[routing-por-coste]] (ia-uso-practico/) y actualización de entidades ([[thedebugduck]] 5.ª fuente WL, [[gustavo-entrala]] 3.ª, [[codigo-espinoza]] +2, [[nichonauta]] +1, [[fazt]], [[cognix]] 13, [[franco-pisso]], [[gentleman-programming]], [[archivo-del-futuro]]), conceptos [[deepseek-harness]] (WL-270), [[inferencia-local]] (WL-283), [[clonacion-de-voz]] (WL-282/284), [[secretos-geograficos-argentina]] (WL-267), [[historia-de-la-tecnologia]] (WL-279), [[agentes-de-codigo]] (WL-271/272/278), [[bases-de-datos]] (WL-261/280). Enlaces resueltos a texto plano por umbral <2: NullSafe Architect (WL-270), Tamychi (WL-262), hdeleon.net (WL-280), Javier Amblar (WL-282), Pablo Martínez (WL-284), Pelado Nerd (WL-278), TopFacts ES (WL-263), Diamond Films Plus (WL-265), LATAM ABANDONADA (WL-267), PCA Electricidad (WL-273). Candidatas a baja señaladas en su día: WL-263 y WL-265 (migradas igualmente; el usuario decide su baja).

## Tramos 42-44 — consolidados (T49, 2026-11-16 — cierre del pedido L28)

Los 15 pares útiles migraron a sus dominios definitivos (primera opción registrada en resumen/index/doc; detalle por fuente en `log.md`, bloque CONSOLIDACIÓN WL T49, y en `index.md`):

| Dominio | Fuentes | WL |
|---|---|---|
| ia-uso-practico/ | 4 | 288, 293, 298, 299 |
| informatica-teoria/ | 4 | 285, 286, 287, 294 |
| general/ | 4 | 291, 292, 296, 297 |
| ia-local/ | 2 | 290, 295 |
| agentes-de-codigo/ | 1 | 300 |

SKIP sin migrar (no generó resumen): WL-289 `yucBRF3lSaQ` (SKIP-DUPLICATE, ya procesado). Nota de asignación: en los casos con dos opciones se aplicó la primera opción registrada (WL-288/293/298 → ia-uso-practico; WL-290/295 → ia-local, mismo criterio que WL-283 en T48); WL-294 migró a informatica-teoria para consolidar las tres fuentes Torti Code juntas (WL-286/287/294). Producto de la consolidación T49: concepto nuevo [[percepcion-de-regresion-de-modelos]] (ia-uso-practico/, WL-288+WL-290, umbral ≥2) y actualización de [[torti-code]] (a 17 fuentes, canal dominante), [[nichonauta]] (WL-288/290), [[codesimple]] (WL-295, 2.ª fuente), [[alejavi-rivera]] (WL-299), [[fazt]] (WL-293, 13 fuentes), [[gentleman-programming]] (WL-300), conceptos [[inferencia-local]] (WL-290), [[bases-de-datos]] (WL-285/287), [[deepseek-harness]] (WL-295), [[agentes-de-codigo]] (WL-293/300), [[routing-por-coste]] (cruce WL-298). Enlaces resueltos a texto plano por umbral <2: Maxi Accotto (WL-285), Value School (WL-291), Serudda (WL-292), Tobias Simonetti (WL-298), Manuel Cabrera Caballero (WL-296), Misterios Retro (WL-297). Candidatas aplazadas por umbral: entidad Value School, concepto balanceo-alta-disponibilidad (solo WL-294), yo-sociedad-anonima (solo WL-292).

## Tramos 45-47 — consolidados (T53, 2026-11-16 — cierre del pedido L31)

Los 15 pares útiles migraron a sus dominios definitivos (primera opción registrada en resumen/index/doc; detalle por fuente en `log.md`, bloque CONSOLIDACIÓN WL T53, y en `index.md`):

| Dominio | Fuentes | WL |
|---|---|---|
| general/ | 8 | 305, 306, 307, 308, 310, 312, 314, 315 |
| desarrollo-personal/ | 3 | 302, 303, 304 |
| agentes-de-codigo/ | 1 | 309 |
| informatica-teoria/ | 1 | 313 |
| sociedad-argentina/ | 1 | 311 |
| salud-fitness/ | 1 | 301 |

SKIP sin migrar: ninguno (tramos limpios — 0 skips, 0 meta-fail). Nota de asignación: primera opción registrada (WL-309 → agentes-de-codigo, precedente T38 — las herramientas de terminal/dev se consolidaron allí; WL-313 → informatica-teoria; WL-315 → general, primera opción, con cruces a [[lenguaje-rust]]/[[agentes-de-codigo]]); WL-311 → sociedad-argentina (primera opción general/sociedad-argentina). Producto de la consolidación T53: entidad nueva [[mindveil]] (WL-302/303/304, desarrollo-personal/seducción — NO factual, registro del subgénero), concepto nuevo [[ingenieria-inversa-asistida-por-ia]] (WL-315 + WL-241/250, REA), y actualización de [[el-bit-informado]] (WL-315, 3.ª fuente), [[gilada]] (WL-313, 3.ª fuente), [[secretos-geograficos-argentina]] (WL-314 — serie corregida de Campo del Cielo: El Chaco re-pesado 28.840 kg, Gancedo 30.800 kg 2016; resuelve la discrepancia WL-201/202 como re-medición + fragmentos distintos), [[lenguaje-rust]] (WL-315), [[agentes-de-codigo]] (WL-309/315), [[naturaleza-insolita]] (ver también WL-305/306/314). Enlaces resueltos a texto plano por umbral <2: BlueGym Animation (WL-301), ExpPorQué (WL-305), Fosil Metal (WL-306), CurioFosil (WL-307), boxboxlabs (WL-308), xeyt (WL-309), Thoisoi ES (WL-310), A24com (WL-311), Operativo 503 (WL-312), Latinoamérica con Esteban (WL-314).

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14; tramos 8-37: 2026-11-15 — T38, T39 y T40; tramos 38-44: 2026-11-16 — T48/T49; tramos 45-47: 2026-11-16 — T53, cierre del pedido L31). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo. La estación queda **sin secciones activas**; la cabeza del backlog es WL-316 (`ahNg1-lLkvQ`, índice 15 del cache fresco de 02:19).


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

## Tramos 48-60 — consolidados (T61, 2026-11-16 — cierre del pedido L32)

Los 60 pares útiles (WL-316..WL-376; SKIP sin migrar: WL-347 `CXXnlDUtkkQ`, .no-subs) migraron a sus dominios definitivos (primera opción registrada en resumen/index/doc; detalle por fuente en `log.md`, bloque CONSOLIDACIÓN WL T61, y en `index.md`):

| Dominio | Fuentes | WL |
|---|---|---|
| general/ | 26 | 316, 317, 318, 319, 323, 328, 329, 334, 335, 336, 337, 338, 339, 341, 343, 344, 348, 351, 356, 358, 359, 362, 365, 367, 368, 371, 372, 375 |
| ia-uso-practico/ | 11 | 321, 331, 333, 342, 346, 349, 350, 353, 360, 363 |
| agentes-de-codigo/ | 9 | 325, 340, 354, 364, 370, 373, 374 |
| ia-critica-y-fronteras/ | 7 | 326, 327, 330, 332, 345, 355, 366 |
| casa-calefaccion/ | 2 | 320, 322 |
| sociedad-argentina/ | 3 | 324, 352, 357 |
| electromecanica/ | 1 | 361 |
| cocina/ | 1 | 369 |
| electronica-practica/ | 1 | 376 |

Producto de la consolidación T61: conceptos nuevos [[fabricacion-odm-vs-marca]] (general/), [[brecha-junior-ia]] y [[contratacion-nearshore-latam]] (agentes-de-codigo/), [[gobernanza-ia]] (ia-critica-y-fronteras/), [[castigo-altruista-venganza]], [[evolucion-humana]], [[banderas-confundibles]] y [[vacío-demografico-costa-oeste-africa]] (general/), [[kit-usb-portable]] (electronica-practica/); entidades nuevas [[maxi-fontan]] (general/), [[marcos-di-cesare]] (cocina/), [[hdeleon-net]] (agentes-de-codigo/), [[fase]] (casa-calefaccion/), [[danann]] y [[canal-ey]] (general/); entidades actualizadas [[codigo-espinoza]] (8 fuentes), [[archivo-del-futuro]] (8 WL), [[fazt]] (17), [[nichonauta]] (+3), [[holamundo]], [[gentleman-programming]], [[gustavo-entrala]], [[el-presto]], [[torti-code]], [[xavier-mitjana]]; conceptos ampliados [[historia-de-la-tecnologia]], [[routing-por-coste]] (Jev WL-332/346/353), [[agentes-de-codigo]], [[qwen]], [[inferencia-local]], [[delegacion-cognitiva-ia]], [[naturaleza-insolita]], [[obsidian-memoria-agentes]], [[bases-de-datos]]. La estación queda a 0 resúmenes y sin secciones activas. Corrección aritmética: WL-374 del canal hdeleon.net citaba «WL-313» como antecedente — WL-313 es de otro canal (cierre tramo 29); conteo correcto WL-345+374.

## Tramo 61 — estación activa (relevo 1 de 12 del pedido L34, 2026-11-16)

5 fuentes útiles (WL-377..WL-381; cabezas ya descargadas en scratch, procesadas desde scratch sin re-descargar, precedente T9/WL-112; 0 skips, 0 meta-fail, sin 429). Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| 377 | ¡James Webb acaba de observar Plutón por primera vez! | Misterio Celeste (2.ª fuente) | general/ |
| 378 | Auge y caída del fundador de NVIDIA (Jensen Huang) | Gustavo Entrala (2.ª fuente WL) | general/ |
| 379 | 15 SITIOS WEB BRUTALES para favoritos | El Androide Feliz | general/ |
| 380 | ¿Por qué las mujeres tienen glúteos tan grandes? | ¿Cómo Así (2.ª fuente) | general/ |
| 381 | Salamandra ECO 7000 Tromen — review | FASE (3.ª fuente) | casa-calefaccion/ |

Cruces candidatos: [[evolucion-humana]] (WL-380 con WL-319/306), cluster semiconductores/industria IA (WL-378 con WL-220/238/122), [[historia-de-la-tecnologia]] (CUDA/Hinton/AlexNet WL-378 con WL-356), cluster herramientas-prácticas (WL-379 con WL-376/351/343), cluster salamandras (WL-381 con [[fase]]), divulgación espacial (WL-377 con WL-129). Cabeza futura: WL-382 (`MEFTRfVATTk`, índice 70 del cache — ya descargada en scratch, herencia del relevo).

## Tramo 62 — estación activa (relevo 2 de 12 del pedido L34, 2026-11-16)

5 fuentes útiles (WL-382..WL-386; WL-382 procesada desde scratch sin re-descargar — herencia del relevo 1, precedente T9/WL-112; 4 descargas `--one` nuevas; 0 skips, 0 meta-fail, sin 429). Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| 382 | 10 cosas que creés saber de CIENCIA y son MENTIRA | Pablo Molinari (2.ª fuente WL) | general/ |
| 383 | EL PELIGRO DE LA IA: ¿Por qué quieren frenar su desarrollo? | Date un Vlog (1.ª fuente) | ia-critica-y-fronteras/ |
| 384 | dBASE: el padre de FoxPro y Clipper… | Archivo del Futuro (+1) | informatica-teoria/ |
| 385 | SI LA IA FUESE UNA PERSONA REAL (Short 27 s) | Maxi Fontán (3.ª fuente) | general/ |
| 386 | Chile cambia las guías de despacho: app de Python PYMEs | Código Espinoza (+1) | python-practico/ |

Señales: WL-383 videoensayo NO factual (hechos 2.ª mano sin enlaces, señalados); WL-385 ficción humorística (señalada); WL-386 pitch comercial (Patreon excluido). Cruces candidatos: [[archivo-del-futuro]] (WL-384, cluster historia-BD con WL-313/356), [[maxi-fontan]] (3.ª fuente, entidad confirmada), [[codigo-espinoza]] (+1), [[bases-de-datos]] (WL-384/386), cluster divulgación-científica (WL-382 con WL-145/198), ia-critica (WL-383 con WL-354/355, [[ia-china]]). Cabeza futura: WL-387 (índice 75 del cache, `t2DE62wxDxA`).


## Tramo 63 — estación activa (relevo 3 de 12 del pedido L34, 2026-11-16)

5 fuentes útiles (WL-387..WL-391; 5 descargas `--one` nuevas con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429). Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| 387 | Ahora TODOS quieren FRENAR la IA... ¿Por qué? | Dot CSV Lab (1.ª fuente WL) | ia-critica-y-fronteras/ |
| 388 | Llevé código generado por IA a PRODUCCIÓN | hdeleon.net (+1) | ia-uso-practico/ |
| 389 | ARGENTINA NO APRENDE: ¿QUIÉN DESTRUYÓ LA EDUCACIÓN? | PDB (1.ª fuente) | sociedad-argentina/ |
| 390 | Taller de Skills para Agentes de IA desde cero | MoureDev (1.ª fuente) | agentes-de-codigo/ |
| 391 | La IA que sustituye a tu jefe, no a ti ¿funciona? | Joaquín Ruiz — IA para Desarrolladores (1.ª fuente) | ia-uso-practico/ |

Señales: WL-387 NO verificable como hechos (misma cadena que WL-383 con primitivos coincidentes entre fuentes independientes — señalado; ASR distorsiona nombres de producto); WL-388 cifras de memoria señaladas; WL-389 sátira política con esqueleto factual denso (cifras de memoria señaladas); WL-390 marco comercial de cursos excluido; WL-391 higiene de fuentes buena (limitaciones de los datos de despidos señaladas por el propio video). Cruces candidatos: WL-387+383 (misma semana narrada por canales independientes — consolidar juntos), routing-por-coste (WL-388 con WL-298/346/353), [[hdeleon-net]] +1, [[opencode]] +1 (WL-390), skills-publicables (WL-390 con WL-350), spec-driven development (WL-391 con WL-211), [[inferencia-local]] (WL-391), cluster PDB/sátira (WL-389 con WL-251), entidades candidatas: Dot CSV Lab, PDB, MoureDev, Joaquín Ruiz. Cabeza futura: WL-392 (índice 80 del cache, `GeVX2kwD98Y`).

## Tramo 64 — estación activa (relevo 4 de 12 del pedido L34, 2026-11-16)

5 fuentes útiles (WL-392..WL-396; cabeza WL-392 (`GeVX2kwD98Y`, índice 80) verificada contra el cache antes del primer ciclo; 5 descargas `--one` nuevas con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429). Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| 392 | ¿Por qué no comemos carne de hipopótamo? | VerdeSecreto (1.ª fuente) | general/ |
| 393 | La IA me dejó sin trabajo | CodinEric (1.ª fuente) | ia-critica-y-fronteras/ |
| 394 | ¡Así saqué al Hacker que entró a mi Sistema! (Short 1:27) | hdeleon.net (+1) | informatica-teoria/ |
| 395 | GOOGLE GEMINI ya NO es solo un Chatbot: 4 Herramientas | Patricia Palazón \| IA (1.ª fuente) | ia-uso-practico/ |
| 396 | El fracaso de la educación y las pruebas PISA | Platzi/Freddy Vega (1.ª fuente) | general/ |

Señales: WL-392 cifras de 2.ª mano sin fuente (marco Diamond sí atribuido); WL-393 título clickbait (no hubo despido) y marco opinativo declarado — señalados; WL-394 short técnico correcto sin detalle de stack; WL-395 versión «Gemini 3.8 Flash» y disponibilidad sin verificar, captación de leads vía WhatsApp excluida; WL-396 datos de 2.ª mano con investigación propia enlazada (hanadami.com/pisa — verificar vs OCDE), pitch de cursos Platzi excluido, tesis fuerte declarada como opinión. Cruces candidatos: [[naturaleza-insolita]]/[[evolucion-humana]] (WL-392, domesticación Diamond con WL-306/380), [[delegacion-cognitiva-ia]] (WL-393/395/396), [[brecha-junior-ia]] (WL-393), [[hdeleon-net]] +1 (WL-394, 3.ª fuente), cluster demos-producto-IA (WL-395 con WL-346/349/350, [[routing-por-coste]]), educación (WL-396 con WL-227/389), alfabetismo digital (WL-396 con WL-309/390); entidades candidatas: VerdeSecreto, CodinEric, Patricia Palazón, Platzi/Freddy Vega. Cabeza futura: WL-397 (índice 85 del cache, `DxNnqLEiYco`).

## Tramo 65 — estación activa (relevo 5 de 12 del pedido L34, 2026-11-16)

5 fuentes útiles (WL-397..WL-401; cabeza WL-397 (`DxNnqLEiYco`, índice 85) verificada contra el cache antes del primer ciclo; 5 descargas `--one` nuevas con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429). Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| 397 | Cómo se CONSTRUYERON las Torres Gemelas y por qué nadie lo repitió | CONSTRUCTUM (1.ª fuente) | general/ |
| 398 | La IA Ya RECOMIENDA Negocios… ¿Sale el Tuyo? | Javier Amblar — Estrategia · IA · Negocio (1.ª fuente) | general/ |
| 399 | Así compruebo que la IA leyó mis instrucciones (Short 1:10) | hdeleon.net (+1) | agentes-de-codigo/ |
| 400 | CREA TU ALEXA POR $10 USD CON ESP32 Y DEEPSEEK HARNESS | Programador Novato (1.ª fuente) | ia-uso-practico/ |
| 401 | 10 COSAS QUE DEBERÍAS COMPRAR en cuanto TENGAS DINERO | Jordi Llàtzer (1.ª fuente) | desarrollo-personal/ |

Señales: WL-397 divulgación de 2.ª mano sin citas al pie (60 muertos, 900 M, experimento de Oregón — verificar); WL-398 marco comercial declarado (servicio «Radar» propio + Filmora «son clientes míos»), cifras llamativas sin enlaces (693 %, 39,2 %), tesis de manipulación de reputación vía IA verosímil con casos no verificables, ASR distorsiona nombres de producto; WL-399 short técnico correcto — técnica canaria conocida sin nombre; WL-400 demo honesta con fallas en vivo, audio sin capa de seguridad en LAN (gap), ASR «Deep Sleep/Deep Speech Harness» = DeepSeek Harness; WL-401 ensayo de opinión sin afiliaciones (raro en el género), cifras de 2.ª mano sin fuente. Cruces candidatos: [[historia-de-la-tecnologia]] (WL-397), [[delegacion-cognitiva-ia]] (WL-398/401), [[hdeleon-net]] +1 (WL-399, 4.ª fuente), [[deepseek-harness]] +1 (WL-400; cluster WL-23/24/25/27/88), [[inferencia-local]] (WL-400 Whisper), cluster desarrollo-personal (WL-401 con WL-276/302-304); entidades candidatas: CONSTRUCTUM, Javier Amblar, Programador Novato, Jordi Llàtzer. Cabeza futura: WL-402 (índice 90 del cache, `T5E3HiHOBnY`).

## Tramo 66 (relevo 6 de 12 del pedido L34) — 5/5 útiles

| # | Fuente | Resumen | Una línea |
|---|--------|---------|-----------|
| WL-402 | ¿Estamos haciendo Sobreingeniería con la IA? (BettaTech) | wiki/wl/tramo-66/resumen-WL402-sobreingenieria-ia-betratech.md | Ensayo: la ingeniería de arneses (skills/multiagente) compensa menos de lo que se percibe — estudio METR (+20 % percibido vs −19 % observado) y reset de Cherny. |
| WL-403 | Drive Design Tier List (Torque Test Channel) | wiki/wl/tramo-66/resumen-WL403-drive-design-tier-list-torque.md | Comparativa instrumentada de cabezas de tornillo: Torx/Plus > Robertson > hexágono (≤M5); la proporción punta/rosca manda tanto como el diseño. |
| WL-404 | Why We All Gave Up on Smart Homes (Slidebean) | wiki/wl/tramo-66/resumen-WL404-smart-homes-slidebean.md | El smart home falló por protocolos incompatibles y negocio no recurrente; salida local: Home Assistant + LLM local «HAL». |
| WL-405 | La Base de Datos que Está Dentro de Casi Todo: SQLite (Archivo del Futuro) | wiki/wl/tramo-66/resumen-WL405-sqlite-archivo-del-futuro.md | Historia de SQLite: dominio público, compatibilidad hacia atrás, pruebas desproporcionadas, y lectura crítica de sus propias cifras. |
| WL-406 | Qwen en Claude Code con llama.cpp (Nichonauta) | wiki/wl/tramo-66/resumen-WL406-qwen-claude-code-llamacpp-nichonauta.md | Qwen 3.5 4B local conectado a Claude Code por variables de entorno oficiales — el arnés potencia al modelo pequeño. |

## Tramo 67 (relevo 7 de 12 del pedido L34) — 5/5 útiles

Cabeza WL-407 (`pU_-j8XMqa0`, índice 95 del cache de 04:52) verificada contra el cache antes del primer ciclo; 5 descargas `--one` con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429. Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|--------|-------|------------------|
| 407 | ¡Sucedió! Broadcom confisca VMware: ¿Nutanix, Proxmox, Hyper-V o XCP-ng? | Profe Carlos Leal (1.ª fuente) | informatica-teoria/ o general/ |
| 408 | CLAUDE rompe la Hipótesis de RIEMANN | Math Rocks (1.ª fuente) | general/ |
| 409 | Asimov ya había imaginado el problema que hoy preocupa a la IA | Infobae — La Lupa, Tomás Trapé (1.ª fuente) | ia-critica-y-fronteras/ o general/ |
| 410 | SyQuest Facturó US$300 Millones… y Quebró 3 Años Después | Archivo del Futuro (+1) | informatica-teoria/ o general/ |
| 411 | Probé el «Windows Chino» en una PC Antigua | TecnoRed (1.ª fuente) | general/ o ia-uso-practico/ |

Señales: WL-407 cifras de mercado de 2.ª mano sin enlaces (Gartner 70→40 %, Rimini Street 98 %) y editorialización fuerte — verificar; WL-408 lectura real del preprint de Lamzouri enlazado (verificable), preprint sin peer-review completo — señalado; ASR fuerte en ambos (Brocon/Bienware=Broadcom-VMware, Cloud=Claude, Lam Suri=Lamzouri); WL-409 NO factual primaria (columna de opinión, detalles del incidente Hacking Face parcialmente deformados); WL-410 disciplina de fuentes destacable (descarta la leyenda del Zip rechazado); WL-411 demo verificable, patrocinio vipcdkeys.com excluido (grey-market). Cruces candidatos: [[historia-de-la-tecnologia]] (WL-407/410), contraste modelos consumibles Broadcom-vs-SQLite (WL-407/405) y compatibilidad-como-promesa (WL-410/404), frontera descubrimiento-IA/verificación-formal Lean (WL-408 vs overclaiming WL-383/402/409), [[inferencia-local]] (WL-411, IA local en el SO), cluster resurrección de hardware (WL-411 con WL-296); entidades candidatas: Profe Carlos Leal, Math Rocks, TecnoRed; [[archivo-del-futuro]] +1 (WL-410). Cabeza futura: WL-412 (índice 100 del cache, `qEvVAyWo3_s`).

## Tramo 68 (relevo 8 de 12 del pedido L34) — 5/5 útiles + 1 skip

Cabeza WL-412 (`qEvVAyWo3_s`, índice 100 del cache de 04:52) verificada contra el cache antes del primer ciclo; 5 descargas `--one` con puerta 60-90 s; 1 skip (WL-413 .no-subs), 0 meta-fail, sin 429. Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|--------|-------|------------------|
| 412 | ¿Buscar trabajo volvió a ser como antes? | Dos Dager (2.ª fuente, WL-146) | sociedad-argentina/ (carrera IT) o general/ — videoensayo NO factual |
| 414 | La IA ha resuelto su primer Problema del Milenio (clip) | Dot CSV Lab (1.ª fuente) | general/ (clip de WL-416 — consolidar juntas) |
| 415 | 🔥 Hackearon mi sistema… pero estaba preparado | hdeleon.net (5.ª fuente WL) | informatica-teoria/ o general/ |
| 416 | ¡La IA RESUELVE un PROBLEMA DEL MILENIO! — OpenAI y Navier-Stokes | Dot CSV Lab (1.ª fuente) | ia-critica-y-fronteras/ o general/ |
| 417 | ¿Dónde está el pedazo que le falta a la Casa Rosada? | Mati en la Ciudad (1.ª fuente) | general/ (historia/arquitectura argentina) |

Señales: WL-412 NO factual (cifras de 2.ª mano sin enlaces, humor rioplatense; autopromoción Discord excluida); WL-414/416 anuncio OpenAI SIN validación externa («declarado haber resuelto»); el bloque de polémica de plagio (Buckmaster/Alpoge-Anthropic, 88 h × 10.000 agentes, arranque 1-sep por rumores) es de 2.ª mano sin enlaces — fechas y nombres ASR (Bookmaster=Buckmaster, «Luis Martínez Zorroa» por confirmar) verificar; WL-415 1.ª mano con mecanismo estándar (JWT+Redis+interceptor 401), cierre comercial excluido; WL-417 divulgación de calidad con fechas/planos y lagunas admitidas. Cruces candidatos: WL-414/416 mismas fuente+noticia; WL-416 vs WL-408 (declarada vs verificada, Lean); WL-409 (hitos reales vs apocalipsis-narrativa); WL-412 con [[brecha-junior-ia]], WL-352/221, WL-146 (mismo canal); WL-415 con [[hdeleon-net]] +1, WL-400/351; WL-417 con [[secretos-geograficos-argentina]]; entidades candidatas: Dot CSV (canal), Mati en la Ciudad (canal). Cabeza futura: WL-418 (índice 106 del cache, `GlRHi8SmmQ0`).

## Tramo 69 (relevo 9 de 12 del pedido L34) — 5/5 útiles + 1 skip

Cabeza WL-418 (`GlRHi8SmmQ0`, índice 106 del cache de 04:52) verificada contra el cache antes del primer `--one` (WL-417 = índice 105 confirma el cierre del relevo 8); 5 descargas `--one` con puerta 60-90 s; 1 skip (WL-419 privado, `.no-subs`), 0 meta-fail, sin 429. Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|--------|-------|------------------|
| 418 | Introducción a la Programación con IA 🚀 GUÍA COMPLETA desde Cero | Nichonauta (3.ª fuente) | ia-uso-practico/ |
| 420 | Por qué el PAN de hoy es una PORQUERÍA | Marcos Di Cesare (+1) | cocina/ |
| 421 | Un engaño planificado y Manaos: el drama de una joven que le debe mil millones de pesos al fisco | Semanario Actualidad (1.ª fuente) | sociedad-argentina/ |
| 422 | I Discovered This Hidden Wiring Trick In An Old Forum! | LRN2DIY (1.ª fuente) | general/ (bricolaje/electricidad) |
| 423 | Cómo el Nuevo Invento de China Va a Reemplazar tu Impresora Para Siempre | NovaMente X (1.ª fuente) | general/ (tecnología/consumo) — NO factual |

Señales: WL-418 didáctico introductorio sin datos duros, marco comercial del libro de $10 declarado y excluido; WL-420 base técnica real (ácido fítico/fitasas, hidrogenación) mezclada con afirmaciones sin evidencia (bromato «camuflado») y fuerte interés comercial propio — señalados; WL-421 testimonio de primera mano sin verificación independiente del canal, anclado a la causa Manaos (cifras de 2.ª mano) — señalado; WL-422 demo de primera mano, estándar eléctrico US con aplicabilidad local parcial; WL-423 NO factual (parte china sin fuentes ni enlaces, marco hype, título clickbait; la parte modelo-Gillette sí documentada). Cruces candidatos: [[nichonauta]] +1 (WL-418), [[marcos-di-cesare]] +1 (WL-420), WL-421↔WL-182 (historia Manaos), WL-423↔[[gillette]] (WL-7), WL-422↔WL-207/WL-169; entidades candidatas: Semanario Actualidad, LRN2DIY, NovaMente X (todas 1.ª fuente). Cabeza futura: WL-424 (índice 111 del cache de 04:52, `X2eMvB_qp7c`).

## Tramo 70 (relevo 10 de 12 del pedido L34) — 5/5 útiles

Cabeza WL-424 (`X2eMvB_qp7c`) verificada contra el cache antes del primer `--one` (WL-423 = `TmeGjF9GwBI` ya procesada confirma el cierre del relevo 9; el id aparece en la posición 112 del JSON de 04:52 — off-by-one de lectura sin efecto en la identidad); 5 descargas `--one` con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429. Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|--------|-------|------------------|
| 424 | El cliente perdió todos sus datos por mi app de Python | Código Espinoza (3.ª fuente) | python-practico/ |
| 425 | El error que cometen casi todos al elegir servicio de correos para su app | Fazt Code (+1, 18.ª) | informatica-teoria/ (infra/DevOps) |
| 426 | La ESTAFA de los Smart TV que NADIE te cuenta | tecnotrailer (1.ª fuente) | general/ (tecnología/electrónica) |
| 427 | ¿Para qué aprender código si la IA lo hace por ti? (Short) | hdeleon.net (5.ª fuente WL) | agentes-de-codigo/ o ia-critica-y-fronteras/ — opinión NO factual |
| 428 | Gemma 4 E4B: ¿es realmente más inteligente que el E2B? | Nichonauta (4.ª fuente) | ia-uso-practico/ o ia-local/ |

Señales: WL-424 primera mano con código en pantalla (prueba ×15 y 87 % recuperado verificables solo por relato; marco Patreon excluido); WL-425 precios de pantalla sin fecha de captura — no verificables, señalados; clientes de SES de 2.ª mano; patrocinio Hostinger excluido; WL-426 primera mano de taller pero afirmaciones fuertes sin medición (voltaje LED, «estafa») — título clickbait señalado; WL-427 opinión sin datos; WL-428 demo con verificación funcional de cada artefacto, comparación no independiente (mismo canal, video previo de E2B). Cruces candidatos: [[codigo-espinoza]] +1, [[fazt]] +1, [[hdeleon-net]] +1, [[nichonauta]] +1 (todas entidades confirmadas), [[bases-de-datos]] (WL-424), WL-425↔WL-294/160/344 (infra), WL-426↔WL-204 + electronica-practica, WL-427↔brecha-junior-ia + [[delegacion-cognitiva-ia]], WL-428↔[[gemma-4]] + [[inferencia-local]] + [[llama-cpp]], MTP concepto emergente. Tema de tramo: primera mano técnica ×3 (WL-424/426/428) + opinión/guía ×2 (WL-425/427). Cabeza futura: WL-429 (índice 117 del cache de 04:52, `tArNhT82h7U`).

## Tramo 71 (relevo 11 de 12 del pedido L34) — 5/5 útiles

Cabeza WL-429 (`tArNhT82h7U`, índice 117 del cache de 04:52) verificada contra el cache antes del primer `--one` (WL-428 = `NYcH2wHmzNQ` en el índice 116 confirma el cierre del relevo 10); 5 descargas `--one` con puerta 60-90 s; 0 skips, 0 meta-fail, sin 429. Pendientes de consolidación (L12):

| WL | Título | Canal | Dominio previsto |
|---|--------|-------|------------------|
| 429 | El gastito de Jorge Macri: más de 3 mil millones de pesos en un chatbot con IA (Short) | Abigail Luna (1.ª fuente) | sociedad-argentina/ — satírico NO factual |
| 430 | ChatGPT, Claude y Gemini están caídos (Short) | hdeleon.net (6.ª fuente WL) | ia-critica-y-fronteras/ — opinión NO factual |
| 431 | Spark X2.5 4B: ¿realmente es superior a Gemma 4 y Qwen? | Nichonauta (5.ª fuente) | ia-uso-practico/ o ia-local/ |
| 432 | Llama 3.1 8B: ¿sigue siendo valioso o ya es obsoleto? | Nichonauta (6.ª fuente) | ia-uso-practico/ o ia-local/ |
| 433 | El streaming nunca será igual: Minimax H3 en directo | Fazt Code (18.ª fuente) | ia-critica-y-fronteras/ |
| 434 | Qwen 3.5 0.8B: ¿sirve para programar? | Nichonauta (7.ª fuente) | ia-uso-practico/ o ia-local/ |

Señales: WL-429 cifra de licitación de 2.ª mano sin enlace al pliego — no verificable, señalada (humor político); WL-430 outage sin documentación y causa «Astra» especulada sin respaldo, señalados; WL-431/432/434 demos primera mano con verificación funcional y batería consistente del canal (WL-428→434), benchmarks autocreportados refutados empíricamente, veredictos parcialmente subjetivos declarados; WL-433 hechos de 2.ª mano sin enlaces (cifras de coste, espectadores), señalados. Cruces candidatos: [[nichonauta]] +3 (línea de serie de inferencia local, plan de serie completa Qwen), [[fazt]] +1, [[hdeleon-net]] +1, [[gemma-4]], [[qwen]], [[inferencia-local]], [[llama-cpp]], [[percepcion-de-regresion-de-modelos]], [[gobernanza-ia]], [[routing-por-coste]]; entidades candidatas: Abigail Luna (canal). Tema de tramo: batería Nichonauta ×3 + shorts/opinión IA ×2 + frontera generativa ×1. Cabeza futura: WL-435 (índice 122 del cache de 04:52, `fGyLXOACW9k`).
