# Cómo funciona un índice en una base de datos (explicado facil)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ya_eWbTfHXE)
- **Canal**: Torti Code
- **Publicado**: 2026-09-24
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Tienes una tabla con 10,0000 de clientes y buscas a una sola, Ana Ruiz, por su correo. La base de datos tarda 105 milisegundos. Parece poco, hasta que miras qué hizo para encontrarla. Leyó 140,000 páginas, la tabla completa para devolver una fila. Y si esa es la búsqueda de tu inicio de sesión, lo repite con cada persona que entra. Ahora escribes una línea más. La misma consulta tarda 40 microsegundos, más de 2,000 veces menos, y lee cinco páginas.

[00:35] Esa línea crea un índice. Al terminar vas a saber qué construye. ¿Por qué le bastan cinco páginas para encontrar una fila entre 10 millones? ¿Qué te cobra a cambio? ¿Y por qué a veces lo creas y tu consulta sigue igual de lenta? Hola, soy Torty y esto es Torticode.

[00:52] ¿Cómo busca una base de datos sin índice? Piensa en el archivo de un colegio con 70 años de historia. En el sótano hay estantes con unas 500 cajas numeradas y en cada una unos 70 expedientes de exalumnos. Cuando llega un expediente nuevo, el archivista lo guarda en una caja que tenga espacio, casi siempre la última.

[01:14] No hay orden alfabético. El de Ana Ruiz puede quedar entre el de un Vargas y el de una costa. Un día Ana llega a la ventanilla a pedir su certificado. En una esquina hay un fichero pequeño ordenado por número de matrícula, pero Ana no recuerda el suyo.

[01:31] La archivista no sabe en qué caja está su expediente. Abre la caja uno, revisa los 70, la cierra, abre la dos y aunque encuentre a Ana en la caja 312, sigue hasta la última porque nada le asegura que no haya otra. Ruiz Postgress, la base de datos de este ejemplo, guarda las filas de la misma manera. Las agrupa en páginas, bloques de 8 KB que lee y escribe de una vez. Esa es la caja. Cada fila nueva va a una página con espacio libre, sin ningún orden por correo ni por nombre. Cuando buscas por una

[02:05] columna sin índice, el motor abre todas las páginas y compara cada fila con lo que pediste. Eso se llama lectura secuencial y es lo que hizo nuestra consulta. Un archivo de 140,000 cajas, 10 millones de comparaciones y una sola fila encontrada.

[02:23] Las cifras de este video salen de una prueba en una computadora con postgress 18 y los datos ya en memoria. Los milisegundos cambian de una máquina a otra. Las páginas leídas, ¿no? En esa prueba, Postgress hizo una lectura en paralelo, tres procesos, como tres archivistas con un pasillo cada una, y tardó 105 milisegundos en lugar de los casi 300 de un solo proceso, pero abrieron las mismas páginas y esas crecen con la tabla. ¿Cómo funciona un índice por dentro? Ahora el colegio le

[02:56] encarga al archivista un fichero por nombre. Es un mueble aparte con una tarjeta por cada expediente. En cada tarjeta anota el nombre del exalumno, apellido primero y dónde está su expediente. Caja 312, lugar 7. Después ordena todas las tarjetas alfabéticamente.

[03:15] Los expedientes no se mueven de sus cajas. Lo único ordenado es el fichero. ¿Por qué no ordenar directamente las cajas? Porque solo se pueden ordenar de una manera y cada expediente nuevo obligaría a correr los demás para abrirle hueco. Ficheros, en cambio, puedes tener varios sin tocar una sola caja. Eso es un índice y se ordena por el dato con el que preguntas. En el archivo, el nombre, en tu tabla, el correo. Cuando escribes la línea que crea un índice sobre esa columna, la

[03:47] base de datos lee la tabla una vez. Toma el correo de cada fila junto con su ubicación. la página y la posición donde está y guarda esas parejas ordenadas por correo en una estructura aparte. La tabla queda igual. El índice vive a su lado, también en páginas de 8 KB.

