# WL-765 — Cómo se TEJÍA el Software que Llevó al Hombre a la Luna (Herschel González.)

- **Fuente original**: `raw/wl/tramo-107/2026-11-24-como-se-tejia-el-software-que-llevo-al-hombre-a-la-luna.md` ([YouTube](https://www.youtube.com/watch?v=zP5FJckvMng))
- **Canal**: Herschel González. (2.ª fuente en la wiki — WL-699, «los soviéticos clonaban microchips», misma línea de historia de la tecnología espacial)
- **Publicado**: 2026-11-23 · **Duración**: 11:22 · **Idioma**: es (ASR, sin garbiñeos relevantes)
- **Tramo**: 107 (relevo 3 FINAL) · **Ingesta**: 2026-11-24

## Qué trata

Explicación documental de la **core rope memory** — la memoria «tejida» del Apollo Guidance Computer (AGC) — a partir de la grabación de Raytheon de 1965: el software de Apolo no se «cargaba», se **fabricaba físicamente**, cable a cable, por trabajadoras con experiencia textil.

## El problema y la solución

- Años 60: la NASA necesita computación a bordo (posición, correcciones de trayectoria, maniobras) en una cápsula — las computadoras de la época ocupaban habitaciones. El **MIT Instrumentation Lab** diseña el **AGC**: pionero con **circuitos integrados**, compacto y de bajo consumo; interfaz con teclado numérico + display de luces (combinaciones de números, no comandos: verbos y sustantivos).
- La memoria de núcleos magnéticos estándar almacena **1 bit por anillo** (estado magnético) — demasiado espacio para miles de bits. La solución, **core rope memory**: los anillos ya no guardan bits por su estado; **el programa queda determinado por el recorrido de los cables** — por el centro del anillo = 1, rodeándolo = 0. Varios cables por anillo → mucha más densidad. Memoria permanente, compacta, **no volátil** (sin alimentación, las instrucciones seguían ahí).
- Consecuencia radical: el programa tejido **no se modifica** — un error grave podía exigir fabricar otra memoria, «varias semanas de trabajo». El software debía estar listo **con meses de anticipación**, con versiones definitivas probadas y enviadas a fabricación a tiempo, aunque los requisitos siguieran cambiando durante el desarrollo.

## La fábrica: máquina dirige, persona teje

- Fabricación en **Raytheon** (Waltham, Massachusetts) con **mujeres especialistas en conexiones diminutas, algunas contratadas por su experiencia en la industria textil**. No decidían el programa — eso venía verificado desde el MIT y llegaba parcialmente en **cintas perforadas**.
- El proceso: una máquina indicaba por dónde pasar el siguiente cable moviendo el conjunto hasta la posición; la trabajadora pasaba la aguja (varios metros de cable fino), conectaba y activaba el avance. «La máquina dirigía el patrón y la persona realizaba el trabajo manual» — ni automatización completa ni memorización humana. Guías de nailon separaban los cables durante el tejido, retiradas después para ensamblar.
- Escala y verificación: un módulo de 1965 con **512 núcleos y más de 800 m de cable**. Tras el último cable venían **pruebas eléctricas** que comparaban la memoria construida contra el contenido original — datos generados específicamente para verificar, no solo para guiar. El AGC de las misiones lunares: **36.864 palabras de memoria fija** (6 módulos de cuerda) + **2.048 modificables**.

## El descenso del Eagle: para qué tanto rigor

- 20 de julio de 1969: durante el descenso del módulo lunar saltaron las alarmas **1201/1202** — sobrecarga de trabajo, no fallo de la memoria tejida. El software estaba diseñado con **prioridades**: la computadora soltó tareas de menor importancia y siguió operando. «El episodio permite entender por qué los ingenieros dedicaban tanto esfuerzo a comprobar las instrucciones antes de enviarlas a fabricación» — el software debía funcionar incluso cuando las condiciones no eran las previstas.
- Cierre: con el avance de los semiconductores las memorias de cuerda desaparecieron; no eran «un procedimiento atrasado por falta de conocimientos» sino tecnología diseñada para las condiciones del proyecto. Hoy el código fuente de Apolo se puede consultar como cualquier programa — pero entonces, tras escribirlo y comprobarlo, «todavía quedaba una tarea enorme: transformarlo en conexiones físicas… el software también tuvo que pasar por una fábrica».

## Cruces

- Entidad: [[herschel-gonzalez]] (2.ª fuente —WL-699—, misma línea de historia tecnológica espacial/documental).
- Concepto: [[historia-software-corporativa]] y [[historia-de-la-tecnologia]] (software como artefacto físico, versiones definitivas «para fabricar», verificación pre-fabricación), par directo con WL-764 del mismo relevo (contraste perfecto: en Apolo el software se tejía porque no podía cambiarse; en Lazarus/Kylix el código abierto es precisamente lo que permite seguir cambiando) y con WL-759 (el «software invisible» cuya fabricación nadie entendía).
- Nota de marco: divulgación histórica sobria con hechos bien establecidos (core rope, Raytheon, alarmas 1202, cifras del AGC); sin fuentes citadas explícitamente pero sin afirmaciones dudosas.
