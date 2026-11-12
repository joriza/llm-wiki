# MinAgent - Mi Agente de Desarrollo 🚀 Cómo crear un Agente de IA SIMPLE y POTENTE

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=DqXWZ4LB-20)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-25
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:54

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a probar main agent, el cual es un agente principalmente de desarrollo que nosotros mismos hemos trabajado basándonos en pi agent. Si pi agent ya es sencillo, esto lo es aún más. Lo único que necesitamos para utilizarlo es tener not js y alguna api estilo open ai compatible como lo puede ser mismo o llama, lm estudio, llama cpp o cualquier servicio en línea que cuente con dicha posibilidad. De hecho, la misma api de anthropic de open ai y de gemini también lo integran. Para

[00:33] utilizarlo, pues lo único que tenemos que hacer es descargarlo, aquí podemos en un punto zip y lo descomprimimos, de lo contrario, pues con mismo git, por ejemplo. Una vez con esto descomprimido, lo siguiente que tenemos que hacer es añadirlo al pad. No es completamente obligatorio, pero pues es más fácil utilizarlo de esa forma, así que lo que yo hice fue en windows buscar variables de entorno, doy click en el botón que dice variables de entorno y una vez aquí dentro, en vez de utilizar el pad del

[01:04] usuario, me fui al pad del sistema. Doy doble click y por aquí simplemente tuve que agregar la carpeta de nuestro proyecto. De esa forma ya siempre en un terminal, simplemente escribiendo main agent se va a poder ejecutar. Entonces, lo siguiente que tendríamos que hacer antes de ejecutarlo sería crear el punto env en el cual van a estar todas las variables de entorno con los ajustes que vamos a requerir para su utilización. Yo voy a desactivar msp skills, uso de la terminal, con lo cual solo va a poder

[01:36] leer, escribir, editar archivos y carpetas del directorio actual, no puede salir de ahí. De manera automática va a recibir como contexto el modelo todo el listado de archivos y carpetas, de lo contrario, aquí podemos poner un límite que va a indicar cuántos archivos va a listar por directorio. A tener en cuenta que nativamente no se tiene un modo de listar archivos y carpetas por el modelo, sino que simplemente utiliza esto. Le podemos añadir dicha funcionalidad o directamente con el uso

[02:07] de terminal. Luego por aquí indicamos la URL donde está el endpoint de Open AI al que nos vamos a conectar, la API key que vamos a utilizar y el modelo que vamos a utilizar. En este caso, por ejemplo, Gema 4 E4B, el cual como entrada lo tengo cargado con texto e imagen, tiene 132,000 tokens de ventana de contexto y vamos a poner que podamos ver la cadena de razonamiento. Ya tenemos muchos videos tanto de llama CPP como de este modelo en cuestión y estos son los ajustes exactos con los que lo voy a

[02:40] estar ejecutando. No hace falta 100% que sea un modelo local, simplemente una API de Open AI o bueno, Open AI compatible, mejor dicho. Tenemos el modelo cargado y entonces en cualquier lado hacemos una carpeta, entramos a ella y dado que agregamos como variable de entorno min agent, pues simplemente lo escribo y al momento de presionar intro ya lo vamos a tener por aquí abierto. Claramente para esto, tal como vimos en la descripción en GitHub, hace falta tener instalado Node.js. Simplemente con Node.js esto ya

[03:15] va a funcionar. Vemos por aquí cuánto tiene de contexto utilizado, que tenemos como entrada texto e imagen, que es el modelo Gema 4 E4B, que tenemos desactivado el uso de la terminal, así como de MSP y de skills, y cuál es la carpeta en la que estamos trabajando.

[03:32] Con ello al modelo ya le preguntamos cualquier cosa, como por ejemplo, comencemos con ¿quién eres? Presionamos intro y lo que va a suceder es que primero vamos a ver la cadena de razonamiento y después la respuesta. Esto debido a que así lo tenemos indicado, que queremos ver la cadena de razonamiento. Si no, no es que se desactive del modelo, sino que no la vamos a ver. Para activarla o desactivarla del modelo, pues en este caso en llama cpp simplemente en el parámetro de razonamiento lo pongo en

