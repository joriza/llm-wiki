# Inteligencia artificial: la verdad sobre el autocompact (y tips)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=KeMRKkhLvEw)
- **Canal**: Gentleman Programming
- **Publicado**: 2026-10-14
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:50

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:06] Abuela, salió el video de Gentleman. Un millón de tokens, un millón. Te lo venden como la gran cosa, ¿no? Ahora la gente se acuerda de todo, bien, fantástico. Ahora tengo una pregunta, ¿por qué con un millón de tokens disponibles se termina el plan antes, el agente empieza a leer archivos que ya leyó y te contesta cada vez peor? Y acá está lo interesante, la comunidad ya se dio cuenta. Si vos te pones a buscar justamente en las redes, vas a ver que hay gente que ya aprobó y que descubrió

[00:32] al fin que compactar alrededor de los 400 K funcionan mejor que dejar que Claude Code compacte cerca de los 967 K. Que es justamente lo que ya hace por defecto. Y no lo dicen solamente los usuarios, lo dice la gente misma de Anthropic, lo dice la gente de OpenAI, así que hoy te voy a demostrar por qué esto pasa, la config exacta que hay en Claude Code para hacerlo y cómo funciona el autocompact por dentro para que dejes de tenerle miedo ya a esto. Pero ojo, porque acá también hay una trampa y si

[01:01] vos te pasás de rosca, te sale más caro. Así que quedate hasta el final, vamos con esto. Primero los conceptos, porque si no entendés esto no vas a entender nada directamente de lo que te voy a continuar contando. Los conceptos antes que código siempre, como siempre les digo. El modelo no tiene memoria, cero.

[01:21] Entró un mensaje y el siguiente no se acuerda de nada. Y entonces, ¿cómo hace para acordarse de lo que hablaron, no? Porque Claude Code le manda todo de nuevo en cada request, las instrucciones de sistema, tu Claude CMD, cada archivo que leyó, cada output de un comando, cada respuesta y al final tu mensaje nuevo. Eso es la ventana de contexto, es justamente la mesa de trabajo del modelo. Todo lo que está arriba de la mesa lo ve, lo que no está no existe.

[01:48] Miren esto, tenemos la parte de system prompts, las herramientas, justamente también tenemos la parte de memoria, bien, el Claude CMD, mensajes, el espacio libre y el buffer del autocompact. Antes que yo escriba una sola palabra, la mesa ya tiene cosas encima, el prompt del sistema, las skills, los MCPs, todo.

[02:06] Todo, todo, ¿viste? ¿Sí? Y cada archivo que la gente lee se suma, cada test que corre se suma, cada log se suma. Y acá viene el importante, lo que quiero que te lleves de todo esto es cómo se reenvía todo en cada turno.

[02:23] La ventana no es solo un límite de capacidad, es un costo que pagás en cada mensaje. Una pregunta de una línea en una sesión que lleva todo el día abierta consume como si mandaras la conversación entera, ¿se entiende? Esa es la clave de todo el video. Bien, ¿qué cambio? Los modelos nuevos ya vienen con el millón puesto, tenés Fable son el 5 en adelante, Haiku 55, Opus 47 en adelante ya corren con la ventana de un millón por defecto en Claude Code, bien, sin sufijo, sin nada. Y si no tocás nada, el

[02:53] autocompact recién salta cerca de los 967,000 [música] tokens. Buenísimo, ahora más espacio, sí. Ahora te digo por qué eso, usado sin cabeza, te va a jugar en contra por dos lados. Lado uno, la plata. Ya te lo dije, la conversación entera viaja en cada request, sí. Existe el prompt caching y eso abarata muchísimo lo que se repite, pero lo cacheado igual se cobra a tarifa de caché en cada turno. Ahora, hacé la cuenta, no es lo mismo releer 200,000 tokens por mensaje que releer 800,000.

