# MinAgent 🤖 El Mejor Agente IA Gratis 🚀 Guía de INSTALACIÓN y Uso

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=APszMDLxf-o)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-25
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:25

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] He estado realizando distintos cambios en main agent y la verdad es que ya es un proyecto mucho más funcional. Tiene prompts mejor preparados, más optimizados, el código está refactorizado y además contamos ya con nuevas funcionalidades. La variable de entorno que teníamos para darle al modelo de lenguaje contexto de todos los archivos y carpetas del directorio actual, no solo puede seguir teniendo -1 como valor para mostrar todo o un valor positivo para listar únicamente cierta

[00:29] cantidad de archivos por directorio, sino que además, si lo ponemos en cero, se desactiva completamente dicha funcionalidad, manteniendo entonces el contexto mucho más limpio. Y en cualquiera de los ajustes, de todos modos, ya se tiene capacidad de que el modelo liste archivos o carpetas únicamente en el proyecto actual. Lo único que se puede leer de forma externa son archivos de texto e imágenes del que le pasemos la ruta exacta, es decir, que adjuntemos dicho archivo en el mensaje a

[00:59] enviar. Todo lo demás se trabaja únicamente dentro del mismo proyecto. Para utilizarlo, pues simplemente lo clonamos con Git o de lo contrario descargamos el punto zip y lo descomprimimos. Y en esta ocasión yo lo voy a utilizar con llama.cpp, pero pues puede ser utilizado con cualquier API al estilo OpenAI, es decir, el LM Studio o llama GPT for all, la API de Anthropic, la de Gemini, la de OpenAI y prácticamente todas. Si no, pues podemos inventar un nuevo tipo de conexión. El

[01:30] llama.cpp que yo descargué, pues es la versión para Windows CUDA 13. Tanto llama.cpp como las DLLs para poder ser ejecutado. Ambas cosas descomprimidas en la misma carpeta, como en nuestros tutoriales de llama.cpp. Y en cuanto a modelo de lenguaje, vamos a probar el día de hoy con Gema 4 E4B QAT GGUF, subido por la gente de un slot. Estos son los ajustes exactos con los que voy a ejecutar dicho modelo. Y vamos a ver cuánta memoria nos consume. En este caso, mi GPU completamente vacía y al

[02:02] momento de ejecutar el modelo, terminó consumiendo 6.1 GB, con lo cual puedo cargar modelos más grandes, ¿no? Pero para la prueba está bien. Lo siguiente que hice fue Min Agent, lo agregué al path de mi sistema con el objetivo de que en cualquier lado pueda ejecutar el comando Min Agent y empiece a funcionar.

[02:21] Para ello, busqué variables de entorno, di clic en variables de entorno y en el path o del usuario o del sistema, simplemente tenemos que añadir la ruta de donde tenemos Min Agent. Con eso, ya en cualquier ruta que ejecutemos el comando Min Agent, comenzaremos a trabajar. Antes de ejecutar el comando, simplemente vamos a ver cuáles son los valores exactos de mi archivo {punto} env y lo vamos a utilizar sin MSPs, sin skills, sin que el modelo pueda usar terminal y tampoco nada referente al

[02:54] contexto automático de archivos y carpetas. De igual forma, el modelo tiene la herramienta para listar archivos. Por cierto, aquí tengo algo mal, pero bueno, esto es un simple comentario de mi archivo local, esto no está en GitHub. Voy a eliminar eso. Ya estamos listos, pues, para ejecutar Min Agent y una vez que lo ejecute, pues, así es como en este momento está funcionando. Vemos que con este modelo Gema 4e4b, no estamos consumiendo ni 1,000 tokens para comenzar a trabajar.

[03:21] Tenemos la capacidad de texto e imagen en el modelo. Terminal desactivada, nos dice en qué carpeta estamos trabajando. Con slash, vemos un nuevo comando que en esta ocasión es context, el cual para lo que nos va a servir es para que nos dé detalles específicos de todo lo que está consumiendo de contexto, lo que estamos haciendo. Y otra cosa que se añadió, que faltaba, era que al presionar escape, se detenga la generación actual de tokens del modelo. Vamos a una nueva conversación para para todo esto bien

