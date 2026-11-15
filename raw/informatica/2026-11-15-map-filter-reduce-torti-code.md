# map, filter y reduce: el fin de los bucles for

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Jj0OWJe5Ixw)
- **Canal**: Torti Code
- **Publicado**: 2026-07-30
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:07

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Y si te dijera que la mitad de tus bugs no son bugs de lógica? Son bugs de cosas que cambian a tus espaldas. Llamas a una función, le pasas los mismos datos de siempre y un día devuelve algo distinto. Un valor que estaba bien hace tres líneas y ahora está corrupto. Una lista que alguien modificó en otra parte del código y rompió todo lo que dependía de ella.

[00:23] Pasas horas con el depurador y no encuentras nada, porque el problema no es una línea. Es que tus datos no se quedan quietos. La programación funcional es la respuesta a ese caos. No es un lenguaje, es una forma de escribir código donde las cosas no cambian sin permiso. Donde una función con los mismos ingredientes siempre te da el mismo plato. Y donde dejas de perseguir fantasmas. Hola, soy Torti y esto es Torti Code.

[00:50] Hoy vas a entender cuatro ideas que se sostienen una a la otra. Funciones puras, inmutabilidad, funciones de orden superior y el trío map, filter y reduce. Cuatro ideas que viven en React, en Redux, en Apache Spark, en casi todo lo que tocas. Arrancamos. Empecemos por la primera idea. Las funciones puras.

[01:14] Imagina una receta de verdad. Dice dos huevos, harina, leche y te sale un panqueque. Si yo sigo esa receta hoy, mañana y el año que viene, con los mismos ingredientes, me sale el mismo panqueque. Siempre. La receta no depende de mi humor, no depende de la hora, no llama a tu casa para avisar que cocinó, no mete la mano en tu refrigerador para sacar otra cosa.

[01:40] Eso es una función pura. Dos reglas, nada más. Y conviene grabárselas. Primera regla. Con los mismos ingredientes de entrada, siempre el mismo resultado de salida. Le das dos y dos, te da cuatro. Hoy y dentro de un año. Sin sorpresas.

[01:58] Segunda regla, no toca nada de afuera. No modifica una variable global, no escribe en un archivo, no manda un correo, no consulta el reloj ni un número al azar. Entra, calcula con lo que recibió, sale, sin rastro. Cuando una función rompe cualquiera de esas dos reglas, decimos que tiene efectos secundarios y los efectos secundarios son justo donde se esconden los bugs raros, los que solo pasan a veces, los que no puedes reproducir cuando por fin te sientas a buscarlos.

[02:28] Una función pura recibe un precio y un descuento y devuelve el precio final. No mira ninguna variable de afuera, no guarda nada en ningún lado. Le das los mismos dos números, te devuelve el mismo resultado, siempre. La puedes llamar mil veces y el mundo a su alrededor queda exactamente igual.

[02:47] Al lado, una función impura. La que casi todos escribimos sin darnos cuenta. Toma una lista, le agrega un elemento, pero modifica la lista original que le pasaste. Ahora cualquier otra parte del programa que tuviera esa misma lista, la ve cambiada, aunque nunca pidió ese cambio.

[03:05] Eso es un efecto secundario y es una bomba de tiempo. La versión pura hace lo contrario. No toca la lista que entró, construye una nueva con el elemento agregado y te la devuelve. La original queda intacta y nadie más se entera. Aquí está el porqué, que es lo importante.

[03:22] Una función pura es la más fácil de probar del mundo y de lejos. Le das una entrada, verificas la salida, listo. No tienes que montar una base de datos falsa, ni simular el reloj del sistema, ni fingir una respuesta de internet.

[03:37] Como no depende de nada de afuera y no cambia nada de afuera, el test es una sola línea. Con esto entra, esto sale. Por eso la gente que escribe funciones puras tiene test rápidos y confiables casi sin esfuerzo. Y es la más fácil de razonar.

[03:53] La lees de arriba a abajo y sabes exactamente qué hace, sin tener que ir a cazar qué variable global toca o qué archivo escribe en secreto. Lo que ves es todo lo que pasa. Lo contrario también es cierto, y por eso duele.

[04:07] Cuando un bug solo aparece a veces, cuando funciona en tu máquina pero no en producción, casi siempre hay una función impura escondida, leyendo o modificando algo que cambió por debajo. Predecible y testeable de un lado, misterioso y frágil del otro. Esa es toda la diferencia. Pasemos a la segunda idea, la inmutabilidad.

