# Qwen 4 27B: ¿El NUEVO REY de la IA Local?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=kvs5MgxEhU8)
- **Canal**: Cognix
- **Publicado**: 2026-11-12
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 27:25

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Alguna vez escribiste un prompt, apretaste enter y te quedaste mirando cómo el ventilador de tu GPU empieza a rugir como si fuera a despegar mientras el cursor parpadea y el modelo piensa? Mirás el celular, volvés y sigue pensando. Te levantás, te servís un vaso de agua, te sentás de nuevo y sigue pensando.

[00:20] Yo pasé por eso más veces de las que quiero admitir y me acuerdo de la primera semana que corrí 3,8 de 27B en local porque de verdad creí que algo estaba roto. Corrí NVIDIA SMI, revisé las temperaturas, reinicié la aplicación dos veces hasta que entendí que no pasaba nada. El modelo simplemente era así de minucioso. Escribía un proceso de pensamiento de 15,000 tokens antes de darme una respuesta que podría haber llegado en 500 y eso no es un error. Es la configuración por defecto y casi

[00:51] ninguno de nosotros la cambió. Pero ahora mismo toda la comunidad de IA local está revolucionada por una sola cosa. Cuen 4 de 27B y ni siquiera salió todavía. No hay pesos oficiales, no hay ficha del modelo, no hay nada que puedas descargar. Y aún así, en la última semana vi gente diciendo que es el modelo que casi le gana a Claude Opus.

[01:13] Vi los precios de las GPU subiendo en eBay y vi publicaciones en foros diciéndole a la gente que compre hardware ya mismo antes de que esto se lance. Quiero frenar un poco ese tren porque ya me quemé con ciclos de entusiasmo antes.

[01:27] Me los creí, ajusté mi forma de trabajar alrededor de modelos que terminaron siendo muy distintos de las demostraciones y perdí un montón de tardes. Así que hoy vamos a cortar el ruido y repasar lo que realmente sabemos, no por el bombo ni por pruebas que quizás no apliquen, sino por el código que ya se escribió, la arquitectura que ya está documentada y los problemas concretos y dolorosos que tiene el 27B actual en tu máquina ahora mismo. Y si el nuevo 27B va a ser el próximo rey local, la corona

[01:57] no se va a ganar con un número de benchmark, se va a con minutos. Primero, quiero darle al entusiasmo su día en el tribunal, porque el argumento a favor es realmente fuerte. Hace una semana, el 7 de noviembre, un creador que maneja una prueba de desarrollo de videojuegos llamada Gamefield, publicó unos números que incendiaron a la comunidad. Dijo que tuvo acceso anticipado a un modelo a través de la aplicación de programación de Alibaba, Coder, y que le habían dicho directamente que el endpoint que estaba

[02:26] probando era Cuen 4 de 27 B. El puntaje que publicó fue 44,6, mientras que Claude Opus 5,5, uno de los mejores modelos del planeta en este momento, sacó 47,2 en la misma prueba. O sea, hablamos de una diferencia de 2,6 puntos entre uno de los modelos más capaces que existen y un 27 B local.

[02:49] Pero el número que se volvió viral fue el de la columna de costos. El modelo Cuen salió alrededor de 16 centavos por ejecución, mientras que Opus salió 2,60 dólares. Y no es un error de tipeo. Es 16 veces más barato por un puntaje apenas 2,6 puntos más bajo. Y otros probadores empezaron a sumarse. Un creador llamado Loctar, que sube muchas de estas pruebas de IA local, escribió que Cuen 4 usaba muchísimos menos tokens y era bastante más eficiente. Y otro probador dijo que este modelo terminó en

[03:23] 40 minutos una compilación que a DeepSeek R1 le llevó 70. Si de verdad ese es el 27 B, podríamos decir que es el mejor modelo pequeño jamás hecho y entra en una sola GPU de consumo. Leí esos resultados a las 11 de la noche de un martes y, te lo confieso, se me aceleró el corazón y actualicé Hugging Face tres veces buscando los pesos. Pero después seguí leyendo y acá es donde la historia se complica.

