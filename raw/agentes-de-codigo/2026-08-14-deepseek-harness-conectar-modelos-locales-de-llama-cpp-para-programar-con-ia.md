# DeepSeek Harness 🚀 Conectar Modelos Locales de llama.cpp para Programar con IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=nYsJn7Fbj_c)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-14
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En el vídeo previo, ya estuvimos probando este entorno de Deepseek, su arnés, lo cual está muy interesante, es de código abierto, muy fácil de usar, instalar y con distintas funciones, así como el poder conectarnos a distintos proveedores, no solo el oficial, y el día de hoy entonces, lo que vamos a estar haciendo es conectarnos a un proveedor personalizado. Ya vienen de por sí aquí distintos proveedores, incluido el oficial de Deepseek, sin embargo, nosotros nos vamos a querer

[00:28] conectar, por ejemplo, a nuestros modelos de lenguaje local que tenemos cargados en llama.cpp. Así que para ello, el día de hoy, por ejemplo, probemos con Qwen 3.5 9B, cargado localmente en mi GPU, con todo y visión y 131.000 tokens de ventana de contexto.

[00:43] Entonces, aquí empiezo a ingresar los valores que me interese, y esto me gusta porque está preparado para funcionar con tres tipos de API diferente, tanto las APIs de completions y response de OpenAI, como la de message de Anthropic.

[00:59] Muy muy bien, la verdad. API key, pues no tengo nada, es un modelo de lenguaje local, no tengo esta función configurada. Y en cuanto a modelos, pues teóricamente aquí los debería de mostrar automáticamente, así es. Si no los podemos añadir manualmente también, y les podemos cambiar el nombre con el que aparecen. Le damos en crear proveedor, y con esto listo, entonces, ya tengo accesible dicho modelo. Y lo que quiero ver es qué tan fácil es cambiar de un proveedor a otro. Le doy en modelo, ah,

[01:24] muy bien, aparecen todos por aquí, lo cual está muy bien, a excepción de que tengamos múltiples proveedores y muchos modelos, porque la lista va a ser interminable, pero cuando son pocos, la verdad es que está muy bien. Doy clic entonces a Qwen 3.5 9B de nuestro proveedor personalizado llama.cpp, y por aquí, pues ya no tengo ningún otro ajuste adicional, pues porque básicamente desde aquí no los va a poder configurar. Vamos a revisar, por ejemplo, si contamos correctamente con

[01:48] la visión del modelo, ya que en los modelos oficiales no contamos con eso, como en el vídeo previo vimos. Le voy a decir, describe la imagen, presiono intro, y dice que este modelo no soporta imágenes, pero esto es falso. Si, por ejemplo, en llama cpp le paso una imagen y le digo describe la imagen, vemos que comienza su procesamiento, después su cadena de razonamiento y al final su respuesta, exactamente este mismo modelo. Aquí, entonces, lo que sucede es que aunque algún proveedor personalizado

[02:16] pueda tener la posibilidad de ver imágenes, quizá con los pocos ajustes que tenemos aquí para configurar, no es posible activar dicho funcionamiento. Acá vemos que ya describió la imagen sin problema. Eso, por lo menos, a partir de la configuración simple que tenemos aquí, porque seguramente al momento de modificar el archivo tendremos más funciones, entre ellos el poder indicar la ventana de contexto total, si es un modelo razonador o no, si cuenta con visión y todo ese tipo de cosas. Aquí al

[02:48] dar clic, pues nos abre esto y seguramente vamos a tener algún parámetro como input o algo así. Es cosa de revisar la documentación oficial. Sin embargo, en este momento eso no es algo que me interese. Más bien lo que quiero ver es cómo funciona con un proveedor personalizado local y que dado que tiene distintos modos, es como si tuviéramos distintos programas instalados, algo al estilo Open Code, algo al estilo Hermes, algo al estilo Pi Agent, por decir algo, con lo cual está muy interesante porque

