# El Lenguaje Latinoamericano Que Supera A Python 🦅🐍

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=VW9WXSZ7HfE)
- **Canal**: Tirando Código
- **Publicado**: 2026-10-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:44

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Te imaginas cómo sería programar en español? Sí, escuchaste bien, en español. Escribir condicionales, bucles y funciones, pero utilizando la lengua de Cervantes. Esto te puede sonar rarísimo, ya que la mayoría de los lenguajes de programación que utilizamos [música] se escriben en inglés. Es el lenguaje universal, tiene lógica que sea así. Pero, ¿y si te dijera que aquí en Latinoamérica hay un hombre que quiere romper con ese dogma de una vez por todas? Y además, [música] lo quiere

[00:29] hacer combinando la sintaxis sencilla de Python con el buen rendimiento de Rust en un solo lenguaje. En serio, [música] un lenguaje así parece un sueño. Pues despierta porque no lo es. Ponte cómodo o cómoda, [música] porque hoy viajaremos hasta Perú para hablar de Águila.

[00:46] Águila es un lenguaje de programación surgido en esta década con un objetivo muy ambicioso, que nuevos programadores en Latinoamérica y también en España y demás países hispanohablantes puedan aprender la base de programación sin tener que entender inglés primero. Pero no está pensado solo para ser un simple lenguaje educativo. [música] También pretende ser usado por profesionales para construir aplicaciones de todo tipo, desde videojuegos hasta páginas web, con un rendimiento más que respetable. Al final

[01:13] del vídeo hablaremos de esto. Y además, sin que la lengua materna de sus usuarios sea una barrera para su aprendizaje. [música] Pero, ¿cómo surgió la idea de crear un lenguaje en español? Pues para saberlo, contacté al mismísimo creador [música] de este lenguaje, Emerson Espinosa, la mente detrás de esta ambiciosa idea.

[01:30] Emerson es un ingeniero de sistemas peruano que se inició en la programación mientras estudiaba en la universidad. Sin embargo, su experiencia al principio no fue un camino de rosas. Los lenguajes con los que tuvo que empezar en la carrera no fueron otros sino Java y C++.

[01:43] Los cuales tienen una sintaxis no muy amigable para los principiantes. Y a esta dificultad se le sumaba el hecho de que estaban en inglés. Entonces, salí un poquito traumadito, digámoslo así, de sus lenguajes de programación de bajo nivel, porque su sintaxis y lógica es poco más compleja y aparte también el nivel de inglés, ¿no?

[02:01] Cuando terminó la universidad, esos bootcamps de programación en Chile, donde tuvo la oportunidad de aprender Ruby y después Python, los cuales le resultaron mucho más sencillos y le permitieron apasionarse por esta disciplina. En [música] Chile también enseñó programación a profesionales y estudiantes de escuelas secundarias y se dio cuenta que la barrera más difícil de superar para sus alumnos no era la lógica de programación en sí, sino la que a él mismo le había costado vencer

[02:24] años atrás, el idioma. Incluso al enseñar lenguajes sencillos como Python. Con Python, por ejemplo, en la clase me entendían todos perfecto, pero cuando ha pasado dos, tres semanas, por ejemplo, les volvía a preguntar sobre todo sintaxis, alguno que otros de los 20 que enseñaba, por ejemplo, dos, tres nada más se recordaban, pero el resto no.

[02:43] Entonces entendí eh cuando tú le explicas en español te entienden mucho más rápido. Entonces se preguntó, ¿por qué no existe un lenguaje en español para entender mejor la lógica y las bases de la programación? Así sería mucho más sencillo después aprender otro lenguaje en inglés como Python o JavaScript.

[03:00] Eh dije entonces, voy a crear el nuevo Python de Latinoamérica. Al principio el lenguaje [música] se iba a llamar Cóndor, el cual si lo piensas es un nombre genial, pues es el ave más grande de Sudamérica. Sin embargo, después cambió de idea.

[03:12] Pero luego me inspiré un poquito mirando a Python un poco, entonces dije, ¿quién se le come a la a la serpiente? No ese gusanito, el águila. Ya entonces dije, le voy a poner águila. Muy bonito, pero ¿cómo es que se programa en Águila? Pues la sintaxis del lenguaje se inspira mucho en la de Python, aunque también toma elementos de JavaScript como las llaves para delimitar bloques de código. Como no podría ser de otra forma, casi todas las palabras clave del lenguaje están en español, como sí, sino, imprimir o

