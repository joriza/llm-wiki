# Podrías haber inventado OpenClaw: cómo funciona un asistente de IA persistente, paso a paso

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=5fjFsf3ZS2U)
- **Canal**: Articulator ES
- **Publicado**: 2026-11-04
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 16:36

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] ¿Y si te dijera que podrías haber inventado tú OpenClaw? Es lo que propone Nader Dabit en su artículo. Construir desde cero, paso a paso, un asistente personal de inteligencia artificial que vive en tus apps de mensajería.

[00:13] Recuerda, actúa y trabaja solo. Hoy te lo cuento en español. Empecemos por el problema. Cuando usas ChatGPT o Claude en el navegador, chocas con cuatro límites. El primero, no tiene estado. Cada conversación empieza de cero.

[00:28] No sabe tu nombre, ni tus preferencias, ni lo que le pediste ayer, así que te pasas el día explicándole el contexto otra vez. El segundo es pasivo. Tú vas a él, pero él nunca viene a ti. No puede despertarse a las 7 y resumirte la agenda, ni vigilar tu correo.

[00:45] El tercero está aislado. No ejecuta comandos en tu ordenador, no navega por ti ni envía mensajes. Vive en una caja de texto, sin manos. El cuarto. Vive en un solo canal. Tu vida pasa por WhatsApp, Telegram, Discord o Slack, pero la inteligencia artificial está en su propia pestaña.

[01:04] No puedes escribirle donde ya estás, y menos aún que recuerde lo mismo en todas partes. Ahora imagina lo contrario. Un asistente que vive en todas tus apps de mensajería, con una sola memoria compartida, que recuerda tus preferencias, tus proyectos y vuestras conversaciones, y que ejecuta comandos, navega por Internet y maneja un navegador de verdad.

[01:26] Que se despierta según un horario para hacer tareas sin que se lo pidas, y que corre en tu propio hardware, un portátil, un servidor o un Mac Mini, siempre encendido y bajo tu control. Eso es OpenClaw, no es un chatbot, es un asistente personal con identidad propia, herramientas y presencia en todos tus canales.

[01:45] El artículo no se queda en la descripción. Lo construye desde cero, con solo tres ingredientes: una API de mensajería, un modelo de lenguaje y las ganas de que la inteligencia artificial sirva fuera de la ventana de chat.

[01:57] Son 10 pasos y cada uno nace de un problema real. Vamos al punto de partida, el bot más simple posible. Una inteligencia artificial que responde en Telegram. El código cabe en una pantalla. Recibe tu mensaje, se lo manda a Claude Sonnet y te devuelve su respuesta.

[02:14] Lo ejecutas, le escribes desde el móvil y contesta. Es sencillo, sí, pero es una versión peor de la web de Claude. Cada mensaje es independiente. Le dices tu nombre y en el siguiente mensaje ya lo ha olvidado. No tiene memoria, ni herramientas, ni personalidad.

[02:30] Así que vamos a darle memoria. El primer paso, sesiones persistentes. El problema es que el bot no tiene estado. Pregúntale qué le dijiste antes y no tiene ni idea. La solución es guardar un historial de la conversación por cada usuario.

[02:44] Antes de llamar al modelo, carga el historial. Después, guarda tu mensaje y su respuesta. Ahora sí hay una conversación de verdad. Le dices, me llamo Nader. Y te responde, encantado. Horas después le preguntas cómo te llamas, y lo sabe.

[03:00] El bot se acuerda porque la conversación entera viaja en cada llamada al modelo. La clave está en el formato JSONL. Cada línea del archivo es un mensaje y solo se añaden líneas al final. Si el proceso se cae a mitad de una escritura, pierdes como mucho una línea.

[03:17] Es justo lo que usa OpenClaw, un archivo por sesión y cada archivo es una conversación. Reinicias el proceso y todo sigue ahí. Pero aquí asoma un problema que resolveremos más adelante. Las conversaciones crecen. Con las semanas, el historial acaba siendo más grande que la ventana de contexto del modelo.

[03:36] Lo apuntamos y seguimos. El segundo paso, darle personalidad. Nuestro chatbot funciona, pero es un asistente genérico. Y si quisiéramos que fuera alguien, OpenClaw lo resuelve con un archivo, SOUL.md, el alma del agente.

