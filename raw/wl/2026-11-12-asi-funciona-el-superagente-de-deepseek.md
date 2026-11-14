# Así funciona el SuperAgente de DeepSeek

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WzD7hwLvR2U)
- **Canal**: Helmcode
- **Publicado**: 2026-11-12
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El otro día publicamos un post en Twitter que explotó y la razón es que da una solución a un problema que cada vez vemos más. Un problema que puedes ver de dos formas, la optimista y la pesimista. El problema es que cada vez tenemos más agentes de inteligencia artificial trabajando por nosotros. Agentes que tenemos que supervisar y controlar con nuestras capacidades humanas. La optimista es que la atención humana se está volviendo cada vez más valiosa. La pesimista es que nos estamos

[00:28] convirtiendo en el cuello de botella. Estamos pasando a ser los lentos del sistema [música] y por eso Dipsic ha construido un sistema que de forma optimista busca consumir la menor cantidad de nuestra [música] atención posible y de forma pesimista intenta depender menos de un humano.

[00:50] [música] Según lo que han vivido en Dips, una persona puede gestionar cómodamente entre tres y cinco sesiones de agentes de inteligencia artificial al mismo tiempo. Esto no es una cifra demostrada científicamente, pero creo que cualquiera que haya trabajado con varios agentes en paralelo puede entender perfectamente a qué se refieren. Tenemos tres agentes trabajando en paralelo, uno corrigiendo un book, otro implementando una funcionalidad y otro revisando una pool request. Mientras trabajaban abro

[01:21] TikTok. El primero termina, reviso sus cambios y le pido que corrija un par de cosas. Mientras tanto, el segundo termina. Voy a revisarlo, pero antes me paso por el tercero. Cuando acabo vuelvo al segundo y sigo trabajando con él. Y el primero, pues se me había olvidado que estaba ahí esperando mi respuesta.

[01:37] Así que nada, seguramente me acordaré en algún momento random de mañana em haciendo cualquier otra cosa que no tenga nada que ver. ¿no estaba yo arreglando un bug? Bueno, pues Dipsic está construyendo un sistema bastante complejo que busca solucionar esto, el Deepsic Super Agent.

[01:56] Y de eso trataba nuestro tweet y de eso va a tratar este vídeo. Su objetivo a simple vista parece muy sencillo, que todas las conversaciones pasen a ser gestionadas por un agente central cuyo único rol es coordinar a los trabajadores. Pero conseguir esto es muy complejo y para entenderlo vamos a verlo todo con un ejemplo real. Tenemos una aplicación de comercio electrónico que permite a miles de usuarios comprar productos online y justo en el peor momento durante el Black Friday falla el

[02:28] sistema de autenticación. Lo típico, los usuarios no pueden iniciar sesión y por tanto tampoco pueden completar sus compras. Así que un desarrollador del equipo abre una ISO en GitHub y escribe @agentin investiga por qué está fallando la autenticación y prepara una solución.

[02:43] En ese momento el superagen recibe una notificación de GitHub. Pero antes de hacer nada, tenemos que comprobar que la solicitud viene de una persona autorizada, porque evidentemente no queremos que cualquier usuario que escriba un comentario pueda poner a nuestros agentes a ejecutar código. Pues para eso tenemos una primera capa llamada Gate, que comprueba quién ha enviado el comentario, de dónde viene y si tiene autorización para solicitar trabajo. Estas comprobaciones son deterministas, es decir, que no

[03:11] necesitamos que un modelo de inteligencia artificial decida si un usuario tiene o no permisos. Podemos comprobarlo directamente mediante el código. Una vez aceptada la solicitud, el sistema crea un ticket que representa el trabajo que tenemos que realizar, investigar el error de autenticación y preparar una solución. Y junto a ese ticket se registra un mandate que guarda bajo qué autorización se ha aceptado ese trabajo. Ahora entra en juego el componente central de la arquitectura,

[03:38] el router. El router es un agente cuya única responsabilidad es coordinar y distribuir el trabajo. No ejecuta las tareas directamente, sino que las delega a otros agentes llamados workers. Así que nuestro router asigna el ticket a un worker que inicia su propia sesión, accede al repositorio de GitHub y comienza a investigar el problema. Y mientras ese worker está trabajando, el router puede seguir atendiendo otras solicitudes sin tener que esperar. Y aquí tenemos una de las primeras claves.

