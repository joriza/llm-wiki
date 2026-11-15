# La Masterclass de Python que cambiará tu carrera (Django + Git + Producción)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UE3HkJ7A-Mo)
- **Canal**: Enrique Barros
- **Publicado**: 2025-12-09
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 378:12

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:13] En este curso vas a aprender a desarrollar una tienda online de videojuegos utilizando Yango. Esto te permitirá de forma práctica aprender a utilizar uno de los frameworks más populares y potentes de Python. Si nunca has trabajado con JJango o con El Back en general, no te preocupes, ya que vamos a ir paso a paso. Este curso está pensado para que aprendáis mientras vais construyendo algo. No nos vamos a quedar simplemente con la teoría, sino que vamos a construir un proyecto completo

[00:40] desde cero. A lo largo de este curso aprenderás un montón de cosas, por ejemplo, cómo funciona Yangango y su estructura para poder apañarte después con cualquiera de tus proyectos, no simplemente con una tienda online. Cómo crear modelos y bases de datos. cómo hacer vistas y manejar rutas, cómo crear formularios, autenticación de usuarios, paneles de administración y, por supuesto, cómo desplegar tu tienda online para que la puedan visitar, que esta seguramente sea una de las dudas

[01:08] más grandes que tiene mucha gente antes de empezar con el desarrollo web con Python. ¿Cómo voy a hacer operativa una web que funciona con código Python? Pues todas estas dudas se resolverán en este curso. En este capítulo te explicaré de manera sencilla qué es el backend y el frontend, cuáles son las principales diferencias entre ambos y quién es el encargado de desarrollar cada uno de ellos.

[01:40] Empecemos por el backend. ¿Qué es? Pues el backend es la parte de un sitio web o aplicación que se encarga de manejar la lógica de negocios y la interacción con la base de datos. Ahora explicaré lo que es la lógica de negocios. En otras palabras, es la parte encargada de hacer todo lo que no se ve directamente en la interfaz de usuario. En un símil de construcción, el frontend de una aplicación de software puede ser comparado con la parte visible de la habitación, es decir, su diseño, la

[02:07] decoración, las paredes, ventanas, puertas, que en una aplicación de software con el frontend serían los elementos de la interfaz de usuario, como son los botones, los menús, los campos de entrada, etcétera. Por otro lado, el backend de una aplicación de software sería como la estructura y sistemas internos de la habitación, que hace que todo funcione correctamente. En una habitación, el backend incluiría las tuberías, cables eléctricos, conductos de aire acondicionado, calefacción,

[02:33] etcétera. Mientras que en una aplicación de software, el backend incluiría la lógica de negocios, la gestión de la base de datos, la integración con otros sistemas, etcétera. sería toda la parte que no se ve. Bien. ¿Y qué es esto de la lógica de negocios del backend? Esta lógica también se conoce como lógica empresarial. se refiere a la parte de software que se encarga de procesar la información y tomar decisiones basadas en reglas específicas de un negocio. Por ejemplo, en una aplicación bancaria, la

[03:06] lógica de negocios podría incluir las reglas para probar o denegar una solicitud de préstamo, cómo se calculan los intereses y las comisiones y cómo se gestionan las cuentas de los clientes. Pues todas esas cosas son la lógica de negocios.

[03:24] Veamos algunas tareas que se realizan en backend y otras en frontend. Empecemos con las tareas del backend. Por un lado, tenemos el almacenamiento de datos. El backend es el encargado de guardar y recuperar la información de una base de datos. Después tenemos una parte importante que es la seguridad. En el backend nos encargamos de asegurar que solamente los usuarios autorizados puedan acceder a ciertas áreas de la aplicación. Es importante destacar que la seguridad en el desarrollo de backend

[03:50] es crucial, ya que una brecha en esta puede poner en riesgo la información y los datos sensibles de los usuarios. De hecho, ya tenéis un montón de ejemplos de brechas de seguridad que han arrojado a la dark web una gran cantidad de información de usuarios. También tenemos el procesamiento de los datos. En el backend procesamos la información ingresada por el usuario y la utilizamos para tomar decisiones.

[04:13] Por ejemplo, podríamos poner un formulario. El formulario está construido con unos estilos frontend y es todo aquello que ve el usuario, el botón y los diferentes campos de entrada para introducir datos. Después, cuando pulse el botón de enviar, todos esos datos se gestionan por el backend, los almacenan la base de datos o hacen lo que queramos que haga con ellos.

[04:35] Después, cuando se necesiten utilizar esos datos de nuevo, el backend se encargará de gestionarlos y hacer lo que tenga que hacer con ellos. Y el usuario no ve absolutamente nada de esto. Simplemente sabe que tiene que rellenar el formulario y darle al botón de enviar. El backend se encarga de hacer el resto. Y ahora veamos algunas de las tareas que hacemos en el front end. Por un lado, tenemos la interfaz de usuario.

[04:59] El front-end se encarga de mostrar la información al usuario de una manera visiblemente atractiva y fácil de entender. También tenemos la interacción con el usuario. Aquí nos encargamos de poner cosas con las que pueda interactuar el usuario, por ejemplo, formularios y botones. Después tenemos la optimización de la experiencia de usuario. El front-end se encarga de hacer que la experiencia del usuario sea lo más agradable y sencilla posible, aquello que se conoce como user friendly, ya que hay que tener en cuenta

[05:26] que todos los usuarios no van a tener los mismos conocimientos de informática que otros. Si alguien tiene un nivel alto en informática, seguramente pueda utilizar aplicaciones con una interfaz bastante ruda y no le cueste demasiado.

[05:39] Pero sin embargo, a alguien que no tiene muchos conocimientos, pues no sería capaz seguramente de utilizar esta aplicación, con lo que ya se descartaría en muchos casos o tendrían que realizarse cursos a propósito para utilizarlo.

[05:57] Pues la principal diferencia entre estos es que el primero se enfoca al procesamiento y almacenamiento de datos, mientras que el segundo se enfoca a la presentación y la interacción con el usuario. Esto es exactamente lo que quiero que quede claro. Con esta pequeña explicación resumimos básicamente todo lo que es el capítulo. Aunque estas son partes separadas de una aplicación, es importante que el frontend y el backend trabajen juntos para proporcionar una experiencia de usuario fluida, que vayan

[06:25] al mismo compás, por así decirlo. Por ejemplo, si un usuario completa un formulario en el frontend, los datos ingresados deben ser enviados al backend para su procesamiento y almacenamiento. La comunicación entre ambas partes debe ser eficiente para evitar retrasos y errores. Así que ambas partes son igual de importantes en conjunto, ya que si una de las dos eficiente, hará trabajar mal a la otra.

[06:54] Las tecnologías que se utilizan para cada caso, para el front end y el backend. Con tecnologías me refiero a lenguajes y a frameworks. Empecemos con las más conocidas del frontend, que viene a ser el lenguaje de marcado HTML, el lenguaje de estilos o diseño CSS y el lenguaje de programación JavaScript de lado del cliente. Estas tres cosas son las tres típicas cosas que solemos aprender cuando empezamos con el desarrollo web. Después en el backend podemos poner lenguajes como PHP,

[07:24] Python, Java, Ruby, Golang, SQL y tantos otros más. Por otro lado, con los frameworks tenemos bastantes opciones en cada caso. En el caso del frontend, tenemos algunos muy populares como pueden ser Angular, View, JYs. Y después en backend tenemos frameworks como Yangjango, que es el que vamos a utilizar en este curso, Rubi Rails, Flask, Larabel. y tantos otros muchos que podría comentar aquí.

[07:58] Y a continuación lo que vamos a hacer es empezar por crear un entorno virtual, que es como una caja, un contenedor donde vamos a instalar todas las bibliotecas necesarias para un proyecto específico sin afectar a otros proyectos ni al sistema operativo. Es decir, todo lo que instalemos en este entorno virtual, todas las dependencias de nuestro proyecto van a quedar contenidas en ese proyecto. por ejemplo, que instalamos con PIP Yango, pues esta instalación queda solo para nuestro

[08:25] entorno virtual y en el resto del sistema operativo o en otros entornos virtuales, esta instalación de Yjango no iba a estar disponible. Entonces, ahora lo que vamos a hacer es crear ese entorno virtual. Ya verás lo fácil que es. Y también te voy a ir enseñando a utilizar la consola por si no la sabes utilizar. Tenemos Visual Studio abierto.

[08:46] Presionamos el atajo que viene por defecto para abrir la terminal. Control Ñ. Nos abre esta consola. Nos iremos a la ruta donde queramos crear la carpeta de nuestro proyecto. Por ejemplo, esta que estoy aquí, la de mi usuario, o por ejemplo esta que tengo yo por aquí, Cursos.

[09:05] Para ir a esa carpeta pondríamos CD, la unidad, la barra y el nombre de la carpeta. En mi caso es cursos. Ya estamos dentro de la carpeta cursos y creamos una nueva carpeta para contener todo el proyecto. MK D I R make y le damos el nombre a nuestra carpeta de proyecto.

[09:37] Ya está creada y ahora vamos a activarla en la terminal. Ponemos CD. Estamos sobre cursos y el nombre de la carpeta. Si os es más fácil visualizarlo por aquí, por el explorador, le dais abrir carpeta, ya que la tenemos creada, y seleccionaremos esta misma tienda videojuego.

[10:05] Ya la tenemos ahí abierta, como podemos ver. Y en la consola deberías tener esto. Pues esto que vemos por el explorador es lo mismo que tenemos aquí en la terminal. Todos los comandos que ejecutemos se van a ejecutar en este directorio de aquí, tienda videojuegos, hasta que cambiemos la ruta. Ahora vamos a crear el entorno virtual con el siguiente comando, Python M BMP, y le damos el nombre. Ese será el nombre de nuestro entorno virtual.

[10:43] Esperamos unos instantes a que se genere todo y ya podemos ver que por aquí nos sale una carpeta que pone, que es el nombre que le hemos dado. Por supuesto, puedes darle otro nombre. Podrías llamarle entorno, entorno videojuegos, entorno tienda, lo que tú quieras, pero una forma clara de ver que es un entorno virtual y después para llamarlo fácil, pues emp está bien.

[11:09] El siguiente paso es activar el entorno virtual. De momento no lo tenemos activado. Para activarlo tenemos en Windows esta carpeta llamada script que tiene esto. Activate. Este es el script de activación para el entorno virtual. Para ejecutarlo, simplemente tenemos que nombrarlo en la terminal. Para nombrarlo en la terminal tendríamos que acceder a su ruta.

[11:38] Entonces ponemos esto, nombre del entorno, la carpeta. Entramos dentro de la carpeta scripts y luego le decimos que ejecute el script activate para activar el entorno virtual. Aquí podremos ver que el prompt ha cambiado. Antes no tenía esto y ahora aparece el nombre de nuestro entorno virtual a la izquierda.

[12:07] Esto quiere decir que la consola está trabajando sobre el entorno virtual. Todo lo que ejecutemos ahora se hará dentro de ese entorno virtual hasta que salgamos de él. Pues ya está todo listo para que empecemos a instalar Yango.

[12:21] Solo os voy a decir cómo desactivarlo. Ahora que estamos dentro del entorno virtual, ponemos deactivate y podemos ver aquí que ya hemos salido del entorno virtual porque ya nos sale esto en el prompt. Ahora, ¿cómo lo harías para activarlo de nuevo? Por ejemplo, imagínate que en la consola estás en esta parte, en cursos, en la carpeta anterior. ¿Cómo irías hasta aquí? Pues lo puedes hacer escribiendo toda la ruta, tienda, videojuegos, barra scripts activate, como hemos hecho. O también puedes ir a la carpeta

[13:09] con CD. Lo podemos hacer en varios pasos o todo en uno añadiendo toda la ruta. Vamos a hacerlo en varios pasos. Ponemos CD tienda videojuegos. Entramos en esa carpeta CD Emp. Entramos en la otra CD scripts. Y ahora, ¿cómo lo activarías aquí? pues simplemente activate y ya estaría.

[13:43] Y luego deactivate para desactivar. Ahora, para no tener que hacer estos pasos cada vez, si os parecen muy molestos, podemos crear un script punbat con esta extensión que tenga una rutina para poder activar el entorno virtual. Si no conocéis batch, que es el lenguaje con el que se hacen estos scripts, lo podéis pedir a chat GPT, por ejemplo. Vamos a probarlo.

[14:12] Vamos a decir genera un archivo punto bat. Esto sí estamos en Windows. Si estás en Linux tendrás que crear un archivo con bash. Pues le decimos genera un archivo punto bat que sirva. para iniciar un entorno virtual Python en la carpeta y a ver si con estas instrucciones básicas, sin dar más detalles, conseguimos que nos cree un bat que al final nos sirva para esto, esté mejor o peor hecho.

[15:01] Lo ponemos por aquí afuera. Ponemos, por ejemplo, inicio emp.Bat, bat, algo como esto. Pegamos ahí el código, guardamos cambios y ahora para ejecutar este script y probarlo, nos vamos a ir a la consola. Estamos en tienda videojuegos, la carpeta del proyecto. Perfecto.

[15:37] Y simplemente escribiremos el nombre del archivo. Inicio punto entorno virtual activado. Y podemos ver que efectivamente sí me lo ha activado. Después que queremos salir ponemos este deactivate y salimos. ¿Qué queremos otra vez? Pues ponemos simplemente el nombre inicio punbat y ya está.

[16:04] Y este script cuando necesitemos hacer más cosas, por ejemplo, iniciar el entorno virtual y después ejecutar el servidor de Yango cuando lo tengamos preparado, que lo haga todo a la vez, pues podremos ir añadiendo cosas por aquí y así no tendremos que ir a iniciar el entorno virtual manualmente, iniciar el servidor manualmente, etcétera. Esto es opcional, por supuesto, si lo queréis hacer a mano para seguir practicando, lo podéis hacer.

[16:37] En esta ocasión os voy a hablar de los modelos MVC y MVT. Jango se basa en el patrón de diseño MVT, modelo vista plantilla. Es una variación del conocido MVC, modelo vista controlador. En este capítulo te voy a explicar qué son estos patrones de diseño, cómo se aplican enjango y qué ventajas ofrecen para el desarrollo web.

[17:00] Empecemos por el modelo MVC. El patrón modelo vista controlador es una forma de organizar el código de una aplicación para que sea más fácil de entender y modificar. Este modelo divide una aplicación en tres partes principales.

[17:16] Modelo, que es la parte de la aplicación que maneja los datos y la lógica, y se dedica a gestionar la información importante de la aplicación, como puede ser la información de los usuarios, productos, transacciones, etcétera.

[17:27] También se encarga de las reglas y procesos que definen cómo funciona la aplicación en sí. Después tenemos la vista. Esta es la parte de la aplicación que muestra la información al usuario con la que puede ver e interactuar. Y finalmente, controlador, que es la parte de la aplicación que recibe la entrada del usuario y coordina la comunicación entre el modelo y la vista. Es como un intermediario que maneja las solicitudes del usuario y decide qué datos deben mostrarse y cómo. Por aquí he creado un

[17:56] pequeño diagrama para que podáis visualizar mejor cómo funciona este modelo. En primer lugar tenemos al usuario. Cuando va a utilizar la aplicación va a solicitar ciertas cosas al controlador. Este a su vez solicitará al modelo, que es el encargado de conectar y solicitar a la base de datos.

[18:15] y esta le va a devolver los datos solicitados al modelo. El modelo después de esto devolverá los datos hacia el controlador y este procesará y enviará hacia la vista. La vista, con todo ya recopilado, se encargará de presentarle al usuario el aspecto gráfico, lo procesa y se lo envía, con lo que finalmente el usuario ya puede disfrutar de la aplicación. Todo esto, por supuesto, en milisegundos.

[18:47] El patrón anterior es el general que se suele utilizar en muchos entornos. Sin embargo, Yjango cuenta con un patrón algo diferente. Lo podemos denominar MVT o incluso MVTU si precisamos un poco más. Así que voy a exponer este modelo como MVTU. La M de modelo es la parte de la aplicación que maneja los datos y la lógica también, al igual que con MVC.

[19:10] Después tenemos la vista, que describe los datos que se envían al usuario, pero no su presentación en Jango. La T corresponde a template, plantilla. Esta es la parte que se encarga de mostrar la información como puede ser HTML, CSS, etcétera. Y finalmente tendríamos la U de URL. La configuración de URL de la aplicación Yangango permite asociar las vistas con las diferentes URL que los usuarios pueden visitar para acceder a las diferentes funciones de la aplicación. Si no has visto nunca estos

[19:38] modelos, seguramente no te quedará claro, pero no te preocupes porque los entenderás muy bien cuando empecemos a tocar cosas con JJo. Por un lado, tenemos al usuario, que podemos describir como el cliente o el navegador, ya que estamos hablando de aplicaciones web, el cual va a realizar una solicitud HTTP, se la va a solicitar al servidor que utiliza Yjango. El primer paso es asociar una URL con la vista. Después, esta vista se encargará de solicitarle al modelo los datos correspondientes, el modelo a la base de

[20:10] datos. Después de recibir esta información, la vista también solicitará la plantilla. La plantilla va a ser HTML, CSS, JavaScript, etcétera, es decir, la presentación del documento que solicita el cliente, el usuario. Una vez tenga todo esto, se le va a devolver una respuesta al navegador con la página de la aplicación solicitada. Así que, como puedes ver, funciona de manera parecida al modelo MVC, pero no es exactamente lo mismo. Y podemos decir que más o menos la vista en jango es lo que hace de

[20:46] controlador, así que por estas variaciones puede ser que al principio te cueste un poquito más entenderlo. Todos estos pasos en realidad los estoy simplificando mucho, se hacen muchas cosas de fondo, pero no es algo relevante ahora mismo. Solo quiero que entiendas bastante bien estos pasos cómo se dan para que luego cuando vayamos haciendo alguna aplicación conjango, entiendas por qué ponemos unas cosas en unos archivos, otras cosas en otros y demás. Si no entiendes este modelo para

[21:16] nada puede ser un auténtico caos intentar hacer nada. Tampoco te estoy pidiendo ahora que lo entiendas de 10 ni que te imagines cómo va a funcionar una aplicación. Simplemente que entiendas este concepto básico, que veas los caminos que toma. Nada más cuando empecemos a escribir código con Yangango, ya verás dónde va cada cosa.

[21:39] Vamos a ver un ejemplo práctico para que entendáis un poquito mejor todo este tema. Supongamos que estamos en una empresa y esta empresa tiene una intranet con una aplicación de Yango. La aplicación de Jjango es una app de mensajería que sirve para que los empleados pongan reportes del trabajo, se envíen mensajes y demás. Pues bien, vamos a sentarnos en la mesa de nuestra oficina. Supongamos que somos este trabajador de esa empresa. La aplicación se abre mediante un acceso directo en el

[22:08] escritorio. Hacemos doble clic y esto nos abre una ventana del navegador. Este acceso directo tenía un acceso a la página de inicio de dicha aplicación, ya que estamos hablando de aplicaciones web. El cliente, que es el navegador, lo primero que hará es hacer una solicitud http. ¿Para qué? Pues bien, la aplicación va a estar configurada para tener una URL de inicio, como todos los sitios web. Supongamos que esta página de inicio se llama inicio.html, pues eso es lo que va a solicitar el

[22:39] cliente al servidor de la aplicación. Le dirá, "Dame la página inicio.html de la aplicación." En este momento se pone a trabajar. Esta URL la tenemos configurada en la configuración de URL. Pues bien, para cargar esta página puede ser que necesitemos de datos en la base de datos o no. Supongamos que para esta página de inicio no necesitamos base de datos. Pues bien, la vista va a solicitar la plantilla correspondiente asociada a la URL inicio.html. Esta plantilla va a ser HTML, CSS,

[23:14] JavaScript, etcétera. La presentación van a ser datos estáticos en un principio. Esta plantilla lo que va a hacer es enviarse con una respuesta HTTP al cliente, es decir, le va a mostrar toda la página al usuario finalmente. En ese momento nos encontramos con un login, un pequeño formulario donde introducimos un nombre de usuario y una contraseña. Para esto sí que necesitaremos de una base de datos, ya que hay que comprobar que las credenciales del usuario son correctas.

[23:44] Pues bien, el cliente o el usuario en el navegador introduce sus credenciales, le da al botón de enviar y se hace una nueva solicitud HTTP. En la configuración de URL tenemos configurado que cuando un usuario haga login hay que llevarle a otra página diferente, por ejemplo, bandeja de entrada. HTML. Pues bien, lo primero que se va a hacer es comprobar si las credenciales de usuario son correctas antes de hacer nada más.

[24:12] Vamos a suponer que sí, en este caso son correctas. Entonces, la vista le pide al modelo comprobar dichos datos u obtener en la base de datos donde están las credenciales de los usuarios. Se comprueba? Vale, son correctas. Pues la vista después se encarga de buscar la plantilla asociada, es decir, el HTML, el ICSS y demás, para poder presentarle esta bandeja de entrada al usuario. Y en la base de datos no solo va a comprobar las credenciales, en este caso, si es una bandeja de entrada, tendrá que

[24:43] obtener y devolver todos los mensajes nuevos, notificaciones y demás cosas que se vayan guardando en la base de datos. Pues después de todo este trabajo, se le envía la respuesta http nuevamente al cliente y el usuario ya puede disfrutar de su bandeja de entrada. Después que va a otra página y crea un reporte, pues este reporte se comunicará con el modelo para almacenar esos datos en la base de datos. Espero que este ejemplo te ayude a entender bastante mejor de qué manera funciona la comunicación en este tipo de

[25:16] modelo. Como puedes ver, al seguir este modelo correctamente, implementamos soluciones muy bien organizadas con cada cosa en su sitio. Sin embargo, al principio puede ser bastante abrumador y más si no sabes nada de desarrollo web o sencillamente sabes un poco de HTML, CSS, JavaScript, etcétera. Bueno, a medida que practiquemos con Yangango, ya verás como poco a poco vas viendo la luz.

[25:44] En este capítulo os voy a explicar de manera bastante simplificada el protocolo HTTP. Profundizaremos más en algunos aspectos en el siguiente capítulo. Cuando navegamos por internet, estamos utilizando una serie de aplicaciones y protocolos que nos permiten acceder a la información que queremos. Estas aplicaciones y protocolos se basan en el modelo cliente servidor, donde cliente es el navegador utilizado por un usuario y servidor pues es el hardware y el software que almacena y envía páginas

[26:19] web a los usuarios. HTTP son las siglas que provienen de Hypertext Transfer Protocol, que significa protocolo de transferencia de hipertexto. Es el protocolo de comunicación que se emplea para transferir información a través de la world wide web. El funcionamiento de HTTP de la forma más simplificada se basa en que el cliente, es decir, el navegador, envía al servidor una petición y este le contesta, ¿qué petición? Pues, por ejemplo, cuando escribes programaciónfacil.org torque en

[26:52] tu navegador y presionas enter. Este envía una petición a mi servidor solicitando dicha página. El servidor recibe la petición y envía una respuesta con el contenido de la página solicitada. Esto, por supuesto, sí está disponible o si el usuario tiene acceso, ya que habrá páginas que también estén restringidas por el servidor.

[27:12] Finalmente, si la respuesta del servidor es satisfactoria, es decir, puede enviarle esa información al cliente, habrá un código 200 llamado OK en el protocolo HTTP, que quiere decir que la petición ha sido satisfactoria y el usuario ya podrá ver dicha página. En el siguiente capítulo hablaré sobre estos códigos. Pues bien, esta sería la forma en que funciona HTTP de manera muy simplificada. Vamos a ver un poco más cómo funciona realmente esta comunicación. Se hace una petición HTTP.

[27:45] El cliente envía el mensaje al servidor en texto plano y esto ya os puede dar una pista de por qué existe http y https. Este mensaje lleva información sobre la petición como el método http utilizado, get, post, etcétera, la URL solicitada y otros encabezados. Todo esto de get post y demás lo explicaré en el siguiente capítulo también. Después, el servidor recibe esta petición y le envía una respuesta al cliente. La respuesta también es un mensaje HTTP que contiene información sobre el resultado

[28:18] de la petición, lo que os he dicho si es satisfactoria, si tiene el acceso denegado o cualquier otro tipo de mensaje que le pueda enviar. Si es satisfactorio, evidentemente aparte de este mensaje HTTP le dará el contenido que necesita. Y después de hacer todo esto, el cliente puede cerrar la conexión o reutilizarla para futuras peticiones. Esto dependerá si el servidor admite conexiones persistentes o no. Para quienes no sepáis lo que son las conexiones persistentes, pues os

[28:48] digo que es una conexión que se mantiene abierta después de enviar o recibir una respuesta. Si el servidor admite estas conexiones persistentes, quiere decir que la conexión se puede quedar abierta para ir recibiendo y enviando más solicitudes con la misma conexión. Esto lo que va a hacer es permitir que el cliente y el servidor se comuniquen más rápido y gastando menos recursos. y una conexión no persistente, entonces sería una conexión que se cierra después de cada respuesta y esto implicaría que el

[29:16] cliente tenga que abrir una nueva conexión cada vez que quiera enviar una petición al servidor. En este capítulo vengo a hablar de manera breve y simplificada sobre el protocolo HTTP y https. ¿Cuál es su principal diferencia? los métodos que se utilizan, los códigos de respuesta y practicaremos un poco con todo esto con el módulo request de Python para que podáis materializar la información con algo práctico. Enviaremos alguna solicitud desde aquí mismo, desde Python, a algún sitio web y capturaremos

[29:50] esas respuestas del servidor web. La principal diferencia entre HTTP y HTTPS es la seguridad. Ambos utilizan lo mismo, el mismo protocolo, tienen lo mismo. Simplemente https encripta la información que viaja desde el cliente al servidor y del servidor al cliente, ya que HTTP no tiene seguridad en cuanto a cómo viaje a la información que viaja en texto plano. Como expliqué en el último capítulo, con https es más difícil obtener dicha información, ya que sabemos que en informática no hay

[30:26] nada 100% seguro. con http alguien con un sniffer como Wireshark podría leer fácilmente esa información en texto plano. Así que siempre que navegues por internet mejor que sea en sitios web con https. Y si por lo que sea navegas en un sitio con http, por lo menos no hagas nada de registros de usuario, ni pongas información sensible, ni tarjetas de crédito, ni nada que te pueda afectar, simplemente mantente como lector. Aún así, recomiendo evitar siempre estas páginas. ¿Significa que con https

[31:00] estamos totalmente seguros? Pues no. Como he dicho, en informática no hay nada seguro. Y que un sitio web tenga https no indica que este sitio sea seguro, simplemente indica que la comunicación entre el cliente y el servidor es segura. Hay muchos sitios web de fishing que intentan imitar sitios oficiales y también utilizan https. Entonces, la comunicación entre esta web fishing y nosotros se haría de manera segura, pero de manera segura hacía un atacante que quiere nuestra información. Así que cuidado con eso. Si

[31:32] en algún momento tenéis que aconsejar o formar a alguien, a un usuario que no sabe mucho de informática sobre esto de https que aparece en los navegadores con el típico candadito, verde si tiene https o rojo si no o no sale algo como no es seguro o es seguro, pues avisarle principalmente que no se fíe solo por ese candado.

[31:59] Pasemos a ver los códigos de respuesta. http. Estos códigos de respuestas son una forma en que los servidores web informan a los clientes sobre el resultado de una petición HTTP. Por lo tanto, tenemos al cliente que envía peticiones y al servidor que envía respuestas. Estas respuestas vienen numeradas. Por aquí tienes algunos ejemplos de cada tipo, sin embargo, hay más. En los códigos numerados a partir del 100 y el 200 tenemos respuestas, en los 300 redirecciones y en los 400 y 500

[32:26] errores. Por un lado tenemos los códigos 100 como por ejemplo 100 101 que son respuestas informativas. El servidor nos informa de algo, como por ejemplo el 101, cambio de protocolo. El servidor está cambiando el protocolo utilizado en la conexión, así que le avisa al cliente de ello. Después tenemos las respuestas satisfactorias, los códigos 200.

[32:48] como por ejemplo el 200, que es el OK, el más típico que solemos recibir. Cuando visitamos un sitio web, hacemos esa solicitud get y si el recurso lo hemos podido obtener correctamente, nos enviará el servidor un código 200. Okay.

[33:03] Después tenemos los códigos 300 para las redirecciones, que nos los dará el servidor cuando ocurra algo relacionado con una redirección. Por ejemplo, visitas un sitio web con una URL y este lleva una redirección que te lleva a otra página. Después llegamos a los errores con los 400, como por ejemplo el típico que solemos ver en muchos sitios 404, cuando el servidor no puede encontrar un recurso determinado, como por ejemplo que la página no exista.

[33:32] Pues estos 400 son los que ocurren en el cliente, los que nos ocurren a nosotros mismos como usuarios, pero luego también están los que ocurren en el mismo servidor, como por ejemplo el 503, servicio no disponible. Esto puede ocurrir por muchos motivos. Uno de ellos es que el servidor esté colapsado de usuarios que tenga mucho tráfico y también podría ser por un ataque de tipo dos de denegación de servicio. Si alguien mal intencionado está realizando un ataque de este tipo, podría saturar

[34:00] la comunicación con el servidor, que eso es lo que buscaría este tipo de ataque. Entonces, los usuarios perfectamente podrían recibir este 503. Después tenemos los tipos de solicitudes HTTP. Podríamos decir que son las funciones o los métodos de HTTP y se conocen como métodos HTTP. Además, dos de los más comunes son get y post. GET es una solicitud que se utiliza para recuperar recursos del servidor, es decir, solicitarlos. Con get le decimos al servidor, dame este recurso. Y el

[34:40] servidor te dirá, pues te lo doy o no te lo doy o no lo encuentro. Después tenemos el método post, que se usa para enviar datos al servidor. Si habéis estudiado PHP, sabréis de sobra que es esto de post. Cuando tenemos un formulario, por ejemplo, de registro, cuando el usuario completa todo y le da a enviar, se utiliza un método post para enviar todos esos datos al servidor.

[35:01] Después, el servidor, pues lo guardará en una base de datos, pero con get solicitamos hacia el cliente y con post enviamos hacia el servidor. Vamos a ver un poquito los pasos que vamos a realizar con GET para que entendáis mejor el proceso.

[35:22] Un sitio web es un conjunto de todas las páginas de una web y una página web es solo una página del sitio web. Es muy común decir página web al conjunto de páginas. Bueno, para que nos entendamos que cuando hable de página web no me refiero a sitio web, a todo el conjunto, sino una sola página. Pues para este ejemplo práctico, supongamos que tenemos una página web con una hoja de estilos enlazada, dos imágenes y un vídeo. La representación cliente servidor con las correspondientes solicitudes podría ser

[35:55] la siguiente. En el primer paso, el navegador, es decir, el cliente, envía una petición get al servidor para solicitar el contenido de dicha página. Escribimos la URL en el navegador. Ese sería el primer paso. Pulsamos enter. El servidor recibe esta petición y responde con el contenido de la página web en formato HTML. Esto si todo ha ido correcto, le respondería con un código 200. Okay. El navegador analiza el contenido de ese HTML plano. HTML es solo la estructura de la página. No

[36:26] tiene estilos, no tiene imágenes, no tiene vídeos, no tiene nada, simplemente define todo lo que se va a ir cargando. Pues en este HTML va a encontrar referencias a la hoja enlazada, a las dos imágenes y al vídeo, que son archivos externos al propio HTML de la página. Es decir, en realidad una página web no es un solo archivo, son un montón de archivos que forman las imágenes, los estilos y están en hojas aparte y demás.

[36:49] Es importante que sepáis algo de desarrollo web para seguir el hilo de todo lo que estoy diciendo. Si necesitáis ayuda con esto, os puedo recomendar algunos de mis cursos, ¿vale? Pues una vez el cliente ha analizado ese contenido HTML y sabe qué cosas tiene que solicitar, pues va enviando peticiones get adicionales al servidor para solicitar cada uno de estos recursos. Uno para la hoja de estilos, otro para la imagen, otro para la otra imagen y demás. y el servidor va respondiendo con cada uno de estos

[37:18] recursos y finalmente el navegador puede completarlo todo y mostrarle al usuario lo que quería. Entonces, como hay varias solicitudes get, puede ser que, por ejemplo, una imagen que tenga la ruta mal puesta o se haya eliminado no se le cargue al usuario. Esta imagen daría un código de error, un 404, pero el conjunto de página se vería. Simplemente se vería un pequeño icono de imagen roto que suele mostrar el navegador cuando no se carga la imagen solicitada. Aquí es importante el atributo Alt para tres

[37:47] cosas. La primera, la accesibilidad. Hay gente que no ve y utiliza un lector para que le vaya leyendo el contenido de la página. Entonces, si ponemos una descripción de cada una de las imágenes en el atributo Alt, el lector le va a leer al usuario lo que lleva esa imagen, aunque no se cargue. Después, a nivel de buscadores, también es importante, ya que si buscas imágenes en internet, pues esta descripción de la imagen puede ayudar a que salgan los resultados. Si no, una araña, un bot de esos de los

[38:17] buscadores, no podrá saber qué contenido tiene la imagen. Seguramente este atributo Alt acabará desapareciendo gracias a la inteligencia artificial, pero de momento se sigue utilizando, ya que cada vez más estas inteligencias pues saben el contenido que tiene la imagen y por lo tanto también los capcha llegará que no funcionarán como ahora.

[38:37] Habrá que cambiar el sistema. Y la tercera cosa para lo que nos sirve este Alt es para que si no se carga la imagen, el usuario que sí que ve ahí la descripción de lo que había en esa imagen. Pues básicamente este sería el resumen de todo lo que pasa. Siempre se puede profundizar más y explicar más pasos, pero vamos a dejarlo ahí.

[39:03] Espero que con esta explicación entendáis mejor el funcionamiento de este request que vamos a utilizar ahora. Para instalarlo solo tenemos que poner aquí en la consola pip install request con ese final. En mi caso ya lo tengo instalado. En el tuyo, si no lo habías utilizado nunca, pues empezar a descargar e instalar.

[39:28] Una vez instalado, podemos hacer el import. Lo que voy a hacer es realizar como cliente desde Python una solicitud de tipo get a una página. Por ejemplo, la página principal de mi sitio web. Puede ser tanto con http como con https. Lo voy a almacenar en una variable para poder imprimir en la consola el resultado, es decir, la respuesta que me dé el servidor.

[39:57] Utilizamos request y su método get que sirve para utilizar el get de http y aquí pondremos la URL. Solo quedaría poner un print para verlo. Y ahí lo tenemos. Respuesta código 200 es un OK. Es decir, aquí desde Python le he dicho como cliente, obten y mi servidor me ha contestado y se ha almacenado aquí con este get la respuesta 200, es decir, que me lo ha dado aquí en el get. Deberíamos poner un segundo argumento que sería time out con un valor, por ejemplo, de 5.

[40:47] Esto con Time out le decimos que envíe esta solicitud y que si el servidor no responde en 5 segundos que corte, ya que en un programa donde utilicemos estas solicitudes, si el servidor no responde y no tenemos este time out, nos podemos quedar colgados esperando, esperando, esperando. Y si nunca llega la respuesta, pues entonces el programa se queda ahí colgado. ¿Qué pasará si pasan los 5 segundos? Pues que se va a generar una excepción la cual podríamos manejar también. Pero bueno, vamos a dejarlo

[41:16] simple hoy. Probemos a ver qué pasa si ponemos una URL de una página que no existe. Por ejemplo, la página no existe, que estoy seguro que no existe de verdad. Y ahí tenemos una respuesta del servidor diferente, código 404.

[41:36] Si visitamos con el navegador esta URL inexistente, yo tengo controlados los códigos de error http. Entonces te saldrá esto, error 404, recurso no encontrado. Y aquí, bueno, doy una serie de sugerencias para que el usuario pueda hacer algo, a ver si la URL está escrita bien y tal. Y ahí tendríamos esa URL.

[41:59] con el error 404. Esto se puede manejar en un sitio web o no, depende de lo que quieras. Siempre es mejor manejarlo y dejarle un botón para ir a la página de inicio y que así el usuario no acabe saliendo, ya que de esa forma perdemos tráfico a lo tonto, que a veces podemos hacer que no se vaya. Por aquí tenemos un lector de muchos que hay. Podemos utilizar también wir shark de solicitudes http. Ponemos por aquí una URL y también podemos configurar diferentes argumentos para la solicitud.

[42:32] Por aquí seleccionamos versión de HTTP y el método, en este caso get. Quiero hacer lo mismo que hemos hecho en Python. Y tenemos aquí la cabecera de la solicitud. En este caso no lleva mucha información, pero podría llevar más. En principio sale el cliente con user agent y por aquí la URL solicitada. Por aquí tenemos la cabecera de respuesta del servidor, status 200. Okay. Y por aquí nos dice la longitud del mensaje que nos has respondido. Y por aquí abajo vemos el contenido. ¿Ves? La respuesta del

[43:10] servidor viene con esta cabecera que es lo que hemos escaneado o capturado en Python. Y luego por aquí tendríamos el contenido, sería el HTML plano sin estilos ni nada. Después todos estos recursos, como puede ser esta imagen, pues hay que cargarlos con solicitudes aparte. Entonces, lo que estábamos recibiendo de ese código 200 venía de la cabecera. Si queremos también podemos obtener el contenido de la solicitud. Lo podemos hacer también desde Python.

