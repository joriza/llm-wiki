# Me hice mi propio asistente de IA (open source). Por qué y cómo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=mXQEpPqhOqU)
- **Canal**: Gentleman Programming
- **Publicado**: 2026-11-04
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 12:55

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Los asistentes de IA viven en una pestaña de navegador que tenés que ir a buscar, se olvidan de vos, entre chat y chat, y no pueden tocar nada fuera de la página. Me cansé. Bien, así que me hice el mío. Está a una tecla de distancia, tiene memoria de verdad y puede usar mi Mac, por mí, hace todo directamente, lo maneja como quiere.

[00:18] Entonces hoy les voy a mostrar cómo lo construí por dentro y cómo lo subo a un servidor para tenerlo desde cualquier lado. ¡Abuela! ¡Llegó el video del Gentleman! ¿Qué es Gentle Dot? Vamos a hacer una demo rápida. Lo tenemos aquí abajo y como yo les decía, si yo pongo por ejemplo Alt espacio, automáticamente ya lo podemos ver.

[00:41] Entonces en este caso tenemos lo que es el hermosísimo Gentle Dot. Es una sola conversación, no hay una lista de chats. Cuando crece demasiado siguen una sesión nueva arrancando con un resumen, así se mantiene rápido y barato.

[00:54] Ahora mismo mientras estás pensando te voy a mostrar que tiene memoria con Engram. Guarda en su propio proyecto Gentle Dot y recuerda todo lo que tengo en mi Engram global también. Usa tu Mac. Le puedes dar permiso para ver la pantalla, hacer clics, escribe, abre aplicaciones y justamente te muestra con un brillo rosa donde actúa.

[01:11] Por ejemplo, le voy a pedir. Quiero que busques a Alan Buscaglia usando el navegador en Google. Le damos un buen Enter. vean que estoy utilizando DeepSeek V4 Flash bien, de la hermosísima gente de NaN si quieren un descuentazo eso se lo dejo en la descripción pero vean que locura esto acá tenemos la rosa, la buranding ahí le di permisos para que pueda utilizar mi pantalla, no va a preguntar si le damos 30 minutitos, le vamos a decir que sí y ahí ven como ya está controlando mi Mac, ahí está

[01:41] ahí empieza a hacer clics, ven la barra arriba como va cargando que está justamente pensando y sacando una foto a la pantalla. Después, a medida que va haciendo clics, van a ver que empiezan a aparecer también. Ahí está. Y de vuelta, estamos todo haciéndolo con un modelo open source. ¿Bien? Como ustedes pensaban que para esto tenías que pagar o el de Grok, o el de Codex, o el de Claude.

[02:02] Gente, no pasa nada. Con esto usá lo que quieras. ¿Bien? Y ahí, ahora mismo, está toda la información acerca de mi persona. ¿Por qué? Porque lo buscó en Google. Así nomás. Otra de las cosas que podemos hacer es el hablar.

[02:15] Para esto va a utilizar Parsec, que es un modelo de IA local. Entonces, vamos a preguntarle. Le vamos a dar que sí. Bien. Ahora lo que yo quiero es lo siguiente. Me gustaría que me comentes un poquitito cómo funciona justamente ODD dentro del ecosistema. Bien.

[02:32] Y ahí lo está transcribiendo. Ya lo tenemos. Miren qué bien que funciona. De vuelta, esto es gratis. No está utilizando tokens ni nada. Está usando el modelo local. también pueden darle el modelo de la Mac, por ejemplo.

[02:44] No habría ningún tipo de problema y lo vamos a mandar. Vean la rosa de la animación que tiene. Esto es excelente. Y ahí lo tienen. Ya tenemos toda la información. Lo bueno de esto es que justamente puedes utilizar perfiles, tus propias cuentas, de lo que tú quieras.

[02:57] Puedes también hacer conectores, modo YOLO, si quisieras. Bien, podemos tener el modo voz que les decía de manera offline o si no, utilizar lo que sería en este caso la Mac. Tener conexiones de Notion, Linear, Atlassian, Slack, Gmail, lo que tú quieras aquí. Esto te va a guiar para poder hacer esas conexiones.

[03:14] O si no, podrías agregar directamente los MCP servers que ya tenés, porque esto por detrás utiliza Gentle Shell. Entonces, antes de tocar una sola línea de código, vamos a entender las piezas. Son tres capas y es así de fácil.

[03:26] Uno, la cara. Una aplicación de escritorio hecha en Tauri 2 Rust, que dibuja la rosa y el panel. maneja los atajos globales y aloja el helper nativo de control de pantalla y voz el navegador usa exactamente la misma UI en React. Dos, el cerebro que coordina.

[03:43] Un daemon chiquito en Node24 que levanta al agente como proceso hijo le pone la identidad de Gentle Dot lo reinicia, bien en caso de que se caiga, y traduce sus eventos a un protocolo propio de WebSocket. Tres, el agente. Gentle Shell que es pi con todo de lo que es el ecosistema de Gentle AI más Engram y demás, está corriendo en modo RPC.

