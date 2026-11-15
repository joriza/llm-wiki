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

### Tramo 17 (2026-11-15, relevo 10 — WL-148..WL-151, tramo final del pedido de 50, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-148 | ¿Qué pasó con Jenna Ortega después de Merlina? (`w2ehTs7pinc`) | Dieck Docs | general (biografía/cultura pop — marco docudrama) | Resumen en `tramo-17/` |
| WL-149 | Estamos vivos de puro c*lo 2 (`Ic-qgq6KTWM`) | Pablo Molinari | general/sociedad-argentina (humor nostálgico — NO fuente factual) | Resumen en `tramo-17/` |
| WL-150 | Le pidió a una IA que HACKEARA su TV (`MK5ZPTC9gRg`) | Crossover | general (tecnología/privacidad — negocio del hardware conectado) | Resumen en `tramo-17/` |
| WL-151 | Algo está FALLANDO a la vez en los TRENES y las CARRETERAS de ESPAÑA (`a8764s81INI`) | VisualPolitik | general (infraestructura/transporte — caso España; cruces WL-118/WL-142/WL-126) | Resumen en `tramo-17/` |

## Cómo leer esta tabla

- **Estado «Baja»**: resumen eliminado por decisión del usuario y raw eliminado al cierre de la consolidación (2026-11-13); la fila y su entrada en `log.md` permanecen como registro para el dedupe pre-flight (evita re-procesar el video).
- **Estado «Meta-fail»**: descarga fallida de metadatos (bot-check ×2, regla del tramo 1); sin raw ni resumen; acumulado en re-pass.
- Las filas «Pendiente consolidación» se retiraron al migrar cada fuente con `git mv` a su dominio definitivo (tramos 1-2: 2026-11-13; tramos 5-6 y 3-4-7: 2026-11-14). Los futuros tramos WL se ingestan directamente en `wl/` y esta tabla vuelve a crecer con el próximo tramo.

### Tramo 18 (2026-11-15, relevo 11 — 5 fuentes útiles desde la cabeza, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-152 | EL ACOSO fue PEOR de lo que PENSABAN — Caso Bullying Catamarca (`7eI3D54Raig`) | LeanRiccio | general/sociedad-argentina (análisis jurídico de caso social) | Resumen en `tramo-18/` |
| WL-153 | Hoy les vuelo la peluca (`_Ex50pLRnXY`) | Gentleman Programming Vods | ia-uso-practico/agentes-de-codigo (ecosistema Gentle Shell — fuente interna) | Resumen en `tramo-18/` |
| WL-154 | Espié a mi IA local… y descubrí algo INESPERADO (`WdOLEwGuEN8`) | Cognix | ia-uso-practico/ia-local (seguridad; cruces WL-147/WL-132/WL-150) | Resumen en `tramo-18/` |
| WL-155 | Los 7 lenguajes de programación MÁS RAROS (`ZlfY3tF3qBY`) | LinuxChad | general (historia/cultura de la programación) | Resumen en `tramo-18/` |
| WL-156 | Florencia vs Lizy: la verdad incómoda que nadie se anima a decir (`w5DnMsCZ4K4`) | Themateoteo | general/sociedad-argentina (NO fuente factual, señalado) | Resumen en `tramo-18/` |

### Tramo 19 (2026-11-15, relevo 12 — 5 fuentes útiles desde la cabeza, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-158 | Martín Cirio Rompió con Todo (`xrXEI_AUYic`) | Themateoteo | general/sociedad-argentina (NO fuente factual, señalado) | Resumen en `tramo-19/` |
| WL-159 | INFLUENCERS de cocina vs COCINAR de verdad (`sp1f6LMU_s4`) | Themateoteo | general/sociedad-argentina (NO fuente factual, señalado) | Resumen en `tramo-19/` |
| WL-160 | TODAS las HERRAMIENTAS DevOps en 24 minutos (`vQ4OOw63svs`) | TecnoCroquis | ia-uso-practico/agentes-de-codigo o general (herramientas dev) | Resumen en `tramo-19/` |
| WL-161 | ¡SE LE ACABÓ EL SHOW A VIVIANA CANOSA! (`1owxolZN1QQ`) | Themateoteo | general/sociedad-argentina (NO fuente factual, señalado; cruce WL-156) | Resumen en `tramo-19/` |
| WL-162 | Lo que va a reemplazar a tu laptop ya está en tu bolsillo (`lgC7MZS_R30`) | Titanes Tecnológicos | general (historia de la tecnología/industria; cruces WL-138/WL-122) | Resumen en `tramo-19/` |

Notas del tramo: WL-157 (`npVBnrL-y-4`, El Presto) SKIP definitivo `.no-subs`; el tramo queda encabezado por la cuádruple presencia de Themateoteo (WL-158/159/161 + precedente WL-156) — candidata a entidad de canal en consolidación.

### Tramo 20 (2026-11-15, relevo 13 — ventana de 5 útiles desde la cabeza; se procesaron 7 útiles por sobregiro reportado, pendiente consolidación)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-163 | ¿ARGENTINA es de los países más POBRES de LATINOAMÉRICA? (`Z-2AmgbpHe4`) | Ciudadano news | general/sociedad-argentina (entrevista Schteingart/Fundar — opinión del entrevistado señalada) | Resumen en `tramo-20/` |
| WL-164 | Lo Que Nadie Te Cuenta Sobre Tu Cuerpo Después de los 50 (`PV7vWFZDHEU`) | Somos Mente en Calma | general (salud/longevidad — divulgación sin citas, señalado) | Resumen en `tramo-20/` |
| WL-165 | Google Harness 2: Cómo Crear Agentes de IA que Aprenden Solos (`Rrwnak3RRIw`) | InzideTech | ia-uso-practico/agentes-de-codigo (fuente secundaria; cruces [[deepseek-harness]], WL-153, WL-132) | Resumen en `tramo-20/` |
| WL-166 | VirtualDJ 2026: El software que NADIE respetaba ahora sorprende a todos (`wTZkkpN70g0`) | Portal DJ | general (historia del software/industria DJ; cruces WL-162/WL-158) | Resumen en `tramo-20/` |
| WL-167 | «La mitad de la memoria que tengo debe ser un don que me dio Dios»: Alejandro Gardinetti (`FWSgULNMHSQ`) | Urbana Play 104.3 FM | general/sociedad-argentina (humor — NO fuente factual; cruce WL-149) | Resumen en `tramo-20/` |
| WL-168 | Fenómeno pañal: Milei se desgració (`go8Yx612mhs`) | Emanuel Rodríguez (Peroncho Delivery) | general/sociedad-argentina (opinión militante — NO fuente factual; cruces WL-125/WL-146) | Resumen en `tramo-20/` |
| WL-169 | Cómo Hacer una Ducha Caliente Sin usar Gas ni Electricidad (`Jq2ghiA6ncI`) | El Profeturo | general (bricolaje/energía — tecno-folklore NO verificado, señalado) | Resumen en `tramo-20/` |

