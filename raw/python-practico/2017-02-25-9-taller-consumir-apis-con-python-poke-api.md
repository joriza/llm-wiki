# 9.- Taller consumir APIs con Python - Poke API

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oExagoikAZ8)
- **Canal**: codigofacilito
- **Publicado**: 2017-02-25
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:04] ya que sabemos ya que nos hemos familiarizado con la librería recueste ahora vamos a consumir diferentes tipos de apis vamos a comenzar con una muy sencilla llamada poke up y como su nombre lo indica esta app y nos ayudará a obtener información acerca de pokemons nombre donde se ubican ataques y cosas por el estilo una de las características de esta app y es que es completamente gratis nosotros sólo vamos a poder realizar peticiones por método get es decir solo vamos a poder a obtener

[00:34] información esta información se va a encontrar en una estructura jason cosa que ya sabemos manejar quizás el único asterisco que yo le encuentro es que todo el contenido está en inglés pero dejando eso a un lado yo lo veo yo recomendaría esta api para practicar o inclusive para ponerlo en tu proyecto todo depende aquí podemos jugar un poco basta con escribir http t.co es la api versión 2 y lo que deseamos el en point que deseemos recordemos un en point no es más que una url en mi ejemplo yo tengo este en point

[01:19] es las pokemon john ford lo que va a hacer es obtener una lista de pokemon vamos a realizar una petición colocaría mi variable response es igual a recuesta punto get y colocaríamos la url como nosotros podemos realizar esta petición por el método get qué les parece si primero visualizamos como nos lo regresa el navegador claro ustedes también pueden ir a la parte de documentación y leer un poco sin embargo para agilizar esto copio y pego como ustedes pueden visualizar este objeto jason tiene tres atributos count

[02:05] previews y resultó dentro de results nosotros vamos a ver más objetos jason con atributos url inei listo nosotros estudiamos este objeto jason y vamos a hacer lo siguiente vamos a listar los que les parece basta con escribir bale o at bueno primero el live response punto estatus scouts 200 del hogar es igual responde punto yeso [Música] ahora que tenemos todo el contenido vamos a obtener los resultados resulta es igual a bale o at voy a utilizar un método del diccionario llamado get

[03:04] este método como ustedes saben intentará obtener esta llave y en caso contrario si no si la llave no existe quiero que me regrese con una lista vacía realizaría una condicional si la lista no está vacía entonces eterna cuerpo que mon en pokemon bueno sería results ustedes pueden cambiar el nombre y una vez nos encontremos integrando está lista yo voy a mostrar sólo los nombres name es igual a pokemon li y lo voy a primer print name ok de esta forma nosotros list haríamos pokemons

[04:00] voy a ejecutar mi aplicación python main y listo voy a visualizar una lista de 20 pokemons ustedes pueden verlos serían estos si son amantes de esta serie o de esta tendencia ustedes sabrán que no existen sólo 20 pokemons en este caso la app y nos regresa un total de 913 nosotros no podemos listar los 913 de un solo golpe así que lo que hace la api es que podemos listar los de poco a poco colocándole un atributo llamado offset y pasándole la cantidad 20 ustedes ya saben cómo pasar parámetros

[04:51] qué les parece si hacemos esto un poco recursivo voy a generar una función llamada get pokemon o pokemons colocaría un atributo llamada url que por default sería este colocaríamos un atributo llamado offset que comenzaría con cero y lo que vamos a hacer es mover esto dentro de la función algo así voy a colocar unos argumentos marx va a ser igual offset es decir este parámetro dos puntos offset este atributo siempre y cuando [Música] lo que nos están pasando sea diferente de cero en caso contrario

[05:56] vamos a mandarle un diccionario vacío dentro de get nosotros podemos colocar para ams esto ya lo vimos en tutoriales pasados colocar arcs y listo colocaríamos responso estatus 200 los listar y amos y listo vamos a poner una variable llamada next que será lo que el usuario nos regrese por terminal con el método road input esto funciona para python 2 continuar alistando [Música] voy a dar un poco de formato ye mayúscula islas n mayúsculas aquí simplemente colocaría irs next es igual

[06:50] sí aquí doy un poco de formato con lower y en caso el usuario quiera seguir licitando simplemente tendría que volver a ejecutar este método get pokemons pasando en el offset sea igual al offset + 20 y listo de esta forma nosotros tendríamos una función la cual puede listar todos los pokemons aquí simplemente colocaríamos que pokemons y listo creo que le escribe es bastante legible si no es así puedes dejarlo en la caja de comentarios allí vamos a estar al pendiente vamos a probar esto voy a limpiar

[07:43] aquí tengo un pequeño error porque faltan los dos puntos vuelve a ejecutar aquí tengo un pequeño error ahora desde caracteres basta con el colocar el look de f-8 listo me muestra los primeros 20 pokemons qué serían estos bueno sería estos si yo le doy otros 20 estaríamos estaría recibiendo estos vamos a en darle que sí le doy 10 y me visualizaría y visualizaría los mismos del offset 20 vuelvo a realizar un sí visualizo otros y el offset si no estoy mal 40 aquí está bien esa sería una forma con la cual tú

[08:53] puedes practicar con esta app y tú puedes obtener un listado de pokémons no es el único en point que podemos utilizar también podemos hacer algo un poco más preciso como ver debilidades ataques dónde encontrarlos evoluciones etcétera te invito a que tomes un poco de tu tiempo practiques con los diferentes en points que la app y nos ofrece y crees una aplicación interactiva a esta función aún le hacen falta un par de cosas les hace falta un re factor que no dudo que tú puedas lograr
