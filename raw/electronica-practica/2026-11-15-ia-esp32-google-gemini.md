# Inteligencia Artificial en ESP32: Conectando Google Gemini paso a paso

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IVtlDjU4wbs)
- **Canal**: Torelec
- **Publicado**: 2026-05-11
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:48

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] ¿Quieres aprender a conectar el ESP32 con la inteligencia artificial de Google Gemini? Quédate aquí en ese video que te lo enseñaremos. Hola electrónicos, ¿cómo están? Espero que bien. En ese video les vamos a enseñar a cómo conectar un ESP32 con la inteligencia artificial de Google Gemini.

[00:18] Para eso vamos a estar utilizando lo que es un ESP32 y una pantalla OLED para poder visualizar las respuestas. Lo primero que tenemos que hacer es dirigirnos a Gemini Studio. Gemini Studio. Y luego iniciamos sesión. Una vez iniciada sesión nos vamos a dirigir donde dice que API Key.

[00:45] Y nos va a dar esta interfaz. Damos al botón donde dice crear clave de API. Y vamos a colocar cualquier nombre. En ese caso le voy a poner ESP32. Acá ponemos esto como por defecto y creamos la nueva clave. A continuación nos va a dar lo que es lo que es la clave de la API Key. Esto no lo van a compartir con nadie, yo lo estoy compartiendo porque luego la voy a borrar. Nos da el nombre que acabamos de colocar, el nombre del proyecto. Y también una una guía de cómo más o menos

[01:18] se hace la solicitud a esta API. Si nosotros la copiamos solamente para eh indagar sobre cómo funciona esto, yo acá hago una prueba con Postman, que es un software que nos permite hacer solicitudes web. Simplemente voy a pegar.

[01:36] Y automáticamente nos tira lo que es la solicitud. Pero antes de eso vamos a ver lo que es la nueva documentación, porque hay una antigua documentación, la cual nos dice que el modelo eh más nuevo, digámoslo así, pero para nosotros no nos sirve porque estamos utilizando, digamos que la parte free, la parte gratuita de de esta API.

[01:59] Entonces, para eso vamos a estar indagando sobre la documentación, nos vamos acá donde dice guía de inicio rápido y vamos a buscar los modelos más económicos, los más sencillos. Nos vamos a todos los modelos. Bajamos un poco, acá tenemos los mejores modelos de mejor motor de inteligencia.

[02:24] Pero a nosotros nos interesa este que dice Gemini 2.5 Flash Lite. Entonces, acá copiamos lo que es el código del modelo. Y lo vamos a pegar acá. Vamos a reemplazar el Gemini Flash Lite este por el modelo 2.5 Flash Lite. ¿Listo?

[02:46] Entonces, en los header tenemos lo que es la API key que acabamos de generar y en el body vamos simplemente a enviar la palabra. Vamos a escribir acá un hola. Hola. ¿Listo? Vamos a enviar, vamos a hacer una solicitud de tipo eh será post, vamos a enviar la post.

[03:11] Acabamos de enviar la solicitud de tipo post y exitosamente tenemos ahora sí una respuesta. Hola, ¿en qué puedo ayudarte hoy? Excelente. Entonces, la idea de eso es entender más o menos cómo funciona la API y los modelos. Sabemos que con el ejemplo que nos da la API literalmente busca el último modelo, el mejor modelo, pero nosotros estaremos trabajando con la versión gratuita. Por eso estaremos utilizando lo que es este modelo eh Gemini 2.5 Flash Lite que para nosotros es el con que el que consume

[03:45] literalmente menos token. Entonces, ya sabemos más o menos la diferencia de modelos. Para el primer ejemplo, con el ESP32 les estaré dejando este código llamado API serial. Entonces, para explicarlo un poco, lo primero que tienen que hacer es instalar estas librerías que vemos a continuación.

[04:03] Una de las más importantes es esta, HTTP client. Simplemente le vamos a copiar el nombre y vamos a estos libritos y lo vamos a pegar acá. ¿Listo? Entonces, vamos a estar buscando esta librería que yo la tengo instalada llamada HTTP client de Adrian Mac Ewen. ¿Okay? La vamos a instalar. ¿Qué otra librería vamos a instalar? Es esta llamada Arduino JSON.h.

