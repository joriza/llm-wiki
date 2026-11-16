# Lo que NUNCA te explicaron de las Transacciones en SQL

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=DBOuemO4q0k)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-10-10
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:01

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Estás en una entrevista técnica y antes de hablar de los lenguajes de programación que dominas, quieren saber tus conocimientos en bases de datos. Entonces te preguntan, ¿Cuántos niveles de aislamiento tiene una transacción y qué hace cada uno? Te puedes quedar en blanco porque probablemente llevas años haciendo esto, begin, commit o rollback.

[00:23] Guardas pedidos, actualizas usuarios, registras pagos. Pero imagínate que un día llegan dos requests al mismo tiempo y algo sale mal. Un cargo aparece dos veces, un cupo queda excedido o dos usuarios reservan lo mismo. Alguien pregunta, "¿Pero eso no estaba dentro de una transacción?"

[00:44] Sí, pero una transacción no vive sola. Mientras la tuya está abierta, puede haber otras 10 haciendo cosas sobre las mismas tablas. Entonces aparece la pregunta que realmente importa, ¿Qué puede ver mi transacción de lo que están haciendo las demás?

[01:00] Eso es el aislamiento. Probablemente ya tienes un nivel de aislamiento configurado en tus aplicaciones, aunque nunca hayas escrito una línea diciendo cuál. Puede venir del motor, de la conexión o de alguna configuración del ORM.

[01:16] Hoy vamos a explicar cuáles son esos niveles de aislamiento. Antes de entrar en los niveles, hay una diferencia que conviene dejar clara. Atomicidad y aislamiento no son lo mismo. Atomicidad es el famoso todo o nada. Por ejemplo, begin, luego insert into pedido, después insert into detalle pedido y por último, commit.

[01:40] Si falla la segunda operación, haces rollback para no quedar con medio pedido guardado. Eso es atomicidad. El aislamiento es cuando tienes dos transacciones trabajando al mismo tiempo. Imagina que dos empleados están actualizando una hoja de de Cada uno tiene una copia de la hoja.

[01:59] ¿Qué puede ver cada uno de lo que el otro está haciendo? ¿Puede ver un cambio que todavía no ha terminado? Si vuelve a mirar la hoja unos segundos después, ¿verá lo mismo? ¿Puede insertar algo mientras el otro está trabajando en ese mismo rango?

[02:14] Eso es lo que controla el nivel de aislamiento. Y por eso puedes tener dos transacciones perfectamente atómicas y aún así terminar con un problema de concurrencia. Cada una hizo su trabajo bien, pero el problema sucede cuando las dos se encuentran.

[02:28] Hay cuatro niveles que vas a escuchar una y otra vez. Read uncommitted, read committed, repeatable read y serializable. Pero no se trata de memorizar los nombres. Primero, mira qué está usando tu aplicación. Por ejemplo, en Postgres puedes ejecutar show transaction isolation y puedes encontrarte read committed.

[02:52] Ese es el valor por defecto de Postgres. Oracle y SQL Server también trabajan normalmente con read committed, aunque SQL Server tiene configuraciones como read committed snapshot. MySQL con InnoDB parte de repeatable read.

[03:08] Pero aquí hay algo que vale la pena recordar. Mismo nombre no significa necesariamente mismo comportamiento interno. Además, tu código puede no mostrarlo. Puedes tener Spring, Django, Entity Framework o cualquier otro ORM abriendo transacciones sin que en cada método aparezca explícitamente el nivel.

[03:29] Por eso, antes de responder, mi aplicación usa X nivel de aislamiento, vale la pena comprobarlo. Porque cuando dos requests llegan casi al mismo tiempo, ese pequeño detalle puede cambiar completamente lo que cada uno alcanza a ver.

[03:43] Hay una cosa que pasa bastante en proyectos reales. Alguien agrega la sentencia no lock en una consulta de reporte porque se quedaba esperando locks de otras transacciones. El reporte deja de bloquearse, lo que parece una solución, pero en realidad lo que hace es decirle a la base de datos, "Dame lo que tengas aunque todavía no esté confirmado."

[04:04] Eso es read uncommitted. Puedes leer cambios que otra transacción no terminó. En la práctica se ve así. Transacción A, actualiza stock = 20, sin commit todavía. Transacción B, lee stock y ve 20. Transacción A, hace rollback.

[04:21] Esas 20 unidades nunca existieron de forma oficial. B tomó una decisión sobre datos que después desaparecieron. En Postgres, este nivel existe, pero el motor lo trata internamente como read committed, porque las dirty reads o lecturas sucias se consideran demasiado peligrosas para cualquier caso real.

[04:39] En SQL Server, el no lock es la versión más común. Que una consulta no se bloquee no es garantía de que los datos sean válidos. Para un tablero donde la consistencia exacta no cambia ninguna decisión importante, el costo puede ser tolerable.

