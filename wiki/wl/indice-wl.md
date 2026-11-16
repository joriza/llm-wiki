# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-16, cierre del pedido L31 — consolidación T53 de los tramos 45-47): **la estación queda a 0 resúmenes**. Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14, los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14** los **49 pares útiles de los tramos 8-17 (WL-102..WL-151; 1 SKIP `.no-subs` WL-136) el 2026-11-15** los **51 pares útiles de los tramos 18-27 (WL-152..WL-203; 5 SKIP `.no-subs`: WL-157 y 4 videos eliminados sin número) el 2026-11-15 (T39)** y los **50 pares útiles de los tramos 28-37 (WL-204..WL-257; 5 SKIP sin migrar: 1 `.no-subs` WL-204a `uGQ5aJt7RZU` video eliminado + 4 SKIP-DUPLICATE pre-flight WL-237/242/243/245, ya procesadas antes de la numeración WL) el 2026-11-15 (T40)** y los **20 pares útiles de los tramos 38-41 (WL-261..WL-284; 6 SKIP `.no-subs` sin migrar: WL-258/259/264/268/277/281 + 1 SKIP-DUPLICATE WL-260) el 2026-11-16 (T48)** y los **15 pares útiles de los tramos 42-44 (WL-285..WL-300; 1 SKIP-DUPLICATE WL-289 sin migrar) el 2026-11-16 (T49)** y los **15 pares útiles de los tramos 45-47 (WL-301..WL-315; 0 skips) el 2026-11-16 (T53)** — T48: ia-uso-practico/ 5, general/ 4, agentes-de-codigo/ 2, informatica-teoria/ 2, ia-local/ 2, ia-critica-y-fronteras/ 1, sociedad-argentina/ 1, electromecanica/ 1, python-practico/ 1, desarrollo-personal/ 1; T49: ia-uso-practico/ 4, informatica-teoria/ 4, general/ 4, ia-local/ 2, agentes-de-codigo/ 1; T53: general/ 8, desarrollo-personal/ 3, agentes-de-codigo/ 1, informatica-teoria/ 1, sociedad-argentina/ 1, salud-fitness/ 1 — todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19), **1 meta-fail sin fuente** (WL-13, re-pass), **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`) y **1 SKIP definitivo sin subtítulos del tramo 14** (WL-136 `fh8f3UdpWzU`, GP Vods, marcador `.no-subs`). Los tramos 1-47 figuran como **consolidados**; las secciones por tramo se retiraron al migrar cada fuente (las filas migradas viven en el historial git). Producto de la consolidación T40: concepto nuevo [[inferencia-local]] (ia-local/) y actualización de [[cognix]] (12 fuentes), [[fazt]] (12), [[gentleman-programming]], [[agentes-de-codigo]], [[historia-de-la-tecnologia]], [[spec-driven-development]], [[el-nino]], [[secretos-geograficos-argentina]] (discrepancia Campo del Cielo armonizada). Producto de la consolidación T48: concepto nuevo [[routing-por-coste]] (ia-uso-practico/) y actualización de entidades ([[thedebugduck]] 5.ª fuente WL, [[gustavo-entrala]] 3.ª, [[codigo-espinoza]] +2, [[nichonauta]] +1, [[fazt]], [[cognix]] 13, [[franco-pisso]], [[gentleman-programming]], [[archivo-del-futuro]]), conceptos [[deepseek-harness]] (WL-270), [[inferencia-local]] (WL-283), [[clonacion-de-voz]] (WL-282/284), [[secretos-geograficos-argentina]] (WL-267), [[historia-de-la-tecnologia]] (WL-279), [[agentes-de-codigo]] (WL-271/272/278), [[bases-de-datos]] (WL-261/280). Enlaces resueltos a texto plano por umbral <2: PepoTech (WL-222), Tirando Código (WL-217), llama-swap (WL-253), NullSafe Architect (WL-270), Tamychi (WL-262), hdeleon.net (WL-280), Javier Amblar (WL-282), Pablo Martínez (WL-284), Pelado Nerd (WL-278), TopFacts ES (WL-263), Diamond Films Plus (WL-265), LATAM ABANDONADA (WL-267), PCA Electricidad (WL-273).

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

