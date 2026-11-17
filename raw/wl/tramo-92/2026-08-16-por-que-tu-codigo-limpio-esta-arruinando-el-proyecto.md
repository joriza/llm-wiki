# Por qué tu código "Limpio" está ARRUINANDO el proyecto

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=NTA6Nt2TSNw)
- **Canal**: TheDebugDuck
- **Publicado**: 2026-08-16
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:55

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Te toca revisar la prueba técnica de un candidato. El reto técnico era el siguiente: dado el tipo de cliente, calcular el costo de envío. Premium va express con descuento, el resto va estándar. Miras y dices, un if, dos números, 10 líneas.

[00:18] El candidato te manda el repositorio y hay 12 archivos. Una interfaz shipping strategy. Dos clases que la implementan, standard shipping strategy y premium shipping strategy. Un shipping context que recibe la estrategia por constructor.

[00:33] Una shipping strategy factory que decide cuál instanciar. Un singleton registry para que la fábrica sea única. Tres interfaces más. Para dos tipos de cliente. Ahora, la versión simple, la que debía entregar. Una función calculate shipping que recibe el tipo de cliente y devuelve el precio.

[00:53] Adentro, un if. 10 líneas con los tests. Eso es todo. Eso resuelve el problema de hoy. Si mañana llegan cuatro transportistas más con lógica distinta, el código te lo pide solo y ahí agregas la abstracción. Lo interesante es que si hoy le pides a un agente de IA que haga ese mismo ejercicio y le agregas, hazlo extensible y bien estructurado, te genera exactamente los 12 archivos.

[01:18] No porque sea la solución correcta, sino porque los modelos fueron entrenados en millones de líneas de código enterprise y aprendieron que eso es lo que se ve serio. Serio y correcto no son lo mismo. Todo ese árbol de clases viene de un libro, Design Patterns, Eric Gamma y tres coautores en 1994, la Gang of Four o banda de los cuatro.

[01:40] El libro en sí es bueno, tiene contexto, tiene razonamiento, lo que no tiene es una nota que diga cuándo no aplicarlo. Bueno, sí la tiene. En el prefacio dicen exactamente que el error más común es forzar el patrón en un lugar donde no existe el problema que el patrón resuelve.

[01:59] Ese libro se escribió para compiladores y frameworks gráficos en C++ de los 90, donde cambiar el algoritmo que dibuja un botón en pantalla sin recompilar todo era un problema real. Hoy tienes un endpoint tipo post llamado orders que hace una query a una base de datos y devuelve información en formato JSON. No estás construyendo un sistema de renderizado y los modelos de IA que generan código fueron entrenados en millones de líneas de ese código enterprise que adoraba los patrones. Por

[02:28] eso cuando le pides a Claude o Copilot u otra herramienta un servicio de pagos, aparece IPaymentService por defecto, no porque sea lo correcto para tu caso, sino porque es lo que más veces vio. ¿El más conocido? El Singleton.

[02:42] La idea es que solo exista una instancia en toda la aplicación. El código clásico lo conoces, ConfigManager con constructor privado y un get instance que retorna esa única instancia. Se ve ordenado. El problema viene cuando tres archivos distintos hacen get instance en el mismo proceso, el checkout service para el IVA, el mailer service para el límite de envíos y el batch job de facturas. El batch actualiza el IVA a mitad de noche, el checkout que corre al mismo tiempo lee ese valor en plena transacción y el

[03:15] precio queda mal. Ahora en los tests, el de descuento pasa. Lo corres después del batch y falla porque el singleton se quedó con el IVA viejo. Cambias el orden y vuelven a pasar. El problema es que un singleton es global.

[03:29] ¿La alternativa? Le dices a Spring, NestJS o Dotnet que ConfigManager tiene scope de singleton y el framework crea la instancia una sola vez. En los tests le pasas una instancia limpia por constructor, sin estado compartido.

[03:43] Google lo documentó en la guía oficial de Android porque pasaba constantemente. El escenario era este, un desarrollador quiere de recrear un helper pesado cada pantalla. Entonces, escribe algo como sessionmanager.getinstance this, donde this es la activity, que en Android es básicamente la pantalla que el usuario está viendo. La instancia existe, el helper queda guardado, parece eficiente.

[04:07] Ahora el usuario rota el teléfono. Android destruye esa activity y crea una nueva, orientada en horizontal. Eso es el ciclo de vida normal de Android. El problema es que el singleton todavía tiene una referencia a la activity anterior. El garbage collector mira esa activity y dice, "No puedo limpiarla, alguien la está usando."

[04:26] Pero ese alguien es un singleton que vive para siempre. La activity destruida se queda ocupando memoria. Haces eso en 10 pantallas distintas, el usuario navega y rota el teléfono algunas veces y en un teléfono con poca RAM, el sistema lanza un out of memory error y la app se cierra.

