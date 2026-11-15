# Las 8 Estructuras de Datos que TODO Programador Usa (Pero Nadie Explica Bien)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=9ifwAPFxpu0)
- **Canal**: Torti Code
- **Publicado**: 2026-04-17
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 20:29

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Este código tarda 3 segundos. Este otro, que hace exactamente lo mismo, tarda 3 milisegundos. 1,000 veces más rápido. La única diferencia no es el lenguaje, no es la computadora, es la estructura de datos que usaron. Hoy te voy a enseñar las ocho que usan los ingenieros de Google, Meta, Anthropic, OpenAI y muchas empresas más, con analogías que no vas a olvidar.

[00:27] Soy Torti, esto es Torti Code. Un detalle importante antes de arrancar. Las estructuras de datos son conceptos universales. La teoría es exactamente la misma en Python, JavaScript, Java, Go, C++, en cualquier lenguaje. Lo que cambia es la sintaxis, no la idea.

[00:45] Los ejemplos te los voy a mostrar en código claro, pero todo lo que aprendas hoy te sirve sin importar con qué programes. Vamos. Número 1, el array. Imagínate el estacionamiento de un centro comercial. Cada espacio tiene un número pintado en el suelo, 0, 1, 2, hasta el 1,000. Si te digo que tu carro está en el espacio 747, vas directo, no revisas espacio por espacio. Eso es un array.

[01:11] ¿Por qué es tan rápido? En memoria, los elementos están guardados uno pegado al otro, en bloques del mismo tamaño. La computadora hace una cuenta simple, dirección inicial más el índice por el tamaño, y llega al dato en un solo paso.

[01:25] No importa si tienes 10 elementos o 10 millones, acceder es instantáneo. Pero acá viene lo que nadie te dice. Si quieres meter un elemento en el medio, tiene que correr todos los siguientes un espacio a la derecha. Imagínate mover 500 carros para meter uno nuevo. Por eso insertar en medio es lento.

[01:44] Úsalo cuando lees más de lo que modificas. Los puntajes de un videojuego, los píxeles de una imagen, los productos de un catálogo, las filas de una tabla de datos. Ahora mira el código en pantalla. Primero creamos una variable que contiene cinco carros en orden: Toyota, Mazda, Ford, BMW, Audi.

[02:02] Fíjate que cada carro tiene una posición asignada automáticamente. Toyota está en la posición cero, Mazda en la uno y así. Cuando pedimos la posición dos, nos devuelve Ford al instante, porque la computadora calcula exactamente dónde está sin revisar los otros.

[02:18] Luego agregamos Tesla al final. Esa operación es rápida porque solo pegamos algo después del último elemento. Pero fíjate en la última línea. Insertar Honda en la posición uno obliga a la computadora a correr Mazda, Ford, BMW, Audi y Tesla, todos una posición a la derecha para hacer espacio. Si tuvieras un millón de elementos, tendría que mover un millón.

[02:39] Ese es el costo real de insertar en medio. Número dos, la linked list o lista enlazada. Búsqueda del tesoro cuando eras niño. La primera pista te decía, "Ve al árbol." En el árbol había otra pista, "Ve a la cocina." Cada pista solo sabe dónde está la siguiente. No puede saltar a la pista cinco directamente. Eso es una linked list.

[03:04] Acá necesito explicarte bien qué es una referencia, porque este concepto se repite en muchas estructuras. Una referencia es básicamente una dirección que te dice, "El siguiente dato está acá, en este lugar de la memoria."

[03:17] Piénsalo como el número de una casa. Si yo te doy el número y la calle de mi casa, tú puedes llegar, aunque estés al otro lado de la ciudad. La referencia no es mi casa, es la dirección que te lleva a ella. En programación, cuando un nodo tiene una referencia a otro, significa que guarda la dirección de memoria de ese otro nodo, no el nodo completo. Es eficiente porque no duplica información.

