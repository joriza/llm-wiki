# Jev es el lanzamiento de IA mas importante desde ChatGPT

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=nkhWIRCfprU)
- **Canal**: EDteam
- **Publicado**: 2026-09-18
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 25:11

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Uno de los creadores de Chat GPT se desapareció 2 años y estuvo trabajando en secreto y ha lanzado un nuevo tipo de inteligencia artificial que resuelve el mayor problema de los LLM, que son muy caros y muy lentos. Y esta nueva inteligencia artificial no es un LLM, ni siquiera se considera IA generativa. Es completamente un nuevo tipo de inteligencia artificial que llega a ser hasta 200 veces más rápida que un LLM y hasta 400 veces más barata. Estamos hablando, sin duda alguna, de una nueva

[00:33] era de la inteligencia artificial que no reemplaza los LLM en su totalidad, pero que sí puede hacer varias tareas mucho mejor, mucho más rápido, mucho más barato, sin duda alguna. Y no estoy exagerando, esto puede representar un nuevo paradigma. Así que vamos a ver de qué se trata porque estás en Team y tú sabes que en español nadie explica mejor. Para hablar de esta nueva inteligencia artificial nos acompaña nuestro tío Alexis. ¿Cómo estás, Alexis?

[00:57] Hola, Álvaro. ¿Cómo estás? Muy contento de que me hayas invitado. Yo sé que casi no nos invitas porque ahora estás hablando mucho de IA, pero estas partes técnicas están bien interesantes. Así que aquí estamos. ustedes no quieren que es otra cosa.

[01:11] [risas] Yo les ando rogando para que vengan al canal. La gente no no vayan a creer lo que ha dicho Alexis. Pero Alex, tú ya eres experto en Jeff. Ya menos de 24 horas y soy profesional experto certificado. Con 5 años de experiencia.

[01:23] Con 5 años de experiencia. [risas] Correcto. Muy bien. Vamos a hablar de qué se trata esta nueva inteligencia artificial. No, no es IA generativa, no es un LLM, ¿no? Porque es que esta inteligencia artificial no responde en texto, eso lo más curioso, ¿no? No te responde preguntas de de qué color es la luna y que te diga la luna es de color blanco.

[01:43] Así no funciona realmente. O sea, no escribe código de programación, no escribe nada de eso. O sea, no no te sirve como para que te diga, "Escríbeme un hola mundo" en algún lenguaje de programación o dame una receta para mi pollo, mi pollo asadito. Él no sirve para eso.

[02:01] ¿Cuál es el chiste? No, se supone que la te tiene que hacer imágenes, video, texto, código, crearte un Excel, un PowerPoint. Entonces, ¿qué hace esta? Bueno, esta IA lo que hace es buscar la probabilidad más alta a una pregunta que tú le hagas.

[02:17] Solamente eso, una probabilidad. Entonces, no te responde con texto, sino con números. Obviamente te devuelve un Jason con unos datos, pero no te está generando una respuesta como cuando estás conversando con un LLM que ya estamos acostumbrados a hacer un chat.

[02:31] Entonces, solamente te va a decir la probabilidad de la pregunta que tú me acabas de hacer es del tanto [música] por C. Eso es todo, el sentimiento de las personas que te comentan en tus redes sociales. Entonces, lo que haces es tomar esos comentarios y pedirle a la inteligencia artificial que te los clasifique. Entonces, te va a decir, "Este comentario es 92% probable que la persona esté enojada.

[02:55] Es 95% que esté emocionada, el 70% que esté dudosa." Entonces, esos datos los utilizas tú para decidir qué hacer con ellos. Esto no parece un avance. Clasificadores tenemos desde hace décadas, ¿no? O sea, son algoritmos de machine learning bastante básicos. Más bien parece la mitad de un LLM.

[03:17] Sí, de acuerdo. Totalmente. ¿Por qué? Porque realmente tú puedes clasificar con los LLM actuales, los puede hacer sin problema. La cuestión es que la ventaja de esta inteligencia artificial es que solamente se concentra en devolverte esos valores para que tú decidas qué hacer con ellos. Entonces esta inteligencia artificial está muy enfocada a la automatización, no a que te responda o que te escriba un mensaje superlargo de qué es lo que está pensando, sino clasifica, toma, toma tú

