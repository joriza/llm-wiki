# REST vs GraphQL vs gRPC vs WebSockets explicado fácil

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=-vHf2vzMsqE)
- **Canal**: Torti Code
- **Publicado**: 2026-08-24
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Tienes dos máquinas. Una quiere datos, la otra los tiene. Suena trivial y aún así la forma en que se hablan cambia todo. Cuánto pides, cuántas vueltas das, qué tan rápido viaja y si la conexión se cierra o se queda abierta.

[00:18] Hay cuatro maneras grandes de resolver eso hoy y elegir mal te cuesta velocidad, dinero y noches sin dormir. Hola, soy Torti y esto es TortiCode. Hoy ves las cuatro con la misma lupa. Una analogía que se te queda pegada.

[00:33] Cómo se ve la petición en código de verdad, las herramientas con las que se construyen y cuándo usar cada una y cuándo huir. Empecemos por la primera de las cuatro. REST. Entras a un restaurante. Hay una carta. Cada plato tiene su nombre y para pedirlo señalas su línea.

[00:52] No negocias los ingredientes uno por uno. Pides el plato número cuatro y llega completo. Y algo más. El mesero no se acuerda de ti. Si vuelves mañana no sabe qué pediste antes. Cada pedido va solo con todo lo que hace falta para entenderlo escrito en el papelito.

[01:08] Eso último es clave y es el corazón de REST. Cada petición es independiente y lleva todo lo que el servidor necesita para responderla. No hay memoria de la conversación anterior. A eso se le dice sin estado. Por eso REST escala tan fácil. Puedes poner 10 servidores idénticos detrás y a cualquiera le da igual atenderte porque tu petición se explica sola. REST organiza todo en recursos. Un recurso es una cosa de tu sistema. Un usuario, un producto, un pedido. Cada recurso vive en su propia

[01:39] dirección, una URL. Y para actuar sobre él usas los verbos de HTTP que ya existían. Traer es leer, mandar uno nuevo es crear, pisar el que estaba es reemplazar, quitarlo es borrar. La dirección dice sobre qué, el verbo dice qué le hago. Pides el usuario 42 y te llega el usuario 42, entero. Y ahí está la trampa y la gracia de REST a la vez.

[02:05] El plato llega completo, lo pidas completo o no. Disparar esa petición desde tu código es casi una línea. Apuntas a la dirección del recurso, mandas el token, lees la respuesta. Eso lo tiene cualquier lenguaje sin instalar nada raro, porque REST viaja sobre HTTP plano y HTTP lo habla todo el mundo.

[02:26] Navegadores, scripts, un simple comando desde la terminal. Del lado del servidor sí usas herramientas y son las que ya conoces aunque no lo sepas. En el mundo de Node, Express es el framework minimalista con el que armas las rutas.

[02:39] Tú dices, cuando llegue una lectura a esta dirección, corre esta función. En Python, Fast API hace lo mismo con un sabor moderno. Declaras los tipos y él te valida la entrada y te genera la documentación solo. En Java, Spring expone los recursos con controladores y convierte tus objetos a JSON sin que muevas un dedo. Tres ecosistemas, la misma idea. Una dirección, un verbo, una función que responde.

[03:06] Hay un detalle que vale oro y casi nadie respeta. No todos los verbos pesan igual si los repites. Reemplazar y borrar son idempotentes. Los mandas una vez o 10 veces y el servidor queda igual. Crear no. Lo mandas dos veces y te aparecen dos pedidos. Por eso cuando una compra se cobra dos veces, muchas veces es alguien tratando la creación como si fuera idempotente, reintentando a ciegas una petición que no se debía reintentar.

[03:34] REST se acuñó en el año 2000, en la tesis doctoral de Roy Fielding, que justamente describió el estilo con el que ya funcionaba la web. Por eso encaja tan natural con HTTP. Nació mirándolo. ¿Cuándo usar REST? Cuando tienes recursos claros con operaciones estándar. Cuando quieres que las respuestas se cacheen fácil, porque una dirección fija con una lectura es lo más cacheable que existe.

[03:59] Y cuando quieres que cualquier cliente del mundo pueda hablarte sin librerías especiales. Es el default sensato de casi todas las APIs públicas. ¿Cuándo no? Cuando una sola pantalla necesita datos de cinco recursos distintos y terminas haciendo cinco viajes al servidor.

