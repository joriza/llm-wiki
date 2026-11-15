# El secreto para que tu Base de Datos soporte miles de usuarios

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UJnsiQk11Dc)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-08-02
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagínate esta situación en tu trabajo. Tu aplicación acaba de salir a producción y te avisan que esperan un pico de 1000 usuarios simultáneos llamando a la API. Tú miras la configuración del servidor web, tienes 200 hilos para procesar peticiones.

[00:16] Hasta ahí todo suena manejable. Entonces, alguien pregunta lo que parece una pregunta de configuración trivial. ¿De qué tamaño deberías configurar el pool de conexiones a la base de datos? Opción A, 200 conexiones, para que cada hilo tenga la suya y nadie espere.

[00:34] Opción B, 1000 conexiones, para cubrir a todos los usuarios del pico. Opción C, solo 10 conexiones. Si lo piensas como un estacionamiento de valet, los hilos son los coches que llegan y las conexiones del pool son las plazas donde el encargado deja cada coche mientras hace el trabajo en la base valet.

[00:54] Más plazas suena a más servicio. 10 plazas suena a cola eterna. Quédate con la letra que elegirías tú antes de seguir. Porque el resto del vídeo es lo que pasa cuando esa intuición se va a producción. Casi todo el mundo se va por la A o la B. Es normal. La A suena ordenada. Si tengo 200 hilos, les doy 200 conexiones y me ahorro problemas. La B suena preventiva. Van a entrar 1000 usuarios, dame 1000 plazas. La C, en cambio, da miedo. 10 conexiones suena a que en el lanzamiento la app se va a quedar corta

[01:30] y todos te van a señalar. El problema es que un pool de conexiones no funciona como las filas del supermercado. No es más cajas abiertas, más rápido avanzamos. Las conexiones pelean por recursos reales adentro del motor de la base de datos. Si elegiste A o B, tranquilo, nos ha pasado a todos.

[01:51] Es la intuición por defecto de casi cualquier desarrollador y es Es la razón por la que las APIs terminan generando errores 504 mientras la CPU de la base de datos está solo al 2%. Ese es el verdadero engaño. Ves las gráficas y todo parece bajo control. La RAM tranquila, el disco sin alertas, la CPU en 2%.

[02:15] Pero en el navegador los usuarios solo ven el mismo error, un 504 Gateway Timeout. ¿Qué está pasando? Los hilos del servidor web siguen vivos, pero están congelados esperando una conexión libre que nunca llega. O peor, le llegaron tantas sesiones simultáneas a la base de datos que el motor se saturó intentando atender a todas a la vez y la base de datos simplemente se quedó congelada.

[02:42] La opción que de verdad soporta esto es la C, un pool pequeño de unas 10 conexiones. Suena contraproducente, pero el concepto es claro. Menos conexiones activas, pero bien aprovechadas, procesan más trabajo por segundo.

[02:57] Si en el valet parking le das 1000 llaves a un solo encargado, no va a estacionar más rápido. Se va a volver loco corriendo de un auto a otro sin mover ninguno. Con 10 plazas, los coches entran, se mueven rápido y salen.

[03:11] Abrir una conexión, por ejemplo a PostgreSQL o MySQL, no es crear una variable ligera en memoria. Esto representa tiempo y red. Primero, el three-way handshake de TCP. SYN SYN ACK SYN ACK Ya van tres viajes de ida y vuelta antes de enviar un solo byte de datos.

[03:34] Si usas TLS, que deberías, agrégale la negociación de certificados y claves. Luego viene la autenticación en el motor y la reserva de memoria para esa sesión. Hasta ahí ese momento es que la base de datos te escucha. Si hicieras todo ese proceso en cada petición HTTP, tu API se caería aunque tu select tarde medio milisegundo.

[03:57] Abrir y cerrar conexiones como si fueran variables locales es de los errores más caros en el back-end. Para eso se inventó el pool, para dejar un grupo de conexiones ya abiertas, preparadas y autenticadas, listas para reutilizarse.

