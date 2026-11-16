# CREA TU ALEXA POR $10 USD CON ESP32 Y DEEPSEEK HARNESS

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=r6S6w5H6FSE)
- **Canal**: Programador Novato
- **Publicado**: 2026-09-03
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 23:19

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Una voz puede convertirse en una orden, una orden puede viajar por la red y una pequeña placa electrónica puede convertirla en luz, movimiento y sonido. Ahora podemos tener nuestra propia Alexa por 10 dólares, un asistente de voz construido por nosotros mismos, capaz de escuchar nuestras palabras, comprender nuestras instrucciones, controlar dispositivos dentro de nuestra casa.

[00:29] Esto lo vamos a hacer con un SP32, un micrófono, unos componentes muy económicos y construiremos un sistema con inteligencia artificial, robótica e Internet de las cosas para transformar nuestra voz en acciones. Cuando hablemos, el SP32 capturará nuestra voz, enviará el audio a la computadora, ahí Whisper convertirá ese audio en palabras y DeepSpeech Harness interpretará lo que queremos [música] hacer. Finalmente, la instrucción regresará al SP32 y será convertida en una acción dentro de

[01:06] nuestra casa. Podremos pedirle que encienda la luz, abra una puerta o consulte el nivel de agua de nuestro contenedor, todo esto utilizando nuestra voz, como si estuviéramos hablando con un asistente comercial, simplemente que este va a ser construido por nosotros mismos y adaptado a nuestras necesidades. La misma tecnología puede utilizarse para crear robots, sistemas de seguridad, talleres inteligentes, dispositivos de [música] asistencia o cosas complejas controladas mediante

[01:39] inteligencia artificial. Así que acompáñenme hasta el final porque hoy no solamente conectaremos algunos componentes, construiremos un dispositivo capaz de escuchar nuestra voz, comprender nuestras palabras y actuar sobre el mundo real. Hoy vamos a crear nuestra propia Alexa con inteligencia artificial y por solo 10 [música] dólares. Así que vámonos a ello. Lo primero que vamos a hacer es armar nuestro SP32 con los diferentes elementos. Para eso te voy a dejar el diagrama aquí en esta

[02:14] URL que se llama, bueno, en esta plataforma que se llama Wokwi. Para esto, pues simplemente voy a dar clic aquí en mi perfil. Para esto, pues vas a tener que estar registrado. Damos clic en Mis proyectos, Nuevo proyecto.

[02:30] Volvemos a dar clic en el SP32 y va a trabajar con un código de Arduino. Una vez aquí, vamos a dar clic en el área de diagramas, pegamos este código que también te voy a dejar en la descripción del video y nos va a armar nuestro proyecto, nuestro SP32 con los diferentes dispositivos. Por acá tenemos un sensor de distancia que se va a encargar de medir la distancia en este caso de qué tan lejos está el agua, o sea, va a ver cuánto le hace falta al agua para llenar el tinaco o el contenedor de agua

[03:04] que tengamos. Por acá tenemos un LED que simula un foco. Por aquí tenemos un servomotor que nos puede servir para abrir o cerrar la puerta o abrir y cerrar el grifo del agua para llenar nuestro tinaco. Y por acá tenemos un un simulador, bueno, este es un eh tensiómetro, pero eh como en Wokwi no existe el micrófono KY-037, pues este tensiómetro aquí en Wokwi lo está simulando, pero en tu caso tú vas a a tener a comprar un KY-037.

[03:39] Eh y por acá tenemos un pulsador que lo que hace es que es un botón que nos va a servir para hablar a través de nuestro micrófono. Las instrucciones van a viajar desde nuestro SP32, o sea, el audio va a viajar desde el SP32 hacia nuestro Deep Sleep Harness y Deep Sleep Harness va a tomar la decisión dependiendo de lo que le pidamos. Si yo le pido que encienda la luz, va a encender la luz. Si le pido que abra el grifo de agua, va a abrir el grifo de agua. O si le pido que me diga

