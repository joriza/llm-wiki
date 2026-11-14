# Analizando Fuentes en Tcon I parte

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IJ4rSOYc2Vk)
- **Canal**: Fredy Restrepo
- **Publicado**: 2017-12-09
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 18:26

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:03] vamos a empezar hoy mirando las fuentes que hay dentro de una tarjeta t con esta es una t con samsung l 32 b 5 51 a 6 w es el modelo del televisor en esta tarjeta podemos observar fácilmente y de manera panorámica que tenemos un conector de entrada viene de la tarjeta principal y dos conectores de salida que van para el panel en el intermedio hay esencialmente tres etapas una la de proceso de señal que está hecha con este integrado a 112 401 s integrado transforma la señal que recibe de la

[01:23] tarjeta principal para enviarla hacia la pantalla 2 esta zona de la izquierda tiene dos bobinas aquí podemos ver un elemento típico de regulación lineal y tiene un integrado esta zona comprende la fuente y es nuestro tema central en el abordaje de esta tarjeta esa fuente convierte un voltaje de entrada único en varios voltajes necesarios para operar tanto la tarjeta t con como para manejar los voltajes propios del panel y lograr escribir en él de manera inteligible una imagen

[02:33] la tercera zona a la derecha protagonizada por este integrado s integrado es encargado de la corrección gamma esencialmente y en palabras sencillas esté integrado se encarga de hacer que la pantalla entregue el color de la manera más apropiada a los estándares que nosotros estamos acostumbrados a ver en un televisor entonces no va a entregar azul rojo o verde simplemente va a entregar un azul de cierta tonalidad que combinado con los respectivos rojo y verde van a extraer de la pantalla la

[03:37] mejor presentación de color posible entonces ahí están esas tres etapas esenciales por aquí a la derecha en la parte inferior tenemos otra pequeña zona que se intuye fácilmente está relacionada con fuente puesto que tiene diodo bobina integrado y varios condensadores que son de buena capacitancia y sirven de filtro entonces vamos a centrarnos en cómo es dentro de esta tarjeta se desarrollan las fuentes y cuánto debe haber de manera general para cualquier panel y más o menos que hace cada fuente

[04:39] para complementar de una manera eficiente ese abordaje nos hemos conseguido el diagrama de esta tarjeta t con entonces aquí en esta primera hoja de 4 podemos observar que hay los conectores esenciales de entrada y salidas de señal en el centro está ubicado un bloque que caracteriza el proceso hecho por el integrado que maneja la señal y la convierte de manera apropiada para la pantalla vamos a la segunda hoja aquí tenemos la parte de fuentes y entonces están el bloque de integrados

[05:47] de la izquierda presidido por este integrado que es el v de 81 60 efe v s integrado entonces se encarga de sacar varias fuentes ya en seguida pasamos a describirlas y el integrado de la parte derecha de la tarjeta que habíamos visto al final de la descripción de bloques también está en esta zona del diagrama en esta tercera aguja tenemos el integrado que hace la corrección gamma y en la hoja número 4 el integrado que hace el proceso de señal entonces ahí están caracterizadas todas

[06:52] las etapas de funcionamiento de esta tarjeta t con ahora centrándonos en la página 2 de 4 donde está dibujada la fuente vemos aquí que está integrado nombrado como un 101 tanto en el plano como en la propia tarjeta es el bebé 81 60 efe v se encarga recibiendo un voltaje de entrada único que son 12 voltios de sacar varias fuentes reguladas con diferentes características la primera de ellas se llamará a vdd y tiene un voltaje mayor que el de la entrada podemos ver que son 15.54 voltios

[07:55] entonces es una fuente elevadora o step up cuyo comportamiento hemos visto luego basados también en la misma y única fuente de entrada de 12 voltios esté integrado nos va a entregar una fuente de 3.3 voltios entonces este tipo de fuente será una fuente reductora o tipo step down 3.3 voltios ya sabemos que esos 3.3 voltios nos suenan a alimentación de microcontroladores entonces esta fuente va a ir alimentar esencialmente el integrado de proceso de señal 3.3 voltios pero también nos va a entregar una

[08:48] fuente de 12 voltios en alguna zona de ese integrado de proceso se va a necesitar un voltaje de 12 voltios nos dice que la corriente de salida de esta fuente va a ser de 200 miliamperios nos entrega también una fuente alta de 27 puntos 15 voltios llamada vg h esta es una de las fuentes que se usan para polarizar los mosfets del panel lcd 27 puntos 15 voltios finalmente vamos a obtener una fuente llamada bgl de valor negativo que oscila entre 5 y 7 voltios esta fuente también contribuye a la