[04:13] Ese grupo de conexiones listas es tu connection pool. Cuando llega una petición, un hilo del servidor pide una conexión prestada, ejecuta la query rápido y la devuelve inmediatamente al grupo. El siguiente hilo toma esa misma conexión. Ningún usuario tiene una conexión privada.

[04:30] Hay un límite de plazas y una fila de espera cuando todas están ocupadas. Tus 200 hilos en la app existen para atender red y lógica rápida. La base de datos, en cambio, aguanta muchísimas menos sesiones simultáneas. Si pones el pool del mismo tamaño que tus hilos o tus usuarios, estás asumiendo que la base de datos escala igual de fácil que tu servidor web, y no es así.

[04:54] El pool es un cuello de botella hecho a propósito para proteger a la base de datos. Si lo configuras bien, esa pequeña fila de espera se traduce en un sistema estable. En cambio, si lo configuras gigante, se convierte en time out y caídas.

[05:09] Si no son 200 ni 1000, ¿de dónde sale el número 10? No es un número al azar. Por ejemplo, en la documentación de HikariCP y en la wiki oficial de PostgreSQL, hay una fórmula muy clara. Conexiones igual a cores de CPU por dos más discos.

[05:28] El límite real de tu base de datos lo marcan los núcleos que procesan y los discos que leen o escriben, no el número de usuarios que entren a tu web. Si tu servidor de base de datos tiene ocho cores y un disco SSD rápido, la fórmula te da alrededor de 17 conexiones, no 1000.

[05:46] A partir de ahí, mides bajo carga real y ajustas. Pero subir el max pool size cada vez que hay un timeout es un parche falso. Si las conexiones no alcanzan, la pregunta que te debes hacer no es, ¿cómo aumentamos el pool? Sino, ¿por qué las peticiones se están quedando tanto tiempo con la conexión retenida?

[06:06] No importa si programas en Java, Node, Python o Go. Tomas la conexión, haces la query y la devuelves al instante. En Java, try with resources se encarga de esto automáticamente. En otros lenguajes, usas un bloque finally o ejecutas un punto release.

[06:24] El problema viene cuando solo liberas la conexión en el camino feliz. Si ocurre un error, salta una excepción o pones un return anticipado que se salta la liberación, acabas de crear una fuga de conexiones o la excepción pool leak.

[06:39] En un ambiente productivo, no te va a salir un error claro. Lo que vas a ver es que el pool se llena de conexiones fantasma que nadie está usando, pero nadie liberó. Y dos reglas de oro más. Nunca pidas una segunda conexión dentro de un método que ya tiene una abierta. Y jamás dejes una transacción de base de datos abierta mientras haces una llamada HTTP a otra API externa. Estás secuestrando una conexión valiosa mientras esperas a que un servicio externo responda.

[07:08] Pero, ¿qué pasa cuando tu aplicación crece y tienes que desplegar 50 instancias o pods de tu backend? Si cada instancia abre un pool de 20 conexiones, ya tienes 1000 conexiones golpeando la base de datos. Es aquí donde las empresas grandes cambian la estrategia.

[07:26] En lugar de conectar la app directo a la base de datos, ponen un proxy de conexiones en medio. PG bouncer para PostgreSQL o ProxySQL para MySQL. Las miles de conexiones de tus microservicios se quedan hablando con el proxy y el proxy se encarga de multiplexar las hacia la base de datos usando solo un puñado de conexiones reales.

[07:48] El proxy se vuelve el administrador central de las plazas. El incidente que más duele solucionar es el leak de conexiones. Un desarrollador olvida el finally o no usa un bloque protegido. Entran 100 peticiones con error durante el día y 100 conexiones se quedan colgadas para siempre.

[08:07] A la petición 101, el pool ya no tiene nada que entregar. Entra en connection timeout y empieza a lanzar excepciones. El balanceador de carga de tu arquitectura empieza a devolver errores 504. El tras revisar tu base de datos y ves que la CPU está al 2%. El disco no presenta problemas. La base de datos no está saturada, está libre esperando trabajo, pero la aplicación no le puede enviar nada porque se quedó sin conexiones locales.

