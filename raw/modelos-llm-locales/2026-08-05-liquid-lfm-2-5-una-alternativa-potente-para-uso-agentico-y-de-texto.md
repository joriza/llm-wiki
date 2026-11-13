# UNKNOWN

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=bq7sJ3hOpbk)
- **Canal**: UNKNOWN
- **Publicado**: UNKNOWN
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 00:00

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Acaba de salir una nueva variante de Liquid LFM 2.5, en esta ocasión con un tamaño 2.6B, es decir, seguimos en la versión 2.5, pero ahora con una variante de otro tamaño, el tamaño siendo menor a 3 billions de parámetros. A pesar de que comúnmente estos modelos, para mis casos de uso nunca han encajado muy bien, esta es la primera vez realmente que considero interesante uno de estos lanzamientos. Es un modelo que simplemente es de generación de texto, no tiene como input, visión de imágenes

[00:39] o lo que sea y que está preparado para pocos lenguajes comparado con quen o con Gema, que nos dicen que está arriba de 200. Sin embargo, dejando de lado eso, pues lo cierto es que dentro de los pocos lenguajes que por aquí aparecen, pues aparece español e inglés, que es lo que principalmente utilizo yo. Ahora, el tamaño del modelo también es interesante, así como su ventana de contexto, solo tiene 128,000.

[01:05] Solo lo decimos actualmente como si 128,000 fuera poco. Y pues bueno, pudiera ser considerado poco comparado contra otros modelos que pueden llegar hasta más del millón. Sin embargo, 128,000, la verdad es que está bastante bien y más para un modelo de este tamaño. Es un modelo que, tal como vemos, para uso agéntico aparentemente está bastante bien y que en cuanto a velocidad de tokens por segundo también se ve muy interesante sin siquiera tener como tal una GPU integrada. Nos dice que

[01:35] consumiendo 2.5 GB de memoria. Aquí es donde cada vez se pone más interesante todo y es que este modelo lo comparan, por ejemplo, contra el Gema 4 E2B, que si bien aquí ponen que es de 5.1 billons de parámetros. Pues sí, pero es trampas.

[01:51] Es trampa esto. ¿Por qué? porque no significa que es un modelo que todo ese tamaño se requiere realmente en V RAM al mismo tiempo y tampoco que toda esa parte es para la entrada de texto. La entrada de texto son 2B y el consumo que tiene realmente el modelo es de 2B. ¿Por qué hacemos esta distinción? Pues porque este también es de solo texto. ¿De acuerdo? El siguiente que tenemos es el gema 4 E4B. Lo mismo, nos vamos a quedar únicamente con 4B como tamaño y calidad.

[02:22] Y después tenemos Quen 3.5 4B y Quen 3.59B. Esto es con los modelos con lo que lo comparan en distintos tipos de operaciones. Sin embargo, a tener en cuenta que los benchmark claramente van a estar elegidos de acuerdo a donde mejor salen parados y de acuerdo al tipo de tarea para el que ellos prepararon este modelo. Dejando de lado eso, de por sí vemos benchmark de todo tipo de cosas, solo que por ejemplo si lo queremos, imaginemos para código, pues solo hay un benchmark de eso. Todo lo

[02:52] demás es de seguimiento de instrucciones, es de uso de herramientas, es de uso agéntico, etcétera. Con lo cual, pues no es que estén mal los resultados o algo así, sino simplemente que tenemos que contrastar, tenemos que entender exactamente qué nos están diciendo.

[03:09] Vemos. Entonces, no nos vamos a poner a ver benchmark por benchmark, pero lo que sí es que teniendo en cuenta el tamaño de 2.6B, por ejemplo, comparado contra Gema 4 E4B, QEN 3.54B o Qen 3.59B, la verdad es que está muy interesante porque aparentemente la calidad no difiere tanto como sí lo hace el tamaño.

[03:33] De hecho, en algunas cosas, siendo hasta bastante superior, se supone que estos otros modelos que comentábamos, ya que el Gema 4 E2B que este modelo sea superior, pues eso esperaría porque para empezar este es de 2.6B únicamente para texto 2.6B 6B. Este únicamente para texto 2B. tiene más cosas para más funciones, imágenes, audio, video, pero en texto, pues que sea superior un modelo de punto 6B más grande que otro, pues tiene algo de sentido, por lo menos en tamaño. Muy bien. Entonces, tal como comentábamos,