[03:43] ingresar. [música] Los paréntesis alrededor de la condición son opcionales. Los condicionales pueden incluir más de dos opciones y ramificarse usando las palabras sino sí, [música] como en este ejemplo. Los bucles, de manera similar, se escriben en español, así que en lugar [música] de escribir for y while, escribimos para y mientras. Y como puedes ver, podemos incrustar variables dentro de textos, usando [música] llaves y una adelante. Hablando de variables, estas se declaran simplemente

[04:09] escribiendo [música] nombre es igual a valor. Algo que me llamó mucho la atención es que los nombres pueden tener tilde y eñe. Águila es de tipado dinámico, así que una variable puede cambiar de tipo [música] una vez ha sido declarada. En sus versiones anteriores, el lenguaje incluía tipado estático opcional, así que podíamos especificar el tipo de las variables como se muestra en pantalla, pero en la versión más reciente, a día que grabo este vídeo, no podemos hacer esto. Los tipos de datos primitivos son

[04:33] entero, decimal, texto y lógico. Este último sería equivalente a un booleano. [música] Si escribimos el nombre de una variable en mayúsculas, estaremos declarando una constante, o sea, que después no podremos modificar su valor.

[04:45] Águila, además, cuenta con dos tipos de datos compuestos, [música] lista y diccionario, que son similares a los de Python. Y el tipo de dato nulo, que representa la ausencia de valor. Para escribir un comentario utilizamos numeral, igual que lo haríamos en Python. Las funciones se declaran usando la palabra clave función, o [música] simplemente fn. Para devolver un valor, escribimos retornar. Además, al igual que en JavaScript, podemos pasar una función como argumento de otra, [música]

[05:08] como en este ejemplo. Y no sé cómo introducir esto, pero básicamente me puse a jugar con el lenguaje e hice una función que calcule el factorial de un número con recursividad. [música] Muy bonito, pero ¿cómo es que funciona Águila por dentro?

[05:22] Pues, según cuenta su creador, el lenguaje está escrito fundamentalmente en Rust, con un poco de C para la compilación just-in-time. Enseguida explicaré qué es esto exactamente. [música] Águila es un lenguaje híbrido que combina una etapa de compilación con una interpretación. Si quieres entender cuál es la diferencia entre un lenguaje compilado y un interpretado, puedes ver el vídeo que hice sobre Go.

[05:42] Te lo dejaré por aquí para que descubras otro lenguaje increíble. Okay, volvamos a Águila. Como estaba diciendo, el lenguaje latino tiene por dentro un compilador que traduce todo nuestro código a bytecode. ¿Y qué es eso? Un lenguaje de programación. Pues es un conjunto de instrucciones para la máquina virtual. [música] Al igual que Java, Python, C#, y otros lenguajes, águila cuenta con una máquina virtual interna [música] que ejecuta estas instrucciones y las traduce al lenguaje

[06:04] máquina, el único idioma que es capaz de entender el procesador de una computadora. ¿Y qué significa compilación just-in-time? Pues normalmente los lenguajes compilados como C, C++ y Rust suelen ser más rápidos y eficientes que los interpretados como Python, JavaScript y Ruby. Al compilar un archivo de código escrito en C, por ejemplo, el compilador lo recibe directamente traducido al lenguaje máquina y, por ende, le toma menos tiempo ejecutar cada instrucción. Un intérprete, por otra parte, no traduce

[06:31] todo el código de una vez, sino que va traduciendo y ejecutando línea por línea, lo cual suele ser mucho más lento. Como mencioné hace un rato, cuando ejecutamos un código escrito en águila se realizan los dos procesos.

[06:41] Luego de ser compilado, nuestro programa, o su traducción a bytecode, [música] es interpretada por la máquina virtual. ¿Pero esta última etapa se puede optimizar para hacerla más rápida? Pues claro que sí, y ahí es donde [música] entra la compilación just-in-time, o JIT. Mientras el programa se ejecuta, la máquina virtual detecta código caliente, [música] es decir, métodos, bucles y funciones que se utilizan mucho. Un compilador JIT dentro de ella compila esas partes del código a lenguaje máquina, [música]

