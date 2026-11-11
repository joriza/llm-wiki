# OpenCode con Modelos Muy Pequeños 🚀 Cómo Usarlos LOCALMENTE con llama.cpp

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=d38_pBOYjFk)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-20
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:46

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Seguimos con nuestros vídeos en los que utilizando modelos muy pequeñitos de pesos abiertos, vamos a estar realizando todo tipo de tareas a partir de intentar sacarle el máximo provecho a modelos así de pequeños. Claramente todos los modelos de lenguaje tienen limitantes, tienen límites de hasta donde pueden llegar, con lo cual esto mismo que estamos viendo en estos vídeos es aplicable a todos, pero quizá ayuda más en modelos de lenguaje pequeñitos. Ya teníamos entonces los modelos

[00:29] descargados y tenemos bat para ejecutar ambos modelos de lenguaje dentro de una API o endpoint al estilo Open AI o Anthropic y podíamos acceder a ellos e intercambiar entre ellos tanto en la interfaz web de mismo llama.cpp como en cualquier otro servicio. Ahora entonces lo que vamos a hacer es instalar Open Code, que en este caso es el agente de código que queremos utilizar. Para ello, dentro del GitHub de Open Code, yéndonos a los lanzamientos, vamos a buscar el V1 .16.2, porque este aún cuenta con la interfaz

[01:05] anterior, que en mi caso me resulta más cómoda, además de poderle desactivar actualizaciones, porque el objetivo de lo que estamos viendo es intentar trabajar, no a diario complicarnos probando cosas nuevas, que tienen ventajas, pero también desventajas.

[01:20] Entonces aquí en Assets damos un clic y buscaríamos el adecuado para nuestro sistema operativo. En mi caso Open Code Desktop Win X64. Una vez descargado, le damos doble clic y se instala. Y lo siguiente que tendríamos que hacer es que la primera vez que lo abramos, pues se van a crear algunos ajustes, algunos archivos de mismo Open Code. Aún no haremos ninguna configuración por aquí, por lo que procedemos a cerrarlo y simplemente en la carpeta de nuestro usuario en punto config Open Code, vamos a ver un archivo

[01:53] llamado Open Code.jsonc. Si no existe, pues lo creamos. Aquí es donde vamos a realizar todos los siguientes ajustes, los cuales nos van a permitir, en mi caso, deshabilitar, por ejemplo, el proveedor que viene por defecto, dado que van cambiando los modelos, la lista se actualiza, a veces funcionan bien y a veces no, y nuestro objetivo es utilizar 100% estos modelitos pequeños en local. Así que añadimos dicho proveedor, estilo Open AI, con el nombre de llama CPP, ponemos la URL del endpoint o API que mismo

[02:25] llama CPP nos brinda. Añadimos ambos modelos, esto no únicamente para que nos aparezcan de por sí dentro de Open Code, sino también para ajustar exactamente todos los valores de los mismos. Cuánto los tenemos con límite de ventana de contexto, en una misma respuesta cuántos tokens puede utilizar como máximo, poner que de entrada tienen texto e imagen y salida solo texto. Esto para ambos modelos, pues los tenemos cargados exactamente igual, con los mismos ajustes. Si no te quieres complicar en

[02:54] escribir todo esto, simple mente puedes tomarle una captura y hacer que chat GPT o similares te lo transcriban, o estos mismos modelos. Por ejemplo, con Windows Shift S podemos recortar para hacer una captura solo de una parte de la pantalla. Y ya con esto le pedimos que nos lo transcriba. Una vez con estos ajustes listos, pues ahora sí procedemos a abrir Open Code y si nos vamos a ajustes, vamos a ver cómo es que yo lo configuré. En modelos, pues ya solo tenemos accesibles los de llama CPP, en

[03:22] proveedores lo mismo, solo tenemos en este momento llama servidores, pues el único Open Code que tenemos, atajos y en general así es como yo lo he configurado. Claramente se puede configurar diferente, así como ir activando o desactivando distintos ajustes según nos convenga. En mi caso, cambié la apariencia, el tema Carbon Fox. En notificaciones del sistema desactivé todo, simplemente para que mismo Windows no me muestre carteles de notificación y que únicamente lo que suceda pues es que escuche un efecto de