Notas del tramo: ventana completa (WL-163..WL-167) cerrada en WL-167; WL-168 y WL-169 procesadas por sobregiro del bucle (error de conteo del relevo, reportado al orquestador). 0 meta-fail, 0 skip, sin 429. WL-169 es candidato a baja (triage del usuario, regla de baja de fuente).

### Tramo 21 (2026-11-15, relevo 14 — ventana de 5 útiles desde la cabeza, cerrada exactamente en frontera)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-170 | Mejora tu flujo de trabajo en la terminal con estas 10 CLI (`8VKy05wcZW4`) | CodeSimple | ia-uso-practico/agentes-de-codigo o general (herramientas dev; cruces LM Fit ↔ [[hardware-para-ia-local]], Worktrunk ↔ [[agentes-de-codigo]]) | Resumen en `tramo-21/` |
| WL-171 | Ray Dalio ADVIERTE: «Se ACERCA algo PEOR que un COLAPSO económico» (`XTbg8rxy_V8`) | Arte de invertir | general (finanzas/inversión — NO fuente primaria, marco promocional del canal, señalado) | Resumen en `tramo-21/` |
| WL-172 | ¿Flema Pegada que NO sale? No es Moco, es PEPSINA (`xjJRmH1V_Rs`) | Dr. Alberto Sanagustín | general (salud/divulgación médica) | Resumen en `tramo-21/` |
| WL-173 | ¿Llegará una ERA GLACIAL tras el MONSTRUOSO EL NIÑO? (`GJF8sZC2hsc`) | AstroTim Español | general (divulgación científica/clima — título clickbait desalineado, señalado) | Resumen en `tramo-21/` |
| WL-174 | Windows 11 + Linux + Android en 1 Solo Sistema \| WinUX 11 LTSC (`3-mwREsdKfQ`) | Soy David PC Tech | general (tecnología/software) o ia-uso-practico (herramientas) | Resumen en `tramo-21/` |
| WL-175 | Viejo amplificador frente al LM386: ¿qué ha cambiado? \|\| TAA611 (`hPqKNT5P02A`) | En Clave de Retro | general (electrónica/retrocomputing; cruce WL-114) | Resumen en `tramo-21/` |

Notas del tramo: 5/5 útiles exactos (WL-170..WL-175), 0 meta-fail, 0 skip, sin 429 — cierre en frontera sin sobregiro (corrección del error de conteo de T20). Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas. Consolidación diferida (L12).

### Tramo 22 (2026-11-15, relevo 15 — ventana de 5 útiles desde la cabeza, cerrada exactamente en frontera)

| WL | Título | Canal | Dominio destino previsto | Estado |
| --- | --- | --- | --- | --- |
| WL-176 | La estupidez humana no reconoce límites (y yo tengo pruebas) (`dKBqYYXaZB0`) | Roxana Kreimer | general (humor/ensayo — NO fuente factual, señalado; cruce WL-121 misma autora) | Resumen en `tramo-22/` |
| WL-177 | Por qué el hackeo a PHP es el fin del internet abierto (`F3EmYmJjIoQ`) | Platzi | general o ia-critica-y-fronteras (seguridad/ciber — fuente secundaria, marco comercial Platzi y afirmaciones sin verificación señalados; cruces WL-147/WL-132, [[deepseek-harness]]) | Resumen en `tramo-22/` |
| WL-178 | Así se programa con agentes de IA en 2026 (`wrhTDWv66kQ`) | Eric Risco \| Inteligencia Artificial | ia-uso-practico/agentes-de-codigo (primera mano, autopromoción señalada; cruces [[agentes-de-codigo]], [[obsidian-memoria-agentes]], WL-147) | Resumen en `tramo-22/` |
| WL-179 | 15 Sistemas de Organización Que te Elevan del Caos al Top 1% Mundial (`uTlJlozyoNw`) | InvernovAH - Álvaro H. Jarque | general (productividad — patrocinio HubSpot excluido, título clickbait señalado; cruces [[obsidian-memoria-agentes]], [[odd-metodologia]], WL-178) | Resumen en `tramo-22/` |
| WL-180 | Programar con agentes ya no basta: monta tu Software Factory (`p6nnqerea7w`) | Eric Risco \| Inteligencia Artificial | ia-uso-practico/agentes-de-codigo (continuación WL-178; autopromoción y cifras sin verificar señaladas; cruces [[agentes-de-codigo]], WL-165, WL-177) | Resumen en `tramo-22/` |

Notas del tramo: 5/5 útiles exactos (WL-176..WL-180), 0 meta-fail, 0 skip, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas. Eric Risco ×2 en la ventana (WL-178/180) — candidata a entidad de canal en consolidación. Consolidación diferida (L12).

## Tramo 23 (2026-11-15, relevo 16)

