# Ordenar 1 millón de datos: 1 segundo o 10 minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=TTIA7LlI3rk)
- **Canal**: Torti Code
- **Publicado**: 2026-08-07
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:05

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ordenar una lista parece lo más trivial del mundo. Tienes números regados, los quieres de menor a mayor, listo. Pero hay una diferencia brutal entre hacerlo bien y hacerlo mal. La misma tarea con dos algoritmos distintos puede tardar un segundo o tardar 10 minutos sobre el mismo arreglo, en la misma máquina. Hola, soy Torti y esto es TortiCode.

[00:25] Hoy desarmamos los cuatro algoritmos de ordenamiento que todo el mundo te preguntan en entrevistas y que viven debajo de cada lista que usas. Bubble sort, insertion sort, merge sort y quick sort. Para cada uno te doy una imagen de la vida real que se te queda pegada, te muestro cómo trabaja paso a paso y te explico de dónde sale ese número que define si tu programa vuela o se arrastra. Y al final, la verdad que casi nadie te cuenta. ¿Cuál de estos vas a escribir tú en tu trabajo? Arrancamos.

[00:58] Antes de los algoritmos, una idea que lo gobierna todo. Cuando hablamos de rápido o lento, no hablamos de segundos. Hablamos de cómo crece el tiempo cuando crece la lista. Y esto es lo que hay que entender bien, porque es lo que separa a los cuatro.

[01:15] Imagina que cada algoritmo tiene una fórmula de cuántas comparaciones hace según el tamaño de la lista. Si esa fórmula es el tamaño multiplicado por sí mismo, el cuadrado, lo llamamos cuadrático. Si es el tamaño multiplicado por su logaritmo, lo llamamos N por logaritmo de N y crece muchísimo más despacio.

[01:35] Veámoslo con números. Si tu lista tiene 10 elementos, casi cualquier cosa funciona, no notas nada. El problema aparece cuando tiene un millón. Ahí, el algoritmo cuadrático hace un millón por un millón, un billón de operaciones. Tu servidor se cae.

[01:53] El N por logaritmo de N sobre ese mismo millón hace alrededor de 20 millones de operaciones. Eso lo resuelve en un parpadeo. Misma lista, misma máquina. La diferencia entre instantáneo y caído está en qué fórmula crece más rápido.

[02:10] Ese número que describe cómo crece el costo es la notación Big O. No necesitas la matemática completa hoy, solo quédate con la intuición de cuadrático contra N por logaritmo de N. Y si quieres el detalle completo, ya tengo un vídeo entero de Big O explicado con analogías aquí en el canal.

[02:28] Con eso en la cabeza, vamos al primero. Empezamos con el primero. Bubble sort. Imagina una columna de agua con burbujas de distintos tamaños. Las burbujas más livianas suben hasta arriba, una posición a la vez, empujándose contra sus vecinas. Eso es bubble sort.

[02:48] Caminémoslo con cuidado, porque de este recorrido sale su número. Te paras en el primer elemento y lo comparas con su vecino de la derecha. Si el de la izquierda es más grande, los intercambias. Avanzas un paso y comparas el siguiente par y el siguiente.

[03:04] Cuando terminas de recorrer toda la lista de izquierda a derecha, fíjate qué pasó. El elemento más grande de todo se fue empujando, par tras par, hasta el extremo derecho. Quedó en su lugar definitivo. Eso es una pasada.

[03:19] Pero solo acomodaste uno, así que vuelves al principio y haces otra pasada completa. Y ahora el segundo más grande burbujea hasta su sitio. Y otra pasada para el tercero. ¿Ves el problema? Para ordenar la lista necesitas tantas pasadas como elementos y cada pasada recorre casi toda la lista.

[03:38] Pasadas por elementos recorridos. Eso es el tamaño multiplicado por sí mismo. Ahí está el cuadrático, no como dato, sino como consecuencia directa de comparar vecinos pasada tras pasada. Hay un truco clave que mejora el mejor caso.

[03:52] Un marcador que recuerda si hiciste algún intercambio en la pasada. Si recorres la lista entera y no moviste absolutamente nada, significa que ya estaba ordenada y cortas de inmediato sin hacer más pasadas. Por eso, con una lista que ya viene ordenada, Bubble Sort la recorre una sola vez, confirma que todo está en su lugar y termina.

