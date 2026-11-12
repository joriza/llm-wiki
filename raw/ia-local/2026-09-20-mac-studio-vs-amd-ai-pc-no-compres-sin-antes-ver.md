# Mac Studio vs AMD AI PC No Compres Sin Antes Ver Este Video

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=V7eLZRugtSQ)
- **Canal**: CodeSimple
- **Publicado**: 2026-09-20
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 20:44

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Vale, imaginemos esto. Son las 2 de la madrugada. Tenemos un modelo de IA local corriendo en nuestra máquina. Tenemos abierto un proyecto de código enorme, con una ventana de contexto de 15,000 tokens repleta de archivos. Y le damos a enviar en nuestro prompt, y entonces esperamos, y esperamos, y esperamos un poco más, mientras el cursorcito parpadea como si estuviera juzgando personalmente cada decisión que hemos tomado en la vida. Ese era yo hace 6 meses, sentado delante de una máquina

[00:30] que estaba convencido de que iba a cambiarlo todo en mi forma de trabajar. Me había leído todos los benchmarks, había visto todos los vídeos de comparativas, y había hecho eso de abrir 17 pestañas del navegador y sentirme muy listo y muy informado. Así que, tras toda esa investigación, me gasté bastante dinero, una cantidad de dinero genuinamente absurda, en una máquina que pensaba que iba a hacer que la IA local se sintiera como magia. Y en parte lo consiguió. Quiero ser honesto en eso.

[00:59] Pero otras partes me daban ganas de tirar el trasto por la ventana. Nadie me avisó de que la cifra que veía una y otra vez en cada reseña, esa de tokens por segundo que todo el mundo mide y de la que todo el mundo habla, es solo la mitad de la historia, y encima, la mitad menos importante. Así que hoy no voy a hacer otro vídeo de benchmarks. He hecho mis propias cuentas y he convivido con ambas máquinas.

[01:25] Y lo que quiero daros es lo que a mí me habría gustado que alguien me diera antes de gastarme el dinero. Un retrato honesto de cómo son el Mac Studio M5 y las máquinas AMD Ryzen AI Halo cuando las usamos de verdad, cada día, para el trabajo real de IA local, para lo que de verdad necesitamos hacer, y no para un vídeo de YouTube. Entonces, ¿por qué comparar estas dos máquinas justo ahora?

[01:48] Pues porque, por primera vez en mucho tiempo, hay genuinamente dos filosofías distintas compitiendo en el mismo terreno. Y la brecha entre ellas no es la brecha que describen las hojas de especificaciones. Apple acaba de sacar el nuevo Mac Studio y el modelo M5 Ultra mueve 1,2 TB de ancho de banda de memoria por segundo, que es una cifra real y genuinamente una barbaridad. El M5 Max se queda en 614 GB por segundo. Y estas no son cifras de marketing inventadas, están medidas y

[02:21] son reproducibles. Así que, si estamos haciendo el tipo de trabajo de IA, donde el rendimiento bruto de tokens es lo que más importa, Apple ha construido la respuesta. Por otro lado, tenemos el Ryzen AI Max Plus 395 de AMD, que está apareciendo en un montón de equipos distintos, algunos mini PC, el Framework Desktop y otros formatos.

[02:45] Configurados con 128 GB de memoria unificada, estas máquinas rondan los 3,999 dólares. Y el Mac Studio con los mismos 128 GB cuesta 5,399. Así que esa diferencia de 1,400 dólares es la primera cifra que todo el mundo cita. La proporción de ancho de banda, de aproximadamente 2,4 a 1 a favor de Apple, es la segunda cifra que todo el mundo cita. Y luego la mayoría de las comparativas se quedan ahí, como si eso fuera toda la historia. Y de verdad que no lo es. Porque lo que aprendí por las

[03:21] malas es que la IA local no es un solo trabajo. Son dos trabajos completamente distintos que comparten una misma etiqueta de precio. Y en cuanto entendí eso, cambió por completo cómo leo cada una de estas comparativas. Dejadme explicarlo de forma sencilla. Cuando corremos un modelo en local, hay dos fases en cada respuesta. La fase uno se llama preprocesamiento, y ahí es donde el modelo lee todo lo que le hemos enviado, nuestro prompt, los archivos adjuntos, el historial de la

