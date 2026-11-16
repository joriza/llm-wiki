# ✅ Que es un Reloj de Tiempo Real (RTC) como se usa?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=tYuSah73zxY)
- **Canal**: El profe García
- **Publicado**: 2017-06-28
- **Recopilado**: 2026-11-14
- **Idioma**: es-419 (subtítulos manuales es-419 (manual), transcripción literal)
- **Duración**: 14:43

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En el video de hoy vamos a aprender a utilizar un reloj de tiempo real (RTC) que nos suministra la fecha actualizada y la hora y se mantiene actualizada por alrededor de 2 años, sin importar que existan cortes de energía; por ejemplo aquí quito la energía, y yo vuelvo a conectar mi Arduino y vamos a notar que mantiene la fecha y la hora sin desactualizarse.

[00:22] Gracias a que el reloj de tiempo real tiene una batería interna que soporta entre 2 y 3 años. Esta es la base para proyectos muy grandes. Vamos a ver cómo funciona. Este es nuestro módulo donde está el reloj de tiempo real.

[00:40] Es muy utilizado en proyectos de cultivos para riego, alimentación de ganado, cuando necesito registrar la toma de datos asociados a una fecha y una hora, o como el proyecto que vamos a hacer más adelante el timbre de un colegio donde vamos a poder programar todo el horario de clases.

[00:56] Este módulo se comunica a través del protocolo I2C que es un protocolo muy utilizado para la conexión de hardware y tiene básicamente 3 señales obligatorias: señal de reloj, señal de datos y el GND, masa o tierra. Y opcionalmente VCC o 5 voltios, pero ese se puede hacer con fuentes externas.

[01:20] Que cada dispositivo de comunicación tenga su propia fuente. Para este caso vamos a conectar las 3 básicas más la fuente de alimentación, la del mismo Arduino. Vamos a conectar GND que es la misma masa, tierra. VCC, que son los 5 voltios.

[01:36] La señal de datos. Y la señal de reloj. Las otras 2 no las vamos a utilizar. ¿Cómo van las conexiones? El Arduino tiene 2 puestos especiales para el protocolo I2C. Normalmente no se identifican ya que no está escrito por ningún lado.

[01:53] Pero para poderse guiar como lo dice en el programa está el pin 12 digital el 13, GND, la referencia, y el que sigue es la señal de datos, y por último la señal de reloj. No está escrito porque no hay dónde colocarlo, pero esos 2 pines son. Esos pines vamos a llevarlos a través de 2 cables hasta nuestro reloj.

[02:17] Así como un punto de tierra y en este caso vamos a llevar también los 5 voltios. Pero podríamos utilizar 2 fuentes externas, una para el Arduino y otra para el reloj. Desde el pin del extremo que es la señal de reloj la traigo por este cable verde, viene por debajo del "protoboard", y viene al tercer pin de izquierda a derecha, que es "clock" también; que es también la señal de "clock"

[02:40] del reloj de tiempo real. Luego viene el cable amarillo que es el de datos. No me alcanzaba el cable en el "protoboard" así que hice un puente acá, pero llega al siguiente. que es la señal de datos del Arduino. Luego conectamos los 5 voltios, yo lo estoy llevando al "protoboard", al igual que el GND con este cable negro, o tierra, lo llevo al "protoboard"

[03:07] y del "protoboard" aquí en este cable negro lo saco y lo llevo al reloj y el rojo también del "protoboard" lo llevo hasta nuestro reloj de tiempo real. Adicionalmente si tienen un "display" porque lo quieren mostrar conéctenlo, va con protocolo I2C también utilizando este módulo conversor de I2C a LCD 2 x 16.

[03:32] Lo hago para optimizar los cables y los puertos. Este módulo requiere las mismas 4 conexiones: GND, VCC o 5 voltios, señal de datos y señal de reloj. Lo llevamos al Arduino y como lo dice en el programa vamos a conectar la señal de reloj que viene por el cable blanco, del módulo I2C que va al LCD la llevamos al Arduino al pin A5, al análogo 5, que está en el extremo derecho.

[04:05] La siguiente que es la señal de datos va al pin A4. Y buscamos un punto de conexión de tierra que es el azul (lo estoy conectando aquí al "protoboard") Y el otro que es uno violeta, es este, lo conecto al "protoboard" a los +5 voltios.

