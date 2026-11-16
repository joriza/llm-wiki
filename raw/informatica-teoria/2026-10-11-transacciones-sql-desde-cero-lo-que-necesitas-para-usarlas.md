# Transacciones SQL desde cero: lo que necesitas para usarlas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=9N-ndDvIzWo)
- **Canal**: Torti Code
- **Publicado**: 2026-10-11
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:18

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Queda una unidad. Dos personas compran casi al mismo tiempo. Las dos consultas leen que hay una disponible. Cada solicitud decide venderla y escribe que ahora quedan cero. El inventario nunca se volvió negativo, pero tenemos dos pedidos para una sola unidad. Podrías envolver ambas operaciones en una transacción y seguir teniendo un problema si la decisión concurrente está mal planteada. Una transacción reúne cambios. El aislamiento y las operaciones que eliges determinan cómo

[00:29] conviven con las demás. Vamos a seguir esas dos compras. Primero cuando fallan y después con una condición que la propia base comprueba al modificar la fila. Veremos qué guarda una transacción, qué puede deshacer y por qué confirmar un pedido no equivale a confirmar un cobro en otro sistema. ¿Qué cambios deben quedar juntos?

[00:48] Nuestra tienda ficticia tiene una tabla de productos con el stock y una tabla de pedidos. Cuando se acepta una compra, hay que reducir la disponibilidad y registrar el pedido correspondiente. Si guardamos solo una de las dos cosas, los datos cuentan historias incompatibles.

[01:05] Una transacción permite tratar varias operaciones sobre la base como una unidad de trabajo. Empiezas la transacción, haces los cambios y, si todo salió bien, confirmas con commit. Si algo falla, deshaces los cambios de esa transacción con rollback. Por ejemplo, reducir el stock y luego fallar al insertar el pedido no debería dejar la unidad desaparecida. Si ambas escrituras pertenecen a la misma transacción y la aplicación la revierte ante el error, ninguna queda confirmada.

[01:36] El límite de esa unidad lo diseña quien programa. La base no sabe que tu negocio considera inseparables esas dos instrucciones si tú las ejecutas como operaciones independientes. Tampoco puede adivinar la regla de que solo aceptas un pedido cuando efectivamente conseguiste una unidad. En un planetario queda un asiento para la siguiente función. Dos taquillas reciben una solicitud. Una encargada mantiene el registro común. La primera solicitud obtiene una reserva provisional, todavía

[02:06] sin entregar la entrada definitiva. Al confirmar, registra al visitante y deja el asiento ocupado. Si cancela, devuelve esa disponibilidad. El asiento representa nuestra unidad de stock. Las taquillas son conexiones diferentes. La reserva provisional ilustra cambios todavía no confirmados. Confirmar corresponde a commit. Descartar corresponde a rollback. La segunda solicitud necesita conocer el resultado pertinente antes de decidir si aún puede tomar esa unidad. La encargada sirve

[02:37] para ver el arbitraje de este asiento, no para imaginar que una base procesa toda su actividad con una sola persona. Los motores pueden coordinar datos distintos de maneras diferentes. Volvamos a las filas para observar qué pasa cuando las dos compras leen el mismo valor. La compra A consulta stock y obtiene uno. La compra B consulta antes de que A termine y también obtiene uno. Las dos aplicaciones calculan 1 - 1 y envían una escritura con el valor cero. Si esa secuencia se permite y

[03:08] ambas registran un pedido, el último número almacenado puede seguir siendo cero. Por eso, una regla que impida stock negativo no detecta necesariamente esta venta de más. El problema fue tomar dos decisiones basadas en una disponibilidad que cada solicitud consideró suya. La condición de compra quedó separada de la modificación que debía reservarla. Tener begin y commit alrededor del código no basta para asumir que nadie más puede leer o modificar datos entre tus instrucciones.

[03:37] Esa convivencia depende del aislamiento del motor y de las operaciones concretas. Necesitamos expresar una operación distinta. Reduce el stock de este producto solo si, al realizar esa modificación, todavía queda una unidad.