[04:07] El fichero de matrículas también existe en tu tabla. La clave primaria, el número que identifica cada fila, trae su propio índice desde el principio. Pero 35,000 tarjetas siguen siendo muchas. Por eso el fichero tiene cajones con un rótulo al frente de Abada a Castro, de Castro a fuentes y así. Dentro de cada cajón, separadores con pestaña, dividen las tarjetas en tramos de unas 50. Para Ana Ruiz, la archivista lee los rótulos, abre el cajón que la contiene, busca la pestaña de su tramo y ahí, entre unas

[04:39] pocas tarjetas está la suya. Caja 312, tres miradas y un solo viaje a los estantes. El índice de postgres tiene esa misma forma y se llama árbol B. Arriba hay una sola página, la raíz, que parte todos los correos en tramos y dicen qué página sigue cada tramo, como los rótulos del mueble. Debajo hay páginas intermedias que parten cada tramo en tramos más finos como las pestañas y abajo del todo están las hojas como los tramos de tarjetas. Cada correo en orden con la ubicación de su

[05:12] fila. Con 10 millones de correos, nuestro árbol tiene un nivel más que el fichero, la raíz, dos niveles intermedios y las hojas. Encontrar a Ana fue leer una página de cada nivel y después la página de la tabla donde está su fila. cinco páginas en vez de 140,000.

[05:31] Y el árbol crece muy despacio en altura porque cada página intermedia apunta a más de 100 páginas de abajo. Con una tabla 100 veces más grande tendría uno o dos niveles más. Como las hojas están en orden y cada una sabe cuál le sigue, el mismo índice sirve para rangos. Si indexas la fecha de registro y pides los clientes de marzo, la base baja hasta el primer día y avanza por las hojas hasta el último. My SQL, SQL Server y SQLate usan árboles de la misma familia, cada uno con sus detalles. Lo que cuesta un

[06:06] índice. Vuelve al archivo. Llega el expediente de un exalumno nuevo, Pedro Vargas. Antes bastaba con meterlo en una caja con espacio. Ahora, además, el archivista escribe su tarjeta y la mete en su lugar exacto del fichero. Si ese tramo ya llegó a su tope, lo parten dos con un separador nuevo. Y si el colegio tiene cuatro ficheros, por matrícula, por nombre, por ciudad de nacimiento y por año de grado, son cuatro tarjetas cada una en su sitio. Tu base de datos paga lo mismo. Cada fila que insertas

[06:41] agrega una entrada en cada índice de la tabla, en su sitio dentro del árbol. Si una hoja se llena, se parte en dos. Si se llena la raíz, el árbol gana un nivel arriba y así todas las hojas quedan a la misma profundidad. Cambiar el valor de una columna indexada también obliga a escribir en el índice. En nuestra prueba, insertar el mismo millón de filas tardó poco más de 2 segundos en una tabla con un solo índice, el de la clave primaria, y casi ocho en otra con cuatro. más del triple. Además, el

[07:12] índice del correo ocupa 547 MB, la mitad de lo que ocupa la tabla. Por eso no se indexa todo. Cada índice se paga en cada escritura y en disco y solo devuelve algo cuando una consulta lo usa. Cuando la base de datos no usa el índice, en el archivo trabaja alguien más, la jefa.

[07:34] Antes de cada búsqueda, decide cómo hacerla sin abrir ninguna caja, con una planilla que dice más o menos cuántos expedientes hay de cada ciudad. Si la secretaría pide los de todos los nacidos en la capital, casi un tercio del archivo, la jefa no manda a usar el fichero por ciudad. Hay alguno en prácticamente cada caja, así que igual habría que abrirlas todas y encima leer casi 12,000 tarjetas.

[08:02] Mejor recorrer las cajas en orden una sola vez. Si pides los nacidos en Puntarenas, una veintena, usa el fichero y abre solo unas 20 cajas. Tu base de datos tiene esa jefa, el planificador. Antes de ejecutar una consulta, estima cuántas filas traerá con estadísticas sacadas de una muestra de cada columna, como cuáles son los valores más comunes.

[08:28] Luego, calcula el costo de varios caminos y elige el más barato. Lo probamos con un índice sobre la ciudad. Para Ciudad de México, tres de cada 10 clientes, el planificador eligió leer la tabla completa. Cuando lo obligamos a usar el índice, no se ahorró ninguna página, leyó toda la tabla y además el índice. Para Puntarenas, unos 5,000 clientes, eligió el índice, leyó unas 5,000 páginas en lugar de 140,000 y tardó 5 milisegundos en lugar de 160.