[04:12] Ese es su mejor caso, una sola pasada, lineal. Entonces, su número queda así. Mejor caso lineal cuando la lista ya viene ordenada, promedio y peor caso cuadrático por esas pasadas anidadas y casi nada de memoria extra porque intercambia dentro del mismo arreglo.

[04:30] En la práctica, nadie lo usa en producción. Es el primero que aprendes porque la idea de comparar vecinos e intercambiar es la base mental de todo lo que viene. El segundo algoritmo es Insertion Sort y esta lo hace sin pensar cada vez que juegas cartas. Tienes la mano ya ordenada, tomas una carta nueva del mazo y la deslizas hacia la izquierda hasta que cae en su posición.

[04:52] Las cartas más grandes que ella se corren un puesto a la derecha para hacerle espacio. Eso es Insertion Sort. Caminémoslo. Tratas la lista como si tuviera dos zonas. A la izquierda, lo que ya está ordenado. A la derecha, lo que falta.

[05:07] Al principio, la zona ordenada es solo el primer elemento. Tomas el segundo, lo comparas hacia atrás con la zona ordenada y lo deslizas hasta su sitio. Ahora la zona ordenada tiene dos. Tomas el tercero, lo insertas. Y así, cada elemento nuevo lo metes en su lugar dentro de la parte ya ordenada, empujando a la derecha a los que son más grandes que él.

[05:28] Y aquí viene su número. Si la lista llega revuelta, cada carta nueva tiene que recorrer hacia atrás casi toda la zona ordenada para encontrar su sitio. Elementos por desplazamientos, otra vez cuadrático. Pero si la lista llega casi ordenada, cada carta nueva ya está casi en su lugar, hace una o dos comparaciones y se queda.

[05:47] Por eso brilla con datos casi ordenados, el trabajo se desploma a lineal. Esa virtud con datos casi ordenados no es un detalle curioso. Es la razón por la que Insertion Sort sigue vivo dentro de los algoritmos grandes y modernos.

[06:03] Cuando un sort serio parte una lista enorme en trozos de 30 o 40 elementos, ordenar esos trozos chiquitos con Insertion Sort es más rápido que con cualquier cosa elaborada, porque en pedazos pequeños la sencillez gana y no paga la sobrecarga de algo más sofisticado.

[06:19] Su número en papel es idéntico al de Bubble, lineal en el mejor caso, cuadrático en promedio y en el peor sin memoria extra. Pero en la vida real Insertion Sort le gana por goleada con datos casi ordenados y por eso es el que sobrevivió adentro de los grandes. Vamos con el tercero, Merge Sort. Y aquí cambiamos de filosofía por completo.

[06:43] Hasta ahora comparábamos vecino con vecino dentro de una sola lista. Ahora dividimos y vencemos. Partimos el problema en pedazos, resolvemos cada pedazo y los juntamos. Empecemos por la parte fácil, que es juntar. Tienes dos mazos, cada uno ya ordenado por separado. Fusionarlos en uno solo es facilísimo. Miras la carta de arriba de cada mazo, tomas la menor de las dos y la pones en el mazo final.

[07:09] Repites. Como cada mazo ya está ordenado, nunca tienes que mirar hacia atrás ni reconsiderar nada. Siempre la respuesta está en la carta de arriba de alguno de los dos. Eso es el merge, la fusión, y recorre cada carta una sola vez.

[07:25] Ahora la pregunta clave, ¿de dónde salen esos dos mazos ya ordenados? Aquí está la magia. Partes la lista a la mitad. Cada mitad la vuelves a partir a la mitad. Y sigues partiendo hasta que cada pedazo tiene un solo elemento. Y un pedazo de un solo elemento ya está ordenado, por definición, gratis. Desde ahí subes fusionando. Juntas pares de un elemento en listas ordenadas de dos. Juntas esas en listas ordenadas de cuatro, de ocho, y así hasta reconstruir la lista entera, ya ordenada.

[07:58] Y de este recorrido sale su número, que es la joya. Partir a la mitad una y otra vez genera una cantidad logarítmica de niveles. Si duplicas el tamaño de la lista, solo agregas un nivel más. Y en cada nivel la fusión toca todos los elementos exactamente una vez. Niveles logarítmicos por trabajo lineal en cada nivel, el tamaño multiplicado por su logaritmo. Eso es N por logaritmo de N, garantizado.