[04:54] Para cupos, saldos o cualquier proceso que va a insertar o mover dinero, estás construyendo sobre una base que puede cambiar debajo de ti sin aviso. Hay un patrón que probablemente escribiste muchas veces sin pensar demasiado en él.

[05:08] Select saldo from cuenta where ID = 10. Calculas en tu código y después update cuenta set saldo = 20 where ID = 10. Read committed garantiza una cosa. No lees cambios que otra transacción no haya confirmado todavía. Mientras alguien más modifica esa cuenta sin hacer commit, tú no lo ves.

[05:31] Hasta ahí, bien. Pero ese patrón de arriba tiene un problema que el nivel no resuelve. Entre tu select y tu update, otra transacción puede modificar esa misma cuenta y hacer commit. Cuando calculas el nuevo saldo en tu código, lo estás calculando sobre un valor que ya no es el actual. La base no bloqueó nada entre medio. Sacaste la lógica fuera de la operación que debía protegerla.

[05:55] La diferencia con esto, Update cuenta set saldo igual saldo menos 80 where ID igual 10, es que ahí la base de datos calcula y aplica el cambio en un solo paso. El nivel no cambió. Cambió cómo escribiste la operación. Y esa diferencia explica errores que pasan meses sin aparecer, porque en prueba siempre hay un solo request.

[06:17] Imagínate que tienes un proceso de conciliación que abre una transacción. Hace varias consultas durante varios segundos sobre los mismos datos. Mientras otras transacciones están confirmando cambios. A mitad del proceso, una consulta devuelve un resultado diferente al de la lectura anterior.

[06:37] No hubo un error. Simplemente dos commits ocurrieron entre las dos lecturas. Eso puede arruinar una conciliación entera. Repeatable read resuelve exactamente eso. La transacción trabaja con un snapshot del estado de la base al momento en que empezó.

[06:55] En Postgres, el motor lo garantiza sin que cambies el código. Haces begin, select stock from producto where ID igual a 10. Y obtienes 50. Otra transacción hace commit y cambia stock a 30. Tu select stock from producto where ID igual a 10 sigue viendo 50.

[07:16] Pero ojo con MySQL. InnoDB también lo llama repeatable read y también usa snapshot. Pero agrega next key locks y gap locks para prevenir lecturas fantasma. Eso puede producir deadlocks que no vas a reproducir en Postgres aunque el nivel se llame igual.

[07:34] Mismo nombre, mecanismo diferente. Antes de asumir que se comporta igual en todos los motores, debes revisar la documentación del que estés usando. Un día cualquiera alguien ve esto en los logs, error 40001. La primera reacción suele ser tratarlo como un error, pero no lo es, es serializable funcionando.

[07:56] Cuando usas este nivel, la base detecta que dos transacciones que corrieron en paralelo producen un resultado imposible si hubieran corrido una por una. En lugar de dejar que ocurra, cancela una. La garantía es esa. El resultado final debe ser equivalente a algún orden secuencial posible. Puede ser A primero y después B o B primero y después A. Lo que no puede pasar es algo imposible en cualquiera de esos órdenes.

[08:23] PostgreSQL lo implementa con serializable snapshot isolation. Detecta los conflictos sin bloquear toda la tabla. El costo concreto es ese 40001. Tu aplicación tiene que capturarlo y reintentar la transacción. Si dejas escapar el error, el usuario ve un fallo en una operación que pudo completarse perfectamente en el siguiente intento.

[08:46] Por eso serializable no es el nivel que activas si olvidas. Es un contrato en el que la base de datos garantiza consistencia y tú garantizas reintentos. Hasta aquí puedes memorizar bastante bien los cuatro niveles, pero ahora viene un caso que explica por qué las tablas de internet no siempre son suficientes.

[09:06] Dos médicos están de guardia. La regla dice que siempre debe quedar al menos uno disponible. Hay dos médicos, Ana y Carlos. Ana revisa el sistema y ve que Carlos está disponible. Entonces decide, "Puedo salir de guardia."

[09:21] Al mismo tiempo, Carlos hace exactamente lo mismo. Él ve que Ana está disponible, así que también decide salir. Ninguno modificó la fila del otro. Las dos transacciones hicieron su lectura correctamente. Las dos reglas parecían cumplirse. Las dos hacen commit y ahora no queda ningún médico disponible. Eso es right skew. La regla dependía de varias filas y por eso una transacción puede ser consistente por separado y aún así romper una regla cuando se combina con otra.

[09:54] En PostgreSQL, repeatable read puede dejar pasar este tipo de situación. Serializable está pensado para detectar conflictos de este tipo. Por eso pregúntate siempre dónde vive la regla que estás intentando proteger. Llevemos eso a algo más cercano a backend.

[10:12] Supongamos que tenemos una plataforma de adelantos de nómina. Un empleado tiene un cupo de 500.000 pesos. Llegan dos solicitudes casi al mismo tiempo. Solicitud A, 300.000 pesos y solicitud B, 300.000 pesos. Cada request abre su propia transacción.

