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

## Tramo 61 — DUPLICADOS (consolidación relevo 1 del pedido L34, 2026-11-16)

**TODAS las 5 fuentes (WL-377..WL-381) son duplicados exactos** de fuentes ya consolidadas en el pedido L32 (WL-316..320): mismos video IDs y raws idénticos por md5 (WL-377=316 Misterio Celeste, WL-378=317 Entrala/Huang, WL-379=318 El Androide Feliz, WL-380=319 ¿Cómo Así, WL-381=320 FASE). La ventana re-ingestó los videos porque la playlist los re-encabezó; el pre-flight dedupe no los detectó (los raws originales ya habían migrado de `raw/wl/` a los dominios). Los 5 resúmenes llevan banner DUPLICADO y NO se consolidaron: sin migración, sin entidades nuevas (Misterio Celeste y El Androide Feliz quedan a 1 fuente real → texto plano; [[fase]] y [[gustavo-entrala]] sin cambio de conteo). **Pendiente de decisión del orquestador**: eliminar los 5 pares duplicados (resumen + raw espejado en `raw/wl/tramo-61/`) o fusionar anotaciones. Nota: la «renuncia de Huang» de WL-378/317 sigue sin verificación independiente (2.ª mano sin enlaces).

## Tramos 62-64 — CONSOLIDADOS (relevo 1 del pedido L34, 2026-11-16)

15 pares migrados con `git mv` a dominios definitivos (raws incluidos; «Fuente original» actualizada en cada resumen): **general/ 6** (WL-382, 385, 392, 396 + nota), **ia-critica-y-fronteras/ 3** (WL-383, 387, 393), **ia-uso-practico/ 3** (WL-388, 391, 395), **informatica-teoria/ 2** (WL-384, 394), **python-practico/ 1** (WL-386), **sociedad-argentina/ 1** (WL-389), **agentes-de-codigo/ 1** (WL-390). Par WL-383/387 consolidado junto (misma semana IA narrada por fuentes independientes, primitivos coincidentes sin enlaces — no verificable, señalado) en [[gobernanza-ia]].

Producto de la consolidación: **entidad nueva** [[pablo-molinari]] (WL-149+382, umbral ≥2); **entidades actualizadas** [[maxi-fontan]] (4.ª), [[archivo-del-futuro]] (9 WL), [[codigo-espinoza]] (9), [[hdeleon-net]] (4 WL: +388/+394), [[opencode]] (+1), [[mouredev]] (3.ª); **conceptos ampliados** [[gobernanza-ia]], [[evolucion-humana]], [[naturaleza-insolita]], [[brecha-junior-ia]], [[delegacion-cognitiva-ia]], [[routing-por-coste]], [[bases-de-datos]], [[historia-de-la-tecnologia]]. Canales a texto plano por umbral <2: Dot CSV Lab, Date un Vlog, PDB, Joaquín Ruiz, VerdeSecreto, CodinEric, Patricia Palazón, Platzi/Freddy Vega.

**Contradicciones/verificaciones abiertas**: WL-383/387 (hechos 2.ª mano sin enlaces, sin confirmación externa); WL-389 vs WL-396 (PISA 2025 Argentina: −11/−12/−13 pts vs datos OCDE — coherentes entre sí pero sin verificación primaria); «Gemini 3.8 Flash» (WL-395, ASR); renuncia de Huang (WL-317/378 duplicado, sin verificación); nombres Navier-Stokes (WL-387: «Tristan Bacmaster/Levent Alpoge» por ASR — verificación contra WL-416 pendiente del relevo 2). Cifras PISA de WL-396: pendiente de verificación contra OCDE (investigación propia enlazada hanadami.com/pisa).

## Tramos 65-68 — CONSOLIDADOS (relevo 2 del pedido L35, 2026-11-16)

19 pares útiles (WL-397..WL-417; SKIP sin migrar: WL-413 `.no-subs`) migrados con `git mv` a dominios definitivos (resúmenes + raws espejados; «Fuente» actualizada en cada resumen): **general/ 6** (WL-397, 398, 408, 411, 417), **informatica-teoria/ 4** (WL-405, 407, 410, 415), **ia-critica-y-fronteras/ 4** (WL-402, 409, 414, 416), **ia-local/ 1** (WL-406), **agentes-de-codigo/ 1** (WL-399), **ia-uso-practico/ 1** (WL-400), **desarrollo-personal/ 1** (WL-401), **electromecanica/ 1** (WL-403), **electronica-practica/ 1** (WL-404), **sociedad-argentina/ 1** (WL-412). Notas de asignación: WL-404 → electronica-practica (dominio registrado en index); WL-406 → ia-local (par ia-uso-practico/ia-local resuelto por precedente T48/T49 — banco de pruebas Nichonauta llama.cpp); WL-414/416 consolidadas JUNTAS con WL-387 en [[gobernanza-ia]] (encargo del relevo).

Producto de la consolidación: **entidades nuevas** [[infobae]] (WL-330+409, umbral ≥2) y [[dos-dager]] (WL-146+412, umbral ≥2); **entidades actualizadas** [[archivo-del-futuro]] (11 WL: +405/+410), [[hdeleon-net]] (6 WL: +399/+415), [[dot-csv-lab]] (5 WL: +387/+414/+416), [[nichonauta]] (+406); **conceptos ampliados** [[historia-de-la-tecnologia]] (+397/407/410), [[gobernanza-ia]] (par Navier-Stokes + verificación Buckmaster), [[narrativa-miedo-ia]] (+409), [[experimento-metr]] (+402, 5.ª fuente), [[brecha-junior-ia]] (+412), [[delegacion-cognitiva-ia]] (+398/412), [[agentes-de-codigo]] (+399), [[bases-de-datos]] (+405), [[inferencia-local]] (+400/406/411), [[qwen]] (+406), [[deepseek-harness]] (+400). Canales a texto plano por umbral <2: CONSTRUCTUM, Javier Amblar, Programador Novato, Jordi Llàtzer, BettaTech, Torque Test Channel, Slidebean, Profe Carlos Leal, Math Rocks, TecnoRed, Mati en la Ciudad.

