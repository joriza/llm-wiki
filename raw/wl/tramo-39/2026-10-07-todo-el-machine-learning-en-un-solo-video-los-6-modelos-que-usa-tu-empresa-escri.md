# Todo el machine learning en un solo video: los 6 modelos que usa tu empresa, escritos en Python

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=n_lfGiKs3qQ)
- **Canal**: Código Espinoza - IA y Machine Learning
- **Publicado**: 2026-10-07
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:47

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Estos seis archivos son todo el machine learning que usa tu empresa, no hay 200 algoritmos, hay seis que resuelven la gran mayoría de los problemas reales, predecir un número, clasificar, agrupar, detectar raro, recomendar y pronosticar.

[00:12] Cada uno cabe en una pantalla, al final sabrás cuál usar sin haber visto una sola fórmula. Pero hay una trampa y la vas a ver con tus propios ojos. Estos seis archivos corren, dan números bonitos y aún así te pueden mentir. ¿Te enseño cómo se nota? Primero el mapa, seis modelos, seis preguntas de negocio.

[00:28] Uno, regresión, ¿cuánto vamos a vender? La respuesta es un número. Dos, clasificación, ¿quién se va a ir? Sale una etiqueta, se queda o se va. Tres, clustering, sale una lista de grupos que nadie te dio, ¿qué tipos de clientes tengo? Cuatro, detección de anomalías, ¿qué factura está rara? Te avisa con una alerta. Cinco, recomendación, ¿qué sugerirle a este cliente? Devuelve una lista corta de productos. Seis, series de tiempo, ¿cuánto vamos a vender en diciembre? Sale un número, pero con

[00:53] calendario. Fíjate en algo, ninguno de los seis dice inteligencia artificial en su pregunta. Todos hacen lo mismo con distinto disfraz. Miran el pasado y proponen algo sobre lo que todavía no pasó y usan las mismas herramientas de siempre, pandas para los datos y scikit-learn para el modelo. Solo el sexto pide una librería extra, se llama statsmodels. Una precisión de alcance, hablo del machine learning clásico, el de las tablas de datos. Imágenes, audio y texto los dejo para el final. Una

[01:18] aclaración honesta, una sola vez, los datos de estos ejemplos son sintéticos. Los generé yo con una semilla fija para que a ti te den los mismos números. No son de ninguna empresa. Las métricas que voy a decir son reales, salieron de correr cada archivo, pero valen para ese dato inventado. En tu empresa van a salir otras y entender por qué es la mitad del vídeo. Empecemos por el más viejo y el más usado de todos. Modelo uno, regresión lineal. En la encuesta de Kaggle del año 2020, entre los

[01:45] científicos de datos con empleo, la mayoría decía usar la regresión lineal o logística. El modelo más aburrido de la lista es el más usado y en un minuto te cuento por qué. El caso, una tienda quiere saber cuánto va a vender según lo que gaste en publicidad y las visitas que recibe. La línea nueve es el mundo inventado. Cada unidad de publicidad vale 40 ventas. Cada visita vale media venta más ruido. El modelo no lo sabe.

[02:07] Tiene que descubrirlo. Dos líneas. La primera esconde el 20% de los datos. La segunda, la 13, aprende con el resto. Esa palabra fit, ajustar, es el verbo principal de todo el vídeo. Casi todos los modelos hacen fit y después predict y los que no hacen algo muy parecido.

[02:23] Ahora el resultado. R cuadrado de 0, 97. En español de oficina, el modelo explica el 97% de por qué cambian las ventas. Error medio de 20 unidades. Las líneas 18 y 19 lo confirman. Encontró 40,9 por cada unidad de publicidad y 0,49 por cada visita. Los reales eran 40 y media.

[02:41] Casi exacto. Traducido a negocio. Cada punto más de publicidad nos trae unas 40 ventas más. Esa frase sí se la puedes decir a tu jefe y ese es el verdadero entregable. Y ahí está por qué la más aburrida es la más usada. Su resultado cabe en una frase. Y hay un uso más que se aprovecha poco. Puedes preguntarle al modelo, ¿qué pasa si mañana subes la publicidad en tres unidades? Sumas 3 por 40. Unas 120 ventas más. Es una simulación de escritorio gratis antes de gastar un solo dólar. Eso sí, con una

