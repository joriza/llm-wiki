# OpenRouter está usando un modelo de IA DEBILITADO (y podrías estar usando el endpoint equivocado)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=AwWRZgbLExU)
- **Canal**: Cognix
- **Publicado**: 2026-10-08
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:10

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hace unas semanas me pasó algo y estoy bastante seguro de que a vos también. Estaba armando una pequeña automatización. Nada del otro mundo. Un agente de IA que revisa una carpeta de documentos, extrae la información clave y escribe un resumen estructurado. Ya había hecho cosas así antes y sé cómo se comportan estos modelos. Así que lo puse en marcha, lo apunté a DeepSek B4 Pro en Open Router y me senté esperando que simplemente funcionara y no funcionó.

[00:29] Las respuestas salían raramente cortas y el razonamiento se sentía descuidado. En un momento ignoró por completo una instrucción del prompt de sistema que tenía apenas dos oraciones. Ahí estaba yo preguntándome si me había vuelto más tonto de la noche a la mañana o si el modelo lo había hecho porque algo estaba pasando y no podía darme cuenta de qué.

[00:49] Así que hice lo que haría cualquier desarrollador razonable. Me fui a Reddit y a Twitter y descubrí, para mi enorme alivio, que no era el único. Hay hilos por todos lados de gente diciendo que su modelo se siente recortado, gente que publica comparaciones lado a lado donde el mismo prompt resultados totalmente distintos según algo que nadie sabe bien qué es. Y la conversación va inmediatamente a un solo lugar, la cuantización.

[01:15] Alguien dice que seguro cambiaron a una versión de 4 bits. Otro responde que sí, que Open Router probablemente te manda a la copia cuantizada más barata y de repente todo el hilo decide que el culpable es un modelo degradado escondido en el backend de Open Router, sirviendo en silencio una versión inferior de lo que todos creían estar pagando. Ahora bien, esa explicación es limpia y es satisfactoria, pero en su mayor parte es falsa. La respuesta real es más aburrida y de algún modo más

[01:44] frustrante, así que vamos paso a paso. Antes de meternos en los detalles, hay que ver cómo funciona realmente Open Router, porque esto importa mucho. Open Router es una capa de enrutamiento que se ubica encima de un enorme número de proveedores de inferencia como Novita, Deep, Infra, Together, Morph, Relays y unos 50 más. Y cuando hacemos una llamada a la API de Open Router pidiendo, por ejemplo, Deepsic Bookway Crow Pro, Open Router no ejecuta ese modelo por sí mismo. Elige a uno de esos

[02:15] proveedores, le reenvía la solicitud y se queda con una pequeña comisión del 5,5%, lo que significa que el cómputo real ocurre en otro lado. Y lo clave es que para cualquier modelo popular puede haber 20, 30 o incluso 40 proveedores distintos ofreciéndolo. Todos sirven el mismo modelo, pero cobran precios diferentes. Usan configuraciones de hardware distintas y hacen concesiones diferentes. Y Open Router tiene que elegir uno de ellos cada vez que entra una solicitud. ¿Y cómo elige? Por

[02:48] defecto, elige por precio y en concreto con una fórmula llamada ponderación por inverso del cuadrado, donde un proveedor que cobra d por millón de tokens tiene nueve veces más probabilidades de ser elegido que uno que cobra tres. No es un poquito más probable. es nueve veces más lo que hace que el proveedor más barato gane de forma cuadrática. Esa es la máquina que reparte tu tráfico y una vez que la entendemos, buena parte del misterio empieza a desmoronarse, aunque probablemente no en la dirección que

[03:17] esperábamos. Volvamos a la teoría de la cuantización porque vale la pena tomarla en serio antes de desarmarla y a primera vista las piezas encajan. Mientras preparaba este video, consulté la API de Endpspoints de Open Router y hay 335 endpints repartidos en 54 proveedores para 27 modelos de pesos abiertos. De esos 54 endpints sirven algo a 4 bits, ya sea que la etiqueta diga FP4, intxfp4 o NBFP4 y otros 120 endpints directamente dicen desconocido, que es el 35% de toda la lista. Eso incluye el propio endp de