## Tramo 48 — activo (relevo 1, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-48/`, resúmenes en `wiki/wl/tramo-48/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-316 | ¡James Webb acaba de observar Plutón por primera vez y es IMPACTANTE! (`ahNg1-lLkvQ`) | Misterio Celeste | general (divulgación astronómica) o ciencias-tierra |
| WL-317 | Auge y caída del fundador de NVIDIA, el hombre más poderoso de la IA (`cHUvtGd6GSg`) | Gustavo Entrala | general (tecnología/industria/geopolítica) o ia-critica-y-fronteras — NO verificada, señalada |
| WL-318 | 15 SITIOS WEB BRUTALES que deberías guardar en FAVORITOS (`vy587lRWmv0`) | El Androide Feliz | general (herramientas) o self-hosting tangencial |
| WL-319 | ¿Por Qué las Mujeres Tienen Glúteos Tan Grandes? ¡La Evolución se Volvió Loca! (`mc-R71_MSP8`) | ¿Cómo Así | general (evolución humana) o salud-fitness |
| WL-320 | LA SALAMANDRA MÁS BARATA DEL MERCADO — Review completa — ECO 7000 TROMEN (`bKZK65NdNWE`) | FASE | casa-calefaccion (cluster establecido) o general |

Cabeza futura del backlog: **WL-321** (índice 5 del cache fresco de 04:52, 4.584 entradas).

## Tramo 49 — activo (relevo 2, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-49/`, resúmenes en `wiki/wl/tramo-49/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13; un BUDGET-REACHED por contador acumulado 266 resuelto 266→400 sin rotar). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-321 | El MIT quiere cambiar la educación universitaria para siempre por la IA (`iPWiJr1StJA`) | Profe Sang | ia-uso-practico (educación asistida por IA) o general — citas de 2.ª mano, señaladas |
| WL-322 | CÓMO COLOCAR UN MOSQUITERO CON ADHESIVO — MUY FÁCIL (`Gj99E4ibeUE`) | FASE | casa-calefaccion (cluster establecido) o general — conflicto declarado |
| WL-323 | Las Laptops de $250 de China Están Destruyendo un Negocio de $200 Mil Millones (`YiSTV99y3Nw`) | Taller Del Mundo | general (industria/economía) o informatica-teoria |
| WL-324 | Presupuesto 2027: la economía real NO funciona por una planilla de Excel (`_2rPqlw1H_o`) | Canal EY! Streaming | sociedad-argentina — opinión militante, NO factual, señalada |
| WL-325 | Inteligencia artificial: por qué hace lo que le pedís y sale mal (`7CZLMLnfIiw`) | Gentleman Programming | agentes-de-codigo o ia-uso-practico — patrocinio JetBrains declarado |

Cabeza futura del backlog: **WL-326** (índice 19 del cache fresco de 04:52).

## Tramo 50 — activo (relevo 3, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-50/`, resúmenes en `wiki/wl/tramo-50/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-326 | Obsidian es increíble! Apréndelo ahora gratis con certificado incluído (`SQUiLmKH5Cc`) | HolaMundo | ia-critica-y-fronteras ([[obsidian-memoria-agentes]]) o agentes-de-codigo ([[holamundo]] 3.ª fuente) — autopromoción Academia excluida |
| WL-327 | Peter Thiel — El mago oscuro detrás de la IA (`3PhA7RW_ZVo`) | Preguntas Incómodas | ia-critica-y-fronteras (cluster neorreacción WL-121) o sociedad-argentina — opinión militante NO factual, señalada |
| WL-328 | Microsoft Works: el programa que casi todos tenían y casi nadie eligió (`SthQ9b4SB8Y`) | Archivo del Futuro | general (historia tecnología) o informatica-teoria — [[historia-de-la-tecnologia]], cluster WL-313/200/117 |
| WL-329 | ¿Quiénes Son los 25 Humanos Más Importantes de la Historia? (`mh48xOkLhgU`) | Homosapiens | general (historia) — cifras de 2.ª mano señaladas; genealogía IA Turing→Hinton |
| WL-330 | GRABOIS fue a INFOBAE y dejó a todos sin palabras sobre la IA (`wbbt4J8iLGU`) | CASA 13 | ia-critica-y-fronteras (gobernanza IA) o sociedad-argentina — opinión militante NO factual, señalada; contrapunto WL-327 |