[43:40] Vendríamos aquí y vamos a guardar otra variable, contenido y pondremos respuesta esta variable punto text. Vamos a imprimir el contenido por aquí y luego podríamos poner la respuesta. Da igual, no importa el orden. Pues tendríamos ese contenido, como puedes ver, con HTML.

[44:09] Podríamos cambiar la codificación, ya que no salen los acentos, pero bueno, ahí está. y el código de error. Esta página que ha obtenido, como no existía y da error 404, es la que tengo yo para avisar a los usuarios de que esa página no existe. Si ponemos esto, pues tendremos el resultado esperado, tendríamos 200 ahí y bueno, el HTML de la página esta vez sí que es la solicitada. Con esto se puede hacer una gran cantidad de cosas. Digamos que solo os estoy enseñando la punta del Ieberg,

[44:45] pero muy poquito de lo que se puede hacer. Para que se vean los acentos y demás, para que esto no salga así, podemos utilizar un decode con la codificación UTF8, que sería este de aquí. Pondríamos contenido respuesta punto content.code y como argumento UTF 8. Pues esta sería la respuesta y por aquí un poquito más arriba, a ver, podríamos encontrar acentos ya, ya que la cautificación ya está en UTF.

[45:24] En este capítulo vamos a ver cómo utilizar las herramientas de desarrollo del navegador. Esto nos va a servir para depurar y mejorar las aplicaciones web creadas con JJo, ya que saber utilizar esto es fundamental para el desarrollo web. Cada navegador tiene su tecla o teclas para abrir estas herramientas. En Chrome y Edge tienes que pulsar la tecla F12. Si utilizas otro navegador y no sabes cómo abrirlo, déjame un comentario. Estas herramientas son los paneles que ves por aquí. Si te va

[45:50] mejor, puedes modificar la posición. Lo tengo en el lateral. Se puede poner abajo, a la izquierda. Sí, abajo. O incluso podríamos desacoplarlo así para tenerlo en una ventana aparte. Aquí en esta página tan básica que viene con este mensaje por defecto de Chrome, ya tenemos una estructura básica HTML que podemos ver gracias a estas herramientas. Y aquí mismo podemos ir marcando secciones, deps, todo lo que necesitemos ver. Por ejemplo, queremos ver los estilos de este H1.

[46:30] Pues aquí nos sale los estilos que tiene. Podemos deshabilitar ciertos estilos e iremos viendo por aquí los cambios en tiempo real. Cuando recarguemos la página, todo volverá a estar exactamente igual, pero para ir haciendo pruebas o ver cómo quedarían ciertos componentes sin un estilo o añadiendo manualmente otro por aquí, pues nos va a venir muy bien cómo se aplican los estilos de este enlace. Le damos aquí clic derecho, inspeccionar, nos marca el elemento. Por aquí podemos ver su HTML, sus clases

[47:06] y luego ver cuáles son las clases CSS con los estilos exactamente, líneas donde aparecen y demás. Muchísima información. Pues esta es la pestaña elementos. Si os fijáis tenemos un montón de pestañas. Aquí principalmente se hace eso, inspeccionar el HTML y el CSS.

[47:27] En la pestaña consola vamos a ver mensajes de error, advertencia, información de JavaScript. Después, en la pestaña de red vamos a poder ver todo tipo de mensajes, http, archivos cargados y demás. Por ejemplo, vamos a esta web y nos carga todo esto, un montón de archivos que tiene para el funcionamiento. Y por aquí en estado vemos los códigos HTTP.

[47:57] Esto es un código, ¿okay? que se ha cargado correctamente. Por aquí tenemos una redirección, todo esto correctamente. Y por ejemplo, si saliese un 404 por aquí, nos indicaría que cierto archivo no se ha cargado, no se ha encontrado.

[48:14] Lo bueno es que conjango estos mensajes de manera simple nos van a salir por aquí. Aquí en la terminal vamos a ir viendo cuando ejecutemos el servidor toda la información de los archivos que se vayan cargando. Por ejemplo, tenemos un Fabicon, el iconito este que sale por aquí, que por lo que sea no carga, tenemos mal puesto el nombre hemos incluido ni siquiera y lo hemos especificado en la hoja HTML. Este pequeño dibujito no va a salir y esto generará en las peticiones HTTP por aquí

[48:50] un error 44. Este error 404 lo veremos por aquí y también veremos códigos 200 de archivos que se hayan cargado bien, si hay alguna redirección, etcétera. Como podéis ver, tenemos muchísima información en el mismo navegador y esto lo tendremos que aprender a aprovechar, pero hacerlo con el tiempo. Si no sabéis mucho o nada de esto, de estas herramientas, ir utilizándolas de momento para lo básico, para simplemente si necesitáis ver cómo funciona este botón, cómo está hecha su estructura

[49:26] HTML, pues aquí podéis ver ciertos datos de cómo funciona por si os ha gustado el estilo, y no lo digo para que vayáis copiando cosas, sino para vuestros propios proyectos, que podáis ir viendo ciertas cosas. Por ejemplo, este border radius no os gusta. Pues queréis ver cómo quedaría con un border radius de cinco píxeles, pues lo probáis ahí y cambiáis todo el diseño de los elementos que queráis ir probando y así sabréis de primera mano sin tener que ir a hacer cambios y demás

[50:02] a Jango, a vuestras páginas y todo eso, podréis ir viendo cómo va quedando y decís, "Venga, va, esta clase. El border radius." ¿Cómo quedaría sin border radius? Pues desactivamos aquí y lo vemos. Ahora vamos a ver cómo podemos incorporar a nuestro trabajo Git GitHub.

[50:28] Puesto que esto no es un curso dedicado a ello, voy a hacer unas explicaciones muy básicas para quien no sabe nada o prácticamente nada. Sí que es cierto que muchas cosas no las sabréis utilizar si no sabéis nada, pero para eso podría hacer un curso dedicado para que aprendáis más, al menos para que empecéis a introduciros en Git y GitHub.

[50:47] Lo voy a poner en este curso para que ya vayáis perdiendo el miedo a empezar con eso si no había empezado. Y los que ya sabéis, pues bueno, os podéis saltar esta parte. Git es una herramienta que se instala localmente en tu equipo y te permite llevar un control de los cambios que se hacen en todos los archivos de tus proyectos. Si queremos utilizar kit con nuestro proyecto para que se rastre y se vaya llevando un control de todo lo que hacemos, lo podemos hacer específicamente en este proyecto.

[51:15] Iniciaremos aquí un repositorio que se llama, que es como un contenedor de todo nuestro proyecto y simplemente empezaremos a trabajar. Entonces, Git, esta herramienta que vamos a instalar ahora, va a ir registrando todos los cambios, todas las líneas que se van modificando, todos los archivos. nos lo irá indicando. Y básicamente es eso. ¿Y todo esto, ¿para qué nos va a servir?

[51:36] Pues básicamente para no tener que estar duplicando archivos. Por ejemplo, vamos a implementar una nueva funcionalidad en nuestro proyecto. Queremos crear el registro de usuarios y tenemos que tocar cosas de la base de datos y demás. Habrá bastantes archivos implicados en el proceso. Entonces, supongamos que estamos haciendo algo mal, no nos ha gustado el resultado y queremos volver a como estábamos antes de empezar ese trabajo. Tenemos que ir buscando todos los archivos, intentar deshacer con

[52:08] control Z o tendríamos que haber hecho una copia entera de todo el proyecto antes para poder borrar todo lo nuevo y puede ser un verdadero descontrol. y al final acabarás teniendo funciones que te perderás por ahí en medio, que no sabes por qué las tenías y todo eso. Pues para evitar estas cosas tenemos Gitar con más gente tenemos GitHub. Git funciona en local, en tu máquina.

[52:34] Después los cambios de todo lo que vas haciendo lo puedes subir en línea. Pues GitHub es como Google Drive, Dropbox o alguno similar de estos, pero especializado en código para proyectos de código. Ahí podemos colaborar con gente de todo el mundo y perfectamente cada uno ir haciendo su parte de las aplicaciones. Bueno, más o menos esa es la base más fundamental de Git y GitHub.

[53:01] Después tenéis que aprender unos cuantos comandos. También hay herramientas gráficas que podéis utilizar si no queréis aprenderos comandos, pero al final yo creo que os va a ir más cómodo aprenderos cuatro comandos que utilicéis muy a menudo y luego para cosas específicas pues ir buscando soluciones.

[53:20] Si os encontráis en Linux podéis utilizar este comando para instalar Git. Para verificar que se instaló correctamente la versión, utilizaréis este. Para los que estamos en Windows, pues vamos a descargar un instalador de aquí, de esta dirección.

[53:41] Vamos aquí. El instalador se descarga de aquí. Es muy sencillo, tenéis simplemente que seguir los pasos con todo por defecto. Lo podéis hacer ya cuando sepáis más o si queréis investigar, vais viendo para qué sirve cada opción y cómo podéis adaptar las cosas mejor a vuestros modos de trabajo.

[54:01] Básicamente, una vez lo tengáis instalado, ya está listo para usar. No hay que hacer mucha cosa, simplemente tenemos que pasar un par de comandos. Uno va a ser este git config global username, así tal cual como lo veis aquí. Y aquí en lugar de poner tu nombre, pues pones tu nombre, lo que quieras poner, porque cada confirmación comit de los cambios que vayas haciendo van a quedar con esa firma, con tu nombre. Y así si trabajas en un equipo, pues cada uno sabrá qué ha hecho qué. Y luego también tenéis que

[54:39] registrar después de poner esto, yo ya lo tengo registrado, tenéis que registrar esto. Git config opción global user.email y aquí ponéis vuestro correo electrónico donde os contactarían, por ejemplo, si hubiese que resolver algo.

[55:01] Para inicializar el repositorio de Git, vamos a poner sobre la consola Git init. Atención aquí porque si ponemos git init sobre esta ruta, quiere decir que se va a inicializar un repositorio sobre la carpeta de proyecto tienda videojuegos.

[55:21] Si no quisiésemos poner todo en este control de versiones, porque aquí tenemos diferentes trabajos o lo que sea o hay carpetas que no queremos que salgan en el proyecto, pues entraríamos dentro de esa carpeta específica, pondríamos cd tal y luego haríamos ese git init. Ahora, si pongo git init se va a tener en cuenta esto que tenemos por aquí y esto, básicamente todo lo que tenemos ahora.

[55:49] Pues esto lo hacemos una vez para inicializar el repositorio. Se ha inicializado un repositorio git vacío en esto. Ahí nos ha creado esa importante carpeta que no tenéis que eliminar, que va a guardar todo lo necesario para que funcione git.

[56:09] Y aquí vais a ir viendo esto que está en color gris, pues por defecto se está ignorando, no se va a tener en cuenta. Son archivos del entorno virtual, entonces en principio no los necesitamos porque es un entorno virtual que estamos utilizando aquí en local. Sí que necesitaremos esto si lo queremos tener o lo podemos quitar también del registro de git. Y en principio habrá que limitar algunos archivos que no nos interese tener porque esto lo vamos a subir a GitHub. En GitHub podemos hacer dos

[56:42] cosas, poner el repositorio en privado para que solo lo podamos acceder y utilizar nosotros mismos y otras personas que nosotros queramos autorizar. y lo podemos poner en público para que cualquiera haga contribuciones o simplemente lo utilicen si es código abierto, lo que queráis, pero tenéis esas dos opciones. Esto os lo explicaré también. Aquí en esta parte vamos a tener los cambios. De momento solo hay un archivo, aparte de lo que es el entorno virtual, pero de nuestros cambios solo hay este archivo. Y vamos a

[57:18] tener, aparte de esos tonos grises por aquí, de los archivos que no se tienen en cuenta, vamos a tener esto que aparecerá en diferentes colores, en verde y con la U, esta de aquí de untractimiento podemos decir en español, pues quiere decir que este archivo todavía no se está siguiendo por Git. En el control de nuestro programa no se ha añadido todavía este archivo porque es nuevo.

[57:45] Una vez sea añadido en un comit, esto se va a quitar, va a quedar como rastreado, es decir, ya en nuestro proyecto será un archivo del proyecto y ahí cuando modifiquemos este archivo, cualquier otro que ya esté dentro del proyecto, aquí pondrá una M de modificado y aparecerá en color azul normalmente, si no tenéis algo diferente en los estilos.

[58:09] Los archivos normalmente antes de hacer comit se llevan a lo que se llama un área intermedia que se llama staying, que podríamos decir archivos preparados. Ahí vamos añadiendo todas las cosas que digamos pues esto ya está listo para hacer comit. Después revisamos una vez más antes de hacer una confirmación y lo enviamos a comit, es decir, lo confirmamos finalmente.

[58:35] No os preocupéis mucho por el área de staying. En este curso directamente lo vamos a hacer todo a comit, pero bueno, ya os digo, para aprender a utilizar mejor Git GitHub sería conveniente que vieseis un curso. Yo tengo uno, es un poco viejo, pero bueno, puede servir para entender un poquito más ciertos conceptos técnicos, aunque también perfectamente podría hacer uno nuevo. Ya veremos. Bueno, pues esto supongamos que lo quisiésemos confirmar. Ya tenemos todos los cambios hechos que queremos

[59:05] por hoy. Entonces, tendríamos que poner por aquí un mensaje de confirmación. Lo podríamos hacer también desde la consola, pero bueno, vamos a complicarlo lo mínimo posible. Aquí escribiríamos básicamente qué es lo que hemos hecho, un resumen. No hace falta que pongáis aquí un libro. Por ejemplo, si fuese solo esto, pues he creado el script para iniciar el entorno virtual. Ya está. Así de sencillo. Y luego tenéis unas ciertas palabras o etiquetas como fit, fix, chore, docs y cosas así que se utilizan

[59:39] para ser más técnico, por así decirlo. No es obligatorio, pero formalmente se suele utilizar en el trabajo. Le puedes poner un fit, dos puntos y explicamos aquí en español o en inglés, depende cómo sea el equipo. Si hay gente que esté trabajando que solo habla inglés, pues tendremos que ponerlo en inglés. Seguramente eso depende de cada equipo. Pues pondríamos ahí el comitíamos a confirmación. Aquí todos los cambios ya quedarían guardados en el registro de git. Vale, guardado queda todo igual en

[60:19] local como archivos normales, pero esto se hace para tener un registro. Pues venga, vamos a ponerlo fit. Esto mismo. Le damos a confirmación. Aquí os preguntará seguramente si estáis seguros de confirmar sin llevar al área de staging. Me parece que salía un mensaje normalmente, pero bueno, si le dais así, pues ya estaréis en este punto. Bueno, ya tenemos los cambios confirmados y aquí en este graft nos sale lo que hemos hecho, ese mismo comit. Esto es un comit. Tenemos un archivo cambiado y 19

[61:05] inserciones, que estos son las líneas que se han añadido del archivo. Nos dice cuánto hace que lo hemos puesto y qué fecha exactamente y quién. Aquí está lo de la firma y ahí tenemos el código del comit. Es un identificador básicamente único para cada comit. Y esto nos indica en qué rama estamos trabajando, dónde se ha hecho este comit, estos cambios confirmados en la rama master, que puede ser main también es la principal.

[61:41] Ahora que estamos empezando, pues podríamos hacer, lo suyo sería hacer una rama nueva en lugar de esta, crearíamos rama nueva y le vamos a poner, por ejemplo, desarrollo. Ahí estamos sobre esa rama ya la estamos utilizando. Tenemos las dos ramas. Y ahora todo lo que hagamos y confirmemos en desarrollo se va a quedar guardado en Git en esa rama.

[62:10] Después, si cambiamos a la rama master, no veremos todo lo que hemos hecho en desarrollo, sino que veremos esta versión actual que hemos guardado hasta ahora. Entonces, en desarrollo, pues podríamos hacer ciertos cambios. creamos una app conjango para los usuarios con todas sus funciones y demás, la revisamos que esté bien, que esté correcto y luego decimos, pues queremos fusionar todo lo que tenemos en desarrollo con la rama master y la rama master se va a quedar con todas las

[62:38] novedades, pero que en desarrollo tenemos unos cambios que no nos han gustado en absoluto, queremos descartar cosas, pues lo descartamos y seguimos otra vez. Y de momento master estará intacto. Después que trabajamos con más personas, pues cada uno podría tener su rama de lo que sea, cada uno haciendo una parte específica del proyecto, uno con el frontend, otro con el backend, otro con no sé qué y se van enviando a GitHub los cambios para ir añadiendo y fusionando finalmente a la rama principal. ¿Vale?

[63:11] Todo esto es un poquito ya más complicado, necesitaréis más experiencia para ir viéndolo, pero en principio ese es el universo Git y GitHub. A groso modo es lo que tenemos con Git y GitHub. Y por eso va tan bien, porque podemos ir deshaciendo cambios, podemos ver diferentes líneas temporales del desarrollo y, por supuesto, todo el registro de todo lo que se va cambiando.

[63:36] Y aquí nos sale añadido con esta a este archivo, que es lo único que hemos añadido. Si hubiese más, saldrían por aquí. Pues podemos ver los cambios cuando tenemos cosas por confirmar. Podemos ir viendo por aquí a la derecha creo que salen los cambios de las líneas nuevas o eliminaciones y demás. Por ejemplo, venimos aquí y vamos a borrar esto. Guardamos cambios y aquí ahora nos sale cambios. ¿Ves? Ahora sale modificado porque este archivo ya está registrado en Git. Entonces hay unas

[64:15] modificaciones. ¿Qué modificaciones? Hacemos clic aquí y vemos que se han eliminado en la versión original todas estas líneas que salen en rojo y que la versión nueva quedará así. Si añadimos sobre las eliminaciones pues cosas nuevas, pues nos aparece por aquí en verde lo nuevo que vamos a registrar. Si ahora ponemos un mensaje de confirmación, confirmamos estos cambios, se eliminará todo esto y quedará registrado esto.

[64:50] Y eso es todo. Pues vamos a descartar estos cambios, no nos interesan. Hacemos clic derecho aquí, descartar cambios. Nos dice si estamos seguros. Pues descartamos esos cambios y ya queda todo solucionado porque vuelve a estar todo igual.

[65:12] Y ahora nos quedaría un paso importante e interesante que es subir esto a GitHub. Lo haríamos con este icono de aquí. Publicar en GitHub. Esto lo que va a hacer es publicarlo en un repositorio privado o público. Para eso tenéis que tener asociada vuestra cuenta de GitHub. Yo tengo aquí la mía, con Visual Studio. Es bastante fácil de hacer. Os pedirá una confirmación por aquí cuando lo tengáis que hacer, pero si necesitáis una ayudita, pues ya me lo decís en los comentarios. Pues si quisiésemos tener

[65:47] todo nuestro trabajo privado porque sea para una empresa o un producto privado simplemente, pues lo pondríamos en privado y trabajaríamos con quien quisiéramos, solos o con varias personas. Y luego público, pues eso es lo que he dicho, sería visible y descargable todo el código, incluso verían los comits que vamos haciendo. Yo lo voy a poner en privado, de momento, luego se puede cambiar. Ahí nos sale que se están cargando los archivos y demás.

[66:15] Por ahí vemos la ruedita trabajando y ya estarían los cambios hechos. Después que hiciésemos más cambios, voy a eliminar estas líneas para hacer unos cambios. Guardamos cambios. Aquí se ven que hemos eliminado cosas. También lo podemos ver aquí directamente.

[66:36] Nos sale modificado. Pues vamos a hacer otro comit. Estos comits que estoy haciendo son un poco tontería al final porque no haríamos un comito, seguramente, pero es para que os vayáis quedando con los conceptos básicos de cómo se van haciendo las cosas. Haríamos una confirmación aquí.

[66:59] Estamos ahora en la rama desarrollo. Se guarda en desarrollo el cambio. Nos sale un cer y un uno. Este cero quiere decir que online en GitHub no tenemos ningún cambio que traer localmente, puesto que no hay gente trabajando en nuestro repositorio. Pues sería raro, ¿no? Si hubiese cambios. Si hubiese gente trabajando, pues sí vendrían cambios de vuelta aquí. y podríamos recibir todo lo que van haciendo otros automáticamente. Pero nosotros lo que vamos a hacer dándole a este botón es

[67:36] subir un comit, estos cambios que acabo de hacer simplemente. Y si hacemos más antes de darle al botón, pues irá poniendo dos, tres, cuatro. Aquí nos dice que se va a extraer e insertar comits desde GitHub y localmente, básicamente. Le damos aceptar y va haciendo eso. Sincroniza los cambios. Así ya. Si se nos pierde localmente el proyecto, no pasa nada.

[68:02] Imagínate, te cae un troano aquí, lo tienes que borrar todo. Formateo, no tengo nada. Vale, pues después hacemos un git clone con el nombre del repositorio y restauramos todo sencillamente. Así que aquí ya estaríamos salvados, por así decirlo.

[68:19] Tendríamos una copia en línea. Por aquí afuera podemos poner un archivo que ponga punto git ignore. Nos aparecerá seguramente con el icono este de git. Y aquí podemos ir apuntando una serie de reglas que queremos que se ignoren. Por ejemplo, estas. ¿Qué va a hacer esto?

[68:47] Pues yo quiero que todos los archivos con cualquier nombre, pero que sean con esta extensión, quiero que se ignoren totalmente por gitchos de caché de Python que no necesitamos. Entonces, cada cambio, cada ejecución que vayamos haciendo de Python y demás, nos va a ir generando cambios en esos archivos y son archivos que no sirven para el proyecto al final, son archivos para acelerar cosas. Entonces, no nos interesa estar aquí teniendo cambios cada vez de los archivos de este tipo.

[69:22] En este caso, el giticode sí que nos interesa tenerlo, pero lo que serían esos archivos de caché de Python no nos interesan. Después, archivos con esta extensión no queremos que estén registrados, ya que van a llevar información sensible. Por ejemplo, JJango tiene una clave secreta de funcionamiento que es crucial para la seguridad. Entonces esta clave no puede verse por cualquiera, sencillamente, y por lo tanto la clave inicialmente cuando creemos un proyecto Yangango se va a escribir directamente sobre un

[69:57] archivo de Python en texto plano y esto podría comprometer la seguridad al poner claves o cosas importantes sobre un archivo directamente. Entonces, con un archivo de este tipo, podemos sencillamente llevar una serie de credenciales en variables, es decir, en nuestro archivo de Python que necesite esa clave secreta de Yango, pues tendríamos una variable y no tendríamos la clave directamente. La variable accedería al archivo punnv y sacaría esos datos. Después la base de datos local que se va a crear con el

[70:32] proyecto de SQL Lite por defecto. No la quiero. Luego lo podemos cambiar si queremos. Borramos esta línea y ya está y se puede subir. Pues haríamos aquí para ir practicando otro comit. Y ahora vamos a crear este punto NV.

[71:01] Y fíjate como automáticamente se ha quedado en color gris y no nos sale con esa U. No está registrado, pero tampoco lo detecta. Y eso es lo que yo quería. Y aquí vamos a poner esa información sensible. Si quitamos esta regla de aquí, guardamos cambios, veremos que sí que se registraría. ¿Ves? Ahí está.

[71:24] me sale modificado el git porque he hecho aquí cambios eliminando esa línea y como no rastreado este archivo. Entonces deshacemos, guardamos cambios y ahora todo vuelve a la absoluta normalidad. Así que git es básicamente un ojo alcón que está vigilando al milímetro todo lo que hacemos.

[71:48] Después que hemos acabado con la rama de desarrollo, pues haríamos un git merch. y fusionaríamos con esa rama master, que sería la principal en este caso, o podríamos hacerlo con otras ramas diferentes. Ahora, ¿qué pasa si yo le doy aquí?

[72:07] Vengo y le doy a master. Fíjate cómo han desaparecido ciertos archivos. Esto me sale como tachado porque no existe en esa versión master. En la versión master tendríamos esto y me sale este amp porque físicamente está el archivo, pero ya no tenemos ese git que está en la otra rama que le dice a git básicamente que no lo rastree. Pero entonces una vez que fusionásemos la rama de desarrollo, pues todo esto que tenemos en desarrollo, no os preocupéis porque se va a ir reemplazando

[72:41] las carencias, por así decirlo, que tiene la rama master, que está en una etapa menos avanzada de nuestro desarrollo. Pues esto es Git y GitHub en esencia. Lo he intentado hacer lo más básico posible y breve. Sí que se ha alargado un poquito para lo que me hubiese gustado, pero considero que si no sabéis nada, pues a lo mejor os costaba un poquito seguir el curso, aunque ya os digo que no lo vamos a utilizar mucho más allá de esto.

[73:08] vosotros cada cambio que vayáis haciendo ir utilizándolo para ir practicando, pero me refiero que no le voy a dedicar mucho más tiempo en este mismo curso a Git y GitHub, aunque yo, por supuesto, lo seguiré utilizando. En este capítulo te voy a enseñar a crear un proyecto con Yangango y vamos a ejecutar el servidor Yangango para que veas que está funcionando. Para los que estáis siguiendo el curso capítulo a capítulo, pues si estáis utilizando el control de versiones como yo, aseguraros

[73:42] que estáis en la rama desarrollo, no en la principal. Vamos a ir desarrollando primero sobre esta. Si no estás siguiendo el curso o no quieres utilizar el control de versiones, pues perfectamente puedes ignorar esto. Y ahora ya sí que vamos a instalar JJango y crear el proyecto.

[74:01] Prestar atención y fijaros si tenéis el entorno virtual activado para instalar Yangango sobre el entorno virtual. Para instalarjango con pip de manera muy fácil, vamos a poner pip installo. Si lo ponemos así nos va a dar la última versión estable de Yango. Si queremos una versión concreta, vamos a poner un doble igual y la versión, por ejemplo, 5.3 y nos instalaría esa versión.

[74:33] Yo voy a utilizarlo de esta forma. Se va instalando Yangango y sus dependencias. Y ahora podemos comprobar con el siguiente comando la versión que se ha instalado de Django, aunque ya la vemos por aquí, pero bueno, para comprobar que está en funcionamiento, tendríamos la 5.2.4 cu en este momento que queremos ver todo lo que tenemos instalado con pip en nuestro entorno virtual, pues ponemos un pipe y ahí tendríamos solo eso, Yangango y dependencias que se acaban de instalar.

[75:11] Para crear el proyecto Yangango lo vamos a hacer con un sencillo comando. Yango admin start. project y le damos un nombre, por ejemplo, tienda videojuegos. Esto nos crea una carpeta con todo lo necesario ya para empezar tenemos esa carpeta tienda videojuegos, tienda videojuegos dentro donde llevamos la app principal. Le encontraréis sentido a todo esto, a que haya dos carpetas iguales, pero una es el nombre del proyecto y otra es el nombre de la aplicación principal que va a gestionar

[75:55] las configuraciones. Sí que hay otro modo de instalar, simplemente con una carpeta que se llame, por ejemplo, config sin esta carpeta y demás, pero no quiero complicaros en este curso el aprendizaje desde cero con Jango. Así que si tenéis curiosidad os puedo dejar un comentario explicando un poquito a qué me refiero, pero bueno, no es relevante. Quiero que lo instaléis de esta forma para que no os liéis. Al crear el proyecto se ha creado con todo lo necesario para empezar. Tenemos una serie de archivos

[76:26] que todavía no nos interesa saber con profundidad para qué sirven, pero ya veréis que es muy fácil de utilizar. Ahora seguramente estaréis ya con ansias de poder ejecutar el servidor y ver que ya podéis utilizarjango, que en el navegador os aparece algo dejango. Pues vamos a utilizar este archivo manage.p que nos va a servir para gestionar todo.

[76:50] Este va a ser nuestro gestor en desarrollo para poder hacer un montón de cosas para empezar pues ejecutar el servidor. Pues pondremos Python para ejecutar un archivo de Python. este concreto, tenemos que entrar en tienda videojuegos, ¿vale? Estamos en la carpeta principal del proyecto, pues vamos a poner CD tienda videojuegos.

[77:14] Vale, estamos dentro. Esta carpeta de proyecto principal, si la queréis llamar de otra forma para no confundiros con tres carpetas con el mismo nombre, pues lo podéis hacer. Y estamos a esta altura, fijaros en la línea del árbol.

[77:27] Ya estamos para ejecutar manage.p. Si tenéis dudas de dónde está este archivo, si estáis en la ruta correcta, poner si estáis en Windows, un dear y aquí os sale lo que tenéis. Pues está el manage.p. Estupendo. Ya podemos ejecutarlo con un Python. Llamamos a Python si estáis en Linux Python 3.

[77:50] Y ponéis manage.p run server. Y ahora nos aparecerá todo esto que parece muy alarmista, pero no para nada. Ya lo iré explicando. Tenemos esto. Se ha ejecutado el servidor en la ruta local host, que es esta, y el puerto 8000. Hacemos control click y nos abrirá esto en un navegador.

[78:19] Yo puesto que tengo un proyecto conjango en ejecución en el puerto 8000, entraría en conflicto. Entonces, podemos ejecutar dos cosas dejango diferentes a la vez. Sí, lo podemos hacer perfectamente. Simplemente hay que especificar el puerto al ejecutar el servidor. Para detenerlo, hacemos control + C y nos aparecerá aquí. Sencillamente venimos con la flecha del teclado, vamos para arriba, nos aparecerá lo que ya hemos escrito en el historial y aparte de poner run server, que nos ejecutará en este puerto

[78:53] por defecto, especificamos con un espacio otro puerto, por ejemplo, el 9000. Entonces el servicio se ha ejecutado en el puerto 9000. Hacemos control click y bueno, en mi caso ya lo tengo preparado y listo para empezar a trabajar. Si aparece esto, quiere decir que ya lo tienes todo perfecto.

[79:24] Bueno, pues ya tenemos creado nuestro proyecto de Yjango con este comando del capítulo anterior y nos ha hecho una carpeta llamada tienda videojuegos, como pusimos aquí. el nombre del proyecto, tienda, videojuegos y dentro de esta otra carpeta. Esta sería la carpeta del proyecto Jango y esta es la carpeta con la aplicación principal del proyecto, que aquí va a llevar todo lo necesario para las configuraciones generales. En otro capítulo explicaré cómo funcionan las aplicaciones e iremos creando para

[79:57] que sepáis cómo funcionan y lo que es la modularización en Jango. Pero de momento lo primero que nos crea Yjango es esta aplicación principal para gestionarlo todo. En la carpeta de proyecto tenemos estos dos archivos y el primero es SQL light, que nos permite tener una base de datos muy sencilla, ligera. Si tenemos que hacer proyectos medianamente grandes, vamos a necesitar otro sistema gestor de base de datos como MySQL, SQL Server o cualquier otro, ya que SQLite se va a quedar

[80:33] bastante corto, pero empezaremos con esto, ya que viene totalmente integrado en Jango y es muy fácil de utilizar y luego os enseñaré a utilizar MySQL con JJo, pero primero empezamos con esto, ¿vale? Ya tendríamos ahí nuestro archivo de base de datos creado, no tenemos que crearlo y además tenemos este manage.p que nos va a servir para gestionar nuestro proyecto Yangjango. Dentro de esta carpeta que nos ha creado tenemos este P caché que son archivos de caché de Python. Esto se crea automático, así

[81:07] que no hay que hacerle caso. Y esto tiene que estar quitado con el control de versiones. En el gitgnore tiene que estar quitado para que se ignore. También se está ignorando este SQLite por el git ignore. Lo escribí aquí.

[81:23] Y luego tenemos este init.Pp que está vacío y nos sirve para indicar que esta carpeta, la de la aplicación principal es un paquete de Python. Esto, los que hayáis estudiado Python y tenéis que haberlo estudiado, por supuesto, para hacer este curso, sabéis lo que es un paquete de Python y por qué necesita un archivo de estos. Pero de todas formas, lo sepáis o no, tiene que llevar este archivo para que funcione bien.

[81:49] Después tenemos settings.pi, que podíamos llamar esto como la joya de la corona, ya que aquí definimos la configuración de todo el proyecto, apps instaladas, es decir, los módulos que tendrá nuestro proyecto, la conexión con las bases de datos, el idioma, la zona horaria, rutas de archivos estáticos, etcétera, un montón de cosas.

[82:12] Tenemos también este archivo URLs donde vamos a definir las rutas principales del proyecto que podrán conectar con otras apps. Cada aplicación o módulo de nuestro proyecto va a tener un archivo de URLs, tendrá sus propias URLs. Por ejemplo, en esta tienda de videojuegos tendremos una app de catálogo para mostrar todos los productos. Pues necesitaremos crear una URL en este archivo, en el principal, que nos lleve a la aplicación de catálogo. Y luego, una vez en la aplicación de catálogo,

[82:44] configuraremos las URLs solo del catálogo para navegar en las fichas de los productos, para añadir un producto al carrito o cualquier otra cosa que utilice URLs, que esto, por supuesto, lo entenderéis de seguida cuando empecemos a tocarlo. Tenemos también estos dos archivos que nos van a servir para la configuración en despliegue, en producción, así que en local no lo vamos a tocar. Este de aquí abajo nos sirve para desplegar el proyecto en servidores compatibles con esto mismo WSGI,

[83:19] como por ejemplo Python Anywhere. Y luego tenemos el otro, ASGI, que es lo mismo que el otro, pero pensado para entornos que utilizan ASGI. Pero esto ya nos preocupará más cuando estemos llevando esto a producción. Mientras estemos desarrollando, no tenemos que tocar nada de ahí. Y una pequeña cosa más que no os conté en lo de Git en ese capítulo, que si tenéis configurado Copyot, que es muy fácil, simplemente le dais a este botón de aquí y os dirá de configurarlo, os generará el mensaje de

[83:50] confirmación automáticamente con el fit, refactor o lo que haga falta según lo que vea en los archivos. En este caso, lo que hemos hecho nada más hasta ahora es crear el proyecto Yangango con ese start project. Entonces, le damos aquí y vemos a ver si se ajusta a lo que hemos hecho.

[84:12] Fit, inicializar proyecto jjango con archivos de configuración básicos, que es exactamente lo que hemos hecho y ya no hemos tenido que pensar en cómo escribirlo. Vamos a hacer confirmación. Estoy sobre la rama desarrollo y ahora cuando queramos podemos sincronizar los cambios subiéndolo esto a GitHub. Aquí tendríamos toda la línea temporal de Comics en la rama desarrollo.

[84:45] Si venimos aquí, podremos abrirlo en GitHub y nos llevará al repositorio donde tenemos esto. Ahora mismo solo tendremos la rama. la de desarrollo, pero bueno, luego podemos poner la otra perfectamente, la principal. Y ahí tenemos todo lo que vamos haciendo.

[85:06] Nos dice cuándo lo hemos puesto, los comits los podemos ver por aquí, quién los ha añadido. Se pueden hacer muchas cosas. Y aquí cuando tengamos más ramas subidas a GitHub, pues podremos ir intercambiando. Y ahora sí, en este capítulo vas a crear tu primera appjango.

[85:34] Pero antes debo haceros una distinción para todos aquellos que estáis siguiendo el curso. Distinción entre lo que es un proyecto y una appjango. En este contexto, en el contexto de Yango, un proyecto es la estructura principal de nuestras aplicaciones web. Por ejemplo, queremos hacer un sitio web con Yangango, pues para eso necesitamos crear un proyecto que va a ser un contenedor que llevará toda la configuración global del sitio, las URLs a nivel general, configuración de base

[86:03] de datos, ajustes de seguridad y un montón de cosas que ya veréis. Luego, este proyecto puede contener una serie de apps. Estas apps son simplemente módulos para nuestra aplicación web. Podríamos crear una app llamada usuarios y en esa app incluir todo lo relacionado con los usuarios, el registro de usuarios, temas de formularios, las acciones y lógica que puede hacer un usuario en nuestro sitio web, etcétera.

[86:30] Y después podríamos ir creando más apps para diferentes funcionalidades para separarlo todo modularmente. Por ejemplo, que queremos hacer estadísticas, pues creamos una app de estadísticas estilo analytics con lo que nosotros queramos. y separamos esa app de la de usuarios. Ambas, estando dentro de un proyecto Yangango se podrán comunicar y cruzar datos en la base de datos. Por lo tanto, podemos tener estadísticas de los usuarios y los usuarios las pueden utilizar, pero su lógica, todo su funcionamiento está

[87:03] separado. Para que cuando queramos implementar una nueva funcionalidad para las estadísticas, pues simplemente tengamos que ir a la app de estadísticas. Si queremos implementar una nueva funcionalidad para los usuarios, pues vamos a la app de usuarios y a veces tendremos que hacer algunos ajustes en la comunicación, pero solo en las cosas en las que se estén comunicando esas apps.

[87:27] Para crear una aplicación nos vamos a ir a la carpeta principal del proyecto, esta que tenemos por aquí. Hay que fijarse en este archivo, en el manage.pi, porque es el que necesitamos. Este está en esta carpeta. No te confundas con la aplicación principal.

[87:45] La aplicación principal simplemente es una aplicación más de nuestro proyecto, pero para gestionar todo lo general, pero viene a ser una aplicación como la que vamos a crear. Así que realmente tendremos nuestra segunda aplicación.

[87:59] Pues tenemos que movernos a tienda videojuegos y aquí ya podemos llamar al archivo manage.p, que es el que gestiona las cosas técnicas de Yango. Pues ponemos Python Manage P start app y le damos un nombre, por ejemplo, catálogo.

