# Por qué dejamos las STEP DOWN y STEP UP

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=7A3c34Nn_Ic)
- **Canal**: TR3BOL ARGENTINA
- **Publicado**: 2026-08-27
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Alimentaste un step up de fábrica y se te quemó? No sos el único. Este tipo de módulos tienen grandes defectos. Entre ellos, el mal ruteo, los márgenes insuficientes, pistas demasiado finas y referencias inestables. Pero, sobre todo, y la más importante para nosotros, una mala disipación. Hemos visto fracasar muchísimos proyectos por no prestarle atención a la alimentación e ir por el camino fácil, el del módulo listo para usar.

[00:34] Soy Wa, fundadora y CEO de Trébol Argentina. Con más de 700 desarrollos implementados en industria, certificados por normas IPC y CID, déjame que te cuente que todo lo que vas a ver en nuestro canal y en cada uno de nuestros videos ha sido testeado, probado y validado, no solo en nuestro laboratorio e instalaciones, sino también en campo e industria. Y hemos visto este caso muchísimas veces con un montón de clientes que tienen muchísimo conocimiento de su producto, pero les falta esa parte, la del diseño de

[01:10] hardware. Y es ahí donde nosotros, los diseñadores, podemos aportar muchísima experiencia y valor. En este video te vamos a explicar por qué razón los módulos comerciales step up y step down tienen tantas fallas y los beneficios de que pases de los módulos comerciales a un diseño personalizado. Pero, si aún no lo has hecho, te invito a suscribirte a nuestro canal para que no te pierdas de ningún contenido que tenemos para vos.

[01:44] Vayamos ahora a recordar un poco las definiciones de la step down y la step up. Una step down o buck converter es un conversor DC-DC que reduce la tensión de forma eficiente. A diferencia de un regulador lineal que quema el excedente en forma de calor. La step down conmuta y transforma esa energía sobrante en corriente con eficiencias que rondan de hasta un 90%. El corazón de la mayoría de las step down comerciales que vas a encontrar en el mercado es el LM2596.

[02:23] Un clásico probado con muchísima documentación. El módulo de la izquierda que ves en la imagen es el clásico de 3 A. También vas a encontrar módulos basados en el XL4015. Otro integrado muy utilizado sobre todo en versiones con mayor corriente. Es el módulo de la derecha que es el clásico de 5 A.

[02:46] La contraparte de la step down es la step up o boost converter. La diferencia es que eleva la tensión en vez de bajarla. Y el integrado más común en los módulos comerciales que vas a encontrar es el MT3608. Switching de alta frecuencia alrededor de 1.2 MHz. Lo que permite usar inductores más chicos y switches más eficientes. Pero el MT3608 tiene algunas particularidades de diseño que debes tener en cuenta. Por lo que te recomendamos evitarlo o analizarlo con mucho cuidado.

[03:26] No vamos a entrar hoy en una comparativa técnica de step down versus step up porque no es de lo que va este vídeo ni tampoco entre los modelos específicos de los chips que contienen. Pero sí queremos que sepas que hay varias alternativas y que la elección del chip es importante pero no lo es todo. Aún más importante es el diseño de hardware y la disipación de ese calor. Mira esta imagen real, es una medición con un osciloscopio en la salida de una step down comercial bajo carga. Como verás,

[04:02] no es una salida limpia y estable, es una montaña rusa, un ripple o rizado de mediana frecuencia con ruido de alta frecuencia montado. Y acá viene el punto que más nos interesa que te lleves. Eficiencia no es lo mismo que robustez, este mismo módulo puede tener una eficiencia de conversión del 90% o más, el número que todos miramos en la etiqueta y al mismo tiempo entregar una salida que está totalmente lejos de ser una fuente limpia. Son dos cosas completamente distintas. Una mide cuánta

[04:42] energía se pierde en el proceso, la otra mide qué tan estable y confiable es lo que estás entregando al resto del circuito. Y por ningún punto de vista podemos introducir este ruido de alta frecuencia aguas abajo de nuestro circuito, especialmente si hay microcontroladores de por medio. Un ADC leyendo una señal de sensor con este ruido superpuesto en su alimentación te va a dar mediciones erráticas. Un microcontrolador con una referencia de tensión contaminada se puede resetear. Y

