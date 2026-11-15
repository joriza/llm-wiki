# FastAPI: De un Script a Microservicios en 5 Etapas (Y Dónde Parar)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=uNrOmHDr3u4)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-10-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina 800 líneas en un solo archivo main.py y un bug en reportes que tumba el cobro de pagos. Hay cinco etapas entre ese archivo y una arquitectura enterprise y casi nadie debería llegar a la última. ¿Cuál te toca a ti? Todos te van a decir lo mismo, pásate a microservicios y casi siempre llega demasiado pronto. Vas a ver el código de cada etapa y el punto exacto donde conviene parar. Tu API de Fast API funciona, pasa las pruebas y aún así cada deploy se siente como una puerta. Un solo archivo es un acierto al

[00:32] principio, cero configuración. Levantas el servidor y tienes una API en 10 minutos, pero ese archivo crece sin que nadie lo decida. Un endpoint hoy, otro mañana, una función de utilidad que usan los tres, hasta que un día ya no te animas a tocarlo. ¿Te suena? Ahí llega la factura. Cualquier cambio obliga a desplegar todo, las pruebas arrastran todo y un bug vive en el mismo proceso que tus pagos. Un ejemplo, quieres probar el cálculo de impuestos, para eso importas el archivo completo

[01:01] y el archivo completo abre la conexión a la base de datos apenas se carga. Resultado, una prueba de dos líneas tarda segundos en arrancar y nadie la corre. Cuando nadie corre las pruebas, el bug de reportes llega directo a producción y cada minuto sin pagos es dinero que no vuelve. Eso se llama monolito, es lo que tienes hoy y está bien, pero hay un paso intermedio que casi todos se saltan y es el que más rinde. La solución obvia es separar por responsabilidad dentro del mismo

[01:27] proyecto, sin servidores nuevos, sin red, solo orden. Fíjate en la estructura, una carpeta app, dentro routers para las rutas, services para la lógica de negocio, models para los datos y core para la configuración. La regla es una sola, el router recibe la petición y delega, el service decide, el router nunca contiene lógica de negocio.

[01:49] Así se ve un router de pagos y el archivo principal se queda minúsculo, solo registra los routers. La configuración también sale del código, un solo archivo la lee desde variables de entorno y así el mismo código corre en tu máquina, en pruebas y en producción. Para probar el endpoint de pagos sin tocar la base de datos, usas depens. Una prueba que corre en milisegundos. Esa es la diferencia entre un equipo que prueba y uno que reza.

[02:13] Mira lo que ganaste. Cada módulo se prueba solo, porque depens te deja reemplazar el service por uno falso. Dos personas editan dos carpetas sin pisarse y el reporte de ventas ya no vive en el mismo archivo que el cobro. Esto se llama monolito modular y para muchísimos equipos es el destino final. Pero sigue habiendo un problema. Todo corre en un solo proceso. Un reporte pesado le sigue robando CPU a los pagos y un deploy sigue tumbando todo a la vez. Para eso existe la siguiente etapa y tiene un

[02:41] precio. Un microservicio es lo que ya tenías, pero en su propio proceso, con su propio deploy y a veces con su propia base de datos. Pagos vive aquí, reportes vive allá. Lo que ganas es concreto. Despliegas pagos sin tocar reportes.

[02:55] Escalas solo el servicio que se satura y si reportes se cae, los cobros siguen funcionando. Eso es aislamiento de fallos. También ganas libertad técnica. Reportes puede escribirse con otras librerías pesadas de datos, mientras pagos se queda mínimo y rápido. Cada equipo elige sus herramientas, siempre que hable el mismo idioma por la red.

[03:12] Esa libertad solo vale la pena si tienes una razón concreta. Un equipo que despliega distinto, un módulo que consume 10 veces más que los demás. Sin una razón así, lo único que ganas es más cosas que vigilar. Y existe una regla que se rompe seguido. Cada servicio es dueño de sus datos. Si reportes lee directo la tabla de pagos, no separaste nada, solo escondiste el acoplamiento donde no se ve. Reportes tiene que pedirle esos datos a pagos, por su API.