[03:51] Es un markdown que define su identidad, cómo se comporta y cuáles son sus límites. Por ejemplo, el del artículo se llama Jarvis. Su personalidad, ayudar de verdad, no aparentar que ayuda. Nada de «¡qué buena pregunta!», directo al grano.

[04:07] Puede tener opiniones y llevarte la contraria. Y sus límites, lo privado se queda en privado, pregunta antes de actuar hacia fuera y no habla en tu nombre. Ese texto se inyecta como prompt de sistema en cada llamada al modelo y en él puedes escribir lo que quieras.

[04:22] Una historia de origen, una filosofía, sus reglas. Cuanto más concreto, más coherente es el agente. «Sé útil» es vago, conciso cuando hace falta, minucioso cuando importa. Ni un burócrata ni un pelota le da al modelo algo con lo que trabajar.

[04:39] El tercer paso, herramientas. Un bot que solo habla se queda corto. ¿Y si pudiera hacer cosas? La idea es darle al modelo herramientas con estructura y dejar que él decida cuándo usarlas. En el ejemplo hay cuatro. Ejecutar un comando, leer archivos, escribirlos y buscar en la web.

[04:57] Cada herramienta tiene tres partes: un nombre con su esquema de entrada, una descripción que le explica al modelo para qué sirve, y la función que la ejecuta de verdad. Por ejemplo, la de ejecutar un comando lanza un proceso en tu máquina y devuelve lo que imprime.

[05:11] Después viene el bucle del agente. Llamas al modelo con las herramientas. Si pide usar alguna, la ejecutas y le devuelves el resultado y vuelves a llamarlo. Así una y otra vez, hasta que responde sin pedir nada más. Entonces, ese texto es la respuesta final.

[05:28] Ahora le escribes por Telegram. Crea un archivo que imprima hola mundo y ejecútalo. El bot escribe el archivo, lo ejecuta y te cuenta lo que ha salido. Ha decidido él qué herramientas usar y en qué orden. OpenClaw tiene muchas más, como el navegador o lanzar subagentes, pero todas siguen este mismo patrón.

[05:47] El cuarto paso, permisos. Estamos ejecutando comandos que llegan por Telegram. Eso da miedo. ¿Qué pasa si alguien entra en tu cuenta y le pide al bot que lo borre todo? Hace falta un sistema de permisos. El del artículo tiene tres piezas.

[06:01] Primero, una lista de comandos seguros, como listar archivos, leerlos o ver la fecha, que se ejecutan sin preguntar. Segundo, unos patrones peligrosos, como borrar o actuar como administrador. Y tercero, un archivo con las aprobaciones que ya diste.

[06:17] Si el comando es seguro o ya lo aprobaste, se ejecuta al momento. Si no, el agente recibe un permiso denegado y puede probar otro camino. La aprobación queda guardada, así que nunca te pregunta dos veces por lo mismo. OpenClaw va más allá.

[06:32] Permite aprobar patrones enteros como git asterisco y tiene tres niveles. Pedirte permiso, registrarlo y seguir, o aprobarlo directamente. El quinto paso es donde se pone interesante. Hasta ahora tenemos un bot de Telegram.

[06:47] Pero ¿y si también lo quieres en Discord, en WhatsApp y en Slack? Podrías escribir un bot para cada plataforma, pero cada uno tendría su sesión, su memoria y su configuración. El bot de Telegram no sabría nada de tus otras conversaciones.

[07:02] La solución es una pasarela, un proceso central que gestiona todos los canales. Y fíjate en lo que ya tenemos. La función del turno del agente no sabe nada de Telegram. Recibe mensajes y devuelve texto. La lógica del agente ya está separada del canal.

[07:17] Para demostrarlo, el artículo añade una segunda puerta, una API HTTP junto al bot de Telegram, las dos hablando con el mismo agente y las mismas sesiones. Le dices tu nombre por Telegram, se lo preguntas desde la otra puerta con tu mismo identificador, y lo sabe.

[07:31] Un solo agente, una sola memoria, dos interfaces. El siguiente paso es llevarlo a un archivo de configuración que diga qué canales arrancar y cómo autenticarse. Es lo que hace OpenClaw, una sola pasarela para Telegram, Discord, WhatsApp, Slack, Signal, iMessage y más.

[07:50] Y puede agrupar las sesiones por usuario, por canal o en una sola compartida. El sexto paso. ¿Te acuerdas del problema que apuntamos? Tras semanas hablando con el bot, el historial tiene miles de mensajes y su tamaño supera la ventana de contexto del modelo.

