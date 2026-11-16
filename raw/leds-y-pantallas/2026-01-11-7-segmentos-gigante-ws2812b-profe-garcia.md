# ✅ 7 Segmentos Gigante

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=I3Q0RrcN8iY)
- **Canal**: El profe García
- **Publicado**: 2026-01-11
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:54

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En el video de hoy vamos a crear un siete segmentos grande. Mire como es uno original, uno de los que normalmente trabajamos en el protoboar. Vean el tamaño, unas 10 veces vamos a crearlo de grande. Vamos a aprender cómo hacer el diseño en impresora 3D, cómo hacer el diseño del PCB gracias a JLC PCB. Va a tener muchas aplicaciones. En este caso es un contador de segundos. Lo podemos convertir en un cronómetro. Podemos hacer un digiturno que nos diga en qué turno está y qué cubículo va a ser

[00:28] atendido. Ya que es grande, se va a poder ver a larga distancia un contador de puntos para tenis, para paddle, ya que vamos a unir dos módulos de estos para poder realizar muchas aplicaciones. Así que vamos con el video. Y es visible a plena luz del día. Aquí está. Incluso a contraluz se ve bien y ahí apenas tiene 15 de brillo. Podemos subirle a 50, máximo a 100.

[00:50] En videos ya muy antiguos del canal de hace 10 años, habíamos aprendido a manejar el display siete segmentos para poderlo hacer funcionar a través de multiplexación. Es una técnica muy buena que ahorra varios puertos de salida y con Arduino habíamos hecho un cronómetro con un botón de inicio y parada. Vamos a hacer esto mismo, pero construyendo nuestro propio display siete segmentos mucho más grande que uno de estos que vienen solo para el tamaño del protor.

[01:14] Esto es lo normal y estos son los siete segmentos y vienen en este orden. A, B, C, D, E. F y G y a veces un PT que es el punto. Algunos traen un punto acá y así van las conexiones cuando utilizamos el que va al protoor. Sin embargo, nosotros lo cambiamos. No vamos a utilizar este, sino vamos a utilizar la secuencia iniciando desde acá. A B C D E FG como una s invertida. ¿Por qué? Por facilidad de cableado, como lo vamos a hacer con LED inteligente WS2812B. Si ustedes se pueden dar cuenta, aquí trae por dentro

[01:45] un integrado, ese negrito que está ahí y trae LED de color verde, rojo y azul. Si prenden los tres blanco y la variación de cada uno de ellos va siendo los diferentes colores. Esto que nos asegura que podemos cada uno de los segmentos colocarlo del color que queramos.

[01:59] Recuerden que sient tiene un orden, la señal debe ir por d in y salir por d out. Para que nos quede fácil la cableada, entonces lo hicimos así, con tal de que aquí ense por A, B, C, D, así como una S E FG y sale para el siguiente. Vamos a cablear dos inicialmente y hasta cuatro dígitos vamos a tener esta vez en este proyecto.

[02:19] Teniendo esto presente en la programación vamos a hacer algunos cambios porque no está la forma normal. Así que este es un ejemplo. Vamos a entrar la señal por A y respetando la continuidad de los LED. Vamos a ir haciendo este sistema de cableado. El diseño lo hicimos en Tinkercat, que es completamente gratuito en línea y lo que toca es sacar las dimensiones de estos LED. Lo hicimos para que nos entren dos LED. Pueden hacerlo más grande para tres o para un solo LED. Ustedes pueden

[02:44] utilizar el programador que quieran. Nosotros utilizamos para el diseño Tinkercat. Este está abierto. Me buscan el profe García y lo pueden descargar. Y este es el diseño que tenemos por el momento. Este que vemos acá. Este está por partes todavía para poder modificar el que mandamos a imprimir por ahora. Y estas son las tapas. Estoy diseñando unas tapas que no vamos a usar todavía, que van a ir por detrás y va a poder soportar una batería, una power bank.

[03:06] Les voy a dejar los STL por si lo quieren imprimir o el enlace a Tinkercat que están compartidos para que lo puedan modificar. ¿Qué tiene importante? Los dos dígitos, unos puntos de unión y algunos de estos van a poder ser perforados para poder unirse al PCB. dos puntos adicionales, estos de color naranja para dos LED. Cuando cuando vayamos a diseñar el reloj, tenga sus dos LED, estos dos cajoncitos de los extremos van a contener los LR o fotorresistencias para que esto reaccione cuando yo tape aquí con la