[03:58] off, en este de por aquí. Ahora si le preguntamos qué puedes hacer, dime qué herramientas puedes utilizar, al momento de presionar intro pues por aquí nos lo va a decir y vamos a ver que básicamente puede leer archivos, entre ellos no solo de texto sino también imágenes, editar archivos, crear archivos, eliminar archivos y eliminar directorios. En este caso únicamente dentro de la carpeta actual. Si queremos que haga más cosas que esto, pues tenemos la posibilidad de uso de la terminal, de mcp y de skills,

[04:32] pero por defecto esto es lo único. Con slash vamos a ver otros comandos que tenemos por aquí, entre los que está salir, nueva conversación, crear o actualizar agents.md. Aquí mismo por cierto, al momento de que vayamos a escribir el comando, podemos añadir un texto adicional que se envía al prompt, como por ejemplo haz énfasis en las tecnologías a utilizar o qué se yo. Y a pesar de que también hace compactación automática, por aquí tenemos el contexto utilizado y el total, también tenemos la posibilidad de

[05:03] compactar cuando queramos y lo mismo, no solo podemos enviar el comando por sí solo, sino que también podemos escribir algo más para que al momento de la compactación eso también quede mencionado. Tal como vimos, en ningún momento aparece la creación de carpetas como una posibilidad. Simplemente si en algún momento requerimos un archivo dentro de un subdirectorio, pues de por sí crearía de forma automática el subdirectorio. Eliminar sí puede, tanto archivo como carpeta. Vamos a ponerle

[05:32] por ejemplo crea src/snake.html. Presionamos intro y pues aquí va a comenzar. Aquí vemos cómo lo ha escrito, después lo ha leído y nos está haciendo un resumen. En este caso el modelo hasta mostrándonos un cachito del código.

[05:48] Claramente todo esto que tenemos aquí se puede cambiar fácilmente, porque el proyecto básicamente solo es estos archivos. Aquí está todo. Cualquier cosa que queramos modificar está por aquí. El proyecto pesa 166 KB. Por ejemplo, si no quisiéramos que nos muestre estos resúmenes. Sin embargo, también hay otra forma. ¿Cuál? Slash init y no solo hacer que nos haga o actualice el agents.md, sino darle contexto.

[06:17] Indica que nunca haga mención a código al charlar y no usar herramientas. Presionamos intro, se pone a leer lo que tenemos actualmente, básicamente solo el snake.html, y después se pone a crear el archivo agents correspondiente. Y esto funciona pues como en cualquier otro agente.

[06:35] Ahora, si nos pasamos a una nueva conversación, pues ya no tendremos todo lo anterior, tendremos el contexto desde el comienzo y con arroba por aquí vamos a poder ver los distintos archivos y seleccionarlos. Al mismo tiempo que seguir escribiendo y ya cuando sea exactamente lo que queremos poner, presionamos intro y podemos indicar lo demás. Por ejemplo, mejora el código.

[06:58] Presionamos intro y pues se va a poner a trabajar en dicho archivo. Aquí luego de razonamiento se va a poner a escribir el archivo mejorado. Cuando son pocas ediciones pues usa la herramienta de editar, cuando son muchas pues usa la de escribir, como en cualquier otro agente.

[07:13] Y después nos da el resumen. Otra cosa que podemos hacer es compactar, tal como decíamos, de forma automática. Así que simplemente presionamos intro para que nos lo autocomplete y presiono intro nuevamente si no quiero hacer ningún comentario adicional. Estamos en 10,000 tokens utilizados y ahora después del resumen pues debería de ser bastante menos. Ya tenemos 3,551.

