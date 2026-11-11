# Resumen: Tenías RAM, pero no podías usarla — el absurdo de la memoria en MS-DOS

- **Tipo**: resumen de fuente.
- **Dominio**: `historia-informatica/`.
- **Fuente original**: `raw/historia-informatica/2026-10-03-tenias-ram-pero-no-podias-usarla-el-absurdo-de-la-memoria-en-msdos.md` (subtítulos automáticos en inglés, literal) — https://www.youtube.com/watch?v=Tq2BqalHhTo — PC Clásico, 2026-10-03 (12:23).
- **Nota**: fuente del lote 8M (5/8). Sin enlaces cruzados todavía (consolidación aplazada).

## El problema demostrado

En un PC antiguo, **tener memoria y poder usarla eran dos cosas muy distintas**. Ejemplo 1: un PC con 4 MB de RAM y *Dune 2*, que necesita apenas medio megabyte — MS-DOS responde que **no hay memoria suficiente**. Ejemplo 2: *Buzz Aldrin's Race into Space* tampoco arranca: **«no hay memoria EMS»**. La clave: aunque el PC tiene una sola memoria física, **en MS-DOS no hay una memoria, sino muchas**. El problema no era falta de memoria, sino que estaba «en el lugar equivocado»: en MS-DOS, dónde estaba importaba tanto o más que cuánta había.

## Por qué la frontera de 1 MB

Con un 486 con 4 MB de RAM, la memoria se divide en dos bloques principales: **por debajo de 1 MB** y **por encima**. La razón histórica: los primeros procesadores de la familia, el **8086 y el 8088**, no podían gestionar más de 1 MB — esa era su frontera. El bloque inferior de 1 MB es **especial y fijo**: no crece por más RAM que compres. (Nota colateral del vídeo: comprando 8 MB, el bloque superior simplemente sería mayor.)

## Los cinco tipos de memoria

- **Memoria convencional (640 KB)**: por la que «luchan» los programas y juegos — el código ejecutable **debe** cargarse aquí. Por ser fija, limitada e imprescindible, es la memoria más valiosa de los entornos MS-DOS. Historia de su tamaño: al principio se limitaba a 512 KB; la otra mitad del bloque de 1 MB estaba reservada para **acceso al hardware** (placa base y tarjetas de expansión). Luego ese espacio reservado se redujo a 384 KB, llegando a la cifra final de **640 KB convencionales**, inamovible — había que usarlos con mucha sabiduría.
- **Memoria superior (upper, 384 KB)**: precisamente ese espacio reservado. El sistema no lo aprovecha del todo, así que MS-DOS puede usar los huecos libres para **cargar controladores y programas residentes** y no consumir convencional. En la práctica no son 384 KB utilizables ni de lejos: unos **100-130 KB**; y si se quiere usar EMS, menos todavía (la ventana de EMS también consume espacio en esa zona).
- **Memoria alta (high, ~64 KB)**: pequeña zona **por encima** de la frontera de 1 MB, y el único bloque que el procesador puede **acceder directamente en modo real** — gracias al mecanismo de segmentos y offsets de la arquitectura x86 en modo real. No confundir con la memoria superior. Los programas no pueden ejecutar su código allí; en cambio, MS-DOS puede **cargarse a sí mismo** (una parte muy notable) en esa zona, liberando valiosa memoria convencional.
- **Memoria extendida (XMS)**: la que supera la frontera de 1 MB. Nació para superar el límite del 8086/8088: el **286** puede direccionar 16 MB y el **386 hasta 4 GB** (sí, 4 GB, dice el vídeo). Pero MS-DOS opera en **modo real** y no puede acceder directamente; hacía falta el famoso controlador **HIMEM.SYS**. Además los programas no podían ejecutarse desde allí — solo almacenar **datos** (Dune 2 la usaba, por ejemplo, para audio/digitalización de sonido).
- **Memoria expandida (EMS)**: mecanismo para aprovechar toda esa memoria por encima de 1 MB **a través de una pequeña ventana** creada en la zona de memoria superior (bajo la frontera de 1 MB). El sistema mapea un pequeño trozo de memoria extendida en esa ventana: «un portal entre dos mundos», legal en modo real. Limitación obvia: hay que trocear la memoria extendida y acceder bloque a bloque — muy potente para su época, pero con bastantes restricciones.

## De las tarjetas a la emulación y la salida por modo protegido

En la era del 286, extendida y expandida no eran lo mismo para el usuario: la XMS podía usarse vía software, pero la **EMS requería tarjetas de expansión especiales**. Desde el **386**, la EMS se emula por software — el archiconocido **EMM386** permitía usar memoria expandida sin hardware especial (386, 486, etc.). En conjunto, XMS y EMS servían para guardar más datos en programas, bases de datos y videojuegos, pero era relativamente incómodo: eso empujó el tránsito hacia el **modo protegido** y, antes, los **dos-extenders** (el ASR garbiñea «extenders de la segunda»). El vídeo se cierra ofreciendo resolver en el canal los problemas de memoria de los dos juegos de la introducción.

## Notas sobre la fuente

- Raw en inglés (subtítulos automáticos); resumen en español profesional.
- Garbiñeos corregidos: «Himem»/«O Himem» = HIMEM.SYS; «superior vs. high memory» distinguidos (el ASR confunde «upper»/«high»); «extenders de la segunda» = DOS extenders (¿o extenders DOS? verificado solo como lo pronunciado); «four omegas» = «four-eight-six» (486) según el contexto.
- Autopromoción: socios del canal y contenidos futuros — excluida de la síntesis.
- Sin patrocinios externos identificables.
- El vídeo deja abierta la resolución práctica de los dos juegos (posible secuela en el canal).
