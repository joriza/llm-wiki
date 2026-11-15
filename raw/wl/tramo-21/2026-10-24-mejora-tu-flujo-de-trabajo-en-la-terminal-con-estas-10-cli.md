# Mejora tu flujo de trabajo en la terminal con estas 10 CLI

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=8VKy05wcZW4)
- **Canal**: CodeSimple
- **Publicado**: 2026-10-24
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Veamos 10 herramientas de línea de comandos modernas que pueden hacer tu flujo de trabajo como desarrollador mucho más productivo. Pasamos mucho tiempo en la terminal, ya sea trabajando con Git, Docker, archivos de configuración, datos, redes o incluso modelos de IA locales. Y aunque la mayoría ya tenemos un conjunto de comandos que usamos cada día, hay muchas herramientas nuevas que pueden facilitar bastante algunas de estas tareas. Así que repasemos 10 herramientas de línea

[00:29] de comandos que merece la pena conocer y te explicaré para qué sirve realmente cada una. Número uno, DNS Globe. Imagina que acabas de cambiar un registro DNS de tu sitio web y quieres saber si el cambio se ha propagado por el mundo.

[00:45] Normalmente abrirías una web como What's My DNS, introducirías tu dominio y seguirías refrescando la página para ver qué devuelven los distintos servidores DNS. DNS Globe lleva todo ese proceso a la terminal. Le das un dominio, consulta el registro DNS desde distintas ubicaciones y puedes ver la propagación en resolutores públicos. Lo que lo hace más útil es que puede seguir consultando esos resolutores y mostrarte cuándo acaban llegando todos al mismo resultado. Así, en vez de comprobar una

[01:17] página del navegador una y otra vez, puedes dejar la herramienta en marcha mientras tu cambio de DNS se propaga. Si trabajas con frecuencia con dominios, registros DNS o despliegues, puede ser una herramienta muy práctica. Número dos, Git Log. Git te da mucha información sobre cómo ha cambiado un proyecto con el tiempo. Pero cuando un repositorio tiene cientos o miles de commits, revisar logs y diffs individuales no siempre te da una buena imagen de cómo ha evolucionado realmente

[01:47] el proyecto. Esta herramienta adopta otro enfoque y convierte tu historial de Git en una reproducción animada. En lugar de mirar simplemente una lista de commits, puedes ver cómo cambia el código commit a commit y cómo se fue desarrollando el proyecto. Puede ser útil cuando trabajas en un proyecto grande y quieres entender cómo llegó a su estado actual, o incluso cuando quieres revisar la historia de algo que construiste hace unos meses o años. Es, básicamente, una forma más visual de

[02:17] explorar tu historial de Git directamente desde la terminal. Número tres, VisiData. Trabajar con datos directamente desde la terminal no siempre es cómodo, sobre todo cuando manejas archivos CSV u otros conjuntos de datos estructurados. Puedes combinar herramientas como awk, sed y jq. Pero a veces simplemente quieres abrir un conjunto de datos, echar un vistazo, filtrar algunas filas, ordenar una columna y entender qué hay realmente dentro del archivo. Ahí es donde VisiData resulta útil.

[02:50] Te ofrece una interfaz tipo hoja de cálculo en la propia terminal, donde puedes explorar, ordenar, filtrar, editar y trabajar con conjuntos de datos sin abrir otra aplicación. Así que, si estás depurando un CSV, comprobando rápidamente unos datos o trabajando con un conjunto de datos en una máquina remota sin interfaz gráfica, VisiData puede ahorrarte bastante tiempo. Número cuatro, ocker. Si trabajas con Docker, seguramente conoces esta sensación.

[03:20] Ejecutas un comando para listar tus contenedores, otro para ver los logs, otro para inspeccionar el uso de recursos y otro más cuando quieres detener o reiniciar algo. Ocker reúne muchas de esas operaciones en una única interfaz de terminal.

