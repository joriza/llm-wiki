# FREE 32GB VRAM Server for Running AI Models Locally

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Qb-C1MWYkV4)
- **Canal**: Abi
- **Publicado**: 2026-10-28
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] ¿Qué pasaría si te dijera que puedes ejecutar potentes modelos de IA grandes totalmente gratis? Incluso si tu computadora no tiene una GPU dedicada, sin tarjetas gráficas costosas, sin PC potente y sin suscripciones pagas a la nube. En este video, te mostraré cómo usar las GPU gratuitas en la nube de Kaggle para ejecutar modelos de IA y acceder a ellos desde tu propia computadora. Hoy quiero mostrarte paso a paso cómo ejecutar grandes modelos de IA usando los recursos de GPU

[00:27] gratuitos de Kaggle. Comenzaremos creando un cuaderno de Kaggle y habilitando la aceleración por GPU. Luego, instalaremos Ollama, descargaremos un modelo de IA de Hugging Face y usaremos un túnel de Cloudflare para conectar el modelo a nuestra computadora local. Al final de este tutorial, podrás interactuar con un potente modelo de IA directamente desde tu terminal sin necesitar una GPU de gama alta en tu computadora.

[00:50] Proporcionaré todos los comandos necesarios en la descripción del video , para que puedas seguirme fácilmente. Empecemos. Crea un cuaderno de Kaggle. Primero, abre el sitio web de Kaggle. No te preocupes, dejaré el enlace en la descripción a continuación, para que puedas acceder fácilmente. Antes de comenzar, debemos asegurarnos de que el acceso a la GPU esté habilitado. Ve a la configuración de tu cuenta de Kaggle y completa la verificación telefónica requerida si aún no lo has

[01:13] hecho. Este paso es importante porque Kaggle puede requerir la verificación de la cuenta antes de permitir el uso de sus recursos de GPU gratuitos. Una vez que tu cuenta esté verificada, regresa a la página de inicio de Kaggle. Ahora, haz clic en crear y selecciona nuevo cuaderno. Esto creará un nuevo cuaderno de Kaggle donde configuraremos todo. Habilita la GPU gratuita. Ahora que nuestro cuaderno está listo, habilitemos la aceleración por GPU. En el lado derecho, abre la configuración del

[01:39] cuaderno. Busca la opción de aceleración y selecciona GPU T4 x2 si está disponible. Esto nos da acceso a dos GPU Nvidia T4, cada una con 16 GB de VRAM. Ten en cuenta que esto no significa que todos los modelos puedan usar los 32 GB combinados automáticamente. El uso de memoria depende de cómo se cargue y distribuya el modelo entre las GPU. Una vez que hayas seleccionado la GPU, estamos listos para instalar Ollama. Instalar Ollama. Ahora, haz clic en agregar código para crear una nueva celda de

[02:08] código. Voy a pegar el primer comando aquí. No te preocupes por escribir todo manualmente. Incluiré todos los comandos en la descripción del video. Ejecuta la celda y espera a que termine . A continuación, crea otra celda de código. Esta vez, instalaremos Ollama, lo que nos permite descargar y ejecutar modelos de IA. Pega el comando de instalación y haz clic en ejecutar.

[02:27] Espera unos momentos mientras Kaggle instala Ollama. Una vez que se complete la instalación, deberías ver un mensaje de confirmación. Perfecto. Ollama ya está instalado. Inicia el servidor de Ollama. A continuación, debemos iniciar el servidor de Ollama.

[02:41] Crea otra celda de código y pega el comando de inicio del servidor. Ahora, haz clic en ejecutar. Una vez que el servidor inicie con éxito, Ollama estará listo para cargar modelos de IA de terceros. Mantén el servidor ejecutándose en segundo plano porque lo necesitaremos para los siguientes pasos. Busca un modelo de IA en Hugging Face. Ahora viene la parte interesante: elegir el modelo de IA que queremos ejecutar. Para esto, vamos a utilizar Hugging Face. Si ya estás familiarizado con Hugging Face,

[03:06] probablemente sepas que aloja miles de modelos de IA. Si eres nuevo en esto, no te preocupes. Dejaré el enlace del sitio web en la descripción a continuación. Abre Hugging Face y haz clic en modelos. De los filtros disponibles, selecciona generación de texto. También puedes ordenar los resultados por los modelos más descargados para explorar opciones populares. Si buscas un tipo de modelo específico, puedes usar la barra de búsqueda para filtrar los resultados.

[03:29] Por ejemplo, puedes buscar modelos con menos restricciones de contenido si eso es lo que quieres experimentar. Una vez que encuentres un modelo que te guste, abre su página. Ahora, busca una versión GGUF compatible que pueda cargarse a través de Ollama. Para este tutorial, voy a elegir un modelo cuantizado Q4KM. Este suele ser un buen equilibrio entre calidad del modelo, uso de memoria y rendimiento. Sin embargo, la velocidad real y los requisitos de memoria dependerán del tamaño del modelo. Copia la referencia

[03:57] del modelo o el comando de descarga. Ahora, volvamos a Kaggle. Descarga y carga el modelo de IA. De vuelta en nuestro notebook de Kaggle, crea otra celda de código. Pega el comando para el modelo que seleccionamos. Ahora, haz clic en ejecutar. Ollama comenzará a descargar los archivos. Dependiendo del tamaño del modelo y la velocidad de red de Kaggle, esto podría tomar unos minutos. Una vez completada la descarga , Ollama cargará el modelo para que podamos probarlo. Puedes ver que

