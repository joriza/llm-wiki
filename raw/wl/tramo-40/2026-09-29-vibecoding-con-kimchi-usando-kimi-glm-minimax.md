# VIBECODING con Kimchi - Usando Kimi, GLM, Minimax

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=f2laroE5zgE)
- **Canal**: Pelado Nerd
- **Publicado**: 2026-09-29
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 21:09

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Tengo que confesar algo. Cuando el mundo se movió a la cultura de Bobs, o sea, hacer que los SRE o los S admin se me convirtieran más un poco en una persona que codeaba, me dio un poco de miedo. Yo siempre fui un administrador de sistemas que no tenía mucha experiencia code fue algo que siempre se me fue de las manos cuando empezaba a intentar aprender y tenía miedo. Siempre estaba en las entrevistas que me tocaba codear y yo siempre decía, "Uy, yo yo no sé codear mucho." Me sentía incómodo. Y eso ha

[00:30] cambiado totalmente en los últimos meses. Ahora me siento supercmodo code y no es porque aprendí o hice un curso o algo, sino porque ahora tenemos acceso a herramientas que antes no existían, que nos permiten codear sin tener tanta experiencia. A ver, esto no quiere decir que cualquier persona en el mundo pueda cogear. No digo que es así y seguramente muchas personas se van a enojar cuando diga esto, pero no hace falta ser un experto programando para hacer buen código hoy mismo. Todo esto es gracias a

[00:59] las herramientas de inteligencia artificial que tenemos hoy en día. Esto no es ninguna novedad, todo el mundo seguramente ya las está usando. Yo les voy a mostrar un poco cómo usar este tipo de herramientas y tratar de quitarles un poco el miedo si son ese tipo de personas que tal vez todavía no se animan a probarlas. La gente de Quinchi se contactó conmigo para que les mostrara cómo funciona la herramienta de ellos, pero esta este video que estoy armando es válido para cualquier

[01:22] harness. Vamos a empezar primero por el principio. ¿Y qué quiere decir esto? Un harness que se conecta a un modelo de inteligencia artificial y lo que tiene este cliente o este software es que está preparado para interactuar con este modelo de una forma que sigue las buenas prácticas para codificar. O sea, no es lo mismo que yo le hable a un chat como chat GPT que use un harness de de code para hacer código. El chat GPT no está preparado para codear. No digo que no lo vaya a hacer, seguramente lo va a poder

[01:51] hacer sin ningún problema, pero tal vez no sigue esas buenas prácticas que los desarrolladores siguen a la hora de code. Entonces, por eso siempre es una buena opción usar un jarness de code para codear, ya que ese jarness tiene esas buenas prácticas, esas herramientas, esas instrucciones para pasarles al modelo para poder hacer bien el código. Voy a mostrarles entonces haciendo un ejemplo s simple. Lo primero que vamos a hacer, sí, es abrir nuestro cliente y vamos a elegir un nuevo

[02:19] proyecto. Yo acá creé un proyecto que se llama Kimchi Demos y en este Kimchi Demo le pasé un directorio donde va a estar mi código. Obviamente esto puede ser en cualquier directorio que esté en tu máquina. Y por cierto, este cliente de Kimchi funciona en Windows, en Linux y en Mac sin ningún problema. Entonces, lo primero que vamos a ver acá arriba tenemos dos opciones. Tenemos chat y tenemos code. La diferencia entre chat y code es la que decía recién. Chat va a estar más orientado a chatear y

[02:43] responder preguntas y Code va a estar más orientado a codificar y va a tener esas instrucciones que les contaba recién. Después acá vamos a tener un par de opciones. Vamos a tener eh el signo más para poder agregar un directorio.

[02:55] Vamos a tener acá la forma en la que va a actuar nuestro cliente. Va a preguntarnos cada vez que haga una edición de un archivo. Va solamente a planear. va a hacerlo automáticamente y va a tener y en inglés significa you only live once, que básicamente es una forma de decir, hacé todo, te doy todos los permisos, hac lo que quieras. Yo acá lo voy a poner en modo automático.