[03:50] Resulta que el modelo que todos probaban a través de Coder, ese endpoint, no era algo fijo en absoluto. Unos días después de esos resultados virales, el propio Coder explicó lo que pasaba. Durante cuatro días había estado corriendo una versión de prueba de Qwen que se actualizaba todos los días. Entonces, el modelo que probaste el sábado no era el mismo que probaste el lunes. Coder nunca dijo de qué tamaño era. Un probador corrió el mismo prompt dos veces y dijo que las respuestas parecían de dos

[04:19] modelos totalmente distintos. Y eso no es una prueba consistente, es más bien un experimento vivo. Después, el autor de Game Field corrió la vista previa de Qwen 4 Max en la misma prueba. Sacó un puntaje peor que el del resultado temprano del 27B e incluso peor que Qwen 3,8 Max. Las palabras del autor y las parafraseo porque no quiero meterlo en problemas, fueron más o menos caos total. Y había un detalle más enterrado entre las respuestas que no me podía sacar de la cabeza. Alguien señaló que

[04:51] si este es un modelo de 27B en precisión de 8 bits, el archivo debería pesar unos 29 GB, igual que Qwen 3,8 de 27B, pero el tamaño que les dieron fue de 35 GB. Son unos 6 GB más de lo que debería, o sea, un 20% más grande para un modelo con el mismo nombre. Nada de esto prueba que las demostraciones fueran falsas, pero sí prueba que no se podían atribuir a nadie y no podemos planear la compra de una GPU alrededor de un modelo cuya identidad cambió todos los días de la prueba. Así que me alejé del entusiasmo

[05:26] y empecé a buscar lo que realmente estaba por escrito. Y el resumen honesto del registro oficial es más corto de lo que pensás. El 22 de septiembre, Alibaba publicó un comunicado de prensa diciendo que Qwen 4 estaba actualmente en entrenamiento sin nombrar tamaños ni dar fechas. Pero un asistente a la conferencia fotografió su pantalla y mostraba cuatro nombres bajo la serie Qwen 4 próximamente, Max, Plus, Flash y 27B. Y un medio chino informó que del lado de los pesos abiertos, el 27B tiene

[06:00] prioridad y después está el código. El agente de programación de Alibaba, Qwen Code, incorporó a fines de octubre un cambio que asigna una ventana de contexto de un millón de tokens a todo identificador de modelo que empiece con Cuan 4. Y la lista de pruebas de esa modificación incluye Cuan 4 Max, Cuan 4 Plus e incluso Cuan 4,5 Max, pero no hay ningún Cuan 4 de 27 B en ella. Ahora bien, el único código que nombra al 27 B vino de afuera de Alibaba cuando un equipo de Intel incorporó el 23 de

[06:34] octubre una solicitud de cambios titulada optimizar Cuan 4 de 27 B. El repositorio fue retirado bastante rápido, pero Internet Archive guardó una copia dos días después y ese documento es fascinante. Llama al modelo Cuan 4 de 27 B denso y describe el de 4 bits corriendo en una tarjeta y el de 8 bits en dos y aclara de manera explícita que Intel nunca tuvo los pesos reales de uno de los nuevos componentes de la arquitectura, así que nada corrió de punta a punta. Ese es entonces todo el

[07:07] registro oficial. Un nombre en una diapositiva de una conferencia, una afirmación de prioridad de un medio chino y código de optimización de Intel que nunca terminó de correr. Si esperabas que te mostrara un enlace de Hugging Face ahora mismo, perdóname porque esta es la parte del baño de realidad del vídeo.

