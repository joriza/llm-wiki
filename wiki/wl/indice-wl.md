# Índice WL — estación provisional «Ver más tarde»

Hub de lectura humana de la estación provisional `wl/`. Cada tramo del backlog «Ver más tarde» de YouTube se ingesta aquí y, en su consolidación por tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Los futuros tramos WL se ingestan directamente en `wl/`, organizados en subcarpetas por tramo con prefijo WL (regla del 2026-11-14, decisión del usuario): `wiki/wl/tramo-N/` y raws espejados en `raw/wl/tramo-N/` (ver `log.md`; flujo documentado en `odd/tasks/ingesta-ver-mas-tarde.md`).

Contenido (2026-11-15, cierre del tramo 10): **15 resúmenes en la estación** — `wiki/wl/tramo-8/` (WL-102..WL-106, relevo 1), `wiki/wl/tramo-9/` (WL-107..WL-111, relevo 2) y `wiki/wl/tramo-10/` (WL-112..WL-116, relevo 3; raws espejados en `raw/wl/tramo-N/`). Historial de migraciones (detalle WL → dominio en `log.md`, bloques CONSOLIDACIÓN WL; las filas migradas viven en el historial git): los 25 pares de los tramos 1-2 migraron el 2026-11-13, los 25 pares de los tramos 5-6 el 2026-11-14 y los **60 pares de los tramos 3, 4 y 7 (WL-31..45, WL-46..60, WL-87..101) el 2026-11-14**, todos con `git mv` a sus dominios definitivos. Quedan **4 bajas definitivas (raws eliminados por decisión del usuario, 2026-11-13 — el registro permanece aquí y en `log.md` para el dedupe pre-flight)** (WL-1, WL-6, WL-9, WL-19) y **1 meta-fail sin fuente** (WL-13, re-pass); **1 SKIP definitivo sin subtítulos del tramo 6** (WL-83 `vKsjYdEAmNI` «Inki», marcador `.no-subs`).

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
| WL-112 | Milei, Trump y la fuga de Bolsonaro: el papelón internacional (`v4hYfc-gUCA`) | PDB | general / sociedad-argentina | Resumen en `tramo-10/` |

### Tramo 10 (2026-11-15, relevo 3 — WL-112..WL-116, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-112 | Milei, Trump y la fuga de Bolsonaro: el papelón internacional (`v4hYfc-gUCA`) | PDB | general / sociedad-argentina | Resumen en `tramo-10/` |
| WL-113 | ¿El fin de Google Drive? Descubrí una nube infinita y gratuita! (`yMFouvbvd4w`) | Compucenter33 | general (herramienta cloud) | Resumen en `tramo-10/` |
| WL-114 | TODO lo que pasa HASTA C:\ \|\| El ÉPICO arranque de los PC retro (`a1csv05WWdM`) | PC Clásico | general (retrocomputing) | Resumen en `tramo-10/` |
| WL-115 | CAFÉ CON JAVO: ¿Ayudó a Bolsonaro? ¿Lo golpearon en CATAMARCA? (`6MLzI2Pgl0s`) | PDB | general (humor político, ficción) | Resumen en `tramo-10/` |
| WL-116 | La Increíble Ingeniería Detrás de la Fibra Óptica (`TWGxp6Okogw`) | Veritasium en español | general (historia de la tecnología) | Resumen en `tramo-10/` |

### Tramo 11 (2026-11-15, relevo 4 — WL-117..WL-121, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-117 | La Historia De AUTODESK (`bTCw5Dd6UMU`) | Reliquias Tecnológicas | general (historia de la tecnología/software) | Resumen en `tramo-11/` |
| WL-118 | El AVE iba directo hacia un tren parado. Y en Atocha lo sabían (`qshiBxuVbg0`) | NOTYX | general (sociedad/infraestructura española) | Resumen en `tramo-11/` |
| WL-119 | Cuneo revela secretos que nunca contó de Milei (`rtm31LMjJdo`) | Politica Argentina (Canosa) | general / sociedad-argentina (opinión militante, NO factual) | Resumen en `tramo-11/` |
| WL-120 | El Futuro de las Empresas: De la IA a los Criterios ESG (`5F49Op3IMwU`) | GSG Business Hub | general (negocios/sostenibilidad; autopromoción) | Resumen en `tramo-11/` |
| WL-121 | Los multimillonarios de Silicon Valley que quieren gobernar el mundo (`Kg7TQr1lXYE`) | Roxana Kreimer | ia-critica-y-fronteras | Resumen en `tramo-11/` |

### Tramo 12 (2026-11-15, relevo 5 — WL-122..WL-126, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-122 | ¿Podría Google vencer a Nvidia en Chips de IA? TPU vs GPU Explicado (`rpjIeRUCwpE`) | Marfil Lab | general (hardware/industria IA) | Resumen en `tramo-12/` |
| WL-123 | "Llegar a fin de mes": Danann y Presto DESTROZAN a Milei (`EoJU8y6g5oQ`) | Canal EY! (Danann) | general / sociedad-argentina (opinión militante, NO factual) | Resumen en `tramo-12/` |
| WL-124 | "Karina es más despiadada que Javier" — Victoria de Masi (`7HUeDzJLUZk`) | El Presto | general / sociedad-argentina (perfil periodístico-opini) | Resumen en `tramo-12/` |
| WL-125 | Los taxistas se arrepienten de votar a Milei (`J_QnzOqL6xY`) | Arruinados x Milei | general / sociedad-argentina (vox populi, encuadre sesgado declarado) | Resumen en `tramo-12/` |
| WL-126 | Tren Urquiza: 7 cosas que NO SABES y el proyecto que NO fue (`49QT0KNgonA`) | Ojo Urbano | general (transporte/infraestructura urbana) | Resumen en `tramo-12/` |

