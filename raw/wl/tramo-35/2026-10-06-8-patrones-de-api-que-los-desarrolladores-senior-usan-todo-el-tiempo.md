# 8 patrones de API que los desarrolladores SENIOR usan TODO el tiempo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ed94R7RKGq8)
- **Canal**: Cognix
- **Publicado**: 2026-10-06
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:16

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Una API se puede crear en pocos minutos, pero diseñar una API que se mantenga limpia con millones de solicitudes, múltiples clientes y requisitos que cambian con los años es un problema completamente distinto. Los desarrolladores con experiencia no se limitan a crear endpoints. Reconocen patrones. Patrones para enormes cantidades de datos, para redes confiables, para muchos clientes distintos, para sistemas distribuidos y para cambiar una API sin que nadie salga perjudicado. En este video te

[00:31] presentamos ocho patrones de API que todo desarrollador con experiencia debería conocer. En cada uno veremos primero el problema y después cómo lo resuelve el patrón. Este es nuestro mundo. Tu aplicación web, tu aplicación móvil e incluso otras empresas se conectan desde un lado. Usuarios, pedidos, productos y pagos están del otro y en el medio hay una API. Cuando el sistema crece, esa API se convierte en uno de los límites más importantes de toda la arquitectura. Empecemos por el

[01:01] fundamento. Patrón número uno, diseño orientado a recursos. Supongamos que desarrollamos una API para un e-commerce. Un enfoque común es pensar en acciones, crear producto, obtener producto, actualizar producto, eliminar producto. Cada acción genera una URL completamente nueva. La solución, diseñar tu sistema alrededor de las cosas, no de las acciones. Usuarios, productos, pedidos. Cada uno se convierte en la URL de una colección y un producto vive en barraproducts/42.

[01:34] Ahora el método http indica qué hacer. Con get se lee el producto, con put se reemplaza, con delete desaparece. Y con post se crea uno nuevo en la colección. Entonces en lugar de escribir barra delete products/42. Si entendés cómo funcionan los productos, ya sabes cómo funcionan los pedidos y los usuarios. Patrón dos.

[01:59] Paginación. Imagina que nuestra app tiene 10 usuarios. Es fácil devolverlos a todos, pero ¿qué pasa con 10,000? Con 10,0000 la respuesta se vuelve enorme y el cliente se ahoga en ella. Por eso nunca devolvemos todo. Devolvemos solo una página pequeña a la vez. Página 1, página dos, página tres. El cliente pide página 2, 20 por página. Para datos enormes que cambian rápido, hay un truco todavía mejor. En lugar de pedir la página 500, el cliente dice, "Dame los registros después de este cursor. Una

[02:31] colección enorme se convierte en páginas pequeñas y predecibles. Batrón 3. Filtrado y selección de campos. La paginación responde a la pregunta, ¿cuántos datos?" Pero hay una segunda pregunta, ¿qué datos? Supongamos que el cliente solo quiere laptops de menos de $1,000 ordenadas por precio. Una buena API de colecciones le permite al cliente acotar la selección. Filtras por categoría y quedan solo las laptops.

[02:57] Filtras por precio y las caras quedan afuera y el resto se ordena. La misma idea funciona dentro de un objeto. Un registro de usuario puede ser enorme, pero quizás el cliente solo necesita el ID, el nombre y el correo electrónico.

[03:12] Entonces, se seleccionan solo esos campos y todo lo demás se queda donde está. El cliente nunca debería descargar datos que no necesita. Patrón cuatro, iden potencia. Este evita errores muy costosos. Un cliente toca pagar, la solicitud llega al servidor, el pago se realiza con éxito, pero entonces la red se cae. El mensaje de éxito nunca llega, así que el cliente hace lo más obvio, lo intenta de nuevo y el servidor muy feliz le cobra al cliente dos veces. La solución es una clave de iden potencia.

[03:45] El cliente envía una clave única junto con el pago. ABC13. El servidor la guarda junto al resultado. Cuando llega el reintento con la misma clave, el servidor la reconoce y devuelve el resultado anterior en lugar de cobrar otra vez. Ahora los reintentos son seguros. La misma operación siempre produce el mismo resultado. Patrón cinco, back end.