[04:11] qué tan lleno está mi contenedor de agua, pues va a decirme qué tan lleno está dependiendo de la distancia que encuentre aquí. Y listo. Ah, también te voy a dejar el código de eh punto ino, que es por acá. En realidad es un eh es un código en C o C++ no sé exactamente.

[04:34] Eh te los voy a dejar igual en la descripción del video. De hecho, los tengo por acá. Voy a copiar y los voy a pegar de una vez, ¿okay? Y listo. Ahora, lo que voy a hacer es que voy a abrir mi Arduino para comenzar a trabajar. Dentro de Arduino vamos a hacer las siguientes configuraciones.

[04:58] En primer lugar, vamos a conectar nuestro SP32 ya completamente armado que tengo aquí. Lo conectamos y nos tiene que mostrar por acá el puerto. De hecho, eh yo nada más tengo un solo Arduino conectado, así que me va a decir que está en el puerto.

[05:18] En mi caso es el cuatro, en tu caso vas a seleccionar el puerto que tengas ahí. Por otro lado, vamos a seleccionar el tipo de SP32. Bueno, primero, primero vamos a cargar las librerías de SP32 aquí en Archivo, Preferencias y vamos a colocar esta URL que te voy a dejar también en la descripción del video. Le damos clic en okay y va a cargar ahí algunos archivos. Y además, aquí en el área de librerías vamos a buscar una librería llamada SP32 servo. [música] Este lo vamos a instalar

[05:53] aquí y listo, es todo lo que necesitamos. Y ahora sí, pegamos nuestro código. Bueno, bueno, mejor dicho, en este ya una vez que tengamos todas las librerías, vamos a eh conectar nuestro SP32 a nuestra computadora. Una vez que esté conectado, ahora sí, [música] cargamos el código que te voy a dejar en la descripción del video. Este es el código en C. Eh, lo cargamos y por acá vamos a colocarle el nombre de nuestra red Wi-Fi. Además, vamos a colocarle la contraseña de nuestra red Wi-Fi y

[06:31] finalmente vamos a obtener eh la IP de la máquina en donde tenemos nuestra inteligencia artificial. En este caso va a ser Deep Sleep Harness. Para esto, vamos a abrir un, bueno, para obtener esa IP, simplemente abrimos Power Shell y vamos a escribir IP config y vamos a buscar esta IP que está acá, dirección de IPV4.

[07:02] Esta la copiamos y la vamos a colocar aquí. Vamos a dejar el puerto, que es el 5000 y listo, es todo lo que tenemos que hacer. Vamos a subir el código dando clic aquí en upload. Y listo, ya se su, ya se subió el código y ahora algo importante, vamos a dar clic en esta lupa y me está diciendo que no se ha podido medir la distancia. Ahí está. Ahí está, ya está midiendo la distancia, pero algo que nos interesa es saber la IP de nuestro ESP32.

[07:39] Esta es la IP de nuestra computadora, en donde vamos a tener nuestro Deep Sleep Harness, pero como te digo, necesitamos la IP de el ESP32. Para esto hay dos formas de obtenerla. Una es dando, presionando los botones que tenemos aquí para resetear, o lo podríamos desconectar y ahora lo que voy a hacer es que voy a borrar aquí esto y la vamos a volver a conectar para resetearla y nos tiene que mostrar ahí la IP del ESP32. Ahí se está conectando a nuestra red y listo. La IP es esta de

[08:22] aquí, ¿okay? Eh, la guardamos en alguna parte porque la vamos a ocupar más adelante, ¿okay? Ahora vamos a crear nuestro servidor en Python para poder leer el audio que le mandamos desde nuestro ESP32 hacia nuestra máquina.

