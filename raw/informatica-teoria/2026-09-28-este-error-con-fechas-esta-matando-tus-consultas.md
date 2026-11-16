# 💀 Este ERROR con FECHAS está matando tus consultas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=LoCT067AuLc)
- **Canal**: hdeleon.net
- **Publicado**: 2026-09-28
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:24

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Qué tal? Mi nombre es Héctor de León. ¿Recuerdas a los programadores que se grababan todo un día como programador haciendo de todo menos programar? Me decepciona bastante que hoy en día teniendo sus agentes 24/7 corriendo todo el día, no haya más de sus videos. De hecho, hasta me resulta decepcionante.

[00:16] En este video no vamos a hablar de IA, no vamos a hablar de todo ese tipo de noticias, porque creo que ya estamos llegando a un punto donde empalaga este tipo de cosas. Estamos a punto de un diabetes hecho por IA. Yo entiendo que muchos tienen filia por la IA, la IAfilia, de ver solamente contenido de IA. Pero en este video vamos a ver una situación realista que te puede pasar a ti y te va a pasar a ti cuando tu base de datos comienza a crecer bastante y tienes fechas. Vamos a ver un video de

[00:43] base de datos, por fin algo fuera de la inteligencia artificial. Así que deja un pulgar arriba, te aseguro que vas a aprender algo muy importante que no te enseñan ni en la escuela ni en YouTube. Vamos para allá. Por ahí se dice que saber de base de datos es muy fácil. Pero realmente te das cuenta que no sabes una hasta que ya tu base de datos tiene millones de registros. Te das cuenta que tu base de datos tiene muchísimos problemas y la mayoría de los problemas en el back-end

[01:16] van a recurrir a ser problemas de base de datos, tanto de diseño y también por la gran carga de información que tiene y las consultas que estás haciendo tú creyendo que eres un experto en base de datos. Pero uno empieza a entender que no sabe nada de base de datos hasta que llega a este punto. Y lo siguiente te va a pasar sobre todo cuando tengas tablas que tengan fechas. De hecho, es muy común que tengas tablas donde tengan fechas, la fecha de creación del registro, por ejemplo. Y aquí puede

[01:44] pasar el siguiente problema, sobre todo que esta fecha la vas a utilizar para búsquedas. Y te vas a dar cuenta que conforme crecen las tablas, estas búsquedas van a ser mucho más lentas. Y vamos a ver por qué, pero primero vamos a ver el problema.

[01:57] Es muy común que el dato que se llama fecha de creación, created date, lo tengas en la mayoría de tus tablas para simplemente tener un log de cuándo se creó el registro. Y es también muy común que este dato lo utilices para tus consultas, es decir, ah, quiero las ventas que se hicieron de esta fecha a tal fecha, o quiero eh tal cosa que se hizo tal fecha a tal fecha. Es muy común y casi estoy seguro que ahorita estás pensando en muchas consultas que tienes así.

[02:23] Y no es que esté mal. El problema radica en lo siguiente. Aquí tenemos una tabla, la cual se llama data, la cual tengo más de 5 millones de registros y esta tabla tiene tres campos, un primary key, tiene un campo sum que simplemente es información random, aleatoria, y un campo created date del tipo datetime.

[02:39] Esta tabla ya tiene muchos ahí registros que yo metí simplemente para hacer la prueba. Tiene más de 5 millones de registros con elementos ahí aleatorios, fechas aleatorias, etcétera. Regularmente en una base de datos, la fecha de creación debería ser secuencial, o sea, estás creando conforme el tiempo pasa. Esto es un punto a favor para lo que vamos a hacer.

[02:59] Pero bueno, regularmente tú tienes una consulta como la siguiente. Tenemos la selección de la tabla y tenemos un rango de fechas, por ejemplo, aquí estoy yendo por el día 1º de junio del 2025 y al fin del día de ese mismo día, ¿no? Esto es muy común que lo hagamos, es casi como tarea de del día a día. Bien, esto yo lo ejecuto y regularmente vamos a ver que cuando ya la tabla tiene más de millones de registros, va a comenzar a tener un rendimiento del cual ya es se conforma de algunos segundos. Ha durado 3

[03:28] segundos en hacer la consulta. Vuelvo a ejecutar y va a durar nuevamente 3 segundos o quizás más. Vemos que dura 3 segundos, poquito más. Aquí abajo a la derecha está el tiempo. Y bueno, esto, 3 segundos, puede ser la el diferenciador, sobre todo cuando ya comienza a tener más usuarios y empiezan a hacer esta misma consulta. Y ojo, solamente fui por un día.

[03:49] Y aquí el problema es que a veces esto no lo hasta que ya tu sistema empieza a colapsar, que comienza a ser más lento y más lento y ahí nunca pensamos en la fecha. ¿Cómo podemos resolver esto? Bueno, lo que puedes resolver cuando es una fecha inmutable, porque cuando la fecha es simplemente la creas y no la vas a modificar y sobre todo es secuencial, es utilizar el índice. Los índices en fecha no son peligrosos cuando tu fecha es secuencial y cuando tu fecha no va a tener alta concurrencia de inserción.

[04:23] Cuando tu fecha va a tener inserción masiva, podemos optar por otro tipo de técnica en conjunto con el índice, más al rato te explico. Pero bueno, ahora lo que vamos a hacer es crear un índice en la fecha. Para eso, para esto he creado un índice, el cual es del tipo normal y B-tree.