[03:35] raqueta en caso del contador de padel a través del vidrio o cualquier otra aplicación que ustedes le quieran dar o el jugador que se acerque, ya sea en tenis o cualquier otro deporte, cuando acerque la mano, va a colocar un punto a su favor. Estos espacios son seis espacios, lo pensamos inicialmente para contar seis set. Dependiendo el número de set que se vayan ganando, se van llenando acá y se van iluminando. Eso lo vamos a hacer después en otro proyecto.

[03:56] Así que ahí se los dejo. El diseño en Tinkercat se lo puede modelar en lo que le quede más fácil. Este fue nuestro diseño de PCB. Aquí van los números y van las uniones. Aquí van a ir los diferentes interruptores que vamos a poder utilizar para cambiar de colores en diferentes proyectos para que cambie de hora de 12 horas a 24 horas. un botón de calibración que vamos a dejar que se puede utilizar para calibración o para otras cosas. Otro botón aquí que lo vamos a utilizar para cambiar el brillo.

[04:23] Aquí va el ESP32 incluido y esta es la tiraled E6 para contar seis set puntos de conexión para pasarme al otro circuito para otro de estos y por acá llegan. Es decir, que puedo hacer cascada de estos circuitos para colocar, en este caso dos dígitos, cuatro dígitos, seis, ocho dígitos, lo que yo quiera. Salido C para poder conectar una pantalla o cualquier otro dispositivo.

[04:44] Ya después de terminado nuestro proyecto, creamos los archivos Gerber. Son aproximadamente nuevos, los comprimimos en uno solo. Zip. Nos venimos a la página oficial de JLCPCB. En los PCBs de 6K, JLC PCB ofrece vía impact gratuito para optimizar la eficiencia del enrutamiento y el rendimiento eléctrico. Aprovecha la entrega rápida de 48 horas y precios que empiezan desde solo $2, cupones desde $30. La acumulación típica de seis capas sería una capa de señal, luego una de tierra, de potencia, señal, tierra y

[05:17] nuevamente señal. Esta técnica de apilamiento reduce las interferencias electromagnéticas y ofrece un rendimiento mejorado. Las PCB de seis capas se utilizan comúnmente en aplicaciones de alta densidad, aplicaciones típicas en dispositivos BGA, dispositivos digitales analógicos de alta potencia y alta velocidad, diseños de alta densidad con componentes de alta velocidad y diseños de PCB de señal mixta. Diseños de seis capas permiten un enrutamiento más rápido y limpio, evitando la dificultad de

[05:44] intentar acomodar señales en placas de dos o cuatro capas. lo que se traduce en un desarrollo más rápido, menores rediseños y finalización más rápida del proyecto. Perfectos para diseños de alta velocidad. Nos vamos a cotizar. Entramos a JLCspcB, se deben en registrar y vamos a cargar el archivo Gerber. Y podemos aprovechar cualquiera de los servicios de JLCPCB.

[06:06] Aquí ya vemos, ya subió el archivo, ya hay una pequeña vista, le subimos a 10 componentes, fondo negro, serigrafía blanca. Vamos a realizar el proceso de compra. Normalmente para pagarlo yo utilizo PayPal, que es lo que me queda más fácil, pero hay varias formas de pago, tareta de crédito, transferencias bancarias, lo que ustedes quieran. Y podemos ver ya una previsualización de cómo nos va a quedar el circuito y sirve para corregir errores. A veces se encuentran en esta visualización, ya sea

[06:37] en 2D, en 3D, revisando ambos de los lados o el layout. Ya me llegaron los impresos directamente de JLC PCB. Vamos a revisar cómo llegaron. Normalmente llegan perfectos, como nos gusta. Miren el diseño. Por un lado, por el otro, perfecto como lo diseñamos.

[07:01] Aquí va a ir la tiraled formando los dígitos y por la parte posterior va a estar lo que es el ESP32 y todos los interruptores. Vamos a ensamblarlo. Iniciamos a realizar el montaje. Primero colocamos las resistencias. Primero hay que colocar los componentes y de últimas los LED. Instalamos todo lo que son interruptores. Ahora vamos con el ESP32.

[07:26] Y terminado de instalar ya el SP32, ahora sí vamos a hacer la instalación de cada uno de los dispositivos LED. Vamos a ir colocando las tiras, las vamos pegando, aprovechemos que tienen pegante, las vamos colocando y vamos soldando tanto positivo, señal y negativo.

[07:43] Lo hacemos con cautín y estaño. Y vamos para el segundo dígito. También hacemos lo mismo, lo pegamos primero y luego nos vamos a la soldada. Hacemos un poco de ajuste para que nos pueda cuadrar perfecto todo el ensamble.

