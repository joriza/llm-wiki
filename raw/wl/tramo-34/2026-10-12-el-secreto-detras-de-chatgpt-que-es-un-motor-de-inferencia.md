# El secreto detrás de ChatGPT: ¿qué es un motor de inferencia?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=HwNaAPvs31I)
- **Canal**: CodeSimple
- **Publicado**: 2026-10-12
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:08

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Cuando le escribes a chat GPT y te contesta, das por hecho que quien responde es el modelo, la inteligencia artificial. Pero el modelo, por sí solo, no hace absolutamente nada. Es un archivo, un archivo gigantesco lleno de números quieto en un disco, igual que una partitura no suena sola. Alguien tiene que cogerlo, ponerlo en marcha y sacarle las palabras una a una. Esa pieza existe, tiene nombre y casi nadie habla de ella. Se llama motor de inferencia y es mucho más importante de

[00:30] lo que parece. De ese motor depende que una IA quepa en tu portátil o necesite un edificio lleno de máquinas, que conteste en un segundo o en 20, que atender a un millón de personas cueste una fortuna o la mitad. Mucha gente intenta entender este tema y lo deja porque parece que hay que saber de chips, de programas y de modelos todo a la vez. Hoy lo vamos a hacer fácil. Te voy a contar la historia de cuatro motores y vas a ver que cada uno nació para resolver un problema distinto.

[00:58] Cuando acabe el vídeo, entenderás algo que la mayoría que usa IA todos los días no sabe. Empecemos por la palabra rara. Inferencia es, sencillamente, el momento en que la IA se usa. Una inteligencia artificial tiene dos vidas. La primera es el entrenamiento, meses leyendo cantidades enormes de texto para aprender. Eso ocurre una vez, en instalaciones gigantescas y cuesta muchísimo dinero. La segunda es la inferencia, cada vez que tú le preguntas algo y ella contesta. Eso ocurre

[01:31] millones de veces al día. El resultado del entrenamiento es el modelo, la partitura. El motor de inferencia es el músico que la toca y, como pasa con la música, la misma partitura puede sonar muy distinta según quién la toque y con qué. La puede tocar un aficionado en el salón de su casa con un teclado pequeño o una orquesta en un auditorio para 10.000 personas. Las notas son las mismas, el reto es completamente diferente. Para situarnos, imagina la inteligencia artificial como un edificio

[02:02] de tres plantas. Abajo del todo, los chips, las máquinas, el hierro. Arriba del todo, el modelo, lo que la IA sabe. Y en la planta de en medio, el motor de inferencia. Es el que conecta las otras dos. Coge lo que sabe el modelo y lo hace funcionar sobre unas máquinas concretas. Por eso es un tema que cuesta, toca las tres plantas a la vez.

[02:23] Pero quédate con la imagen del músico demás encaja. Los motores de inferencia no son nuevos. Existían mucho antes de que se hablara de chat GPT. Pero antes de 2023 había mucha variedad de inteligencias artificiales. Unas reconocían imágenes, otras detectaban fraudes, otras traducían. Cada tipo trabajaba a su manera y las herramientas estaban hechas para servir un poco a todas. Entonces pasaron dos cosas casi seguidas. A finales de 2022 salió chat GPT.

[02:54] Y pocos meses después se filtró en internet llama, un modelo de meta. De repente, cualquiera con conocimientos podía tener en su casa un modelo de lenguaje de los grandes. Y estos modelos trabajan de una forma muy particular, escriben palabra a palabra. Cada palabra nueva depende de todas las anteriores.

[03:13] Eso obliga a llevar la cuenta de la conversación entera, a atender a muchas personas a la vez y a manejar archivos descomunales. La herramienta que usaba casi todo el mundo, PyTorch, podía hacerlo. Pero PyTorch es una navaja suiza, sirve para construir modelos, para entrenarlos, para probarlos.

[03:32] Y una navaja suiza abre una lata, pero nadie monta un restaurante con ella. Para colmo, los modelos no paraban de crecer. Cada generación más grande que la anterior. Hacían falta herramientas pensadas para una sola cosa, hacer funcionar estos modelos lo mejor posible.