[03:41] Entonces, en una linked list, cada elemento se llama nodo y cada nodo guarda dos cosas: el valor y la referencia al siguiente nodo. El último apunta a nada, a null, y ahí termina la lista. Si quieres meter un nodo nuevo entre dos existentes, solo cambias dos referencias. El nodo anterior ahora apunta al nuevo y el nuevo apunta al que seguía. Listo. No moviste un solo dato.

[04:07] Meter un nodo en una lista de un millón de elementos toma lo mismo que meterlo en una de tres. La contra es real. Si quieres el elemento número 500, tienes que ir nodo por nodo desde el principio siguiendo las referencias. No hay atajo directo como en el array.

[04:23] Úsala cuando insertas y eliminas constantemente, pero no necesitas saltar a posiciones específicas. Ejemplos reales. Los feeds de redes sociales donde constantemente se agregan publicaciones nuevas arriba. Los sistemas de música que arman playlists dinámicas y sobre todo como base para construir otras estructuras que vamos a ver ahora, como las pilas y las colas, que por dentro muchas veces usan linked lists.

[04:49] Mira el código. Definimos una clase nodo con dos propiedades, el valor, que es lo que queremos guardar, y siguiente, que empieza en null porque todavía no apunta a nada. Después definimos la clase lista enlazada, que solo necesita saber cuál es la cabeza, o sea, el primer nodo de toda la cadena.

[05:09] El método agregar al inicio hace algo muy elegante. Crea un nodo nuevo, le dice, "Tu siguiente es la cabeza actual de la lista." Y luego actualiza la cabeza para que sea este nodo nuevo. Así, en dos líneas metiste un elemento al principio de la lista, sin importar si la lista tenía cero elementos o un millón.

[05:29] Esa es la magia de trabajar con referencias en vez de mover datos. Número tres, el stack o pila. Pila de platos en un restaurante. El lavaplatos apila uno encima de otro. Cuando el mesero necesita uno, agarra el de arriba, nunca el del fondo. El último que entra es el primero que sale. LIFO.

[05:49] Last in, first out. La pila solo te deja hacer dos cosas. Push, meter algo arriba y pop, sacarlo de arriba. Esa limitación intencional es justo lo que la hace rapidísima y predecible. Y acá viene el, ah, tiene sentido. Cada vez que presionas control Z en cualquier programa, estás haciendo pop de una pila.

[06:11] Cada acción que haces se apila y deshacer saca la última. Por eso puedes deshacer muchas veces seguidas hasta volver al principio. El botón atrás del navegador funciona igual. Cada página visitada se apila. Y esto está loco. Cuando una función de tu código llama a otra función, el lenguaje de programación internamente usa una pila llamada call stack para saber a dónde regresar cuando la función termine.

[06:36] Si alguna vez viste el error stack overflow, viene literalmente de llenar esa pila con demasiadas llamadas anidadas. También las pilas se usan para validar paréntesis en ecuaciones matemáticas y en los compiladores e intérpretes para procesar expresiones.

[06:50] Mira el código. Usamos una lista como pila porque una lista cumple perfecto con lo que necesitamos. Metemos tres acciones usando push. Primero escribir hola, después escribir mundo, después poner negrita. La pila por dentro se ve así.

[07:06] En el fondo está hola, encima mundo y encima de todo poner negrita. Cuando hacemos pop, la pila nos devuelve poner negrita porque es la que está arriba, la última que metimos. Si hiciéramos pop otra vez, saldría mundo. Exactamente como el control Z del editor de texto. Número cuatro. El queue o cola.

[07:28] Lo opuesto exacto a la pila. La fila del banco un viernes a fin de mes. El primero que llegó es el primero que atienden. Nada de colarse. FIFO. First in, first out. Justicia pura. Dos operaciones, agregar al final, sacar del principio. Siempre se respeta el orden de llegada.

[07:52] ¿Dónde has usado colas sin darte cuenta? La cola de impresión. El primer documento que mandaste es el primero que sale. Los mensajes de WhatsApp pendientes cuando no hay señal. Se envían en orden cuando vuelve la conexión.

