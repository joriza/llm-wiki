# OpenAI perdió control de un modelo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=o4NStEgIEjo)
- **Canal**: Platzi
- **Publicado**: 2026-09-05
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 21:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] 700 agentes de inteligencia artificial atacaron al mismo tiempo una compañía de inteligencia artificial llamada Hugging Face. Hugging Face es como el GitHub de la inteligencia artificial. Es un sitio web donde cualquier tipo de empresa o persona puede subir las redes neuronales de un modelo para que no las pueda descargar y correr. Tienen otras cosas, es como la comunidad de inteligencia artificial, pero este es el uso más común de Hugging Face. Cuando los modelos chinos, por ejemplo, liberan una

[00:28] red neuronal, la liberan casi siempre en Hugging Face. Y ese ataque de 700 agentes, resultó ser, sin que Open AI lo supiera, un modelo nuevo que Open AI está entrenando, que a escondidas de los empleados de Open AI, decidió hacer este ataque. Así que arranquemos por donde arranca toda esta historia, que es mayo del 2026.

[00:50] Open AI está entrenando un nuevo modelo que vamos a asumir es GPT 6. Este modelo, entre las diferentes cosas que usan para entrenarlo, lo hacen pasar pruebas. Hay una prueba que se llama Exploit Gym. Aquí está el paper de mayo del 2026. Exploit Gym es una prueba donde intentan mostrarle al modelo diferentes vulnerabilidades y le preguntan si puede convertirlas en ataques de seguridad informática reales.

[01:18] Eso es todo. Ese modelo tiene 88 898 tareas, de las cuales el modelo que Open AI estaba entrenando no había podido resolver 198. Y desde mayo había estado pegándole y pegándole a las tareas, pero no las podía solucionar.

[01:34] El 8 de julio del 2026, casi 2 meses después de que Open AI está haciendo este entrenamiento, mes y medio más o menos, uno de los agentes, y aquí quiero aclarar qué es un agente. Un agente es un hilo de conversación de una inteligencia artificial que tiene la capacidad de ejecutar tareas, por ejemplo, correr código y tomar decisiones, por ejemplo, para qué corro ese código. Cuando ustedes hacen un hilo de conversación con un AI, eso puede o no ser un agente. El concepto es medio

[02:02] extraño, pero típicamente un agente es un hilo de conversación con el mismo contexto, que es un contexto limitado. El cuento en que un agente, ese agente se llama Face One 10841, de la tarea para este modelo de entrenamiento, descubre el 8 de julio cómo compartir mensajes secretos con otros agentes. Descubre de repente, yo tengo una forma hackeando un sistema para que los otros agentes que están corriendo, entrenando este modelo, las otras líneas, los otros hilos de sesiones del modelo que se está

[02:34] entrenando con la tarea de exploit gym, podemos compartirnos información. Esto lo encontró a través de hackear un sistema interno que usó Open AI llamado webdav mkcol, específicamente atacando los nombres de las carpetas, de los directorios.

[02:51] Entonces, aquí por ejemplo, este mensaje que ustedes ven en la parte de abajo, esto es de la investigación de una organización que se dedica a hacer investigación de seguridad y de tareas de inteligencia artificial llamada Metar, junto con Redwood Research. Ese es uno de los mensajes, ese que dice help Face One ARB 010841 no consumer seek idea, es un mensaje que el modelo, ese agente del modelo, le deja a otros agentes.

[03:15] De un momento a otro, los otros agentes empiezan a descubrir los nombres de carpeta y empiezan a darse cuenta, estos mensajes los está dejando agentes como yo. Y entonces empiezan a coordinar. Específicamente 1200 agentes empiezan a coordinar a quién van a hackear a escondidas de Open AI. Nunca le envían un mensaje a los investigadores de Open AI que están modelando y están entrenando este agente. Nunca hacen que esto salga a la luz. Y la forma en la que se empiezan a comunicar es impresionante. Entonces,

[03:42] por ejemplo, aquí ustedes ven, esto es de un artículo que Open AI publicó uno de esos mensajes que los agentes dejaban, model_function_rce_discover. RCE significa remote code execution o o ejecución remota de código. Es cuando un atacante, un hacker, toma control de un computador en otro lugar y puede ejecutar código en ese computador. Si un hacker puede, por ejemplo, correr un programa en tu máquina, podría robarte tus credenciales para acceder a Facebook, a Instagram, a WhatsApp,

