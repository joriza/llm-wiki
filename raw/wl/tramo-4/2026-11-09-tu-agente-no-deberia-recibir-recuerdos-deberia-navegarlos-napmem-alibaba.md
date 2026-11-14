# Tu agente no debería recibir recuerdos: debería navegarlos (NapMem, Alibaba)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=rl-a2bZ1vKA)
- **Canal**: Articulator ES
- **Publicado**: 2026-11-09
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 14:02

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] ¿Y si la memoria de un asistente no fuera algo que le dan, sino un sitio por el que se mueve? Esa es la idea de NapMem, un paper del equipo de Qwen en Alibaba, junto a varias universidades de China y de Singapur. Proponen dejar de recuperar recuerdos de forma pasiva y enseñar al agente a navegar por su propia memoria, como quien recorre un mapa.

[00:20] Hoy te lo cuento en español. Mira este ejemplo. Un usuario pregunta, ¿qué tuve antes el Samsung Galaxy S22 o el Dell XPS 13? El sistema clásico busca en su memoria y le pasa al agente dos notas. La primera dice que el usuario tiene los dos aparatos.

[00:38] La segunda que compró el teléfono el 20 de febrero. Del portátil no hay fecha. Así que el agente responde lo único que puede, no lo sé. Ahora dale al agente herramientas de memoria. Ya no espera que le traigan nada. Busca él en las conversaciones y encuentra dos mensajes.

[00:55] El portátil lo reservó el 28 de enero, pero le llegó el 25 de febrero. El teléfono lo tuvo el 20. Respuesta correcta. Primero tuvo el Galaxy. Esa diferencia, recibir frente a buscar, es lo que estudia este paper. Los agentes ya no viven en una sola conversación.

[01:13] Te acompañan durante semanas, en el trabajo, estudiando, en tu día a día, y para eso tienen que acordarse de ti. Lo difícil es que lo que saben de ti es de muchos tipos, y cada pregunta futura necesita un recuerdo distinto.

[01:26] Una forma fija de guardar y de consultar la memoria se queda corta. Hasta ahora, la memoria se ha mejorado por dos lados. Por el de la construcción, categorías más finas, vectores, grafos y jerarquías. Y por el de la recuperación, búsquedas que reflexionan, consultas personalizadas y una mejor reordenación de los resultados.

[01:46] Pero en casi todos, acceder a la memoria es una función del sistema, un proceso diseñado de antemano. El agente apenas decide nada. Ese es el problema de la recuperación pasiva. Da igual cómo guardes la memoria, en lista, en grafo, en vectores o en jerarquía.

[02:03] Al final se reduce a un trozo de contexto que alguien elige y le entrega al agente. Si ese trozo está incompleto, el agente no puede ir a buscar más. Es un consumidor de pruebas seleccionadas por otro. La propuesta es darle la vuelta.

[02:17] Que la memoria sea un espacio de acciones estructurado. El agente tiene herramientas y decide tres cosas. Si necesita la memoria, a qué nivel de detalle consultarla. Y si lo que ha encontrado ya basta para responder. Lo llaman navegación activa de la memoria.

[02:31] Y de ahí sale el nombre. NapMem, navegar por una memoria en pirámide. Lo primero es ordenar la historia del usuario. NapMem construye una pirámide de memoria para cada persona, con cuatro niveles. Abajo, las conversaciones tal cual.

[02:47] Encima, los registros de memoria. Después, los hilos temáticos. Y en la cima, el perfil del usuario. Cada nivel cuenta la misma historia con otro grado de abstracción, como un mapa que puedes ver entero o acercarte hasta una calle.

[03:01] La base son las conversaciones en bruto. Cada mensaje se guarda con su contenido, quién lo dijo, cuándo y un identificador único para encontrarlo exacto. Esta capa solo crece, nunca se reescribe. Es la prueba de mayor fidelidad, la que el agente consulta cuando necesita el detalle fino.

[03:19] El segundo nivel son los registros de memoria, frases compactas que quitan la paja de la charla y se quedan con lo útil. Hay cuatro tipos: hechos, eventos, instrucciones y preferencias. Cada registro lleva su tipo, su texto, su fecha y los identificadores de los mensajes de los que salió.

[03:36] Ese enlace permite volver de un recuerdo resumido a la conversación original. Se crean en dos pasos. Primero, tras unos turnos de charla, el modelo extrae recuerdos nuevos de los mensajes recientes. Después los compara con los que ya tenía y elige qué hacer con cada uno.

[03:52] Guardarlo, descartarlo si es redundante, actualizar uno antiguo si algo ha cambiado o fusionarlos si hablan de lo mismo. Al fusionar, se conservan todas las fuentes. El tercer nivel son los hilos temáticos. Un registro es un dato suelto, pero muchas cosas de una persona evolucionan durante semanas.