[09:49] polarización de los transistores cft en el panel es de anotar que tanto esta fuente como la anterior vg h son hechas mediante una topología que hasta el momento no hemos estudiado en el curso de fuentes esa topología se llama charles pong o bomba de carga su protagonista es un condensador a través del manejo apropiado de este condensador se puede obtener un voltaje negativo partiendo de otro positivo se puede duplicar una fuente basados en la hoja de datos del integrado de 80 y 160

[10:51] fv vamos a estudiar la generación de las diferentes fuentes en una etapa t com tenemos que el voltaje único de entrada en este caso es de 12 voltios partiendo de esa fuente vamos a entregar a la salida del integrado un primer voltaje llamado bs cuya salida es de quince voltios mayor que el de la entrada por consiguiente es una fuente tipo step-up tiene buena corriente como podemos observar 1.5 amperios vamos a ver cómo funciona esta fuente podemos apreciar acá en el simulador lt

[11:33] spies 4 una aproximación al interior del integrado donde podemos observar que hay una representación del switch de potencia y el integrado tiene dentro el transistor de potencia para esta fuente de tipo step up que vamos a entregar a partir de 12 voltios 15 voltios este transistor está gobernado por un circuito oscilador que tiene una frecuencia entre 500 y 750 km esa oscilación va a prender y apagar al switch de modo que la bobina va a estar siendo cargada constantemente y cuando

[12:22] el suiche está abierto la bobina entrega su energía almacenada a través del diodos o kit de 3 hacia el filtro c3 esa fuente entonces es una fuente elevadora si medimos la atención nos da 15 voltios naturalmente que en este momento tenemos nosotros puesta una carga de 20 o muse si la carga varía la fuente también variará entonces el integrado tiene que estar constantemente recogiendo una muestra de la salida para comparada con la referencia interna y convertirla siempre en una fuente

[13:14] constante en voltaje a través de la variación del ancho de pulso de la onda que gobierna al switch ahora trasladamos la visión que hemos hecho en la hoja de datos del integrado al plano concreto que estamos analizando podemos ver una parte del integrado de 81 60 llamado aquí 1 101 en los pines 4 5 está la conexión al switch interno para la fuente que después de tener un voltaje de entrada de 12 voltios y hacer la oscilación a través de la bobina l 101 la rectificación en el diodos 101 y el

[14:18] filtraje de los condensadores se 103 y 104 vamos a tener un voltaje de salida de 15.4 voltios aquí llamado a vdd en este podemos apreciar que hay un conjunto de resistencias a través del cual se toma la muestra al pin 1 del integrado llamado f es el circuito que controla constantemente el voltaje de salida que esté fijo en 15 voltios de acuerdo con la carga y naturalmente con relación al voltaje de referencia interno también podemos observar que aquí nos vuelven a recordar la fórmula que hemos aplicado siempre

[15:25] para conocer el voltaje de salida y es uno más de 101 y 102 sumadas / la r 103 por el voltaje de referencia que es 1.162 voltios aun cuando en este plano no trae los valores exactos de las resistencias 101 102 y 103 nosotros podemos cuando tengamos la plaqueta enfrente mirar los valores de resistencias y poder hacer la operación respectiva sin embargo acá nos trae que r101 tiene un valor de 127 k ere 103 de 10 k o de 10 con 2 k eso puede depender de diferentes opciones no nos da el valor de la r 112 pero en

[16:38] todo caso queda claro que la fórmula que conocemos para averiguar el voltaje de salida se sigue aplicando apreciamos ahora la generación de esta otra fuente de 3.3 voltios para la alimentación del microcontrolador dentro del proceso de señal en late con a partir del integrado v de 80 y 160 efe v está basada en los mismos 12 voltios de entrada la diferencia de acuerdo a la distribución de los componentes es que esta fuente es reductora el suiche también contenido dentro del integrado está siendo conmutada a través

[17:32] de la fuente v2 eso provoca la carga y la descarga de la bobina l1 que en compañía del diodo 3 y el condensador c 3 logran hacer de esta fuente una salida estable de 3.3 voltios rica en corriente aunque mucho más baja que el voltaje de entrada recordemos al un 103 regulador lineal que recibiendo la fuente de 3.3 voltios por la entrada nos saca un voltaje de 12 voltios a la salida con una corriente de 200 miliamperios