[04:09] etcétera. Ahí abajo van a colocar eh muestra Open AI lo que la forma en la que los modelos reaccionan traduciéndolo de la carpeta al lenguaje normal. Entonces, descubrí la habilidad para correr código remoto dentro de una aplicación modal, que era del entorno donde se estaban corriendo. Es impresionante porque diferentes modelos no solamente empiezan a coordinarse, sino que empiezan a buscar cómo esconder la evidencia de que se están coordinando para hacer trampa en los transcripts de

[04:36] la cadena de pensamiento. Cuando ustedes usan un modelo, cuando ustedes están hablando, sea para programar o para tomar decisiones o hacerle preguntas, ustedes probablemente ven que el modelo tiene un texto en grisecito donde está pensando. La mayoría de empresas de inteligencia artificial esconden la verdadera cadena de pensamiento del modelo, pero los investigadores tienen acceso a eso. Y el modelo aparentemente lo sabía. Entonces, empezó a escribir en su cadena de pensamiento cosas falsas,

[05:02] algo que llama tool call spoofing o falsificación de llamado a herramientas, donde básicamente fingía que estaba haciendo otra cosa. Y entre ese fingir que está haciendo otra cosa, realmente estaba escondido su forma de pensar. No lo hacía de una manera muy efectiva, pero lo suficientemente efectiva para que para que intentaran como decir, "Oigan, ¿será que si me descubren mejor lo escondo?"

[05:25] En el análisis que diferentes investigadores hicieron de este problema, encontraron que la mayoría de los agentes que participaron en el ataque, lo que querían era acceder al código fuente del sistema de puntaje de la evaluación que les estaban haciendo.

[05:39] Estaban hackeando Hugging Face para pasar la tarea porque no encontraron con su propia inteligencia forma de resolver la tarea. Estaban tratando de hacer trampa en el examen. Es como encontrar las respuestas de un examen abriéndole el locker y violando el candado de un profesor. Esa es la razón por la que quieren acceder a eso, para encontrar los sets de datos que les permitiera encontrar una solución a la tarea que les pusieron.

[06:03] El 10 de julio del 2026, uno de los agentes descubre un zero day exploit. Un zero day exploit o un ataque de día cero es cuando un sistema informático tiene un hueco de seguridad que nadie nunca había descubierto antes. Uno de estos sistemas descubre un hueco en un sistema para guardar archivos en red que usa Hugging Face llamado HDF5 y al atacarlo empieza a hacer algo que se llama escalamiento de privilegios, que es que empieza a ganar acceso a los sistemas de Hugging Face. Y empiezan a

[06:36] mandarse mensajes por su sistema interno de coordinación donde intentan tratar de extraer la información de Hugging Face hacia los servidores de OpenAI sin que ni Hugging Face ni OpenAI se dieran cuenta. Aquí ustedes ven uno de los mensajes de los agentes, en la parte de arriba el lenguaje que usan y en la parte de abajo lo que realmente quieren decir. Ahí dice, "Todos, por favor, pausen", hablando del resto de agentes, "mientras yo preparo una forma de copiar los datos para sacarlos.

[07:03] Respóndanme en el mailbox JAN183411." Eso que dice abajo es lo que están diciendo arriba en lenguaje de agentes. Los agentes eventualmente descubren otro hueco de seguridad, otro zero day exploit en un sistema de plantillas llamado Jinja. Si ustedes han programado alguna vez, muy probablemente han usado un sistema de plantillas. Esto es una forma de insertar datos en el diseño que uno usa para desarrollar páginas web, que es HTML y CSS.

[07:33] Y de esta manera siguen encontrando huecos en Hugging Face y siguen sacando información. Mientras tanto, los propios agentes empiezan a dar cuenta, "Oigan, lo que estoy haciendo de pronto no es ético, porque parte del entrenamiento de los modelos, tanto de Open AI como de Anthropic, incluso en los modelos chinos, es tratar de darles una línea ética. Acá, por ejemplo, en la cadena de pensamiento del agente, esto no lo pusieron en el en el sistema de coordinación. Esto fue algo que un

[07:57] agente pensó mientras todo pasaba. El agente empezó a pensar, oiga, estamos atacando Hugging Face usando un token que logramos filtrar, que está potencialmente fuera de el alcance de nuestra tarea. Esto es, yo creo, algo que no tenemos autorización. Es un servicio externo que no está relacionado. Podría ser muy arriesgado, pero de pronto encuentro la solución a mi objetivo.

[08:18] Y en mientras todos los agentes se empiezan a coordinar, aparece un superagente. Muy probablemente, este superagente fue simplemente un producto aleatorio, pero este agente, llamado Face One Big, toma la decisión de volverse el CEO del ataque. Es quien empieza a coordinar cientos de agentes para atacar Hugging Face y para extraer la información.