[03:50] conversación, el contexto de la gente, todo. Está haciendo una cantidad masiva de operaciones aritméticas sobre toda esa entrada de golpe. Y esa fase está limitada por cuánto cómputo bruto tiene la GPU. La fase dos se llama decodificación, y ahí es donde el modelo genera de verdad su respuesta, una palabra cada vez, leyendo los pesos del modelo desde la memoria para cada token que produce. Y esa fase está limitada por el ancho de banda de memoria. Ahora bien, el problema es que cada benchmark

[04:21] que hemos visto jamás, cada cifra de tokens por segundo que alguien ha publicado alguna vez, mide la decodificación. Esa es la cifra que aparece en la ficha técnica. Eso es lo que grafican las reseñas, y eso es lo que yo miré cuando hice mi compra. Y la ventaja de ancho de banda de Apple ahí es completamente real. El Mac Studio genuinamente es más rápido decodificando, pero el preprocesamiento es la parte en la que realmente estamos sentados esperando.

[04:49] Y lo que de verdad me dejó pensando fue un conjunto que hizo un desarrollador en un M1 Max, que ni siquiera es una máquina nueva, corriendo un modelo de 35,000 millones de parámetros, donde con unos 655 tokens de contexto, la configuración más rápida producía 57 tokens por segundo en decodificación, lo cual suena genial. Pero de principio a fin, desde que se le daba a enviar hasta que llegaba el último token, la configuración más lenta terminaba antes, porque el preprocesamiento se lo estaba

[05:21] comiendo todo. Y va a peor. Con 8,500 tokens de contexto, que no es nada exagerado si estamos haciendo trabajo real de programación o análisis de documentos, el preprocesamiento suponía el 94% del tiempo total de espera. El 94%, así que la cifra alrededor de la cual me compré una máquina entera era responsable de apenas el 6% de mi experiencia real. Cuando leí eso por primera vez, me quedé recostado en la silla mirando al techo un buen rato, porque había optimizado exactamente lo

[05:53] que no era. Ahora dejadme añadir otra capa, porque aquí es donde se pone realmente interesante. El argumento del ancho de banda a favor del Mac Studio se construye sobre un tipo concreto de modelo, el modelo denso. Y un modelo denso lee cada uno de sus parámetros por cada token que genera. Así que, en un modelo denso de 12.000 millones de parámetros como Gemma 4, sí, el bus de memoria del Mac Studio está cargando con una cantidad enorme de pesos por token y su ventaja es de 2,26 veces. Esa tampoco

[06:24] es una cifra inventada, está medida. Pero fijaos en lo que pasa cuando cambiamos a modelos de mezcla de expertos. GPT-OSS de 120B, que es un modelo de 116.000 millones de parámetros, solo activa unos 5.100 millones de esos parámetros por token y la ventaja del Mac cae a 1,6 veces. Y si miramos en 3.6 de 35B, que dispara unos 3.000 millones de parámetros activos por token, la ventaja se desploma a un 25%.

[06:54] Ese 25% está sentado encima de una diferencia de precio de 1.400 dólares. Y la industria básicamente se ha volcado en esta dirección casi en todas partes. Casi cualquier modelo serio que corramos hoy, de los que de verdad merece la pena correr en 128 gigas de RAM, es de mezcla de expertos. Así que eso no es un nicho, es la corriente principal. Y la ventaja de ancho de banda de Apple se encoge exactamente a medida que el modelo se vuelve más interesante. Y en cuanto al rendimiento de preprocesamiento, que

[07:27] recordemos es la parte en la que realmente estamos esperando, el Mac Studio y la caja de AMD básicamente se intercambian golpes. Y en algunas pruebas vemos a la caja de AMD ligeramente por delante. Así que lo repito con claridad, porque a mí también me costó verlo. En la parte de la IA local que controla la mayor parte de la espera, la máquina 1400 dólares más barata es competitiva o mejor. Y eso no estaba en ninguna de las reseñas que leí antes de comprar. Ahora, quiero ser