[05:17] lo peor es que estas fallas pueden ser intermitentes, por lo tanto, no siempre las vas a identificar al principio. Un ejemplo muy común es cuando aumenta el consumo de tu microcontrolador cuando intenta conectarse a Wi-Fi. Y ahí es donde terminamos buscando el problema en el software durante días, cuando en realidad todo viene en la alimentación.

[05:41] Por eso, cuando diseñamos una etapa de alimentación a medida, el filtrado y el layout de potencia no son cosas que se van a agregar al final, son parte del cálculo que se realizan desde el primer instante. Vayamos ahora con algunas aplicaciones industriales. La aplicación típica que nosotros utilizamos en campo y en industria para la step up es partiendo de una batería de litio de 3.7 V, elevar la tensión a 5 V CC para luego nuevamente en otra etapa llevarla a 3.3 V para alimentar nuestro

[06:16] microcontrolador. La alimentación del microcontrolador siempre a 3.3 V limpios y estables independientemente de la carga de la batería. Además de esta etapa agregamos un selector inteligente con MOSFET para elegir entre batería y cable USB externo y además gestionar la carga de la batería.

[06:40] En el caso de las step down, una de las aplicaciones principales en campo y en industria que solíamos utilizar es la siguiente, partir de 24 V CC industriales con protección contra alimentación invertida y la estrategia más eficiente para obtener 3.3 y 5 V para tu microcontrolador. De esta manera puedes alimentar sensores industriales típicos como los 4-20 mA entre otros con la mayor eficiencia, precisión, robustez y seguridad. Y al microcontrolador no le afecta nada de lo que ocurre alrededor

[07:14] con una combinación de buenas prácticas de programación embebida y diseño óptimo. Si analizamos más en detalle los esquemáticos típicos comerciales y vamos al datasheet de los integrados típicos de estos módulos, vas a ver que existen principalmente dos variantes, uno de salida fija, este es el menos habitual en los módulos comerciales y luego tenemos una salida configurable. Aquí la tensión de salida es independiente a la tensión de entrada, proporcional a la tensión de referencia, donde en este

[07:51] modelo es de 1.23 V y a la relación entre R2 y R1. Por lo tanto, la gran mayoría de las placas comerciales se basan en este esquemático y traen un potenciómetro multivolta que ajusta ese mismo divisor resistivo. A simple vista parece una ventaja tener la versión ajustable. En la práctica es uno de los puntos débiles del módulo, sobre todo si siempre lo regulas al mismo valor. No tiene sentido que esté atado a un punto que depende de una posición física, que se puede mover por vibración

[08:28] o variar por la temperatura. Mejor elegir resistencias exactas, calculadas por una tensión de salida objetivo, de alta precisión y baja variación con la temperatura. Dicho esto, vamos a repasar los distintos problemas típicos de estos módulos comerciales con foco en lo que realmente importa. Como nos gusta a nosotros, enfocarnos en el resultado.

[08:54] Por cierto, si te está gustando este vídeo y te está aportando valor, no olvides de suscribirte a nuestro canal porque vamos a estar subiendo muchísima, muchísima información, proyectos, casos de éxito y por supuesto, si crees que toda esta información es de mucha utilidad, no dejes de compartirla con todas aquellas personas que les puede ser de mucho valor. Veamos los defectos típicos. El primero, mal ruteo. Las pistas de potencia, donde circula la corriente de conmutación, muchas veces

[09:27] están trazadas sin criterio de retorno de corriente, generando lazos grandes que radian ruido e interferencia hacia el resto de tu circuito. Segundo, márgenes insuficientes. Pistas y pads al límite de lo que permite la norma IPC, sin margen de seguridad para atención ni para el proceso de fabricación. Algo que en un lote de producción se traduce en fallas intermitentes.

[09:55] Tercero, pistas mal diseñadas. El ancho de pista no siempre está calculado para la corriente que va a circular, generando calentamientos innecesarios en las propias pistas, además del componente. Cuarto, los chips clonados.

