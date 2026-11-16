# Tu ORM no es lento, lo estás usando mal

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=sOsCAIbhxOY)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-08-23
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:51

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina que te asignaron la siguiente tarea: desarrollar la funcionalidad del email de pedido enviado. Necesitas tres cosas para el template: el nombre, el link de tracking y los productos que se enviaron. Te pones manos a la obra y terminas el desarrollo. Realizas tus pruebas en local y todo bien. Te llega el correo al instante.

[00:21] El día que se despliega la funcionalidad, el worker de emails se empieza a demorar en los envíos. La cola se acumula y al cliente el correo no le llega. En el código hecho no hay un select de esos datos que necesita el template. Hay un find del pedido que tiene un include de customer, de orders, de order items, de product, de reviews. Y esto pasa porque el ORM se fue a buscar todo lo que ese cliente hizo desde mucho antes: pedidos viejos, productos de esos pedidos, comentarios que el email no

[00:53] necesita. Tú no lo hiciste de esa forma a propósito, sino que el ORM ya trae esas relaciones. Tú solo querías armar un correo y usaste las herramientas que habían en el proyecto. Pero ahora el problema es que el worker se está demorando en los envíos.

[01:07] Y la causa de ese worker demorado no es por un bug o algo raro. Es justo lo que pasa cuando consultas un pedido como si fueras a evitarlo. Y en realidad solo ibas a necesitar el nombre, el tracking y los productos para el template. En el proyecto el order ya se pide con un include de customer, de items, de product. Así está el resto del código.

[01:28] Así lo encontraste y así lo usaste. Un find con las relaciones que ya existían. Si en el pull request para integrar el desarrollo creaste un select con nombre, tracking y los productos, lo más probable es que te digan que estás saltándote el ORM, que para eso está ese ORM y se ve más de senior usar el include, aunque el email no lo pida. El find te devolvió un pedido de verdad, con los objetos tipados. Y como en local tienes un cliente, un solo envío, por eso el correo se envía al instante.

[02:00] En producción no hay un solo cliente, por eso el mismo find te trae pedidos viejos, productos de más y comentarios que el template no necesita. Crear un pedido y armar este correo no son el mismo trabajo. El primero sí necesita todas las relaciones. El segundo no y es importante que sepas eso.

[02:19] Porque lo que tú crees que hace el ORM no es lo que hace. Tú piensas, yo hablo en pedidos y usuarios y él traduce a un SQL justo, como si eligiera las columnas que vas a necesitar o pintar. Pero no. Lo que hace es abrir una sesión. Te pongo dos nombres para ubicarla. En Hibernate le dicen persistence context, en entity framework change tracker.

[02:43] Prisma, type ORM, Django, el que uses. Tiene otra etiqueta, pero es la misma idea. Es una mesa de trabajo en RAM que dura más o menos lo que dura el job o el request. Cada fila que tocas deja de ser una fila, se vuelve un objeto con todas las columnas, aunque el template solo iba a usar el nombre, el tracking y los productos. Ese objeto se guarda en un mapa por ID. Si en el mismo ciclo vuelves a pedir el usuario 8471, no va a la base de datos otra vez, te da la misma instancia en memoria. Sirve

[03:16] para no tener dos copias del mismo objeto. Después viene lo que se conoce como dirty checking. El ORM se acuerda cómo estaba el objeto al cargarlo. Y cuando se guarda, compara cómo estaba con cómo está ahora. Si cambiaste el total, arma un update de esa fila. Si no tocaste nada, no crea SQL de más. Y eso es perfecto cuando estás editando un pedido, pero no cuando cargaste varios años de historial para leer un tracking.

[03:43] El SQL se crea a partir de los que agregas a esa mesa. Un get un include, un join fetch, etcétera. Si se te hace abstracto, lo puedes ver como una mudanza. Llamas y dices, "Necesito la lámpara de la sala para mi departamento nuevo."

[04:00] El contrato de la empresa no dice lámpara, dice, "Trasladamos el hogar." Entonces, envuelven el sofá, el armario, los elementos de la cocina, los muebles de la habitación, porque en su inventario esas cosas están relacionadas con la lámpara.

[04:15] El ORM hace lo mismo con las relaciones del esquema. User tiene orders, order tiene items, item tiene product y product tiene images. Ese inventario lo armaste tú cuando definiste las relaciones del modelo. El ORM no adivina los campos que necesita para ese email, sigue ese contrato.

[04:35] Tú solicitaste el pedido para armar el email. El ORM no entiende que el template solo requiere el nombre, el tracking y la lista de productos. Entiende el esquema. User, orders, items, product, images. Todo lo que está relacionado con ese pedido entra. Igual que la mudanza no te trae solo la lámpara, te trae lo que el contrato llama hogar.

[04:58] Por eso al worker le está llegando todo el historial, no solo lo que se necesita para el email. El include masivo no es la única forma de arruinar un job, worker o proceso. A veces ni pides toda esa información completa al inicio, solo haces un find de los envíos pendientes. 50 filas, una sola query, se ve teóricamente bien.

