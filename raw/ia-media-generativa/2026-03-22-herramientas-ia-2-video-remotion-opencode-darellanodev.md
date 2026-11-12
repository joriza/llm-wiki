# UNKNOWN

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=7KMcc12K0fA)
- **Canal**: UNKNOWN
- **Publicado**: UNKNOWN
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 00:00

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:04] Hola, ¿qué tal? Muy buenas a todos. Hoy me gustaría realizar una práctica utilizando este proyecto libre de GitHub denominado Remotion, que tiene una popularidad de más de 40,000 estrellas. Y si bajamos abajo en la descripción nos dice que es un framework para crear vídeos de manera programática usando React. Entonces, se me había ocurrido hacer una pequeña animación en formato vídeo utilizando esta librería de Remotion, a ver qué tal queda. Y también mediante la ayuda de la inteligencia

[00:38] artificial mediante Open Code. Voy a abrir Visual Studio Code, donde tengo un proyecto vacío en el que he creado un archivo con un prompt que ahora veremos. Pero bueno, voy a explicar un poco el concepto de lo que quiero probar a hacer.

[00:56] Y me gustaría intentar crear una animación estas típicas de YouTube que sale una banda abajo animando a los usuarios a suscribirse al canal. Así que voy a abrir un momento el pront y esto es lo que le he puesto. Usa las mejores prácticas de remotion. Mi canal de YouTube es este Arellano Dep, ¿vale? Usa Kurl para extraer datos de YouTube y encontrar el avatar y el número de suscriptores.

[01:24] Es decir, le voy a pedir a la inteligencia artificial que utilice esta herramienta de CUR para extraer datos dinámicos. Hm. A continuación digo, en la página aparecen varios valores de suscriptores. Asegúrate de localizar el correcto. Ten en cuenta que yo uso el manejador de dependencias PNPM y no npm.

[01:45] Bueno, esto no tiene mucha importancia. Pero me gusta utilizar más este gestor de dependencias, aunque también lo hace perfectamente bien con el npm normal. Y ahora le expongo la idea. Crea una banda inferior blanca que se deslice desde la parte inferior central y muestre el nombre, el número de suscriptores y el avatar.

[02:07] incluye un típico botón de suscribirse negro de YouTube de ancho fijo que cambie de suscribirse a suscrito. Usa una animación de zoom suave al presionar el botón y una animación de resorte con un pequeño rebote al soltarlo. Y finalmente, haz que la banda inferior se desvanezca al final y renderiza el vídeo en formato MP4 con transparencia. Esto último se lo he puesto para poder reutilizar esta animación encima de unos vídeos, por ejemplo. Entonces, voy a copiar este prompt y voy a abrir Open Code. Para

[02:42] ello, voy a pulsar en review in File Explorer para situarme en el directorio del proyecto. Y desde aquí voy a abrir una de las terminales, en este caso Alacrity, que es una de las que recomienda Open Code. Y aquí ya ejecuto Open Code.

[02:59] se abre Open Code y tengo uno de los modelos por defecto gratuitos que vienen con Open Code. Así que aquí voy a hacer control shift V para pegar todo el prompt anterior directamente. Voy a trabajar en el modo build para que construya. Así que pulso enter y vamos a esperar a ver lo que hace.

[03:22] Aquí empieza a pensar y ya está ejecutando Curl para obtener los valores que le hemos indicado en el prompt. Aquí está buscando los suscriptores. Parece que tiene algún problema y está probando diferentes alternativas. Parece que ha obtenido el nombre del canal y que está haciendo operaciones para obtener el número de los suscriptores.

[03:49] Mira, por fin parece que ha obtenido 34 suscriptores y aquí está creando el proyecto con PNPM, tal como le hemos dicho. Así que vamos a esperar un momento. Ahora parece que está escribiendo el package Jason con las dependencias.

[04:09] Y aquí vemos que está creando uno de los archivos de Typecript con una estructura de React y vemos aquí algún componente, subscribe button o el nombre del canal y los suscriptores. Y aquí parece que está creando diferentes estilos para el botón. Aquí continúa instalando dependencias de remotion.

