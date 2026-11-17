# No mas Interruptores de Pared, en su lugar usa un Transistor MOSFET

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=mD4zkcNCnok)
- **Canal**: ElectroRobotica3D
- **Publicado**: 2026-05-31
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:51

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Buenas a todos, les habla el profe Nelson de electrónica y en esta ocasión vamos a ver cómo reemplazar un interruptor mecánico como este que tenemos instalado en casa por un interruptor electrónico. Es decir, lo vamos a reemplazar por un transistor MOSFET como este de acá.

[00:22] Para poder encender y apagar cualquier foco que tengamos instalado en casa, sea un foco incandescente o un foco LED como estos de acá. No importa su potencia, ya que podrás encender y apagarlo como si fuera tu interruptor mecánico.

[00:41] Sin embargo, vas a poder hacerlo con un transistor MOSFET y de paso aprenderemos varias cosas de electrónica. Pues, sin más que decir, veamos el video. Pero antes, algo de teoría. En este caso, estamos utilizando un transistor MOSFET de canal N, el IRFZ44N, el cual tiene tres terminales, compuerta, drenador y fuente. Y acá tenemos su estructura interna, en el cual podemos observar la fuente, la compuerta y el drenador.

[01:18] Aquí tenemos una oblea o semiconductor de tipo P, sobre los cuales se encuentran la fuente y el drenador, que son de tipo N. Entre la fuente y drenador no existe contacto, es decir, hay una enorme resistencia entre esos dos terminales.

[01:36] Sin embargo, para que exista una conexión entre esos dos terminales, es necesario aplicarle tensión positiva a la compuerta, la cual se encuentra aislada de cualquiera de los dos terminales debido al óxido de silicio que se presenta acá.

[01:55] Es decir, nosotros tenemos que conectarlo de la siguiente forma. Al drenador se le conecta la carga hacia VCC y hacia la y la fuente se la conecta hacia negativo. Y la compuerta sería nuestra señal de activación del transistor.

[02:18] En este caso tendríamos que mandarlo hacia positivo. A más VCC. Cuando nosotros le mandemos a más VCC, nosotros aplicaremos tensión positiva. Esto hará que en este caso la tensión positiva atraiga las cargas negativas que se encuentran en el semiconductor de tipo P.

[02:44] Por tanto se verán atraídos y empezarán a formar un canal o camino entre la fuente y drenador. Ese canal o camino presentará una resistencia, la cual dependerá mucho del voltaje que estemos aplicando. Si tenemos un voltaje bastante bajo positivo el canal será bastante presentará una gran resistencia, por tanto la corriente será pequeña. Sin embargo, si aplicamos bastante voltaje, es decir, 10 o 12 voltios el canal estará mejor formado, por tanto la resistencia será mucho menor.

[03:24] Por lo cual la corriente que va a pasar entre la fuente y drenador será bastante grande, lo suficiente como para activar cualquier carga que tengamos conectado en el transistor. Ahora el problema será cuando nosotros desactivemos el interruptor. Al desactivar el interruptor la carga positiva que tenemos en la compuerta no va a desaparecer.

[03:51] Por tanto el canal o camino se mantendrá, es decir, el transistor MOSFET quedará activado, a no ser que de alguna manera descarguemos esta carga que se presenta acá. Es decir, la compuerta de los MOSFET funciona como los condensadores, que almacenan, en este caso, energía.

[04:14] Por tanto, nosotros tenemos que conectarlo hacia negativo. Cuando lo conectemos hacia negativo, todas estas cargas positivas las vamos a descargar y reemplazar, en este caso, por cargas negativas. Al tener negativo en la compuerta, pues, repelerá las cargas negativas que tenemos en el canal o camino.

[04:48] Y de esta forma, pues, desactivará al transistor, dejando de funcionar. Bueno, esto de forma teórica. Sin embargo, hay que verlo de manera práctica. Pero antes, un gran saludo para todos mis suscriptores, para los que comentan y para los que comparten los videos y, sobre todo, para los miembros del canal.

[05:12] Un gran saludo para Multiservicios EIM, para José y para Tomás. Y si aún no eres miembro del canal, puedes hacerte miembro en la sección de miembros. Pues, sin más que decir, continuemos con el video. Muy bien, ahora vamos a confirmar la propiedad de enclavamiento del transistor MOSFET. Para eso, colocamos nuestro multímetro en diodo.

[05:42] Ahora vamos a medir entre la fuente y drenador. Ahí podemos ver que tenemos una alta resistencia. Ahora, para formar el camino, necesitamos aplicar positivo a la compuerta. Volvemos a medir entre la fuente y drenador y podemos observar que tenemos 0 ohmios de resistencia, es decir, el canal está formado.