[04:21] nuestro modelo ahora está respondiendo correctamente. Eso es genial. Como nuestro objetivo es acceder a este modelo desde nuestra computadora, no necesitamos seguir chateando con él dentro del notebook. Podemos detener la sesión interactiva del modelo mientras mantenemos el servidor de Ollama ejecutándose. Ahora estamos listos para conectarlo a nuestra máquina local. Configura el túnel de Cloudflare. Para acceder a nuestro modelo de IA alojado en Kaggle desde nuestra computadora, usaremos un túnel

[04:44] de Cloudflare. Esto nos permite crear un punto final HTTPS público que reenvía las solicitudes al servidor de Ollama que se ejecuta en Kaggle. Crea otra celda de código y pega el comando de instalación de Cloudflare. Ejecuta la celda y espera a que finalice la instalación. Crea una celda más. Pega el comando que inicia el túnel de Cloudflare y lo conecta al servidor Ollama. Ahora, ejecuta el comando.

[05:07] Después de unos momentos, Cloudflare debería generar una URL pública temporal. Esta es la URL que usaremos para conectar nuestra computadora local al modelo de IA. Copia la URL y guárdala en un lugar seguro. Importante: Una URL de túnel temporal de Cloudflare puede ser accesible públicamente. No la compartas abiertamente ni la uses para exponer datos sensibles. Para una configuración segura, configura la autenticación y los controles de acceso. Además, recuerda que el túnel solo funcionará mientras la sesión de

[05:34] Kaggle, el servidor Ollama y el túnel de Cloudflare permanezcan activos. Conecta el modelo a nuestra computadora local. Ahora que todo se está ejecutando en Kaggle, cambiemos a nuestra computadora local. Para esta demostración, estoy usando una Mac.

[05:46] Abre tu terminal. Si estás usando un agente de programación que admite puntos de enlace personalizados compatibles con OpenAI, abre su configuración de modelo. En este tutorial, usamos la opción de punto de enlace de modelo personalizado del agente de programación local. Si aún no has instalado el agente de programación, ya he creado un tutorial por separado que muestra cómo instalarlo y configurarlo. Puedes ver ese video usando el enlace en la descripción a continuación. Ahora,

[06:09] continuemos. Busca la opción para añadir un punto de enlace personalizado. Cuando se te solicite la URL del punto de enlace, pega la URL del túnel de Cloudflare que copiamos antes. Al final de la URL, añade/v1. Esto dirige al cliente a la API de Ollama compatible con OpenAI. Presiona enter para continuar. A continuación, la aplicación puede solicitar una clave API. Si estás usando un punto de enlace de Ollama compatible sin autenticación de clave API, el cliente podría aceptar un valor de marcador de

[06:36] posición como "Ollama". Recuerda, este marcador de posición no es un mecanismo de seguridad. Un punto de enlace público debe protegerse por separado. Ahora, continúa a la pantalla de selección de modelo. Selecciona el modelo de IA. Aquí, la aplicación debería detectar los modelos disponibles a través de nuestro punto de enlace personalizado.

[06:52] Mira la lista y encuentra el modelo que descargamos anteriormente. Deberías ver el mismo nombre de modelo incluyendo su variante de cuantización cuando corresponda. Para esta demostración, seleccionamos nuestro modelo Q4 KM. Elige el modelo y confirma tu selección. Si la aplicación solicita ajustes de opciones adicionales, puedes mantener los valores predeterminados a menos que tu modelo elegido requiera algo distinto. Ahora, nuestro modelo personalizado está configurado. Vamos

[07:17] a probarlo. Prueba el modelo de IA. Abre el agente de programación desde tu terminal. Ahora deberías ver el modelo que configuramos. Comencemos con una instrucción sencilla. Voy a escribir: "Hola, ¿en qué me puedes ayudar?" Presiona enter, y listo. Tu modelo de IA está respondiendo directamente dentro de la terminal.

[07:33] Ahora, hagamos otra pregunta. "¿Qué modelo de IA estás usando?" Puedes ver que el modelo está generando una respuesta. Ten en cuenta que la identidad autodeclarada de un modelo no siempre es fiable. El nombre del modelo en la configuración del cliente o devuelto por la API es una mejor forma de verificar qué modelo se está ejecutando realmente. Lo importante es que el mismo modelo se está ejecutando en las GPU en la nube de Kaggle mientras accedemos a él desde nuestra propia computadora. Nuestra computadora

[07:58] local simplemente está enviando solicitudes y mostrando las respuestas. El procesamiento pesado de IA ocurre de forma remota en Kaggle. Esto significa que podemos experimentar con modelos que, de otro modo, serían demasiado exigentes para nuestro hardware local.

[08:10] Y así es como puedes usar los recursos de GPU gratuitos de Kaggle para ejecutar potentes modelos de IA de forma remota. Hemos instalado Ollama con éxito, cargado un modelo de IA de Hugging Face, creado un túnel de Cloudflare y conectado el modelo a nuestra terminal local. Lo mejor es que no necesitamos comprar una tarjeta gráfica costosa ni actualizar nuestra computadora. Solo recuerda que Kaggle tiene cuotas de uso de GPU y límites de sesión. Por lo tanto, esta configuración es más adecuada para el

[08:34] aprendizaje, la experimentación y proyectos temporales que para un uso continuo en producción. Y eso es todo. Ahora puedes ejecutar tus potentes modelos de IA gratis usando la GPU en la nube de Kaggle sin necesitar una computadora costosa. Si este video te resultó útil, dale un "me gusta" y compártelo con alguien que quiera ejecutar modelos de IA gratis. No olvides suscribirte para ver más tutoriales. Gracias por ver el video y nos vemos en el próximo.
