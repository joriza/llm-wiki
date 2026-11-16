# Google Sheets como base de datos: el momento exacto en que revienta

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=QKq3pffWbVA)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-19
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esta hoja es el sistema de inventario de una distribuidora real en donde tres personas la van a editar a la vez y un script de Python le escribe ventas cada minuto, pero en algún momento esta hoja va a reventar. Lo importante es que antes de comprar cualquier software, así todos los negocios en Latinoamérica, sobre todo, pasan por acá, crean una hoja de de Google como base de datos y no es tan mala idea como te dijeron. El problema es que muy pocos saben y muy pocos te explican dónde está la línea.

[00:24] Así que hoy día vamos a ver con código y con los límites reales de de Google en el 2026 cuál es el momento exacto en que se rompe y ya no puedes seguir usándola como pase gato. Pero spoiler, no se rompe por el tamaño, sino que se rompe por otra cosa. Igual importante pensarlo desde el dueño del negocio. Bullshit es gratis, está en el celular. Generalmente un contador o la contadora ya lo sabe usar, se comparte con un solo clic, guarda el historial de cambio y no hay que instalar nada ni llamar a nadie. Y

[00:50] eso para un negocio de tres personas es más de lo que la que la mitad de los sistemas que se venden te da. Y para un programador también es cómodo, o sea, leer una hoja desde Python son cuatro líneas. Así que la mayoría de las automatizaciones que se venden en Latam, bot, reporte, alerta, empiezan con una hoja de Google como base de datos. Por hecho yo también lo he hecho. Y la pregunta correcta no es si está bien esto, sino que es hasta cuándo. Y primero los números de verdad, porque

[01:10] circulan mucho falso. Zeldas el límite era 10,000ones por archivo y en 2026 Google lo subió a 20,000ones. Suena infinito, pero no lo es. Con 20 columnas con un millón de filas y mucho antes desde las 100,000 filas más o menos, la hoja empieza ya a arrastrarse si tiene fórmulas o formatos. Columnas son 18,272, editores al mismo tiempo 100 y el número que casi nadie conoce, el que sí te va a pegar. La son 300 lecturas y 300 escrituras por minuto por proyecto, 60 por minuto por usuario. Si tu script

[01:39] escribe una venta por fila, con 70 ventas en un minuto te va a devolver un error 429 y se va a quedar sin guardar. Y eso en una caja de un minimarket un día sábado te va a pasar. Y hay una lista de cosas que Google Sheet no tiene y una base de datos obviamente tiene.

[01:54] Por ejemplo, que son los tipos de datos. Una celda puede tener número, luego un texto, luego una fecha, pero una base de datos en las columnas siempre tienen que tener el mismo tipo de datos. Luego están las transacciones, no existe todo nada, tampoco están las llaves, nada impide que dos productos tengan el mismo código, por ejemplo, tampoco hay permisos por fila o ves todas las hojas, toda la hoja, perdón, o no ves nada y bloqueo. Dos personas pueden perfectamente escribir la misma celda al

[02:16] mismo tiempo. Para hacerlo esto en Python, simplemente tienes que conectar con Gs Spre y una cuenta de servicio, que es un usuario robot gratis de Google Cloud. Le comparten la hoja como a cualquier persona y listo. Puedes leer los productos como tabla, crear un data frame con las filas de este de estos productos. Puedes registrar una una venta con appen Ram estás añadiendo una línea, funciona y así es como se venden la mayoría de los bots que guardan en Google Sheet. Pero ahora si estás en una

[02:39] caja un día sábado con harta harto movimiento, incluso puedes hacer el ejercicio simular 100 ventas seguidas, una fila cada vez acá 60 y algo, te va a mandar el error de cuota excedida. Entonces, te va a quedar, te vas a quedar, perdón, con 40 ventas sin guardar, el negocio no va no se va a enterar y el dueño va a ver el reporte el lunes y no le va a cuadrar nada. Esto es lo que le pasa a un bot gratis cuando le va bien. Pero hay una solución y es solo una palabra, en vez de poner appen

[03:03] row, puedes ponerle append rows en plural y juntar las 100 100 ventas del minuto y y mandarla en una sola llamada. O sea, no necesitas estar mandando cada una de las ventas, sino que vas juntando y las vas mandando por bat. Entonces ya tendrías 100 filas, un request y cero errores. Y si vas a usar cheat como base, esta tiene que ser tu regla número uno como base, nunca una fila por en qué momento exacto revienta todo esto un el stock del producto 17, que son 10 unidades. La cajera, imaginen, vende

[03:30] tres desde su celular, va a leer 10, va a escribir siete y en el mismo segundo el script vende cuatro, leyó 10 y va a escribir seis. Pero, ¿cuánto te va a quedar? Deberían quedar tres, pero lo que va a pasar en la realidad es que va a quedar seis o siete según el que haya escrito la última vez. Entonces, en tu inventario van a haber tres unidades que van a desaparecer sin que nadie borrará nada. Y eso es lo que una base de datos va a resolver con con una transacción y que Google Sheet no puede [carraspeo]

[03:53] resolver. ¿Por qué? Porque no fue hecha para eso. Simplemente no es un bug de Google, sino que estás usando una hoja de cálculo como si fuera un banco. Pero hay dos formas más que podría reventar esta base de datos. Por ejemplo, alguien inserta una columna y todas las fórmulas y el script quedan apuntando a la columna equivocada. Y la última, alguien ordena la hoja y el ID de la fila 40 ahora está en la 300, pero el script sigue escribiendo en la 40. Entonces, ¿cuándo sí o cuándo no usar Google o

[04:18] cuándo migrar? Y la línea está básicamente en cuatro preguntas. La primera, escribe más de una persona o proceso al mismo tiempo. Y es, ya cruzaste la línea. Dos, ¿hay dinero o stock que tiene que cuadrar al peso? Y sí, también. tres, más de 50,000 filas o más de 70 escrituras por minuto. Ahí también ya cruzaste la línea. Y cuatro, alguien puede ordenar, insertar o borrar una columna sin avisarte. Ahí también usarás la Si contestaste, ¿no? A las 4, Google Sheet te va a servir

[04:45] perfectamente y probablemente te va a servir par de año, pero cuando cruzas la migración es menos dramática de lo que parece. Ese kulite es un archivo gratis y ya viene con Python. Importa la hoja en 10 líneas y la hoja de Google sigue existiendo como vista de solo lectura para el dueño. Actualizada por el script, lo mejor de los dos mundos, la base guardada, la hoja es lo que muestra el contenido. Igual voy a dejar el script de la demo y la hoja aquí en en mi Patreon, por si acaso. Pero bueno, si

[05:09] hoy tienes un negocio o un cliente que tiene un negocio funcionando sobre una hoja de Google, no te asustes, te va a servir hasta que cruces la línea que comenzamos, pero ahora sabes dónde está la línea, que eso es lo mejor. Y si ya lo estás usando ahí, pon en los comentarios cuántas filas tiene tu base de datos en Google, cuántas personas lo editan para ver de qué lado estás. Y obviamente si quieres ver cómo se automatiza Excel y cheat con Python desde cero, te voy a dejar el video aquí

[05:33] en pantalla.