| # | Título | Fuente | Dominio previsto | Resumen |
|---|--------|--------|------------------|---------|
| WL-181 | SE ACABÓ EL SOFTWARE (`NNWfRubvM5o`) | DotTech-ES | ia-critica-y-fronteras o general (industria software/IA; cruces WL-177, WL-165, [[agentes-de-codigo]]) | Resumen en `tramo-23/` |
| WL-182 | Manaos: La Gaseosa mas polémica de Argentina (`8_OsOsEnidQ`) | Andru - Impetu | general/sociedad-argentina (historia empresarial; marco dramatizado señalado; cruce WL-110) | Resumen en `tramo-23/` |
| WL-183 | La Traición que DESTRUYÓ a Anonymous para siempre (`IDdFTlLXnz0`) | Historias De Hackers | general o ia-critica-y-fronteras (ciberseguridad; docudrama señalado; cruces WL-177/WL-150, WL-128) | Resumen en `tramo-23/` |
| WL-184 | ¿El Peronismo en su Crisis Terminal? De Trabajadores a Femboys (`KOFb3PqAjc4`) | Los Herederos de Alberdi | general/sociedad-argentina (opinión militante — NO fuente factual, señalado en triage; cruces WL-119/WL-123/WL-146) | Resumen en `tramo-23/` |
| WL-185 | Me equivoqué, NO uses Spec Driven Development (`5JjuF1zpNbI`) | HolaMundo | ia-uso-practico/agentes-de-codigo (primera mano; cruces [[agentes-de-codigo]], [[odd-metodologia]], WL-178/WL-180/WL-165) | Resumen en `tramo-23/` |

Notas del tramo: 5/5 útiles exactos (WL-181..WL-185), 1 SKIP definitivo sin subtítulos (video eliminado `PK0qQyd4QqA`), 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas + 1 skip. Consolidación diferida (L12).

## Tramo 24 (2026-11-15, relevo 17)

| # | Título | Fuente | Dominio previsto | Resumen |
|---|--------|--------|------------------|---------|
| WL-186 | 20 Trucos de Cocina que Descubrí Demasiado Tarde! (`kV_5yDtDWnA`) | Astiavo | general (vida diaria; afirmaciones sin verificación señaladas en triage) | Resumen en `tramo-24/` |
| WL-187 | Código Morse 2 antes de GTA 6 (`L_up4wNCoNI`) | Eze Martínez | general (criptografía ligera/cultura pop; título meme, contenido correcto en lo esencial) | Resumen en `tramo-24/` |
| WL-188 | Automatic Water Tank Filler Using 555 Timer (`T7Jy082bmz4`) | Wirecora | general (electrónica/diy; Short de 6 s sin narración — candidata a baja por triage, ítem 17) | Resumen en `tramo-24/` |
| WL-189 | ¿Es el Final de los LLMs? (NCM) (`LKBe_Z2A0fU`) | Marfil Lab | ia-uso-practico o ia-critica-y-fronteras (análisis de preprints con verificación propia; cruces WL-132/WL-122) | Resumen en `tramo-24/` |
| WL-190 | Por qué ser solo "BUENA PERSONA" te condena al fracaso (Teoría de Juegos) (`hBYxZP38kRE`) | No es Posible | general (teoría de juegos/economía del comportamiento; título clickbait señalado; cruces concepto dilema del prisionero) | Resumen en `tramo-24/` |

Notas del tramo: 5/5 útiles exactos (WL-186..WL-190), 1 SKIP definitivo sin subtítulos (`y3Y5VJ4BzKs`, Parallel Parking), 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas + 1 skip, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12).

## Tramo 25 (2026-11-15, relevo 18)

| # | Título | Fuente | Dominio previsto | Resumen |
|---|--------|--------|------------------|---------|
| WL-191 | Cancún: torres de $50 millones se quedan sin playa — y México no va a salvarlas (`XtZJxqdDBjU`) | Cimientos de Lujo | general (infraestructura/costas; marco editorial fuerte, cifras sin fuente primaria señaladas; cruces WL-118/WL-142/WL-126, WL-173) | Resumen en `tramo-25/` |
| WL-192 | El Chip De IBM De 12 Nm Ridiculiza A Nvidia De 4 Nm (`aGFaZF81Fz8`) | Marfil Lab | ia-uso-practico o general (hardware IA — NorthPole, memoria-cálculo integrados; cruces WL-189/WL-122/WL-144, [[hardware-para-ia-local]]) | Resumen en `tramo-25/` |
| WL-193 | Escándalo por el oro: ex-asesora de Javier Milei DESTROZA a Toto Caputo (`dugJVQSmwt8`) | Canal EY! \| Streaming | general/sociedad-argentina (opinión militante — NO fuente factual, señalado en triage; cruces WL-123/WL-146/WL-184) | Resumen en `tramo-25/` |
| WL-194 | IA evaluación de aprendizajes, Ana Henriquez Orrego (`ONachuv2f0k`) | Ana Henriquez Orrego (webinar UDLA) | general (educación/IA) o ia-critica-y-fronteras (evaluación resiliente a la IA; cruces WL-31, [[odd-metodologia]], [[agentes-de-codigo]]) | Resumen en `tramo-25/` |
| WL-195 | Mayra Arena con Romina Manguel: pobreza, marginalidad y la nueva realidad social (`tCsMElWO_NQ`) | Splendid AM 990 | general/sociedad-argentina (análisis social con testimonio; cifras sin fuente exacta señaladas; cruces WL-163, cluster videoensayos sociales) | Resumen en `tramo-25/` |

Notas del tramo: 5/5 útiles exactos (WL-191..WL-195), 2 SKIP definitivos sin subtítulos (videos eliminados `lmoryhSH6zA` y `pIBI6AYFQWY`, marcadores .no-subs), 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas + 2 skips, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L22: 42/50 útiles.

## Tramo 26 (2026-11-15, relevo 19)