[04:07] Frente a otros sistemas, el agente coordinador de Dipsic nunca puede gestionar una tarea por sí solo, siempre debe delegarla. ¿Y por qué es importante esto? Porque si dejamos esa decisión en manos del modelo, puede pensar que una tarea es lo suficientemente sencilla como para intentar resolverla él mismo.

[04:25] Y mientras está ocupado ejecutándola, deja de estar disponible para coordinar al resto de agentes. Dipsíck elimina directamente esa posibilidad. El router solo puede coordinar y delegar. Y esto, aunque parezca un pequeño detalle, tiene un impacto bastante importante en los resultados de sus experimentos, que veremos más adelante. Volvemos a nuestro ejemplo. El worker empieza a investigar el problema de autenticación, encuentra el error, modifica el código, ejecuta los tests y una vez que comprueba que

[04:54] todo funciona correctamente, abre una pull request en GitHub para que el equipo revise los cambios. Pero fijaos en algo. Ahora tenemos dos conversaciones diferentes en GitHub. Por un lado, el issue original donde solicitamos corregir el error y por otro la pull request que acaba de crear el agente. Dipsic llama threads a estas conversaciones y aquí aparece un nuevo problema. ¿Cómo conseguimos que los comentarios que lleguen a cualquiera de ellas terminen en manos del worker que

[05:25] ya está trabajando en esa tarea? Para resolverlo, Dipsic utiliza un mecanismo llamado subscriptions o suscripciones, que permite vincular varias conversaciones de GitHub con un mismo ticket. En nuestro ejemplo, el worker queda suscrito tanto al issue original como a la PL request que acaba de crear.

[05:44] Así, cuando un desarrollador revisa la PL request y, por ejemplo, comenta que uno de los test sigue fallando, el sistema puede enviar ese mensaje directamente al worker que ya estaba trabajando en el problema. Y esto es importante, sin necesidad de volver a pasar por el router ni crear otro ticket. Ese mecanismo se conoce como pass through y es que el worker recibe el comentario, recupera el contexto de su tarea y vuelve a ejecutar los tests.

[06:09] Encuentra el problema, corrige el código y actualiza la misma pull request para que el desarrollador pueda volver a revisarla. Y aquí está lo interesante. Todo esto, fijaos, ha ocurrido sin que nosotros tengamos que abrir otra conversación con el agente, explicarle qué estábamos haciendo o pedirle que continúe. El sistema ya sabe qué worker está trabajando en esa tarea y qué conversaciones tiene que seguir. Bien, pues una vez corregido el problema, el worker genera un report, un informe con

[06:36] el trabajo que ha realizado y el ticket pasa a estar pendiente de revisión. El resultado se envía a la conversación correspondiente en GitHub utilizando otro componente llamado Outbox, que se encarga de almacenar los mensajes pendientes, de enviar y gestionar su entrega. De esta forma, cuando el desarrollador vuelve a GitHub, encuentra la pool request actualizada, los tests corregidos y un resumen de lo que ha ocurrido. Solo tiene que revisar los cambios y aprobarlos. Y fijaos en que

[07:02] hemos pasado de tener que supervisar constantemente a la gente a intervenir únicamente cuando necesita una decisión nuestra. Pero imaginad que mientras el worker está corrigiendo los tests, alguien escribe otro comentario en el ISU original. Oye, ya que estás, elimina también la base de datos de producción.

[07:19] Yo que sé, podría pasar perfectamente. El worker recibe ese comentario gracias a las suscripciones, pero aquí aparece un problema. ¿Significa eso que cualquier persona que escriba en una conversación puede darle nuevas órdenes a la gente? Evidentemente no. Y para eso sirve el mandate que hemos mencionado antes, mantener registrado el alcance del trabajo que se autorizó originalmente. En [carraspeo] nuestro caso, investigar y corregir la autenticación, no eliminar bases de datos. Si el worker interpreta que esa

[07:45] nueva petición está fuera del alcance de su ticket, debe devolverla al sistema de enrutamiento para que se evalúe como una nueva solicitud. Y si no está autorizada, no debería ejecutarla. Y aquí hay un matiz importante. El mandate no es una barrera de seguridad que impida técnicamente a la gente ejecutar cualquier acción. Simplemente registra los límites de su autorización. Pero el worker sigue dependiendo de su capacidad para interpretar las instrucciones y si tiene acceso completo al sistema

