# Resumen: FORTRAN marcó a una generación

- **Tipo**: resumen de fuente.
- **Dominio**: `historia-informatica/`.
- **Fuente original**: `raw/historia-informatica/2025-01-07-fortran-marco-a-una-generacion.md` (subtítulos automáticos en inglés, literal) — https://www.youtube.com/watch?v=KWn9gL2PCQc — LinuxChad, 2025-01-07 (10:27).
- **Nota**: fuente del lote 8M (2/8). Consolidación (2026-11-11): enlaces → [[john-backus]], [[historia-lenguajes-programacion]].

## El error que costó 50 millones: Mariner 1

El vídeo abre con la historia del **22 de julio de 1962**: la sonda **Mariner 1** despega hacia Venus, la primera promesa de contacto humano con el planeta vecino. Minutos después del lanzamiento la sonda se desvía de su trayectoria y se comporta de forma imprevisible; en la sala de control solo queda una salida para evitar un desastre mayor: **activar la autodestrucción**. En cinco minutos, 50 millones de dólares de la época se convierten en una explosión entre las nubes. La causa: un error en el código Fortran que gobernaba la nave — bastó cambiar un punto por una coma; como **Fortran ignora los espacios**, eso fue suficiente para hacer un cráter en el presupuesto de la NASA. Fue error humano, no culpa de Fortran: el lenguaje es tan robusto que hoy sigue usándose en tecnología de vanguardia (los superordenadores actuales aún lo necesitan).

## El contexto de los años 50

Computadoras que ocupaban habitaciones enteras y con menos potencia que un smartphone actual. Programar era cosa de matemáticos e ingenieros muy pacientes: todo se hacía en **lenguaje máquina o ensamblador**, escribiendo directamente en el lenguaje del hardware con instrucciones que parecían adivinanzas. Los programas eran tediosos y llenos de errores: el más mínimo fallo podía costar días de trabajo perdido.

## John Backus, el creador

IBM decide actuar y contrata a **John Backus** (el ASR lo garbiñea como «John Bacus»/«Vacu»). Su historia: nacido en una familia adinerada de Filadelfia, era un **mal estudiante** — no solo malas notas, sino problemático, con desinterés absoluto; sus profesores lo daban por perdido. Gracias a la presión y el poder de su familia entra en la Universidad de Virginia a estudiar química, pero lo expulsan en primer año por no asistir a clases. Lo reclutan para la Segunda Guerra Mundial, donde alcanza el grado de cabo. Un **test militar de aptitud** con puntuaciones altas cambia su vida: sus superiores lo envían a estudiar ingeniería y luego un programa pre-médico. Curiosamente, estudiar medicina le salvó la vida: le permitió detectar por accidente un **tumor óseo en el cráneo**. Tras extirparlo y ser dado de baja por razones médicas, abandona la medicina por las matemáticas: se gradúa en matemáticas en **Columbia** y en **1950 entra en IBM**. En tres años ya dirigía el proyecto del lenguaje **Speedcoding**.

## FORTRAN (1954-1957)

En **1954** Backus reúne a un equipo de mentes brillantes para crear el **primer lenguaje de alto nivel de uso generalizado**: FORTRAN, de *Formula Translation* — diseñado para que científicos e ingenieros expresaran sus problemas matemáticos directamente, sin traducirlos a instrucciones de máquina. Un puente entre el pensamiento científico humano y la lógica computacional.

El equipo lo tuvo que crear todo desde cero (no existían herramientas de desarrollo): «¿quieres un compilador? Constrúyelo. ¿Optimización automática de código? Invéntala». El compilador que debutó en **1957** fue una obra maestra: no solo traducía el código a lenguaje máquina, sino que lo hacía **más eficientemente que la mayoría de los programas escritos a mano** de la época. Revolucionario: rompió la idea de que los lenguajes de alto nivel eran necesariamente más lentos que el ensamblador.

Anécdotas: introdujeron la detección automática de ciertos errores, pero los mensajes eran crípticos — en una demostración inicial, un espectador bromeó: «parece que la máquina insulta al programador» (los compiladores actuales como el XL Fortran de IBM mantienen esa tradición de errores crípticos). Y el propio lenguaje ignora espacios, como demostró Mariner 1.

## Éxito, legado y vigencia

El lanzamiento fue un éxito rotundo pese a los puristas que resistían («un lenguaje de alto nivel nunca será tan eficiente como el ensamblador»). FORTRAN abrió las puertas a una audiencia mucho más amplia: científicos e ingenieros sin formación informática podían usar computadoras para problemas complejos, de cálculos estructurales de ingeniería a modelos matemáticos de física. **COBOL** cumplió un rol paralelo, pero orientado al mundo corporativo en lugar de a físicos e ingenieros. FORTRAN inspiró la creación de otros lenguajes como **Algol** y el propio COBOL; algunos vinieron y se fueron, FORTRAN evolucionó con versiones cada vez más potentes.

Por qué sigue vivo: eficiencia casi inigualable en **cálculo numérico** (meteorología, simulación de fluidos, modelado climático, lleno de ecuaciones diferenciales). No solo sobrevive: prospera en los **superordenadores** (predicción del tiempo, reacciones nucleares, nuevos materiales, condiciones iniciales del universo tras el Big Bang). Los más potentes, como **Frontier**, ejecutan billones de operaciones simultáneas, y el Fortran moderno — versiones **90, 2003 y 2018** con programación paralela y estructuras de datos complejas — aprovecha al máximo sus núcleos y unidades de cómputo vectorial. La metáfora de cierre: un clásico de los años 50 que compite —y gana— hoy en una carrera de Fórmula 1.

Cierre del canal: durante la pandemia de COVID-19 las autoridades buscaron desesperadamente programadores COBOL, un lenguaje casi tan viejo como FORTRAN (el vídeo enlaza a esa otra historia del canal).

## Notas sobre la fuente

- Raw en inglés (subtítulos automáticos); resumen en español profesional.
- Garbiñeos corregidos en el resumen: «John Bacus»/«Vacu» = John Backus; «Kobol»/«Cobble» = COBOL; «Linux chat» = LinuxChad.
- Autopromoción: agradecimiento a Patreon y miembros de YouTube, y enlace al vídeo propio de COBOL — excluidos de la síntesis.
- Sin patrocinios externos identificables.
