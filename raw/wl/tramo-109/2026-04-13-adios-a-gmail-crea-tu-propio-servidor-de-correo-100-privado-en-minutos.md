# ¡Adiós a Gmail! Crea tu PROPIO Servidor de Correo 100% Privado en Minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=kpdkUq39MWQ)
- **Canal**: Jorge López
- **Publicado**: 2026-04-13
- **Recopilado**: 2026-11-27
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Muy buenas. Y si fuera posible tener el control total de nuestro propio correo electrónico, pues hoy vamos a ver cómo conseguirlo. Vamos a levantar un servidor de email desde cero usando solo la línea de comandos y así vamos a descubrir juntos qué es lo que pasa de verdad cuando le damos al botón de enviar. La verdad es que es una pregunta interesante, ¿cómo se monta un sistema de email privado? Porque más allá de la simple curiosidad, tener un servidor propio significa, por un lado más

[00:25] privacidad y por otro un conocimiento mucho más profundo de una tecnología que usamos todos los días. Así que vamos a desmitificar ese proceso paso a paso. Bueno, pues todo sistema de correo necesita antes de nada gente o si lo traducimos al lenguaje de un servidor, lo que necesita son cuentas de usuario.

[00:43] Este es sin duda, el primer pilar fundamental que vamos a construir. Todo, absolutamente todo, empieza con los usuarios. En un servidor Linux, cada dirección de correo se corresponde con una cuenta de sistema. Lo que vemos aquí es el comando ad user que usamos para crear nuestro primer usuario, alumno 1.

[01:00] Este comando por detrás le asigna automáticamente su directorio personal y nos pide una contraseña. Claro, un sistema de correo con una sola persona no tiene mucha gracia. Se necesita gente que se comunique. Así que siguiendo exactamente el mismo proceso, añadimos al usuario profesor. Con estos dos ya tenemos la base para poder intercambiar mensajes. Y para completar nuestro pequeño entorno de pruebas, añadimos un tercer usuario, alumno dos. Perfecto, ya tenemos a nuestros protagonistas listos.

[01:29] Ahora toca construir la infraestructura que los va a conectar. Ahora necesitamos al cartero, o sea, el sistema que se va a encargar de recoger, transportar y entregar todos los mensajes. En el mundo de Linux, uno de los carteros más fiables y populares es Postfix y él va a ser el corazón de nuestro servicio de correo. Ojo, porque durante la instalación Postfix nos presenta una elección que es clave, su rol. Nosotros elegimos sitio de internet. ¿Y esto qué significa? Pues básicamente le estamos

[01:56] diciendo que nuestro servidor no es un simple intermediario, sino que es el destino final de los correos. es el responsable de entregarlos directamente en los buzones locales. Y aquí se ve perfectamente la conexión entre la configuración del asistente y el código real. A la izquierda, el instalador nos pide el nombre del sistema, que en este caso es doasir.com, y a la derecha, si miramos dentro del archivo de configuración main CF, vemos que esa misma entrada se ha convertido en el

[02:21] valor de la directiva My Hostame. Cada paso del asistente está modificando estos archivos por nosotros. Y antes de tocar absolutamente nada más, una lección de oro en la administración de sistemas. Siempre, siempre hay que hacer una copia de seguridad del archivo de configuración original. Un simple comando CP, como el que vemos nos puede salvar de horas y horas de problemas si algo sale mal. Una vez que hemos editado la configuración, los cambios no se aplican solos. Hay que indicarle a

[02:47] Postfix que vuelva a leer sus archivos. Usamos Reload en lugar de restart porque actualiza la configuración sin interrumpir el servicio, algo que es fundamental en un entorno real. Y ahora sí llega el momento de la verdad. Hemos puesto los cimientos, hemos contratado al cartero, pero esto funciona. ¿Puede nuestro nuevo sistema entregar su primera carta? Venga, vamos a comprobarlo. Desde la cuenta del profesor usamos una herramienta de terminal para enviar un email, destinatario alumno1@2asir.com,

[03:15] asunto prueba de correo y un mensaje simple. Se pulsa control + D para enviar y la carta ya está en camino y ahí está. Éxito. Al inspeccionar el buzón de alumno uno, que en su forma más básica es un archivo de texto en formato Mbox que está en barra mail barra, vemos el mensaje del profesor. Lo hemos conseguido. Postfix está funcionando perfectamente como agente de transporte de correo. Esta es nuestra primera gran victoria. Venga, ahora vamos a confirmar que la comunicación interna funciona

[03:46] entre todos. Alumno 1 envía un correo a alumno 2 y a la derecha vemos que llega sin ningún problema. Nuestro sistema no solo recibe correo, sino que lo enruta correctamente entre todos los usuarios locales. Vale, perfecto. El correo llega al servidor, pero tenemos un problema de usabilidad bastante grande. Nadie quiere conectarse por la terminal para leer sus emails en un archivo de texto. Necesitamos una forma de acceder a esos buzones de manera remota, cómoda y segura. Y aquí

[04:14] es donde entra en escena nuestro segundo protagonista, Dofcot. La analogía es perfecta. Si Postfix es el cartero que trae las cartas usando el protocolo SMTP, Dovegot es como el fabricante de buzones con su cerradura y su llave que permite a cada usuario acceder de forma segura a su correspondencia usando protocolos como IMAP o POP 3. La instalación, como vemos, es igual de sencilla. Con un comando UPT install añadimos Dof code al servidor. Este paquete es el que nos va a proporcionar

[04:43] esa capa de acceso a los buzores que nos faltaba. Este es el paso que lo une todo. Tenemos que decirle a Dovecode dónde están los correos que Postfix ha ido dejando. Así que en su archivo de configuración activamos la directiva Mail Gu location y le damos la ruta correcta. Ahora los dos servicios por fin están coordinados. Bueno, pues el trabajo pesado ya está hecho. El motor funciona, las entregas se realizan y las puertas de los buzones están abiertas.

[05:09] Ahora solo nos queda conectar todo este sistema que hemos montado con una aplicación que todo el mundo conoce, un cliente de correo gráfico como puede ser Thunderbird. El protocolo que va a hacer de puente entre nuestro servidor y Thunderbird es IMAP. Este protocolo permite que el cliente de correos sincronice las carpetas y los mensajes que están guardados en el servidor. A diferencia de su primo mayor, POP3, que normalmente descarga los correos y los borra, IMAP los mantiene siempre

[05:35] centralizados en el servidor. Al final, configurar un cliente como Thunderbird a esto. Apuntamos el servidor entrante a nuestro servicio DOFC usando el protocolo IMAP y el servidor saliente para enviar correos a nuestro servicio postfix usando SMTP. Añadimos el usuario, la contraseña y listo, el cliente ya sabe cómo hablar con nuestro servidor. Y lo mejor de todo es que una vez que la conexión está establecida, nuestro servidor es compatible con todas las funciones estándar que un cliente

[06:04] como Thunderber puede ofrecer: gestión de adjuntos, filtros de mensajes, marcado de spam. La infraestructura que hemos montado es la base para una experiencia de correo electrónico completa. Y con esto hemos completado el círculo. Hemos pasado de no tener nada a tener un sistema de correo totalmente funcional. Esto, por supuesto, nos da un control y una privacidad increíbles, pero también la responsabilidad de mantenerlos seguro y funcionando. La pregunta final que queda en el aire es,

[06:28] ¿merece la pena tomar ese control?