[04:07] Ahora tu producto tiene tres clientes: web, móvil y una app de TV. Los tres obtienen datos del mismo backend, pero cada uno necesita datos completamente distintos. Si los obligas a todos a usar una API con exactamente la misma forma, el backend termina mezclado con la lógica de los clientes. El problema no son los clientes, es la forma compartida. Por eso le damos a cada cliente su propia capa de API delgada, un backend para cada frontend. El BFF móvil llama a usuarios pedidos y

[04:37] recomendaciones y los combina en una única respuesta limpia hecha a la medida del teléfono. Clientes distintos, necesidades de API distintas. Patrón seis, el API Gateway. Ahora estamos en un sistema distribuido. De un servicio pasamos a dos, después a cinco, después a una docena. Cada cliente tiene que saber dónde está cada servicio, cómo funciona el inicio de sesión y a dónde enviar cada cosa. El gateway les ofrece a todos una única puerta de entrada controlada. Cada solicitud pasa por ahí.

[05:09] Verifica tu identidad, aplica límites de frecuencia y te dirige al servicio correcto. Una advertencia, no conviertas el gateway en la aplicación. La lógica de negocio sigue estando en los servicios. Un punto de entrada, muchos servicios detrás. Patrón siete, API asíncronas.

[05:28] No todo trabajo cabe en una sola solicitud. Imagina que subís un video grande. Hay que procesarlo, codificarlo y generarle miniaturas. Si hacemos todo eso de forma sincrónica, el cliente simplemente se queda esperando. En cambio, la API responde de inmediato, trabajo creado. El trabajo entra en una cola. Un worker lo toma y hace el trabajo pesado en segundo plano.

[05:51] Mientras tanto, el cliente puede preguntar, ¿cómo va el trabajo 123? pendiente, procesando completado. La solicitud ya no significa hacer todo el trabajo ahora, significa crea el trabajo. El resultado llega después. Batrón 8o versionado y evolución. Este es el último problema que enfrenta todo el mundo. Tu API va a cambiar. Ahora funciona perfectamente y miles de aplicaciones dependen exactamente de lo que devuelve. Después, 6 meses más tarde, tenés que cambiar lo que devuelve. Algunos cambios son seguros,

[06:26] otros no. Si agregas un campo nuevo, por ejemplo, un apodo, las aplicaciones viejas simplemente lo ignoran. No se rompe nada. Pero si eliminás o modificas un campo que ya usan las aplicaciones, todo lo que dependa de él deja de funcionar al instante. Si de verdad necesitas hacer un cambio que rompe la compatibilidad, ejecuta dos versiones en paralelo. Las aplicaciones viejas siguen usando la B1 y no se les rompe nada. Las nuevas usan la B2, pero no crees una versión nueva por cada cambio pequeño.

[06:57] Dos versiones son una herramienta, 10 versiones son un caos. La regla es simple. Amplía tu API sin perjudicar a los usuarios. Diseña la API de hoy pensando en los clientes de mañana. Esos son los ocho patrones: recursos, paginación, filtrado, iden, potencia, backends para el frontend, el gateway, trabajos asíncronos y versionado. Pero no los memorices como ocho trucos separados. El verdadero arte consiste en reconocer el problema que hay detrás del patrón. Conjunto de datos enorme. Pensá

[07:30] en paginación. Los clientes necesitan datos distintos. Pensá en BFF. Puede haber solicitudes repetidas. Pensá en iden en potencia, demasiados servicios. Pensá en el gateway, trabajo de larga duración. Pensá en procesos asíncronos.

[07:47] La API tiene que cambiar. Pensá en la evolución. Porque los desarrolladores con experiencia no se preguntan solamente cómo construyo esta API, se preguntan qué problemas va a tener esta API dentro de 6 meses. Y ahí es justamente donde empieza un buen diseño de API. Si querés entender alguno de estos patrones en profundidad, escribí el nombre del patrón en los comentarios y suscríbite al canal para no perderte ningún video cuando salga. Muchas gracias por ver el video y hasta la

[08:15] próxima. M.
