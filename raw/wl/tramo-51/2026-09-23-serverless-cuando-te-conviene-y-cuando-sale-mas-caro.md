# Serverless: cuándo te conviene y cuándo sale más caro

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=KkG4fSMRmXE)
- **Canal**: Torti Code
- **Publicado**: 2026-09-22
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina que tienes un acortador de enlaces. A las 3 de la mañana, alguien abre uno de tus enlaces y la respuesta tarda un segundo. Un minuto después, otra persona abre el mismo enlace y la respuesta sale al instante. No cambiaste nada. No hubo ningún error. Tu acortador corre en Serverless y el nombre engaña.

[00:21] Sí, hay servidores. Lo que cambió entre esas dos personas es si había algo preparado para tu código o si hubo que prepararlo justo en ese momento. Al terminar vas a poder contar qué pasa desde que llega una petición hasta que la plataforma apaga todo. Predecir cuándo te toca esa espera y saber cuándo serverless te conviene y cuándo no.

[00:42] Hola, soy Torty y esto es Torticode. ¿Qué es Serverless? Piensa en una marca de hamburguesas que no tiene restaurante ni alquila cocina. Tiene una receta. La deja en una cocina oculta, de esas que solo despachan para las aplicaciones de domicilio, donde los cocineros de la casa preparan recetas de varias marcas. El trato con esta cocina es por plato. La marca paga por cada hamburguesa que sale y nada más.

[01:11] Entra un pedido por la ventanilla. El encargado busca la receta en su fichero, le asigna una estación y un cocinero la prepara. La hamburguesa sale por la ventanilla de despacho. La marca no compró la plancha ni contrató al cocinero. ¿Cuántas estaciones hay prendidas? Lo decide la cocina.

[01:28] Serverless es ese trato, pero con código. Tú escribes una función, un pedazo de código que responde a un evento, por ejemplo, una petición a tu acortador con el código ABC13. La subes a un proveedor como AWS Lambda, Google Cloud, RAM Functions o Azure Functions. El proveedor tiene los servidores y los comparte entre muchos clientes. Los compra, los actualiza, los prende y los apaga. Tú entregas la función y dices cuánta memoria necesita.

[02:00] Sin servidores quiere decir sin servidores que tengas que administrar tú. Siguen ahí, igual que la cocina sigue existiendo, aunque la marca nunca entre. El arranque en frío. Volvamos a la cocina a primera hora. No hay ninguna estación montada para la marca. Entra al primer pedido y el encargado abre una.

[02:20] Cuelga una copia de la receta, prende la plancha y llega un cocinero con el delantal de la marca. La receta tiene dos partes. Arriba dice qué hacer al abrir la estación. Ir por la llave de la cámara fría donde está la carne y colgarla en el gancho.

[02:36] Abajo dice qué hacer con cada pedido. El cocinero hace la parte de arriba y solo entonces cocina. Ese primer cliente espera más, aunque la receta sea la de siempre. En tu acortador pasa lo mismo. Llega una petición y no hay ningún entorno de ejecución libre para tu función.

[02:56] Un entorno de ejecución es un espacio aislado dentro de un servidor del proveedor con tu código y lo necesario para correrlo como una estación separada de las demás por mamparas. La plataforma crea uno, descarga tu código, arranca el entorno y ejecuta tu código de inicio, que es la parte de arriba de la receta. Después atiende la petición con la parte de abajo. Toda esa preparación es el arranque en frío y en AW SS también se cobra.

[03:25] Cuando termina el entorno no se destruye enseguida queda congelado como la estación con la plancha en piloto, la llave colgada y el cocinero quieto. Si llega otra petición, la plataforma lo reutiliza y se salta la parte de arriba.

[03:40] Eso es un arranque caliente y por eso la segunda persona del principio recibió su respuesta al instante. ¿Cuánto dura esa espera? Según AWS, un arranque en frío va de menos de 100 milisegundos a más de un segundo y ocurre en menos del 1% de las ejecuciones.

