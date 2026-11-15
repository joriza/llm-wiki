# Arduino Uno y TFT 2.2" SPI 240x320

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=L3uvcPo682k)
- **Canal**: ARDUINOLOVER
- **Publicado**: 2018-07-13
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:09

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hola amigos y bienvenidos a este vídeo en este vídeo veremos cómo trabajar con una pantalla de ft de 2.2 pulgadas este vídeo llega gracias a gillet code muy bien comencemos muy bien es la pantalla con la cual vamos a trabajar la pueden conseguir desde amazon de hewlett com es una pantalla de ft de 2.2 pulgadas compatible con varias plataformas efe rm peak etcétera debemos destacar aquí el controlador el controlador que utiliza esta pantalla es el 93 41 hay otra pantalla muy similar a ésta que

[00:42] tiene controlador y link 9340 en este caso podemos utilizar ambas pantallas tanto con el controlador 93 41 como con el controlador 93 40 debido a que la librería que vamos a emplear que es de la hada fluid es compatible para ambos controladores sin embargo solamente será en este caso en otros casos las librerías muchas veces son específicas para el tipo de controlador antes de pasar al diagrama de conexiones debemos de saber que esta pantalla t ft trabaja con niveles de tensión de 3.3

[01:19] voltios quiere decir que todos los pines de datos deben estar conectados a niveles lógicos de tensión de 3.3 voltios es por ello que el mejor dispositivo o el arduino más adecuado para trabajar con esta pantalla sería el arduino due que es uno de los arduino los más poderosos hasta el momento ya que éste arruino tuve tiene niveles de tensión por sus puertos de 3.3 voltios justo lo que necesitamos para esta pantalla de esta forma cuando conectaríamos directamente los pines de

[01:51] la ruina tuve con los pines de la pantalla por otro lado la tarjeta arruino due todavía sigue siendo una de las más caras otra opción muy interesante sería utilizar un arduino mini pro cuyos niveles de tensión son de 3.3 voltios indicados para nuestra pantalla de fp pero este arruina un mini pero como es tan pequeño no cuenta con puerto usb de programación solamente están los pines disponibles para ser conectados a otro dispositivo que si cuenta con este puerto usb es por ello que para el caso

[02:29] de la ruina mini pero necesitaríamos un dispositivo adicional o utilizar una tarjeta arruinó uno para cargar el programa al mini pro bueno cualquiera de estas opciones estaría más que bien en este caso utilizaremos una tarjeta arduino 1 en los niveles de tensión son de 5 voltios si tenemos que hacer un arreglo ya que nuestra pantalla nos obliga a utilizar niveles de tensión de 3.3 voltios para esto también hay dispositivos y circuitos integrados que van a bajar la tensión de 5 a 3.3 voltios en este caso

[03:11] lo haremos de la forma más económica posible que es la que podemos ver en las pantallas por medio de un divisor de tensión es por ello que podemos ver que los pines que salen del arduino no van directamente a nuestra pantalla de fp lo que hace es en primer lugar pasar por una resistencia de 470 luego el conectada en serio en la resistencia de un kilo mió luego conectado a genere muy bien entonces en medio de la resistencia de 470 y la resistencia de un quilombo sacamos la conexión para nuestra pantalla este

[03:52] diagrama estará en la descripción del vídeo podemos ver que en este punto de aquí vamos a tener los 5 voltios que nos vote a la ruina sin embargo en este punto de aquí por medio del divisor detención de estas dos resistencias tendremos los 3.3 voltios necesarios para nuestra pantalla de esta forma vamos a economizar tanto comprar un nuevo rubí no comprar una bueno caro o algún dispositivo adicional sólo tendremos que adquirir las resistencias de 471 kilos como les dije a un principio solamente conectaremos lo que

[04:27] son los pines de datos por ejemplo estos de aquí que son 6 1 2 3 4 5 6 los tenemos que conectar a lo que es el divisor retención los otros pines los tres restantes ya que aquí tenemos 9 pines que son bcc y el led los vamos a conectar a 3.3 voltios de la ruina el genere va directamente a genere muy bien estas conexiones están muy claras en el diagrama no tendrán ningún problema al momento de conectar las una vez que tengamos conectado nuestro arduino en nuestra pantalla de ft es

[05:04] momento de programarla en primer lugar debemos de descargar las librerías los links estarán en la descripción del vídeo la primera librería es esta de aquí la nada fue el link 9340 que también es compatible para la 93 41 damos clic aquí donde dice cloud and on lots y seleccionamos la opción de download ship le damos clic y automáticamente comenzará la descarga como ya lo descargue no lo volverá a descargar el segundo link que es la segunda librería también de la hada fluid gfx de igual

