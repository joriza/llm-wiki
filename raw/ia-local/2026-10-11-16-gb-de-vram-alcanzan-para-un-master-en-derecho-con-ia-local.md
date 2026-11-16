# ¿16 GB de VRAM alcanzan para un máster en Derecho con IA LOCAL?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=OFO-Uo-O6Mk)
- **Canal**: Cognix
- **Publicado**: 2026-10-11
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 20:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Muy bien, te tengo que contar algo que ojalá alguien me hubiera dicho antes. Me pasé horas viendo comparativas de placas de vídeo a las 2 de la mañana, convenciéndome de que necesitaba una tarjeta de 1600 dólares solo para correr un modelo de IA local. Y seguro te pasó lo mismo, ¿no? Ves un titular que dice, "Corre Qwen 3,827B en local por menos de 800 dólares" y de repente tenés 17 pestañas abiertas, tu pareja duerme y estás haciendo cuentas de si podés vender tu placa vieja, tu

[00:31] consola, quizás hasta un riñón. Ahora bien, el mes pasado salió un vídeo llamado, "Con 16 gigas alcanza para la IA en serio" y explotó, 585.000 vistas en pocas semanas. El tipo del vídeo, Manolo Remedi, levantó Qwen 3,827B en una 5060 TI de 16 gigas que cuesta 429 dólares y corrió a 45,6 tokens por segundo. Limpio y rápido, una belleza.

[01:00] Yo miré ese vídeo con la mandíbula en el piso, pensando que esta era la placa que por fin iba a dejar de darle vueltas al asunto, así que me convencí. No compré la placa porque ya tenía una de 16 gigas, pero sí la idea. Lo configuré todo, cargué el modelo, abrí mi agente y empecé una sesión de programación. Y a los 20 minutos todo se arrastraba. Veía los tokens salir a 15 por segundo mientras mi agente entraba en bucle y repetía su contexto. Y me acuerdo de estar ahí sentado pensando, "Este tipo

[01:32] no había dicho 45 por segundo?" Así que me pasé 3 semanas averiguando qué había pasado de verdad. Y lo que encontré es que la historia de los 16 gigas es cierta, pero es solo la mitad. Y nadie que vio ese vídeo vio la otra mitad, de la que trata este vídeo. Empecemos por las buenas noticias, porque no quiero ser el que se dedica a criticar un vídeo viral. La emoción era real y los números también. un modelo realmente impresionante y durante mucho tiempo no entraba en una placa de 16 GB. La versión estándar de 4

[02:06] bits pesa 17,44 GB. Entonces, intentas cargarla, te sale un error de modelo demasiado grande y volvés con el modelo de 7.000 millones que usabas antes. Pero entonces, un laboratorio llamado Das Lab del Instituto de Ciencia y Tecnología de Austria publicó algo llamado cuantización GS Q Arco y es realmente ingeniosa. En lugar de comprimir todo el modelo por igual, detecta qué partes son sensibles y cuáles no, y comprime cada una en consecuencia. Es como armar una valija, enrollas las remeras porque aguantan,

[02:39] pero doblas bien la camisa de vestir porque importa. El resultado es una versión de 11,8 GB que el laboratorio llama prácticamente sin pérdidas en las tareas. Y en sus pruebas, esa etiqueta se sostiene. El modelo completo saca 30 de 30 en un examen de matemática AIME y la versión comprimida también. Empata en programación y solo falla una pregunta más de 198 en una prueba de ciencia. Así que sí, el modelo entra y la demostración fue completamente honesta.

[03:10] Manolo mostró en pantalla el uso de memoria, 15,1 o 15,9 GB y eso no es seleccionar lo mejor, es lo que realmente pasa cuando cargas un modelo de 27.000 millones en 16 GB. Y hay gente que hizo trabajo real con esto, como un usuario en Reddit que procesó más de un millón de tokens de programación con agentes en una 5060 Ti con unos 73.000 tokens de contexto en una publicación con miles de votos positivos. Son usuarios reales con flujos de trabajo reales logrando resultados reales.

