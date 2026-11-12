# La IA Local Ahora Corre 6 Veces Más Rápido en Tu PC

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IsK_O98_rp4)
- **Canal**: CodeSimple
- **Publicado**: 2026-10-18
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 26:31

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El 24 de septiembre, a las 17:30 UTC, un desarrollador publica en RV local LEMA, el foro de Reddit para quienes ejecutan IA en casa, su PC es normal, un Ryzen 5 7600, 64 GB de DDR5, Windows y una de esas RTX 5070 pequeñas con 12 GB de memoria. Tiempo antes había contado que con llama.cpp el programa que casi todo el mundo usa para correr modelos en casa, un modelo enorme le escribía a 15 tokens por segundo. Y un token es más o menos un trozo de palabra. Esa tarde dice que el

[00:42] mismo modelo, en la misma versión comprimida, escribe a unos 65 con Estrata, su propio motor, un programa que ejecuta el modelo hecho a medida solo para ese modelo y para un PC como el suyo, alojado en un repositorio de GitHub creado 50 minutos antes. 6 días después, otro usuario con un portátil, una RTX 5070 Ti de 12 GB y 64 GB de RAM, obtiene 51 tokens por segundo con 43000 tokens de conversación ya cargados. Eso que la gente llama contexto, donde llama cpp, con la misma versión, se quedaba en

[01:20] 23. Pero lo que me llamó la atención fue la lectura, porque con llama.cpp, su portátil leía a 100 tokens por segundo y con Estrata, 32000 tokens a 1500 por segundo. Hice la cuenta, porque se hace sola. Un primer mensaje de 32000 tokens que un agente de programación envía sin despeinarse con sus instrucciones y tu código, a 100 tokens por segundo son 320 segundos, más de 5 minutos mirando la pantalla antes de la primera palabra. Y a los 1500 por segundo que consiguió ese mismo portátil

[01:56] con Estrata, son unos 21 segundos o unos 12 a los 2650 que da hoy la tabla del proyecto para su versión más pequeña en el PC del desarrollador. Y ningún titular que vi decía que el mayor salto de Estrata está en la lectura mucho más que en la escritura. El modelo es Qwen 3,8 Flash Next, que Qwen presenta como un adelanto de la arquitectura de Qwen 4 con 125.000 millones de parámetros, los números que el modelo aprende durante el entrenamiento.

[02:26] Los archivos a precisión completa pesan 354 GB y como una RTX 5090 tiene 32, harían falta 12 para contenerlo entero, lo cual ya es territorio de servidor. Estrata es gratis, su repositorio de GitHub es de ese mismo 24 de septiembre.

[02:46] Entre ese día y el 27 salieron 13 versiones y el 3 de octubre iba por la 39 con 8163 estrellas. Este vídeo trata de cómo ese modelo corre seis veces más rápido que con llama. CPP en un PC con una tarjeta de 12 GB. ¿Qué hay realmente detrás de ese seis? Y si tu ordenador puede con ello, ¿con qué versión y a qué precio? Cuando vi el titular pensé lo mismo que varias personas en los hilos, el truco de siempre, comprimir el modelo hasta dejarlo medio tonto para sacar una cifra bonita.

[03:21] Así que fui a las fuentes, el readme, el artículo que acompaña al motor, las notas de versión y los hilos de Reddit y me llevó más tiempo del que me gustaría admitir porque algunas tablas tuve que leerlas varias veces. Lo voy a contar desde cero para que lo siga cualquiera, sepas o no qué es la VRAM.

[03:39] En el hilo de lanzamiento, alguien escribió en Reddit que los que no tenemos GPU de gama alta por fin podríamos ejecutar modelos decentes a una velocidad decente y le respondieron que parecía demasiado bueno para ser verdad. Cuando otro usuario preguntó cómo rinde con trabajo real, el desarrollador contestó que depende del trabajo, porque consigue una respuesta perfecta a 1000 tokens por segundo si le pide al modelo que escriba el número uno una y otra vez.