[04:00] Es más común en funciones que casi nadie usa porque un entorno congelado no espera para siempre. Más adelante vemos cuándo se apaga. Esas dos partes de la receta son las dos partes de tu función. Aquí está el acortador en JavaScript, en Python y en Go. La misma función tres veces con el formato de AWS lambda.

[04:21] Otras plataformas cambian la forma de declararla, no la idea. Arriba está el código de inicio. Crea el cliente de la base de datos, la pieza que se conecta para buscar enlaces. Corre una vez por entorno durante su arranque en frío. Es la llave colgada en el gancho. Si hay tres entornos, hay tres llaves. Cada uno hace su propio inicio. Abajo está la parte que atiende cada petición. Toma el código corto del enlace, lo busca con el cliente que ya existe y responde con una redirección hacia la dirección larga. Si

[04:52] ese código corto no existe, responde que no lo encontró. En Go compilas un programa, pero la idea se mantiene. La variable del paquete es el código de inicio y se crea al arrancar el programa. Después, el programa le entrega a la plataforma la parte que atiende cada petición. Lo probamos con el emulador oficial de Lambda en una computadora. En los tres lenguajes, tres peticiones seguidas imprimieron la línea de inicio una sola vez y la de búsqueda tres veces. Si movieras la conexión a la

[05:21] parte de abajo, la abrirías en cada petición y desperdiciarías justo lo que te da un arranque en caliente. ¿Cómo escala y cuándo se apaga? Ahora uno de tus enlaces se vuelve viral. Llegan tres peticiones al mismo tiempo y solo hay un entorno caliente. En la cocina cada estación tiene un solo sartén y un solo gancho para tickets. El cocinero no hace tres pedidos a la vez. El primer ticket va a la estación que ya está lista. Para los otros dos, el encargado abre dos estaciones más. Cada una cuelga su copia

[05:55] de la receta, prende su plancha, recibe a su propio cocinero y va por su propia llave. Esos dos pedidos esperan su arranque en frío. Cuando la primera estación termina, el cuarto pedido va ahí y no hace falta abrir otra. Lambda funciona así. Cada entorno atiende una petición a la vez y cuando termina la siguiente lo reutiliza. La cantidad de peticiones que se atienden en el mismo momento se llama concurrencia. Lo que cuenta es cuántas coinciden, no cuántas llegan por segundo. Si cada una tarda 20

[06:25] milisegundos, 5,000 peticiones por segundo mantienen ocupados unos 100 entornos. Tú no pediste más servidores. La plataforma fue sumando entornos porque llegó trabajo. Hay un tope que en AWS empieza en 1000 ejecuciones simultáneas por cuenta en cada región.

[06:42] Si lo pasas, las peticiones que sobran se rechazan hasta que se libere espacio. No todas las plataformas reparten igual. En Cloudrun, un mismo entorno puede atender varias peticiones a la vez, como una plancha ancha con varios tickets, pero la regla de fondo se mantiene cuando falta capacidad. Se crean entornos nuevos y cada entorno nuevo paga su arranque en frío. Pasa el furor y el enlace deja de recibir visitas. En la cocina las estaciones de la marca se quedan quietas. Al rato, el encargado

[07:14] las limpia una por una. Quita la copia de la receta, apaga la plancha. Devuelve la llave y el cocinero se va. No las apaga la hora, las apaga la falta de pedidos. La receta original sigue en el fichero. La plataforma hace lo mismo.

[07:30] Después de un tiempo sin trabajo, termina los entornos. Aws no publica cuánto espera exactamente. Además, cada pocas horas cambia el turno. Recicla los entornos aunque sigan recibiendo peticiones. Cuando no queda ninguno, tu función escaló a cero. Ahí está la ventaja del cobro.

[07:48] En la cocina, cada plato lleva un sello de hora al empezar y otro al salir, como en un estacionamiento. Si hubo que abrir la estación, el reloj cuenta desde que se abrió. En lambda pagas por cada petición y por el tiempo que corre tu código, incluido el inicio cuando hubo arranque en frío, medido en milisegundos y multiplicado por la memoria que le diste. Sin peticiones, la función no cobra nada. Lo que vive fuera como la base de datos se cobra aparte, igual que la cámara fría tiene su propio medidor.