[08:01] Ahora vamos a unir los dos módulos para que nos queden cuatro dígitos. Esto es para una prueba de un proyecto [música] más un poco más avanzado. Y aquí sigue que empezamos a hacer la prueba y empieza aparecer LED fantasma. Eso es lo que no queremos. Esa falla se nos presentó por el [música] la soldadura en 90º, así que vamos a tener que hacer una corrección. Ahí vemos la tira que está con cable funciona bien y esta que tiene soldaduras empiezan a aparecer LED fantasmas. Tenemos programado y empiezan

[08:29] a encender, apagar la otra. ¿Está bien? Así que vamos a desoldar cada una de las pistas, sobre todo las de datos y volvemos a hacer la soldadura con los cables salidos, pero aquí nos damos cuenta que ya empieza a ser la secuencia. La de la izquierda me falta terminar de hacer un puente, pero ya vemos que funciona. La de la derecha está funcionando todavía. Ahora sí tenemos nuestro [música] display siete segmentos gigante.

[08:56] Aquí está acelerado para que vean los diferentes colores desde magenta. Eso es como un rosado, blanco, rojo y mire cómo se ve mal si no le colocamos. Este caso es una hoja de papel. Hay unos acrílicos muy delgaditos que funcionan. Acrílicos de más de 1 cm no les va a funcionar. Se ve peor porque distorsiona, [música] pero vean con una hoja de papel o papel contact. En la página dinastatecnologica.com pueden encontrar las tiras RGB WS2812B.

[09:25] No es una tira normal ni una tira RGB normal. Son las inteligentes, las WS2812B. Se puede comprar toda la tira o LED por LED. La página de descargas del profe García no lo he subido en este momento, pero les voy a dejar los enlaces a todos los programas o todo lo que vayan a necesitar para realizar el proyecto. Y si quieren nos tomamos un café. Diseño que se hace en STL. Inicialmente hacemos pruebas. Yo imprimo apenas 2 mm de alto.

[09:48] Si se dan cuenta, por debajo hay un papel simulando el impreso. No me ha llegado todavía, pero ya podemos ir viendo cómo nos va a quedar para ir ajustando la impresión 3D, que nos queden alineados los LED, tanto de los dígitos como lo que nos va a marcar los set. Estas fueron algunas pruebas.

[10:03] Pensaba hacerlo incluso de tres, pero me decidí por de a dos por cada segmento. Incluso voy a hacer pruebas con un solo LED porque creo que llega a funcionar bien con un solo LED. Estas fueron las uniones y creo que cometimos un error porque estas curvas están muy cerradas y la frecuencia es como 800 kHz. No es muy alta, no es super alta frecuencia, pero se alcanza a afectar. Así que se van a dar cuenta que en el diseño me tocó abrir estas pistas y la parte de datos conectarlas con cables adicionales

[10:30] porque estas curvas tan cerradas tienen problemas. Ese error lo cometió el profe García por hacer un mal diseño. Después de realizar la impresión 3D, hay que pintar pintar de negro, porque si no la luz que entra un módulo de estos se pasa para otros módulos, ya que lo hicimos con PLA blanco. Si ustedes lo hacen con PLA negro queda mucho mejor, no tiene la necesidad de pintar. El programa lo hizo Chag, yo le dije qué hacer. Le escribí en el prom que era lo que quería y él lo va haciendo. Hay que describírselo muy

[10:59] bien, decirle por qué pines, cuántos LED, qué brillo quiero. Y este sí me tocó modificarlo porque él me lo diseñó para el formato normal de los segmentos. Te resto es de que le especifiquen bien a CH GPT le hace el programa que quiera en segundos. Igual se los dejo para que lo puedan copiar y revisaros nuestro contador, segundos en verde. Ahí damos el inicio y décimas de segundo en azul o magenta. Frenamos. Podemos volver a iniciar y a frenar las veces que queramos. Está funcionando perfecto con

[11:27] tres dígitos. El cuarto no lo estamos usando en este proyecto, pero más adelante lo vamos a usar. Y vamos a volver a ceros oprimiendo el reset del microcontrolador. Volvemos a ceros y podemos volver a empezar. Esta es una primera prueba solo para probar los display siete segmentos, pero luego vamos con proyectos mucho más grandes.

[11:48] Este era para aprender a hacer el siete segmentos. Ya sabemos cómo se hace y hacemos la importancia de de esa parte de impresión 3D que si usted tiene algún otro tipo de material los puede [música] construir a mano sin necesidad de impresora 3D.

[12:03] Y lo importante de esa pantalla de proyección, en este caso una hoja de papel, pero las que tenía yo al principio que les mostré donde aparece el profe García, ese ya tiene papel contact que se alcanza a ver como divisiones entre los números.

[12:17] con una hoja de papel se ve perfecto. Espero que les haya gustado y nos vemos en un próximo proyecto. he.
