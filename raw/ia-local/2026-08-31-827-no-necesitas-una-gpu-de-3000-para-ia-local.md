# 827 - No Necesitas una GPU de 3000€ para IA Local

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=2EAtjJbnEVk)
- **Canal**: atareao
- **Publicado**: 2026-08-31
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 22:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:08] Hola, soy Lorenzo y esto es atareado con Linux, episodio número 827. [resoplido] Acabando ya como estamos en esta temporada, porque el próximo episodio 828 y es el primero de la novena temporada, te tengo que decir que claro, si has seguido los últimos episodios, los últimos 3 meses, te habrás dado cuenta que me he ido creciendo conforme han ido pasando los episodios. Empecé con aquello de un pequeño laboratorio que prácticamente cualquiera iba a poder montar en casa para terminar con que

[00:38] prácticamente ibas a necesitar un par de tarjetas gráficas Nvidia y cosas por por el estilo. Para luego por último ya decantarme directamente por Open Router o por cualquier otro servicio de los que hay alojados en la nube para que te den servicios exactamente de modelos de lenguaje.

[00:54] Durante estos últimos meses, pues te he hablado de Rag, de agentes, de skills, de MCPs, de asistentes, de incluso te he hablado de mi propio agente, de Anacleto. Y como te digo, me he ido creciendo, pero la realidad es que claro, no todos disponemos de un equipo pues con eh recursos ilimitados para poder correr los modelos que queramos.

[01:15] Sin embargo, te tengo que decir una cosa. Y es que realmente con el equipo que tienes y dependiendo de lo que vayas a hacer, probablemente para tener un pequeño laboratorio tienes más que suficiente. Simplemente se trata de seleccionar exactamente las herramientas que necesitamos y una vez seleccionadas las herramientas que necesitamos, seleccionar exactamente aquellos modelos que bueno, pues que van a cumplir eh con las necesidades que básicamente tenemos. Es decir, que con

[01:42] lo que tienes ya vales. No hace falta ni el graph, eh Rag o bueno, vas a poder montar cosas, pero van a ser un poco más limitadas, tampoco pasa nada. Y tampoco vas a necesitar una GPU de 3000 euros ni vas a necesitar clúster, vamos con un hardware mínimo, con un software mínimo, los modelos y las herramientas necesarias. Porque en muchas ocasiones nos perdemos buscando un modelo supercomplejo cuando a lo mejor con un modelo mucho más sencillo, simplemente seleccionando eh las

[02:11] herramientas adecuadas MCP y skills, vamos a tener lo que buscamos. Así que vamos directos al turrón. En este episodio te voy a hablar de el botiquín del explorador de recursos de IA o recursos de IA. Y en este sentido, lo primero y principal es eh pues bueno, avanzar un poco y hablarte sobre el hardware mínimo. Y es que realmente eh vamos a pensar que no tenemos GPU, simplemente pensemos que tenemos RAM.

[02:40] [carraspeo] Y en este caso si solamente tenemos RAM, podemos tener 8, 16, 3, 16, 32, 64, 128, todo lo que tú quieras. Pero con modelos de 8 GB, o sea, que perdón, con una RAM de 8 GB y sin contar con GPU, simplemente teniendo en cuenta que tienes SSD, ya puedes correr pequeños modelos como Phi 3.0 o QWin 1.5 B.

[03:03] Y esto ya es muy interesante. Luego con 16 GB de RAM podemos ir a modelos un poco más grandes, con 32 mucho más grandes y ya si tenemos GPU, bueno, pues la cosa se pueda se puede em ir a más. Pero seamos con seamos consecuentes. Quiero decir que al final eh a lo mejor vale la pena pequeñas cosas correrlas en tu modelo local y otras cosas, cosas más potentes, utilizar herramientas o servicios en la nube. Y es que al final se trata un poco de eso, de combinar eh lo que tenemos con eh los servicios en

[03:36] la nube para determinadas operaciones correrlas en local y otras correrlas directamente en la nube. Al final puedes ir de modelos que ocupan incluso pocos megas hasta que hasta modelos que ocupan pues 4 o 40 GB, depende del qué.

[03:53] Desde luego, para hacer todo esto, todo lo que te voy a contar, lo que vas a necesitar básicamente es em un SS, un SSD, un, perdón, un SSD, es decir, un disco eh de estado sólido, o mejor dicho, un, o mejor todavía, mejor, no que mejor dicho, sino mejor todavía, un NVMe y lo que no te va a funcionar ni de coña es con eh un disco duro. Con eso seguro que vas a tener más de un problema.