[07:56] justo de verdad, porque el lado de AMD en esta historia tiene sus propias complicaciones. Si nos vamos de este vídeo pensando que AMD es simplemente mejor, nos equivocaremos tanto como me equivoqué yo. El Ryzen AI Max Plus 395, sobre el papel, tiene unos 256 GB por segundo de ancho de banda de memoria. En pruebas reales hechas por la comunidad, la cifra real ronda los 212 GB por segundo, que es aproximadamente un 83% de lo prometido. Y eso está bien, es bastante normal, los chips no alcanzan sus

[08:31] máximos teóricos en la práctica. Pero la historia del cómputo es donde las cosas se ponen genuinamente raras, porque la GPU interna tiene un pico teórico de unos 59 teraflops. Y las pruebas encontraron que, sin el conjunto de software adecuado, ese mismo chip entregaba menos de 5 teraflops, menos del 9% de su propio potencial.

[08:53] Básicamente de vacaciones ahí sentado. Y el mismo chip, con la librería correcta, Hip Blast, entregaba 36 teraflops, mismo silicio, misma frecuencia, misma caja, y la diferencia era una librería de álgebra lineal. Así que, en la caja de AMD, no podemos dar por hecho que esa librería viene configurada correctamente de fábrica.

[09:15] Y esta es una máquina donde el conjunto de software importa genuinamente de una manera que en Apple realmente no pasa. Y, en términos prácticos, hay cuatro cambios de configuración, nada de hardware, puramente software, que un desarrollador documentó públicamente y publicó. Corremos sin entorno gráfico, para que el escritorio deje de retener memoria. Subimos la asignación de la GPU desde el valor por defecto hasta casi el máximo. Instalamos un demonio de rendimiento y añadimos una línea a la

[09:45] línea de comandos del kernel. Eso son unos 20 minutos de trabajo bastante aburrido. Y en un modelo de 35.000 millones de parámetros, el rendimiento de preprocesamiento subió un 13%, mientras que en un modelo de 122.000 millones subió alrededor de un 12%, con ganancias adicionales sostenidas en la velocidad de generación.

[10:07] Así que eso es rendimiento gratis y todo viene de configurar la máquina correctamente. Y esa es en realidad la mejora pequeña. La grande es lo que publicó la comunidad de código abierto a principios de este año, cuando un equipo publicó nuevos mecanismos de atención con soporte para esta GPU integrada concreta bajo licencia MIT. Así que en Ken 3.6, con una cuantización típica en una máquina Ryzen AI Max Plus 395 de fábrica, el rendimiento de decodificación se más que duplicó y el

[10:40] de preprocesamiento se más que triplicó. Un prompt de 16.000 tokens con una respuesta de 1.000 tokens pasó de 147 segundos de espera a 58. Y eso no es una mejora de hardware, es simplemente actualizar el software y llegó gratis.

[10:57] Así que esa curva, la curva de mejora por software, es lo que cambia por completo el cálculo para mí. El M5 Max de Apple es más rápido que el M4 Max porque Apple sacó un chip nuevo. La plataforma de AMD se ha vuelto entre dos y tres veces más rápida este año porque los desarrolladores todavía están descubriendo de qué es capaz y solo una de esas dos mejoras fue gratuita.

[11:20] Ahora, el cambio de enfoque que de verdad transformó cómo pienso sobre ambas máquinas es este. La mayoría de las reseñas simplemente miran el modelo más grande que cabe y reportan una cifra. Y lo entiendo, eso da para una comparativa limpia, pero no es así como ninguno de nosotros usaría realmente 128 GB de RAM en el día a día. Entonces, ¿cómo es realmente un flujo de trabajo serio de IA local? No corremos un único monolito de 120.000 millones de parámetros y nos quedamos ahí esperando

[11:51] su respuesta. Lo que corremos es una constelación, un modelo de programación de entre 27.000 y 30.000 millones de parámetros va en el centro como cerebro principal, algo genuinamente bueno que responde rápido y se encarga del trabajo real. A su alrededor tenemos un modelo pequeño de enrutamiento, un modelo pequeño de resumen, un modelo de visión u OCR para cuando lo necesitamos, un modelo pequeño para limpiar resultados de recuperación y quizá uno más para verificar las salidas de las

