# Estoy harto de programar con IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=l0wvwafjN2k)
- **Canal**: Helmcode
- **Publicado**: 2026-11-21
- **Recopilado**: 2026-11-22
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:45

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:08] Estos vídeos suman millones de visitas y miles de comentarios de programadores diciendo lo mismo. [música] Yo, vamos, lo siento constantemente, esa presión por producir más y la necesidad de estar continuamente cambiando de contexto. [música] Pero, ¿por qué una tecnología que debería de estar liberándonos de trabajo nos está dando cada vez más?

[00:40] Llevar al ritmo es máximo siempre todo el rato. Eso es lo que está matando a un montón de equipos de desarrollo. Resulta que la forma de trabajar está cambiando y, mientras algunos equipos se están destruyendo completamente, otros están revolucionando su trabajo.

[01:01] [música] La diferencia está en cómo afrontan los cinco problemas que vamos a analizar en este vídeo. Para entenderlo contaremos con Alex Vidal, ingeniero y psicólogo de formación que lleva meses ayudando a equipos de desarrollo a adaptarse a esta nueva forma de trabajar.

[01:17] Un año, dos años, veremos que hay empresas que quiebran, literalmente. Vamos a empezar por el primero de los problemas que prácticamente todos los equipos de desarrollo se están encontrando ahora mismo. El primer problema es que estamos empezando a producir más código del que somos capaces de entender. De hecho, cuando tuvimos a Alex por la comunidad nos lanzó una encuesta con la siguiente pregunta.

[01:44] La pregunta es, del último que mergeaste no hace falta que sea el último merge, que puede ser la última semana, ¿qué porcentaje entenderías más o menos? A lo que la comunidad respondió con un 55% lo cual es mucho más de lo habitual, teniendo en cuenta que muy poco conocen ya contenido de las bibliotecas que descargamos. Pues ahora con la IA es mucho peor. Alex nos contaba que él apenas se entiende entre un 15 y un 20 % del código que genera, aunque tiene un enfoque diferente de ver esto, que ahora

[02:13] os explicaré. El problema es que cuando escribíamos código no solo estábamos tecleando, sino que estábamos aprendiendo cómo funcionaba nuestro sistema. Entendíamos las decisiones que habíamos tomado y cuando algo fallaba, pues sabíamos más o menos dónde buscar.

[02:27] Básicamente [carraspeo] estábamos conectando neuronas en el propio proceso de construir, pero ahora ese proceso no es nuestro. Nosotros solo nos encargamos de tomar la decisión inicial. Bueno, algunos, porque otros ni eso.

[02:41] Oye, Claude, construye el futuro PayPal. No cometas errores, por favor, y date prisa, que tiene que estar para mañana. Y claro, el problema llega cuando esa aplicación empieza a crecer, aparecen los primeros errores y tenemos que modificar partes de un sistema que realmente nunca hemos llegado a comprender. Y esto es a lo que Alex llama La deuda cognitiva.

[03:02] Igual que acumulamos deuda técnica cuando dejamos problemas pendientes en nuestro código, acumulamos deuda cognitiva cuando construimos cosas que no terminamos de entender. Pero en este momento Alex planteó algo que me dejó muy loco. ¿Realmente necesitamos entender todo el código que generamos?

[03:19] Porque no todo el código es igual de importante ni requiere el mismo nivel de comprensión. Imagina que estás desarrollando una aplicación para gestionar las reservas de un hotel. Tienes todo el código que permite a los usuarios registrarse, iniciar sesión o realizar pagos, pero luego tienes la parte fundamental de tu producto, cómo se gestionan las habitaciones, las reservas y la disponibilidad. Y aquí lo que Alex plantea es que no tiene sentido dedicar el mismo esfuerzo a comprender

[03:45] cada una de estas partes, porque no todo tiene la misma importancia para el producto que estás construyendo. Lo cual es fácil de decir, pero en realidad no es tan fácil distinguir entre qué necesitamos comprender y qué podemos delegar tranquilamente. Y claro, ahora con la IA podemos generar miles de líneas de código en cuestión de minutos.

[04:04] Y claro, cuando eso sucede y y un agente te genera un PR de 2000 líneas, ¿cómo revisas ese código sin volverte loco? Vale, pues eh lo que os decía, me le pido a la IA que me cree un explainer, o sea, una web. Entonces, yo reviso el código con ayuda de la IA.

[04:20] No leyéndome las líneas de código, aunque puedo ir a ese dato, sino que lo voy a trabajar siempre en superficies mucho más visuales, más personalizadas para mí. Y esto, aunque parezca que no, hm es un cambio de mentalidad bastante importante, porque hasta ahora estábamos acostumbrados a revisar el código leyendo las líneas que habíamos modificado. Pero ahora estamos empezando a necesitar que la propia IA nos ayude a comprender lo que ha construido. Y es normal, hay que usarla para eso, no pasa

