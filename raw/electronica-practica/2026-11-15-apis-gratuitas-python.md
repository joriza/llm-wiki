# Todo sobre las API Gratuitas de Python Explicado en 10 Minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=CNCUtZ9BiHI)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-08-12
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un desarrollador paga 40 dólares al mes por un servicio de alertas de clima para automatizar su casa. Otro consigue exactamente el mismo resultado, en tiempo real, personalizado, disparando acciones automáticas cuando baja la temperatura o va a llover, sin pagar un solo centavo. Los dos programan en el mismo lenguaje, Python. La diferencia no está en el código que escriben, está en un puñado de líneas de internet que la mayoría ignora por completo, las APIs gratuitas. Ahora mismo hay decenas de

[00:25] miles de APIs públicas documentadas y listas para usarse. Cuenta los grandes agregadores y el número se dispara y la mayoría de los programadores solo conoce dos o tres, casi siempre las mismas que salen en el primer tutorial que encontraron, clima, finanzas, criptomonedas, noticias, notificaciones directas al celular. Todo eso ya existe, gratis, esperando una sola petición para conectarse a tu código. La explicación fácil es que lo gratis siempre es limitado, que las APIs que de verdad

[00:51] sirven cuestan dinero tarde o temprano. Eso es falso. Automatizaciones que empresas enteras pagan miles de dólares por construir están hechas, en el fondo, con exactamente las mismas APIs gratuitas que vas a ver en este vídeo.

[01:03] La diferencia entre pagar y no pagar casi nunca es la API, es si sabes cuál usar y cómo conectarla. En menos de 10 minutos vas a conocer las cinco APIs gratuitas más útiles para clima, finanzas, noticias y productividad. Vas a ver cómo se conectan con un par de líneas de código real y al final, el punto exacto donde ese gratis empieza a cobrarte factura sin que te des cuenta.

[01:24] Y antes de entrar a la lista, una aclaración rápida, cuando digo API gratuita no hablo de una versión recortada, con datos falsos o de juguete. Hablo de servicios que empresas reales usan en producción todos los días, con planes gratuitos generosos que, para un proyecto personal o incluso para el primer año de un negocio pequeño, sobran por completo. Vamos directo a la lista. Cinco APIs gratis, documentadas, con ejemplos que puedes copiar y correr ahora mismo en tu computadora. No están ordenadas por

[01:50] popularidad, están ordenadas por cómo se van combinando entre ellas. Cada una resuelve un problema que la anterior deja abierto hasta terminar con un sistema completo de automatización personal. La primera es OpenWeatherMap, su plan gratuito te da 60 llamadas por minuto y hasta 1 millón al mes, muchísimo más de lo que vas a necesitar para revisar el clima de tu ciudad cada pocos minutos sin gastar nada. La gracia no es solo consultar la temperatura, es usar ese dato para disparar una acción.

[02:16] Si la temperatura baja de cierto punto, tu script enciende una alerta, si va a llover en la próxima hora, te manda un aviso antes de que salgas de casa. Si hay una ola de calor, activa el riego automático de tu jardín. Cuatro líneas después de registrar tu clave gratuita, ya tienes el clima real de cualquier ciudad del mundo dentro de tu programa, listo para conectarse a lo que quieras, un correo, una notificación, un dispositivo inteligente, un detalle que casi nadie cuenta. La clave tarda unos

[02:41] minutos en activarse después del registro, así que si tu primera petición falla con un error de autorización, no es que hiciste algo mal, solo tienes que esperar un momento. Y si automatizas esto para que corra cada hora, ni siquiera necesitas dejar tu computadora prendida. Lo mismo funciona en un servidor gratuito o en una Raspberry Pi conectada a tu red doméstica. La segunda es CoinGecko y esta ni siquiera te pide una clave para el uso básico. Es la favorita para seguimiento automático de

[03:06] portafolio. Consultas el precio de varias monedas a la vez, comparas contra el precio al que compraste y tu script decide si te avisa de un movimiento fuerte. Sin registro, sin tarjeta, sin fricción, solo una petición y ya tienes precios actualizados al segundo para armar tu propio panel de finanzas sin depender de una app de terceros que te llena de anuncios. Eso sí, el modo sin clave está pensado para consultas puntuales, no para un bot que pregunta el precio cada segundo del día. El

