# Los ingenieros de Anthropic ya no crean agentes (hacen esto)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cx1hHeb-OMk)
- **Canal**: Xavier Mitjana
- **Publicado**: 2026-11-26
- **Recopilado**: 2026-11-27
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Los ingenieros de Anthropic han dejado de crear agentes. Antes pensaban lo mismo que piensa casi todo el mundo, que cada trabajo necesita su agente. Uno para los correos, otro para las propuestas, otro para los informes.

[00:12] Hasta que vieron dónde fallaban esos agentes. Y es que inteligencia le sobraba, pero lo que no entendían era tu forma de trabajar. Y tu forma de trabajar se guarda en una habilidad, una skill. Utilizando skills, un único agente puede hacer el trabajo que antes hacían todos los demás.

[00:27] Y en este vídeo te voy a enseñar a exprimir las skills en seis niveles. Y en el último nivel, el ingeniero que creó Claude Code te va a sugerir que las elimines y verás como tiene mucho sentido. Todo esto lo verás en Claude, pero las skills también las puedes utilizar en ChatGPT y Gemini. Empezamos.

[00:48] Antes de nada, vamos a dejar claro qué es un agente. Un agente es una inteligencia artificial que, además de responderte, hace el trabajo. Abre tus archivos, usa tus herramientas y lo va haciendo paso a paso por ti. Claude Code, por ejemplo, es un agente.

[01:03] Harrison es uno de los ingenieros de Anthropic que crearon las skills [música] y admite que al principio creían que un agente para programar y un agente para llevar las cuentas de una empresa tenían que ser totalmente distintos, por lo que tocaba crear un agente específico para cada trabajo.

[01:16] Hasta que en Anthropic vieron que el mismo agente que habían creado para Claude Code podía ser de propósito general, que servía para mucho más de lo que creían. De hecho, de esta observación salió Co-work. Pero para conseguir que la agente fuese útil de manera general, lo que fallaba era otra cosa. Y Harrison lo explica con un ejemplo.

[01:34] Imagina que tienes que hacer la declaración de la renta. ¿A quién se la das? ¿A un genio de las matemáticas que no ha hecho una en su vida o a un asesor fiscal con años de oficio? Pues al asesor, evidentemente. El genio la acabaría resolviendo, pero tendría que aprender o, lo que es peor, deducir las normas desde cero cada vez.

[01:53] Y es que los agentes a día de hoy son como ese genio. Inteligencia [música] tienen de sobra, lo que no tienen es oficio. Cómo se hace concreto en tu empresa y a tu manera. Piénsalo como un ordenador. El procesador es el modelo de inteligencia artificial, el sistema operativo es el agente y las aplicaciones que instalas encima son las skills. Cuando quieres que tu ordenador haga algo nuevo, no te compras otro ordenador, instalas otra aplicación. Y con los agentes pasa exactamente lo mismo. No creas otro

[02:21] agente, le instalas una nueva skill. Eso sí, utilizando skills un agente puede seguir repartiendo una tarea grande entre varios subagentes, pero lo que deja de tener sentido es que tengas que crear y mantener un agente distinto para cada tipo de trabajo.

[02:36] [música] Una skill es una carpeta. Dentro de esa carpeta hay un archivo de texto que se llama skill.md. Arriba del todo ese archivo lleva dos cosas, el nombre de la skill y su descripción. Debajo van las instrucciones escritas en lenguaje normal, en lenguaje natural. Y en la carpeta puedes añadir otros archivos, ejemplos, plantillas o incluso pequeños programas. Lo importante de una skill es como la lee la agente. Cuando el agente arranca de cada skill solo lee la descripción, las instrucciones enteras

[03:05] las abre únicamente cuando lo que le pides encaja con esa descripción. ¿Y por qué importa tanto que solo lea la descripción? Pues porque antes si le metías a un solo agente las instrucciones de todas las tareas le dabas tanto contexto que acababa pasando por alto una parte.

[03:20] Ese era el otro motivo para repartir el trabajo entre muchos agentes. Con las skills ese motivo también desaparece. Un mismo agente puede tener cientos de skills y mientras no las necesita solo carga sus descripciones. Es decir, un solo agente puede llegar a realizar todas tus tareas sin perderse. Y para que lo veas claro, Anthropic dibuja el agente en tres capas. En el centro está el modelo que es el mismo para todos.

[03:45] Alrededor está lo que llama el arnés, es lo que se carga siempre, las instrucciones del sistema que pone Anthropic y tus instrucciones generales, las del archivo cloud.md. Y en la capa de fuera están las skills que solo se cargan cuando son necesarias.

