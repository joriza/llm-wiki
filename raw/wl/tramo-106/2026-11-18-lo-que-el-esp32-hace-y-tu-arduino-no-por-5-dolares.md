# Lo que el ESP32 hace y tu Arduino no (por 5 dólares)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=3pLG1FhKCFk)
- **Canal**: Soy Prototipo Cero
- **Publicado**: 2026-11-18
- **Recopilado**: 2026-11-23
- **Idioma**: es-419 (subtítulos manuales es-419 (manual), transcripción literal)
- **Duración**: 11:57

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hay cuatro cosas que tu Arduino nunca va a poder hacer, y una plaquita de unos cinco dólares las hace todas: el ESP32. Habla por WiFi, habla por Bluetooth, duerme meses con una sola batería y siente tu dedo sin ningún botón.

[00:17] ¿Cómo puede algo tan pequeño y tan barato ganarle a la placa con la que todos aprendimos? Y esto importa, porque la mitad de los proyectos que te imaginas necesitan justo eso que tu Arduino no tiene. Una planta que te avisa al celular que tiene sed. Un sensor en el jardín que funciona un año sin que lo toques.

[00:35] Con tu Arduino, cada una de esas cosas cuesta otra placa, más cables y más plata. Así que pongámoslos frente a frente, como en una pelea, y llevemos la cuenta. Primero, el cerebro. El chip de tu Arduino Uno R3, el ATmega328P, piensa a 16 megahercios.

[00:54] Eso quiere decir que su reloj da dieciséis millones de pasos cada segundo, y en cada paso hace una sola cosa. El ESP32 da hasta doscientos cuarenta millones de pasos por segundo, quince veces más, y en cada paso maneja datos cuatro veces más anchos.

[01:11] Y no tiene un cerebro, tiene dos: dos núcleos que trabajan al mismo tiempo. Mientras uno se encarga del WiFi, el otro corre tu programa, sin que se estorben. Luego, la memoria para trabajar, la RAM. Tu Arduino tiene 2 kilobytes.

[01:27] Eso es más o menos una página de texto. Una foto pequeña ya no le cabe. El ESP32 tiene 520 kilobytes: unas 260 veces más espacio para trabajar. Primer punto para el ESP32. Pero la velocidad no es lo que más sorprende, lo que más sorprende es de dónde salió.

[01:49] En agosto de 2014, aficionados de todo el mundo descubrieron en una tienda china una plaquita azul de cinco dólares. Tenía WiFi. Y en ese entonces, ponerle WiFi a un Arduino costaba fácilmente treinta dólares o más. El problema: el manual venía en chino, y casi nadie en el mundo de los aficionados sabía cómo usarla.

[02:11] Así que la gente se puso a traducirlo a mano, línea por línea, y a compartir lo que iba descubriendo en los foros. El chip era el ESP8266, de una empresa de Shanghái llamada Espressif. Al año siguiente, ya se podía programar con el mismo programa de Arduino que tú usas.

[02:31] Y eso cambió todo: ya no hacía falta un Arduino para controlar el WiFi. El chip del WiFi podía ser el cerebro. Espressif vio lo que estaba pasando y en 2016 sacó su hermano mayor: el ESP32. Le pusieron dos núcleos, Bluetooth, más patas, patas que sienten el tacto y un sueño todavía más profundo.

[02:54] Hoy Espressif ya pasó los 1.500 millones de chips vendidos, según su informe anual publicado este año. Los primeros mil millones los celebró en 2023, y los siguientes quinientos millones llegaron en poco más de dos años.

[03:08] Puede que tengas uno en casa sin saberlo: en un enchufe inteligente, en un foco que se prende desde el celular o en una cafetera. Y ahora sí, la pregunta: ¿qué hace ese chip que tu Arduino no puede? Tu Arduino Uno R3 solo sabe hablar por un cable: el USB que lo une a tu computadora.