[07:26] Ahora, ese documento de Intel nos dice bastante más que nada, porque el código de bajo nivel no puede ser vago. Tiene que conocer el ancho exacto de cada capa, la cantidad de cabezas de atención y la disposición de todo. Y lo que describe coincide casi exactamente con el 27 B actual, el mismo ancho y la misma estructura de atención, lo que significa que el tamaño del archivo debería ser muy parecido al que estás corriendo hoy, alrededor de 16 GB y medio en 4 bits. Esa información es útil

[07:56] y nos lleva a la primera expectativa real. Pero antes de contarte qué podemos esperar de este modelo, quiero hablar de algo que creo que está fundamentalmente mal en cómo la mayoría de la gente lo va a evaluar. Todos van a comparar Cuen 4 de 27 B contra Claude Opus 5,5 y ya vi miniaturas de YouTube planeadas alrededor de esa comparación.

[08:18] un modelo local vencer a Opus? Es buen contenido y probablemente yo haría clic, pero es la pregunta equivocada. Opus no está en tu escritorio, no estamos eligiendo entre el nuevo 27 B y Opus. Estamos eligiendo entre el nuevo 27 B y el 27 B que ya estamos corriendo y en tu escritorio no pagás por token, pagás en tiempo.

[08:40] Artificial Analysis maneja un índice de tareas reales que es trabajo concreto de programación y razonamiento en lugar de pruebas sintéticas y el Cuen 3,8 de 27 B actual saca 20 en ese índice muy por encima de la mediana de ocho para modelos de su tamaño, o sea que según esa medida ya es un buen modelo.

[09:00] Pero cuando miramos lo que costó llegar ahí produjo 128 millones de tokens de salida a lo largo del índice, cuando la mediana para modelos de su tamaño es de 77,7 millones y necesitó 39,6 minutos por tarea, mientras que los modelos comparables necesitaron 13,6.

[09:19] Es casi tres veces más tiempo por tarea y eso fue en servidores, no en tu única GPU. El propio resumen de Artificial Analysis lo califica de muy verboso y notablemente más lento por tarea y eso no es un problema de hardware, sino de diseño del modelo.

[09:35] Entonces la verdadera pregunta para el nuevo 27 B no es si puntúa más alto, porque el 3,8 ya puntúa bien, sino si termina antes. Y para entender por qué eso importa tanto tenemos que ver cómo funcionan realmente estos modelos en tu máquina.

[09:51] Supongamos que tenéis una RTX 3090 que puede hacer unos 35 billones de operaciones de punto flotante por segundo. Con cualquier criterio razonable es una cantidad absurda de cómputo. Entonces, ¿por qué generar texto en ella se siente como ver secarse la pintura?

[10:08] Lo que me rompió la cabeza cuando lo aprendí es que el cuello de botella no es la matemática, es la lectura. Cada vez que el modelo genera una palabra, o sea, un token, tu GPU tiene que leer el archivo completo del modelo desde su memoria. El archivo estándar de 27B en 4 bits pesa 16,46 GB y una RTX 3090 usada lee la memoria a unos 936 GB por segundo. Entonces, cuando dividimos uno por otro, obtenemos un techo de alrededor de 57 tokens por segundo. Y ese es el mejor caso absoluto. Las ejecuciones reales son más

[10:45] lentas. Ahora súmale el razonamiento. El 27B actual tiene lo que se llama un modo de razonamiento donde piensa en voz alta antes de responder y resuelve el problema paso a paso. Eso es lo que lo hace bueno y también lo que lo hace lento. Un equipo que hizo un ajuste fino midió la salida del modelo base en una prueba de ciencias en unos 15,000 tokens por respuesta en promedio y la mayor parte es pensamiento interno que nadie pidió. A 57 tokens por segundo son 4,4 minutos para una sola respuesta. Y ese

[11:18] es el techo, así que las ejecuciones reales quedan por debajo. Entonces, cuando estamos ahí sentados mirando parpadear el cursor, la GPU no está haraganeando, está haciendo exactamente lo que le pediste y simplemente se hizo un montón de preguntas de seguimiento antes. Y este es el problema que se supone que 4 va a arreglar. Y la manera en que lo arregla importa mucho, así que quédate conmigo.