[03:59] Por lo que la pregunta deja de ser qué agente tengo que crear y pasa a ser qué skill le falta al que ya tengo. Y aquí es donde la cosa se pone muy interesante, porque hay seis niveles para darle esos skills a tu agente. En los tres primeros descubriremos tres maneras de crear una skill. En el cuarto nos fijaremos en todo lo que pueden llevar dentro.

[04:17] En el quinto, dónde encontrar buenas skills que otros hayan creado. Y en el sexto, un detalle clave que la mayoría pasa por alto, cuándo quitarlas, cuándo prescindir de alguna de ellas. Para verlo vuelvo a los tres agentes del principio, el de las propuestas, el de los correos y el de los informes. Vamos a convertirlos en tres skills de un solo agente. Y para eso vas a necesitar tus archivos, tus mejores propuestas, tus plantillas e incluso grabaciones de tu pantalla. Todo eso tiene que estar

[04:45] guardado en algún sitio. Y es que a todos nos pasa. Entre fotos, copias de seguridad y proyectos, el espacio se acaba, tanto en el móvil como en el ordenador. La nube es la mejor solución, pero tiene que cumplir con cuatro requisitos, que sea rápida, barata, privada y segura.

[05:00] Todo esto te lo da Internxt, la nube española que uso yo y con la que me he olvidado de pagar suscripciones. Arrastras tus archivos al navegador o usas su aplicación, que funciona como una carpeta más en el móvil y en el ordenador y accedes a ellos o los compartes desde cualquier dispositivo.

[05:15] Y lo más importante, todo se cifra antes de salir de tu dispositivo y solo tú puedes verlo. Ni la empresa ni terceros tienen acceso y tus datos se guardan en Europa. Su código es abierto y auditable y ya confían en Internxt más de 1 millón de usuarios.

[05:30] Y ahora estrena dos novedades, Internxt Mail, un correo cifrado sin anuncios ni rastreadores, e Internxt Fotos, una galería cifrada que guarda automáticamente las fotos de tu móvil. Las dos vienen incluidas en el plan Ultimate de 5 TB, que es lo que uso yo.

[05:45] Y su punto fuerte, el plan Lifetime. Pago único para siempre, sin cuotas, sin renovaciones, sin subidas. Pagas una vez y te olvidas. Internxt está de Black Friday. Con mi enlace exclusivo tienes un descuento del 90 %. El enlace está en la descripción y en el comentario fijado. 5 TB, pago único y privacidad total. Gracias a Internxt por patrocinar este vídeo.

[06:08] [música] Y volvemos a las skills y empezamos por un nivel más básico posible, por un nivel cero. Un nivel cero que verás que no te recomiendo, que es escribir la skill tú a mano. ¿Y por qué no te lo recomiendo? Porque lo más probable es que no la escribas de un modo suficientemente preciso y ordenado.

[06:27] Lo que sí que te recomiendo es preparar un esquema que te permita entender de un modo muy preciso qué es lo que quieres que haga tu skill. Dicho esto, ahora sí, vamos allá con el nivel uno. En el nivel uno puedes pedirle a Claude que te la escriba él. Anthropic tiene para eso una skill propia, Skill Creator, que le enseña a Claude a escribirla siguiendo las buenas prácticas de Anthropic. Skill Creator va incluida en la app de Claude, por lo que solo tienes que invocarla.

[06:51] Empezamos por el agente de las propuestas. Puedes decirle a Claude algo así. Con Skill Creator hazme una skill que convierta mis notas de reunión con un cliente en una propuesta de una página y le adjuntas las mejores propuestas que hayas enviado para que copie tu estructura y tu tono.

[07:07] Fíjate en lo que has hecho. No le has explicado qué es una propuesta, que eso ya lo sabe. Le has dado las tuyas. En los ejemplos está todo el contexto y oficio que le falta al genio. Y un truco importante, escribe en tus instrucciones generales que Claude use Skill Creator siempre que le pidas una skill nueva.

[07:22] Así todas las skills que hagas a partir de entonces seguirán esas buenas prácticas. Te dejo abajo mi guía de skills por si quieres tenerla a mano. Es una guía donde encontrarás trucos para hacer skills perfectas. [música] Y el nivel uno funciona muy bien, pero da por hecho que tienes algo que darle a Claude como ejemplos o que tienes muy claro el proceso. Es decir, por ejemplo, tienes que darle unas propuestas o unas reglas que sabes explicar. Pero lo cierto es que casi nadie sabe explicar

[07:51] cómo escribe sus correos. Los escribe y punto. Y para este tipo de tareas está el nivel dos, que es el que te recomiendo para crear casi todas tus skills. Haces la tarea una vez con Claude y al terminar la conviertes en skill.

