# 🔥 DeepSeek Cambió las Reglas: ¡Así Funciona su Nuevo Creator Mode!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=wVWr0LOTq0Q)
- **Canal**: Informática DP
- **Publicado**: 2026-11-11
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:47

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] DeepSeek acaba de liberar su nuevo modo creador y ahora podemos crear nuestras propias herramientas con IA, simplemente usando instrucciones en lenguaje natural. Pero, ¿qué tan potente es realmente? En este video vamos a instalarlo, configurarlo y ponerlo a prueba con dos ejemplos prácticos. Vamos a ver si cumple lo que promete. El modo creador, Creator Mode, no [carraspeo] es completamente nuevo. DeepSeek ya lo había incorporado de manera experimental en septiembre del 2026. La novedad es

[00:34] que hace unos días lo presentó oficialmente, mostrando todo su potencial con diferentes demostraciones. Este modo forma parte de DeepSeek Armes, una plataforma de agentes de IA gratuita y de código abierto. Lo interesante es que ahora podemos crear nuestras propias herramientas y plugins utilizando instrucciones en lenguaje natural sin tener que programarlos manualmente. Y aunque todavía se encuentre en fase de prueba pública, hoy vamos a instalarlo y comprobar qué podemos construir con él.

[01:03] Voy a pasar a instalarlo. Lo podemos hacer desde la línea de comandos, desde su aplicación. Lo voy a hacer desde la aplicación porque es un poquito más visual. Por supuesto que en otro video del canal ya lo mostré, pero siempre el público se renueva, así que lo voy a descargar.

[01:19] Ahí terminó, lo ejecutamos. Le vamos a dar acá, instalar ahora. Ahí terminó, le vamos a dar finalizar. Como está el check de lanzar ahora, es posible que haya algún prompt porque lo tenía instalado antes. Y muy bien, gente, acá ya estamos con la aplicación de escritorio. Recuerden que al ser open source, podemos trabajar con distintos proveedores, con distintos modelos, distinto a lo que es Cloud Code o Codex, que son los más grandes, los que dominan el mercado, donde solamente nos dejan

[01:48] trabajar con sus modelos. El de Cloud con todos los modelos que libera o que tiene Anthropic y Codex con todos los modelos de OpenAI. Muy bien, ahora lo que voy a hacer, fíjense acá. Estamos en parte de la aplicación, vamos a settings, acá tenemos las configuraciones clásicas, ya lo mostré en otros videos, pero acá tenemos los modelos. Acá tenemos DeepSeek Google, esto debe ser porque yo lo agrego en otro momento, pero como voy a trabajar con otro proveedor y ese proveedor me va

[02:14] a dar otro modelo, voy a poner acá añadir model provider. Y voy a trabajar con Command Code. Voy al panel de Command Code y voy a generar una nueva API Key y le voy a poner modo creador, le voy a dar generar API Key, me va a generar una clave y ya con eso voy a poder configurar en el arnés de DeepSeek.

[02:33] Ahí ya copié la clave, le voy a dar hecho. Y si vemos acá en mi lista de claves, tengo acá modo creador. Vuelvo a la aplicación, acá tengo que elegir custom model API. En el nombre del proveedor voy a poner Command Code, nombre para mostrar el mismo, solo que separado, en la API Key la que acabamos de crear, acá lo que es la base URL, esto está en la documentación, tiene que ser así, api.commandcode.ai.

[03:02] Si ustedes tienen otro proveedor, la configuración va a ir con lo del proveedor, pero bueno, esta es una manera de mostrar cómo se configura un proveedor custom. Acá dejamos así el protocolo OpenAI Chat Completions, acá viene la API Key y ahora vamos a ver los modelos disponibles, voy a elegir DeepSeek 41 Flash, lo voy a tildar y ya lo tengo acá. Ahí se cargó y voy a dar crear proveedor.

[03:28] Ahora sí está todo okay porque fíjense que ya tengo el tilde en verde. Y acá hago clic, model. Ahí ya lo elegí y el modo vamos a elegir modo creador. Estoy en una carpetita que se llama temp. Fíjense, no tengo nada en esta carpetita. Antes de comenzar con las demostraciones, hay algo importante que tenemos que tener en claro. ¿Qué tiene de especial Creator Mode y en qué se diferencia de cualquier otro agente de IA? A ver, hoy en día podemos utilizar herramientas como Codex, OpenAI

