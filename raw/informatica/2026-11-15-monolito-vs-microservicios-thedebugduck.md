# La MENTIRA de los Microservicios desde el Día 1 (Monolito vs Microservicios)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=JgrsAyefLFU)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-08-09
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:35

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Eres uno de cinco desarrolladores que conforman el equipo. Van a construir una aplicación que, si les va bien, puede llegar a ser usada hasta por 100,000 usuarios. Todavía no hay tráfico real, apenas existe la idea del producto.

[00:15] En la reunión de arquitectura, alguien dice esa frase que seguramente ya escuchaste mil veces: "Vamos a usar microservicios desde el día uno, ya que así escalamos bien." Eso suena serio, a empresa grande y organizada. Ahora sé honesto contigo. ¿Tú también habrías dicho que sí? ¿O al menos te habrías callado para no parecer el único que no piensa en escalamiento?

[00:39] Quédate con tu respuesta, porque ahora entraremos en detalle en lo que suele pasar cuando esa decisión se toma con un equipo pequeño y el producto todavía ni existe. En esa reunión nadie habla del costo. Prometen que van a escalar y que la aplicación va a ir volando.

[00:56] Tres meses después, con el mismo equipo de cinco, el sprint se te va en configurar pods, en arreglar pipelines, en pelear contratos entre servicios y en revisar logs, y las features que el negocio pedía siguen en el backlog.

[01:10] Docker y Kubernetes no son el problema. Si partes demasiado pronto, en cada cambio tendrías más de un deploy, un entorno que se rompe y una hora buscando en qué servicio ocurrió lo que antes veías en un solo stack trace. Dejas de sacar producto y te conviertes en un equipo de plataforma a medias. No estás escalando desde el día uno, estás armando la infraestructura de una empresa enorme cuando todavía son cinco en la misma oficina. Y encima te venden la idea que dividirlo te va a hacer más

[01:41] rápido, como si cada servicio pequeño corriera más rápido solo por estar separado. Eso mezcla dos cosas distintas. Una es cuánto tarda tu código en CPU y memoria dentro del mismo proceso. Otra es cuánto tarda una llamada en cruzar la red.

[01:57] Los microservicios no hacen que tu lógica de negocio calcule más rápido. Lo que hacen es convertir una llamada local en un viaje por cable. Si tu problema era un índice mal puesto o un algoritmo pesado, dividir servicios no lo arregla, le sumas latencia.

[02:13] Entregar features más rápido y que un request responda en menos milisegundos no son lo mismo, aunque en la reunión suenen igual. En el monolito, cuando pedidos le pide algo a usuarios, muchas veces es una llamada a función en el mismo proceso. Eso vive en RAM, nanosegundos, nada costoso de verdad comparado con lo que viene después.

[02:35] Si eso mismo lo pasas a microservicios, se vuelve HTTP o GRPC, serializas JSON o Protobuf, resuelves DNS, TCP, a veces TLS, cruzas la red, deserializas al otro lado y regresas. Ya no son nanosegundos, son milisegundos, a veces decenas.

[02:55] Y si un solo click del usuario dispara pedidos, usuarios, inventario, precios, cupones, tu endpoint simple se convierte en una cadena de idas y vueltas. La velocidad de la red siempre va a perder contra la velocidad de la memoria local. No hay arquitectura de moda que cambie esa física.

[03:15] Lo podemos ver como un edificio de oficinas. En el monolito, necesitas un documento y se lo pides al de al lado. Se gira, te lo pasa, sigues. Eso es la llamada en memoria. En microservicios, ese compañero ya no está en tu piso, está en otra sede al otro lado de la ciudad.

[03:32] Sales, tomas un taxi, te enfrentas al tráfico, firmas en recepción, te dan el papel y vuelves. A veces hay embotellamiento, a veces la otra oficina cambió el endpoint y nadie te avisó. Para una empresa enorme con sedes reales, ese modelo puede tener sentido.

[03:49] Para cinco personas en la misma sala, mandar un taxi por cada papelito es absurdo. El taxi no es modernidad, es el precio de repartir el sistema. Y esto no le pasa solo a startups. En 2023, el equipo de Prime Video contó un caso público. Su servicio de monitoreo de calidad de audio y video estaba montado con piezas serverless, Lambda, Step Functions y los frames pasaban por S3 entre microservicios. La factura y el costo de mover datos por la red se dispararon.