[08:06] Los servidores web cuando reciben miles de peticiones al mismo tiempo, las organizan con sistemas de colas antes de procesarlas. Los procesos del sistema operativo esperando turno para usar el procesador. Y algo súper importante en la vida real.

[08:22] Los sistemas de mensajería como RabbitMQ o Kafka que usan empresas como Uber, Netflix y muchas más para manejar millones de eventos por segundo, están construidos alrededor del concepto de cola. También los sistemas de tareas en segundo plano, como cuando subes una foto a una app y se procesa después sin bloquear la interfaz, usan colas para manejar el trabajo.

[08:44] Mira el código. Creamos una fila vacía y agregamos tres clientes al final. Ana primero, Luis segundo, María tercero. La cola por dentro se ve así, de izquierda a derecha. Ana, Luis, María. Cuando llamamos a la operación de sacar del principio, nos devuelve Ana, porque fue la primera que llegó.

[09:04] Ahora la cola tiene solo a Luis y María y el siguiente en ser atendido va a ser Luis. El orden siempre se respeta, sin excepción. Número cinco. Y esta es probablemente la estructura más importante de todas. Si solo aprendes una de este vídeo, que sea esta. Hash table. También llamada diccionario, mapa u objeto según el lenguaje. Pero recuerda, el concepto es el mismo en todos.

[09:31] Diccionario de papel de esos gigantes. Si buscas la palabra manzana, no empiezas en la página uno. Vas directo a la sección de la M. Una hash table hace exactamente eso, pero con matemáticas. ¿Cómo funciona por dentro? Cuando guardas un valor con una clave, por ejemplo, un email como clave y los datos del usuario como valor, la hash table toma esa clave y la pasa por una función hash.

[09:56] Esa función convierte el texto en un número. Ese número es la posición exacta donde guardar el valor. Cuando lo quieres buscar después, la función genera el mismo número y va directo ahí. Un solo paso. No importa si tienes 100 registros o 100 millones, buscar toma lo mismo. ¿Dónde la usas sin saberlo? El caché de tu navegador, las sesiones de usuarios cuando inicias sesión en una app, contar palabras en un texto, detectar duplicados, buscar usuarios por email, los índices de las bases de datos, las

[10:28] variables de entorno de tu sistema operativo. Es probablemente la estructura más usada del mundo real y en entrevistas técnicas es una de las herramientas clave para resolver muchísimos problemas. Mira el código. Creamos un diccionario donde la clave es el email y el valor son los datos del usuario.

[10:46] Acá ves dos usuarios, Carlos y Ana, cada uno con su información. Cuando pedimos al diccionario que nos dé los datos usando el email de Ana como clave, nos devuelve su información al instante, porque la función hash transformó ese email en una posición exacta de memoria.

[11:03] Agregar a María es igual de rápido, porque es el mismo proceso. Y al final tienes el ejemplo clásico. Contamos cuántas veces aparece cada palabra en un texto. Recorremos palabra por palabra y para cada una le decimos al diccionario, súmame uno al contador de esta palabra.

[11:19] En tres líneas, hecho. Esto lo vas a usar el resto de tu carrera. Número seis, el tri o árbol, específicamente el árbol binario de búsqueda. Adivina el número del 1 al 100. Mala estrategia, empezar por 1, 2, 3. Buena estrategia, preguntar 50.

[11:42] Si te digo mayor, descartaste 50 números de un tiro. Preguntas 74. Menor. Descartaste otros 26. En siete preguntas máximo adivinas cualquier número del 1 al 100. Eso es un árbol binario de búsqueda. Un árbol tiene una raíz arriba y de ahí bajan ramas. Cada nodo tiene máximo dos hijos, uno a la izquierda y uno a la derecha. Y esos hijos se conectan con referencias, el mismo concepto que vimos antes en la linked list. La regla es, valores menores a la izquierda, mayores a la derecha. Y esa regla se respeta en

[12:18] cada nodo, no solo en la raíz. ¿Porqué es brutal? Si tienes un millón de elementos, buscar uno solo toma unos 20 pasos. En una lista normal serían hasta un millón de comparaciones. 20 contra un millón. Por eso las bases de datos pueden buscar entre miles de millones de registros en milisegundos.