[07:07] por lo que a partir de ese momento estas instrucciones son ejecutadas directamente por la CPU, [música] sin necesidad de pasar por el intérprete. Bueno, pero realmente ¿qué tan rápido es águila? Pues para comprobarlo usemos uno de los benchmark que aparecen en la página de GitHub.

[07:21] [música] Con este código calcularemos el número que se encuentra en la posición 40 de la sucesión de Fibonacci utilizando recursividad, que es cuando una función se invoca a sí misma, lo que hice recién con el ejemplo del factorial.

[07:31] Entonces, empecemos probando águila. Vamos a ejecutarlo varias veces. Y como ven, [música] se demora entre 0.7 y 0.9 segundos. Aquí se demoró 1 segundo. 0.9. 1.13. 0.9. Ahora veamos qué tal le va a Python. Como ven se demora mucho más.

[08:10] 28 segundos. Vamos a ejecutarlo de nuevo. 19 segundos mejoró. Realmente en unas pruebas que había hecho anteriormente demoraba entre 13 y 14 segundos y Águila se demoraba entre 0,5 y 0,7. Eso depende también de qué proceso esté corriendo la computadora y qué otras cosas. 17 segundos.

[08:48] 18, 17.9 segundos. Y como podemos ver Águila le rompe la madre a Python en rendimiento. Sin embargo, en mi opinión Python es un oponente demasiado fácil. Así que quise ponerlo a competir contra un lenguaje duro de verdad, un lenguaje que sea compilado. Así que [música] qué mejor oponente para Águila que su padre, Rust.

[09:12] Okay, aquí tenemos el código en Rust, vamos a compilarlo. [música] Y lo ejecutamos. Y como podemos ver se demora unos poderosos 0,4 segundos. 0,5. 0,3. 0,4. 0,4. 0,4. Se demora entre 0,3 y 0,5, mientras que Águila se demoraba entre 0,8 y 1 segundo. O sea, [música] como podemos ver, Ross, evidentemente, compilado es mucho más rápido que Águila, pero el rendimiento de Águila se acerca mucho más al de Ross que al de Python.

[09:50] [música] Así que, de verdad, es un lenguaje que promete muchísimo. Por lo menos en este ejemplo [música] me ha demostrado que es un duro. Entonces, en la vida real, ¿para qué se puede usar Águila? Pues, aunque es un lenguaje de propósito general, desde sus inicios Emerson lo enfocó en crear aplicaciones web rápidamente, a raíz de su propia experiencia programando en Ruby on Rails. En la biblioteca oficial del lenguaje, cuyo link dejaré en la descripción del vídeo, vienen varios

[10:13] ejemplos de cómo se podrían construir partes de una aplicación de este tipo. También se puede usar para desarrollar APIs, que son muy importantes en programación web, pues permiten una página solicitar, recibir o enviar datos a un servidor, entre otras [música] acciones. Además, posee módulos avanzados para analizar datos, convertir texto a voz y viceversa [música] e incluso crear videojuegos en 2D.

[10:35] Realmente son tantas las características interesantes que incorpora Águila de forma nativa que no nos da tiempo a hablar de todas en este vídeo. Y Emerson y su equipo trabajan arduamente para en cada versión hacer el lenguaje mucho más profesional y robusto. Yo lo estuve usando un poco para grabar este vídeo y [música] realmente es un lenguaje muy cómodo para nosotros los hispanohablantes. Poder programar en español [música] y, además, con una sintaxis casi nada complicada, es algo

[10:58] que no se puede hacer en casi ningún otro lenguaje. Pero, ¿existen otros lenguajes en español? ¿Y qué hay de otros idiomas? ¿Existen lenguajes en francés, en ruso o en chino mandarín? Pues, eso es un tema interesantísimo para otro [música] vídeo. Así que, dale un like a este y deja un comentario. Si llegamos a la cifra de 100 likes, subiré íntegramente las entrevistas que le hice a Emerson Espinosa al canal. 100 likes, recuerden.

[11:22] También dejaré en la descripción el LinkedIn del señor Espinosa y las páginas oficiales del lenguaje para que sigas a este asombroso programador y estés al tanto de las nuevas noticias de Águila. [música] Y esto fue todo por el vídeo de hoy. Suscríbete para que sigas viendo más contenido de calidad sobre programación y tecnología. [música] Que tengas una feliz y excelente semana.

[11:39] Chao.
