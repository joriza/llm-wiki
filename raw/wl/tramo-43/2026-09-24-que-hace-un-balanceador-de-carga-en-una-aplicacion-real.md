# Qué hace un balanceador de carga en una aplicación real

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=OI-shxUoK0U)
- **Canal**: Torti Code
- **Publicado**: 2026-09-23
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Tu tienda funciona, llegan más visitas y una sola aplicación empieza a quedarse corta. Pones otra copia y luego una tercera. Pero tus clientes siguen entrando a la misma dirección. ¿Quién decide cuál los atiende? ¿Tienes que programar ese reparto? ¿Y qué pasa cuando una copia se apaga?

[00:19] Vamos a montar ese recorrido con un balanceador real, HAProxy. Verás que se configura, cómo pasa una consulta por dentro y qué cambia cuando quitamos un servidor. Hola, soy Torti y esto es TortiCode. ¿Qué es un balanceador de carga?

[00:34] Piensa en un centro de copiado con tres fotocopiadoras iguales. Tú entregas un documento en el mostrador. La persona que atiende lo lleva a una máquina, recoge la copia y te la devuelve. El siguiente encargo puede ir a otra.

[00:49] Cada máquina hace un trabajo completo. No imprimen un tercio de la misma hoja entre las tres. Ahora cambia el mostrador por un programa y las fotocopiadoras por tres copias de una aplicación. El documento que entregabas es una solicitud. Por ejemplo, consultar el precio de una taza.

[01:06] El programa recibe esa solicitud, escoge una copia disponible y se la envía. Esa copia obtiene el precio y prepara la respuesta. El programa la devuelve al navegador. En el sistema real, el reparto es automático. HAProxy aplica una regla y envía los datos por la red.

[01:23] Ese intermediario es el balanceador de carga. Reparte trabajo entre varios destinos. En el caso que vamos a construir, también actúa como proxy inverso. Recibe las conexiones de los clientes y habla con los servidores por ellos.

[01:37] La aplicación sigue siendo la que sabe buscar productos. El balanceador sabe a qué aplicación puede enviar cada consulta. Son responsabilidades distintas, aunque ambos sean programas ejecutándose en computadoras. Entonces, ¿qué se usa de verdad?

[01:52] HAProxy es un programa que instalas y configuras para hacer ese trabajo. NGINX también puede balancear tráfico, además de sus otras funciones como servidor web. No necesitas escribir tu propio balanceador dentro de cada aplicación.

[02:06] Otra opción es contratar un servicio administrado, como el Application Load Balancer de Amazon. El proveedor opera el balanceador, tú registras tus destinos y sus reglas. Sigue habiendo infraestructura ejecutando el trabajo, aunque no entres a instalar el programa en una máquina. Aquí usaremos HAProxy.

[02:24] Puede correr en un servidor propio, en una máquina virtual o dentro de un contenedor. Un contenedor permite ejecutar el programa en un entorno aislado dentro de una computadora. No es otra máquina física. Para la prueba tendremos uno con HAProxy y otros tres con nuestra aplicación, todos en la misma computadora. Eso alcanza para observar el mecanismo. En un despliegue que debe soportar la caída de una máquina, repartirías las copias entre máquinas distintas. Si las dejas juntas y esa computadora se apaga, se

[02:53] caen todas. Configurar HAProxy y sus destinos. Antes del balanceador necesitas las aplicaciones funcionando. Arrancas tres veces el mismo servicio de la tienda. Las llamaremos aplicación uno, dos y tres. Cada una puede responder por sí sola a la consulta del producto siete.

[03:14] Cuando aquí hablamos de un servidor de aplicación, nos referimos a una de esas copias que atiende por la red. Pueden compartir una computadora física. Cada copia escucha en una dirección y un puerto. La dirección permite llegar al destino. El puerto identifica por dónde acepta conexiones ese programa.

[03:31] En nuestra red de contenedores usamos nombres como app uno, que esa red traduce a direcciones internas. Los tres pueden escuchar en el puerto 8000 porque tienen entornos de red separados. HAProxy necesita poder llegar a esas direcciones. Escribir un nombre en el archivo no crea el servidor ni abre un acceso que la red bloquea.