[03:10] advertencia. Solo vale dentro del rango que el modelo vio. Si nunca gastaste más de 10, no le preguntes por 100. Pero ojo, todo esto funciona porque yo inventé una relación en línea recta. Si tus ventas explotan en diciembre o chocan con el tope de inventario, la línea recta falla y no avisa. Guarda esa idea porque vuelve. Modelo dos.

[03:28] Clasificación. Misma estructura. Otra pregunta. ¿Este cliente se va a ir o se queda? Un bosque aleatorio o random forest son 200 árboles de decisión que votan. Cada árbol es una cadena de pregunta tipo, ¿tiene más de tres reclamos? ¿Lleva menos de un año?

[03:42] Ninguno es muy listo. El voto de 200 sí. Suprimo el gradient boosting que se ve mucho en los concursos. Funciona parecido para lo que hacemos aquí. Y aquí la trampa número uno. La línea 19 dice exactitud 82%. Suena buenísimo, pero la línea 18 cuenta otra historia.

[03:58] El 41% de los clientes se van. Eso significa que un modelo tonto que siempre responda "se queda", acierta casi seis de cada 10 veces sin aprender nada. Así que el 82 ya no impresiona tanto. Lo que le importa a tu empresa está en la línea 21. Recall de 75%. De cada cuatro clientes que sí se iban, el modelo atrapó tres. El cuarto se fue sin aviso. Y la precisión 80% dice que a uno de cada cinco al que le mandas el descuento de retención no se pensaba ir y te lo regalaste. Entonces, ¿cuál oro

[04:28] cuál número manda? Depende de cuánto cuesta cada error. Regalar un descuento cuesta poco, perder un cliente cuesta mucho. Si tu empresa prefiere molestar de más antes que perder uno, miras el recall. Esa decisión te toca a ti. Una última cosa del dos. En la línea 22 el modelo te dice qué pesa más. Uso mensual 40%. Reclamos 36, antigüedad 24. Eso es lo que le interesa a un gerente. Pesa más cuánto usan el producto que cuántos reclamos hacen. Hasta aquí en los dos modelos había una respuesta correcta

[04:55] guardada. Y con ella podíamos medir al modelo. En los dos siguientes esa respuesta no existe. Sin nota, ¿quién te dice si el modelo estudió bien? Modelo tres. Clustering, agrupar. Aquí no hay etiqueta, solo una tabla de clientes con cuántas veces compraron al año y cuánto gastan. Y una orden. Encuéntrame grupos.

[05:11] K-means, le dices cuántos grupos quieres, tres, y él pone tres centros. Asigna cada cliente al centro más cercano, mueve los centros y repite hasta que dejan de moverse. Nada más. Ojo con la línea 11. El Standard Scaler pone todas las columnas en la misma escala. Los tres grupos gastan en promedio 30, 60 y 400 dólares y compran dos, ocho y 20 veces al año. Sin escalar, el gasto aplastaría a las compras y el modelo solo vería dinero.

[05:35] Es uno de los errores más comunes del clustering y se arregla con una línea. El resultado, tres segmentos de unos 200 clientes. Los que compran dos veces al año y gastan 30 dólares. Los de ocho compras y 60 y los de 20 compras y 400.

[05:47] Ya tienes un plan de marketing distinto para cada uno. Y ahí pasó algo, nadie le dijo al modelo que es un cliente ocasional, uno regular o uno grande. Los encontró solo y los tres se leen en un segundo. Pocos y baratos, medios y pocos pero enormes. Un grupo así es justo el que nadie quiere perder. Por eso este modelo suele ser el primero que un gerente de marketing entiende. Pero el modelo tres tiene el fallo más traicionero de los seis. Las líneas 17 y 18 repiten el clustering con dos, cinco

[06:14] y ocho grupos y miren qué tan separados quedan. Con tres grupos, 0,74. Con dos, 0,82. Con dos sale mejor, o sea, el número dice que sobra un grupo pero yo sé que hay tres porque yo los fabriqué. Con cinco baja a 0,50, con ocho a 0,46.

[06:30] Y en todos los casos el código corre sin error y te entrega grupos con nombre y todo. Esto es lo que quiero que te lleves del clustering. El modelo siempre te devuelve el número de grupos que pediste, siempre. Que esos grupos existan en tu negocio no lo dice el código, lo dice alguien que conozca a los clientes. Modelo cuatro, anomalías.