[04:05] Bien, hablando JSON directamente por stdin, stdout, el usuario nunca lo ve como un white label. Bien, ¿qué es el modo RPC? Prácticamente es esto que le estaba comentando, es la capacidad que vamos a poder disponer de enviar a través de JSON, de lo que es este stdin, este stdout, de entrada y de salida, información a través de procesos hijos, de subprocesos, que van a ser justamente controlados a través de estos records de JSON.

[04:34] Y esto nos sirve para integraciones, ya sea de manera independiente a lo que es el lenguaje, como también, por ejemplo, poder separar procesos en IDES, si tuvieran ganas de hacer su propio ID con esto, o también cualquier interfaz custom, Gentle Dot.

[04:48] Entonces, decisiones que yo quiero explicar. Primero, que esto es un white label, no es un fork. ¿Qué quiere decir esto? Que esto no reescribe un agente. Yo reutilicé ya entre ya el tal cual, bien, y el daemon le pone otra identidad y limpia los eventos.

[05:02] Un agente ya existe otra cara, no reinventé la rueda prácticamente. No quise hacer sobre ingeniería, haciendo cosas nuevas y demás sobre algo que ya existe. Después, dos, que las reglas del control de pantalla viven fuera del agente. El permiso de sesión, el botón de pánico, porque existe, viene el botón de pánico que en mi caso es el Alt, Shift, escape.

[05:23] Después tenemos lo que es la lista negra, gestores de contraseñas, ajustes de sistema, todo ese tipo de cosas que no quiero que el agente pueda controlar. Es más, tiene una regla que no puede controlarse a sí mismo. Por eso van a ver que cuando trata de tocar la pantalla, ¿qué hace?

[05:37] Desaparece. ¿Sí? Cuando saca una foto o demás. También está la parte de confirmación de acciones riesgosas, enviar, pagar, borrar para que vos lo confirmes. Todo esto lo controla la aplicación en Rust, no el modelo. Lo mismo con aprobar acciones de conectores.

[05:51] Un diálogo nativo que el agente no puede contestar. Si la regla vive dentro del agente, el agente se la puede saltear o puede hacer lo que quiera con esa regla. Por eso va afuera. Y yo soy honesto, los comandos de shell del agente todavía se chequean con lo que se llama best effort y por eso es un early preview.

[06:09] Si esto es algo que se está construyendo por y para la comunidad. Después tenemos el tema de los conectores que se utiliza por medio de un proxy MCP propio. Eso es que el agente y los subagentes solo llegan a los conectores a través del proxy del Daemon.

[06:23] Bien, que esconde lo que el modo no permite. En Mac las credenciales van al keychain directamente, que es el lugarcito donde se guardan todas las contraseñas. Y nunca el chat ni un archivo. Y el connectors.json va firmado.

[06:35] En resumen, todo para que esté controladísimo. Después el tema del contexto también. Cada llamada que se realiza al modelo lleva solo la última captura de pantalla. Todas las anteriores quedan como una línea del log directamente.

[06:48] Entonces, cuando la conversación crece, rota una sesión nueva con un resumen. es un poco también, a ver, es una buena práctica, si nosotros estamos sacando múltiples fotos de pantalla y le damos de vuelta y otra vez y otra vez, porque el agente va sacando fotos para ver dónde cliquear y demás, ¿qué va a pasar con eso? Una de las cosas que va a pasar es que eso tiene un peso, va a llenar la ventana de contexto, por más que vos, que es algo que hacemos nosotros también, que es comprimir esas imágenes para que entren correctamente,

[07:14] igual hay que tenerlo muy en cuenta. Y por último, esto tiene un motor aislado. Tiene su propio home en lo que sería virgulilla barra punto gentle guion dot. Así nunca toca tu setup de agentes personal. Pero ¿cómo lo construí? Todo esto lo construí con mi propio flujo, con Gentle AI.

[07:31] Yo dirijo, la IA ejecuta. Yo soy Tony Stark y mi agente es Jarvis. Pero si no sabés qué pedir Jarvis, te arma cualquier cosa. Por eso mismo, utilizando ODD, yo acá tengo todas las diferentes tareas que se fueron realizando y, por ejemplo, podemos ver cuál es el objetivo, todas las especificaciones que se fueron haciendo.

[07:51] Además de eso, vean que cada especificación tiene una acceptance criteria, tiene checks para poder checar y decir, hey, esto está correcto, y también qué cosas se han decidido. Entonces esto funciona también como una bitácora de capitán.

[08:02] Esto lo lee otro agente, lo lee otra persona, bien, vamos a ser sinceros, lo lee otro agente, y va a entender qué cosas ya se hicieron, qué cosas no hay que hacer, qué cosas ya no vale la pena reintentar porque ya se probaron y demás. Entonces, por ejemplo, podemos ver todas las tareas con sus especificaciones y sus relaciones, las rutas, los status de cada una de ellas y por ejemplo también los logs, que es lo que yo les decía.