[03:51] Primero arrancas las aplicaciones y compruebas que responden. Después, las registras como destinos. Para entrar desde el navegador, usamos una sola dirección, la del balanceador. En esta prueba, abrimos localhost, puerto 8080.

[04:07] Esa dirección lleva desde el navegador al contenedor de HAProxy. Los puertos de las tres aplicaciones quedan dentro de la red privada de contenedores. En una web pública, configurarías el dominio para llegar a ese punto de entrada.

[04:19] El navegador no recibe una lista para elegir entre las tres copias. Y las copias deben consultar información coherente. Aquí, leen el mismo archivo de catálogo. En una tienda real, el precio podría venir de una base de datos compartida.

[04:33] Repetir el programa no sincroniza por arte de magia tres bases diferentes. El archivo de configuración de HAProxy conecta una entrada con un grupo de destinos. La sección llamada frontend define la entrada. En este archivo, la instrucción bind hace que HAProxy escuche en el puerto 8080.

[04:55] La línea default backend conecta esa entrada con el grupo que llamamos tienda. Estos nombres pertenecen a la configuración del balanceador. Frontend aquí no significa la interfaz de tu página. La sección backend contiene los destinos de ese grupo.

[05:12] Cada línea server registra una copia de la aplicación con su nombre y su puerto. Ahí está la conexión concreta. Esta entrada envía solicitudes a estas tres direcciones. La instrucción balance round robin elige el reparto por turnos.

[05:28] Una solicitud va a una copia, la siguiente a otra y así continúa entre las disponibles. Para esta prueba, las tres tienen el mismo peso. El archivo también fija cuánto esperar para conectar o recibir datos. Sin un límite adecuado, una conexión que dejó de responder puede retener recursos demasiado tiempo.

[05:48] Las líneas de revisión de salud las veremos al apagar una copia. Guardamos la configuración, la validamos con HAProxy y arrancamos el proceso con ese archivo. El reparto lo ejecuta HAProxy. Nuestra aplicación conserva su tarea de devolver productos.

[06:05] Si cambias los destinos en el archivo, debes hacer que HAProxy cargue esa configuración nueva. Editarlo por sí solo no cambia el proceso que ya está corriendo. Cómo viaja y se reparte una solicitud. Sigamos una consulta completa.

[06:20] El navegador pide el producto siete a la entrada del balanceador. HAProxy recibe la petición y elige la aplicación dos. En esta prueba abre una conexión hacia ella y le envía la consulta. La aplicación dos lee el catálogo y devuelve el producto con su precio.

[06:38] Esa respuesta vuelve a HAProxy y HAProxy la entrega al navegador por la conexión del cliente. El navegador conserva la misma dirección. No lo hemos redirigido a la dirección privada del servidor. Volvemos a consultar y atiende la aplicación tres, después la uno.

[06:54] En la prueba añadimos una pequeña marca a la respuesta para saber quién atendió. El producto sigue siendo el mismo. Seis consultas seguidas, dos respuestas de cada copia. Ese es un resultado de nuestro ensayo con tres destinos equivalentes.

[07:10] Un usuario tampoco queda necesariamente unido a una copia. Su siguiente solicitud puede llegar a otra. Por eso un carrito guardado únicamente en la memoria de la aplicación uno puede desaparecer de su vista cuando lo atienda la dos.

[07:23] Ese estado debe estar disponible para la copia que lo necesite o debes diseñar otra estrategia para mantener la continuidad. Repartir por turnos distribuye solicitudes, pero no mide cuánto cuesta cada una. Consultar una tasa y generar un informe enorme consumen recursos distintos.

[07:41] Existen otras reglas, como elegir el servidor con menos conexiones activas. La regla se elige según el trabajo y se comprueba midiendo. Tener tres copias no garantiza que todo vaya tres veces más rápido. ¿Cómo detecta un servidor caído?

[07:57] Volvamos un momento al centro de copiado. Si una fotocopiadora se atasca y el encargado no se entera, puede seguir mandándole documentos. Tener varias máquinas sirve de poco si sigues eligiendo la averiada. En nuestro sistema, HAProxy envía consultas periódicas para comprobar cada aplicación.

