# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-16, cierre del pedido L28 — consolidaciones T48 (tramos 38-41) y T49 (tramos 42-44)): **la estación queda a 0 resúmenes**. Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14, los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14** los **49 pares útiles de los tramos 8-17 (WL-102..WL-151; 1 SKIP `.no-subs` WL-136) el 2026-11-15** los **51 pares útiles de los tramos 18-27 (WL-152..WL-203; 5 SKIP `.no-subs`: WL-157 y 4 videos eliminados sin número) el 2026-11-15 (T39)** y los **50 pares útiles de los tramos 28-37 (WL-204..WL-257; 5 SKIP sin migrar: 1 `.no-subs` WL-204a `uGQ5aJt7RZU` video eliminado + 4 SKIP-DUPLICATE pre-flight WL-237/242/243/245, ya procesadas antes de la numeración WL) el 2026-11-15 (T40)** y los **20 pares útiles de los tramos 38-41 (WL-261..WL-284; 6 SKIP `.no-subs` sin migrar: WL-258/259/264/268/277/281 + 1 SKIP-DUPLICATE WL-260) el 2026-11-16 (T48)** y los **15 pares útiles de los tramos 42-44 (WL-285..WL-300; 1 SKIP-DUPLICATE WL-289 sin migrar) el 2026-11-16 (T49)** — T48: ia-uso-practico/ 5, general/ 4, agentes-de-codigo/ 2, informatica-teoria/ 2, ia-local/ 2, ia-critica-y-fronteras/ 1, sociedad-argentina/ 1, electromecanica/ 1, python-practico/ 1, desarrollo-personal/ 1; T49: ia-uso-practico/ 4, informatica-teoria/ 4, general/ 4, ia-local/ 2, agentes-de-codigo/ 1 — todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19), **1 meta-fail sin fuente** (WL-13, re-pass), **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`) y **1 SKIP definitivo sin subtítulos del tramo 14** (WL-136 `fh8f3UdpWzU`, GP Vods, marcador `.no-subs`). Los tramos 1-44 figuran como **consolidados**; las secciones por tramo se retiraron al migrar cada fuente (las filas migradas viven en el historial git). Producto de la consolidación T40: concepto nuevo [[inferencia-local]] (ia-local/) y actualización de [[cognix]] (12 fuentes), [[fazt]] (12), [[gentleman-programming]], [[agentes-de-codigo]], [[historia-de-la-tecnologia]], [[spec-driven-development]], [[el-nino]], [[secretos-geograficos-argentina]] (discrepancia Campo del Cielo armonizada). Producto de la consolidación T48: concepto nuevo [[routing-por-coste]] (ia-uso-practico/) y actualización de entidades ([[thedebugduck]] 5.ª fuente WL, [[gustavo-entrala]] 3.ª, [[codigo-espinoza]] +2, [[nichonauta]] +1, [[fazt]], [[cognix]] 13, [[franco-pisso]], [[gentleman-programming]], [[archivo-del-futuro]]), conceptos [[deepseek-harness]] (WL-270), [[inferencia-local]] (WL-283), [[clonacion-de-voz]] (WL-282/284), [[secretos-geograficos-argentina]] (WL-267), [[historia-de-la-tecnologia]] (WL-279), [[agentes-de-codigo]] (WL-271/272/278), [[bases-de-datos]] (WL-261/280). Enlaces resueltos a texto plano por umbral <2: PepoTech (WL-222), Tirando Código (WL-217), llama-swap (WL-253), NullSafe Architect (WL-270), Tamychi (WL-262), hdeleon.net (WL-280), Javier Amblar (WL-282), Pablo Martínez (WL-284), Pelado Nerd (WL-278), TopFacts ES (WL-263), Diamond Films Plus (WL-265), LATAM ABANDONADA (WL-267), PCA Electricidad (WL-273).

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

## Tramo 45 — estación (relevo 38, pedido L29, 2026-11-16)

Ventana de 5 fuentes ÚTILES EXACTAS desde la cabeza (0 skips, 0 meta-fail). Cabeza verificada contra el cache fresco de 02:06 (4.615 entradas): la cabeza real del runner fue `ohq0aleAXlg` (índice 0 del cache fresco — añadido por el usuario tras el cierre de T47), NO la `YiSTV99y3Nw` prevista en el doc; numeración correlativa contra el cache fresco. Resúmenes en `wiki/wl/tramo-45/`, raws espejados en `raw/wl/tramo-45/`.

| WL | Id | Título | Canal | Dominio previsto |
|---|---|---|---|---|
| 301 | ohq0aleAXlg | Es aburrido pero lo Arregla Todo | BlueGym Animation | salud-fitness |
| 302 | VC0bAanxHQE | Cómo lograr que una mujer DISFRUTE cada conversación contigo | MINDVEIL | desarrollo-personal |
| 303 | sFkgND4ngnw | Cómo se COMPORTAN las mujeres ante el hombre que de verdad quieren | MINDVEIL | desarrollo-personal |
| 304 | 9c1PE6hK-kI | 5 comportamientos «atrevidos» que excitan inconscientemente a las mujeres | MINDVEIL | desarrollo-personal |
| 305 | pK5aUp6ZCSY | ¿Qué sucede cuando una avispa regresa a casa pero su nido ha desaparecido? | ExpPorQué | general (naturaleza) |