[08:25] ¿Bien? ¿Qué pregunté yo? ¿Qué es lo que me respondió? Y demás. Entonces de esa manera está todo crème de la crème. Pero ahora, ¿qué pasa si lo quiero desde el celular? ¿Desde otra computadora? ¿Desde donde sea? ¿Lo subo a un servidor? Claro que sí.

[08:37] Y para eso, ustedes ya lo saben, yo utilizo el VPS de HostGator porque el mismo Daemon que corre en mi Mac corre también en el servidor. Es el mismo código, literalmente. esto que yo les mostré en Gentle Dot lo pueden ejecutar también en su navegador tiene un navegador ¿bien? que se puede levantar un servidor tipo localhost en el servidor es el mismo asistente pero con su propia memoria su propio engram dentro de ese contenedor sin control de pantalla que es justamente lo que da la aplicación de escritorio ¿bien?

[09:03] entonces este bicho tiene una shell y puede ejecutar comandos es un servidor el que llega a él controla ese contenedor entonces la seguridad no es opcional ¿qué cosas? he decidido. Solo HTTPS. El puerto 4317 nunca se expone.

[09:17] El contenedor se escucha solo en el loopback del VPS. Dos candados. La contraseña del servidor web y la key access de Gentle Dot.dot. Tres. Separación por usuarios del sistema. El daemon corre como root con capacidades mínimas.

[09:32] El agente como dot y los conectores como dotmcp. ¿Qué quiere decir esto? Que el agente no puede leer la key ni los secretos y no es porque yo le pida que no lo haga, es porque el sistema operativo no lo deja. Después, todo lo que son secretos están cifrados.

[09:49] AES-256-GCM con una clave que solo vive en el entorno del Daemon. Y PIN para lo importante, conectar conectores o permitir que algo se envíe pide un PIN que el asistente nunca ve. Entonces, ¿qué cosas tuve que hacer yo justamente para poder tener la VPS?

[10:05] de HostGator con todo lo mío. Punto número uno. Creen un subdominio. Yo eso lo hice a través de mi propio manejador de subdominios. Es muy tonto. Yo tengo Gentleman Programming y a través de ese cree dot.gentlemanprogramming.com.

[10:18] Después, clonás el repositorio en barra opt barra gentle dot en tu VPS. Número tres. Creas el punto M con el dominio. Dot guión bajo domain tiene que ser exactamente el que vas a abrir. la key del modelo o loguearte después desde el navegador y generar lo que es el gentle-dot-secrets-key con chmod 600.

[10:40] Guarda, por favor, la copia del .env fuera del servidor. Paso número 4. Lanzar un docker compose up -d --build, chequear el health para ver que esté todo bien y leer la access key. Eso se hace con docker compose exec gentle-dot cat /home/dot/.gentle-dot/token.

[11:00] 5. Ir al Apache de cPanel, ven adelante, con el certificado con AutoSSL en WHM, archivo de contraseña con htpasswd y copiar docker barra apache guion gentle guion dot punto conf a la carpeta de includes ssl del usuario de cPanel para este subdominio.

[11:19] Cambiarle el dominio y el puerto y reconstruir Apache. 6. Abrir HTTPS dos puntos barra barra dot punto tudominio.com barra almohadilla token igual y poné la contraseña y listo. El mismo asistente desde cualquier navegador ya para vos.

[11:36] O más fácil, todo lo que te acabo de decir lo podés sacar del readme, de la documentación, así que decíle a tu agente ¡Ey, quiero esto! Y que tu agente lo haga por vos. ¿Bien? No te preocupes. Siempre y cuando te haga un script para manejar las contraseñas. No dejes que el agente lea tus contraseñas, que crea un script a través del cual va a generar y devolverte a ti las contraseñas.

[11:58] Si quieres hacer lo mismo, el link del VPS de HostGator lo tenés abajo en la descripción con descuento. Y ojo, que en noviembre HostGator justamente tiene su venta de Black Friday, así que dependiendo de cuándo estás viendo esto, vas a poder aprovecharla.

[12:10] Entonces, una aplicación de escritorio que dibuja y protege, un Daemon que coordina y un agente que ya existe con otra cara. y el mismo código en un VPS te lo da desde cualquier lado. Esto es open source, es MIT, el repo está abajo, te lo voy a dejar ahí y eso sí, es solo el preview, tiene una shell y puede tocar tu compu así que usalo en una máquina y cuentas donde estés cómodo.

[12:30] Pero no te preocupes que está todo bien, ¿sí? Está bien pensado, no te preocupes. Nos vemos gente en el próximo videíneo, así que ya sabés le vas a dar un buen comentario, vas a dar una buena suscribida, lo vas a compartir a todo el mundo para seguir ayudando cada vez más y como siempre le vas a decir a tu abuela, ¡Abuela! ¡Llegó el video del Gentleman!

[12:47] Nos vemos, gente hermosa de mi corazón, ¡éxitos! ¡Chau!