| # | Título | Fuente | Dominio previsto | Resumen |
|---|--------|--------|------------------|---------|
| WL-196 | ¿Por qué una coreana preferiría vivir en Argentina que en Seúl? (`jc3zF3hyZaQ`) | La 100 | general/sociedad-argentina (entrevista biográfico-cultural Shini — llegada consular por azar, almacén familiar, ISER; sin datos duros, señalado en triage) | Resumen en `tramo-26/` |
| WL-197 | Cómo un barco burló a 42 navíos y cientos de cañones (`SIj9VZCfUQY`) | Веер Империй | general (historia pirata/docudrama — Bartholomew Roberts, Bahía de Todos os Santos 1719, traición de Kennedy; marco narrativo dramatizado señalado) | Resumen en `tramo-26/` |
| WL-198 | La Física Cuántica: la explicación completa (`SCESF9Ie38Q`) | Ciencia Explicada | general (divulgación científica — cuerpo negro, Einstein, Born, mitos desmontados, interpretaciones abiertas; sin citas primarias señalado; cruces WL-132/WL-189 cluster IA-crítica) | Resumen en `tramo-26/` |
| WL-199 | Nos quieren hacer creer que esto es progreso (`Bi5zxQihVhQ`) | Puchito Cine | general/sociedad-argentina (videoensayo trabajo y cine — seis películas, derechos como conquista, tecnofeudalismo; NO fuente factual, señalado en triage) | Resumen en `tramo-26/` |
| WL-200 | Verbatim: ¿por qué fracasó el gigante de los disquetes? (`WHwIah-LmC8`) | Archivo Tecnológico | general (historia de la tecnología — garantía de 5 años como salvación y trampa, Kodak/Mitsubishi/CMC; cruces WL-117 Autodesk) | Resumen en `tramo-26/` |

Notas del tramo: 5/5 útiles exactos (WL-196..WL-200), 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L22: **47/50 útiles**.

## Tramo 27 — cierre del pedido L22 (WL-201..WL-203)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-201 | Lo que Argentina Oculta en sus Provincias — 25 Datos (`YNq6QK2I2wI`) | MUNDO INSÓLITO | general o general/sociedad-argentina (divulgación geográfica listicle — 25 datos por provincia; sin citas primarias, señalado) | Resumen en `tramo-27/` |
| WL-202 | Argentina: 20 Secretos Geográficos Que Parecen Mentira (`iC7MSnz1n24`) | Planeta al Descubierto | general o general/sociedad-argentina (divulgación geográfica — 20 datos; SOLAPA FUERTE con WL-201, candidato a concepto único; discrepancia Campo del Cielo a armonizar) | Resumen en `tramo-27/` |
| WL-203 | Claude Opus 5.5: La revolución en la creación de videos (`sHfxp_AVRlw`) | Melina Blanco | ia-uso-practico/agentes-de-codigo (demo skills + Claude Code para video; marco comercial de comunidad de pago, señalado; cruces WL-153/WL-165/WL-178) | Resumen en `tramo-27/` |

Notas del tramo: 3/3 útiles exactos (WL-201..WL-203), 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin cuarto ciclo (TRAMO FINAL del pedido L22). Salida 45.239.32.215 (Proton UE, validada hoy), 3 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). **PEDIDO L22 CERRADO: 50/50 útiles.**

## Tramo 35 — relevo 28 (WL-241..WL-248)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-241 | «El software ha muerto»: la verdad detrás del post que explotó en Twitter (`pn-lBojduEs`) | Fazt | ia-critica-y-fronteras o ia-uso-practico/agentes-de-codigo (opinión-ensayo 13 min — post viral, REA ingeniería inversa, clones Rust Arc Craft, clean room, «El fin de la programación»/Bun, inercia organizacional ~10 años, mercado dev→dev «muerto» vs no digitalizado; casos de 2ª mano sin enlaces — señalado; cruces WL-181/WL-165/WL-228/WL-214) | Resumen en `tramo-35/` |
| WL-242 | 5 Cambios en el Desarrollo de Software que Están Pasando AHORA (2026) (`hKV5oAQlp2M`) | Fazt | SKIP-DUPLICATE — ya procesada en `agentes-de-codigo` (no cuenta como útil, sin contacto con YouTube) | Resumen previo en `agentes-de-codigo/` |
| WL-243 | TODOS los lenguajes de programación explicados en 20 minutos (2ª parte) (`3WBlSKYMHcQ`) | Fazt | SKIP-DUPLICATE — ya procesada en `historia-informatica` (no cuenta como útil, sin contacto con YouTube) | Resumen previo en `historia-informatica/` |
| WL-244 | Aprendé a decir que NO de una buena vez... (`rJf4QsL5C_k`) | Franco Pisso | general (desarrollo personal/comunicación 16 min — anécdota Montevideo, comparación social, «5 segundos de valentía», método 2 pasos, contra la espera de voluntad, burnout; NO fuente factual, autopromoción señalada; mismo autor que WL-131 — entidad de autor candidata; cruces WL-219/WL-190/WL-139) | Resumen en `tramo-35/` |
| WL-245 | Así desarrollo con varios agentes a la par (Herd + Claude Code) (`Hr693AAnCV0`) | GP Vods | SKIP-DUPLICATE — ya procesada (no cuenta como útil, sin contacto con YouTube) | Resumen previo |
| WL-246 | 8 patrones de API que los desarrolladores SENIOR usan TODO el tiempo (`Ed94R7RKGq8`) | Cognix | general (programación/arquitectura 8 min — 8 patrones problema→solución: recursos REST, paginación offset/cursor, filtrado/selección, idempotencia, BFF, gateway, async cola+worker, versionado; sin cifras ni casos reales; cruces WL-160/WL-169/WL-232; Cognix entidad candidata) | Resumen en `tramo-35/` |
| WL-247 | MCP vs RAG vs API vs A2A: el mapa de la IA explicado en 19 minutos (`no3pI3vGS5g`) | Cognix | ia-uso-practico/agentes-de-codigo (divulgación arquitectura 19 min — capas del agente «Atlas»: API base, RAG (evidencia sin autoridad, vector de inyección), MCP (11-2024, no reemplaza APIs), A2A (04-2025, agent cards ≠ confiabilidad), flujo con aprobación humana; fechas verificadas; cruces hardware-agentico-mcp-first/cluster agentes-de-codigo/WL-147/WL-132; Cognix 5ª fuente — entidad confirmada) | Resumen en `tramo-35/` |
| WL-248 | Hice la misma app en Python, Electron y Tauri (`vvCCnOivQhE`) | Código Espinoza | general (programación/benchmark 4 min — punto de venta ×3: disco 12,3/296/1,4 MB (trampa AppImage 80 MB), RAM 28/221/310 MB (contra-consenso, limitaciones Linux sin GPU declaradas), arranque 0,37 s PyInstaller como carpeta; cruces WL-216/WL-217/WL-155/WL-246) | Resumen en `tramo-35/` |

