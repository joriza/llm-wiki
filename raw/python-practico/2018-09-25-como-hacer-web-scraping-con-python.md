# Como hacer WEB SCRAPING con Python

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=rhnMvvmfBFI)
- **Canal**: Errodringer
- **Publicado**: 2018-09-25
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:55

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] [Música] bueno chavales en este vídeo vamos a ser fuertes klapisch en python el buen skretting es una técnica muy interesante ya que vamos a poder obtener de páginas web algunos elementos de interés como siempre vamos a ver un ejemplo para verlo más claro lo primero que vamos a hacer va a ser crear nuevo proyecto te lo vamos a crear en el escritorio por ejemplo vamos a llamar scraping y vamos a utilizar el país con 3.7 que trataremos instalar bueno parece que ya está lo primero que

[00:43] vamos a tener 63 librerías rick est jordi full sur y bandas son las tres librerías que vamos a para este el proyecto vamos a la consola y la instalamos por separado bueno una vez tenemos todas las brillas instalada vamos a crear nuestro primer script donde vamos a ir desarrollando nuestro código lo vamos a crear por ejemplo y para verlo vamos a crear un ejemplo que va a ser sacarle la clasificación y los puntos de los equipos de primera división de españa del diario as vamos a

[01:25] irnos díaz y vamos a ver cómo sacar primero lo que vamos a hacer es abrir el navegador mientras esto acaba de hacer sus cosas de importar la librería digital nuevas que muestra vamos a irnos al día de más la football league a santander de clasificación hay que estar la clasificación y los puntos que vamos a sacar de tamaña bueno atrás nuestro programa cómo lo vamos a hacer primero vamos a importar diferentes librerías [Música] primero lo que vamos a hacer descargando el html

[02:26] para ello vamos a utilizar y después vamos a poner aquí primero la url en donde vamos a hacer esta operación que va a ser estar aquí en el diario as luego veamos tipo strings ahora lo vamos a descargar el contenido de la página con rick est un toque y la dirección url que nosotros queramos por último vamos a transformarlo a formato believe el psuv que creo que va a hacer que nosotros podamos identificar los diferentes elementos de html y vamos podéis accediendo a los diferentes causas que

[03:04] nosotros que la muestra pe por ejemplo no vemos su lugar veis punto content el contenido de esta página que nosotros hemos descargado ya preparamos como html punto partes para que no lo interprete como éste mi bien qué vamos a hacer ahora pues ahora nosotros queremos identificar estos elementos aquí los nombres de los equipos para ello vamos a pulsar el clic derecho de inspeccionar elemento como vemos no brilla es que un experto a una consulta dice no va a abrir estas cositas de esquina como vemos aquí pone

[03:44] barcelona está dentro de la etiqueta tipo spam quedando a una clase nombre equipo pues esto vamos a abrir el paisa --equipos un comentario para poder empezar a trabajar con los equipos y lo que vamos a decir qué escudé equipo por ejemplo va a ser igual a sol punto en el que no se encuentre todas las etiquetas spam de la clase tenemos que poner para baja porque si uno interpreta como el creador de clases en python y aquí la clase que en este caso era nombre equipo podemos copiar aquí

[04:33] pegamos aquí ahora lo que vamos a hacer por ejemplo para ver cómo vamos a imprimir por pantalla y saber cuál es el contenido de esto vamos a correr este script como vemos aquí tenemos los diferentes elementos y etiquetas junto con el nombre del equipo hasta aquí el barcelona está para izquierda al madrid aquí está la vez [Música] ya que están todos esto lo vamos a meter dentro de un [Música] --equipos [Música] como podemos sacar sólo el nombre del cual vamos a hacer la integración con un

[05:20] bucle fortich y eco vamos a decir que hay equipos no va a añadir ap como ahora mismo y ya cada elemento de esto cada elementos estos pero solamente queremos el texto que va a ser barcelona por eso ponemos el texto y ahora hacemos aquí un print del de la lista de equipos vamos a ver qué contenido tiene esta lista como vemos con el barcelona la amarilla a la vez se tratan los tenemos todos podemos observar que lo tenemos repetido varias veces todo el equipo está debido a que en la