[04:43] nada. De todas formas, aunque lo hagamos y esto pueda solucionar parte del problema, nos lleva directamente al segundo de estos problemas. ¿Qué pasa cuando tenemos tantos agentes trabajando que ya no somos capaces de supervisarlos a todos? Tenemos cinco agentes trabajando al mismo tiempo. Uno está resolviendo un bug, otro está implementando una funcionalidad, otro modificando la base de datos y los demás trabajando en otras partes de tu aplicación. Todo fantástico hasta que empiezan a terminar y todos se dirigen

[05:15] hacia el mismo punto. Termina el primero, requiere una toma de decisión para la funcionalidad X. Termina el segundo, requiere revisión del bug Y. Termina el tercero, pide un cambio peligroso en la base de datos que conecta cinco entidades distintas. Y aquí el punto central peta. Y ese punto central somos nosotros. Toma de decisiones complejas, contextos totalmente distintos y necesidades diferentes.

[05:40] O sea, ¿no? O sea, parece que ahora como orquestamos agentes y ellos hacen el trabajo, lo que estamos haciendo es sentarnos en una silla y no hacer nada. Todo lo contrario, es un trabajo bastante exigente intelectualmente, ¿no?

[05:51] Hemos multiplicado nuestra capacidad de producir código, pero nuestra capacidad de atención sigue siendo exactamente la misma. La pregunta sería, ¿qué principios debemos seguir para optimizar el desarrollo individual con agentes?

[06:04] Vale, eso es como eh vale, como ser muy consciente de de tu propia capacidad mental. ejemplo, yo he practicado mucho el decir, vale, me estoy estoy cerca de quemarme, ¿no? No puedo tener siete gentes, puedo tener 70 si quisiera, ¿no? Pero no debo hacerlo. Entonces, el Sin embargo, nuestros jefazos, y esta parte también va para vosotros, no paran de intentar apretar a los humanos, pero resulta que se están equivocando. Están esforzándose en mejorar una única parte de un sistema mucho más complejo.

[06:39] Antes de escribir código necesitamos decidir qué vamos a construir. Después tenemos que comprobar que funciona, llevarlo a producción y conseguir que nuestros usuarios realmente lo utilicen. Cuando aceleramos una parte del proceso, el cuello de botella simplemente se desplaza a otra.

[06:54] Bueno, si tú aceleras una parte de la fábrica, lo que ocurre es que generas un cuello de botella más adelante. Y, ¿cómo aceleramos estas otras secciones? Pues como dice Alex, ya no sé lo que hago porque lo ha hecho un agente, no lo he hecho yo. Entonces, vamos a que a resolver fuego con fuego, ¿no?

[07:09] Si la IA está generando demasiado código para que nuestro equipo de QA pueda revisarlo, utilizamos más agentes de IA para escribir test, ejecutar pruebas y detectar errores automáticamente. Conectar agentes a Figma para automatizar el paso de diseño a código, señalar directamente en la aplicación lo que falla en lugar de tener que redactar un informe y añadir agentes a nuestro pipeline de CI/CD para ejecutar pruebas y detectar errores automáticamente.

[07:34] Vamos, agentes por todos lados. Genial, pues ya tenemos todas las secciones optimizadas con IA, ¿no? Aunque consigamos automatizar también los test y el QA, el cuello de botella puede acabar desplazándose hasta nuestros propios usuarios.

[07:52] Los propios clientes se están convirtiendo en un cuello de botella. Y, francamente, mientras digo esta frase todo empieza a olerme bastante raro. Y aquí Alex dijo algo que me encantó. Imagínate que tienes un producto, tienes 100 usuarios, tú antes no podrías haber entrevistado a 100 usuarios, pero ahora sí puedes entrevistar a 10 usuarios. Si tú generas 10 veces más código, te tendrías que estar preocupando de cómo recojo 10 veces más feedback del usuario.

[08:14] Y es que Anthropic lanzó hace poco una entrevista a 81.000 personas con un agente especializado de Claude. Antes entrevistar a 81.000 personas personalmente era impensable. Ahora no. Y todo esto está muy bien. Hemos visto cómo la IA puede transformar prácticamente todas las etapas del desarrollo de software, pero ¿qué pasa con los equipos que tienen que coordinar todo eso?

[08:40] Porque claro, hasta ahora los equipos de desarrollo seguían una regla bastante conocida, la regla de las dos pizzas, popularizada por Jeff Bezos. Una regla que dice que ningún equipo de desarrollo debe ser tan grande que no pueda alimentarse con dos pizzas familiares.

[08:55] Y os voy a explicar por qué. Tú imagínate un equipo de seis programadores. Cada uno puede tener interacciones con los otros cinco miembros del equipo, pero ¿qué ocurre cuando cada uno empieza a gestionar otros cinco agentes de IA? De repente, cada programador pasa de tener cinco posibles interlocutores a tener 10.