[08:19] El precio de ese ahorro ya lo conoces. La primera petición después de la calma encuentra todo apagado y paga el arranque en frío. Tu turno. Son las 9 de la mañana, hay un entorno caliente y libre y llegan dos peticiones al mismo tiempo. ¿Cuántas pagan arranque en frío?

[08:37] Piénsalo un segundo. Una. La primera toma el entorno caliente, la segunda lo encuentra ocupado y en lambda eso significa crear otro. Otra más. Tu enlace pasa 3 días sin visitas. La siguiente petición llega en frío. Casi seguro que sí. Los entornos no se conservan tanto tiempo sin trabajo. Límites y cuándo conviene.

[09:01] Primero, lo que tu función deja adentro no está garantizado. Imagina que cada cocinero lleva en una libreta de su estación cuántas hamburguesas ha hecho. La estación dos anota 37, la tres 12. Ninguna tiene el total y en el cambio de turno las libretas se van con la limpieza.

[09:24] El conteo que importa se lleva en un libro dentro de la cámara fría que todas las estaciones consultan. Con los entornos pasa igual. Una variable en memoria o un archivo temporal duran mientras ese entorno siga vivo y cada entorno tiene los suyos. Sirven como atajo, nunca como el lugar donde guardas algo importante.

[09:47] El contador de clicks de tu acortador va en la base de datos, fuera de la función. Segundo, cada ejecución tiene un tiempo máximo que tú configuras. En una función normal de lambda como mucho, 15 minutos. Si se pasa, la plataforma la corta y la petición termina en error, como un temporizador que suena y obliga a retirar el sartén.

[10:12] Un proceso largo, como convertir un video de 2 horas se divide en partes o se lleva a otro tipo de servicio. Tercero, el arranque en frío se puede evitar, pero cuesta. Puedes pagar para que la plataforma mantenga algunos entornos preparados todo el tiempo. En AWS se llama concurrencia aprovisionada.

[10:31] En Cloud Run, mínimo de instancias. Es como pagarle a la cocina para que deje dos estaciones montadas con la llave colgada, haya o no pedidos. Los dos primeros pedidos simultáneos salen rápido. El tercero abre una estación en frío, como siempre. Con eso ya puedes decidir. Serverless conviene cuando el tráfico sube y baja con ratos en cero y cuando cada tarea termina en segundos o pocos minutos. Un acortador, un formulario, un webuk. Procesar una imagen cuando alguien la sube. Conviene

[11:01] menos en tres casos. Si el tráfico es alto y constante todo el día, pagar por plato puede salir más caro que alquilar una cocina por horas y cocinar tú. es decir, tener tu propio servidor encendido. Si un proceso dura más que el límite, no cabe. Y si cada milisegundo de la primera respuesta importa, tendrás que pagar entornos siempre listos. Hasta aquí la cocina. En el sistema real, abrir una estación no tarda minutos, tarda milisegundos, a veces más de un segundo. Y lo de un pedido por estación

[11:30] es la regla de lambda, no la de todas las plataformas. Recorre todo una vez más con tu acortador. Alguien abre el enlace. La plataforma busca un entorno libre para tu función. Si no hay, lo crea. Descarga el código, arranca el entorno y ejecuta el código de inicio que crea el cliente de la base de datos. Después, la parte que atiende la petición busca a BC13 y responde con la dirección larga. El entorno queda caliente para la siguiente petición. Si llegan muchas a la vez, aparecen más entornos. Si deja de llegar

[12:08] trabajo, se apagan y la función deja de cobrar. Serverless en dos frases. El proveedor crea entornos para tu función cuando llega a trabajo. Lo reutiliza mientras sigue llegando y los apaga cuando se acaba. Tú pagas por el trabajo hecho. La persona de las 3 de la mañana esperó porque a su petición le tocó crear el entorno. La siguiente lo encontró caliente. Te queda una duda con este mismo cortador. Un enlace viral se consulta miles de veces con el mismo código. ¿Hace falta ir a la base de

[12:41] datos cada vez? Para eso existe la caché. Y en la tarjeta te dejo el video que explica cómo funciona.