[03:52] Luego debemos revisar si realmente modificó la fila antes de crear un pedido. Reservar con una condición que se cumple al escribir. La instrucción decisiva es un update que resta uno al valor actual y lleva una condición. Stock mayor que cero para el producto elegido. La base intenta hacer la modificación bajo sus reglas de concurrencia. La biblioteca que conecta la aplicación con la base, llamada driver, informa cuántas filas afectó.

[04:21] El campo o método para consultar ese resultado depende de la biblioteca que uses. Si afectó una fila, esta transacción consiguió descontar una unidad. Entonces, inserta el pedido y confirma ambos cambios juntos. Si no afectó ninguna, no obtuvo stock.

[04:37] Revierte y responde que ya no hay disponibilidad. Un error también debe conducir a la recuperación correspondiente, no a informar compra exitosa. La diferencia con el primer intento es que no traemos el uno a la aplicación para devolver después un cero calculado con una lectura vieja. Pedimos a la base modificar su valor bajo una condición dentro de la misma operación.

[04:59] Seguimos necesitando la transacción porque el descuento y el pedido son dos escrituras. Y seguimos necesitando revisar el resultado del update. Si insertas el pedido, aunque no se haya reservado nada, acabas de ignorar la protección. Ejecutamos una prueba local con dos conexiones a SQLite y una unidad inicial. La primera empieza una transacción de escritura, hace el update condicional y afecta una fila. La segunda intenta comenzar su escritura mientras la primera todavía está abierta

[05:29] y debe esperar. La primera registra el pedido y confirma. Entonces, la segunda puede continuar. Su update encuentra stock cero y no afecta filas. No crea pedido y revierte. El resultado que obtuvimos es cero unidades disponibles y un solo pedido. En otra prueba, descontamos una unidad y revertimos. El stock volvió a uno. SQLite admite un solo escritor a la vez. Esa prueba no demuestra bloqueos por fila de Postgres.

[05:56] En Postgres, con el nivel read committed, un update que encuentra una fila que otra transacción está modificando puede esperar su resultado. Si la primera confirma, la condición se vuelve a comprobar sobre la versión actualizada de esa fila. Para nuestro producto, eso permite que la segunda compra vea que ya no cumple stock mayor que cero. La condición y el motor están expresados. No estamos prometiendo el mismo comportamiento exacto en cualquier base y cualquier nivel de aislamiento.

[06:24] Atomicidad, aislamiento y las reglas de los datos. Las transacciones suelen explicarse con las letras ACID. Atomicidad es lo que vimos al conservar juntos descuento y pedido, o deshacer ambos. Consistencia significa que las transacciones deben llevar la base entre estados que respetan sus reglas, restricciones de unicidad, relaciones y condiciones que hayas definido, junto con la lógica correcta de la aplicación. La base no inventa esas reglas comerciales. Una clave foránea puede exigir que el

[06:56] producto del pedido exista. Una restricción puede impedir un stock negativo. Pero el ejemplo de dos pedidos con stock cero mostró que eso no alcanza para expresar toda la política de venta. Aislamiento trata de qué efectos de unas transacciones pueden observar otras y qué interferencias se permiten mientras se ejecutan. No es simplemente poner una pared que hace desaparecer a los demás usuarios. Durabilidad es la persistencia de los cambios confirmados según las garantías y la configuración del

[07:25] sistema. Los motores utilizan mecanismos como registros de recuperación. Eso no convierte commit en una copia de seguridad contra borrar la tabla por error, ni sustituye planificar fallos de almacenamiento y recuperación. En Postgres, read committed permite que una consulta lea una instantánea de datos confirmados al empezar esa consulta.

[07:46] Otra consulta posterior de la misma transacción puede encontrar cambios que alguien confirmó entre ambas. Esa es una razón por la que leer una vez no reserva automáticamente el resultado. Los motores ofrecen niveles más fuertes con distintas garantías. Serializable busca que el resultado de transacciones que confirman sea compatible con algún orden en que se hubieran ejecutado una después de otra. Para conseguirlo puede rechazar una transacción que la aplicación deberá reintentar. No