[03:17] quizá un modelo funcione mejor en modo mínimo y otro modelo funcione mejor en modo código, aunque en ambos casos hagamos código. Voy a seleccionar el modo código por defecto, aunque de todos modos siempre lo podemos cambiar en cada conversación y pues al hacer una nueva conversación voy a seleccionar directamente ese modo código, dado que no quedó seleccionado. Vamos a comenzar escribiendo hola, simplemente para ver que esté correctamente conectado al modelo y pues aparentemente sí, llama

[03:43] cpp está generando cosas, con lo cual por aquí vamos a poder ver tanto la cadena de razonamiento como la respuesta, bastante bien. Ahora, vamos a decirle analiza el proyecto. Le digo analiza el proyecto, rápidamente comienza con su cadena de razonamiento y después de ello, pues debería de usar las herramientas correctamente. En este caso, en ese modo código. Parece que intentó hacer algo, pero falló, está intentando nuevamente y si bien este modelo para su tamaño es de los mejores

[04:10] que usan herramientas, parece que aquí eso no está funcionando. Por lo menos en ese modo, en ese modo de agente de código. Y pues no, la verdad es que no sé qué inventos está haciendo que directamente no puede hacer correctamente las cosas a la primera.

[04:25] Afortunadamente después el modelo se recupera, sin embargo, parece ser que la forma en la que está preparado, por lo menos el modo código, el agente en modo código, no es el más adecuado en este caso para el modelo Queen. Vamos a revisar, una vez que termine de responder, cuál es la respuesta que nos da. Y pues bastante bien, la verdad es que está organizando muy bien todo lo que entendió del proyecto. Sin embargo, pues en un momento inicial se equivocó cuatro veces, cuatro veces seguidas.

[04:53] Aquí, bueno, son muchas, pero pues era el mismo comando, leer archivos. Aunque de hecho estoy dándome cuenta que principalmente falló porque todos estos archivos se los inventó, ninguno de estos tengo yo dentro de este proyecto.

[05:05] De hecho lo podemos ver acá abajo, una vez que nos da toda la estructura de archivos y carpetas. Nos hace una descripción general del proyecto, nos muestra la estructura del mismo, incluidos los archivos que se generarían al momento de ejecutar todo el pipeline.

[05:18] Nos explica de manera resumida el pipeline, las características técnicas como tecnologías, funcionalidades avanzadas, principios de mejora de contenido basado en EAT de Google, reglas de edición, lo que se puede hacer y lo que no, configuración requerida en el punto JSON, flujo de trabajo típico, consideraciones, documentación adicional que viene un archivo en el que describe lo que se mejora. La verdad es que no solo es por el modelo, sino que por el agente. En este caso me gustó mucho

[05:49] mucho cómo es que generó esta respuesta, este análisis bien estructurado y completamente entendible en tan poquito texto, o sea, está muy bien explicado, de forma eficiente y vemos que realmente logró entender correctamente el proyecto, porque no es únicamente que sabe qué archivos existen, sino cuáles se generarían, cuál es el orden de ejecución y para qué sirve cada cosa.

[06:13] Está realmente haciéndolo muy muy muy bien, la verdad. Siento que sí está potenciando la respuesta de este modelito, a excepción de que lo previo falló mucho. Ahora, vamos a probar esta misma solicitud, pero en este caso, en una nueva conversación, en otro modo.

[06:30] Por ejemplo, probemos el modo minimal. De nuevo digo, analiza el proyecto, presionamos enter y vamos a ver en este caso qué tal lo hace. Nuevamente está fallando, sin embargo, aquí principalmente los fallos fueron porque está intentando ejecutar comandos que no funcionan en Windows. Y de hecho, en este modo, a pesar de que fue probando más rápido, al final directamente se rindió. Sí, de de hecho está intentando muchas cosas al estilo Linux o Mac. Aquí hasta, por ejemplo, la ruta de la