Tema de tramo: MINDVEIL ×3 (desarrollo-personal/seducción — entidad de canal confirmada para la consolidación; WL-303 el más problemático por su marco de género). **Consolidación diferida (L12)**. Salida 45.239.32.215, sin 429; presupuesto suave 400 nunca alcanzado (contador acumulado 246 al lanzar). Última fuente: WL-305 (`pK5aUp6ZCSY`, índice 4 del cache fresco); cabeza futura: WL-306 (índice 5, `r2jqrLGXv5U`).

## Tramo 47 — estación (relevo 40, pedido L30 FINAL, 2026-11-16)

Ventana de 5 fuentes ÚTILES EXACTAS desde la cabeza (0 skips, 0 meta-fail). Cabeza verificada contra el cache fresco de 02:19 (4.599 entradas): WL-311 = `AmmmNOYGOR8` (índice 10), primera pendiente tras el tramo 46. Resúmenes en `wiki/wl/tramo-47/`, raws espejados en `raw/wl/tramo-47/`.

| WL | Id | Título | Canal | Dominio previsto |
|---|---|---|---|---|
| 311 | AmmmNOYGOR8 | Escándalo en Avellaneda con la funcionaria Sabrina Soledad González por cámaras vecinales | A24com | general/sociedad-argentina (NO factual) |
| 312 | D7EMSKQqqLA | Cayó «Galaxy», el primer jefe de banda en Haití desde que llegó Bukele | Operativo 503 | general (geopolítica/seguridad) |
| 313 | RsQv7VecLoI | ¿Qué hace un lenguaje de 1959 manejando nuestro dinero? | Gilada | informatica-teoria o general (historia software) |
| 314 | nQW0F1cRoTU | Argentina Esconde Algo Que La Mayoría de los Argentinos No Sabe Que Existe | Latinoamérica con Esteban | general (geografía) |
| 315 | lZEBCDJAnKo | El poder de la IA: la ingeniería inversa crea un gestor de descargas imbatible | El Bit Informado | general o ia-uso-practico |

Tema de tramo: contraste NO factual (WL-311/312, señalados) vs factual con referencias (WL-313/314) y divulgación tech (WL-315); WL-314 resuelve la discrepancia Campo del Cielo de [[secretos-geograficos-argentina]]; WL-315 cruza [[lenguaje-rust]] y [[agentes-de-codigo]] (API MCP; concepto candidato ingeniería-inversa-asistida-por-IA). **Consolidación de tramos 45-47 diferida (L12)**. Salida 45.239.32.215, sin 429; presupuesto suave 400 nunca alcanzado. Última fuente: WL-315 (`lZEBCDJAnKo`, índice 14); cabeza futura: WL-316 (índice 15, `ahNg1-lLkvQ`). **PEDIDO L30 COMPLETADO: 10/10 útiles, tramos 46-47.**

## Tramo 46 — estación (relevo 39, pedido L30, 2026-11-16)

Ventana de 5 fuentes ÚTILES EXACTAS desde la cabeza (0 skips, 0 meta-fail). Cabeza verificada contra el cache fresco de 02:19 (4.599 entradas): WL-306 = `r2jqrLGXv5U` (índice 5), primera pendiente tras el tramo 45. Resúmenes en `wiki/wl/tramo-46/`, raws espejados en `raw/wl/tramo-46/`.

| WL | Id | Título | Canal | Dominio previsto |
|---|---|---|---|---|
| 306 | r2jqrLGXv5U | La Extraña Razón Evolutiva por la que tu Perro Duerme Contigo | Fosil Metal | general (naturaleza) |
| 307 | 5HemqDqXJDQ | ¿Cómo Duermen Los Camioneros A -50 °C…? | CurioFosil | general (divulgación técnica) |
| 308 | PD4McdUXXVo | Tú vs un piloto: qué hace cada uno cuando el coche no obedece | boxboxlabs | general (divulgación técnica/automoción) |
| 309 | LbcyTbM38zQ | 10 herramientas de la terminal que de verdad te sirven en Linux | xeyt | agentes-de-codigo o informatica-teoria |
| 310 | 7BpAOEqIY18 | ¡SAL Fundida: El Líquido MÁS PELIGROSO! | Thoisoi ES | general (química) |

Tema de tramo: divulgación factual ligera con canales nuevos ×5 (todos 1.ª fuente); cluster divulgación técnica naturaleza/física/química (WL-306/307/310) + conducción (WL-308) + herramientas dev (WL-309). **Consolidación diferida (L12)**. Salida 45.239.32.215, sin 429; presupuesto suave 400 nunca alcanzado (contador acumulado 251 al lanzar; un BUDGET-REACHED previo resuelto por L13). Última fuente: WL-310 (`7BpAOEqIY18`, índice 9 del cache fresco); cabeza futura: WL-311 (índice 10).

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14; tramos 8-37: 2026-11-15 — T38, T39 y T40; tramos 38-41: 2026-11-16 — T48; tramos 42-44: 2026-11-16 — T49, cierre del pedido L28). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo. La estación queda **sin secciones activas**; la cabeza del backlog es WL-301 (`YiSTV99y3Nw`, posición 113 del cache).


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