[03:58] Code o cualquier [música] otro agente para crear una aplicación completa simplemente escribiendo un prompt. Entonces, ¿qué cambia con el modo creador? La diferencia es que no solamente podemos crear aplicaciones, sino también nuevas herramientas que se integran directamente, [música] en este caso en DeepSeek Arnes. Por ejemplo, con un agente tradicional podemos pedirle que desarrolle un generador de códigos QR. La gente escribe el código, crea los archivos y ejecutamos la aplicación. Con

[04:27] el modo creador vamos un paso más allá. Podemos pedirle que se cree ese mismo generador de QRs, pero como un plugin integrado en el propio entorno de DeepSeek. Esto significa que una vez instalado podemos utilizarlo cuando lo necesitemos sin tener que volver a generarlo desde cero. Y acá está lo interesante, estamos utilizando IA para ampliar las capacidades de la propia herramienta de inteligencia artificial.

[04:53] Ahora bien, otros agentes también pueden desarrollar plugins. La novedad es que el modo creador está especialmente diseñado para facilitar este proceso dentro de DeepSeek Arnes. Y para comprobar cómo funciona vamos a comenzar creando una herramienta sencilla, nuestro propio generador de códigos QR personalizados. Así que ahora lo vamos a ver. La primer demo es un generador de códigos QR que va a estar integrado en DeepSeek Arnes. ¿Qué es lo que queremos?

[05:22] Que aparezca como una herramienta dentro de la interfaz que permita ingresar una URL, personalizar los colores y descargar el código QR. Ahora voy a pegar el prompt en inglés. Vamos a pegarlo acá. Luego se los dejo al prompt. ¿Qué es lo que vamos a esperar? Que empiece a crear el plugin, que instale las dependencias, que lo agregue a Arnes y que después podamos probarlo desde la interfaz.

[05:45] Vamos a ver, vamos a hacer la prueba. Fíjense acá fue un error mío porque se ve que elegí DeepSeek, pero era de otro proveedor a Nvidia y capaz que se acabaron los créditos, ¿no? Pero ahora sí, este es command code DeepSeek 41.flash fast. Vamos a ver y vamos de nuevo.

[06:05] Efectivamente era un modelo de otro proveedor donde la API key puede haber caducado, pero porque no lo había elegido desde el proveedor que acabo de agregar que es Command Code. Así que vamos a ver, vamos a esperar que termine y lo vamos a ver acá.

[06:19] [música] Muy bien, luego de unos minutos finalmente terminó y ya lo podemos ver acá al QR generador de código. Ahora lo vamos a probar. ¿Qué es lo que brevemente nos dice? Que creó todos los archivos necesarios incluyendo la interfaz, la lógica del generador, la configuración del plugin y su integración en el menú lateral. Otra cosa interesante es que no utilizó servicios externos ni dependencias adicionales en tiempo de ejecución. El generador funciona completamente dentro del propio plugin. Además, DeepSeek

[06:52] informa que realizó 89 pruebas automáticas comparando los códigos QR generados en una implementación con una implementación de referencia y que todas fueron satisfactorias. Muy bien, ahí tenemos un pequeño resumen. Así que ahora vamos a hacer unas pruebas. Vamos con la primera. Vamos acá a nuestro código. Acá tenemos una URL y vamos a poner la URL de informática de Por ejemplo, si yo pongo acá esta URL me lleva acá. Vamos a hacer la prueba acá y aparece el código QR listo para

[07:22] usar. Acá vamos a cambiar el color, vamos a poner otro y ahí vamos personalizando el color de los códigos QR. Vamos a dejar así, por ejemplo. Y finalmente lo podemos descargar como PNG. Lo abrimos y tenemos listo para incrustar a donde necesitemos. Ahora otra cosa que hay que tener en cuenta que esto una vez instalado, es decir, este plugin queda disponible para utilizarlo nuevamente. Miren, voy a cerrar todo y acá me dice como que está corriendo en segundo plano, le doy confirmar. Efectivamente está acá, lo