[08:14] significa que todas se ejecuten físicamente de una en una, ni que desaparezcan las posibilidades de error. Debes conocer qué nivel usas, qué reglas necesitas defender y cómo manejas los conflictos que ese nivel puede informar.

[08:28] Otra técnica es leer las filas con un bloqueo explícito, como select for update cuando el motor lo soporta, y decidir después manteniendo esa protección hasta terminar. Puede servir para decisiones más complejas. Para restar una unidad de una fila, nuestro update condicional expresa la intención de forma directa.

[08:47] Cómo diseñar el trabajo alrededor de la transacción. Regresemos al último asiento del planetario. Si la primera taquilla mantiene una reserva provisional mientras su cliente conversa 10 minutos, la segunda espera demasiado.

[09:02] En la base sucede algo similar cuando dejas una transacción abierta mientras haces trabajo lento que no necesitaba estar dentro. Conviene mantener pequeñas esas unidades, preparar lo que puedas antes, tomar la protección necesaria, guardar los cambios y terminar.

[09:19] Evita esperar a que el usuario llene otro formulario o a que un servicio remoto responda mientras retienes un bloqueo de stock. Cuando una transacción necesita varias filas, también importa el orden. Si una tiene bloqueado el producto A y espera B, mientras otra tiene B y espera A, aparece un interbloqueo. El motor puede detectarlo y cancelar una de ellas para romper la espera circular.

[09:44] La aplicación debe manejar ese error y, si corresponde, reintentar la transacción completa con un límite. Tomar recursos en un orden coherente ayuda a evitar algunos interbloqueos. Un reintento tampoco debe producir efectos externos repetidos que no se revierten con SQL. Aquí aparece el cobro. Una transacción sobre nuestra base no incluye automáticamente al proveedor de pagos. Si cobras por una API y después haces rollback, el dinero no vuelve solo porque la fila del pedido desapareció.

[10:16] Para una compra real, puedes necesitar estados como reserva pendiente, pago confirmado y cancelación. Identificadores de operación y un proceso de recuperación cuando una respuesta no llega. La forma exacta depende de la integración. Lo que no puedes hacer es dibujar una caja llamada transacción alrededor de dos sistemas y atribuirle una garantía que no existe.

[10:39] Las transacciones sirven también para registrar movimientos de inventario, guardar un documento junto con sus relaciones o cambiar varias filas que deben respetar una regla común. No conviene agrupar todo un proceso de negocio largo solo para llamarlo atómico. Si una única instrucción ya expresa completamente el cambio que necesitas, el motor puede ejecutarla como su propia transacción. Abrir una explícita tiene sentido cuando debes conservar una unidad mayor o controlar el contexto. La herramienta se elige por

[11:09] la regla que estás protegiendo. Las dos compras vuelven a llegar con una unidad disponible. La primera transacción ejecuta el descuento condicional y obtiene una fila afectada. Registra el pedido y confirma. La segunda espera lo que el motor necesita, vuelve a evaluar la condición y obtiene cero filas afectadas. Devuelve que no hay stock y no inventa otro pedido. Si la primera no logra registrar el pedido y revierte, su descuento no queda confirmado. La disponibilidad puede volver a usarse. En

[11:39] ambos caminos, descuento y pedido, conservan la relación que queríamos. Una transacción define qué cambios quedan juntos. La condición, las restricciones y el aislamiento defienden cómo se toman decisiones con otras transacciones presentes. Commit confirma esa unidad dentro de la base. No confirma por sí solo los efectos de otros servicios. Dos compras pueden interferirse aunque no avancen en dos procesadores a la vez. El video de concurrencia y paralelismo, en la tarjeta, explica esa diferencia con

[12:09] más ejemplos. En nuestra tienda ya sabemos qué parte debía decidirse de forma indivisible. Conseguir la unidad antes de prometer el pedido.