[04:22] Lo pasaron a un solo proceso sobre S2 y SS con los datos en memoria. Según su post de ingeniería, bajaron el costo de infraestructura de ese servicio en un 90% y aguantaron más carga. Ojo, no reescribieron todo Prime Video.

[04:38] Arreglaron un servicio concreto donde la red y el almacenamiento intermedio les estaban cobrando de más. Antes de preguntarte por empresas grandes como Netflix o Amazon, un concepto que mucha gente nombra y pocos se explican es la ley de Conway.

[04:55] Melvin Conway la planteó en los 60, más o menos así. Las organizaciones terminan diseñando sistemas que copian la forma en que se comunican. Si tienes cuatro equipos que casi no se hablan, vas a acabar con cuatro pedazos de software que tampoco se hablan bien.

[05:11] El organigrama se filtra al código, te guste o no. Y entonces, Netflix, Uber o Amazon no usan microservicios porque una consulta viaje más rápido por HTTP, los usan porque tienen cientos o miles de desarrolladores. Si todos envían cambios al mismo repositorio y al mismo deploy, se pisan.

[05:32] Merges con conflictos difíciles de resolver, releases detenidos, miedo a tocar el código del otro equipo. Microservicios bien hechos alinean frontera de servicio con frontera de equipo. Resuelven un problema de organización, no de código más veloz.

[05:50] Copiar el organigrama de una empresa con 2000 ingenieros cuando ustedes caben en una misa, no te hace más profesional. Solo te agrega complejidad que tu equipo no pidió. Uber lo vivió. En su blog de ingeniería dijeron que llegaron a unos 2200 microservicios críticos. A esa escala, el grafo de quién llama a quién se vuelve un laberinto. Depurar un error atraviesa demasiados equipos y saltos de red.

[06:16] No volvieron a un monolito. Crearon Doma. Domain Oriented Microservice Architecture. Agrupar servicios en dominios con gateways y reglas de capas para que el exterior hable con el dominio y no con 200 APIs sueltas. Otra vez, la solución fue organizacional y no un atajo de rendimiento.

[06:37] Y el costo a pagar no solo es la latencia. También se ve en las transacciones. Si nunca te topaste con la sigla ACID, es lo que promete una base de datos relacional bien usada en una sola transacción. Atomicidad. Todo el bloque entra o no entra nada.

[06:55] Consistencia. No dejas reglas rotas a mitad de camino. Aislamiento. Otra operación no te vea a medias. Durabilidad. Si hiciste commit, eso queda aunque se caiga el servidor. En la práctica, para ti es el todo o nada del begin, commit, rollback.

[07:14] En el monolito una compra puede vivir en esa promesa. Begin, cobras, bajas inventario, creas el pedido, commit. Si algo falla, rollback. El dinero y el stock no se pelean. Partes eso y cada dominio se lleva su base. Usuarios, pagos, inventario.

[07:34] Pagos hace commit. Inventario falla. Cobras y no hay stock. No existe un rollback global que te salve. En el edificio, una oficina ya cobró el cheque y la del almacén dice que no hay producto y nadie puede anular las dos firmas en una sola acción.

[07:52] Para no dejar datos rotos, la gente termina implementando consistencia eventual, sagas, Kafka o RabbitMQ, compensaciones, reintentos, idempotencia y todo eso funciona. Las empresas grandes viven de eso, pero no es fácil.

[08:09] Ya no programas solo la compra, programas la orquestación, el qué pasa si falla el paso tres, el mensaje que deshace el cobro y la alerta cuando la saga se quedó a medias. Es como volver a mandar el taxi y además contratar despachador, GPS y protocolo de devolución.

[08:29] Si tu monolito todavía te da ACID local, no te metas con esa complejidad solo porque en internet digan que los monolitos ya no sirven. Y cuando ya montaste sagas y colas, todavía te falta otra cuenta, entender el sistema cuando se cae.

[08:45] Un día cualquiera llega el mensaje de checkout en error 500. En el monolito abres el log del proceso, buscas el request ID, ves el stack trace y sabes en qué línea falló. En microservicios, ese mismo checkout cruzó cuatro o cinco servicios, API Gateway, pedidos, pagos, inventario, quizás notificaciones.