[06:46] La pregunta, de mil facturas, cuál huele mal. Mil facturas normales de unos 500 dólares y cinco que puse a propósito. 4800 por un solo ítem, 90 dólares por 40 ítems. Cosas así. Isolation Forest, la idea es tan simple que da rabia. Si cortas los datos con líneas al azar, un punto raro queda solo en pocos cortes y uno normal necesita muchos. El que queda aislado rápido es la anomalía. El resultado, cinco de cinco atrapadas.

[07:12] Perfecto. La línea 15 dice que no, seis falsas alarmas. Marcó 11 facturas y solo cinco eran de verdad. Una de las falsas era de 62 dólares, la más barata de las mil normales que simplemente estaba en la cola de la distribución. Y aquí hay algo que se cuenta poco, el parámetro contamination vale 0,01. Le dije al modelo, marca el 1% y marcó el 1%. Si mis datos no tuvieran ni una factura rara igual me habría entregado 10. Tú decides cuántas alertas quieres recibir.

[07:40] El fraude no decide nada. Y ya que estamos, un consejo práctico para los dos, cuando un modelo te devuelve una alerta o un grupo, la pregunta útil no es, ¿está bien? La pregunta útil es, ¿qué le enseño a alguien que conoce el negocio para que me diga si esto tiene sentido?

[07:54] El mejor uso del clustering y de las anomalías es darle a una persona una lista corta y ordenada, no reemplazarla. Fíjate que tienen en común el tres y el cuatro, los dos entregan un resultado con total seguridad y sin nadie que los corrija, por eso los dos que faltan me preocupan más. En uno el error se esconde en un cliente que no existe todavía y en el otro en una fecha que aún no llega. Y aquí viene el giro, mientras corría estos seis archivos me di cuenta de algo incómodo, en ninguno,

[08:18] ni uno, el modelo fue la parte difícil. Cada archivo mide entre 17 y 28 líneas. Lo difícil siempre estuvo antes y después. le haces? ¿Qué error te puedes permitir? ¿Y quién revisa que el resultado no te esté mintiendo con cara de seguridad? Ahora sí, modelo cinco, recomendación, un cliente compró el producto cero y el uno, ¿qué le sugiero?

[08:35] Aquí ni siquiera hay un modelo de scikit-learn y ese es el punto. La línea 12 calcula qué tan parecidos son dos productos que los compró, si los mismos clientes compran el uno y el dos, se parecen. La función de abajo suma esos parecidos para lo que el cliente ya tiene y ofrece lo que puntúa más alto.

[08:49] Es el quiénes compraron esto también compraron de cualquier tienda en seis líneas. Para el cliente cero sugirió el producto dos y el cuatro. El dos sí tiene sentido, lo compran los mismos clientes que el cero y el uno. El cuatro es relleno, no había nada mejor. Para saber si sirve en general, escondí una compra real y vi si la recuperaba entre las tres primeras sugerencias. Lo hice con 218 clientes y aquí te confieso algo. Mi primera versión calculaba los parecidos con todos los datos, incluida

[09:14] la compra escondida. Era espiar la respuesta y daba 87%, recalculando todo sin la compra escondida acierta el 82. Esa es la prueba que deberías pedirle a cualquiera que te venda un recomendador y pídele también que no haga trampa. Su punto ciego es feo, el cliente nuevo.

[09:28] Sin historial no hay nada que sumar, le llaman arranque en frío. Tu recomendador brilla con clientes viejos y no hace nada por el que llegó hoy. La salida de los que trabajan con esto es poco glamurosa. Para el cliente nuevo recomiendas lo más vendido y esperas a que compre algo. Al segundo pedido el recomendador ya despierta. Es una regla de respaldo y no pasa nada por reconocerlo.

[09:47] Modelo seis. Series de tiempo. Diciembre en la línea nueve no mezclé los datos al azar como en los otros. Corté por fecha. Tres años para aprender, el cuarto escondido. Porque si mezclas el modelo espía el futuro y te sale un resultado precioso que en la vida real no se repite. Es un error clásico en series de tiempo. La línea 10 le dice tres cosas. Hay tendencia, las ventas suben con los meses. Hay estacionalidad, cada 12 meses el patrón se repite. Y es multiplicativa, diciembre no suma una