[04:23] Una vez ya tenemos solucionado el tema del hardware y sabiendo que el ese, el SD, SSD es obligatorio, nos vamos al software base. En el software base yo te diría que a a lo mejor con Docker o con Podman te sientes un poco eh ¿cómo te digo yo? Un poco coartado porque no los conoces suficientemente pero desde luego que ya puedes empezar a correr o llama directamente desde tu equipo, porque o llama lo puedes instalar simplemente ejecutando un eh un un curl, un con un sencillo curl lo

[04:58] puedes tener. Desde luego, si estás utilizando eh Pacman, con Pac, o sea, perdón, si si estás utilizando o si tu eh sistema operativo, tu distribución, mejor dicho, es Arch Linux, simplemente con sudo apt install o llama ya tendrías la herramienta fundamental con la que puedes empezar a trabajar. Con esto ya podrías empezar a trabajar sin problema.

[05:20] Y luego ya viene lo de Podman y Docker para mejorar las cosas. ¿Por qué Podman y Docker? Porque al final eh todo esto que te cuento pues empieza a eh a crear servicios, a crear em dependencias, a crear o a necesitar una serie de herramientas, una serie de librerías, una serie, una serie de dependencias que si las instalas directamente en tu equipo puede ser que tu equipo sea incompatible con lo que vas a instalar o puede ser que eh directamente eh las dependencias no casen de un contenedor con otro

[05:55] contenedor, mejor dicho, de un servicio con otro. Por ejemplo, pongamos que eh quieres instalar Open WebUI y quieres instalar eh OpenCode. Son dos servicios que puedes utilizar perfectamente con em con Oayama. Eh son dos servicios de em de nube, em perdón, son dos servicios de IA. Estos dos servicios, cada uno están desarrollados de una manera completamente distinta o a lo mejor comparten librerías, pero puede ser que uno de los dos tenga unas librerías más avanzadas que el otro. Con lo cual, si

[06:27] los instalas directamente en local, es muy probable que primero te contaminen todo lo que tienes en tu equipo y no me refiero a que metan virus o tonterías de estas, no, no me refiero a nada de eso, simplemente me refiero a que empiecen a llenarlo de librerías que sean incompatibles con las librerías propias de tu distribución. Eso sería el problema, pero además otro problema sería que eh algunas de las librerías de OpenCode no fueran compatibles con las librerías de eh OpenWebUI. Por esto, mi

[06:53] recomendación es que cualquiera de estas dos las instales directamente utilizando contenedores, ya sea Docker o ya sea Podman. En mi caso, eh como sabes y si ya has visto o has escuchado episodios anteriores, eh verás que yo soy del team Podman. Soy de Podman porque prefiero eh esto por distintas razones eh y de hecho te remito a los episodios relativos a Podman que me han convencido de que es mejor solución Podman que Docker. Pero sea como fuere, te vuelvo a decir lo que te decía anteriormente, no te confundas

[07:30] o o no te líes con esto, lo más importante es que montes tu laboratorio y que lo montes como te dé la gana. Si lo tienes que montar con Docker, móntalo con Docker, ¿para qué te vas a calentar la cabeza? ¿Para qué vas a empezar a investigar sobre Podman? Ya investigarás sobre Podman cuando tengas esto completamente montado.

[07:45] Dicho esto, ¿cómo tienes que montar eh Podman? Digo, perdón, ¿cómo tienes que instalar Ollama? Te he dicho, si estás utilizando o si utilizas Arch Linux, es tan sencillo como sudo apt perdón, como sudo pacman eh Ollama. Pero si no, también lo puedes hacer directamente con curl -F S minúscula, S mayúscula, L mayúscula y la dirección que te dejo en las notas del episodio, https://ollama.install/ sh. Con eso ya lo tendrías instalado directamente. Y como te digo, si no, también lo puedes instalar eh utilizando

[08:17] sudo, en el caso de de pacman o en el caso de Arch Linux, sudo pacman -S Ollama. En mi caso, como ya lo tengo instalado, pues eh miel sobre hojuelas. Con esto ya tendríamos la primera parte. Luego aparte eh como te digo, también necesitarías instalar otras herramientas, como pueden ser Open WebUI o como pueden ser Open Code, pero esto eh bueno, eh poco a poco. Quiero decir, primero instálate lo básico y luego empezamos a correr.

