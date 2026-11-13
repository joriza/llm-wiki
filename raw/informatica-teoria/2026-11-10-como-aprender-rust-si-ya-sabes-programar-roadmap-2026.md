# Cómo aprender Rust si ya sabes programar (roadmap 2026)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UYvUvRntUNA)
- **Canal**: CD
- **Publicado**: 2026-11-10
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:55

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Cuatro líneas de Python. Coges el primer número de una lista, añades otro al final y lo imprimes. Funciona, sale un uno. Ahora, lo mismo en Rust [música] y el compilador se niega. Dice que no puedes modificar la lista mientras tienes prestado uno de sus elementos. Si vienes de Python o de JavaScript, este es tu primer muro y parece una manía del compilador porque el código es inofensivo, pero tienes razón. En C++, este mismo código compila e imprime un número que nadie ha escrito. Con

[00:31] [música] Rust todo depende del orden. Si te lanzas a async o a un framework web sin entender este error, te lo vas a encontrar una y otra vez sin saber de dónde sale. Así que vamos por fases. [música] En cada una, qué aprender, en qué error te vas a atascar y un proyecto para cerrarla. Y al final, el recurso gratis y en español para hacer todo esto. Fase uno. Instalas Rust con rustup [música] y te deja dos herramientas.

[00:58] Rustc, el compilador, y Cargo. Cargo es la que vas a usar todo el rato. Crea el proyecto, descarga las dependencias, compila y pasa los tests. Si vienes de JavaScript, piensa en npm. Si vienes de Python, en venv o en pip y venv juntos.

[01:14] Para escribir VS Code con la extensión Rust Analyzer va perfecto. Y si te apetece probar otra cosa, Zed es un editor escrito en Rust. [música] Lo primero que sorprende, las variables no cambian si no lo pides. Escribes let x = 5, luego x = 6 y el compilador te para.

[01:34] Y fíjate en lo que te dice. Añade mut, una palabra, y compila. Luego vienen las funciones, los bucles, los structs, los enums y match. Match es como un switch, con una diferencia, te obliga a cubrir todos los casos. [música] Si te dejas uno, no compila. Y aquí llega el primer tropiezo, con el texto. [música] Rust tiene dos tipos de texto, String, que es tuyo y puede crecer, y str, una vista prestada un texto que vive en otro sitio. Escribes una función que pide un string, le pasas unas comillas, error.

[02:07] Fíjate en la línea que empieza por help. El compilador te dice cómo arreglarlo. Los errores de Rust son largos porque te explican la solución. [música] Acostúmbrate a leer los enteros desde el primer día. Para cerrar la fase, un proyecto, [música] el juego de adivinar un número del capítulo 2 del libro oficial de Rust. Pides un número por teclado, lo comparas con uno aleatorio y repites hasta acertar. En una tarde lo tienes. [música] Y ya has usado cargo, una dependencia externa y match. Fase 2.

[02:37] Aquí vive el error del principio. Rust lo llama ownership, propiedad, y son tres reglas. Cada valor tiene un dueño. Solo puede haber un dueño a la vez. Y cuando el dueño sale de su bloque, el valor se libera. [música] Con esas tres reglas, Rust se ahorra el recolector de basura que llevan Python, Java o Go.

[02:56] Nadie limpia la memoria por detrás mientras tu programa corre. El compilador sabe, antes de ejecutar nada, dónde se libera cada cosa. Pero tiene consecuencias. Si escribes otro igual a nombre, el texto cambia de dueño y nombre deja de valer. Intenta usarlo después, valor movido. Y otra vez, el compilador te propone la salida.

[03:18] Clónalo. [música] Para no mover las cosas, se prestan. Con un ampersand das una referencia. El otro puede leer el dato, pero el dueño sigue siendo tuyo. Puedes tener todos los préstamos de lectura que quieras o uno solo de escritura. ¿Las dos cosas a la vez?

[03:34] Nunca. Y esto explica el error del principio. Guardaste una referencia al primer elemento y después intentaste añadir otro. Un vector guarda sus elementos seguidos en memoria. Si al añadir uno ya no le cabe, se muda a un hueco más grande y libera el antiguo. Tu referencia se quedaría apuntando a la casa vieja. Eso es justo lo que pasaba en C++. Leía la casa vieja y por eso salía un número distinto cada vez. Rust no deja que ese programa llegue a existir. ¿Y arreglo, en este caso, uno

[04:04] muy tonto, quitas el ampersand. [música] Así copias el número en vez de prestarlo y los números se copian solos. Compila y sale un uno igual que en Python. Con números tienes esa suerte, con un texto o con algo grande, no. Y para eso están los trucos que vienen ahora. Las lifetimes son la versión avanzada de lo mismo. Le dicen al compilador cuánto dura cada préstamo. Casi siempre las deduce él solo. Te las vas a encontrar en el proyecto de esta fase, una función que devuelve líneas prestadas de un

[04:34] texto y el compilador te pide que digas de dónde vienen. Este es el muro grande del camino. Tres trucos para pasarlo. Uno, lee el error entero. Te dice dónde se movió el valor, dónde se prestó y dónde chocan. Y mira la última línea. El propio compilador te dice qué escribir para que te lo explique. Rust explain y el número. Y tienes una explicación larga con ejemplos. Dos, al principio clona sin culpa. Clone copia el dato y te deja avanzar. [música] Ya optimizarás cuando entiendas por qué hacía falta.