[03:15] Entonces, vas a discernir cuáles son esos momentos donde realmente te tiene que preguntar algo, pero si sabe que dentro de todo es algo seguro de hacer, lo va a hacer sin preguntarte. Y después acá vamos a elegir nuestro modelo. Una de las cosas buenas que tiene usar algo como Kimchi es que nosotros podemos elegir modelos open source que están hosteados por ellos. Esto, ¿qué quiere decir? Que no vamos a tener que depender de un modelo, de una herramienta que tiene algo privado. En este caso vamos a

[03:41] poder elegir modelos de frontera como Kim K3 que está acá, o GLM 5.3, que son modelos igual o incluso a veces mejores que modelos de frontera como de Antropic o de Open AI y van a tener las mismas o nuevamente mejores capacidades que esos modelos. Podemos elegir nosotros, por ejemplo, el modelo Kimikada 3 si queremos codear directamente. Sí, por supuesto. También podemos elegir GLM o podemos ponerlo en modo automático. Y eso lo que va a hacer es el cliente va a elegir qué modelo es mejor o qué modelo

[04:12] es más eficiente para ese momento. Tal vez no queremos tener un modelo supercamiento, sino que solamente necesitamos ese modelo al momento de decar. Igualmente vamos a probar las capacidades de estos modelos nuevos como Química 3 o GLM 5.3 que nuevamente son los fronteras de ahora del mundo de open source. Vamos a probar GLM 5.3 y vamos a decirle algo ser simple. Esto es un desperdicio de tokens, usar un modelo tan potente para algo tan simple, pero vamos a ver las capacidades que tiene. Entonces, le

[04:38] vamos a decir directamente en español, ¿sí?, en lenguaje natural lo que quiero que pase. Siempre vamos a tratar de ser lo más específico posible. Y acá donde entra un poco la habilidad de el desarrollador, de la persona que está escribiendo este prompt. porque sabe las cosas que le tiene que pedir. Pero nuevamente si sos principiante empez a probar y vas a ver cómo va saliendo la cosa. Entonces le vamos a decir, armame una app minimalista de tareas con diseño de tarjetas, checkbox, tachado y tareas completadas

[05:08] abajo. Mostrame un preview. Bien, entonces simple, le voy a pedir una app de to do, ¿sí? que lo va a a desarrollar, le voy a decir que arme un preview. Fíjate que eh mando enter y ahí no más vemos como el modelo o mejor dicho Harness le manda todas estas instrucciones al modelo y va a empezar a a planear el proyecto. Esta es la gran diferencia nuevamente entre usar un chat y un jarness de code porque va a tener toda esta etapa de planeamiento antes de empezar a codear. Fíjate que

[05:41] acá está pensando en inglés, ¿viste? Check the working directory contents. Build a single HTML file. Sí. preview macOS lo podemos abrir con HTTML. Como esto es una simple tag, no tengo que hacer un full plan, bla, bla, bla. Voy a crear una tarea de mi un solo archivo HTML, sin dependencias con tarjetas checkpost, tachado y las completado abajo. Primero reviso que hay en el directorio se va a fijar en este directorio obviamente está vacío, así que no tenemos nada y ahí no más vemos

[06:05] que ya está creando el HTML y una vez que termine lo vamos a ver acá a la derecha tenemos los cambios de los archivos, una terminal si queremos y también tenemos un navegador para poder ver nuestra página web. Una vez que termine, vamos a levantar la página web acá. Esto va a llevar un ratito, posiblemente entre 1 y 2 minutos. Listo.

[06:23] Ahí terminó entonces de crear. Fíjate que ya abrió el archivo. Lo acá lo puedo lo puedo poner en el en el navegador que tenemos acá a la derecha. Sí. Y tenemos las tareas. Grabar un video de Kimchi. Sí. Vamos a agregar acá. Perfecto. Sí. Y acá si lo marcamos se manda acá abajo.

