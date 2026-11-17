# Así usa la IA una ingeniera de SpaceX

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=PXd2KzUhDUc)
- **Canal**: ConquerAI
- **Publicado**: 2026-11-16
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:13

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] [carraspeo] Los mejores ingenieros del mundo están aprendiendo a coordinar agentes de IA en paralelo. El laboratorio de IA chino DeepSeek dice que en su propia experiencia un humano puede gestionar entre tres y cinco agentes en paralelo.

[00:13] Esta mujer gestiona 50. Es ingeniera en SpaceX, la empresa de Elon Musk, y ya sabemos cómo le gusta la optimización a este [música] señor. En esta entrevista explica en 57 minutos cómo lo hace, pero yo te lo voy a resumir en 10 sacando los tres mecanismos más importantes.

[00:34] [suspiro][grito ahogado] Esta mujer trabaja en Grokbot, el sistema de agentes de inteligencia artificial autónomos desarrollado por SpaceX y en Cursor, que supongo que todos lo conoceréis. Y es interesante porque entiende las limitaciones humanas y habla de construir un sistema, un sistema que otorgue al humano confianza.

[01:14] Y esto es lo más importante. Es el objetivo de estos tres mecanismos de los que os voy a hablar. Así que vamos a comprender cómo esta mujer consigue confiar completamente en sus agentes. Mecanismo número uno, feedback loop. El primer mecanismo es muy sencillo y extremadamente útil, enseñar a los agentes a comprobar su propio trabajo, que es muy fácil de decirlo, pero ¿cómo lo hago? Normalmente cuando le pides a un agente que te escriba código pasa algo como esto. La gente empieza a hacer cosas por ahí y después

[01:46] de 5 minutos te dice, listo. Y entonces tú vas a registrarte en la aplicación y te da un error. Fíjate lo que está pasando aquí. Cuello de botella hablando en plata significa que eres el lento del sistema, lo que ralentiza el resto de engranajes.

[02:04] Pues la solución consiste en que ese paso de comprobación lo haga el propio agente en lugar de hacerlo tú. Y esto se puede hacer de dos formas. Primero, mediante pruebas automáticas, ejecutando código que compruebe si las cosas funcionan. Por ejemplo, si le pides que cree un sistema de registro, el propio agente puede ejecutar una prueba que intente registrar a un usuario y compruebe si se ha creado correctamente. Pero los agentes pueden crear código y ejecutarlo, eso ya lo sabemos. Así que vamos con la número

[02:41] dos, interactuando con la aplicación. Y en la entrevista ella cuenta que desarrolló una herramienta llamada Control Glass, que permite a sus agentes abrir cursor y utilizarlo como si fuera una persona normal. Es decir, el agente puede abrir la aplicación, pulsar botones, navegar los menús y comprobar si todo funciona. Pero eso no fue suficiente porque los agentes podían utilizar la aplicación, pero no sabían dónde estaba cada cosa. Así que creó lo que se llama un feature map, una especie

[03:05] de mapa que explica a la gente dónde está cada funcionalidad y cómo acceder a ella. Y ahora cuando alguien reporta un error, el agente puede buscar la funcionalidad, acceder a ella e intentar reproducir el problema por sí mismo sin que un humano tenga que guiarlo constantemente. Y esto es una locura.

[03:23] Reconstruir un bug es uno de los principios fundamentales que permiten solucionarlo. Sencillamente porque si no sabes qué provoca un fallo, es muy difícil encontrar su causa. Y ahora ese proceso se puede automatizar. A esto lo llamamos feedback loop, que básicamente consiste en que el agente realiza una acción, comprueba el resultado y si algo falla, utiliza esa información para corregirse y volver a intentarlo. Un proceso que se repite hasta conseguir el resultado definido. Genial, pues con

[03:50] esta técnica nos vamos a asegurar de una cosa, y es escribir código correcto, que no significa que sea un código bueno. Vale, y entonces, ¿cómo escribo buen código además de código correcto? El buen código es importante porque es el que te permite escalar una aplicación, es el que te permite comprender, controlar y ampliar una aplicación sin que se te salga de las manos. Así que, ¿cómo me aseguro de que el código que escribe la IA es bueno además de correcto?

[04:28] Mecanismo dos, agent evals. Convertir los errores de tus agentes en instrucciones que puedan utilizar. Ese es el segundo mecanismo. Y, ¿cómo hacemos esto? Porque seguro que los más experimentados ya tenéis la respuesta en vuestra cabeza. Skills. Correcto. ¿Y?

[04:45] ¿Nada? Pues hay más. Porque claro, imagina que cada vez que un agente se equivoca creas una nueva skill, después otra y otra y otra. Al final puedes terminar con decenas de instrucciones, algunas contradictorias, otras desactualizadas y pues sin tener muy claro qué es lo que está funcionando realmente. Y aquí es donde entra un concepto fundamental, las evals o evaluaciones de agentes.