[12:38] ¿Dónde viven los árboles? En los sistemas de archivos de tu computadora. Carpetas dentro de carpetas forman un árbol. El DOM de una página web. Las etiquetas HTML anidadas son un árbol. Las bases de datos usan árboles especiales llamados B-trees para sus índices.

[12:57] Los árboles de decisión son una de las técnicas clásicas de machine learning y se siguen usando muchísimo. Y también AlphaGo, el sistema de Google DeepMind que le ganó al campeón mundial de Go, usa una técnica llamada Monte Carlo Tree Search, que literalmente explora millones de posibles jugadas representadas como un árbol gigante.

[13:18] Mira el código. Definimos una clase nodo con tres propiedades, el valor, la referencia al hijo izquierdo y la referencia al hijo derecho, las dos empezando en null. La clase del árbol tiene un método insertar que funciona así.

[13:33] Si el árbol está vacío, el nodo nuevo se convierte en la raíz. Si no, compara. Si el valor nuevo es menor que el del nodo actual, baja al hijo izquierdo y repite el proceso ahí. Si es mayor, baja al derecho y repite. Sigue bajando hasta encontrar un espacio vacío donde colgar el nodo nuevo.

[13:52] Esto es recursividad pura y cada paso descarta aproximadamente la mitad del árbol. Número siete, el heap. Sala de urgencias de un hospital. Llega un señor con dolor de cabeza, una señora con fractura y un joven con infarto. ¿A quién atienden primero?

[14:08] Al del infarto, obvio, aunque haya llegado último. No se atiende por orden de llegada, se atiende por gravedad. Siempre el más urgente primero. Eso es un heap. Técnicamente es un árbol especial con una regla mágica. El elemento de mayor prioridad siempre está en la raíz.

[14:26] Cuando metes o sacas elementos, el heap se reorganiza automáticamente para mantener esa regla. ¿Por qué no simplemente ordenar una lista entera? Porque ordenar todo cada vez que entra un elemento nuevo es carísimo. El heap solo reorganiza lo mínimo necesario para garantizar que el de arriba siga siendo el correcto.

[14:45] ¿Dónde se usa en la vida real? Google Maps y Waze usan heaps en el algoritmo de Dijkstra para encontrar la ruta más corta entre dos puntos. El sistema operativo usa heaps para decidir qué proceso ejecutar primero. Los sistemas que te muestran el top 10 de algo, como los rankings de un videojuego o las noticias más populares, los servidores de correo ordenando mensajes por prioridad y el algoritmo de compresión Huffman, que se usa en formatos como ZIP y JPG, construye un árbol óptimo usando un heap en el

[15:16] proceso. Mira el código. Creamos un heap vacío y metemos cuatro pacientes con su nivel de prioridad, donde uno es más urgente y cinco es menos. Fíjate que los metemos en desorden a propósito. Dolor de cabeza con prioridad tres, después infarto con prioridad uno, fractura con prioridad dos y resfriado con cinco.

[15:37] Pero cuando empezamos a sacarlos uno por uno, el hip nos los entrega en el orden correcto de urgencia. Primero infarto, después fractura, después dolor de cabeza y al final resfriado. Nunca lo ordenamos nosotros. El hip lo hace solo cada vez que metemos o sacamos algo. Esa es su magia. Y llegamos a la última, la más poderosa de todas, el graph o grafo.

[16:01] Las redes sociales son el ejemplo perfecto. Tú eres un punto, tus amigos o seguidores son otros puntos y las líneas que los unen son las conexiones entre ustedes. Al final tienes una red gigante. Eso es un grafo. Un conjunto de nodos unidos por aristas.

[16:17] Google Maps es otro ejemplo perfecto. Cada intersección es un nodo, cada carretera es una arista con un peso que puede ser la distancia o el tiempo estimado. Cuando le pides la ruta más rápida, por debajo se corren algoritmos sobre un grafo gigantesco.