[06:42] Todo esto se guarda tu navegador derecho de conmar el perro. Yo no tengo perro. Pasear a vaquita. Funciona perfecto. Simple de usar, sin ningún problema e incluso está en en modo oscuro. Voy a probar algo rápido. Esto esto no estaba, digamos, en el script, pero quiero probar una cosa. A, déjame ver si puedo ponerlo acá en pantalla. Voy a poner el aspecto, lo voy a poner en modo claro. A ver, mira, ahí se puso en modo claro la página funciona perfectamente en modo claro y modo oscuro, sin que yo se lo

[07:17] haya dicho. Sí, perfecto. Como pudieron ver, entonces, en una cuestión de unos dos o tr minutos pudo hacer una página, obviamente sers simple, pero todo basado en un prompt. Yo realmente no vi ni el código y funciona perfectamente, sin ningún problema. ¿Vieron lo fácil que es? Y esto es algo que puede hacer cualquier persona. Lo único que tenés que hacer es descargar eh Kimchi, hacerte una cuenta y empezar a escribir y va a estar funcionando. Vamos a probar algo un poco más difícil. Vamos a ver

[07:44] estas capacidades de este modelo GLM que dicen que es buenísimo. Vamos a ver si es verdad. Me creé otra otra carpetita así para irlo para tenerlo separado y para que el trabajo anterior no confunda a esta gente. Esto tal vez a veces es una buena práctica. Yo simplemente creo un nuevo directorio y creo un nuevo proyecto. Sí. Acá nuevamente lo voy a poner en modo automático. En esta vez voy a elegir un multimodelo, no voy a elegir GLM porque quiero que automáticamente elija el modelo y

[08:09] después podamos comparar los costos. Le vamos a decir hacemos un dashboard dark theme que muestra estatus de servicios app también gráfico simple y que se conecte a la status page de githitub.com de GitHub para mostrar su estado. Entonces vamos a decirle que haga eh un dashboard, ¿sí?

[08:30] para graficar el estado de de GitHub. Fíjate que ahí fue multimodelo. No sé si notas que va un poco más rápido que el anterior, porque este modelo al ser está en modo automático, va primero a intentar usar un modelo rápido y barato para planear y después va a usar otro modelo más caro y lento, entre comillas, para codear. Entonces, fíjate la diferencia de la velocidad en la que en en la que hace las cosas. Obviamente si estamos hablando de segundos de diferencia, no va a haber mucho en este

[08:57] en estos proyectos tan chiquitos, pero está bueno darse cuenta de una, ¿no? Ahí detectó automáticamente que el directorio está vacío, así que armo el dashboard como proyecto nuevo. Voy a confirmar que ranken tenemos disponible luego escribir el plan. En este caso sí va a escribir un plan. Vamos a dejar que que trabajen esto y vamos a abrir otra demos más mientras y obviamente esto es una de las cosas buenas también que podemos hacer ahora con este tipo de herramienta. Podemos trabajar en muchos

[09:17] proyectos a la vez y esto es algo que yo estoy haciendo en el trabajo todo el tiempo, ya que tenemos tantos tiempos muertos, entre comillas, ya que la parte de codear la delegamos a un agente. Podemos hacer multitarea y trabajar en muchas cosas a la vez y dejar que el agente se ponga a trabajar en la parte de coder. Y acá vamos a hacer algo diferente. Lo que voy a hacer es voy a abrir la carpeta de un proyecto que yo ya trabajé, va a ser mi página web.

[09:42] Entonces ahí abrí, creé un nuevo proyecto, le puse mi página web. Vamos a abrir mi página web acá en en la en el navegador. Sí, esta es mi página web, obviamente s simple, lo tenemos en modo modo oscuro y modo claro. Le voy a poner acá que tenga la opción de ponerlo en español y en inglés. Entonces, simplemente vamos a hacer eso. Le vamos a ir acá, inspeccionar mi sitio web y agreguemos la posibilidad de elegir el idioma de español e inglés. Entces le damos ahí siguiente. Fíjate, entonces lo que va a