**Verificaciones**: Navier-Stokes «Bacmaster» (WL-387) = **Buckmaster** confirmado por cruce WL-387/416 (ambas 2.ª mano — adoptado con reserva); «Luis Martínez Zoroa» = probablemente Javier Gómez-Serrano (WL-416), por confirmar. Verificaciones abiertas heredadas: renuncia de Huang (WL-317/378), PISA WL-396 vs OCDE. Sin dominios nuevos (S4).

## Tramos 69-72 — CONSOLIDADOS (relevo 3 del pedido L35, FINAL — cierre del pedido L35, 2026-11-16)

20 pares útiles (WL-418..WL-438; SKIP sin migrar: WL-419 privado `.no-subs`) migrados con `git mv` a dominios definitivos (resúmenes + raws espejados; «Fuente» actualizada en cada resumen): **ia-local/ 5** (WL-428, 431, 432, 434, 436 — batería de inferencia local Nichonauta consolidada como clúster), **general/ 5** (WL-422, 423, 426, 435, 438), **sociedad-argentina/ 3** (WL-421, 429, 437), **ia-critica-y-fronteras/ 2** (WL-430, 433), **cocina/ 1** (WL-420), **python-practico/ 1** (WL-424), **informatica-teoria/ 1** (WL-425), **agentes-de-codigo/ 1** (WL-427), **ia-uso-practico/ 1** (WL-418). Notas de asignación: batería Nichonauta WL-428/431/432/434/436 → ia-local (precedente T48/T49/T75 — banco de pruebas llama.cpp); WL-433 → ia-critica-y-fronteras (primera opción del cierre de tramo); WL-437 → sociedad-argentina (economia-argentina frágil, dominios.md b).

Producto de la consolidación: **entidades actualizadas** [[nichonauta]] (+6: WL-418/428/431/432/434/436 — clúster batería), [[fazt]] (+2: WL-425/433, total 19), [[hdeleon-net]] (+2: WL-427/430, total 8), [[codigo-espinoza]] (+1: WL-424, total 10), [[marcos-di-cesare]] (+1: WL-420, total 3); **concepto nuevo** [[gillette]] (WL-7 + WL-423, umbral ≥2); **conceptos ampliados** [[inferencia-local]], [[llama-cpp]], [[qwen]], [[gemma-4]], [[percepcion-de-regresion-de-modelos]], [[delegacion-cognitiva-ia]], [[brecha-junior-ia]], [[gobernanza-ia]], [[bases-de-datos]], [[routing-por-coste]]. Canales a texto plano por umbral <2: Semanario Actualidad, LRN2DIY, NovaMente X, tecnotrailer, Abigail Luna, Juan Ramón Rallo, Todo donde todo comenzó, Caterina Abanoni.

**Contradicciones/verificaciones**: WL-431 refuta empíricamente los benchmarks autocreportados del fabricante de Spark X2.5 (contradicción fuente primaria vs prueba independiente); WL-426 título «estafa» contradicho por el propio contenido (obsolescencia por diseño de costos, no fraude); WL-438 título clickbait contradicho por contenido prudente; WL-437 refuta la lectura MMT/Lousteau de la identidad contable (marco austríaco declarado, matemáticas verificables). Verificaciones abiertas heredadas: Javier Gómez-Serrano (WL-416), renuncia de Huang (WL-317/378), PISA (WL-396 vs OCDE). Sin dominios nuevos (S4).

## PEDIDO L35 COMPLETADO (2026-11-16): consolidación diferida de los tramos 61-72 (59 pares útiles) en 3 relevos

T74 (tramos 61-64; tramo 61 DUPLICADO), T75 (tramos 65-68), T76 (tramos 69-72). 0 dominios nuevos (S4). Estación `wiki/wl/` a 0 resúmenes; overview.md y sintesis.md actualizados al cierre.

## Tramo 73 — INGESTADO (relevo 1 del pedido L36, 2026-11-16)

5 fuentes ÚTILES EXACTAS con contador explícito, sin sexto `--one`: WL-439 (`t3J_3U8mOtM` Bilinkis, general — irreversibilidad, NO factual), WL-440 (`cmJlSpna5a4` Carlos Alarcón - AI, ia-uso-practico — GLM-5.3 Flash, routing-por-coste), WL-441 (`c_OG6HALDKI` Bitácora del Cosmos, general — 10 teorías de la gravedad), WL-442 (`p1i8EeWZUqk` CapacitaPro, electromecanica — excepciones IEC 60364), WL-443 (`iirjR_vFUso` Liberalismo Al Palo, sociedad-argentina — stream opinión NO factual). Resúmenes en `wiki/wl/tramo-73/`, raws espejados en `raw/wl/tramo-73/`. Skips pre-head: 10 entradas [Deleted/Private] `.no-subs` (índices 0-9 del cache fresco). Consolidación diferida (L12). Cabeza futura: WL-444. **Pedido L36: 5/30 útiles**.