[11:42] Y voy a confesar algo públicamente. Durante los primeros 3 meses que corrí 3,8 de 27B nunca cambié el nivel de razonamiento porque ni siquiera sabía que era una opción. El modelo tiene tres niveles, bajo, medio y extra alto. Y el predeterminado, si tu aplicación no envía nada explícito, es extra alto, el máximo de pensamiento posible. Ahora, cuando miramos lo que midió sis en los tres niveles, el extra alto obtiene un puntaje de 20 con 39,6 minutos por tarea, mientras que el nivel

[12:14] bajo obtiene 16,26,6 minutos. Es decir, que el extraalto compra cuatro puntos en la prueba a cambio de un 49% más de tiempo por tarea y un 66% más de tokens. Y, a veces, eso vale cada segundo. Si estás depurando una pérdida de memoria complicada, resolviendo un algoritmo difícil o haciendo una refactorización de arquitectura pesada, entonces sí, déjalo pensar y que cocine.

[12:42] Pero si le pedís que renombre unas variables, escriba un archivo de pruebas básico o resuma un documento, te quedaste sentado 13 minutos de más mientras tu modelo se pasaba de rosca con algo que un programador junior habría resuelto en 30 segundos. Y lo digo habiéndolo hecho yo mismo varias veces mientras preparaba café, revisaba el correo y, básicamente, perdía la tarde.

[13:05] Esto importa para Cuen 4 porque el mismo cambio de código de octubre que asigna las ventanas de contexto a la familia Cuen 4 también le da los mismos tres niveles de razonamiento con extraalto como predeterminado. Así que, sea cual sea la capacidad bruta que logre el nuevo 27 B, va a llegar con el ajuste más caro activado.

[13:25] Y eso hace que la primera mejora de rendimiento desde el día uno no esté en el modelo para nada, sino en un menú desplegable que la mayoría de nosotros probablemente nunca tocó. Cambia ese ajuste primero. Hacelo antes de correr una sola prueba y antes de publicar tus resultados en cualquier lado y configúralo a propósito.

[13:45] Bien, ahora que despejamos el aire, repasemos lo que podemos esperar de manera razonable en orden de qué tan seguro estoy de cada cosa. La primera expectativa es el mismo archivo en la misma tarjeta y es la que más confianza me da porque viene del código de bajo nivel y ese código no tiene lugar para ser vago.

[14:03] Cuando miramos el documento de optimización de Intel, enumera el ancho interno del modelo como 5120 y el ancho de Cuen 3,8 de 27 B también es 5120. La disposición de atención de 24 cabezas que consultan y cuatro que guardan notas es exactamente la misma.

[14:22] De entonces, el archivo de 4 bits debería rondar los 16 a 17 GB y si 3,8 de 27 B corre hoy en tu tarjeta, 4 de 27 B casi seguro también. Siendo directo con esto, se desprende que no deberías comprar una GPU nueva por este modelo.

[14:40] Sé que alguien por ahí me va a mandar un video diciendo lo contrario y vi el análisis. Las Tesla P100 en eBay pasaron de 80 a 180 dólares en 2 meses y la RTX 5060 TI de 16 GB saltó de 569 dólares en julio a unos 770. Los precios de las GPU son reales y la presión es real, pero nada en la arquitectura confirmada dice que necesitemos una tarjeta más grande y comprar por una predicción que no podemos verificar es pagar un precio de pico por una conjetura. Así que guárdate la plata.

[15:14] La segunda expectativa es que las conversaciones largas por fin dejen de frenarnos, que es donde 4 realmente debería sentirse distinto y es la que me tiene realmente entusiasmado. Cuando tenés una conversación larga, por ejemplo, cargaste una base de código enorme en el contexto y hablamos de 128.000 tokens, el modelo tiene que mantener lo que se llama una caché de clave y valor. Son las notas que el modelo va guardando de todo lo que ya vio y a 128.000 tokens en precisión completa ocupan 8 GB de memoria de la