[04:43] En tu teléfono de desarrollo con 4 GB libres, nunca lo ves. Lo ven los usuarios con teléfonos de gama baja. Y las reseñas de una estrella en la Play Store solo dicen, "La app se cierra sola." La solución es que ese objeto de larga vida no guarde una referencia a algo que tiene ciclo de vida corto. Si necesita un contexto de Android, usa el de la aplicación, que vive lo mismo que el proceso.

[05:06] Este se ve en casi cualquier proyecto Java heredado y en algunos TypeScript también. Tienes una clase user service que declara a find by ID, create, update, delete, find by email sin una sola línea de lógica, solo las firmas. Al lado, y user service implement, que es donde está el código real. Queries, validaciones, todo.

[05:30] El argumento es siempre el mismo. Por si mañana cambiamos cómo se guardan los usuarios. En un proyecto de 500 clases de dominio, eso son 1,000 archivos. Un desarrollador nuevo hace clic en find by ID. El ID lo manda a la interfaz. Ve la firma.

[05:45] Hace control más clic para ir a la Si en lugar de ese party tienes una sola clase user service con los métodos adentro, el primer clic llega al query. La interfaz tiene sentido cuando ya hay dos implementaciones distintas en producción. Una sola implementación no la necesita.

[06:02] El checkout debe cobrar y alguien dice, "No llamemos a Stripe directo por si mañana usamos PayPal." El resultado es esto. Una interfaz payment gateway, una abstract payment gateway strategy, un Stripe payment gateway imp y una payment gateway factory que lee payment provider. Cuatro archivos para cobrar.

[06:24] La variable de entorno siempre dice Stripe. Pasan 3 años. Stripe saca billing con suscripciones y hay que integrar el endpoint nuevo. El cambio tiene que pasar por la interfaz, la abstracta, el implement y la factory. Cuatro archivos para una integración.

[06:41] Lo que debía estar desde el día uno. Una clase Stripe client, un wrapper del SDK con charge adentro. Si PayPal llega como necesidad real con una fecha, ahí extraes la interfaz. Hasta entonces es código que no tiene por qué existir.

[06:56] A principios de los 2000, la plataforma más usada te lo imponía por reglamento. Java y sus Enterprise Java Beans versión 2. Para guardar un usuario, el estándar exigía tres archivos por clase. La remote interface, la home interface y la clase bean con la lógica real, más un XML de configuración. En una pequeña, eso eran 15 archivos solo de entidades, más los XMLs. Y encima session facade, DTO, service locator, business delegate.

[07:27] Cada patrón con su clase y su interfaz. Un bug en el precio de un producto requería abrir ocho archivos para encontrar la multiplicación. Equipos medianos tardaban seis meses en tener la primera pantalla. En 2002, Rod Johnson publicó Expert One on One y demostró cómo construir lo mismo con un décimo del código. Ese libro fue la base de Spring.

[07:49] Spring no nació como una abstracción nueva, fue la respuesta directa a la sobre ingeniería. Entonces, imagina que te llega un mensaje en la madrugada, el cobro está fallando. El punto de entrada es checkout controller, el precio del envío no está ahí. Hay una llamada a shipping context, vas.

[08:08] El contexto tiene inyectada una shipping strategy, no calcula nada, delega. Vas a la estrategia. Llama a un price calculator helper. Vas al helper. Adentro hay un if, si el cliente es premium, retorna 9.99, si no, 14.99.

[08:26] Ahí está el número. Cinco archivos, cuatro clics, para un if de dos ramas. El sistema tardó microsegundos. Tú tardaste 10 minutos en llegar al if y otros 50 entendiendo por qué la factory le pasó la estrategia equivocada.

[08:41] Eso es complejidad cognitiva, no cuántos ifs tiene el código, sino cuántos saltos mentales necesita alguien para seguir el flujo. La versión simple, una función calculate shipping en el propio checkout service, recibe el tipo de cliente, retorna el precio. 12 líneas, un archivo, 30 segundos.

[09:02] La diferencia no es de rendimiento. Cuando la complejidad llega a ese nivel, el costo no es solo un soporte que tarda más. En agosto de 2012, Knight Capital Group, firma de trading algorítmico en Wall Street, despliegan un sistema llamado Smarts en ocho servidores.

[09:20] Había una estrategia, Power Peg, que ya no debía ejecutarse. Se desactivaba con un flag en el archivo de configuración. Siete servidores recibieron el archivo nuevo. El octavo, por error en el deploy, se quedó con el anterior.

[09:36] Arrancó con Power peg activo. Durante 45 minutos ejecutó miles de órdenes. Compraba a precio de mercado y vendía de inmediato más barato. 440 millones de dólares de pérdida. El informe de la SEC señala algo que importa más que el número.

[09:54] Nadie en la organización entendía del todo cómo interactuaban los flags, las estrategias y los componentes de Smarts. Knight Capital fue absorbido de urgencia meses después. En octubre de 2013, el gobierno de Estados Unidos lanza healthcare.gov, el sitio para que los ciudadanos se inscriban al seguro de salud.

[10:14] El día del lanzamiento, primero de octubre, el sitio no funciona para casi nadie. Según los registros del propio gobierno, en las primeras horas solo seis personas completaron el proceso de inscripción. Seis, en un país de 300 millones.

