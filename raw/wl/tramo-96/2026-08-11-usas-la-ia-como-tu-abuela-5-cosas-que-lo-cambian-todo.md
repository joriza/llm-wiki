# Usas la IA como tu Abuela: 5 Cosas que lo Cambian Todo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=yP_bunmMrsw)
- **Canal**: Alpaca Tech
- **Publicado**: 2026-08-11
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:06

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Usas la IA como tu abuela. Si te abres Claude, le pides un endpoint y esperas a que termine para volver a hablarle, lo que tienes es un chatbot. Créeme, me he tirado más de un año así, pensando que sabía usar la IA, pero ahora sé que no, porque he pasado de esto a esto. Ahora enciendo el ordenador por la mañana y me encuentro pull request que yo no he abierto. En una semana he sacado tres funcionalidades nuevas yo solo y todo por sacar ventaja de ser programador, por dejar de usar la IA como tu abuela.

[00:33] El cambio son solo cinco cosas y las puedes montar esta misma tarde. La primera me enseñó que sí, mis agentes me estaban mintiendo y los tuyos también. Imagina que te sientas una tarde a trabajar tranquilo, con tu café, y le pasas unas 50 cosas que hacer a tu Claude, mientras te pones a ver un vídeo de Alpaca Tech super chill. Al rato Claude te dice que ha terminado. Revisas y resulta que de las 50 cosas que le habías pedido solo ha hecho 35 y no es algo que tengas que imaginar mucho,

[01:06] porque esto está en la documentación de Anthropic. Ahí te listan los tres modos en los que sus agentes fallan y uno de ellos es este. Lo llamaron pereza. ¿Y sabes por qué? Porque todo depende de un prompt. En mi empresa nos hemos dado cuenta de que los megaprompt no funcionan bien. O sea, sí que funcionan, funcionan bastante bien. Ya sabrás que yo he sacado mucha funcionalidad utilizando mi megaprompt, pero la realidad es que rozar la perfección con ellos es imposible, porque un prompt es

[01:33] una caja negra. Son cosas que tú le dices a la gente y que la gente decide cumplir o no. Cuando haces algo con un prompt y te falla, lo único que puedes hacer es añadir cosas o modificar ese prompt y con ello volver a tirar la ruleta de Claude. ¿Te hará caso en esta sesión? ¿No lo hará? Si solo dependemos de ellos, no tenemos ninguna seguridad de que no nos la vuelva a liar. Aunque si quieres seguridad, espera al tercer punto, porque ahí te diré una cosa que le tienes que decir a tus agentes y que

[02:00] lo cambia todo. La cosa es que a base de prompt no hay seguridad de que la IA no te la líe. En su mayoría van bien, pero ya te digo, cuando empiezas a tener algo muy muy grande, arreglar los detalles más finos se vuelve imposible, básicamente porque no sabes qué estás haciendo ni qué es lo que está haciendo él. Por eso tenemos que sacar nuestra ventaja como programadores, tenemos que hacer código. Te propongo que en lugar de tenerlo todo en un megaprompt, pruebes a orquestar todo mediante un

[02:28] flujo programático. Las distintas piezas que necesites las puedes encapsular en forma de skill o en forma de agente, pero el flujo, las comprobaciones, el cuándo, todo eso queda coordinado a nivel de código, con un flujo programático como este. Con él puedes asegurarte de que los pasos al menos son deterministas. Después de A va B y si pasa esto ocurre esta otra cosa, porque es código, lo que nosotros conocemos y podemos determinar. Gracias a la invocación de Claude menos P y a los

[02:56] cubes que tenemos, podemos insertar Claude en nuestros flujos programáticos para hacer uso de toda su potencia de cómputo. Ahora, el editor de código que yo me monté se ve así y todo es un flujo programático con muchas piezas pequeñas que voy iterando y voy mejorando. Cuando algo falla, sé qué pieza es la que ha fallado y la puedo iterar. Al final no es más que acercar los agentes de inteligencia artificial todo lo que podamos a un sistema determinista y para ello hay que aplicar ingeniería. Por

[03:23] esto tu abuela no lo puede hacer ni la persona de marketing. De hecho, la propia guía de Anthropic para Opus 5 ya te habla de esto. Yo ya tengo mi flujo de trabajo montado de esta manera y no solo mi flujo, porque en mi empresa hemos conseguido montar sistemas que nos arreglen los bugs y hagan de centinelas de nuestra plataforma por nosotros de forma automática. Aunque para hacerlos tuve que recordar una palabra que se me había olvidado, una palabra que no he visto comentar a nadie que te hable de