[03:58] deepsek para B4.1 Flash, que simplemente no indica con qué precisión corre. Y la propia documentación de Open Router tiene una advertencia al respecto, donde dice literalmente que los modelos cuantizados pueden mostrar un rendimiento degradado en ciertos prompts según el método utilizado. Está ahí en la documentación. Y la línea siguiente dice que las solicitudes se enrutan por precio, o sea, que la plataforma admite que la baja precisión puede perjudicar y aún así en ruta por precio, sin filtrar

[04:29] por precisión, a menos que se lo pidamos específicamente, lo cual parece bastante condenatorio. Pero esta es la parte que de verdad me sorprendió. Los propios laboratorios publican modelos de 4 bits. Cuando fui a mirar los archivos de configuración de los modelos, Kimi 3 de Moonhot ya trae sus pesos originales en MXFP4.

[04:51] Lo dice ahí mismo en el repositorio. Y la cuantización viene incorporada desde la etapa de ajuste fino supervisado. IGPTOSS 120B de Open AI guarda sus pesos de mezcla de expertos en MXFP4 y su propia tarjeta del modelo dice que absolutamente todas sus evaluaciones se hicieron con esa precisión. Y Deepsek Wi 4 Pro tiene un campo llamado expert detype en su configuración que está fijado en FP4. Entonces, cuando un proveedor dice que corre FP4, puede que literalmente esté diciendo que corre los

[05:25] pesos originales sin modificar. Un ingeniero de Deep Infra dijo exactamente eso en un hilo sobre el tema. Servimos el modelo con los pesos originales. Los pesos son FP4, por eso lo etiquetamos FP4. Y lo que me hizo reír de verdad es que en Kimika 3 el proveedor más barato, Morph, está etiquetado como FP8, o sea, que en realidad expanden el modelo a 8 bits. Están corriendo una copia más grande que la que el laboratorio publicó originalmente y encima cobran un 39% menos por la salida. Así que el endpo

[05:59] más barato tiene más bits y la historia de terror de los 4 bits a veces es simplemente el archivo original del laboratorio. Bien, entonces si no es principalmente la cuantización, ¿qué es? Claramente hay algo distinto entre proveedores y las brechas de precisión son reales porque yo mismo las vi.

[06:19] Artificial Analis hizo la prueba más reveladora que encontré, un benchmark de precisión que puntuó cada endpoint de cada proveedor por separado, en lugar de evaluar solo el modelo en general con las mismas preguntas y el mismo evaluador para cada proveedor. Y en GLM 5.2, Nevius sacó 100%, mientras que Deep Infra sacó 73%.

[06:42] y los dos estaban etiquetados como FP4, o sea, que hay 27 puntos de diferencia con la misma precisión y el mismo día. Esa brecha no tiene nada que ver con los bits. Entonces, ¿de dónde sale? Si miramos la misma respuesta de la API que trae la etiqueta de precisión, hay otros dos números ahí mismo. La ventana de contexto, que es cuánto texto puede leer un modelo de una vez, y los tokens máximos de salida, que es cuán larga puede ser la respuesta que se le permite escribir. Novita sirve llama 3.370B

[07:13] con 12.288 tokens de contexto, mientras que Meta lanza ese modelo con 131,072. O sea, que en ese endpo recibimos el 9% de la memoria del modelo y nadie lo esconde. Está impreso en la propia página, pero la mayoría de la gente simplemente no lee esa página. Together sirve el mismo modelo y limita la salida a 248 tokens y la versión de GPTOSS 120B de Digital Ocean limita la salida a 4096.

[07:45] Ahora bien, Epoc AI descubrió que ese modelo necesita más de 32,000 tokens para terminar una pregunta difícil del benchmark. Es decir, que ese endpo solo puede producir un octavo del razonamiento que la tarea realmente requiere. Y esto es lo que parece un modelo tonto, pero no lo es. Un modelo de razonamiento al que se le corta el pensamiento a la mitad, no se ve truncado y no avisa que se quedó sin espacio. Simplemente deja de razonar y te entrega la respuesta a medio armar