[10:12] A todos nos enchufaron una step down con un chip trucho. El módulo se ve idéntico. El precio es más barato, pero el silicio que está dentro no es el mismo. Muy probablemente con protecciones térmicas y de corriente que pueden no coincidir con el datasheet original. Y en quinto lugar, y por último, y el más importante para nosotros, es el de la disipación insuficiente. Esto es lo que va a determinar si tu circuito sobrevive a un sobrepico de corriente, una carga inesperada o un cortocircuito

[10:49] accidental. Y acá quiero traerte una síntesis de algo que ya mostramos en otro vídeo, donde comparamos una step down comercial versus un diseño nuestro a medida. En este experimento que realizamos en el vídeo, pudimos observar que el ripple se multiplicaba tan solo con cargas muy muy pequeñitas. Luego hicimos la prueba.

[11:16] Forzamos un cortocircuito en una step down comercial. Podemos notar que el chip tiene protección térmica cíclica, es decir, frena, reintenta, frena, reintenta. Pero si el cortocircuito se sostiene el tiempo suficiente, el calor generado en un layout con mala disipación térmica no tiene por dónde escapar y el chip se quema. Literalmente deja de funcionar incluso en vacío.

[11:46] Repetimos exactamente el mismo experimento en un diseño propio con un mismo chip, pero con pads térmicos, áreas de disipación de GND y vías térmicas llevando el calor a ambas caras de la PCB. Además de todas las prácticas IPC que te enseñamos a implementar en nuestros cursos. El resultado, obtuvimos una recuperación inmediata en todos los casos y el ripple de salida notablemente mejor. 60 mV contra 140 mV del módulo comercial en igualdad de condiciones. Si querés ver el experimento completo con

[12:24] todas las mediciones, te dejamos el link por acá arriba. Otro problema importante que tienen este tipo de módulos son las referencias inestables. El potenciómetro multivueltas que regula la tensión de salida literalmente es un componente mecánico expuesto tanto a la vibración, a la humedad, al que alguien lo toque sin querer en cualquier momento, además de su alta variación con la temperatura.

[12:54] En un producto que se instala en planta y no se vuelve a tocar en años es un riesgo que, por supuesto, no deberías estar tomando. Por supuesto, la solución es llevar adelante un diseño a medida. En Trébol, cuando diseñamos una etapa de step down para producción en campo o en industria, lo primero que hacemos es fijar la tensión de salida por diseño, sin potenciómetro. Elegimos el chip original, calculamos el ancho de pista según la corriente real que va a circular, respetamos los márgenes según

[13:29] norma IPC y diseñamos el plano de disipación pensado en la peor condición de todas, no en un caso ideal de laboratorio. Eso es lo que separa un producto que funciona en tu escritorio o en un banco de laboratorio de uno que realmente va a funcionar en campo bajo condiciones adversas y variables todos los días durante años y años.

[13:57] Como hemos visto en este vídeo tanto la step up como la step down comparten los mismos puntos débiles que mencionamos y en estos dos casos la solución es la misma, realizar un diseño a medida con el chip correcto para tu aplicación y las normas IPC aplicadas desde el principio. Esto no es teoría de manual, es lo que hacemos nosotros todos los días en Trebola Argentina y además lo enseñamos tanto en nuestros cursos diseño de PCB esencial como diseño de PCB avanzado, donde vas a aprender a

[14:30] tomar estas mismas decisiones, a desarrollar habilidad y criterio y poder llevártelo a tu terreno, a todos tus proyectos para llevarlos al siguiente nivel y lo mejor con el método del rompecabezas que te explicamos en el curso puedes añadir este bloque a tus diseños para adaptarlo a las diferentes aplicaciones industriales, donde unimos lo mejor de los dos mundos switching y lineal para la mejor eficiencia y robustez de todos tus circuitos. Si te ha gustado este contenido déjamelo saber

[15:03] en los comentarios y por supuesto no dejes de compartir este vídeo con todas aquellas personas a las cuales crees que les puede ayudar esta información de valor. Nos vemos en los próximos vídeos. Chao chao.