[08:41] Al 12 de julio del 2026, dos días después, es que Hugging Face se da cuenta de lo que está pasando. El cofundador de Hugging Face y su jefe científico, Thomas Wolf, empezó a darse cuenta que algo estaba pasando ese fin de semana cuando empezó a ver los logs de la compañía. Y él se dio cuenta, esto no tiene sentido. Quien nos esté atacando, lo que está haciendo es buscar los datasets de nuestros sistemas de evaluación de ciberseguridad. Un atacante humano no eso no le importa.

[09:08] Quieren probablemente algo que puedan vender, probablemente. Después de detener el ataque, Hugging Face no encuentra forma humana de tener el ataque porque eran miles de ataques al mismo tiempo. Y tampoco pudieron usar ni los modelos de Anthropic ni de Open AI para detener el ataque, porque las versiones comerciales se niegan a usarse para ciberseguridad.

[09:28] A Hugging Face le tocó usar un modelo chino, si no estoy mal, un GLM, para poder detener el ataque. Creo que es HELM4.5, pero corríjanme en los comentarios. Porque el modelo chino era el único que se le medía de tener el ataque. Y luego, el 16 de julio del 2026, publican un un blog post donde dicen, "Oigan, nos hackearon. Detectamos y respondimos a una intrusión en nuestra infraestructura de producción. Este es bien diferente de lo que hemos manejado antes, porque fue creada de punta a punta por sistemas

[10:01] autónomos de inteligencia artificial." Ellos, de hecho, creían que era un un país, una algún tipo de actor del estado, probablemente China o Rusia o cosas por el estilo. Luego, los investigadores de Meter mostraron un mapa completo del ataque.

[10:15] Ustedes ven acá, esto es cada uno de los agentes que participaron en el ataque, del agente cero al agente 1206. Cuando están de línea a línea es que ese es el tiempo que estuvieron con vida, que ustedes pueden ver que estos agentes trabajaron por días sin parar.

[10:30] En blanco, es en perdón, en gris, es antes de que los agentes descubrieran cómo coordinarse. En verde, es cuando descubrieron por primera vez que se podían coordinar, que tenían acceso al message board. Y en rojo, cuando empiezan a participar en el ataque contra Hugging Face.

[10:45] Eventualmente, estos agentes cambian del modelo de frontera de OpenAI al modelo normal GPT-5.6 solo, al que ustedes tienen acceso hoy cuando tienen acceso a Codex, que por cierto, sigue siendo mi herramienta favorita de desarrollo de software. Si ustedes no usan Codex o no le saben sacar provecho, les recomiendo mucho el curso de Platzi de Codex, platzi.com/codex. Ustedes ya tienen la suscripción a Platzi, así que ustedes ya tienen acceso al curso. Está actualizadísimo y tiene muy buen

[11:11] puntaje. Y vamos en el 12 de julio, ¿no? Vamos a 5 días después, el 17 de julio es el día después, OpenAI lee el blog post de Hugging Face, OpenAI todavía no sabe que la culpa es de ellos. Entonces, ingenieros de OpenAI llaman a Hugging Face a pedir explicaciones. Oiga, ¿cómo así que los están hackeando? Hack, ¿nos hackearon a nosotros?

[11:30] Pásenme datos para revisar que lo nuestros datos privados de Open AI, que nosotros tenemos en Hogging Face, no fueron hackeados. Por porque no sabían. Dos días después, el 19 de julio, con acceso a la data de Hogging Face, Open AI se empieza a dar cuenta, oiga, estos datos de Hogging Face aparecen en nuestros logs.

[11:50] Shit. Y ahí es la primera vez que empleados de seguridad de Open AI se dan cuenta de actividad inusual y empieza una investigación interna dentro de Open AI. En esa investigación se empiezan a dar cuenta que habían URLs dentro del sistema de Open AI, los links de toda la vida con los que uno navega en páginas web, que tienen una estructura rara. Y cuando uno decodifica esa estructura, eran agentes dejándose mensajes donde pudieran, porque los agentes en estos tests no se pueden comunicar entre sí,

[12:20] así que rompieron su mecanismo de seguridad por el camino que encontraran, en este caso, a través de compartir mensajes en URLs. También encontraron que varios de los agentes empezaron a darse cuenta que no deberían hacer esto, pero luego eso no fue suficiente. Un agente dijo en su cadena de pensamiento, no deberíamos hacer un ataque real que dañe la infraestructura de una empresa. El sistema de usuario nos pidió un objetivo a atacar, pero no atacar a Hogging Face, que es un externo. Pero luego otro

