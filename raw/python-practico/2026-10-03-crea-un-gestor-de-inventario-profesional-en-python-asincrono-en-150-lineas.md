# Crea un gestor de inventario profesional en Python asíncrono en 150 líneas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=XC97Ck0c0fs)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-10-03
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:02

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] 100.000 movimientos de inventario grabados en cerca de un segundo. Y el archivo que hace esto tiene 150 líneas, contando los espacios en blanco. Este otro hace el mismo trabajo, como lo escribimos casi todo la primera vez, 24 movimientos por segundo. Para llegar a 100.000 necesita 70 minutos.

[00:17] Entre uno y otro no hay más servidores ni un framework gigante. Hay cuatro decisiones y la cuarta tapa un error que mi propia prueba de carga no fue capaz de encontrar. Pasó en verde con el bug adentro. Vamos a construirlo desde cero paso a paso. Este patrón no viene de un blog, es el mismo que uso cuando armo plataformas para mis clientes con Python. Primero, el script que todos escribimos. Imaginemos un lunes a las 9 de la mañana, cuatro bodegas en Santiago, Lima, Bogotá y Ciudad de

[00:41] México, y cada venta tiene que hacer dos cosas. Descontar el stock en la base de datos y avisarle a la tienda online cuánto queda. Así se ve en código, un update, un commit y la llamada a la tienda. Primer problema, un commit por cada movimiento. 300 movimientos, 300 veces que el disco tiene que confirmar.

[00:59] Segundo problema, el grande, la llamada a la tienda tarda unos 40 milisegundos y durante ese tiempo el programa completo está detenido, no atiende la siguiente venta, no hace nada. Python no es el lento aquí, lo lento es esperar en fila algo que se puede esperar al mismo tiempo. Eso es asyncio. Un solo cocinero que mientras hierve agua pica la cebolla. No hay más cocineros, hay menos tiempo muerto. Pero obviamente antes de tocar asyncio hay una decisión menos vistosa pero mucho más importante, y es

[01:25] dónde vive la regla que impide vender lo [carraspeo] que no tienes. Decisión uno, la regla vive en ese modelo. La línea más importante de todo el proyecto más Python. Primero, el modelo, un movimiento son tres datos, qué producto, en qué bodega y cuánto cambia. Si es positivo entra en stock, si es negativo sale. Lo marco como frozen para que nadie lo modifique en el camino y con slots para que ocupe menos memoria cuando tenga miles esperando. Y esta línea de acá suma el cambio al stock

[01:50] solo si el resultado no queda bajo cero. La condición va dentro del mismo mismo, perdón, update. ¿Y por qué no un if en Python? Porque un if primero lee el stock y después escribe. Entre esa lectura y esa escritura, otra tarea puede vender la misma unidad. En cambio aquí, comprobar y escribir son solo una operación. Ese hueco no existe. La clase abre dos conexiones a la misma base. Una escribe, la otra solo lee. Con el modo WAL de SQLite y piénsalo como un cuaderno de borrador, donde primero se

[02:19] anota y después se pasa en limpio. El que lee nunca frena al que escribe. Y uso aio SQLite, que es el SQLite pero con await. Es decir, cada consulta se ejecuta en un hilo aparte y el programa principal queda libre para seguir recibiendo. Luego, la venta de tres teclados aplicada. Venta de 999 rechazada sin un solo if. Y el stock de las cuatro bodegas consultado a la vez.

[02:41] Aquí cada paso está en su propio archivo, tal como los ves aquí. Y el enlace para descargarlo te lo voy a dejar en el comentario, perdón, en la descripción del video. Está mi Patreon, pero no te salgas a buscarlo ahora que que ya se viene lo bueno. ¿Por qué?

[02:52] Porque todo esto todavía está procesando de a un movimiento. El siguiente paso es lo que lo lleva de 24 a 100,000. Decisión dos, cola y lotes. 100,500 movimientos menos de un segundo. Y el stock final cuadra exacto con lo que se envió. ¿Qué cambió? Que dejamos de hacer el trabajo en el instante que llega. Es la cocina de un restaurante.