[04:07] El elogio más votado en otro hilo decía que se sentía casi mágico, algo así como el triple de rápido que llama. CPP y el comentario más votado del lanzamiento, con 85 puntos, preguntaba si alguien había comprobado que el motor da exactamente la misma salida que uno normal, porque algunos atajos ganan velocidad dejando que el modelo se aleje bastante del original.

[04:31] El artículo del proyecto empieza diciendo que el enfoque habitual, ejecutar desde la RAM con la CPU, lo que no cabe en la tarjeta gráfica con un motor generalista como llama. CPP funciona, pero deja la mayor parte de la máquina inactiva casi todo el tiempo y que Estrata está escrito en torno a la forma exacta de este modelo y de este tipo de PC. Le preguntaron qué hace de otra manera. El desarrollador respondió con dos palabras, caché de expertos, y para entenderlas hay que mirar dentro

[05:01] del modelo. De esos 125.000 millones de parámetros, cada token solo despierta unos 6000 millones. El modelo tiene 48 capas, las etapas por las que pasa cada token en orden, y cada capa tiene 512 expertos, de los cuales cada token usa 10 más uno compartido.

[05:21] Además de los expertos, el modelo lleva una tabla extra de 51.000 millones de parámetros, la de n-gramas, que es básicamente un diccionario que se consulta con tandas cortas de dos o tres tokens. El archivo que ejecuta Estrata lo comprimió un laboratorio de investigación de Austria.

[05:39] Y comprimir aquí significa cuantizar, que es guardar cada número con menos bits, como redondear decimales. La versión más pequeña, Q20, ocupa 66,4 GB, 5,3 veces menos que el original y aún así más de 5 veces lo que cabe en una tarjeta de 12 GB. Detengámonos un momento, porque sin esto el resto no tiene sentido. Un modelo de mezcla de expertos está hecho de muchos pequeños especialistas, los expertos, y para cada palabra solo llama a unos pocos.

[06:11] Piensa en la cocina de un restaurante. La encimera, pequeña pero rapidísima, es la memoria de la tarjeta gráfica, la VRAM. La despensa, a unos pasos, guarda mucho más, pero cada viaje cuesta tiempo. Esa es la RAM. Y abajo está el almacén, enorme y lento, el SSD. Los expertos son los botes de la despensa. Y este modelo tiene 24.576.

[06:39] Para cada plato que sale de esa cocina, para cada token, solo hacen falta 10 de los 512 botes de cada capa. Y el artículo dice que un token toca solo el 2% de los pesos de los expertos. Así que, con 66 GB y una tarjeta de 12, lo que decide Estrata es qué bote va a la encimera, cuál se queda en la despensa y qué baja al almacén.

[07:02] En la encimera Estrata pone lo que se usa con cada token, la atención, la parte que mira el resto de la conversación para decidir qué importa, los enrutadores, que eligen los 10 expertos de cada token, y los expertos compartidos.

[07:17] Todo eso fijo ocupa unos 3,5 GB y a su lado va la caché KB, la memoria de la conversación ya leída, que crece a medida que el chat se alarga. En la despensa van los 24.576 expertos, entre 35 y 55 GB según la versión. Y en el almacén va la tabla de N-gramas, 28,8 GB, que se consulta con los tres últimos tokens, de modo que el motor sabe de antemano qué filas va a necesitar. Es como bajar al sótano sabiendo ya qué caja buscas. El problema es la despensa, porque la RAM es mucho

[07:53] más lenta que la BRAM y cada experto que no está en la encimera hay que traerlo por el pasillo. Esta parte se pone algo densa, pero quédate conmigo. Y aquí hice otra cuenta. Quita los 3,5 GB fijos de los 12 de la tarjeta y te quedan unos 8,5. Con los 1.700 expertos por GB que da el proyecto, a la encimera le caben como mucho unos 6.000 de los 24.576 botes. Uno de cada cuatro y menos en la práctica, porque la memoria de la conversación también va ahí. Ese es el muro con el que chocaba la gente en

[08:29] llama, CPP. Y un hilo del 23 de septiembre, el día antes de Estrata, reportaba entre 15 y 20 tokens por segundo en una 4080 con 64 GB de RAM. Hagamos un repaso rápido. El modelo ocupa 354 GB a precisión completa y 66 comprimido.

