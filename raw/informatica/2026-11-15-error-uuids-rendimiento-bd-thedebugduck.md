# El error con UUIDs que destruye el rendimiento de tu Base de Datos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=KiuZT8XYYdw)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-09-12
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:40

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a suponer que te toca trabajar en un nuevo desarrollo. En muchas empresas grandes hay un equipo de arquitectura que define de antemano el diseño de la base de datos y entrega las especificaciones listas para que el desarrollador solo las implemente sin salirse de la norma.

[00:17] Pero en otros proyectos donde no existe esa figura y la historia de usuario solo dice crear entidad pedido, la decisión del tipo de ID recae totalmente en ti. Sobre la mesa tienes tres opciones principales. Big serial o identity, el entero de 64 bits de toda la vida, el que viene por defecto en los ORM y UUID V4, el identificador de 128 bits completamente aleatorio generado por funciones como gen random UUID, muy popular porque se ve más seguro.

[00:50] Y UUID V7, la versión moderna que sigue siendo un UUID de 128 bits pero que incluye una marca de tiempo al inicio para ser ordenable. En el equipo alguien comenta que usar enteros autoincrementables es de principiantes y que con un UUID nadie podrá adivinar el número de pedido. Como nadie definió una regla estricta, eliges UUID V4. Todo parece una decisión impecable.

[01:19] Tres meses después, con la aplicación en producción, la inserción de nuevos pedidos empieza a volverse lenta. El uso de CPU en PostgreSQL no está alto por cálculos matemáticos, sino porque la base de datos pasa demasiado tiempo buscando espacio libre en el disco.

[01:37] Cada ID nuevo cae en una página de memoria totalmente distinta del índice. El disco duro lee y escribe sin parar y el problema no es el concepto de UUID en abstracto, es haber sentado a un UUID V4 aleatorio en la llave primaria de un motor relacional. Elegiste el ID aleatorio creyendo que era una alternativa más robusta, pero la forma en que el motor de la base de datos gestiona esa información es completamente física. PostgreSQL organiza las llaves primarias mediante una estructura de datos llamada árbol

[02:11] B-tree. Cuando los IDs llegan en orden secuencial, como ocurre con un entero serial o una identity, la nueva inserción se realiza siempre en la última hoja del árbol. Esa última página casi siempre está guardada en la memoria RAM, por lo que la base de datos escribe de inmediato sin tener que dividir hojas constantemente. Por eso, los enteros autoincrementables resultan tan eficientes en un servidor relacional tradicional. En cambio, si el ID es aleatorio, como un UUID v4, cada

[02:41] inserción cae en una página cualquiera del árbol. El motor se ve obligado a buscar una página vieja en disco, subirla a la memoria RAM, dividir la página en dos para meter el nuevo valor y volver a guardarla en disco. Con millones de registros, el índice entero ya no entra en la memoria RAM y la base de datos colapsa en operaciones de lectura y escritura. En motores como MySQL con InnoDB es todavía peor, porque los datos de la tabla se almacenan físicamente ordenados por su llave

[03:09] primaria, por lo que un UUID v4 no solo fragmenta el índice, sino que reordena físicamente la tabla completa en cada inserción. Al otro lado de la balanza, está el equipo que cometió el error opuesto. Dejaron el entero bigserial y expusieron directamente ese número en la URL pública del sistema.

[03:30] dominio.com/pedidos/1847 El pedido del siguiente cliente es el 1848. Para vulnerar esto no se necesita un ataque informático complejo. Si un usuario cambia la URL a 1846 o 1845 y tu backend solo verifica si el usuario inició sesión, pero olvida validar si el pedido realmente le pertenece a él, cualquier persona puede ver los datos de otros clientes.

[04:01] Esta vulnerabilidad se conoce como IDOR, Insecure Direct Object References. Pero incluso si la seguridad y los permisos están impecablemente bien programados, el número expone información del negocio. Si un cliente realiza una compra en la mañana y recibe el ID 1847 y hace otra compra en la tarde y recibe el ID 1910, cualquiera puede calcular que la empresa vendió exactamente 63 pedidos en ese rango de tiempo.