[03:31] límite es bajo a propósito. Y si más adelante necesitas más volumen de peticiones, CoinGecko también tiene un plan con clave gratuita que sube tu límite considerablemente, sin pedirte tarjeta de crédito. Guarda el precio de cada consulta en un archivo o una base de datos simple. Y en un par de semanas tienes tu propio historial de precios sin depender de ningún gráfico ajeno. La tercera resuelve un problema distinto.

[03:53] ¿Cómo te enteras de todo esto sin estar pegado a la pantalla? La API de bots de Telegram te deja crear un bot en un par de minutos hablando con BotFather dentro de la propia app y usarlo para mandarte notificaciones automáticas al celular sin costo alguno y sin límite real para uso personal. Combina esto con la API del clima o la de cripto y ya tienes un sistema de alertas personal corriendo 24 horas al día avisándote solo cuando de verdad importa. Lo mejor, el mismo bot te sirve para cualquier automatización

[04:18] futura que se te ocurra porque el patrón de código es idéntico, solo cambia el mensaje que le mandas y funciona igual de bien enviándote el mensaje a ti, solo que a un grupo completo si algún día quieres compartir estas alertas con más gente. La cuarta es News API, te permite armar tu propio resumen de noticias cada mañana filtrado por tema, país o categoría en lugar de depender del algoritmo de una red social para decidir qué te enteras primero. Cinco titulares relevantes seleccionados con tu propio

[04:44] criterio y no por publicidad. Conecta esto al bot de Telegram del ejemplo anterior y tienes tu resumen de noticias esperándote cada mañana sin abrir una sola app. El plan gratuito tiene un límite de 100 peticiones al día y está pensado para desarrollo y pruebas personales, no para venderlo como servicio a terceros. A tu propio resumen diario le sobra, pero si algún día lo conviertes en un producto para otras personas, ahí sí toca leer la letra chica y probablemente pagar un plan. El

[05:09] truco está en no desperdiciar esas peticiones. Guarda el resultado un rato en memoria en vez de volver a preguntarle a la API cada vez que alguien abre tu script. Y la quinta no es una API de producto, pero es la que más deberías usar mientras aprendes.

[05:21] Entornos de prueba gratuitos como JSON Placeholder o PokeAPI. Ninguna te pide clave, tampoco tienen datos reales de por medio y las dos te dejan practicar el mismo patrón de código, pedir datos, revisar la respuesta, manejar errores antes de tocar una API real que sí tiene límites, sí puede fallar y sí te puede bloquear si te equivocas.

[05:40] Practicar aquí primero te ahorra errores caros después cuando ya estés trabajando con datos reales, con una cuenta real o con un límite de peticiones que sí te importa no romper. Cualquier tutorial de requests que veas en internet, pruébalo primero contra una de estas dos antes de apuntarlo a la API que de verdad te interesa. Rompe cosas a propósito aquí, pide un post que no existe, manda mal un parámetro, mira qué código de error regresa. Ese es el aprendizaje que de verdad se queda. Fíjate en algo, las

[06:04] cinco APIs que acabas de ver usan exactamente el mismo patrón de código. Instalas una sola librería requests y con ella cubres prácticamente cualquier API del planeta. Y el patrón se repite siempre igual, armas la URL con sus parámetros, haces la petición, revisas si respondió bien y conviertes la respuesta a un diccionario de Python con {punto} json. Ese timeout 5 importa más de lo que parece. Sin él, tu script puede quedarse colgado para siempre esperando una respuesta que nunca llega.

[06:30] Y ese status code es tu primera línea de defensa. Un 200 significa que todo salió bien. Un 401 significa que tu clave está mal. Un 404 significa que la URL no existe. Y un 429 significa que ya te pasaste del límite gratuito de peticiones y toca esperar antes de volver a intentar. Otro detalle que separa un script de práctica de uno que puedes mostrar sin vergüenza. Nunca escribas tu clave directamente en el código. Guárdala en una variable de entorno y léela desde ahí, así puedes