[08:49] Cada token usa el 2% de los expertos, así que no hace falta tenerlo todo en la tarjeta gráfica. La encimera guarda lo que se usa siempre. La despensa guarda los expertos y el almacén, la tabla de engramas. Y el cuello de botella es el pasillo, que mantenía a llama. CPP entre 15 y 23 tokens por segundo en PCs como estos. El primer truco son esas dos palabras del desarrollador. Una vez colocado lo fijo, Estrata llena el espacio libre de la tarjeta gráfica con los expertos más solicitados y va

[09:22] ajustando esa selección mientras chateas. Y si a mitad del servicio un bote empieza a salir mucho, sube a la encimera. Veámoslo paso a paso con un ejemplo inventado. Imagina un modelo de juguete con una capa y y expertos, de la A a la H, donde cada token usa dos y en la encimera caben tres. Empezamos con A, C y E arriba, los más usados. El primer token pide A y B, así que la tarjeta gráfica gestiona A y B, está en la despensa. El segundo pide A y C, dos aciertos. El tercero pide B y D, ninguno

[09:57] está arriba. Hasta ahora son seis solicitados y tres aciertos, un 50%, pero el motor nota que B ha salido dos veces y E ninguna. Así que cambia E por B. El cuarto pide A y B, dos aciertos, de modo que vamos cinco de ocho, más del 60%. Es un ejemplo tonto con ocho botes en vez de 24.576, pero lo real funciona así. Y me sorprendió, porque en la tarjeta de 12 gibibytes, donde como mucho cabe un experto de cada cuatro, el artículo mide un 72% de aciertos con 4.000 tokens de contexto, cuando la curva de uso por sí

[10:36] sola predecía un 50%. El modelo vuelve a los mismos botes y esos acaban en la encimera. El segundo truco es que los expertos que no están en la encimera los calcula la CPU en la despensa, mientras la tarjeta gráfica calcula los suyos, como un segundo cocinero dentro de la despensa para que nadie recorra el pasillo. Con la versión de 2 bits y 4.000 tokens de contexto, una ronda tarda unos 33 milisegundos y en ella la CPU pesa unos 14 sobre la tarjeta gráfica y la tarjeta gráfica unos 13 sobre la CPU. Es decir,

[11:11] están bastante igualadas. El tercero viene integrado en el modelo, una capa de predicción multitoken llamada MTP, que redacta hasta tres tokens antes de que el modelo grande llegue a ellos y Estrata toma ese borrador y lo verifica con una sola pasada por las 48 capas. Si el texto es "el gato se subió al" y el ayudante sugiere tejado de la el modelo grande comprueba los tres en una pasada y conserva los que encajan. El Ritmi dice que la respuesta es la misma y llega entre 1,6 y 1,8 veces antes.

[11:45] Y en el artículo se pasó de 47 57 tokens por segundo a 82 92. Leer un prompt largo, que es lo que ocurre antes de que salga la primera palabra, funciona de otra manera. Estratale el prompt en bloques de hasta 8192 tokens. Y mientras la tarjeta gráfica trabaja una capa, los expertos de la siguiente suben por PCI, el enlace entre la placa base y la tarjeta, como alguien que baja por el pasillo los botes de la siguiente receta mientras tú sigues con esta. El tiempo hasta la primera palabra

[12:19] es la longitud del prompt dividida por esa velocidad y la versión 0,1. 36 llevó la 5070 de 2170 a 2653 tokens por segundo con 32000 tokens, o sea, de unos 15 segundos a unos 12, aunque el Ritmi actual habla de un minuto por cada 30000 tokens y mi sospecha es que va sobre seguro.

[12:43] No sé cuál se parecerá más a tu PC, pero todos quedan lejos de los más de 5 minutos de llama.cpp. Además, Estrata conserva la conversación que ya ha leído. Así, a partir del segundo mensaje solo lee lo que acabas de añadir. La versión 0,1. Tres lo midió con un chat de 7700 tokens en el que la siguiente respuesta empezó en 0,3 segundos en lugar de 12,9. Es decir, pagas el primer mensaje una vez y el resto llega casi al instante. Y antes de seguir con las cifras, déjame pedirte un