[03:56] sonido. En actualizaciones desactivé todo, no porque actualizar sea malo, sino porque desgraciadamente a veces actualizar nos cambia cosas que no queremos o hay mejoras y soluciones de errores que no necesitamos, pero a cambio pudiendo tener algún error en algo que sí nos afecta. Así que si de momento esto me funciona bien, pues así quiero que siga funcionando. Sigo haciendo scroll y directamente en avanzado tengo todo activo. Con esto listo entonces, lo siguiente que hice por aquí fue crear en mi carpeta

[04:27] documentos desarrollo una carpeta llamada Open Code, la cual esta carpeta no va a ser como tal para desarrollar código, sino que más bien va a ser como mi chat GPT, es decir, aquí voy a poder estar utilizando los modelos de lenguaje, pero no con el objetivo de desarrollar o no por lo menos en una carpeta en concreto. Aquí vamos a tener distintas conversaciones de lo que vayamos haciendo, simplemente solicitándole cosas al modelo de lenguaje y quizás que nos configure alguna cosa en nuestra PC o qué sé yo,

[04:56] pero no como tal en esa carpeta, digamos que solo va a ser para archivos temporales. Ya una vez que comencemos a hacer distintos proyectos, pues los vamos a ir añadiendo. Muy bien, entonces aquí ya tenemos acceso a los modelos y no solo es que tengamos acceso a los mismos, sino que aquí mismo nos dice texto imagen límite de contexto, texto imagen límite de contexto en ambos. En ambos dice sin razonamiento, pero esto es simplemente un ajuste de Open Code.

[05:20] Sin embargo, pues los modelos de lenguaje realmente los tenemos cargados con todo y cadena de razonamiento, así que sin importar cuál seleccione, pues lo primero que va a hacer es cadena de razonamiento. Escribo hola y pues aquí vemos la pequeña cadena de razonamiento seguida de la respuesta final. Al mismo tiempo que en cualquier momento podemos cambiar entre un modelo y el otro.

[05:41] Simplemente tener en cuenta que ahí lo que sucederá es que uno se vaciará de memoria para ahora cargar el otro, dado que habíamos indicado que únicamente cargue un modelo a la vez. Pero aquí, como estamos viendo, pues hubo cambio de modelo y de hecho al pasar el cursor vemos hasta cada solicitud cuál modelo fue el que respondió. Así que ya tenemos los modelos de lenguaje, ya tenemos bien ajustado para intercambiar entre uno y otro y ahora ya tenemos Open Code completamente afinado para utilizar

[06:08] estos modelos. Sin embargo, no únicamente nos van a interesar los modelos, nos van a interesar también añadirle funciones extra, búsqueda en internet, MSCPs para el momento de estar desarrollando que nos funcione mejor como Context 7, Playwright o lo que nos haga falta. Mientras tanto, pues recordar que esta primera carpeta es la que nos va a servir al estilo ChatGPT, así que le puedo preguntar cualquier cosa o poner a que me describa una imagen o lo que sea. Le pasamos una imagen, le decimos "Describe la imagen"

[06:38] y pues rápidamente por aquí vamos a comenzar a tener la respuesta, que por cierto en este caso respondió muy corto y en idioma inglés, pero bueno, es cosa de ir dialogando con el modelo. Hace una descripción más completa y en idioma español. Un casco futurista con luces de neón en tonos azul eléctrico y rosa brillante sobre un fondo oscuro con una cuadrícula tecnológica. Le voy a preguntar, "¿Hay color cian en la imagen?" y nos dice, "Sí, hay color cian en la imagen, presente en el casco."

[07:05] Vemos que ya está listo para funcionar hasta en una especie de chat. En este caso, teniendo en cuenta que no es 100% únicamente hablar con el modelo, sino que realmente tiene un montón de contexto y demás de todo el entorno por si queremos hacer solicitudes más complejas que únicamente de un simple chat, para que maneje nuestros archivos, para que consulte cosas. De lo contrario, pues no olvidemos también que tenemos la interfaz del mismo llama.cpp y aquí podemos hacer un uso más simple

[07:33] del mismo modelo a partir de únicamente el prompt que nosotros estemos enviando, así como los archivos que estemos enviando. Pues ahora sigue el desarrollo. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