[08:05] ¿Y ahora qué? La solución es compactar, resumir los mensajes antiguos y quedarse con los recientes. Primero, hay que estimar los tokens. Una regla aproximada, 4 caracteres por token. Si la conversación pasa de 100.000, más o menos el 80% de una ventana de 128.000 se parte en dos.

[08:24] La mitad antigua se manda al modelo para que la resuma y la reciente se queda tal cual. El resumen tiene que conservar lo importante. Los datos del usuario, como su nombre o sus preferencias, las decisiones tomadas y las tareas pendientes.

[08:39] Ese resumen sustituye a todos los mensajes viejos. El bot sigue recordando lo esencial. Y el archivo es mucho más pequeño. Para probarlo sin pasarte horas chateando, baja el umbral a 1000 tokens. La compactación de OpenClaw es más fina.

[08:55] Parte los mensajes en trozos según sus tokens. Resume cada trozo por separado y deja un margen de seguridad, porque la estimación nunca es exacta. Pero la idea es la misma. El séptimo paso, memoria a largo plazo. El historial de la sesión es la memoria de la conversación, pero si reinicias la sesión o empiezas otra, todo desaparece.

[09:16] Hace falta una memoria aparte, que sobreviva a los reinicios. La idea, dos herramientas más, una para guardar recuerdos y otra para buscarlos, sobre archivos markdown en una carpeta. Vamos a probarlo. Le dices, recuerda que mi restaurante favorito es Elvies y que me gusta ir los fines de semana.

[09:35] El bot lo guarda en un archivo de memoria. Reinicias la sesión o el bot entero y le preguntas, ¿dónde cenamos? Busca en su memoria y te propone ir a tu favorito este sábado. Funciona porque la memoria está en archivos, no en la sesión.

[09:50] Nuestra búsqueda es por palabras clave y basta para empezar. OpenClaw usa búsqueda vectorial con embeddings, que encuentra por significado. Así, «fallo de login» da con «problemas de autenticación». El octavo paso resuelve un problema sutil pero crítico.

[10:06] ¿Qué pasa si llegan dos mensajes a la vez? Le pides por Telegram que mire tu agenda y al mismo tiempo por la web. ¿Qué tiempo hace? Los dos cargan la misma sesión, los dos escriben en ella y el archivo acaba corrupto. La solución es sencilla, un candado por sesión.

[10:23] Solo se procesa un mensaje a la vez en cada sesión. Los mensajes del mismo usuario hacen cola y los de usuarios distintos van en paralelo. Son cinco líneas y se acabaron los choques. OpenClaw lo amplía con carriles separados para los mensajes, las tareas programadas y los subagentes.

[10:41] El noveno paso, tareas programadas. Hasta ahora el agente solo responde cuando le hablas. ¿Y si quieres que mire tu correo cada mañana o que te resuma la agenda antes de las reuniones? Hacen falta latidos, tareas que despiertan al agente con un temporizador.

[10:55] Por ejemplo, un resumen matinal todos los días a las 7 y media. Lo importante es que cada latido usa su propia sesión, para no llenar de ruido tu conversación principal. Y llama a la misma función del turno del agente. Es un mensaje más, solo que lo dispara un reloj en vez de una persona.

[11:12] OpenClaw acepta expresiones cron completas y les da su propio carril, para que nunca bloqueen los mensajes en tiempo real. El décimo paso, varios agentes. Con más tareas, una sola personalidad y un solo juego de herramientas no llegan a todo.

[11:27] Un asistente de investigación necesita otras instrucciones que uno general. La solución, varias configuraciones de agente, cada una con su alma y su sesión, y un enrutador que elige a quién va cada mensaje. En el ejemplo hay dos, Jarvis, el asistente general, y Scout, especialista en investigación, que tiene que citar fuentes para cada afirmación.

[11:49] Si el mensaje empieza por barra research, va a Scout, si no, a Jarvis. Cada uno tiene su propia conversación, pero los dos comparten la misma carpeta de memoria. Y eso permite que colaboren. Le pides a Scout que investigue buenas prácticas de programación asíncrona en Python.

