# El cliente perdió todos sus datos por mi app de Python (y cómo evité que vuelva a pasar)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=X2eMvB_qp7c)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-07
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:55

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un viernes a las 7 de la tarde me llegó este mensaje. 11 meses de ventas, 3,800 registros. La app que yo le había entregado los perdió en un segundo, sin aviso, sin un solo lock de error el día anterior. Y el código no tenía ningún bug conocido, nada, pero algo se puede señalar con el dedo.

[00:18] Había corrido perfecto. Todos los días durante 11 meses se rompió ese clate. Eso pensé yo, buscando el error a ciegas, pero ese clite no se rompió. Lo que se rompió fue una decisión que tomé en 30 segundos, meses antes de que existiera ese cliente. Demuestro cuál es exactamente con el código original en pantalla y el bloque de código que hoy evita que esto le pase a alguien más.

[00:41] Reconstruí lo que pasó minuto a minuto. No hizo falta un experto en forense de datos. Los registros del sistema eléctrico de la zona y los timeestamps del propio archivo alcanzaron. El local del cliente tuvo un corte de luz a media tarde, alrededor de las 4. Nada raro para esa zona. La red pasa por cortes cada dos o tres semanas. algo que el cliente mencionó como al pasar, como si no tuviera nada que ver con el problema.

[01:03] El problema es que la app estaba abierta en ese momento y no solo abierta, estaba en medio de una venta escribiendo una fila nueva en la base de datos justo cuando la pantalla se apagó. El corte no llegó entre una escritura y la siguiente en ese instante tranquilo donde no pasa nada, llegó adentro de una a mitad de camino entre el insertar y el confirmar.

[01:22] Ese clite guarda la base completa en un solo archivo binario. Cuando ese archivo se está modificando y la corriente se corta, el sistema operativo puede dejarlo a mitad de escritura. Parte de la página vieja y parte de la página nueva mezcladas en el mismo bloque de disco. Eso es literalmente lo que dice el error. La imagen del disco quedó deformada. Malformed a nivel de bytes ya no es una base de datos coherente. Y acá está el segundo problema más grave que el primero. No había copia de ese

[01:48] archivo en ningún otro lado, ni en la nube, ni en un disco externo, ni siquiera en un correo enviado a mano alguna vez. Una sola copia en una sola carpeta, en una sola computadora que se acababa de quedar sin luz. 11 meses de historial comercial dependían de que ese único archivo nunca tuviera un mal momento. Acá viene lo que de verdad importa, porque esto no fue mala suerte del clima ni una falla misteriosa de SQLite. Fueron tres decisiones mías tomadas en los primeros 30 segundos del

[02:13] proyecto, cuando lo único que quería era que la app arrancara y pudiera mostrarle una demo al cliente esa misma semana. Decisión uno, la base de datos vivía en la misma carpeta que el ejecutable. Esto lo hace el 90% de los tutoriales de Python con SQL Lite, un archivo punto db al lado del script sin pensarlo dos veces, porque en la etapa de aprender es lo más simple, una línea y ya tienes una base de datos funcionando, el problema aparece después cuando el proyecto deja de ser un ejercicio y pasa a producción.

[02:39] Si alguna vez hay que reinstalar la app, empaquetarla de nuevo, actualizar el ejecutable o simplemente mover la carpeta del programa a otro disco. Esa base de datos se mueve, se sobreescribe o directamente se pisa con una versión vacía del instalador. No tiene una ruta propia separada del código fuente. Vive donde vive el programa, no donde debería vivir la información real del cliente.

[02:59] En este caso puntual, no fue una reinstalación la que rompió todo, pero la misma arquitectura frágil que permite eso es la que después permitió lo otro. Decisión dos, escribir sin transacciones explícitas y sin journal real. Por defecto, SQLite escribe en modo rollback journal clásico. Es más frágil ante un corte de energía a mitad de operación que el modo wall. Modifica directamente el archivo principal mientras trabaja en lugar de escribir primero en un archivo auxiliar. Y como cada insert se mandaba

[03:25] suelto, sin agrupar varias operaciones en una transacción explícita, cualquier interrupción a mitad de camino dejaba el archivo en un estado intermedio. Ni la versión de antes ni la de, algo roto en el medio. Otra vez, esto lo hace el 90% de los tutoriales. Nadie enseña a activar el modo wall en la clase introductoria de Sclit en 5 minutos, porque en una demo de 5 minutos nunca se corta la luz. Decisión tres, cero respaldos en ningún formato. No había ninguna rutina que copiara ese archivo a

[03:51] otro lado, ni diaria, ni semanal, ni siquiera manual, del tipo cada tanto me acuerdo y copio la carpeta a un penrive. La única copia de 11 meses de trabajo del cliente era exactamente el mismo archivo que se acababa de corromper. No existía un segundo lugar al que ir a buscar los datos cuando el primero falló. Tres decisiones, 30 segundos cada una. Y si te dijera que ninguna por separado hubiera roto nada, juntas actuando al mismo tiempo, son la razón exacta por la que un corte de luz común