[04:16] O cuando el plato te llega con 20 campos y tú solo querías dos. Y eso lo pagas en datos móviles del usuario. Vamos con la segunda, GraphQL. Cambias de local. Ahora es un buffet. No pides el plato cuatro, tomas un plato vacío y le pones exactamente lo que quieres y nada más.

[04:35] Una cuchara de esto, dos de aquello, cero de lo que no te gusta. Una sola pasada, un solo plato. Eso es GraphQL. En vez de muchas direcciones con platos fijos, hay un solo punto de entrada y tú describes en una petición la forma exacta de los datos que quieres.

[04:52] El servidor te devuelve eso, ni un campo de más, ni uno de menos. Tú armas la consulta listando los campos que necesitas y puedes anidar. Del usuario quiero su nombre y dentro sus pedidos y dentro de cada pedido el título de los artículos.

[05:07] Todo en un viaje. Con REST eso eran tres o cuatro viajes y un montón de campos que ni tocaste. Eso resuelve los dos dolores del menú fijo. Cuando el plato te llegaba con 20 campos y querías dos, eso es over fetching. El servidor te trajo de más y tú pagaste ese peso de gratis.

[05:25] Cuando una pantalla necesitaba cinco recursos y hacía cinco viajes, eso es under fetching. Cada respuesta se quedaba corta y tenías que volver a pedir. El buffet mata los dos. Pides la forma exacta una sola vez y la respuesta llega con la misma forma que pediste.

[05:41] Y fíjate que la dirección ya no cambia nunca. Normalmente pegas con un post al mismo punto de entrada y la diferencia vive en la consulta que mandas dentro. Eso es lo opuesto a REST, donde la dirección era el recurso. Del lado del servidor, lo que hace que esto funcione es la herramienta.

[05:57] En el mundo de JavaScript, la librería base se llama GraphQL y es la que lee tu consulta y la ejecuta campo por campo. Encima de ella, Apollo es el servidor más usado. Tú le entregas el esquema, el menú de qué se puede pedir y unas funciones que dicen de dónde sale cada campo y él arma todo el motor.

[06:18] Esas funciones que resuelven cada campo se llaman resolvers y son donde de verdad vive la lógica. GraphQL nació dentro de Facebook, en producción interna desde 2012 y se hizo público como open source en 2015. Nació justo del dolor de las apps móviles pidiendo demasiados datos por conexiones lentas, que es exactamente el overfetching que acabas de ver.

[06:41] Hay un costo escondido del buffet. Cuando das libertad total para pedir, un cliente puede pedir algo monstruosamente caro de calcular, anidando hasta hacer sufrir a tu base de datos. Eso da para un vídeo entero. Si quieres uno sobre cómo se blinda un servidor GraphQL, déjalo en los comentarios.

[06:59] ¿Cuándo usar GraphQL? Cuando tienes muchos clientes distintos, web, iOS, Android, que necesitan formas distintas de los mismos datos y no quieres mantener 20 endpoints a mano. Y cuando una pantalla junta datos de muchas fuentes y quieres resolver todo en un solo viaje.

[07:17] ¿Cuándo no? Si tu API es simple, con recursos claros y pocos clientes, GraphQL es traer una grúa para colgar un cuadro. El cacheo se vuelve más difícil que en REST, porque ya no tienes direcciones fijas que guardar y todo ese poder se paga en complejidad del servidor. Y la tercera, gRPC.

[07:36] Olvida el restaurante. Esto ya no es un cliente humano pidiendo datos. Son dos máquinas tuyas, dos servicios de tu propio backend, que se hablan miles de veces por segundo. Y entre ellas no quieres un mesero ni un buffet. Quieres una línea directa, un cable rojo, donde ya acordaron de antemano exactamente qué se van a decir.

[07:59] Eso es gRPC. Las dos máquinas firman un contrato antes de hablar. En ese contrato defines qué funciones existen, qué datos recibe cada una y qué devuelve, con el tipo exacto de cada campo. Ese contrato se escribe en un lenguaje aparte llamado Protocol Buffers.

[08:16] Lo potente viene ahora. De ese contrato, una herramienta te genera automáticamente el código del cliente y del servidor en tu lenguaje. Tú no escribes la petición a mano ni parseas nada. Llamas a una función que parece local.