[03:26] Son cuatro veces más tokens circulando en cada vuelta, aunque estén cacheados. Y ojo con esto otro, el caché también se vence. En la suscripción dura una hora, si vos te vas a almorzar y vos volvés, el primer mensaje reprocesa todo el contexto desde cero. Con 900,000 tokens arriba de la mesa, ese mensaje te sale carísimo. De hecho, el propio {barra} usage de Claude Code te marca long context y cache misses cuando pasan del 10% del consumo. No lo digo yo, te lo dice directamente la herramienta,

[03:56] locura. ¿Y cuál es el lado dos? Justamente la calidad. Que un modelo soporte un millón no quiere decir justamente que se va a resonar igual de bien con un millón arriba de la mesa. La comunidad ya le puso nombre a esto y ese famoso context rot, el contexto que se pudre. ¿Te pasó por ejemplo que la gente te vuelva a leer un archivo que ya leyó hace una hora, que se olvida de una decisión que tomaron al principio, que mezcla el bug de hace tres tareas con el de ahora? Eso es justamente la mesa que

[04:24] se está llenando de papeles viejos, ¿bien? El modelo tiene que buscar la aguja en un pajar que vos mismo armaste. Entonces desde simple, el millón es un techo, pero no es un objetivo, es así de fácil. Y esto no es una teoría mía.

[04:36] Miren lo que dicen los que construyen estas herramientas. Del lado de Anthropic, Tarik, del equipo de Claude Code, lo dice bien clarito. En el modelo un millón, el context rot arranca más o menos entre los 300 y los 400.000 tokens. Y su recomendación es no dejar que las sesiones se pasen de ahí cuando el trabajo necesita inteligencia.

[04:55] Escuchaste muy bien, alguien de Anthropic diciéndote que no uses el millón entero para programar. Del lado de OpenAI, miren lo que pasó con Codex. GPT 5.6 sol soporta más de un millón de tokens por API. ¿Y cuánto te da Codex justamente por defecto? 272.000.

[05:10] En julio lo subieron a 362.000, lo bajaron de nuevo a 272, la gente puteó y en agosto Tivo, que lidera Codex, publicó cómo habilitar el millón. ¿Y cómo cerró el post? Con un "divertite, pero también debes saber que ajustamos el valor predeterminado con mucho cuidado". ¿Saben qué es lo más gracioso? Que 272K no es un número al azar. El API de OpenAI, cuando un prompt pasa los 272.000 tokens de entrada, te cobran el doble por la entrada, 1.5 veces por la salida y por el request

[05:41] completo. O sea, que el default de Codex está puesto justo antes de que el escalón de precio aparezca. Entonces, tenemos dos empresas distintas, dos herramientas distintas, la misma conclusión, que modelo a 1 millón no significa que te convenga usarlo entero, ¿se entiende? Y justamente por eso existe una config, ¿bien? Que generalmente cada gente tiene una, en este caso, eh vamos a ver la de Claude Code, esta no la inventé yo, está en la documentación oficial, se llama la ventana de auto compact. Es cuánto dejás

[06:12] que se llene el contexto antes de que Claude Code resuma la conversación solo. Hay cuatro formas de tocarla, te las muestro de la más cómoda a la más de equipo. Primero tenemos la que es auto, ¿sí? Que lo va a tratar de hacer de manera automática. Después tenemos la de 100 K, luego tenemos la de 200, la de 300, la de 400, 500, 600, 700, 800, 900, 1 millón de tokens. Entonces, esto ya tiene la parte de auto para tratar de corregirse a sí mismo, pero mucha gente ahora mismo está

[06:47] optando directamente por venir acá y ya dejarle fijo el de 400. Entonces, un detalle que a mí me gusta mucho es que desde las versiones nuevas el auto compact guarda la ventana por modelo, ¿qué significa? Que podés tener Opus compactando en 400 K para tus sesiones largas de arquitectura y Haiku compactando mucho antes, porque con Haiku 55 los prompts de más de 100 K se cobran más caros. Cada modelo con su número, por eso está lo del auto que les decía. ¿Y por qué 400 y no 200? Porque