[03:49] IA. Con todo esto de la IA han aparecido muchas palabras que están en bocas de todos, guardarraíles, agentes y un montón de cosas más, pero esas palabras no me solventaron nada, porque hubo un tiempo en el que me pasé días enteros buscando cómo podía automatizar cosas con Claude y no quería descargarme la app de Claude Cowork, sino que quería algo que yo pudiese pautar y se ejecutase en mi ordenador siempre a la misma hora. Y entonces recordé una palabra que me habían enseñado en la

[04:20] universidad cuando estudiaba sistemas operativos. Una palabra que todo programador sabe, pero que con esto de la IA se nos ha olvidado porque solo sabemos la palabra guardarraíl, los cron jobs. Si eres un programador new age, posiblemente no los hayas usado nunca.

[04:34] Un cron es una tarea que programamos para que se ejecute sola. Se queda de fondo en tu máquina mirando el reloj y cuando llega la hora que le has puesto lanza lo que le hayas dicho que lance. Es algo muy común en el mundo de los servidores. Con esto se han montado toda la vida scripts de limpieza, recordatorios, copias de seguridad y un montón de cosas más. Pero yo ni siquiera me acordaba de que existía. Igual que con el tip anterior, mucho quería lanzar agentes y gastar tokens, pero no me

[05:00] acordaba de que soy programador. Y si a la ejecución automatizada de tareas en el PC le sumamos que podemos lanzar Claude en modo headless con la flag menos P, que no te preocupes porque esto no va a ser un problema para tu suscripción. Yo lo vengo utilizando ya durante unas semanas y no he pagado por uso en ningún momento. Simplemente agota los límites de tu suscripción como si lo utilizases en la terminal o en el chat web. Si unimos a más cosas, ya podemos montar flujos automáticos en nuestro PC.

[05:26] Flujos que, como ya hemos visto, lo hacemos de forma programática para obtener lo mejor de los dos mundos. Eso sí, y te dejo otro regalo por si no lo conocías. Trabaja con worktrees, porque si lanzas tres agentes sobre la misma carpeta se van a acabar pisando. Uno toca un fichero mientras que el otro lo está leyendo y al final acabas con basura que no compila ni sirve para nada. Pero con los worktrees te quitas esos problemas. Incluso lo recomiendan en la propia documentación de Claude.

[05:50] Desde que hicimos eso, en mi empresa tenemos una resolución automática de bugs. Y junto a una compañera, he montado un centinela que se despierta todos los días a las 9 de la mañana, revisa el estado y los logs de las aplicaciones y arregla si se ha roto algo por los despliegues del día anterior. Así es como exprimimos a la IA de verdad. Y esta es la nueva forma de trabajar que estamos experimentando en la empresa. Yo enciendo el PC y lo que tengo son nuevas pull request que nadie

[06:15] ha hecho. Todo con al final un Chrome, un flujo y unos cuantos ficheros de texto. Aquí no hay suscripciones de agentes gastando miles de dólares. Hay algo que tú puedes hacer porque eres programador y tu abuela no puede. Pero para poder hacer esto hay que tener algo en cuenta. Eso que ya te adelanté en el primer punto. Permíteme que te cuente.

[06:37] Mi día ha cambiado mucho. Ahora llego a trabajar con la misión de probar y revisar lo que mi Claude ha estado haciendo cuando yo no estaba. Pero para esto hay que cambiar el chip. Porque yo creía que tenía montado algo autónomo con mi mega prompt, pero era mentira.

[06:49] Porque eso que tenía necesitaba mi aprobado para el plan, mi aprobado para la implementación, mi aprobado para publicar la MR. El flujo entero en determinados puntos se quedaba quieto esperándome. Si yo entraba a una reunión de una hora y a los 10 minutos resulta que Claude quería algo de mí, iba a perder 50 minutos que no estaba trabajando mi agente. Porque esa IA solo trabajaba cuando yo estaba delante.

[07:10] Ahora eso lo llamo autonomía parcial, que es una autonomía de mentira. Pero yo no quiero eso. Tú no quieres eso. Queremos la autonomía total. Que Claude pueda estar trabajando 4 horas sin detenerse. Y para eso hay una frase que nos toca grabarnos a fuego. Un error se arregla una sola vez. Si quieres que esto funcione, hay que quitar de la cabeza la mentalidad de arreglar las cosas. Porque si no te vas a dedicar a poner parches. A llegar por la mañana, ver qué te han traído los flujos,

[07:36] corregir a mano lo que estaba mal y seguir. Y de nuevo, tú no quieres eso. Tú lo que quieres es conseguir que cada flujo sea mejor hoy que ayer. Así que cuando algo falle, no entres a corregir ese ticket sin más. Vete a la pieza que tomó la decisión y arréglala, sea código, sea una skill o sea lo que sea.