[03:38] Dos servicios, dos bases de datos, cero tablas compartidas. Pero ojo con lo que pasa cuando algo falla. Reportes se pone lento, pagos lo espera, el gateway espera a pagos y Y pronto un reporte lento dejó sin respuesta a todo tu sistema. Eso se llama falla en cascada y es la razón por la que las tres piezas siguientes no son opcionales. Ahora, tres piezas aparecen en cuanto separas.

[04:02] Primero, el API Gateway, un único punto de entrada que recibe al cliente y enruta a cada servicio. Autenticación, límites de tasa y logs viven ahí, una sola vez. Luego, el descubrimiento de servicios. Si Pagos necesita hablar con Clientes, alguien tiene que decirle dónde está Clientes hoy, porque las direcciones cambian cada vez que se reinicia un contenedor. Y por último, el Circuit Breaker, el cortacircuitos. Si un servicio empieza a fallar, dejas de llamarlo un rato en vez de seguir

[04:30] hundiéndolo con peticiones. Una librería como PyBreaker te lo da hecho. Cinco fallos seguidos y el circuito se abre. Durante 30 segundos ni lo intentas y tu servicio responde rápido en vez de colgarse esperando. Y aquí viene la parte incómoda. Mira de nuevo lo que acabas de hacer. Antes, Pagos llamaba a Clientes con una función. Ahora lo llama por la red. Cambiaste una llamada que casi nunca falla por una que falla de mil formas, lenta, perdida, repetida o a medias. ¿Valió la pena? En 2023, el

[04:59] equipo que vigila la calidad de vídeo en Amazon Prime Video hizo el camino inverso. Pasó un servicio de piezas distribuidas a un solo proceso y su propio equipo reportó que recortó alrededor del 90% de sus costos de infraestructura. Ojo, era un caso muy particular porque vigilaba cada transmisión, pero la lección aplica igual. Lo que escalas son los límites de fallo, no el código. Y cada separación que no necesitas es una red nueva que puede romperse a las 3 de la mañana.

[05:25] Supongamos que ya separaste y con buenas razones. Hay dos caminos para que tus servicios hablen. El síncrono. Pagos pregunta a Clientes y espera la respuesta. Es simple, lo conoces y es lo que usan REST y GRPC. El costo es que Pagos queda atado a Clientes. Si Clientes tarda, Pagos tarda. Mira ese timeout de 2 segundos. Sin él, un servicio lento arrastra a todos los demás. Es la línea más barata y más importante de todo el video. El otro camino es el asíncrono. Pagos no pregunta, avisa, publica un evento, por

[05:56] ejemplo, pedido creado, y a quien le interese lo recibe cuando pueda. Para eso se usa, por ejemplo, Kafka. Lo bueno, si el servicio de correos está caído, el evento espera en la cola y nadie pierde nada. Pagos ni se entera.

[06:09] La regla práctica, si necesitas la respuesta para seguir, síncrono. Si solo necesitas avisar, asíncrono. Y entre Rest y GRPC empieza con Rest. GRPC rinde cuando tienes mucho tráfico interno entre servicios, no antes. Y si este tipo de desglose te sirve, suscríbete.

[06:25] Pero el asíncrono trae su propio problema. Tus datos ya no están en un solo lugar, así que ya no hay consistencia inmediata. Hay consistencia eventual. Durante unos segundos, un servicio sabe cosas que otro todavía no. Eso se diseña a propósito. Un mensaje puede llegar dos veces, así que cada operación debe poder repetirse sin duplicar un cobro. La forma más simple, cada petición lleva un identificador único, y si ya lo procesaste, lo ignoras. Y cuando una operación abarca varios servicios, cada paso tiene su