[03:44] No vengo a decir que el video estaba equivocado, vengo a decir que hay un número en ese video que casi nadie notó y ese número lo cambia todo. Si volvés a mirar la pantalla de Manolo, el uso de memoria es el número que todos miraron, pero el que importa es el otro, la ventana de contexto. Su RTX 5060 Ti estaba configurada en 64,000 tokens, y su RTX 5090, corriendo exactamente el mismo archivo del modelo, estaba en 262,000 tokens, o sea, el mismo modelo y el mismo archivo tuvieron un cuarto del

[04:18] espacio en una placa que en la otra. Si nunca pensaste en ventanas de contexto, te lo explico así. Imagina que trabajas con un asistente de programación, le pegas tu código, el asistente lo lee, te ayuda y lo modifica. Cada mensaje que mandas, cada archivo que pegas y cada resultado de una herramienta tiene que quedarse en memoria mientras el modelo trabaja. Eso es tu ventana de contexto.

[04:41] Cuando se acaba el espacio, o el modelo empieza a olvidar cosas, o directamente se detiene. Y la razón por la que la 5090 tuvo cuatro veces más contexto, no es que sea más inteligente, sino simplemente que tiene más memoria para sostener la conversación. Ahí empieza la historia de verdad. Un modelo tiene dos cosas viviendo en tu placa al mismo tiempo. La primera son los pesos, que son el modelo en sí, todo lo que aprendió y sabe. La segunda es la caché KB, que es la conversación, básicamente

[05:12] lo que el modelo tiene en la cabeza en ese momento. Los pesos son fijos, 11,8 gigas son 11,8 gigas, ya sea en tu primer mensaje o en el número 1,000. Pero la caché KB crece, porque cada token que envías y cada token que el modelo devuelve deja una pequeña huella en la memoria. En 4.827B, esa huella es de 64 kilobytes por token.

[05:37] Y suena diminuto hasta que haces la cuenta. 32,000 tokens son 2 gigas, y 128,000 tokens son 8 gigas, casi tanto como el modelo mismo, ahí ocupando lugar solo porque estuviste conversando un rato. Y Qwen es, de hecho, el caso amable. Dev Strolls Mall 2 de Mistral, que es un modelo fantástico para programar, usa 160 KB por token. Así que en una placa de 16 GB te queda lugar para unos 11,000 tokens a su lado, más o menos un hilo de correos de largo mediano antes de quedarte sin

[06:11] espacio. Esto es lo que los videos de 16 GB no tienen en cuenta, porque preguntan si el modelo entra y nunca preguntan qué queda una vez que entró. Ahora hagamos bien las cuentas, porque los números reales son algo más generosos que la versión alarmante, pero solo si somos cuidadosos. Una placa de 16 GB tiene 16 GB, que equivalen a unos 17,18 en las unidades con que se miden los archivos de modelos. Y llama.cpp reserva más o menos 1 GB como margen de seguridad por defecto, lo cual está bien. Entonces

[06:44] tomamos el modelo de 11,8 GB, sumamos 0,35 por la cabeza de predicción multitoken y 0,93 por el archivo de visión que se carga automáticamente, y ya estamos en unos 14 GB antes de empezar una conversación. Eso deja lugar para aproximadamente 47,000 tokens con la cachea precisión completa. Ahora, si apagamos el archivo de visión, porque para programar no hace falta entrada de imágenes, y comprimimos la cachea 8 bits en lugar de 16, esa misma placa de pronto aguanta unos 110,000 tokens. Son dos ajustes y más

[07:19] que duplican el espacio. Y 110,000 tokens suena a mucho, hasta que empezás a gastarlos. Bart Slichka, que tiene toda una serie de YouTube sobre correr IA en 16 GB, señala que herramientas de agentes como Claude Code cargan instrucciones de sistema de 30,000 a 32,000 tokens antes de que hayas escrito una sola palabra. Así que en una ventana de 64,000 tokens, que es la que usa mucha gente, ya estás en 34.000 para el trabajo real. Y el trabajo es voraz. Luke de Luke Dev Lab midió cuánto de una ventana de 128.000