[08:42] Para esto vamos a abrir PowerShell y vamos a ejecutar este comando que lo que hace es que instala Python 3.11. Es importante que sea la versión 3.11 porque es la que [música] tiene las librerías para poder escuchar y transcribir el audio que le estamos mandando. Una vez hecho esto vamos a crear la siguiente carpeta, si no la, bueno, en este caso me estoy moviendo hacia esa carpeta pero en tu caso te vas a ir aquí al no, a tu nombre de usuario si no la tienes, obviamente no la vas a tener, vas a

[09:22] crear esta carpeta. Una vez en esa carpeta vamos a eh, inicializar nuestro Python 3.11. Vamos a crear un entorno para trabajar con con esta versión. En caso de que tú tengas otras versiones de Python, no pasa nada, eh se van a respetar tus tus otras versiones de Python y nada más en esta carpeta se va a trabajar con esa eh con esa versión de Python, que es la 3.11.

[09:53] Ejecutamos este comando, que lo que va a hacer es limpiar eh otras versiones de Python en esta carpeta y con esto activamos nuestro environment de Python. De hecho, aquí nos está diciendo que está trabajando con venv y finalmente vamos a instalar algunas librerías. Primero vamos a actualizar nuestro pip install.

[10:20] Lo actualizamos y seguido de esto, como te digo, vamos a instalar las librerías para que Python pueda leer eh bueno, pueda escuchar y transcribir el audio que le mandamos. Listo, ahora vamos a crear el siguiente archivo en Notepad con con este comando.

[10:42] Nos va a abrir un bloc de notas y nos va a decir que el archivo no se encuentra, que si lo queremos crear, le decimos que sí y le vamos a pegar el siguiente código en Python. Eh por acá eh vamos a colocarle la IP de nuestro ESP32.

[11:04] Si mal no recuerdas, es esta IP [música] de aquí. Esta la copiamos y la sustituimos por esta IP que está acá. Ahí está. Una vez hecho esto, ya es todo lo que tenemos que hacer. Guardamos el archivo. Ahí está. Y lo guardamos en la ruta que acabamos en la carpeta que acabamos de crear con el con el nombre que te que te dije. Y listo, ya una vez guardado, vamos a proceder a ejecutarlo con con Python.

[11:45] Eh, de hecho, si no, este, tienes que cerciorarte de estar en la versión, este, 11 con Py- Python guion version. Y ahí está, Python 3.11.9. Ya después de la punto 11 ya no importa qué otro número tenga. Ejecutamos nuestro Whisper, Whisper en español es el escuchador. [música] Ahora te comento una cosa, nuestro, eh, nuestro Arduino ya acabo de hacer su trabajo, ya subió el código, ya nos entregó la IP de nuestro ESP32. Lo podemos cerrar, el, si quieres lo guardas, si no, no.

[12:32] Bueno, de preferencia sí, guárdalo. Pero, eh, ya el código ya está aquí en nuestro ESP32. De hecho, incluso lo podemos desconectar. Lo desconectamos. Y en mi caso, yo lo voy a tener aquí cargando, bueno, lo voy a entregar la energía desde una power power bank que tengo aquí.

[12:56] Este, eso significa que mi circuito ya va a ser, eh, portátil, ya me lo voy a poder llevar a cualquier parte, siempre y cuando reciba señal del Wi-Fi. Lo voy a conectar. Ahí está. Encendido. Eh, aquí está mi micrófono. Eh, todos los elementos, por acá está el pulsador y ya está todo casi listo. Ahora el siguiente paso sería eh hacer una pequeña prueba, probar que esté recibiendo audio, ¿okay?

[13:38] Todavía no vamos a trabajar con el ESP con eh perdón, con la inteligencia artificial de Deep Sleep Harness. Lo que vamos a hacer ahora es que voy a hacer lo siguiente, voy a presionar el botón de este del micrófono. Ah, te comento, por las capacidades de este ESP32, solamente podemos mandar instrucciones que no tarden más de 2 segundos. Si quieres mandar instrucciones que tarden más de 2 segundos, tendrías que comprarte un ESP32 más potente, que podría ser el S3 o algún otro ESP más