[10:30] El informe posterior describe un panorama familiar para cualquiera que haya trabajado en un proyecto grande con muchos proveedores. Tests que pasan en local e integración que no funciona. Más de 50 contratistas coordinando partes distintas del sistema. Y capas de abstracción entre los sistemas de cada proveedor para que ninguno tuviera que hablar directo con otro.

[10:50] Cada empresa puso su fachada, su modelo de datos, su capa de traducción. El alta de un usuario cruzaba un pasillo de adaptadores antes de llegar a donde tenía que llegar. El gobierno contrató un equipo de emergencia con gente de Google, Amazon y otras empresas. Lo que ese equipo hizo en las primeras semanas fue identificar las capas innecesarias, eliminarlas y conectar los sistemas que ya existían de forma más directa.

[11:15] El presupuesto total del proyecto, entre desarrollo, rescate y correcciones, superó los 2.000 millones de dólares. Entonces, cuando el product manager dice en una reunión que quizá en el futuro exporten reportes a Excel y PDF, además del CSV que ya tienen, ese día alguien abre el chat de la gente y pide el módulo de exportación bien estructurado y extensible. El agente entrega esto, una interfaz report exporter, tres clases CSV exporter, Excel exporter y PDF exporter y una report factory.

[11:50] CSV exporter tiene código, Excel exporter y PDF exporter tiran not implemented exception. El CSV ahora pasa por la interfaz y la factory antes de escribir el archivo. Cuando sea hora del PDF, los requisitos van a incluir plantillas por idioma, reglas de impuestos y logo del cliente.

[12:08] La interfaz no pensó en eso. Va a encajar a medias y van a romper el contrato de todos modos. Cuando haya tres formatos y un patrón claro, ahí se extrae la interfaz. Jack ni no dice que no pienses a futuro, dice que no escribas el código del futuro hoy, cuando todavía no sabes cómo va a ser.

[12:26] Hay una programadora que lleva años enseñando diseño orientado a objetos. Sandi Metz, autora de Practical Object Oriented Design. En un post de 2016 lo dejó claro. Duplicar código es más barato que armar la abstracción incorrecta.

[12:43] Por ejemplo, esta tarea. Crear un mail de bienvenida. Subject, nombre, link de activación. Lo escribes en send welcome email. Una semana después, el mail de factura. También tiene subject y nombre más el monto. Se parece.

[12:58] El instinto es extraer un email template builder para no repetir el saludo. Llega el reset de contraseña. No tiene saludo formal y el link expira en una hora. El helper no contempla eso. Le dejas un flag para apagar el saludo y un token URL opcional.

[13:15] Ahora el builder tiene tres ramas para tres mails que no son el mismo problema. Tres funciones sueltas, send welcome email, send invoice email y send password reset email hubieran costado menos. La regla de tres. La primera vez, hazlo directo. La segunda, tolera la duplicación. La tercera, el patrón real ya apareció y ahí sí abstraes con información suficiente.

[13:42] Nada de lo que vimos dice que los patrones son malos. Tienen un costo y ese costo tiene que solucionarte algo concreto. El strategy para dos ifs no vale. Pero mira este caso. Una plataforma de envíos con seis transportistas. FedEx, UPS, DHL, un courier nacional y dos regionales. El switch que arrancó con dos ramas ahora tiene 40 líneas. Cambiar la fórmula de uno es tocar ese bloque y rezar por no romper los otros cinco. Ahí el strategy sí. Cada lógica a su clase y el transportista siete es una clase nueva.

[14:18] Otro caso. El pedido se confirma y hay que mandar el mail, descontar inventario, avisar al depósito y registrar la venta. Si el checkout service llama a los cuatro, cualquier cambio en el depósito te obliga a abrir el checkout. El observer resuelve eso.

[14:34] El checkout emite order confirmed y cada sistema reacciona solo. La pregunta es la misma. ¿El problema que resuelve este patrón ya existe hoy en el código o todavía es un quizá? Si ya duele, el patrón tiene sentido. Si es un quizá, es deuda técnica disfrazada de arquitectura.

[14:53] Volvemos a la prueba técnica. Un if, una función, un test. Hay desarrolladores que entregan eso y hay quien entrega 12 archivos porque así se ve serio. La IA también te los genera si le pides que lo haga extensible. Saber qué borrar vale tanto como saber qué pedirle.

[15:13] Te dejo tres preguntas antes de abstraer. ¿Resuelve un acoplamiento de hoy? Si no, espera. ¿Hay más de una variante real ahora? ¿Cero o una? No hay patrón. ¿Tu compañero sigue el flujo solo en un soporte? Si necesita un tour, hay demasiada indirección.

[15:33] Un patrón no es una medalla, es una herramienta. Si el problema no existe, entonces solo es ruido. Ahora, cuéntanos qué prácticas de sobreingeniería has visto en tu día a día. Si viste un factory fantasma o un user service implement eterno, déjalo en los comentarios. Esos ejemplos enseñan más que el libro.
