# Estás Usando el Motor de IA Equivocado… y Esta es la Razón

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=DAlkCwhIIoY)
- **Canal**: Cognix
- **Publicado**: 2026-09-06
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 18:20

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hay una razón por la que puedes instalar exactamente el mismo modelo de inteligencia artificial en dos programas diferentes y obtener resultados completamente distintos. En uno, el modelo responde rápido, utiliza bien tu GPU y parece perfectamente optimizado.

[00:17] En otro, consume más memoria, tarda en empezar a generar texto y puede sentirse mucho más lento. Y el problema es que la mayoría de comparaciones en internet intentan resumir todo esto con una sola cifra, tokens por segundo. Pero comparar Ollama, llama.cpp, LM Studio y VLLM únicamente por velocidad es empezar la comparación desde el lugar equivocado.

[00:41] Porque estas herramientas no hacen exactamente el mismo trabajo. Si te interesa entender cómo funciona realmente la inteligencia artificial local, qué herramienta deberías utilizar y cómo sacar mejor provecho de tu hardware, suscríbete al canal, porque aquí explicamos toda esta tecnología sin complicarla más de lo necesario. Ahora sí, para entender qué está pasando, primero tenemos que desmontar una confusión bastante común. Cuando hablamos de ejecutar un modelo localmente, normalmente imaginamos una

[01:10] sola aplicación cargando un archivo y generando texto. Pero detrás de esa ventana hay varias capas diferentes. Y distinguirlas cambia por completo la forma en la que deberías comparar estas herramientas. Podemos pensar en la inferencia local como una pila formada por cinco niveles.

[01:28] En la primera capa tenemos el formato del modelo. Aquí aparecen cosas como GUFF, EXL3, FP8 o los pesos almacenados en formatos como SafeTensors. Esta capa determina cómo están representados los parámetros del modelo y, en muchos casos, qué técnicas de cuantización se están utilizando.

[01:49] Un mismo modelo puede existir en diferentes formatos y diferentes niveles de precisión. Y eso afecta directamente cuánto espacio ocupa, cuánta memoria necesita y qué motores pueden ejecutarlo. En la segunda capa tenemos el runtime o entorno de ejecución.

[02:05] Aquí están realmente los kernels y las operaciones matemáticas que hacen funcionar al modelo. Es la parte que convierte los pesos almacenados en multiplicaciones de matrices ejecutadas sobre tu CPU, tu GPU o ambas. La tercera capa aparece cuando dejamos de pensar en un único usuario y empezamos a servir muchas solicitudes.

[02:26] Aquí entran los motores de inferencia orientados a servidores. Su trabajo ya no consiste simplemente en generar texto. También deben decidir cómo agrupar solicitudes, cómo administrar la memoria, cómo organizar la caché KB y cómo mantener la GPU ocupada cuando hay varios usuarios generando texto simultáneamente.

[02:47] La cuarta capa es la gestión del modelo. Aquí entran herramientas que descargan modelos, mantienen versiones, administran procesos y ofrecen una API sencilla para conectarlos con otras aplicaciones. Y finalmente tenemos la quinta capa, la interfaz que utiliza directamente el usuario.

[03:05] Una aplicación gráfica donde puedes buscar modelos, descargarlos, conversar con ellos, adjuntar documentos o conectarlos con herramientas. Una vez que separas estas capas, muchas comparaciones empiezan a tener mucho más sentido.

[03:20] Porque llama.cpp o llama LM Studio y voellm no nacieron para resolver exactamente el mismo problema. Empecemos por llama.cpp. Llama.cpp es probablemente uno de los proyectos más importantes del ecosistema de inteligencia artificial local. Está desarrollado principalmente en C y C++.

[03:42] Utiliza una licencia MIT y se convirtió en uno de los referentes alrededor del formato GGML. Su principal ventaja es el el Llama.cpp puede ejecutarse sobre una enorme variedad de hardware. Puede utilizar metal en Apple Silicon, CUDA en tarjetas NVIDIA, diferentes instrucciones de CPU y otras rutas de aceleración dependiendo del sistema.

[04:07] Pero una de sus características más importantes para hardware doméstico es la posibilidad de repartir el modelo entre diferentes tipos de memoria. Imagina que tienes una RTX 3060 con 12 GB de VRAM. Tal vez tu modelo no cabe completamente de la tarjeta gráfica. Con llama.cpp puedes colocar una parte de las capas en la GPU y mantener el resto en la memoria RAM del sistema.