[15:45] GPU y el modelo tiene que releer esas notas para cada nuevo token que genera. Entonces, en una 3090 con notas de 8 bits, eso suma más de 4 GB de extra de lectura por palabra, además de los 16 GB del archivo del modelo y el techo baja de 57 tokens por segundo a unos 45.

[16:05] Después de 1 hora programando con una ventana de contexto pesada, el modelo que se sentía rápido en un chat nuevo ahora se siente notablemente lento y tuve sesiones en las que pensé que mi configuración de Oyama se estaba rompiendo hasta que me di cuenta de que el contexto había crecido a 80,000 tokens y el modelo se estaba ahogando en su propia memoria.

[16:25] Ahora Qwen 4 agrega algo llamado atención dispersa, donde en lugar de leer todas y cada una de las notas para cada palabra nueva, consulta un índice y lee un presupuesto fijo de 248 tokens de notas por palabra a 128,000 tokens. Eso es alrededor del 1,6% de ellos. Entonces el techo de velocidad en contexto largo se mantiene cerca de 57 en lugar de caer. Pero algo que quiero dejar claro, porque vi que esto se confunde en los comentarios, es que la atención dispersa no hace más chicas las notas.

[16:59] Cada token se sigue escribiendo completo porque el índice podría necesitar cualquiera de ellos. Entonces ahorra tiempo de lectura y no memoria y la ventana completa de 262,000 tokens igual no va a entrar en una 3090 junto con el modelo. Pero para sesiones de programación realistas en una sola tarjeta, esto debería sentirse notablemente mejor.

[17:20] La tercera expectativa es un pensamiento más corto tal vez y es la que más quiero y también de la que estoy menos seguro. El comentario con más me gusta en un video reciente de vista previa dice que el 27B era ridículamente charlatán y no entregaba un producto y que eso se arregló en Qwen 4 y todos los primeros probadores que mencionaron la cantidad de tokens dijeron lo mismo, que Qwen 4 era dramáticamente más eficiente. Y además hay pruebas reales de que esto es alcanzable con esta misma arquitectura.

[17:50] Un ajuste fino llamado Swift 1,5 tomó Qwen 3,8 de 27B y lo entrenó específicamente para que dejara de pensar de más y en una prueba de ciencias la respuesta promedio bajó de 15,000 tokens a unos 8,700. Es una reducción del 42% y el puntaje incluso subió un poquito. A 57 tokens por segundo, esa es la diferencia entre 4,4 minutos y 2,5 minutos por pregunta en el mismo hardware y sin ningún cambio de tu parte.

[18:22] O sea, que es totalmente posible y lo sabemos. Pero mi preocupación honesta es que todas las afirmaciones de menos tokens hasta ahora vinieron de ese endpoint decoder, el que cambiaba todos los días y terminó convirtiéndose en Max y nadie fuera de Alibaba tomó un modelo 27B confirmado para medir realmente la longitud de su pensamiento. Esta es la expectativa que voy a seguir más de cerca el día del lanzamiento porque si es cierta lo cambia todo y si no lo es las otras mejoras igual son reales, pero

[18:54] más chicas de lo que la comunidad espera. Ahora, antes de llegar a los consejos para sobrevivir el día del lanzamiento, hay algo que estuvo todo este tiempo en segundo plano en esta conversación. Es un modelo que la mayoría de la gente fuera de la vanguardia nunca escuchó, llamado Flash Next o más específicamente Qwen 3.8 Flash Next que Alibaba lanzó en agosto y describió como una vista previa experimental de la arquitectura que va a sostener a Qwen 4. Y importa porque Flash Next es un modelo de mezcla de