[03:50] Y en cuestión de meses aparecieron varias. Lo interesante es que cada una atacó un problema diferente. El primero nació en marzo de 2023 y no salió de una gran empresa. Lo empezó un programador búlgaro, Georgi Gerganov, prácticamente por su cuenta. Se llama llama.cpp.

[04:09] Su pregunta era muy simple, ¿y si no tienes una máquina de miles de euros, puede funcionar esto en un ordenador normal? La mayoría de las herramientas daban por hecho que el modelo cabría entero en la tarjeta gráfica, que es la pieza rápida y cara. Llama.cpp no da nada por hecho. Su filosofía es aprovechar lo que haya, la tarjeta gráfica si la tienes, el procesador, la memoria normal, incluso el disco. Para conseguirlo usó dos trucos. El primero, la compresión, guardar los números del

[04:40] modelo con menos precisión para que ocupe mucho menos. Es como pasar una enciclopedia de lujo a edición de bolsillo. La letra es más pequeña y el papel más fino, pero dice prácticamente lo mismo. El segundo es más ingenioso y llegó apenas unos días después del lanzamiento. Lo normal al arrancar un modelo es copiarlo entero del disco a la memoria. Es como sacar los 30 tomos de la enciclopedia de la estantería y apilarlos todos en la mesa antes de empezar a trabajar. Si la mesa es

[05:08] pequeña, no caben. Llama.cpp hace otra cosa. Deja la enciclopedia en la estantería y le dice al ordenador, tráeme solo la página que necesite cuando la necesite. Sin copias de sobra. Sin llenar la mesa. El resultado sorprendió a todo el mundo. En cuestión de semanas, había gente ejecutando un modelo de lenguaje en un teléfono móvil.

[05:29] Y por eso, más de 3 años después, sigue siendo el favorito de quien quiere una IA en su propio ordenador. Muchas de las aplicaciones sencillas para usar IA en casa lo llevan dentro, aunque no lo veas. Solo 3 meses después, en junio de 2023, un grupo de investigadores de la Universidad de Berkeley presentó otro motor, VLLM, y miraba el problema desde el lado contrario. llama.cpp piensa en una persona con un ordenador modesto, VLLM piensa en una empresa con máquinas potentísimas que tiene que

[06:04] atender a miles de personas a la vez. Su obsesión no es que quepa, es exprimir cada máquina al máximo. Y ahí descubrieron que el gran problema no era el modelo, eran los apuntes. Te explico, mientras conversas con una IA, el motor va tomando notas de todo lo que se ha dicho para no tener que releer la conversación entera con cada palabra nueva. Esos apuntes ocupan memoria y pueden llegar a ocupar tanto como el propio modelo. Ahora multiplica eso por cientos de personas conectadas a la vez,

[06:34] cada una con una conversación distinta y sin que nadie sepa de antemano cuál será corta y cuál larguísima. ¿Qué se hacía hasta entonces? Lo mismo que un hotel que reserva una planta entera para cada huésped, por si acaso trae a toda la familia. Se apartaba un bloque enorme de memoria para cada conversación. Según el estudio de los propios creadores de VLLM, así se desperdiciaba entre el 60 y el 80% de la memoria. Su solución fue copiar una idea que los ordenadores usan desde hace décadas. En vez de reservar

[07:04] un bloque gigante, se reparte la memoria en hojas pequeñas, todas del mismo tamaño. Cada conversación va cogiendo hojas según las necesita, como un archivador de anillas en lugar de un cuaderno cosido. Nada reservado de más, nada vacío. Y añadieron una segunda mejora. Antes las peticiones se atendían por tandas, como un autobús que no sale hasta que se llena y no deja subir a nadie hasta el final del trayecto. VLLM funciona como un telesilla, no se para nunca. En cuanto alguien se baja, el

[07:35] siguiente se sube. Mismas máquinas, muchísima más gente atendida. El tercer motor llegó poco después y se fijó en un detalle que solo se ve cuando atiendes a muchísima gente. Las peticiones se parecen. Piénsalo, miles de personas usan la misma aplicación y esa aplicación empieza siempre con las mismas instrucciones para la IA. Algo como, eres un asistente amable y servicial y a continuación lo que cada uno pregunta. Si el principio es idéntico para todos, para qué procesarlo