[04:29] Simplemente copiamos también el nombre, le damos acá al campo, enter y buscamos. ¿Cuál vamos a instalar? Esa que dice Arduino JSON de Benoit Blanchon. ¿Listo? Una vez hecho esto, vamos a seguir explicando lo que son las credenciales.

[04:49] Tenemos lo que es el nombre de la red Wi-Fi a la cual se va a conectar el SP32. Tenemos la contraseña de la red Wi-Fi. Vamos a pegar acá lo que es la nueva API key que acabamos de generar. Y una cosa muy importante, cambiar el modelo, que es lo que hemos aprendido a continuación. Entonces, ya sabemos que el modelo que vamos a estar utilizando es flashlight, que es el que menos consume token.

[05:11] Entonces, simplemente copiamos de nuevo el código y lo vamos a pegar acá. Listo. Tenemos serial begin a 115,200. Entonces, lo importante de este código es que vamos a escribir por serial la pregunta. Es el primer código para demostración de que sí funciona con un SP32. Entonces, todo lo que escribamos por el monitor serial va a estar guardado en la variable pregunta.

[05:41] Si lo que escribimos es de longitud mayor a cero, simplemente nos va a demostrar acá qué está preguntando. Entonces, aquí más abajo tenemos la estructura de más o menos la solicitud y nos dice acá más abajo si la respuesta, tenemos una respuesta, parceamos la respuesta. Entonces, eh acá en el serial print esta, vamos a lo que es imprimir la respuesta en el monitor serie, acá en el monitor serie, nos va a decir Gemini más el texto que parceamos del JSON de respuesta. ¿Listo? Sin más que decirles,

[06:21] simplemente vamos a herramienta, vamos a placa, vamos a elegir la placa que estamos utilizando, en este caso el ESP32 dev module, vamos al puerto, puerto con tres, el que a ustedes por defecto le asigna el computador y cargamos el código.

[06:47] Una vez cargado nuestro código, simplemente le vamos a dar el botón reset del ESP32 y si escribimos todo bien acá arriba lo que son las credenciales, el nombre de la red Wi-Fi exactamente, la contraseña y la API key que acabamos de crear más el modelo de búsqueda que lo cambiamos, nos va a decir acá abajo conectado, escribe tu pregunta.

[07:09] Entonces, voy a borrar acá un momentico la línea y voy a escribir hola. Preguntando y dice, "Hola, ¿en qué puedo ayudarte hoy?" [ovación] Excelente, muchachos, tenemos una comunicación con la API y el ESP32. Entonces, vamos a hacerle otra pregunta.

[07:30] ¿Cuánto equivale la velocidad de la luz? A ver qué nos responde. Preguntando de nuevo y bueno, aquí la respuesta sí es bastante larga. La velocidad de la luz en el vacío es una constante fundamental en física y su valor exacto es 299 millones 792.458 m/s. Okay, la respuesta es bastante larga, la verdad. Pero es excelente para un modelo bastante liviano donde no consume varios tokens y ideal para la versión gratuita y pongo entre paréntesis versión gratuita porque ustedes me preguntarán, los que han

[08:11] seguido mis videos, que yo había subido eh la comunicación del SP32 con otro, digamos, otra inteligencia artificial, que es eh Open AI. Allá era obligatorio eh recargar $5 mínimo para comprar algunos tokens. La ventaja de Gemini es que es gratuito 100%, simplemente ahí lo que hay que tener es una cuenta de Google, iniciar sesión y generar la API key. No te cobra un una recarga inicial como para utilizar la API. Entonces, eso es lo que lo hace especial y por eso decidí subir un nuevo video a

[08:47] partir de esto. Entonces, una vez hecho eso, para hacer una prueba un poco mejor, vamos a mostrar ahora lo que son las respuestas en una pantallita OLED. Acá tenemos lo que es la pantallita OLED, esta es de 0.96 pulgadas.