[09:02] Por eso, en una tabla pequeña casi nunca lo usa. Leer unas pocas páginas completas es lo más rápido. Y para ver qué decidió, le pides el plan con explain. Si dice que recorrió la tabla, no usó el índice. Si aparece el nombre de tu índice, sí. El caso que más confunde, el índice existe. Buscas una sola fila y aún así la base lo ignora.

[09:29] Pasa cuando preguntas por algo distinto de lo que está ordenado. Pídele al archivista todos los apellidos que terminan en EZ. El fichero está ordenado por cómo empieza cada apellido, así que González, Pérez y Vázquez están en cajones distintos. El orden no le ahorra nada, tiene que revisarlo todo. En tu base pasa lo mismo con un comodín al principio. Si buscas correos que contengan cierto texto en cualquier parte, el orden del índice no ayuda y la base recorre la tabla. Para eso existen

[09:59] otros tipos de índice que quedan para otro día y hay un caso en que la base es más literal que cualquier archivista, las funciones. Si en la condición pasas el correo a minúsculas antes de comparar, para el planificador ese ya es otro dato y solo le sirve un índice construido sobre ese mismo cálculo. En nuestra tabla todos los correos ya estaban en minúsculas y aún así esa consulta leyó la tabla completa y tardó casi un segundo. La solución es indexar exactamente lo que preguntas. un índice

[10:28] de expresión sobre el correo en minúsculas que la base calcula al escribir cada entrada. Con él, la misma consulta volvió a leer cinco páginas. Tu turno. Mira bien una tarjeta del fichero. Guarda dos datos, apellido y después nombre. Y están ordenadas por apellido y dentro de cada apellido por nombre. En tu base, eso es un índice compuesto, un solo índice sobre dos columnas. En ese orden, buscar a Ana Ruiz Rodríguez es inmediato. Seis páginas. Todos los Ruis Rodríguez, sin importar el nombre, también están

[11:04] juntos. Ahora alguien pide a todas las Ana, ¿le sirve el fichero? Piénsalo un segundo. Casi nada. Las A están repartidas detrás de cada apellido. Una en Acosta, otra en Ruiz, otra en Zapata. Revisar el fichero entero y después ir a las cajas sale más caro que recorrerlas.

[11:23] En nuestra tabla hay 40,000 apellidos distintos y el planificador eligió leer la tabla completa. Si hubiera solo un puñado de apellidos, la archivista podría saltar de sección en sección buscando Ana en cada una. Y desde la versión 18 postcres hace eso cuando le conviene. La regla, en un índice de varias columnas, el orden importa y rinde cuando la consulta fija las primeras. No es un detalle de examen. En marzo de 2021, GitJob cambió el orden de un índice para acelerar una consulta.

[11:54] Otra consulta que dependía de ese índice pasó a recorrer la tabla completa y el sitio funcionó con problemas durante una hora y 10 minutos. Hasta aquí el archivo. Tu base de datos no camina ni se cansa. Lo que cuenta son las páginas que lee, casi siempre desde memoria en microsegundos.

[12:12] Y su jefa no abre las cajas. decide con estadísticas de una muestra, así que puede equivocarse. Recorre todo una vez más. Ana inicia sesión y tu aplicación busca su correo. El planificador estima que ese correo trae una sola fila y ve que hay un índice ordenado justo por esa columna, así que lo elige. La base lee la raíz del árbol, baja por dos páginas intermedias, llega a la hoja con el correo de Ana, toma la ubicación de su fila y lee esa página de la tabla. cinco páginas. Si mañana la pregunta no

[12:47] coincide con ese orden o pide un tercio de la tabla, el mismo planificador recorre todo y ya sabes por qué. En dos frases, sin índice, la base lee la tabla entera para encontrar una fila. Con un índice baja por un árbol ordenado de pocos niveles hasta la ubicación exacta.

[13:06] Ese orden se paga en cada escritura y solo ayuda cuando preguntas por el valor tal como está ordenado y traes pocas filas. Tu búsqueda ya tarda una fracción de milisegundo, pero si una pantalla con 100 pedidos hace una consulta por cada uno, suma 100 viajes y vuelve a sentirse lenta. Eso es el problema n + 1. Y en la tarjeta te dejo el video que lo explica.