[13:17] favor. Si este vídeo te está ayudando a entender cómo se ejecuta la IA en casa, dale a me gusta y suscríbete a Code Simplo. Somos un canal que está empezando y cada suscripción nos ayuda a seguir explicando tecnología e inteligencia artificial de forma clara.

[13:34] Y cuéntame en los comentarios, ¿cuánta RAM tiene tu PC? Te leo. En el PC del desarrollador, la tabla actual del Redmi da primero la velocidad de escritura y luego la de lectura. Q2 Q2 0 a 94 y 2650 tokens por segundo. IQ3 XXS a 62 y 1750 e IQ3 S a 53 y 1620.

[14:02] De ahí sale el 6 del título, 94 entre 15 es 6,3. Pero al cruzar las tablas noté algo que no he leído en ningún sitio. Esos 15 tokens por segundo de llama.cpp eran con IQ3 XXS, una versión más grande y lenta, mientras que los 94 son con Q2 que 0. Comparando versiones iguales, IQ3 XS pasa de 15 a 62, unas cuatro veces.

[14:29] El portátil con 5070 TI de 23 a 51 y una 7900 XTX de 22,5 a entre 45 y 50, aproximadamente el doble. Así que para escribir la cifra honesta es de entre dos y cuatro veces según la máquina, que ya es mucho. La lectura es otra escala, de 100 a 1500 en el portátil, 15 veces, y en el PC del propio desarrollador con la misma IQ3 XXS de 100 o 120 a 1750, entre 14 veces y media y 17 y media.

[15:06] Y creo que esa es la cifra que te cambia el día si programas con agentes. Si has medido la misma versión en ambos motores, cuéntame qué te salió en los comentarios. Detrás de esto hay una sola persona con un PC pequeño con Windows que quería este modelo en casa. Le preguntaron cómo lo construyó. Dijo que con Claude y Codex a lo largo de 7 a 10 días, probando mucho por su cuenta y que lo hizo para uso propio y lo compartió porque sí. Me hace gracia que el motor que pone un modelo de IA en tu PC lo

[15:35] hayan escrito en buena parte otros modelos de IA. Y pudo hacer lo que llama.cpp no hacía porque un motor generalista tiene que funcionar para montones de modelos y máquinas y Estrata solo para uno. El 3 de octubre, un usuario escribió en Reddit que llevaba cerca de un año suplicando a llama. cpp la caché de expertos y que Estrata se les había adelantado en unas dos semanas.

[15:59] Ese mismo día alguien abrió la pull request número 29887 en llama.cpp, un cambio propuesto para su código que sigue esperando aceptación, añadiendo justo eso. Y en una RTX 4090 pasa de 25 a 39,4 tokens por segundo, 1,57 veces. Y en una 5090 llega a 2,2 veces. Así que la idea salta de un proyecto a otro en cuestión de días. Vamos ahora a tu equipo y aquí lo que manda es la RAM.

[16:32] Según el readme, con 64 GB funcionan todas las versiones y la recomendada es IQ2XS. Con 48 solo caben Q20 o IQ2XS y con 32, que no bastaba hasta el 27 de septiembre, desde el 28 cabe la versión coder, una variante de programación que conserva la mitad de los expertos.

[16:55] En cuanto a la tarjeta gráfica, pide una Nvidia RTX de las series 20 a 50 con 12 GB o más o una AMD Radeon de su lista, con AMD funcionando en Linux desde el 29 de septiembre, aún experimental, y en Windows desde el 2 de octubre.

[17:12] La versión 0,1.38 dice que incluso arranca con 6 GBs y en Reddit alguien con una RTX 2060 de 6 GBs que esperaba como mucho 3 tokens por segundo midió 10. El sistema tiene que ser Windows o Linux y Mac OS no figura. Así que si usas Mac de momento no.