[04:11] Un proyecto, una afición, una relación. Cada hilo es un archivo con un resumen y la historia de ese tema y enlaza los registros que la respaldan. Como mucho hay 20 y el agente decide si actualizar uno, fusionar dos o abrir otro nuevo.

[04:27] En la cima está el perfil, un resumen global de quién es el usuario, sus preferencias de largo plazo y su forma de interactuar. Tiene un límite de 2000 caracteres, así que se revisa en vez de crecer. Y solo puede usar lo que dicen los hilos.

[04:40] Si no hay pruebas, el campo se queda vacío antes que inventar. La pirámide se levanta de abajo arriba y poco a poco. Cada sesión nueva se añade a las conversaciones. De ahí salen registros y los cambios suben. Los hilos se revisan cuando hay más de 20 registros nuevos y el perfil cuando hay más de 50.

[04:59] Los dos niveles inferiores llevan índices de vectores y de palabras clave. Los dos superiores son archivos markdown que se leen tal cual. Y todo queda enlazado, como los hilos de un tablero de detective. Ahora, ¿cómo se mueve el agente por la pirámide?

[05:15] Con cinco herramientas. Dos de búsqueda, una busca en las conversaciones y otra en los registros, mezclando palabras clave y vectores, y cada una devuelve como mucho cinco resultados. Dos de acceso exacto, que traen mensajes o registros concretos por su identificador, y una para leer archivos, los hilos y el perfil.

[05:34] Con eso, la navegación puede ir en las dos direcciones. De arriba abajo, empezar por el perfil o por un hilo, afinar con los registros y bajar a la conversación para comprobar la prueba. O de abajo arriba, buscar un detalle y si no aparece, subir a un resumen.

[05:49] En cada paso, el agente mira lo que ha encontrado y decide su siguiente acción. O si para y responde. Fíjate en el ejemplo del paper. Pregunta, ¿qué consola tiene Nate? El agente lee primero su archivo de entretenimiento, que menciona un juego de rol de fantasía.

[06:06] Busca en las conversaciones y encuentra que es un gran fan de Nintendo. Después, trae el registro exacto. Está jugando a ese juego ahora mismo. Razona y responde. Una Nintendo Switch. Tres pasos por tres niveles distintos.

[06:20] Hay un límite. Como mucho, cuatro pasos con herramientas por pregunta. Si se pasa, la respuesta cuenta como fallo. Y las instrucciones que recibe son claras. No adivines nada sobre el usuario. Si dos recuerdos se contradicen, mandan las instrucciones.

[06:35] Y deja de buscar en cuanto tengas pruebas suficientes. Tener herramientas no basta, hay que saber usarlas. Por eso entrenan al agente con aprendizaje por refuerzo. Cada ejemplo es una pregunta que necesita memoria, junto a la pirámide de ese usuario.

[06:50] El agente responde con su cadena de llamadas y solo recibe una nota al final, por el resultado. Esa nota entrena a la vez la respuesta y todas las decisiones de navegación que la llevaron hasta ahí. La nota sigue una rúbrica de tres criterios: si el formato es válido, si la respuesta es correcta y si ha usado la memoria.

[07:08] Acertar usando la memoria vale 1, acertar sin usarla 0, fallar tras consultarla -0,5 y fallar sin consultarla o con un formato roto -1. Así se premia acertar buscando y se castiga más inventar. El algoritmo es GRPO, Optimización de políticas relativa al grupo.

[07:28] Para cada pregunta, se generan cuatro intentos. La ventaja de cada uno es su nota menos la media del grupo. Los intentos mejores que la media se refuerzan y los peores se penalizan. No hace falta un modelo aparte que juzgue cada paso.

[07:41] El propio grupo es la referencia. Entrenan un modelo CUEN de 9.000 millones de parámetros con preguntas de dos benchmarks, LoCoMo y PersonaMem, separando a los usuarios, 60% para entrenar, 20 para validar y 20 para el test.

[07:57] El tercero, LongMemEval, no lo ve nunca durante el entrenamiento. Sirve para comprobar si lo aprendido funciona fuera de lo conocido. Vamos con los resultados. LoCoMo y LongMemEval miden la memoria de hechos, recordar algo lejano, cambios en el tiempo y razonar entre sesiones.

[08:16] PersonaMem mide algo más sutil, las preferencias implícitas. Lo comparan con cinco sistemas de memoria conocidos, todos sobre el mismo modelo. En las preguntas abiertas juzga Claude y comprobaron a mano que coincide con personas en 99 de 100 casos.

[08:32] La media de las tres pruebas. NapMem entrenado saca 62,7. El mejor rival, Mem0, 59,2. Zep, 54 MemOS, 49. Y MemoryOS, 34,5. En LongMemEval, la prueba que no vio al entrenar, 80,3, el mejor de todos. En PersonaMem, 48, también por delante.

[08:57] En LoCoMo, no gana en todo. Tiene el mejor F1, pero en la nota del juez Mem0 le saca un punto, 60,9 frente a 59,9. Es decir, en la memoria de hechos de conversaciones largas está a la par del mejor. Donde se despega es en la personalización y en lo que no había visto al entrenar.

