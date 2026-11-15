# Compartir datos en hilos - 13 - Python Avanzado tutorial en español

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cFED4bHaK9I)
- **Canal**: nicosiored
- **Publicado**: 2021-03-04
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] en esta lección vamos a ver cómo podemos compartir un dato entre dos hilos qué tal amigos de youtube bienvenidos a esta lección y en esta ocasión vamos a ver cómo podemos compartir datos entre hilos mucho ojo vamos a estar trabajando con hilos no con procesos recuerden que los hilos en python comparten la memoria entonces esto hace que el compartir datos entre ellos sea muy sencillo desde luego bueno pues también esto nos puede ocasionar algunos problemas entonces vamos a ver un pequeño programita en el

[00:36] cual vamos a compartir una variable entre dos y los empezamos importando las bibliotecas que necesitamos vamos a importar una freud y también time después vamos a declarar una variable esta es la variable que vamos a buscar para compartir los datos es una variable que vamos a utilizar de forma global y es el dato que vamos a compartir entonces tenemos nuestra variable valor luego vamos a definir el método que van a estar utilizando ambos hilos es un método muy muy sencillo para que

[01:12] nosotros podamos observar cuál es el comportamiento que tenemos en los siglos nuestro método se llama procesa y vamos a indicar qué valor va a ser utilizado en el ámbito global por eso estamos colocando global valor para saber que realmente estamos haciendo uso de esta variable valor y no de una variable local al método proceso ya que estamos adentro de proceso vamos a hacer una copia a una variable local entonces tenemos valor local es igual a valor posteriormente vamos a utilizar

[01:44] este print los experimentos que vamos a hacer en este momento lo vamos a dejar comentado y luego qué es lo que hacemos bueno pues incrementamos valor local en 1 después vamos a simular que es algo más sucede que hay algún otro proceso más cálculos y esto lo hacemos por medio de time punto es libre y por último bueno pues vamos a actualizar a nuestra variable global es decir vamos a actualizar a valor si observan este método no hace más que incrementar el valor el contenido de

[02:19] valor muy bien entonces vamos a maine en maine vamos a colocar una impresión con el valor inicial creamos la instancia de nuestro primer y lo indicamos que va a trabajar con nuestra función procesa hacemos la instancia del segundo y lo empezamos ambos hilos y ya están trabajando ambos hilos ok una vez que han finalizado los dos ya ha finalizado tanto un hilo 1 como hilo 2 pues continúa 20 y en main vamos a imprimir valor final igual a valor es decir vamos a tener el último valor el valor más

[03:02] actualizado que tenemos todo esto parece funcionar muy bien simplemente tenemos dos hilos cada uno de ellos va a incrementar en un 1 el contenido de valor bueno pues al final vamos a esperar tener 12 qué les parece si lo ejecutamos vamos a ejecutar lo vean tenemos valor en el inicio 0 logró al final 1 vamos a ejecutarlo nuevamente no importa cuántas veces lo ejecutemos estamos teniendo esto porque está sucediendo eso bueno surge una condición que se conoce como reid y es cuando dos o más hilos están

[03:40] tratando de modificar el mismo dato al mismo tiempo o tratando de leer el mismo dato al mismo tiempo y como nosotros tenemos un slip bueno pues en ese momento pasa a la ejecución al otro hilo pero vamos a verlo con más calma para esto vamos a quitar el comentario al print que tenemos y ejecutamos nuevamente entonces dice valor de inicio cero en el hilo valor tal en el hilo valor cero y luego aquí aparece otro cero y luego valor al final uno estas impresiones que se ven extrañas no es

[04:15] porque nosotros tengamos algún problema con el print sino se deben a la forma como se fue ejecutando esto en realidad yo no sé cuál primero igual después pero vamos a suponer que el hilo uno entró primero entonces bueno tenemos nuestra impresión valor en el inicio y empieza la ejecución de procesa el hilo 1 hasta acá en el hilo valor igual a aquí está pero como entró en ese momento bueno pues que sucedió que su valor local tiene el contenido de valor en este punto es 0 en este momento dejó de actuar ese hilo y

[04:56] empezó a actuar el otro hilo entonces el otro y lo empezó el mismo camino adentro de procesa en su propio valor local obtuvo el contenido de valor que es 0 y llevó a cabo en la impresión aquí sí le dio tiempo de llevar a cabo la impresión y dice en el hilo valor es igual a cero ok ya después regresó a la ejecución al hilo 1 y que hizo hilo 1 bueno pues terminó su impresión y nos aparecen este otro 0 que tenemos acá luego hilo 1 incrementa variable valor local tenía el valor de 0

[05:35] y qué sucede pues ahora se va a 1 valor local vale 1 luego viene aquí está en punto slip entonces entra en acción y los 2 y los 2 continúa y está incrementando su valor local en 1 pero cuánto vale el valor local de iu los dos en este momento pues también vale 0 entonces se incrementa a 1 y empieza la parte del time punto slip y lo uno continúa y actualizan valor con 1 que es lo que tiene su variable de valor local después y lo dos continúa y que hace actualizar valor con 1 que es el

[06:15] contenido que tiene su valor local entonces vean lo que ha sucedido aunque se ejecutó dos veces procesa debido a la forma como van trabajando los hilos bueno pues no tuvimos realmente el comportamiento que nosotros estábamos esperar ok esto es algo muy muy importante y algo que tenemos que comprender bueno vamos a seguir experimentando con esto que es lo que vamos a hacer vamos a comentar time punto slip y vamos a ejecutar nuevamente y vean que tenemos ahora si tenemos valor al final 2 valor en el

[06:55] inicio y 0 en el global orihuela 0 en el hilo valor igual a 1 valor al final 2 como ya no tenemos el slip dio tiempo al hilo de hacer todo el recorrido por procesa antes de que el segundo hilo empezar a hacer su recorrido en proceso por eso ahora sí en el primer hilo obtuvimos el valor es 0 cuando entró y en el segundo y lo obtuvimos el valor de 1 cuando entró y obviamente nuestra ejecución final van a darnos valor con el contenido de 2 pero este es un ejemplo muy sencillo y

[07:35] realmente nosotros no vamos a saber cuánto tiempo van a tomar que se lleve a cabo ese proceso adentro de una función entonces en este caso como es muy sencilla bueno pues tenemos la buena suerte de que da el tiempo suficiente al primer hilo determinar para que el segundo hilo entre sin que tengamos ningún tipo de corrupción de información pero qué sucede si nuestras funciones más complejas llevan más procesos pues no vamos a tener garantía de que el primer hilo lleve a cabo todo lo que

[08:06] tiene que hacer antes de que entré en el segundo hilo que es exactamente lo que nos está pasando cuando aquí simulamos que tenemos un tiempo de espera como si se llevara a cabo un proceso mucho más largo ok que se puede hacer para resolver esto porque no podemos quedarnos así no tendría ningún sentido tener hilos en los cuales nosotros no podemos controlar el acceso a una variable ya sea para leerla o para escribirla no sería nada y bueno pues para eso vamos a poder crear una sección crítica de tal manera

[08:44] que la sección crítica va a permitirnos que solamente un hilo a la vez entre en ella y una vez que ese hilo ha finalizado la ejecución de la sección crítica entonces otro hilo ya puede entrar y con eso vamos a poder tener este comportamiento resuelto esa solución la vamos a ver en la próxima elección espero que esta lección les haya resultado útil e interesante muchas gracias a todos y nos vemos en la próxima elección