[10:16] cantidad fija, multiplica lo normal. Resultado, línea 13. Error medio de 1,7% en los 12 meses. Y diciembre, el mes que importa. Real 2.353. Pronóstico 2.382. Casi clavado. En una oficina un pronóstico de diciembre decide cuánto stock pides en septiembre.

[10:34] El valor está en la fecha en que te lo dan más que en el número. Un pronóstico perfecto que llega en diciembre no sirve de nada. No celebres todavía. Ese 1,7 es tan bueno porque yo escribí una serie limpia con un patrón de manual. Una serie real trae un año de pandemia, una promoción que nadie anotó, un cambio de precio. Ante eso el modelo sigue trabajando y sigue dándote un número con decimales. Entonces más que un séptimo modelo lo que falta es una forma de elegir. Y la tengo en cuatro preguntas.

[10:59] Pero primero los archivos. Los seis scripts con datos de ejemplo están en Patreon público. Vamos con lo prometido. Con esto ya puedes decidir por dónde empezar. Cuatro preguntas en este orden. Pregunta uno, ¿tengo la respuesta en el pasado? Es decir, ¿existe una columna que dice "se fue, compró o vendió tanto"? Si la hay vas por el lado supervisado, regresión o clasificación.

[11:18] Si no la tienes y solo quieres entender qué hay en los datos vas por clustering o anomalías. Pregunta dos, si la tienes, ¿lo que quiero predecir es un número o una categoría? ¿Cuánto es regresión, sí o no? ¿O cuál de estas es clasificación?

[11:30] Cinco segundos y listo. Importa porque cada tipo se mide distinto, el número con un error medio, la categoría con aciertos y fallos y mezclarlos es la forma más rápida de confundirte. Pregunta tres, ¿hay calendario? Si el orden de las filas importa, si mañana depende de ayer, tienes una serie de tiempo y la regla que te salva, nunca mezcles esos datos al azar. Pregunta cuatro, ¿el objetivo es sugerir? Si lo que sale es una lista de cosas para esta persona y no un número, es recomendación. Y hay una pregunta cero,

[11:56] la más importante, que va antes de las cuatro. ¿Alguien va a hacer algo distinto con la respuesta? Si el modelo predice que se van 40 clientes y nadie llama a ninguno, fue un adorno caro. Mi opinión, sin adorno, la mayoría de los proyectos de machine learning fallan porque nadie decidió qué hacer con el resultado. Ahora, el otro lado, cuándo no usar nada de esto. Son tres casos, uno, cuando una regla lo resuelve, si la factura pasa de 10,000 dólares, revísala. Eso es un if, no necesita un

[12:21] bosque de aislamiento y en un momento te muestro con mis propias facturas que a veces le gana. Dos, cuando tienes 40 filas, con tan pocos datos, el modelo memoriza en vez de aprender, un promedio bien pensado le gana. Tres, cuando el dato no es una tabla, sino texto, correos, reclamos, contratos, conversaciones, ahí toca un modelo de lenguaje y ya no uno de los seis. Un modelo de lenguaje clasifica un reclamo en las categorías que quieras sin entrenar nada, pero si la pregunta es,

[12:45] ¿cuánto vamos a vender en diciembre? Usado solo, sin conectarlo a una tabla, es la herramienta equivocada y más cara, la regla queda corta. Números en una tabla, los seis, texto libre, un modelo de lenguaje y si la regla es clara, ni eso, un if. Pero elegir bien el modelo es solo un paso. El siguiente es no creerle de más. Si te llevas una sola herramienta de todo el video, que sea esta, tres pruebas, las tres ya las viste, solo que sueltas. Prueba uno, ¿contra qué me comparo? Recuerda el

[13:10] modelo dos y su 82%, sin la línea base, ese número no significa nada. El 41% de los clientes ya se iba y un modelo tonto acertaba casi seis de cada 10. Antes de aplaudir cualquier resultado, pregunta cuánto saca lo más tonto posible.