[07:16] con los modelos de hoy 400 te da aire de sobra para una tarea grande, con todos los archivos relevantes arriba de la mesa, pero corta antes de que la sesión se convierta en un pajar, ¿bien? Es mi punto de equilibrio prácticamente, el tuyo puede ser otro y para eso está el tema del barra context, mirá cuánto te consume una tarea típica tuya y vas ajustando. Ahora vamos a hablar rápidamente de cómo funciona el auto compact por dentro, ¿bien? Porque mucha gente le tiene de al auto compact, "Me

[07:41] borró todo, Alan. No, papá, tranqui, no te borró todo. Vamos a ver qué es lo que realmente pasa paso por paso. Primero, Claude Code se guarda un colchón dentro de la ventana, el buffer de autocompact que viste en barra context 133K. Cuando la conversación llega a tu ventana menos de ese colchón, dispara la compactación.

[08:01] Segundo, manda una request aparte con el mismo system prompt, las mismas herramientas y toda la historia, más una instrucción de resumime esto. Y acá está la magia. Si el caché está caliente, esa request lee casi todo desde caché, así que compacta justamente a mitad de la sesión y va a costar una fracción de lo que parece. Tercero, reemplaza todo el historial por un resumen estructurado.

[08:25] ¿Qué guarda ese resumen? Lo que pediste y para qué. Los conceptos técnicos clave, los archivos que se tocaron con los fragmentos importantes, los errores y cómo se arreglaron, las tareas pendientes y en qué estabas. Lo que se pierde es el texto literal, los outputs completos de las herramientas y razonamiento intermedio. Cuarto, y esto casi nadie lo sabe, después recarga cosas solo. Miren esta tablita que les voy a mostrar, ¿bien? El system prompt y el output stack siguen aplicando, el

[08:51] Claude MD de la raíz y las reglas sin path se reinyectan desde el disco, la memoria automática se reinyecta desde el disco, el plan del plan node se reinyecta desde el disco, archivos leídos o editados relee hasta cinco, los modificados más recientemente.

[09:07] Y si uno pasa los 5000 tokens, queda solo como una referencia. Si tenés que hacer algo, andá a buscarlo a este lugar. El que equivocaste se reinyectan máximo 5000 tokens cada una y 25000 en total. Reglas con path y Claude MD anidados, se cargan de nuevo cuando hace falta y después los comandos y los subagentes en background siguen ejecutando, Claude Code le avisa cuáles para que no los duplique. ¿Ven? Todo lo que importa vuelve, por eso te digo siempre que lo crítico va en el Claude

[09:33] MD y no en el chat, el chat se resume, el Claude MD se recarga entero. Si una skill tuya es larga, poné lo más importante arriba del skill MD, porque si se trunca, se queda en el principio. Y dos trucos para que el resumen guarde lo que vos querés, barra compact, focus on el fix del auth antes de arrancar algo nuevo. Le decís que preserve justamente en vez de que adivine.

[09:57] También tenés una sección, ¿ven? Eh, almohadilla compact instructions en tu Cloud MD, por ejemplo, al compactar prioriza output de test y cambios de código, por ejemplo, ¿bien? Eso queda fijo para todo el proyecto. Entonces, justamente lo del compact, acuérdense, barra compact y le dicen focus on y lo que están trabajando. Pero yo ya sé lo que es lo que estás pensando. Si 400K es mejor que 1 millón, entonces pongo 100K y ahorro todavía más. No, frena. Y te voy a explicar por qué. Compactar no es

[10:25] gratis. El resumen es una request que lee toda la conversación que va a resumir. Si vos ponés una ventana muy chica, compactás todo el tiempo y cada compactación cuesta. Encima, después de que cada una se realice, el agente pierde el detalle fino y tiene que volver a leer archivos para recuperar lo que necesita. O sea, para que se resuma, pagás de nuevo la lectura. Hay un caso documentado por W Media con Haiku 55 que lo muestra justamente perfecto. Con la ventana de 130K, una sesión que leía 45

