# LLMOps: Cómo Evaluar tu Agente RAG con RAGAs | Tutorial Práctico

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oELZcpNCU9c)
- **Canal**: Del Código a la Arquitectura
- **Publicado**: 2025-09-23
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 10:46

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hey, ¿qué tal a todos? Bienvenidos nuevamente al código de la arquitectura. Yo soy John y en el video anterior refactorizamos nuestra agente, lo empaquetamos en un dockerfile y lo desplegamos en Hugin Face Space. Todo esto completamente gratis. Ahora que nuestra gente está en la nube, nos enfrentamos a una pregunta importante.

[00:21] ¿Cómo sabemos que está funcionando bien? Hoy vamos a ver un poco de lo que es el Llm Ops para poder responder a esta pregunta. También vamos a aprender qué es MLOPS y LLMOs y construiremos un panel de evaluación usando ragas para medir de forma objetiva la calidad de nuestro agente.

[00:43] El ML Ops o Matching Learning Operations tiene como objetivo automatizar y estandarizar todo el ciclo de vida de un modelo, desde la recolección de datos, el entrenamiento y la validación. hasta el despliegue y el monitoreo en producción.

[01:04] Ahora, el LLMOs es una especialización de MLOPS. Se enfoca en las aplicaciones que usan modelos de lenguaje grandes como nuestro agente, por ejemplo. El LLMOPS comparte los mismos principios del MLOPS, pero en lugar de entrenar modelos de tesero, nos preocupamos más por la ingeniería de proms, la gestión de la evaluación y el monitoreo constante para detectar alucinaciones en los modelos.

[01:36] El primer paso y quizás el paso más importante en LLM OPS es la evaluación objetiva y para esto necesitamos métricas. Por eso vamos a usar ragas, que es un framework diseñado para evaluar pilines de RAC. Entonces, ya entendiendo esto, vamos a ir a Google Colab y aquí tenemos un script de evaluación. Este script llamará a nuestra API desplegada en Hugin Face. En la descripción les voy a dejar el link del video donde desplegamos un agente en Hugan Face Space totalmente gratis por

[02:10] si aún no lo han hecho. ¿Y qué más va a hacer este script? Este script va a recoger las respuestas del API y usará ragas para puntuarlas. Entonces vamos a empezar instalando las dependencias que necesitamos y para eso ejecutamos esta primera celda.

[02:28] Al ejecutar la celda de instalación es muy probable que vean este error que nos pide reiniciar el entorno de ejecución. Esto es normal en Colap porque el entorno de Colap fue diseñado para unas versiones específicas y nosotros acabamos de instalar nuevas versiones.

[02:44] Esto podría llegarnos a causar problemas, así que Colap nos dice que debemos reiniciar la sesión para usar estas nuevas versiones que acabamos de instalar. Entonces, vamos a reiniciar la sesión. Le decimos que sí, que estamos seguros.

[03:00] Y bueno, listo. Acá si quieren pueden volver a ejecutar la celda y vamos a ver que nos dice que ya tenemos todas estas dependencias instaladas y también vemos que ya no nos muestra el error. Ahora vamos a realizar las importaciones necesarias que nos van a ayudar a manejar variables de entorno, hacer llamadas a nuestra API, estructurar los datos y a ejecutar la evaluación con ragas.

[03:26] Luego configuramos nuestra APIC de Yemini. Yemini lo usamos porque nos permite usar sus modelos de manera gratuita. También les dejaré en la descripción un link donde realizamos la creación de esta piqui. Esta piqui la guardamos por acá en los secretos y configuramos también la dirección de nuestra gente desplegado en Hugin Face Spaces.

[03:48] El siguiente paso es construir nuestro conjunto de datos para la evaluación. Creamos un diccionario llamado Evaldata. Este diccionario tiene dos claves iniciales. Question, que contiene una lista de las preguntas que le haremos a nuestra gente y reference, que contiene una lista de las respuestas ideales o de las respuestas correctas para cada una de estas preguntas. Estas respuestas de referencia son nuestra base para juzgar la calidad de las respuestas que genere la gente en un entorno real. Estos datos

[04:23] de evaluación son mucho más extensos. Nosotros para nuestro caso de prueba vamos a usar solo tres preguntas y tres respuestas. Acá tenemos que tener en cuenta que como estamos utilizando Gemini, estamos consumiendo nuestro límite gratuito de llamadas. Entonces, si hacemos muchas pruebas, es posible que recibamos un error 419 de Google que nos dice que superamos el límite. Lo que podemos hacer es esperar un tiempo y volver a probar o podemos cambiar el modelo que estamos usando.