[05:19] El problema viene después. Entras al bucle que arma los correos y lees shipment.items o shipment.customer. Eso se conoce como lazy loading. El ORM no trae esas relaciones en el primer viaje para ahorrar memoria. Pero en el instante en que tu código toca esa propiedad, dispara otro select a la base de datos. 50 correos se convierten en 50 viajes extra a la red, ya que cada select extra ocupa una conexión del pool y suma latencia de red al proceso.

[05:51] Si pides el producto dentro del loop, lo duplicas. Cuando estás desarrollando, lo ves solo como un punto map limpio de tres líneas. Ya en producción, es una query inicial más 50 peticiones colgadas detrás. El ORM no está mal, simplemente hizo al pie de la letra lo que le pediste que hiciera, ir a la base de datos una vez por cada fila. Esto no se resuelve suponiendo cosas, se resuelve mirando los logs. Hibernate, Prisma, Entity Framework, TypeORM, todos tienen la opción de imprimir el SQL que se está

[06:22] ejecutando en una consulta. Actívalo, corre el proceso o ejecuta la funcionalidad con dos o tres datos de prueba y observa los logs que te deja. Si ves un select inicial y de inmediato observas un sin fin de select where shipment ID igual ID, cambiando el ID una y otra vez, felicidades, tienes el famoso problema de N + 1.

[06:45] Esos tres select extra con datos de prueba serán miles cuando la cola esté llena. Si tu template solo necesita el nombre, el tracking y los productos y los logs te muestran muchas consultas en medio segundo, el ORM no te está ahorrando trabajo, te lo está ocultando detrás de un punto. Shipment.items no es una simple variable en memoria, con lazy loading, eso es una llamada a la red.

[07:09] Revisar el SQL no es el plan de emergencia para cuando el problema explote en producción, es la parte básica de trabajar con un ORM. En un análisis técnico, siempre puede salir alguien que va a decir, "Bueno, agreguemos un include de items y customer para evitar ese lazy loading."

[07:26] Eso elimina las peticiones pequeñas, sí, pero te manda directo al otro extremo, un join gigante mezclando cliente, pedidos, productos y hasta las imágenes. Si el cliente tiene bastantes compras relacionadas, ese join no te va a devolver una fila por pedido. Te genera un producto cartesiano con filas duplicadas de más que el ORM tiene que parsear en memoria para objetos que la funcionalidad de envío de emails no va a necesitar.

[07:55] Un pedido, 10 ítems y cinco imágenes. El join te devuelve 50 filas de una. Si las imágenes están almacenadas en la base de datos en un formato pesado, como aún lo hacen algunos, ese peso también viaja por la red. En Prisma lo llaman inclu danidad. En Entity Framework es then include. En Hibernate join fetch. La forma como se llame da igual, ya que el resultado es el mismo. Le pediste una mudanza entera a la base de datos y eso fue exactamente lo que te entregó.

[08:28] Entonces llega el día de hacer el despliegue y te encuentras con la dura realidad. La cola de correos no avanza, el worker se queda sin memoria y si comparte el pool de conexiones con la API, hasta para iniciar sesión vas a tener errores.

[08:42] Al usuario final no le importa si usas un framework ORM como Hibernate o si usas SQL puro. Él solo ve que hizo una compra y que el correo de confirmación no le llega. Y esto pasa hasta en las grandes empresas. En 2021, GitLab publicó un reporte donde con un solo endpoint de sus runners ejecutaba más de 20,000 queries en una única petición.

[09:04] ¿El culpable? Active Record. Al validar un grupo de runners, traían la lista completa y cada elemento disparaba más consultas hijas en bucle. Ese era el mismo patrón que vimos en el caso del email, traer las relaciones completas para validar un dato.

[09:19] La solución que implementaron no fue dejar de usar Rails ni rehacer la aplicación. Fueron a la consulta exacta que causaba el problema, quitaron la hidratación innecesaria de objetos y pasaron de 20,000 consultas a menos de 100.

[09:32] Arreglarlo fue literal cuestión de abrir los logs y eliminar el trabajo sobrante. Ahora, no me malinterpretes, el ORM no es el enemigo. El día que el usuario hace clic en el botón de comprar, un ORM es la mejor herramienta que puedes tener. Crear la cabecera del pedido, insertar las 10 líneas de productos, manejar el estado en memoria, todo dentro de una misma sesión. Acá sí quieres la mudanza en un viaje, pedido y productos juntos. Si agregan el mismo producto dos veces, el mapa por ID deja

[10:03] un solo objeto en la sesión. El dirty checking allí es una maravilla. Si modificas una cantidad o el total, llamas a guardar y él se encarga de estructurar el update de esa fila y los inserts correspondientes dentro de una transacción.

[10:17] Si el proceso de cobro falla, entonces se genera un rollback y no te quedan registros huérfanos. Para escribir datos complejos, el ORM te invita a escribir código SQL repetitivo a mano, donde se te puede olvidar una clave foránea o pasar por alto algo importante.