[10:56] archivos bajó de 0,51 a 0,15 dólares. Un 71% menos. Hermoso. Pero en otra prueba, una sola lectura grande hizo saltar el contexto de 9K a 126K de un golpe. Compactó, quedó en 114 igual y terminó costando tres veces más que sin tocar nada. La lección, la ventana tiene que ser más grande que lo que tu tarea típica necesitaría arriba de esta mesa.

[11:24] Si tu tarea normal usa unos 250K, poner 130 es pegarte un tiro en el pie, ¿bien? Prácticamente. Y otra cosa importante, el momento en que compactas también importa. Si volvés de una pausa larga y el caché ya venció, el resumen reprocesa todo sin caché y es el request más caro de toda la sesión. Por eso conviene compactar a mano en una pausa natural entre tarea y tarea y no esperar a que el autocompact salte en medio de un bug.

[11:51] Y hay otra razón todavía más fuerte todavía, que también lo dijo Tarik, ¿bien? Cuando el autocompact salta tarde, salta justo en el momento en el que el modelo está más tonto, porque ya está metido con el context rod. ¿Y a quién le pedís que haga el resumen de toda tu sesión? Al modelo en su peor momento. Por eso compactar vos antes y con foco le gana dejar que el autocompact dispare solo cerca del millón. Por eso bajar la ventanita a 400k tiene tanto sentido, ¿bien? El resumen lo hace el modelo que todavía

[12:24] está lúcido. Y si te fuiste por un camino que querés tirar entero, no compactes, usa barra rewind, volvé para atrás, bien, que son cositas que tiene Claude, por ejemplo, que están muy interesantes. Bien, eh por ejemplo, Gentle Shell también lo tiene, tienes el tree para ir volviendo hacia atrás. Y eso vuelve a un punto que ya está en caché. Y si cambiás de tema por completo, barra clear, directamente. Eso no cuesta nada, va a limpiar todo y es como empezar de cero. Resumen, 400k es

[12:52] un muy buen punto de partida para los modelos de un millón, pero lo que manda es tu uso real, medido con el barra context y no un número mágico que viste en un video, ni siquiera en este, eh. Entonces, te dejo los hábitos que yo uso todos los días en orden. Uno, mirá tu ventana real con barra context antes de tocar nada. Dos, ponéle un número que tenga sentido para tu tarea típica, barra autocompact 400k es mi punto de partida para modelos de un millón. Tres, lo crítico va en el Claude MD, no en el

[13:19] chat, porque se recarga después de compactar y mantenélo corto, bien, menos de 200 líneas. Lo específico va a las skills. Después, cuatro, compactalo vos en pausas naturales, con foco, hacerle barra compact, focus on y le dices en qué tiene que continuar. Cinco, barra clear, cuando cambias de tema, barra rewind, cuando te fuiste por un mal camino. Seis, mandarle investigación pesada subagentes, los archivos que leen quedan en su ventana y a la tuya vuelve solo resumen. Y siete, revisa barra

[13:51] usage una vez por semana para ver si el long context se está comiendo tu plan. O mejor de todas, te doy una ocho, instalate gente shell y ya tenés todo. Y acá vuelvo a lo de siempre, gente, somos Tony Stark con Jarvis, Jarvis puede tener un millón de tokens de memoria, fantástico, pero el que decide qué va arriba de la mesa y cuándo se limpia sos vos. Si no entendés cómo funciona la ventana, vas a pagar más y vas a tener un agente más tonto. Si lo entendés, tenés un agente más filoso, un plan que

[14:19] te dura toda la semana, ¿bien? Sí, gente, cuéntenme en los comentarios en cuánto tenés tu ventana y cuánto te consume una tarea típica, que quiero ver números reales, ¿sí? Nos vemos, gente, para el próximo videíño. Los quiero, mis locuritas cómicas, y como siempre, van a dar un buen like, una buena suscribida, le van a dar un buen comentario, solamente para ayudar a llegar a más gente y ayudar más. Y como siempre, le van a decir a su abuela, "Abuela, llegó el video del gentleman." Nos vemos,

[14:46] gente, en mi corazón, éxitos. Chau. Nos vimos.