[04:32] El contador interno de tu base de datos no es un dato público y exponerlo en el enlace de seguimiento es un fallo de diseño. Imagina este problema como las taquillas de un centro de distribución de paquetes. Llega un paquete y el encargado abre la siguiente puerta libre al final del pasillo.

[04:50] Es un proceso rápido. Las entregas de hoy están todas juntas y el mapa del lugar no se desorganiza. Ese es el comportamiento de un entero serial. Las inserciones van siempre al final de la fila. El inconveniente surge si el mensaje que recibe el cliente dice, "Su paquete está en la taquilla 1847."

[05:10] El cliente solo debe contar las puertas para saber cuántos paquetes han llegado en el día. La alternativa que se puso de moda fue asignarle a cada paquete un código al azar de 36 caracteres. Nadie puede adivinar la puerta, lo cual es excelente para la privacidad.

[05:27] Sin embargo, ahora el encargado del depósito debe caminar por todo el edificio buscando un hueco libre entre taquillas que se usaron hace 6 meses para guardar un paquete nuevo. Cada entrega abre una puerta ubicada en un lugar completamente diferente.

[05:41] El pasillo se fragmenta y el trabajo se vuelve ineficiente. Ese es el impacto exacto de usar UUID v4 como llave primaria. El problema no es que el código sea largo, sino que el lugar de inserción nunca está al final. Esto no es una opinión teórica, es una lección documentada por la industria.

[06:00] En el año 2012, el equipo de ingeniería de Instagram publicó en su blog técnico cómo generaban sus identificadores únicos. Explicaron que intentaron usar UUIDs totalmente aleatorios como llave primaria en PostgreSQL, pero el árbol B-tree dejó de recibir las escrituras al final de las páginas.

[06:19] Con la escala de millones de fotos subidas por los usuarios, el servidor entró en una tormenta constante de lecturas y escrituras en el disco duro, haciendo imposible sostener el servicio. Lo analizaron, documentaron el fallo y abandonaron esa arquitectura.

[06:35] El diseño que implementaron después, basado en un identificador personalizado de 64 bits que combina tiempo y shard, ya lo explicamos en un video anterior. Lo importante aquí es identificar la equivocación que muchos desarrolladores cometen en proyectos habituales, aplicar gen_random_uuid en la llave primaria porque se ve bien para sistemas distribuidos, cuando en realidad tienen un único servidor PostgreSQL tradicional.

[07:01] Se quedan con todo el impacto de rendimiento del UUID sin necesitar la arquitectura distribuida por la que fue concebido. Cuando intentas solucionar esto utilizando un entero secuencial de 64 bits, pero generado de forma personalizada en el servidor, aparece otro límite técnico inesperado.

[07:19] Twitter lo descubrió de manera muy pública con la creación de su algoritmo Snowflake. Este sistema generaba números de 64 bits tan grandes que superaban la capacidad de representación de JavaScript en el navegador. En JavaScript, el tipo de dato number solo puede representar enteros de forma exacta hasta 2 elevado a 53 - 1. El límite conocido como number.max_safe_integer.

[07:46] Cuando el servidor enviaba un ID superior a ese valor en formato JSON, el navegador lo redondeaba automáticamente. El resultado fue que dos tweets totalmente diferentes terminaban con el mismo ID dentro de la interfaz del usuario.

[08:01] Twitter tuvo que modificar su API para enviar una propiedad adicional llamada ID_STR, entregando el número en formato de cadena de texto. Seleccionar la estructura del ID en la base de datos no sirve de nada si no consideras cómo se comportan los tipos de datos al viajar por la red hacia el cliente. Ahora bien, analicemos el escenario opuesto. En un servidor PostgreSQL o MySQL de un solo nodo, la inserción ordenada por tiempo es tu mejor aliada.

[08:32] Pero si trabajas en una base de datos distribuida como CockroachDB, TiDB o Spanner, la situación se invierte por completo. Las bases de datos distribuidas dividen los datos en rangos de llaves, ranges, repartidos entre múltiples servidores.