Cabeza futura del backlog: **WL-331** (índice 24 del cache fresco de 04:52).

## Tramo 51 — activo (relevo 4, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-51/`, resúmenes en `wiki/wl/tramo-51/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-331 | OpenClaw 2.0: la actualización que puede cambiarlo todo en la IA (`mZAwl0XqlaY`) | CodeSimple | ia-uso-practico/agentes-de-codigo o ia-critica-y-fronteras — demo de producto; cifras de adopción sin verificar; patrocinio Hostinger excluido |
| WL-332 | ¿Qué joraca es Jev? El TypeScript de la IA. (`EejD_ojLYzc`) | Dos Dager | ia-critica-y-fronteras o general (industria IA) — react basado en marketing del producto, sin fuentes independientes; cruces WL-132/189 |
| WL-333 | Cuantización de Modelos de IA: ¿realmente se pierde calidad? (`SyLPqEO0YUU`) | Nichonauta | ia-uso-practico/ia-local o general (hardware IA local) — benchmark BF16 vs Q4_K_XL de Qwen 3.6 35B-A3B; cruces WL-102 |
| WL-334 | Serverless: cuándo te conviene y cuándo sale más caro (`KkG4fSMRmXE`) | Torti Code | general (arquitectura cloud) o informatica-teoria — divulgación FaaS; Torti Code 2.ª fuente (entidad candidata con WL-252) |
| WL-335 | Maxtor: por qué desapareció el disco que había en tu PC (`fnVeInXVrKU`) | Archivo del Futuro | general (historia tecnología/industria) o informatica-teoria — cruces [[historia-de-la-tecnologia]], cluster WL-328/313/200/117/323 |

Cabeza futura del backlog: **WL-336** (índice 29 del cache fresco de 04:52).

## Tramo 52 — activo (relevo 5, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-52/`, resúmenes en `wiki/wl/tramo-52/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-336 | ¿Y si la VENGANZA fuera algo bueno? Lo que la CIENCIA descubrió (`t5NBtNx06TY`) | Roxana Kreimer | general (filosofía/psicología moral) o sociedad-argentina — atribución de 2.ª mano señalada; cruces WL-327/330 (monopolio estatal de la violencia) |
| WL-337 | Por qué las medialunas de hoy SON UNA PORQUERÍA (`go62rrp8rEE`) | Marcos Di Cesare | general (gastronomía/cultura argentina) o sociedad-argentina — opinión profesional de 1.ª mano; autopromoción de cursos excluida |
| WL-338 | El experimento prohibido: la historia que la medicina no quiere contar (`4E7Ma9jGqvM`) | La Traumatóloga Geek | general (historia de la ciencia/medicina) — documentación citada al pie, atípica; título sensacionalista señalado |
| WL-339 | Token Ring: por qué Ethernet le ganó a la red de IBM (`FhckjDk-WNU`) | Archivo del Futuro | general (historia tecnología) o informatica-teoria — cluster historia WL-328/335/313/200/117/323; Archivo del Futuro +1 |
| WL-340 | Mi stack real de IA para programar (`tR632IiOxaY`) | Fazt | agentes-de-codigo o ia-uso-practico — patrocinio CodeRabbit excluido; cruces [[multiplexores-agentes]], WL-325/331/332/333; Fazt +1 |

Cabeza futura del backlog: **WL-341** (índice 34 del cache fresco de 04:52).