[08:25] Lo hermoso de merge sort es que ese recorrido no depende de la suerte. Le des la lista que le des, ordenada, al revés, aleatoria, siempre parte a la mitad y siempre fusiona igual. Su rendimiento es predecible como un reloj.

[08:40] Su número. El tamaño por su logaritmo en los tres casos, sin excepciones. La factura la pagas en memoria. Para fusionar necesitas un espacio extra donde ir armando los pedazos juntados, espacio proporcional al tamaño de la lista.

[08:54] Y es estable, una propiedad que ya verás por qué importa muchísimo. El cuarto y último es quick sort, otra forma de dividir y vencer, pero con un giro distinto al de merge. Aquí no partes a la mitad ciegamente, partes según un valor.

[09:11] Caminémoslo. Eliges un elemento cualquiera de la lista y lo llamas el pivote. Ahora recorres todo lo demás y lo repartes en dos grupos. Los menores que el pivote van a la izquierda, los mayores van a la derecha. Cuando terminas ese reparto, el pivote queda exactamente entre los dos grupos, y eso significa algo precioso. El pivote ya está en su posición final, para siempre, no lo vas a tocar nunca más.

[09:38] Todos los de su izquierda son menores, todos los de su derecha son mayores. Su sitio ya está clavado. Después repites exactamente lo mismo por tu cuenta, dentro del grupo de la izquierda y dentro del grupo de la derecha.

[09:52] Cada reparto clava un pivote nuevo y deja dos sublistas más chicas. Sigues bajando hasta que los grupos se vuelven de un solo elemento y ahí terminaste. Todos los pivotes quedaron clavados en orden. Y aquí está la sutileza de su número, porque tiene dos caras.

[10:09] Si cada pivote parte su grupo más o menos por la mitad, bajas en una cantidad logarítmica de niveles. Y cada nivel recorre todos los elementos una vez para repartirlos. El tamaño por su logaritmo. Igual de bueno que Merge.

[10:24] Pero si eliges mal el pivote, todo se cae. Quicksort es el más rápido en promedio de los cuatro y casi no gasta memoria extra porque reordena dentro del mismo arreglo, sin pedir un espacio aparte como Merge. Pero su talón de Aquiles es la elección del pivote.

[10:40] Mira qué pasa si siempre eliges el último elemento y te llega una lista que ya viene ordenada. El pivote es el más grande. Todos los demás son menores. Así que un grupo se lleva a todos y el otro queda vacío. No partiste por la mitad, partiste uno contra el resto. Y eso repetido te da tantos niveles como elementos, cada uno recorriendo casi toda la lista. El tamaño por sí mismo, el cuadrático que tanto querías evitar. Justo en una lista que parecía la más fácil.

[11:09] Por eso las versiones serias no eligen el pivote a lo bobo. Toman la mediana de tres candidatos o uno al azar. Con eso, que el pivote salga siempre pésimo, se vuelve tan improbable que en la práctica ese peor caso no aparece.

[11:23] Nada de esto es académico. Cada vez que tocas un botón de ordenar por, uno de estos está corriendo debajo. Cuando ordenas productos de una tienda de menor a mayor precio, el back-end corre un sort sobre miles de resultados antes de mandártelos.

[11:39] Si lo hicieran con algo cuadrático sobre un catálogo grande, la página tardaría una eternidad en cargar. Tu explorador de archivos, cuando ordenas por nombre o por fecha, usa un sort estable. Y aquí entra esa palabra que solté antes.

[11:55] Estable significa que si dos archivos tienen la misma fecha, mantienen el orden en que ya estaban. Ordenas primero por nombre, luego por fecha, y los que comparten fecha siguen en orden alfabético entre ellos. Esa propiedad no es un lujo, es lo que hace que ordenar por varias columnas se sienta natural, y es la razón por la que tu lenguaje elige un algoritmo estable para los objetos.

[12:19] Los resultados de un buscador llegan con un puntaje de relevancia y se ordenan de mayor a menor antes de pintarse. Millones de documentos candidatos ordenados en milisegundos. Y cada vez que escribes order by en una consulta, el motor de la base de datos decide por su cuenta qué algoritmo de ordenamiento usar según cuántas filas hay y si caben en memoria.