[04:22] Esas son todas la conexiones. Si ustedes no tienen el módulo LCD recuerden que para hacer la prueba podemos hacer solo la conexión del Arduino al RTC o reloj de tiempo real. Y vamos a poder desplegar la hora por el puerto serial del computador.

[04:40] Lo conectamos al computador que también sirve de alimentación Si se dan cuenta inicialmente viene programado con una hora que no es la correcta. Primero de enero del año 2000. Y la hora arranca en cero, cero, cero Así que debemos actualizar el módulo, lo primero que hay que hacer es actualizarlo.

[05:00] capturando la fecha y la hora del computador de su computador. Hay que colocarle una batería de 3 voltios, para que funcione, para que la mantenga, sino no es capaz de mantenerla por... sino por unos segundos. No olviden colocarle la pila.

[05:16] Debe tener una pila de 3 voltios para que le logre mantener la fecha que le coloquemos por lo menos por unos 2 o 3 años, que es lo que le dura la batería, ya que el integrado del reloj de tiempo real es de bajo consumo, les va a durar mucho la batería.

[05:31] ¿Cómo actualizamos la hora? Deben descargar el programa de prueba Se los dejo ahí en mi página elprofegarcia.com Entran a la zona de descargas y en descargas buscan el programa de prueba del reloj de tiempo real. Lo copian por completo ya que allí está en texto; tienen que copiarlo acá y lo pegan.

[05:52] La página está lenta, dura más de 10 segundos en abrir. Saben que siempre he tenido ese problema. Y vamos a analizar el programa. El programa se llama «Prueba de reloj de tiempo real (RTC) y Módulo I2C para LCD 2 x 16» Las conexiones como ya las vimos va: entre el I2C del LCD al Arduino va señal de clock al puerto A5 análogo, señal de datos al puerto A4 análogo.

[06:24] El VCC a 5 voltios y el GND con GND. Ahora las conexiones entre el RTC y el Arduino UNO van: unificación de GND o tierras, VCC con 5 voltios, señal de reloj con señal de reloj del Arduino que se vio que es en la parte extrema del Arduino que no viene registrado o escrito.

[06:48] Y señal de datos con señal de datos. Y especifica que estos dos últimos pines son los que están después del 12, 13, GND, señal de referencia y ahí vienen señal de datos y señal de reloj Este programa se debe cargar dos veces: la primera con la línea 9, que es esta de acá.

[07:14] Y la segunda vez sin esa línea. O se puede borrar la línea, pero lo que yo les recomiendo es que la coloquen como, como un comentario no es sino que le coloquen dividido, dividido y ahí les queda como un comentario, es como si la quitaran.

[07:28] Pero la primera vez se debe cargar esa línea Ya vamos a ver qué hace. Inicialmente llamo la librería «Wire» Esa viene por defecto. Esta librería no viene, que es la librería del reloj de tiempo real, «RTClib». ¿Cómo hago para instalarla por primera vez?

[07:49] Me vengo a "Programa", "Incluir Librería", "Gestionar Librerías", y la busco. Se llama RTC lib Aquí está. Yo no la puedo volver a instalar porque ya la tengo instalada, pero ustedes le dicen Instalar. y ahí ya les queda instalada la librería del Reloj de tiempo real.

[08:19] Igual forma si no tienen la siguiente librería que es para el I2C del cristal líquido, la buscan y la instalan de la misma forma. Y van y le hacen la instalación. Luego inicializamos la librería para el cristal líquido, para el I2C.

[08:39] Deben colocarle este 0x27 y que es de 16 por 2 que es el número de filas y columnas del cristal. Y a nuestro reloj de tiempo real le colocamos un nombre, cualquiera. Yo le coloqué básicamente RTC. Pueden colocar el que ustedes quieran.

[09:00] Luego lo que hacemos en el "void" será es inicializar el puerto I2C, de esta forma. Inicializamos la comunicación RTC. Y vamos y la leemos del computador. Esta es la instrucción que debemos hacerlo para leerla del computador.

[09:20] Mandamos a cargar este programa y después la mandamos a cargar sin esta línea. Inicializamos el puerto serial. Ya que si ustedes no tienen la pantalla de cristal líquido pueden monitorearlo aquí a través del puerto serial.