[08:04] Por ejemplo, puedes empezar con una instrucción como esta. Vamos a contestar juntos los correos de hoy. Fíjate en cómo lo hacemos y en cada corrección que te haga, porque al final quiero que conviertas esta sesión en una skill con Skill Creator.

[08:17] La última frase, la de convertir esta sesión en una skill es la clave. Así Claude sabe desde el principio que tiene que fijarse en tus correcciones. Luego empiezas a contestar los correos con Claude y le vas corrigiendo como corregirías a alguien en prácticas. A este cliente se le habla de tú, aquí sobra el saludo, esto no lo prometas y al final le dices convierte lo que acabamos de hacer en una skill. De este modo, cada corrección tuya acaba dentro de la skill y a medida que la vayas

[08:40] usando, cuando aparezca una regla nueva, le pides a Claude que actualice la skill. Así la gente va aprendiendo cómo trabajas y tú dejas de repetir las mismas correcciones. El nivel dos te sirve para cualquier tarea que repitas cada semana.

[08:54] En el siguiente nivel, Claude aprende una tarea solo con verte hacerla. [música] Y nos queda por hacer el tercer agente, el de los informes. Los informes tienen una dificultad añadida. Los datos están en la web de un proveedor que no tiene conector para Claude. Hay que entrar, ir pulsando botones de una ventana a otra y descargarlos y esto es más fácil mostrarlo que explicarlo con palabras. Y ahí entra en juego el nivel tres, grabar la pantalla. Y esto lo puedes hacer de un modo muy sencillo, directamente en la

[09:24] app de Claude. Simplemente pulsas el botón del signo más en el cuadro de texto donde escribes y eliges grabar una skill. Le das a empezar, haces la tarea y terminas la grabación. Y lo bueno es que mientras grabas puedes ir hablando como si formaras a alguien que acaba de entrar, qué botón pulsas y por qué. Claude revisa la grabación con todo lo que has dicho y te propone una skill que puedes guardar. A partir de ahí, Claude puede repetir la tarea él solo. Pero si por lo que sea en tu app

[09:50] aún no aparece esta función, no te preocupes. Hay otra manera que es grabar un vídeo de tu pantalla y subírselo a Claude para que lo analice. Por ejemplo, en Windows puedes hacerlo con el comando Windows + G o con una herramienta gratuita como OBS Studio. Pero para que funcione perfecto deberás configurar una skill que haga la transcripción del vídeo segundo a segundo para que Claude sepa qué le estabas diciendo en cada momento. Y fíjate, los tres agentes ya los hemos convertido en tres skills que

[10:15] puedes usar en un único agente simplemente interactuando con Cloud. [música] Pero hasta ahora solo has cambiado tres agentes por tres skills. La ventaja de verdad aparece en el nivel cuatro porque una skill no tiene por qué ser una mera lista de pasos, unas instrucciones.

[10:33] Y es que, ¿qué tienen en común las propuestas, los correos y los informes? Que hablan de tus clientes, llevan tu marca y usan las mismas palabras con el mismo significado. Con tres agentes todo esto lo explicabas tres veces y lo corregías otras tantas cada vez que cambiaba. Con un solo agente lo puedes guardar una sola vez en skills aparte que Cloud combina con las que ya tienes y son de tres tipos. La primera puede ser una skill de datos que le dice a Cloud dónde está la información de cada cliente, qué te ha

[11:01] comprado, qué le has enviado y cuánto le has facturado. La segunda puede ser una skill de diseño que guarda tu identidad visual, los colores, tipografías y maquetación. Yo, por ejemplo, tengo una skill de diseño que me maqueta los documentos de la academia sin tener que ajustar nada.

[11:16] Y la tercera es una skill de definición que solo fija qué quieres decir tú con una palabra o una expresión. Por ejemplo, qué es para ti un cliente prioritario, a veces en una sola frase. De modo que si cambias el logo lo cambias en un único sitio y cambia ya en las propuestas, en los correos y en los informes. Y es que esta es la ventaja de tenerlo todo centralizado en un agente.

[11:36] Cada cambio lo haces una sola vez y la gracia de que las skills funcionen como un LEGO, que puedes combinar sus piezas. Ninguna de estas tres skills le dice a Cloud cómo hacer estrictamente nada, simplemente le da a Cloud un contexto que de otro modo no podría saber y que es necesario para hacer diferentes tareas que se definen en otras skills.

[11:55] [música] Y estas tres skills que hemos creado hasta ahora podemos decir que solo las podías escribir tú porque definían tu manera concreta de trabajar. Pero en muchos otros casos, en este nivel cinco, podrás ver cómo puedes aprovechar lo que ya han creado otros. Y es que muchas las skills que te hacen falta ya existen y son gratis por diferentes motivos. Y el principal motivo es que compartirlas es muy fácil. ¿Por qué? Porque una skill esencialmente es una carpeta con archivos y además Anthropic publicó el