[09:13] Hemos duplicado las relaciones que tiene que gestionar una sola persona. Y eso sin tener en cuenta que los agentes pues están continuamente solicitando nuestra atención y cada una de esas interacciones nos quita el foco de lo que sea que estemos haciendo.

[09:28] Por eso nos estamos encontrando cada vez más programadores que llegan al burnout. El burnout de coordinación ocurre básicamente porque si yo antes podía trabajar en un equipo de 10, supongamos, por decir un tamaño, si ahora me metes agentes, como ya hemos visto, voy a tener más de un agente en paralelo. Entonces ahora tengo que estar con 10 personas y con cinco agentes.

[09:49] Y no es posible porque antes estaba con 10 personas porque era mi máximo. Entonces si mi máximo son 10 personas, no puede ser 10 personas y cinco agentes. Tiene que ser menos personas y agentes. El tamaño del equipo óptimo se está reduciendo y lo estoy viendo prácticamente en todos los sitios.

[10:04] Para quienes gestionan esos equipos de desarrollo, ¿cómo deberían organizar sus equipos para aprovechar al máximo los agentes de IA y no pasarse de rosca. Lo lo más básico que diría es, si solo tienes que hacer una cosa, solo puedes hacer una, es divide los equipos, ¿no? Si quieres que la transformación con IA no reviente el equipo, no reviente la empresa, tienes que asumir o sea, tienes que asumir que hay un hit de performance.

[10:31] Y esta idea me parece superclave. Para adaptarnos muy probablemente vamos a tener un periodo de descenso de la productividad y no pasa nada. Hay que asumirlo porque el beneficio puede ser mucho mayor, pero también me voy a quedar con otra de las cosas que ha mencionado.

[10:47] No solo tenemos que cambiar el tamaño de nuestros equipos, sino también las responsabilidades de las personas que trabajan en ellos. Y lo segundo que diría es, los roles tienen que empezar a ser más cross. Si la inteligencia artificial es capaz de hacer cada vez más cosas de las que hacíamos los programadores, entonces, ¿cuál es realmente nuestro trabajo? Pero antes de contaros lo que es probablemente la parte más importante del vídeo, quiero contaros que si os está interesando esta charla, Alex se

[11:16] dedica, entre otras cosas, a ayudar a empresas a optimizar a sus equipos de desarrollo. Así que si queréis contactar con él, encontraréis su LinkedIn en la descripción. Y si queréis ir a una de sus charlas, celebramos una el 25 de noviembre, la semana que viene, en Barcelona, donde podréis descubrir las técnicas concretas que utiliza para resolver estos problemas y de las que, bueno, no os puedo hacer mucho spoiler, ¿vale? Así que nada, os dejo abajo el el enlace para para ir a esta charla. Y por

[11:45] último, si queréis asistir a charlas como esta de expertos en distintas ramas de la inteligencia artificial, todo esto ocurre en la comunidad de Nan, donde además tendréis acceso a modelos como DeepSeek, GLM, Kimi, Qwen y muchos otros.

[11:59] Así que de nuevo, os dejo un enlace en la descripción. Y ahora sí, seguimos con el vídeo. Muchas veces los programadores estamos pasando por una crisis de identidad, ¿no? Yo antes era programador porque programaba tirorines de código, ¿no?

[12:11] Como el que resuelve puzles. Para muchos de nosotros, programar no es simplemente nuestro trabajo, es algo que nos gusta hacer. Nos encanta enfrentarnos a un problema, pasarnos horas intentando resolverlo y sentir esa satisfacción cuando, después de mucho esfuerzo, conseguimos [música] que funcione.

[12:27] Pero ahora muchas veces todo ese proceso lo hace un agente de IA mientras nosotros nos dedicamos a supervisarlo. [música] Y claro, si cada vez escribimos menos código, si cada vez delegamos más decisiones y si los agentes son capaces de hacer cosas para las que nosotros hemos necesitado años de experiencia, ¿qué es lo que nos hace realmente valiosos como ingenieros de software?

[12:49] ¿Qué debería hacer hoy los profesionales técnicos para seguir siendo valiosos y competentes en la era de la programación agéntica? Sí. Pero claramente os tenéis que meter en producto, diseño y negocio. Pero la relevancia y la defensibilidad, si lo queréis pensar así, va a ser saber resolver el problema de ingeniería completo. Entonces, consejo superfuerte es hm entrenar vuestra sensibilidad de producto, entrenar vuestra sensibilidad de negocio, empezar a hablar con usuarios.

[13:17] Y creo que aquí está la clave de todo, porque durante mucho tiempo hemos confundido ser buenos programadores con ser buenos escribiendo código, pero escribir código es solamente una de las muchas cosas que necesitamos hacer para construir un buen producto. Y ahora que la IA se está encargando de una parte cada vez mayor de ese trabajo, quizá ha llegado el momento de centrarnos más en todo lo demás.

[13:40] Este es el nuevo rol de la ingeniería de software, siempre [música] lo ha sido, realmente.