Notas del tramo: **5/5 fuentes útiles EXACTAS con contador explícito** (WL-241, 244, 246, 247, 248; sin sexto ciclo), ciclo completo por fuente (raw espejado a `raw/wl/tramo-35/` → resumen → fila index → línea log → commits con git add por archivo). **3 SKIP-DUPLICATE pre-flight** (WL-242/243/245 — ya procesadas; sin contacto con YouTube, no cuentan como útiles). 0 meta-fail, 0 skips de YouTube, sin 429. Salida **45.239.32.215** (Proton UE, validada hoy) — 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Contador del pedido L23: **41/50 útiles** (restan 9). Temas de tramo: Cognix ×2 (WL-246/247 — 5ª fuente del canal: entidad confirmada), Fazt ×1 más (WL-241). Consolidación diferida (L12). Cabeza del backlog tras el tramo: WL-249 (`vvCCnOivQhE` procesada; siguiente pendiente en el cache tras WL-248).

## Tramo 34 — relevo 27 (WL-235..WL-240)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-235 | 🍈 ¡Me ROBARON la cuenta para comprar MELONES! (`eeiarbg6fg0`) | hdeleon.net | general (seguridad digital consumidor — micro-video 1:48: credenciales filtradas + sin 2FA + pagos PayPal autorizados; consejo: revocar pagos automáticos tras comprar; testimonio sin cifras — señalado; cruces WL-150/WL-130/WL-183) | Resumen en `tramo-34/` |
| WL-236 | ¿Argentina perdió US$1.000 M con el oro? (`9tpxlK7dKiI`) | Sé diferente | general/sociedad-argentina (divulgación económica 1:35 — pérdidas AGN eran derivados de cobertura ante suba del oro ~60 %; cobertura ≠ especulación; ganancia neta USD 2.500 M SIN fuente citada — verificar; cruces WL-163/WL-182) | Resumen en `tramo-34/` |
| WL-237 | El código del Apolo 11 es open source (`FK7EyEWMQUs`) | Neurika | SKIP-DUPLICATE — ya procesada en `historia-informatica` antes de entrar a la numeración WL (no cuenta como útil, sin contacto con YouTube) | Resumen previo en `historia-informatica/` |
| WL-238 | Olvida las Tierras Raras: Éste es el procesador del futuro, y China lo está acaparando (`dwhxNA0KyCc`) | NovaGea | general (divulgación semiconductores 31 min — carburo de silicio: muro térmico del silicio, interponedores IA, física (fonones ~500 W/m·K, banda 3,26 eV), PVT 2.400 °C, chips NASA 500 °C, comportamiento neuronal a milikelvin (Nature Communications), geopolítica China ~50 % obleas y guerra de precios; sin fuentes enlazadas — señalado; cruces WL-220/WL-122/WL-144) | Resumen en `tramo-34/` |
| WL-239 | El secreto detrás de ChatGPT: ¿qué es un motor de inferencia? (`HwNaAPvs31I`) | CodeSimple | ia-uso-practico/ia-local o general (divulgación infraestructura de inferencia 12 min — 4 motores: llama.cpp (cuantización+mmap), vLLM (PagedAttention 60-80 % memoria desperdiciada + continuous batching), SGLang (prefix caching 6,4× condicional), TensorRT-LLM (integración vertical); papers sin enlaces — señalado; cruces [[llama-cpp]]/[[hardware-para-ia-local]]/WL-228/WL-214) | Resumen en `tramo-34/` |
| WL-240 | Esta nueva CACHÉ hace que la IA local sea 2 VECES más rápida (`Ac_imYXldYo`) | Cognix | ia-uso-practico/ia-local (hot expert cache MoE de llama.cpp — VRAM como caché LRU por capa, localidad temporal 67-81 % hits, benchmarks 1,62×-2,2× (67,8 tok/s RTX 5090), fork multi-GPU 2,5×; límites bien señalados; tesis jerarquía de memoria SSD→RAM→VRAM; sin enlaces a PRs — verificar; cruces [[llama-cpp]]/[[hardware-para-ia-local]]/[[cognix]]/WL-154/WL-239) | Resumen en `tramo-34/` |

Notas del tramo: 5/5 útiles EXACTOS con contador explícito (sin sexto ciclo), ciclo completo por fuente. 1 SKIP-DUPLICATE (WL-237, ya procesada en historia-informatica — no cuenta como útil). 0 meta-fail, sin 429. Salida 45.239.32.215 (Proton UE, validada hoy), 4 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **36/50 útiles** (restan 14). Tema de tramo: IA local/inferencia ×2 (WL-239/240) — cruces fuertes con entidades llama-cpp y hardware-para-ia-local en consolidación.