[06:14] página web habrá más elementos de con etiqueta de spam y clase en nombre equipo para evitar esto lo que vamos hacer dentro del buque vamos a descartar esos elementos nos vamos a quedar con los 20 primeros que son los elementos que nosotros tenemos fuera vamos a poner un count los munícipes a 0 si cada una es menor de 20 no agrega los equipos a la lista sino salte del book pero muy falta es un punto y coma vale me ha faltado aquí pone un coach más igual uno sea que lo vaya sumando

[06:59] uno ahora vamos a ver el contenido de equipo y la longitud de esta lista [Música] y como vemos que tenemos los equipos y longitud 20 que son los 20 equipos de primera ahora vamos a hacer lo mismo con la puntuación con los puntos de cada equipo para ello ahora más x derecho y persona ese elemento y como vemos una etiqueta tv de la clase destacar lo mismo podemos copiarlo si queremos [Música] ahora ponemos aquí puntos voy a poner la letra un poco más grande hace un poquito más grande es un poco

[07:44] menor [Música] juntos hemos dicho que etiqueta tv y destacado td de la clase destacar [Música] como vemos ahora de la app y puntos que en punto me detengo esto no va a pasar igual que antes no vaya agregando más cosas que tengan etiquetas de de de clase destacada por tanto abajo queda solamente primero que algo que nos interesa y ahora vamos a hacer que un print puntos para que nos diga los puntos que tenemos esto voy a comentar ya que ahora mismo los equipos no podemos hacer nada con

[08:38] ellos y vamos ejecutando a veces como vemos aquí tenemos los puntos de los diferentes equipos de primeros empezamos en 13 y acabamos en 1 [Música] ahora qué vamos a hacer con esto pues lo vamos a meter en un data frame que se llama que para eso no importa la librería pandas para ello vamos a poner vamos a crear df que va a ser un bandas data frame ya trabajo con el nombre adquiere entonces pone tipo formato a diccionarios como ya vimos en el vídeo del diccionario que es clave valor clave

[09:33] debate en el nombre y ahora los diferentes valores que en este caso va a ser equipos y puntos qué va a hacer puntos vamos a ponerle un 26 por defecto empieza en 0 yo creo que empieza en 1 por tanto vamos a decirle que el index base una lista de range del 1 al 20 + 12 al 21 vamos a imprimir aquí el data frame para que veamos qué aspecto tiene ejecutamos de haber cogido y como vemos aquí tenemos nuestro data frame que es simplemente una tabla donde tiene dos columnas uno el nombre o la

[10:19] etapa es el nombre del equipo ordenado según sus clasificaciones y vemos el index el índice que nosotros hemos puesto y los puntos que tiene ese equipo esto lo podemos guardar como como ficheros de texto por ejemplo csv para ello cogemos df que es el nombre de nuestro data frame y poner ocultos tu csv y el nombre de clasificación por ejemplo punto csv es decir que sin texto para que no guarde ninguna ejecutamos esto ya se ha ejecutado como vemos aquí sino a crear nuestros ficheros psv vamos a

[11:03] consultarlos aquí está extra podemos abrir si teneis el exceso se abre con excel yo como no lo tengo instalado ahora mismo con el bloc de notas y como vemos aquí tenemos nombre puntos y los diferentes equipos con la diferente puntuación yo creo que no hemos introducido un poco al mundo del scraping esto como vemos podemos sacar información de páginas web de manera muy sencilla y os animo a que os hagáis diferentes actividades para plástica editar yo lo he hecho por ejemplo con los precios de productos de

[11:43] amazon que me interesa y es bastante útil sale bastante bien nada organismo que suscriba sledge y nos vemos en el siguiente vídeo que muy interesante en el siguiente vídeo vamos a ver