[04:33] Ahora parece que está creando el archivo index.ts, DTS, que es el punto de entrada para remotion y nos acaba de ejecutar remotion en el navegador web. Vamos a ver. Vamos a hacer clic en el botón para ir al frame inicial y pulsamos el botón play para ver cómo queda la animación.

[04:53] En principio hace un movimiento hacia abajo el banner y vemos que el botón de suscribirse pasa al estado suscrito y también ha hecho bien la parte del nombre del canal y del número de suscriptores. Faltaría lo que es el logotipo, así que voy a pedirle a Open Code a ver si podemos dárselo en una imagen. Le voy a decir a Open Code, parece que tienes problemas para cargar el logotipo del canal de YouTube, así que prepara el código para que pueda poner una imagen punto png.

[05:41] Vamos a pulsar enter. Y ahora parece que ha cambiado algo en el estilo de la imagen del avatar. Parece que ha creado alguna imagen temporal y la animación se mantiene igual. Vamos un momento a Visual Studio Code y voy a desplegar el directorio src y vamos a abrir el archivo indexs y vemos efectivamente que aquí está cargando una imagen en formato PNG que ha llamado avatar. G. Vamos a desplegar public y aquí está la imagen. Así que voy a utilizar la opción de review in File Explorer

[06:18] y voy a pegar aquí la imagen de mi logotipo del canal de YouTube. Lo voy a denominar avatar dare ya. Voy a cambiar aquí avatar. Dar ya no deb un cuarto. Y ahora si vemos el resultado en motion ya se puede observar cómo aparece el logotipo. Vamos a pulsar el botón play.

[06:41] Y efectivamente el logotipo también sigue la animación. Y ahora, por ejemplo, si queremos que la animación aparezca de abajo hacia arriba, como era la idea original, vamos a echarle un vistazo al código y vamos a buscar en este archivo indexs alguna propiedad que haga referencia a la animación. Por ejemplo, podría ser slide in.

[07:04] Así que voy a jugar a cambiar este valor. Por ejemplo, si le ponemos quizás un número negativo, vamos a poner un 500. Vamos a pulsar el botón para ir al inicio de la animación y pulsamos el botón play. Y ahora sí que vemos iniciarse la animación de abajo hacia arriba, como era la idea original. Así que genial.

[07:28] Finalmente voy a pulsar aquí en el botón render. Para conseguir la transparencia en el vídeo exportado vamos a ir a la pestaña general y donde pone codec por defecto aparece el codec H264 que suele ser típico del formato MP4. Pero ese formato no nos va a permitir la transparencia, así que voy a seleccionar VP9, que es un codec típico de web M.

[07:54] También en la sección picture, en la sección de formato de imagen, vamos a elegir PNG porque sí que permite transparencia. Y abajo en la sección pixel format voy a desplegar y a elegir este que pone Yuva 420p. Antes de pulsar a renderizar el vídeo, voy a cambiar una cosa también en el código de la aplicación con Visual Studio Code. En el archivo root.x del proyecto hay una parte de configuración de la animación y actualmente hay un ajuste para controlar los frames por segundo. Yo tengo 30 y me gustaría

[08:32] probar a poner 60 frames por segundo, así que lo voy a cambiar. Guardamos. Y ahora sí, voy a pulsar en renderizar vídeo. Y aquí en la parte superior derecha vemos cómo se va actualizando el progreso del renderizado del vídeo y el tiempo restante. Entonces, a continuación, para comprobar si el vídeo se ha renderizado bien con la transparencia, voy a arrastrar el archivo final con la extensión web m a un editor de vídeo. En este caso estoy utilizando Shortcut. Aquí tenemos el fragmento de vídeo y si nos ponemos

[09:10] encima vemos efectivamente que aparece el cartel aquí y que todo lo demás es transparente y se puede ver el clip de vídeo de la pista inferior. Así que genial, ha funcionado. Pues nos viene ideal para superponerlo encima de otros vídeos, así que voy a colocarlo encima de este vídeo para que se vea. Vamos a ver.

[09:32] Genial, pues funciona perfectamente. Y bueno, esta sería la idea general de esta herramienta Remotion para crear animaciones de forma programática. Espero que os sea de utilidad y que os haya gustado este vídeo y nos vemos en un siguiente vídeo con otras herramientas. Un saludo y chao.
