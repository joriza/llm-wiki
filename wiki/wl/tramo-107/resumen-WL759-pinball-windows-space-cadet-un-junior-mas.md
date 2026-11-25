# WL-759 — Pinball de Windows: Microsoft lo Borró Porque Nadie Entendía Cómo Funcionaba (Un Junior Más)

- **Fuente original**: `raw/wl/tramo-107/2026-11-23-pinball-de-windows-microsoft-lo-borro-porque-nadie-entendia-como-funcionaba.md` ([YouTube](https://www.youtube.com/watch?v=PldDHaMpwNQ))
- **Canal**: Un Junior Más (1.ª fuente en la wiki)
- **Publicado**: 2026-11-23 · **Duración**: 32:35 · **Idioma**: es (ASR, garbiñeos menores: «Cinematronics/Cineware»=Cinematronix?, «Kevin Gleaner/Liner»=Gliner, «el mirante»=almirante, «mamelucos» no aplica aquí; «Reiso»=rediseñó)
- **Tramo**: 107 (relevo 2) · **Ingesta**: 2026-11-24

## Qué trata

Historia documentada del **3D Pinball Space Cadet** — el juego que Microsoft eliminó porque "ni siquiera pudieron encontrar dónde estaba" el código clave — y de la generación completa de juegos de Windows (Buscaminas, Solitario, Corazones), como caso de estudio de **conocimiento institucional perdido**: tener el código no es entender el código.

## El Pinball: de la licencia al limbo

- Microsoft **no lo escribió**: pagó la licencia a **Cinematronix** (estudio de Texas, luego absorbido por Maxis en 1996 y cerrado por EA en 1997 — el equipo llevaba 4 años disuelto cuando XP lanzó). "Una empresa que usa un programa ajeno recibe el código, pero no a las personas que saben por qué cada instrucción está donde está."
- Origen accidental (1995): Cinemaware/Cinematronix fue a ofrecer un shooter estilo Doom a Microsoft; **David Cole**, jefe de Windows 95, contestó: "¿no podían hacer simplemente un juego de pinball?". El resultado: **Full Tilt Pinball** (con Maxis, noviembre 1995, 3 mesas), y de allí el recorte que interesó a Microsoft: **Space Cadet** sola, incluida en **Microsoft Plus! para Windows 95** (nombre en clave "Frosting", el glaseado) junto a Internet Explorer 1.0.
- Dave Plummer portó el juego a Windows NT 4.0 (C + motor propio para las cuatro arquitecturas: Intel/Alpha/MIPS/PowerPC) y dejó sin querer el **error de carrera sin límite**: años después el motor dibujaba ~5.000 FPS quemando un núcleo entero — "el peor error que entregué en mi carrera". Lo encontró **Raymond Chen** (contador de FPS en asteriscos, saturado >999); con el tope de 100 FPS el consumo bajó al ~1 %, y Chen lo llama su momento de mayor orgullo: los devs podían jugar al pinball durante las compilaciones.

## La retirada: "ni siquiera pudieron encontrar el detector de colisiones"

- Al adaptar Windows a **64 bits** (XP 64-bit/Itanium, sobre máquinas Alpha), Chen encontró que la bola **atravesaba objetos como fantasma**. El código, casi sin comentarios, escrito por una empresa externa desaparecida: "no pudieron descubrir por qué fallaba… ni siquiera pudimos encontrar el detector de colisiones". Decisión ejecutiva: sacar el juego — **el juego más querido de XP no se retiró por estrategia ni juicio: se retiró porque nadie supo arreglarlo**.
- Segunda parte (Chen, 2022): el error grave era específico de Alpha; en x64 el juego **sí funcionaba** (XP Professional x64 de 2005 lo traía) — alguien lo reincorporó tras una corrección en otro lugar del sistema, y a Chen **nadie se lo avisó**: quien lo sacó se enteró ~20 años después.
- La licencia pesó después: cubría inclusiones en Windows pero **no permitía publicarlo aparte ni abrir el código** — y la contraparte ya no existía. Limbo: estaba en los discos de XP, pero Microsoft nunca más lo ofreció.
- Epílogo de aficionados (2021): un fan **reconstruyó el juego completo por descompilación** (con Ghidra, la herramienta de la NSA liberada en 2019) — el detector de colisiones que Microsoft no encontró fue reconstruido 20 años después por gente ajena a la empresa; hoy corre en Linux/Mac/Android.

## Los demás juegos del menú: pedagogía del mouse y política

- **Microsoft Entertainment Pack** (1990): casi no sale — un directivo dijo que "amenazaba toda la forma de ser de Microsoft"; aprobado con soporte solo en horas muertas. A cada programador le pagaron con 10 acciones de Microsoft y una consola portátil.
- **Buscaminas** (Kurt Johnson/Robert Donner): Bill Gates se obsesionó con los récords hasta que **le sacaron el juego de la computadora**; siguió jugando en la oficina del presidente (marca de ~5 s). Marketing pedía sacar el nivel experto ("imposible") — el product manager se lo resolvió en 10 minutos. Truco secreto documentado: "xyzzy" + Shift+Enter mostraba **un píxel** que delataba la mina bajo el puntero (guiño a Colossal Cave Adventure).
- La tesis pedagógica (nunca confirmada oficialmente por Microsoft): Solitario enseñaba **arrastrar y soltar**, Buscaminas **apuntar + botón derecho**; el artículo de soporte de Win 3.1 confirma que era injugable sin mouse.
- **Corazones** (Windows para Trabajo en Grupo 3.1): demo de **NetDDE** — el juego de red para mostrar que las PCs de una oficina se mandaban datos; en XP perdió la red.
- **Las minas ofenden** (1999): la campaña italiana "para prohibir WinMine" tras el tratado de Ottawa — en Windows italiano el juego pasó a ser **Prato Fiorito** (minas→flores, mismo juego); en Vista (rediseñado por Oberon Media) el jardín venía de fábrica en regiones "sensibles". Chen (2007): el dibujo es una **mina marina** — "consuelo escaso"; y el chiste: "la idea del juego de flores es que pisar flores está mal".
- **El fin de la era** (Windows 8, 2012): por primera vez desde 1990 Windows sale sin Solitario/Buscaminas/Corazones; reaparecen como apps de tienda con **anuncios de 30 s y suscripción** ($1,49/mes) — "el juego que Microsoft regaló para perder el miedo al mouse, ahora se cobraba por suscripción" (par directo con el modelo HP del WL-755 del mismo tramo).

## Cruces

- Concepto: [[historia-software-corporativa]] (conocimiento institucional perdido, código sin comentarios, licencias que quedan sin contraparte, decisiones "ejecutivas" ante código incomprensible) y [[historia-de-la-tecnologia]] (pedagogía encubierta de la UI, juegos como demostraciones técnicas: NetDDE, gráficos/sound de NT).
- Par interno del tramo: WL-755 (monetización posterior de lo que antes era gratis — anuncios/suscripción).
- Nota de marco: divulgación histórica bien hilada con fuentes nombradas (blogs de Chen/Plummer, libro de Kyle Orland) pero de 2.ª mano — verificar citas puntuales antes de citar.