[12:06] Busca en la web y guarda lo que encuentra en la memoria. Luego le preguntas a Jarvis qué encontró Scout y lo busca en esa memoria y te lo cuenta. Sin mensajes directos entre ellos, solo archivos compartidos. Además, OpenClaw lo amplía con subagentes, que un agente lanza para una tarea concreta y con mensajes entre agentes.

[12:25] Pero el patrón de fondo es el mismo. Cada agente no es más que un alma, una sesión y unas herramientas. Con todo esto, el artículo lo junta en un único programa, Mini OpenClaw, una consola interactiva con sesiones, alma, herramientas, permisos, compactación, memoria, cola, tareas programadas y varios agentes.

[12:45] Todo en unas 400 líneas de Python. En la sesión de ejemplo, le pides que recuerde tu restaurante favorito y lo guarda. Le preguntas qué hay en tu carpeta de proyecto y ejecuta un comando para verlo. Reinicias la sesión y al preguntarle dónde te gusta comer, lo recuerda.

[13:02] La memoria sobrevive, los agentes colaboran y los comandos piden permiso. Lo bonito es que ninguna pieza es arbitraria. Cada una nació de un problema práctico. No se acuerda de nada. Sesiones. Suena a chatbot genérico. Un alma.

[13:18] Solo habla, no actúa. Herramientas. Ejecuta comandos peligrosos. Permisos. Lo quiero en todas mis apps. Una pasarela. La conversación se hizo demasiado larga. Compactación. Olvida las cosas entre sesiones. Memoria. Dos mensajes a la vez corrompen los datos.

[13:36] Una cola. Quiero que haga cosas solo. Latidos. Y un agente no lo hace todo bien. Varios agentes. Así es como podrías haber inventado OpenClaw. Nuestro prototipo cubre la arquitectura básica. El artículo termina con cómo la lleva OpenClaw a producción y hay ideas muy buenas.

[13:53] La primera, el navegador. Le da al agente un navegador con Playwright, pero en vez de mandarle capturas de pantalla de unos 5 megas cada una, le manda una instantánea semántica. Es una versión en texto del árbol de accesibilidad de la página.

[14:07] Un título, un botón para iniciar sesión, un campo para el correo. Cada elemento con el que se puede interactuar lleva un número. Cuando el agente quiere pulsar algo, dice: «pulsa el 1», sin adivinar y unas 100 veces más pequeño que una captura.

[14:21] Así que gasta muchos menos tokens. La segunda, el ámbito de las sesiones. Nuestro prototipo usa el usuario como clave. OpenClaw deja elegir una sola sesión para todos los mensajes directos, una para cada persona en todos los canales, o una por persona y canal, y con los enlaces de identidad, lo que Alicia habla por Telegram y por Discord comparte historial.

[14:45] La tercera, los canales como plugins. Cada canal de Telegram a iMessage es un adaptador que traduce sus mensajes a un formato común. Para añadir un canal nuevo, basta con escribir su adaptador, sin tocar ni una línea de la lógica del agente.

[15:00] La cuarta, una memoria híbrida, combina vectores que encuentran por significado con un índice de texto completo para las palabras exactas, todo en una base de datos local y con embeddings de OpenAI, de Gemini, de Voyage o de modelos locales.

[15:15] La quinta, subagentes. En nuestro prototipo, el enrutado es manual. En OpenClaw, un agente puede lanzar otro por su cuenta. El hijo trabaja en su propio contexto, con un tiempo límite, y le devuelve el resultado al padre.

[15:29] Así el principal delega una investigación a fondo y sigue cuando el especialista termina. Si quieres construir el tuyo, el consejo es ir poco a poco. Empieza con un solo canal y sesiones. Añade herramientas de una en una.

[15:42] Primero leer y escribir archivos. Luego la terminal. Suma memoria cuando la necesites. Canales cuando uno se te quede corto. Y agentes cuando las tareas se especialicen. Mejor 2 que 10. O usa directamente OpenClaw, que es de código abierto y resuelve los casos límite.

[16:00] En resumen, un asistente persistente es un bucle de agente rodeado de piezas sencillas. Sesiones, un alma, herramientas, permisos, una pasarela, memoria y tareas programadas. Ninguna es magia y cada una resuelve un problema concreto.

[16:15] Si te ha sido útil, dale a me gusta y suscríbete al canal para no perderte el próximo vídeo. Y cuéntame en los comentarios, ¿qué pieza le añadirías tú a tu asistente? ¡Hasta pronto!