[19:25] expertos. Es enorme en tamaño total, algo así como 125,000 millones de parámetros, pero solo activa unos 6,000 millones por palabra. Entonces, en lugar de leer 16 GB por token lee solo la porción que importa. Y hay un motor llamado Strata que corre la versión de 2 bits de Flash Next en una GPU de 12 GB con 64 GB de memoria RAM del sistema.

[19:49] Logra 93 tokens por segundo con contexto corto y baja de manera gradual a 73 tokens por segundo con 128,000 tokens, que es más rápido que el techo teórico de un 27B denso en una 3090. Ahora bien, la contrapartida es real porque un archivo de 2 bits es una aproximación comprimida y la única comparación lado a lado que pude encontrar mostraba al 27B denso escribiendo mejor código que Flash Next, así que la calidad sigue importando y esto no es una mejora gratis. Pero si ahora mismo tenés una tarjeta de 12 GB y

[20:24] te preguntás si Qwen 4 de 27B va a entrar alguna vez, esta conversación ya tiene una respuesta. La familia Flash corre ahí y corre rápido. Y Qwen 4 Flash, cuando y si libera sus pesos, es el modelo para seguir en tarjetas más chicas. El trono de la IA local no es un solo asiento porque se reparte según el hardware. El 27B compite en calidad por minuto para tarjetas de 24 GB. La familia Flash ya reina en el nivel de 12 GB y nada del próximo lanzamiento cambia eso.

[20:57] Bien, el modelo eventualmente va a salir y cuando lo haga quiero que estés preparado. Algunas cosas van a salir mal de inmediato y ninguna va a ser culpa del modelo. La primera es que tu aplicación puede no cargarlo. Qwen 4 introduce dos nuevas características de arquitectura, la atención dispersa y nuevos carriles residuales que necesitan código actualizado en el motor de ejecución y tanto LM Studio como Ollama dependen de llama.cpp para esto.

[21:26] Pero la buena noticia es que llama.cpp ya agregó soporte para la mayoría de estas características cuando salió Flash Next, así que el soporte podría llegar rápido. Y lo que te recomiendo es simple. Antes de asumir que el modelo está roto, revisa las notas de versión de llama.cpp y asegúrate de que tu aplicación esté actualizada.

[21:47] La segunda es que el contexto predeterminado va a arruinar tus agentes en silencio. La propia documentación de Ollama dice que cualquier tarjeta de menos de 24 GB recibe por defecto una ventana de contexto de 4000 tokens, mientras que la misma documentación recomienda que los agentes y las herramientas de programación necesitan al menos 64.000 tokens para funcionar bien. Entonces, si lanzás una sesión de programación con agentes sin cambiar ese ajuste, el agente va a empezar a olvidarse de todo

[22:17] después de unos pocos miles de tokens y te vas a pasar una hora culpando al modelo por tener una memoria pésima, cuando no es el modelo sino el valor por defecto, así que cámbialo antes of tu primera ejecución. La tercera es el nivel extraalto de lo que ya hablamos, así que configura el nivel de razonamiento vos mismo y a propósito antes de hacer cualquier cosa. Y la cuarta son los pesos falsos, que es molesto pero real. Ya hay repositorios en Hugging Face llamados Cuen 4 de 27 B

[22:47] que no son de Cuen. Y vi al menos uno que era simplemente Flash Next con el nombre cambiado. Entonces, ¿cómo sabemos que es el verdadero? Es una ficha de modelo bajo la organización oficial de Cuen en Hugging Face y también una publicación de la cuenta verificada de Cuen que nombre ese modelo específico. Y si solo una de esas dos cosas es verdad, esperá.

[23:09] Una cosa más antes de terminar. Y esta es específicamente para quienes construyen sobre estos modelos de manera profesional. Cuen 3,8 de 27 B se distribuye bajo Apache 2, que es la licencia abierta más permisiva que existe, así que podés usarlo en una empresa, en un producto de forma comercial sin restricciones. Pero Flash Next no, porque se distribuye bajo una licencia comunitaria de Cuen aparte con términos distintos. Y los pesos abiertos de Cuen 3,8 Max usan una tercera licencia personalizada. Eso hace tres

