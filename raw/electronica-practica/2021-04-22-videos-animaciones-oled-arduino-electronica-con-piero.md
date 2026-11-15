# Videos y Animaciones en Oled con Arduino 😲😲

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=AXo3sLMQ89o)
- **Canal**: Electrónica Con Piero
- **Publicado**: 2021-04-22
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:18

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hola nuevamente bendecidos hijos de tesla alguna vez se preguntaron si pueden reproducir vídeos en arduino con la pantalla oled pues yo no bueno la verdad es que sí y por eso es que hoy les traigo este tutorial de cómo hacerlo después de este pequeño tutorial ustedes podrán hacer pequeñas animaciones justo como la que están viendo en pantalla espero que no hagan cochinadas pequeños piñones y bueno muchachos ya reproducir este pequeño vídeo de tan sólo dos segundos de duración como ejemplo para

[00:30] el vídeo algo importante que tengo que decirles es que no podemos colocar vídeos de más de 8 o 10 fotogramas bueno no al menos de manera que guardemos todo en la memoria del arduino recordemos que este tan sólo tiene 32 kb de memoria flash y no es que podamos guardar vídeos de un gigabyte ahí por si es que quisiera reproducir alguno [Música] comenzando lo primero que haremos es que convertiremos el vídeo a blanco y negro y también cambiaremos el tamaño de imagen al tamaño del respectivo de la

[01:09] pantalla oled para editar videos yo uso camps asia pero supongo que cualquier otro editor sirve para este fin [Música] en este caso mi pantalla oled es de 128 x 64 píxeles [Música] le aplicar una capa para cambiarlo a blanco y negro y exportar el vídeo [Música] y aquí lo tenemos el vídeo convertido completamente lo siguiente que haremos será descomponerlo en fotogramas en este caso yo usaré vlc para descomponerlo si no sabes cómo hacerlo solo sigue mis pasos [Música] ah [Música]

[02:16] acá colocaremos el formato de los fps yo colocaré jpg acá el nombre con el que se guardarán acá colocaremos la ubicación en este caso yo crearé una carpeta que se llamará fps y la dirección no copiaré justo en este apartado acá será la cantidad de fps que saldrán por ejemplo si colocamos uno saldrán todos los fps pero por ejemplo si colocamos el número 2 saldrá un fotograma de cada dos fotogramas y así sucesivamente en este caso yo colocaré el número 6 seguidamente marcaremos el

[02:58] filtro de escena y colocaremos guardar listo ya lo tenemos configurado ahora procederemos a abrir el vídeo con el reproductor y veremos absolutamente todo el vídeo para descomponerlo completamente una vez terminado entraremos a la carpeta y estos serán los fotogramas que saldrán en nuestra pequeña pantalla yo reducir los fotogramas y necesarios para tener exactamente los 10 fps [Música] ahora viene lo realmente hostigante y un poco complicado abriremos el primer fotograma con paint

[03:40] y en una nueva carpeta lo guardaremos como mapa de bits monocromático [Música] [Música] y eso haremos con cada uno de los fotogramas si es que conoces alguna forma más fácil de hacer todo esto de uno solo pues te recomiendo usarlo [Música] una vez tenemos todos los fotogramas como mapa de bits monocromáticos lo convertiremos en matrices de bytes y no te preocupes que esto sí lo haremos todo de uno solo entraremos a la siguiente página iremos donde dice elegir archivos [Música]

[04:36] y seleccionaremos todos los fotogramas que convertimos en mapa de bits monocromático [Música] nos aseguraremos que el tamaño sea correcto acá podemos ver una vista previa de todos los fps y donde dice formato de salida seleccionaremos la opción que dice código arduino acá colocará el nombre que tú desees y le daremos a generar código y aquí tenemos nuestro hermoso código ya listo para copiarlo en el id de arduino [Música] cada una de estas matrices representa un fotograma [Música]

[05:33] y cada fotograma tiene el nombre que pusiste con su respectivo número de orden para que quizás con algún force reproducirlo uno por uno como si fuera una secuencia de leds yo les dejaré todo el código en la descripción para que puedan descargarlo y editarlo como ustedes gusten y para no complicarme demasiado solo dibujaré el primer fotograma y lo eliminaré a los 17 milisegundos para volver a dibujar el segundo fotograma y volver a eliminarlo y así con todos los fotogramas para

[06:03] poder tener una buena secuencia una vez terminado todo esto sólo falta comprobarlo a armar el circuito [Música] y nada más que subirlo y así podemos reproducir vídeos cortos en nuestro arduino dime una cosa él está maníaco me gustaría que busque y encuentre la manera de reproducir vídeos largos con ayuda de una sd para que puedas ver con tranquilidad la rosa de guadalupe [Música] o déjamelo saber con un like y un comentario no olvides suscribirte que solo por hoy es totalmente gratis y nada

[06:57] hasta aquí ha sido conmigo mis estimados hijo de tesla nos vemos en el siguiente vídeo charles town [Música]