[08:48] Si insertas [resoplido] datos con llaves estrictamente secuenciales, como un serial, todos los registros nuevos del día van a caer exactamente en el mismo nodo del clúster. Un solo servidor se come el 100% del trabajo de escritura mientras los demás están desocupados. A este problema se le conoce como un hotspot. La propia documentación de CockroachDB advierte que nunca debes indexar llaves secuenciales si buscas alto rendimiento de escritura y recomienda usar UUIDv4 para esparcir la

[09:18] carga de forma uniforme entre todos los nodos del sistema. Lo que en PostgreSQL era una ventaja de almacenamiento, en un entorno distribuido se convierte en un cuello de botella masivo. Usar serial o un ID secuencial no es siempre la solución. Depende directamente de si el motor utiliza un árbol B-tree centralizado o una arquitectura de rangos distribuidos.

[09:41] En el año 2024 se publicó oficialmente el RFC 9562, el cual introdujo el estándar UUID V7. La diferencia fundamental de UUID V7 con respecto a la versión V4 es que los primeros 48 bits del identificador están reservados para guardar una marca de tiempo en milisegundos, timestamp.

[10:03] Esto significa que los IDs generados se ordenan de forma cronológica natural a medida que se van creando. En un motor con árbol B-tree de un solo nodo, la inserción vuelve a realizarse al final del índice, exactamente igual de eficiente que un serial, pero con una ventaja enorme. Cualquier microservicio o cliente puede generar el ID de manera independiente en su propio código sin necesidad de consultar a la base de datos para obtener el siguiente número de una secuencia central.

[10:33] PostgreSQL en sus versiones recientes ya empieza a incluir soporte para UUID V7. Siguiendo la analogía de las taquillas, el código de acceso sigue siendo un hash imposible de adivinar, pero el encargado llena las puertas ordenadamente de izquierda a derecha en la sección de hoy sin buscar espacios vacíos del año pasado.

[10:53] Sin embargo, en bases de datos distribuidas como CockroachDB, ese mismo orden implícito de UUID V7 puede volver a causar hotspots. UUID V7 no es una solución universal. Es la herramienta precisa cuando tu motor relacional requiere escrituras ordenadas y tu arquitectura necesita generar IDs únicos sin depender de una secuencia centralizada.

[11:18] Si tu infraestructura se compone de un solo servidor de base de datos relacional, IDs no se exponen directamente en las URLs ni en las APIs públicas, utilizar bigserial o identity sigue siendo la solución más limpia y eficiente.

[11:36] Ocupa solo 8 bytes de almacenamiento por fila, frente a los 16 bytes de un UUID. Mantiene los índices pequeños y garantiza que cada nueva inserción sea óptima al escribir al final del árbol B-tree. Además, te permite ordenar listados de forma natural sin sobrecargar el motor.

[11:54] No necesitas migrar a UUID V7, ni implementar sistemas complejos de IDs distribuidos si la escala de tu proyecto no lo exige. La configuración por defecto que incluyen frameworks como Prisma o Entity Framework con autoincrementables no está mal diseñada. Está pensada para mantener la salud del índice B-tree por defecto.

[12:14] El error nunca estuvo en usar enteros, estuvo en exponerlos hacia el exterior o cambiarlos a UUID V4 sin evaluar cómo impactaba al motor. Hay un peligro silencioso cuando decides cambiar el tipo de ID en una tabla que ya tiene millones de registros en producción. Si intentas migrar una columna de Big Serial a UUID V4 mediante un script de alteración de tabla, alter table, la base de datos no solo tiene que reescribir cada fila en el disco, sino que el índice B-tree se reconstruye

[12:46] desde cero de forma totalmente desordenada. En tablas con decenas de gigabytes, este proceso puede tardar horas, bloquear la base de datos por completo y generar una fragmentación de disco de la que el servidor no se recupera ni siquiera usando comandos de mantenimiento como vacuum full o optimize table.

[13:05] Además, si la tabla está relacionada mediante llaves foráneas con otras 10 tablas del sistema, el peso total de tus índices se duplica en toda la base de datos. Si vas a realizar una transición de arquitectura de IDs en producción, nunca lo hagas mediante una reescritura directa en caliente. Debes crear una estrategia de columnas paralelas, migrar datos de fondo en lotes pequeños y evaluar el impacto del tamaño del índice en la memoria RAM antes de eliminar la llave anterior. La regla de oro de la