[04:06] lo interesante está que a pesar de ser un modelo aparentemente muy pequeño, por lo menos en billions de parámetros, está algunas veces siendo superior o sio por lo menos equivalente a modelos de hasta más del triple de tamaño, como nos presentan aquí el QEN 3.5. 9B. De todos modos, a tener en cuenta que de por sí estos otros modelos sí tienen visión de imágenes y más ventana de contexto. Este LFM 2.5 en tamaño 2.6B no tiene esas cosas. ¿De acuerdo? Dejando de lado eso, tal como comentamos, pues en muchos

[04:39] benchmark se ve interesante, así que vamos a proceder a probarlo. Para ello, lo que vamos a hacer en este momento, pues es descargar la versión cuantizada en formato GGUF oficial. ellos mismos ya la han subido de esta forma. Vemos que la tenemos por aquí. LFM 2.5 2.6b GGUF.

[04:59] Damos un clic y dentro pues vemos distintas precisiones del modelo. Y entre todas estas, por ejemplo, bajemos, dado que de por si el modelo es muy pequeñito, la Q8. Intentando bajar la Q8, damos un clic, nos pesaría algo así como 2.87 GB. En este modelo no requerimos más archivos que de MTP, que de visión, que de etcétera, etcétera, porque de por sí pues no cuenta con esas funciones. Así que solo es descargar este archivo. La ventaja que tiene, tal como decimos, es que aparentemente para

[05:31] su tamaño reducido y únicamente en modo texto se ve interesante en algunos casos siendo superior, en otro igual y en otro ligeramente inferior a los otros modelos que de por sí no se estaban comparando. Recordar mientras la descarga termina que este modelo no es el único de la versión 2.5. Ya teníamos distintas variantes de la versión 2.5.

[05:56] Este nuevo modelo no es que sea versión 2.6, sino que es otra variante de tamaño de su colección 2.5. Tenemos desde 0.23B hasta 8B, 1.2B y ahora 2.6B. Muy bien, ya se terminó de descargar y entonces en este momento lo que vamos a intentar es ejecutarlo en llama CPP. Para ello, donde está mi configuración de llama CPP, voy a crear una carpeta en el que escriba el nombre del modelo, la versión y la variante de tamaño. Presiono enter y aquí dentro es donde voy a cortar y pegar el archivo GGUF. Simplemente con

[06:38] esto listo puedo copiar alguno de los puntos BAT que nosotros ya tenemos. De todo esto ya hay video en el canal. Tenemos uno específico sobre llama CPP que dura 53 minutos. Y aquí pues lo que vamos a preparar es uno de estos punto wat ejecutar este modelo en cuestión.

[06:54] Voy a editar y entonces con esta misma versión de llama CPP que ya tenemos, que no es que la haya actualizado en este momento, sino que ya la teníamos, debería de funcionar. ¿Por qué? Porque de por sí la colección LFM 2.5 ya existía, tal como decíamos, ya había versión densa y versión mezcla de expertos. Esto simplemente es otra variante de tamaño de su versión densa.

[07:16] Vamos pues a seleccionar o mejor dicho a indicar correctamente la ruta del archivo. Aquí no tenemos visión y ponemos el nombre exacto del archivo. Este es el modelo en cuestión que vamos a intentar cargar. Todo en GPU, sin división de forma automática, nada de cierta cantidad de tokens para las imágenes, porque esto no tiene visión de imágenes. MTP tampoco tenemos, según yo.

[07:41] Vamos a dejarlo solo para ver qué sucede. Parámetros de desampleo no nos mencionan nada al respecto, con lo cual supongo que el mismo GGUF ya incluye algunos. Elimino esto y vamos a descuantizar la KVch, pues porque de por sí es un modelo pequeño, con lo cual teóricamente esto ni siquiera es necesario. Esperemos si el modelo ocupe poco tamaño, pero también su KV caché, su ventana de contexto. Perfecto.

[08:04] Entonces aquí tenemos estos parámetros. Guardamos el archivo e intentamos ejecutar dicho punto BAT. Por si es que aparece un error para que no se cierre la ventana de cmd automáticamente, pues mejor la abro por separado, como acabamos de ver. Y aquí es donde voy a escribir el comando. Presionando intro comienza la ejecución y veamos qué es lo que sucede. Y pues sí, tal como suponíamos, este modelo no incluye MTP.

[08:30] Así que simplemente lo que vamos a hacer es quitar estos dos parámetros que nos ayudaban a acelerar la velocidad de generación de tokens si es que el modelo tuviera MTP. Sin embargo, no es la única forma de hacer especulative de coding y de por sí el modelo es muy pequeñito.