[09:07] Cada uno tiene su log, su pod en Kubernetes, su versión distinta. El error puede estar en el timeout de uno, en el retry de otro o en un mensaje que nunca llegó a la cola. Sin un correlation ID o tracing distribuido, terminas saltando de contenedor en contenedor a ciegas.

[09:25] Y montar eso no es activar un check, es instrumentar, estandarizar logs, cuidar el service mesh si lo tienen y mantener el tablero. Con 2,000 ingenieros, hay equipos enteros para eso. Con cinco, el monitoreo te abarca el sprint mientras las features del negocio siguen esperando. Con todo ese costo encima, la pregunta es, ¿qué haces si todavía eres un equipo chico? La respuesta no es dejar el código hecho un desastre. Acá entra un término que se escucha mucho últimamente. Monolito

[09:57] modular. Es decir, un solo ejecutable, un solo despliegue y normalmente una sola base de datos. Pero adentro, el código está dividido por dominio. Usuarios, pedidos, pagos, notificaciones, cada uno en su módulo o carpeta, con reglas claras de qué puede llamar a qué.

[10:17] Sigues usando llamadas en memoria, sin red entre pedazos. Si más adelante un módulo realmente necesita vivir aparte, ya sabes por dónde cortar. Mientras tanto, el equipo sigue sacando features sin montar media plataforma solo para empezar. Eso solo funciona si respetas las fronteras. El módulo de pagos no debería meterse en las tablas internas de usuarios. Se hablan por interfaces o DTOs.

[10:43] Si alguien le pega directo a la tabla del otro porque era más rápido, en pocos sprints dejas de tener módulos y vuelves a un monolito enredado, solo que ahora con carpetas. Esa separación es lo que después te permite sacar un servicio sin reescribir todo.

[10:59] Hoy te comunicas adentro del mismo proceso. Mañana, si hace falta, sacas ese módulo a otro despliegue. Si ya tienes imports cruzados por todos lados, una clase gigante que todo el mundo usa y queries que tocan tablas de medio sistema, no tienes un monolito modular. Tienes deuda técnica grande. Sí llega un momento de sacar un servicio, no porque esté de moda hacerlo, sino porque una parte del sistema ya no puede convivir junto con el resto.

[11:28] Sacas un módulo cuando esa parte tiene mucha más carga que las demás, o cuando necesita otra tecnología que no quieres meter en el monolito. Por ejemplo, un servicio de machine learning, procesamiento de vídeo o un runtime distinto.

[11:43] Ahí pagar latencia de red puede valer la pena. Escala solo ese pedazo, lo despliega solo y si se cae, no tumba toda la aplicación. Si nadie tiene ese problema y el único argumento es así lo hacen las empresas grandes, todavía no te hace falta dividirlo.

[12:01] Antes de tomar la decisión, mira tres cosas. ¿Cuántos son en el equipo? De uno a unos 20, el monolito modular casi siempre te deja avanzar más rápido. Si ya son más de 50 y varios equipos se pisan en el mismo despliegue, ahí sí tiene sentido hablar de separar servicios.

[12:19] ¿En qué etapa van? ¿Todavía validando si el producto sirve? No es lo mismo que una empresa grande con dominios claros y estables. ¿Y cómo están de devops? Si un solo pipeline ya les falla seguido, microservicios multiplica ese dolor. Sin logs decentes, sin CI estable y sin acuerdos claros entre equipos, no estás listo para repartir el sistema.

[12:42] Decide con el tamaño real de tu equipo, no con el de otra empresa. Los microservicios no te hacen más rápido solo por dividir el código. Cambian llamadas en memoria por llamadas de red. Sirven cuando el tamaño del equipo o la carga de un módulo lo piden.

[12:58] Mientras tanto, un monolito modular te deja entregar features sin tener que implementar patrones como sagas y tracing desde el día uno. Primero haz que funcione, luego ordénalo por módulos y solo si de verdad una parte no funciona de esta forma, sácalo.

[13:15] Ahora, déjame saber, ¿en tu empresa quieren o implementar un microservicios porque es como lo hacen los demás o tienen un monolito bien separado y les funciona? Si este vídeo te sirvió, suscríbete, pásale el vídeo a esos compañeros que quieren implementar microservicios para todo y nos vemos en un próximo vídeo.