[13:34] arquitectura de datos es separar el almacenamiento interno del contrato público. Lo que ve el cliente en la interfaz no tiene por qué ser la llave primaria de la base de datos. Empresas como Stripe documentan esto de forma transparente en su API.

[13:49] Todos sus objetos públicos utilizan un identificador en texto plano acompañado de un prefijo descriptivo, como cus- para clientes o pi- para intenciones de pago. Ese valor no es el entero autoincrementable de la tabla interna, ni tampoco es un UUID crudo expuesto sin contexto. Es un ID público opaco.

[14:11] Volviendo al caso del depósito, el cliente recibe en su teléfono un código de retiro aleatorio para abrir la taquilla, pero internamente la empresa sabe qué número físico de puerta le asignó en la pared. En tu sistema puedes mantener un entero bit serial o un UUID V7 internamente para asegurar el máximo rendimiento de los índices B-tree y manejar [resoplido] una columna secundaria con un hash o token opaco para las búsquedas externas en la API.

[14:37] [resoplido] Mezclar la llave primaria del motor con la identidad pública de la API es la verdadera causa del problema. La llave primaria existe para optimizar el índice. El ID público existe para proteger la seguridad y el contrato del sistema. Algoritmos de generación de IDs como Snowflake, utilizado por Twitter, Discord o Instagram, fueron creados para responder a un problema específico.

[15:00] Miles de servidores generando identificadores de forma simultánea a alta velocidad sin chocar entre sí y sin poder consultar un nodo central. Si la realidad de tu aplicación es un back-end monolítico o una arquitectura de microservicios estándar conectada a una base de datos PostgreSQL, implementar un generador de Snowflake en la capa de aplicación agrega una complejidad innecesaria. Es el equivalente técnico a implementar arquitectura limpia hexagonal para un formulario de registro sencillo.

[15:31] Cuando el volumen de tu sistema realmente justifique particionar la base de datos, en ese momento evalúas algoritmos de 64 bits ordenables por tiempo, controlas la sincronización de los relojes de los servidores y previenes la pérdida de precisión en JavaScript. Mientras tanto, no agregues complejidad que tu infraestructura no está pidiendo. La próxima vez que debas definir la llave primaria de una tabla, no lo decidas por intuición o tendencias. Evalúa estos tres factores arquitectónicos.

[16:00] La infraestructura. ¿Es un motor relacional de un solo nodo? PostgreSQL, MySQL o una base de datos distribuida por rangos, CockroachDB, Spanner. La visibilidad. ¿El ID va a estar expuesto en las URLs y APIs del cliente o va a ser estrictamente de uso interno?

[16:21] La generación. ¿Necesitas que el cliente o los servicios generen el ID de forma previa a la inserción sin consultar una secuencia central? Recuerda, en un Postgres tradicional, UUID V4 en la llave primaria degrada el rendimiento del índice.

[16:38] En una base de datos distribuida, un serial crea cuellos de botella por hotspots. Usar un entero big serial interno es una opción totalmente válida. Acompañarlo de un ID público opaco es una excelente práctica de seguridad. Y utilizar UUID V7 es la elección correcta cuando necesitas generación independiente con un índice ordenado.

[17:00] Las herramientas de inteligencia artificial no suelen evaluar estas variables. Si le pides un código profesional, te generará un gen random UUID por defecto. Y si le pides un ejemplo básico, te dejará un serial expuesto en la ruta.

[17:15] Los entornos de desarrollo locales funcionan bien con 20 filas de prueba, pero producción funciona con millones de registros. Si te ha tocado enfrentarte a un colapso de índices por una mala elección de IDs, déjalo en los comentarios indicando qué motor usabas y a partir de cuántos registros se notó la degradación.

[17:32] Suscríbete al canal, comparte este vídeo con tu equipo antes de definir el siguiente esquema de datos y nos vemos en el próximo análisis.
