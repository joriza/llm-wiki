# Como Funciona una Bombilla o foco LED y su Fuente Conmutada | #tl431 smps

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=z85eNiv1EqE)
- **Canal**: Electrotube tv
- **Publicado**: 2024-11-02
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:06

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola bienvenidos al Canal electr tub TV hoy aprenderemos Cómo funciona la fuente conmutada de las bombillas led usando el integrado bpe 2861 Si alguna vez te ha tocado reparar una bombilla led que no enciende ya sea por un filtro en mal estado pistas dañadas o un led quemado y no has podido repararla porque no entiendes bien su funcionamiento entonces este video es para ti Quédate hasta el final y no te pierdas ni un segundo para que podamos entender cómo funciona y recuerda que el

[00:36] conocimiento es poder sin más que decir Comencemos pongamos por aquí la rosca de la bombilla de este lado un puente rectificador de este lado un filtro de este lado el integrado bp 2861 en estos lados estás resistencias de este lado está bobina pongamos aquí un condensador y de este lado los diodos led de la bombilla en una bombilla led típica el bp 2861 se utiliza como un controlador para mantener una corriente estable a través de los led protegiéndolos y mejorando su durabilidad vamos a ver paso a paso cómo

[01:18] fluye la energía en esta fuente de alimentación conmutada y como el integrado bp 2861 regula la corriente la energía de la red eléctrica ya sea de 120 V o 240 V alternos dependiendo del país ingresa al circuito a través de los terminales de la bombilla en este punto o en este caso por la rosca de la bombilla esta corriente alterna pasara primero por una resistencia de limitación con un valor de 45 ohmios como esta que podemos apreciar aquí en la imagen y a su vez funciona como fusible para proteger el

[01:59] circuito de pico de corriente luego fluye hacia un puente rectificador que convierte la corriente alterna en corriente continua el voltaje Ya rectificado pasa a través de un capacitor o filtro de alta tensión de 400 V aproximadamente este capacitor o filtro suaviza las fluctuaciones en el voltaje rectificado generando un voltaje continuo y estable para alimentar el resto del circuito ahora el voltaje continuo que sale del filtro de 400 V llega directamente a al pin número cuatro del integrado este pin permite

[02:38] que el integrado tome energía directamente desde la línea de alto voltaje y comience su operación el pin número uno que es el gnd o tierra del integrado va conectado directamente a la tierra del circuito Estableciendo la referencia para todo el sistema el integrado bp 2 861 necesita mantener una corriente constante a través de los led para evitar variaciones de intensidad que puedan dañarlos para poder lograr esto el pin número siete que es el current sense monitorea la corriente que fluye a

[03:18] través de los led este pin siempre se conecta a una resistencia de bajo valor directamente a tierra que en este caso la resistencia tiene un valor de 1.8 ohmios permitiendo que el integrado mida la corriente y ajuste el pulso de conmutación del mosfet para mantener la estabilidad este integrado incluye un mosfet interno que regula la corriente hacia los led mediante un proceso de conmutación los Pines drine número cco y se estarán conectados a esta bobina como vemos acá en la imagen y a su vez irá

[03:56] conectado a los led de este otro lado de los LED Irán conectado directamente al pin número cuatro del integrado como podemos ver acá en la imagen y a su vez está resistencia con valor de 75 kohi y este condensador Irán conectados en paralelo de esta manera cuando el integrado detecta que el voltaje en el pin número cuatro está listo y que la corriente en el pin número 7 es suficiente se activa el mosfet que está interno y comenzará a conmutar rápidamente es decir lo que hara el

[04:32] mosfet es switchear encender y Apagar a alta velocidad de tal manera que cada vez que haga ese switcheo cerrará el circuito y los diodos led encenderán es decir iluminarán ese encendido y apagado que se genera a altas velocidades ara que el led se vea que está encendido pero la verdad es que los led están apagando y encendiendo pero muy rápido es decir a alta frecuencia lo cual el ojo humano no logrará ver sus parpadeos porque dichos parpadeos suceden a una rapidez muy alta Aunque

[05:08] creas que los led están encendidos fijamente no lo están porque estarán parpadeando o sea encendiendo y apagando a altas velocidades y aunque el ojo humano no lo note el fenómeno está presente este proceso de conmutación también regula el flujo de corriente a través de esta bobina hacia los led y ilinol de manera eficiente como pueden apreciar los led están conectados a los Pines 4 5 y se cuando el mosfet conmutador que está interno en el integrado se activa permite que fluya la

[05:45] corriente hacia los led iluminándola que la corriente que reciben los led sea constante y estable protegiéndolos de sobrecargas el circuito También incluye un condensador y una resistencia en paralelo con los led como podemos ver acá en la imagen este condensador ayuda a suavizar cualquier oscilación residual mientras que la resistencia limita la corriente inicial cuando los led se encienden resumen de la operación cuando conectas la bombilla led a la red la corriente alterna pasa por el

[06:26] rectificador convirtiéndose en corriente continua y filtrándose con el capacitor cuando el bp 2861 recibe el voltaje en su pin número 4 este comenzará a operar lo cual usará el pin número siete para medir la corriente y a través de los Pines 5 y se del drain o drenador regula el paso de energía hacia los led y el mosfet que está interno con mutara rápidamente permitiendo que los led se enciendan e ilum con una corriente constante y así funciona el integrado bp 2861 en una bombilla led gracias a este

[07:09] pequeño integrado la bombilla puede proporcionar una luz estable y duradera Ajustando la corriente automáticamente para proteger los led esto es un circuito muy básico para esta explicación pero casi siempre está conformado de esta manera si te ha gustado este video No te olvides darle like dejar tu comentario aquí abajo y suscribirte al Canal y de esta manera me motivas a hacer videos de mejor calidad para [Música] ti foreign [Música]