[04:32] Eso significa que puedes ejecutar modelos que en condiciones normales superarían la capacidad de tu tarjeta gráfica. Naturalmente, esto tiene un coste. Mover información entre la memoria del sistema y la GPU es mucho más lento que mantener todo dentro de la VRAM.

[04:49] Pero te permite utilizar modelos que de otra manera simplemente no podrías cargar. Y este es precisamente uno de los puntos donde llama.cpp destaca. Control granular. Puedes ajustar el uso de memoria, la cantidad de capas descargadas en la GPU, los subprocesos de CPU y diferentes parámetros del entorno de ejecución.

[05:10] Además, llama.cpp ya no es simplemente un pequeño ejecutable para generar texto desde la terminal. Su servidor incluye funciones como procesamiento por lotes continuo, decodificación especulativa y endpoints compatibles con la API de OpenAI.

[05:27] Pero eso no significa que sea automáticamente la mejor opción para cualquier situación. Su procesamiento por lotes está pensado principalmente para cargas relativamente ligeras. Si necesitas atender un gran número de usuarios simultáneamente, existen arquitecturas diseñadas específicamente para ese escenario.

[05:46] Y aquí es donde aparece una distinción importante con Ollama. Existe una idea bastante extendida de que Ollama simplemente es llama.cpp con una interfaz más sencilla. Eso explica parte de su historia, pero ya no describe completamente lo que hace la herramienta.

[06:03] Ollama funciona principalmente como un gestor del ciclo de vida de los modelos. Su objetivo es hacer que descargar, ejecutar, actualizar y exponer modelos mediante una API sea extremadamente sencillo. Puedes instalar un modelo prácticamente como si instalaras un paquete.

[06:21] Después puedes llamarlo desde una aplicación utilizando una API local. De forma predeterminada, esta API escucha en el puerto 11434. Esa simplicidad es una de las principales razones de su popularidad. Para un desarrollador que simplemente quiere conectar un modelo local con Python, JavaScript, una herramienta de automatización o un agente, Ollama reduce muchísimo la fricción.

[06:47] Pero esa comodidad también significa que tienes menos control directo sobre algunos detalles de bajo nivel. El propio sistema toma decisiones dependiendo de tu hardware. Por ejemplo, las ventanas de contexto predeterminadas pueden variar de acuerdo con la cantidad de memoria gráfica disponible.

[07:04] En sistemas con menos de 24 GB de RAM, el contexto predeterminado puede situarse alrededor de 4000 tokens. Entre 24 y 48 GB, puede aumentar hasta aproximadamente 32000. Y con 48 GB o más, puede llegar hasta 256000 tokens.

[07:24] Eso nos lleva a otro punto importante. Contexto significa memoria. Y cuando aumentas la cantidad de solicitudes paralelas, el consumo de memoria también puede aumentar rápidamente. Por eso una configuración que funciona perfectamente para una sola conversación, puede comportarse de manera muy distinta cuando intentas ejecutar varios agentes simultáneamente.

[07:46] Ahora pasemos a LM Studio y aquí cambia nuevamente la categoría. LM Studio está mucho más cerca de ser un entorno completo de escritorio. Su objetivo principal no es darte todos los controles de bajo nivel posibles. Su objetivo es ofrecer una experiencia cómoda.

[08:04] Puedes buscar modelos desde la propia aplicación, descargarlos, ejecutarlos, conversar con ellos, trabajar con documentos locales y utilizar diferentes herramientas sin configurar manualmente cada componente. Pero algo importante ocurre detrás de esa interfaz.

[08:20] LM Studio puede utilizar runtimes intercambiables. Para modelos GGUF puede apoyarse en llama.cpp. Y en equipos Apple Silicon también puede utilizar MLX. Eso significa que cuando comparas el rendimiento de LM Studio contra llama.

[08:38] cpp utilizando exactamente el mismo backend, parte de la diferencia que estás midiendo puede no estar realmente en la inferencia. Puede estar en la configuración. En la cantidad de solicitudes paralelas. En el contexto.

[08:53] En la cuantización. O simplemente en los valores predeterminados de cada aplicación. Por eso una captura diciendo, "Esta herramienta genera 10 tokens más por segundo." No necesariamente demuestra que una arquitectura sea superior.