[08:45] Tampoco es que haga eh falta 100% algo como esto. Suprimimos, guardamos y podemos volver a probar ejecutar. Comienza entonces la carga del modelo. Y aquí algo curioso que estoy viendo es que si bien otras veces en otros modelos, cuando son, por ejemplo, de 128,000 tokens o 128K de tokens de ventana de contexto, es una forma como en la que nos lo resumen, pero luego al momento de la verdad más bien son 131,072.

[09:13] Aquí estamos viendo que no es así, que es literalmente 128,000. Así que doy clic derecho, copio. De hecho, ya nos lo cargó con el valor correcto, pero pues de igual forma lo voy a cerrar, poner el valor correcto, darle en guardar y volver a abrir. Teóricamente ya tenemos todo bien configurado. El modelo es pequeñito, con lo cual rápidamente se carga. Y aquí lo que me interesa también es ver cuánto consume su KVch. Y aparentemente consume muy poco, consume 2 GB su KVC de 128,000. Hay modelos en

[09:45] los que esto de por sí consume menos. Sin embargo, no está mal. Nos vamos al administrador de tareas y me está consumiendo 4.9 GB. Ahora, aquí es donde está lo interesante. Gema 4 E2B a 4 bits de por sí mantiene la calidad completa del modelo comparado con este a 8 bits, que es como lo descargamos. ¿Por qué?

[10:07] Porque los Gema 4 están bajo un post entrenamiento Qat que prepara el modelo para ser cuantizado a cuatro bits, con lo cual a 4 bits tenemos una inteligencia equivalente que a 16 bits. Y que dicho modelo Gema 4 E2B que se supone que nos mencionaban que era de 5.1 un billions de parámetros totales, tal como aquí nos lo mencionan, al momento de estar cargado en memoria, aún con todo y su archivo de encoder de visión IMTP, para 131,072 tokens de ventana de contexto, no 128,000, ocupa menos de 3 GB de V RAM.

[10:47] Entonces este modelo, tanto el modelo de por sí como lo AVK, no está tan optimizada como en otros modelos, como en los GMA 4, que de hecho son muy buenos para su tamaño en cuanto a estas optimizaciones. Así que, okay, aparentemente solo la parte de texto es menor y la y el modelo completo es mayor, pero a la hora de la ejecución este sí está consumiendo un poco más de memoria. Esto ya es cosa de estar haciendo todo tipo de comparativas contra el modelo que nos interese y todo

[11:16] eso, pero sí a tener ese tipo de detalles en cuenta. Y pues ahora que ya lo tenemos ejecutado, vamos a probarlo, por ejemplo, en la misma ventanita de llama CPP. Aquí comencemos con alguna consulta, como por ejemplo, ¿por qué el cielo es azul? Y recordando que este modelo no es un modelo que cuente ya con MTP o algo como es o algún tipo de especulativo de coding para acelerar la velocidad de generación de tokens, pues aquí estamos notando que comparado con otros modelos de tamaño similar, estamos

[11:43] obteniendo menos tokens por segundo. En 3.5 2B, en Gema 4 E2B estoy en 130, 150, 180 tokens por segundo. En este, pues dado que de por si no cuenta con MTP, pues aún peor la velocidad, no lenta, pero no es la mejor dentro de su tamaño y tampoco el consumo de V RAM, como hemos dicho. Ahora, la respuesta está bastante bastante bien, no es la respuesta más estilo asistente que he visto, muy al estilo GPT4 o Gema o Quen, que son las que más me gustan para un chat. no es la que está mejor

[12:18] estructurada de esa forma, sin embargo, la respuesta es más que correcta y si revisamos su cadena de razonamiento, pues la verdad es que bastante bien. Algo que tienen, por ejemplo, a veces los modelos Quen es que su cadena de razonamiento hacen todo tipo de cosas gastando demasiados tokens innecesarios.

[12:34] Muy bien, ahora vamos, por ejemplo, a hacer la siguiente cuestión. Escribe el juego de Tetris en HTML en un solo archivo autocontenido sin recursos externos. Le damos en enviar y veamos qué tal para esta tarea. Dentro de los benchmark que ellos nos compartieron, el único en el que lo evaluaban para código era uno en el que si bien no era el modelo mejor parado, aún así nos mostraba que estaba muy cerca de esos otros modelos más grandes. Revisemos por aquí con un código simple como esto, de