[14:18] potente. Ahí ahí buscan en internet cuál es más potente que este [música] PS este ESP, pero bueno, este es el más económico. Ahora, como te digo, voy a presionar mi pulsador y voy a hablar fuerte por el micrófono, pero el micrófono del del de aquí que del del KY-037.

[14:37] Hola. Mira, ahí dice transcribiendo audios. Presioné Mientras presioné el botón, el pulsador, hablé por el micrófono y ya se envió, dice enviando texto a DHS. De hecho, ya va a empezar a trabajar, ¿eh? [música] Yo ya tengo mi DH DSH, perdón, ya tengo el DSH instalado, así que en este momento el DSH va a recibir la instrucción y me va a escribir alguna cosa, me va a contestar eh igual con un hola. De hecho, aquí en el eh en el archivo servidor_whisper.python, aquí estoy colocándole el prompt

[15:20] y aquí le estoy diciendo que en instrucciones que tiene que realizar el Deep Sleep Harness es interpretar la orden exacta y escribe al final, devuelve solamente Jason válido sin markdown ni explicación con el siguiente formato, la acción, la confirmación y va a mandar abrir válvula, cerrar válvula, apagar LED, consultar estado. Eh, si puedes devolver varias acciones, si ninguna corresponde devuelve acción como lista vacía. Y vamos a ver qué me ha contestado. Me dice respuesta, no se

[15:52] recomienda, no se reconoce ninguna acción válida en la orden. De Deep Sleep Harness no encontró acción para el SP 32. Eh, de hecho en este momento yo ya podría comenzar a a trabajar en Deep Sleep Harness, pero te voy a enseñar rápidamente cómo instalar Deep Sleep Harness por si no lo sabes, que de hecho es un proceso extremadamente sencillo.

[16:15] Lo que voy a hacer es que voy a presionar control C para detener el el Whisper. Y vamos a ir a esta URL que te voy a dejar en la descripción del video. Copiamos este comando de aquí. Y en primer lugar tenemos que descargar e instalar eh Node.js, ¿okay? Si eh para instalar Node.js simplemente vamos a ir a esta página web nodejs.org download.

[16:43] Y lo des descargamos la versión para Windows, en PowerShell simplemente escribimos node doble guión version para ver si ya está instalado o no, si no está instalado, como te digo lo descargamos y lo instalamos. Una vez que esté instalado Node.js, como te digo ejecutamos [música] este comando.

[17:06] Ahí está, y se tiene que proceder a instalar Deep Sleep Harness, así de fácil. Y ahí en la descripción del video te voy a dejar un link en donde [música] te explico cómo colocar la inteligencia artificial y si requieres también le puedes colocar algún agente en particular que no es tan necesario porque aquí ya le estamos diciendo cuál va a ser el el prompt. Eh, ya una vez que esté instalado Deep Speech Harness ahora sí vamos a proceder a comunicarnos con eh eh con nuestro Whisper.

[17:42] De hecho, en este caso voy a esperar a que a que corra. Ya una vez que haya corrido lo detengo y voy a ejecutar de nuevo este comando que con Python corremos nuestro archivo Python que es eh servidor Whisper. Doy enter, esperamos un momento y ahora voy a eh mandarle un comando muy sencillo.

[18:10] Voy a presionar el Bueno, por acá tengo el micrófono. Eh, voy a presionar el pulsador. Ya ya no sé cómo hacerle. Ahí está. Voy a presionar el pulsador y le voy a decir enciende la luz. Híjole, se me se me barrió y lo presioné. Ah, sí, sí lo escuchó. Es que lo presioné rápidamente sin querer, se me lo prendí y lo apagué sin querer, pero mira, ahí está.