## Tramo 53 — activo (relevo 6, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-53/`, resúmenes en `wiki/wl/tramo-53/`); sin skips, sin meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-341 | Vim: la imitación gratuita que le ganó al original (`kMn9gZFeuS0`) | Archivo del Futuro | general (historia tecnología) o informatica-teoria — cruces cluster historia WL-328/335/339/313/200/117/323, [[historia-de-la-tecnologia]]; Archivo del Futuro +1 |
| WL-342 | Qwen 3.6 35B A3B en Pi-Agent: más inteligente y rápido con MoE (`MFf8WPXHESw`) | Nichonauta | ia-uso-practico/ia-local — demo local RTX 3060; cruces WL-333 (mismo modelo), WL-102, [[hardware-para-ia-local]]; Nichonauta +1 |
| WL-343 | Despliega tu propio Bitly — gratis y open source (`rGwNTdniad0`) | Pelado Nerd | general (herramientas) o self-hosting — patrocinio HostGator excluido; Pelado Nerd +1 |
| WL-344 | A mi amigo le pagaron $2.500 por arreglar en 20 minutos lo que otro hizo en 3 meses (`x9Du54J0EaE`) | Código Espinoza — Automatiza tu Vida | general (programación/negocio) — caso anecdótico no verificable, señalado; cruces [[bases-de-datos]], WL-343; Código Espinoza 1.ª fuente |
| WL-345 | La IA está cambiando TODO para los programadores (`3q3WqwxVbXY`) | hdeleon.net | ia-critica-y-fronteras — opinión de 1.ª mano sin datos agregados, señalada; cruces WL-340, WL-325/165, WL-332, [[agentes-de-codigo]] |

Cabeza futura del backlog: **WL-346** (índice 39 del cache fresco de 04:52).

## Tramo 54 — activo (relevo 7, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-54/`, resúmenes en `wiki/wl/tramo-54/`); 1 skip definitivo (WL-347 `CXXnlDUtkkQ`, .no-subs — no cuenta como útil); sin meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-346 | Qué es Jev AI y por qué todo el mundo habla de ello (`D73kVkGCPiY`) | return(GiS); | ia-uso-practico o ia-critica-y-fronteras — demo 1.ª mano del clasificador Jev; cruces WL-332/298, routing-por-coste WL-274/278/298; return(GiS); 1.ª fuente |
| WL-347 | (SKIP `.no-subs`) Curso Codex App con IA Local (`CXXnlDUtkkQ`) | — | sin subtítulos, no cuenta como útil |
| WL-348 | Google Sheets como base de datos: el momento exacto en que revienta (`QKq3pffWbVA`) | Código Espinoza — Automatiza tu Vida | general (programación/negocio) o informatica-teoria — límites 2026 señalados; cruces [[bases-de-datos]], WL-344; Código Espinoza 2.ª fuente |
| WL-349 | Google lanza el PROFESOR con IA definitivo (y es gratis) (`4_fM3Nv8BB0`) | Xavier Mitjana | ia-uso-practico (aprendizaje asistido) o general — nombre de modelo ASR no verificado; patrocinio Manus excluido; cruces WL-299, [[delegacion-cognitiva-ia]] |
| WL-350 | Probé la IA que hace lo que NotebookLM no hace (3 entregables) (`nS2ScVtcgxk`) | Oskr León \| Negocios Digitales | ia-uso-practico o general (herramientas) — invitación de marca declarada, promoción excluida; cruces [[delegacion-cognitiva-ia]], [[agentes-de-codigo]], [[hardware-agentico-mcp-first]] |
| WL-351 | ¿Qué hay conectado en tu red? Auditoría práctica con Nmap (`oGZQnexwp44`) | JuncoTIC | general (seguridad/herramientas) o informatica-teoria — cruces WL-343/147, temas infra WL-334; JuncoTIC 1.ª fuente |

Cabeza futura del backlog: **WL-352** (índice 45 del cache fresco de 04:52).