[06:53] paso de compensación para deshacerlo. Eso se llama saga, y hay que diseñarla desde el principio. Pero antes de la última etapa, el costo que ninguna arquitectura dibuja. Piensa en tu primer día con 10 servicios. Para correr tu cambio en local, tienes que levantar cuatro de ellos, una cola y dos bases de datos. Tu laptop sufre. Tu ciclo de pruebas pasa de segundos a minutos. Y cuando algo falla, ¿de quién es el bug?

[07:15] ¿Tuyo o del servicio de al lado? Hay una defensa, y se llama prueba de contrato. En vez de levantar al vecino, escribes lo que esperas de su respuesta, y el vecino prueba que la cumple. Y hay una trampa peor, el monolito distribuido.

[07:28] Son 10 servicios, pero comparten una librería interna, o una misma base de datos, o tienen que desplegarse en orden. Pagas el costo de la red y no recibes ninguna ventaja. Si para cambiar un servicio tienes que tocar otros tres, no separaste responsabilidades, separaste archivos. Última etapa. Ya tienes servicios que se comunican. Ahora tienen que sobrevivir. Primero, contenedores. Cada servicio se empaqueta igual y corre igual en tu máquina y en producción. Kubernetes los orquesta,

[07:54] levanta réplicas y reinicia las que mueren. Y despliega por oleadas, reemplazando réplicas poco a poco, así que una versión nueva puede entrar sin tumbar el servicio. Los secretos, como contraseñas y tokens, viven en el clúster, nunca en la imagen ni en el repositorio. Pero necesita que cada servicio le diga si está vivo y si está listo. En el despliegue, dos líneas por servicio. Con eso, Kubernetes deja de mandar tráfico a un servicio que no está listo. Eso es parte de la alta

[08:18] disponibilidad, sin magia. Pero todo eso solo te dice que algo murió, no te dice por qué. Y ahí entra la etapa que más duele cuando falta, la observabilidad. En un monolito, un error deja rastro en un solo log. Con 10 servicios, una petición cruza cuatro y el error aparece en el quinto. Sin un identificador común, no hay forma de seguir esa petición. Cada servicio recibe ese identificador, lo escribe en cada log y lo pasa al siguiente en el header de cada llamada. Así, una petición rota se

[08:45] reconstruye en minutos y no en una tarde. Los logs van en JSON. Uno en texto libre se lee a ojo, uno en JSON se filtra por servicio, por nivel y por identificador. Y los números, tres por servicio, peticiones por segundo, tasa de errores y latencia. Prometheus los recolecta, Grafana los dibuja. En Fast API son dos líneas. Y hay un riesgo que el cortocircuitos no cubre, que un servicio comprometido hable con todos, que esté dentro de tu red no significa que confíes en él. Cada llamada interna

[09:12] lleva su token y cada servicio lo valida. Pero nada de esto sirve si desplegar es un ritual, por eso el pipeline. Cada servicio con sus pruebas y su imagen listas para desplegar. El truco es disparar solo el servicio que cambió. Si construir y desplegar un servicio es un ritual de dos horas, no tienes microservicios, tienes un monolito distribuido, que es peor.

[09:30] Entonces, ¿en qué etapa parar? En la dos, hasta que duela por una razón que puedas medir. Un módulo que necesita escalar solo, un equipo que despliega a otro ritmo o un fallo que no pueda arrastrar a los pagos. Cuando tengas una de esas, separa solo ese módulo. El resto es ruido y el ruido se paga en alertas de madrugada. Aquí el bug de reportes que imaginamos al inicio, el que tumbaba los cobros, en la etapa dos habría tenido una prueba esperándolo, no una madrugada de apagar incendios. Esta

[09:56] semana, abre tu main.py, saca un router a su propio archivo y escribe una prueba con dependency overrides. Eso ya es la etapa dos, la que más rinde y no necesitaste ni un servidor nuevo. La arquitectura que escala no es la que tiene más servicios, es la que tiene las fronteras en el lugar correcto. Y si quieres seguir afinando dónde van tus fronteras, el siguiente video está en pantalla.