[12:25] formato como un estándar abierto y eso significa que cualquiera puede usarlo y que lo han adaptado más de 70 plataformas. ¿Y esto cómo te afecta? Pues en dos cosas. Que una skill hecha para otra herramienta, como puede ser Codex o Cursor, normalmente también te va a funcionar en Claude, por lo que puedes importarlas gratis. Y que las tuyas te las puedes llevar de un sitio a otro. Es decir, si mañana te pasas a otra inteligencia artificial, tu forma de trabajar se va contigo. Y una vez dicho

[12:53] esto, vamos a ver cómo obtener skills gratuitas. Para buscarlas, el primer sitio es el directorio de Anthropic, con skills de empresas como Notion, Figma o Airtable. Lo tienes junto a tus skills [música] en la app de Claude. Y luego está uno de los directorios más usados, que es skills.sh de Vercel, que además te las ordena por número de instalaciones. Y mi consejo es que ese trabajo, el de buscar en este directorio, en el de skills.sh, se lo dejes al propio Claude.

[13:19] Dile qué directorio quieres usar y pídele que te recomiende skills que encajen con lo que haces. Eso sí, usa solo skills de fuentes de confianza, porque una skill puede llevar código, de modo que antes de instalar nada, pídele al propio Claude que la revise. Y casi siempre compensa adaptar la skill a tu forma de trabajar en vez de usarla tal cual.

[13:39] [música] Y llegamos al último nivel, al que te adelantaba al principio. Borrarlas, [música] eliminarlas. Y es que lo dice Boris Cherny, el creador de Cloud Code. Recomienda que cada 6 meses borres tu cloud.md, tus skills y tus hooks. Y que luego compruebes qué hace el modelo si no tiene nada de eso. ¿Y por qué borrarlo todo, skills incluidas, con lo que cuesta crearlas? Pues porque tu skill está escrita para lo que sabía hacer el modelo cuando la creaste. Y los modelos nuevos son más potentes y a

[14:08] veces saben hacer más de base. Ahí es donde las instrucciones detalladas que has ido acumulando les atan de pies y manos. Y en inglés eso tiene un nombre, lo de atarle las manos al modelo. Lo llaman hobbling. Cuando el modelo podría hacer mejor él solo su trabajo que con las reglas que tú le has puesto y le estorban. Y en Anthropic se aplicaron al cuento. De esas tres capas que te he explicado, la suya es la que estaba en el medio, las instrucciones de sistema.

[14:33] Y para los modelos nuevos lo que hicieron fue recortar más del 80% de esas instrucciones en Claude Code y se dieron cuenta de que no perdían rendimiento en las pruebas que hicieron. Es decir, menos instrucciones para llegar al mismo resultado. Por lo que ellos lo que hicieron fue recortar su parte. [música] A ti te toca revisar la tuya, tu cloud.md y tus skills.

[14:54] Eso sí, yo no lo borraría todo. Te doy mi criterio. Recorta los pasos, la parte que le explica al modelo cómo hacer algo, porque eso es justo lo que el modelo ya hace mejor él solo. Y conserva todo lo que el modelo no puede saber por muy listo que sea. Es decir, tus datos, tu marca, tus definiciones, esos conceptos que solo utilizas tú. Y también conservaría tus correcciones, las que hiciste en el nivel dos, cómo se le habla a un cliente y, por ejemplo, qué es lo que no hay que prometer en un

[15:19] correo. El genio cada vez necesita menos que le expliques los pasos, cómo se resuelve algo, pero cosas como quiénes son tus clientes no lo va a poder adivinar. [música] Para encontrar lo que sobra no hace falta que borres nada. Coge una tarea que haces con una skill, como la de las propuestas, hazla una vez con la skill y otra sin ella y simplemente compara. Si la tarea sale igual o mejor sin la skill, ya sabes que esa skill quizá la pueda recortar. Por lo que para terminar repasamos los seis niveles en

[15:48] 10 segundos. Pedir a la Claude que te escriba la skill, convertir en skill lo que ya has hecho, grabarte haciéndolo, guardar una sola vez lo que la gente no puede saber, usar las skills de otros y borrarlas que ya no hacen falta.

[16:02] Y la próxima vez que pienses en crear otro agente, hazte antes esta pregunta. ¿Qué skill le hace falta? Y llegados a este punto, si quieres crear este agente único y que siempre tenga el contexto perfecto, te recomiendo este vídeo. Ahí te Te a crear un agente que vivirá dentro de una carpeta. Nos vemos en el próximo vídeo.
