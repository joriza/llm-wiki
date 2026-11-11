# Herramientas IA #12: Creando vídeo con HyperFrames y OpenCode

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jYawp25fCzc)
- **Canal**: Darellanodev
- **Publicado**: 2026-07-05
- **Recopilado**: 2026-11-11
- **Idioma**: español (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:06

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hola, ¿qué tal? Muy buenas a todos. En este vídeo me gustaría realizar una práctica con una herramienta open source denominada Hyperframes, que nos va a permitir editar y crear vídeo de manera programática utilizando lenguajes web sencillos como HTML y JavaScript. Ya vimos en un vídeo anterior una herramienta similar denominada Remotion, que utilizaba la programación con la librería React, pero esta vez vamos a utilizar lenguajes web sencillos como HTML y alguna librería de JavaScript.

[00:36] Así que, ¿qué os parece, chicos, si comenzamos la práctica? Vamos a abrir nuestro editor favorito y vamos para allá. Perfecto, pues yo ya tengo abierto Visual Studio Code en un directorio vacío. También comentaros que utilizaremos Open Code, como venimos haciendo en otros vídeos anteriores.

[00:57] Y vamos a comentar un momento los requisitos que tiene la herramienta de Hyperframes. Por una parte, requiere tener instalado en el sistema Node JS, así que podéis entrar en la página de Node si no lo tenéis instalado e instalarlo.

[01:13] Y por otra parte necesita la herramienta FFMP y podéis descargar vuestro archivo adecuado. Yo, en mi caso, he ido a esta página y me ha descargado la versión para Windows 64 bits. Yo la he descargado y la he descomprimido en un directorio denominado FFMPEC y dentro tiene un subdirectorio bin donde están los binarios ejecutables.

[01:39] Y ahora tenéis que añadir esta ruta al directorio paz del sistema. En este caso, yo he ido a las propiedades del sistema y aquí en variables de entorno, en variables del sistema, veréis una denominada paz. Aquí doble clic y aquí podéis añadir esta ruta para que esté disponible la herramienta FFMPEG en todo el sistema.

[02:04] Y para comprobar si el comando FFMPG ya está disponible, podemos probarlo en una terminal de Visual Studio Code tecleando FFMP y pulsando enter. Y en este caso nos da la salida de la aplicación, así que perfecto. Ahora para iniciar Hyperframes vamos a utilizar el comando MPX Hyper Frames init y ponemos un punto indicando que lo queremos en el directorio actual.

[02:33] Pulsamos enter. Vamos a hacer un poco más alta la terminal y nos dice que necesita instalar los siguientes paquetes. Hyper Frames 0731. Voy a decirle que yes. Y aquí vemos el título de la herramienta. Y ahora nos dice que va a crear un nuevo proyecto y que elijamos un ejemplo. Tenemos diferentes plantillas, pero yo voy a elegir la que dice blank, que es una plantilla vacía.

[03:02] para hacer una primera prueba. Así que voy a pulsar aquí enter. Ahora me está pidiendo instalar un paquete de skills. Voy a decirle que sí. Y aquí parece que está instalando los skills. Dice instalación completa. Hecho. Revisa los skills antes de utilizar. ¿Vale?

[03:24] Y fijaros, se acaba de abrir en el navegador web una especie de editor de vídeo. Aquí a la izquierda pone hyperframes, así que vamos a ver de qué se trata. Voy a ir un momento a Visual Studio Code y voy a reducir un poco la terminal.

[03:42] Y me gustaría añadir estos archivos recién creados en un repositorio de Git para que así vayamos viendo los cambios poco a poco. Así que voy a añadir todos estos archivos. Y vamos a crear, por ejemplo, un comit con el mensaje first commit, control enter.

[04:01] Vamos al explorador de archivos y a abrir el archivo index.html. Voy a ocultar un momento la terminal y vamos a bajar por el archivo. Y aquí nos encontramos una zona con un código comentado. Entonces, voy a sustituir este código comentado por este otro.

[04:22] Este es un fragmento de HTML y más abajo, en la zona de JavaScript voy a añadirle un código. Así que voy a sustituir este comentario por este código y ahora vamos a explicarlo un poco. Guardamos el archivo. Entonces, para explicar esto un poco, vamos a utilizar una analogía que consiste en una obra de teatro. Así que esta parte de HTML es la que controla tiemp.

[04:51] Así que hemos colocado a este actor que tiene el texto bienvenido a Hyperframes. Este actor va a comenzar en la obra en el tiempo cero, aquí en la propiedad data start y va a durar en la obra 5 segundos, aquí definidos en data duration.

[05:11] Pero en este tiempo que va a estar el actor en la obra, tenemos su coreografía que es controlada por la segunda línea de JavaScript que hemos copiado al final. Entonces, en la coreografía de este actor se le van a dar unas propiedades de opacidad cero, es decir, va a ser transparente, va a tener una coordenada y de altura de -50, es decir, va a estar fuera de la pantalla por arriba y va a tener una duración de la transición de 1 segundo.

[05:44] Entonces, estas propiedades se van a aplicar al principio de su coreografía, pero van a llegar a un estado final que es la definida por el propio actor aquí. Y las propiedades finales son las que tiene el actor por defecto, que es un tamaño de fuente de 64 píxels, un color blanco y un padding de 40 píxels.

[06:07] Ahora, si nos pasamos al navegador web, vemos que aquí hay una pista nueva donde pone bienvenido a Hyperframes, que es por el código que acabamos de poner. Vamos a pulsar el botón play a ver cómo se comporta. Y fijaros, ha bajado aquí el texto de bienvenido a Hyperframes con una opacidad cero al principio y al final se ve el texto.

[06:35] Y si os dais cuenta, el actor ha permanecido en la obra durante 5 segundos y después de esos 5 segundos ha desaparecido. Voy a hacer un comitos cambios. Aquí, por ejemplo, feature show. Welcome message, control enter. Y vamos a abrir ahora Open Code para pedirle alguna cosa más compleja a la inteligencia artificial. A ver qué es capaz de hacer. Así que aquí está iniciado Open Code y estoy utilizando uno de los modelos gratuitos, en este caso Big Pickle, que viene con la instalación de Open Code. Ahora me

[07:17] gustaría utilizar un prompt que voy a pegar aquí temporalmente y dice algo así. Usando Hyperframes modifica index html. Quiero dos textos, bienvenido a y hyperframes. Bienvenido a debe entrar desde arriba de la pantalla y hyperframes desde abajo, ambos moviéndose hacia el centro y juntándose ahí en grande. Y aquí defino un tamaño de fuente de alrededor de 100 a 120 píxels con una transición vistosa, por ejemplo, un is, una escala o un pequeño rebot. que el texto de la animación dure

[07:52] unos 2 segundos en total y el texto final se quede visible el resto de los 10 segundos del vídeo. Vale, pues voy a copiar este prompt y vamos a pegarlo en Open Code. Así. Vamos a pulsar enter y vamos a darle tiempo a la gente de IA a ver qué es capaz de hacer. Aquí parece que ha encontrado algunos skills. Hyper Frames Score y Hyper Frames Animation.

[08:20] Vale, parece que está modificando nuestro archivo index.html. Vale, dice, "Listo, index html ahora tiene dos textos separados. Bienvenido a entra desde arriba. Hyperframes entra desde abajo." Así que vamos a situarnos en el navegador web, en el editor de Hyperframes y a pulsar el botón play a ver qué ha sucedido.

[08:43] Ah, fijaros. y salen los dos textos con esa especie de rebote y quedan centrados al final. Así que perfecto. Voy a pulsar un momento en el archivo index html para ver los cambios. Y fijaros, aquí hay dos elementos, uno bienvenido a y otro hyperframes.

[09:05] Y también aquí en la parte de JavaScript hay dos instrucciones, una para el elemento uno y otra para el elemento dos, que los ha llamado line 1 y line 2. Así que perfecto. Voy a hacer un commit y voy a llamarlo, por ejemplo, feature show a second welcome message control enter.

[09:32] ¿Qué tal si ahora lo complicamos un poco más y hacemos como tres escenas? Así que para ello me he descargado algunos archivos gráficos, unos emojis. En este caso voy a ir al explorador de archivos de Visual Studio Code y a crear un nuevo directorio Assets.

[09:51] Y aquí voy a pegar los archivos gráficos que he descargado de la página web. Voy a ir un momento a la pestaña de Open Code y me gustaría utilizar el siguiente prompt. Vamos a leerlo. Usando Hyper Frames crea un vídeo de 16 segundos con tres escenas. Escena uno, de 0 a 3 segundos. Haz un fade out, es decir, un desvanecimiento de 0.5 segundos al final.

[10:18] Le digo uno de los iconos que he descargado con rebote de entrada junto al texto. ¿Sabías que puedes crear vídeos con HTML? La escena dos. También le digo una duración y un fate outrando desde lados opuestos junto al texto, las herramientas de vídeo tradicionales son complejas.

[10:40] Finalmente, una escena tres. También le marco que empiece del segundo 7 al segundo 16. Un único clip de 9 segundos sin fate intermedio que reutiliza exactamente la animación ya existente en este proyecto. El bloque bienvenido a Hyperframes, este que hicimos antes, más el icono, eh este otro icono que he descargado con escala y rotación, todo entrando en los primeros 1.5 segundos de la escena. Después, a partir del segundo tres, de esa misma escena, sin contar otra escena, que aparezca un contador

[11:16] numérico animado de 0 a 32,300, ¿vale? Con is tipo power, que cuenta rápido al inicio y se desacelera hasta terminar en 32,300 junto al icono, ¿vale? y le doy un icono de una estrella y el texto popularidad en GitHub. Es decir, aquí quería hacer una especie de contador rápido donde se vean eh cómo cuenta un número de estrellas de popularidad.

[11:45] Así que vamos a pegarlo esto en open code a ver qué hacen. Control shift V y enter. Vale, parece que ha hecho una lista de toos y el primero dice explorar el directorio de assets y verificar los archivos de iconos. y otros toús, por ejemplo, planificar la composición de las tres escenas, la estructura con el timing y posteriormente otras tareas como escribir en la escena uno, en la dos y en la tres. Finalmente, parece que realizará un chequeo y corregirá los problemas que pudiese haber,

[12:26] ¿vale? De vez en cuando veis que aparece algún mensaje de alguna herramienta como DCP. Esto es un compresor del contexto que expliqué en algún vídeo anterior. Y fijaros, ya dice, "Listo, la composición de tres escenas está completa y funcional."

[12:46] Vale, pues vamos a ver qué ha hecho. Entonces, en el editor de Hyper Frames vemos que ha añadido diferentes pistas. Vamos a pulsar el botón play y a ver cómo ha quedado. Dice, "¿Sabías que puedes crear vídeos con HTML? Las herramientas de vídeo tradicionales son complejas. Bienvenido a Hyper Frames.

[13:07] Y aquí el contador de las estrellas de la popularidad de Kighat. Genial. Pues oye, ha hecho un vídeo curioso con las escenas que le hemos pedido, así que perfecto. Y finalmente, para exportar esto en formato vídeo, tenemos aquí el botón arriba a la derecha, export.

[13:28] Nada más pulsar el botón de export. Vemos que se pone a renderizar el vídeo en formato MP4, pero después nosotros podemos ajustar algunas cosas, como por ejemplo el frame rate. Y voy a elegir aquí a 60 frames por segundo. Y vamos a pulsar exportar.

[13:47] De nuevo vemos que tiene otros ajustes aquí el formato en MP4, la resolución que por defecto está en Full HD. y la calidad en estándar. De momento voy a dejarlo así a ver qué tal. Aquí nos va indicando la barra de progreso que está en el frame 480 de 960, así que vamos a darle un poco de tiempo.

[14:14] Perfecto. Pues ya ha renderizado el segundo vídeo. En este caso con el cambio que le he dicho de 60 frames por segundo. Y si vamos al directorio del proyecto renders, voy a hacer doble clic en este segundo vídeo y fijaros, se empieza a reproducir como hemos visto antes, y con la fluidez de los 60 frames por segundo que le he puesto al final.

[14:41] Vale, pues ha quedado genial. Así que nada, chicos, espero que os haya parecido interesante esta herramienta y la podéis utilizar en vuestros proyectos. Me podéis dejar en los comentarios qué otras herramientas utilizáis vosotros y así entre todos vamos practicando y mejorando. Pues nada, chicos, nos vemos en un siguiente vídeo de herramientas de IA. Un saludo y chao.