[03:48] y clasifica, pero en lenguaje natural, porque tú las preguntas las haces en lenguaje natural y él te devuelve una probabilidad. ¿Okay? Entonces, tenemos un sistema de inteligencia artificial que en lugar de responderte como chatipt o como cloud, lo que hace es clasificar. En pocas palabras, recibe un contexto, recibe las diferentes opciones, ¿no? Como en el ejemplo de los comentarios, contento, enojado, quiere más información, quiere comprar, cliente potencial, qué sé yo, ¿no? Y en base a ese contexto y las

[04:17] posibles opciones, los clasifica por probabilidades y te entrega un resultado. ¿Correcto? Y tú decides qué hacer. Y eso actualmente lo hacemos mucho con LLMs y es muy costoso hacer esas decisiones con LLM. Es supremamente costoso los costos de un LM normal.

[04:34] Bueno, ya estamos acostumbrados a costos bastante altos, pero esta inteligencia es muy económica, realmente es muy [carraspeo] económica, porque cobra solamente los tokens de entrada mucho más barato y los tokens de salida son gratuitos. Vamos a hacer una presentación rapidita, técnica para esto. Sí, ya va más técnico más al más a los programadores aparte de código, sí, para programadores para entender cómo funciona y que vean que es superfácil. A mí me tienen hinchando que por qué no hacemos

[05:01] contenido de programación y ya para que no friegen. Vamos, vamos, vamos, vamos a hacerle. Jeff no responde texto, es decir, no vas a chatear con él, vas a recibir una respuesta con unos valores. Hay tres formas de preguntarle a Jeff. Choice, escoge una sola opción.

[05:20] Tengo una lista cerrada y sobre esa lista cerrada escojo cuál es la más probable. Por ejemplo, clasificación. ¿A qué carpeta va este correo? ¿Va a la carpeta de facturas, a la de soporte, a la personal o a la de otro? NUL, ¿sí o no? Entonces es un número entre 0 y uno.

[05:37] La pregunta que tú hagas es muy probable cuando se acerca más a uno y es poco probable cuando se acerca a cero, pero la pregunta es de tipo sí o no. Cuando ese nul nos devuelve 0.5 no significa que es medio, sino no sé, realmente no sé. Ya tú tienes que decidir si te llegó un 0.5, ¿qué hacer con eso. Score. Aquí es donde va a ubicar el caso en una escala. Entonces, de niveles de menos a más es donde vamos a poder encontrar cuál es el nivel más cercano que podemos elegir en una pregunta. Ahora, ¿cómo

[06:13] hacemos la solicitud a la IA? Y esto es un request muy sencillito, no es como los request de la A que conocemos, donde tenemos chat, tenemos function calling, tenemos eh MCPs, nada de eso. Aquí es una simple un simple request donde tenemos el contexto, donde tenemos el tipo de pregunta que vamos a hacer, que ya sabemos que es una de esas tres, y las opciones que queremos que nos devuelvan. Esta sería la anatomidad del request, del body realmente. Entonces, le hacemos un post a la al endpoint del

[06:47] sistema y tenemos el state, que son [música] esos datos, esos contextos que yo le estoy enviando. Por ejemplo, si son los mensajes dentro de una red social, pues dentro de state iría el mensaje, es string. El state recibe un string o puede recibir un objeto o puede recibir una ray. es toda la información que tú necesites. Luego viene la llave questions. Dentro de la llave questions vas a colocar un ID a tu pregunta, el ID que tú quieras. Entonces, aquí le quieres decir, por ejemplo, clasificador

[07:18] de carpetas. Ahí lo puedes colocar, clasificador de carpetas. ¿Qué viene dentro de esa pregunta? viene un objeto que tiene primero el tipo o choice para escoger entre una lista, un para un sí o un no, o un score para ver cuál es la probabilidad entre varias opciones.

[07:33] Luego las instrucciones. Aquí es donde le decimos, evalúa si el mensaje que envió la persona tiene un sentimiento de enojo o de Y el criteria es las respuestas posibles. En choice, pues vamos a listar aquellas respuestas que podemos o que queremos organizar. En nul solamente es verdadero o falso porque es un sí o no. Y en score también una array de posibles respuestas. Este es todo el objeto que tenemos que hacer para consumir esa IA. Supremamente sencillo.

