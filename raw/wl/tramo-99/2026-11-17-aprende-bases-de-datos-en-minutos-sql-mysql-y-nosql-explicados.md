# Aprende BASES DE DATOS en Minutos | SQL, MySQL y NoSQL Explicados.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Xzs3iaI7pTs)
- **Canal**: Diorys Michael
- **Publicado**: 2026-11-17
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 04:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Tus likes, tu historial de compras, tus mensajes, hasta tu puntaje en ese juego que no puedes dejar. Todo eso tiene que guardarse en algún lugar. Ese lugar se llama Base de datos y hoy vas a entender cómo funciona. Bienvenido. En los próximos minutos vas a aprender los fundamentos de las bases de datos sin experiencia previa. Y para que sea fácil, vamos a construir juntos la base de datos de una pizzería, la pizzería Donbite. Veremos qué es una base de datos, qué son las tablas, las

[00:34] claves, las relaciones y cómo se le hacen preguntas con SQL. Una base de datos es una colección de información organizada para poder guardarla, encontrarla y cambiarla de forma rápida y segura. Piense en la libreta donde Don Bite anotaba los pedidos. Con 10 clientes funciona. Con 10,000 encontrar un pedido se vuelve imposible. Se pierden hojas y dos personas no pueden escribir a la vez.

[01:02] Una base de datos resuelve exactamente eso. La forma más común de organizar los datos es en tablas parecidas a una hoja de cálculo. Creamos la tabla clientes. Cada columna es un dato que queremos guardar, nombre, teléfono y ciudad. Y cada fila es un registro, es decir, un cliente completo. Ana de Santo Domingo es una fila, Luis de Santiago es otra.

[01:32] Cada columna guarda un solo tipo de dato. El nombre es texto, el teléfono también es texto. El precio de una pizza es un número decimal y la fecha del pedido es una fecha. Definir el tipo evita errores. La base de datos no te dejará guardar la palabra hola donde va un precio.

[01:51] Ahora, un problema. Tenemos dos clientas llamadas Ana. ¿Cómo sabemos cuál es cuál? Para eso existe la clave primaria, una columna con un valor único para cada fila. Normalmente un número llamado ID, Ana número uno y Ana número CCO ya no se pueden confundir. La clave primaria nunca se repite y nunca está vacía.

[02:12] Ahora creamos la tabla pedidos. En lugar de copiar el nombre y el teléfono del cliente en cada pedido, guardamos solo su ID en una columna llamada cliente ID. A esa columna se le llama clave foránea porque apunta a la clave primaria de otra tabla. Así, si Ana cambia de teléfono, lo cambias en un solo lugar y todos sus pedidos siguen conectados a ella.

[02:36] Para hablar con una base de datos, usamos SQL, un lenguaje hecho para hacer preguntas. Por ejemplo, select nombre from clientes, where ciudad igual a Santiago. Se lee casi como una frase en inglés. Selecciona el nombre de los clientes donde la ciudad sea Santiago y la base de datos te responde en milisegundos, aunque tenga millones de filas.

[03:04] Casi todo lo que hace una aplicación con sus datos se resume en cuatro operaciones conocidas como CRUD. Crear con insert para agregar un cliente nuevo. Leer con select para consultarlo. Actualizar con update para cambiar su teléfono. Y borrar con delete para eliminarlo. Cada vez que publicas, editas o borras algo en una app, estás usando una de estas cuatro.

[03:30] Las bases de datos con tablas como Mysquel o Postgresquell se llaman relacionales. También existen las llamadas no SQL como DB que guardan los datos en documentos más flexibles parecidos a fichas. Las relacionales son ideales cuando los datos tienen una estructura clara como nuestra pizzería. Para empezar, aprende primero las relacionales.

[03:54] Resumamos. Una base de datos guarda información organizada. Se divide en tablas con filas y columnas. Cada columna tiene un tipo de dato. La clave primaria identifica cada fila y las claves foráneas conectan tablas. Con SQL le haces preguntas y con Crude creas, lees, actualizas y borras datos. Si este video te ayudó, suscríbete y deja en los comentarios qué tabla crearías tú.
