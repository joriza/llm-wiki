# Deja de usar el modelo más CARO para todo | SpecJudge

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=T53zvm08zUg)
- **Canal**: Joaquín Ruiz — IA para Desarrolladores
- **Publicado**: 2026-07-28
- **Recopilado**: 2026-11-11
- **Idioma**: español (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 08:23

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] cada vez que arranco un proyecto mi primer instinto es tirar del modelo más potente que tenga a mano por si acaso que si Opus 5 que si GPT sol el que sea el rey esta semana, te pasa a ti? y sí soy consciente de que llevo meses gastando tokens por una capacidad que la mitad de mis proyectos ni siquiera llegan a usar así que construí una herramienta para solucionar ese problema se llama SpecJudge lee tus specs y te dice qué modelo sería el mejor en este caso calidad precio y te lo dice antes de gastar

[00:38] un solo token imagina que acabas de definir un proyecto con Spec driven development tienes tu constitución tus specs y tus tasks todo limpio y ahora te toca elegir con qué modelo lo vas a implementar y ahí hay dos posibles errores esperándote el primer error es que eliges un modelo demasiado potente funciona claro pero estás pagando por un margen de capacidad que este proyecto no va a tocar es como alquilar una excavadora para plantar un geranio y el segundo error es que eliges un modelo

[01:23] demasiado justo y este es peor porque no solo no termina el trabajo o lo hace regular sino que es que pagas igual los tokens que has quemado intentándolo SpecJudge soluciona exactamente ese problema cómo instalamos SpecJudge? bueno pues SpecJudge ya está publicada como librería de Python así que necesitamos dos cosas nada más y luego Python 3.11 o superior y luego ollama con al menos un modelo local descargado que además puede ser muy sencillo y pequeño con uno de 8b te sobra para empezar

[02:02] por ejemplo podemos hacer ollama pull de un Mistral-small o de llama 3.1 el que queramos y ahora instalamos SpecJudge lo podemos instalar con uv con pip pipx o con Pip elige la que quieras una vez instalada la comprobamos con SpecJudge - - version y si eres de los que no quiere instalar nada en su sistema la puedes lanzar de forma efímera se descarga se ejecuta y desaparece lo podemos hacer mediante uvx o si vas a contribuir a su desarrollo te puedes descargar desde GitHub el código entero

[02:39] y ahora vamos a usarla esto es un proyecto real con sus specs y simplemente lanzando esto el comando SpecJudge . vamos a sacar cuál es el mejor modelo que te necesitamos para construir este proyecto y aquí tenemos el resultado aquí está me da con una nota buena Gemma 4 31b Qwen 3.6 Claude Sonnet 5 y si os fijáis en Opus 4.8 lo clasifica como overkill para este proyecto no porque sea malo es un modelo buenísimo pero para esta tarea o para este proyecto vamos a pagar un margen

[03:19] que no usarás luego tenemos unos modelos clasificados como Fair que se quedan algo cortos y por último tenemos los poor que no darían la talla para construir este proyecto y ojo a esto el precio no decide el podio el ranking va por su encaje con la complejidad de tu proyecto el precio se muestra siempre para que veas qué cuesta cada opción pero solo desempaata entre modelos que encajan igual de bien un modelo más barato nunca gana a uno que encaja mejor porque recomendarte algo que no puede hacer el trabajo

[03:56] es el error más caro de todos y si quieres verlo en en vez del terminal en el navegador puedes usar el flag - - open o -o y te saca esta matriz visual en HTML este HTML es autónomo no carga absolutamente nada de la red esta herramienta hace dos cosas que no hacen las demás lo primero si ningún modelo del catálogo da la talla SpecJudge te lo dice no te recomienda uno igualmente y dos es honesto sobre cuánta información tiene si tu proyecto está bien definido te va a dar una recomendación fiable

[04:34] pero si va justo de specs te la da con un aviso hola tengo varios libros sobre inteligencia artificial en Amazon y hoy te voy a hablar de mi último libro del vibe coding al Spec driven development en este libro te cuento cómo pasar de ir dándole instrucciones sueltas a una gente tipo vibe coding a escribir un contrato que la ella tiene que respetar porque programar con inteligencia artificial es rapidísimo la primera semana el problema llega al 6º mes cuando alguien tiene que mantener

[05:09] todo lo que generamos y ese alguien normalmente eres tú así que dentro de este libro tienes el ciclo completo de speckit paso a paso y lo puedes usar con claude code copilot cursor como quieras sobre todo hay una parte entera dedicada a algo de lo que nadie casi habla aplicar todo esto sobre un código que ya existe un repo con años de historia con sus manías y sus decisiones heredadas que es donde trabajamos casi todos verdad son más de 300 páginas de libro y viene con un repositorio para que clones

[05:45] el código y lo pruebes tú mismo la arquitectura es un sistema híbrido por un lado tenemos un un juez que sería un modelo local cargado a través de Ollama que lee las specs y las Tasks y estima cuánto exige tu proyecto en varias dimensiones en razonamiento en tamaño en especialización y lo evalúa todo de una tirada no tarea por tarea por otro lado unas reglas declarativas en un fichero en este caso rating-rules.yaml que cruzan esa demanda contra la capacidad declarada de cada modelo

[06:22] cuál es el resultado gana el que mejor encaja y esto es clave para mí no es una caja negra cada veredicto viene con un motivo que puedes leer y aquí está la decisión de diseño clave todo lo que cambia cada dos por tres los modelos los precios las valoraciones de capacidad está todo en ficheros Yaml legibles por nosotros los humanos deliberadamente separados del código el código Python no toca eso los modelos y los precios pues van a cambiar verdad cada pocas semanas sale un modelo nuevo

[06:56] otro baja de precio otro sube un catálogo así mantenido por una sola persona pues nace caducado el primer día pero todo lo volátil está en ficheros yaml fuera del código para que lo puedas mantener tú añadir un nuevo modelo bueno pues es un bloque de yaml cero python abrimos el data models.yaml y lo pegamos mandamos un Pull request y que sepas que hay test de contrato que validan el esquema automáticamente así que un error tonto no se nos va a colar eso es SpecJudge le preguntas a tu

[07:31] tus specs le dices la talla justa y no gastas un token en averiguarlo es es un proyecto Open Source licencia MIT y todo el enlace lo tienes aquí abajo en la descripción si te ahorra un solo pago de más ya te ha merecido la pena así que le puedes dar una estrella al repo un buen like a este vídeo y suscríbete para más vídeos sobre IA para desarrolladores y si quieres avanzar más en este tipo de temas recuerda que tienes mi nuevo libro del vibe coding al Spec driven development

[08:04] para aprender de verdad cómo desarrollar herramientas con IA de forma correcta nos vemos en el próximo vídeo y ya sabes ¡que la IA te acompañe!