[08:08] Realmente dentro del state ya habíamos hablado que puede ser un string o un objeto o una array. Muy sencillito, no recibe imágenes, no recibe audio, no recibe video, esto es solo texto, no recibe absolutamente nada más. Entonces, veamos un ejemplo. Aquí tengo un state, que es un objeto y lo que le estoy enviando es el asunto y el from de un correo. El asunto factura número 4471 del correo cobros@pro.com.

[08:40] Perfecto, ese es el state, ese es el contexto que quiero que evalúe la idea. Luego viene questions y en este caso el ID que le dimos es carpeta. ¿Por qué? Porque vamos a identificar si ese correo lo puedo enviar a una carpeta llamado facturas o soporte o personal u otros.

[08:58] Entonces, instrucciones. ¿A qué carpeta va este correo? Sencillo. Y la criteria en este caso es facturas cuando me lleguen cobros y pagos. Soporte cuando me llegue alguna solicitud de ayuda técnica, personal cuando viene de un amigo o familia y otros porque no encaja en ninguna de las otras opciones. Ese va a ser mi request. ¿Y cuál va a ser mi respuesta? La respuesta va a ser un objeto que tiene la propiedad answers y dentro de él viene el ID de la pregunta.

[09:27] Miren que la pregunta tiene el ID carpeta. Pues aquí también va a venir el ID carpeta y vendría el type que escogimos choice y él me dice el choice es facturas. Dentro de estas opciones es facturas. Y me explica el por qué.

[09:43] Porque las probabilidades fueron facturas 0.94, esa probabilidad es muy alta, soporte 0.03 muy bajita, personal 0.01 y otro 0.02. Y también me dice, ¿qué tan confiado está en que esta clasificación está bien hecha? Ojo, no te está diciendo está la respuesta correcta. No, eso no lo dice la IA. Lo que dice es, oye, yo estoy muy confiado, miren, casi un uno, casi un 100% de que esta probabilidad está bien distribuida. Ya ustedes deciden qué hacer con esto. Es muy sencillo, ¿verdad? Miremos otro

[10:21] ejemplo, pero esta vez con nul, ¿vale? Verifica tu cuenta del banconline.net en contactos false. ¿De dónde sale esta información? Tú haces un programa que extrae la información y arma este objetico. No tiene que ser así exactamente. Ya tú lo armas con la estructura que tú necesites, pero en este caso pues lo estamos haciendo muy sencillo, un asunto de quién viene y si la persona está en mis contactos o no.

[10:45] La cuestión, le hemos dado un ID de fishing y de tipo noble. Perfecto. Las instrucciones. Es un intento de fishing. respuesta, una pregunta de sí o no. ¿Y cuál es el criterio verdadero si su planta opresiona a la persona y false si es legítimo ese correo? ¿Qué nos devuelve él? Nos dice answers, el ID fishion de tipo nul. El nul es del 0.93.

[11:10] Es muy probable que sea fiche. Eso es todo y vamos a ver una score. Tengo un correo que el asunto dice caída en producción, cuerpo 40 minutos sin facturar y tengo la cuestión, le hemos llamado urgencia. Recuerden que aquí podemos darle el ID que quiera. Dentro de urgencia le hemos dicho que el type es score y ese score las instrucciones en qué tan urgente es atenderlo cuál va a ser la el criterio? ¿Es informativo?

[11:38] ¿Es para esta semana? ¿Es para hoy? ¿O es un impacto activo? La respuesta de acuerdo a lo que analizó la IA, bueno, answers, el ID, que en este caso es urgencia porque así lo llamamos, tipo score y el score es 2.78. ¿Qué significa eso? Aquí nos dice cuál es la probabilidad de cada uno de estos íems, el ítem er, el ítem uno, el ítem dos y el ítem 3. Entonces, de cero, de ese informativo, la probabilidad es del 0%.

[12:07] De que sea esta semana es del 0.02, o sea, el 2%. De que sea hoy es el 18%, de que sea un impacto activo, la probabilidad es del 80%. ¿Qué tan seguro estoy de que esta probabilidad está bien tomada? Es del 80%. Recuerden, la IA no te va a responder siempre la respuesta correcta. Él va probabilísticamente a devolverte un nivel de probabilidad, no más. Entonces, aquí te está diciendo, estoy un 80% seguro de que esta distribución está correcta. Entonces acá vemos, listo. Entonces él ya nos ayudó a