[17:33] Aunque en Reddit alguien comentó que otro motor pensado para Apple Silicon rendía entre 41 y 52 tokens por segundo en un Mac de 64 GBs donde llama.cpp hacía 23,1. Necesitas unos 80 GBs libres en disco y ten paciencia la primera vez porque el readme avisa de que el PC puede quedarse colgado de 1 a 3 minutos al arrancar como abastecer toda la despensa de golpe. Y si estás pensando en ampliar cada GB extra de VRAM son unos 700 expertos más en la encimera. Pero una 5090 con precio de lista de 1999

[18:11] dólares se vendía en septiembre por unos 4999. Y sin suficiente RAM el modelo no arranca. Mientras que más tarjeta gráfica solo lo hace más rápido. Así que yo gastaría en la despensa antes que en la encimera. El laboratorio austriaco comparó cada versión con el modelo completo en tres pruebas difíciles: matemáticas, ciencia y programación competitiva. IQ3 XXS con 3 bits por peso conserva el 99,4% de la media, 92,6 frente a 93,1.

[18:46] E IQ2 XS conserva el 95,7%. Pero la pérdida no se reparte por igual porque en LiveCodeBench, la prueba de programación competitiva, Q20 saca del modelo completo, unos 6 puntos menos. El laboratorio recomienda IQ3S que iguala o supera al original en todas las pruebas. Y el readme la llama la mejor y la más lenta. Ten en cuenta que son resultados del propio laboratorio, en tres pruebas y sin sesiones largas de agente.

[19:21] El instalador ofrece también Swift 1,5, un ajuste fino del mismo modelo que, según sus creadores, usa un 63% menos de tokens de razonamiento. Y en la comprobación de ocho preguntas del desarrollador, ambos acertaron las ocho, pero Swift tardó 28 segundos y el original 46, aunque tiene su propia licencia. Y hay una opción llamada proyección de velocidad experimental, que suena a que acelera algo y no es así, porque su propio paquete la describe como un vector que hace que el modelo rechace menos peticiones.

[19:55] Y en código, aumenta la perplejidad, una medida de lo sorprendido que está el modelo por el texto, en un 15%. Viene desactivada por defecto y yo la dejaría así. Para chatear con mensajes cortos es donde ves esos 90 y pico tokens por segundo. Y a medida que la conversación crece, baja a 1,76 con 128.000 tokens desde la versión 0.1.36.

[20:19] Para programar con un agente, lo que pesa es el primer mensaje, que aguantas una vez y luego cada respuesta empieza en segundos. Lo que no puedes hacer es usarlo como servidor para tu equipo, porque responde a una petición cada vez y por defecto mantiene una sola conversación a la vez. Así que, si saltas a otro chat, lo vuelve a leer desde el principio, a menos que actives una caché opcional.

[20:43] Si ya tienes 64 GB, el coste es una descarga de 66 a 84 GB en una tarde. Si no, un rastreador de precios de EE.UU. lista un kit de 64 GB de DDR5 en unos 1.100 dólares, entre cuatro y cinco veces lo que costaba a mediados de 2025, sobre todo porque los centros de datos de IA se están llevando todo. Y en el hilo de lanzamiento, alguien lamentaba no haber ampliado a 64 cuando no costaba un riñón. Así que hice números frente a la alternativa. Quen vende la versión de producción de este modelo en su nube a

[21:19] 15 céntimos por millón de tokens de entrada y 47 céntimos por millón de salida. Una petición de agente con 32,000 tokens de entrada y 1,000 de salida cuesta, por tanto, algo más de medio céntimo. Los 1,100 dólares del kit pagan unas 220,000 de esas peticiones, casi 6 años a 100 al día o unos 55 meses de una suscripción de 20 dólares al mes.

[21:44] Por eso la conclusión depende de quién seas. Si ya tienes la RAM, Strata es gratis y desde el 28 de septiembre su licencia es MIT, así que yo lo probaría ahora mismo. Si tuvieras que comprarla solo para esto, la API, pagando a Quen por token para usar el modelo en su nube, es mucho más barata durante años.

