# 🚨 Cómo hacer un BOT en TELEGRAM (CON PYTHON🐍 MUY FACIL)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=wxOeEb2ElSU)
- **Canal**: Promise | Dev
- **Publicado**: 2021-01-14
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:43

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hola amigos bienvenidos a este tutorial vamos a crear un bot sencillo para telegram vamos a hacer con el lenguaje de programación python así que para eso vamos a instalar lo que es la librería de la voz en la descripción del vídeo les voy a dejar lo que es el pip install para que ustedes vengan hacia lo que es la cmd o la terminal como quieren llamarla y vamos a pegar justamente ese ese texto que le dije que es éste que espn star telegram bots up y que lo que va a hacer esto es

[00:34] instalarlo en la librería es importante respetar las las mayúsculas vamos a darle enter en el caso de que usted no lo tengan instalados y lo va a proceder a instalar todo un proceso como ya lo tengo instalado simplemente me pide una actualización así que lo que voy a hacer es cerrar los áltimos al lado y ahora el siguiente paso es crear nuestro voto para poder configurarlo ya en nuestro código en nuestro inglés de visual studio com en este caso vamos a ir a nuestros telegram web y como ven aquí yo

[01:02] estoy en teherán web para eso vamos a buscar un usuario que el usuario se llamaba wood ok así como está la ponemos but father luego buscamos y cuando ustedes lo sabrán por primera vez se le va a ver esta pantalla aunque y vamos a proceder a crear nuestros bots para crear nuestro voz tenemos que darle un click aquí y sobre donde dice new bots y una vez que ustedes le dan click sobre new bot automáticamente le va a decir el uso que deben darle un nombre a su bots bien yo aquí le puse evo tardó 22 y luego de eso

[01:35] le va a pedir un nombre de usuario para ese bots yo le puse se llamaba votar di torreón bajo bots bien luego de eso les va a dar todo este mensaje donde también van a poder ubicar a su voz con haciendo un clic sobre aquí sobre él el nombre de bot y les va a dar algo muy importante que es esto que es el token el del toque de la app y ok este token va a identificar a nuestro voto por lo cual tenemos que copiarlo lo vamos a copiar y ahora sí ya podemos pasar a configurar nuestro

[02:07] vamos a importar la librería importa televoto para ya poder empezar a configurar el bot vamos a poner bot que va a ser igual al televoto punto televoto y entre paréntesis y comillas vamos a pegar justamente ese toque que hemos copiado lo podemos hacer con control veo como con lo que es clic derecho y pegar vamos a darle el control ve y ahora sí ya podemos empezar a configurar nuestro voto bien para configurarlo yo voy a usar lo que es un decorador en python para los que no saben que es un decorador en python es

[02:41] una función que recibe parámetros de otras funciones y que retorna resultados esto generalmente se utiliza para lo que es la reutilización del código ok bien voy a poner bot punto mensaje y luego guión bajo el dar ok ahora vamos a ponerle los comandos con el comando y en una lista vamos a especificar le que van a haber dos comandos que son el help i el start el start lo que va a hacer cuando nosotros clicamos ahí que se va a mandar a llamar justamente esa función del mensaje que nosotros lo vamos a

[03:15] configurar ahora así que vamos a crear una función que se va a llamar de enviar que por parámetro va a recibir el mensaje y ahora vamos a poner voz punto replay punto que va a replicar justamente el mensaje que nosotros vamos a poner ahora y le voy a poner hola como estas en los que no va a decir nuestro voto nos estamos configurando y ya una vez hecho esto nosotros vamos a poner bots calling y el polín lo que va a hacer es que se va a mantener atento abierto nuestro voto si para la información que

[04:00] el que pueda recibir si bueno yo no desechó esto vamos a guardarlo una vez guardado si no tenemos no tenemos ningún error de sintaxis acá tengo un error estos nueves puntos sino que es un bajo bien fijado de eso no tenemos ninguna ruta sintaxis lo que tenemos que hacer nosotros ahora ya podemos ir hacia nuestro archivo así que yo le puse botox le puse a mi archivo que está por todos y lo podemos abrir si la ventana se mantiene abierta quiere decir que hemos hecho bien el trabajo del

[04:42] código si se cierra es porque nos da un error o tenemos algún error y sintaxis a un código erróneo bien bueno ya una vez se ha abierto esto podemos ir justamente al enlace que nos da nos proporciona una vez creado nuestro bots le doy ahí y como ven acá no hay mensaje me dice votar 222 y le voy a dar a iniciar una vez que yo piense como automáticamente que es una vez que nosotros amor iniciar es estar por lo cual nos muestra hola cómo estás ya directamente no se está mandando un mensaje si nosotros volvemos

[05:17] a poner start nos dice de vuelta hola cómo estás y entonces ya nuestro botella es capaz de poder respondernos a través de lo que nosotros le ponemos ok ahora también lo que podemos hacer nosotros es en modificar el texto el código y decirle que él repita lo que nosotros decimos no a lo que nosotros le ponemos por texto bien bueno para eso vamos a irnos y dirigirnos hacia lo que es nuestro primero vamos a cerrar nuestro nuestro comando cmd voy a cerrarlo bien y ahora nosotros tenemos que ir hacia nuestro

[05:53] visual studio code para empezar a a configurar justamente el código que mencionamos recién para que nuestro voto pueda ser capaz si de repetir lo que nosotros le escribió bien una vez estando en nuestro visor estudio code vamos a crear de vuelta un decorador vamos a reutilizar el código yo voy a copiar le voy a pegar aquí y vamos a modificar poco y nada digamos todo lo que tenemos dentro así que ya no va a ser el comando sino que lo que vamos a modificar nosotros y poner ahora es función o sea

[06:31] con un lambda vamos a sacar esto que nos pone automáticamente y con el land ahora nosotros vamos a decir qué mensaje va a ser verdadero y lo importante es ahora la función que nosotros creemos que es el de vamos a ponerle que sea mensaje en este caso que va a recibir por parámetro justamente mensaje igual que en la anterior función y de vuelta por robot cepli ok una vez que él ponemos replicó ponemos to y ahora entre paréntesis y ponemos mensaje y luego del mensaje entre una coma le ponemos mensaje punto

[07:12] punto text ahí está ahora nosotros ya vamos a poder ser capaz con nuestro con nuestro nuestra función si de éste lo que va a hacer va a rescatar nuestro mensaje el punto text va a rescatar lo que nosotros va a repetir digamos lo que nosotros escribamos o lo que le pongamos guardamos cambios si no tenemos ningún error de sintaxis nos dirigimos hacia nuestro bots ok lo voy a ejecutar de vuelta porque creo que yo tengo de cerrado bueno ahí está ya tenemos abierto y ahora le voy a poner acá hola

[07:49] hola tendría poner y ahora fíjense en como él nos dice hola automáticamente le pongo como estas y él nos dice cómo estás entonces esta manera ya nuestro voz puede ser capaz que pueda repetir lo que nosotros le decimos todo eso a través de la función que nosotros quedamos con el df mensaje con nuestro repito sí que va justamente a replicar ese mensaje luego de haber escrito ahora nosotros también podemos modificar nuestro voto podemos exponer la imagen sigue a nuestro bots y nosotros nos vamos de vuelta hacia

[08:23] nuestro post fighter fíjense que tiene una serie de comandos y aquí podemos nosotros editar nuestro bots si hay un hace una una opción a que se diga edit pod y bueno y podemos nosotros configurar nuestro bote es cuestión de chequearlo así que esta manera nosotros podemos crear un bot en nuestro telegram
