# 🚀 14 Aplicaciones Docker que Puedes Instalar en Tu Propio Servidor

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=lRtugzugiCk)
- **Canal**: DanyCode
- **Publicado**: 2026-09-29
- **Recopilado**: 2026-11-25
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:04

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hay gente que tiene una computadora, y hay gente que mira su computadora y dice, ¿y si la convierto en un servidor? Porque con Docker puedes levantar aplicaciones completas sin convertir tu sistema operativo en un laboratorio de experimentos. Servidor multimedia, Jellyfin. ¿Cámaras? También.

[00:17] ¿Automatización? También. ¿Y otras aplicaciones que probablemente ni sabías que existían? También. La magia está en los contenedores. Cada aplicación tiene su pequeño espacio y no tiene que andar molestando a las demás. Como vecinos, pero que sí se respetan. Y lo mejor es que puedes probar una aplicación. ¿No te gusta? La eliminas y seguimos como si nada hubiera pasado. Docker, cero drama.

[00:40] Así que hoy vamos a levantar 14 aplicaciones con Docker. Algunas son útiles, otras son demasiado interesantes y probablemente cuando terminemos vas a mirar tu computadora de otra manera. Y empezamos con Jellyfin. Imagínate tener tu propio Netflix, pero instalado en tu propio servidor.

[00:57] Jellyfin convierte tu computadora en un servidor multimedia, donde puedes organizar películas, series, música y videos, y reproducirlos desde diferentes dispositivos. ¿Tienes una colección de películas guardada por ahí? Perfecto.

[01:10] Jellyfin la organiza y te pone una interfaz mucho más bonita para acceder a todo. Porque sí, tener 500 películas en carpetas llamadas películas, películas dos y ahora sí definitivas, no cuenta como organización. Y como lo estamos ejecutando con Docker, podemos levantar Jellyfin dentro de su propio contenedor.

[01:27] Primer servicio funcionando. Pero ahora vamos a algo bastante diferente. Frigate está pensado para cámaras de seguridad. Aquí la idea cambia completamente. Puedes conectar cámaras compatibles y utilizar Frigate para gestionar y analizar sus transmisiones. Por ejemplo, una cámara detecta movimiento y en lugar de simplemente grabar absolutamente todo, puedes configurar eventos y detecciones para saber qué está ocurriendo. ¿Una persona? ¿Un vehículo?

[01:53] ¿Movimiento? Frigate puede ayudarte a convertir esas cámaras en un sistema de vigilancia mucho más inteligente. Y todo esto corriendo dentro de Docker. Así que pasamos de ¿qué fue ese movimiento? A ah, fue el gato. Dos aplicaciones listas y apenas estamos calentando los motores. Y ya que estamos montando servicios en nuestro servidor, hay algo que tarde o temprano vamos a querer controlar. Qué entra, qué sale y cómo accedemos a nuestras aplicaciones.

[02:20] Y aquí aparecen dos herramientas bastante interesantes. Primero tenemos AdGuard Home. ¿Imaginas tener un filtro para bloquear anuncios y dominios no deseados directamente desde tu propia red? Pues esa es justamente la idea.

[02:33] AdGuard Home puede funcionar como servidor DNS y filtrar las consultas que hacen los dispositivos de nuestra red. Por ejemplo, tu celular intenta conectarse a un dominio de publicidad. AdGuard lo detecta y puede bloquearlo antes de que esa conexión continúe.

[02:47] Resultado, menos publicidad, menos rastreadores y una red un poquito más limpia. Y lo mejor, no tienes que instalar un bloqueador en cada dispositivo. Lo haces desde un punto central. Porque si vas a tener tu propio servidor, por lo menos que también sepa decir, "Esa publicidad no entra." Pero ahora tenemos otro problema. Tenemos varias aplicaciones funcionando y cómo entramos a cada una sin memorizar un montón de puertos. Aquí entra Nginx Proxy Manager. Esta herramienta nos

[03:13] permite gestionar el acceso a nuestros servicios mediante un proxy inverso. Por ejemplo, en lugar de recordar una dirección diferente con un puerto diferente para cada aplicación, podemos utilizar dominios o subdominios para organizar nuestros servicios. Jellyfin por aquí, otra aplicación por allá, otra más por el otro lado. Todo mucho más ordenado. Y además podemos gestionar certificados SSL desde una interfaz bastante sencilla. Así que pasamos de ¿cuál era el puerto de esta aplicación?

[03:39] A ah, sí, entro por su dominio. Mucho mejor. Ya tenemos multimedia, cámaras, filtrado DNS y acceso organizado. Y apenas vamos por cuatro. Porque este servidor todavía tiene bastante trabajo por delante. Y ahora que ya tenemos nuestras aplicaciones organizadas, ¿qué pasa si queremos usar ese servidor para algo más que servicios? Por ejemplo, para montar servidores de videojuegos.