[07:54] tokens se come una tarea típica. Una aplicación Kanban usó el 87% y una tarea en Blender el 96. Y no son tus mensajes los que llenan la ventana, sino la salida de las herramientas, la lectura de archivos, los resultados de ejecutar código, los registros de errores, todo el circuito de retroalimentación de una sesión con agentes. Y todo eso se va apilando. Por eso la 5090 corrió con 262.000 tokens.

[08:22] No era para presumir, de verdad necesitaba el espacio. Ahora, esta parte es la que me volvía loco mientras veía vídeos de reseñas. La misma placa, corriendo el mismo modelo, mostraba desde tres tokens por segundo hasta 70.

[08:37] Y yo no entendía cómo era posible. Pensaba que los reseñadores eran descuidados. Pero resulta que tres cosas explican casi todo. Y cuando las ves, todo cobra sentido. La primera es si el modelo entra o se desborda. En el momento en que cualquier parte del modelo o de la caché se sale de la memoria de la GPU y pasa a la RAM del sistema, tu velocidad se desploma.

[08:59] Un dueño de una 4060 Ti movió su caché a la RAM a propósito para tener más contexto y midió entre seis y siete tokens por segundo en tareas que duraron más de una hora. O sea, técnicamente tenía más contexto, pero no tenía velocidad. Y esto es también lo que pasó en la prueba de Microcenter a principios de octubre, donde pusieron una RTX 5070 Ti, una de las placas de 16 gigas más rápidas que se pueden comprar, junto a una 5090 y les dieron el mismo modelo.

[09:30] La 5070 Ti escribía a menos de nueve tokens por segundo, llegó a su límite de contexto alrededor de los 8.000 tokens y completó el 61% del trabajo antes de frenarse, mientras que la 5090 escribía a 98. Y la 5070 Ti no es que se hiciera más lenta, se quedó sin espacio y todo lo que pasó después fue básicamente la placa luchando contra sí misma.

[09:55] La segunda es que el ancho de banda pone un techo a tu velocidad. Para generar un solo token, tu placa tiene que leer el modelo entero una vez. Así que los tokens por segundo literalmente no pueden superar el ancho de banda de tu memoria dividido por el tamaño del archivo del modelo. Una 5060 Ti mueve 448 GB por segundo, así que un archivo de 3 bits de 10,93 GB la limita a 41 tokens por segundo. Un dueño midió 35, que es el 85% del máximo teórico.

[10:27] Entonces, cuando ves una reseña que logró 70, estaba usando una placa más rápida con un archivo más chico. La tercera es la predicción multitoken, un truco ingenioso en el que el modelo borra unos tokens por adelantado y los valida todos en una sola pasada, consiguiendo así varios tokens al precio de una lectura. En una 5060 Ti, un usuario pasó de 27,4 a 45,6 tokens por segundo solo por activarla, pero hay una trampa. La predicción multitoken usa espacio de caché. Así que a medida que

[11:01] la conversación se alarga y la caché se llena, tarde o temprano tenés que apagarla. Un dueño de una 5060 Ti con una configuración propia pasa de unos 70 tokens por segundo con la predicción activada a 32.000 tokens y después la apaga más allá de ese punto, porque los borradores necesitan un espacio que ya no tiene.

[11:21] Entonces, terminamos eligiendo entre predicción y contexto. Y hay un número más que estos videos casi nunca mencionan, el perfil. Porque antes de escribir su primera palabra, el modelo tiene que leer tu prompt entero. La 5060 Ti lee a unos 738 tokens por segundo.

[11:38] Así que un contexto de agente nuevo de 30.000 tokens significa 41 segundos de silencio antes de que pase algo. Un dueño de una RX 9060 XT de 16 gigas en AMD midió 149 tokens por segundo con 32.000 tokens de contexto, lo que son más de 3 minutos de espera antes de la primera palabra.