[07:52] Con los flujos programáticos es sencillo, porque lo tienes todo en piezas pequeñas y sabes exactamente qué pieza es la que ha fallado. No es que hagas magia de ningún tipo, sino que empiezas a iterar y mejorar un sistema.

[08:04] Y ese trabajo, el de abrir la pieza que falló, iterarla y mejorarla, es el de un programador. Mi abuela solo le puede pedir cosas a un chat, pero no puede dividir un sistema en piezas pequeñas e ir iterándolas con criterio. Al final hay que tratarlo como tratamos a un producto. Medimos, vemos dónde se rompe y añadimos una versión mejor la semana siguiente. De esta manera vamos iterando hasta llegar a rozar la perfección. Eso sí, si quieres que esto perdure, deberás tener en cuenta el último punto, porque

[08:30] si no en un mes hay que tirarlo todo a la basura. Una primera pieza que te diría que debes añadir siempre a tus flujos es la observabilidad. Porque el sistema que tú has montado lo tienes que mejorar e iterar tú. Tú eres la persona que sabe cómo quieres que funcione y qué esperas de él. Así que vas a tener que poner tu criterio. Pero si le dices a la gente que busque cosas que mejorar, siempre las va a encontrar. Y tú no quieres eso. Tú quieres mejorarlas con tu criterio. Y para ello vas a necesitar

[08:55] datos y saber cómo ha ido funcionando todo. Porque cuando te pongas a montar este tipo de cosas, posiblemente la cagues. Te equivocarás mucho como me equivoqué yo. Y vas a perder mucho tiempo y límites de la suscripción. Así que déjame ahorrarte todo eso.

[09:14] Cuando empecé a montar cosas, pensaba que cuanto más, mejor. Más subagentes, más esfuerzo de razonamiento, todo más. Y me monté un flujo entero de subagentes convencido de que iba a ser la Pero ¿sabes cuál fue la realidad? No mejoró absolutamente nada. O sea, me monté un deep reviewer brutal con subagentes según aspectos específicos del código, otros subagentes adversariales, escépticos, un montón de cosas. que solo sirvieron para gastarme un 5% de la suscripción semanal cada vez

[09:42] que lo ejecutaba, porque la calidad al final no difería mucho de cuando le decía a Claude simplemente revisa este código según los patrones del proyecto. Aunque mi lógica no sonaba mal, o sea, si puedo tener más manos, más inteligentes haciendo algo, ¿por qué no tenerlo? Pues porque no hace falta.

[09:59] Resulta que con la IA más no significa mejor. Puedes acabar teniendo algo más lento, más caro y que falle más que antes. Y no lo digo yo. De nuevo, la propia Anthropic en su documentación dice que en la mayoría de cargas de trabajo el esfuerzo max del modelo te va a costar bastante más y te va a mejorar bastante poco. Para tareas sencillas está demostrado que el modelo sobrepiensa y responde peor que si le pusieses un esfuerzo más bajo. Y tiene sentido. Es como si pones a un premio

[10:25] Nobel de física a un problema de regla de tres. No te lo resolverá y ya. Se pondrá a pensar que por algo le has llamado a él. Buscará dónde está la trampa y te devolverá tres folios sobre pregunta está mal planteada. Con los subagentes pasa igual. Un agente bien montado puede ganarle a 20 agentes sueltos. La ley de Brooke de toda la vida, vamos. Esta es una ley clásica del mundo de la programación. Más gente en un proyecto no significa ir más rápido, porque a cada incorporación hay que

[10:53] ponerlas al día, hablar entre ellas, etcétera, etcétera. Te aconsejo que de nuevo midas todo en el proyecto y vayas haciendo AB testing. De este modo descubrirás qué merece la pena, dónde hay que añadir, dónde hay que quitar, etcétera, etcétera. Aunque yo te digo esto ahora, pero igual en una semana no te vale, porque yo lo tenía todo superbonito y al final me acabé pasando una semana entera cambiando la escritura de mis prompts y skills por culpa de Anthropic.

[11:24] El otro día salió Opus 5 y ese día también publicaron su guía. Una guía en la que te dicen que borres lo que ya tenías. En varios sitios de ese documento te dicen que borres, que borres las instrucciones de verificación, que borres los vuelve a comprobar tu respuesta y que borres un montón de cosas, porque dice que esto ya no aporta nada, sino que se suma a lo que el modelo hace. Así que vas a quemar tokens para no mejorar el resultado. La conclusión es que con cada actualización

[11:50] que le hacen a los modelos se cambia cómo hay que hablarles y cómo se debe trabajar con ellos. Por eso yo tengo la costumbre de sentarme al menos una vez al mes a revisar las actualizaciones y ver qué es lo que tengo montado para ver qué añadir o qué deja de hacer falta. Y dentro de lo que tengo elimino, retoco, etcétera, etcétera. Todo gracias a que monté la pieza de la que te hablé antes, la observabilidad. Acostúmbrate a que cada vez que tu flujo corra deje escrito todo lo que ha hecho. En mi caso genero