[04:39] B-tree nos va mejor en este tipo al lugar de hash, porque hash no sirve para menor que, mayor que. B-tree sí lleva un orden, lleva una secuencia, por lo cual nos sirve para utilizar el between, menor que, mayor que. Bueno, esto lo guardo y vamos a ver cómo mejora la consulta, está creando aquí toda esa parte de índice. Ojo, cuando utilizamos índices, va a haber una desventaja, que es cuando hacemos las inserciones y modificaciones, esto se tiene que recalibrar.

[05:04] Pero cuando son las fechas, como son secuenciales, esta recalibración es menor, ya que siempre va a ser mayor, mayor, mayor el dato que viene. Es por eso que nos va bien cuando las fechas son inmutables y secuenciales utilizar índices, sobre todo cuando vamos a hacer búsquedas sobre ello. Si no vas a hacer búsqueda, pues tampoco te pongas un índice. Bien, entonces aquí ya nuevamente voy a hacer la consulta, fíjate que tenemos 4,000, eh tenemos 3,000 segundos, 13 30 segundos, tenemos

[05:27] 3 segundos, la consulta normalita de un día. Voy a ejecutar nuevamente y vamos a ver que ahora ha tardado 1 segundo. Si lo ejecuto de nuevo va a ser más rápido. Vamos a ver que ahora ha tardado 1 segundo poquito más, pero ya reducimos a menor, teníamos 3 segundos, reducimos a 1 segundo la misma consulta, gracias al índice.

[05:47] Esto puede ser un gran diferenciador al momento que tu sistema comienza a crecer más. Ahora tengo 5 millones de registros, pero si el sistema tuviera 10, tuviera 15, esto sería más significativo. Ahora, vamos a ver algo importante. El asesino de los índices.

[06:04] Así tal cual, el asesino de los índices. Mucho sistema tiene la siguiente eh lo siguiente tipo de queries. En lugar de hacer un query por rangos, es decir, con between and eh entre estas dos fechas, es muy común que lo hagas de esta manera.

[06:20] Que pongas la función day, la función month y la función y la función year. Esto es muy común y casi de te estás pensando, "Oh, yo sí lo hago así." Este es el asesino de índices. ¿Recuerdas que duramos casi un segundo o duramos un segundito, poquito más en la consulta?

[06:34] Fíjate cuando lo hago de esta manera, a pesar de tener índices en created at, fíjate lo que va a pasar. Yo corro esto y ya no tarda un segundo. Ya está tardando más, de hecho, más de lo que tardaría directamente sin índices. Está tardando 3 segundos 700. Vamos a ejecutarlo de nuevo. ¿Y esto por qué pasa?

[06:52] Cuando nosotros estamos utilizando índices, los cuales están dentro de una función, el índice se ignora. Es por eso que debes tener cuidado utilizar este tipo de funciones day, month, year para cuando quieres que algo sea rápido. Es mejor utilizar la otra alternativa, el between. El between es más rápido.

[07:09] Fíjate cómo regresó el between y ahora vuelve a durar un un segundo y medio, no dura los 3 segundos y tantos. Vuelvo a ejecutar, obviamente esto puede variar un poco, ya duró un poquito más de un segundo, un segundo 200. Fíjate cómo al momento que yo pongo la fecha dentro de una función, esto se va al Se ejecutan más tiempo, se ejecuta ya en casi 4 segundos. Por eso tenemos que tener también en consideración esto. Ahora, cuando tú tienes fechas que van a ser o o mejor dicho, tablas que van a tener

[07:40] muchísima información masiva insertándose, un índice puede ser contraproducente siempre y cuando eh las fechas un índice puede ser contraproducente porque recuerda que los inserciones van a estar recalibrando esta información.

[07:54] Aquí yo lo que te sugiero es utilizar un índice compuesto. También analiza, casi siempre todas las búsquedas que haces por fecha tienen a lo mejor otro campo que también lo haces por él. Por ejemplo, el ID del usuario, el ID de una categoría, el ID de tu B2B, o sea, a lo mejor tu sistema es para muchos clientes. Entonces tú puedes aquí combinar el índice de la fecha junto con ese registro. Cuando tú detectas que todas las búsquedas siempre son en conjunto, eso te va a dar mayor

[08:21] velocidad todavía extra a este tipo de índices. Cuando dices haces un índice compuesto va a tener mayor velocidad siempre y cuando en tu diseño de software detectes que siempre haces las búsquedas en conjunto, fecha con algún otro campo. Ahí puedes hacer el índice compuesto.

[08:37] ¿Y qué? ¿Te gustó el video? Si te gustó el video decírmelo en la caja de comentarios. ¿Quieres que haga más videos de este tipo? También decírmelo en la caja de comentarios. Pulgar arriba ayuda bastante que compartas el video también ayuda bastante. Espero que este video te haya quitado un poquito de ese dulce sabor de las noticias de inteligencia artificial, videos de inteligencia artificial, que está causando ya un diabetes en todos nosotros.

[08:57] Recuerda que todos mis cursos de programación siempre están en Metal Code, siempre con 15% de descuento con el cupón Metal Code. Muchas gracias por llegar aquí. Adiós. [música] [música] [música] [música]
