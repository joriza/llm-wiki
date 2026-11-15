# 28. ¿Qué es Pandas? | Introducción a Pandas en Python | Curso de Python 3 desde Cero | La Cartilla

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Mm1L4Bde6_w)
- **Canal**: La Cartilla
- **Publicado**: 2020-04-23
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:45

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:16] Hola a todos, bienvenidos a un nuevo tutorial del curso de Python 3 desde cero orientado por la cartilla. En los tutoriales anteriores hicimos una introducción a una de las librerías más importantes para la computación científica en Python, hablo de NumPy. Si se perdieron los tutoriales, en la descripción del vídeo y en la lista de reproducción del curso los pueden encontrar. Este es un tutorial en su mayor parte teórico, pero para quienes les interesa realmente el tema de analítica de datos con Python, todo lo

[00:43] que vamos a hablar aquí les va a resultar muy interesante. En esencia, si quieren trabajar con análisis de datos deben conocer la librería Pandas. No es una opción y lo digo con total seriedad, es algo que no se pueden saltar. Nos va a tomar alrededor de tres vídeos hacer apenas una introducción a Pandas. En los siguientes dos tutoriales ya tendremos más código y ejercicios de programación.

[01:06] Lo que les puedo anticipar de entrada es que una vez hayamos visto lo básico de Pandas se abrirá todo un mundo de posibilidades a ejercicios mucho más reales para ustedes. Entonces, empecemos. ¿Qué es Pandas? Pandas es una librería rápida y muy potente para la manipulación, el análisis y la visualización de datos tabulares. Esto es importante, ya vamos a explicar eso de datos tabulares.

[01:30] Pandas está construida sobre NumPy y Matplotlib. Esto explica en buena medida por qué es tan eficiente y por qué revisamos primero NumPy antes de saltar a Pandas. Pandas fue lanzada en el 2012 y desde ahí no ha parado de crecer vertiginosamente.

[01:44] Es una librería muy popular en ciencia de datos. Para llevarnos una idea, aquí tenemos un gráfico del tráfico histórico relacionado con el número de preguntas en Stack Overflow para los paquetes de Python con más tráfico y hay cinco de ellos que se llevan la mayor participación. Podrán parecer cifras pequeñas, pero si se imaginan todas las preguntas que se tienen en Stack Overflow, esto no es para nada pequeño.

[02:08] En la imagen encontramos frameworks como Django y microframeworks como Flask, en ambos casos para temas de desarrollo y creación de aplicativos web. También encontramos a NumPy y a Matplotlib. Recuerden, computación científica y visualización, ambas muy utilizadas también. Pero Pandas se lleva el primer lugar por su crecimiento marcado en los últimos años, que coincide con el auge que han tenido todos los temas relacionados con machine learning, deep learning y en general analítica de datos

[02:37] utilizando Python. Así como en NumPy los objetos fundamentales son los NumPy ND array, recuerden, vectores, matrices o tensores de N dimensiones, en Pandas los objetos fundamentales son los dataframes. ¿Pero qué es un dataframe? Un dataframe básicamente es un arreglo tabular para el almacenamiento de datos con una serie de propiedades particulares que facilitan su manipulación. Para quienes no están muy relacionados, un arreglo tabular de datos es una colección de filas y columnas, es decir, un objeto de

[03:10] dos dimensiones en el que almacenamos datos de distintos tipos en la mayoría de los casos, y estos formatos tabulares siguen la misma estructura de las tablas en SQL o incluso de las hojas de Excel que utilizamos para construir tablas dinámicas. Bajo esto, algunos se pueden preguntar qué diferencia a un Pandas dataframe de una matriz NumPy de dos dimensiones que también puede almacenar datos en una estructura de N filas por N columnas, como vimos en tutoriales anteriores. Lo que hace diferente a un