[04:29] Tienes un documento importante, firmado, archivado. Necesitas cambiar un dato. ¿Qué haces? No tachas el original con bolígrafo y lo dejas hecho un desastre, porque mañana alguien va a necesitarlo tal como estaba. Sacas una fotocopia, editas la copia y guardas las dos.

[04:48] El original sigue ahí, intacto, limpio, en su carpeta. Eso es inmutabilidad. En vez de modificar un dato que ya existe, creas una versión nueva con el cambio y dejas el original en paz. Nada de tachones. Nada de cambiarle el valor a una variable y que medio programa la vea distinta sin haberlo pedido.

[05:10] ¿Y por qué tanto cuidado? Cuando varios pedazos de tu código comparten el mismo dato en memoria y uno de ellos lo modifica, todos los demás se enteran sin querer. Uno empuja un elemento a la lista y otra parte del programa que apuntaba a esa misma lista de repente tiene un elemento que nunca puso.

[05:29] Ese es el famoso bug de estado compartido, y es de los más difíciles de cazar porque el culpable está lejos de donde explota. Si el dato es inmutable, eso simplemente no puede pasar. Nadie lo cambia, porque no se puede.

[05:43] El problema deja de existir de raíz. Tienes un objeto usuario y quieres cambiarle el nombre. La forma mutante toca al original directamente y arrastra ese riesgo de estado compartido. La forma inmutable construye un objeto nuevo, copia todo lo del viejo y encima pone el campo cambiado.

[06:03] El usuario original queda exactamente igual que antes, el nuevo es otro objeto separado. En Java esto se volvió de primera clase con los records, sus campos son final por dentro, no los puedes resignar después de crear el objeto.

[06:17] Para cambiar un campo construyes un record nuevo. Un detalle en esto porque importa, la inmutabilidad del record es superficial. Si dentro guardas una lista mutable, esa lista por dentro todavía se puede tocar. El record protege la referencia, no necesariamente lo que cuelga de ella.

[06:35] Y en el Elixir ni siquiera tienes que pensarlo, la mutación no existe. Toda operación devuelve algo nuevo y el original queda intacto, garantizado por el lenguaje. El reflejo que tienes que entrenar es este. Y es un cambio de chip pequeño con consecuencias enormes.

[06:52] Cuando quieras cambiar algo, no preguntes cómo lo modifico. Pregunta cómo construyo la versión nueva. Copias lo que sigue igual. Pones encima lo que cambió y devuelves eso. El original ni se entera. Suena a que gastas más memoria y a veces sí.

[07:12] Pero a cambio ganas algo que vale mucho más. Nunca más un dato que cambia a tus espaldas. Y para los casos donde copiar todo de verdad pesaría, existen las estructuras persistentes que comparten por debajo todo lo que no cambió y solo crean lo nuevo. Ahora, las funciones de orden superior.

[07:30] Imagina un robot de cocina con una ranura donde le metes accesorios. Le pones el de rallar y ralla. Le quitas ese, le pones el de batir y bate. El robot no cambia ni una pieza. Lo que cambia es la herramienta que le entregas.

[07:45] Una sola máquina, 1000 comportamientos, según qué le metas por la ranura. Una función de orden superior es, ni más ni menos, una función a la que le pasas otra función como ingrediente. O una función que te devuelve otra función como resultado.

[08:02] En vez de pasarle números o texto, le pasas comportamiento. Le entregas el qué hacer y ella se encarga del resto. Esto suena raro la primera vez, lo sé. Lo natural es pensar que a una función solo le pasas datos, pero en este mundo una función es un dato más.

[08:20] La puedes guardar en una variable, meterla en una lista, devolverla desde otra función y sobre todo, pasársela a otra función para que la use por dentro. Una función recibe una lista y además recibe otra función que dice qué hacer con cada elemento.

[08:36] Le pasas multiplica por dos y duplica todo. Le pasas ponlo en mayúsculas y grita todo. Y al revés. Una función que fabrica funciones. Le pides dame un multiplicador por tres y te devuelve una función nueva lista para usar. No te devuelve un número, te devuelve una herramienta.

[08:55] Las funciones de orden superior son lo que hace que map, filter y reduce existan. Y la razón por la que en este estilo casi nunca escribes un bucle a mano. Esto se conecta con curring, que es la técnica llevada al extremo.

