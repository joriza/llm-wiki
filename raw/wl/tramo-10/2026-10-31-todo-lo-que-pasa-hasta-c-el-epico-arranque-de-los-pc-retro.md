# TODO lo que pasa HASTA C:\ || El ÉPICO arranque de los PC retro

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=a1csv05WWdM)
- **Canal**: PC Clásico
- **Publicado**: 2026-10-31
- **Recopilado**: 2026-11-15
- **Idioma**: es-ES (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 13:24

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hoy te voy a mostrar lo que sucede desde que pulsamos el botón de encendido hasta que llegamos aquí. También te mostraré todos los mensajes de error que pueden aparecer durante el arranque, por qué suceden, qué significan y cómo solucionarlos. Y todo esto de manera breve, sencilla, amena, casi adictiva. Al encender el PC, lo primero que se ejecuta es un código contenido en una memoria ROM, en este caso este chip. que solemos llamar chip de BIOS o simplemente BIOS. Este código es un tipo de

[00:36] firmware que hace unas comprobaciones iniciales, un diagnóstico básico y también contiene un código con unos servicios elementales para acceder al hardware antes de que se haya cargado un sistema operativo. Ojo, que no es lo mismo BIOS, firmware y Post. Sí, la BIOS es un tipo de firmware, pero no todos los firmware son BIOS y el post es este diagnóstico inicial tan familiar.

[01:07] No solo a esto que ves ahora en pantalla, el proceso del post comienza antes incluso de que haya imagen en el monitor en la pantalla. Si durante el post no se detectan errores, entonces comienza la carga del sistema operativo. Lo primero que generalmente hace un PC clásico es buscar un disquete con un sector de arranque válido. La información en el disquete está almacenada en forma de pistas y sectores. En un disquete de 3,5 pulgadas de doble densidad, 720 KB, cada cara está dividida en 80 pistas concéntricas. Y cada pista está dividida en

[01:47] nueve sectores que abarcan cada uno 40º de la circunferencia. El sector de arranque es el primer sector del disquete del primer cilindro y de la primera cara y contiene un pequeño fragmento de código. La BIOS carga este pequeño bloque en RAM y le pasa el control. El código de este bloque busca los archivos io.sys, msdos.sys y si existen comienza la carga del sistema operativo. De lo contrario muestra un error. Error de disco de sistema. Si eso pasa, hay que sacar el disquete de la

[02:22] disquetera y reiniciar, ya sea con otro disquete, ya sea con un disco duro. Si no hay disquete en la disquetera, entonces la BIOS buscará el MBR, el registro de arranque maestro del disco duro. Si hubiera algún problema con el MBR, podríamos ver este mensaje de error, disc boot failure o directamente nada. No aparecería el esperado iniciando MS2. O incluso podríamos ver basura gráfica como esta que te muestro en pantalla, que es un ejemplo real que he provocado yo mismo

[03:02] corrompiendo el MBR. El registro de arranque maestro o MBR contiene código y datos. Los datos más relevantes están al final del bloque en la tabla de particiones, donde se describen las cuatro posibles particiones del disco. Las cuatro posibles particiones primarias. En concreto se describe si la partición está activa o no, si es arrancable o no, en qué lugar del disco duro está almacenada, su tamaño y también su tipo es FAT12. Utiliza un sistema de archivos FAT16 de menos de 32 MB. La partición es de más de 32 MB, es primaria, es extendida. En los

[03:47] sistemas clásicos únicamente puede haber cuatro particiones primarias en cada disco y hasta unas 20 particiones lógicas. Si tienes interés en que hable de esto en detalle, deja un comentario y lo haré en otro vídeo, pero de momento continuemos con el proceso de arranque. El código hace algunos chequeos básicos. Comprueba que hay una partición activa y arrancable. Y si no la hay, veremos el mensaje invalid partition table. Pero si existe una partición activa y arrancable,

[04:20] el sistema la busca en el disco y carga el primer sector de la partición en memoria RAM. Si hay algún error en la carga, puede que veamos el error Error loading operative system. A este primer sector de la partición, lo llamamos sector de arranque y es equivalente al sector de arranque de los disquetes. En este punto da igual si el sistema arrancó desde un disquete o desde un disco duro. El caso es el mismo. Tenemos el sector de arranque, ya sea del disquete o de la partición del disco duro. Tenemos el sector de arranque cargado

[04:58] en RAM. En concreto, el sector de arranque se carga en la dirección 0000:7C00, es decir, segmento 0 desplazamiento 7C00. Si te interesa saber por qué hay dos números en hexadecimal y dos puntos separándolos, te recomiendo que veas el vídeo que hice del 386 frente al 286.

[05:27] Ahora el control pasa a este código que viene del registro de arranque maestro y este intenta iniciar la carga del sistema operativo. Si hay algún problema con el sector de arranque podemos ver el mensaje missing operative system. De lo contrario, el arranque prosigue y el sistema busca dos archivos clave io.sys y msdos.sys. Si no existen o sus nombres o ubicaciones físicas son incorrectas, podemos ver el mensaje error de disco de sistema reemplace y presione cualquier tecla. Este texto está en español porque el código que lo muestra forma parte del MS2. Por lo tanto,

[06:07] si nuestro MS2 está en español, el texto estará en español. Otros mensajes de error durante el arranque los lanza la BIOS y por eso los vemos en inglés. Estos dos archivos io.sys y msdos.sys se cargan en memoria. Primero io.sys y después msdos.sys y se cargan en memoria baja. Si quieres saber y quieres entender las diferencias entre memoria convencional superior, memoria alta XMS, memoria EMS, te recomiendo que veas el vídeo que hice sobre memoria en MS2 y entornos en modo real. Y es precisamente este archivo io.sys el que contiene el grandioso

[06:56] texto iniciando MS2 punto, punto, punto. Aquí te muestro un fragmento del contenido del archivo io.sys visualizado en un editor hexadecimal donde se ve el texto iniciando ms aquí resaltado. Este archivo io.sys es el encargado de dirigir el proceso de arranque e inicializar los dispositivos básicos y hacer los preparativos para la carga del resto del sistema. Cargar y ejecutar las directrices del config.sys y finalmente cargar el command.com que es el intérprete de comandos, el shell en terminología más linuxera.

[07:39] Aunque los términos shell y kernel están hoy en día muy relacionados, muy vinculados al ecosistema Linux, el término shell es independiente y anterior a Linux. Por ejemplo, Windows 3.1 sería un shell de MS2 y hubo muchísimos más. Si tienes interés, deja un comentario y haré un vídeo mostrándolos. De los tres archivos básicos que componen MS2, ya hemos hablado de io.sys. Hablemos ahora de command.com.

[08:14] Command.com es el que lee el texto que introducimos por teclado y ejecuta los comandos que le pedimos, ya sean comandos internos como DIR, ya sean comandos externos como cualquier otro programa .com o .exe. Durante el proceso de arranque, command.com es precisamente el que ejecuta el famoso autoexec. ¿Y qué hay del archivo msdos.sys? msdos.sys contiene el núcleo o kernel del MS2.

[08:48] contiene el código que hace de intermediario entre nuestros programas y el hardware, el código que usan nuestros programas para acceder a los servicios que ofrece MS2. Por ejemplo, si un programa quiere acceder a un fichero del disco duro, lo solicitará a través de uno de estos servicios. Igual si quiere leer una cadena de texto desde el teclado, lo solicitará a través de otro de estos servicios y así sucesivamente. Si eres programador, entenderás si te digo que msdos.sys

[09:22] contiene las subrutinas o manejadores de atención a la interrupción 21H21 en hexadecimal y para todos los demás. Continuamos. Pero msdos.sys no trabaja solo para determinadas operaciones, sobre todo accesos físicos al hardware, msdos.sys requiere del archivo io.sys. Ahora bien, una aclaración.

[09:50] El código que se ejecuta, el código de MS2 no lo hace directamente desde estos dos archivos msdos.sys e io.sys. El código necesario se carga en memoria RAM durante el arranque. De eso se trata parte del arranque de cargar este código en memoria RAM. No se ejecuta, insisto, directamente desde disco duro, desde estos dos archivos. Se seleccionan las partes necesarias y se mantienen en RAM durante todo el tiempo en el que el sistema está funcionando y ocupan memoria convencional o bien memoria alta. Si tienes dudas y te interesa este tema, te vuelvo

[10:31] a recomendar el vídeo que te recomendé antes y que te dejaré también en la caja de descripción. Veamos ahora los errores que pueden aparecer durante el arranque uno a uno y qué podemos hacer para solucionarlos. En este diagrama de flujo que he preparado exclusivamente para este vídeo, vemos los seis tipos de errores de arranque más comunes. Cuando vemos Missing Operative System, debemos sospechar de la partición del disco duro. Generalmente si no tienes buenos conocimientos y

[11:04] herramientas lo mejor es reinstalar MS2. Si ocurre al arrancar de un disquete, también lo mejor es volver a crearlo. Cuando vemos error loading operative system, puede que haya un problema físico con el disco, un problema hardware. Esto puede deberse a muchas causas. Claro. Revisa que el disco funcione correctamente, que no haga ruidos raros. Prueba a arrancar desde un disquete y correr scan disc, por ejemplo. Cuando vemos el error disc boot failure, esto puede ser porque el

[11:39] MBR, el registro de arranque maestro está corrompido o porque la BIOS no puede cargarlo. puede deberse también a un problema hardware, aunque si el sistema responde, lo mejor de nuevo, si no tienes buenos conocimientos y herramientas es reinstalar el sistema desde cero. Lo mismo si vemos que el sistema no muestra iniciando MS2 y se queda parado indefinidamente. Cuando vemos invalid partition table, revisa con fd que haya una única partición activa y arrancable. Este problema no

[12:16] suele ser hardware, al menos no en mi experiencia. Cuando vemos error de disco de sistema reemplace y presione cualquier tecla, debemos comprobar que los archivos io.sys y msdos.sys están en el disco, que no los hemos copiado manualmente, sino que lo hicimos a través de la instalación de MS2 o a través del comando SIS, entre otras cosas porque antes de MS2 5 el archivo io.sys debía ocupar los primeros sectores del disco, no valía simplemente con copiarlo al disco de cualquier manera, por ejemplo, con el comando

[12:56] copy. Había que hacerlo obligatoriamente usando el comando SIS de MS2 o dejar que el programa de instalación lo colocará en su sitio correcto. Si quieres ver muchos más vídeos como este, plantéate sumarte como miembro del canal, como ya han hecho estos tres miembros, los primeros de PC clásico. Muchísimas gracias y seguiremos dentro de poco con más temas de PC clásico.