[88:30] Esperamos unos instantes y por fin podemos ver que tenemos una aplicación nueva creada que se llama catálogo. Dentro de cada aplicación Yangango vamos a encontrar una serie de archivos y carpetas con funciones muy específicas.

[88:47] Siempre vamos a utilizar todas las aplicaciones más o menos igual. Conociendo la estructura de una app, puedes saber cómo editar cualquier otra appal. Este es el init.p, que es el archivo para hacer un paquete de Python, así que de aquí no tenemos que tocar nada. El models.pi, donde vamos a definir los modelos. Los modelos se definen con clases de Python que van a representar tablas de la base de datos. Realmente no tenemos que saber cómo interactuar con una base de datos.

[89:20] Ya veréis que sabiendo manejar Python y Yangjango, podemos crear estructuras completas en las bases de datos sin ni siquiera tener que estar escribiendo código SQL. De hecho, en este curso seguramente no tocaremos nada de código SQL. Por ejemplo, en catálogo podríamos crear una clase que se llamase videojuego con campos como título, género y precio. Después podremos hacer de una manera muy sencilla una tabla con esas columnas. Aquí tenemos la carpeta de migraciones donde se van a guardar

[89:55] los archivos de migración. Cada vez que creemos nuevos modelos o hagamos cambios en ellos, Django va a crear una serie de instrucciones automáticamente para poder actualizar la base de datos. sin perder la información existente en la misma y sin tener, como he dicho, que tocar código SQL. Es decir, que no hace falta que sepas con Yjango ni siquiera crear una tabla SQL para manejar bases de datos. Aquí en apps.p vamos a guardar metadatos, como puede ser el nombre y la ruta de la

[90:27] aplicación. De momento no tocaremos gran cosa con esto. Admin.p Pi nos va a servir como gestor visual para poder manipular la base de datos, los datos que hay en ella. Por ejemplo, que hemos creado ese modelo videojuego y queremos poder añadir desde ahí, desde el admin, cada uno de los juegos de nuestro catálogo. Pues lo podremos hacer simplemente con un sencillo formulario que nos aparecerá para rellenar con el título, el género, el precio y lo que hayamos puesto. Y ya está. Podremos

[91:01] guardarlo y esto se añadirá a la base de datos. Podremos eliminar cosas desde aquí y no hará falta que sepamos una vez más manejar bases de datos. Y este archivo, el view, va a contener una serie de funciones o clases que van a procesar solicitudes de los usuarios y van a devolver una respuesta. Por ejemplo, al pulsar las portadas de cada videojuego en el catálogo, se tendría que ver la ficha con toda la información del videojuego. Pues este comportamiento para poder acceder a la página, que se

[91:35] muestre de cierta forma y demás, lo tenemos que generar con las vistas. Las vistas al final lo que van a hacer es obtener información de la base de datos y nosotros le decimos cómo la tiene que mostrar al usuario y las vistas se encargan de ello. Todo esto seguramente visualizándolo así mentalmente parece muy complicado y bastante abstracto, pero ya veréis que es muy fácil, se entiende con la práctica y por eso estamos creando una tienda online, no para producir algo con ella, sino para

[92:07] practicar, para crear algo que nos dé experiencia real. A lo mejor pensáis, "¿Y si lo pongo todo en la misma aplicación sin complicarme? ¿Para qué voy a crear aquí diferentes carpetas? Una con el catálogo, otra con los usuarios. ¿Se puede hacer todo en la misma aplicación? La respuesta es que sí, pero sinceramente es muy mala idea porque a medida que vaya creciendo el proyecto, pues todo va a ser un desorden. Vais a tener archivos gigantescos con un montón de funciones y cuando queráis poner algo nuevo, pues

[92:40] vais a tener que tener muy en cuenta todo lo que ya habéis hecho ahí, todo lo que está mezclado. Entonces, que creáis un módulo de estadísticas para ir viendo las ventas y todo eso. Y por lo que sea lo queréis eliminar, no tenéis espacio en el servidor, está consumiendo mucho en la base de datos y queréis anular a lo mejor temporalmente o eliminar esa aplicación, pues lo podéis hacer sin tener que ir tocando nada de las otras aplicaciones. Y cuando hayáis acabado un proyecto esté en producción, si luego

[93:12] queréis seguir trabajando y creando nuevos módulos, podéis ir haciéndolo de manera separada, sin tocar todo lo que ya tenéis. Pues realmente lo que hemos hecho ha sido simplemente poner un comando y se ha creado esa aplicación, pero tenemos que hacer un segundo paso que es venir a la aplicación principal, tienda videojuegos, y abriremos este archivo settings.p.

[93:36] Y aquí vas a tener que buscar donde pone installed apps, aquí esta lista. Fijaros que es una lista de Python. Pues estas no las vamos a tocar y hay que registrar la nueva aplicación. Pulsaremos enter y vamos a añadir otro elemento en este listado. Hay que poner en formato string el nombre literal de la aplicación, catálogo.

[94:02] Aquí añadimos una coma opcionalmente para que no nos dé error. Si después añadimos otra aplicación, guardamos cambios y ya está listo. sabrá que esta aplicación existe, no va a ser simplemente una carpeta con archivos, sino que ahora hemos relacionado esta carpeta con el proyecto de Jango en este settings. P.

[94:28] Y este paso es muy importante porque cuando queráis utilizar esta aplicación, si no lo tenéis registrado, si está así, os va a dar errores. Acordaros siempre de registrar las apps aquí. Ahora tenemos nuevos archivos para añadir al proyecto y modificados como el de settings. Settings ya lo teníamos registrado cuando creamos el proyecto de Yango. Ahora tenemos que añadir también estos archivos. Lo hacemos todo de la misma manera. Vendríamos aquí o lo escribimos manualmente y confirmamos.

[95:11] Confirmamos cambios y podemos sincronizar si queremos. Y ya tenemos todo esto en el control de versiones. En este capítulo vamos a crear una nueva app. va a ser la app Home, la app que servirá para gestionar las páginas principales, como por ejemplo la de index, la página acerca de la página de contacto, aviso legal y todas estas cosas. Y no solo la vamos a crear, sino que te voy a enseñar cómo crear vistas, cómo crear plantillas HTML para ya poder ver algo en el navegador y cómo

[95:58] enrutarlo todo con las URLs. Para crear esta app lo haremos igual que con la de catálogo. Con el siguiente comando. Tenemos que ir a tienda videojuegos, la carpeta principal de nuestro proyecto y aquí ya ejecutamos el siguiente comando. Pythonmanage.phome.

[96:16] Startup Home. Y aquí me aparece un error por un fallo que visto del vídeo anterior, una tontería. Pero mirad lo importante que es tener bien las apps instaladas correctamente. Este error que me dice módulo no he encontrado, no hay un módulo llamado catálago porque lo escribí mal. Pues ponemos aquí catálogo y ya está. Y esto solucionaría el error.

[96:46] Vale, ahora intento de nuevo crear esa app home. En este caso, este error ha venido muy bien porque me ha ayudado sin haberme dado cuenta a ver que había un fallo en mi proyecto. Ahora sí tenemos esa appreada y aparece con todos esos archivos por defecto como tiene catálogo.

[97:12] ¿Qué haremos ahora? Pues ya que estamos aquí en settings, vamos a registrar la app, que es lo primero que habría que hacer siempre. Así nos evitamos después fallos de este tipo. Y ahora vamos a crear las vistas iniciales. Luego se pueden modificar para esta appome. Para ello nos vamos a su archivo views.pi.

[97:38] Lo que tenemos por aquí es una importación de render y nos dice que creemos por aquí nuestras vistas. Pues eso es lo que vamos a hacer. Dejamos esta importación sin borrarla. Y aquí empezamos a escribir todo. Pues aquí tenemos un par de vistas para lo que vamos a hacer en este capítulo.

[98:00] Esta va a ser la vista para la página principal, el index, html que se suele poner y luego tenemos otra vista para la página de contacto. Y son vistas muy sencillas. Si nos fijamos bien, a simple vista vemos que hay un request, una solicitud y un return. se devuelve algo, pues entonces tenemos una solicitud y una respuesta. Y esa respuesta son básicamente archivos HTML en una ruta concreta. Con render podemos hacer eso mismo. Podríamos decir que renderizamos o mostramos una plantilla HTML a partir

[98:36] de una solicitud. Y estos archivos no los tenemos creados todavía, así que hay que crearlos. ¿Dónde? Pues en la ruta que ponemos aquí. Si es home/indexht html, pues tiene que haber un archivo con ese nombre. Yango, por convención y por defecto, va a buscar estos archivos. Esta ruta la va a buscar en una carpeta llamada templates, plantillas en español.

[99:01] Entonces, para seguir la convención y no liarnos cambiando cosas y siguiendo unas buenas prácticas, tenemos que crear en esta app y en cualquiera una carpeta. Si queremos utilizar plantillas HTML, que se llame templates, escrito así.

[99:20] Dentro tenemos que crear una carpeta que se llama igual que la app home. Dentro de este home index.html y contacto.html. Pues esta es la ruta que empieza a partir de templates home/index.html. Pues creamos esos dos archivos.

[99:49] Y ya podemos escribir HTML en estas plantillas y también el lenguaje de TL, que ahora explicaré lo que es. Pues este es el HTML que he generado, muy sencillito. Este para index.html y este para contacto html. Tenemos las vistas y tenemos las correspondientes plantillas. Ahora, ¿qué nos faltaría? Hacer un enrutamiento, decirle a Yangango cómo debe acceder a estas plantillas. La vista va a ser como el cerebro que le dirá Yango, pues cuando el usuario quiera solicite la página principal en cierta ruta, en

[100:32] cierta URL, pues le vas a tener que renderizar y mostrar esto, lo que haya en index.html. html. Y aquí es donde entra el lenguaje DTL. Aquí tenemos una muestra de ello, esta etiqueta tan especial y tan rara de aquí. Las siglas de TL significan Yangjango template language, lenguaje de plantillas de Yangjango, y como unas etiquetas más o menos como podríamos tener en HTML, pero con elementos de programación, ya que podemos tener etiquetas de URL, como ves aquí, etiquetas condicionales como if,

[101:09] etiquetas de bucle como for y muchas cosas que veréis. Pues gracias a esta etiqueta tan sencilla podemos crear enlaces de manera dinámica. Llamaremos a este enlace contacto, que hará referencia a la página de contacto esta de aquí, pero podemos llamar a esto desde cualquier sitio de nuestro proyecto Yangjango, desde cualquier aplicación y desde cualquier página, sin tener que pensar a ver qué carpeta pongo. Esto está en esta carpeta, dentro de esta y aquí le pongo nombre de la

[101:38] carpeta barra nombre de la otra carpeta. este tipo de rutas, pues aquí nos facilita mucho. Nos queda hacer lo que decía, las URLs, tenemos que enrutar todo esto. ¿Y cómo lo hacemos? Pues por defecto en las apps creadas no viene un archivo URLs como sí que viene en la aplicación principal del proyecto.

[102:00] Tenemos que crear un archivo como este. Pues en home creamos nuevo archivo URLs.pi. Y ya lo tenemos hecho. Aquí, ¿qué vamos a poner? pues un par de URLs. Primero utilizaremos path para crear las rutas de una manera cómoda y bien hecho.

[102:25] Importamos el archivo view que tenemos aquí en la propia aplicación Home. Y por eso, básicamente tenemos este punto de aquí. le estamos indicando pues de la propia app donde tengo este views, impórtalo. Si fuese un archivo de otra aplicación, pues pondríamos por ejemplo catálogo. Pues aquí pondríamos from catálogo, importar vistas e importaríamos esas vistas del catálogo si las necesitásemos en esta aplicación Home.

[102:58] Con este listado tan especial podemos ir añadiendo paz, rutas o URLs separadas por comas. Aquí con una ruta vacía, lo que estoy indicando es que sea la ruta raíz. Por ejemplo, mi sitio web se llama sitio.com. Pues yo quiero que cuando el usuario visite sitio.com, en este caso será la URL local hostel 127, pero bueno, en producción será sitio.com. Pues cuando el usuario visite esta ruta, que le salga el archivo home y que cuando visite sitio.com/contacto, como veis ahí en el segundo paz,

[103:40] pues que le lleve al archivo de contacto. Así creamos la ruta. Aquí lo que estamos diciendo es que cuando se visite esta URL concreta, sitio.com com en el ejemplo, pues que ejecute, lanzamos ahí la ejecución de views. Como ya lo tenemos aquí importado, el propio view este de aquí, pues podemos llamar a la función index, la llamamos así. Y después si queremos utilizar la URL dinámica con las etiquetas que hemos visto por aquí en ese URL, las etiquetas DTL, pues podemos hacer referencia con

[104:15] este name sencillo que se llama home o este de aquí que se llama contacto. Pues si queremos enlazar a la página de contacto, pondremos ahí una etiqueta de TL llamada URL con contacto, con ese name y ya está. Y aquí se genera el enlace dinámicamente.

[104:35] Si aprendéis a hacer estos pasos, ya sabéis la base más importante de Jango. Esto se va aprendiendo, practicando un poco más, creando más aplicaciones, creando vuestras propias vistas y enrutándolas. Pero ya veréis que es muy fácil porque si os equivocáis, hacéis algo mal, os saldrá en el navegador un montón de errores. Iréis viendo por dónde salen, cómo poder ir solucionándolo, etcétera. Pero esto necesita práctica, nada más.

[105:01] Aquí definimos qué se muestra según lo que solicita el usuario. Aquí definimos cómo se muestra y aquí definimos básicamente dónde se muestra. Pues como podéis ver, cada aplicación está gestionando sus propias URLs para sus propios archivos y sus propias cosas, pero necesitamos enrutar esta aplicación a la aplicación general. Tenemos que hacer una conexión. Entonces tenemos que venir a este URLs de la app principal y aquí añadiremos las URLs correspondientes a cada aplicación, a home y a catálogo.

[105:44] Pues aquí meteríamos estos dos P. Este no lo borramos que es para el admin, ya lo explicaré, pero tenemos que poner estos dos. ¿Qué hacemos con esto? pues le indicamos una vez más en la ruta raíz de nuestro proyecto, que sería sitio.com en este caso, en el ejemplo, que se incluya el archivo home.

[106:04] Es decir, estamos enrutando al propio archivo de URLs que tiene aquí. Y por lo tanto, Jango ya tiene acceso a todas las URLs con este simple paz de home y no tenemos que tenerlas todas aquí mezcladas, ya que podríamos tenerlas todas aquí perfectamente, pero es una tontería porque cada una puede tener sus propias URLs. Y entonces tendríamos un mapa general, que sería este URLs de la app principal y luego tenemos acceso a mapas más específicos que serían las URLs de cada aplicación.

[106:38] Y aquí me falta una pequeña cosa que sería importar de Jango URLs aparte de path include, que si os lo olvidáis no os preocupéis que pronto veréis el fallo. Ahora lo que nos quedaría sería probar si todo esto nos ha funcionado o si tenemos que reparar algo.

[107:00] Esto lo vamos a hacer ejecutando el servidor. Pues ponemos ese Python Manage Run Server para ejecutarlo. Y por aquí me aparece un error al intentar ejecutar el servidor, que es muy sencillo de solucionar. me dice que nos ha encontrado el módulo llamado catálogo URLs. Y esto es porque definido en el mapa general de URLs esto, el archivo catalogo.

[107:33] El de home sí que está porque lo acabamos de crear, pero el de catálogo en el capítulo anterior no lo creamos, así que vamos a crearlo. De momento estará vacío, no importa añadir nada. Cuando necesitemos añadir cosas, pues las vamos poniendo, pero ya tendremos enrutada la app de catálogo, que es una buena práctica, aunque todavía no estemos utilizando URLs, para tenerlo preparado.

[107:56] Aquí nuevo archivo URLs.pi. Y en principio, si no hay ningún error más, esto ya estaría solucionado. control C para poder volver a escribir el comando y ejecutamos el run server. Y si dejamos esto vacío, como he dicho, nos aparecerá el siguiente error que nos falta este URL patterns. Si os fijáis aquí en home, como hemos definido URLs, pues ya hemos creado este URL patterns, pues es necesario para que funcione bien sin ese error, aunque no tengamos nada. Pues aquí podríamos poner algo como esto, un

[108:40] URL patterns vacío. Guardamos cambios y probamos de nuevo. Bueno, se ha recargado automáticamente y ahora ya sí si no sale ningún error. Esto no es un error, no os preocupéis. Pues ya podemos probar si nos funcionan las URLs que hemos utilizado, las vistas y todo.

[109:00] Nada más ir a la página principal. Como os he dicho, esto sería el equivalente en el ejemplo a sitio.com o el nombre de vuestra web. Ya aparece solo accediendo a esa URL. Esto que sería la plantilla index html de home. Nos está mostrando esto tan simple. Lo que podemos hacer después es añadir JavaScript, CSS y cuántas cosas queramos. Podríamos utilizar bibliotecas como Bootstrap y cualquier cosa que al final sea compatible con la web. Y por aquí tenemos el enlace a la página de

[109:37] contacto. ¿A dónde nos llevará este enlace de aquí? pues a la página de contacto tal y como hemos definido en nuestras URLs. Pues cuando el usuario solicite esta ruta, pues se dispara la vista que dice, "Hay que cargar el archivo contacto y mostrárselo al usuario." Eso es lo que hace la vista. Las vistas son la lógica de programación.

[110:05] Aquí podemos decir qué mostrar y cómo mostrarlo. Y luego aquí tenemos el contenido. Podríamos decir que estático, pero gracias a las plantillas de Yangjango se vuelve todo dinámico porque HTML en sí es completamente estático.

[110:22] Ahora que ya hemos terminado, ya podemos ir a crear un comit si queremos y podemos continuar con más cosas en el siguiente capítulo. Ah. En este capítulo vamos a tratar los archivos estáticos. Con ellos podremos añadir estilo a nuestro sitio web. De momento tenemos unas vistas muy sencillas, varios archivos HTML y una visualización por parte del usuario sin estilos. Simplemente se estructura. Y esto es porque no hemos añadido todavía ni siquiera CSS. Pues para añadir CSS necesitaremos manejar archivos

[111:19] estáticos. También si necesitamos poner archivos de JavaScript o imágenes, fuentes, etcétera. Pues los archivos estáticos, de manera sencilla y como su nombre indica, son aquellos archivos que no cambian. Por ejemplo, una imagen no va a cambiar. Nosotros necesitamos que se le envíe al usuario tal cual está y por eso se le llama archivo estático.

[111:41] Los archivos CSS también se tienen que entregar el archivo entero hacia el usuario y no se tienen que modificar con cada visita del usuario. En archivos estáticos principalmente estaremos manejando conjango, hojas CSS, archivos JS de JavaScript e imágenes. Para poder utilizar archivos estáticos en Jango. Lo tenemos bastante fácil porque está todo ya casi preparado. En producción tendremos que hacer un paso extra, pero lo explicaré en su momento. Y esta de aquí es la estructura que vamos a

[112:16] generar. Tendremos nuestra carpeta de proyecto y dentro vamos a crear una carpeta llamada static. Luego podemos tener carpetas que no hace falta que se nombren tal cual como las tengo yo ni los archivos, pero una buena forma es esto, tener los archivos CSS en una carpeta y luego otra para JS, otra para img para las imágenes. Y dentro lo que vamos a hacer es añadir pues archivos CSS, JS o archivos de imagen en cada carpeta correspondiente. Yo lo dejaría a esta altura. dentro de tienda

[112:55] videojuegos para que no haya confusión con las rutas. Lo digo. Venimos aquí, nueva carpeta, la llamamos Stadic y dentro vamos a crear todo eso. CSS JS e img. Aquí vamos a dejar ya archivos creados que de momento estarán vacíos en este capítulo y de IMG podemos poner cualquier cosa, por ejemplo, un logo, una imagen que os descarguéis de internet, lo que queráis.

[113:48] Yo tengo ya hecho el logo de lo que quería hacer. Para poder servir estos archivos, para que los podamos enviar al navegador y que todo se cargue correctamente, necesitamos hacer una configuración mínima en el archivo settings del proyecto. En desarrollo vamos a utilizar esta app que ya está añadida, no hace falta que la añadas. Static Filitamos especificar una URL para la carpeta static e indicar dónde está la ruta de la carpeta. La URL es para el navegador para que sepa cómo acceder a los

[114:29] archivos y luego la ruta de carpeta pues va a servir para ubicar físicamente dónde está cada archivo. Esto tenemos que venir por aquí y tendremos este static URL y luego tenemos que poner por aquí debajo mismo lo siguiente. esta ruta, este base de dir representa el directorio base, es decir, la carpeta principal de nuestro proyecto Yango.

[115:02] Por lo tanto, estamos en esto que es el base de se representaría aquí y luego tenemos que indicar static por aquí y es básicamente lo que se ha hecho aquí. Esta forma de indicar rutas es con path por aquí arriba está importado nuevas versiones de Yango. Si en la tuya, porque sea más antigua o quizás más nueva y lo hayan cambiado, no lo tienes, pues puedes ponerlo, ya que de esta manera nos evitamos utilizar el join e ir juntando trozos de ruta. A mí me parece una forma mucho más limpia.

[115:44] Y el base de lo obtiene con esto de aquí. Estamos utilizando esta variable que por convención sería una constante, pero bueno, ya sabéis los que habéis estudiado Python que las constantes pues no lo son como tal en Python. Ahora vamos a comprobar si funciona. Para comprobar si funciona, deberíamos cargar al menos el logo, pero ya que estamos cargarlo todo las tres cosas que hemos creado.

[116:15] ¿Dónde lo cargamos? Pues, por ejemplo, en la página principal, en el index, nos vamos a la app, plantillas, index. Y aquí lo que vamos a añadir, lo primero de todo, es la etiqueta load. Static es una etiqueta DTL. Con esto indicamos que se van a poder utilizar aquí archivos estáticos y podemos utilizar cualquier tipo de archivo estático que tengamos. Simplemente tendremos que hacer referencia a las rutas que tengamos, pero van a ser ya rutas relativas porque con este static de aquí

[116:50] ya tenemos cargada la ruta hacia esa carpeta y no tenemos que indicarlo. Es decir, para cargar por aquí, por ejemplo, una IMG, una etiqueta IMG de HTML y especificar la ruta donde está la imagen, tendríamos que venir a tienda videojuegos, después barra static barra img/ra el nombre de la imagen, que sería el logo PNG en este caso. Pues aquí nos va a quedar una ruta como esta Stadic, que ya nos ahorra todo eso, y luego le añadimos el trocito faltante.

[117:28] Dentro de la carpeta Stadic vamos a poner img y logo PNG o el nombre de la imagen que sea. Y luego en el head podemos hacer lo mismo. Si queremos cargar aquí la hoja CSS y la de JavaScript, lo podemos hacer de la misma forma. Simplemente tenemos que utilizar las etiquetas adecuadas.

[117:49] En este caso tendríamos un link para la hoja de estilos que se llama Style CSS. Y si te fijas la ruta es esta, carpeta CSS/style CSS. Así de simple es conjango. Y luego para JS cargamos de esta forma. Todo lo que pongamos ahora en estas hojas, tanto la CSS como la JS, va a aplicarse a nuestro index HTML. Para probarlo, arranca el servidor si no lo tienes, con un run server y una vez tengas esto, pues recargas. Y por ahí vemos esa imagen que nos indica que podemos utilizar archivos estáticos, que

[118:32] está funcionando correctamente. De estilos no sale nada porque básicamente aunque hemos añadido la hoja de estilos, no tenemos todavía nada. La iremos utilizando. Bueno, y ahora si queremos añadir Bootstrap de manera muy sencilla, sin tener que descargar ningún archivo ni nada, que lo podríamos hacer y añadirlo por aquí e indicamos el nombre de ese archivo simplemente de la misma forma.

[118:57] Pues podemos cargarlo desde CDN. Hay que copiar y pegar esto. Aquí tendríamos nuestro Bootstrap. Los estilos ya por defecto han cambiado, tomando ya cosas de Bootstrap, pero bueno, todavía nos queda trabajo. Lo importante es que esto es buena señal porque estamos viendo que nos funciona todo y que muy pronto vamos a poder ya hacer grandes progresos.

[119:23] Lo que vamos a tener que hacer próximamente es crear una plantilla base para ir añadiendo todas las cosas comunes que tenemos, porque aquí si queremos en la página de contacto tener los mismos estilos y ciertas cosas iguales como la cabecera, el menú, el foder y todo lo demás, pues tendríamos ya que estar repitiendo un montón de HTML. Este head, por ejemplo, lo tendríamos que traer y pegar aquí cambiando el título y demás, pero bueno, que tendríamos que tener etiquetas y contenido duplicado. Pues todo esto lo

[120:02] podemos suprimir y utilizar plantillas que nos sirvan de herencia, que podamos heredar de ellas. Esto se llama plantillas base normalmente. Con eso crearemos HTML reutilizable. En esta lección vamos a crear una plantilla base para nuestro proyecto Yango. El objetivo es centralizar toda la estructura común de todas las páginas, cosas como el head con los enlaces CSS, JS, el pie de página y todos aquellos elementos que se repiten una y otra vez en cada página de nuestro sitio web, los vamos a incluir en esa

[120:45] plantilla base y tendremos, por así decirlo, un archivo central con el que podremos editar fácilmente toda la estructura HTML de nuestro sitio. Por ejemplo, si tenemos enlazada una hoja CSS en todo nuestro sitio web, en todas las páginas, en el Head, si hacemos un cambio en esa hoja, se cambia en todo el sitio web, pero tenemos que tener el enlace en todas las páginas. Si en alguna página nos olvidamos de ponerlo, ya no se aplican estos estilos.

[121:14] Y si en algún momento quisiésemos cambiar y utilizar otro archivo, pues tendríamos que editar página por página. Lo mismo pasa con HTML. Supongamos que ponemos aquí arriba una cabecera, ponemos por aquí al lado un menú que aparece siempre, por aquí una barra lateral que tenemos cosas muy parecidas en todas las páginas y un pie de página.

[121:38] Pues todas estas cosas las podemos dejar para la plantilla base y ocuparnos sencillamente de lo que es el contenido, el contenido único que va a llevar cada página. Y si tenemos que modificar algún día el menú, pues lo hacemos una sola vez y se aplicará a todo. Entonces, para poder probar esta plantilla base que vamos a crear, utilizaremos para visualizarlo estos dos HTML que tenemos por el momento en la appo index. Contacto. Podemos venir aquí y poner este head y aquí cambiarle el title, que es lo

[122:20] único que cambia. Y luego acordaros de poner lo de la etiqueta para cargar estáticos. Si no la ponemos, mira lo que pasa. Vamos a guardar cambios y nos vamos a la página de contacto. Nos aparecerá el siguiente error. Error de sintaxis de plantilla en contacto en esta URL. Pues básicamente en esta página nos dice en la línea 8 porque ha detectado que hay una etiqueta de TL static.

[123:00] Pero por aquí no hemos añadido load static para poder utilizar esta etiqueta. Y si borrásemos esta línea de aquí, pues nos daría error aquí. Básicamente este es el error que está ocurriendo. Y por aquí nos indica, a ver si nos hemos olvidado de registrar o cargar la etiqueta. Pues exactamente es lo que ha ocurrido.

[123:24] Solo tenemos que copiar o escribir esta etiqueta. Y como dije, ponerla en todas las páginas donde utilicemos static. Ahora sí debería funcionar bien. Por aquí tenemos un pie de página y en index también lo tenemos. Esto se puede reutilizar.

[123:49] Pues sencillamente lo que vamos a reutilizar es prácticamente todo el head. Reutilizaremos también esta parte, el doc type y dejaremos estas etiquetas reutilizadas, las de body también, que están comunes a cualquier página. El pie de página también lo reutilizaremos y prácticamente lo único que vamos a tener diferente en cada página es esto. Este será el contenido. Lo que nos interesa cuando creemos algo es centrarnos en el contenido y dejarnos de la estructura.

[124:18] Una vez la tenemos hecha, pues ya no queremos tocarla más y no queremos tener que estar copiando y pegando siempre lo mismo. Vamos a crear esta plantilla base. ¿Cómo se hace? Pues aquí tienes la estructura, tenemos la carpeta del proyecto, la aplicación principal está por aquí y si te fijas tenemos ahora que crear una carpeta llamada plantillas con el archivo base.html o como le quieras llamar. Luego tendrás que hacer referencia al nombre de este archivo cuando quieras heredar de él. Pues vamos

[124:52] a crear esta sencilla estructura. Venimos a la carpeta principal, nueva carpeta plantillas y aquí dentro añadimos el archivo base. Podemos tener más de uno también, no necesariamente tenemos que tener la misma estructura para todo el sitio. Si tuviésemos más de uno, pues donde queramos utilizar el archivo que vamos a crear ahora, por ejemplo, base HTML, pues especificamos que queremos ese que tenemos base 2. hhthtml o como le llames, pues después hacemos referencia a ese archivo.

[125:36] En el archivo de configuración, el settings, tenemos que especificar este archivo, el base. Pues nos vamos a settings y buscamos la constante plantillas esta que puedes ver aquí. En Deersars vamos a especificar el directorio de estas plantillas base donde podremos tener más. Como he dicho, pues sustituimos esta parte por esta otra.

[126:14] Utilizamos basdir barra plantillas, el nombre de la carpeta y Yang Yango ya sabe dónde encontrarla. Para hacer referencia después, simplemente llamaremos al nombre base.html. Ya no tenemos que preocuparnos de esta ruta, ya queo ya la conoce. Guardamos cambios y seguimos.

[126:39] ¿Cómo podemos utilizar la herencia de esta plantilla? Ahora vamos a base.html y ponemos este código. Lo tienes en mi sitio web. Como siempre, todo está ahí por si no quieres ponerte a escribirlo a mano. Tenemos como en las otras plantillas un load static para poder utilizar archivos estáticos. Ponemos estas cosas que son comunes a todas las páginas, el head también. Y aquí añadimos Bootstrap, la hoja de estilos, la hoja de scripts, etcétera, lo que queramos. El meta charset está igual en cada página y lo

[127:18] que cambia de la cabecera, en mi caso, en lo que estamos haciendo ahora, es el title. Este título de la página, pues tiene que ser diferente en cada página que se corresponda con lo que es. Si estamos viendo un videojuego concreto en su página principal, pues tendrá que salir el título con el nombre del videojuego, no un título genérico, porque para el SEO nos iría muy mal tener siempre el mismo título en todo. Como puedes ver aquí, la página de contacto pues tiene un título diferente a la de index HTML

[127:52] que simplemente tiene tienda, videojuegos. Pues con estas etiquetas de TL block y end block podemos especificar un bloque, un bloque con contenido dinámico, contenido que no va a ser siempre el mismo. Este va a ser el título default, el título por defecto, si no especificamos nada, si en alguna página dejamos sin título. Y si especificamos un título en cada página, pues haremos referencia a este bloque llamado title.

[128:23] Esto es como una variable. Le podemos llamar título si queremos, que tendrá el mismo efecto, pues irá cambiando. La parte importante es la parte que ves en amarillo, lo demás es la parte variable. Estos bloques nos sirven para añadir contenido que va a cambiar. Como podemos ver en el body.

[128:43] El body, bueno, tiene todas estas partes que son iguales en cada página tiene el pie de página que no cambia nada en principio. Y luego hay este bloque de contenido igual que el del título. Simplemente este se llama de otra manera para poder hacer referencia a cada cosa en su lugar. Pues en el body vendremos y haremos referencia al bloque llamado content y entre la apertura y el cierre añadiremos como nos indica por aquí el contenido específico de cada página. Y así es como se utiliza una plantilla

[129:18] base en Jango. ¿Cómo especificamos ahora la herencia donde queramos utilizarla? Pues venimos a home plantillas, empezamos por index y aquí arriba pondremos que se extiende del archivas. HTML. Como ya hemos especificado dónde está este directorio, pues ya no necesitamos poner nada más que el nombre en cada caso.

[129:46] Gracias a esta herencia, ya tenemos la posibilidad de aprovechar todo lo de base HTML en index.html. html. Y ahora lo que vamos a hacer es reemplazar todo esto que ya no lo necesitamos por esto. Simplemente vamos a tener el bloque title, que especifica el título específico para la página de inicio y el bloque de contenido. Aquí está el inicio y aquí está el fin.

[130:21] Entre medio, simplemente nos preocupamos de poner el contenido de lo que va a llevar la página concreta y nos olvidamos ya de todo esto, de lo que es el doc, la etiqueta head, todo esto y simplemente cambiaríamos este bloque dinámico dentro de la etiqueta title y esto que viene por aquí, que por defecto está vacío, pero nosotros le añadimos el contenido.

[130:48] Ahora con los cambios guardados en todo, nos vamos a ir a la página de inicio y ya podemos ver que funciona de maravilla. Podemos utilizar los estilos de Bootstrap, como se están utilizando aquí, y crear sitios web de manera muy fácil y rápida. Pues todo esto que aparece por aquí es el block content.

[131:12] Todavía no tenemos muchas cosas, casi todo es el block content, pero bueno, este pie de página es igual en cada página, en cada página que utilicemos, por supuesto, la herencia de esta plantilla. Ahora nos vamos a la página de contacto que tiene un aspecto horrible, pero la vamos a arreglar en un momento.

[131:34] Nos vamos aquí, pondremos la herencia por aquí arriba. Borramos todo esto, tenemos el título específico de esta propia página y luego nos faltaría el bloque de contenido. Nos preocupamos de poner las cosas dinámicas y ya está, nada más.

[131:59] Y así de fácil tenemos una cosa mucho más agradable. Esto lo podéis pedir, por ejemplo, a Chat GPT, no hace falta ni siquiera que sepáis Bootstrap. Si sabéis, por supuesto, mejor, porque podréis ajustar todo bien. Pero sencillamente si queréis trabajar con inteligencia artificial, lo que tenéis que hacer en estos casos es primero crear un diseño de lo que queréis. Por ejemplo, la página contacto, saber perfectamente qué es lo que queréis poner, que queréis poner un formulario

[132:29] de contacto y cuatro cosas más, pues lo escribís todo y enviáis ese prompt y escribís exactamente lo que queréis. Os recomiendo como siempre que todo lo que os suelte chat GPT o cualquier otra inteligencia artificial lo vayáis comprobando que así es, que funcione y que vayáis aprendiendo de ello, porque si no al final lo único que vais a hacer es copiar y pegar trozos de código.

[132:57] Ahora mismo la estructura que tenemos y los archivos que tenemos son sers sencillos. Entonces con chat GPT se puede hacer de maravilla esto, muy rápido y muy fácil. y sin problemas. Pero a la que empecéis a tener ya bastantes aplicaciones, bastantes páginas, modelos, vistas, URLs y todo lo que conlleva Jango, no os va a caber todo lo que necesitáis escribirle a Chat GPT en un prompt y por lo tanto vais a empezar a ver alucinaciones, como se dice, constantemente y probablemente no

[133:31] consigáis hacer ciertas cosas. Pero si vais aprendiendo una buena base, pues ya os digo yo que podréis trabajar con chat GPT como si fuese un ayudante. Al final funcionaría como un programador junior, el cual nos puede quitar trabajo pesado, pero siempre conviene ir revisando lo que hace y, por supuesto, saber qué estamos revisando. No voy a explicar muchas cosas de Bootstrap, pero bueno, por si alguien le interesa un poquito, esto de aquí, text light, nos sirve para poner el texto claro. Esto para hacer un

[134:05] modo claro u oscuro. Entonces tenemos text light, text dark, que quedaría la letra por defecto negra. En base HTML tenemos esto. Body está especificado como background dark para darnos un color de fondo negro y un texto por defecto de color claro. Todas estas clases de Bootstrapéis aprender o bien haciendo un curso de Bootstrap o bien vais preguntando a una inteligencia artificial a ver qué significa cada cosa. Pero recomiendo, si vais a utilizar mucho Bootstrap, que os hagáis un curso rápido, aunque sea de

[134:42] dos o tres horas, para saber lo más importante. Pues dejamos el capítulo aquí. Espero que os haya gustado y que hayáis aprendido muchas cosas. Yo creo que esto asienta una base importante en Yangango, ya que es una de las cosas más interesantes de Yango, lo de poder reutilizar una estructura HTML.

[135:08] En esta lección vamos a añadir un modo claro y oscuro para nuestro sitio web. Lo haremos de forma muy fácil con Bootstrap 5.3 o superior que implementa un sistema muy sencillo para hacer esto. Este sistema lo tenemos que implementar en el archivo base HTML que contiene la plantilla general. Después, como tenemos dos plantillas hechas, tendremos que adaptarlas para que ya funcione con el nuevo sistema. Y finalmente, utilizaremos la hoja de JavaScript que creamos anteriormente y tenemos vacía

[135:41] para implementar un botón que pueda cambiar el modo claro u oscuro según quiera el usuario. A partir de Bootstrap. TR se ha añadido un atributo que podemos utilizar añadiendo simplemente aquí a la etiqueta HTML o a la etiqueta body que hará que todo el contenido trabaje automáticamente con todo este sistema de modo claro u oscuro.

[136:05] Primero nos vamos a la plantilla base.html. En esta plantilla tenemos que sustituir clases fijas como pueden ser background dark, text light, etcétera. Este tipo de clases que nos sirven simplemente para tener un fondo de color oscuro y un texto de color claro, nada más, pero no son estilos dinámicos. Pues aquí tendríamos que poner en lugar de fondo oscuro, como queremos que se pueda cambiar, poner BG body.