[04:00] Aquí entra Pterodactyl. Pterodactyl es un panel que te permite administrar servidores de juegos desde una interfaz web, crear servidores, asignarles recursos, controlar usuarios y gestionar todo sin tener que estar peleando constantemente con la terminal. ¿Quieres montar un servidor de Minecraft? Puedes hacerlo. ¿Quieres administrar varios servidores desde el mismo lugar?

[04:20] También. Y aquí empieza la parte peligrosa. Porque primero dices, "Voy a montar un servidor de Minecraft." Y 5 minutos después ya estás pensando, "¿Y si monto 10?" Pero mientras vamos llenando nuestro servidor de contenedores, aparece otro pequeño problema. Hay que mantenerlos actualizados. Y aquí entra Watchtower.

[04:40] Watchtower se encarga de vigilar nuestros contenedores y, si lo configuramos para ello, puede detectar nuevas versiones de las imágenes y actualizar los contenedores automáticamente. Es como tener un vigilante revisando. ¿Hay actualización?

[04:53] No. ¿Hay actualización? No. ¿Hay actualización? Sí. Y automáticamente se pone manos a la obra. Eso sí, las actualizaciones automáticas son muy cómodas, pero conviene saber qué estamos actualizando antes de dejarle las llaves de la casa a Watchtower. Y con esto ya tenemos seis herramientas en nuestro servidor, pero todavía faltan varias y algunas pueden cambiar completamente la forma en que administramos todo lo que estamos montando.

[05:17] Y ahora vamos con dos herramientas que prácticamente se complementan entre sí. Primero, Docker Compose. Porque cuando tienes un contenedor, bueno, fácil. Pero cuando empiezas a tener cinco, seis, ocho o 10, ya no quieres estar creando y configurando todo uno por uno. Ahí entra Docker Compose.

[05:35] Nos permite definir nuestros servicios, redes, volúmenes y configuraciones en un archivo y después levantar todo de una sola vez. Por ejemplo, ¿necesitas tu aplicación, una base de datos y un servidor web lo defines en compose y Docker se encarga de levantar el conjunto es como pasar de decir construye esta casa ladrillo por ladrillo a decir aquí tienes los planos ahora levanta la completa y cuando empiezas a trabajar así la administración se vuelve muchísimo más ordenada pero todavía tenemos un pequeño detalle

[06:07] ¿qué pasa si no quieres estar mirando archivos llamel todo el día? aquí aparece portainer portainer nos proporciona una interfaz web para administrar Docker de una manera mucho más visual podemos ver nuestros contenedores, iniciarlos, detenerlos, reiniciarlos, revisar sus logs y gestionar imágenes, redes y volúmenes en otras palabras Docker hace el trabajo y portainer nos da un tablero para controlar lo que está pasando y esto se pone todavía más interesante porque ahora nuestro servidor ya no

[06:37] solamente puede ejecutar aplicaciones también podemos convertirlo en nuestra propia nube personal y ahí entra la siguiente herramienta si ya tenemos nuestro propio servidor ¿por qué no convertirlo también en nuestra propia nube? nextcloud nos permite almacenar y sincronizar archivos desde nuestro servidor documentos, fotos, vídeos, todo en un solo lugar es como tener tu propio Google Drive pero esta vez el servidor es tuyo y claro si ahora tenemos tantos servicios funcionando necesitamos saber cuándo

[07:05] algo falla y aquí entra uptime kuma uptime kuma nos permite monitorear nuestros servicios y saber si están funcionando correctamente por ejemplo nextcloud está funcionando peter actil está funcionando nuestro sitio está funcionando perfecto pero si alguno se cae uptime kuma nos avisa es básicamente ese amigo que está mirando todo mientras tú dices yo creo que está funcionando y él responde no así podemos detectar problemas rápidamente en lugar de descubrirlos cuando alguien nos diga oye ¿por qué no

[07:35] funciona tu servicio? y ahora ya tenemos 10 herramientas en nuestro servidor pero todavía nos quedan cuatro y las siguientes ya empiezan a tocar cosas bastante más privadas. Ya hasta aquí llegamos por hoy. Ya vimos 10 aplicaciones que podemos montar en nuestro servidor con Docker y todavía nos quedan cuatro más. Si te está gustando esta serie, suscríbete al canal, déjame tu like, que yo lo vea, y nos vemos en el próximo video, donde hablaremos de más aplicaciones adicionales que podemos montar con

[08:02] Docker. Nos vemos.