[12:00] Nadie en el vídeo grande de 16 gigas dice ese número en voz alta y la verdad es que no sé por qué. Ahora, esta parte se pone un poco ridícula, de la manera más hostil para el consumidor posible, porque no todos los 16 gigas son iguales. Si el ancho de banda marca tu velocidad y la caché marca tu espacio, entonces lo que importa no es solo el número en la caja, sino lo que hay detrás. Así que si miramos lo que hay en el mercado esta misma semana, la RX 9060 XT de 16 gigas cuesta 470 dólares y mueve 320 gigabytes

[12:36] por segundo. La RX 9070 cuesta 650 con 640. La RTX 5060 Ti de 16 gigas, la placa del famoso vídeo, cuesta 789 dólares con 448. Y la RX 9070 XT también cuesta 790 con 640. O sea, por el mismo precio obtenés 43% más de ancho de banda.

[13:03] Ahora bien, el sobreprecio de la RTX 5060 Ti no es del todo injustificado, porque AMD tiene una desventaja importante en velocidad de perfil en llama CPP, el motor de ejecución local más común. En una comparación, una 5070 Ti leyó un prompt de 32.000 tokens más de tres veces más rápido que una RX 9070 XT, mientras que escribía menos de un 10% más rápido. Entonces, si tu flujo de trabajo tiene prompts iniciales largos, la ventaja de perfil de Nvidia es real.

[13:39] Pero la placa que hizo famoso al video ahora se vende a 789 casi el doble de su precio de lista de 429. Y mientras que la versión de 8 GB de la misma placa subió un 24% sobre el precio de venta, la de 16 subió un 84. Lo que te dice que la gente está pagando por los GB y no por el chip. Y hablando de etiquetas que no significan lo que crees, una Mac de 16 GB no es una GPU de 16 GB, porque en macOS la parte gráfica recibe 12,7 GB por defecto. Si metes un modelo de 11,8 GB ahí, te queda menos de

[14:16] 1 GB, más o menos 14,000 tokens antes de que cargue cualquier otra cosa. Y la versión estándar de 4 bits de 14 GB ni siquiera carga. Además, la Mac mini M6 mueve 153 GB por segundo, aproximadamente un tercio de la 5060 TI.

[14:33] Y con las laptops, el nombre es otro desastre. Nvidia lista la RTX 5070 portátil con 12 y con 8 GB bajo el mismo nombre. Y la 5060 TI y la 4060 TI se venden con 8 GB con exactamente el mismo nombre que la versión de 16. Así que fíjate en la línea de memoria y no en el nombre. De verdad no puedo insistir lo suficiente, porque vi gente que descubrió 3 semanas después de comprar una laptop que tenía la versión de 8 GB de lo que creían que era una placa de 16.

[15:06] Ahora, esta es la pregunta que realmente me senté a calcular cuando estaba tomando mi propia decisión de compra, porque tenía la sensación de que la cuenta sería más interesante que el consejo habitual de YouTube de cómprate la placa. Cuenta 3,827 B alojado cuesta unos 2,95 dólares por millón de tokens de salida en OpenRouter. Y ese es el promedio ponderado real que la gente paga, no la tarifa de portada. Correr el mismo modelo en local, en una 5060 TI a 35 tokens por segundo, contando solo la

[15:38] electricidad a 180 vatios y la tarifa eléctrica promedio de Estados Unidos, cuesta unos 26 centavos por millón de tokens. Entonces, cada millón de tokens que generas en local te ahorra unos 2,69 dólares. Y la placa de 789 dólares se paga sola después de 294 millones de tokens. A esa velocidad, funcionando todo el día, son 97 días, o unos 10 meses a 8 horas diarias.

[16:06] Y eso es en realidad un argumento bastante fuerte para tener la placa propia. Pero es específicamente porque alojar Qwen 3,827B es caro. Así que si hacemos la misma cuenta con un modelo más barato, digamos uno que se aloja a 16 centavos el millón, la placa necesita 2,9 años de uso ininterrumpido para recuperarse.