[12:18] un punto JSON por cada corrida, que me recoge el modelo utilizado, las herramientas que tocó, cuánto ha tardado, cuánto ha costado y un montón de cosas más. Una vez al mes me siento y reviso los JSON. Muchas veces, si no vas actualizando cómo haces las cosas, te vas a dar cuenta de que con un modelo mejor todo va peor. Además, deberías hacer que tu sistema tenga memoria. Un fichero de memoria donde el propio flujo pueda aprender lo que va descubriendo e iterando. Yo esto lo he encontrado

[12:43] superútil con los agentes de implementación, por ejemplo, y he acabado depurando un sistema de lecciones que voy fijando en cada ejecución y que hago que se lo lea la corrida antes de empezar a implementar. Pero no escribas todo, porque esto también acaba siendo ingeniería. Si le dejas escribir todo, en dos semanas vas a tener un fichero de 1.000 líneas lleno de basura que solo te comerá contexto cada vez que el modelo empiece. De nuevo, esto es algo que acaba haciendo un programador, no una abuela. Todo esto

[13:08] lo puedes hacer tú, porque no es que sean flipadas mías. Igual que las cosas que nosotros hicimos en mi empresa, tú te puedes hacer las tuyas y por ahí fuera hay gente que está haciendo auténticas barbaridades. Vamos, que no sabes si lo que cuentan es real o es IA.

[13:23] Esta frase que acabo de decir es bastante graciosa, porque claro, tú piensas que es por los vídeos generados por IA, pero es que estamos hablando de la IA en un vídeo donde hablamos de aplicar IA, entonces, tu mente cortocircuita y vamos al siguiente punto.

[13:43] Sí, hay empresas que ya están trabajando de forma mucho más bestia que la mía. Todo lo que yo te he contado lo hacemos con suscripciones Max de Claude, pero hay gente que utiliza agentes en VPS y cosas así. Pero antes quiero hacerte una puntualización, porque todo esto va llegando poco a poco y no quiero que sea un agobio para ti. Y cuando te digo poco a poco, me refiero a muy poco a poco. Se estima que menos de dos de cada 10 personas a nivel mundial en edad de trabajar utilizan actualmente la IA y

[14:11] todas estas barbaridades de las que te hablo o te enseño se suelen ver sobre todo en empresas de Silicon Valley. Posiblemente te parezca chulo y quieras montártelo para tus cosas, porque a nosotros al final nos gusta mucho la tecnología, pero la realidad es que de todos los amigos que yo conozco y que tengo trabajando, la única empresa a la que se hacen cosas similares es en la mía. Pero si buscas en internet encuentras ejemplos. En Block metieron a agentes a sus 12,000 empleados en 8

[14:35] semanas y dicen que 6 de cada 10 los usan siempre. No solamente en ingeniería, también en ventas, diseño, producto. Desde que lo hicieron parece que sacaron un 40% más de código a producción. O en Interworks que metieron 6 agentes corriendo a través de Cron Jobs y el resultado es que resuelven un 50% más de tickets de soporte. En mi empresa no estamos tan lejos. De forma 100% autónoma, tan solo tenemos lo de los logs y lo de los bugs. La implementación de features es cierto que

[15:02] todavía pasa por un diseño técnico humano antes y un QA humano después, pero somos 6 en el equipo y la semana pasada en 3 días de sprint ya habíamos sacado cinco funcionalidades nuevas a producción. Ahora, cuando le pases este vídeo a tu colega, porque se lo vas a pasar y le vas a dar muchísimo amor al vídeo, te va a decir que todo esto es muy bonito, pero que en un mes ha caducado. Y es verdad, Pero lo que caduca es la forma específica de montar las cosas, no el conocimiento que

[15:27] necesitas para montarlo, ni la ingeniería que tienes que aplicar para ello. Y eso es algo que solo puedes hacer tú, porque eres programador, pero no tu abuela. Así que saca ventaja de ello y empieza a usarla ya como Dios manda. Aunque esto puede sonarte a locura y quizás pienses que con este nuevo potencial en mi empresa seamos demasiado. Y yo te digo que tienes razón. Literalmente, el otro día eso lo dijo mi CTO en una reunión. Nos dijo que sobramos. Si quieres saber lo que pasó y

[15:53] si me van a despedir o no, ya te lo conté en el vídeo anterior que te estará apareciendo por pantalla. Échale un ojito porque te va a encantar. Sin más, no te quito más tiempo. Gracias por estar en otro vídeo más aquí conmigo. Te veo la semana que viene.