[12:41] Tú solo pides el orden, él elige la estrategia. El error número uno de junior, implementar tu propio sort en producción. Casi siempre sale un bubble sort disfrazado, cuadrático, que funciona divino con tus 10 datos de prueba y se cae con los 10,000 reales.

[13:01] El error número dos, olvidar que quicksort puede degenerar. Si tomas el pivote sin cuidado y alguien te manda una lista ya ordenada, tu cuadrático aparece justo cuando menos lo esperas. Por eso, pivote aleatorio o mediana de tres, siempre.

[13:17] El error número tres, ignorar la estabilidad. Si ordenas una tabla por dos criterios y usas un algoritmo no estable en el segundo, el primer orden se te desbarata y no entiendes por qué. Merge sort es estable. Quick sort, tal como lo escribimos, no.

[13:35] Y el cuarto, el más sutil, medir mal. Un algoritmo cuadrático puede ser más rápido que uno de N por logaritmo de N cuando la lista es chiquita, porque tiene menos sobrecarga por operación. Por eso los sorts reales son híbridos.

[13:50] Usan el N por logaritmo de N para los pedazos grandes y caen a insertion sort para los chicos. Justo lo que vas a ver en el cierre. Recapitulemos. Bubble y insertion, simples, cuadráticos, buenos para aprender. Insertion, además, sobrevive adentro de los grandes por su talento con datos casi ordenados.

[14:10] Merge, predecible, N por logaritmo de N siempre, estable, paga en memoria. Quick, el más veloz en promedio, dentro del mismo arreglo, pero cuídate del pivote. Y ahora la pregunta que de verdad importa. ¿Cuál de estos vas a escribir en tu trabajo?

[14:28] Ninguno, porque el lenguaje ya trae el suyo y es mejor que el que vas a escribir tú. Y no es casualidad. Cada uno de estos eligió su algoritmo a propósito, peleando casos límite que tú no vas a pensar. Python usa Timsort, un híbrido inteligente de merge e insertion que detecta pedazos ya ordenados en tu lista y los aprovecha en vez de rehacer trabajo.

[14:51] Y desde la versión 3.11 usa una variante llamada Powersort, que mejora justo la regla de qué pedazos fusionar primero para acercarse a lo óptimo. JavaScript, en el motor V8, también usa Timsort y desde 2019 el estándar del lenguaje obliga a que el ordenamiento sea estable en todos los motores, no solo en uno. Java es todavía más fino.

[15:15] Para números crudos usa un quick sort de doble pivote que parte en tres zonas a la vez y es rapidísimo. Pero para objetos cambia a Timsort, porque ahí la estabilidad sí importa y un objeto tiene identidad que hay que respetar.

[15:30] Y en C más más, el sort de la librería estándar arranca como quicksort, pero vigila si va camino al peor caso y si lo detecta, cambia de estrategia para no degenerar nunca a cuadrático. ¿Ves el patrón? Todos te dan N por logaritmo de N probado en batalla, con la estabilidad y los casos límite ya resueltos.

[15:52] Años de gente optimizando detrás de una sola línea. Por eso en la vida real llamas al sort del lenguaje y sigues con tu vida. Entonces, ¿para qué aprendiste los cuatro? Para entender qué pasa debajo de esa línea. Para saber por qué tu consulta con order by es lenta, por qué tu ordenamiento por dos columnas se rompió, por qué un millón de elementos tardó lo que tardó y por qué tu lenguaje eligió el algoritmo que eligió.

[16:22] Eso no te lo da el autocompletado. Te lo da entender el algoritmo. Fíjate que cada algoritmo lo explicamos por su big O. Por qué bubble es cuadrático y por qué merge es N por logaritmo de N. Ese número es la clave de todo lo que viste hoy.

[16:40] Así que si quieres dominarlo de verdad, ve ahora mismo a ver el vídeo de big O explicado con analogías. Está aquí en el canal, ya publicado, esperándote. Si esto te sirvió, suscríbete, que vamos a seguir desarmando los temas que de verdad caen en entrevistas.

[16:58] Y cuéntame en los comentarios cuál de los cuatro te costó más entender. Soy Torti y esto fue TortiCode.