[22:04] Y Quen 3,827B, un modelo más pequeño, saca 61,7 en la tabla de Quen en SWE-Bench Pro, una prueba de programación del mundo real, frente a 62,5 de Flash Next. Aunque en Reddit, quienes han usado los dos dicen que Flash Next a 3 bits es bastante mejor que el 27B a 5. Y si trabajas en Mac o necesitas que la máquina atienda a varias personas a la vez, esperaría, porque hoy ninguno de los dos casos está cubierto.

[22:36] Queda la pregunta del comentario más votado, si Strata da los mismos tokens que un motor normal. El desarrollador respondió que había comparado dos pruebas de Blender y una de programación en JavaScript con resultados idénticos y que no había probado nada más. Y esa respuesta acabó con menos seis puntos. Un usuario montó una comparación contra llama. CPP con ayuda de Claude, idéntico en una frase corta y distinto a partir del carácter 219 en una función de Python, 99,4% de similitud. Parecido, pero no el mismo

[23:10] texto. Y no sé si eso importa en una sesión larga. Además, hay avisos sobre lo joven que es todo esto. El 27 de septiembre, un usuario citó un mensaje del propio Strata que decía que, con la caché de expertos activada, la salida se desviaba respecto a una ejecución sin ella, de modo que los tiempos eran reales y el texto no tanto.

[23:32] Y ese era justo el primer truco. Hasta la versión 0,1.7, Strata ignoraba el ajuste de temperatura y hoy hay 179 incidencias abiertas. No sé si todo eso está ya arreglado. A estas alturas, ya puedes responder varias cosas sin mirar. ¿Sabes por qué un modelo de 125.000 millones de parámetros corre con una tarjeta gráfica de 12 GB? Porque cada token toca el 2% de los expertos y el resto vive en la despensa.

[24:02] ¿Sabes por qué la caché acierta un 72% aunque solo quepa un bote de cada cuatro? ¿Y por qué la CPU y la tarjeta gráfica trabajan a la vez? ¿Sabes que el seis del título compara dos versiones distintas y que la gran ganancia está en la lectura? ¿Y sabes qué? Para este modelo, la RAM importa más que la VRAM.

[24:21] Si alguna de esas ideas se te escapa, vuelve al ejemplo de los ocho botes. Está todo ahí. A partir de ahora, cada vez que un titular diga "tantas veces más rápido", yo preguntaría qué versión contra cuál y si es escritura o lectura. Con esa pregunta, el seis se convierte en un cuatro para escribir en el PC del desarrollador, un dos aproximado en las otras máquinas donde alguien midió ambas y en unas 15 veces para leer, lo que para quien programa con agentes es una noticia mejor que la cifra del titular.

[24:54] Y vuelvo a esa tarde del 24, al desarrollador de la 5070 pequeña, que se había quedado en 15 tokens por segundo con llama.cpp. Nueve días después, Strata tiene 8163 estrellas y llama. CPP tiene una pull request abierta para hacer lo mismo. Mi apuesta es que en unos meses la caché de expertos estará en motores generales como llama.cpp y la ventaja en escritura se reducirá bastante, mientras que los precios de la RAM no bajarán ni de lejos tan rápido.

[25:27] En el fondo, esta historia va de cómo, cuando el hardware se pone carísimo, la jugada barata es escribir software para la máquina exacta que ya tienes. Y hoy una sola persona puede hacerlo en 10 días. Para la gente normal, la que se pagó su propio PC, creo que esto significa que un modelo de los que hace 6 meses estaban entre los mejores, ahora cabe en casa, siempre que la despensa sea lo bastante grande. La regla que yo me quedaría es corta. Si no cabe en la despensa, no corre. Así que cuenta tus

[25:58] gigas de RAM antes de mirar la tarjeta. Si ya los tienes, pruébalo esta semana. Y si tuvieras que comprarlos, mira primero la API. Si este vídeo te ha ayudado a entender cómo funciona la IA local, dale a me gusta, compártelo con alguien que tenga un PC potente y suscríbete a Code Simple para no perderte el próximo. Y cuéntame en los comentarios en qué lado de esa regla cae tu PC. ¿Cuánta RAM tienes?

[26:23] ¿Qué tarjeta? Y si ha merecido la pena. En pantalla tienes otro vídeo que te va a encantar. Nos vemos en el siguiente.