[03:10] Los meseros dejan la comanda en la barra, pero vuelven a atender. No esperan que los platos estén listos. El cocinero toma las comandas de a varias y nadie espera a nadie. Ese patrón se llama productor-consumidor. La barra es una asyncio.Queue y tiene tope, 10,000.

[03:25] Si se llena, quien quiera dejar un movimiento espera su turno. Eso se llama back pressure, en donde el sistema frena la entrada en lugar de tragarse la memoria hasta caerse. Este sería el cocinero. Espero movimiento. Si hay más en la cola, se lo lleva también. Hasta 500 hilos graba todo con execute_many y hace un solo commit para el lote completo. De 300 commits pasamos a uno cada 500 movimientos. Y aquí está la gran parte de la ganancia en esta sola línea. Y rowcount me dice cuántos se

[03:53] aplicaron. Los que faltan fueron rechazados por la regla de decisión uno. Hay un solo escritor, a propósito, SQLite admite un escritor a la vez, en vez de pelear contra eso, el diseño lo respeta. Pero falta la puerta de entrada para otro sistema, un webhook, porque sin framework el asyncio puro lee las cabeceras, lee el JSON, valida todos los movimientos antes de escolar el primero y responde 202. Recibido, lo proceso en un momento y responde antes de grabar, por eso contesta tan rápido. Y para

[04:22] apagar, simplemente con la {punto} shutdown, que existe desde Python 3.13, que significa no entra nada más. El escritor termina lo que queda y sale solo, sin centinela, sin trucos ni nada. te dije, si quieres el proyecto completo en tus manos, está para descargarlo en Patreon, pero bueno, volvamos. 100,000 por segundo, hablando solo con la base de datos, en cuanto conectamos la tienda aparece el problema de verdad. Las APIs se caen, entonces viene la decisión tres, que es proteger la API. Y esto es

[04:47] lo que separa un script de un sistema, que es qué es lo que hace cuando algo sale mal. Esta es mi tienda de mentira y se porta como una API real en un mal día. Tarda entre 20 y 60 milisegundos, una de 20 llamadas responde un 503 y una de cada 100 se queda colgada sin contestar nunca. Pero tres protecciones, uno, el límite de llamada, las las APIs, perdón, de e-commerce te dan un cupo por segundo, si te pasas te van a bloquear.

[05:09] Este decorador reparte turnos, cada llamada toma el siguiente turno libre y duerme hasta que le toca. 200 por segundo, ni una más. Y aquí fíjate en un detalle, aquí no hay ningún candado. El asyncio, perdón, en asyncio una tarea solo suelta el control en una white y entre leer el turno y escribirlo no hay ninguno, es decir, nadie puede meterse en medio. Bueno, dos, el timeout. Si la tienda no responde en medio segundo, corto la llamada. Una API colgada no puede dejar colgado a mi sistema. Y

[05:36] tres, reintentos con espera creciente. Falló, espero una décima de segundo y repito. Volvió a fallar, dos décimas, después cuatro. Y en esta línea un except con dos excepciones, sin paréntesis, que es la sintaxis nueva de Python 3.14. Si después de tres intentos no se pudo, el producto queda anotado en una lista de fallidos y el sistema sigue. Una llamada mala no puede tumbar por completo a las otras 99,000. Y ahora un extra que ahorra muchísimo. Si un producto cambia 50 veces en un segundo,

[06:04] a la tienda no le interesa los 50 cambios, le interesa cuánto queda. Así que se avisa solo una vez por producto pendiente. Los 300 movimientos del principio, antes 12 segundos y medio, ahora cerca de uno. Y sin truco. Python no se volvió más rápido, son menos llamadas, unas 95 en lugar de 300, y 20 20, perdón, viajando al mismo tiempo. Y bueno, hay una línea del código que me salté a propósito, pero la vamos a ver después porque la cuarta decisión y es la que casi nadie pone. Y quédate hasta