[09:36] Van a poder monitorear por acá. Y se dan cuenta esta es la hora desactualizada porque todavía no lo hemos cargado la primera vez, estamos en el año dos mil. Primero de enero. Cero horas. Luego la pantalla la inicializamos.

[09:50] el LCD le colocamos luz de fondo y la blanqueamos, la clareamos. ¡Vamos por el "void loop"! Obtenemos del reloj de tiempo real la fecha actualizada, la de ahora, y empezamos a discriminarla. La vamos a empezar a enviar al puerto serial para poder verla aquí por el computador Y vamos discriminando para enviar el año, luego enviamos el mes.

[10:18] Lo vamos separando con el símbolo de dividido. Posteriormente vamos con el día, la hora, los minutos y los segundos. Eso es para que se vaya viendo de esta forma separado aquí por el símbolo de dividido, estos dos símbolos, y con los dos puntos vamos a separar la hora.

[10:39] Este es el formato que le quisimos dar. Luego lo hacemos nuevamente, otra vez, pero para el LCD. Como se dan cuenta aparece la D para mostrar la fecha, separada por símbolos de dividido. Viene año, mes, día. Ustedes pueden darle el formato que quieran, pueden utilizar año, día, mes.

[11:02] Luego viene la T para el tiempo. Horas, minutos y segundos. Dejamos que pase un segundo para que se esté actualizando cada segundo. Y nos vamos... y nos vamos la posición cero, cero para blanquear la pantalla, para que se desaparezca la hora cada segundo y vuelva y aparezca, tanto lo que está en la parte superior del LCD, que es la fecha, como lo que está en la parte inferior, que es la hora Vamos a hacer la prueba.

[11:36] Vamos a enviarle entonces la carga con la línea 9, que es la que vamos a capturar, la del computador Aquí en el computador tengo que es 24 de junio de 2017 y son las 11 y 25. Envío la carga. Está compilándola, la está subiendo.

[11:58] Ahí la terminó de subir. Como nos damos cuenta ya está actualizada. Ya está actualizada: 2017. Junio 24, 11 y 25. Y los segundos. ¿Por qué debo quitarle esta línea? ¿Por qué debo la segunda vez mandarlo... como un comentario?, o sea que se desaparezca.

[12:19] Porque sino cada vez que se apague el Arduino y se encienda va a intentar localizar la hora y si no está pegado a un computador nos puede presentar fallas, así que debo volver a enviarla sin esa línea que me captura la hora del computador.

[12:33] Vuelvo y se la envío. Nos damos cuenta que aquí no se modifica nada en el reloj, sigue igual, pero la próxima vez que yo lo arranque que le... que se vaya la alimentación, que... la próxima vez que arranque, que se vaya la alimentación no va a intentar capturar nuevamente la hora del computador, por eso se debe hacer solo una vez.

[12:53] Si no tienen el LCD, pueden verlo aquí desde el monitor serial. Y podemos ver que es exactamente la misma hora del computador, fecha y la que se está desplegando por el LCD. Esta es la forma de probar nuestro RTC, de que ya esté funcionando.

[13:08] En los próximos videos vamos a empezar a trabajar a obtener esta fecha y hora del reloj de tiempo real poder hacer comparaciones para tomar decisiones de activar puertos, relés o lo que yo quiera; válvulas, lo que yo desee hacer.

[13:23] O como el proyecto que vamos a hacer que es el timbre de un colegio. Ya vamos a poder quitar la alimentación por el tiempo que sea y cuando vuelva la alimentación sin importar la hora que sea o lo que haya pasado va a volver y el Arduino toma la hora del reloj de tiempo real que se mantiene actualizada con la batería y no vamos a perdernos en el tiempo.

[13:46] Espero este video haya sido de su agrado. Recuerden apoyar los videos del profe García dándole manito arriba. Doy mis agradecimientos a todos los que me ayudan en esta labor educativa y se vinculan haciendo parte de ella.

[13:58] En la descripción del video pueden encontrar las formas de hacerlo Pueden ser un patrocinador oficial a través de Patreon, pueden invitarme a tomar un café a través de PayPal o pueden ayudarme a subtitular los videos en otro idioma.

[14:10] Gracias por toda la ayuda y apoyo que recibo de ustedes.