[06:58] carpeta de nuestro usuario, pero pues así no funciona en Windows en este caso. Entonces, por ejemplo, sin importar el modo, si en una nueva conversación le digo, estamos en Windows, usa comandos de Windows, debería de fallar menos teóricamente. Aquí menciona que en Windows debe de usar PowerShell y pues de todos modos sigue fallando. Usó dos comandos de forma correcta, pero hay otros que los hizo mal. Sin embargo, sí mejoró en cuanto a no cometer tantos fallos. Sin embargo, esto no es tanto

[07:27] del agente, sino más bien de la correcta adaptación de funcionamiento del modelo en conjunto con el agente. De todos modos, esos son pequeñísimos detalles, es normal que pues falle, pero luego prueba de otra cosa, pero luego prueba de otra forma, con lo cual lo verdaderamente importante pues es que la respuesta funciona muy bien y de forma eficiente. Vemos en este caso que nuevamente lo está estructurando bastante bastante bien, eh explicando de forma optimizada cada una de las partes

[07:54] del proyecto. Y ahora por ejemplo, en el otro proyecto que tenemos, voy a seleccionar entonces test. Vamos a poner modo código y lo vamos a poner a desarrollar lo que dice el archivo plan. Este archivo plan.md solicita implementar un videojuego muy al estilo Battle City, un juego clásico, pero aquí modificado a algo más estilo de lo de nuestro canal, con detalles muy específicos y esto con el objetivo de ver la calidad de los modelos. Usa hasta nuestra paleta de colores. Eh de esta

[08:24] forma no es que sepa hacer un Tetris, sino que estamos evaluando que sepa seguir instrucciones. Además, sin recursos externos, todo desarrollándolo él mismo en un en un único archivo. Así que vamos a ver qué tal lo hace. Aún no me acostumbro a que en este caso este arnés funciona desde el navegador. Lo busco en línea de comandos o en una aplicación de escritorio. Vamos a decirle, "Lee plan.md y responde con un plan de implementación."

[08:52] Voy a presionar intro, porque ahí hay una especie de plan, sí, pero del proyecto que se quiere lograr, no necesariamente del paso a paso de cómo irlo desarrollando. Logró leerlo bien en la primera y aquí está rápidamente el resultado de cómo va a estructurar el archivo y todo ello, qué cosas debería de haber, bastante bien. Ahora, se supone que aquí tenemos plan, si mal no recuerdo, efectivamente. Quiero ver eso para qué nos sirve. Una vez que tenemos este contexto anterior en el que

[09:18] doblemente de cierta forma es un plan, desde lo que leyó hasta lo que escribió. Aquí abajo vemos cosas muy interesantes, lo lo cual me gusta mucho. Entre ello, los tokens de entrada, de salida, el promedio de generación de tokens por segundo, esto está muy bien. Es poco común que los entornos agénticos mencionen esto y nos dice cuánta parte está en caché. Muy bien, vamos a poner entonces ese modo plan, y le voy a decir, haz el plan definitivo para luego implementar.

[09:49] Demasiadas vueltas estamos dando, pero bueno, básicamente estamos probando toda la funcionalidad que tiene por aquí. Aquí vemos que después para salirnos del modo plan, simplemente sería quitar esto, para pasar al modo de implementación, por así decirlo. Y en este caso tenemos a que únicamente esté aprobado el escribir, leer en el proyecto. También hay un modo de solo leer y un modo en el que se le permite todo, dentro y fuera del proyecto. Me está gustando mucho este arnés. En el

[10:13] vídeo previo hicimos unas pruebas rápidas, pero no tan a fondo. Aquí estamos probando con un modelo de lenguaje local, pero sin importar que no fuese a utilizar un modelo de lenguaje local, la verdad es que el arnés me está gustando mucho. No únicamente para desarrollo de código, sino como un chat en general. Esto, la ventaja que tenemos es que de por sí tenemos varios modos agénticos. Y luego es fácil de instalar sin tantas dependencias, únicamente un comando npm, así que realmente está muy

