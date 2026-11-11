# Resumen: Every Data Structure Simply Explained in 25 Minutes!

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-04-17-every-data-structure-simply-explained-in-25-minutes.md` (inglés, subtítulos automáticos, literal) — https://www.youtube.com/watch?v=vVL6NFzr0Rg — Codist, 2026-04-17 (28:20).
- **Nota**: fuente 1/10 del lote informatica-teoria (worker 1). Consolidación (2026-11-11): sin páginas asociadas todavía (canal con 3 fuentes; entidad aplazada hasta más fuentes).

## Arrays: acceso instantáneo, modificación costosa

Un **array** es una colección ordenada de tamaño fijo donde cada elemento ocupa una posición numerada y contigua en memoria — como los asientos de un cine: si piden el asiento 47, no se recorren los anteriores. Ese layout predecible permite **acceso en O(1)**: encontrar el elemento 40.000 tarda lo mismo que el 4. El costo está en la rigidez: el tamaño se fija al crearlo, expandirlo exige asignar un bloque nuevo y copiar todo, e insertar en el medio desplaza cada elemento posterior una posición. La trade-off: **rapidísimo para leer, lento y rígido para cambiar**. Están debajo de los píxeles de una imagen y los fotogramas de un vídeo — casos donde la posición es fija y conocida.

## Listas enlazadas y estructuras lineales restringidas

La **lista enlazada** se inventó justo para esa rigidez: una cadena de nodos que guardan valor y puntero al siguiente, dispersos en memoria — como una búsqueda del tesoro donde cada pista solo dice dónde está la siguiente. Insertar o eliminar es actualizar **dos punteros**, sin importar si hay 10 o 10 millones de nodos; a cambio, el acceso ya no es directo: buscar un elemento puede requerir recorrer los 10.000 pasos anteriores. Resumen del contraste: *arrays rápidos para leer y lentos para cambiar; listas enlazadas lentas para leer y rápidas para cambiar*.

El **stack** (pila) es LIFO — último en entrar, primero en salir, como platos apilados — con solo dos operaciones (**push** y **pop**), ambas instantáneas. Esa limitación es su virtud: alimenta Ctrl+Z de cada editor, el botón atrás del navegador y el **call stack** donde la función más reciente es la que termina primero.

La **queue** (cola) invierte la lógica: FIFO, como la fila del supermercado, con **enqueue** (al final) y **dequeue** (del frente). Impresora compartida que procesa documentos en orden, servidor web que alinea miles de peticiones, entradas de teclado, tickets de soporte. El **deque** (double-ended queue) generaliza ambas: insertar y quitar por los dos extremos — usado solo por atrás es un stack; agregar por atrás y quitar del frente es una queue. Es la estructura de las ventanas deslizantes, del historial con adelante/atrás y del undo/redo bidireccional.

## Hash map y hash set: el acceso por clave

El **hash map** guarda pares clave-valor (buscá «mamá» en los contactos y aparece el número al instante). La clave pasa por una **función hash** que la convierte en un número que apunta a un slot fijo de memoria: «mamá» puede ser el slot 4.827; la misma fórmula devuelve el mismo slot en cada búsqueda — salto directo, sin importar si hay 10 o 10 millones de entradas. Los diccionarios de Python y los objetos de JavaScript son hash maps, y los índices de las bases de datos modernas se apoyan en el mismo principio. Sus costos: más memoria que una lista simple y **colisiones** ocasionales (dos claves con el mismo slot), que la estructura igual sabe resolver.

El **hash set** es un hash map sin valores: solo responde «¿está o no está?» — la lista del portero de la discoteca, a quien no le importa el número de mesa. Pertenencia, alta y baja instantáneas, y cero duplicados por diseño. Usos: saber qué usuarios ya vieron una notificación, filtrar duplicados, verificar si un nombre de usuario está ocupado.

## Jerarquías y prioridades: trees, BST, heap

El **tree** (árbol) representa jerarquías: una raíz, nodos que se ramifican y hojas sin hijos. Sistemas de archivos, el DOM de cada página HTML (cada etiqueta es un nodo anidado), hilos de comentarios, árboles de decisión. Un árbol plano no impone orden, así que buscar puede significar revisar cada nodo.

El **binary search tree (BST)** añade una sola regla que lo cambia todo: menor a la izquierda, mayor a la derecha. Cada comparación descarta la mitad restante — el juego de adivinar el número del 1 al 1000 — y en un BST balanceado de un millón de nodos alcanzan **~20 pasos**. Su debilidad oculta: insertar datos ya ordenados (1, 2, 3, 4…) lo degenera en una línea que se comporta como lista enlazada; de ahí los BST **auto-balanceados**.

El **heap** responde otra pregunta: acceso inmediato al elemento más importante, como el triage de una sala de emergencias — el infarto pasa antes que el dolor de cabeza, sin reordenar nada a mano. En un **max-heap** sube el mayor; en un **min-heap**, el menor; al extraerlo, la estructura se reorganiza sola. Planificadores de tareas del SO, GPS recalculando rutas. Advertencia terminológica: «heap» y «stack» también nombran regiones de memoria en programación — misma palabra, conceptos no relacionados.

## Grafos, tries y estructuras de especialista

El **grafo** abandona la jerarquía: puntos (**vértices**) y líneas (**aristas**). Facebook es un grafo gigante (personas y amistades); Google Maps, ciudades y rutas donde se busca el camino más corto. Hay grafos **no dirigidos** (amistad bidireccional) y **dirigidos** (los follows de Twitter, que no garantizan reciprocidad); dos nodos conectados son **adyacentes**. Se guardan como **matriz de adyacencia** (consultas rápidas, mucha memoria si hay pocas conexiones) o **lista de adyacencia** (más eficiente en memoria para la mayoría de los casos). El recorrido usa DFS o BFS; otras operaciones: caminos entre nodos, detección de ciclos, componentes conexas. Redes sociales, mapas, enlaces web, recomendaciones, enrutamiento: si algo está conectado, es un grafo.

El **trie** (se pronuncia «try») es un árbol donde cada nivel es un carácter: al teclear «app», tres letras equivalen a tres pasos y ya estás en la rama exacta de todas las palabras que empiezan así. Es lo que un hash map no hace: la búsqueda por prefijo obligaría a revisar cada entrada; el trie la resuelve en tantos pasos como letras tecleadas. El mecanismo silencioso del autocompletado, los correctores y la búsqueda de contactos.

El **disjoint set (union-find)** rastrea pertenencia a grupos que se van fusionando: cada elemento empieza como grupo propio, cada conexión fusiona grupos, y dos elementos están relacionados si comparten **representante**. La peculiaridad: **comprime los caminos** cada vez que busca un líder, así que se vuelve más rápido con el uso. Detección de conectividad en redes, procesamiento de imágenes (¿estos píxeles son el mismo objeto?), alcance en mapas de juegos.

El **Bloom filter** es «la estructura que a veces miente»: rapidísima y casi sin memoria. Un «no» es garantía absoluta (el elemento no está); un «sí» puede ser un **falso positivo**, pero jamás niega algo que existe — solo se equivoca en una dirección. A cambio de esa imprecisión, una lista de miles de millones de contraseñas filtradas pasa de gigabytes a megabytes. Chrome la usa para marcar sitios sospechosos sin guardar cada URL maliciosa; los nodos de Ethereum, para verificar datos sin cargar toda la blockchain; los correctores, para descartar errores evidentes antes de la búsqueda costosa.

El **LRU cache** cierra el recorrido: cómo decide tu computadora **qué olvidar** cuando el espacio se agota. Se queda lo usado recientemente; lo que lleva más tiempo sin tocarse se expulsa primero. Su construcción es una lección de composición: **hash map + lista doblemente enlazada** — el map da lookups O(1) y la lista mantiene el orden (recién usado al frente, menos usado al fondo); acceder mueve al frente, quedarse sin espacio corta por atrás. Get y put en O(1). La usan navegadores, bases de datos y sistemas operativos — todo sistema que necesita recordar sin poder permitirse recordarlo todo.

## Notas sobre la fuente

- Raw en inglés (subtítulos automáticos); resumen en español profesional.
- Las transcripciones traen cada frase triplicada (artefacto del ASR); normalizado en el resumen.
- Patrocinio: Insforge (backend para agentes de código, benchmark propio 1.6× más rápido) — excluido de la síntesis; la transición al BST lo usa de puente publicitario.
- Autopromoción: solo llamada a la descripción — excluida.