[18:38] Este, ahorita lo que está haciendo es que acaba de mandar la orden hacia nuestra computadora eh de la computadora acaba de llegar hacia Deep Speech Harness con la inteligencia artificial de Deep Speech. También en la descripción del video te voy a dejar un link cómo le puedes colocar inteligencias artificiales gratuitas a tu Deep Speech Harness y mira, ya encendió el foco. Ahora voy a a presionarle, le voy a decir apaga la luz.

[19:10] Lo suelto, si te das cuenta ella acaba de decir que lo está transcribiendo, acaba de recibir el comando apaga la luz, de igual forma Tipsy Hermes está reconociendo eh cuál fue la instrucción que le di y en unos dos o tres segundos más va a apagar la luz, esperamos un momento, ahora voy a detener el vídeo porque estoy ya, ahí está, ya apagó la luz, uy, creo que no, se apagó la luz porque le moví aquí, ahí está. Bueno, ya apagó, ya está apagada la luz y de igual forma le puedo decir que abra la abra la

[19:51] válvula del agua, este para esto va a mover el servomotor. Abre la válvula. A ver si lo hace porque si abre la válvula, ya está, a ver si lo hace porque apreté, ahí está, sí se, sí se movió y listo, ahora le voy a preguntar eh a ver ¿Qué tan lleno está el agua?

[20:20] De hecho tenía que haberle dicho qué tan lleno está el agua, sí lo entendió, sí lo va a entender, de hecho la idea era qué tan lleno está el tinaco, pero bueno, en este en este momento va a detectar la distancia de mi de mi DHS este, perdón, de mi sensor de distancia ultrasónico y me va a decir qué tanta agua tengo en el tinaco, también podríamos utilizarlo para otras cosas, para ver qué tan lejos está, yo qué sé, cualquier cosa, ¿no? Pero ahí está, mira, ahí está DHS no encontrado, mmm,

[20:54] abrir válvula, cerrar válvula, bueno, creo que sería Dame toda la información. Ahora te comento otra cosa, este, tienes que, este micrófono es un poquito, es muy económico, lo encuentras eh por uno o dos dólares, dos dólares más o menos. Y te tienes que acercar y gritarle, ¿okay? Eh ese es el inconveniente, de hecho este dispositivo lo podrías tener armado, conectado en una cajita y cerca de de ti el el micrófono, nomás aprietas el botón, mandas la instrucción y y listo. Este,

[21:32] ahí está toda la información. Mira, ahí estaba, dice que la distancia en centímetros es de 28 cm, más o menos está a un 72% eh lleno, la válvula está abierta y está abierta y el LED está apagado. [música] Ahí está. Ahí está todo por aproximadamente este dispositivo eh con el ESP32, todo cuesta como unos cinco, seis, máximo siete dólares. Si le quieres quitar algunos elementos o son, simplemente quieres dejar un LED para para probarlo, pues te saldría en cinco dólares todo el, seis, siete dólares

[22:12] todo el dispositivo. No te recomiendo que trabajes con el SP8266, porque ese eh eh el 8266 no tiene suficiente memoria. Eh incluso ahí en el código tengo, en el código de de de mi SP32, el código punto ino, hay algunas cosillas que le tuve que ahí estar ajustando en los tiempos y lo dejé que solamente escuche dos segundos, porque más segundos lo que ocurre es que este me comienza a fallar la comienza a fallar el el, ya no escucha después de dos segundos por la capacidad que tiene.

[22:56] Y bueno, esto ha sido todo, espero que te haya gustado este tener tu propia Alexa, crear tu propia Alexa es un excelente proyecto para la escuela, incluso eh puedes hacer muchas cosas más aparte de un simple Alexa. Y bueno, eso ha sido todo. Muchas gracias. Ahí abajo hay un botoncito que dice "Unirse a la comunidad de Programador Novato". Me ayudaría bastante si te unes.

[23:17] Muchas gracias. Hasta luego.