## Tramo 55 — activo (relevo 8, pedido L32, 2026-11-16)

5 fuentes ÚTILES ingestadas (raw en `raw/wl/tramo-55/`, resúmenes en `wiki/wl/tramo-55/`); 0 skips, 0 meta-fails; salida 45.239.32.215 sin 429 (L13; presupuesto suave 400 nunca alcanzado). Dominios destino previstos (S4, sin dominios nuevos; consolidación diferida):

| WL | Título | Canal | Dominio previsto |
|---|---|---|---|
| WL-352 | ¿Cuánto gana un programador en Argentina en 2026? (La realidad) (`1d6Bvo2GuNQ`) | Toto Ruffa | sociedad-argentina (carrera IT) o general — videoensayo NO factual, cifras de 2.ª mano señaladas; cruces WL-221/257 |
| WL-353 | Jev es el lanzamiento de IA más importante desde ChatGPT (`nkhWIRCfprU`) | EDteam | ia-uso-practico o ia-critica-y-fronteras — misma demo que WL-346, primitivos coincidentes; costes de memoria señalados; cruces WL-346, routing-por-coste |
| WL-354 | Tu harness puede frenar a los nuevos modelos (`Hx2M-L4Iw1c`) | DevExpert — IA para Desarrolladores | agentes-de-codigo o ia-critica-y-fronteras — caso Uncle Bob 2.ª mano señalado; cruces [[agentes-de-codigo]], [[odd-metodologia]], WL-228/211/300 |
| WL-355 | La IA SIN CENSURA cuesta solo $5… y NADIE puede detenerla (`oK86HLPmdAg`) | Cognix | ia-critica-y-fronteras o general — abliteration, fuentes sin enlaces señaladas; cruces WL-354, [[inferencia-local]], [[agentes-de-codigo]] |
| WL-356 | MySQL: vendió su creación y tuvo que clonarla para salvarla (`pzeCFyhCuP8`) | Archivo del Futuro | general (historia de la tecnología) o informatica-teoria — cruces [[bases-de-datos]], [[historia-de-la-tecnologia]], WL-296/313 |

Tema de tramo: ecosistema de modelos IA ×3 (Jev, harness, abliteration) + mercado/carrera ×2. Cabeza futura del backlog: **WL-357** (índice 50 del cache fresco de 04:52, `AZCDAoOb6lc`).
| WL-357 | Esfuerzo, estudio, trabajo: NADA ALCANZA — Mayra Arena en #LaCumbre (`AZCDAoOb6lc`) | SE VIENE | sociedad-argentina o general — entrevista de opinión NO factual; cruces WL-251/255/293/311, WL-221/352 |
| WL-358 | Microsoft Access: el archivo que nadie se anima a tocar (`NllJOVKk9kI`) | Archivo del Futuro | general (historia de la tecnología) o informatica-teoria — cruces WL-356, [[bases-de-datos]], [[historia-de-la-tecnologia]], WL-252/344/348 |
| WL-359 | El farmeo de aura se salió de control (`Z01olHMHYkg`) | Danann | general (cultura pop) o sociedad-argentina — sátira NO factual; cruces WL-292/251, WL-357 |
| WL-360 | Simulacro de entrevista técnica para desarrollador junior #5 (`mSApoq5Htxo`) | TodoCode | ia-uso-practico o general (carrera IT) — cruces WL-352, [[bases-de-datos]], [[delegacion-cognitiva-ia]] |
| WL-361 | Truco para eliminar la obsolescencia programada en focos (`RSR-JaOYROo`) | EL ANGELITO | electromecanica o general (hogar/reparación) — cruces WL-304/207/235, [[historia-de-la-tecnologia]] |

Tema de tramo: sociedad argentina y mercado laboral ×2 (WL-357/360) + historia técnica ×1 (WL-358) + cultura viral ×1 (WL-359) + reparación/hogar ×1 (WL-361). Cabeza futura del backlog: **WL-362** (índice 55 del cache fresco de 04:52, `L2iMZIVYMAg`).