[136:39] y text body también. Con esto le decimos que utilice los estilos dinámicos según lo que seleccione el usuario. ¿Cómo lo va a seleccionar el usuario? Pues mediante un sencillo atributo que vamos a añadir, como ya he dicho, en HTML o en body.

[136:58] Normalmente en HTML. Le ponemos este atributo y por defecto un estilo dark o light. Este va a ser el que el usuario va a ver por defecto una vez entre a nuestro sitio web. Si añadiésemos persistencia en la sesión, el usuario puede guardar su estado durante un tiempo. Es decir, que si utiliza nuestro sitio web en modo claro, que no tenga que darle al botoncito para cambiar cada vez. De momento no hay persistencia. Simplemente por defecto entra y se pone en modo oscuro.

[137:38] Nos fijamos bien si nos estamos dejando algo y vamos cambiando los enlaces. También por aquí tenemos text light y text light. Pues aquí ponemos text body. Teniendo esta plantilla base, todos los cambios ya afectan a todo el sitio web, pero como tenemos pequeños detalles en las plantillas ya creadas, pues tenemos que editarlas. Esto si lo hacemos bien desde el principio, pues ya está. Cada vez que necesitemos crear una plantilla, pues se creará con el text body, background body, etcétera. En index HTML

[138:16] vamos a poner text body. También estos estilos los dejaremos. Ya se adaptan automáticamente, no tenemos que tocar nada y nos vamos a contacto HTML. Aquí hacemos lo mismo. Si nos hemos dejado algo, lo veremos muy rápido.

[138:36] Ejecutamos el servidor con el script de inicio o con Python Manage Run Server, como os enseñé anteriormente, y vamos a ver si los cambios han aplicado correctamente. Pues ya tenemos estos estilos que parecen haber cambiado, se han adaptado a ese modo oscuro y por defecto, como he dicho, está en modo oscuro. ¿Qué tenemos que hacer para ver el modo claro? Por defecto, pues venimos a base HTML, que controla todo, y en este atributo, que es el maestro, por así decirlo, vamos a poner light

[139:15] y nos aparece en color blanco. Para que el usuario pueda cambiar esto, necesitamos simplemente añadir un pequeño script en nuestra hoja JS para que simplemente tocando un botón cambie el valor de este atributo, de dark a light y de light a dark. Así de simple.

[139:35] Vamos a la hoja JS y pondremos el siguiente código. Esto se lo podéis pedir si no sabéis JavaScript a chat GPT, por ejemplo. Es algo muy sencillo y lo hará bastante bien. Tan solo tenéis que escribir lo siguiente. Pondremos, por ejemplo, dame un script jss para alternar con un botón el modo claro oscuro de Bootstrap 5.3 o superior.

[140:02] Bueno, en este caso nos ha generado también el HTML. Podríamos decirle simplemente céntrate en el script. Pues ahí tenemos algo parecido a lo que tengo aquí. Si no entendéis lo que hace porque no sabéis suficiente JavaScript, pues simplemente le decís, copiáis el trozo y le decimos, explica este script línea por línea.

[140:37] Y aquí os explica extensamente todo lo que hace. Podéis pedir algo más breve si no queréis tanto detalle, pero bueno, lo importante es que vayáis aprendiendo y cada cosa que tengáis dudas de lo que os está diciendo, ir preguntando cosas extra. Bueno, ¿qué nos quedaría para que funcionase este script? Pues sencillamente tendríamos que poner un botón que lo utilice. Y esto mismo también se lo vamos a pedir a chat GPT. Y digo una vez más, quien lo quiera ir haciendo todo a mano con sus

[141:11] conocimientos es estupendo. Pero quiero enseñar en este curso no solo a construir cosas por vuestra cuenta, sino que os ayudéis también de inteligencia artificial y que podáis trabajar utilizándolo como herramienta para que podáis acelerar vuestro proceso de desarrollo y aprendizaje. Pero tenéis que tener, eso sí, fuerza de voluntad, de ir entendiendo las cosas. Vamos a pasar primero este código.

[141:37] Pondremos el siguiente prompt. Implementa mi plantilla yango llamada base HTML. Esto lo podemos redactar mejor si queremos. Un botón en la cabecera para poder cambiar el modo claro oscuro. Este es el script. Le pasamos el script que queremos y luego le tenemos que pasar el archivo base HTML.

[142:00] Se lo pasamos a la vez. y lo pegamos por aquí. Vamos a ver si lo hace correctamente. Pues ahí tendríamos el base HTML donde nos ha implementado aparentemente ese botón de cambio. Vamos a pedirle una cosa más, que nos dé solo las líneas que ha modificado en el archivo base HTML para poder ver exactamente qué cambios ha hecho o incluso aplicarlos manualmente para no fastidiar lo que ya tenemos, porque en muchas ocasiones le pasaremos a Chat GPT código como esto y nos va a modificar lo que le dé la gana

[142:40] porque le da la gana simplemente porque no le habremos dado quizás suficientes detalles en el prom y puede ser que para cuando nos demos cuenta de que nos ha cambiado algo que no queríamos cambiar, pues ya sea tarde y tengamos ya que perder tiempo. Pues aquí nos dice lo que ha cambiado. Ha añadido un header con un H1, un botón y el enlace a la hoja de scripts. El enlace a la hoja de scripts ya lo teníamos, entonces eso no lo ha cambiado realmente. Y la cabecera, pues no tenemos cabecera dentro del body. Nos

[143:13] la ha añadido por aquí el título H1. Realmente no lo queremos porque aquí en index HTML y en contacto ya tenemos un H1. La cabecera HTML H1 que solo tiene que haber una por página, la dejamos para escribir en el blog content y no la ponemos directamente en el base. HTML.

[143:35] Aquí ya nos ha hecho algo incorrecto que no queríamos y que no le he solicitado. Por lo tanto, viene bien vigilar si utilizamos chat GPT para trabajar. Copiaríamos este botón. que lo podríamos poner perfectamente en la cabecera y como quiero que esté en todas las páginas, por eso lo pongo en base HTML.

[143:58] Estaría antes del block content, es decir, el cuerpo de lo que ve el usuario, y aparecería lo primero arriba en la página. Después podemos hacer una barra, una barra con botones de diferentes tipos, pero en principio vamos a dejarlo sencillito. Borramos este H1.

[144:16] y dejamos el button. Guardamos cambios y veamos qué nos ha hecho. Lo que tenemos ahora es una cabecera muy sencilla de Bootstrap y un botón horroroso que podemos cambiar en cualquier momento. Si no os funciona el botón de primeras, podéis tocar la tecla control + F5.

[144:39] Eso forzará la carga de la cach para que se renueve. Entonces, si teníamos ya la hoja de scripts vacía cargada en la caché del navegador, pues nos la recargará y obtendrá el código nuevo sin tener que limpiar caché. Lo apretamos y vemos que ya con ese sistema tan sencillo de BG body y text body podemos hacer esto y se cambia todo. Podemos ver que los estilos son diferentes, no solo es color blanco y negro, sino que nos cambia todos los colores. ¿Cómo podemos mejorar este botón?

[145:20] Pues le vamos a decir a chat GPT o utilizamos una vez más nuestra experiencia en frontend para mejorarlo. Decimos esto, mejora la estética del botón hecho con Bootstrap. Puedes utilizar Fontusom. Fontusome es una biblioteca con la que podemos implementar iconos de manera muy sencilla en lugar de utilizar estos emojis. Pues tenemos nuestra cabecera por un lado que la vamos a sustituir, ya tiene mejor pinta y luego tenemos el link para añadir fontom.

[146:02] ¿Dónde lo añadimos? pues en base HTML para que se carguen todo nuestro sitio web y podamos utilizar estos iconos. Lo podríamos poner mejor con lo de CSS por aquí. Pues recargamos caché si hace falta y ahí nos aparece ya un botón mucho más agradable.

[146:32] Este botón podría ir cambiando en lugar de ser el mismo siempre, que saliese un sol y una luna, pero bueno, lo podemos dejar así. Podemos venir a la web de Fontausom y buscar cosas mejores. La versión que se ha cargado por aquí con este CDN es la 6.5.0.

[146:52] Podemos cargar otra. Pues vamos a probar con los iconos de esta que seguramente funcione y si no probamos con la anterior. Si no queremos pagar vamos a la sección free y aquí tenemos 2000 iconos gratis. Podríamos ir buscando, utilizando el buscador con un nombre, si sabemos el nombre y miramos hasta que encontremos algo que nos sirva, que nos guste más que por ejemplo esta luna, por ejemplo, esto de aquí.

[147:33] Aquí tendríamos la representación de modo oscuro y modo claro. Así este icono nos sirve para ambos casos. ¿Cómo implementamos esto? Pues en HTML, de esta forma vamos a copiar esta parte porque nosotros ya tenemos parte implementada por aquí en el button o lo podemos copiar entero. Mira, este es el icono.

[147:57] Borramos esto y copiamos esto mismo. A ver si nos funciona en esta versión. Ahí tenemos ese nuevo icono que ya se nos adapta mejor, diría yo. Bueno, esto podéis poner lo que os dé la gana. Vamos a representar que cerramos la página y al cerrarla hemos perdido ese modo oscuro porque por defecto tenemos light. Pues yendo a la página de nuevo nos encontramos que nos aparecen light.

[148:34] Como usuario me puede molestar que siempre que entro tenga que estar cambiando el modo. Para ello podemos añadir una persistencia y que se guarde lo que queremos. Si tenemos modo oscuro, pues que se quede siempre en modo oscuro.

[148:50] Esto lo hacemos con JavaScript. Aquí tenemos que saber cómo se manipula. Si no sabemos suficiente JavaScript, venimos a Chat GPT y le decimos lo siguiente. Le pasamos el código, añade persistencia para que se guarde el modo elegido por el usuario.

[149:13] Aquí utilizaría local storage para ir guardándolo y se supone que nos lo habría hecho bien. Vamos a probarlo. Guardamos cambios. y miramos qué ha pasado. Recargamos la página, podemos hacerlo con control F5 para que se aplique todo.

[149:35] Y ya de primeras me aparece en modo oscuro como lo tenía yo. Recargamos la página y si os fijáis de primeras a veces se ve que lo carga en modo claro, pero automáticamente nos lo pone en modo oscuro. Gracias a esta persistencia que acabamos de añadir, que lo dejamos en modo claro, pues siempre se queda en modo claro, aunque hagamos control F5.

[150:09] Continuemos con el curso. Por el momento tengo bastantes avances hechos en el diseño, pero antes os voy a explicar cómo trabajar con nuevas ramas para ir haciendo pruebas para que vayáis aprendiendo básicamente a utilizar el control de versiones mejor. Va a ser muy sencillo lo que os voy a enseñar aquí.

[150:26] Si os fijáis por aquí abajo tengo una rama llamada testing. Estábamos trabajando con la rama principal, main o master y luego con otra rama con la que estábamos desarrollando. Pues he creado esta rama extra. Podemos crear las que queramos para ir haciendo pruebas fuera de cámara para que todo lo que guardo y toco en este proyecto que estamos haciendo juntos, pues no se vea afectado en la rama en la que estáis trabajando vosotros. Os recomiendo que también hagáis lo mismo, es decir, si estáis

[150:55] siguiendo vídeo a vídeo las explicaciones, pues que tengáis una rama para ir haciendo pruebas, para saliros un poco del camino, solo eso. Pues esta línea, esta rama tiene sus propios archivos, su propia línea temporal, podríamos decir. Por aquí tenemos la rama desarrollo y yo he hecho dos comits más en la rama testing. En cualquier momento puedo volver a la rama de desarrollo y seguiré en esta parte de la línea temporal. Seguiré por aquí donde estaba cuando creé esa rama nueva.

[151:29] Y más adelante, si quiero seguir con la rama testing, pues podré continuar donde lo he dejado aquí mismo. ¿Cómo podemos crear una rama? Pues igual que creasteis la de desarrollo. Primero vamos a tener los cambios confirmados.

[151:42] Una vez tenemos la rama limpia, sin cosas que guardar, vamos a hacer lo siguiente. Con el servidor de Yango detenido, que tengamos el prompt donde podemos escribir con normalidad, vamos a poner git branch y el nombre de la rama, por ejemplo, le llamáis testing como yo o test. Voy a crear otra para que lo veáis.

[152:08] La rama ya está creada y ahora nos tenemos que mover. tenemos que decirle, vamos a trabajar sobre esa rama, pues ponemos git checkout test. Aquí nos dice que nos ha cambiado a esa rama y podemos ver que efectivamente aquí está test y tenemos testing a la misma altura porque tiene los mismos cambios exactamente test que testing, ya que en test todavía no hemos hecho nada.

[152:40] Otra forma de hacer esto en un paso, lo que acabamos de hacer es poner git checkout gu y el nombre de la rama. Lo que hace es crear la rama y movernos directamente a ella. Me voy a mover a la rama testing, la que tenía, para poder explicaros los cambios de lo que tenemos, que lo podría hacer con esta, pero bueno, voy a trabajar sobre esa.

[153:13] Pues ponemos git checkout testing. Aquí podemos ya iniciar el servidor perfectamente y se va a iniciar con los cambios que tenga testing. Yo lo voy a hacer con el script de inicio. este que creamos al principio. Además de lo que habíamos puesto, yo le puse después un python manage.p run server para que ejecute el servidor. Aparte de ir a la carpeta, activar el entorno virtual y todo eso, pues ejecutará el servidor.

[153:48] Nos vamos a la ruta, si no lo recordáis, inicio en punbat y ejecutamos. Ahí lo hace todo. Ya tenemos los cambios y esto es lo que tengo preparado para este capítulo. El sitio web se ha hecho ya más responsive porque antes no lo era. Tiene un pie de página un poco más atractivo con botones, una zona de contacto y luego tenemos por aquí arriba una botonera sencilla con el título de nuestra página, el logo, un buscador que todavía no funciona y todo totalmente responsive.

[154:29] Como puedes ver, se adapta a diferentes dispositivos. Lo podemos hacer mejor, lo podemos hacer sin Bootstrap para que no se vea tan de esta forma, porque esto es muy Bootstrap. Pero bueno, si queremos hacer un desarrollo rápido, barato, eficaz, llamarlo como queráis, podemos utilizar una biblioteca como Bootstrap y nos queda un buen trabajo. Ahí tendríamos ese menú de hamburguesa en dispositivos pequeños y el modo de color.

[155:00] He dejado que las partes de arriba y de abajo se queden en modo negro, siempre modo oscuro. Y bueno, ahí tendríamos ese diseño. Todos estos cambios los he implementado de manera muy sencilla sobre el archivo base HTML. Solo he tenido que editar un archivo y se ha cambiado todo porque podemos ir a la página de contacto y vemos que también implementa todo esto tal cual.

[155:30] Todo funciona de la misma manera. Esto os hace ver, si no lo visteis en el otro capítulo, la ventaja que tiene, ya que si este sitio web ya estuviese en producción y tenemos usuarios, tenemos un montón de contenido y queremos implementar un cambio de diseño muy grande incluso, pues lo podemos hacer editando un simple archivo o unos pocos si tenemos más de una plantilla base.

[155:56] Bueno, ¿cómo están implementados estos cambios? Veámoslo. Tenemos el head por un lado que sigue igual. Tenemos ahí, bueno, cargadas las hojas CSS, la de scripts. Y en el body tenemos tres secciones importantes, la cabecera, la parte principal y el pie de página. La cabecera y pie de página tienen un contenido que no va a cambiar. Lo tienen todo aquí en este archivo. En los otros archivos que vayamos creando en las diferentes apps no vamos a tocar nada ni del header ni del footer. ¿Por qué? Porque básicamente

[156:35] siempre queremos que esto sea exactamente igual en todo nuestro sitio. Tanto la banda de color más oscuro de arriba como la de abajo queremos que sea igual y no tenernos que preocupar de incluir este contenido en cada página. e incluso que si tenemos que cambiar un enlace del menú por aquí, por ejemplo, pues que lo podamos hacer viniendo a este base HTML y cambiando el enlace una vez. Esa es la ventaja.

[157:06] Luego, todos los estilos que tenemos por aquí. Esto lo he pedido a Chat GPT, o sea, que lo podéis hacer perfectamente con chat GPT. Simplemente le vais explicando las partes que queréis exactamente. Aquí lo he dividido en tres sencillas partes. Y luego le vais pidiendo detalles que queréis que el logo esté centrado, que aparezca la imagen de logo pequeñita, el título por aquí, todos esos detalles. Esto ya va de vuestra imaginación y cómo redactéis las cosas o si lo sabéis hacer, lo que digo

[157:36] siempre, por supuesto, hacerlo de primeras. Yo lo estoy haciendo de manera ágil para que todo el mundo pueda seguir bien el curso y que no necesitéis saber mucho de frontend. Y como podéis ver, si lo he hecho con chat GPT, lo podéis hacer vosotros también, sepáis o no sepáis frontend. Y esto acelera mucho porque yo para hacer este contenido pues no he tenido que trabajar línea a línea, eso es lo bueno. Pero es importante saber lo que le estamos pidiendo, ya que yo sé perfectamente lo que le quiero

[158:07] pedir y cómo se lo tengo que pedir, porque ya sé cómo funciona. Entonces, siempre conviene tener una base mínima, si no es muy difícil, incluso con chat GPT. Cosas sencillas como estas seguro que os salen bien, pero bueno. Aquí tenemos ciertas cosas que no me gustan, como esto que ha sacado las etiquetas style aquí que llevan estilos que podríamos decir hardcodeados, estilos fijos. Lo más limpio es hacer esto en una hoja CSS, por ejemplo, la que tenemos creada en la carpeta estática,

[158:45] esta de aquí. Pues podemos manualmente ir creando estilos para cada cosa y borrando estas etiquetas style o podríamos incluso pedírselo a Chat GPT, decirle cámbiame las etiquetas style por estilos para una hoja CSS. De hecho, ¿por qué no lo probamos ya que estamos?

[159:05] A ver si funciona. Bien, le decimos algo como esto. De la siguiente plantilla, cambia los estilos fijos por selectores CSS bien organizados. Dámelos para que pueda copiar en una hoja CS que ya está enlazada. A continuación podemos poner dos puntos y pasarle todo el contenido. O le podríamos pasar el body más bien, que es lo que tiene los estilos que nos interesa.

[159:35] Hacemos así. A ver que se copie todo y lo pegamos aquí. Bueno, ya va haciendo esto y nos dice por aquí abajo lo que tenemos para cambiar. Parece que había poca cosa porque yo lo que quiero es trabajar con clases. Absolutamente.

[159:58] No quiero trabajar con estilos aquí fijos que no es tan limpio. Se puede, pero bueno, no es tan limpio. Pues tenemos esto que se supone que nos lo ha dado lo del logo para quitar esto de style. Pegamos así y el button que está por aquí.

[160:27] Guardamos cambios, copiamos el CSS, nos vamos a la hoja de estilos propia y lo pegamos por aquí. El logo aparece en su tamaño máximo. Entonces, con control F5 se soluciona. Básicamente era eso. Y lo más importante es ir revisando que todo funcione correctamente cada vez e ir organizándose bien, porque si lo hacemos de esta manera y no sabemos mucho lo que estamos haciendo, pues al final vamos a ir teniendo trozos de código por un lado y por otro. Continúo con la explicación de cómo se han hecho

[161:04] los cambios. Tenemos la parte nap que sirve para el menú, la navegación de manera más semántica, son etiquetas HTML al final y sencillamente tenemos esos estilos aplicados para el button, este del modo de color. Luego tenemos el logo que aparece con este spam para el texto que podemos ver por aquí. Y el logo es este.

[161:29] Tiene un enlace, como podemos ver aquí, que me lleva a la URL y esta URL es dinámica. Estamos utilizando el enrutamiento de jjango con las URLs que definimos en cada aplicación y así desde cualquier página, sea la de contacto, sea la de otra app, siempre cuando pinchen aquí, pues van a ir al home, a lo que tenga esta URL, que en algún momento queremos cambiar esta URL, pues vamos al archivo URL y se cambiará en todo el sitio también.

[162:03] Luego tenemos por aquí todo lo que sería el menú para móvil, para pantalla grande y el formulario de búsqueda, que simplemente un form HTML con un input para poder introducir texto. Y esto tendremos que hacerlo funcionar.

[162:23] Lo haremos en este curso. Lo utilizaremos con nuestra base de datos para poder buscar cosas. Después tenemos el contenido dinámico, que es el que aparece en la parte principal, en el main, en este encuadre de aquí en medio, y es todo lo que pongamos básicamente en las otras páginas, en contacto HTML o la página que sea. Por defecto, si ponemos algo en el blog content, como este H2, nos va a sacar ese contenido.

[162:53] Es decir, si no hubiese nada en el block content, por lo menos sacaría el contenido que tengo aquí. Así que podríamos crear un contenido a propósito para en el caso de que no se cargue alguna plantilla. El pie de página, bueno, sencillito, una serie de dips, un H6, esto que aparece por aquí, otro H6 por aquí y es un listado listado con enlaces. Por ejemplo, tenemos por aquí la URL de home y la URL de contacto.

[163:28] Cuando tengamos los otros enlaces, pues venimos aquí y se los ponemos al HRF y ya está. Y si tenemos que añadir más partes de este listado, pues lo hacemos añadiendo otro lei. Este código lo tenéis en mi sitio web por si no queréis escribirlo todo y queréis hacerlo exactamente como lo estoy haciendo yo. Ahora nos quedaría un paso.

[163:51] Una vez hemos terminado en la rama testing y nos interesa guardar estos cambios a la rama desarrollo para continuar desde donde lo dejamos, pues lo podemos hacer muy fácil. Primero vamos a confirmar los cambios con lo que hemos hecho, siempre llevando el historial limpio. Aquí si queremos publicarlo en GitHub, como mostré, lo hacemos y veremos aquí que nos dice que está en la nube.

[164:18] Y si nos vamos a la rama de desarrollo, veremos que nuestro sitio web tiene un aspecto antiguo, como teníamos anteriormente, sin estos cambios. Vamos a probarlo. Para probarlo tenemos que cerrar el servidor o abrir otra terminal.

[164:35] Pero lo importante es poder escribir aquí. Nos iremos a la carpeta que tenga el control de versiones. En este caso es curso de esta de aquí y vamos a poner ese git checkout con la rama desarrollo para verla. Vale, todo ha cambiado. Si nos vamos, por ejemplo, a base HTML, veremos que tiene pocas líneas, tiene nuestra versión antigua de todo. Aquí no hay nada en style.

[165:14] Y bueno, si ejecutamos así el servidor desde la rama desarrollo, en la que estamos ahora mismo, veremos que los cambios son los antiguos, justamente los que hice en el capítulo anterior. Y si ahora fuésemos a la de testing, pues tendríamos la nueva versión. Pues de esto se trata lo del control de versiones. Para poder controlar todo lo que hacemos bien, pues nos movemos a la rama que nos interese.

[165:49] Nosotros queremos continuar el desarrollo en la rama desarrollo, por lo tanto queremos los cambios que hemos hecho en testing. nos quedamos en esa rama, nos fijamos que esté todo, esté todo en la nube, esté todo actualizado, no tenemos nada por hacer y pondremos cerrando el servidor, si lo tenemos abierto, lo siguiente.

[166:15] Git merch testing. Con esto le estamos diciendo une lo de la rama testing a la rama desarrollo. los nuevos cambios. Pues ahí nos pone que se ha añadido este archivo Style CSS con 16 líneas nuevas. No hay ninguna eliminación porque no teníamos nada. Y luego el archivo base HTML se le han añadido 100 líneas y se han quitado algunas, como podemos ver aquí con esta resta. dos archivos cambiados, 101 inserciones de líneas y 15 eliminaciones.

[166:56] Tenemos ya los nuevos cambios. Pues sí, ahí lo podemos ver. Se ha añadido todo. Ahora ejecutamos el servidor de nuevo. Vamos a la ruta correcta y veremos que los cambios efectivamente se han hecho. Ya tenemos la rama desarrollo con el mismo historial que la rama testing.

[167:23] Ahí podemos verlo. Desarrollo testing. Ahí lo tenemos. Espero que esto os ayude no solo en este proyecto Yangango, sino en toda vuestra carrera, porque al final a medida que vayáis desarrollando en alguna empresa, vais a necesitar siempre utilizar control de versiones.

[167:48] Empecemos este nuevo capítulo. He hecho algunos cambios en el frontend que tenéis en mi sitio web, en el capítulo correspondiente. Son pequeños cambios que han mejorado bastante la apariencia. El principal es este de aquí. El header ahora queda siempre fijo. Aunque hagamos scroll header por ahí, siempre visible. Esto beneficia bastante, ya que siempre tendremos el menú a mano, el buscador a mano, el modo de color a mano y muy importante lo que es la marca, tanto el logo como el título. Dejando de lado

[168:21] estos cambios estéticos del frontend, vamos a centrarnos en la creación de una nueva app, la app llamada catálogo. Esta app servirá para mostrar todos los productos. En este caso, como es una tienda de videojuegos, pues los videojuegos. En este capítulo te voy a enseñar cómo funciona toda la lógica sin utilizar un sistema de base de datos y a partir de probablemente el siguiente capítulo lo haremos con una base de datos. Vamos a crear la app de la misma manera que lo hemos hecho hasta ahora.

[168:53] Vamos a la consola, nos posicionamos en la carpeta correspondiente de nuestro proyecto y escribimos, por si no lo recordáis, Python Manage.p y ponemos start. app, nombre de la app, catálogo, por ejemplo. Con eso se nos crea la estructura de catálogo, una estructura básica y tenemos que seguir los mismos pasos que hicimos con home prácticamente.

[169:21] Entonces, nos vamos a settings de la app principal y en apps instaladas pondremos ese catálogo para registrarla. Ahora vamos al archivo views.p de catálogo y pondremos lo siguiente. En este archivo view de momento tenemos una función llamada lista juegos que lleva un listado, como puedes ver aquí, de diccionarios. Cada diccionario representa un videojuego, un producto.

[169:54] Tiene una clave llamada nombre, otra clave llamada precio y otra plataforma. podría tener más, por supuesto. Cada clave tiene sus respectivos valores. La idea de esto es crear en una plantilla de catálogo, como nosotros queramos, un bucle for utilizando etiquetas DTL de Django, que nos itere todos estos datos, los vaya leyendo parte por parte y se los vaya presentando al usuario automáticamente. Esta es la representación básica de lo que sería una base de datos. Por supuesto, no es

[170:26] una base de datos, son solo datos de momento puestos en un formato de estructura de Python, nada más. Y esto nos va a servir para poder hacer pruebas antes de ni siquiera tener la base de datos creada o configurada. ¿Y qué tenemos por aquí después del listado de diccionarios? Un diccionario de contexto. Django utiliza mucho estos diccionarios. son unos diccionarios que se utilizan para pasar datos a la plantilla. Pues este diccionario que lleva esta variable es en lo que nos

[170:55] tenemos que fijar. Tenemos la clave lista juegos y el valor juegos. ¿Qué es juegos? Pues esto de aquí, el listado de diccionarios. Pues luego en la plantilla vamos a utilizar esta clave, lista juegos para utilizar los datos como valor.

[171:18] Así con un sencillo bucle for podremos iterar de la clave itérame pues cada uno de los juegos. Tan simple como eso, le estamos pasando a la plantilla este diccionario, un diccionario con todos estos datos. ¿Cómo se la pasamos?

[171:33] Pues con este return hacemos un return render que le pase a plantilla HTML que todavía no la tenemos creada, lista juegos este diccionario de contexto para poder utilizarlo en ella. Lo hacemos con un request, la plantilla y el diccionario de contexto. Estos tres pasos son los que hacemos en este return render. Lo podemos separar aquí para verlo con más claridad. Y lo siguiente que vamos a hacer es crear la plantilla. Lo vamos a hacer con las prácticas que llevamos haciendo hasta ahora. En home pusimos

[172:10] las plantillas en una carpeta llamada templates home y las plantillas. Pues vamos a hacer exactamente lo mismo. Templates, catálogo, plantillas. Lo hacemos dentro de catálogo y un archivo llamado lista juegos.html. Aquí vamos a crear la siguiente plantilla. Extiende de base HTML como todo lo que estamos haciendo. Load statics. Para poder cargar archivos estáticos. Tenemos el block title para poner el título dinámico de la página.

[172:55] Aquí podríamos poner, por ejemplo, listado de juegos o lo que queramos. Y finalmente el block content, que lleva todo el contenido de este catálogo. ¿Cuál es el contenido? Pues un título H2. Y lo importante, aparte de todas estas estructuras DIP, pues es lo siguiente, esta etiqueta de TL que empieza por aquí y termina por aquí con el end. La etiqueta de TL es for, es un bucle, pero para plantillas yango. El iterador se llama juego.

[173:31] Que iteramos la lista juegos. ese diccionario de contexto. Juego, el iterador, en este caso representa cada uno de los diccionarios del diccionario de contexto pasado. Entonces, que os quede claro que juego en este caso es cada uno de estos diccionarios que tenemos dentro de este listado y ahí fuera en la plantilla se puede llamar juego, se puede llamar i, lo que tú quieras, no tiene nada que ver con los nombres que hay por aquí, pero simplemente os digo que juego aquí representa uno de esos diccionarios cada

[174:10] juego, básicamente, para que lo entendáis, pues ¿Qué quiere decir esto? Que cada vuelta del bucle for me va a generar esta estructura completa hasta terminar con todo el diccionario de contexto lista juegos. ¿Qué va a hacer? Pues va a cargar una imagen. De momento va a ser logo PNG, la misma imagen de siempre para probar. Es una imagen genérica nada más. Cuando tengamos base de datos, ya le pasaremos en el diccionario de contexto también una imagen personalizada para cada juego con título

[174:41] H5, el nombre del juego que se itera con el iterador, juego punto nombre. Esto quiere decir que va a iterar esta clave, nombre. La primera vuelta obtendrá do Racing. La segunda vuelta cuando genere otro elemento de este catálogo, pues va a obtener platform.

[175:08] Y aquí tenemos más información. En dos párrafos obtenemos plataforma y precio. Esto es lo mismo. Ieramos cada una de las claves de ese diccionario de contexto para obtener sus valores y los formateamos en la plantilla. Con esto tenemos esas dobles llaves de apertura y cierre envolviendo esto, este elemento.

[175:34] Y ya está. Con esto hemos creado el catálogo. Ahora tenemos que crear el sistema de enrutamiento para poder acceder a este catálogo y probar si todo está funcionando correctamente. Pues, ¿qué tenemos que hacer? crear ese archivo URLs en la aplicación y vamos a poner la siguiente URL, un solo paz, una ruta vacía, porque queremos que aparezca directamente en la página principal, pero de esta aplicación de catálogo, pensar que este archivo URLs está en catálogo.

[176:14] Entonces, no es la página principal de nuestro sitio web, sino que va a ser, pues si ponemos barra catálogo, pues será aquí catálogo y luego esa página principal que tendremos aquí será la de la plantilla lista juegos. En esta URL cargaremos la vista lista juegos precisamente para que nos muestre todo eso que estamos generando.

[176:42] Así utilizaremos la lógica de ese archivo. Y nos queda enrutar la app principal con este archivo de URLs de catálogo. Vamos a ello. Pues nos vamos a la aplicación principal. En mi caso, tienda videojuegos se llama archivo URLs.

[177:02] Y aquí vamos a poner lo siguiente, otro paz con el nombre catálogo e incluimos ese archivo de URLs de catálogo. Iniciamos el servidor Python Manage Run Server. ¿Y qué vamos a escribir? Pues vamos a escribir simplemente catálogo para acceder a las URLs de catálogo. De momento solo tenemos una, que es la principal.

[177:40] Y aquí tenemos nuestro catálogo. Vemos que se genera cada uno de los elementos. va iterando todo el diccionario de contexto uno por uno, formateando cada valor donde le corresponde. Y así no tenemos que trabajar manualmente en añadir el contenido, sino que se hace solo. Nosotros solo nos dedicamos a crear el backend, el front end y después que se haga la magia. Esto de aquí sí que lo vamos a arreglar de manera muy sencilla. Nos vamos a la plantilla, buscamos donde pone lista de

[178:17] juegos que está aquí y le podemos poner una class body solucionado. Y tenemos ese modo claro que queda bonito también y ese modo oscuro. Y vemos la cabecera que va colocándose correctamente, siempre por encima, va flotando.

[178:47] Espero que os haya gustado este capítulo. Nos dedicaremos muy pronto, seguramente como he dicho en el siguiente capítulo, a ver cómo funcionan las bases de datos conjango y cómo podemos aplicar esto a una de ellas. Ha llegado el momento de utilizar bases de datos en nuestro proyecto.

[179:10] Empezaremos con SQL Lite en este capítulo y en otra lección te enseñaré a migrar estos datos para pasarlos a MySQW y que puedas conectar con un servidor para hacer algo más profesional. Pero la base de lo que aprendas en este capítulo con SK Light es fundamental para lo mismo que haremos con MySQwell. Cuando desarrollamos un proyecto en Jango, una de las grandes ventajas del framework es la integración nativa con bases de datos. De forma predeterminada, cada nuevo proyecto viene configurado para

[179:40] usar SQLite. Aquí tenemos el archivo que nos crea por defecto al crear este proyecto Jango. SQLite es un motor de bases de datos relacional que guarda toda la información en un único archivo, el que tengo señalado en pantalla. Es perfecto para proyectos de aprendizaje como este que estamos haciendo o para pequeñas aplicaciones que no van a requerir una gran cantidad de datos. En entornos de producción de mediana y gran escala vamos a utilizar soluciones mejores como MySQWL, Postg SQL, SQL Server, etcétera.

[180:18] El primer paso para trabajar con datos en Jango es definir un modelo. Los modelos son clases de Python que representan una tabla en una base de datos. En lugar de crear tablas, de la manera que lo haríamos en una base de datos tradicional con create todo el comando SQL para crear esa tabla con los campos, lo haremos de otra manera, con una simple clase de Python en un archivo llamado models.p de cada appjango. Así, Jjango nos crea una capa de abstracción en la que no necesitamos ni siquiera

[180:50] saber SQL para poder interactuar con bases de datos. Los conocimientos de SQL siempre nos van a venir bien, así que os recomiendo que los tengáis, pero ya veréis que no necesitáis SQL para trabajar con JJo. La primera tabla que queremos crear para este proyecto es para la app catálogo.

[181:11] Tenemos una serie de videojuegos que queremos mostrar a los usuarios, todo nuestro catálogo. Entonces, ahí en catálogo crearemos el primer modelo que representará, como he dicho, una tabla en una base de datos. Nos iremos al archivo models.p que tenemos por aquí en la app catálogo y pondremos el siguiente código.

[181:35] Una clase de Python llamada juego con herencia de models.mel. Esta herencia la necesitamos para quejango trabaje con su lógica interna. Después tenemos la representación de cada uno de los campos de lo que teníamos, nombre, precio y plataforma.

[181:54] Esto lo hacemos con variables de Python o atributos, puesto que están en una clase, y utilizaremos de models diferentes funciones como char field, decimal field, etcétera. Esto representa los tipos de datos de los campos de la tabla. Por ejemplo, en MySkywell tenemos tipos de campos barchar para el texto, pues en Python podemos poner text field, char field, etcétera.

[182:21] Con este Max L 100 lo que estoy haciendo es limitar la longitud máxima de este campo de tipo Charfield. No se pueden guardar más de 100 caracteres, puesto que el nombre del videojuego va a ser un título relativamente corto, pues me parece una medida adecuada. 100 caracteres sería suficiente. Esto se hace para ahorrar espacio de almacenamiento en la base de datos. Si definimos primero bien todo lo que queremos hacer y lo limitamos al máximo de manera lógica, pues podremos optimizar el espacio que ocupa todo en

[182:55] la base de datos. Este char field lo que hace es tener datos de tipo texto y en cambio, decimal field nos sirve para valores numéricos de tipo decimal. Por un lado tenemos este atributo max digits, que nos permitirá un número máximo de seis dígitos. Y si le ponemos este decimal places con dos, queremos decir que la parte decimal tendrá dos decimales y estos dos decimales se incluyen en el máximo de dígitos. Por lo tanto, podríamos tener, por ejemplo, un número como 1234,20.

[183:34] Y esto sería el máximo de la longitud, ya que tendría seis dígitos en total. En plataforma utilizamos también un Charfield, pero con una longitud máxima mayor de 200 caracteres, ya que podemos tener diferentes plataformas y el texto puede ocupar más. Lo siguiente que tenemos que hacer es venir a view y fijarnos en todo lo que tenemos de información. Esto es lo que tenemos que pasar a la base de datos. ¿Cómo lo podemos hacer? pues lo podemos hacer manualmente abriendo este archivo y teniendo una

[184:08] extensión adecuada. nos iríamos a extensiones y buscaríamos, por ejemplo, esta SQLite Viewer para verlo. Vendríamos por aquí, la abrimos simplemente haciendo clic en el archivo y ahí ya podemos ver lo siguiente. Tenemos una serie de tablas que son para el funcionamiento de Yangjango.

[184:32] Entonces, estas tablas no las tenemos que tocar absolutamente, no hay que eliminarlas ni hacer nada con ellas. Por supuesto, podemos ir consultándolas y viendo que tienen ciertos datos. Aquí nos aparecerán las filas. Tenemos 24 filas, que cada fila es esto de aquí, 1 2 3 4 hasta 24. Y luego tenemos los campos o columnas, que son estos.