[08:35] Por eso herramientas como HikariCP tienen un detector de leaks integrado para avisarte en qué línea de código se abrió una conexión que jamás se liberó. Hay otra forma de destruir el pool de conexiones sin que parezca un leak de código.

[08:50] Pasa cuando un hilo pide una conexión, abre una transacción y mientras la transacción sigue abierta, el código hace una llamada síncrona a una API externa o a un microservicio interno. Bajo un tráfico normal no sucede nada, pero si esa API externa tarda 2 segundos en responder, esa conexión a la base de datos se queda retenida durante esos 2 segundos completos sin hacer nada útil.

[09:16] Si ingresan 20 peticiones simultáneas, se agota el pool en 1 segundo. Todos los demás hilos se quedan bloqueados esperando. La base de datos no realiza ningún trabajo, pero la aplicación colapsa por retención de recursos.

[09:30] La otra forma de tumbar un servidor es creer que 200 conexiones van a procesar el trabajo 10 veces más rápido que 20. En la realidad, cuando abres 200 conexiones simultáneas en un motor de base de datos, los núcleos de la CPU pasan más tiempo haciendo context switching, saltando de una sesión a otra sin terminar ninguna, que ejecutando SQL real.

[09:53] Es como un mesero intentando atender 50 mesas al mismo tiempo. Pasa más tiempo corriendo entre mesas y anotando pedidos a medias que sirviendo la comida. Al final, atender 50 mesas a la vez hace que todos coman más tarde que si atendiera cinco de forma fluida.

[10:10] Aumentar el tamaño del pool no te da más velocidad. Casi siempre te da más lentitud. Si haces unas pruebas de estrés comparando ambos escenarios, los resultados siempre sorprenden a los desarrolladores menos experimentados.

[10:24] Un pool de 10 conexiones procesa más peticiones por segundo que un pool de 200. Es simple física de sistemas. La opción C gana porque alinea la carga de trabajo con la capacidad real de la CPU y los discos de tu servidor.

[10:39] Elegir A o B no solo te expone a caídas por timeouts, literalmente obliga a tu base de datos a pelear contra sí misma. Antes de mandar tu código a producción, asegúrate de tener estas dos configuraciones activas. Connection timeout corto. Si el pool se llena, no dejes a los hilos esperando indefinidamente. Pon un timeout de dos a tres segundos para que la aplicación falle rápido, libere recursos y te avisen las métricas.

[11:06] Leak detection threshold activo. Configura tu pool para que imprima una alerta en los logs si una conexión lleva más de cinco o 10 segundos fuera del pool sin ser devuelta. Esto te dirá exactamente qué función tiene el bug antes de que el servidor caiga.

[11:21] La próxima vez que vayas a cambiar el max pool size en tu archivo de configuración, hazte esta pregunta. ¿Estoy ayudando a mi base de datos a procesar más rápido o la estoy obligando a competir contra sí misma. Antes de hacer ese git push, revisa tu código con esta lista.

[11:38] ¿Tus queries usan try with resources o bloques finally? Asegúrate de que la conexión vuelva al pool, pase lo que pase. ¿Tienes un connection timeout configurado? Evita que tus hilos se queden colgados para siempre. ¿El max pool size está calculado con la fórmula real?

[11:56] Recuerda, cores por dos más discos. Olvídate de poner 200 o 1000. ¿Vas a escalar a múltiples servidores? Si vas a tener muchas réplicas, suma las conexiones totales de todas las instancias y considera usar un proxy como PG bouncer o proxy SQL.

[12:15] Si este vídeo te evitó subir un pool a 1000 por si acaso, suscríbete, compártelo con tu equipo y recuerda, cuida tus conexiones. La base de datos no siempre te avisa con la CPU al 100. A veces te avisa con un silencioso 2% y una lluvia de errores 500.