[08:46] Existen otras alternativas a Ollama, como pueden ser llama.cpp o eh vllm o cosas de estas por el estilo. Sin embargo, mi recomendación para empezar y para empezar así a lo mínimo es que te instales Ollama. Porque Ollama ya te va a permitir funcionar exactamente igual que como funcionas con Docker.

[09:07] Claro, llegado [carraspeo] a este punto me dirás, "Ostras, Lorenzo, si me acabas de decir que con Docker Ya, bueno, te tienes que acostumbrar un poco a este tipo de cosas. Con Ollama, simplemente haciendo Ollama ls, vas a listar todos los modelos que tienes directamente instalados en tu equipo, que probablemente cuando eh instales Ollama, pues no tendrás ninguno. Yo ahora tengo pues un puñado. Ahora mismo, yo te diría que tengo eh 26 modelos instalados para ir haciendo pruebas. Y los modelos,

[09:35] como te Te anteriormente, van desde modelos como pueden ser, eh, a ver si tengo por aquí, el llama fi 3, que son 2,2 gigas, o incluso el bgmm3, que es 1,2, que se utiliza para hacer embeddings, o incluso el llama 3.2 de un billón, que es 1,3 gigas. O sea, quiero decir que tengo eh modelos muy pequeños y modelos más grandes, de hasta 9,6 gigas, como puede ser el gema 4.

[10:06] Y con esto se pueden hacer muchas cosas. Por eso te digo que lo primero es lo fundamental. Y llegados a este punto, entramos en otra parte. Que es, eh, directamente los modelos. Eh, de esto ya te dediqué, ya le dediqué un episodio. Y le dediqué un episodio que en el que te hablé de cuantización, te hablé de modelos pequeños, medianos, grandes. Ahora me voy a centrar en los modelos pequeños, en el fi eh 3.5 y en el qwin 1.5.

[10:33] Eh, para que veas que todo esto se puede hacer de una manera relativamente sencilla y que puedes empezar ya a trabajar con ellos sin ningún tipo de problemas. Eh, y y esta es la gran ventaja. Em, eh en este sentido, en este sentido, si por ejemplo quieres bajarte cualquiera de los modelos que te acabo de mencionar, simplemente sería o llama o o llama pull y yo le diría, por ejemplo, el o llama pull fi 3.5 y con esto empezaría a descargarse el o llama 3.5, el o llama fi, perdón,

[11:10] el modelo fi 3.5. Y aquí vamos a ir, fantástico. Bueno, aquí él la está haciendo sus cosas, no sé lo que va a tardar en descargarlo, pero bueno, con esto ya tendríamos una parte importante eh puesta en producción. Ya [resoplido] tendríamos nuestro hardware humilde, bueno, en mi caso no, porque yo estoy corriendo ahora con Nvidia, pero para que sea un poquito más dinámico el vídeo, que si no eh nos vamos a poder eh eh morir del susto, pero simplemente con estos dos, con los modelos de ocho, o sea, con un 8 GB de

[11:45] RAM, con este modelo de Phi-3.5 vas a tener más que suficiente. Voy a ver si lo puedo cortar y ahora, si yo hiciera un Ollama run, eh sí. No sé si me va a dejar o no me va a dejar. Ollama Bueno, ahora eh siempre me pasa lo mismo. Siempre me lío con estas cosas y mira. Bueno, como te digo, eh llegados aquí, podríamos hacer esto si en el caso de, como te decía anteriormente, vamos a un modelo un poco más grande, o mejor dicho, un un hardware más potente, podríamos mover el llama 3.2 o el Qwen

[12:29] 2.5, y si vamos a más gigas, pues incluso podríamos llegar a algunas cosas más potentes. Dicho esto, eh luego vienen las herramientas complementarias. Y esto te lo contaré más adelante en los siguientes episodios que veremos. Porque eh vamos a o te voy a hablar de la búsqueda semántica local, que ya te he hablado anteriormente, pero lo monté con un postre. En este caso vamos a ir a mínimas, en el sentido de que lo vamos a montar con SQLite back.

[12:58] Luego vamos a utilizar también el reconocimiento de voz local. Otra opción que tienes que, si bien lo tengas que hacer con modelos relativamente pequeños, con Whisper vas a poder hacer. Que dependiendo de lo que sea, se va a tirar más tiempo, pero bueno, al final todo es cuestión de lo que tú quieras.