[06:11] Para desactivar el canal o camino, tenemos que aplicar negativo a la compuerta. Volvemos a medir entre la fuente y drenador y no tenemos canal o camino, es decir, el transistor está desactivado. Activamos el transistor aplicando positivo a la compuerta y medimos entre la fuente y drenador.

[06:33] Y el transistor está activado. Y lo desactivamos. Y de esta forma confirmamos que los MOSFET pueden enclavarse si se les aplica positivo a la compuerta. Y esta propiedad la vamos a utilizar para poder reemplazar nuestro interruptor mecánico.

[06:58] Y acá tenemos el circuito que vamos a armar para ese fin. Aquí tenemos nuestro transistor MOSFET, el cual presenta tres electrodos. El electrodo del medio sería el que se conecta a la compuerta y tenemos dos electrodos más.

[07:15] Uno para apagar, que se conecta hacia negativo de la fuente, y uno positivo que se conecta directamente al positivo de la fuente de alimentación. Ahora, cuando nosotros hagamos contacto entre el electrodo de la compuerta y del negativo, se va a apagar el transistor.

[07:34] Y si nosotros conectamos entre el electrodo de la compuerta y del positivo de la fuente, se activará el transistor, activando el relé y así mismo activando el foco o cualquier carga que tengamos conectado en el relé. Bueno, de esta forma funcionaría el circuito, obviamente de forma teórica, sin embargo hay que verlo de manera práctica.

[08:01] Muy bien, ahora pasamos a la parte práctica. Acá tenemos el circuito que estábamos describiendo anteriormente, en el cual se puede observar los tres electrodos. Tenemos el electrodo de la compuerta, el electrodo negativo y el electrodo positivo.

[08:19] Tenemos un led indicador y nuestro relé. En este momento no estamos conectando aún los focos a 220, porque primero tenemos que confirmar de que el circuito funcione tal y como se describió. Sin embargo, como mencioné, de manera teórica debería funcionar, pero veamos de forma práctica si funciona.

[08:42] Primero conectamos la alimentación. Y ahora vamos a tratar de apagar el circuito, ya que se puede observar que está encendido. Vamos a tratar de apagarlo. Se puede escuchar bastante ruido. Es decir, no podemos apagar el circuito.

[09:11] Esto es debido a que nosotros en este caso estamos funcionando como una antena. Es decir, pues estamos generando ruido. Ruido en forma senoidal. Tenemos entonces este tipo de señal. Enciende y apaga, enciende y apaga. Por tanto, eh nuestro circuito no va a funcionar, a no ser que filtremos ese ruido que estamos generando.

[09:37] Y la forma más eficiente de filtrar el ruido son con condensadores cerámicos o de poliéster. Por lo general se ocupan 10 nanos, 47 nanos, 100 nanos. Bueno, un rango aproximado a ese valor. Eh, por tanto vamos a probar con dos.

[09:56] Aquí tengo de 47 nanos y aquí tengo de 100 nanofaradios. Probemos. La conexión es entre la compuerta y negativo. Esto para filtrar cualquier ruido que esté entrando en la compuerta. Negativo y compuerta. Ahora vamos a tratar de encender.

[10:25] Todo bien. Apagamos. Todo bien. Perfecto. Veamos con el de 100 nanos. Encendemos. También perfecto. Entonces podemos ocupar cualquiera de esos dos valores. Tengan en cuenta, esto es para filtrar el ruido de nuestros cuerpos.

[10:58] Bien, como está funcionando vamos a conectar ahora el foco a 220. Muy bien, la conexión es la misma que en el circuito. Ahora vemos qué tal funciona. Vamos a conectar el la corriente a 220. Se mantiene apagado. Ahora encendamos.

[11:48] Perfecto. Funciona bastante bien. Vean que funciona muy bien. Sin embargo, ojo, tengan en cuenta, no es para reemplazarlo por completo. Lo bueno es que estamos experimentando que el transistor MOSFET puede llegar a funcionar como un interruptor táctil.

[12:19] Sin embargo, esto es más que todo para aprender y comprender cómo funciona un transistor y de paso cómo le eliminamos el ruido que se puede generar por nuestros cuerpos, ¿no? Los cuales pueden perjudicar el funcionamiento de cualquier aparato electrónico.

[12:35] Esto es para aprender y comprender, chicos, ¿sí? No es para reemplazarlo. Bueno, ojalá que les haya gustado la experiencia, el video y si fue así, pues un me gusta ayuda mucho al canal. Pues nos vemos en el próximo video.

[12:50] Chao, chao.