[04:56] Como nuestro agente lo construimos con el modelo 2.5 flash, para este script de evaluación vamos a usar el modelo 2.5 5 flashlight que está por acá abajo. Y esto lo hacemos para no consumir los tokens gratuitos de nuestro agente.

[05:17] Ahora viene la parte de recuperar las respuestas y el contexto directamente desde nuestro agente desplegado. Entonces, vamos a inicializar dos listas, respuestas agente y contextos agente. Luego iteramos sobre cada pregunta en nuestro diccionario de los datos de evaluación y dentro del bucle usamos la librería Request para hacer una llamada post a la URL de nuestro agente.

[05:47] En el cuerpo de la petición enviamos un Jason con la consulta y un session ID de ejemplo. En este caso estamos usando UID para que nos genere IDs diferentes para cada petición. También añadimos un time out de 120 segundos para darle tiempo suficiente a la gente de procesar la respuesta. Una vez que recibimos la respuesta, la procesamos con este responde.

[06:11] Y listo. El agente que desplegamos en Hugin Face devuelve no solo la respuesta, sino también el contexto que utilizo para generar esta respuesta. Entonces, extraemos ambos datos del JSON de respuesta y los añadimos a nuestras listas de respuestas agente y contextos agente.

[06:33] Si ocurre algún error durante la llamada Lapi, lo capturamos, imprimimos un mensaje para saber qué pregunta falló y añadimos valores vacíos para no interrumpir el resto del proceso. Vamos a ejecutar esta celda y mientras se ejecuta podemos venir acá a Hugin Faceces y en la parte de loss podemos ver que se refleja el llamado que está haciendo nuestro script a nuestro modelo desplegado en Hugan Face.

[07:02] Listo. Volviendo al colap, ya con las respuestas y contextos recolectados, los añadimos a nuestro diccionario de Evalata con las nuevas claves de Answer y Contexs. Y ahora que ya tenemos nuestro directorio completo, lo vamos a convertir en un objeto dataset de Hugin Face.

[07:23] Y este es el formato que es el que Ragas espera para poder realizar la evaluación de manera eficiente. Para que Ragas pueda juzgar la calidad de las respuestas, necesitamos dos componentes clave. Como ya lo mencionamos antes, necesitamos un llit un modelo de embeds. Primero vamos a inicializar el LLM que actuará como evaluador. Vamos a utilizar Yemini 2.5 flashlight y le pasamos nuestra API key.

[07:53] Este modelo será el encargado de leer la pregunta, la respuesta de la gente, el contexto y la respuesta de referencia para dar una puntuación. Segundo, vamos a inicializar el modelo de embedings con Hugan Face Embedings, seleccionando el modelo que hemos venido usando en toda esta serie videos, que es Paraaprase Multilinguan Mini LM. Y este modelo se usará para calcular la similitud semántica. Por ejemplo, podemos calcular la similitud entre la pregunta y la respuesta a la gente para

[08:25] la métrica de relevancia. Listo. Ya con todo esto preparado, importamos las métricas específicas que queremos medir. Esto lo estamos importando acá arriba desde ragas matrix y vamos a medir qué tan apegado el contexto está la respuesta y también la precisión del contexto.

[08:48] En la descripción y también acá en los comentarios de esta celda les voy a dejar la documentación oficial de Ragas donde podrán encontrar todas las métricas que tenemos. disponibles para evaluar nuestro rack. Luego invocamos a la función evaluate. A esta función le pasamos nuestro dataset de Hugan Face, la lista de matrix, el llm Eval, que es nuestro modelo que actuará como evaluador y el embedingal para los cálculos de similitud.

[09:21] El parámetro race exception igual a false asegura que la evaluación continúe incluso si hay errores con una fila de datos en particular. Una vez que la función evalua y termina su trabajo, es hora de visualizar los resultados.

[09:37] El objeto resul que nos devuelve contiene un resumen de las puntuaciones y para un análisis más detallado, convertimos este objeto en un datafray de pandas usando la función punto to pandas. También vamos a utilizar la función set options para asegurarnos de que el contenido completo de cada columna sea visible y luego imprimimos el data frame.

[10:03] Esto nos presenta una tabla clara y detallada con las puntuaciones de cada métrica para cada una de las preguntas que evaluamos, dándonos una visión granular del rendimiento de nuestro agente. Y listo. Con esto ya tenemos un reporte objetivo que nos dice el porcentaje de fidelidad y de precisión del contexto que tiene nuestra gente. Podemos usar estos puntajes como una línea base para medir todas las futuras mejoras que hagamos.

[10:32] Si te ha gustado este video y quieres seguir perfeccionando a nuestro agente, dale like, suscríbete para no perderte el próximo video y déjame todas tus dudas en los comentarios. Nos vemos en el próximo