[03:35] Puedes ver tus contenedores Docker, comprobar su estado y su uso de recursos, consultar los logs y gestionarlos sin cambiar constantemente entre distintos comandos de Docker. Resulta especialmente útil cuando depuras un contenedor, porque puedes tener toda la información que necesitas en un solo lugar, en lugar de copiar una y otra vez los ID de los contenedores y ejecutar comandos por separado.

[04:01] Si ya te manejas bien con Docker, pero te encuentras tecleando una y otra vez los mismos comandos de gestión, vale la pena echarle un vistazo a Oxker. Número cinco. LLM Fit. Si has intentado ejecutar un LLM en local, sabes que una de las primeras preguntas es si tu ordenador puede con el modelo que quieres usar. Hay que pensar en cosas como la RAM, la VRAM, el tamaño del modelo, la longitud del contexto y el rendimiento esperado.

[04:29] Y comparar a mano todos esos requisitos puede volverse frustrante cuando miras muchos modelos distintos. LM Fit está pensado para facilitar esa decisión. Comprueba tu hardware y ayuda a puntuar los modelos disponibles según factores como los requisitos de memoria, la velocidad estimada, la calidad y el tamaño de contexto. Así, en lugar de descargar un modelo enorme y descubrir que tu máquina no lo soporta bien, puedes usar LLM Fit antes para ver qué modelos encajan mejor con tu hardware.

[05:00] Para quien experimenta con IA local, es una buena forma de acotar opciones antes de dedicar tiempo a descargar modelos. Y antes de seguir con las cinco herramientas que faltan, déjame pedirte un favor. Si este vídeo te está descubriendo herramientas útiles para tu día a día, dale a me gusta y suscríbete a Code Simple. Somos un canal que está empezando y cada suscripción nos ayuda a seguir compartiendo programación y tecnología de forma clara y práctica. Y cuéntame en los comentarios, ¿qué

[05:30] herramienta de terminal no puedes vivir sin ella? Te leo. Número seis. Croc. Supón que necesitas enviar un archivo de un ordenador a otro, pero no quieres configurar acceso SSH, intercambiar claves, abrir puertos ni montar un sistema complicado para compartir archivos solo para una transferencia.

[05:51] Croc está diseñado justo para ese tipo de situación. Permite transferir archivos y carpetas directamente entre ordenadores desde la terminal y las transferencias van cifradas de extremo a extremo. Admite varios archivos a la vez y puede reanudar una transferencia si se interrumpe la conexión.

[06:09] Así que, tanto si mueves un proyecto entre dos máquinas como si envías un archivo grande a otro ordenador o simplemente necesitas una forma rápida de transferir algo sin montar infraestructura adicional, Croc puede simplificar mucho el proceso.

[06:24] Número siete, Grex. Las expresiones regulares son extremadamente útiles, pero escribirlas desde cero no siempre es fácil. Puede que sepas qué tipo de cadenas quieres reconocer, pero averiguar la sintaxis exacta de la expresión puede llevar tiempo, sobre todo cuando el patrón se complica. Grex adopta otro enfoque. En lugar de pedirte que escribas tú la expresión regular, le das algunas cadenas de ejemplo que quieres reconocer y Grex genera una expresión regular a partir de ellas.

[06:54] También admite Unicode, así que no te limitas a los caracteres ASCII básicos. Puede servir para cosas como la validación de entradas, el análisis de logs, el procesamiento de texto o cualquier situación en la que sepas qué aspecto tienen tus ejemplos, pero no quieras deducir a mano la expresión regular. Número ocho, Condo.

[07:14] Si llevas tiempo programando, seguramente proyectos antiguos en tu máquina que han acumulado muchos archivos innecesarios. Directorios de compilación, dependencias, archivos generados y carpetas como Node modules pueden consumir en silencio una cantidad sorprendente de espacio en disco y encontrarlos todos a mano no es precisamente divertido. Condo está hecho para ayudarte con eso. Analiza tus proyectos en busca de artefactos de compilación y dependencias innecesarias.