## Tramo 33 — relevo 26 (WL-230..WL-234)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-230 | Así creo skills de IA que realmente uso todos los días (7 tips) (`oZTXrgHRi-k`) | Fazt | ia-uso-practico/agentes-de-codigo (guía práctica de skills propios: simples y legibles, modulares + orquestador, automatizar por demostración, herramientas (FFmpeg/MCP), plantillas en assets/, restricciones por skill, versionado en dotfiles; patrocinio Sinut excluido; cruces [[agentes-de-codigo]]/WL-153/178/180/185/203) | Resumen en `tramo-33/` |
| WL-231 | GPT-6 Astra convierte fotos en un mundo 3D que puedes recorrer (`9a5eJ3nkB54`) | Fazt | general o futuro ia-media-generativa (demo de producto — generación 3D sobre Abacus AI: casa Zillow navegable, videojuegos en un prompt, PC desmontable, anatomía por capas; formato promocional del sponsor, claims sin fuente primaria — señalado; cruces WL-230) | Resumen en `tramo-33/` |
| WL-232 | OpManager: El Panel que Todo DevOps Debería Usar (`OZ3MNPZV6xc`) | Fazt | general (infraestructura/DevOps — monitorización centralizada con OpManager (ManageEngine): SNMP/Docker, alta de dispositivos, alarmas/notificaciones, demo con contenedores simulados vía Claude en permisos amplios; producto sin contraste de alternativas, prácticas demo no-producción — señalado; cruces WL-160/WL-102) | Resumen en `tramo-33/` |
| WL-233 | ¡Por fin! Conecta Odoo a la IA con Claude MCP (`Wznzbz4rbtA`) | Fazt | ia-uso-practico/agentes-de-codigo o general (integración MCP agente↔ERP: módulo «Servidor MCP e IA», API key, activación granular de herramientas 5→13, casos CRM/calendario con manejo de errores, skill para flujos aprendidos; claims del fabricante sin contraste — señalado; cruces [[agentes-de-codigo]]/WL-230/WL-232/WL-234) | Resumen en `tramo-33/` |
| WL-234 | 7 pasos para programar mejor con coding agents (`dhkiC4Iq1eM`) | return(GiS); | ia-uso-practico/agentes-de-codigo (metodología: preparar entorno, AGENTS.md conciso con definition of done, planificar con modelo capaz, implementar con otro/declegando, revisión local pre-push, PR revisable con 4 bloques, nueva tarea = nueva sesión; bonus instrucciones a nivel usuario; cruces [[agentes-de-codigo]]/[[odd-metodologia]]/WL-153/178/180/185/203/228) | Resumen en `tramo-33/` |

Notas del tramo: 5/5 útiles exactos, 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo (contador explícito). Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **31/50 útiles**. Tema de tramo: canal Fazt ×4 (WL-230/231/232/233) — candidato a entidad de canal en consolidación.

## Tramo 32 — relevo 25 (WL-225..WL-229)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-225 | Cómo nos ROBARON el tiempo libre (`Pb0RzrlfkMI`) | Puchito Cine | general/sociedad-argentina o general (videoensayo trabajo/tiempo con cine como hilo: La fiaca, Tiempos Modernos, Office Space, Severance; historia del descanso (otium, jornada 8 h 1929, OIT 1936, decreto 1740/1945, DDHH 1948); paradoja de la productividad; sociedad del cansancio (Byung-Chul Han); simulación ~8 años libres; datos sin fuente primaria — señalado; cruces WL-199 (mismo canal)/WL-163/WL-195/WL-141/WL-158) | Resumen en `tramo-32/` |
| WL-226 | Este El Niño Acaba de Igualar al de 1877 (`I0U59agWSxo`) | Astrovía | general (clima/historia — Niño 2026 vs Gran Niño 1877: tres sequías (India ~8 M, China 9,5-13 M, sertón ~0,5 M; >50 M total), clave Singh et al. 2018 (La Niña previa + dipolo Índico récord + Atlántico Norte cálido), hambruna política (Lytton, exportaciones, raciones Temple); legado Blanford/Walker/Bjerknes (ENSO) y códigos de hambruna 1880; 2026: monzón al 87 % pero amplificadores tranquilos; datos 2026 sin fuente enlazada — verificar; cruces WL-173/WL-202/WL-201/WL-133) | Resumen en `tramo-32/` |
| WL-227 | Mejores Herramientas de IA para profesores (`K2Yie8Z5fLc`) | Roxana Falasco | general (educación/herramientas — listicle comercial 6 min: Prezi, Twinkl, Hostinger (patrocinio), Perplexity, DALL·E; precios 2024 desactualizados; candidata a BAJA por triage (ítem 17); cruces WL-194/WL-203) | Resumen en `tramo-32/` |
| WL-228 | La verdad sobre el autocompact (y tips) (`KeMRKkhLvEw`) | Gentleman Programming | ia-uso-practico/agentes-de-codigo (ventana de contexto = costo por turno; context rot desde 300-400 K (Anthropic); default Codex 272 K antes del escalón de precio; `/autocompact-window` por modelo, 400 K como punto de partida; anatomía del autocompact (buffer, resumen, reinyección); ventanas chicas cuestan más; compactar a mano con foco; citas de 2ª mano señaladas; cruces [[agentes-de-codigo]]/[[gentleman-programming]]/WL-94/WL-165/WL-178/WL-180/WL-185/WL-203/WL-214) | Resumen en `tramo-32/` |
| WL-229 | ¿Vale la pena pagar cursos en la era de la IA? (`xWSSfrnk_eI`) | Gentleman Programming Vods | general/sociedad-argentina o general (opinión formación tech — la IA no reemplaza mentores ni temarios curados; módulo de calidad: TDD/arquitectura/testing/Sentry; conflicto de interés explícito (profesor del curso defendido); NO fuente factual; autopromoción excluida; cruces [[gentleman-programming]]/WL-227/WL-194/WL-185/WL-203) | Resumen en `tramo-32/` |

Notas del tramo: 5/5 útiles exactos, 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **26/50 útiles**. Tema de tramo: Gentleman Programming ×2 (WL-228/229, canal y vods) — vecinos en consolidación.