[05:10] [música] Porque no basta con decirle a un agente cómo tiene que trabajar, también hay que comprobar que realmente sigue esas instrucciones. [resoplido] Y para hacerlo esta ingeniera utiliza algo bastante curioso. Es que pone a sus propios agentes a examinar a otros agentes. Y funciona de la siguiente forma. Primero, un agente coordinador prepara una especie de examen definiendo qué debería hacer correctamente el agente que estamos evaluando. Lanza varios agentes en paralelo, cada uno intentando resolver

[05:40] una tarea utilizando esa skill. Y cuando terminan otro agente evalúa los resultados, comprueba cuáles han seguido las instrucciones y cuáles no y les asigna una puntuación. Pero aquí viene lo interesante porque si los resultados no son buenos puede modificar la skill y volver a repetir el examen.

[05:58] Y otra vez y otra vez. Así hasta conseguir que esa skill produzca busca mucho más fiables. Así que fijaos lo que está pasando aquí. Estamos construyendo otro bucle, otro flujo que se repite una y otra vez. [música] sin intervención humana, para resolver una tarea, mejorarse a sí mismos.

[06:26] Genial, pues ya no necesitas estar corrigiendo constantemente los mismos errores. [resoplido] Pero hay un pequeño problema. O no, uno bastante gordo en realidad. Es que por muy buenas que sean tus skills, siguen siendo instrucciones y los agentes pueden olvidarlas, interpretarlas mal o simplemente no seguirlas. Tu agente puede alucinar. Así que esta ingeniera plantea algo muy interesante. ¿Y si en lugar de pedirles que respeten determinadas reglas construimos un sistema que directamente

[06:56] les impida saltárselas? Y aquí entra el tercer mecanismo, los Los que podríamos traducir como barreras de seguridad, son reglas que los agentes no pueden saltarse. Entonces, por un lado tenemos las skills, ¿no? Que le dicen a la gente cómo debería de hacer las cosas. Un por otro lado, bloquea directamente que las haga de una determinada manera. Por ejemplo, en una skill puedes decir que bajo ningún concepto se pueden guardar contraseñas sin cifrar y que la gente se la salte y

[07:25] simplificadamente escriba algo así. Y entonces la has cagado a nivel de seguridad. Con un la IA escribe esto y cuando se va a publicar el cambio salta un pedazo de error gigante que bloquea la subida directamente, sin preguntar. Bueno, pues esta ingeniera ha llevado esta idea bastante más lejos. Para que os hagáis una idea, ha literalmente baneado el uso de en React.

[07:54] También ha baneado completamente los comentarios de código porque decía que los agentes convertían sus aclaraciones en explicaciones innecesarias dentro del código. Y no solo eso, sino que además decidió reescribir la primera versión of la aplicación completamente para reestructurarla de una forma no tan habitual.

[08:23] Y es que en lugar de usar una estructura pensada para humanos lo hizo pensada para agentes de IA. Pues bueno, no puede revelar tanta información, pero lo que sí nos cuenta es que cada funcionalidad de la aplicación tiene su propio repositorio donde se encuentra prácticamente todo el código relacionado con ella. Así cuando un agente tiene que modificar, por ejemplo, el sistema de registro sabe exactamente donde tiene que trabajar sin tener que ponerse a buscar entre cientos de archivos. Y

[08:48] además ha establecido reglas automáticas que impiden mezclar partes del código que deberían de estar separadas. Pero lo más interesante es por qué ha decidido hacerlo de esta forma. Y es que se dio cuenta de que los agentes tienen una tendencia bastante curiosa. Siempre intentan encontrar el camino más corto para resolver un problema.

[09:12] Pero claro, muchas veces ese camino es precisamente el que acaba provocando problemas más adelante. Y eso es exactamente lo que intenta conseguir con esta arquitectura, que el camino más corto sea también el correcto. Digamos que mete unos raíles muy marcados a los agentes. Y según dice escribir código en Grok Bot es un por todos esos raíles. Pero Y gracias a todo esto ha llegado a un punto en el que prácticamente no necesita revisar el código que escriben.

[09:50] Hemos pasado de una persona que tenía que supervisar constantemente unos pocos agentes a una ingeniera que puede dejar a decenas de ellos trabajando sin estar pendiente de cada paso. ¿Y qué resultados está consiguiendo con todo esto? Pues resultados locos y absurdos.

[10:25] Sí, sí. Esta mujer integra cambios en su aplicación mientras duerme. No tiene sangre en las venas. Entonces hemos llegado a un punto en el que tenemos agentes que comprueban su propio trabajo sin depender constantemente de un humano, agentes que evalúan y mejoran sus propias instrucciones aprendiendo de los errores que cometen y un sistema de reglas que impide que se salten determinados límites, incluso cuando trabajan de forma autónoma. Así que fijaos en cómo la forma en que ha estructurado todo su

[10:53] trabajo le permite que trabajar con 50 agentes no signifique controlar 50 agentes, sino construir un sistema en el que no necesites controlarlos constantemente.
