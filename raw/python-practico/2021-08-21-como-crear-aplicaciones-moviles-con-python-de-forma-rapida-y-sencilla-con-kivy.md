# Como crear aplicaciones móviles con Python de forma rápida y sencilla con Kivy

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vjTdtBW3CtE)
- **Canal**: Argonauta digital
- **Publicado**: 2021-08-21
- **Recopilado**: 2026-11-15
- **Idioma**: es-ES (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 13:47

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Muy buenas, argonautas. Hoy vamos a hablar de una librería para la construcción de aplicaciones con interfaz de usuario. Se llama Kivy y lo bueno que tiene esta librería es que lo puedes instalar en Linux, Windows, OX, Android, iOS y Raspberry Pi. Incluso soporta algunas interfaces táctiles. A mí me ha parecido una maravilla de librería y la exportación a Android es la parte que me parece más interesante para construir aplicaciones móviles muy rápidamente y además en Python. En este vídeo haremos una pequeña introducción a Kibii, haremos un

[00:56] pequeño hello world y luego incluiremos una serie de botones y labels a través de su lenguaje de plantillas y veréis que es muy sencillo y muy sencillo de utilizar. Vamos a ello. Para ello, yo ya me he creado previamente el entorno virtual. He actualizado pip. Voy a hacer aquí un clear.

[01:17] Me he creado un entorno virtual. Los requeriments los he sacado de otro entorno virtual de pruebas que tengo. Aquí tenemos la lista, entre ellas está Kibii y también instale Kibii MD, que no es ni más ni menos que un wrapper de Kibii con los estilos de material design por si os interesa tenerlos.

[01:37] En la serie de vídeos que voy a grabar voy a hacer uso de Kibii y más adelante haremos lo mismo con Kibii MD. Es muy parecido. La única diferencia es, aparte de los estilos, tiene varias diferencias en cuanto a la forma de llamar al API que la hacen un poco más sencilla de utilizar.

[02:03] Para crear el hello world simplemente tenemos que tener un fichero main y lo primero que vamos a hacer es importar las librerías de Kibii importantes, las clases de Kibii importantes, la clase app y la clase label que es donde vamos a meter nuestro texto.

[02:39] Por debajo Kibii usa OpenGL y muchas de las librerías están compiladas en C a través de Xython. La verdad es que probándolo en el móvil, la aplicación ocupa unos 10-14 megas, pero como contrapartida os diré que van muy rápidas. En esta primera vamos a hacer una interfaz muy simple, muy sencilla para escritorio, pero en otros capítulos veréis que es muy sencillo hacer la exportación a una APK, instalaremos esa APK en un móvil o en un móvil virtual y veréis que es una pasada, a mí me encanta. Vamos a hacer que RDDApp, nuestra clase,

[03:38] la función build siempre se va a llamar y lo que va a hacer es devolver nuestra etiqueta. Aquí vamos a poner return, Label y aquí vamos a poner Text, vamos a poner el castellano. Lo siguiente que tenemos que hacer es simplemente ejecutar este First Kivy, lo distanciamos y llamamos a su función run.

[04:34] Con esto lo que haremos es ver la interfaz, vamos a ejecutarlo aquí y como veis ya tenemos nuestro primero hello world en Kivy. Aquí veis la inicialización, lo que hace es inicializar la librería OpenGL a través de la tarjeta gráfica, en este caso tengo una Nvidia 2060 y luego inicializa el loop principal que seguramente dentro del framework tenga, tendrá el loop principal de eventos o de pintado o de renderización en el que nos pinta la ventanita y va actualizándola en base a las acciones que el usuario ejecute.

[05:21] Vamos a hacer esto mismo pero usando un lenguaje de plantillas y para ello vamos a crear una interfaz con un botón y un label y lo vamos a hacer en el lenguaje de plantillas que tiene Kivy, la extensión es KV y vamos a crear un nuevo archivo aquí que se va a llamar main.kv en este main.kv lo que vamos a poner es nuestro root layout y bueno aquí el lenguaje de plantillas es bastante sencillo de entender, está intentado igual que Python y luego todos los componentes que tiene Kivy, vamos a buscarlos

[06:22] aquí, aquí tenemos la documentación y por aquí tendremos los widgets. Aquí tenemos los layouts, etcétera, etcétera, bueno hay infinidad de widgets, botones, etcétera. Lo que voy a hacer aquí es poner un box layout, luego lo explicaremos, no hace falta que lo entendáis ahora, hay varios layouts, entre ellos está el box layout que es el que vamos a usar por defecto, con el box layout no hace falta disponer los elementos en la pantalla, lo hace el solo, crea una especie de grid donde va metiendo todos los elementos, esto creo que ya es común a muchos

[07:23] lenguajes. Aquí vamos a poner la orientación vertical, dentro de este box layout va a haber un label que se va a llamar, vamos a ponerle argonauta label, va a tener un texto por defecto que va a ser hola, argonauta y vamos a crear también un botón, esto lo podemos crear exactamente igual desde Python, la idea es separar la parte gráfica de la parte de lógica de negocio para que quede un poco más claro y así podamos simplificar nuestra aplicación, aquí tenemos un botón, vamos a poner mi botón y dentro del botón, vamos a dejarlo así de momento, en el main tendremos que

[08:36] crear una clase root que va a heredar de box layout y que simplemente la vamos a tener ahí para que la instancie y para que la use en la plantilla, qué tenemos que importar aquí, el box layout, no sé si lo tengo aquí, no hay sugerencias, no lo tengo, quizá cambiando el intérprete, vamos a intentar cambiar el intérprete, no está aquí, enter intérprete path y ya me ha cargado el vm, a ver, sí, aquí está, tenemos ya el entorno de ejecución linkado, o sea el entorno virtual linkado al visual studio code, pues ya tenemos aquí el

[10:07] autocompletado, así que perfecto, el firstkibi app lo vamos a dejar tal cual, aquí podríamos agregar algo muy pitónico y lo vamos a dejar así por convenio, vamos a poner aquí una función main, que básicamente va a hacer lo mismo, lo que tenemos que hacer es cambiar el nombre de este app, kibi por defecto utiliza el nombre de la app para detectar si existe algún kv con ese nombre, si existe algún kv como se lo interpreta como que quieres usar plantillas y automáticamente lo cargan en el entorno, hay otras formas de cargar estas plantillas pero lo veremos en el futuro,

[11:06] por ahora vamos a cambiar esto a main, si ponemos main app el sistema cogerá main como nombre, quitando la app, es por convenio, vamos a probar esto, aquí dice que necesita saber que es de tipo Kivy, no hacemos caso de momento, vamos a ver si esto funciona, está cogiendo aún nuestro hello Kivy, vamos a quitar el build, vamos a dejar aquí un pass, ya nos hace falta el will, veis, por defecto ha cogido esa plantilla y la ha renderizado aquí, estas acciones pueden ir linkadas a funciones de la app principal,

[12:10] también podemos usar el lenguaje de plantillas para cambiar el texto de cualquier cosa que necesitemos, por ejemplo, si yo aquí en button quiero cambiar el texto de mi label, pues llamo al evento on release, este sistema de eventos es muy parecido a otros sistemas de eventos en javascript, tenemos que poner el identificador de nuestro label, el text y vamos a poner hemos cambiado el texto, vamos a ejecutar esta aplicación, hola argonauta, si yo pulso el botón, veis, me ha cambiado el texto, hemos cambiado el texto,

[13:03] argonautas, como veis es bastante sencilla de usar, apenas he usado código, 9 líneas aquí, 12 aquí, las acciones que yo ejecuto dentro del root layout, los eventos se pueden programar dentro de la propia plantilla o se pueden llamar a elementos del root layout principal, lo veremos en próximos vídeos, espero que os haya gustado argonautas y nada nos vemos en el próximo vídeo, un saludo, hola internet, si te gustan mis vídeos no olvides suscribirte y darle a la campanita, muchas gracias