[13:15] Eh como te decía, SQLite back es una extensión de SQLite para trabajar con vectores de embeddings. Esto es algo que utilizaremos más adelante, porque lo que vamos a hacer al final es montar un gra un rag eh directamente con ese culite para hacer, mejor dicho, para montar todas nuestras notas y poder preguntarle sobre nuestras notas. Esto lo veremos en episodios posteriores porque vamos a hacer un rag, pero un rag de tipo graf, de tipo gráfico, que las notas van a estar enlazadas unas con otras. Y la gran

[13:46] ventaja que vamos a tener con todo esto es que lo vamos a montar directamente con, eh, bueno, eh, yo empecé a montarlo con Python para que vieras todas las posibilidades que tiene, pero al final lo he hecho con Rust, eh, va a estar disponible para que te lo puedas descargar y puedas empezar a utilizarlo de inmediato.

[14:03] Em, posteriormente, en en episodios posteriores, lo que vamos a ver es o le le vamos a dedicar un episodio completo a Whisper, en el que podremos ver todas las opciones que tienes. Luego también tienes el TTS local, donde puedes hacer, eh, o sea, TTS es de text to speech, eh, convertir texto en voz, eh, con herramientas mucho mejores y mucho más sofisticadas que las que hemos visto hasta el momento de las que dispone Windows. Eh, Windows, madre mía, de las que dispone Linux. Y luego también vamos

[14:35] a hacer, eh, operaciones con, eh, YouTube DLP y FFmpeg. Básicamente para descargar y procesar audio y vídeo. Em, el lo típico, pues, eh, transcribir vídeos, podcast, reuniones y mm bajar audios directamente para que Whisper luego los transcriba y con eso ir alimentando tu, eh, tu base de conocimiento. El graf rag del que te estaba hablando anteriormente. Y es que eh, con las pocas herramientas o con el hardware que tienes ahora, sí, vas a ir más lento, pero eh, y probablemente las

[15:11] los resultados que tengas no van a ser los óptimos que eh, que podrían ser con equipos más potentes o mucho más potentes. Pero, eh, fíjate lo que te digo, al final vale la pena tener un una memoria virtual, una memoria eh inteligente o una segunda memoria, una memoria digital, como le quieras llamar. Em, y luego ir creciendo sobre ella, en el sentido de que tú te la montas, empiezas a trabajar con ella, ves cómo se comporta, ves cómo funciona y luego, con el paso del tiempo, si en un momento

[15:44] determinado decides mejorar el hardware, pues lo haces. Eh, si no, en otro momento también lo que puedes hacer es apoyarte en servicios de la nube para hacerlo. Incluso tienes otra opción que es bastante interesante que es hacer una combinación de ambos, es decir, eh utilizar un servicio de tercero para hacer la primera pasada en la que hacen los embeddings de todos tus servicios, que es relativamente económico, y una vez lo tienes todo hecho, el siguiente paso que tienes que hacer es, cada vez

[16:11] que creas un nuevo documento, lo haces en local. Y esto, pues sí, tarda, pero como es un solo documento, es relativamente rápido. Así que tienes ahí otra opción. Lo siguiente es ya, una vez ya tenemos esto, es eh organizártelo todo. Para organizártelo todo, yo lo que he hecho ha sido crear un script que está, lo tengo en mis guiones, en el del CD 0827, en el LS ejemplos.

[16:40] Aquí tengo todo y aquí en la organización, eh lo que tengo es, a ver si cambio, 82705 organización, y aquí lo que tengo es montado exactamente cómo funciona todo. Que cuando te digo que lo tengo montado, quiere decir que, lo que va a hacer es montar una estructura de directorios, o sea, lo que te voy a dejar en el en las notas del episodio es un script, un script en bash que lo que te va a montar es ya todo tu laboratorio. Eh, un Docker para Ollama, un Docker para Open Web UI, un

[17:14] directorio para descargar los modelos en el caso de que utilices llama c plus plus, luego otro eh directorio donde están la los datos que vas a utilizar, por ejemplo, tus notas, tus transcripciones, tus embeddings y luego pues distintos scripts que te serán de utilidad. Un script para hacer backups, un script para hacer las transcripciones y otro script para task para hacer consultas. Y luego aparte tienes un par de directorios adicionales que son la configuración tanto de ollama como de