[05:06] Tres, si usas una IA, pégale el error y pídele que te lo explique. El arreglo lo escribes tú. Si solo copias el suyo, en el siguiente proyecto te vuelve a pasar lo mismo. El proyecto de esta fase es minigrep del capítulo 12 del libro, un buscador de texto para la terminal. Le das una palabra y un archivo y te devuelve las líneas donde aparece. Ahí mueves y prestas datos de verdad, lees archivos, manejas errores y escribes tu primera lifetime. Cuando minigrep te salga sin pelearte con el compilador,

[05:38] habrás pasado el muro más alto del camino. Fase tres. Tu código ya compila, pero se nota de qué lenguaje vienes. Bucles a mano y unwraps por todas partes. Esta fase va de quitarte el acento. Lo primero, cómo falla una función. Rust no tiene excepciones. Una función que puede fallar devuelve un result. O trae el valor o trae el error.

[06:01] Y un dato que puede faltar es un option, algo o nada. El compilador te obliga a mirar los dos casos. El atajo se llama Saca el valor y si había un error, el programa se cae en el acto. Pide un archivo que no existe y mira lo que ve tu usuario. Para probar, está bien. El muro de esta fase es acabar con el código lleno de y que tu programa se caiga en cuanto algo sale mal. La salida es un signo de interrogación. [música] Lo pones detrás de la llamada y si falla, el error sube a quien te llamó, que decide qué hacer

[06:33] con él. Una línea en lugar de cinco. Después, que es la forma que tiene de decir, esto sabe hacer tal cosa. Y genéricos. Y los iteradores Lo que en Python haces con un bucle y una lista vacía, aquí es una sola línea encadenada y deja que las herramientas te enseñen.

[06:55] te formatea el código. lo revisa, te sugiere la forma idiomática de lo que has escrito y te enlaza la explicación. Es lo más parecido a tener un compañero leyendo tu código por encima del hombro. Las librerías las encuentras en y su documentación en Para practicar, del propio proyecto Ejercicios pequeños que no compilan y tu trabajo es arreglarlos. Y el proyecto para cerrar la fase. Un programa que lea un archivo de gastos y sume cuánto llevas en cada categoría. Con una condición, ni un solo

[07:30] Si el archivo no existe o una línea viene mal, tu programa lo dice y sigue. Fase cuatro. Hacer varias cosas a la vez. El libro oficial titula este capítulo, Concurrencia sin miedo. Y el mérito es de la fase dos. Las mismas reglas de préstamos impiden que dos hilos escriban el mismo dato a la vez.

[07:49] Ese fallo tiene nombre, carrera de datos, y en [música] seguro directamente no compila. Pruébalo. Lanza un hilo que suma uno a un contador y súmale otro desde fuera. El compilador te frena. Ese hilo podría seguir vivo cuando el contador ya no exista. Para compartir un dato entre hilos de verdad usas Arc, que permite varios dueños, y Mutex, que deja entrar de uno en uno. Luego llega a Sync. Sirve cuando tu programa se pasa la vida esperando, a la red, a una base de datos, a un archivo. Mientras espera una

[08:21] respuesta, atiende otra. Así un servidor mantiene miles de conexiones abiertas a la vez. Rust no trae de serie el motor que hace funcionar a Sync, lo eliges tú. El que vas a ver en casi todas partes es Tokio. Último muro, este. [música] Tokio puede mover tu tarea de un hilo a otro mientras espera. Si dentro guardas algo que no puede viajar entre hilos, como este RC, el compilador te para. La solución suele ser cambiar RC por Arc o soltar ese dato antes de la weight. Para leer este mensaje necesitas tres cosas a

[08:53] la vez, qué es un dueño, qué es un trade como Send y por qué un RC no puede viajar entre hilos. Las fases dos, tres y cuatro juntas. Por eso a Sync va al final. Si empiezas por aquí, este error no hay quien lo descifre. El proyecto, el tutorial oficial de Tokio. Construyes mini Redis, una versión pequeña de Redis con su servidor y su cliente. Llegas al cruce. Rust [música] se usa en muchísimos sitios y no hace falta aprenderlo todo. Elige un camino y aprende solo lo que ese camino te pide.

[09:25] Backend, Axum encima de Tokio, Serde para el JSON y SQLX para la base de datos. Herramientas de terminal, Clap para leer los argumentos y Ratatouille si quieres interfaces dentro de la consola. La web en el navegador, WebAssembly con Wasm Bindgen para hablar con JavaScript. Si te tira el hardware, sistemas embebidos con Embassy para microcontroladores. En cada camino un primer proyecto que se pueda enseñar.

[09:54] Una API de tareas con Axum. [música] Tu propia versión de una herramienta de terminal que ya uses. Un juego pequeño que corra en el navegador o hacer parpadear un LED desde Rust. Cada camino usa una parte distinta del lenguaje.

[10:06] Quien hace backend vive en Async. Quien hace embebido trabaja sin la librería estándar y a veces con unsafe. Aprender por camino te ahorra estudiar cosas que nunca vas a tocar. ¿Por dónde empiezas hoy? Por el libro oficial. Es gratis y la comunidad hispana de Rust lo ha traducido al español, el lenguaje de programación Rust. Lee hasta el capítulo dos y haz el juego de adivinar esta semana. Si prefieres aprender con ejemplos en vez de leer, tienes Rust by Example y para practicar con alguien que

[10:36] te corrija, Exercism. Los dos son gratis. Cuando te atasques, que te vas a atascar, no lo dejes para volver dentro de tres meses desde cero. Vuelve al error, léelo entero y sigue desde ahí. Y si quieres saber por qué Rust se está metiendo en la inteligencia artificial, lo tienes en el video anterior.