[08:15] Son las revisiones de salud. No las hace el navegador, las inicia el balanceador, incluso cuando no hay clientes comprando. Nuestra aplicación incluye la ruta {barra} health, salud en inglés. Responde con el estado 200, que indica éxito en esta respuesta.

[08:32] Configuramos a HAProxy para consultar esa ruta y aceptar ese estado. La palabra check en cada servidor activa las revisiones para ese destino. En esta prueba, configuramos un intervalo de 2 segundos entre revisiones y pedimos dos fallos consecutivos para retirar una copia.

[08:49] Son valores elegidos para el ejemplo. Exigir varios fallos evita reaccionar a un tropiezo aislado, a cambio de tardar más en detectar una caída. Apagamos la aplicación 2. Durante el momento, HAProxy todavía la tiene como disponible.

[09:04] Una consulta que caiga ahí puede fallar. La caída y su detección ocurren en instantes distintos. El balanceador no sabe el futuro. Después de las revisiones fallidas, la aplicación 2 queda fuera del reparto. Enviamos otras seis consultas.

[09:20] Ahora las responden la 1 y la 3, tres cada una. La tienda conserva destinos que pueden atender, aunque perdió parte de su capacidad. La aplicación 2 sigue en la lista de configuración, pero está marcada como no disponible.

[09:34] HAProxy deja de enviarle consultas de clientes y continúa revisándola. Nosotros la volvemos a encender. En este ejemplo exigimos dos revisiones exitosas seguidas para reincorporarla. Cuando la supera, vuelve a participar en los turnos.

[09:50] El balanceador detectó la recuperación. El reinicio lo hicimos nosotros. Ahora apagamos las tres y esperamos a que se detecten las caídas. Con esta configuración, HAProxy genera una respuesta con el estado 503. No hay un servidor disponible para atenderla.

[10:07] Esa solicitud no llega a ninguna aplicación. Poner un balanceador delante no crea capacidad cuando no queda ninguna aplicación sana. Además, una revisión solo demuestra lo que comprueba. Nuestra ruta health contesta desde la aplicación. No está probando una compra completa.

[10:25] Una tienda podría responder a esa ruta y tener roto el acceso a su base de datos. Debes decidir qué necesita verificar la revisión para saber si esa copia puede atender el trabajo que le vas a enviar. Límites del balanceador de carga.

[10:39] Hay dos límites que conviene tener claros antes de llevar este esquema a producción. Primero, una solicitud que ya falló no se arregla solo porque hayas retirado al servidor. Algunos balanceadores pueden volver a intentar una conexión o una solicitud fallida, según su configuración.

[10:56] En nuestro ensayo desactivamos los reintentos para observar el fallo. Enviar de nuevo una consulta de producto no plantea el mismo riesgo que repetir un cobro cuando no sabes si el primero se completó. Los reintentos necesitan reglas propias.

[11:09] Segundo, el balanceador también puede caerse. Si solo existe uno y deja de funcionar, pierdes la entrada aunque las tres aplicaciones estén sanas. Un montaje de alta disponibilidad necesita redundancia también ahí. Y una forma de conservar el acceso cuando falla una de esas piezas.

[11:26] Un servicio administrado puede encargarse de parte de esa infraestructura. Pero debes conocer sus condiciones. La prueba local usa conexiones sin cifrar. En una tienda pública recibirías https con su certificado. Y configurarías también si se cifra el recorrido hasta las aplicaciones.

[11:44] El reparto y el cifrado son decisiones separadas. Ya puedes reconstruir el sistema. Varias copias capaces de atender, una entrada que recibe las solicitudes y una configuración que conecta esa entrada con los destinos. HAProxy escoge uno, le envía el trabajo y devuelve la respuesta.

[12:02] Las revisiones de salud modifican cuáles pueden seguir recibiendo solicitudes. La prueba pasó de tres destinos a dos y volvió a tres sin cambiar la dirección que consultaba el cliente. Ese es el trabajo que acabamos de comprobar. Si quieres seguir con lo que las aplicaciones se dicen por esas conexiones, el vídeo que ves en pantalla explica distintas formas de comunicarse mediante APIs y cuándo conviene cada una.