[07:53] voy a voy a darle quit, salir, así lo detenemos. Ahora lo vamos a abrir de nuevo y ya lo tenemos integrado nuestro generador de códigos QR. Quedó perfecto y funcionando perfecto. Para nuestra segunda prueba vamos a crear acá una nueva sesión, vamos a poner el modo creador, vamos a dejar este modelo.

[08:14] Vamos a crear una herramienta un poco más completa y especialmente útil para quienes trabajamos en desarrollo de software. Esta vez vamos a pedirle al modo creador que construya un JSON toolkit, un plugin que nos permita trabajar con archivos y respuestas JSON directamente dentro de DeepSeek Arnes.

[08:33] La idea es incorporar cuatro funcionalidades, formatear el código, validar la estructura, detectar errores y visualizar los datos mediante un árbol interactivo. Así que le voy a dar el prompt también en inglés y vamos a ver qué es lo que sucede.

[08:50] [música] Muy bien, gente, acá como podemos ver ya terminó de crear nuestro JSON toolkit, ya lo vemos aquí. Esta vez el proceso fue más rápido en aproximadamente cuatro minutos. Además reutilizó la estructura del plugin anterior sin modificarlo ni afectar su funcionamiento. En cuanto a las funcionalidades tenemos un editor donde podemos pegar cualquier JSON y visualizarlo automáticamente con una estructura ordenada. También podemos validar su sintaxis, detectar errores, minificar el contenido para eliminar

[09:18] espacios innecesarios. Otra función interesante es la vista de árbol y por supuesto podemos copiar los resultados al limpiar el editor. Todo funciona localmente con JavaScript sin dependencias externas, sin backend y sin consumir tokens de IA cada vez que utilicemos el plugin. DeepSeek también confirmó que el plugin quedó instalado y activo aunque no pudo ejecutar todas las comprobaciones automáticas, así que ahora lo vamos a probar. Vamos acá, JSON toolkit. Vamos a copiar un JSON. Fíjense que acá está el

[09:46] formateador, pero no no se ve bien. A ver, le vamos a dar un pequeño fix en inglés para que sea más rápido. A ver ahí, supuestamente ya está. Y sí, ya lo tenemos listo y perfecto. Vamos a probarlo. Acá tengo un JSON, fíjense, apenas lo pego y vamos a darle acá ahora sí el botón de format y lo lo que necesitamos es que el JSON esté ordenado y con indentación de dos espacios. Bueno, acá ya lo da como válido. En minify necesitamos algo compacto en una sola línea. Perfecto, pero fíjense que con el validate es

[10:26] posible que no notemos nada porque el JSON Toolkit ya valida automáticamente el contenido. Luego tenemos acá, como les mostraba, la vista de árbol donde podemos minimizar, expandir, nos dice la cantidad de claves que tienen. Así que algo sencillo, pero lo que les quiero mostrar es todas las herramientas que podemos tener ya listas en nuestro agente. Muy bien, gente, llegamos al final. Tenemos estas dos herramientas que hemos probado, pero seguramente muchos estarán preguntando, ¿el modo

[10:53] creador sirve solamente para crear plugins como los que acabamos de mostrar? Y la respuesta es no. Lo que hicimos hoy fue aprovechar una de sus funcionalidades, pero el modo creador permite ir bastante más [música] allá.

[11:07] Por ejemplo, podemos agregar nuevas herramientas a la gente, conectarlo con servicios externos mediante AIM y P, inspeccionar componentes internos, incluso crear configuraciones personalizadas que cambien su forma de trabajar. En otras palabras, no solamente podemos crear herramientas para DeepSeek, sino también personalizar las capacidades y el comportamiento del propio agente. Y esa es precisamente la propuesta del modo creador, permitirnos construir un entorno de IA adaptado a

[11:36] nuestras necesidades utilizando instrucciones en lenguaje natural. Muy bien, gente, por favor, si les gustó el video, dejen un like, suscríbanse y nos vemos en próximos videos. Gracias. Chao.