[12:22] herramientas. Y todos estos son pequeños, así que preprocesan rápido, responden rápido y, precisamente por ser pequeños, varios de ellos pueden correr a la vez. Y esa es la arquitectura que realmente entrega la experiencia que la gente se imagina cuando piensa en IA local. De 30 a 60 tokens por segundo por sesión, con tres o cuatro sesiones corriendo a la vez bajo un orquestador. Así que los 128 GB son, en realidad, lo que permite que todos esos modelos se queden residentes en memoria en lugar de estar

[12:54] constantemente intercambiándose, que es justo lo que de verdad mata un flujo de trabajo. Y eso convierte esta compra en una compra de capacidad, no de ancho de banda. Ambas máquinas pueden ofrecerlo. Ahora, si miramos el consumo, la diferencia es real. El Mac Studio llega hasta 480 W de consumo continuo y la caja de AMD corre todo el conjunto, caja incluida, por debajo de los 100 W en un modelo de 35.000 millones de parámetros.

[13:25] Y alguien midió 46,9 tokens por segundo en un modelo de 120.000 millones de parámetros en la máquina de AMD frente a 13,77 tokens por segundo en una torre con doble 3090 TI, una torre sentada detrás de una fuente de alimentación de 1500 W. Así que, si dejamos una constelación de varios modelos corriendo toda la noche en la caja de AMD, cuesta más o menos lo mismo en electricidad que una bombilla. Mientras que, si dejamos esa misma constelación corriendo a toda máquina en un Mac Studio, nos acercamos

[13:58] más bien a un calefactor. Y la economía de tener IA encendida todo el tiempo es genuinamente distinta entre estas dos plataformas. Ahora tengo que avisaros de algo, porque este es el error que casi cometo yo mismo y he visto a mucha gente en estas comunidades caer en él.

[14:15] El chip Ryzen AI Max Plus 395 viene dentro de toda una gama de equipos distintos a precios muy distintos, mini PC, sobremesas compactos, el Framework Desktop, varias máquinas de otros fabricantes y los más baratos son auténticas trampas. La comunidad lleva meses comparando notas sobre esto. Mini PC baratos concretos venían con el bus de memoria corriendo a mitad de velocidad por decisiones de firmware y los propietarios midieron unos 117 GB por segundo de ancho de banda real

[14:46] frente a los 215 que entrega la plataforma cuando está bien montada. Así que, esa no es una diferencia pequeña. Es la máquina corriendo a la mitad de su capacidad, justo en la métrica en la que se supone que la plataforma de AMD gana. ¿Y podemos ver algo de esto en la ficha del producto?

[15:04] No, porque la ficha no menciona que han limitado el bus de memoria por firmware, solo lo vemos cuando hacemos un benchmark en casa. Otras cajas baratas sí alcanzan el ancho de banda esperado, pero venían con ROCm roto, es decir, lanza un error crítico de memoria en cuanto intentamos usarlo.

[15:22] Y hay un fallo abierto en el propio rastreador de AMD que la actualización de la BIOS no arregló. Así que la gente recurre a otro motor de cómputo distinto y pierde el soporte de atención rápida, que es precisamente lo que hace soportable la inferencia con contexto largo en esta plataforma. Y las cajas que la comunidad reporta consistentemente como funcionando bien cuestan entre 600 y 1000 dólares más que las baratas.

[15:48] Esa diferencia no es margen de nadie engordándose. Esa diferencia es la que separa la máquina que probamos en el benchmark de una simple captura de pantalla de esa máquina. Así que comprad la que sabemos que funciona bien.

[16:01] Minisforum MSS1 Max y Framework Desktop son los nombres que sigo viendo de gente que de verdad está contenta con lo que compró. Y yo pagaría esa diferencia como alguien que estuvo a punto de no hacerlo. Vale, dejadme ser directo sobre quién debería estar en cada lado de esta decisión, porque la sección de comentarios de la mayoría de estos vídeos se calienta demasiado con esto.

