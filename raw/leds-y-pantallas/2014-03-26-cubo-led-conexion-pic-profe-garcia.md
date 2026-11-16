# CUBO LED,  Conexion al PIC (Como se hace)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ia3viImc_KM)
- **Canal**: El profe García
- **Publicado**: 2014-03-26
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:24

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] en el video hoy vamos a aprender a hacer la conexión del pic al cubo led vamos a ver cómo se hace todo el cableado Y qué componentes hay que [Música] usar Este es el circuito que vamos a montar inicialmente tenemos nuestra fuente de 12 V de deos tener en cuenta que los pic funcionan con 5 V si les llego a colocar directamente los 12 V lo vamos a quemar Así que debemos instalar el regulador lm 7805 y lo que hacemos Es que a la primera pata a la de la izquierda conectamos los 12 V a la segunda

[00:45] conectamos la tierra o negativo y a la tercera pata por ella nos van a salir los 5 V ese voltaje de 5 V lo conectamos a la alimentación del pic que va por la pata 14 la pata 4 la conectamos a positivo a través de una resistencia de 10 K el reloj lo vamos a obtener a través de un oscilador de cristal de 4 mhz el cual conectamos entre pata 16 y 15 y de ella salimos hacia tierra o negativo con dos condensadores de lenteja de 22 picofaradios después de esto Salimos por el puerto B del pic que

[01:15] está numerado desde el bit 0 hasta el bit 7 Esas son las ocho salidas del puerto B de este pique aquí tenemos nuestro cubo o torre de Led como podemos ver hay cuatro led por cada piso si no lo han visto tienen que ver el video de cómo se ensamblaron los led Aquí les que queda el enlace igual en la descripción del video luego vemos el video de cómo programar el pic y el anterior fue de cómo quemarlo utilizando el Flow code y el pck kit 2 de cada piso lo que hacemos Es unificar los negativos de los led y

[01:44] salen por un cable en este caso es este blanco que se alcanza a ver acá y lo vamos a conectar a través de un transistor 2n 2222a todos los transistores que vamos a utilizar son de esa Referencia 2n 2222a para que cuando nos salga un positivo por este bit del puerto pasa a través de la resistencia de 10 koh permite que conduzca el transistor y me deja ver la tierra a ese piso lo mismo ocurre para cada uno de ellos así que si yo envío otro pulso por el bit 3 que sale por la pata

[02:16] 9 pasa por esta resistencia de 10 koh nos permite que conduzca este transistor y con una conexión a 12 V son conexiones a positivo a 12 V no a los cinco pasa por una resistencia de 500 Oh que es la resistencia limitadora de los led y me va a aplicar voltaje positivo a todos estos cuatro led pero como el único que tiene tierra el único que está activado con este transistor para poder ver la tierra o negativo es este se nos hace efectiva la matriz o multiplexación y solo nos va a encender un esta Va a ser

[02:46] la forma de cablear inicialmente instalamos nuestro regulador de voltaje que nos va a dar los 5 V para que no se nos queme el p la pata izquierda o la uno la conectamos a nuestro positivo de donde vienen los 12 V la del centro va negativo y la de la derecha o número tres es la que nos va a sacar los 5 V de la cual vamos a alimentar nuestro pic instalamos ahora nuestro pic los 5 V los conectamos a la pata 14 la pata 4 que es el reset la conectamos también directamente los 5 V ahora vamos a

[03:10] conectar nuestro reloj utilizamos un un oscilador de 4 mhz que se conectan entre patas 15 16 y a su vez de las patas 15 y 16 salimos con condensadores de 22 picofaradios hacia el negativo y la conexión a tierra se hace a través de la pata cco se nos había olvidado dibujarla el cinco lo conectamos a negativo o tierra Esas son las conexiones que hay que hacer para que funcione nuestro pic y lo que nos falta es cablear las salidas hacia nuestro cubo son ocho salidas entonces conectamos inicialmente

[03:39] los cuatro transistores que van a ir conectados a cada uno de los cuatro pisos aquí están puestos los cuatro transistores y todas las patas del lado izquierdo que es el emisor deben ir conectados a negativo o tierra las del centro van con una resistencia de 10 k al puerto y la del lado derecho que es el colector es la que va a ir conectado al cubo led así nos queda conectado nuestro primer trans resor resistencia de 10 koh saliendo de la pata 13 hacia la base que es la del centro la de la

[04:06] izquierda que es el emisor sale hacia negativo tierra y la de la derecha nos queda lista para ir hacia el cubo lo mismo hacemos con los otros cuatro transistores pero saliendo de la pata 12 11 y de la 10 así ya nos quedan cableados los de los primeros cuatro pisos piso 4 3 2 y un conexiones a tierra y a la base a través de una resistencia de 10 koh a la salida de los puertos ya tenemos l libre nuestros colectores para ir hacia el cubo led ahora vamos con los cuatro que nos indican qué led va a encender que salen

[04:36] de estos cuatro puertos de acá estos otros cuatro que dentro de la matriz me indican qué led va a encender no me van a llevar como los anteriores el negativo sino van a estar conectados para llevar el positivo los 12 V Así que el colector es el que va conectado a los 12 V a través de resistencia de 500 Oh y por el emisor que es la pata de la izquierda es la que vamos a dejar libre para salir hacia el cubo led aquí ya conectamos todas las salidas de los puertos a través de resistencias de 10k a las

[05:02] bases de los cuatro transistores ahora vamos a conectar del colector hacia el positivo de 12 V con resistencia de 500 ohos a medio W no tenía resistencia de 500 ohos utilicé esta de 330 no puedo dejar funcionando mucho tiempo el circuito porque se me van a calentar insten ustedes de 500 os medio wti para que les soporte más y ya nos queda disponible la salida de la pata izquierda de los cuatro para ir a conectarnos al cubo led instalamos nuestro cubo led ya queda conectado nuestro protobar recuerde que estos son

[05:29] los los cuatro positivos y aquí están saliendo los cuatro negativos que vienen de cada uno de los pisos ahora procedemos a conectarlo hacia los transistores el piso 4 salimos del colector del transistor conectado a la pata 13 hacia el piso 4 luego conectamos el piso 3 piso dos Y finalmente piso uno con los cables amarillo azul rojo y verde ahora vamos a conectar los positivos que van a cada led escogemos este como el primer led y lo conectamos con el amarillo con la segunda hilera de

[06:08] Led tercera serie de Led Y por último la cuarta ya nos quedó conectada de esta forma amarillo azul rojo y verde conectado a los transistores que van a la salida del pique nos falta conectar nuestros 12 V como estamos sacando voltaje del bus inferior y el bus superior debemos unificarlo Así que debemos llevar positivo del bus de arriba al bus de abajo y De igual forma el negativo Ya solo me queda pendiente conectar la fuente de alimentación de 12 V Así que conectamos el negativo y el

[06:41] positivo recuerden apoyar los videos del profe García dando manita arriba dando me gusta aprovechen para suscribirse a mi canal si no lo han hecho pueden seguirme también por Twitter Facebook o Instagram y nos vemos el próximo miércoles con un nuevo video si yo quiero conectar otro cubo de Led no es sino conectarlo en paralelo a las mismas posiciones que como tenemos transistores que nos amplifican la corriente podemos manejar dos tres cuatro cubos de Led sin ningún problema

[07:20] [Música]