[13:24] Siempre existe algo más tonto, repetir el mes pasado, decir siempre se queda, predecir el promedio. Si tu modelo no le gana claramente a eso, es un gasto con nombre técnico. Te lo demuestro con mis propios archivos. Al recomendador que acierta cuatro de cada cinco, le puse enfrente lo más tonto. Sugerirle a todos los tres productos más vendidos, acertó casi 39 de cada 100. Ahí el modelo gana con claridad. A las series de tiempo les puse enfrente repetir el mismo mes del año anterior. Ese truco de una línea se

[13:48] equivoca en promedio 9,3% contra el 1,7 del modelo. En diciembre predice 2100 64 contra 2353 reales. Otra vez gana el modelo y a las facturas les puse una regla de una línea, monto sobre 1500 o más de 20 ítems. Atrapó las cinco raras con cero falsas alarmas.

[14:08] El bosque tuvo seis. Aquí lo más tonto le ganó al modelo. Y sí, la escribí sabiendo cuáles eran las raras. Así que es trampa a medias. La regla solo ve lo que ya conoces y el bosque puede atrapar lo que no imaginaste. Pero hoy esa diferencia vale seis revisiones de facturas sanas.

[14:23] Prueba dos. Lo probé con datos que no vio. Regresión, el 20% escondido en la línea 12. Series, el último año entero. Recomendador, una compra y recalculé todo sin ella. Es la misma idea tres veces. Si evalúas con los mismos datos con los que aprendió, el modelo saca casi 100% y no prueba nada. Es como tomar un examen con las respuestas.

[14:41] Sacas 10 y no aprendiste nada. Prueba tres. ¿Cuánto cuesta equivocarme y en qué dirección? Del modelo dos aprendimos que perder un cliente cuesta más que regalar un descuento. Del cuatro, que cada falsa alarma es una persona revisando una factura normal. Cada error tiene precio y el modelo no lo conoce.

[14:57] Tú, sí. Por eso esta prueba se hace con quien vive el problema, no solo con quien programa. Esas tres pruebas caben en una hoja. Con ellas, cuando un proveedor te muestra un 95% de exactitud, ya sabes qué preguntarle. ¿Contra qué? ¿Sobre qué datos? ¿Y con qué costo de error? Mi archivo de menos de 20 líneas atrapó cinco facturas raras y avisó de seis sanas porque yo le pedí el 1%. Pero conocer las tres pruebas y usarlas con el jefe al lado son cosas distintas. Así que probemos el árbol con

[15:22] cuatro frases que se oyen en cualquier oficina. ¿Qué modelo pedirías en cada una? Sin código. Caso uno, quiero saber cuánto stock pedir el próximo trimestre. Tienes el pasado, ventas por mes y lo que buscas es un número con calendario fuerte. Es el modelo seis, series de tiempo. La regresión simple te fallaría justo en las fechas que más duelen. Caso dos, quiero saber a quién llamar antes de que cancele. Tienes quién canceló y la respuesta es sí o no. Es el modelo dos, clasificación. Y ya sabes qué

[15:47] mirar, el recall, no solo la exactitud, porque perder a un cliente sale más llamarle de más. Caso tres, tengo 3,000 clientes y no sé cómo hablarles. La respuesta no está en el pasado, hay que descubrirla. Es el modelo tres, clustering. Pide el número de grupos y pídele a alguien que conozca al cliente que los nombre. Por eso el último paso lo da una persona, no el código. Caso cuatro, me llegan miles de facturas y no puedo revisarlas todas. Nadie te dio la etiqueta de cuáles son fraude, es el

[16:12] modelo cuatro, anomalías. Y decides cuántas alertas caben en el tiempo de tu equipo antes de tocar el parámetro. Si no, el modelo te llena la bandeja de alertas y nadie las lee. Y a la tercera semana ya ni las abren. Todo esto fue con tablas. Y ahí scikit-learn es lo más corto. Con una imagen, un audio o un texto largo, scikit-learn ya no alcanza.

[16:30] Y la pregunta pasa de qué modelo a qué herramienta. TensorFlow, PyTorch o pagarle a una API para no entrenar nada. Elegir mal aquí te cuesta semanas. Por eso, antes de escribir una sola línea, hazte una pregunta. ¿Tu dato cabe en una tabla? Y si tu duda es con qué herramienta hacerlo, TensorFlow, PyTorch o una API, lo resolví aquí.
