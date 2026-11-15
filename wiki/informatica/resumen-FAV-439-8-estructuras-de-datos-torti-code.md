# FAV-439 — Las 8 Estructuras de Datos que TODO Programador Usa

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=9ifwAPFxpu0) — Canal **Torti Code**, publicado 2026-04-17, 20:29, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-8-estructuras-de-datos-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: 3.ª fuente del canal Torti Code (clúster estructuras de datos/Big O — ver Cruces).

## Premisa

Dos códigos idénticos en resultado: 3 s vs 3 ms — la diferencia es la estructura de datos, no el lenguaje ni la máquina (la teoría es universal; cambia la sintaxis). Ocho estructuras con analogías:

1. **Array** = estacionamiento numerado: bloques contiguos de igual tamaño; acceso directo por cálculo (dirección + índice × tamaño) es O(1) sea 10 o 10 millones de elementos; insertar en medio obliga a correr todo lo posterior — caro. Úsalo si lees más de lo que modificas (puntajes, píxeles, catálogos, filas).
2. **Linked list** = búsqueda del tesoro: cada nodo guarda valor + **referencia** (dirección de memoria del siguiente — el número de la casa, no la casa). Insertar = cambiar 2 referencias, cueste lo que cueste el tamaño; acceso secuencial nodo a nodo, sin saltos. Para inserciones/eliminaciones constantes (feeds sociales, playlists dinámicas); base de stacks y colas.
3. **Stack (pila)** = platos: LIFO, push/pop. Control-Z, botón atrás del navegador, y el **call stack** interno de toda función (de ahí el error «stack overflow» — pila llena de llamadas anidadas); validación de paréntesis y compiladores.
4. **Queue (cola)** = fila del banco: FIFO, justicia pura. Cola de impresión, mensajes pendientes sin señal, servidores web ordenando peticiones, scheduler del SO; RabbitMQ/Kafka (Uber, Netflix) construidas alrededor del concepto de cola.
5. **Hash table** (diccionario/mapa/objeto) = diccionario de papel: la función hash convierte la clave (email) en número = posición exacta de memoria; búsqueda en un paso, 100 o 100 millones de registros. La más importante según el video: cachés, sesiones, conteo de palabras, detección de duplicados, índices de BD, variables de entorno; clave en entrevistas técnicas.
6. **Árbol binario de búsqueda** = adivinar un número del 1 al 100 preguntando 50: menores a la izquierda, mayores a la derecha en cada nodo (con las mismas referencias de la linked list); 20 pasos contra un millón de comparaciones en un millón de elementos. Viven en: sistemas de archivos (carpetas), DOM de una página, B-trees como índices de BD, árboles de decisión de ML, y AlphaGo (Monte Carlo Tree Search). Inserción recursiva pura.
7. **Heap** = sala de urgencias: siempre el más urgente primero, no el orden de llegada; árbol con la regla «la raíz es el máximo (o mínimo)», reorganización mínima automática. Dijkstra en Google Maps/Waze, scheduler del SO, rankings top-10, prioridad de correo, compresión de Huffman (ZIP/JPG).
8. **Graph (grafo)** = redes sociales: nodos + aristas; lista de adyacencia (diccionario → lista de conexiones); dirigidos (follow en X) vs no dirigidos (amistad en Facebook). Están en todas partes: mapas (Dijkstra sobre grafos ponderados), sistemas de recomendación (Netflix/Spotify/TikTok), la propia web como grafo de hipervínculos (PageRank) y el Knowledge Graph de Google (2012). Cierra con **BFS** (búsqueda en anchura, sobre una cola): la versión limpia universitaria — producción añade grafos distribuidos, ranking y ML, pero se construye sobre esa idea.

## Cruces

- Canal **Torti Code**: 3.ª fuente en la wiki (umbral ≥2 ya superado, entidad candidata deferida en Log): [[resumen-FAV-433-big-o-vida-real-torti-code]] (el Big O es la métrica con la que este video justifica cada estructura — índices de BD como árboles logarítmicos, mismo ejemplo).
- Clúster **estructuras de datos/algoritmos**: el resumen previo de Codist (25+ algoritmos) y estructuras en informatica-teoria.
- B-trees/índices y hash tables cruzan con [[resumen-FAV-438-que-es-realmente-internet-gilada]] (capas de infraestructura) solo tangencialmente; el cruce fuerte es el clúster algorítmico.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[torti-code]] (14 fuentes).