[10:33] El problema es usar esa misma herramienta de escritura para una lectura simple, de la cual solo necesitas ciertos campos. Para enviar un email de pedido enviado, no necesitas modificar información de la base de datos. Solo necesitas el nombre, el tracking y los productos.

[10:50] Los dos primeros salen del envío. Los productos son filas de ítems. Un select de esas dos columnas más los ítems de ese envío o una proyección ligera sin rastreo de cambios es más que suficiente. En Entity Framework usas as no tracking.

[11:07] En Prisma haces un select explícito en vez de un include. Y en Hibernate te ayudas de un DTO o una consulta nativa. Ahora, cuando hablo de hacer una consulta directa o escribir el SQL a mano, no me refiero a concatenar strings en el código como si estuviéramos en los años 90, abriendo la puerta a una inyección SQL.

[11:29] La regla de oro del SQL nativo es que siempre ir parametrizado, tipado y mapeado a un DTO de solo lectura. Stack Overflow contó cómo manejaron esto en 2011. Usaban Link to SQL y la página de preguntas tardaba 200 milisegundos en responder en el servidor.

[11:49] Por esto no dejaron de usar su ORM. En las consultas pesadas y de alto tráfico, escribieron el SQL a mano parametrizado para mapear únicamente lo necesario. De ahí nació Dapper. Y esa misma página bajó a 50 milisegundos.

[12:05] Donde había transacciones complejas, mantuvieron el ORM. Donde importaba el rendimiento de lectura, escribieron el SQL exacto y seguro. El debate nunca ha sido usar ORM o no usarlo. El criterio real se reduce a esto. Este bloque de código está modificando un registro complejo o solo está leyendo datos para un correo, un listado o un reporte.

[12:29] Si estás guardando un pedido, usa el ORM con su sesión y sus transacciones. Si solo estás leyendo para llenar una plantilla, pide el nombre, el tracking y los ítems de ese envío y asegúrate de entender el SQL que se va a ejecutar.

[12:45] Lo que más se puede pasar en el código nuevo enviado en los pull requests es la pereza. Pocos se toman el tiempo de hacer esa revisión cuando están realizando el desarrollo. Activar en local los logs para ver las queries y tener claro qué sentencias SQL se están ejecutando. Y ojo, el trabajo en el code review va en doble sentido. Si ves un include descontrolado, pides ajustarlo a una proyección ligera. Pero si ves que alguien escribió SQL a mano, no solo miras que sea rápido, también verificas

[13:15] que esté bien parametrizado, que no exponga vulnerabilidades y que esté aislado en su capa de datos. En el IDE todo se ve limpio, pero la realidad de lo que llega a la la de datos es otra historia. Si no sabes qué sentencias SQL está generando tu ORM por detrás o qué consulta escribiste a mano, no estás usando la herramienta de forma correcta.

[13:37] Estás dejando que la herramienta tome decisiones por ti. Hoy le pides a cualquier IA que te genere la lógica, por ejemplo, para gestionar pedidos y si no le das las especificaciones claras de lo que necesitas, lo primero que te va a entregar es un find repleto de includes gigantescos, porque así están la mayoría de los ejemplos de internet. Le dices que necesitas gestionar pedidos y te termina armando el hogar. Le pides nombre, tracking y productos e igual te arma el include que ya está en el order

[14:05] del proyecto. El código sale bien tipado, limpio y pasando todos los tests locales con un pedido de prueba de un solo ítem. El problema es que la IA no sabe, si no se lo dices, que esas consultas se ejecutarán en un ambiente productivo en el cual no hay poca información, donde un cliente puede tener información de varios años. Pero tú sí lo sabes.

[14:26] El trabajo en el code review no es verificar si el código se ve y se lee bien, sino ir más allá y entender lo que se está construyendo. Si para enviar ese email de pedido enviado ves 40 selects en los logs, el código se debe cambiar.

[14:40] El ORM se queda en el proyecto, pero el include descontrolado se va. En resumen, el ORM no adivina lo que necesitas, construye objetos en memoria y ejecutas consultas según las propiedades que tocas en el código. Para crear un pedido con sus líneas te ahorra trabajo de verdad. Para el email de pedido enviado, con obtener el nombre, el tracking y los productos de ese envío te es suficiente, no hace falta el historial del cliente.

[15:08] Como ya vimos, GitLab no dejó de usar su ORM, solo eliminó las consultas sobrantes. Stack Overflow no hizo cambios en su arquitectura, escribió la consulta directa donde hacía falta. La próxima vez que veas un include en un código nuevo, no preguntes si el código se lee bien, pregunta qué SQL va a generar.

[15:28] Si ya te ha pasado esto en un job, un listado o un worker que en tu ambiente local iba bien y en producción no tanto, déjalo en los comentarios y dime cuántas queries viste en el log cuando revisaste. Si te gustó este vídeo, suscríbete, compártelo con ese compañero que aprueba ese código a ciegas y nos vemos en un próximo vídeo.

[15:47] Recuerda, el ORM se queda, pero el criterio lo pones tú.