[185:00] Cada diccionario de datos que tenemos de cada juego ocupará entonces una fila. El primero vendría por aquí. Después, nombre ocupará un campo o columna, precio ocupará otro y plataformas ocupará otro. Pues definiremos una tabla como esta. No tenemos que crear el comando SQL porque ya con esto que tenemos aquí ya está todo hecho.

[185:28] Bueno, realmente no lo tenemos todo hecho. Nos queda una pequeña cosa más. indicarle aango que efectivamente tiene que leer este archivo de models y crear la tabla correspondiente. ¿Cómo haremos eso? Pues con un comando muy simple. Venimos a la ruta donde tenemos el manage.pi. En mi caso es esta que ves por aquí, como siempre, la que utilizamos para ejecutar el servidor. Y pondremos el siguiente comando, pythonmanage.p make migrations.

[186:08] Con esto le indicamos que haga las migraciones. Hacer las migraciones significa que leerá nuestros archivos de modelos como este de aquí. Si tenemos diferentes apps, pues también las leerá todo de una vez. Con esto nos preparará la estructura para generarla y nos quedará un comando extra para hacerlo efectivo.

[186:30] Pues hacemos esas migraciones. Nos dice que hay migraciones para la app catálogo y que se va a crear el modelo juego. Vamos a tener un modelo llamado juego. No está creado todavía, lo tenemos que hacer con ese comando extra.

[186:46] Pondremos lo mismo y diremos que migrate. Aquí nos dice que se han ejecutado las siguientes migraciones con estado. OK. Entonces ha salido bien. Si vamos al archivo SQLite, el que tenemos por aquí, le damos al botón actualizar, veremos que la tabla está creada.

[187:13] se llama catálogo juego y tenemos ese identificador que podemos ver por aquí, es una clave primaria, primary key. Tenemos el campo nombre, tenemos el campo precio y el campo plataforma. Este identificador lo ha creado automáticamente, así que no tenemos que preocuparnos por el número de ID, ni siquiera lo hemos incluido en el modelo y ahí está. Y así podemos tener de manera inequívoca cada videojuego o cada producto.

[187:44] Ahora que ya tenemos la tabla lista, podemos añadir algunos registros de ejemplo. Los que vamos a añadir en la tabla catálogo son los que tenemos aquí en el archivo views. Esto tiene que desaparecer. Lo hemos puesto para hacer pruebas y para que entendieras la lógica de funcionamiento. Ahora ha llegado el momento de migrar esto a una base de datos real. Hay varias formas de hacerlo, pero la más sencilla cuando estás aprendiendo, yo creo que es utilizar el Shell de Yango, que es una

[188:13] consola interactiva para trabajar en el proyecto en tiempo real. Con el Shell de Yangjango podemos importar los modelos, ejecutar consultas a la base de datos, crear registros, etcétera, sin tener que modificar el código fuente, como tendríamos que hacer aquí si tuviésemos los datos puestos en este archivo, ni tener que reiniciar ni siquiera el servidor. Para poder trabajar con el shell de Yangjango, nos vamos a ir a la consola directorio raíz de nuestro proyecto y ponemos el siguiente comando.

[188:46] pythonanage. Shell. Si hemos podido abrir la consola interactiva, nos aparecerá este prompt de aquí para poder escribir. Desde aquí puedes interactuar con la base de datos mediante el ORM. Por si alguien no sabe lo que significa ORM, en palabras simples, es una capa de traducción entre el lenguaje de programación Python, en este caso, y el lenguaje que entiende la base de datos SQL. Básicamente, gracias a esto, no necesitas escribir instrucciones SQL como crear, leer, modificar o borrar registros. Vamos a

[189:22] trabajar entonces con objetos de Python y Yang Yjango se encargará de convertir esas operaciones en consultas reales. Simplemente nos facilita el trabajo. ¿Cómo insertamos estos registros? es del shell de Yango. Por aquí he creado un pequeño código que va a ir bien para insertarlo todo sin tener que escribirlo manualmente. Pues simplemente copiáis esto y lo pegáis ahí en el prompt de la shell de Yangjango. Lo tenéis ahí en mi sitio web. Y si no, también lo podéis generar esto con chat GPT, tal y como he

[189:55] hecho yo. Quizás os dé una forma diferente de hacer esto, pero la cuestión es que funcione. Hay diferentes formas de escribirlo. Personalmente esta es la forma que veo más fácil de entender cuando estás aprendiendo, porque cada objeto lo vamos incluyendo en una llamada create. Para que esto funcione, simplemente tenemos que importar from nombre de la app punto models para hacer referencia al archivo de modelos que tenemos en catálogo.

[190:25] Import. En este caso, la clase es un modelo que se llama juego. Pues eso, en juego podemos utilizar estos campos, los tenemos definidos. Pues sencillamente ponemos juego, nombre de la clase que acabamos de importar, objects, create y ponemos cada uno de los datos en el formato correcto. Esto lo que hará es llamar en el shell de Yangjango a la función create pasándole estos datos.

[190:55] Creará un registro en la base de datos. va a añadir una fila en la tabla con estos mismos datos y lo mismo seguirá haciendo con cada elemento hasta terminar con el último. ¿Y cómo haríais esto que acabo de enseñaros? Con inteligencia artificial para no tener que escribirlo a mano. Pues sencillamente podemos poner esto. Dame un código para el Shell de Yangjango que introduzca los siguientes datos en el modelo juego, que es como se llama. Le podemos pasar los datos. Le copiamos los

[191:30] diccionarios, los pegamos por aquí y para asegurarnos de que lo hace bien, pues podemos pasarle el modelo. Le pasamos todo el archivo mismo y decimos, "Este es el modelo." En este caso tenemos que fijarnos en una cosa y es que no le he dicho cómo se llama la app, no le he dicho que se llama catálogo, entonces me ha dado un nombre cualquiera.

[192:03] Este comando no va a funcionar porque va a intentar importar un archivo models de la app tienda, no existe. Entonces, pues podemos rectificarlo a mano o decirle rectifica la app tienda y cámbiala por catálogo. Esto nos ha dado un código diferente, ya que nos pasa todos los datos de una vez y luego con un bucle for va haciendo este create que va iterando todo. Básicamente es lo mismo, simplemente la forma que tengo yo aquí que os he enseñado es más visual para que veáis cada uno de

[192:50] los pasos uno por uno. Pues esto es lo que está haciendo aquí cada vez. Bueno, en mi caso voy a poner este, el que tengo en mi sitio web. Lo he pegado todo ahí. Presiono enter una vez más para que me devuelva el prompt normal. Y vemos esto. Esto aparece de cada juego que se ha ido añadiendo.

[193:14] Si nos vamos a la base de datos y no han salido errores por aquí, que no es mi caso, actualizamos, veremos que ya aparecen todos los datos en nuestra base de datos. Esto quiere decir que ya podemos venir al archivo view y eliminar precisamente esto. Estos datos los podemos quitar.

[193:41] También podemos comprobar desde el shell de Yango datos insertados. No hace falta que tengamos este visor que tenemos por aquí. Podríamos hacerlo todo desde aquí. Tenemos que poner si tenemos una consulta nueva. Ahora mismo ya lo tengo aquí importado porque ya lo he pegado por aquí.

[194:02] el from catalálogo. Models import juego, pero si empezásemos una consulta nueva, pondríamos esta importación y luego ejecutaríamos lo siguiente. Juego punto objects all, que me muestre todos los objetos de ese modelo. Y ahí tenemos un query set que nos devuelve un listado con todos los objetos.

[194:31] de tipo juego para salir de la consola interactiva, que no os lo he explicado, lo acabo de hacer con esta función exit y salís de ella. Pues los cambios que vamos a hacer, primero importar el modelo juego, como hemos hecho en el shell para poder utilizar ese archivo. Después tenemos que eliminar estos datos estáticos de aquí. Necesitamos una base de datos que se actualice sola. Por ejemplo, tenemos una interfaz web y nuestros trabajadores pueden ir incluyendo los nuevos productos. Pues estos productos se irán

[195:05] guardando de una manera sencilla, con una interfaz gráfica en la base de datos. Y necesitamos que esta vista obtenga esos datos siempre actualizados y no tener aquí datos escritos a mano que tengamos que editar cada vez, guardar archivos y toda esa historia.

[195:21] Pues es tan simple como quitar esto, dejamos la variable juegos bien igual y simplemente vamos a poner esto que hemos probado antes en la shell de Django. Este juego object all lo vamos a poner aquí. ¿Qué recibimos en esta variable? El query set con todos estos datos.

[195:45] Después el diccionario de contexto se queda igual y el return render va a funcionar exactamente igual, no tenemos que cambiar nada más. Pues ahí ya tendríamos los datos obtenidos de la base de datos y aquí en la plantilla no tenemos que cambiar en principio nada porque la lógica funcionará igual.

[196:06] Estamos utilizando esta vista. Pues si no has salido del shell de Yango, pones este exit, sales y vamos a ejecutar el servidor para probarlo. Pues nos vamos a catálogo y veremos que sigue funcionando perfectamente todo el catálogo sin tener nada en la vista. Ya no tenemos los datos ahí, los está obteniendo ya de nuestra tabla.

[196:37] Y como puedes ver, de una manera muy sencilla, porque no tenemos que hacer prácticamente casi nada. Hasta ahora nuestro modelo juego almacena el nombre, el precio y la plataforma. Lo interesante sería que pudiésemos poner una imagen para cada videojuego o cada producto si fuese esto una tienda de otro tipo. La cuestión es que cada elemento debería tener su propia portada o imagen. Si no has tocado mucho bases de datos, te preguntarás cómo insertamos una imagen en una base de datos. Lo que vamos a

[197:16] insertar en la base de datos realmente no es una imagen, sino la ruta hacia esa imagen. Por lo tanto, tenemos que incluir en esta carpeta estática todas las imágenes de los videojuegos y después en el modelo por aquí vamos a poner un nuevo atributo que va a ser imagen. Este atributo guardará el nombre de la imagen y aquí en la plantilla nos encargaremos de cambiar esta ruta fija que siempre nos carga la misma imagen por la imagen correspondiente de cada videojuego. Lo haremos con juego

[197:50] puntoimagen de la misma forma que hacemos aquí con el nombre. Simplemente cambiaremos la ruta. Nos iremos a la carpeta static img y aquí crearemos una nueva carpeta. Por ejemplo, portadas. En portadas vamos a incluir todas las portadas de los juegos. Podéis poner cualquier tipo de portada. Ponemos ahí las imágenes en un formato válido para la web, ya sea web, JPG, PNG, etcétera.

[198:26] Estas serán las portadas y los nombres, pues pueden ser números, como he puesto aquí, o puede tener el nombre de cada videojuego. Para poder incluir esto en nuestra base de datos, vamos a poner el campo imagen, que es nada más y nada menos que un chareld más, que va a llevar un string como este.

[198:55] Con el atributo max length le damos una longitud máxima de 200 caracteres al nombre de la imagen. No estará la ruta completa. La ruta completa la vamos a montar en la plantilla HTML, en esa etiqueta de TL que carga la imagen. Aquí he dejado para poner simplemente el nombre de la imagen con su extensión y ya está. ¿Qué es lo que va a cambiar en cada imagen, porque podríamos tener imágenes con diferentes extensiones también?

[199:22] Y después tenemos este default, que es un valor por defecto. Si no especificamos en la base de datos ninguna imagen, ningún nombre de imagen, quiere decir que ese objeto no tiene imagen, tiene un campo imagen vacío. Pero lo que no queremos es tener por aquí un videojuego sin imagen. Quedaría muy mal. Por lo tanto, en el caso de que un videojuego no tenga portada por lo que sea, pues se va a cargar esta imagen llamada default.

[199:52] jpg. Este default.jpg podría ser una portada genérica. En mi caso, lo voy a hacer a lo fácil y voy a duplicar esta imagen y voy a poner por defecto esta. Solo tenemos que cambiar el nombre. En este caso es PNG, pues por lo tanto por aquí voy a poner PNG, ¿vale? Ya lo tenemos todo y ahora, como hemos hecho cambios en el modelo, tenemos que volver a hacer las migraciones. Esto lo tenemos que hacer cada vez que creemos nuevos modelos o modifiquemos la lógica de estos. Al añadir este nuevo campo, he modificado

[200:37] su lógica. Pues tenemos que decirle a Jango, mira este archivo de modelos y observa si hay cambios, los encontrará. Detenemos el servidor y vamos a poner ese make migrations, el comando que utilizamos anteriormente. Nos indica por aquí que se ha añadido el campo imagen al modelo juego. Parece que ha ido todo correctamente y nos quedaría pasar el migrate para hacerlo efectivo.

[201:13] se ha aplicado correctamente, pues ya lo tenemos listo. Si visualizamos la base de datos, buscamos la tabla, veremos que ahora aparece el campo imagen y como ninguna tenía imagen, pues lleva la imagen por defecto. Ahora lo que vamos a hacer es ir a la plantilla lista juegos y modificaremos esta ruta de aquí para que encaje con img portadas.

[201:45] Pondremos aquí lo siguiente. Sustituimos esta línea por esto. Aquí no cambia gran cosa. Tenemos la etiqueta estática, que sigue siendo lo mismo para cargar una imagen. Y en lugar de poner por aquí la ruta completa hasta el punto JPG o el punto PNG hasta la imagen, pues ponemos la carpeta img que está dentro de Stadic barraportadas, que es donde tenemos las portadas. Cerramos aquí la ruta en este punto y le añadimos después de la barra el nombre de la imagen que se guarda dónde? En la base de datos, en ese campo

[202:21] imagen que lo obtenemos aquí. Vamos a ejecutar el servidor y lo que nos carga por aquí es una imagen default. Podemos verlo ya por aquí en los códigos HTTP que nos ha cargado ese default PNG. Al recargar la página podríamos inspeccionar con F12 y ver que efectivamente nos está cargando esta imagen default, así que de momento ha funcionado.

[203:00] ¿Cómo podemos editar la base de datos para poder poner el nombre correspondiente de cada imagen? pues podríamos venir y editar este archivo si tuviésemos alguna extensión que nos permita hacerlo. No es el caso de SQLite Viewer en la versión gratuita y simplemente vendríamos y actualizaríamos el valor de imagen. En lugar de poner default.png PNG pondríamos uno web que sería la portada correspondiente a Dogo Racing Calid 1. Y estos números que te puesto por aquí simplemente es que he nombrado las

[203:33] imágenes del 1 al 10 aunque perfectamente podrían llevar el nombre. Esta se podría llamar Dogo Racing, esta de aquí Platform, la otra Urban Darkness, etcétera. Puesto que con esta extensión no puedo editar si no pago la versión Pro y no lo voy a hacer, vamos a utilizar una gran herramienta en su lugar que nos proporciona Yango, el conocido como admin de Yangjango. Es un gestor de nuestro proyecto que podemos ejecutar en el navegador. En el siguiente capítulo te explico cómo hacerlo.

[204:16] En este capítulo te voy a enseñar lo que es el administrador de Jjango y cómo funciona de manera básica. Por el momento tenemos un modelo llamado juego y es con el que vamos a hacer una pequeña práctica para demostrarte su funcionamiento. Este administrador es simplemente un panel que nos permite editar datos en la base de datos de una manera visual desde el navegador. Cuando creas un proyecto en JJo, en el archivo URLs principal que se crea, ya nos trae esa línea de admin defecto.

[204:51] Esta es la ruta hacia el administrador. Simplemente tenemos que acceder poniendo barraadmin. Y aquí tenemos que poner un nombre de usuario y una contraseña. Por el momento no podemos acceder puesto que no tenemos creado ningún superusuario. Crearlo es superfácil.

[205:15] Un superusuario es una cuenta especial dentro del proyecto Yangango con acceso completo al panel administrativo. Gracias a este usuario podremos gestionar cualquier app, modelo, configuraciones, etcétera. Para crear esta cuenta de superusuario utilizaremos una vez más el archivo manage.p.

[205:32] Así que cerramos el servidor, lo terminamos y escribiremos el siguiente comando. Presionamos la tecla enter y a continuación nos pide el nombre de usuario que queramos. Nos dice que lo dejemos en blanco presionando enter para utilizar el nombre que aparece por aquí.

[205:57] tu caso aparecerá otra cosa. Si no quieres este nombre, pues escríbelo. Ahora ponemos un correo y una contraseña. La repetimos de nuevo y si hemos seguido estos pasos correctamente, nos dirá que el superusuario se ha creado correctamente.

[206:34] Ahora iniciamos el servidor de nuevo, recargamos esta página y ya podemos escribir nuestro usuario. Bien, ya hemos accedido. Tenemos modo oscuro y modo claro. Este sería el automático que va con el sistema claro y oscuro. Y aquí nos aparecen tablas de administración de Jango. Por ejemplo, Users tiene los usuarios gestionados por JJango y podríamos añadir más, pero nuestro modelo de juegos no aparece por ningún lado. Es porque tenemos que indicarle a Yangango que queremos registrar ese modelo y necesitamos

[207:23] trabajar aquí en el administrador de Yango. Para ello lo indicaremos en los archivos admin.p de cada aplicación. Si queremos utilizar el admin para modelos que están en catálogo, pues utilizaremos este mismo admin. Y si luego en home tuviésemos que hacer algo, pues editaríamos este archivo admin, pero no es el caso porque no tenemos modelos en la app Home.

[207:51] Así pues, nos vamos a catálogo, admin y aquí pondremos lo siguiente. Importamos el modelo y le pasamos esta línea para que registre el modelo. Guardamos cambios y actualizamos el admin. Ya aparece por ahí de una manera superfácil. Y si hacemos clic, podremos ver todo el contenido que tenemos en la base de datos y ya no dependemos de ninguna extensión para Visual Studio o de tocar la base de datos de alguna otra manera. Aparecen los 10 juegos que teníamos registrados. Vamos a ver este,

[208:25] por ejemplo. Y aquí tenemos cada uno de los campos, el nombre, precio, plataforma e imagen, que por defecto se guardó con ese default.png. Pues para probar este admin, si nos funciona, lo que haremos será venir a la carpeta estática y miraremos cada una de las portadas. Yo quiero la uno o el nombre que le hayas puesto tú para este registro. Entonces, aquí borramos esto que ya tiene y pondremos el nombre de la imagen correspondiente.

[208:58] Pensar que tiene que estar en la ruta que hemos construido para que todo esto funcione. Aquí simplemente lo dejé para poner el nombre de la imagen. Le podemos dar a guardar o guardar y añadir otro registro si queremos añadir un nuevo juego y escribir todos los datos.

[209:17] Por aquí nos indica que se han guardado los cambios satisfactoriamente. Si queremos añadir más juegos, lo podemos hacer desde este botón. Si queremos eliminar algún registro, pues podríamos venir aquí, seleccionarlo y eliminar los juegos seleccionados.

[209:39] Le daríamos a go y se eliminarían. Está hecho de una manera sersencilla. Una vez hayamos terminado de editar todo esto, nos iremos a este botón de aquí, view, o nos iremos simplemente con la URL a donde corresponda. Lo digo para poder ver el catálogo. Si vamos a view, voy a catálogo y ya aparece ese videojuego con su portada.

[210:09] Ahora voy a hacer lo mismo con los otros registros. Bien, recargamos y ahora sí aparece todo en su sitio. Ya empezamos a tener las cosas más acabadas. Si os habéis fijado, tenemos el Yangango admin. Si lo queremos poner en español, tenemos que especificar que nuestro proyecto es en español.

[210:41] Esto lo hacemos en el archivo settings, el archivo general de configuración. tenéis que buscar esto que pone language code y pondréis el idioma, por ejemplo, si es español, es y luego la región, puesto que estoy en España, pondré es es.

[211:10] Guardamos cambios, recargamos y ahora podemos ver que ya el administrador está en español y todo lo demás también está. Añadir juego. Cuando editamos algo, tenemos guardar, eliminar. Si os gusta más así lo podéis poner perfectamente. Ya veis lo fácil que es.

[211:40] En este capítulo os voy a enseñar a crear un sistema de paginación automático conjango y con Bootstrap para los estilos. Primero empezamos con la lógica programada en JJango y luego veremos cómo se crean las partes del HTML. Para este sistema de paginación he modificado estos dos archivos, views.pilla HTML lista juegos de la app catálogo.

[212:04] Los cambios son bastante simples, pero bueno, tienen una explicación un poquito larga si queremos entender su funcionamiento bien. La manera de implementarlo es muy sencilla. Cuando tenemos que hacer un sistema de paginación como este, que tenemos un catálogo muy grande con un montón de productos, queremos listar todos los usuarios que tenemos en una aplicación o cualquier otra cosa que se tenga que presentar al usuario y que tenga muchos elementos, pues lo podemos hacer mediante páginas para que no se tengan,

[212:32] si tenemos 1000 elementos, que cargar los 1000 elementos en la página. Eso haría la carga superlenta y luego para encontrar algo sería muy difícil porque tendríamos que ir moviéndonos mucho hasta encontrar un elemento y mirar muchas cosas. Tampoco podríamos utilizar filtros. Por ejemplo, aquí quiero ordenar este listado de videojuegos por género o quiero ordenarlo con un botón por plataforma o por precio o por lo que sea. Si hago toda esta paginación manualmente, no podré hacerlo o será extremadamente

[213:04] complicado. Y cada vez que tenga que hacer un cambio, que quiero posicionar este videojuego en la página siguiente o quiero añadir un juego nuevo y que aparezca aquí, tendré que desplazar manualmente todos los elementos, cambiarlos de página, etcétera. Sería un desastre.

[213:22] Pues con JJango tenemos solucionado este problema, ya que tiene un sistema muy sencillo de implementar una paginación automática. Sencillamente tenemos que venir al archivo de vistas, importar la clase paginator y utilizarla en la vista. La vista sigue siendo la misma.

[213:41] Tenemos por un lado la variable juegos que nos cargaba todo el catálogo, todos los objetos del modelo juego y simplemente nos devolvía un query set que podíamos iterar para mostrar ciertos elementos. Bueno, aquí en juego se obtienen todos los objetos. Si tenemos 1000 juegos, pues habrá 1000 juegos.

[214:02] y se ordenan por ID, que es ese campo que tenemos en la base de datos, único para cada objeto. Por ejemplo, el videojuego uno, este que aparece por aquí, el primero es el que tiene el ID1, luego nos aparece el ID2, ID3, 4, etcétera. Con esta variable de aquí estamos indicando, utilizando esta clase paginator, que utilice el query set, juegos que obtiene todos los objetos y que lo divida en páginas de seis.

[214:35] Queremos seis elementos por página o los que queramos. Pues yo he puesto un seis y lo que me aparece por aquí en cada página son seis objetos, los seis primeros. En la siguiente me aparecen los cuatro restantes. Si hubiese dos más, tuviésemos 12, aquí me saldrían pues estos seis.

[214:57] Y si tuviésemos más todavía, pues tendríamos más páginas, siguiente, etcétera. Con esta variable de aquí, page number, lo que se hace es buscar el parámetro page, como tenemos aquí en la URL. Aquí, si os fijáis, con este sistema de paginación se crea en la URL catálogo otra parte de la ruta de manera dinámica. Si estamos en la página dos, aparecerá igual a 2. Si estamos en la uno, pues pondrá ig.

[215:28] Y asío puede mantener un conteo de la página donde está el usuario. Y si no hay página siguiente, pues no le dará página siguiente porque sabe que está en la página dos y no tenemos más resultados para una página tres. O si estamos en la página dos con la lógica que tengo yo programada, pues podemos ir automáticamente a la página primera o anterior, en este caso la uno.

[215:54] Pero si ya estamos en la uno, page one, pues no podemos ir a la anterior, pero si podríamos ir a la siguiente, cosa que si estamos ya en la dos, puesto que no hay más, pues no podemos hacer. Pues para eso necesitamos obtener el número de página en la URL.

[216:14] Esto que hacemos aquí con page number, estamos utilizando esto de aquí, este objeto, devuelve un objeto especial de tipo page, que contiene diferentes atributos. Contiene por un lado los juegos de la página actual, de la página que obtenga el número con un atributo llamado object list y también otros atributos como has next, si hay página siguiente, has previews para saber si hay una página anterior, number para obtener el número de la página actual.

[216:47] Si el page number fuese 50 y solo tenemos hasta la página dos, pueso va a devolver automáticamente la última página válida. Aquí le ponemos 50. 50 no existe. En lugar de soltar un error, nos lleva a la página dos o la última en su defecto. Y finalmente, pues tenemos aquí el diccionario de contexto que se le pasa todo esto. En este caso se pasa page object, que es esto de aquí.

[217:20] Es decir, ya tenemos todo procesado, lo que queremos y se lo pasamos a la plantilla. Ahora, en la plantilla simplemente nos queda crear el HTML con una lógica que utilice esto. Y digo el HTML con lógica porque vamos a utilizar etiquetas de TL como esta que tenemos por aquí, un condicional if, que nos permite establecer condiciones en HTML gracias a esta etiqueta de TL.

[217:50] Por un lado tenemos la etiqueta NAP, que indica que esto es una sección de navegación para temas de accesibilidad. Después utilizamos un, un listado desordenado, un ordered list para crear la estructura de Bootstrap para la paginación.

[218:08] Lo hacemos con estas clas que tenemos aquí, pagination, y luego centramos el contenido para que aparezca esta paginación centrada. Contamos con los botones. primera y anterior. Es lo primero que nos encontramos en este if.

[218:24] Este if que empieza por aquí y termina por aquí con una condición else por aquí nos va a dar true. Si no estamos en la primera página, como se indica por aquí. Utilizamos del objeto que he mencionado antes, que tenía esos atributos, el objeto de tipo page, pues nos va a mirar si tiene anterior o no. En este caso sí que tiene anterior y por lo tanto nos va a dar un resultado true has preview.

[218:51] Entonces nos va a generar este le que es un botón al final, el botón que tenemos por aquí como primera con esta parte de la URL. Siempre va a ser page one. Si queremos ir a la primera, estemos en la página que estemos, se tiene que formar esto en la ruta. Que nos ponga por aquí arriba page one. Cuando pulsemos este botón.

[219:14] Y este solo está activo, está disponible para pinchar en él si se cumple la condición del if. Si no se cumple va a estar disabled, como tenemos con ese que hay aquí. Por ejemplo, estamos en la página uno y si os fijáis aparece esto deshabilitado.

[219:39] ¿Por qué aparece deshabilitado? porque no se ha cumplido esta condición de lif lista juegos no tiene página anterior porque estamos en la page one que es la primera. Por lo tanto, este listado, la parte de dentro del ul se genera con estos dos le y estos dos se descartan y nos aparecen esos botones con el elemento deshabilitado gracias a este disabled. y no podemos ir a la primera o anterior si ya estamos en la primera.

[220:12] Después, una vez finalizamos esta parte del lif, la que controla estos dos botones, nos vamos a ir a estos dos de aquí o serían más dependiendo de las páginas que hubiera. Esto lo hacemos con un bucle que nos genere los elementos, los botones de manera dinámica. Si hay cinco páginas, pues que genere cinco botones, por ejemplo, y no tengamos que poner aquí un li para cada botón de manera manual, lo cual haría perder la gracia a este sistema. Con esta parte de aquí lo que hacemos es una lista de todos los

[220:48] números de página con lista juegos number, tenemos ahí ese objeto de tipo page que se pasaba por el contexto que nos indica la página actual. Y la lógica es que si es la página actual la que está visitando el usuario con este if que tenemos por aquí, es que me saque este botón activo.

[221:11] Como podemos ver aquí, en caso de que no sea así, tenemos este lift que nos mostrará los números siguientes como enlaces para poder pincharlos. En este caso, simplemente aparece el dos. Con esta resta y esta suma, lo que estamos haciendo es crear un rango cercano a la página activa que tengamos. Por ejemplo, si estuviésemos en la página 10, pues por aquí queremos que salga la página 9, la página 8, por aquí queremos que salga la página 11 y la página 12. Pero si tenemos 100 páginas, no queremos que

[221:48] salgan aquí todas las anteriores y todas las siguientes, ya que esta botonera ocuparía un montón. y queremos que esto se vaya haciendo alrededor de la página activa. Pues eso es lo que estamos haciendo en ese condicional. Después se acaba el bucle for. En este for dejamos ya de generar números cuando esté todo y hacemos lo mismo con este if para los botones que hay por aquí. Esta vez utilizamos el atributo has next. Si tiene siguiente página a la que está. Si tiene siguiente, entonces que genere

[222:22] este li y este otro. Este obtiene el número de páginas para poner en la URL la última página. Entonces, si tenemos dos páginas aquí en Num Pages, se va a guardar un dos y la ruta se generará aquí entonces como interrogante page igual a 2 y aparecerá ahí page igual a 2 cuando pulsemos última.

[222:51] Y por aquí tenemos lo de next page number. Simplemente le indicamos que a la página en la que se encuentre el usuario, si pulsa en siguiente, pues que vaya a la siguiente. Nada más eso. En caso contrario de que no tenga página siguiente, se hará lo que tenemos aquí con este else, que simplemente nos hará lo de los botones deshabilitados. Por ejemplo, nos vamos a la dos, ya no hay página siguiente ni última, pues me las saca deshabilitadas.

[223:24] Si queremos ver más botones para ir haciendo pruebas, vamos a cambiar esta lógica y voy a poner que salga un elemento solo por página para generar 10 páginas. Guardamos cambios, actualizamos y ahí, mira, me aparece solo un videojuego por página.

[223:42] Aquí tenemos ese rango que estaba indicando yo. Estábamos en la página dos, pues mira, tenemos la uno porque no hay más allá por aquí y luego tenemos la tres y la cuatro, ese rango de dos abajo, dos arriba que generamos por aquí con esta operación.

[224:04] Ahora que estamos en la página 3, pues fijaros como aquí se hace ese AT -3 y aquí se hace ese at + 3. Sencillamente es eso para que entendáis estos números. Y siempre va dinámico que nos vamos a la CCO, pues la uno ya ha desaparecido porque no entra en ese rango. Aquí si queremos hacer cuatro elementos a la izquierda, pues ponemos -4.

[224:33] Si lo queremos hacer diferente, que vaya así por cualquier cosa. O si lo queremos hacer simétrico, pues pondríamos cuatro en los dos lados y ya está. Y vamos generando esos botones como queramos. Vale, vamos a dejarlo como estaba. Todo esto, recordar, como siempre digo, está en mi sitio web para que lo podáis copiar y pegar. Ponemos aquí un seis y ya estaría igual como lo teníamos.

[225:03] Y estos estilos también están hechos con el modo de color. Todo está pensado ya. Solo me falta explicar los cambios que he hecho en base a HTML, la plantilla base. Aquí en el menú de navegación teníamos una serie de botones que todavía no estábamos utilizando apenas. Pues si le doy al botón inicio, me lleva la página inicio como debería ser. Y si os fijáis aparece el elemento activo en el que está el usuario. Si estoy en catálogo, pues se marca como que está en catálogo.

[225:35] Así cuando está utilizando la navegación es mucho más intuitiva al saber en qué página exactamente está. Esto último lo tengo por aquí. En el listado de navegación que tenemos hecho ya de hace tiempo. He cambiado simplemente los enlaces.

[225:53] Aquí con este condicional puesto directamente en la etiqueta A, en el enlace estoy diciendo que si la ruta solicitada por el usuario con este request path es igual a esta barra que significa la raíz, entonces que deje este contenido que tenemos entre el if y el end if, que es un active.

[226:17] Es decir, si estamos en la página inicio, en esa raíz, como tenemos, esto sería lo mismo que dejarlo así, pues entonces que me deje esta class active, quedaría de esta forma. Pero claro, no quiero que esté siempre como activa la página de inicio.

[226:39] Yo quiero que sea solo si estoy efectivamente en esa ruta. Pues por eso tengo este condicional que le indica esto, esa condición y solo quedará esta parte que hay dentro del bloque if, en el caso de que sea verdadera, true. Luego tenemos lo que ya teníamos aquí en la ruta definido en el archivo URLs, pues la ruta hacia la página home y aquí en el siguiente botón teníamos tienda puesto, pues he puesto catálogo. Podéis dejarlo como tienda, como os guste más. Y el condicional es

[227:16] lo mismo, solo que en este caso le digo que si es catálogo, es decir, si en la ruta hay esta parte, aunque estemos en la página que estemos, por ejemplo, esta, todo lo que haya con catálogo que contenga esto, pues va a dejar el elemento como activo.

[227:37] Así no tenemos que preocuparnos de poner cada una de las posibles páginas. La lógica es la misma. Y la URL es lista juegos. Si nos vamos a URLs de catálogo, pues aquí tenemos esa URL. Y aquí en el enlace de noticias, pues de momento no hay nada, así que no lleva ningún sitio, pero ya está programada la lógica para que si tuviésemos una URL que contenga esto mismo, pues saldría como activo.

[228:11] Y en contacto, pues ya tenemos página. lo mismo. En este capítulo vamos a crear una nueva app en nuestro proyecto Yangango para gestionar todo lo relacionado con el buscador, este que tenemos implementado por aquí. Nos iremos a la carpeta raíz del proyecto y pondremos el siguiente comando.

[228:43] Pulsamos enter y se creará nuestra app buscador. Ahora haremos lo mismo de siempre. Tenemos que ir al settings y en apps instaladas añadimos esta nueva app. Una vez tenemos la aplicación Buscador creada y registrada en las apps instaladas del archivo settings, nos vamos a ir al archivo views de la propia app. En este archivo vamos a importar el modelo juego de la app catálogo para poder utilizarlo en el buscador. La clase Paginator de Jango para poder hacer una paginación también en el

[229:29] buscador. Finalmente importamos Q para poder construir filtros de búsqueda como estos que estoy creando por aquí. En este archivo views tenemos una sola función, una vista, la denominada buscar juegos. y es la que se encargará de buscar objetos de tipo juego según lo que busque el usuario. Analizándolo por encima, los pasos que hace esta función es recibir la petición del usuario, procesar el término de búsqueda introducido por el usuario, obtener los resultados correspondientes de la base

[230:05] de datos y finalmente mostrarlos en la plantilla adecuada. Cuando el usuario busca algún juego, como por ejemplo este platform, que sí que está en la base de datos, le da a buscar, se utiliza toda esta lógica para obtener ese mismo término que ha escrito y mostrar solo lo que coincide según los parámetros de búsqueda especificados en la vista. El término de búsqueda lo obtiene por aquí. El usuario escribe en el formulario lo que quiera buscar y aquí lo obtenemos. Ese resultado lo

[230:44] llevamos en la variable query. En resultados lo que hacemos es filtrar por nombre o plataforma según la consulta que haga el usuario. Con esto de aquí indicamos que si la consulta del usuario está incluida en el nombre operador OR, que se representa así, también tenemos un nombre de plataforma coincidente en la consulta del usuario, pues entonces que nos muestre los resultados y los ordene finalmente por ID. Con este filtro, si buscamos el nombre platform de este videojuego,

[231:19] coincidirá entonces en nombre con un resultado que está en la base de datos. Pues eso es lo que me devuelve. No coincide con ninguna plataforma, ya que no hemos buscado ni PC, ni Switch ni nada de eso. Así que esta parte del filtro pues no se utiliza. En este caso, que buscamos por ejemplo por switch.

[231:43] pues aparecerán todos los resultados para switch, independientemente del nombre que tengan. Y esto es gracias al operador OR. Si estudiáis bien lo que podéis hacer con estos filtros, podéis llegar a hacer un buscador bastante complejo, según toda la lógica que necesitáis implementar y lo preciso que queráis hacer este buscador. Y lo demás ya lo sabéis del capítulo anterior. Tenemos la paginación hecha con esta clase y se limita, según estos resultados que obtenemos de la búsqueda del usuario, se limita a seis

[232:19] por página. pasándole esta variable y este número. Por ejemplo, si tenemos siete resultados, pues aparecerán seis en la primera página y luego otro más en la siguiente. Por ejemplo, buscamos PC. Tenemos muchos juegos de PC en la base de datos. Pues mira, se van creando páginas según se necesite.

[232:47] Finalmente pasamos el contexto de la misma forma que no hemos hecho hasta ahora y esta vez se lo pasamos a buscador/resultadosbúsqueda.html, que es la nueva plantilla para mostrar los resultados de búsqueda. Para las URLs, en el archivo URLs principal he definido esto. Tenemos el archivo propio de URLs, el que hay en esa app, y lo montamos en la ruta buscador. Esto quiere decir que cuando un usuario utilice el buscador, automáticamente se le lleva a la ruta buscador y luego va montando esa query

[233:31] según lo que va poniendo el usuario. Aquí se ha buscado el término PC. Pues me aparece esto para la consulta, el interrogante Q igual y luego se monta el término del usuario PC y finalmente se une con este símbolo, el Ampersant, la parte de la paginación.

[233:56] Entonces tenemos una combinación de búsqueda y paginación y estos son los resultados personalizados y creados dinámicamente según lo que busca el usuario y según la página en la que está. Ahora cambia solo esto. En URLs del buscador tenemos la siguiente URL. Es un paz vacío que se monta a partir de buscador y se encarga simplemente pues de utilizar la vista cuando se accede a buscador.

[234:27] En base a HTML he hecho una pequeña modificación para la parte formador. Tenemos que ir a la etiqueta header, cerca de donde está el cierre y buscar la etiqueta form que lleva el formulario, que básicamente es el buscador.