[07:36] Esto claramente tiene más sentido cuando estamos más al límite, pero de todos modos funciona también de forma automática. Y por ejemplo, también si aquí mismo en la carpeta del proyecto tenemos alguna imagen, el modelo la puede ver, la puede visualizar, la puede describir, si es que dicho modelo tiene la posibilidad. Vamos a decirle, describe la imagen. Simplemente con eso, pues por aquí ya se puso a leer la imagen y después responde. Vimos que en ningún momento le tenemos que indicar el

[08:04] nombre del archivo ni nada, porque simplemente siempre es algo que tiene en el contexto. Y pues la única imagen que hay es esta, así que lo supo perfectamente. Aquí tenemos la respuesta. Nichonauta monetizando la IA, lo que dice la miniatura. Vemos que en general el objetivo de Min Agent es ser bastante simple, lo cual nos ahorra tokens y complejidad o sobreingeniería tanto para modelos grandes como para modelos pequeños. Para modelos pequeños, para que no se pierdan entre tanto

[08:33] contexto, para no requerir cargarlos con tanta ventana de contexto. Y lo mismo en modelos grandes, pero por ejemplo, en aquellos que no caben completos en GPU, pues sabemos que la generación de tokens no es un problema, pero el procesamiento de tokens sí. Y aquí bajo esta forma de trabajar, estamos intentando conseguir un intermedio entre no requerir tantos tokens de entrada, pero tampoco tantos tokens de salida. Por ello no tiene que andar buscando archivos. De todos modos,

[09:05] esto es únicamente como en este momento funciona. Claramente va a haber cosas que vamos a querer cambiar con el tiempo, y no solo que queramos en la rama oficial, sino que cualquier persona entrando a la carpeta SRC puede modificar lo que quiera, incluido el mismo Min Agent modificando Min Agent.

[09:26] Solo para ver qué tal quedó después también de se supone mejorarlo, vamos a abrir el snake.html, le doy doble clic y esto es lo que el modelo gema 4e 4b nos había generado. Para ese prompt tan simple, este modelo tan pequeño, que por cierto rápidamente aumenta la velocidad. Si queremos añadir una de las otras posibilidades, simplemente pasamos de off a on, como por acá. Claramente es apenas una versión inicial, pero funcional ya es. Y pues bueno, como una última prueba, voy a eliminar todo de la carpeta y vamos a

[10:02] hacer que haga unos cuantos archivos simplemente para ver que esto está funcionando. Claramente mejor o peor depende de nuestros prompts, del modelo, del legends.md y de si queremos modificar min agent, sus prompts y código que ya integra.

[10:19] Crea tetris.html, pong.html, snake.html y presiono intro. Por aquí comienza con su cadena de razonamiento y lo primero que hizo fue escribir tetris.html. Después lo leyó y ahora va a proceder con pong.html. Después lo lee y por último, pues debería de trabajar snake.html y de hecho ahí falló la lectura. Algo hizo mal el modelo, pero bueno, es tan simple como en una nueva conversación si queremos que lo revise, aunque mejor revisarlo nosotros, ¿no? Le podemos decir, "Revisa snake.html

[10:57] y dime de qué trata." Presionamos intro y aquí está la respuesta. Después de que se puso a leer el archivo correspondiente nos dio una respuesta. Así es como funciona en este momento esta primera versión de min agent, la cual aparentemente a simple vista ya está bastante funcional y sí, la verdad es que lo está, pero seguramente solo con el uso diario nos toparemos con problemas que quisiéramos resolver. Pero mientras tanto, para modelos pequeños, grandes o como sea, le estamos dando la

[11:27] posibilidad al modelo de sacar todo su potencial a partir de sí solo, sin nada más. No hay grandes prompts, no hay grandes herramientas, no hay grande nada. Simplemente, si nosotros lo queremos, claramente podemos activar terminal, skills y MSPs, pero por defecto no tenemos nada. Esto es, en este momento, min agent. Y si quieres seguir viendo este tipo de videos, simplemente dale like y suscríbete.
