# Herdr viene mal configurado: 6 ajustes que lo cambian todo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=evfpvmIUPUY)
- **Canal**: Víctor Falcón
- **Publicado**: 2026-09-24
- **Recopilado**: 2026-11-11
- **Idioma**: es-ES (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 15:32

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esto es Herdr, un multiplexor de terminal que nos permite trabajar y orquestar varios agentes al mismo tiempo, viendo un poco de una forma sencilla y rápida cuál es su estado, si está trabajando, si está esperando nuestro input, si ha terminado, en qué proyecto está, etc. Y por defecto nos muestra en el sidebar este pequeño hueco con todos los agentes que estamos ejecutando en esta sesión.

[00:22] pero en mi opinión la verdad que la información que muestra no es la adecuada o sea aquí puedo ver que tengo tres agentes trabajando en el proyecto de Whisper Money los tres son de Claude pero no sé qué está haciendo cada uno aquí tengo uno de YouTube, aquí tengo uno de jev que también es Claude pero en realidad si miro aquí arriba veo que este jev pertenece a Whisper Money o sea es un worktree de Whisper Money y aquí tengo dos agentes más si ahora voy a la configuración y cambiamos esto de aquí

[00:52] guardo y refresco verás que ahora la información es mucho más útil ahora veo que tengo aquí un agente que está trabajando en el cashflow, en esta rama veo que hay otro que está trabajando en un incremento de precios en esta otra rama, aquí tengo uno en la rama de Whisper Money, o sea en el proyecto padre que consiste en una investigación que estoy haciendo sobre unos movimientos de ahorro, aquí tengo el de YouTube, otro de Whisper Money trabajando en el emails, este que está mirando

[01:21] los issues de Sentry en Whisper Money y este que es el anterior de ayer. Pero como ves, ya no me pasa simplemente a mostrar en qué carpeta o en qué proyecto está trabajando y el agente, si es Claude, si es Codex, si es Copilot.

[01:35] No, ahora me da información precisa, una string, un título de lo que está haciendo ese agente y debajo tengo la rama. Esto lo hemos cambiado aquí. Simplemente le estamos diciendo que para cada row yo quiero tener primero que nada el icono que es este que se muestra aquí a la izquierda con el estado. Luego quiero tener el terminal_title_stripped, que es esta descripción que asigna el propio agente cuando está trabajando que nos dice en qué o de qué va esa conversación. Aquí tengo una configuración para que no se muestre

[02:07] en negrita, para que utilice este color. Y luego en la segunda línea tenemos el workspace, que vemos que Whisper Money coincide con el que tenemos aquí o en caso de ser un worktree nos muestra jev y jev y la configuración de este worktree.

[02:23] Para mí esto es mucho más útil y es una configuración que debería de venir por defecto en Herdr y en el vídeo de hoy te voy a enseñar 4 o 5 configuraciones más que creo que tienes que cambiar para realmente sacarle provecho a Herdr.

[02:35] Si te ha gustado este ajuste que te he enseñado, espérate porque en este vídeo hay más. Lo que sí te pido y es lo único que te pido y es completamente gratuito es que te suscribas al canal. Estoy intentando llegar a los primeros 1.000 suscriptores que son necesarios para conseguir ese patrocinio de YouTube.

[02:50] Y bueno, lleva un poco de tiempo. Si te suscribes me ayudas mucho a conseguirlo. Prometo que después de los 1000 no voy a preguntar nunca más por esto. Me da igual el número de suscriptores. Simplemente prefiero que me veáis, que para mí al final es lo más importante.

[03:05] Seguimos con el vídeo. Esta es otra configuración que para mí es fundamental. Con estas cuatro líneas de aquí, este switch_tab y estas tres líneas de aquí abajo, configuramos Herdr para poder movernos entre pestañas utilizando prefijo y un número por ejemplo yo ahora he pulsado comando A que es mi prefijo si ahora pulso el 2 vemos como vamos a esta pestaña si pulso prefijo y el 4 volvemos a la pestaña en la que estaba pero es que además con el control y un número puedo moverme en el sidebar vamos a scrollear hacia arriba aquí estamos en la parte de

[03:40] arriba total si yo aprieto control 1 voy al primer proyecto que tengo en el sidebar y con control 4 vuelvo al que estaba y aquí con control shift y un número hacemos exactamente lo mismo pero por el sidebar de agentes vamos a probarlo control shift 1 deberíamos de ir a esta este agente que está trabajando en cashflow control shift 1 aquí estamos y si quiero volver al anterior como estaba aquí no estaba ningún agente que estaba en Neovim, pues tendría que ser Control 4. Como verás, es muy sencillo y esto te permite moverte hacia arriba, hacia

[04:16] abajo, en los distintos workspaces, por las distintas pestañas, sin tener que utilizar el ratón, y además ir directamente al agente en concreto que quieres ver, al proyecto en concreto que quieres ver, o a la pestaña en concreto que quieres ver. El tercer ajuste, este es fundamental si trabajas con Herdr y con Neovim, es este de aquí. Como puedes ver, básicamente estoy utilizando este plugin, vim- herdr-navigation que me permite moverme entre paneles tanto dentro de Herdr como

[04:43] dentro de Neovim de una forma utilizando el mismo atajo de teclado. Ahora mismo estamos en Neovim si yo abro un panel a la derecha verás que con control H me muevo a la izquierda y con control L vuelvo al panel que tenía a la derecha. He entrado en Neovim, he salido de Neovim y lo hago con el mismo atajo de teclado y todo es gracias a este plugin que he configurado y a estos atajos de teclado. Básicamente le decimos que cada vez que apretamos control L, control H, control K o control J vamos a ejecutar el movimiento a través de este

[05:17] plugin que tenemos instalado. Como puedes ver en este caso con control L estamos haciendo el vim-herdr-navigation.right y ya el plugin se encarga automáticamente de moverte a un panel de Neovim o fuera de un panel de Neovim de forma totalmente invisible para ti y con un solo atajo de teclado.

[05:36] El cuarto ajuste que quiero destacar y quiero que te lleves en este vídeo porque creo que también es algo que te va a ayudar mucho en el día a día son estos comandos que podemos añadir a nuestra configuración para lanzar pestañas, paneles flotantes con un ajuste en concreto.

[05:50] Por ejemplo, en este caso tengo este comando de aquí que lo que hace es lanzar LazyGit. Bueno, esto es solo la descripción. Si te fijas en el comando verás que lo que estamos es creando una nueva pestaña a la que le hacemos focus y además renombramos esa pestaña con este nombre LazyGit y la flechita.

[06:10] Esta flechita hacia abajo ahora te voy a contar un poquito más adelante por qué la pongo. Y luego simplemente con jq obtenemos el id del panel y dentro de ese panel en concreto ejecutamos este comando. LazyGit punto y coma exit. ¿Por qué pongo este exit?

[06:29] Pues verás que si yo ahora aprieto prefijo control g que es la clave o la tecla que yo he configurado. Se me abre el LazyGit exactamente en donde yo estaba. Aquí puedes ver el nombre de la pestaña con esta flechita. y si yo aprieto la Q ahora que es la tecla para salir de LazyGit verás que se cierra la pestaña por completo, esto lo hago porque muchas veces lanzo LazyGit de una forma temporal, quiero ver un poco que está haciendo el agente, quiero a lo mejor hacer pull, hacer push, crear una rama alguna cosa rápida y luego lo cierro y

[07:01] quiero volver a donde estaba entonces eso lo conseguimos con este exit, básicamente le estamos diciendo que una vez que cerremos el proceso de LazyGit yo quiero ejecutar el exit que lo que hace es matar ese proceso y como ese proceso es el único que está siendo ejecutado en esa pestaña por lo tanto mata la pestaña y con esta flechita de aquí es un código que utilizo yo para saber cuando una pestaña es temporal y cuando mate el proceso va a ser cerrada o no, es algo que simplemente es un indicador para mí mismo para saber si por ejemplo he creado una

[07:37] pestaña normal y he lanzado LazyGit como ves en este caso no está la flechita cuando yo lo cierre la pestaña se mantiene es una forma simplemente de facilitarme a mí mismo saber cuando una pestaña se va a cerrar o no al salir o entrar de lazy git por aquí de abajo tenemos otro igual aquí está para Neovim por ejemplo en este caso no tiene mucho sentido porque ya estoy en Neovim, pero si yo aprieto el prefijo control V, verás que me lanza Neovim en la misma carpeta en la que yo estaba, añade la flechita y por lo tanto cuando yo salga de Neovim, esa

[08:13] pestaña se cierra. Y lo utilizo para lo mismo, un acceso rápido, para ver el código, para ver un archivo en concreto. Pero es que hay más posibilidades. Por ejemplo, aquí tenemos este atajo para lanzar una pestaña normal o sea una consola flotante esto está flotando sobre lo que yo estaba haciendo anteriormente aquí puedo ejecutar los comandos que yo quiera y una vez que lo cierre con control D, se cierra esto es una función de Herdr que viene por defecto y la podéis configurar con este snippet de aquí como ves además bueno le

[08:47] digo el comando que quiero que lance, pero también le digo el ancho y el alto de esa pestaña que se puede configurar. Y luego otro que tenemos aquí que también lanzo en un pop-up es pet. pet, si no lo conoces, es básicamente una utilidad de terminal que te permite manejar snippets, snippets de códigos.

[09:05] Digamos que los típicos comandos o fragmentos de código que sueles ejecutar, pues con pet los escribes en un archivo de configuración y los tienes ahí para siempre y los puedes lanzar de una forma muy rápida. Veo mucha gente que normalmente utiliza bloc de notas para guardar estos snippets. Luego va el bloc de notas, lo copia, lo pega, reemplaza ciertos parámetros y aprieta intro. Pues con pet esto lo puedes hacer de una forma más sencilla. Como puedes ver, yo tengo aquí el prefijo o el comando que sería prefijo

[09:33] control R. Si yo hago esto, me sale pet, esto es pet y estos son todos los atajos de teclado que yo tengo configurado. vamos a buscar uno por ejemplo este que me ayuda a escribir un tweet usando Typefully, o sea esto básicamente utiliza una API y un programa que se llama Typefully para añadir un tweet, para programar un tweet que se publique automáticamente en mi cuenta de Twitter y como ves pues tenemos un parámetro, repositorio porque este lo uso yo cuando quiero compartir un repositorio automáticamente en Twitter en vez de ir yo a mano

[10:09] escribir el tweet sacar una captura del repositorio, etcétera, pues tengo aquí este atajo de teclado que lo hace. Aquí lo he escrito mal, sería Whisper Money, Whisper Money. Y si yo le doy a intro, verás que, bueno, me está ejecutando el snippet en concreto, está sacando la captura, está escribiendo, utilizando inteligencia artificial, el contenido del tweet, etcétera, etcétera.

[10:31] Lo voy a cerrar porque no quiero que se programen. De hecho, creo que se ha llegado a programar el primero. Luego lo borraré. pero como puedes ver al final son cosas que puedes configurar a tu gusto para tu caso de uso yo por ejemplo tengo el de Neovim y el de LazyGit porque son las herramientas que utilizo tanto para revisar el código como para hacer acciones en Git pero tú puedes utilizar otras y lo puedes configurar igual aquí tengo por ejemplo una que también creo que es interesante para lanzar Claude

[10:54] Code en este caso hago prefijo A y ves que me lanza una nueva instancia de Claude Code con esta misma flechita porque es un panel temporal puedo escribir lo que yo quiera y si lo cierro, esa pestaña se cierra. Y otro cambio que para mí cambia mucho y mejora mucho la experiencia de uso de Herdr y que te recomiendo que apliques a tu configuración es el de desactivar las notificaciones por defecto. Estas notificaciones, si bien son útiles, yo creo que se pueden mejorar mucho, sobre todo en Mac.

[11:22] La experiencia es muy mejorable y para ello me he instalado este plugin que también es de Herdr, es oficial, lo puedes encontrar en la galería de plugins de Herdr y este plugin lo que hace es utilizar o mostrar unas notificaciones mucho más nativas, básicamente son notificaciones nativas de macOS como si tuvieras una aplicación 100% nativa y ya no es una notificación un tanto extraña que sale del terminal, dependiendo del terminal que uses sale de una forma o de otra, o tampoco

[11:51] es ese pop-up que te permite mostrar Herdr aquí que en mi opinión o en mi experiencia acaba siendo o pasando desapercibido y no te das ni cuenta de que realmente el agente ha terminado o está esperando que tú hagas algo.

[12:04] Además, este plugin te permite configurar cuando quieres que el agente te notifique. Aquí por defecto, si no me equivoco, creo que viene así como Success y Blocked, que básicamente hace que cuando un agente termine de lo que tú le hayas pedido y la gente haya completado esa tarea, te notifica.

[12:21] Y luego Blocked es básicamente cuando el agente está esperando que tú hagas algo. Es decir, por ejemplo, imagínate que el agente te hace un par de preguntas y estás esperando a que tú respondas esas preguntas. Pues ese sería ese estado de Blocked.

[12:35] En mi experiencia, tener ambas es demasiado. O sea, recibo 15 notificaciones, 10 notificaciones, porque tengo muchos agentes trabajando en paralelo y la mayoría de ellas no necesito hacer nada. Si el agente ha terminado, pues me parece bien, ya lo miraré más tarde o a lo mejor no hace falta que haga nada. las que sí me interesan son las de Blocked porque en ese caso el agente está esperando a que yo le dé una respuesta a algo para seguir trabajando y hasta que yo no lo haga el agente va a estar bloqueado esperando mi

[13:02] acción. Por lo tanto al final he decidido dejarlo así y solamente recibo notificaciones cuando el agente realmente me necesita. Y una cosa más que te quiero enseñar es que yo normalmente utilizo dos sesiones de Herdr. Suelo tener la sesión personal en la que tengo mis proyectos y suelo tener una sesión de trabajo en la que pues no tengo mis proyectos, tengo las sesiones correlacionadas con mi trabajo como programador.

[13:29] Y esto lo puedes ver si yo hago aquí herdr-sessionizer, que es un pequeño script que yo me he creado, puedes ver que tengo dos sesiones, la de Factorial, que es donde yo trabajo, y la de Default, que es básicamente mi sesión personal que es esta que os estoy enseñando a mi izquierda.

[13:44] Yo aquí puedo lanzar una sesión o la otra, vamos a lanzarla de Default otra vez, como puedes ver tengo a la izquierda la sesión y a la derecha la misma sesión, puedo ir cambiando de pestañas, puedo cerrar esta sesión aquí y la sesión se sigue ejecutando, yo no la he parado, la sesión está todo el rato en segundo plano trabajando, incluso tengo aquí ciertos atajos de teclado para parar la sesión, para borrarla o para si quiero salir de este herdr-sessionizer.

[14:13] este herdr-sessionizer os lo voy a dejar en la descripción del vídeo ya que es un script que he hecho yo creo que no lo tengo subido a GitHub y bueno, si os interesa y os llama la atención el hecho de trabajar con distintas sesiones para separar un poco a lo mejor vuestro trabajo profesional, del personal o distintos proyectos, que sepáis que lo tenéis aquí disponible yo tengo un atajo de teclado para lanzarlo con control F y la verdad es que funciona genial y eso es todo, son ajustes

[14:41] sencillos y básicos, pero para mí cambian la experiencia por completo con Herdr, la llevan a otro nivel, te permiten ver realmente lo que está haciendo cada uno de tus agentes de un solo vistazo, te permiten moverte por la sesión de Herdr, por los distintos worktrees, pestañas, agentes, con atajos de teclado de una forma muy rápida. Las notificaciones mejoran mucho la experiencia, ya que se evita ruido de muchas notificaciones que no quieres tener y simplemente te puedes enfocar en las

[15:08] que sí quieres recibir y además, bueno, los pop-ups por ejemplo, es una herramienta que también me ayuda mucho, el hecho de lanzar estas pestañas temporales me ayuda muchísimo así que pruébalo te dejo todo en la descripción, pruébalo en tu propia configuración, estoy seguro de que puedes sacar muchas recomendaciones y muchas ventajas de configurar así Herdr en tu día a día espero que te haya gustado y nos vemos en el siguiente vídeo