[23:42] licencias diferentes para tres modelos de la misma empresa en la misma generación. Y la licencia del nuevo 27 B no se anunció en ningún lado. Algunas personas de la comunidad parecen seguras de que no va a ser Apache 2,0, pero tampoco hay ninguna fuente para eso. Así que si estás construyendo en el trabajo y planeas integrar esto en algo comercial, y sé que muchos de ustedes lo hacen, lee el archivo de la licencia antes de cambiarte.

[24:08] Pesos abiertos y pesos permisivos no son lo mismo. Y enterarte 6 meses después de empezar un proyecto de que tu licencia exige atribución o prohíbe ciertos usos es una conversación bien dolorosa. Entonces, ¿en qué quedamos? Mi plan es lo mismo que estoy haciendo yo esta semana.

[24:25] Seguí corriendo Cuen 3,8 de 27 B porque la arquitectura es tan parecida que todos los ajustes que afinaste, tu ventana de contexto, tu prompt de sistema y tus preferencias de nivel de razonamiento deberían pasar casi directamente a Así que no estás tirando trabajo a la basura por quedarte donde estás ahora.

[24:45] Configura tu nivel de razonamiento a propósito y no dejes el extra alto por defecto, lo que significa pensar de verdad qué estás construyendo y elegir el nivel que corresponda. Para trabajo exploratorio, medio. Para utilidades rápidas y armado de estructuras, bajo.

[25:01] Pero para lo difícil, los errores que llevan una semana en tu lista pendiente y las preguntas de diseño de sistemas, anda a extra alto y anda a buscarte un café, pero a propósito. Subí tu ventana de contexto por encima del valor por defecto en tu aplicación antes que nada.

[25:17] Sea cual sea el valor por defecto, cámbialo a 32.000 como mínimo si tu tarjeta lo aguanta. Después revisa la documentación de tu configuración específica y elegí una tarea real que hagas seguido, como una tarea completa de programación, un flujo de trabajo con documentos o algo que lleve tiempo de verdad y medí todo de punta a punta en lugar de tokens por segundo. Esa es tu línea de base y ese número es el único juez justo que va a tener este nuevo modelo. Y no compres una placa de vídeo

[25:48] para un modelo que nadie midió todavía. Ahora, lo que creo que se pierde en todas las publicaciones de benchmarks y las demostraciones virales es que la pregunta nunca fue en realidad qué modelo puntúa más alto. Siempre fue qué modelo encaja con tu vida. Un modelo que saca 44 y termina en 15 minutos me sirve infinitamente más que uno que saca 47 y me ocupa la máquina 45. No tengo 45 minutos para quedarme mirando una barra de carga y tengo trabajo que hacer que no se detiene mientras mi GPU se pasa de

[26:20] rosca pensando el nombre de una variable. Por eso creo que 4 de 27 B realmente podría ganarse el título de rey local. No por algún gráfico en una tabla de posiciones, sino porque si las mejoras de eficiencia son reales, el pensamiento es más ajustado y la lentitud con contexto largo de verdad se arregla. Más de mi día se va en hacer cosas en lugar de esperar y eso vale más para mí que cualquier puntaje. Cuando salgan los pesos lo voy a probar como corresponde con tareas reales y no solo

[26:52] tokens por segundo midiendo de punta a punta en la misma máquina con la misma carga de trabajo y ese video va a salir apenas tenga algo que valga la pena mostrarte. Si lo estás esperando, suscribite y lo vas a ver el mismo día que salga. Y si tenés una tarea del mundo real que quieras que pruebe, específicamente algo de tu flujo de trabajo y no una prueba sintética, déjala en los comentarios y la sumo a la batería de pruebas. Hasta entonces configura tu nivel de razonamiento,

[27:20] cambia tu ventana de contexto y deja de mirar el reloj. Nos vemos en el próximo.