[03:28] Si quieres saber qué mide tu sensor, tienes que estar ahí, al lado, mirando el monitor serie. El ESP32 trae dentro una radio de WiFi del mismo tipo que usa tu celular: la de 2,4 gigahercios, la que tiene casi cualquier router.

[03:45] Esa línea dorada en zigzag, en la punta de la placa, es su antena: está dibujada en el mismo circuito. Se conecta a la red de tu casa como cualquier otro aparato, y desde ese momento tiene su propia dirección. Y aquí viene lo bonito: el ESP32 puede ser una página web.

[04:03] Escribes su dirección en el navegador del celular, aprietas un botón en la pantalla, y en tu mesa se prende un LED. Nada de cables. Desde la cocina, desde el cuarto, desde el patio. ¿Y si no hay WiFi? El ESP32 puede crear su propia red, como un pequeño router.

[04:21] Te conectas a esa red, escribes su dirección en el navegador, y ya estás dentro de tu proyecto. Y si se conecta a internet, puede mandarte un mensaje desde cualquier parte del mundo. Para hacer eso con tu Arduino necesitas un módulo extra, más cables y a veces otra fuente de energía.

[04:39] Segundo punto para el ESP32. Si este duelo te está gustando, dale like y suscríbete, que todavía falta lo más raro. Pero el WiFi gasta mucho. Y tiene una trampa que casi nadie te cuenta. Mientras el WiFi está encendido, más de la mitad de las entradas analógicas del ESP32, las diez del grupo ADC2, dejan de funcionar.

[05:03] La radio las usa por dentro. Así que tus sensores analógicos van en las otras patas, las del ADC1. Error de principiante número uno con el ESP32, ya evitado. Ahora imagina que no hay router, ni red, ni internet. Solo tu celular y tu proyecto.

[05:22] Para eso, la misma radio habla otro idioma: el Bluetooth. El ESP32 original trae las dos clases, el clásico y el de bajo consumo. El Bluetooth clásico es el de los parlantes. El ESP32 puede hacerse pasar por un parlante.

[05:39] Le conectas un amplificador pequeño, pones música en el celular y suena en tu proyecto. El de bajo consumo es el de los relojes inteligentes y las pulseras que cuentan pasos. Con ese, el ESP32 puede hacerse pasar por un teclado o un control de videojuegos.

[05:55] Aprietas un botón en tu protoboard y en la computadora se escribe una letra, sin cables. Tu Arduino Uno no tiene ninguna radio. Para Bluetooth, otro módulo más y más cables. Tercer punto para el ESP32. Ojo con algo: no todos los ESP32 son iguales.

[06:13] Algunos modelos más nuevos, como el ESP32-S3, solo traen el de bajo consumo. Si quieres el parlante, busca el ESP32 de siempre: en la latita dice ESP32-WROOM-32, sin S3 ni C3. Hasta aquí, el ESP32 parece una bestia que lo hace todo. Pero las bestias comen mucho.

[06:36] ¿Cómo puede entonces durar meses con una sola batería? Cuando el ESP32 manda datos por WiFi, puede jalar hasta 240 miliamperios en un instante. A ese ritmo, una batería de litio como la de una linterna recargable se acabaría en unas doce horas.

[06:55] Pero el ESP32 tiene un truco: el sueño profundo. En sueño profundo se apagan los dos núcleos, se apaga el WiFi, se apaga el Bluetooth y se apaga casi toda la memoria. Solo queda despierto un pedacito: un reloj pequeño y un poquito de memoria, como la luz de noche de un pasillo.

[07:15] Y así, según la hoja de datos de Espressif, el chip gasta unos 10 microamperios. Eso es 24.000 veces menos que cuando transmite. Es como pasar de una ducha abierta a una gota que cae cada tantos segundos. Entonces el truco es este: despierta, mide, manda el dato y se vuelve a dormir.

[07:36] Despierto, unos pocos segundos. Dormido, quince minutos. Y así todo el día. Con ese ritmo, la cuenta con esa misma batería da meses, no horas. ¡Pero aquí viene lo que casi nadie dice! En la placa de desarrollo normal, la que compras para aprender, no pasa eso.