[09:08] Puede estar comparando dos configuraciones completamente distintas. Existe además otra diferencia relevante. LM Studio es una aplicación propietaria, aunque utilice runtimes y componentes de código abierto. Esto puede importar especialmente cuando pasas del uso personal o interno a escenarios de redistribución o servicios comerciales.

[09:29] Y después tenemos VLLM. Aquí entramos en otro mundo. VLLM no fue creado principalmente pensando en una persona ejecutando un modelo Goof en su computadora de escritorio. Está diseñado para servir modelos de forma eficiente cuando existen muchas solicitudes concurrentes, es decir, infraestructura.

[09:51] Una de sus ideas fundamentales consiste en administrar la caché KB mediante bloques de memoria de una forma similar a cómo un sistema operativo administra memoria virtual. Esto reduce fragmentación y permite aprovechar mejor la memoria disponible cuando existen múltiples secuencias activas.

[10:09] Además, puede utilizar técnicas como almacenamiento en caché de prefijos, precarga fragmentada, paralelismo tensorial y configuraciones de varias GPU. Y aquí encontramos uno de los errores más comunes en benchmarks caseros. Alguien instala VLLM, carga un Goof, ejecuta una sola conversación, después compara los tokens por segundo contra llama.cpp y concluye que VLLM es peor. Pero ese benchmark prácticamente ignora la razón por la que existe VLLM.

[10:43] Vellum está diseñado para mantener aceleradores trabajando eficientemente mientras procesa múltiples secuencias. En otras palabras, su ventaja aparece cuando la carga aumenta, no necesariamente cuando una única persona hace una sola pregunta desde un ordenador doméstico.

[11:01] Es como comparar un automóvil deportivo con un autobús utilizando únicamente el tiempo que tardan en transportar a una persona. El automóvil probablemente gana, pero ese no es el problema que el autobús fue diseñado para resolver. Algo parecido ocurre con VLLM y tampoco es la única herramienta de este tipo. Otro proyecto importante es SGLang. Su arquitectura utiliza un sistema denominado Radix Attention.

[11:28] La idea consiste en reutilizar estados y cachés cuando varias solicitudes comparten partes del mismo contexto. Esto puede ser especialmente útil en agentes. Imagina un agente que recibe una instrucción de sistema enorme.

[11:43] Después llama una herramienta, obtiene una respuesta, vuelve a generar, llama a otra herramienta y continúa acumulando conversación. Muchas partes del contexto se repiten una y otra vez. Reutilizar esas estructuras puede evitar computar repetidamente información que ya fue procesada. Por eso SGLang puede resultar especialmente interesante en flujos complejos de agentes, herramientas y generación estructurada.

[12:12] También existen opciones todavía más especializadas. Si trabajas exclusivamente con hardware Nvidia y necesitas exprimir al máximo determinadas GPU, TensorRT-LLM puede ofrecer optimizaciones muy agresivas. Pero esa velocidad llega acompañada de mayor complejidad. Las versiones de CUDA, los controladores, las dependencias y las combinaciones compatibles importan mucho más.

[12:37] Para un entorno controlado de producción puede ser excelente. Para alguien que simplemente quiere descargar un modelo esta tarde y empezar a probarlo, probablemente no sea la experiencia más sencilla. En hardware Nvidia doméstico también existen runtimes especializados en formatos diferentes a GUF.

[12:55] Por ejemplo, ExLlama puede aprovechar formatos de cuantización diseñados específicamente para GPU y obtener velocidades muy altas cuando el modelo cabe correctamente dentro de la VRAM. Esto resulta especialmente interesante en tarjetas con cantidades relativamente grandes de memoria gráfica.

[13:13] Mientras tanto, en Apple Silicon existe otra situación completamente diferente. Los procesadores de Apple utilizan memoria unificada. CPU y GPU trabajan sobre un mismo conjunto de memoria. Eso cambia completamente la estrategia.

[13:30] MLX fue diseñado específicamente alrededor de esta arquitectura. Por esa razón, si estás utilizando un Mac moderno, comparar únicamente CUDA contra Metal o copiar configuraciones de un PC Nvidia, normalmente no tiene demasiado sentido.