[234:47] Este tiene que quedar de esta forma. Con esta actualización, el formulario envía la consulta a la vista buscar juegos de la app buscador. Además, el campo de búsqueda, como podéis ver, cuando se busca se mantiene fijo, no se borra.

[235:03] Esto se consigue gracias a este value con este request.getgetq. Y aquí tenemos un filtro que nos permite añadir un valor por defecto en el caso de que el usuario no introduzca nada y presione el botón buscar. Esto añade un string vacío, es decir, buscará eso, un string vacío para no generar ningún error. Esto quiere decir entonces que si buscamos así sin ningún término, me sale resultados para string vacío. Esto lo podríamos manejar de otra forma si no queremos que salga esto. Y esto quiere

[235:42] decir que se devuelven todos los resultados. Finalmente tenemos resultados búsqueda, esta plantilla que se extiende de base. HTML para tener toda esa estructura general. Nos permite cargar archivos estáticos. tiene este blog title para poner el título diferente en la plantilla y el blog content, básicamente como todas las apps que estamos creando.

[236:13] El funcionamiento es el mismo que en catálogo. Tenemos un bucle for que nos va iterando todos los juegos y por aquí tenemos la navegación muy parecida a la que tenemos en catálogo. La plantilla en este H2 nos permite sacar esto.

[236:33] Resultados para lo que escriba el usuario. Esto lo conseguimos con esto de aquí, incrustando este query directamente en el título. Después utilizamos el diccionario de contexto lista juegos, pero pasado evidentemente de esta vista.

[236:53] Fijaros este lista juegos. Este diccionario de contexto no lleva todos los juegos porque por aquí filtramos ya el catálogo, no sale todo como tenemos en catálogo. Aquí simplemente acaba enviando la plantilla el filtro. Si hemos buscado sunset vive, pues simplemente me va a enviar en el diccionario de contexto esto y por lo tanto este bucle for solo va a generar un elemento. Si coincidiese con más pues generaría más, pero todo lo hace de base ya con esa información que hay en lista

[237:28] juegos. Os comento un último detalle. Aquí en la plantilla todavía no tenía ningún enlace para los resultados. Buscamos cualquier cosa y ahora con este enlace puedo darle a un resultado en cualquier parte de la tarjeta e ir a su página correspondiente. Este enlace se genera dinámicamente con esto. Ponemos un enlace que empieza por aquí y termina aquí. Este enlace envuelve todo, la IMG, el título, los párrafos, todo es pulsable. Le he puesto un text decoration known para que no tenga el

[238:04] estilo ese de subrayado el enlace y dinámicamente se genera con esto con la URL detalle juego y finalmente el ID de cada juego. Fijaros en que en este diccionario de contexto estamos pasando más de una cosa. Anteriormente en catálogo solo pasábamos esto, la lista de juegos. Aquí estamos pasando la lista de juegos ya filtrada según la búsqueda del usuario y también la consulta del usuario para después poderla utilizar en la plantilla.

[238:36] Entonces, en la plantilla utilizamos ese query que hemos pasado en el diccionario de contexto aquí. Así pues, todo el contenido de la vista que queramos utilizar directamente en la plantilla lo vamos a pasar en el diccionario de contexto.

[238:56] Y aquí para las rutas en el HRF pensar que tenemos lo de la paginación en el caso de que haya más páginas y la query que se tiene que ir añadiendo. Pues esto se hace de esta forma. Montaríamos ese interrogante Q, el símbolo igual por aquí.

[239:16] Después le ponemos la query que haya escrito el usuario y formamos ese ant igual a cierta página, como expliqué en el capítulo de paginación. Simplemente es una manera de montar las rutas de manera dinámica. Bueno, y en el caso de que no se obtengan resultados, ya tenemos contemplada esa opción.

[239:40] Ponemos cualquier cosa que no exista, le damos a buscar y aquí nos aparece no se encontraron resultados. Esto de no se encontraron resultados está aquí en la plantilla. Le vamos a poner text para que se vea bien en ambos modos. Pues ya tenemos de manera muy rápida y fácil montado nuestro buscador totalmente funcional que trabaja dinámicamente con nuestra base de datos.

[240:18] En este capítulo vas a aprender cómo crear una vista de detalle en Yjango dentro de la app catálogo. Hasta ahora tenemos implementado el catálogo con todos los videojuegos o productos o lo que fuese este catálogo, pero no tenemos acceso a una página concreta. Por ejemplo, si quisiese ver detalles de este videojuego para comprarlo, poner una reseña, guardarlo en favoritos o cualquier otra información que quiera poner, pues no teníamos página hasta ahora. La cuestión es, si esto se genera

[240:48] de base de datos, ¿cómo creo una página para cada videojuego con su información? Pues lo vamos a hacer también de manera dinámica. Eso es lo que te voy a enseñar en este capítulo, para que no tengas que crear una página para cada producto, sino que haremos una plantilla base y la rellenaremos de forma automática con los datos de la base de datos. Yo ya tengo implementado esto y lo puedes ver por aquí.

[241:13] Vendríamos algún videojuego, le damos a ver detalles y ahí tenemos la página de detalle. Es muy sencilla, pero realmente lo importante es poder generar esto, ya que luego si tienes mucha información en la base de datos y quieres poner esto muy completo, con todo lo que quieras, lo puedes hacer. El sistema es el mismo. De momento, estos botones no son funcionales, solo el de volver al catálogo. Y bueno, toda esta información de plataforma, el precio, el nombre, la imagen sale de nuestra base de datos.

[241:46] Para hacer esto mismo, he modificado los siguientes archivos. Por un lado, la hoja CSS en la cual hecho modificaciones globales para mejorar un poquito ciertos estilos. Eso lo tenéis en mi sitio web como todo el código. También he añadido los estilos ho que podéis ver aquí al pasar el cursor.

[242:08] Esto mismo, o bien lo que tenemos en el catálogo. He modificado el archivo de catálogo donde se muestran todos los videojuegos para añadir esos enlaces y hacer alguna modificación más. He creado esta plantilla para hacer eso mismo, para mostrar la página de detalle. Esta es la que utilizan todos los productos. En el archivo de vista se ha añadido una vista nueva para poder trabajar con este archivo de detalle. Y he modificado las URLs para poder enrutar cada producto o cada videojuego con su información

[242:44] concreta. Básicamente para que salga algo en la URL como esto, si tenemos el ID1, pues me aparece esta URL y aquí me aparece el ID2 3 4. Así podemos generar páginas automáticas, aunque también perfectamente podríamos darle otro nombre a la URL.

[243:08] Empecemos viendo la vista. nos vamos a ir a catálogo y aquí ha añadido la vista detalle juego. Todo lo demás está igual. Bueno, además de esto sí que he hecho una pequeña modificación aquí en las importaciones. He importado esto, get object or 404. Esto nos va a ser muy útil y lo utilizamos ya por aquí en la vista. Que quede claro que esta vista es la que se encarga de mostrar todo este contenido con la plantilla detalle juego. ¿Cómo lo hacemos? Pues bien, una variable juego,

[243:44] ¿qué obtiene? El objeto de un juego concreto, pasándole aquí el modelo juego, y un primary key. Por ejemplo, accedemos y llamamos a esta vista con el juego que tiene un ID1, pues se obtendrá de la base de datos exactamente el contenido del juego con ese ID. En este caso estoy en el ID7, pues se muestra la información de ese objeto.

[244:11] Después pasaremos esa información concreta de un solo juego en el diccionario de contexto. Lo hacemos aquí y renderizamos finalmente con esto. Como siempre, lo hacemos a la plantilla detallejuego.html que es la nueva. Esta función nos va a ser muy útil, ya que si el ID introducido en la URL, ya sea manualmente o venir de un buscador, de un juego que sea eliminado o lo que sea, pero llegamos a la URL con ID11, por ejemplo, que no está en la base de datos, pues nos va a devolver un error

[244:44] 404. Y esto está muy bien porque con este error podemos crear una página personalizada para el 404 que aparezca cuando salgan estos errores y que podamos redirigir al usuario con una estética de nuestro sitio web, con la plantilla base y llevarlo a otro sitio, la página principal o donde sea. Este error generado poro nos dice que estamos viendo esta página concreta con errores de Yangango porque tenemos la constante depuración con un valor true, es decir, tenemos la depuración de Yangango

[245:17] activada en el archivo settings. Cámbialo a false y mostrará una página estándar 404, que esta es la que podríamos después personalizar de cualquier manera. De hecho, esto en producción no debe salir. Depuración debe estar en false y ademáso ya nos lo indica por aquí. En desarrollo lo tenemos activado porque nos muestra toda la información que necesitamos para depurar cuando hay un fallo. Ponemos esto en false, guardamos cambios y veremos que se nos cierra el servidor y nos sale el siguiente error. Debemos

[245:52] tener en settings la constante host permitidos si depuración está en false. ¿Qué quiere decir esto? pues que tenemos que escribir aquí la dirección de alguna o algunas máquinas que estén permitidas. Ahora mismo, puesto que estamos en local, tenemos que permitir la dirección local. Ponemos esto como string, guardamos cambios y ejecutamos el servidor.

[246:22] Ahora intentamos recargar y bien, el servidor vuelve a funcionar de esta forma y lo que aparece es una página genérica del navegador que dice not found, el error 404 de http. Pues así podemos crear una página personalizada aquí y redirigir al usuario para no perder tráfico que salga de nuestro sitio, que vea que nuestra página al final no es confiable o no encuentra lo que busca. Si nos vamos de nuevo a la página 10, pues en este caso sí que aparece, no sale el error.

[246:58] Pues esto es lo que hace. Nos devuelve un error 404 o el objeto. Si encuentra el objeto nos lo da. sino el error. Si hacemos una recarga forzada ahora mismo de nuestro sitio web, veremos que aparecen estos fallos. Errores 404 de archivos estáticos.

[247:19] funciona todo, excepto todo lo que son archivos estáticos, como pueden ser imágenes, archivos CSS, JS, etcétera. Por lo tanto, ahora mismo no funciona ni el modo de color y esto ocurre por tener la depuración en false. Cuando la depuración está deshabilitada, los archivos estáticos no se van a manejar de la misma forma. Esto lo explicaré cuando pasemos a producción. Lo veréis de manera práctica y así lo entenderéis mejor. Por lo tanto, para arreglar este problema, vamos a habilitar de nuevo,

[247:50] solo en desarrollo, en producción, bajo ningún concepto debe estar esto en true. Recargamos forzadamente otra vez y ahora sí funciona. Dejemos este tema de momento y vamos a ver las plantillas. Ahora nos vamos a lista juegos. En esta simplemente he añadido una pequeña modificación de este botón de aquí para que salga esto de ver detalles y con CSS pues se hace este efecto hoer.

[248:24] Si no os gusta que esté todo esto tan grande, lo podéis hacer perfectamente más pequeño y hacer un orden como queráis. Y todo está envuelto en este enlace que utiliza la URL de talle juego con juego ID, es decir, para que dinámicamente nos lleve a la plantilla adecuada. Este enlace entonces utiliza la vista detalle juego, la nueva vista que hemos creado. Haríamos clic en una página y nos iríamos a esta plantilla, detalle juego.

[248:58] Esta plantilla tiene un block title con el nombre de cada videojuego. Gracias a esto nos aparece por aquí. Las portadas se cargan con juego imagen. Tenemos un Alt para la descripción de la imagen con el nombre del juego sacado de la base de datos. Después mostramos el nombre del juego por aquí, el precio por aquí y luego utilizamos también lo que son las plataformas de la base de datos.

[249:29] Estos botones de favoritos comprar no están todavía funcionales y sí lo estaría el de volver al catálogo, que lo que hace es enlazar a la vista lista juegos, por lo tanto me lleva directamente a cargar el catálogo. En detalles del producto también hay esto, UNIF, juego descripción. Si hubiese un campo de descripción que todavía no existe, pero ya lo he puesto ahí para después añadirlo en la base de datos. si quiero, si no lo eliminaré, pues por aquí aparecería una descripción. En caso

[250:03] de que no la haya de un videojuego o de ninguno, ni siquiera existe esto en el modelo, pues no pasa nada, no aparece nada. Aunque esto es mejor ponerlo si vais a poner una descripción efectivamente en la base de datos. Si no, no lo pongáis, pero puede ser que tengáis productos en los cuales de momento no tengáis una descripción, por ejemplo. Entonces, en los que tiene descripción que salga y en los que no, pues no. Las reseñas todavía no están implementadas, pero ya tenemos aquí esta

[250:31] sección. Nos quedaría ver también cómo se generan estas URLs. Pues en el archivo URLs he añadido una sencilla línea que tenemos por aquí. Esto lo único que hace es poner en valor de tipo int el primary key una barra. Aquí la raíz cuando cargamos el catálogo, como tenemos especificado en el archivo URLs principal, pues nos saldría visitando el catálogo, sería esto 127, bueno, la URL local 001 catálogo, estaríamos ahí con ese primer paz y después lo otro monta intary key que es

[251:14] el ID de cada videojuego en este caso. con un valor integer como puede ser uno, por ejemplo. Este sería el ID del primer videojuego nada más. Y así monta esas URLs para cada juego. Por ejemplo, aquí estamos en la URL 10. Quiere decir que el ID de Medieval Saga tiene un valor 10 en la base de datos. En el CSS he hecho algunas modificaciones de alguna estética general. Este Hover con las tarjetas aparece con estos dos estilos de aquí.

[251:49] Hace una transición, un transform y un box shadow. Una cosa sencilla. Después, dentro del detalle, pues he puesto otro estilo personalizado para estas imágenes, que es como el otro, hace la transición transform y box shadow.

[252:13] En este capítulo vas a aprender a crear una aplicación de usuarios dentro de un proyecto de Yango. Todo este sistema lo integraremos en la tienda de videojuegos que estamos haciendo en el proyecto, pero en sí te sirve para cualquier tipo de proyecto, no solo para una tienda. La forma de hacerlo es igual, pero así con este ejemplo lo podrás ver implementado y de qué manera funciona. Y esto no se quedará en una simple charla teórica. Y este será el resultado de lo que haremos hoy. Tendremos ahí el perfil de usuario

[252:42] para acceder directamente. Podemos cerrar sesión o ir a mi perfil. Si le damos a ir a mi perfil, se accede a usuarios/perfil y nos llevará a esto. Es una vista muy sencilla, pero nos sirve para demostrar que tenemos ahí un perfil de usuario.

[252:58] Después ya podríamos implementar las cosas que queramos que vea aquí el usuario. Podemos cerrar sesión desde aquí o desde aquí. Esta sería la vista de login, que por defecto nos sacará un invitado con las opciones de iniciar sesión o registrarse. Y aquí podremos poner el usuario contraseña, ingresar si ya tenemos un usuario o ir a la página de registro que sería esta.

[253:24] Bueno, lo primero que tenéis que hacer, yo ya tengo la aplicación creada por aquí en esta carpeta usuarios, es poner el siguiente comando, el que siempre utilizamos para crear las apps. Pythonanage.p en la consola startup, el nombre de la aplicación, usuarios en mi caso. Con eso generamos la estructura general y además deberás crear el archivo forms.pi, P, que lo utilizaremos para los formularios y el URLs dentro de esta aplicación.

[253:54] Después quiero que hagáis esta carpeta plantillas barrausuarios y dentro tres plantillas login, perfil y registro. Vamos al archivo settings, al de configuración general y en la sección de apps instaladas vais a poner la nueva app. No os olvidéis de eso. Ya sé que estos pasos los hemos visto en el curso, pero no está de más que os explique por si alguien se le olvida y luego no le funciona.

[254:24] También añadiremos, lo podemos poner abajo del todo esto, estas cuatro líneas. JJango por defecto utiliza un modelo de usuarios llamado user. Si nosotros queremos utilizar un modelo personalizado, ya sea basado en este modelo user con ciertas modificaciones o uno completamente distinto, lo especificaremos en esta línea. Nombre de la app punto nombre del modelo. Con login URL especificaremos una URL para quejango redirija automáticamente si un usuario intenta acceder a una vista. que

[255:00] requiere estar autenticado. Estas vistas protegidas las explicaré en este vídeo, pero de momento que sepáis si un usuario no tiene permiso de ver cierta vista, pues con este login que estoy poniendo aquí le llevará a la página de login.

[255:15] Esta es la página que esté en URLs de la propia app. Tengo esto, tengo una URL que se llama login. Con este name puedo utilizarla directamente en cualquier archivo de manera muy fácil. Y lo mismo con las otras, pero en este caso estoy utilizando esta. Esta URL de redirección es para quejango redirija al usuario una vez haga login correctamente a la URL, que también está definida en las URLs. Y finalmente por aquí, cuando el usuario cierre sesión, le redirigimos a la página de login por si quiere iniciar

[255:55] sesión con otro usuario, por ejemplo. Lo siguiente que haremos será ir al archivo URLs principal para añadir el patrls de la app usuarios. Lo haremos así, añadiendo esta última línea. Nos vamos a la app usuarios URLs y aquí vamos a añadir las siguientes URLs.

[256:18] Registro nos servirá para el registro. Aquí tenemos el login, también otro paz para el logout para cerrar sesión y otro paz para el perfil. Voy a explicar qué hace cada una de estas vistas. En el archivo de vistas tenemos las vistas correspondientes a cada funcionalidad de este sistema de usuarios. Por un lado, tenemos la vista registro view, que nos va a servir para registrar usuarios. Login view es la vista que nos servirá para iniciar sesión con ellos. También nos encontramos con las vistas logout view

[256:54] para poder cerrar sesión una vez iniciada y otra vista más llamada perfil view que nos va a servir para cargar el perfil de cada usuario para que el usuario pueda acceder a su perfil. Empecemos viendo cómo funciona registro view. Esta vista trabaja junto con esta plantilla, la plantilla que puedes ver por aquí, que sería esta.

[257:20] Para que entendáis bien lo que estamos haciendo, vamos a ver paso a paso lo que hace esta función de registro. Aquí definimos la vista. Esta función controla lo que ocurre cuando el usuario entra en la página de registro, es decir, cuando carga esta misma página.

[257:37] Lo primero que hace es comprobar el método de la solicitud, si es post o es get. Django verifica si el usuario ha enviado el formulario, es decir, ha pulsado este botón de registrarse. Si pulsa ese botón, será una petición de tipo post. Por lo tanto, lo que hay en este if sería true y ejecutaríamos este código de aquí.

[258:01] En ese caso, lo que se hace es crear una instancia, un objeto del formulario registro formario ha escrito en los campos. Este registro form viene del archivo forms que tiene esta clase. Es una clase personalizada para utilizar los campos que nosotros queramos. Yo quiero que en el registro se utilice entonces username, email, password 1 y la confirmación con password 2. Lo que se hace en el siguiente if es validar el formulario. JJango va a revisar que todos los datos cumplan las reglas del

[258:37] modelo. Por ejemplo, las contraseñas que sean iguales, que coincidan. que haya un email válido, un nombre de usuario único, etcétera. Todo esto lo trabaja de fondo. Tiene muchas funcionalidades ya creadas para que nosotros no tengamos que hacer toda esa lógica. Por lo tanto, tenemos una capa de abstracción bastante grande. Con este form save vamos a guardar el nuevo usuario si los datos son válidos según las reglas que tiene establecidas JJo, las que acabo de comentar. Si por ejemplo las contraseñas

[259:09] no coinciden, pongo 1 2 3 4 y aquí pongo 10, no coincidirían. Completo el usuario, completo el correo correctamente y aquí me va a decir los campos de contraseña no coinciden. Valida primero el formulario antes de salvar el usuario, antes de guardarlo.

[259:34] Si las contraseñas coinciden, sí que lo va a guardar. Y supongamos que tenemos una contraseña igual. Y aquí tenemos todo esto aparentemente correcto. Le damos a registrarnos y aquí pues hay otra comprobación. La contraseña es demasiado corta. En este caso sí que he escrito la misma contraseña, pero no es una contraseña segura y nos da una serie de pautas obligatorias. Y lo mismo hará con esto.

[260:02] Si yo le pongo un correo inválido como esto, que no tiene ni a ni nada de eso, pues me va a decir que la dirección no es válida. Va comprobando estas cosas, el campo es obligatorio, etcétera. Pues todo esto no lo tenemos que escribir nosotros, ya está escrito en el framework. Que quede claro que si pasamos esta validación se guarda el usuario en la base de datos. Es decir, para que un usuario se guarde entonces en la base de datos, dicho usuario tiene que completar los campos correctamente,

[260:37] ya que serán validados, y finalmente darle al botón de registro. Se cumplen esas dos condiciones, se guardará el usuario. Dentro de esta validación, no simplemente salvamos el formulario, sino que hacemos otras cosas, como por ejemplo esta llamada a login. Después de registrar al usuario, quiero que automáticamente este haga login la primera vez. Pues en ese caso pongo esto mismo y así me permite hacer automáticamente un inicio de sesión. Es decir, yo completo esto, le doy a

[261:13] registrarme y aquí saldría mi usuario con la sesión iniciada. Una vez completado el registro, me redirecciona a home, a esa URL, que es básicamente la página principal. Pues eso es lo que quiero una vez se registre el usuario, que salga de esta página de registro y que vaya a lo que es el home, que le lleve aquí, ya que en esa página de registro ya no tiene que hacer nada.

[261:40] Y así es más intuitivo que se ha registrado correctamente. O podríamos ponerle un mensaje, se ha registrado correctamente y ya está y que vaya donde quiera ir. Tenemos otra condición con este else. En caso de que el método de solicitud no sea post, quiere decir que se hace un get de obtener. Hacemos lo mismo de registro formar el formulario vacío. En este caso no hacemos esto, no le pasamos el post con los datos del usuario, sino que ponemos un formulario vacío, formulario de registro. ¿Qué

[262:16] quiere decir esto? Pues mira, estoy en la página de inicio. Aquí para cargar la página de inicio se hace una petición get, como se puede apreciar por aquí. Pues yo me voy a la página de registro y se tiene que hacer otra petición get en este caso porque yo no estoy enviando datos del formulario, no estoy haciendo un post. ¿Veis? Aquí se ha solicitado con un get la página de registro y lo que necesitamos es que el formulario de primeras esté vacío para que el usuario luego pueda hacer

[262:49] post. Eso es lo que pasa cuando se carga esta página sin hacer post. Ahora, si completo con estos datos y le doy a registrarme, haré un post. Ya me he registrado, me ha llevado a la página principal y como podéis ver por aquí me pone que he hecho un post y luego este get es de la página principal que acaba de cargar.

[263:13] Que voy de nuevo a la página de registro cerrando sesión, pues lo que va a pasar es que me hace un get porque yo no estoy enviando datos. Solo hará post en el caso de que yo rellene este formulario y envíe con registrar. No solo crea esta instancia vacía para poder rellenar el formulario, sino que también devuelve la plantilla. Esto es básico, ya que la primera vez que entramos al registro tiene que estar vacía y luego podemos hacer un post cuando queramos.

[263:45] Lo siguiente que tenemos es la vista de login que nos cargaría esta página con este formulario. Aquí también lo primero que comprobamos es el método post, si se ha enviado o no. Esto ocurrirá cuando el usuario le dé al botón de ingresar. Si no, cargamos esta parte del else. Si no es este if, tenemos este else. Caso de que no sea post, es get. Y lo que hacemos es cargar de la misma forma el formulario vacío y solicitar que se cargue la plantilla para tener el formulario así vacío.

[264:22] Aquí lo que hacemos es crear una instancia de tipo login form pasándole tanto el objeto request, el de la solicitud, como los datos enviados por el usuario en el post. Es decir, creamos un objeto con estos datos, los que ha enviado el usuario. Después se hace la verificación.

[264:44] Si es válido, cargamos este if y si no es válido, este else. Aquí lo que hacemos es sacar errores en la consola en el caso de que el login no sea válido. Para comprobar las credenciales con este Formis Valid, Diango comprueba que exista un usuario con ese nombre.

[265:05] y que la contraseña coincida con dicho usuario. Esto lo consulta en la base de datos. Si no es así, pues este formulario no valida y pasaríamos a esta parte. Si las credenciales son válidas, pasamos a esta parte. El método get user obtiene el objeto usuario correspondiente. Y aquí con este login, Jjango registra al usuario en la sesión permitiendo que acceda a las vistas protegidas.

[265:34] como podría ser esta. Ahora explicaré el decorador. Lo que quiero decir con esto es que podríamos acceder a las partes de la aplicación del sitio web que están restringidas para cierto usuario o para los usuarios en general. Finalmente nos llevaría a la página home una vez iniciamos sesión, pues voy a iniciar sesión correctamente.

[265:59] Le doy a ingresar y ahora sí se ha hecho un post correctamente y un get. El get es esto para cargar esta página. Para terminar tenemos la vista de cerrar sesión, logout view y perfil view para poder ver el perfil del usuario. Vamos a utilizar esta vista. Pues para ello primero necesitamos iniciar sesión.

[266:31] Una vez tenemos iniciada la sesión, ya está disponible este botón de cerrar sesión. Este botón lo que hace es llamar a esta vista y la vista lo único que hace es hacer un logout, una solicitud para cerrar sesión y esto lo hace yao sin que nosotros tengamos que hacer nada, nada más que esto. Y nos redirecciona la página del login por si queremos iniciar sesión con otro usuario. Pues cerramos sesión y ahí vamos. O podríamos poner home si preferimos.

[267:11] Aquí ahora cerraríamos sesión y me llevaría al home. Si ya estoy en el home, pues ya está. Lo voy a dejar como estaba con ese login. En perfil view tenemos un decorador llamado login required. Este decorador indica que solo los usuarios autenticados pueden acceder a esta vista. Si alguien intenta entrar sin haber iniciado sesión, Jango lo redirige automáticamente a la página de login.

[267:39] Por ejemplo, voy a iniciar sesión aquí y voy a ir a mi perfil. Tendríamos esa URL usuarios/perfil. Aquí estaría la página de perfil, que es la que carga aquí con este request. Y si yo intento acceder a esta URL teniendo la sesión cerrada, no estoy con ningún usuario, automáticamente me lleva la página de login. No me deja ver esa página porque no he iniciado sesión con ningún usuario, entonces no hay ningún perfil que ver. Si desprotegemos esta vista sin el decorador, guardamos cambios

[268:30] e intentamos, siendo invitados, acceder al perfil. Ahora sí que podemos acceder. Como no tengo ningún usuario cargado, pues no sale el nombre de usuario ni mail. Y esto si fuese un acceso restringido, pues sería un desastre.

[268:48] Por lo tanto, con esto tan simple, protegemos esa vista. Por si alguien se pregunta para qué es este archivo forms.pas clases que estamos utilizando las vistas, es una forma de ahorrarnos mucho trabajo. Sin este forms.p podríamos hacer los formularios. Podrían funcionar estos formularios de registro o cualquier otro, pero tendríamos que escribirlo todo manualmente. Por ejemplo, validar manualmente los datos en la vista, revisar si las contraseñas coinciden, si el usuario ya existe, si

[269:19] el email tiene un formato correcto. Todo esto no lo estamos haciendo las vistas. También tendrías que manejar por tu cuenta los errores, mostrárselos al usuario como hemos visto que salían y todo eso se puede hacer muy complicado.

[269:31] Pues de esta forma creamos un sistema, una forma reutilizable y muy fácil de utilizar formularios con jango. Simplemente le tenemos que decir en cada formulario que tengamos y que vayamos a utilizar en las vistas, pues qué campos o qué cosas tenemos que utilizar.

[269:47] Empecemos con la plantilla registro HTML. El formulario de registro empieza aquí con esta etiqueta HTML form. Entonces creamos en una plantilla un formulario de tipo formable que el formulario envía los datos con post, que es necesario para quejango reciba los datos. Y con este token DTL que tenemos que poner obligatoriamente vamos a prevenir ataques de tipo CSRF.

[270:15] El campo de usuario está definido en este DIP. es esto que tenemos aquí. Por un lado tenemos la etiqueta, que sería este label de aquí y el campo que sería este input. Pondremos este name con lo siguiente en value, esto que hay por aquí, si hay errores de validación se va a mantener el valor que ponga el usuario. Por ejemplo, que pongo esto y hay un error de validación como ha ocurrido ahora, pues se está manteniendo ese valor, no se quita. Si no hay nada escrito, tenemos aquí un valor por defecto de string

[270:56] vacío. Es decir, si enviamos este formulario vacío, pues por defecto nos saca esto vacío en el campo. Finalmente tenemos un condicional if que abarca toda esta zona con un DIP dentro. Este lo que hace es consultar posibles errores en el campo username y gracias a ello nos sale esto.

[271:27] Lo mismo se hace con el resto de campos con pequeñas variaciones. Aquí tenemos el campo de correo, este mismo, la etiqueta que pone correo electrónico y el input que sería este. lo mismo, exactamente lo que aquí en name miramos que sea el campo email en lugar de username. En este value mantenemos también el valor de la misma forma, si yo ya he puesto algo por aquí, cuando intentemos validar y haya un error, se va a mantener y en caso de que no ponga nada, pues pondrá por defecto siempre un string

[272:08] vacío. Si hay errores, entramos en este if, que lo que hace es mostrarnos los errores relacionados con el correo, como esto. La contraseña la tenemos dividida en dos campos. La primera es el campo contraseña y luego tenemos el campo de confirmación de la contraseña. En campo contraseña nos enfocamos en password one, la que teníamos ahí en ese forms como primera contraseña. Y como diferencia fundamental frente a los otros campos tengo esto, estos iconos creados con font Ausom. Aquí tengo la

[272:51] classe. I para poder mostrar la contraseña u ocultarla. Lo de fontusom simplemente es un pequeño icono, no tiene la funcionalidad para hacer esto. La funcionalidad está aquí. Fijaros que hay un oncilick toggle password. Esto es JavaScript. Al hacer clic se muestra la contraseña o se oculta.

[273:16] Esto lo tengo en scripts. Tenemos archivos estáticos y está la hoja de scripts. En la hoja de scripts he añadido esta funcionalidad para mostrar u ocultar la contraseña. La función togle password se utiliza en los dos campos, como podéis ver.

[273:36] Primero obtenemos el elemento por ID, tanto del campo como del icono. Si os fijáis en registro, tenemos ID tanto para los iconos como para el campo. Así asociamos ambas cosas. Este if comprueba si el campo está actualmente configurado como tipo password, es decir, si los caracteres están ocultos. Por defecto, este campo, el input type, es password. Y si un campo es de tipo password, por defecto se pone esto con asteriscos. Si está oculto, si es de tipo password, entonces nos cambiará a tipo text.

[274:22] Por ejemplo, usuario es un tipo text. Por defecto aparece lo que escribimos. en contraseña, ¿no? Pues cuando pulsamos esto que es password actualmente se convierte en text permitiendo ver lo que hemos escrito. Y además eliminamos el icono de ojo este que tenemos por aquí por defecto, cambiándolo por este con el que tiene la barra.

[274:51] En caso contrario, que no sea tipo password por defecto, quiere decir que es tipo text. En este caso, pues que me lo ponga en tipo password, que censure la contraseña y que cambie ese icono con el ojo, con la barra y ponga este otro. Eso es lo que hace. Lo del els else pasará entonces ahora mismo cuando nos encontramos en esta situación y hacemos clic aquí.

[275:22] Ahora pasaría lo de lif si aprieto esto de font lo he puesto en la plantilla base. Ahí estaría por si no lo tienes cargado. Y el campo de confirmación de contraseña es exactamente lo mismo, pero utiliza password 2. Jango ya se encarga de comprobar que ambas sean iguales. El botón de envío está en este DIP con este button.

[275:51] Simplemente lo que hace es enviar el formulario. Nos vamos al formulario de login y lo que nos encontramos es un formulario igual con un método post. El token CSRF. Por aquí tenemos un condicional if que lo que hace es mostrarnos ciertos errores. Esta class determina los colores que tenemos. Esto lo he cambiado warning el alert. Y si yo me equivoco, pongo datos incorrectos, pues aquí estos alert, estos mensajes me aparecerán con color estilo warning de Bootstrap. Estos son clases de

[276:33] Bootstrap. Si lo quiero poner esto en rojo, al ser un error, pues lo puedo poner con danger. Si pusiésemos una alerta informativa en lugar de error o de advertencia, pues pondríamos por ejemplo primary y con esta etiqueta de TL nos encargamos de mostrar los errores del formulario.

[277:07] Por aquí tenemos el campo de usuario y el campo de contraseña. funcionan exactamente igual, utilizando este el campo formame y este otro el campo form. En este caso solo hay una contraseña. No tenemos contraseña uno y contraseña dos porque ya está registrado.

[277:29] Simplemente el usuario tiene que poner su contraseña. La página de perfil es sersencilla, utiliza toda la herencia prácticamente de base HTML para mostrarse y poco más. nos encontramos ese H2, que lo que hace es mostrar esto.

[277:54] El párrafo muestra esto, el email lo recupera con la etiqueta de tele user. Tendríamos este cerrar sesión, que es un enlace a la URL logout. Esta URL logout lo que hace es llamar a la vista para cerrar sesión y ya está. Cierra sesión.

[278:15] Y este es el modelo con el que estamos guardando los usuarios con la clase usuario hereda de abstract user. Esto significa que esta clase tiene todos los campos y métodos que ya tiene un usuario de Yangjango por defecto, como username, password, email, first name, last name, etcétera. La ventaja de esto es que utilizamos ya un sistema de usuarios que ya está bastante definido, que tiene la mayoría de cosas que podamos necesitar.

[278:43] Y si queremos sobreescribir algún detalle de algún campo concreto, como por ejemplo el de email que tengo ahí, o queremos añadir más cosas para los usuarios que no vengan por defecto, pues lo podemos hacer así con nuestra propia clase de usuario. En lugar de utilizar abstracter de manera directa, pues creamos una clase propia que tenga las funcionalidades heredadas de esta y así podemos ir añadiendo más cosas. El campo email ya existe en abstract user, pero en el modelo original no es único este

[279:18] campo. Y aquí al escribirlo de nuevo el atributo dándole un valor, lo que hacemos es sobreescribirlo. No añadimos un campo nuevo a la clase, sino que estamos cambiando el comportamiento por defecto en el campo email que tienen los usuarios de Yango. Y lo hacemos con este unique true. Eso quiere decir que con un mismo correo electrónico no podemos tener más de un usuario. Si esto lo quitamos o ponemos false, pues ya está.

[279:44] Con un mismo correo podemos tener tantos usuarios como queramos. Después tenemos un campo groups que lo que hace es crear una relación de muchos a muchos con el modelo group. En palabras sencillas, esto quiere decir que cada usuario puede pertenecer a varios grupos y cada grupo puede tener varios usuarios. Es sencillamente para administrar grupos y permisos.

[280:06] Y el campo user permissions nos va a servir para asignar permisos individuales a un usuario en Jango. Cada permiso representa una acción específica que el usuario puede realizar, como por ejemplo añadir, editar o eliminar objetos de un modelo. Estos permisos se suelen gestionar a través de grupos para globalizar usuarios, pero teniendo esta opción podemos dar permisos personalizados directamente a un usuario concreto sin depender de todo un grupo.

[280:34] Estos son temas algo más avanzados para la gestión de usuarios de Yangango y por lo tanto los dejaría para alguna serie de videotutoriales un poquito más complejos, ya que aquí he explicado muchísimos temas y si profundizase en todos no acabaríamos ni en 50 ni en 100 horas. Y son cosas que a medida que vayáis aprendiendo, practicando y necesitando ciertas cosas más específicas, iréis aprendiendo.

[281:01] Por último, os voy a explicar lo que tengo en el archivo admin. Esto nos va a servir para mostrar cosas relacionadas con los usuarios en el administrador. Por si no tenéis todavía usuario administrador o no os acordáis de cómo se hacía, vamos a crear uno nuevo.

[281:18] Cerramos el servidor para volver al prompt normal de la consola. Y con el archivo manage.p vamos a escribir lo siguiente. Lo escribimos de la siguiente forma y presionamos enter. Aquí nos va a pedir el nombre de usuario, un email, una contraseña y la repetimos.

[282:03] Superusuario creado correctamente. Para llegar a la administración, por si no lo recordáis, nos vamos a ir a esta dirección donde esté ejecutado vuestro servidor y ponemos barra admin. ¿Vale? Y ahí evidentemente que iniciar el servidor de nuevo, pues ponemos run server.

[282:39] Bien, ya tenemos nuestro modelo de usuarios por ahí registrado en admin. Este apartado nos aparece en admin gracias a este archivo donde se configura todo lo que queramos que salga. Pues yo quiero utilizar el modelo usuario y luego le digo de qué manera utilizarlo, qué campos quiero mostrar y demás.

[283:02] Pues ahora vamos a usuarios y por aquí tendremos todo esto. Por ejemplo, aquí tengo dos usuarios administradores superusuarios y los tengo marcados como es staff. Esto lo puedo ver gracias a lo que he puesto por aquí. Tenemos este istaff que hemos decidido mostrar en esta tabla. Si quisiésemos solo el usuario e email, pues podríamos poner esto así. Guardamos cambios, recargamos y vemos ya cómo se modifica la tabla.

[283:38] Estos datos siguen existiendo, por supuesto, en la base de datos no se ha eliminado nada, pero nosotros definimos de qué manera trabajar con el administrador de Yango. Si solo necesitamos visualizar en la lista esta información, estos dos campos, pues lo dejamos así. Si no ponemos aquí más datos, iríamos a un usuario como por ejemplo este y podemos ver más detalles.