[17:40] open web ui. Y con esto lo tienes todo. No solamente si lo tienes todo, sino que además lo puedes em eh lo puedes guardar como un repositorio git, de manera que parte de ese repositorio se va a quedar almacenado se va a quedar en la nube y lo vas a poder ver fácilmente. Es decir, eh cuando migres a otro equipo, cuando hagas o cualquier otra cosa, siempre vas a tener eh disponible herramientas o esta configuración para poderla instalar fácilmente.

[18:16] La ¿cómo se hace esto? Simplemente es eh y te digo, ejecutas el script en bash que te he pasado y con o que está en las notas del episodio y ya lo tendrías. Y uh una vez lo tengas ya es empezar a jugar un poco. Yo te diría que directamente tú lo que puedes hacer es cosas tan sencillas, a ver si me lo he dejado aquí.

[18:37] Dos puntos QA, control R, o sea, ahora yo tendría eh con ollama run 3.5 le puedo poner hola y lo que no sé es cómo estás y si ya está aquí. A ver, espera, un momento. Voy a listar los que tengo que ahora mismo no me acuerdo. Ollama LS, listo todos los que tengo, voy a buscar el de 3.5 que no está. Vale. Que el de 3.5 no está. Vamos a ver el de mira, run.

[19:06] Puedo hacer ollama llama 3.2, el de 3 billions que son 2GB y le digo hola. Vale. Y con esto realmente me me contesta superrápido. Evidentemente, como te decía en el inicio del episodio, yo lo estoy corriendo con una Nvidia, con lo cual va a ir un poco más rápido, pero te puedes hacer una idea con estas cosas y con esta simplificación que tú ya puedes empezar a trabajar. Por ejemplo, eh cómo se cómo se monta un no, dame un ejemplo, dame un ejemplo de un compose.yml de Engine X.

[19:50] Vale, y él te lo da, o sea, que estamos ante una herramienta que es relativamente potente y relativamente fácil de instalar. Em, o sea, que aquí tenemos mucha potencia y con pocos recursos, que es un poco lo que buscábamos en este episodio.

[20:06] Darle una vuelta a lo que empecé hace unos episodios, es decir, a buscar algo realmente potente que luego fue creciendo, fue creciendo y se convirtió en un verdadero infierno. Pero no se trata de esto. Como te digo, el objetivo no es precisamente que se o sea, convertirlo todo en un infierno, sino más bien el objetivo es que puedas tener tu propia IA local.

[20:30] Y es que como te decía al principio del episodio, con 16GB de RAM y un SSD puedes empezar a jugar, puedes empezar a ejecutar modelos que hace 3 años requerían un clúster. O sea, esto para que te hagas una idea. Y luego si a todo esto y recojo los episodios en los que te hablé de cuantización, miras la parte de la cuantización, buscas modelos pequeños y buscas Ollama, vas a tener una IA local sencilla. Y esto es el primer paso para lo que viene en la próxima temporada, en la temporada 9, que empieza el jueves.

[21:04] Y y y realmente aquí ya vamos con un hardware que es realista, un stack completo, modelos para distintos niveles de hardware, las herramientas que vas a necesitar y una pequeña organización de laboratorio. En los siguientes episodios te voy a hablar de las skills imprescindibles y de los MCPs. No en los continuos, porque como sabes, en estos episodios te estoy hablando un episodio sí, un episodio no, de de inteligencia artificial y en otros episodios te hablo de Linux o de otras

[21:35] cosas para no cansarte. Pero bueno, esto es lo que quería contarte y espero que te haya gustado y que lo hayas disfrutado tanto como lo he disfrutado yo. Recordarte que este es un podcast de la red de podcast de sospechosos habituales donde puedes encontrar fantásticos y maravillosos podcasts. Puedes participar en esa red entrando en Telegram en webtablet.info.

[21:52] Y de la misma manera, si quieres participar en el grupo de atareado con Linux, simplemente tienes que buscar eso, atareado con Linux en Telegram y allí nos vas a encontrar eh pues un poco hablando de de recursos, de un botiquín eh de inteligencia artificial, de Linux, de Docker, de Podman, de contenedores y de cualquier otra cosa relacionada con el Linux y el Open Source. Y poco más que decirte. Recordarte que la vida son dos días y uno ya ha pasado, así que disfruta como si no hubiera mañana y si

[22:18] puede ser con Linux y en este caso con Oyama, mejor que mejor. Un saludo y nos escuchamos el próximo jueves, la temporada 9. [música]