[13:08] por sí de algo que ya existe. ¿Qué tal funciona? Pues porque de por sí es algo que ya existe a tal grado que simplemente diciéndole tétris ya debería de saber cómo hacerlo. Ni siquiera le damos los detalles exactos y que de hecho esos otros modelos con los que han comparado este modelo, pues seguido hacemos este prompt. Sabemos que hacen el juego a la primera en un one shot y que dependiendo del modelo un poquito más completo, un poquito menos completo, pero que prácticamente siempre funciona

[13:35] a la primera. Esto no nos demuestra si es 100% bueno para código, solo es una prueba inicial. Vamos a previsualizar y pues no, la verdad es que este modelo, de hecho, en cuanto a código, por lo menos bajo esta única prueba, está funcionando peor que eh está funcionando peor que el Gema 4E2B o que el quen 3.5 2B, por lo menos para esa única prueba, tal como decimos. Ahora vamos a ver qué tan bueno es corrigiendo, porque los modelos Quen pequeñitos, el 2B 4B, el 2B 4B 9B pueden hacer códigos bastante

[14:10] interesantes, sin embargo, les cuesta corregir. Gema 4 comúnmente hace códigos poquito peores a la primera, pero es un modelo que no está overfateado, que no está sobreentrenado para ser bueno para unas cosas y malo para otras, sino que es un modelo más generalista que aprendió a generalizar mejor todos los tokens de entrenamiento y que con ello cuando se equivoca es más fácil que logre corregir. Veamos si este modelo se encuentra en estos segundos como los GEMA. Entonces, le vamos a decir,

[14:39] analiza el proyecto, identifica errores y escribe el código corregido. Presionamos intro. Y bueno, ¿qué estamos viendo de momento? ¿Que es una buena alternativa? Sí, no significa que en todos los casos la mejor, que el tamaño no es tan simple como ver los billions de parámetros, que en cuanto a ventana de contexto puede tener menos que un Quent que tiene hasta 262,000, expandibles hasta 1,10,000 que es un modelo únicamente para texto, etcétera, etcétera. Así que no es que esté mal,

[15:10] sino que al estarlo comparando, pues vemos que no necesariamente es el mejor para todo tipo de uso. Sin embargo, recordemos que dentro de estos modelos, en su versión 2.5, 5 hay distintas variantes, siendo esta una nueva, pero tenemos una versión más pequeña, de hecho dos más pequeñas, una de 1.5B, una de 0.23b y una más grande 8B A1B, es decir, un mezcla de expertos. Aquí nuevamente vamos a revisar el código y pues no, la verdad es que este modelito no es el mejor para código. Ahora, algo con lo

[15:44] que nos lo estaban promocionando mucho era en cuanto a uso agéntico, con lo cual vamos a probarlo, por ejemplo, dentro de Open Code, que si bien Open Code es para hacer código, no nos interesa tanto la calidad del código, sino qué tal usa las herramientas que haga el llamado correcto a las herramientas de lectura, escritura, búsqueda en internet y ese tipo de detalles. ¿Por qué nos pudiera servir?

[16:10] Pues para usos de herramientas que no requieran tanta complejidad, tenemos aquí seleccionado nuestro llama CPP. Con lo cual, al momento de que yo haga una solicitud, pues aquí en la ventanita de llama CPP deberíamos de ver que ocurren cosas. Vamos a revisar si es cierto que es el que está respondiendo. Presiono intro y si, tal como estamos viendo en la ventanita de llamp, así que perfectamente. Ahora hay algo aquí que me interesa ver y es en este caso el procesamiento de los tokens de

[16:38] entrada. ¿Qué tan rápido es? Y de hecho, según estoy viendo, aquí sí hay algo bastante interesante, porque vemos que el input, el procesamiento de los tokens de la conversación, el prompt básicamente se estuvo leyendo en un comienzo hasta a más de 5,000 tokens por segundo. Después bajó un poco, esto es normal, pero hay otros modelos, como por ejemplo los mismos que ahí nos mencionan, más grandes o unos de tamaño más o menos similar, que a lo mejor aquí estamos en 1000, 2000, 3,000, quizá

[17:09] 4,000. Pero en este la verdad es que el procesamiento de tokens de entrada muy bien. Quizá un poco el problema son los de salida porque no tenemos algún tipo de especulative de coding nativo que de por sí nos acelere bastante. Okay, pues ahí respondió correctamente. Ahora, por ejemplo, dado que tenemos distintos MCPs, vamos a decirle busca en internet.