[10:39] muy bien. Aquí nuevamente hubo un fallo, reviso y pues sí, escribió correctamente, según tengo entendido, todo el plan del proyecto. Sin embargo, quizás alguna parte, en cuanto al formato, lo hizo mal, a tal grado que tiene que volver a repetir prácticamente todo, según entiendo. Y al fin hizo correctamente plan definitivo.md y lo está leyendo para ver que realmente tenga sentido. Según llama a C++, estamos en aproximadamente 23.000 tokens ocupados en esta ventana de contexto, y

[11:09] aquí ya nos está dando la respuesta final. El plan definitivo, de hecho, en este caso de una forma bien estructurada, bien visualmente atractiva aquí en Deep Seek Harness, y la verdad es que muy muy bien. Podemos preguntarle cosas para cambiar el plan, podemos rechazar o podemos aprobar. Supongo que al momento de aprobar, lo que sucederá es que salimos del modo plan, efectivamente, y que entonces lo que va a hacer ahora es comenzar a implementar.

[11:35] Aquí nos dice, "Plan aprobado, el plan definitivo ha sido aprobado, procederé ahora con la implementación completa del juego." Pobre modelo, en una sola respuesta lleva más de 12,000 tokens generados. Y aquí lleva 13 minutos trabajando, yo nada más aquí esperando.

[11:51] Con lo cual, de una vez voy a revisar lo que ha ido generando. Está nuestro plan original, el plan definitivo que le pedimos, el código que se supone hizo y archivos adicionales de verificaciones que en este momento está llevando a cabo. Vamos a revisar el juego. Aparece una especie de menú principal, muy feo, pero esperemos que funcional. Me puedo mover con W, A, S, D o flechas, con espacio o J disparo, con P o escape pongo pausa y con enter es reiniciar.

[12:21] Escuché un sonido y aparentemente el juego ya está funcionando. Escucho sonidos. Voy a activarlo para que se escuche. Sin embargo, no veo nada. Es como si el juego estuviera en pausa. Alcanzo a ver algo, pero pues no se quita este menú. Con lo cual, aunque esté en ejecución, pues yo no me puedo mover.

[12:38] Pero bueno, eso ya no va a depender como tal del agente, del arnés, sino más bien del modelo de lenguaje, también su inteligencia y pues de que siga iterando, porque en este momento no ha terminado. Por aquí lo estamos viendo al pobre modelo. Lleva una simulación V6 realizada, mi GPU caliente con el modelo y pues el modelo en llama CPP dándolo todo. Como arnés, la verdad es que está muy bien. Sin embargo, a lo mejor nos faltaría alguna parte para potenciar dichos modelos, sean en locales o en

[13:09] línea. Y para ello, pues lo que vamos a estar haciendo en un siguiente video es nuevamente utilizar nuestro arnés, o mejor dicho, nuestro proxy, nuestro intermediario Atomic Decomposition o Atomic AI, que básicamente lo que hace es funcionar en medio entre el cliente y el proveedor, gastando más computación, más tokens en cada solicitud individual que solicita el cliente, en este caso el arnés, pero a cambio obteniendo mucha mayor calidad. Esto para modelos de lenguaje pequeñitos en local está

[13:41] genial, porque quizás les falta algo de inteligencia, pero nos sobran tokens, son ilimitados, así que seguramente ahí es donde esté lo más interesante. Aquí según ya terminó, sin embargo, bajo las pruebas que hizo, no creo que sea 100% funcional. Pues no, el problema es que el juego funciona. El detalle es que no veo nada porque esto está encima. Esto con las pruebas que él hace, dado que no tiene un navegador y visión en este momento aquí dentro, pues seguramente dice, "Sí, todo funciona perfecto."

[14:09] Efectivamente, sin embargo, no puedo ver nada porque no se quita ese menú de encima. Esto pues a partir de iteraciones lo podemos solucionar, sin embargo, pues no solo iteraciones, hagamos que esas iteraciones surjan de forma automática. Puedes buscar atomicai.com/ neichonauta y tenemos ya varios vídeos al respecto para que entiendas cómo funciona esto y lo vamos a probar combinado con este arnés en un siguiente vídeo. Así que si quieres seguir viendo vídeos como este, simplemente da like y

[14:37] suscríbete.