[12:46] clasificar esto de acuerdo a esas probabilidades. Esas son las tres formas de preguntarle a la IA. Es bastante bastante sencillo, como lo pueden ver, y lo único que tenemos que hacer es nosotros programar qué hacer con la respuesta que nos entrega en cada una de las preguntas. O sea, que Alexis, lo que tú le entregas es el contexto y las opciones.

[13:08] ¿Correcto? Acá vemos el state, que es el contexto. [música] Ya vimos que puede ser un string o un objeto o una ray que puede haber mucho. Y entiende el lenguaje natural, por lo visto. Totalmente natural. Lo mejor de este sistema es que podemos hacer las tres preguntas en una sola.

[13:24] Esto nos ahorra request, nos ahorra estar haciendo esperando la respuesta para hacer otra pregunta. Nosotros podemos hacer varias preguntas en un solo request y obtener la respuesta de esos tres de esas tres preguntas y ya.

[13:38] Eso es genial porque las preguntas no se truncan entre sí. Es decir, no es que gane la de Choy sobre la de Nul o sobre la de Score, no. Todas las preguntas son independientes y corren en paralelo. Eso es superrápido. Y este sería el resumen de qué es lo que tienen que hacer.

[13:52] Choice para cuál de estas opciones, nul para sí o no. y score, ¿cuánto de algo entre una lista de opciones puedo escoger? Por lo que he visto en tu presentación, yo veo esto jodidamente embebido en software, pero ya hoy.

[14:08] Total, total. Es muy fácil. Es realmente fácil. Y y no solo por lo fácil, sino por cómo te ahorra tiempo, por cómo te ahorra lógica bien compleja, porque o sea, uno puede armar la lógica para varias decisiones, pero es es es muy difícil. Y el hecho de que la IA ya te devuelva un porcentaje de probabilidad sobre una decisión es mucho más impresionante, ¿verdad? O sea, esto va a estar metido en las tripas de cualquier software, pero ya yo no veo para qué esperar una semana, un mes, dos meses. Esto ya está,

[14:42] esto está muy bueno. Realmente claro, es que sabes por qué lo digo? Porque yo siento que el LLM es una capa encima del software, como que tú le agregues una nueva feature a tu software, ¿no? Para preguntarle, no sé, sobre tu catálogo, para hacer soporte al cliente, si me entiendes, ¿no? En editing para preguntarle los cursos. Hay como una capa encima, un agregado, un plugin, pero siento que esto no es un plugin. Siento que esto está en las tripas metido, embebido.

[15:05] Correcto. Es un es un paquete más de todos los paquetes que instalas para hacer tu SP. Eso. Exacto. No es un no es algo encima como si es un LLM. Me deja muy sorprendido y yo no sé si te comprometo, Alexis, en fecha para que esto esté integrado en team [risas] en público.

[15:23] Hay que hacerlo, hay que hacerlo, hay que hacerlo. No se atreve a dar fecha. Que conste en los comentarios me dejan que no se atreve a dar fecha el tío Alexis para el lunes. No, pero yo tú ya hasa avanzando. ¿Tienes algo, cierto?

[15:39] Ya tenemos algo. Quisiera, si nos queda tiempo, quiero mostrar un par de cositas y lo vemos. Dale, dale. Bien. Quiero mostrarles el playground. Eh, actualmente para tener acceso al playground tienes que meterte a una lista, a una lista de espera, pero esa lista de espera dura dos horas.

[15:58] Realmente es muy sencillo. Sí. Ayer vi en X que decía, "Ya le dimos acceso a todos los que estaban en la lista y los que vayan llegando le vamos a ir dando, o sea, pero me quedé como, ¿qué?" Generalmente una lista espera es días, ¿no?

[16:10] Días, semanas y eso y sabe Dios si te dan incluso. Ajá. Y yo me inscribí y dije, "Bueno, esperar en esta semana a ver cuando cuando me llega el correo, ya estás adentro." Y yo, "Wow, a ver, a probar, a probar." Miren, que que se note que soy experto con solamente un día de de tokens. Ya he gastado casi 5 millones de tokens que me han costado 18.