[08:30] Dame el usuario 42. Y por debajo viaja por la red, con los tipos ya garantizados a ambos lados porque salieron del mismo contrato. Por eso el cliente se ve como una llamada a función normal, no como una petición HTTP. En los cuatro lenguajes llamas a algo tipo obtener usuario y te devuelve un objeto tipado. No hay dirección, no hay JSON a mano, no hay parsear texto.

[08:56] Ese código generado es exactamente lo que te dan las librerías de gRPC y la herramienta de Protocol Buffers. Tú escribes el contrato y ellas escriben el aburrido pegamento de red por ti. Go aquí no es casualidad. gRPC y Go salieron del mismo lugar y el cliente de Go es de primera clase, mantenido por el propio equipo de gRPC.

[09:19] ¿Por qué tanto lío con el contrato? Por velocidad. gRPC no manda texto JSON, que es legible, pero gordo y lento de parsear. Serializa los datos a binario, mucho más compacto, y viaja sobre HTTP 2, que multiplexa muchas llamadas por una sola conexión en vez de abrir una nueva cada vez. Lo creó Google, lo liberó en 2015 y sacó la versión 1.0 en agosto de 2016.

[09:47] Y trae algo que REST no tiene de fábrica. Además de la llamada simple de ida y vuelta, gRPC puede abrir un flujo donde el servidor te va mandando muchas respuestas o donde tú le mandas muchas o ambas a la vez en streaming. Cuatro modos en total.

[10:03] ¿Cuándo usar gRPC? Comunicación máquina a máquina dentro de tu back-end. Microservicios que se hablan muchísimo, donde el binario compacto y el contrato fuerte te dan velocidad y seguridad de tipos sin discusión. Es el cable rojo entre tus propios servidores.

[10:20] ¿Cuándo no? Desde el navegador directo, porque el navegador no te da control total sobre HTTP2 y necesitas una capa intermedia para traducir. Y para una API pública donde quieres que cualquiera pegue con un cliente simple.

[10:34] El contrato binario, que adentro es una bendición, afuera es una barrera, porque del otro lado necesitan tu mismo contrato para entender los bytes. Y llegamos a la cuarta. WebSockets. Todo lo anterior es la misma película.

[10:49] Tú preguntas, el servidor responde, se corta. Tú preguntas otra vez, responde, se corta. Como mandar cartas, una ida, una vuelta, sobre cerrado. El servidor nunca te habla primero, solo contesta lo que preguntaste. WebSockets rompe eso.

[11:07] Es una llamada telefónica. Levantas el teléfono una vez, la línea queda abierta y a partir de ahí cualquiera de los dos habla cuando tiene algo que decir, sin volver a marcar. Eso se llama bidireccional o full duplex. Los dos lados pueden hablar al mismo tiempo.

[11:25] Y lo más importante, el servidor te puede hablar a ti sin que tú hayas preguntado o Eso con REST es sencillamente imposible. La conexión empieza, curiosamente, como una petición HTTP normal, pero con una nota especial que dice, "Sube esto de categoría, conviértelo en un canal abierto."

[11:46] El servidor acepta ese ascenso y desde ese momento la misma conexión que abriste deja de ser pregunta-respuesta y se queda viva, hablando en los dos sentidos. Eso se estandarizó en la norma 6455, publicada en diciembre de 2011.

[12:04] Del lado del cliente, el patrón cambia respecto a todo lo anterior. Abres la conexión una vez y después solo reaccionas a los mensajes que lleguen, vengan cuando vengan. Ya no hay un pide y espera, hay un queda escuchando.

[12:19] No hay un bucle preguntando si hay algo nuevo una y otra vez. El servidor te avisa. Por eso un mensaje de chat aparece al instante en la otra pantalla sin que nadie refresque. Del lado del servidor en Node hay dos caminos.

[12:34] La librería WS es WebSocket puro y crudo, fiel a la norma, rapidísima y minimalista, pero tú te encargas de todo lo demás. Socket.io es una capa por encima que te regala lo que en producción siempre acabas necesitando. Reconexión automática cuando se cae la línea, salas para mandar un mensaje a un grupo entero y hasta un plan B si una red corporativa bloquea WebSockets.