[10:17] hacer ahí es leer el código actual en el directorio. Está fuera del directorio. Parece que intentó un directorio incorrecto. A ver si lo puede seguir leyendo. Ahí encontró el directorio correcto. Ahora sí está pensando.

[10:29] Entonces, lo dejemos que piense un rato. Mientras está acá vamos a ir a la demo número dos, que era el dashboard status. Ahí va, sigue trabajando. Fíjate que nuevamente está acá todavía en el en la fase de planeo. Lo que hace este harness, este cliente, es crear un directorio punto kimchi dentro del directorio del proyecto y ahí adentro crear un directorio donde va el plan, donde están enumeradas las tareas y las decisiones que tomó. ¿Para qué sirve esto? Porque recuerden que los modelos

[10:58] de inteligencia artificial no tienen memoria. La memoria se la ponés vos aparte con archivos o con base de datos. Entonces es muy importante documentar todas estas decisiones, todos estos planes para que la próxima vez en que yo trabaje en este proyecto, este cliente pueda leer esa memoria, pueda entender qué se hizo antes y no no tenga que volver a empezar, digamos, a inspeccionar todo. Entonces, para eso sirve estos archivos de memoria. Y esto es totalmente válido y y seguro guardar

[11:27] estos archivos de memoria en el repositorio porque nosotros queremos que ese repositorio esté compartido y si otra persona tenga que trabajar pueda hacer lo mismo. No me olvidé de prender la luz, eh, casi me olvidé. Lo que sí, ahora me estoy dando cuenta que los colores acá no van. Alexa, modo estudio, era un rojo.

[11:49] Y bueno, es lo que hay. Bien, se me cortó internet, así le tuve que poner y continúe, pero ahí está eh listo el dashboard. A ver, el de GitHub, a ver si funciona. GitHub status.com. Ah, se está trayendo entonces la información de gitstato.com/api.

[12:04] Sí. Y eh acá me dice para correrlo le voy a decir correlo y levantalo en el puerto 3000 o el que hayas configurado. Y acá entonces en el otro, a ver, bueno, lo va a levantar en 2 segundos, así que directamente al 27. Bueno, le voy a poner menos port. Ah, parece que se la compliqué porque no tenía la opción. Ah, sí, sí lo tiene.

[12:26] Menos menos port 3000. A ver, a ver si funciona. Y acá vamos a ir al browser. Entonces, local host. Vamos a ver si funciona. Y entonces acá tenemos nuestro Gitcap Service Status, nuestro dashboard que creó totalmente desde cero con un solo prompt. Sí. Y tenemos información en teoría oficial, o sea, la estamos trayendo de de GitHub. Bueno, no anda ningún botón, obviamente porque esto es todo se lo está trayendo directamente desde el Jason, pero son cosas que las que podemos ir iterando. Y fíjate el

[12:57] diseño, o sea, yo esto como C admin SRE viejo canoso, sí, no, yo no puedo hacer esto tan bonito, lo hizo todo con un solo prompt. Sí, esta es la magia de la inteligencia artificial. Está la magia de estos jarn permiten que una persona que tal vez no tenga estas capacidades pueda hacer algo bonito. Si esto lo ve diseñador capaz dice, "No, esto está refeo, los colores no pegan, qué sé yo."

[13:23] Pero para mí esto es más que suficiente para lo que yo necesito y funciona. Esto es lo importante. Esto es lo que está trayendo esta tecnología, ¿no? Traer la capacidad para que cualquier persona lo pueda hacer. Vamos entonces a nuestro segundo sitio, que era el de mi sitio web. Acá eh se me cortó internet, así le tuve que poner que continúe, pero ahí levantó nuestro servidor en el puerto 8080 y acá le voy a decir, bueno, cuando terminés hacemos un commit, ¿sí? Ya le dije y hacemos un PR para revisar porque

[13:51] les quiero mostrar una cosa más. Entonces acá va a meterse al directorio y va a ser un git push, ¿sí? con con el el nuevo feature branch. Y acá es donde yo lo tenía en automático y me pregunta, "Che, che, ¿querés que haga corra este comando?" Esto no lo puse en modo yolo, no lo puse en modo que haga todo, sino que lo puse en modo automático y me va a preguntar. Sol, le voy a decir, "Sí, eh, esto está bien, hacelo." También le puedo poner que sí, que no pregunte más para este tipo de comandos. Y lo que va