[16:32] Hala, eso. A ver, a ver, a ver, espérate, espérate. Astra y Fable está $50 el millón de tokens de salida. ¿Cuáles son los de salida? Ahí salida 592,000. Ya, ahí tendrías $25, medio millón, un poco más. Pongámosle $30 ya. Y en tokens de entrada está $10 si no me falla la memoria. Corríjanme en los comentarios si me equivoco. Perdónenme que lo estoy diciendo en memoria. $10. Entonces ahí tendremos $40 + 30 $ y a ti te ha costado, a ver, muestra, 18 centavos. Pero la verdad no sé quién

[17:08] me va a comprar esto porque no me pidieron tarjeta, no me pidieron nada. No, pero es el cálculo para que tú sepas cuánto te costaría, ¿no? Claro, [risas] claro. A lo que voy está gratuito. Está de de $7 a 18 centavos. Hala, qué alucinante.

[17:24] S. Bueno, continúa. Super bien. Bien, entonces vamos a hacerle una pregunta. Vamos a hacerla muy sencilla de un sí o un no. Aquí yo ya tengo un contexto bastante interesante. Vamos a aproarlo. Vamos a decir que este fue el email que nos ha llegado. Dentro del cuerpo del email llegó este mensaje.

[17:40] Este 16 y 17 de octubre participa del EDECAM 11 en Bogotá. Son dos días para aprender a crear soluciones con inteligencia artificial que hagan crecer tu carrera o tu negocio y conectar con profesionales como tú. Inscríbete en ed.team/edecam.

[17:56] Te esperamos. Y el perfil al que se lo están enviando es a desarrolladores, programadores interesados en aprender inteligencia artificial. ¿Qué quiero preguntarle yo? Si este evento vamos a colocarnos aquí, vamos a seleccionar el Node para una pregunta de sí o no. Aquí voy a colocarle entonces el ID. Acá le voy a colocar debo ir. Perfecto. De nul, que es una eh pregunta de sí o no. Y la pregunta que le vamos a hacer es, ¿este evento ayuda a mejorar el perfil indicado? Esa es la pregunta que le

[18:32] vamos a hacer y queremos saber si o no. Aquí no necesitamos el criteria. Vamos a quitarle esto. No es necesario para que sea mucho más concreto. Entonces, tengo un ID de debo ir de tipo Node, ¿sí o no? Y la pregunta es muy clara. Este evento ayuda a mejorar el perfil indicado.

[18:50] Vamos a ver qué nos dice la IA. Claro que sí. Sin IA. Yo sé que sí. 92%. [risas] 92% debo ir 92% de probabilidad que o mejor 92% de que sí debo ir. Entoncesaro, aquí está muy clarito. ¿Qué te parece qu el indicado? Ah, bueno, vamos a hacer una prueba.

[19:12] Vamos a quitarle esta palabra indicado. Vamos a ejecutar. Wow, se bajó bastante. Bajó de 92 o cuánto era 92, ¿no? Sí, de 92. Bajó de 94. Bajó de 92 84 por solo quitarle la palabra indicado, a pesar de que arriba dice perfil y se asume que debería entender que ese es el perfil.

[19:36] Y estos experimentos son interesantes porque significa que en las instituciones deben ser muy precisas. Totalmente. Quitas una palabra y el número se va para abajo. Totalmente. Se hace un despelote total. Bien. Bueno, lo importante es que ya vieron que esta nueva inteligencia artificial dice que deben ir al EDCAM este 16 y 17 de octubre para aprender a construir con inteligencia artificial.

[20:00] Compren sus entradas en ed.team/EDcamp. Álvaro nos dijo, "Óyeme, podemos utilizar esta inteligencia artificial para recomendar cursos y si utilizamos un LLM normal, pues primero los costos van a ser bastante altos y segundo cada recomendación se va a demorar un tiempo bastante largo. Vamos a ver con este MVP que hemos creado a ver cómo funciona este MVP. está conectado con la base de datos de producción y lo que busca es que de acuerdo a la pregunta que el estudiante hace acá, le vamos a

[20:34] recomendar algunos cursos. Vamos a ver cuánto se demora y qué también recomienda los cursos. Entonces, vamos a hacer una pregunta muy sencilla. Quiero aprender front end, no más. Quiero aprender frontend. Vamos a darle clic en recomendar y no quiero que editen esa parte, señores editores. Vamos a dejarlo correr el tiempo que es. A ver cuánto se demora. Click.