[08:12] que tenga hasta ese momento. Parece tonto y se siente recortado y todo el tiempo los pesos están perfectamente bien. Porque lo que pasó en realidad es que construimos un techo a dos pies de la cabeza del modelo. Nunca revisamos qué tan alto era ese techo y después nos quedamos preguntándonos por qué el modelo anda agachado cuando es el mismo modelo que todos los demás están corriendo a pleno. De los 335 end points, 27 anuncian menos de la mitad de la ventana de contexto del modelo. 19

[08:44] limitan la salida a 16,384 tokens o menos y 26 directamente no pueden llamar herramientas. Esto último es lo que me llevó a ese hilo de Reddit. Ahora esta parte es realmente exasperante y es donde tengo que darle algo de crédito a Open Router y enseguida quitárselo. En octubre del año pasado, Open Router lanzó un modo de enrutamiento llamado Exacto, que enruta las solicitudes con herramientas según qué endoints realmente manejan bien las llamadas a herramientas en lugar de hacerlo solo por precio. Y 5 meses

[09:17] después, en marzo, lo activaron por defecto para toda solicitud que incluya herramientas y lo llamaron autoe exacto. y los números que publicaron junto con el anuncio son la verdadera admisión. Los errores en llamadas a herramientas de GLM5 cayeron un 88% de alrededor del 8% a alrededor del 1% y GPTOSS 120B pasó de una tasa de error del 5,6% al 3,5%.

[09:45] Si leemos ese primer número al revés, antes de marzo de este año, el enrutador por defecto mandaba una de cada 12 llamadas a herramientas de GLM5 a un endpo que simplemente la rompía. Eso no es un problema de cuantización, es un problema de enrutamiento. Y Open Router lo sabía lo suficiente como para arreglarlo, o sea, que sabían que estaba pasando. Pero autoexo solo se aplica a las solicitudes que llevan herramientas y todo lo demás, ya sea chat, escritura, resúmenes, juegos de rol o trabajo con

[10:16] documentos largos, sigue enrutándose por precio. Y según los datos, apenas un 15% de los usuarios incluye herramientas en sus solicitudes. Así que el 85% de las solicitudes sigue pasando por la lotería de que gana el más barato. Y el orden por precio tiene un segundo punto ciego que el investigador Tarún Chitra mapeó en agosto. La fórmula ordena según el precio de lista, ya sea el precio de entrada solo o una mezcla que pondera la entrada en torno a 95 a5 frente a la salida cuando el uso real se parece más

[10:50] a 6 a un. O sea, que ya está ordenando sobre el número equivocado. Después está el precio del caché, que la fórmula ignora por completo. Un agente que envía el mismo prompt de sistema largo en cada turno, que es básicamente todo agente jamás construido, acierta en el caché en las solicitudes repetidas y paga una tarifa por token mucho menor. Y el end point propio de Deepsic tiene una tasa de aciertos de caché del 94,5% mientras que la mayoría de los proveedores de terceros están entre el

[11:20] 51 y el 69%. Entonces el enrutador ve el precio de lista de Deepsic y lo pone décimo cuando la factura real lo pondría primero. Chitra estimó que el valor total extraído por este desajuste, es decir, dinero que los usuarios pagaron sin necesitarlo o cómputo que no recibieron, ronda los 3,5 millones de dólares al año. Y eso es solo por la brecha del precio del caché. Así que el número más barato de la página nunca fue realmente el que aparece al final de la factura.

[11:51] Ahora quiero ser honesto, porque el punto de esto no es decir que la cuantización nunca importa. Sí importa. En un caso específico que encontré y que vale la pena mirar directamente. GLM 5.3, el modelo de Zo AI, se lanza en FP8 y eso es el original confirmado en el repositorio. Así que cuando un proveedor etiqueta GLM 5.3 como FP4, genuinamente degradó algo y 11 de sus 42 ends están etiquetados como FP4 o NBFP4.