[09:04] Eh la conexión es sencilla, simplemente es esta conexión que vemos acá. Tiene cuatro pines, es por comunicación I2C. El pin de 3.3 va a VDD, el pin de GND a GND, SCK va al pin 22 del SP32 y SDA al pin 21 del SP32. Listo, el próximo código que les dejaré será este llamado API serial OLED, se lo dejaré en la descripción del video. Vamos a necesitar otras librerías para la pantallita. En este caso vamos a necesitar Adafruit SSD1306, copiamos, vamos a los libritos de gestor de biblioteca, pegamos, vamos a instalar

[09:44] esta Adafruit SSD1306 de Adafruit, simplemente lo instalan y listo. Necesitamos las mismas credenciales, acá tenemos configuración de pantalla OLED, depende la que estemos utilizando, yo utilizaré esta de tamaño de 0.96 y 128 píxeles por 64.

[10:04] Necesitamos credenciales, lo que es el SSID, la clave de la red, la API key, si la perdieron la pueden conseguir acá, en esas donde dice copiar clave de API. Simplemente la copiamos, la pegamos acá. A ver, entre las comillas y listo, acá tenemos el modelo 2.5 flashlight. Y listo, básicamente es lo mismo.

[10:33] Acá en ese string, esa variable llamada pregunta, lo que escribamos por el monitor serial y al darle enter, simplemente si la respuesta la pregunta que escribimos acá es de una longitud mayor a cero, mostramos en la pantalla de la OLED pensando y enviamos la pregunta mediante esta función llamada enviar Gemini, acá tenemos los parámetros del JSON, el tipo de contenido de la aplicación, cómo se envía el JSON.

[11:03] Y si obtenemos una respuesta 200, simplemente parseamos lo que es la respuesta. En el monitor serial simplemente vamos a ver Gemini más la respuesta y en la pantalla vamos a mostrar solamente la respuesta. Una vez dicho esto, vamos de nuevo a herramientas, placa, elegimos la placa.

[11:24] Vamos a puerto, a ver, el puerto es la es la cosa, puerto, elegimos el puerto y simplemente vamos a cargar el código. Listo, una vez cargado nuestro código, por la pantallita vamos a ver Wi-Fi okay, escribe en el serial la pregunta en el serial. ¿Listo?

[11:53] Entonces, en el monitor serie simplemente vamos a escribir una serie de pregunta. Vamos a empezar con un hola de nuevo. Entonces, ahí en la pantallita dice pensando, dice, "Hola, ¿en qué puedo ayudarte hoy?" Excelente, muchachos, ya podemos visualizar en una pantalla la respuesta.

[12:10] Eh, escribamos otra pregunta, eh, ¿cuánto, a ver, por ejemplo, cuánto equivale pi? Pensando de nuevo y dice, "Pi equivale aproximadamente a 3,1415926535." Excelente. Ya sabemos que podemos, eh, enviar y visualizar mediante una pantalla.

[12:34] Pero la idea de eso no solamente es escribir las preguntas y visualizarlo por una pantalla, unas preguntas por el serial. La idea de eso es obtener, eh, respuestas a través de algunos sensores, por ejemplo, es escalar esto, esto, ese código que tenemos acá a continuación, no quedarnos hasta acá.

[12:52] Aprovechando, obviamente, que tenemos una API de manera gratuita, de bastantes tokens que nos ofrece, eh, Gemini. En ese caso, podemos integrarnos, eh, quizás, tal vez, sensores. Un ejemplo muy bueno sería poner sensores de humedad y temperatura para, no sé, obtener respuesta de pronóstico de clima, por ejemplo.

[13:12] También visualizar estadística de los tiempos, de los climas, de las temperaturas y un montón de cosas que en la parte de IoT esta inteligencia artificial nos va a ser de mucha ayuda. Y bueno, muchachos, como siempre les he dicho, si tienen alguna idea interesante en relación con este tema, te invito a que lo dejes en los comentarios y estoy seguro que lo pondremos a prueba.

[13:34] Si te fue muy útil este vídeo, te gustó mucho este vídeo, te invito a que le des me gusta, lo compartas, comentes, para yo seguir subiendo contenido interesante. Sin más que decirles muchachos, nos vemos en la próxima. Bye bye.