[08:06] miles de veces, es como un formulario. Nadie escribe a mano el encabezado en cada copia, viene ya impreso y tú solo rellenas tu parte. Soace SGI Lang, guarda los apuntes de los comienzos que más se repiten y los reutiliza. Y va más allá, lo organiza todo en forma de árbol. El tronco es lo que comparten todos, las ramas lo que comparten algunos y las hojas que casi nadie usa se van podando para dejar sitio. Sus creadores midieron que, en algunos casos, el motor podía ir hasta 6,4 veces

[08:38] más rápido. Con un asterisco bien grande, depende por completo del tipo de trabajo. Si las peticiones no se parecen entre sí, no hay nada que reaprovechar. Y queda un cuarto jugador que no es ningún recién llegado. Nvidia fabrica los chips sobre los que funciona casi toda la inteligencia artificial del mundo y lleva haciendo motores de inferencia desde mucho antes de esta fiebre. Lanzó el primero, Tensor RT, allá por 2017.

[09:06] Años después sacó otro, adaptado a los modelos que se llevaban entonces. Y en 2023, cuando todo giró hacia los modelos de lenguaje, presentó Tensor RT LLM. Fíjate en el patrón. Cada vez que cambia la moda en inteligencia artificial, Nvidia saca el motor que toca. Su ventaja es evidente. Los demás tienen que adaptarse a unos chips que no han diseñado. Nvidia conoce los suyos por dentro. Es como si el fabricante del coche fuera también el dueño del circuito. Sabe exactamente dónde está

[09:37] cada curva. Sus resultados en velocidad y en ahorro de costes fueron buenos desde el principio. Y con eso consiguió algo más valioso que un récord, dejar de ser solo la empresa que vende las máquinas, para ser también la que pone el programa que las hace rendir. La contrapartida es fácil de imaginar. Está hecho para sus chips y solo para sus chips. Recapitulémos. Cuatro motores, cuatro preguntas distintas. llama.cpp ¿Cómo lo hago funcionar con lo que ya tengo? vllm ¿Cómo atiendo a más gente

[10:09] con las mismas máquinas? sglang ¿Cómo evito repetir trabajo? nvidia ¿Cómo saco el máximo de mis propios chips? Ahora, un aviso para que no te líes si un día los comparas. Con los años, todos se han ido copiando las buenas ideas. Hoy casi todos comprimen, casi todos reparten la memoria en hojas, casi todos reutilizan los comienzos repetidos. Si miras sus listas de funciones, parecen el mismo producto. No lo son. Cada uno sigue siendo mejor en aquello para lo que nació. Y eso solo se entiende si conoces

[10:41] la historia que acabas de escuchar. Y la historia no ha terminado, porque las exigencias han vuelto a cambiar. Por un lado están los agentes, inteligencias artificiales que ya no contestan una pregunta y se despiden, sino que trabajan solas durante horas en una tarea. Esos son conversaciones larguísimas y apuntes que crecen y crecen. Por otro, los modelos nuevos, los de DeepSeek, Kimy, Meta o Minimax ya no se parecen tanto entre sí. Cada uno trae su propio diseño interno y sus

[11:11] propios trucos. Y cada diseño nuevo obliga a los motores a adaptarse otra vez. La partitura cambia y los músicos tienen que volver a ensayar. Así que la próxima vez que una IA te conteste, acuérdate de que hay dos piezas trabajando. El modelo, que es lo que sabe, y el motor de inferencia, que es quien lo pone en marcha. Y cuando oigas que una IA es lenta o cara o que no cabe en un ordenador normal, ya sabes que muchas veces el problema no está en el modelo, está en quien lo toca y con

[11:42] qué instrumento. Entender dónde está el atasco y cómo se está resolviendo es la mejor forma de entender hacia dónde va todo esto. Si este vídeo te ha aclarado algo que parecía reservado a ingenieros, suscríbete a Code Simple. Aquí explicamos la inteligencia artificial y la programación así, sin prisa y sin palabras raras. Y cuéntame en los comentarios, ¿sabías que existía esta pieza? Te leo. Nos vemos en el próximo.