[07:45] Te muestra cuánto espacio ocupan y te deja decidir qué eliminar. Es compatible con distintos lenguajes de programación y frameworks. Así, en lugar de buscar a mano en proyectos antiguos que puedes borrar con seguridad, puedes usar Kondo para que identifique las oportunidades de limpieza por ti. Es especialmente útil si has trabajado en muchos proyectos con el tiempo y tu máquina de desarrollo se está quedando poco a poco sin almacenamiento. Número nueve, Work Trunk. Los work trees de Git son muy

[08:15] útiles cuando trabajas en varias tareas a la vez, porque permiten tener distintas ramas desplegadas en directorios separados. El problema es que gestionar varios work trees a mano puede volverse algo tedioso. Work Trunk es una herramienta de línea de comandos diseñada específicamente para facilitar la gestión de work trees de Git. Puedes crear, cambiar entre ellos, listarlos y eliminarlos directamente desde la terminal. Además, ofrece funciones relacionadas con hooks, flujos de

[08:45] fusión, caches de compilación compartidas y gestión interactiva de work trees. Un caso de uso interesante es trabajar con agentes de programación con IA, porque puedes mantener tareas distintas aisladas en work trees distintos y ejecutar agentes como Cloud Code dentro de esos entornos.

[09:03] Así que, si trabajas con frecuencia en varias funciones o ramas a la vez, Work Trunk puede hacer ese flujo mucho más fácil de gestionar. Número 10, yq. Si trabajas con archivos YAML, sobre todo de configuración o de pipelines de CI/CD, seguramente has tenido que abrir un archivo solo para encontrar un valor, cambiarlo y volver a guardarlo. yq hace ese tipo de operaciones mucho más fáciles desde la línea de comandos.

[09:31] Puedes usarlo para leer, filtrar, actualizar, fusionar y convertir datos estructurados, incluidos YAML, JSON, XML, CSV y TOML. Resulta especialmente útil en automatización, porque puedes extraer un valor o actualizar un archivo de configuración directamente dentro de un script sin editar el archivo a mano.

[09:55] Por ejemplo, si tu pipeline de despliegue necesita cambiar un número de versión o leer un valor de configuración concreto, yq puede encargarse de ello directamente desde la terminal. Es una de esas herramientas que al principio pueden parecer pequeñas, pero cuando empiezas a usarla en scripts y flujos de CI/CD, te ahorra mucho trabajo repetitivo.

[10:16] Y lo interesante de estas herramientas es que ninguna intenta sustituir a las que ya usas cada día. En su mayoría, se centran en facilitar tareas concretas. DNS Globe ayuda cuando te enfrentas a la propagación de DNS. Git log te ofrece otra forma de entender el historial de Git. Visidata facilita explorar datos desde la terminal. Osked simplifica la gestión de Docker y LMfit te ayuda a elegir modelos de IA locales según tu hardware. Luego tienes herramientas como Croc para transferir archivos, Grex para

[10:49] generar expresiones regulares, Condo para limpiar proyectos de desarrollo, Worktrunk para gestionar worktrees de Git y Yoku para trabajar con archivos de configuración estructurados. La terminal ya es una parte poderosa del flujo de trabajo de un desarrollador. Y a veces la herramienta de línea de comandos adecuada puede convertir una tarea que normalmente requiere varios comandos o una aplicación aparte en algo que se resuelve con un único comando sencillo.

[11:17] Si este vídeo te ha descubierto alguna herramienta nueva, dale a me gusta, compártelo con algún compañero que viva en la terminal y suscríbete a Code Simple para no perderte el próximo. Y cuéntame en los comentarios cuál de estas 10 vas a probar primero. En pantalla tienes otro vídeo que te va a encantar. Nos vemos en el siguiente.
