# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/` (ver `log.md`, bloque de migración; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-14, tramo 3 en curso): **29 resúmenes en la estación** (antes de la consolidación eran **0** — los 25 pares de los tramos 1-2 migraron a sus dominios) — los 25 pares raw+resumen procesables migraron con `git mv` a sus dominios definitivos (detalle WL → dominio en `log.md`, bloque CONSOLIDACIÓN WL; las filas migradas de esta tabla viven en el historial git). Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19) y **1 meta-fail sin fuente** (WL-13, re-pass).

| WL | Título | Canal | Dominio destino previsto | Tramo | Estado |
| --- | --- | --- | --- | --- | --- |
| WL-1 | Gentle Shell: cambié toda la interfaz y el diseño (`niubcMYfdWU`) | Gentleman Programming Vods | agentes-de-codigo | 1 | Baja — raw eliminado (2026-11-13) |
| WL-6 | Cardiólogo advierte: millones hacen ESTO cada mañana… (`_DB1IK5s_1s`) | Secretos de la Longevidad | general (clúster fitness-senior) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-9 | El Papa y la CARPA VIP para «FAMOSOS» (`SFQ6rvooB58`) | Tipito LIVE | general (candidata a sociedad-argentina) | 1 | Baja — raw eliminado (2026-11-13) |
| WL-59 | Craft Anything — recrea apps con IA (`hclMMYHiMtI`) | Alejavi Rivera | agentes-de-codigo (vi-coding) | 4 | Pendiente consolidación |
| WL-58 | ArtCraft — ofimática agéntica local (`I5D_lJjEqKk`) | atareao | agentes-de-codigo (MCP desktop) | 4 | Pendiente consolidación |
| WL-57 | León XIV y la carpa VIP (`T2s3eeDULsY`) | El Presto | sociedad-argentina (visita León XIV) | 4 | Pendiente consolidación |
| WL-56 | Probé T3 Code — ¿mejor que Herder y Orca? (`dxTdFiE-dQI`) | Fazt Code | agentes-de-codigo (ADEs) | 4 | Pendiente consolidación |
| WL-55 | Gus — nuevo lenguaje sin heap que supera a C++ (`AB7DSx6JT1Q`) | El Bit Informado | informatica-teoria (lenguajes/compiladores) | 4 | Pendiente consolidación |
| WL-54 | Científicos midieron el fútbol de Pelé, Maradona y Messi (`ryLPKvemrCk`) | Un Dólar Por Fútbol | general (deporte/divulgación) | 4 | Pendiente consolidación |
| WL-53 | 15 usos extremos de la IA para 2027 (`1stM4GBFeqQ`) | Xavier Mitjana | ia-uso-practico (usos y límites) | 4 | Pendiente consolidación |
| WL-52 | 14 horas por día y al hospital (`7YPU9Fdrn5E`) | Gentleman Programming | agentes-de-codigo (estado proyecto Gentle AI) | 4 | Pendiente consolidación |
| WL-51 | NapMem — memoria agéntica de Alibaba (`rl-a2bZ1vKA`) | Articulator ES | agentes-de-codigo (memoria agéntica) | 4 | Pendiente consolidación |
| WL-50 | ¿Por qué Movistar se va de Argentina? (`lTZwfgRmHY4`) | Marca Registrada | sociedad-argentina (telecom/economía) | 4 | Pendiente consolidación |
| WL-49 | ¿Qué le pasa a una tarántula si tapas su madriguera? (`VSviZZVogGM`) | Nacho Te Lo Explica | general (divulgación científica) | 4 | Pendiente consolidación |
| WL-48 | Los servicios son el nuevo software — tesis de Sequoia (`yVbkVbZ__XY`) | Articulator ES | ia-critica-y-fronteras (services-as-software) | 4 | Pendiente consolidación |
| WL-47 | Así funciona el SuperAgente de DeepSeek (`WzD7hwLvR2U`) | Helmcode | agentes-de-codigo (clúster DeepSeek) | 4 | Pendiente consolidación |
| WL-46 | ¿Por qué NO reescribo todo en Rust? (`7hkKvzsVuu8`) | Fazt Code | informatica-teoria (clúster Rust) | 4 | Pendiente consolidación |
| WL-45 | Así se supera una entrevista técnica de programación (`y0dQRmx9ZZM`) | Maxi Programa | agentes-de-codigo (hiring técnico post-IA) | 3 | Pendiente consolidación |
| WL-44 | Bukele pulveriza el cuartel de 400 Mawozo (`680tYusDEJk`) | EL CUARTO PODER | general (episodio Haití-Bukele, 10/11) | 3 | Pendiente consolidación |
| WL-43 | Golpe en Haití: Bukele recupera el estadio Silvio Cator (`V5v3sqyhGO8`) | EL CUARTO PODER | general (corrobora WL-41) | 3 | Pendiente consolidación |
| WL-42 | Nunca volvió a Argentina… y es nuestra culpa (`0NhGS1j13Q0`) | Themateoteo | sociedad-argentina (Francisco y la grieta) | 3 | Pendiente consolidación |
| WL-41 | ¿Qué escondían las pandillas en el estadio? Bukele en Haití (`QW6o4ofqKwE`) | Colombia En Foco | general (news-farm, no verificado) | 3 | Pendiente consolidación |
| WL-40 | Los oficios que valdrán oro con la IA (`XxJpNIRPamU`) | Tu Minuto Económico | ia-critica-y-fronteras (futuro del trabajo) | 3 | Pendiente consolidación |
| WL-39 | Bitcoin cae a 73.000 $ (`7skQAZe4XYI`) | DatoAlCanto | critica-tecnologica o general (cripto; por decidir) | 3 | Pendiente consolidación |
| WL-38 | Los 10 países más baratos y seguros para jubilarse (`Ujx3oOO0C9M`) | Emigrar con cabeza | general (vida práctica/emigración) | 3 | Pendiente consolidación |
| WL-37 | Predijo el futuro, pero no la bala — Julio Verne (`tbcvf02TWi4`) | Forjadores | general (biografía/literatura) | 3 | Pendiente consolidación |
| WL-36 | Schopenhauer: las 6 cosas que una persona inteligente nunca explica (`NGyUqlsKLF0`) | La Sabiduría De Schopenhauer | general (filosofía aplicada) | 3 | Pendiente consolidación |
| WL-35 | ¿Por qué el pene tiene forma de hongo? (`e1Kvyu76I10`) | Dato Oculto | general (divulgación científica) | 3 | Pendiente consolidación |
| WL-34 | Comediante dijo la VERDAD sobre las mujeres en el GYM (`fl5Of1-CCm0`) | Ximena Vásquez | general (guerra cultural) | 3 | Pendiente consolidación |
| WL-33 | Mendoza esconde algo que la mayoría de los argentinos no sabe que existe (`MDlzOz5mXoA`) | Mateo Ríos | sociedad-argentina (geografía/agua) | 3 | Pendiente consolidación |
| WL-32 | Jensen Huang y Alice Huang: apostó a que lo traía. Y lo trajo (`C6NEGDVJNtI`) | La caja negra | ia-critica-y-fronteras (hermana de la fuente VisualPolitik del escándalo) | 3 | Pendiente consolidación |
| WL-31 | Cómo AI destruyó los salones de clase (`5F1pcSljraU`) | Platzi | ia-critica-y-fronteras (candidata; tema nuevo: IA en educación) | 3 | Pendiente consolidación |
| WL-13 | El mito del hardware caro: cómo ejecutar LLM sin arruinarte | sin identificar | por definir | 1 | Meta-fail ×2 — re-pass (sin descarga) |
| WL-19 | Últimos días 11.11 AliExpress 🗑️ baja (`QOug4_hsCGI`; resumen y raw eliminados) | acaele | — | 2 | Baja — raw eliminado (2026-11-13) |

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» de los tramos 1-2 se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (2026-11-13). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo.