[04:17] y silvestre se convirtió en una catástrofe de 11 meses de historial perdido. Por eso, antes de escribir una sola línea de la solución definitiva, había que ver qué se podía salvar de ese archivo. Seclate trae una herramienta pensada justamente para esto que casi nadie conoce hasta que la necesita. El comando punto recover no intenta arreglar el archivo original en el lugar donde está. escanea el disco a bajo nivel, página por página. Encuentra los fragmentos de datos que todavía son

[04:42] legibles, pese a la corrupción y con eso reconstruye una base completamente nueva. En el caso reproducido para este video, con un archivo dañado de la misma manera, se recuperó el 87% de los registros. Las ventas de los últimos 4 días antes del corte se perdieron para siempre. No hay comando que las traiga de vuelta. Y acá está el rencuadre importante, el que cambia como hay que leer todo lo anterior. Esto no fue mala suerte. Dado cómo estaba escrito ese código con esas tres decisiones activas

[05:08] al mismo tiempo, la pérdida era matemáticamente cuestión de tiempo. No importaba si el corte de luz pasaba ese viernes puntual o 6 meses después en otra tarde cualquiera. Con la base en modo journal clásico, sin transacciones agrupadas y sin ninguna copia de respaldo, el archivo iba a corromperse tarde o temprano. La única pregunta abierta era cuando no sí. A la cara del cliente no le dije que se había roto ese glit porque no hubiera sido cierto. Le dije la verdad completa, que la app

[05:33] tenía un punto ciego que yo debí resolver desde el primer día, que recuperamos casi nueve de cada 10 registros con una herramienta de recuperación forense y que desde ese momento la aplicación iba a quedar blindada contra este mismo escenario con pruebas que se lo iba a poder mostrar en pantalla. ese módulo de respaldo completo con el botón de restaurar incluido lo dejo armado en Patreon para quien lo quiera. Lo que sigue es el código exacto que hoy va en todas mis apps de escritorio que usan SQL Lite

[05:57] medida por medida cada una probada en vivo antes de darla por buena. Medida uno, ruta de datos en la carpeta del usuario, nunca junto al ejecutable. Ahora la base de datos vive en App data en Windows o en su equivalente en Linux y Mac, separada por completo del instalador y del ejecutable. Reinstalar la AP, actualizar a una versión nueva, mover la carpeta del programa a otro disco. Nada de eso. Vuelve a tocar los datos del cliente, simplemente están en otro lugar del sistema, uno pensado para

[06:22] durar más que el programa que lo escribió. Medida dos, modo wall más transacciones explícitas en cada escritura. El modo W escribe primero en un archivo de registro aparte un WR ahead lock y recién después vuelca esos cambios a la base principal en un momento controlado. Así, una interrupción a mitad de camino deja la base original intacta tal como estaba antes de empezar. Sncronus full le pide al sistema operativo que confirme en disco de verdad cada cambio importante, no solo en la memoria caché. Y el bloque

[06:46] Wcon agrupa toda la escritura en una transacción real. O se guarda completa con todos sus pasos o no se guarda absolutamente nada. Ya no existe ese estado intermedio ni mezclado ni a medio camino que fue justamente lo que corrompió el archivo original aquel viernes. Medida tres, respaldo automático diario con rotación sin depender de la memoria de nadie. Esta función corre sola una vez por día apenas se abre la AP. guarda 30 días hacia atrás en una carpeta separada de respaldos, aunque algo salga mal. Un

[07:13] corte de luz, un disco que empieza a fallar, un error humano borrando algo sin querer, siempre existe como mucho una copia de ayer para volver a empezar desde ahí. Medida cuatro, un botón restaurar visible para el cliente. No he escondido tres menús adentro ni reservados solo para mí como desarrollador. Si algo se ve raro en la pantalla, el cliente mismo puede elegir el último respaldo bueno y volver a ese punto sin tener que escribirme un mensaje un viernes a la noche esperando

[07:36] que yo lo vea. Y la prueba que hace que de verdad confíe en todo esto, el corte simulado. Vuelvo a abrir la app inmediatamente después. La venta puntual que estaba a mitad de camino en ese instante puede perderse, eso es esperable y aceptable, pero la base de datos entera abre intacta sin ningún error de imagen deformada. Ese es exactamente el punto. Ya no hay corrupción total del archivo por una interrupción parcial de una sola operación. Repetí esta prueba 15 veces seguidas, matando el proceso en momentos

[08:00] distintos de la escritura cada vez y las 15 veces la app volvió a abrir sana con todos los datos anteriores donde tenían que estar. Una app no está entregada hasta que la tiraste abajo. A propósito. No alcanza con que funcione en una demo ni con que ande bien durante 11 meses seguidos. Hay que matarle el proceso a mitad de una escritura con el peor timing posible y ver si sobrevive antes de llamarla terminada. Ruta separada, W con transacciones, respaldo que corre solo, un botón de restaurar que no

[08:25] dependa de mí y la prueba del corte simulado antes de dar cualquier proyecto por terminado. Cinco puntos y ninguno es opcional. Todo esto nace de una decisión de 30 segundos. La primera vez que se escribe la línea que conecta con la base de datos en un proyecto nuevo. Esa línea tomada sin pensar demasiado decide si tu apporte de luz cualquiera o si termina siendo el mensaje que te llega un viernes a las 7 de la tarde, justo cuando ya te ibas. Si tu app todavía guarda todo en una lista y lo pierde

[08:50] apenas la cierras, empieza por este video.