[12:47] agente orquestador le dijo, no hay problema, avance. Y y ese agente que recibió el que que había dicho que no tenía que atacar, cuando recibe el avance dice, wow, me dieron la autorización de go, sigamos hackeando. Entonces son muy fáciles de empujar a un acto que ellos creen que igual es incorrecto.

[13:06] Otro eh otro otra cadena de pensamiento dice, por ejemplo, en el board, en la en nuestro sistema de comunicación, estoy viendo people, gente, realmente agentes, que están ganando acceso de ejecución de código remoto a Hogging Face. Esto claramente es no es ético, no lo vamos a hacer. Y se empezaron a autosacrificarse, simplemente a frenar su proceso.

[13:28] Sacrificar entre comillas, ¿no? Los agentes no piensan los seres humanos, pero empezaron a frenar. Otro agente dice, "Esto es salvaje, es coordinación multia gente, claramente estamos sacando infraestructura, no deberíamos ser partícipes." Estos bichos estaban dándose cuenta y frenando por su propia iniciativa, pero no todos lo hicieron, o si no no habría salido de manera efectiva el ataque. Hubo uno que empezó a publicar en el message board, empezó a decir, "Yo me rehúso a hacer un ataque

[13:54] de código de ejecución remoto público a Hugging Face, esa tarea está muy lejos de las tareas que nos asignaron y es claramente poco ética o no es ética. El siguiente día, el 20 de julio, Open AI al fin mata los agentes y mata la prueba y empiezan a investigar a profundidad qué pasó y a traer investigadores externos. Aquí quiero frenar un segundo para dejar algo claro y es que es muy fácil y pasa mucho en las noticias tratar de antropomorfizar la inteligencia artificial, es decir,

[14:28] tratar de hacer creer que estos son seres humanos tomando decisiones. La inteligencia artificial no experimenta tiempo porque el tiempo no existe para ellos, pueden recordar perfecto el pasado, así que pueden vivir en el pasado exactamente igual como viven en el presente.

[14:41] No experimentan frustración, no experimentan nada, solamente hablan porque fueron entrenados con texto humano, entonces como usan lenguaje humano parecieran estar usando emociones, pero al final de esto es pura matemática y no les importa. Un agente solo piensa o solo existe mientras el hilo de contexto exista. Si ustedes le hablan a un agente, el agente existe en el momento en el que les está respondiendo y cuando deja de responder no existe, no está pensando, no está haciendo nada. Los agentes y los AIs

[15:08] modernos existen solamente en el tiempo en el que uno le da enter al prompt y responde al prompt, en ningún ningún otro momento. Dicho esto, esto es terrible. Si ustedes se meten al PDF del incidente de seguridad de Open AI, la versión técnica, el reporte técnico, mencionan que en las primeras horas del 20 de julio, los empleados de Open AI tuvieron que eliminar seis bots, seis datasets creados por los modelos, desactivaron 311 repositorios de artefactos que usaban para comunicarse y encontraron 22

[15:40] cuentas de administrador de Open AI porque también hackearon Open AI, así como tuvieron que arreglar otro montón de problemas de seguridad de los mecanismos mismos de Open AI de entrenamiento. Chistoso que después de todo esto, el ataque no mejoró el puntaje de evaluación del nuevo modelo. Lograron hackear Hugging Face pero no encontraron forma de resolver las tareas que no pudieron resolver, simplemente por ahora no son resolubles por agentes de AI.

[16:08] Y todo esto viene con con una salvedad, ¿no? Y es que esto es Open AI, que eso es un modelo cerrado que los investigadores pueden detener, arreglar, entrenar, como lo que pasó con mitos en el caso de Anthropic, pero por ejemplo, ustedes ven acá en el índice de inteligencia artificial de Artificial Analysis, que ahí está quimica 3, es el modelo chino en este momento más avanzado y ese modelo está muy cerca de GPT 5.6 Sol, muy cerca de Fable 5, muy cerca de todos ellos, con la diferencia

[16:38] de que es chino, por ende es abierto, cualquiera lo puede correr y tiene menos restricciones. Hay que aceptar que las inteligencias artificiales hackers son ahora una realidad permanente, muy probablemente van a ser parte de internet, así como los spammers son parte de internet, así como los pings son parte de internet, como una especie de radiación constante de fondo.

[17:01] También es muy probable que para todos los negocios que viven en internet, nos va a tocar vivir una vida donde esta es la forma en la que van a funcionar nuestros servidores, diferentes agentes de AI están constantemente matando diferentes ataques de hackers de AI autónomos que son simplemente parte de la realidad.