[284:01] Esto aparece esta vista gracias a esto. Tenemos por un lado username, email y password. La contraseña aparece encriptada. No podemos ver qué contraseña es. Lo que sí que podemos hacer desde el administrador es restablecerla.

[284:22] También podríamos asignar a un usuario, por ejemplo, este, que es un usuario normal, que sea staff, que sea administrador. Con esto ya podría acceder a este panel, así que mucho cuidado. Si tenemos un sistema de usuarios activos o inactivos que tengan, por ejemplo, que activar su cuenta de usuario por correo pinchando en un enlace, pues por defecto tendrían que salir inactivos, así. Y cuando pinchas en ese enlace, pues tendríamos que hacer una vista correspondiente para que pudiese activar al usuario,

[284:57] evidentemente, para que no tengamos que venir cada vez que confirmen un correo, activarlo manualmente. Y aquí tendríamos permisos de usuario, cosas que pueden hacer. Os recomiendo que copiéis todo esto y que lo vayáis analizando con calma, que vayáis haciendo pruebas de ver cómo queda cada cosa, qué se borra por aquí, que vayáis preguntando a una inteligencia artificial, ya que considero que es la mejor forma de aprender, ir investigando.

[285:25] Antes de terminar, un par de cosas que casi se me olvidan. Puesto que estamos trabajando con un modelo nuevo, el de usuarios, tenéis que hacer las migraciones, no os olvidéis. Para ello, cerramos el servidor aquí donde estamos con el manage, make migration si tenemos más de un modelo o ponemos de la app usuarios, que es la última que me queda sin hacer migraciones.

[285:55] En mi caso nos han detectado cambios en la usuarios porque ya había hecho las migraciones y finalmente pondríamos migrate. Y la otra cosa que os tenía que comentar son los cambios en base HTML. Con estos cambios de base HTML podemos tener en todas las páginas este pequeño menú de usuario con su nombre, con los botones de iniciar sesión y registrarse o lo que sale en caso de que ya tengamos la sesión iniciada. Todo esto se muestra gracias a base HTML, la plantilla de la que heredan todas las páginas. Y aquí

[286:31] tendríamos todo eso para cargar este pequeño menú. Es un listado de tipo UL con un DIP que tiene ciertas reglas. Por ejemplo, el color de fondo. Esta imagen es un PNG que no tiene color de fondo, es transparente y por lo tanto he puesto esta etiqueta de TL. Si el usuario está autenticado, que se muestre el fondo de la imagen de color blanco. En caso contrario de este color amarillo.

[287:00] Pues si yo inicio sesión ahora mismo, el color de fondo de mi usuario será blanco. Pues podemos hacer estas cosas. Esto es opcional, por supuesto. Por aquí nos encontramos otra cosa, un if else que sirve para cargar una imagen u otra. En caso de que el usuario esté autenticado y tenga avatar de perfil personalizado, pues se cargaría una imagen determinada.

[287:32] En caso contrario de que no tenga configurada una imagen, se va a cargar la imagen por defecto, que es esta misma de aquí. puesto que no tenemos para configurar avatares, pues se va a cargar siempre al final la imagen por defecto que es esta. Luego le dice con este spam hola y si el usuario está autenticado le va a mostrar en tipo de color rojo con este textanger su nombre de usuario, el nombre de usuario que sea de cualquier usuario el que haya iniciado sesión concretamente

[288:08] y en caso contrario de que no esté autenticado, pues pondrá invitado. Luego tenemos los botones con otro que se encarga de si está autenticado pues saque estos botones determinados con el enlace al perfil, con el enlace al logouticado nos vamos a esto, botón de login y botón de registro con esas URLs correspondientes.

[288:36] Y gracias al archivo URLs, pues podemos llamar a dichas URLs muy fácil y hacer estos enlaces pues de esta manera dinámica, enlaces que nos sirven desde esta página, desde esta otra, desde cualquier página de nuestro sitio web.

[289:01] En este capítulo te voy a enseñar a crear un carrito de compras con Yango, este que puedes ver por aquí. Aprenderás a implementarlo en cualquier proyecto de Yango, no solo te va a servir para este proyecto mismo. El carrito es bastante sencillo. Le damos ahí y si tenemos iniciada la sesión podemos ver un carrito con ciertas cantidades añadidas.

[289:21] Podemos eliminar objetos y vemos que nos salen datos como el precio, la cantidad, nos hace un subtotal. Por aquí va sumando el total. Lo bueno de este carrito es que tiene persistencia. Quiere decir que yo estoy con este usuario, pues en la base de datos se está guardando lo que yo tengo con este usuario en el carrito y se guardaría de la misma forma de todos los usuarios.

[289:45] Cada uno tendrá entonces su propio carrito. Si cerramos sesión y volvemos a entrar, lo podremos comprobar. Ahí podemos verlo. Este carrito lo vamos a hacer en una app dedicada para poder tener el control sobre todo lo que envuelve al sistema del carrito y después si queremos implementar novedades, pues lo podremos hacer muy fácil, simplemente editando la app del carrito y esta app va a tener comunicación con la app de usuarios y con la app de catálogo, ya que tiene que guardar elementos del catálogo y los

[290:25] objetos que se vayan guardando en el carrito tienen que estar relacionados a cierto usuario concreto para que cada usuario tenga su propio carrito. Pues empecemos con lo fácil, que sería poner este comando startup carrito. Lo hacemos en la carpeta del proyecto.

[290:42] Lo siguiente que tenemos que hacer es ir al archivo settings. En settings iremos a apps instaladas y añadiremos carrito. En la carpeta de la app vais a crear esta carpeta de plantillas carrito y plantilla ver carrito. HTML. Os recomiendo que vayáis poniendo los mismos nombres que yo para no liaros.

[291:07] Luego tenéis que poner este context processors y el URLs que no viene con la creación de la app de momento. Eso. Empecemos analizando el archivo models para ver los modelos que tenemos. Por un lado tenemos la clase carrito y por otro la clase ítem carrito. Nos encontramos estas importaciones, las típicas de siempre. Settings para utilizar el archivo de settings, models para utilizar los modelos y además importamos del catálogo. El modelo juego. Es importante puesto que nuestro carrito

[291:41] tiene que funcionar junto con el catálogo de juegos o de productos, sino cómo vamos a añadir elementos. ¿Qué elementos? Pues los que hay en el catálogo. En la clas usuario creado y actualizado. Fijémonos en usuario. Esto va a crear un campo que relaciona cada carrito con un solo usuario. Lo hacemos con este tipo de relación, one to one field. Es importante que cada usuario solo tenga un carrito y que cada carrito sea de un mismo usuario. En settings, con out user model, con esta

[292:19] constante le decimos a que utilice el modelo de usuario activo en el proyecto. Ya sabéis que por defecto el modelo que utiliza Yango es user, pero nosotros utilizamos uno propio con ciertas modificaciones. Pues este out user model lo tenemos aquí en el settings.p.

[292:38] configuramos esto mismo, pues el modelo que utiliza es usuarios.usu usuario, el de la app usuarios. Así ya tenemos enlazado el carrito con la app de usuarios y con el catálogo en cierto modo. Este ondelete nos va a servir para si un usuario es eliminado de la base de datos, borra su cuenta, pues que también se elimine en cascada el carrito que tiene para no dejar basura en la base de datos, ya que no nos sirve de nada tener carritos fantasma de usuarios que no existen. y con el nombre relacionado,

[293:12] carrito, nos permite acceder al carrito de cada usuario de manera simple. Por ejemplo, tenemos el usuario test 10, pues sería test 10 pun carrito, su carrito. Así, cuando queramos ver, por ejemplo, en el admin el carrito de cierto usuario, pues nuestro código funcionará.

[293:34] Aplicará test10 carrito y nos mostrará los datos relacionados. Hagamos una prueba. Yo ya tengo el admin configurado. Vamos a añadir algún juego al carrito. Este, por ejemplo, este otro. Y ahora nos vamos a ir al admin para ver si podemos acceder a test10. Carrito.

[294:00] Aquí no me deja porque no soy superusuario y por aquí tengo añadido con el admin esto, carritos. Pues tengo ahí la visualización del carrito del usuario Test 10 o de los que hubiera y por lo tanto puedo saber si mis clientes están pensando en comprar algo y qué cosas son, qué cosas le gusta más a la gente o qué cosas crean más indecisión a la hora de finalizar una compra. iríamos a test 10 y podemos visualizar ese carrito e incluso podríamos modificarle el carrito, aunque por supuesto no lo vamos

[294:44] a hacer. Si nos vamos atrás veremos que aparece creado y actualizado. Pues esto es gracias a estos dos campos creado. Guarda la fecha y hora exacta en que se creó el carrito de manera automática. Y después con esto, con actualizado, si se actualiza, se modifica el carrito, pues va a salir ahí la fecha y la hora. Todas estas cosas las podemos ir viendo a través del shell en la consola. No hace falta que las consultemos en el admin. Si es algo puntual, nos viene muy bien hacerlo desde aquí

[295:21] directamente. Ejecutamos el shell con Python Manage. P shell. Y una vez dentro, vamos a poner lo siguiente. Tenemos que hacer las importaciones necesarias, que son estas dos de aquí, para utilizar el modelo de usuario y carrito. El modelo de carrito. Si es esto lo que queremos consultar. Ahora mismo yo quiero hacer una consulta sobre un carrito que está relacionado con un usuario, pues importo esto. Se obtiene el modelo de usuario para tenerlo en esta consola interactiva. Creamos una

[296:00] variable llamada test 10 o lo que sea. En este caso voy a consultar el usuario test 10 para que almacene el usuario test 10 para que esté disponible en el espacio de nombres. Y aquí hago el acceso con ese rated name. Pongo test 10. Ya tengo el objeto del usuario.

[296:16] Carrito y aquí me sale carrito, carrito de compra test 10. Esto gracias al STR este que tenemos por aquí. También si miro todos los elementos que tiene con esto, me saldrá el query resy set de item carrito con lo que tiene el usuario. Todo esto lo podemos ir consultando y el total precio. Podemos ir haciendo lo que queramos.

[296:42] Este método nos sirve para mostrar esto mismo cuando queramos consultar un objeto. Carrito de test 10. Aquí obtiene usuario username. Podemos hacer una prueba. Añado compra, guardo, actualizamos y aparece carrito de compra.

[297:06] Con el método Total Items podemos calcular el total de juegos que hay en el carrito de productos. Y con total precio vamos a calcular el precio del carrito sumando el subtotal de cada item. Si nos vamos al carrito, podremos ver con ciertos elementos que cada elemento tiene un precio y a ese precio se le suma por la cantidad o se multiplica por la cantidad. que hay dos de 39,99, pues se suma esto dos veces.

[297:37] 39,99 * 2, saliendo un subtotal. Después, si tenemos más elementos, vemos que hay dos subtotales y un total final y ahí estaría ese total precio. Este segundo modelo, item carrito nos sirve para que cada objeto de esta clase sea un registro de un juego dentro de un carrito. tenemos el carrito, el contenedor principal y luego cada elemento pues lo tenemos gestionado con este otro modelo para tener detalles específicos.

[298:18] En el campo carrito tenemos una relación de tipo clave foránea con una relación de muchos a uno. ¿Qué significa esto? pues que muchos items pueden pertenecer a un mismo carrito, pero cada item solo pertenece a un carrito. Aquí podemos tener dos elementos repetidos de este juego, pero estos dos elementos pertenecen a un carrito, a un mismo carrito. No pertenecen a cada carrito que tenga cada usuario, sino que cada uno tiene sus elementos contenido.

[298:50] tenemos este cascade que nos va a servir para que si se elimina el carrito se vacía, los items también se eliminen automáticamente. En el campo juego tenemos otra relación igual, muchos items pueden apuntar al mismo juego, pero cada item solo tiene un juego asociado. Por ejemplo, tenemos el juego Dogo Racing en este carrito. Es un elemento que está en este carrito, pero también este mismo elemento, el Dogo Racing, puede estar en otro carrito diferente. Sin embargo, ambos elementos

[299:25] que están en diferentes carritos apuntan al mismo elemento que sería este juego. Con esto podríamos tener datos de, por ejemplo, cuánta gente tiene en el carrito cierto objeto. Y finalmente un campo para la cantidad. Este tipo de campo, positive integer field, solo permite números enteros positivos, 0 1 2 3 4. No acepta ni decimales ni negativos, ya que no nos sirve tener en un carrito elementos negativos o cantidades con decimales, no tendría sentido. Dentro de esta clase tenemos

[300:04] anidada otra clase más que nos sirve con esto que tenemos aquí para hacer una restricción en la base de datos para evitar duplicados. Esto que ves aquí significa que no puede existir más de un elemento con el mismo juego en el mismo carrito.

[300:21] Lo que está ocurriendo aquí. Yo tengo dos elementos de Urban Darkness porque quiero comprar dos, pero no quiero que este elemento se duplique, que saque otra ficha solo para poner Urban Darnest por aquí y poner de nuevo otra ficha más aquí abajo, sino que quiero que se agrupen así solo tengo un mismo elemento del mismo tipo en el mismo carrito, aunque tenga muchas unidades. Por lo tanto, si ahora añadimos otro Urban Darnest, al añadir al carrito, lo que va a ocurrir es que en lugar de añadir otro elemento

[301:02] más, suma simplemente una cantidad. le estamos obligando a sumar cantidades. Y esto en realidad, aunque sean cuatro juegos, son dos objetos con una cantidad de tres y una cantidad de uno, no son cuatro objetos. Este método STR pues nos sirve para la consola o para el admin. Vemos ahí que sale Urban Darkness por TR y Dogo Racing por uno. Ya me sale la cantidad por aquí, pero bueno, son datos informativos. Y el método subtotal calcula el subtotal del item multiplicando el precio del juego por la

[301:40] cantidad. Así tenemos calculado el subtotal, que es este elemento que vemos por aquí. Después en carrito se suma en total precio. Todos esos subtotales se van sumando. Acordaros siempre de hacer las migraciones. Para las migraciones ponemos pythonanage.p make migrations. Carrito. No se han detectado cambios en mi caso porque ya he hecho las migraciones para poderte mostrar todo esto. Y finalmente pondríamos migrate y haríamos efectivas esas migraciones.

[302:21] Nos vamos a ir al archivo views.pidades de este carrito. Tenemos cuatro vistas. Agregar al carrito, ver carrito, eliminar del carrito y limpiar carrito. Las cuatro están protegidas para usuarios con sesión iniciada. Por ejemplo, la función ver carrito me sirve para ver el carrito de un usuario concreto. Si intento acceder al carrito sin un usuario concreto, pues no voy a poder ver el carrito. Por ejemplo, estoy de invitado, no tengo iniciada la sesión. Si quiero ver el carrito, me

[302:53] dirá que inicie sesión. Todo esto gracias al decorador que protege la vista y redirección al usuario a esta página. Vale, ya he iniciado sesión. Aquí tengo un carrito y si le doy utilizo la vista ver carrito. Esta me permite visualizar todo esto.

[303:14] La funcionalidad de agregar al carrito la tendríamos aquí con este botón. Añadimos y utilizamos esta vista. Eliminar del carrito sirve para eliminar un elemento. Aunque tenga más cantidad que uno, eliminará todo ese elemento. Y limpiar carrito sirve para eliminarlo todo de una vez, para vaciarlo. Y eso es lo que hace. En las importaciones, pues lo mismo de siempre. Hacemos estas importaciones que las vamos a utilizar en el código e importamos de la app catálogo el modelo juego y de esta misma

[303:54] apportar los modelos que acabo de explicar. Veamos en detalle pues esta vista, la de agregar al carrito. Aquí se va a buscar el juego con el ID recibido por parámetro con juego ID para identificar qué juego es el que se está añadiendo al carrito. En caso de que no exista ese identificador, se va a devolver un error 404 para poner esa página de error y redireccionar al usuario o lo que queramos hacer, pero para manejar el fallo. ¿Cuándo podría ocurrir? Si tenemos 10 productos están ahí, no

[304:30] tendría por qué apuntar esto a un ID inexistente. Pero supongamos que un administrador elimina un producto del catálogo, está descatalogado, que en principio sería mejor no eliminarlo, pero por lo que sea hay un tema legal y hay que eliminarlo.

[304:46] Y ciertos usuarios están visitando el sitio web o lo han visitado hace poco, por lo tanto lo tienen en caché. intentan añadir ese producto al carrito y esto manejaría el error porque no encontraría ese identificador en la base de datos. Este identificador lo sacamos del modelo juego. En esta parte de aquí vamos a buscar si el usuario ya tiene un carrito. Si no existe, vamos a crear uno automáticamente. Y gracias al guion bajo que podéis ver ahí después de la coma, vamos a ignorar el segundo valor que

[305:16] indica si fue creado o no. La función get devolver una tupla, una tupla con dos posiciones, el objeto y un valor buleano de si existe o no, true o false. Puesto que aquí solo necesito el objeto del carrito y quiero descartar ese valor buleano para luego no tener que acceder a posiciones de tupla, sino tener simplemente carrito ahí guardado, pues voy a descartar con esto de aquí. Se va el primer valor de la tupla aquí y el segundo aquí, que luego es descartado, no se utiliza.

[305:55] En la siguiente línea tenemos dos variables más y utilizamos de nuevo get or create. Esta línea lo que va a hacer es buscar si el juego ya está en el carrito y si no está lo va a crear, si ya existe lo reutiliza. En este caso sí que estamos utilizando el valor buleano.

[306:12] Por aquí en item obtenemos el objeto del juego y con creado obtenemos el buleano. Con este if vamos a contemplar que si ya está creado añada uno a la cantidad de ese mismo elemento. Si no está creado, la cantidad por defecto es uno. No necesita entrar en este if. Y si ya está creado, sí que necesita entrar en if para incrementar en uno. Finalmente guarda los cambios en la base de datos con esto, ya sea la modificación del incremento o crear el elemento cuando se añade por primera vez. Una vez añadido

[306:50] el juego, redirige al detalle del juego que se acaba de añadir para que nosotros no salgamos básicamente de la página. Estamos aquí. Vamos a añadir este y al hacerlo no salimos de esta página, pero sí que hay una actualización.

[307:07] Ahí estaría. En este caso, al hacer esta misma acción, hemos utilizado esto, pero no hemos utilizado esto. No ha tenido que incrementar porque el juego no existía en el carrito. Ahora, cuando yo le dé otra vez estando ya este objeto en el carrito, ahora sí que ha entrado en este if para incrementar la cantidad en uno.

[307:37] Nos vamos a la vista. ver carrito precisamente en la que estamos. Cuando le damos a este botón para ver el carrito, desplegamos esta vista, la ejecutamos. Esto busca el carrito del usuario que está haciendo la solicitud. Si no existe, crea uno nuevo automáticamente y le saldrá que está vacío por defecto. Y el guion bajo de nuevo ignora ese segundo valor true o false que no necesitamos. En items se van a obtener todos los item carrito asociados al carrito, todas las agrupaciones de un

[308:11] mismo juego. Con total vamos a calcular el total del carrito sumando los subtotales de cada item carrito, es decir, de cada conjunto. Y finalmente renderizamos con este return la plantilla ver carrito. Le pasamos un diccionario con carrito, que es el carrito del usuario, items, que va a ser la lista de elementos en el carrito y total es el precio total del carrito. Y así podemos conseguir mostrar esto.

[308:42] Toda esta interfaz quitando los datos proviene de esta plantilla que ahora explicaré. ver carrito. Veamos la vista para eliminar del carrito. Esta es la que podemos utilizar con esta acción, la de eliminar un elemento. Esta acción elimina, aunque haya cantidad uno, cantidad dos o cantidad 10, todo el conjunto de un mismo juego que tengamos en el carrito.

[309:07] Si tuviésemos otros juegos como este, si le damos a este botón, solo eliminaremos platformar carrito, pues eliminaríamos los dos conjuntos o los que hubiera de golpe. En el primero se buscan estos conjuntos y si el elemento finalmente existe, if item es igual a true significa esto, pues que elimine ese elemento después que me redirija a ver carrito a esta misma plantilla. Cuando yo haga esto, me redirige aquí mismo para que yo me quede en esta página. Y con limpiar carrito, pues hacemos lo mismo. Si el

[309:49] carrito del usuario está y tiene cosas, básicamente pues al pulsar aquí se va a vaciar el carrito y me va a redirigir a vercarrito.html, que es esta plantilla. Pasemos a ver ahora las URLs del proyecto. Tenemos URLs principal en las modificaciones que he hecho. Luego tenemos URLs de catálogo y URLs de la app carrito. en URLs principal simplemente añadido esto, este paz a las URLs de carrito con su archivo URLs. En catálogo he añadido este app name. Esto lo podríamos haber hecho perfectamente cuando creamos la

[310:31] app. Sirve para poder construir URLs de una manera mucho más legible. Ahora os mostraré un ejemplo de esto. En carrito tenemos el appname carrito para identificar cada archivo de URLs. Después en nuestras plantillas HTML y en URLs tenemos el acceso a ver carrito, a la plantilla utilizando la vista ver carrito. Luego tenemos agregar para agregar un juego. Lo hace por un ID y lo hacemos con la vista agregar al carrito.

[311:03] Por ejemplo, me voy al catálogo y voy a añadir este. Este juego tiene el ID en base de datos uno. Pues al añadir se agregará con el ID un carrito agregar uno. Esta sería la URL para eliminar un juego por ID utilizando la vista eliminar del carrito y finalmente limpiar, que nos va a servir para utilizar la vista. limpiar carrito. Pues esta penúltima utilizaría este botón de aquí y esta última utilizaría el vaciar carrito. El app name como carrito o catálogo nos sirve para identificar en las plantillas

[311:48] y poder utilizar de manera fácil esto. Tengo el botón de limpiar, el que aparecía por aquí para vaciar. Identificado fácilmente con carrito dos puntos limpiar. Estoy utilizando aquí el appnrito y luego le digo que de carrito utilice su URL limpiar. Si yo ahora tuviese en catálogo, que estoy utilizando aquí una URL, una URL que se llamase, que tuviese un name limpiar también, pues habría un conflicto si no pongo carrito y catálogo, porque tendría aquí dos URLs con limpiar y no sabría a qué limpiar me

[312:26] refiero, si de carrito o de catálogo. Pues para llevar un orden, hacerlo todo mucho más legible y que funcione bien, tenemos esto, los upname. Pues en URLs tenemos por un lado el upname, que es lo que sale antes de los dos puntos y lo que sale después de los dos puntos son estos name que hemos ido añadiendo siempre en las URLs.

[312:48] Este nombre es para utilizarlo fácilmente después y de una manera legible. Vayamos con la plantilla detalle juego. Primero tengo ciertas modificaciones. Detalle juego es esta plantilla, la que aparece el detalle del producto. Aquí la modificación que he hecho ha sido para poder añadir al carrito para utilizar este botón que ya teníamos creado, pero no teníamos la funcionalidad hecha. Pues utilizamos en el botón la URL carrito agregar con juego ID. Si este juego es ID1, por ejemplo, pues al agregar, al

[313:29] añadir aquí, se va a añadir el juego concreto. Y esta línea, he eliminado la anterior, lista juegos que no tenía ese app name de catálogo y ahora le he hecho una versión más legible. Así sabemos qué URL son de catálogo y cuáles son de carrito.

[313:50] Y si tuviésemos 20 apps, pues sabríamos de cuál es cada cosa. Sabemos entonces que este agregar pertenece a carrito y este a catálogo. Después, lista juegos es la plantilla del catálogo donde aparecen todos. Las modificaciones que he hecho han sido para el appn dejar aquí detalle juego, sin identificar de qué app es, he puesto catálogo, detalle juego. Vayamos a la plantilla más interesante, la de ver carrito, donde todo el archivo es nuevo. Esta sería la visión de ese archivo de ver carrito

[314:27] hereda de base HTML, permite utilizar estáticos. tiene este título y el bloque de contenido. No tiene nada más. El bloque de contenido entonces es esto que puedes ver ahí todo lo que va saliendo. El H1 aparece por aquí con el carrito y luego tenemos este condicional que dice if items. Si hay elementos. Si hay elementos, pues hace todo esto, toda esta presentación de tabla para ir mostrándolos.

[315:02] plataforma, precio, todos esos datos que podemos ver por ahí cuando añadimos algo. En el caso contrario de que no haya items, pues me va a sacar este DIP que nos muestra lo que vemos por aquí. Simplemente es eso. Mostramos una cosa o la otra. Analizar bien el archivo y veréis todo lo que hay. Utilizamos carrito limpiar en el botón de limpiar, catálogo, lista juegos, en el botón de seguir comprando. Si añado algo lo veréis. Aquí tenemos ese botón seguir comprando. Me llevaría catálogo, lista

[315:39] juegos. Pues eso es lo que hace. Y en caso contrario de que esté vacío, pues tenemos este botón que me lleva también a catálogo lista juegos. Para el carrito he añadido ciertos estilos. Tenéis que dejar los estilos que ya tenemos y añadir estos que tenéis en mi sitio web. Están los estilos generales para la tabla, para diferentes tamaños, escritorio, móvil, tablet. Más que nada es orientativo esto. Podéis cambiar perfectamente lo que queráis y además os invito a ello, a que vayáis practicando

[316:12] y haciendo cosas por vuestra cuenta. Tenemos el archivo base HTML que he modificado ligeramente para poder sacar el carrito en todas las páginas. Por un lado tenemos este enlace que he cambiado. Antes ponía lista juegos, pues le he añadido catálogo lista juegos.

[316:32] Después de establecer los upname, os irán saliendo errores por estas URLs. Una vez puesto el upname, lista juegos ya no apuntará ningún sitio y por lo tanto en los errores de Jjango que os aparezcan en el navegador tendréis que ir buscando en qué archivos aparecen y dónde tenéis que cambiar las cosas. Por ejemplo, voy a dejar esto como estaba anteriormente, sin ese app namame. Guardamos cambios. Y ahora mira lo que sale. Nos ha encontrado básicamente un enlace para eso. Nos indica en qué línea está el

[317:04] error. 53. Esta misma línea y nos dice que está en base HTML. Fijaros en esto. Pues vais arreglando estos fallos. nos iríamos a la línea 53, como vemos ahí, este enlace y tendríamos que poner ese app name. Guardamos cambios y el error desaparece.

[317:34] Esto nos va a salir cuando intentemos utilizar dichos enlaces. Por lo tanto, os recomiendo que desde un principio vayáis haciendo esto de los app name. Esto tomarlo como una elección para aprender más, porque luego vais a tener fallos ocultos. Esto mismo no hará que directamente todo el sitio web deje de funcionar, solo saldrá cuando intentemos utilizar dichas URLs. Y eso es un problema porque luego podemos dejar fallos sin encontrar que aparezcan más adelante. Por lo tanto, simplemente

[318:06] añadiendo ese appname de cada aplicación nos forzará a empezar con unas buenas prácticas. Esto perfectamente lo podría haber explicado antes, pero prefiero ir haciendo el aprendizaje gradual, que veáis cómo ocurren ciertos fallos, porque esto os lo cuento desde un principio y seguramente os hubieseis olvidado porque no hubieseis visto nunca este fallo o lo hubieseis visto cuando os lo explicase, pero ahora os fuerza a entenderlo y a ir modificando y buscando esos errores y podéis ver de manera más

[318:38] realista por qué utilizarlo. En resumen, para lo de catálogo, he añadido este cambio y la parte del carrito. Esto de aquí solo es un elemento que aparece con su URL para ver carrito cuando lo pinchemos. Ya está. Además tiene este condicional if que sirve para sacar esa bolita que aparece por aquí con el número en el caso de que el total de items del carrito sea superior a cero. A partir de uno sale la bolita con 1 2 3 cu ese contador. Con este if hacemos que no salga por defecto

[319:21] si no tenemos nada en el carrito. Si no me he dejado nada más me queda una cosa por explicar. Este archivo context processors, este archivo lo ha añadido a la propia app, no viene con su creación, no sirve para que funcione este pequeño contador del carrito. Si yo voy añadiendo juegos, el contador se va incrementando en tiempo real.

[319:44] Y esto es posible gracias a este context processors, aparte de la vista que nos permite ejecutar todo esto. Un context processor es una función que inyecta variables automáticamente en todas las plantillas del proyecto. Gracias a esto, no necesitas pasar manualmente ciertos datos desde cada vista a la plantilla.

[320:03] Los context processors, entonces los podemos utilizar en cualquier sitio. Si nos encontramos en esta página de catálogo de este mismo videojuego, el carrito sigue mostrando ese valor, esté en la página que esté. También podríamos hacer un context processors para mostrar mensajes flotantes al usuario. Cuando inicias sesión, has iniciado sesión correctamente.

[320:26] Y este context processor en concreto lo que hace es poner el total items a cero por defecto, por lo tanto no aparecería esa bolita. Y si el usuario está autenticado, entraríamos en este if. solo va a calcular ese número si el usuario ha iniciado sesión y si no está autenticado siempre va a seguir siendo cero, ya que no puede añadir cosas al carrito. Pues este archivo en resumen, lo que hace es calcular el número total de juegos en el carrito del usuario autenticado y lo deja disponible en todas las plantillas

[321:03] como esta de aquí, la de la página principal, la del catálogo, la que sea, aparece por todos lados. Lo que hacemos es actualizar el total de elementos. ¿Cómo inyectamos el código de context processors en todas las plantillas? Pues en el archivo settings tenemos este plantillas donde nos aparece en options esta parte context processors. Jango tiene ciertos context processors por defecto. Por ejemplo, los mensajes para el usuario. Podemos utilizar una serie de mensajes de Yangjango informativos

[321:42] que aparecerán sobre cualquier plantilla si los utilizamos. Y esto es gracias a este context processos que tengo señalado. El context processor del carrito para utilizar el archivo personalizado es este de aquí. Si yo ahora quito el acceso a este context processor, no tengo un conteo del carrito.

[322:13] Por si alguien todavía no lo está entendiendo, un Context Processor en JJango actúa como un disparador automático, como esos disparadores de eventos que tenemos en otros tipos de aplicaciones. Eventos que están a la espera de que algo ocurra y se ejecute cierta función. En Jango no funcionan exactamente así, ya que estos disparadores se disparan cuando se renderiza alguna plantilla con la función render, que la hemos utilizado un montón de veces. Por ejemplo, en catálogo tenemos que tener en las vistas

[322:48] esta función render. Ahí estaría returer. Cuando cargamos esta plantilla de talle juego, hacemos esto, se hace un render, se renderiza. Si os fijáis, carga la página. Pues esto lo que hace es disparar los context processors. ¿Cuáles? los que tenemos en el archivo settings.pi.

[323:11] Cuando se recarga la página, entonces Jjango ejecutará todo esto. Cada context processor puede tener sus condiciones para que ocurra algo o no, dependiendo de ciertos factores. Por ejemplo, al actualizar se ejecuta esa función, la que tenemos en el context processor de este archivo. Este número no cambia porque para que cambie tenemos la condición de que se pulse este botón, que añadamos nosotros, pero sí que está a la espera de a ver si ocurre eso cada vez que actualizamos o cargamos

[323:45] cualquier otra página. Y se hace de manera global, porque yo puedo venir al catálogo, puedo estar en esta página, en la que sea y eso está ahí a la espera. Y ahora cuando añadimos ejecuta esa función. Entonces, estaréis pensando algunos que con esto lo que hacemos es sobrecargar el sitio web. Efectivamente, si nos pasamos con los context processors y hacemos un millón de cosas, se va a sobrecargar todo y va a hacer que vaya todo muy lento. Por lo tanto, no abuséis de esto. En este caso, yo necesito que

[324:21] esto se vaya actualizando y se vea en todos lados. Es una pequeña carga, no tiene gran cosa, pero es algo necesario porque quiero que el usuario siempre, este donde esté vea ese número de lo que tiene en el carrito, que vea que ese carrito esté activo, que está funcionando. No quiero que solo le salgan las cosas si viene aquí al carrito y las mira. Creo que sea dinámico este sitio.

[324:46] Casi se me olvida y tengo una pequeña explicación más que es el admin pi. Vamos a ir a administrar los datos de la base de datos del carrito tengo estas clas que me sirven para mostrar esta información que veis por aquí. Estoy mostrando información de los modelos carrito e íem carrito. Eso por si queremos ver en el admin todo esto.

[325:31] En este capítulo te voy a enseñar de manera muy sencilla cómo puedes implementar un sistema de notificaciones de tipo toast. Lo haremos conjango y Bootstrap. Además, aplicaremos una serie de estilos con una hoja CSS para que puedas personalizarlo más a tu manera, para que no quede solo con la base de Bootstrap. Veamos un poquito cómo es este sistema. Por ejemplo, cierro sesión, tengo una notificación activada con esto. Cerramos sesión y me aparece de esa forma. Que no te gusta este azul

[326:00] para los avisos informativos, pues cambias en el CSS la línea del color azul. Por aquí en el CSS podríamos poner también opacidad. como tenemos por aquí 0, pues que queremos esto un poquito más transparente. 0,9. Forzamos la carga de caché siempre que hagamos un cambio en archivos estáticos con control F5 para que podamos visualizar los cambios y vamos a hacer saltar una de estas notificaciones.

[326:33] En este caso, me he equivocado al escribir y me sale un error. Como puedes ver, se ha configurado la transparencia y cuando no estamos por encima se puede apreciar. Con esta cruz podremos cerrarlo o si no tiene un temporizador de 5 segundos desde que quitamos el cursor de encima y se quita sola. Te voy a explicar de manera rápida cómo funciona este sistema porque es muy sencillo. En Jango tenemos los context processors, los cuales expliqué en el capítulo anterior.

[327:05] Podemos llamarlos como una serie de disparadores, como unos eventos que están a la espera de que se renderice cualquier página. Eso quiere decir que cuando utilicemos la función render en algún archivo de vistas, se ejecutarán estos procesadores de contexto. Y esto quiere decir que lo que hacemos con estos mensajes se aplica de manera global a todo nuestro proyecto Yangango sin que tengamos que hacer nada.

[327:29] Solo tenemos que asegurarnos de que estos procesadores de contexto estén puestos en el archivo settings principal de la app principal en plantillas. Tenemos esto de options, context processors yo. Ya nos tiene por aquí esto. Este procesador de contexto de mensajes sirve para cargar todo este sistema. Ya tenemos el trabajo hecho. Lo único que tenemos que hacer nosotros es configurar una vista con un mensaje con lo que queramos sacarle al usuario que ocurra en cierto momento determinado, por

[328:08] ejemplo, cuando se inicie sesión y algo para renderizarlo en la plantilla. Ya está. Pasemos a las vistas de carrito de esta app del carrito de compras, este que hay por aquí, donde utilizo algunos de estos mensajes. Es tan fácil como yo tengo aquí esto de agregar al carrito, que sirve para cuando agregue un producto al carrito, pues que cuando se incemente la cantidad en uno con este condicional me saque este mensaje informativo con messages.info.

[328:40] Solo hay que poner eso, que es de algo satisfactorio, pues ponemos messages punsuccess y el mensaje que queramos decirle al usuario. Por ejemplo, producto, el nombre del juego añadido al carrito correctamente. Que este mensaje, mira, si iniciamos sesión saldrá.

[329:06] Bueno, inicio de sesión, correcto. Esta vez ponemos algo del catálogo, añadir al carrito y ahí salta ese mensaje que tenemos por ahí abajo. El otro de info sale si vuelvo a añadir algo que ya está en el carrito, una cantidad más, incremento.

[329:31] Pero bueno, estos son pequeños detalles del sistema del carrito que no tienes por qué tener muy en cuenta. En eliminar del carrito, cuando vamos a eliminar algo, por ejemplo, esto, me dice que este producto ha sido eliminado.

[329:49] Con este warning me aparece en amarillo. Y para errores pondremos messages. Estos mensajes los pones en cualquier vista y ya está. Cada vez que quieras avisar de algo al usuario, le metes ahí un mensaje. Los estilos. Todo esto para que no lo tengas que copiar del vídeo.

[330:09] Si lo quieres probar igual que lo tengo yo, lo puedes copiar de mi sitio web, que lo tengo ahí todo. Tenemos estilos para estas notificaciones flotantes, que si os habéis fijado son flotantes. Yo puedo moverme y esto se mueve.

[330:32] va flotando por encima de todos los elementos. Ir echándole un vistazo a todo lo que tenéis ahí y lo cambiáis así como queráis. En script JS, que es el archivo global de scripts de todo este proyecto, lo utilizo en todas las páginas. Tenemos esto que nos va a servir principalmente para mostrar y para ese contador de 3 segundos. En este caso se ponen milisegundos, que son 3000 3 segundos.

[331:03] en base HTML, que es la plantilla principal de la que heredan todas las plantillas, he puesto esto, este condicional que dice si hay mensajes, muéstralos. Aquí tenemos ese Z index en 2000 para que salga por encima de todo y una serie de clases condicionales para el fondo del DIP. Si el tipo de mensaje es sucess, me va a salir esto en BG success, que es un estilo propio de Bootstrap, que podemos modificar el color, como has visto, en una hoja propia de CSS. Si es un mensaje de tipo

[331:39] error, pues va a salir esta clase. Y eso es lo que hacen estas etiquetas condicionales. Si se cumple esto, pues nos deja esta class. Fíjate que está dentro de las comillas de la clas y se cierra por aquí. Pues estos shift solo va a coincidir uno. Si no coincide con el primero, será el segundo. Si no el tercero, si no el cuarto. Y alguno de estos quedará. el botón para poder cerrar por aquí con este button. Por si alguien no está haciendo el curso y ha venido a ver esto específicamente, lo que yo estoy