[12:23] Y lo ridículo es que el endpoint propio de Z.I cobra $40 por millón de tokens de entrada y 4,40 de salida, mientras que siete de esos 11 endpints de 4 bits cobran 4,40 o más por la salida y uno de ellos cobra 4,84. O sea, que hicieron el recorte y mantuvieron el precio. Y Comprimir liberó casi dos GPUs B200 de Bram por copia y nada de ese ahorro se les trasladó a ustedes. Mientras tanto, Novita sirve el mismo modelo en FP8 completo con mejor calidad y los pesos originales por el 30% de lo que cobra el

[13:01] laboratorio. Pero la ponderación del enrutador empuja el tráfico hacia las versiones comprimidas más caras porque su precio de entrada es apenas menor. Entonces, el descuento existe, simplemente se lo quedó el proveedor y no vos. Ahora, la buena noticia es que arreglar esto realmente no es difícil.

[13:19] Son unas cuatro líneas de Jon en el cuerpo de la solicitud y 5 minutos de lectura. Agregamos un objeto provider a la solicitud y usamos el campo order para listar proveedores específicos que hayamos verificado y en los que confiemos. Y el enrutador deja de hacer la lotería. Después ponemos require parameters and true, de modo que cualquier endpo que no pueda respetar nuestros ajustes, ya sea la semilla, los tokens máximos o las definiciones de herramientas, deje de recibir nuestras

[13:47] solicitudes y fijamos los tokens máximos de forma explícita, porque entonces el enrutador solo considerará proveedores que realmente puedan escribir una respuesta de esa longitud. Si la precisión mínima nos importa, también podemos agregar el campo quantizations y especificar una profundidad de bits mínima, lo que filtra las degradaciones reales en modelos donde el original efectivamente tiene mayor precisión.

[14:12] Pero tené en cuenta que ordenar por precio o usar esos sufijos de piso te deja fuera de autoexacto. Así que mi recomendación es fijar proveedores específicos para el trabajo de caché y chat donde sabés lo que querés y dejar las solicitudes con herramientas en la configuración por defecto con autoe exacto activo. Y lo que ojalá hubiera hecho tres semanas antes, cuando mi automatización andaba mal, es ir a mirar el registro de actividad, porque Open Router guarda qué proveedor sirvió

[14:40] realmente cada solicitud. Está todo ahí, solicitud por solicitud, y casi nadie lo mira. Pero si tuviste una mala respuesta la semana pasada y todavía tenés el ID de sesión, podés averiguar exactamente qué end la manejó y cuánto cobraba y eso probablemente te dé la respuesta más rápido que cualquier hilo de Reddit.

[14:59] Entonces, el titular es falso, pero la frustración es completamente válida. El modelo no fue cuantizado y lo que se ajustó en silencio fue el número sobre el que ordena el enrutador, el techo de contexto que el endpo fijó sin avisar, el comportamiento de las llamadas a herramientas que nadie probó y el precio del caché que nadie tiene en cuenta.

[15:20] Esto es en realidad un problema de agentes disfrazado de problema de chatbot. Si mandas unos cientos de mensajes por mes en una ventana de chat, nada de esto te afecta. Pero para cualquier cosa que corra a volumen, como un pipeline, un agente o cualquier tarea con repetición, la configuración por defecto te está costando calidad y plata al mismo tiempo. Así que dejá de preguntarte si tu modelo fue cuantizado y empezá a preguntarte qué end fue elegido, porque la respuesta está en los

[15:50] registros y ahora ya sabes dónde buscar. Si esto te sirvió, suscríbite porque hago mucho de este tipo de investigación sobre infraestructura de IA que suele quedar escondida en hilos técnicos que nadie lee y deja un comentario si te pasó este problema, porque de verdad quiero saber qué se rompió y de qué end vino. No.