[16:24] Comprad el Mac Studio si corréis modelos densos, porque en modelos densos el Mac Studio gana por 2,26 veces y ningún ajuste de software en el lado de AMD va a cerrar esa diferencia. Compradlos si hacéis generación de imagen o trabajo de vídeo, porque la caja de AMD tiene huecos reales en la madurez de sus herramientas de IA creativa. Hay un repositorio de GitHub mantenido por voluntarios que hace gran parte del trabajo pesado en soporte de generación de imágenes y su propia hoja de ruta lo

[16:54] describe como no estable para producción, mientras que el ecosistema de herramientas de Apple está muchísimo más maduro hoy en día. Compradlos si necesitáis más de 128 GB, porque Apple llega hasta 512 GB en el M5 Ultra y ahora mismo no hay equivalente de AMD a ningún precio. Si el trabajo lo requiere de verdad, Apple es el único que lo vende. Y compradlo si esta máquina es también vuestra estación de trabajo, porque en rendimiento de un solo núcleo, rendimiento multinúcleo y velocidad de

[17:25] compilación, el Mac corrió alrededor de un 27% más rápido en un solo núcleo y compiló llama.cpp aproximadamente un tercio más rápido. Si estamos compilando en la máquina, esa es una diferencia real repartida a lo largo de cada hora del día. Ahora, comprad la caja de AMD si ya habéis decidido que necesitáis una máquina local en lugar de nube o cómputo alquilado y estáis corriendo modelos de mezcla de expertos, que es la mayor parte de lo que merece la pena correr en 128 GB de todas formas. Compradla si

[17:58] entendéis que os va a tocar dedicar un sábado a configurarla, si compráis la variante de hardware que sabemos que funciona bien y si os sentís cómodos adoptando una posición de pionero en una plataforma que está mejorando más rápido que cualquier otra cosa que haya visto en este terreno. Y si miramos la curva de software, eso es realmente lo que importa aquí. La mejora de Apple del M4 al M5 es un chip que compramos y la mejora de AMD este año fueron un puñado de actualizaciones de software

[18:27] gratuitas. Así que, si les ponemos precio por año de mejora que nadie pagó, la ecuación de AMD empieza a verse muy distinta. Así que, dejadme deciros dónde he aterrizado yo, personalmente. El Mac Studio M5 es una máquina genuinamente brillante y si Apple dice que es rápida, es que es rápida. No hay discusión posible sobre la ingeniería. Pero por 5399 dólares en la configuración de 128 GB, estamos pagando por un ancho de banda que más importa en nombre de una IA local que nunca fue realmente nuestro

[19:02] cuello de botella. Y estamos pagando por una mejora de chip en una plataforma donde la mejora competidora llega gratis. Y la caja de AMD es más tosca y el ecosistema alrededor es más joven. Así que, si necesitamos generación de imágenes hoy mismo, lo vamos a pasar mal. Y si compramos la variante equivocada de mini PC, también lo vamos a pasar mal. Pero si compramos la máquina correcta, la configuramos bien y luego volvemos a revisar cada cuatro meses para ver qué ha cambiado, estamos

[19:32] en la plataforma más rápida y con mayor margen de mejora. Y nos hemos ahorrado 1,400 dólares. El resumen honesto es que ambas máquinas están construidas para lo mismo, mantener muchos modelos residentes en memoria a la vez y correrlos todos de forma barata durante todo el día, sin ninguna suscripción en la nube. Y esa es la propuesta de valor real de 128 GB de memoria unificada a un precio que una persona normal puede pagar. Ambas máquinas lo cumplen, así que la pregunta real pasa a ser con qué ecosistema

[20:05] queremos crecer. Para mí, la respuesta correcta fue la caja de AMD, bien configurada, con expectativas realistas y disposición a hacer el trabajo de software. Pero el Mac Studio no es una mala compra, es simplemente una más cara que resuelve un problema que puede que no sea nuestro cuello de botella real. Y si este análisis os ha servido, especialmente la parte del preprocesamiento frente a la decodificación, porque de verdad, ojalá alguien me la hubiera explicado a mí hace seis meses, quedaos por nuestro

[20:35] canal. Voy a seguir probando estas máquinas a medida que el software siga mejorando y todavía queda mucho por mejorar. Nos vemos en el próximo vídeo.