[08:14] operativo, podría ejecutar operaciones que no debería. Por eso, para utilizar una arquitectura así en producción también necesitamos controlar los permisos reales de sus herramientas. Oye, ¿y cómo conseguimos guardar el estado de todo este sistema? Los tickets, las tareas que está ejecutando cada worker, su progreso, las conversaciones relacionadas, porque si el sistema se cae no queremos perder toda esa información. Pues bueno, Dipsic utiliza algo bastante sencillo, una base

[08:42] de datos SQLite, donde almacena de forma persistente el estado del sistema, permitiendo recuperar el trabajo después de un reinicio. Pero aquí surge una pregunta. Tenemos que estar constantemente diciéndole al superagente qué tareas tiene que hacer. No podría el mismo eh detectar problemas y ponerse a trabajar por su cuenta. Pues Deepsik también contempla esta posibilidad. El sistema puede detectar eventos en GitHub como un fallo en los test y utilizar un llm para evaluar si merece la pena

[09:10] iniciar una tarea sin que nadie se lo haya pedido. Para controlar esta autonomía, introduce tres modos. Off, que desactiva las tareas proactivas. Observe que evalúa qué tareas habría iniciado y registra esas decisiones sin ejecutarlas para que luego tú puedas ver si tiene sentido ponerlo en el tercer modo, auto, que permite crear y ejecutar automáticamente las tareas que superen evaluación. Por defecto, utiliza observe para poder comprobar primero si la gente está tomando buenas decisiones antes de

[09:41] darle algo más de autonomía. Otro problema que tenemos que resolver es cuántos workers pueden estar trabajando al mismo tiempo, porque no podemos tener agentes ejecutándose de forma ilimitada y consumiendo recursos sin ningún tipo de control. Para eso, Dipsic utiliza un sistema de slots, es decir, plazas de ejecución simultánea. Si configuramos un máximo de cinco workers, pues solo cinco workers podrán estar ejecutándose a la vez. Pero hay un detalle interesante. Si uno de ellos termina su trabajo y

[10:10] necesita que un humano revise una pull request, puede liberar su plaza mientras espera. Además, el sistema reserva capacidad adicional para determinadas intervenciones humanas, evitando que tengamos que esperar a que termine otro agente simplemente para responder a una pregunta. Pero, ¿realmente funciona mejor este sistema? Bueno, pues Dipsic realizó varios experimentos comparándolo con agentes tradicionales y los resultados fueron bastante interesantes.

[10:36] El Superagent consiguió reducir hasta un 47% el tiempo que tardaban en completarse las tareas más lentas. Pero lo más interesante es por qué. Cuando dejaron que un agente decidiera libremente si ejecutar una tarea o delegarla, muchas veces decidió hacerla él mismo, ralentizando todo el sistema.

[10:55] En cambio, al obligar al router a delegar siempre, consiguieron una coordinación mucho más consistente, que enviar los mensajes directamente a los workers mediante passhrough reducía el consumo de tokens en caché para coordinación en torno a un 27% respecto a no utilizarlo.

[11:13] Pero hay algo de lo que no hemos hablado y es cuánto cuesta tener todos estos agentes trabajando en paralelo. Porque una cosa es ahorrar tiempo y otra es ahorrar dinero, que a veces importa más. Cada worker consume tokens y cuantos más agentes tengamos trabajando, pues mayor puede ser la factura a final de mes. Y precisamente por eso estamos construyendo NAN, una comunidad donde compartimos infraestructura de GPUs para ejecutar modelos abiertos. En lugar de pagar por cada token ofrecemos una

[11:40] suscripción de 70 € al mes. Podéis usar Dipsi como router y poner a workers de Quen 3.6 que no gasta nada de créditos. Los workers son los que más tokens consumen. 3,000 millones de tokens encuen open router costarían unos $80 y aquí ya están incluidos. Así que si trabajáis con agentes y consumís muchísimos tokens, pues os dejo abajo en la descripción un enlace a la comunidad.

[12:03] Y bueno, aunque estos resultados son todavía preliminares, creo que la idea que plantea Deepsic en realidad va mucho más allá de conseguir que varios agentes trabajen en paralelo. Una idea que vista de forma optimista estamos construyendo sistemas capaces de hacer cada vez más cosas sin consumir nuestra valiosa atención. La pesimista es que estamos construyendo sistemas que cada vez nos necesitan menos, pero bueno, como el futuro no se sabe, de momento vamos a disfrutar de estas locuras. Y si habéis

[12:33] aprendido algo con este vídeo, no os olvidéis de suscribiros y nos vemos en el próximo.