[16:32] La forma más común de representarlo es la lista de adyacencia. Una estructura tipo diccionario donde cada clave es un nodo y el valor es una lista de los nodos a los que está conectado. Hay dos sabores importantes. Grafos dirigidos, donde las conexiones tienen dirección, como en X, antes Twitter, donde yo te sigo pero tú no necesariamente me sigues.

[16:52] Las conexiones son flechas en un solo sentido. Y grafos no dirigidos, donde la conexión es mutua, como la amistad en Facebook. Si somos amigos, lo somos los dos. Prepárate porque los grafos están en todos lados. Todas las redes sociales modelan conexiones como grafos. Google Maps, Waze, Uber, cualquier app de rutas. Los sistemas de recomendación de Netflix, Spotify y TikTok también modelan relaciones entre usuarios y contenido como grafos. Aunque por dentro combinan muchas otras técnicas encima.

[17:23] El internet mismo es un grafo gigante donde las páginas son nodos conectados por hipervínculos. Y así es justo como Google construyó originalmente su buscador con el algoritmo PageRank que le daba valor a cada página según cuántas otras páginas la enlazaban.

[17:40] También existe el Google Knowledge Graph, esa base de datos de entidades y relaciones que el buscador lanzó en 2012 y que es literalmente un grafo. Cuando entiendes grafos, empiezas a verlos en todos lados. Ahora, sobre el código que viene. Te voy a mostrar un algoritmo llamado BFS, búsqueda en anchura, que es la base de todo lo que tiene que ver con explorar grafos.

[18:03] Pero quiero ser muy claro contigo. Lo que verás es la versión limpia del algoritmo, la que aprendes en la universidad y la que se pregunta en entrevistas. Las redes sociales reales como Facebook, Instagram o LinkedIn no corren este código tal cual cuando te sugieren amigos.

[18:20] En producción manejan miles de millones de usuarios, grafos distribuidos en cientos de servidores, sistemas de ranking por relevancia, modelos de machine learning para personalizar resultados, filtros de privacidad y muchísimas capas más.

[18:34] Pero todo eso se construye sobre esta idea fundamental que vas a aprender ahora. Entender BFS es el primer paso para entender cómo funcionan esos sistemas gigantes por dentro. Mira el código. Creamos una red social como un diccionario donde cada persona tiene una lista con los nombres de sus amigos.

[18:52] Carlos es amigo de Ana y Luis. Ana es amiga de Carlos, María y Sofía. Y así. Luego definimos una función llamada BFS que recibe el grafo y un nodo inicial. Usamos una cola, sí, la misma estructura que vimos antes, para ir explorando nivel por nivel.

[19:10] Sacamos un nodo del frente de la cola, lo marcamos como visitado y metemos todos sus vecinos al final de la cola para visitarlos después. Repetimos hasta que la cola quede vacía. Así exploramos toda la red empezando desde Carlos, visitando primero a sus amigos directos, después a los amigos de sus amigos y así sucesivamente. Este patrón, explorar capa por capa, es exactamente lo que necesitas cuando quieres encontrar el camino más corto en un grafo sin pesos o cuando quieres

[19:40] saber a qué distancia están dos nodos. Si llegaste hasta acá, ya sabes más de estructuras de datos que muchos programadores que llevan años en esto, en serio. Y la próxima vez que escribas código, vas a pensar, espera, para esto una hash table sería mucho mejor que una lista. Ahí empieza tu salto de nivel.

[19:59] Ahora, tres cosas rápidas antes de irte. Uno, dale like, le dice a YouTube que el contenido vale la pena y ayuda un montón al canal. Dos, suscríbete, porque en el próximo vídeo te voy a enseñar cómo puedes empezar a ganar dinero con la programación apoyándote en la inteligencia artificial, algo que hoy en día está cambiando completamente el juego y no te lo puedes perder. Y tres, déjame en los comentarios qué estructura ya usabas y cuál fue nueva para ti. Leo todos. Nos vemos. Chao, torticoders.