[10:30] Las dos hacen algo parecido a select sum monto from movimientos where empleado ID igual a 10. Las dos reciben cero. Entonces las dos piensan, cero más 300.000 pesos menor o igual a 500.000 pesos, perfecto. Cada una inserta su movimiento y las dos hacen commit.

[10:51] Resultado, 300.000 pesos más 300.000 pesos, 600.000 pesos. El cupo era 500.000 pesos y ninguna transacción estaba mal. El problema apareció porque las dos tomaron la decisión con la misma información antes de enterarse del cambio de la otra.

[11:09] Este es el tipo de error que puede pasar meses sin aparecer. Pruebas manuales, todo bien. Un request, todo bien. Pero con dos o más request simultáneos aparece el problema. Ahora que tenemos el problema, pensemos en una solución.

[11:25] Una opción sería decir, listo, toda la aplicación a serializable. Pero eso sería como cerrar todas las cajas de un supermercado porque una sola caja tuvo un problema. Tal vez no necesitas eso. Si el cupo está representado por una sola fila, puedes hacer que la propia actualización compruebe la condición.

[11:44] Update cuenta, set reservado igual a reservado más monto, where ID igual a ID y reservado más monto menor o igual a límite. Después preguntas cuántas filas actualizaste. Si devuelve uno, había cupo. Si devuelve cero, ya no había. La base de datos se encargó de coordinar ese acceso.

[12:05] Si la regla depende de varias filas, puedes bloquear primero una fila común. Select all from cuenta, where ID igual a ID for update. Después lees los movimientos, compruebas el cupo y haces el insert. Así estás serializando esa cuenta, no toda la aplicación. Y sí, también podrías utilizar serializable para esa operación. La clave es no cambiar el nivel por reflejo. Primero encuentra la regla, después protege exactamente esa regla. Cuando te hacen esa pregunta, la trampa no es no saber

[12:38] los nombres. La trampa es responderla como si los niveles fueran categorías fijas que aplicas sin pensar. Read uncommitted casi nunca lo vas a usar en lógica de negocio real. Si lo ves en una consulta que afecta pagos o cupos, es una señal de alerta, no una optimización.

[12:57] Read committed cubre la mayoría de las operaciones del día a día, pero el problema aparece cuando tomas una decisión en dos pasos: leer, calcular en tu aplicación, actualizar. Ahí el nivel no te protege solo, como viste en el select saldo del ejemplo anterior.

[13:15] Repeatable read te da la foto, pero el caso de los dos cargos dejó claro que una foto no alcanza cuando la regla vive en varias filas. Serializable no es el nivel seguro que activas y ya, es un compromiso, más garantías, pero tu aplicación tiene que saber reintentar cuando la base de datos cancela.

[13:35] Lo que realmente importa no es cuál suena más técnico, es entender qué operación estás protegiendo, dónde puede fallar esa protección y si el nivel que tienes hoy siquiera lo sabes. Entonces, ante el escenario de que el cupo volvió a quedar mal, ¿qué harías?

[13:53] Para un momento y piensa. Yo no empezaría cambiando el nivel global de la base de datos. Primero miro qué está haciendo realmente la aplicación. Por ejemplo, si fuera una base de datos Postgres, ya sabemos que podemos ejecutar show transaction isolation.

[14:08] Después reviso la transacción. Podemos encontrar un begin, dentro un select sum monto from movimientos where empleado ID igual a 10. Veo si hay cálculos en la aplicación, por último veo el insert into movimientos y commit.

[14:25] Pregúntate. ¿Qué pasa si dos procesos ejecutan eso al mismo tiempo? También revisaría cuánto tiempo permanece abierta la transacción. Si dentro tienes begin, luego select, luego llamada API externa, luego esperar la respuesta de la API, luego update y por último commit.

[14:44] Puedes estar manteniendo locks o recursos abiertos durante esa espera. Y finalmente haría pruebas de concurrencia. Cupo 500,000. Request A 300,000. Request B 300,000. Los dos al mismo tiempo, no uno después del otro, porque si los ejecutas secuencialmente, probablemente nunca vas a ver el error.

[15:06] Volvamos a esa entrevista del principio. Te preguntaron cuántos niveles hay y qué hace cada uno. Ahora tienes la respuesta. Pero la respuesta que vale no es recitar esa lista, es saber que los niveles controlan qué puede ver tu transacción de lo que están haciendo las otras al mismo tiempo.

[15:24] Y lo que viste hoy es que el nivel que más problemas puede darte no es el que más complejo suene. Es el que ya está por defecto y que tus transacciones usan sin que lo hayas revisado nunca. En el ejemplo del cupo, de los dos cargos, no falló porque alguien eligiera mal un nivel. Falló porque la decisión se tomó fuera de la operación que debía protegerla.

[15:46] Eso es lo que cambia cuando entiendes el aislamiento de verdad. Ya no preguntas solo cuál uso. Preguntas dónde vive la condición que necesito garantizar. Y eso, en una entrevista o en la revisión de un incidente, marca la diferencia.