[332:13] utilizando es un archivo base HTML del cual heredan todas las plantillas de este proyecto. Así todo tiene el mismo diseño. Eso quiere decir que todos los enlaces que vayamos poniendo por aquí se van haciendo efectivos en todas las plantillas, en todo el sitio web. Por lo tanto, añadiendo la línea de Bootstrap, esta de aquí, ya está, ya tendríamos acceso global. La hoja de estilos la tengo aquí en esta línea y la de JavaScript por aquí. También tengo esto de script de Bootstrap. Y nada más.

[332:48] He añadido para la app de usuarios también en las vistas mensajes, como por ejemplo este para has cerrado sesión o este para cuando se ha registrado o estos dos inicio de sesión correcto o usuario contraseña incorrectos.

[333:17] Una vez que hemos terminado nuestro proyecto en Yangango, llega el momento de pasarlo a producción. Eso significa que lo vamos a subir a un servidor en la nube para que sea accesible desde cualquier parte del mundo a través de internet. En este vídeo os voy a mostrar paso a paso cómo llevar el proyecto desde GitHub a Python Anywhere, configurar la base de datos MySQL, hacer unos ajustes y dejarlo todo listo para que la aplicación funcione en línea. Al finalizar este vídeo, que cierra el

[333:43] curso de Python yango, vas a tener tu proyecto funcionando como una app lista para que cualquier usuario la visite. El primer paso va a ser el de preparar el repositorio en GitHub. Tenemos que tener todos los cambios del control de versiones hechos, confirmados. Y si estamos en una rama que no sea la principal, como por ejemplo esta de testing, podemos pasar todo esto ya a la rama principal si tenemos nuestro proyecto ya listo. Y con esa rama, en mi caso se llama master, vamos a llevar

[334:14] todo eso a internet. Tenemos que fusionar la rama actual con la rama master, la rama principal o main, como se llame en tu proyecto. Abrimos una consola y pondremos el siguiente comando, git checkout y la rama principal.

[334:33] Hemos cambiado a master y ahora tenemos que hacer un merch. Vamos a fusionar. La fusión ya está hecha y la rama master tiene el mismo contenido que testing. Esta rama que tenía yo está subida en la nube en GitHub, pero Master todavía no.

[334:55] Vamos a darle a este botón de publicar rama o ponemos en la consola si no tenemos este botón a mano. Si todo está correcto, nos dirá que todo está a la fecha. El segundo paso va a ser crear una cuenta gratuita en Python Anywhere.

[335:22] Podemos utilizar una cuenta gratuita que nos permita tener un servidor virtual con un entorno totalmente preparado para ejecutar Python. Y puesto quejango es un framework de Python, podremos tener nuestro proyecto Yangjango perfectamente funcionando, tal y como lo tenemos en desarrollo. Con la cuenta gratuita vamos a tener el nombre del dominio como esto, pero además se nos añadirá el dominio pythonanyware.com, es decir, no tendremos un nombre dedicado. Si quieres poner un nombre

[335:52] dedicado, tendrás que pagar el nombre del dominio en cualquier empresa donde puedas comprar dominios y pagarte una cuenta al menos básica. Hay diferentes planes como este. Este para empezar, si estás haciendo un proyecto comercial y no quieres tener esas limitaciones del plan gratuito, pues te puede venir bien. Son $5 al mes.

[336:13] Si decides probar Python Anyware y optas por un plan de pago, puedes utilizar el enlace de referidos que te dejo en la descripción. Lo que se genere con ese enlace lo destinaré a mantener el canal y la web para seguir creando más contenido. Muchas gracias. Pero el plan gratuito este de principiante viene muy bien para que ya vayas haciendo pruebas, para que lo ajustes todo como te guste, para que puedas seguir desarrollando cosas y que cuando ya quieras llevarlo todo a los usuarios finales, pues te

[336:42] pasarías a un plan de esto. A medida que crezca el proyecto, puedes ir ampliando. Estamos en la sección de pric and sync app. Vamos a crear una cuenta de usuario principiante, la gratuita. Rellenamos el formulario. Una vez lo tengamos rellenado con todo, con nombre de usuario, correo, contraseña, vamos a aceptar los términos, si no no nos dejará crear la cuenta. Le damos a registrar, nos mandarán un enlace de confirmación a la cuenta de correo que hemos puesto.

[337:15] Una vez confirmado, podemos ir a hacer login con este botón de aquí arriba. Este va a ser el panel de control, la zona de consolas, zona de archivos, web, tareas que podemos dejar programadas y bases de datos. La interfaz es de lo más sencillo. Con la cuenta gratuita nos dan 512 megas, medio gig. El paso número tres va a ser crear y configurar una base de datos MySQW. Puesto que vamos a pasar a producción, la base de datos local de pruebas, la que estábamos utilizando en desarrollo, no la vamos a

[337:50] utilizar. Todos esos datos no los queremos para nada. Entonces, lo que vamos a hacer aquí es crear una base de datos nueva que va a empezar a incorporar datos con los usuarios que se registren, con todo lo que ocurra en nuestra plataforma. Por eso en el control de versiones, al principio del curso os dije que pusierais este archivo, este gitore, y descarté la base de datos local de SQLight, porque esta no la quiero en producción. Yo quiero utilizar MySQL con los datos que ocurran

[338:19] en producción. Nos vamos a ir a la sección de bases de datos, dejamos seleccionado MySQL y ponemos una contraseña. Finalmente le damos a inicializar y esperamos a que termine este progreso. Ahora que ya tenemos el servicio de MySQWL funcionando en Python Anyware, podemos ir a preparar nuestro entorno de desarrollo para producción. Te voy a enseñar una configuración para que puedas tener tu entorno de desarrollo funcional, para que puedas ir haciendo cambios de todo lo que quieras para que

[338:53] puedas actualizar y reparar fallos que encuentres o implementar novedades. Y luego, simplemente utilizando el control de versiones con GitHub podrás subir los cambios mediante comando sin tener que estar gestionando archivos manualmente.

[339:07] El archivo settings.p P guarda en él muy importantes como la clave secreta, las credenciales de la base de datos, la variable de depuración que podemos activar o desactivar, los host permitidos que nos permitirán autorizar ciertos equipos.

[339:24] Todo esto con un problema bastante claro, texto plano. Las contraseñas y datos importantes no deberían estar en un archivo directamente, ya que aunque esto sea un archivo de Python, sigue siendo texto plano. Por lo tanto, es arriesgado tenerlo esto en producción.

[339:40] En desarrollo no pasa nada, pero para pasar a producción tenemos que solucionar esta carencia que tiene nuestro proyecto. ¿Cómo hacemos eso? Lo haremos gracias a los archivos punemp. En estos archivos vamos a poner todos los datos importantes de contraseñas, la configuración de depuración, etcétera.

[339:59] Todos estos datos se los pasaremos al settings.p, pero estos datos no estarán directamente en el settings, sino que será luego nuestro servidor que los vaya solicitando al archivo punto. Además, desde el principio tenemos este git ignore que está ignorando todos los archivos pun. Este archivo no se está subiendo a GitHub. Desde un primer momento no lo hemos subido. Si tuviésemos más compañeros de equipo trabajando en el mismo proyecto y fuésemos nosotros quienes controlásemos

[340:32] esto, pues no tendría por qué tener nadie más las contraseñas. De hecho, el archivo settings ya se podría haber subido con esto hecho desde un principio, pero por supuesto no lo he hecho para simplificar las cosas. Ahora ya entendéis todo el funcionamiento que tiene settings, al menos a groso modo, y podéis procesar muy fácilmente lo que vamos a hacer con este punto, en resumen, ¿qué queremos lograr? Pues que el mismo proyecto funcione tanto en tu PC como en el servidor de Python

[341:01] Anyware. Cada variable se va a escribir de esta forma. clave y valor. Por ejemplo, nuestra clave secreta, que es muy importante por seguridad en Jango y la tenemos que mantener oculta, pues pondríamos en este archivo algo como esto, Secrety, y le pondríamos el valor generado en ese settings.p, que por supuesto será más largo que esto. Jango por defecto no va a leer estos archivos punempm y no vamos a poder cargar estas variables automáticamente en nuestro proyecto.

[341:36] Para ello necesitamos instalar una biblioteca llamada python. Pondremos en nuestro archivo settings algo como esto. Le diremos básicamente que nos lea el dato de la clave secreta en nuestro archivo. El valor de la clave secreta entonces se pasará al settings.pi. En el settings.p quedará solo esto.

[342:02] Para instalar esta biblioteca vamos a activar el entorno virtual. Una vez lo tenemos activo, vamos a poner el siguiente comando. Pondremos pip install python. El archivo giticode lo he modificado. He puesto unas cuantas cosas que no queremos subir a GitHub. Esto lo dejáis así y vais a crear el archivo de desarrollo y el de producción.

[342:43] Este sería el de desarrollo. Ponemos algo como esto de momento y lo iremos rellenando. Otro archivo para producción. Y dejamos esto de momento. Este va a ser el archivo settings.pinitivo. Lo tenéis en mi sitio web, al igual que los diferentes archivos que vamos a utilizar en este vídeo. Con esta línea vamos a importar la función que nos va a permitir leer los archivos punampm. Con esta línea detectaremos si estamos en modo producción o no. Esto lo haremos añadiendo una línea en el archivo WSGI.

[343:21] o podremos manejarlo desde la consola definiendo directamente ese valor. Con esta otra línea vamos a asegurarnos de cargar un archivo u otro, el de producción o el de desarrollo, dando los datos adecuados en cada caso. Así podemos seguir trabajando en desarrollo y podemos seguir trabajando en producción. La clave secreta se pasa de esta manera, desde el archivo correspondiente. La depuración también se pasa por aquí según el entorno que tengamos. Y los host permitidos que podemos permitir en cada entorno unos

[343:56] host u otros. Esto lo tenemos igual. Finalmente, en bases de datos tenemos esto para cambiar todos estos datos según el entorno, ya que en desarrollo estamos utilizando SQLite y en producción estamos utilizando otro servidor, el de MySQW. Por aquí tenemos para los archivos estáticos, tanto de producción como los de desarrollo.

[344:18] En el archivo de desarrollo vamos a poner lo siguiente. Dejaremos la depuración en true. Vamos a pregar aquí la clave secreta que tenemos ahí en ese settings.p host permitidos. En principio, si no queremos hacer pruebas en otros equipos, pues lo tendríamos así con local host.

[344:39] Aquí si estamos utilizando SQLite local, vamos a dejar todo esto en blanco, ya que no tenemos ni usuario, ni contraseña, ni host, ni puerto. Si estuvieses utilizando en desarrollo un servidor local MySQL, pues aquí pondrías las credenciales de esa base de datos y cambiarías, por supuesto, esto. Si fuese el caso de que utilizas en desarrollo una base de datos MySQW, pues pondrías aquí esto, el nombre de la base de datos que tuvieras, el usuario de MySkywell, su contraseña, etcétera, todos esos datos.

[345:18] Lo dejamos así. Entonces, ahora nos vamos al archivo de producción y vamos a tener algo como esto. Depuración va a estar en false, muy importante. Aquí ponemos la clave secreta, la que tenemos en el settings, la misma. Vamos a permitir el host de Python Anyware para que nos funcione. En database vamos a poner MySQL. Ponemos el nombre de la base de datos que nos proporciona ahí Python Anyware. De hecho, voy a ponerlo aquí al lado para que lo veas. Nombre de la base de datos la tenemos por aquí.

[345:53] Nos ha creado una por defecto. Luego podríamos hacer nosotros si queremos otra, pero bueno, vamos a utilizar la que nos dan por defecto. El usuario de la base de datos es este. Por defecto nos va a poner el nombre de usuario que tenemos aquí en la cuenta de Python Anyware y lo truncará a 15 caracteres, si no me equivoco. Por eso sale programación fácil sin la L.

[346:15] La contraseña será la contraseña que acabamos de poner para crear esto de MySQL para el servicio. La ponemos directamente aquí. Esto importante 5 comillas, no son strings de Python. Estamos en un archivo. Dejamos el texto directamente con todos los datos. Así.

[346:33] Pues aquí pondremos esa contraseña que hemos configurado en database host vamos a poner esto que tenemos por aquí y el puerto 3306. Esto lo podemos quitar. En principio lo tendríamos hecho. Los cambios en el control de versiones son estos.

[346:50] Tendríamos ese settings modificado y el gite. Hay que confirmar estos cambios para que se vayan haciendo efectivos, para que ignore las nuevas cosas que le hemos puesto, que son precisamente estas. No os preocupéis por saber exactamente todo, para qué ponemos esta línea, para qué ponemos lo otro. Primero centraros en que os funcione y luego ir analizando parte por parte de las cosas que no entendáis.

[347:16] Vamos a hacer la confirmación, sincronizamos cambios y ya tendríamos estos archivos ignorados. Lo único que me falta es la clave secreta y poner aquí la contraseña, que es lo que nos iba a mostrar. vosotros hacer lo mismo, cambiar eso por los datos correctos, tanto en desarrollo como en el otro lado. En desarrollo solo tenéis que poner esto, la línea siete, antes de poner la clave secreta en el archivo.

[347:52] Estas comillas, yo acabo de quitar el contenido. Aquí venía la clave secreta, más larga que esto. Fijaros que tiene unas comillas. Esto es porque estamos en un archivo de Python y por lo tanto es un string, pero como os he dicho, no estamos trabajando de la misma forma en el archivo. M, por lo tanto, las comillas quitarlas y utilizar solo el contenido este que os quede.

[348:21] Una vez tengamos listo el archivo punto de producción, lo vamos a subir a Python Anyware. Para subir un archivo manualmente, lo vamos a hacer desde la pestaña Files. Nos iremos a esta ruta, a la carpeta principal, sin abrir la de la aplicación principal y fuera, a la misma altura que tenemos en el proyecto de Visual Studio, ponemos este para subirlo, simplemente pulsa este botón y carga el archivo. Fíjate cómo está en la carpeta principal, no dentro de esta otra. Esta otra es la de la aplicación

[348:57] principal. Pero la del proyecto es esta, así que déjalo ahí. Si tenéis dudas podéis venir al proyecto y os fijáis que estaríamos en tienda videojuegos. Aquí en local lo he llamado curso Yango, pero ahí en Python Anywhere. Esta carpeta que envuelve todo se llama tienda videojuegos, al igual que el proyecto o la aplicación principal, pues el M de producción está a la misma altura del proyecto, no está dentro de una subcarpeta. Pues ahí es donde tiene que estar, dónde lo tengo yo.

[349:34] En Python Anyware nos vamos a ir a consolas. Aquí abrimos una consola bash. Vamos a poner Python 3 M bemp y le damos el nombre al entorno virtual, por ejemplo. Aquí tenemos que crear otro entorno virtual, no vamos a utilizar el que tenemos en local.

[350:00] Esperamos a que se cree. Si no tenemos ningún error, se habrá creado perfectamente, así que vamos a activarlo. Vale, ya lo tenemos activado. Y ahora sí, vamos a clonar el repositorio. Pondríamos esto. Git clone https, toda la URL que tenemos en el repositorio.

[350:27] Nombre de usuario, nombre del repositorio. Presionamos enter. Ahora me pide nombre de usuario. Se lo ponemos. Y en contraseña vamos a utilizar el token. El repositorio lo tengo en privado, por lo tanto no puedo acceder a él. Para lo que pide aquí de contraseña, lo que necesito en realidad es un token.

[350:49] Este token lo tenemos que generar en nuestra cuenta de GitHub para autorizar el acceso desde aquí a nuestro repositorio privado y que podamos clonarlo, que podamos descargar todo el contenido. Para ir aquí donde están los tokens vamos a ir a la parte del avatar settings. En esta página vamos a buscar abajo del todo en el lateral esta opción.

[351:10] Haz clic en ella. Presionamos la opción personal access tokens y pondremos tokens classic. Le daremos a generar nuevo token clásico y por aquí pondremos algo como Python Anyware para saber de qué es este token. 30 días de expiración. Está bien. Y marcaremos todo esto de repo. Vamos abajo del todo.

[351:36] Generar token. Y la clave que muestra a continuación es secreta, no la tenéis que mostrar. Le damos al botoncito de copiar que tenemos al lado de la clave. Una vez nos salga copiado, vamos a la consola y lo pegamos. Presionamos enter, no aparecerá nada.

[351:56] Pues ya tenemos clonado el repositorio. Si hacemos un LS podremos ver lo que tenemos. Ahí se ve la tienda de videojuegos y nuestra carpeta del entorno virtual. Pues vamos a ir a tienda videojuegos. Y ahí podemos ver que estamos actualmente en la rama desarrollo. Esto es porque estábamos trabajando con diversas ramas, pero nosotros necesitamos ahora mismo la rama master para tener los archivos y todo lo que teníamos del proyecto actualizado a la última versión. Pondríamos un git

[352:30] checkout master. Aquí ya se están actualizando archivos, como puedes ver, y ya estamos trabajando con master. Ahora que tenemos cambios en la rama master y queremos actualizarlo de lo que hemos estado haciendo en desarrollo, pues cada vez pondremos gitpol Origin Master, que es la rama que queremos actualizar. Aquí nos pide otra vez usuario y el token de autenticación.

[353:05] Aquí nos indica que ya está actualizado. Lo siguiente que haremos será configurar una web app. Venimos a crear una nueva app. Nuestro proyecto va a quedar en vivo para los usuarios, accesible a través de internet con esta dirección programación fácil, que es mi nombre de usuario. Pythonanyware.com.

[353:25] Si tú quieres poner tu nombre de dominio personalizado, ahí ya sí tendrás que actualizar a una cuenta de pago, pagando al menos esos 5 que vale actualmente. Son $ cada mes, pero para hacer pruebas, esta versión gratuita os viene perfecto, no hace falta que hagáis nada más. Le dais a siguiente. Aquí pondréis la configuración manual, ya que no vamos a crear nada de esto desde cero. Nosotros ya lo tenemos todo hecho. Seleccionamos la versión de Python que estemos utilizando. En mi caso ahora mismo la

[353:56] 3.13. En el siguiente mensaje nos dice que nos va a crear un archivo WSGI en esta ubicación. Después lo vamos a editar este archivo para que apunte al proyecto de Yangjango que nosotros hemos creado. Este archivo nos servirá para conectar el sistema de Python Anyware con el proyecto Yangango para que funcione. Le damos a siguiente.

[354:20] Ya tenemos nuestra web app creada. Aquí nos dan este botoncito que es un poco rollo para que vayamos logueándonos y pinchando en él. Cuando le damos nos da para tr meses más. tenemos que ir actualizándolo como confirmando que estamos utilizando esta web. Esto, por supuesto, para los usuarios de pago no ocurre, no tienes que hacer nada de esto. Si le damos aquí a este enlace, nos llevará a nuestra página. Ya podemos ver que la página está disponible a través de internet. podéis visitarla

[354:53] desde cualquier sitio. Esta es la página por defecto. Para poder mostrar nuestro proyecto tenemos que ir al archivo WSGI. Para editar este archivo nos iremos a esta parte, sección code y abrimos este archivo pinchando aquí. Esta es la página que nos aparecía por defecto, pues nosotros tenemos que poner aquí lo necesario para utilizar nuestro proyecto Yango. Reemplazamos el contenido por defecto por este. Lo tienes en mi sitio web como todo lo que estamos haciendo en este vídeo. Tendrás que fijarte y hacer

[355:25] algunas variaciones en los nombres como estos de aquí para adaptarlo a los nombres de tu proyecto si no lo has hecho exactamente como yo. En esta parte añadimos la ruta del proyecto a Python para que pueda encontrar los módulos y todas las apps. Viene a ser el paz del proyecto. Aquí definimos el entorno de producción para que entremos en ese modo y que utilicemos la configuración de producción que hemos hecho en los pun.

[355:54] Por aquí indicamos el archivo settings y finalmente con esto creamos el puente WSGI que permite a Python Anyware servir tu proyecto Yangango en la web. Le damos a save, ya estaría guardado. A lo largo del desarrollo de nuestro proyecto podemos haber instalado diversos módulos. El mínimo es el de Yjango y sus dependencias. Y podríamos haber instalado muchas más cosas. Puesto que hemos hecho un entorno virtual nuevo en el servidor de producción, tenemos que pasar las dependencias allí para que

[356:30] funcione, ya que allí no tenemos instalado ni todo lo necesario para que nuestro proyecto funcione. Necesitamos crear un archivo como este que ves en pantalla. Este archivo es una exportación del comando pipes. Ahora te enseño cómo se hace. Tenemos el entorno virtual activado. Partimos de aquí y vamos a hacer un pipe que nos saca todos los módulos. Y este pip freeze lo llevamos a un archivo.

[357:01] Ese archivo ya está creado y lleva las instalaciones de todo lo que hemos hecho. Lo vamos a subir con el control de versiones. Hacemos un comit, confirmamos, lo subimos y ahora nos vamos a la consola, vamos a la carpeta del proyecto, la principal, activamos el entorno virtual, si no lo tenemos activado, y aquí hacemos un gitol originades de lo que acabo puedo hacer en desarrollo.

[357:43] Después te enseñaré cómo evitar que todo el rato nos esté pidiendo el nombre de usuario y el token generado. Podemos ver que se ha actualizado con un archivo y cinco inserciones. Ahora lo que vamos a hacer es poner un pip, ya que tenemos ese archivo.

[358:07] R y el nombre del archivo. Vale, no está en esta ruta. Pues vemos que está en la carpeta anterior, la principal del proyecto. Acordaros de que teníamos carpeta del proyecto y luego la aplicación principal. Pues este archivo lo acabo de poner en la carpeta de proyecto.

[358:35] Podemos ver que nos lo instala todo automáticamente. Esto, por supuesto, lo podemos hacer a mano y puesto que eran cinco cosas lo podríamos haber hecho. Pero lo bueno es que llevamos ahí en ese archivo las versiones exactas y las bibliotecas exactas que tiene todo nuestro proyecto. Si fuese el archivo bastante más largo, que tuviésemos que instalar 25 cosas, pues nos evitaría bastante trabajo. Nos dice que se ha instalado correctamente. En desarrollo, Jjango sirve automáticamente los

[359:02] archivos estáticos desde las carpetas de cada app. Nosotros en nuestro proyecto lo hemos hecho con una sola carpeta estática, pero cada app podría tener la suya propia. e producción. Independientemente de las carpetas que tengamos en desarrollo, todo se debe recopilar en una sola carpeta para que el servidor los pueda servir correctamente. Y aquí es obligatorio, cuando añadamos archivos estáticos de cualquier tipo, ya sea al principio o después, utilizar un comando llamado collect static. Para hacer esto, vamos a

[359:32] ir a la pestaña de web, bajamos un poco y nos fijamos en static files, esta sección en URL, configurar esto en static, tal cual lo tengo yo, y en directorio poner esto barrahome el nombre de vuestra cuenta barra nombre del proyecto Yangango barra nombre de la app principal y luego Ponéis muy importante static files.

[360:04] Después nos vamos a una consola y aquí ponemos el siguiente comando. Presionamos enter y finalmente python manage.p collect static. Nos dirá si queremos continuar o no. Para continuar ponemos yes. En mi caso se han copiado cero archivos estáticos porque ya había hecho pruebas, pero en el tuyo deberían salir todos los archivos nuevos. Cuando vayas a añadir nuevos archivos estáticos, que te pongas a trabajar en desarrollo y después hagas un gitpol, pues todos esos archivos estáticos los tendrás que cargar. Si

[360:40] son, por ejemplo, 10, pasas este comando de nuevo y mirará los archivos nuevos. te los añadirá el proyecto. También tenemos que hacer las migraciones, ya que las migraciones que hicimos fueron para el servidor local SQLite. En nuestro servidor, en nuestra base de datos MySQWell, la de producción, tenemos que crear todas las tablas asociadas a los modelos. Por lo tanto, debemos hacer las migraciones para que Yjango haga automáticamente estas nuevas tablas.

[361:08] Y ponemos pip install. Esto, el cliente de MySQL. Exportamos la variable de entorno de producción con esto mismo que hemos utilizado antes para collect static. Y ahora en la carpeta donde está el manage.p, que tiene que ser esta en la que yo estoy, vamos a poner el make migrations y el migrate.

[361:47] También tengo ya las migraciones hechas, así que no pone cambios, pero a ti te deberían salir todas las tablas. Si en desarrollo estás probando nuevos modelos, aquí también tendrás que hacer las migraciones cada vez. Para evitar tener problemas con las migraciones entre las que hacemos en producción y las que hacemos en desarrollo, te recomiendo que hagas los modelos nuevos o los cambios que quieras alterar en algún modelo ya existente, todo en desarrollo. Y antes de ejecutar

[362:16] el make migrations en desarrollo, haces un git pool aquí en el servidor en Python Anywhere, obtienes todas las novedades esas del modelo que hayas hecho o de los modelos nuevos y después vas a poner el make migrations en desarrollo. Lo puedes probar si te gusta el resultado que tienes. Vienes aquí y pones make migrations y migrate. Por si alguien no lo entiende. Muy bien, vamos a poner aquí desarrollo y en esta otra parte vamos a poner producción.

[362:50] En desarrollo vamos a hacer tres cambios en un modelo y vamos a añadir dos modelos nuevos en diferentes apps. Lo que haríamos después de esto es hacer un make migrations para quejango hiciese esas migraciones y después las haríamos efectivas. Eso como hemos trabajado hasta ahora. Pero como tenemos dos entornos, ya estamos en producción, tenemos que sincronizarnos. Por lo tanto, antes de poner ningún make migration, vamos a venir a producción.

[363:20] Aquí metemos un gitpol origin o la rama que sea. Subimos todo como te he enseñado, pero todavía no hacemos ninguna migración. Venimos a desarrollo y aquí hacemos el make migrations. Hacemos el migrate y si nos gusta el resultado de lo que tenemos, vendremos a producción y ponemos el make migrations.

[363:50] Sin hacer ningún git pool. Ya lo hemos hecho, simplemente tenemos que hacer las migraciones del servidor y pondríamos ese mye. Aquí ya tendríamos tanto en desarrollo como en producción cada cosa con su base de datos. Que no nos ha gustado el resultado de esto por lo que sea y queremos hacer otra cosa, pues no pasa nada, ¿no? Hacemos esto antes de nada realizamos los nuevos cambios. Imagínate que al final son 10 cambios y tres modelos, pues otra vez hacemos un gitol originamos

[364:32] todos esos cambios, los nuevos modelos. Finalmente hacemos el mismo procedimiento y ese sería el procedimiento. Hacemos los cambios en local, no hacemos las migraciones, subimos esos cambios antes de hacer migraciones, probamos las migraciones en local y si nos gustan ejecutamos las migraciones en el servidor de producción. que no nos gustan, pues hacemos todos los cambios, no hacemos migraciones, enviamos los nuevos cambios de lo que acabamos de rehacer o de añadir y ahí sí hacemos migraciones en

[365:08] el servidor. Para probar nuestro sitio web, vamos a ir a la pestaña web y utilizamos este enlace. Si aparentemente lo veis todo bien, se han cargado bien los archivos estáticos, lo siguiente que os recomiendo ir probando es a registraros con un nuevo usuario. Recordar que no tenéis los usuarios antiguos, esos están en desarrollo. Iniciáis sesión, vais al catálogo, probáis el buscador, etcétera.

[365:36] Todo lo que hemos hecho. En catálogo no va a salir nada. Ya que hemos creado las tablas, tenemos los archivos estáticos con las carátulas y todo, pero no tenemos datos. Estos datos tenemos que venir al admin e introducirlos. En ese caso ponemos la dirección que tenemos barraadmin.

[366:00] Aquí no tenemos ahora superusuario, tenemos que crear uno, lo creamos en la consola que tenemos en Python Anyware, de la misma manera que lo hacíamos en desarrollo. Nos vamos a la consola e iniciamos el entorno virtual, vamos a donde está el archivo manage.p, indicamos que estamos en producción, si no lo tenemos ya en la consola activa. Todos estos pasos te los repito para que no te olvides de ciertas cosas, ya que una vez que tengas la consola abierta, puedes hacer todas estas acciones de una vez, sin tener que

[366:32] estar haciendo cada vez los mismos pasos. Ahora ponemos el comando para crear el superusuario, le ponemos un nombre. Al crear este usuario me salen un montón de errores. Esto viene bien para poder ir aprendiendo. Dichos errores los podéis arreglar con una inteligencia artificial, ir preguntando, mirando a ver por dónde podéis investigar el fallo, cómo podéis solucionarlo, pero también lo podéis ver por vuestra cuenta. Haciendo pruebas antes de grabar. Yo ya he creado algún superusuario y por aquí me da un error

[367:10] de MySQwell. error de integridad y dice entrada duplicada para justamente el correo electrónico. Y de la manera que tenemos hecho nuestro proyecto no dejábamos usuarios con correos duplicados. Por lo tanto, este error puede parecer muy escandaloso y que se ha roto todo, no funciona nada, pero realmente es esta tontería. Solución.

[367:33] Volvemos a ejecutar el pythonmanage.par superusuario y ponemos otro correo que no sea el mismo. Lo volvemos a intentar. Ese era el usuario que yo ya tenía. Si ya está el nombre de usuario, en este caso, me dirá que ese nombre de usuario ya está en uso y por lo tanto pongo otro.

[367:56] Ya se ha creado correctamente. Y este es el que tenemos que utilizar aquí. Podemos ver que el admin está funcionando y para añadir productos en el catálogo, juegos en mi caso, le damos a añadir o vamos a la tabla, vemos que no hay ningún juego. Añadir juego. En imagen vamos a poner los nombres de las imágenes. En mi caso era 1.webp 2 3 4 5 hasta el día. pues se pone el nombre, el precio, que lo podemos poner con estos decimales, con la coma y la plataforma, aparte de la imagen o todos

[368:35] los datos que tuviese cada elemento. Si no te acuerdas de los nombres de imagen, ven a Visual Studio Code y miras las portadas cómo las tenías. Está la por defecto, que es la que aparece ahí en el admin, si no queremos cambiar nada y se cargaría esta. Pero tenemos que añadir un producto, puede ser con imagen o sin imagen. Si utilizamos la default, voy a poner test. Ponemos una plataforma, un precio.

[369:05] Guardamos y probamos. Bien, en catálogo ya aparece con esa imagen default y se crea todo lo que se tenga que crear. La lógica para que todo esto se presente ya la tenemos hecha. Ahora solo tenemos que hacer esto, poner productos de una manera muy sencilla. Si tuviésemos un empleado que tuviese que encargarse de modificar precios, de poner productos y todas estas cosas, lo podría hacer sin ni siquiera saber programar y sin tener que enseñarle a utilizar una interfaz supercleja. El mismo día ya se podría

[369:46] poner añadir cosas. que queremos editar este producto para ponerle una imagen, pues vamos a ponerlo. Cambiamos también las plataformas, añadimos más, quitamos lo que queramos hacer. En este caso el nombre no está bien. Había dicho que era web P, así.

[370:12] Y ahora sí me aparece esa imagen que podemos ver. también en el catálogo. Y si por aquí añadimos más productos, pues ya está, irán saliendo. En el buscador ya podemos buscar si buscamos algo que no está, por ejemplo, este punto no hay resultados. Y ahora ponemos eso y sigue funcionando.

[370:41] Podríamos añadirlo al carrito. Bien, funciona. Y ya está. Ya nuestros usuarios a través de internet pueden crearse su cuenta, gestionar su carrito y demás. En la pestaña de web tenemos ciertas cosas más. tenéis aquí unos archivos de lock donde podréis ir viendo errores que os vayan surgiendo. Si os aparece cuando estéis cargando vuestra aplicación por aquí algo como server error 500, esto aparecerá porque la depuración está desactivada y por lo tanto se genera un error de servidor y no sale

[371:18] todo ese texto amarillo que nos enseñaba en qué archivo estaba el error, cuál era el problema, ya que esto no queremos que los usuarios lo vean en el caso de que haya un error. Para poder saber qué tipo de error es, podemos venir a los logs, revisamos estos archivos, la hora en la que ha ocurrido ese error aproximada y podremos ir indagando. Es un poquito más difícil de resolver así, ya que no hay tanta información quizás, pero bueno, iréis aprendiendo a solucionarlo todo.

[371:45] Como siempre os digo, cualquier error que os vaya saliendo, que no sepáis de dónde viene, ir preguntándolo a una inteligencia artificial que os vaya dando pistas. No esperéis que os lo solucione todo, sino ir investigando y descubriendo cómo funcionan las cosas.

[372:01] Si estamos todavía en la etapa de desarrollo, no queremos desplegar a todo el mundo este sitio web, no queremos que al poner la dirección pues lleguen o desde un buscador que no puedan entrar para ir protegiéndolo y que nosotros mismos podamos hacer pruebas en este entorno de producción, pues podemos establecer una protección por contraseña habilitando esto y pondríamos un nombre de usuario y una contraseña.

[372:29] Por ejemplo, ponemos esto, ponemos una contraseña cualquiera. Y ahora si recargando no pide la contraseña, vamos a venir aquí. Recargamos y probemos de acceder. Como puedes ver, ya me pide nombre y usuario. Si me equivoco, pues no me deja acceder.

[373:04] Y si la pongo bien, pues ahí sí que puedo acceder. Esto está por encima de todo nuestro proyecto Yangjango. Una vez queramos deshabilitar esta contraseña, porque ya no queremos hacer pruebas y queremos que entren usuarios externos, pues ya deshabilitamos esto. Incluso si queremos deshabilitar el despliegue de nuestro proyecto, hacemos esto, deshabilitar web app y la tenemos deshabilitada. Entonces, cuando queramos acceder, nos saldrá este mensajito por defecto, pero todo lo que tenemos está

[373:36] aquí configurado simplemente por si queremos una pausa que decimos, queremos deshabilitar esto, se quiere seguir perfeccionando ciertas cosas en desarrollo, organizaros como queráis. Luego, para rehabilitar le dais aquí reactivar y ya debería estar disponible.

[373:57] Finalmente, si queréis eliminar esta web app, le dais aquí y acabáis con todo. En esta pestaña podéis programar ciertas tareas que se pongan por cierta frecuencia y que ejecuten scripts que necesitemos para hacer algo, como por ejemplo hacer copias de seguridad de la base de datos.

[374:17] Ahora vamos a hacer una clave SSH para poder evitar que nos esté pidiendo usuario y un token cada vez que queramos hacer algo con el repositorio privado, ya que cuando hacemos varias actualizaciones puede ser bastante molesto. Venimos al perfil, le damos a settings, venimos a SSH y por aquí, en este botón crearemos una nueva clave SSH.

[374:43] A esta clave le podemos poner un nombre como este que sepamos de qué es. Vamos a generar una clave SSH en Python Anyware que conectaremos con GitHub. Abrimos una consola bash y ponemos el siguiente comando y entre comillas ponemos un email.

[375:06] Presionamos enter. Enter de nuevo sin hacer nada más. Enter y enter. Ponemos el siguiente comando y aquí vas a ver muchos caracteres. Terminando con el correo que has puesto. Copia toda la línea hasta el correo incluido y la vas a pegar aquí en el apartado de clave. Le das para finalizar añadir. Te pedirá la contraseña de GitHub. Se la pones y confirmas.

[375:37] Aquí podrás comprobar que se ha añadido correctamente. Con esto nos vamos a nuestra rama y supongamos que hemos hecho cambios en desarrollo, queremos actualizarlo. Ponemos ese git pull origin master y sin esta clave que hemos generado nos pediría el token cada vez.

[375:59] Pues ahora mismo no lo he necesitado gracias a esto. Ya podemos trabajar siempre con nuestro repositorio privado sin preocuparnos de nada mientras tengamos esa clave SSH. Otro detalle más es que la clave secreta que tenemos desde el principio está generada automáticamente por Django. Si estamos desarrollando con más personas, podría ser que alguien hubiese visto esta clave o que hubiese quedado en algún comit de las subidas que hemos ido haciendo a GitHub. Si esto ha ocurrido o

[376:30] simplemente porque quieres cambiar esta clave, se ha filtrado, pues lo puedes hacer muy fácilmente. Vienes a la consola, pones esto y lo que aparece por aquí que está censurado, es una clave generada. Esta clave la vas a copiar y a poner en el archivo de producción, el que tenemos ya subido en Python Anywhere. Pues dejamos el curso aquí. Espero que os haya gustado, que os hayáis divertido.

[376:57] Ya sé que os habrá costado seguramente bastante trabajo, sobre todo si no había tocado ningún framework, si no sabíais nada o casi nada de backend, pero es una dificultad necesaria para que sigáis avanzando. Con este curso habéis obtenido unas bases generales de lo que es un entorno de desarrollo con el control de versiones, con producción.

[377:16] Hemos tocado un poquito de todo. Ahora que tenéis estas bases, es vuestro momento de que vayáis aprendiendo más. Django todavía tiene más secretos, podéis seguir aprendiendo mucho más y sobre todo podéis seguir aprendiendo Git, la parte del backend, podéis estudiar más frontend si os interesa.

[377:34] Hay muchas cosas por seguir aprendiendo. Esto es Programación Fácil. Nos vemos muy pronto con el siguiente curso. Hasta la próxima.
