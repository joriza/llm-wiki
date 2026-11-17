# WL-576 — Exploto el mother!

- **Fuente original**: `raw/electronica-practica/2026-08-06-exploto-el-mother.md` ([Vídeo](https://www.youtube.com/watch?v=O0KGMH28JF0))
- **Canal**: David Lightman
- **Publicado**: 2026-08-06 · **Duración**: 28:19
- **Dominio definitivo**: electronica-practica (consolidación T97 relevo 2, 2026-11-17) (diagnóstico de PC)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Diagnóstico en vivo de una PC de oficina intermitente que termina con **explosión de un MOSFET del motherboard** frente a cámara (el detalle se pierde por elegir cortar la alimentación para salvar el SSD NVMe del cliente — la data antes que el video):

- **El caso**: máquina armada por él que anda en el taller y no en casa del cliente (clave diagnóstica: tensión de red distinta); sospecha de baja tensión → variac a 200 V (arranca normal una fuente con eso) vs 230-240 V; +5 VSB medido con adaptador USB; el «twitching» del cooler (un giro corto y se para) = **la fuente protegiéndose** «casi siempre es la fuente… pero esta vez no».
- **Contra-prueba decisiva**: con otra fuente buena (Smart 700, «500 W reales») la fuente también se protege → el corto está en el mother; lección de seguridad: las fuentes SFX baratas de prueba **no tienen protecciones** — enchufarlas a un mother en corto «bye bye fuente»; y esperar la descarga del capacitor primario antes de reintentar (lo muestra con un LED de prueba — tarda «un montón»).
- **La detonación**: al encender para rescatar data del cliente, humo y fuego en el regulador VRM; al abrir: **MOSFET de una fase desintegrado** — su lectura: «el MOSFET fue el fusible, la consecuencia, no el culpable» (algo en corto aguas abajo: probable capacitor o pista volada); argumentos de que el resto está sano: solo voló una fase (el micro habría exigido varias), el SSD NVMe va por otra línea (12 V ATX del conector grande) — razonamiento de alcance de daño.
- **Reemplazo**: B450M equivalente (conseguir el exacto «no es fácil») para no reinstalar; checksum de puesta a punto: desactivar Precision Boost Overdrive, 16 GB single stick (elección de costo), limpia pasta, detecta 5600G; revisión preventiva de la fuente genérica original por dentro (capacitores hinchados/doblados — ninguno malo: «no era culpa de la fuente») y medición con carga (5,1/11,8 V — «un poquito baja, dentro de specs»).
- **Tips de oficio concentrados**: kit mínimo de campo (fuente + memoria + SSD de repuesto y medidor USB); la falla común del +5 VSB por un capacitor 1600 µF/16 V junto al integrado de standby (equipo que «a veces arranca»); la **rotación del cooler como monitor universal** («te dice todo: si va a arrancar Windows, si hace memory training»); parpadeo del teclado PS2 como indicador de energía; revisar la pila (2,9 V = un año); panel frontal con cables sueltos y secuencia power/reset/leds; no apretar tornillos «con ira»; la distinción ética-comercial de fuentes genéricas en PCs de oficina («decidir cuál es el riesgo más grande», Thermaltake 500 cuando el número da).

## Señales de triage

- **1.ª mano con evidencia en cámara**: variac, medición +5 VSB, detonación (humo filmado; el fogonazo exacto perdido por decisión de salvar la data — narrado con la elección explicada), autopsia con microscopio del MOSFET desintegrado; las conclusiones (corto aguas abajo, micro/SSD sanos) son hipótesis razonadas de oficio, no comprobadas por análisis del board — señalado.
- Recomendaciones de hardware (fuentes genéricas «peligro», Green «no me gustan») = opinión de taller — señaladas como tales.
- ASR fonético fuerte («butístico», «mortadela», «calcé mal» por calibrar, «bootear»/«buestear», «torquear», «twisty») — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- **electronica-practica** (David Lightman 4.ª fuente — entidad consolidada desde WL-570): hilo de diagnóstico por síntomas («el cooler te dice todo» ↔ «los ruidos de los discos» WL-569, «el twitching» = protección); «el MOSFET fue el fusible» ↔ WL-543 (los bordes/fallas como consecuencia) y WL-555 (cocinada lenta).
- «Data antes que video» ↔ [[archivo-del-futuro]] y WL-570 (la información es lo que se cuida) — mismo orden de prioridades del taller.
- La decisión de fuente genérica por costo ↔ WL-550 (presupuestos de oficina) y el hilo de trade-offs de proveedor.
- «Casi siempre es la fuente» como heurística con contraejemplo ↔ metodología de hipótesis falsable (prueba con fuente buena) ↔ [[coordenada-critica]] si aplica.

## Veredicto de triage

Útil: diagnóstico real con contra-prueba, detonación documentada y razonamiento de alcance de daño correcto; conclusiones de causa no comprobadas a nivel board — señaladas. Consolidación diferida (L12): electronica-practica, serie Lightman (555/569/570/576), «rotación del cooler como indicador» como tip consolidable.