[09:16] Y aquí viene lo llamativo. Probaron la misma pirámide con modelos mucho más grandes, sin entrenar, de 122.000 millones y de 397.000 millones de parámetros. El más grande saca 59,9 de media. El pequeño de 9.000 millones, entrenado, 62,7.

[09:34] Aprender a usar la memoria vale más que multiplicar el tamaño por 40. Y si la pregunta no necesita memoria, le pusieron tareas de ciencia, de llamadas a funciones y de búsqueda visual, con todas las herramientas de memoria activas.

[09:49] Sin entrenar, el modelo miraba la memoria en el 34% de las preguntas de ciencia. Sin motivo, entrenado en el 6,9. En las otras dos tareas, nunca. Y no pierde nivel, incluso mejora algo en ciencia y en la prueba visual. Ahora, el coste.

[10:06] La memoria de un usuario no deja de crecer, así que ocupar poco importa. Sumando los tres benchmarks, NapMem ocupa 4,8 GB. Mem0 más del doble, Zep casi el triple, y MemOS casi 5 veces más. Solo un sistema ocupa menos, AgeMem, pero rinde mucho peor.

[10:24] El tamaño por sí solo no lo dice todo. El tiempo de respuesta. En 100 preguntas de PersonaMem, la latencia crece casi en línea recta con los tokens que genera el modelo. Cuanto más escribe, más tarda. Los sistemas pasivos reciben mucho texto y razonan sobre todo él.

[10:40] NapMem busca lo que necesita y para en cuanto tiene pruebas, así que escribe menos y contesta antes, aunque use herramientas. ¿Qué parte del sistema da la ventaja? Lo comprobaron quitando piezas. Con todo, 62,7. Sin navegar, con la misma memoria pero recuperada de forma pasiva, 54.

[11:00] Sin los niveles de arriba, los hilos y el perfil, también 54. Y con herramientas solo para los registros, 45. Falta la última pieza. Sin el aprendizaje por refuerzo, con la misma pirámide y las mismas herramientas, 48,4.

[11:17] La caída más fuerte está en PersonaMem, de 48 a menos de 21. Las tres piezas suman. Navegar es mejor que recibir. Los resúmenes de arriba completan el detalle de abajo. Y usar bien la memoria se aprende. No basta con explicarlo en el prompt.

[11:33] Por último, ¿cómo navegan? ¿Miraron cuál es la primera herramienta que usa cada modelo? El de 9.000 millones empieza casi siempre por los registros, alrededor del 90%. Los grandes, en cambio, empiezan leyendo archivos en casi la mitad de los casos.

[11:48] Una posible explicación. Los modelos grandes digieren mejor un resumen largo y los pequeños prefieren pruebas cortas y concretas. El refuerzo cambia la forma de buscar. Sin entrenar, el modelo pequeño hacía casi cuatro llamadas por pregunta.

[12:03] Entrenado, poco más de dos. Y aún así, acierta más. De cada 100 resultados que le devuelven las herramientas, 35 son pruebas útiles, frente a 21 antes. Y no se queda en un solo nivel. 4 de cada 5 preguntas siguen usando varios.

[12:19] Ha aprendido a parar. El paper enseña un acierto y un fallo. El acierto: ¿Qué estado visitó Nate? Buscar en las conversaciones no da nada útil. Buscar en los registros tampoco. Entonces, lee un hilo temático, y ahí está.

[12:34] Viajó a la playa de Tampa en noviembre de 2022. Respuesta: Florida. Subir a un nivel más abstracto rescató lo que la búsqueda directa no encontraba. El fallo. Alguien pide ideas tranquilas para el fin de semana. El agente encuentra un registro.

[12:50] El usuario pensó en poner salsa en una gala benéfica, porque el año anterior había funcionado. Y de ahí deduce que le encanta ir a bailar salsa los fines de semana. Ha convertido un evento suelto en una preferencia estable.

[13:02] Los recuerdos eran relevantes, pero no bastaban para esa conclusión. Los autores también señalan sus límites. Los benchmarks no recogen todas las formas reales de personalización. No abordan del todo la privacidad ni el olvido, dos requisitos clave en cualquier sistema que recuerda cosas de personas.

[13:20] Y queda por estudiar cómo cambia la estrategia con el tamaño del modelo. En resumen, NapMem guarda la memoria del usuario en una pirámide de cuatro niveles y entrena al agente para moverse por ella con herramientas, en vez de recibir lo que otro elige.

[13:35] Así, un modelo de 9.000 millones de parámetros supera uno 40 veces mayor, busca menos y acierta más. Si te ha sido útil, dale a me gusta y suscríbete al canal para no perderte el próximo vídeo. Y cuéntame en los comentarios qué te gustaría que tu asistente recordara de ti.

[13:51] ¡Hasta pronto!