[09:08] Si quieres un vídeo sobre curring, déjalo en los comentarios. Llegamos al trío estrella de la programación funcional. Map, filter y reduce. Piensa en una línea de montaje. La materia prima entra por un extremo y pasa por estaciones, una detrás de otra.

[09:25] Primera estación, transformar. Cada pieza que pasa le haces algo, le pones una etiqueta, la pintas, [música] la conviertes a otra cosa. Entran 100 piezas, salen 100, pero todas cambiadas. Eso es map. Aplicarle la misma transformación a cada elemento y quedarte con la lista transformada.

[09:44] Segunda estación, colar. Pones un filtro con una condición. Las piezas que la cumplen pasan, las que no se caen. Entran 100, salen solo las que sirven, quizá 40. Eso es filter. Tercera estación, juntar todo en uno. Tomas todas las piezas que sobrevivieron y las combinas en un solo resultado.

[10:06] Entran muchas, sale una. Eso es reduce. Arrancas con un valor inicial y vas acumulando elemento por elemento hasta quedarte con un único resultado. Map transforma, filter cuela, reduce junta. El ejemplo clásico, una lista de productos con precio y quieres el total de los que cuestan más de 100 con impuesto. Filtra los caros, transformas cada uno sumándole el impuesto y reduces todo a un solo número. Tres pasos encadenados, una tubería limpia, sin un solo bucle a la vista. Un detalle de

[10:41] Python, su map y su filter incorporados no te devuelven una lista, te devuelven un iterador perezoso, así que los envuelves en list para materializar el resultado. Y su reduce vive en el módulo functools. En Java estos son los streams, que son perezosos. Nada corre hasta que llamas a una operación terminal como reduce o collect y así recorre los datos de una sola pasada.

[11:07] Y en el elixir se ve clarísimo con el operador pipe, que toma el resultado de la izquierda y lo pasa a la función de la derecha, leyendo la tubería como una oración. El tropiezo más común es con reduce. Si no le pasas un valor inicial, toma el primer elemento como punto de partida y sobre una lista vacía revienta.

[11:27] La regla, pásale siempre un valor inicial. Y algo clave, no necesitas instalar nada para empezar. Map, filter y reduce ya vienen nativos en el lenguaje. Pero arriba hay un ecosistema entero. En JavaScript, Lodash y Ramda son las utilidades funcionales de cabecera.

[11:47] Ramda nunca toca tus datos. Para inmutabilidad, Immer e immutable.js. Immer te deja escribir como si mutaras un borrador, pero por debajo produce un objeto nuevo y comparte lo que no cambió. Cuando los datos son un flujo que llega con el tiempo, clicks o eventos, está RxJS, con los mismos map y filter sobre el tiempo.

[12:10] En Python, Itertools y Functools en la librería estándar. Y los pipelines tipo Apache Spark están construidos sobre estos tres entre muchas máquinas. Y la programación funcional vive en herramientas que ya usas. React te obliga a crear un estado nuevo en vez de mutar el viejo, porque detecta cambios comparando referencias.

[12:31] Si mutas, la referencia no cambia y React se queda ciego, la pantalla no se actualiza. Redux exige reducers puros y por eso puedes viajar en el tiempo entre estados para depurar. Y Apache Spark reparte map, filter y reduce entre cientos de máquinas. La pureza y la inmutabilidad son lo que hace posible ese paralelismo masivo.

[12:54] Recapitulamos. Funciones puras, mismos ingredientes, mismo plato, sin tocar nada de afuera. Inmutabilidad, no taches el original, saca una copia y edita la copia. Funciones de orden superior, pásale comportamiento a una función. Y map, filter, reduce, transformar, colar, juntar. No necesitas reescribir toda tu app de golpe, lo aplicas a pedacitos y de repente tienes menos bugs fantasma y código que entiendes de un vistazo.

[13:23] Hay un nivel más profundo. Currying, monads, programación funcional pura. Si quieres uno sobre monads explicado sin matemática, déjalo en los comentarios. Y si la programación funcional es un paradigma para organizar tu código, hay otro que seguro ya conoces, la programación orientada a objetos. Dos caminos distintos, el mismo objetivo de poner orden.

[13:47] Ve ahora mismo el vídeo donde explico los cuatro pilares de la programación orientada a objetos. Te va a cerrar el mapa completo de cómo se organiza el código. Si esto te aclaró el panorama, suscríbete, porque vamos de cero a experto sin saltarnos pasos. Y cuéntame, ¿cuál de las cuatro ideas ya usabas sin saber que tenía nombre?