[13:46] La arquitectura de memoria es distinta. Pero existe otra categoría que está empezando a volverse mucho más interesante, los modelos Mixture of Experts. En estos modelos puedes tener cientos de miles de millones de parámetros, pero durante cada paso de inferencia solo se activa una parte de ellos.

[14:05] Eso abre una posibilidad muy interesante. Tal vez no necesitas tener todos los expertos permanentemente dentro de la VRAM. Algunos motores experimentales están aprovechando precisamente esa característica. Free Token, por ejemplo, utiliza una estrategia donde parte de los pesos permanece en la GPU, mientras los expertos pueden mantenerse en la RAM del sistema.

[14:27] La VRAM restante funciona como una especie de caché dinámica. Cuando se necesita un experto que no está cargado, el sistema decide cómo mover o ejecutar esa parte del cálculo dependiendo del ancho de banda disponible. La idea es importante porque las GPU domésticas tienen una limitación muy clara, la VRAM.

[14:47] Una tarjeta puede tener una capacidad de cálculo gigantesca y aún así ser incapaz de cargar completamente un modelo enorme. Mover algunos componentes hacia la memoria del sistema permite romper parcialmente esa barrera.

[15:01] Pero nuevamente aparece el mismo principio. Poder ejecutar un modelo no significa ejecutarlo con la misma velocidad que si estuviera completamente dentro de la GPU. Otro proyecto experimental lleva esta idea todavía más lejos. Calibri utiliza una jerarquía de memoria con varios niveles.

[15:19] Los expertos utilizados frecuentemente permanecen en Otros pueden mantenerse en RAM y los menos utilizados pueden permanecer almacenados en una unidad NVMe hasta que sean necesarios. Desde el punto de vista técnico, es fascinante porque significa que modelos gigantes pueden cargarse en sistemas que, sobre el papel, tienen muchísimo menos RAM que el tamaño total del modelo.

[15:45] Pero aquí hay que separar dos conceptos: capacidad y rendimiento. Que un modelo pueda ejecutarse no significa que vaya a responder instantáneamente. Cuando los pesos tienen que viajar desde un SSD hacia la memoria y después participar en el cálculo, estás limitado por el ancho de banda y la latencia física del almacenamiento.

[16:07] No existe software capaz de eliminar completamente esa realidad y este es probablemente el punto más importante de toda esta comparación. No existe un motor universalmente más rápido. Existe un motor más adecuado para cada cuello de botella.

[16:23] Si tienes un ordenador doméstico con CPU y GPU y necesitas máxima flexibilidad para repartir un modelo entre ambas, llama.cpp tiene muchísimo sentido. Si quieres una forma extremadamente sencilla de descargar modelos y exponerlos mediante una API local, ollama resulta mucho más cómodo. Si quieres una interfaz gráfica completa para descargar modelos, conversar, probar configuraciones y trabajar con documentos, LM Studio probablemente te ofrecerá la experiencia más sencilla. Si

[16:55] tienes múltiples GPU y necesitas atender muchas solicitudes simultáneamente, entonces herramientas como vLLM o SG Lang empiezan a tener mucho más sentido. Si trabajas con Nvidia y buscas optimizaciones muy específicas para producción, TensorRT-LLM entra en la conversación.

[17:14] Si utilizas Apple Silicon y quieres aprovechar de forma nativa su arquitectura de memoria unificada, MLX es una opción especialmente importante. Y si estás experimentando con modelos gigantes de expertos utilizando hardware doméstico, proyectos como Free Token o Calibri exploran estrategias completamente diferentes.

[17:35] Por eso la próxima vez que veas un gráfico comparando cuatro herramientas únicamente mediante tokens por segundo, mira primero cómo se hizo la prueba. ¿Qué modelo utilizaron? ¿Qué cuantización? ¿Cuánto contexto? ¿Cuánta VRAM?

[17:50] ¿Cuánto del modelo estaba realmente dentro de la GPU? ¿Era una sola solicitud o muchas simultáneas? ¿Qué backend utilizaba realmente cada aplicación? Porque sin esas respuestas, ese número puede decir muchísimo menos de lo que parece.

[18:05] La velocidad de un modelo local no depende únicamente del nombre del programa que aparece en la pantalla. Depende de toda la pila que existe debajo. Y cuando entiendes esa pila, escoger la herramienta correcta se vuelve muchísimo más sencillo.