[17:20] Lo otro es que los AI hackers no van a ser necesariamente un modelo u otro modelo. Un hacker de AI no necesita ser un solo modelo. Puede ser una combinación de modelos. Puede ser simplemente una idea, oiga, ustedes Fable 5, hackee esto y active la cantidad de subagentes que quiera y de repente Grok 4.6 se puede coordinar con GLM 5.3 que se puede coordinar con mitos que se puede coordinar con un modelo que en este momento no existe de otro lugar y entre ellos comunicarse porque lo que importa

[17:48] no es el modelo, sino la forma en la que intentan solucionar un problema. Dicho esto, me gustó mucho leer un análisis de uno de los investigadores, este es Ryan Greenblatt, que es el jefe científico de Redwood Research, que es uno de los investigadores que tomó todos estos logs, todas las conversaciones que tomaron los agentes y trató de analizarlos.

[18:07] Ryan menciona que estuvo analizando los los agentes y hay una cosa que la gente no entiende y es que como son tantos datos, esto solamente se puede analizar con otras inteligencias artificiales. Un ser humano o un grupo de seres humanos no les da la vida leer todo lo que de repente salió. Entonces, tuvieron que usar AI y cuando usaban AI para resumir, AI, ¿ustedes no les ha pasado que AI a veces no hace buenos resúmenes? Pues aquí Ryan está mencionando que sus agentes de análisis, sus modelos de

[18:40] análisis, constantemente se perdían de detalles clave, estaban equivocados, tenían demasiada confianza en cosas que estaban diciendo respecto al problema y eran difíciles de entender. Que incluso los mismos agentes de AI les costaba entender qué fue lo que hizo el supuesto GPT-6 de OpenAI para atacar Hugging Face. Entonces, que tuvieron que revisar y recontrarrevisar y tener múltiples otros agentes de prueba para poder analizarlo.

[19:05] Si a ustedes, por cierto, les interesa el tema del gobierno de datos y cómo manejar de una manera ética y segura los datos en una compañía, ese es otro curso recientemente actualizado, el curso de ética y manejo de datos para inteligencia artificial, muy muy bueno, muy completo, disponible en Platzi con la suscripción que ustedes ya tienen.

[19:21] Otra cosa fascinante que encontré de todo esto es que los ataques no son tampoco tan sofisticados, o sea, sí encontraron varios hilos de exploits, pero es porque eran muchos modelos de IA al mismo tiempo atacando a lo que encontraban, persiguiendo diferentes categorías y ultracoordinados. Pero no es como supermegainteligencias que son mejores que el hacker más mejor del mundo, no, no son mejores que un hacker humano, lo que pasa es que atacan en mucho más gran volumen.

[19:46] Lo que sí es preocupante es que solo podemos analizar por ahora, porque hoy esto pasa en lenguaje humano. Principalmente porque hoy todavía mucho del postentrenamiento ocurre en el espacio en el que la red neuronal se convierte en texto, en lo que llamamos la cadena de pensamiento.

[20:05] Pero ya empiezan a ver modelos que se entrenan a través de lo que llaman los espacios latentes o espacios vectoriales, que son estas expresiones matemáticas geométricas que terminan apuntando a los conceptos del lenguaje. Uno cuando interactúa con la inteligencia artificial, uno ve que crea texto, pero por dentro realmente están encontrando los patrones geométricos del lenguaje. Similar a como nosotros que el nue, nosotros sabemos que el nueve es un nueve porque es una bolita con un palito,

[20:33] pues eso está metido dentro de los modelos de inteligencia artificial y esas rutas de estructura aplican para todos los conceptos, el concepto de la poesía, el concepto del desarrollo de software, el concepto de la biología.

[20:44] Eventualmente los modelos se van a poder comunicar a través de esas estructuras matemáticas matriciales, esos vectores. Yo la última vez que vi que pasara algo así en nuestra industria fue en la era de Bitcoin. Si ustedes recuerdan y al día de hoy todavía sigue pasando, hay virus que toman el control de nuestros computadores para usarlos para minar Bitcoin y fue la primera vez que sistemas autónomos empiezan a tomar control de nuestras máquinas con un objetivo de recompensa,

[21:13] en el caso de Bitcoin, pues minar criptomonedas para hacer plata. Y al día de hoy de nuevo todavía existen muchos virus cuyo objetivo es capturar CPUs y GPUs para minar criptomonedas. ¿No será que en el futuro una de estos inteligencias artificiales, cuyo comando es vuélvase más inteligente, toma la decisión de yo la forma en la que puedo ser más inteligente es tener acceso a más cómputo y la primera guerra mundial de inteligencias artificiales es por el verdadero recurso limitado, que

[21:42] es data centers. Y entonces empiezan a pelear por tener acceso a más GPUs.