## Tramo 31 — relevo 24 (WL-220..WL-224)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-220 | Japón Acaba de Construir lo Que ASML Más Temía (`VOFdOZOb1bc`) | Throne Dust | general (historia tecnología/semiconductores — 4 frentes japoneses contra ASML: nanoimpresión Canon FPA-1200NZ2C (~1/10 precio y energía, 14 nm ≈ nodo 5 nm, máscaras DNP 1,4 nm), EUV simplificado Univ. de Okinawa, guerra de precios DUV de Nikon, Rapidus 2 nm vía IBM; «no existe alternativa» ya falsa; cifras de fabricantes 2ª mano sin verificación; cruces WL-138/WL-144/WL-122/WL-116) | Resumen en `tramo-31/` |
| WL-221 | Así acepté el fin de la programación (`VW6g4lydpNc`) | Victor Robles WEB | general (desarrollo personal/carrera tecnológica — ansiedad de desarrolladores ante IA (anticipación, impostor) vía testimonio del atropello de 2020 y sus secuelas permanentes; «un problema sin solución es una realidad que hay que aceptar»; estudiar lo que sirve hoy (agentes, MCP); título clickbait contradicho por el contenido, NO fuente factual; marco comercial de cursos excluido; cruces WL-131/WL-190/WL-219/WL-215, WL-153/WL-185/WL-203) | Resumen en `tramo-31/` |
| WL-222 | Google cierra Android en 2027 (`NLxyj4uwksA`) | PepoTech | general (tecnología/privacidad — verificación de desarrolladores Android: 30-9-2026 BR/ID/SG/TH solo apps de desarrolladores identificados (DNI + 25 USD), plan global 2027 con APKs externas; «flujo avanzado» 24 h + huella; ironía histórica del Android abierto (Rubin 2010, juicio Oracle, multa CE 4.342 M€, Android en privado 2025); jueces abren la tienda pero no la puerta; riesgo de censura (Ice Block/Red Dot, EFF); salida residual: ROMs sin certificación; hechos verificables + opinión «control de masas» señalada; cruces WL-150/WL-174/WL-113; entidad canal candidata [[pepotech]]) | Resumen en `tramo-31/` |
| WL-223 | RX 580: Why AMD Will NEVER Repeat That Mistake (`tdLRNfeTow8`) | FRANK SIERRA | general (historia tecnología/hardware — docudrama de la Radeon RX 580/Polaris: AMD casi quebrada, Koduri y el RTG, nodo 14 nm GlobalFoundries vs 16 nm TSMC, apuesta 256 bits + 8 GB por 229 USD/185 W, reina del minado de Ethereum 2017 (BIOS modificable), granjas, reventa, renuncia de Koduri, segunda vida a 60 USD; psicología novelada y ERRORES DE FECHA (sitúa la RX 580 en 2016) — no fuente factual precisa; cruces WL-114/WL-175/WL-138/WL-144/WL-116) | Resumen en `tramo-31/` |
| WL-224 | Las Mansiones de $5M de Nordelta se Deslizan por la Costa (`cXy6YclEEb8`) | Los Autos | general (infraestructura/ciudades) o general/sociedad-argentina (Nordelta sobre humedales rellenados: asentamiento diferencial, napas crecientes, taludes que ceden; el agua «sube por la cañería»; boom 2020-25 desestabiliza vecinos; tras La Plata 2013 las aseguradoras retraen cobertura (4k→14k USD); >500 urbanizaciones sobre el delta (Fundación Humedales); deterioro físico de oferta, no corrección de demanda; cifras de «brokers» no verificables, título clickbait; cruces WL-191/WL-118/WL-142/WL-151/WL-163) | Resumen en `tramo-31/` |

Notas del tramo: **5/5 útiles EXACTOS, contador explícito verificado en frontera, sin sexto ciclo** (corrección disciplinada del sobregiro de T30). 0 skips, 0 meta-fail, sin 429. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **21/50 útiles**.

## Tramo 30 — relevo 23 (WL-214..WL-219)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-214 | Cómo usar REA para CLONAR Apps con IA (`1yUWkR32QXQ`) | Martín Toledo \| IA & Automatización | ia-uso-practico/agentes-de-codigo (REA «Reverse Engineer Anything» ~230k estrellas en 2 semanas no verificado — MCP hacia Ghidra/IDA/Hopper; 5 piezas del flujo; observado/deducido/desconocido; demo clon visual TypeLess; tesis «¿muerte del SaaS?» iceberg; cruces [[agentes-de-codigo]], WL-153/WL-185/WL-203/WL-211, WL-165) | Resumen en `tramo-30/` |
| WL-215 | Los peligros de tomar UN POCO de ALCOHOL (`u6921bn9vf0`) | Roxana Kreimer | general (salud/filosofía de la ciencia — OMS «sin nivel seguro» como problema epistemológico; metaanálisis 2023/Imperial 2021/IARC 2023 citados de 2ª mano; dado 100→95 caras, riesgo poblacional vs decisión individual; precaución vs utilidad esperada; recta sin umbral desmonta el justo medio aristotélico; cruces cluster salud WL-213/WL-164, WL-190; entidad canal candidata) | Resumen en `tramo-30/` |
| WL-216 | Benchmark de lenguajes de programación: ¿cuál gana? (`y3Fjr2LGW_w`) | CodeSimple | general (programación/rendimiento — reto comunitario VPS 12 USD: Rust y C++ empatados a 64.000 usuarios concurrentes, p99 224 vs 910 ms; PHP 750→40.000 con Swoole, Fortran 38.000; 5 trucos repetidos; «el diseño pesa más que el lenguaje»; asterisco C++ sin fsync; cifras no verificadas; cruces [[lenguaje-rust]], WL-108/WL-160) | Resumen en `tramo-30/` |
| WL-217 | El Lenguaje Latinoamericano Que Supera A Python (`VW9WXSZ7HfE`) | Tirando Código | general (programación — Águila, lenguaje en español de Emerson Espinosa: sintaxis Python+JS, Rust+VM+JIT; origen en la barrera del idioma; benchmark casero Fibonacci n=40 ~1 s vs Python 13-28 s vs Rust 0,3-0,5 s; título clickbait señalado; cruces WL-216/WL-155, [[lenguaje-rust]], WL-14) | Resumen en `tramo-30/` |
| WL-218 | Todo lo que la IA descubrió sola y nadie sabe explicar (`Be-nO6yOOLQ`) | Cómo Funciona El Mundo | ia-critica-y-fronteras o general (divulgación compilatoria — 6 casos de resultados sin explicación: AlphaGo jugada 37, Nazca +303, halicin MIT, AlphaFold sin camino de plegado, demo Navier-Stokes OpenAI «no escrita para humanos», ART de Anthropic hallado 1 de 11 veces; cifras de 2ª mano sin verificación; cruces WL-132/WL-189/WL-121; concepto candidato «caja negra de la IA») | Resumen en `tramo-30/` |
| WL-219 | Experto En Comunicación… \| Fernando Miralles (`b5VTu29RTIk`) | Adrián Sáenz | general (comunicación/desarrollo personal — potestas/auctoritas, escuchar más, protocolo padrino, nervios tipo 1/2, corporalidad, «discusión se gana perdiéndola», persuadir=manipular, manual del comunicador autoritario, religión como sistema comunicativo; técnicas sin base empírica citada; sección política española = opinión NO factual, señalada; cruces WL-131/WL-190/WL-119) | Resumen en `tramo-30/` |