[03:51] acomodadito. Y vamos, pues a preguntarle alguna cosa al modelo, como por ejemplo, dime qué archivos y carpetas hay. Simplemente con eso, pues usa la herramienta correspondiente y ya supo que tenemos un único archivo, que es snake.html.

[04:05] Carpetas no tenemos. Le voy a decir que lea el archivo y me diga de qué trata. Y aquí vemos que luego de que leyó el archivo, pues nos hace un breve resumen. Le voy a decir que identifique fallos, identifica fallos en dicho proyecto y vamos a ver que al presionar intro, la generación de la respuesta es prácticamente inmediata. No me refiero a los tokens, lo rápido que se generan, sino lo rápido que empiezan a generarse.

[04:28] Es decir, lo rápido que comenzamos a obtener respuesta. Ya la velocidad del modelo pues es la de siempre. Aquí nos hizo bastante información este modelo gema 4e4b. Y pues simplemente para ver cómo esto sigue trabajando, vamos a decirle, corrige todo eso. Presionamos intro y aquí este modelo a veces eso de usar herramientas como que no tiene ganas y nos escribe el código corregido por aquí, en vez en el archivo, pero eso es cosa del modelo a utilizar. Para evitar ese tipo de cosas, pues por

[04:56] ejemplo, algo que podemos hacer es lo siguiente. Y es que claramente podemos añadir un agents.md, así que con slash init nos hace dicho archivo, del resumen de todo el proyecto, todo lo que tenemos y demás. Y en dicho archivo, nosotros vamos a poder modificar cosas. Sin embargo, no únicamente por aquí, sino que al momento de haber hecho slash init, pues aquí mismo lo puedo decir, la cosa que quiero que haga énfasis. Y pues otra forma de hacerlo es por aquí mismo, le podemos decir que en ese archivo haga algún

[05:29] cambio. Por ejemplo, @agents.md, presiono intro y le digo, añade que siempre haga los cambios en los archivos y carpetas correspondientes usando sus herramientas, no que simplemente escriba el código de forma normal. Esto no es algo que debemos de hacer siempre, simplemente es para entender, pues que podemos citar archivos, que podemos hacer que los modifique y que cierto comportamiento incompleto, pues se le puede dar a partir del agents.md.

[05:57] Presionamos intro, leyó el archivo y ahora lo está editando. Ha editado el archivo y pues de hecho ya lo menciona desde el comienzo la forma de proceder, la forma de trabajar. También tenemos para compactar de forma manual, si no se hace de forma automática, podemos salir y también podemos ver todos los detalles sobre el contexto actual.

[06:17] Aproximadamente cuántos tokens se están requiriendo en cada cosa. Vemos pues que es sencillo, pero es funcional, porque la verdad es que es la forma en la que me gusta de trabajar. Los modelos de lenguaje pequeñitos se ven beneficiados de no tener grandes prompts, porque se pierden en tanta cosa y los modelos grandes ya son tan buenos como para requerir tantos prompts. No hagamos sobreingeniería. Esa es la filosofía de este proyecto. ¿Por qué en esta ocasión, iniciando una nueva conversación

[06:46] estamos utilizando más contexto que cuando recién comenzamos? Sí sigue siendo una nueva conversación. Pues en esta ocasión es por el agents.md. De hecho con slash context, pues ahí mismo lo vamos a poder ver, que el agents.md está consumiendo aproximadamente 1850 tokens del contexto. Considero yo que ya está en un punto verdaderamente utilizable en el día a día, por lo menos lo he estado probando mucho y ya no he encontrado errores. Voy a seguir trabajando 100% con esta herramienta y

[07:15] vamos a estar probando los modelos dentro de esta misma herramienta. Te recomiendo probarla si es que no lo has hecho y si quieres seguir viendo este tipo de vídeos, simplemente dale like y suscríbete.