[05:40] forma long and on load download sip una vez que lo tengamos descargado en este caso son estas dos de aquí vamos a abrir un sketch que también estará en la descripción del vídeo que es nuestro es que es de testeo de prueba de esta pantalla este es que este es el mismo que está en la librería que hemos descargado sin embargo tiene algunas modificaciones el archivo original lo podemos encontrar aquí en la en el archivo comprimido adafruit y el 93 40 lo vamos a descomprimir abrimos ese archivo descomprimido vamos

[06:22] a examen post tenemos graphic test y este es el archivo que hemos utilizado sin embargo hemos hecho algunas modificaciones muy bien en este caso también este archivo test con las modificaciones estará en la descripción del vídeo antes de comenzar a cargar el programa sobre el programa siempre tenemos que agregar las librerías que hemos descargado para lo cual vamos a programa incluir librería añadir librerías y y aquí buscamos las dos librerías que hemos descargado en este caso los tengo

[06:54] en esta carpeta en el escritorio y vamos agregando una por una una vez hecho esto las dos librerías estarán agregadas muy bien vamos a ver de qué trata este sketch vamos a colocar esto en una mitad colocaremos estas conexiones en la otra en primer lugar tenemos las librerías que están incluidas aquí podemos ver las dos que hemos descargado la hada fluid gfx y la haga fluir y 9340 que también es compatible con la ila y 93 41 más abajo tenemos los pines que se utilizan en el caso que vamos a trabajar ahora

[07:30] que es el arduino uno no los cambiamos por ejemplo el pin del club debe estar conectado con el pin 13 de la ruina si revisamos las conexiones vemos que el pin 13 del arduino primero pasa por el divisor de tensión del medio de las dos resistencias va al indec lock otro ejemplo por ejemplo el re sets que debe estar conectado con el pin número 8 de igual forma el pin número 8 primero pasa por la resistencia de 470 y de en medio de las dos resistencias debe ir conectado al reset de nuestra tarjeta t

[08:06] efe y así de la misma forma con los demás piñas más abajo tenemos lo que es el boa setup muy bien en primer lugar comienza con lo que es la comunicación serial para mostrarlos lo que está realizando la pantalla en el monitor serial por aquí tenemos una línea muy importante que es el té ftv y por medio de esta línea arduino reconoce todas las funciones que vienen en la librería bueno de aquí en adelante lo que realiza la pantalla es mostrarnos colores figuras formas etcétera para ver que

[08:41] efectivamente grafica colores y diferentes formas vamos a bajar todo esto y llegamos a lo que es el boat loop aquí lo que hace arduino con la pantalla es mostrarnos un texto y rotar los textos en diferentes tamaños la función que muestra es el test text esa función la podemos encontrar más abajo que es esa de aquí un salón de sticks aquí lo que hace es mostrar textos de diferentes tamaños por ejemplo el g los word por ejemplo arduino lover que hemos cambiado de igual forma de ustedes para

[09:18] probar pueden cambiar y poner los textos que desean voy a en lo que vamos a hacer ahora será conectar nuestro arduino cargar este programa una vez conectado nuestro arduino vamos aquí a herramientas y aparecerá el con donde está conectado a nuestro arduino en este caso él con 6 en sus casos puede aparecer otro con el 3 el 4 etcétera una vez que verifiquemos que tiene el check que haya reconocido también debemos verificar que esté activa esta opción de arduino 1 ya que utilizamos la tarjeta

[09:51] win out luego de ello simplemente le damos a encargar y esperamos muy bien en este momento está cargando el programa y vemos que la pantalla sólo está energizada pero no display a nada estamos conectados con un aro y no uno por medio del divisor de tensión sino tendríamos que buscar otra manera bueno ya calor programa nos muestra en primer lugar unos recuadros de color ahora nos muestra un texto todos estos efectos que vamos a ver a continuación están dentro de la librería de estas de estas dos

[10:26] librerías que hemos descargado de la hada fue todos estos efectos son funciones de estas librerías vamos a ver que podemos utilizarlo tanto ahora como en nuestros siguientes proyectos hacer modificaciones tomarlas como ejemplo y hacer nuestras propias funciones de librería van a encontrar muchas más librerías pero esta es la que más se ha ajustado este tipo de pantalla de todas formas si buscan otras librerías deben tener en cuenta el tipo de controlador muchas gracias por ver el vídeo los

[10:56] invito a que se suscriban y por supuesto que dejen sus opiniones en la sección de comentarios si el vídeo ha sido de ayuda déjame un like y comparte nos vemos hasta el siguiente vídeo