[07:00] compartir tu script sin regalar tu acceso. Con esto, cuatro o cinco líneas te conectan a clima, cripto, noticias o el servicio que se te ocurra. Y aquí es donde Python se vuelve peligroso. Hace que esto se sienta demasiado fácil.

[07:13] Escribes un for que llama a la API 10 veces seguidas y funciona perfecto. Pero ese mismo for, si cada petición tarda 200 milisegundos en responder, algo normal en internet, y lo corres con 1000 ciudades en vez de 10, se tarda más de 3 minutos solo esperando respuestas una por una, sin hacer nada más mientras tanto. Python se queda ahí, congelado, esperando a que cada llamada termine antes de empezar la siguiente. La solución obvia que casi todos intentan primero es abrir varios hilos a la vez

[07:38] para que las peticiones no esperen una detrás de la otra. Y funciona hasta cierto punto. 20 hilos en vez de uno pueden convertir esos 3 minutos en apenas unos segundos. Pero súbele el número a 200, a 2000, y el mismo truco que te salvó empieza a fallar de formas nuevas. Conexiones que se cierran solas, respuestas que llegan mezcladas, memoria que sube sin parar. Ahí es exactamente donde empieza el problema del que casi nadie habla. ¿Qué pasa cuando no necesitas hacer esto una vez, sino miles

[08:05] de veces por segundo con cientos de conexiones abiertas al mismo tiempo? ¿Qué pasa cuando tu script deja de ser un experimento de fin de semana y se convierte en un sistema del que otras personas dependen para funcionar? Usar una o dos APIs es sencillo, pero en el momento en que empiezas a profesionalizar tus automatizaciones, te topas con problemas de concurrencia, límites de peticiones por minuto y sobre todo el rendimiento del propio Python al gestionar cientos de conexiones al mismo

[08:31] tiempo. Los hilos ayudan, pero no son gratis. Consumen memoria, se pisan entre ellos y en algún punto dejan de escalar por más que agregues. Muchos programadores creen que la solución es simplemente escribir más código. Más hilos, más procesos, más [carraspeo] servidores. La realidad es que Python tiene barreras físicas, de diseño del propio lenguaje, que no puedes ignorar si no quieres que tu sistema colapse justo cuando más lo necesitas, en el peor momento posible, con más usuarios

[08:58] dependiendo de que funcione. Y esto no es un problema teórico, ni algo que le pasa solo a las grandes empresas. Le pasa a cualquiera que empieza consultando el clima cada hora y 6 meses después termina con un sistema que revisa 100 fuentes distintas cada minuto para un pequeño negocio o una comunidad que depende de esos datos. Si sientes que tus scripts se están volviendo lentos a medida que crecen, o quieres saber exactamente hasta dónde puedes presionar este lenguaje antes de que

[09:22] deje de ser suficiente, tienes que ver el video que dejé arriba en pantalla. Los tres límites que todo programador descubre tarde. Ahí te explico, con casos concretos, cuándo es el momento de dejar de usar Python y pasar al siguiente nivel antes de que ese momento te agarre por sorpresa en producción, con usuarios reales esperando una respuesta que no llega. Repasemos rápido, clima con OpenWeatherMap, finanzas y cripto con CoinGecko, notificaciones al instante con el bot de Telegram, noticias personalizadas con

[09:48] NewsAPI y un entorno de pruebas gratis con JSON Placeholder o Bogus API para practicar todo esto sin miedo a romper nada. Cinco APIs, cero costo y todo un mundo de datos reales esperando una sola línea de código para entrar a tu proyecto y empezar a trabajar por ti.

[10:03] Ninguna de las cinco te pide tarjeta de crédito, ninguna te obliga a leer 100 páginas de documentación antes de escribir tu primera línea y todas te dejan copiar el patrón que viste hoy y aplicarlo a la siguiente API que se te ocurra explorar. Automatiza con inteligencia, conoce bien tus herramientas y nos vemos en el video de los límites.