[16:26] O sea, el retorno de la placa no es realmente una cuestión de la placa, sino del modelo. Si este es el modelo que correrías y lo correrías a fondo, la cuenta realmente juega a tu favor. Pero si lo vas a usar solo unas horas por semana, alquila nomás, porque la nube está ahí al lado.

[16:44] Ahora, hay una persona a la que toda esta historia realmente no se le aplica. La que necesita vivir más allá de los 100.000 tokens de forma habitual, con sesiones largas de agentes y bases de código enteras en contexto todos los días. Se pueden alcanzar esas longitudes con 16 gigas, pero solo con pesos de 3 bits, una caché muy comprimida, la predicción apagada y la velocidad rondando los 15 tokens por segundo. Y en ese punto, estás peleando con la placa en cada sesión solo para que termine una

[17:14] tarea. La mejora más barata para esa persona es, de hecho, una segunda placa de 16 GB y dos 5060 Ti de 16 GB cuestan unos 1578 dólares ahora mismo. Un dueño pasó de 27 a 46 tokens por segundo solo cambiando de división por capas a división por tensores entre las dos placas. Y un repositorio de configuraciones compartidas para este montaje pasa de un modelo de 3 bits con 64000 tokens en una placa a un modelo de 6 bits con 131000 tokens en dos. Así que conseguís mejor cuantización, mejor contexto y mejor

[17:53] velocidad. No es glamuroso y cómprate dos placas de gama media no es la miniatura que nadie va a hacer, pero es la respuesta práctica para cargas pesadas. Entonces, después de todo esto, ¿qué hacemos realmente con una placa de 16 GB? Primero, compra por ancho de banda y no por fama, porque la 5060 Ti es una buena placa, pero el mercado le rompió por completo la relación entre precio y valor en este momento. Si miramos la RX 9070 XT al mismo precio, te da 43% más de ancho de banda, lo que

[18:28] se traduce directamente en tokens más rápidos. Si tu flujo de trabajo depende mucho del perfil con prompts largos de agentes, la ventaja de Nvidia es real, pero no des por hecho que vale el sobreprecio sin revisar el precio actual. Segundo, corre un modelo que deje espacio en lugar del más grande que cargue, porque un modelo que carga sin dejar nada de sobra te va a castigar en cada sesión apenas tu contexto crezca más allá del desayuno.

[18:55] Tercero, apaga lo que no usás, como el archivo de visión, las opciones que se cargan solas y todo lo que gasta memoria sin aportar nada. Y conecta tu monitor a los gráficos integrados si tenés, porque solo eso puede recuperar medio GB que la GPU usaba para dibujar píxeles.

[19:11] Cuarto, dale lo que sobre a la caché y no a los pesos, porque tu agente no se vuelve más inteligente por un modelo más grande en una placa llena, se vuelve más inteligente por tener espacio para trabajar. El enfoque al que siempre vuelve la conversación de los 16 gigas es, ¿cuál es el modelo más grande que puedo cargar? Pero la pregunta correcta es, ¿cuál es el modelo más chico que resuelve mi problema y cuánto contexto me deja? Lo que en el fondo se reduce a dimensionar el modelo para la

[19:40] conversación y nunca la conversación para el modelo. Así que los 16 gigas son reales y también lo son la demostración y los números. Y para una gran parte de lo que la gente hace realmente con IA local, que es uso diario con contexto corto a medio y el modelo funcionando casi todo el tiempo, 16 gigas son genuinamente suficientes. Pero suficiente para cargar y suficiente para terminar el trabajo son dos números distintos. Y las 585,000 personas que vieron ese video merecen saber los dos.

[20:12] Si esto te ayudó a ver qué número importa para tu caso de uso, suscribite, porque todas las semanas voy a estar haciendo pruebas de exactamente este tipo de cosas prácticas. Y no pruebas sintéticas, sino cargas de trabajo reales con longitudes de contexto reales y tiempos de espera reales, porque eso es lo que de verdad estás comprando. Y yo, la verdad, todavía quiero una 5090. Lo dejo dicho nomás.