[14:15] a hacer esto entonces es crear un commit con un pull request, ¿sí? Con todos los cambios que yo necesito. Y ahí me va a pasar entonces el pull request. Vamos a ver si vamos a ver si está. A ver, lo vamos a abrir. Fíjate que acá ya lo trajo al P request. Lo vamos a pasar a modo ready. Y bueno, hay unos conflictos ahí que eso es porque no tenía la versión actualizada en mi máquina, pero fíjate que también les quería mostrar esto. Tengo conectado por medio de Kimchi y esto es una feature que trae,

[14:41] es el Code Reviewer. Sí, vos puedes linkear tus repos de GitHub y automáticamente cuando hagas un pull request va a venir el C review de Kimchi y va a hacer un review externo a tus cambios. Pero Pablo, voy a decir, "Pero si ya lo hice con Kimche, ¿qué diferencia hay?" Y no, eso está bueno porque no tiene el contexto del de lo que yo le pedí. Es simplemente como si fuera otra persona que viene desde afuera y revisa mis cambios. ¿Sí?

[15:05] Entonces acá están estos cambios y parece que va a haber unos conflictos. Entonces, si hay unos conflictos directamente le voy a decir, hay unos conflictos en el PR. Podés revisar si hay que traerse la última versión de main.

[15:22] Entonces, le voy a decir eso y automáticamente va a hacerlo. Y fíjate como yo ya no estoy tocando código, yo ya no estoy haciendo comandos de git, yo ya no estoy eh haciendo nada que lo vamos a poner que que que lo haga todo sin preguntar. Yo ya no estoy haciendo nada. Yo directamente le pido a la gente que haga todas estas todos estos cambios. Esto es algo que yo ya hago así en el trabajo. En mi trabajo es muy raro que yo tenga que estar tocando código, que tenga que estar pidiéndole resolver

[15:51] un conflicto con Git directamente y le digo, "Mira, hay un error, resolvelo, fíjate cuál es el error acá y trata de resolverlo." Obviamente yo después lo reviso al final del todo, pero ya no tengo que estar tocando el código.

[16:02] Fíjate que ya los archivos ni los abrí directamente. Yo ya no sé, yo ni sabía que tenía la última versión desactualizada. Así, cuando termine entonces va a ser el el review, lo va a subir. Vamos a ir nuevamente a ver si ya ahí metido los cambios, viste, para que no haya más conflictos. Ya no hay más conflictos y vamos a refrescar. Si quiera podemos ver los cambios por arriba. Incluso ahora les voy a mostrar cómo funciona. Mientras mientras está eh revisando esto. Esto va a validar el

[16:27] deploy. Yo ya lo tengo configurado para que cuando me relle automáticamente vaya a a producción. ¿Sí? Entonces, vamos a hacerlo así, sin revisar el código. Chao. Confirmar. Y listo. Mientras se hace el deploy, les voy a mostrar entonces un poquito acá cuánto costó hacer todo esto, estos tres proyectos que hice. Fíjate, vamos acá. Uso, podemos ver en las últimas 24 horas, ¿sí? el uso que eh que tengo. Bueno, acá me me dijo que ya está listo. Acá eso es una cosa que está buena, lo que hace es

[16:56] tracka el el estado del pull request y automáticamente le podés decir que se ponga a actualizar, que se ponga a a chatear con con el reviewer y hacer los cambios que tenga que hacer. Ahí ya detectó que lo mergé y bueno, ya se se desentendió. Pero fíjate, entonces acá yo puedo ver el uso, ¿sí?, de esta sesión. Acá podemos ver que todo esto que que he estado haciendo hoy me costó $3. Sí. Eh, bueno, en realidad hubo unos unos cargos a la noche de otra cosa, pero el trabajo de ahora fueron $207 en