[20:59] Miren. Wow. 780 milisegundos tardó el en responder. 312 cursos etiquetados. O sea, porque pasó por todos tan rápido. Y veamos qué nos recomendó. CSC desde cero, por supuesto. Tailwin, manejo del domain JavaScript. Mi primera página web, SBG, HTML, curso. Sí, está muy bien porque yo le dije que quiero aprender Fronen, es porque no sé nada, entonces me va a estar dando las bases.

[21:29] Veamos otro ejemplo. Quiero aprender de bases de datos. Vamos a darle nuevamente clic. Miren, 250 milisegundos. Wow. Que me enseña, diseña bases de datos relacionales con buenas prácticas, My sequel, bases de datos. Todos estos son cursos de Dete cursos reales de Son cursos reales. Ah, vayan a verlos.

[21:52] Vayan a ver que pueden ver las primeras clases gratis. Ahí están. Bases de datos con Postgress, bases de datos SQL con Oracle, Big data con Apache, SQL Server para programadores. Ahí está. y nos da el porcentaje que le dio, un puentaje que le dio a cada uno de ellos de acuerdo a lo que hemos preguntado.

[22:10] Y si yo tuviera acá, si yo le colocara acá un correo de un estudiante real, él iría y diría, "Okay, esta persona ya lo sabe. Si ya lo sabe, le voy a dar menos puntaje." Y se lo va a organizar de esa manera. Vamos a colocar a Álvaro.

[22:25] Hay que decir que quiero aprender. No, no, no lo deduce del correo. Sí, lo puede deducir un poco, pero no es tan eficiente aún. A ver, aquí se está demorando, pero no es la IA. Aquí lo que se demoró es que fue y buscó la información de Álvaro, ¿vale?

[22:42] No es que se haya demorado la IA como tal. Entonces, miren, Álvaro Felipe Chávez, ¿qué nivel tien? Y esto es lo que le está recomendando inglés, mira. [risas] Así y redes. Qué loquísimo. Mira, te está recomendando bastante redes. No sé por qué me puse a ver el curso y creo que lo entendió.

[23:01] Ah, okay. Eso es lo que ha estado mirando. Y miren, eh, si ya lo sabe, él busca qué tanto el estudiante conoce del tema y le va dando un puntaje. Entre más conoce, más para abajo, más lo empuja, porque lo que quiere es mostrarle eh cursos que aún no conoce y debe comenzar. Exactamente.

[23:24] Bueno, amigos, amigas, como acabamos de ver, este es un nuevo tipo de inteligencia artificial. un tipo de inteligencia artificial que va acoplado en tu código, embebido en tu código dentro de la lógica de negocio que tiene tu código. No es una capa a la que le preguntas, no es para escribir código de programación, es realmente para ayudarte en la lógica del negocio y puede convivir con un LLM sin problemas.

[23:50] Sin problemas. Eso es genial. Porque te ayuda a clasificar una respuesta con probabilidades y tú ya decides qué hacer con esa data. muchos sistemas de recomendación, sistemas de filtrado, sistemas de clasificación de mensajes, por ejemplo, de los clientes, pruebas, ¿no? Las pruebas en tuén si esto funciona, no funciona, se rompe, no se rompe y completamente automatizado.

[24:14] Es es impresionante, honestamente. Espero que Alexis esté viniendo más seguido al canal y que no diga que no lo invito porque miren, públicamente lo estoy invitando públicamente. Bueno, si son programadores, vayan a probar la herramienta.

[24:30] Si no son programadores, igual este video les sirve para estar actualizado, porque la inteligencia artificial hay de muchos tipos, ¿no? Antes de irnos, les recuerdo que este 16 y 17 de octubre vamos a estar en Bogotá para el EDECAM 11. Dos días para aprender a crear con inteligencia artificial con toda la comunidad de Team y los expertos, el tío Alexis, Beto y muchos más. Entonces, vayan a ed.team/onedcam para comprar tus entradas. Y recuerda que si eres estudiante colegio, instituto,

[24:57] universidad, tienes una beca para que te actualices durante un año. Ve corriendo a ed.team diagonal becas para solicitarlo. Eso es todo. Muchísimas gracias, Alexis. Y lo aprendiste en ED Team. Oh.