[13:00] Esa comodidad cuesta algo de peso y velocidad, así que para un chat normal elige Socket.io y para algo donde cada byte importa, como datos de mercado alta frecuencia, eliges WS. Hay un primo cercano. Cuando solo necesitas que el servidor te empuje datos a ti, en un solo sentido, existe una opción más liviana que mantener la llamada abierta en los dos sentidos.

[13:24] Si quieres un video sobre eso, déjalo en los comentarios. ¿Cuándo usar WebSockets? Cuando los datos cambian solos y el usuario tiene que enterarse al instante. Chats, notificaciones en vivo, posiciones en un mapa, precios de un mercado que se mueven cada milisegundo, dos personas editando el mismo documento.

[13:46] ¿Cuándo no? Para pedir un dato una sola vez y olvidarte. Mantener una llamada abierta cuesta memoria en el servidor por cada usuario conectado y eso se acumula. Si solo consultas algo de vez en cuando, levantar el teléfono y dejarlo descolgado es desperdicio.

[14:04] Ahí una petición normal y corta gana de calle. Nada de esto es teoría de pizarra. Vive en cosas que tocas todos los días. GitHub te da las dos primeras a la vez. Tiene una API REST clásica con recursos y direcciones y además una API GraphQL, donde pides en un solo viaje exactamente los campos del repositorio que quieres.

[14:27] El mismo producto, las dos filosofías para que elijas según tu caso. gRPC es la plomería invisible de los gigantes. Dentro de empresas como Google, sus servicios internos se hablan entre sí con llamadas binarias rápidas en vez de mandarse JSON.

[14:45] Cuando una compañía tiene cientos de microservicios conversando millones de veces por segundo, ese ahorro de cada byte y cada milisegundo es la diferencia entre que el sistema aguante o se caiga. Y WebSockets es lo que hace que tu chat se sienta vivo.

[15:01] El mensaje del otro aparece sin que refresques. Es lo mismo que mueve un gráfico de trading que parpadea solo o el cursor de otra persona deslizándose por un documento compartido mientras tú escribes. El servidor te habla sin que preguntes.

[15:17] La idea que quiero que te lleves no es que una sea moderna y las otras viejas. Las cuatro conviven, muchas veces dentro de la misma empresa. Cada una donde brilla. Recap y guárdate esta tabla mental, porque es lo único que necesitas para decidir.

[15:32] Rest es el menú. Recursos con direcciones fijas, sin memoria entre peticiones, sobre HTTP plano, lo habla todo el mundo. Lo construyes con Express, Fast API o Spring. Tu default para una API pública con recursos claros.

[15:48] GraphQL es el buffet. Un solo punto de entrada y pides la forma exacta de los datos, matando el over fetching y el under fetching. Lo levantas con Apollo y la librería GraphQL. Brilla cuando muchos clientes distintos necesitan cosas distintas.

[16:06] gRPC es el cable rojo entre máquinas. Contrato Protobuf, binario, rápido, sobre HTTP 2, con el cliente y el servidor generados solos. Para que tus propios servicios se hablen a toda velocidad por dentro. WebSockets es la llamada que no cuelga.

[16:23] Conexión abierta en los dos sentidos, con WS o socket.io. Para cuando los datos cambian solos y el usuario tiene que enterarse al instante. Y la regla de oro, la mayoría de los sistemas reales no eligen una. Usan Rest o GraphQL hacia fuera.

[16:41] gRPC entre sus servicios por dentro y WebSockets para lo que pasa en vivo. La pregunta nunca es cuál es la mejor, es cuál encaja con este problema. El menú, el buffet, el cable rojo o la llamada abierta. Si una sola de estas cuatro te hizo clic hoy, ese clic vale más que memorizar las cuatro.

[17:02] Cuéntame en los comentarios cuál usas en tu trabajo y cuál te dio más dolores de cabeza. Y si esto te aclaró el panorama, suscríbete. Una cosa antes de irte. Todas estas APIs serias viajan sobre HTTPS, o sea, cifrado. Si quieres ver qué pasa por debajo de esa S, cómo se cifra, qué es un hash y qué es encoding, te dejo en pantalla mi video de encriptación, hashing y encoding. Ve a verlo ahora, que te va a cuadrar el otro lado de la historia. Soy Torti y esto fue Torti Code.