[17:23] realidad, no 3. Entonces, esto es lo que lo que gasté hoy y fíjate cómo dividió el trabajo entre diferentes modelos, Minimx, Kimi, Deeps, Seek, GLM. Todos estos es el los cambios que que estuv haciendo recién. Y también puedes ver acá la opción, ¿sí? todos los gastos que he estado haciendo. Este es el último mes, $24 he estado gastando. Eh, les aviso que con el con el link que está en la descripción se pueden hacer la cuenta, es totalmente gratis y tiene un un regalo de creo que son $50 en tokens

[17:51] para que los puedan usar. Todo esto lo pueden usar incluso con Open Cl. Yo estoy usando Open Clinchit para codear y lo lo hacen de los mismos créditos. Así que pueden probarlo sin tarjeta de crédito, lo pueden chequear, está muy bueno. Y bueno, esto es todo lo que podemos eh aprender hoy con Kimchi.

[18:06] Chéquenlo, está bueno y creo que este este mundo ahora está buenísimo, ¿no? O sea, poder yo trabajar en estos proyectos, hacer mi propia página web. Ah, me olvidé mostrar la página web. Vamos a buscarlo. A ver, tenemos acá el botón de s y en. Bastante horribles.

[18:21] Vamos a decir que lo cambie. Sí. Inglés, español, inglés y español. No hace absolutamente nada. Hay que seguramente tocarlo y arreglarlo. No anduvo. Perfecto. Así anduvo. Agregó el botón, pero evidentemente no funciona. Vamos a ver qué pasó y ya lo vamos a arreglar.

[18:37] Esto es lo que está bueno, ¿no? Esta este tipo de de posibilidades que le damos a las personas que tal vez no tienen no tienen las capacidades para probar para para hacer este código. Yo todo esto lo hice con Kimche antes y no solamente esta página, sino fason.

[18:51] Peladoner.com. Todo esto lo hice con Kimchi, eh, el proyecto que hice en el video anterior, que es mi mi dashboard de Link Shortner, también todo esto lo hice con Kimchi, así que chequéenlo. Son posibilidades que tenemos ahora, que antes no teníamos, nos permiten ser mucho más productivos, nos permiten hacer mucho más trabajo, así que está buenísimo.

[19:09] Por cierto, arreglé el sitio, era un error muy simple, estaba muteado acá el color, entonces era texto. No sé qué significa eso, pero eso hacía que no funcionara. Y pointerv No, ese fue el fix y ahora sí funciona. Esa es la cosa. A veces hay que probarla antes de hacer el antes de merar el P request. Yo directamente no lo probé y bueno, me enganchó justo algo que no funcionara, pero bueno, cosas que pasan generalmente funciona no anduvo. Quería mostrarles esto que es normal, ¿no? A

[19:43] veces probarlo es importante todavía. Nos vemos. Quería mostrarles un poco entonces cómo se trabaja ahora con lo que se llama vibe coding, cómo cómo podemos trabajar sin realmente tocar el código y poder tener estos proyectos.

[19:58] Así que está buenísimo, chequenlo. Eso fue todo por hoy. Espero que haya aprendido algún nuevo. Suscríbanse para más videos. Denle me gusta si les gustó. Dle no me gusta. Si después de querer mostrar una demo de Kimchi sin haberlo probado antes, te muestra la página web y el botón de español e inglés te cambia a jeringoso.

[20:18] ¿Sabes lo que es el jeringoso? Es cuando repetís la sílaba, capaz en otros países diferentes, pero por ejemplo geringoso de Pablo Fredson sería papa blopo Frepedripi sonopsom. LinkedIn sería Linpiedinpi. No tiene absolutamente ningún sentido ese idioma. ¿Para qué sirve el jeringoso?

[20:47] Es la cosa más estúpida que hay. Pero lo aprendí, lo aprendí cuando era chico. Jamás en mi vida lo he usado. Jamás en mi vida lo voy a usar. Estaba equivocado. Lo usé en un video. Así que al final la seño. Tenía razón. Para algo lo vamos a usar.