[07:55] Unos que la midieron encontraron casi 4 miliamperios con el chip dormido: casi cuatrocientas veces más de lo que dice la hoja. El culpable no es el ESP32. Es todo lo que la placa trae alrededor: el regulador de voltaje, el chip del USB y el LED rojo de encendido.

[08:14] El chip duerme, pero la placa sigue con la luz prendida. Por eso los proyectos que duran meses usan el módulo solo o placas hechas para eso, sin el LED y con un regulador que gaste poco. Tu Arduino Uno también puede dormir, pero su placa sigue gastando decenas de miliamperios, y no tiene radio que apagar.

[08:33] Cuarto punto para el ESP32. ¿Y quién lo despierta? Un reloj, una pata que cambia... o tu dedo. Si te sirvió saber lo de la placa, deja tu like y activa la campanita, que viene la parte más mágica. Toca este cable, y el ESP32 lo sabe. Sin botón, sin sensor, sin nada más.

[08:55] El ESP32 tiene diez patas que sienten el tacto. ¿Cómo puede un chip sentir? Por algo que tú llevas encima todo el tiempo: tu cuerpo guarda carga eléctrica, como un capacitor. El ESP32 carga y descarga esa pata una y otra vez, muy rápido, y cuenta cuántas veces alcanza a hacerlo en un tiempo fijo.

[09:18] Cuando la pata está sola, se llena rápido y le da tiempo de hacerlo muchas veces. Cuando tu dedo la toca, tu cuerpo se suma, como si le pusieras un balde mucho más grande. Tarda más en llenarse, alcanza a hacerlo menos veces, y el número que lee baja.

[09:34] Tu programa solo tiene que vigilar ese número: si baja, alguien está tocando. Con eso haces una lámpara que se prende al tocar la base de metal, o una caja que se abre al tocar una tuerca. Incluso puede despertarlo del sueño profundo: tocas, se despierta y hace su trabajo.

[09:51] Tu Arduino Uno no tiene patas táctiles: necesitas un módulo o un truco con resistencias. Quinto punto. Cinco a cero. Entonces, ¿tiras tu Arduino a la basura? No. Y aquí es donde el Arduino empieza a sumar. Tu Arduino Uno trabaja a 5 voltios. El ESP32 trabaja a 3,3 voltios.

[10:14] Muchos sensores y módulos para principiantes sacan 5 voltios por su pata de señal. Si conectas esa señal directo a una pata del ESP32, le metes más voltaje del que aguanta, y lo puedes quemar. Necesitas un divisor de voltaje con dos resistencias, o un convertidor de nivel.

[10:33] Con tu Arduino, eso no pasa: conectas el sensor y funciona. Sus entradas analógicas también son más parejas: las del ESP32 se tuercen cerca de los extremos y hay que calibrarlas. Y el Arduino es más sencillo: un solo núcleo, sin radios y sin un sistema operativo por dentro. Lo que escribes es lo que pasa.

[10:55] Para aprender electrónica desde cero, para un motor, un sensor o una pantalla en tu mesa, el Arduino sigue siendo un gran maestro. Cinco a dos. Pero el último dato le da la vuelta a toda la pelea. Arduino sacó en 2023 una placa nueva, la Uno R4 WiFi. Tiene la misma forma del Uno de siempre, pero con WiFi y Bluetooth.

[11:18] ¿Y sabes qué chip le pusieron dentro para hablar por WiFi? Un ESP32. Un ESP32-S3, de Espressif, la misma empresa del manual en chino. Así que la pelea nunca fue Arduino contra ESP32: la propia Uno con WiFi de Arduino lleva un ESP32 por dentro.

[11:39] Lo que de verdad importa es saber qué hace cada uno, para elegir bien antes de comprar. Envíale este video a ese amigo que sigue pegando módulos a su Arduino para que tenga WiFi. Dale like, suscríbete y activa la campanita, y que tu próximo proyecto se salga de la mesa.