### Tramo 13 (2026-11-15, relevo 6 — WL-127..WL-131, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-127 | TODO lo que te enseñaron sobre el Asado… ¿Es Mentira? (`14vD09SPQTI`) | Locos X el Asado | general (gastronomía experimental) | Resumen en `tramo-13/` |
| WL-128 | ROBOCOP: Todos los secretos, del guion rechazado a la estatua de Detroit (`2tWLB_MDvd4`) | Baul de la Nostalgia | general (historia del cine/cultura pop) | Resumen en `tramo-13/` |
| WL-129 | Voyager 1 está haciendo algo que debería ser IMPOSIBLE (`EB7Q0RZ48QY`) | Abismo Cósmico | general (divulgación espacial) | Resumen en `tramo-13/` |
| WL-130 | Lo que se sabe hasta ahora del hack a Binance (`aAMOi9cDa8g`) | Pelado Nerd | general (cripto/seguridad, info preliminar al 30-10) | Resumen en `tramo-13/` |
| WL-131 | La vergüenza se te va si entendés esto (`1uupD1vZkyM`) | Franco Pisso | general (comunicación/ansiedad social) | Resumen en `tramo-13/` |

### Tramo 14 (2026-11-15, relevo 7 — WL-132..WL-137, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-132 | ¿Es El Fin De Los LLM? (NCM) (`2BicjJgRkms`) | Jorge Marfil | ia-critica-y-fronteras (o ia-uso-practico/hardware) | Resumen en `tramo-14/` |
| WL-133 | Los Sapos Desaparecieron en Silencio… y la Gente Empezó a Enfermar (`pimDRIsdq40`) | Naturaleza Insólita | general (ecología) | Resumen en `tramo-14/` |
| WL-134 | ¿Por Qué Ya No Ves Luciérnagas? (`G1Ouqo4UflQ`) | Naturaleza Insólita | general (ecología; cruce con WL-133) | Resumen en `tramo-14/` |
| WL-135 | El MIT dejó una IA sola en una isla. Esto es lo que hizo (`RPsQMBIjF58`) | SinergIA | ia-critica-y-fronteras o agentes-de-codigo (preprint sin peer-review) | Resumen en `tramo-14/` |
| WL-136 | Hoy! Hablamos con el equipo de Maintainers y varias sorpresas! (`fh8f3UdpWzU`) | Gentleman Programming Vods | — | SKIP definitivo (.no-subs) |
| WL-137 | Todo lo nuevo de Gentle Shell 4 (`NiqsTBKIQo0`) | Gentleman Programming Vods | ia-uso-practico/agentes-de-codigo (fuente interna) | Resumen en `tramo-14/` |

### Tramo 15 (2026-11-15, relevo 8 — WL-138..WL-142, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-138 | Ingenieros Argentinos Desmontaron Un Coche Chino (`mNl2bE5ya6o`) | Visión Automotor | general (industria automotriz/tecnología) | Resumen en `tramo-15/` |
| WL-139 | Psicología de la Inteligencia Mecánica (`VJ1E2xp0bdg`) | Claridad Mental | general (psicología/divulgación) | Resumen en `tramo-15/` |
| WL-140 | 1x vs. 2x: Lo que la industria no quiere que sepas (`PdrpkqDWRNg`) | Modo Ciclista | general (ciclismo/crítica de industria) | Resumen en `tramo-15/` |
| WL-141 | BURLARSE de la gente le salió CARO — Santutu (`BQiFdcxMPOk`) | Themateoteo | general/sociedad-argentina (cultura digital — opinión, NO factual) | Resumen en `tramo-15/` |
| WL-142 | ¿Por qué los ferrocarriles dejan rieles viejos tirados junto a la vía? (`xjyKyQUHl7E`) | Entendiendo Lo Simple | general (infraestructura/ferrocarriles) | Resumen en `tramo-15/` |

### Tramo 16 (2026-11-15, relevo 9 — WL-143..WL-147, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-143 | Por qué la televisión decidió borrar por completo a Raúl Portal (`P7I-FSOmuSA`) | Ecos del Pasado Argentino | general/sociedad-argentina (cultura pop/televisión — marco docudrama) | Resumen en `tramo-16/` |
| WL-144 | Canadá Acaba de REVELAR el Motor Secreto que DESTRUIRÁ a Tesla, BYD… (`yDrc9Y-bx44`) | Laboratorio de Inventos | general (industria automotriz/tecnología; cruce con WL-138; cifras sin fuente independiente) | Resumen en `tramo-16/` |
| WL-145 | ¿Podrían 2 Personas Repoblar la Tierra? (`qhZcvJLBvcI`) | Fosil Metal | general (divulgación genética/demografía) | Resumen en `tramo-16/` |
| WL-146 | 1 MARXISTA vs 5 LIBERTARIOS — Reacción (`BRd-oFpYYKY`) | Dos Dager | general/sociedad-argentina (debate político — opinión, NO factual) | Resumen en `tramo-16/` |
| WL-147 | Tu IA Local No Es Tan Privada Como Crees (`NTO8_1b4LXk`) | Jorge Marfil | ia-uso-practico/ia-local (seguridad; cruce con WL-132) | Resumen en `tramo-16/` |

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo.