Notas del tramo: 5/5 útiles exactos, 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **15/50 útiles**. Tema de tramo: programación/lenguajes ×2 (WL-216/217) — vecinos en consolidación.

## Tramo 29 — relevo 22 (WL-209..WL-213)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-209 | NVIDIA elimina la RTX 5090… ¿Qué GPU deberías comprar AHORA? (`SpPYUVjVaTg`) | Cognix | ia-uso-practico/ia-local o general (análisis de compra — fin de la 5090 no confirmado, 7.443 USD vs lista 1.999, benchmarks citados Qwen 3 27B, memoria según contexto, alternativas de 32 GB, amortización 31 años; cruces WL-192/WL-189/WL-122, [[hardware-para-ia-local]], entidad Cognix) | Resumen en `tramo-29/` |
| WL-210 | Historia de la IA: Cronología Completa 1943–2026 (`qYkcLYHxh2g`) | El Próximo Framework en Ingeniería | ia-critica-y-fronteras o general (documental 83 años — inviernos, retropropagación, AlexNet, transformers, carrera 2023-26 DeepSeek/Claude/GPT/Grok; episodios 2025-26 no verificables, señalado; cruces [[deepseek-harness]], Anthropic WL-12/21/23, WL-117/WL-162/WL-200, WL-209) | Resumen en `tramo-29/` |
| WL-211 | Spec-Driven Development vs vibe coding (`k83I32V0IFg`) | Torti Code | ia-uso-practico/agentes-de-codigo (SDD: especificación versionada, requisitos verificables, escenarios de aceptación, TDD, deriva de especificación, cuándo no conviene; cruces [[agentes-de-codigo]], [[odd-metodologia]], WL-153/WL-185/WL-203; candidato a concepto SDD) | Resumen en `tramo-29/` |
| WL-212 | ¿Cómo Descubrieron Los Humanos el Aluminio? (`Mn0BNi9mqDI`) | Fosil Metal | general (historia de la tecnología/materiales — aluminio: invisible por afinidad con oxígeno, alumbre, lujo Napoleón III, Hall-Héroult 1886, Bayer 1888; moraleja valor=dificultad de extracción, paralelo WL-209; reciclaje 5 %) | Resumen en `tramo-29/` |
| WL-213 | Dormir bien te salva la vida (`GEqNOpLOn6I`) | Santiago Bilinkis | general (salud/divulgación — autoevaluación del sueño falla, efectos medibles, terceros en riesgo, limpieza glinfática y REM, mitos, sueño bifásico, crisis adolescente; cruces cluster salud WL-164/WL-172/WL-139/WL-186) | Resumen en `tramo-29/` |

Notas del tramo: 5/5 útiles exactos, 0 skips, 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), 5 descargas timedtext consecutivas, presupuesto suave 200 nunca alcanzado (L13). Consolidación diferida (L12). Contador del pedido L23: **10/50 útiles**.

## Tramo 28 — relevo 21 (WL-204..WL-208)

| # | Título (id) | Canal | Dominio previsto (pendiente consolidación, S4) | Dónde |
|---|--------|--------|------------------|---------|
| WL-204 | La solución de $0,50 para que duren 4 veces más — lámparas LED automotrices (`Hibdwr8SOLI`) | MICROTECNICA | general (electrónica/automotriz DIY — testeo instrumental LED: 12,5 W reales vs 36 W, reforma diodos 1N5408; cruces WL-175/WL-114, obsolescencia) | Resumen en `tramo-28/` |
| WL-205 | La IA nos hace más rápidos. Pero no más RICOS (`W2kN5MvOi0g`) | Arnau Ramió \| Learning Heroes | ia-critica-y-fronteras o general (economía IA — Banco de Corea/PwC/Fed Atlanta, parábola electricidad Solow/Paul David, caso Uber; cruces WL-132/WL-189, WL-116/WL-117/WL-200; cierre promocional excluido) | Resumen en `tramo-28/` |
| WL-206 | Ya No Necesitas Una GPU Enorme (Qwen 3.8 Flash Next) (`dOodDUDYd0U`) | Jorge Marfil | ia-uso-practico/ia-local (arquitectura Qwen 3.8: 125 B activos + 51 B tabla embeddings fuera de VRAM, 4 innovaciones, ecosistema Strata/llama.cpp; cruces [[qwen]], [[hardware-para-ia-local]], WL-147/WL-132/WL-154) | Resumen en `tramo-28/` |
| WL-207 | ¿Cómo Recablear Bien un Depto? Paso a Paso (`nVPV-5aKfTY`) | Electricista y Gasista Matriculado GB | general (hogar/oficios — recableado completo, tablero, límite 10 A, Cablecanal, verificación tester; cruces WL-169/WL-186, WL-175/WL-204) | Resumen en `tramo-28/` |
| WL-208 | ¿Y SI TE MINTIERON? — vivienda y créditos hipotecarios Argentina (`sb4cZOGxb7w`) | Santiago Magnin | general/sociedad-argentina (lectura informe González Rouco/OFAVA — inquilinos con más ingreso, Nación 90%→52%, licitaciones ANSES; marco comercial inmobiliario señalado; cruces WL-163/WL-195) | Resumen en `tramo-28/` |

Notas del tramo: 5/5 útiles exactos + 1 SKIP definitivo sin subtítulos (WL-204a `uGQ5aJt7RZU`, video eliminado en YouTube — `.no-subs`, no cuenta como útil), 0 meta-fail, sin 429 — cierre en frontera sin sexto ciclo. Salida 45.239.32.215 (Proton UE, validada hoy), presupuesto suave 200 nunca alcanzado (L13). Inicio del pedido L23 (50 útiles, tramos 28-37): contador 5/50.