[17:31] Al decir busca y al decir en internet, ya debería de saber que con el que con la herramienta Brave Search, ¿qué es Gema 4? debería de usar correctamente la herramienta, efectivamente y a partir de ahí después responder. Y sí, la verdad es que para el uso de herramienta estuvo más que bien. Un modelo muy eficiente.

[17:50] Sinceramente en cuanto a tamaño creo que me convence más gema 4e2B en cuanto a uso real de V RAM. Sin embargo, este no está mal porque considero que el uso de herramientas lo puede hacer mejor. Los Gema, si bien los han corregido para ello, no son 100% los mejores, eh, aunque bastante funcionales, la verdad, pero por ejemplo el E2B sí creo que está peor en uso de herramientas que este de por aquí. Ahora vamos a decirle, usando el navegador entra a nichonauta.com.

[18:20] Como navegador tengo playgridght y efectivamente sin ningún tipo de problema lo logró a la primera. Ahí estamos viendo uno de sus usos realistas, ¿verdad? Eh, muy bien. Eh, muy bien. Ahora vamos a, por ejemplo, hacerlo que revise algo en Context 7.

[18:36] Revisa cuál es la versión actual de Bootstrap utilizando Context 7. Quizá la forma de verlo de redactado no fue la mejor, pero de igual forma lo hace perfectísimo. Su cadena de razonamiento bastante eficiente a no siempre consumir un montón de tokens, sino únicamente lo que requiere para la tarea y bastante bastante bien, la verdad. El uso de herramientas está muy muy bien. Ahora vamos a decirle, escribe todo esto en un archivo llamado información.md.

[19:08] Aquí ya no vamos a usar mcp, sino las mismas herramientas que de por sí tiene Open Code. Y vemos que rápidamente se pone a escribir el archivo correspondiente. Sin embargo, aquí ya empezamos con un problema y es porque lo está intentando escribir fuera de nuestra carpeta actual. Así que le voy a dar en denegar. Y pues bueno, esto que nos está indicando que si bien el modelo es bueno, usando herramientas no es el más inteligente porque estamos en una ruta, en una carpeta en específico, ¿por

[19:35] qué quiere escribir fuera? Vamos a decirle, te equivocaste, debes de escribirlo en el directorio actual. Presionamos intro y vamos a ver si lo determina correctamente. Y aparentemente ahora sí lo hizo bien. Hace rato lo intentó en usuario.md y ahora sí lo hizo en la carpeta correspondiente. El archivo información.

[19:57] D ha sido creado exitosamente en el directorio actual con el contenido completo sobre Gema 4, Bootstrap y Nichonauta. De momento llevamos consumidos 28,000 tokens de su ventana de contexto y la velocidad que nos sigue dando por aquí es de arriba de 80 tokens por segundo, lo cual empezamos a ver que se disminuye aún más la velocidad, pero que por lo menos lo que nos prometen que es uso agéntico en modo texto únicamente y aquí por ejemplo en idioma español pues lo está haciendo bien. Aquí en esta

[20:25] carpeta que es en la que estamos es donde hizo información.md. Doy doble clic y pues vemos correctamente el contenido. Simplemente para hacer una prueba más en una nueva conversación le voy a decir lee información. Así nada más, sin siquiera citar realmente el archivo con para que sea el nombre exacto y la ruta exacta, sino por sí solo. Así que intentó leer información.md tu MD atino correctamente. No sé por qué parece ser que lo intentó leer tres veces. La verdad es que eso no lo entiendo muy

[20:58] bien, pero de igual forma pues lo logró y aquí está el resultado. Aunque lo dio en inglés a pesar de que el texto está en español, pero bueno, quizá también tiene que ver con que de por si Open Code tiene todos sus promps en inglés, vamos a decirle responde en español.

[21:16] Presionamos intro y pues correctamente para el tamaño que tiene el modelo de billions de parámetros sí es uno que en este caso consideraría yo relevante como una posible alternativa. No significa que 100% es el mejor en su tamaño. Quizá hasta en herramientas confiaría un poco más en Quen 3.52B, 52B, además de que tiene más ventana de contexto, tiene MTP, tiene visión de imágenes, qué sé yo, tiene otras cosas, sin embargo, si es una alternativa. Eh, a veces vemos otros modelos que la verdad es que bajo

[21:49] mi opinión no sirven para nada. Y en este caso, este que estamos probando el día de hoy, pues sí, no sé si 100% el mejor, pero uno posible a revisar dentro de este tamaño para usos como este. La verdad es que sí. ¿Quién sabe qué tal funcione, por ejemplo, dentro de cosas como Hermes?