[03:40] dataframe de una matriz 2D NumPy son las propiedades particulares del dataframe que facilitan su manipulación, lo dijimos anteriormente. Dentro de estas propiedades podemos encontrar la facilidad de indexar columnas y filas que nos sirven para acceder y manipular los datos del data frame de una manera mucho más flexible e intuitiva, especialmente cuando manipulamos grandes cantidades de datos. Piensen que esta capacidad de indexación nos sirve para ejecutar operaciones como el

[04:08] agrupamiento por determinada categoría de la tabla, la unión o ejecución de joins entre varias tablas, los filtros por campos y atributos específicos, entre otros. En resumen, Pandas facilita una gama amplia tareas en el procesamiento, análisis y visualización de datos. Algunas de estas tareas son: La carga o importación de datos en múltiples formatos. Aquí hablamos de hojas de Excel, archivos de texto planos, archivos JSON, bases de datos relacionales, entre otros. Las transformaciones de forma de las tablas.

[04:40] Aquí nos referimos a pivoteos, transposiciones de matrices y otras. Tercero, facilita las transformaciones de datos. Aquí hablamos de operaciones como la conversión entre tipos de datos, strings a datetimes, por ejemplo, strings a enteros, manipulación de caracteres, entre otras.

[04:57] Pandas hace muy sencillo el cálculo de medidas derivadas. Piensen en funciones matemáticas que aplicamos sobre columnas o filas particulares del data frame para generar nuevas columnas o filas que necesitamos para cosas en particular.

[05:11] Quinto, permite el análisis y visualización de los datos. Sobre los data frames podemos computar directamente gráficos de barras, tortas, histogramas, diagramas de dispersión, diagramas de correlación, entre otros. Y esto es gracias a su integración con Matplotlib.

[05:28] Finalmente, Pandas facilita la escritura de tablas que obtenemos como resultados de toda esta manipulación hacia diferentes fuentes. Nuevamente podemos pensar en hojas de Excel, archivos de texto planos, archivos JSON, bases de datos relacionales, entre otros. Sin Pandas, ejecutar todas estas operaciones formulando nuestros bucles, procedimientos particulares, funciones, no solo sería extenso y un poco traumático, sería además supremamente ineficiente. Recuerden que Pandas se

[05:58] apoya en NumPy, que está escrito en buena parte sobre el lenguaje C C++, lo que lo hace muy rápido, especialmente cuando hablamos de grandes cantidades de datos. Para los que nos han seguido desde un inicio y utilizan Python a través de la distribución de Anaconda, ya tienen instalado Pandas. Lo único que tienen que hacer es importarlo. Para los que no usan la distribución de Anaconda y al importar Pandas dentro de algún script de Python les aparece que no tienen disponible la librería, como un

[06:24] error en consola, pueden hacerlo a través de pip, pip install Pandas o si requieren una versión específica tendrían que decirle, en este caso a pip, pip install Pandas igual igual y e indicarle seguidamente la versión. Una vez tengan instalada la librería Pandas, vamos a importarla a Python.

[06:43] Por convención general usamos pd o p d para importar Pandas, de tal modo que tenemos la instrucción import Pandas as p d. Y repito, esto es una convención global entre las personas que utilizan Python de manera tal que los scripts que van a encontrar en la web, los scripts que van a encontrar en GitHub, van a tener este alias para importar Pandas.

[07:07] Vamos a dejar el tutorial hasta aquí. En el siguiente video aprenderemos a importar archivos desde distintas fuentes y revisaremos cómo podemos acceder a los datos en un data frame. En la descripción del video les dejo un par de enlaces para quienes quieran profundizar. Recuerden que esto es un tema bastante extenso y nosotros en estos tres tutoriales apenas vamos a cubrir una introducción a todo el universo que es Pandas como uno de los paquetes más utilizados y más emblemáticos de Python. No olviden

[07:34] suscribirse al canal para estar pendientes de nuestro contenido y ya lo saben, si lo aprendieron, compártanlo con alguien más. Hasta un próximo video.