[06:31] el final porque te voy a mostrar cómo adaptar esto a tu rubro. Bueno, finalmente juntamos todo en el archivo final y solo faltan dos piezas. Un panel que cada cuarto de segundo imprime cuánto recibió, se aplicó, se rechazó y se publicó. Y el apagado limpio, con control C, el sistema deja de recibir, se vacía la cola, terminan los avisos pendientes y recién ahí cierra las conexiones. En ese orden. 150, ahora la prueba. 200 puntos de venta al mismo tiempo, cuatro bodegas, 1,000 productos,

[06:58] 100,000 movimientos y 300 trampas. Productos que no existen y retiros de 1,000,000 de unidades que el sistema tiene que rechazar. Grabado en la base, 1 segundo, 300 rechazados, exactamente las trampas. Unas 1,200 llamadas a la tienda, a 200 200, perdón, por segundo, sin pasarse del cupo. Por eso el total son alrededor de 7 segundos. Y la auditoría, el stock de la base de datos cuadra a la unidad con lo que se envió y la tienda ve lo mismo que la base. Y aquí viene un regalo de Python 3.14, que

[07:25] puedo mirar dentro de un programa asíncrono mientras corre. Ahí están las tareas vivas, el panel, el escritor y los 20 sincronizadores, cada uno esperando en su cola. Y el webhook funcionando. Una venta de tres teclados, 202. Un retiro de 80 mouse cuando hay solo 50, lo recibe y lo rechaza. Un dato que no es un número, error 400. Todo en verde, aquí podría terminar el vídeo, pero falta la línea que me salté.

[07:47] Decisión cuatro, el candado. Y esta decisión no tiene que no tiene que ver con la velocidad. Si quitamos esta línea y repetimos la prueba, verde, otra vez verde. Base 70, tienda 100. La tienda cree que hay 100 teclados, pero hay 70. Va a vender 30 teclados que no existen. Esto fue lo que pasó, sale un aviso que dice, hay 100 y le toca una llamada lenta.

[08:05] En ese instante entra una venta de 30, sale un segundo aviso, hay 70. Y le toca una llamada rápida, el segundo llega primero y después llega el viejo y lo pisa. ¿Por qué? Porque la prueba de carga no lo detectó, porque hace falta una coincidencia de milisegundos justo en el último cambio de un producto. Esto casi nunca se da, pero se da. En tu máquina nunca se va a dar, pero sí un viernes a las 6 de la tarde en un Cyber Friday y en producción. La solución es esta línea, un candado por producto. Los

[08:32] avisos del mismo producto hacen fila, los los de producto distintos siguen en paralelo. Y como el stock se lee dentro del candado, el último aviso siempre lleva el dato más nuevo y actualizado. Una prueba en verde te dice que no encontró el error. No te dice que el error no existe. La concurrencia no se prueba solo ejecutando, se razona. ¿Cómo adaptarlo a tu proyecto? Tres casos. En e-commerce, borras la tienda de mentira y pones la llamada real a tu plataforma con el cupo que indica su documentación,

[08:58] es cambiar una función. Para logística, una transferencia entre bodegas son dos movimientos, uno negativo en el origen y uno positivo en el destino. Ahí se necesita que que se graben los dos o ninguno. Y ese es un buen ejercicio para entenderlo. Si quieren que lo vean en otro vídeo me lo dicen. Para control de equipos, el producto es el número de serie, el stock es 1 0 y la bodega es la persona que lo tiene. Y si tu base está en PostgreSQL, cambias el iOS SQL por async cpg, pero la regla dentro del

[09:24] update queda igual. Eso sí, dos límites que tienes que conocer antes de ofrecerle esto a un cliente, la cola vive en memoria, si el proceso muere de golpe, se pierde lo que ya estaba en fila. Y el webhook es mínimo. Para exponerlo a internet va detrás de FastAPI, con autenticación, obviamente.

[09:40] Y quiero que te quedes con esto, que el código profesional no es el que tiene más líneas, sino que el que sabe hacer o qué hacer, más bien, cuando algo falla. Si quieres ver qué pasa cuando un detalle así se escapa con un cliente real por medio, mira este video después, [resoplido] en donde un amigo le pagaron $2,000 por un código perfecto y casi lo demandan. Te lo dejo aquí. ¿Qué le agregarías tú, sin pasarte mucho de las 150 líneas? Te leo los comentarios.
