# Como Funciona una Bombilla o foco led Fuente Conmutada con JWB1981 smps #tl431

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=2IFIRgJz64Q)
- **Canal**: Electrotube tv
- **Publicado**: 2024-11-09
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola Bienvenidos a electr TV en este segundo video vamos a descubrir Cómo funciona la fuente conmutada de las bombillas led utilizando el integrado J W b181 si quieres entender todo lo que pasa dentro de una bombilla para que ilumine de manera eficiente aquí te lo explicaré de una forma simple y directa Así que Quédate hasta el final de este video y no te pierdas ni un segundo y recuerda que el conocimiento es poder sin más que decir Comencemos en una bombilla led típica el integrado J W

[00:39] b181 utiliza como un controlador para mantener una corriente estable a través de los led protegiéndolos y mejorando su durabilidad vamos a ver paso a paso cómo fluye la energía en esta fuente de alimentación con mutada protegiéndolos y mejorando su durabilidad como pueden ver a diferencia de otros circuitos de illas led este no tiene un puente de diodo rectificador a la vista como pueden apreciar Y esto es básicamente porque el puente rectificador está interno en el integrado si hacemos una línea

[01:13] imaginaria de esta manera y dividimos el integrado en dos partes de esta manera podremos notar que el puente rectificador está conformado por los Pines número 1 7 2 y 6 También hay que tener en cuenta que este integrado tiene internamente un circuito operacional y un transistor mosfet Bueno ya teniendo esto claro continuemos primero pongamos por aquí la rosca de la bombilla de estos lados están las resistencias de este lado está la bobina por aquí un filtro aquí el integrado y por aquí los

[01:51] led la energía de la red eléctrica Ya sea de 120 vol o de 220 vol alternos dependiendo del paíz ingresa al circuito a través de los terminales de la bombilla en este punto o en este caso por la rosca de la bombilla esta corriente alterna pasará primero por una resistencia de limitación con un valor de 30 ohmios como esta que podemos apreciar aquí en la imagen lo que a su vez funciona como fusible para proteger el circuito de picos de corriente y a su vez va conectado al pin número si del puente

[02:29] rectificado que está interno en el integrado la otra línea de la corriente alterna de la red eléctrica va conectado directamente al pin número uno del integrado en este punto de tal manera que el voltaje será rectificado o convertido de corriente alterna a corriente directa por el puente rectificador que está interno en el integrado ese voltaje rectificado o convertido a corriente directa saldrá por el pin número seis como puede ver acá en la imagen ahora de este lado el pin número dos saldrá el negativo o

[03:07] Tierra como lo pueden apreciar en la imagen y de esta manera ya podremos obtener un voltaje rectificado bueno continuemos de aquí del pin número se irá conectado directamente al positivo del capacitor o filtro de 400 vol hay que tener en cuenta que no siempre este filtro será de 400 V porque este filtro también lo podemos encontrar de 200 o de 250 V pero ya Eso depende del fabricante y de la red eléctrica del país el pin número dos que es el negativo o tierra irá conectado directamente a esta resistencia y a su

[03:47] vez irá conectado directamente al negativo o tierra del filtro o capacitor como lo pueden ver acá en la imagen El pin número tres no va conectado a ningún lado El pin número cu que es el current sense o lo que es en español detector de corriente irá conectado directamente a esta resistencia que en este caso a diferencia del video anterior esta tiene un valor de 20 ohmios como lo pueden ver aquí esta resistencia es muy importante para mantener la corriente de los led estable también al Modificar el valor de

[04:25] esta resistencia podría subir o bajar la corriente de los LED al modificar esta resistencia con el propósito de bajar la corriente sería una buena idea ya que los led trabajaran más relajados y podrás prolongar la vida de los led esta resistencia varia su valor dependiendo de Cuántos led tenga la bombilla Y de qué voltaje sean los led porque abran bombillas que tengan led de 3 V pero habrán otras que sus led serán de 6 9 o 12 v y dependiendo Cuántos led tenga la bombilla Y de qué voltajes sean estos

[05:03] led la resistencia del current sense variará su valor todo depende del fabricante y el propósito por la que haya sido fabricada lo cual estas mismas son vendidas en wat como pueden ver acá en la imagen bueno continuemos el pin número cco que es el drain o drenador del mosfet que está interno en el integrado irá directamente a esta bobina y de esta misma bobina irá ADO directamente a los diodos led de este lado como pueden apreciar Ahora de aquí del positivo del capacitor o filtro ira

[05:37] conectado directamente a los diodos LED en este punto como pueden ver aquí en este otro punto hay una resistencia que ira conectado a ambos Pines del capacitor o filtro esta resistencia tiene un valor de un megio y se utiliza de esta manera con el propósito de Descargar el filtro para que los diodos led al apagar la luz la bombilla no quede encendida o que se apague paulatinamente por haber quedado cargado el filtro Bueno cuando el integrado detecta que el voltaje en el pin número

[06:09] 6 está listo y que la corriente en el pin número 4 es suficiente se activara el transistor mosfet que está interno en el integrado de tal manera que comenzara a conmutar rápidamente es decir lo que hara el transistor mosfet es switar encender y Apagar a alta velocidad de tal manera que cada vez que haga ese switcheo cerrara el circuito y los diodos led encenderán es decir iluminarán ese encendido y apagado que se generara a alta frecuencia hará que los led se vean que están encendidos

[06:46] Pero la verdad es que los led están apagando y encendiendo pero muy rápido es decir a alta frecuencia lo cual el ojo humano no lograra ver sus parpadeos porque dichos parpadeos suceden a una rapidez muy alta Aunque creas que los led están encendido fijamente no lo están porque estará parpadeando es decir encendiendo y apagando a alta frecuencia Y aunque el ojo humano no lo note el fenómeno está ocurriendo este proceso de conmutación también regula el flujo de corriente a través de esta bobina hacia

[07:24] los led iluminándola eficiente como pueden apreciar los led están están conectados al pin se cuando el mosfet que está interno en el integrado se activa permite que fluya la corriente hacia los led de tal manera que iluminarán ese encendido y apagado a gran velocidad asegura que la corriente que reciban los leds sea constante y estable protegiéndolos de sobrecargas resumen de la operación cuando conectas la bombilla led a la red eléctrica la corriente alterna pasa por el rectificador que esta interna en el

[08:00] integrado convirtiéndose en corriente continua y a su vez filtrándose con el capacitor de 400 V suavizando las fluctuaciones y estabilizando el voltaje que este pueda tener lo cual usara el pin número cuatro para medir la corriente y a través del pin número cinco regula el paso de energía hacia los led cuando el mosfet que esta interno comience a conmutar lo que hará es que los led enciendan e iluminen y así es como funciona el integrado doj W b181 en una bombilla led gracias a este

[08:38] pequeño integrado la bombilla led puede proporcionar una iluminación estable y duradera solamente Ajustando la corriente automáticamente para proteger los led esto es un circuito muy básico para esta explicación pero casi siempre está conformado de esta manera Ya teniendo claro cómo funciona una bombilla led con este tipo de circuitos podemos entender y a su vez tener la capacidad de poder reparar este tipo de bombillas y lo más importante poder bajar la corriente de los led solamente

[09:10] modificando el valor de la resistencia del pin número cuatro que es el current sense o detector de corriente y de esta manera los led trabajarán más relajado y prolongará la vida de los led Espero que esta información te haya sido de gran ayuda y recuerda que el conocimiento es poder no se te olvide suscribirte dejar tu saludo en los comentarios y darle like también puedes apoyar al Canal dándole un super Gracias en el botón que está debajo de este video y de esta manera me motivas a hacer contenido de

[09:45] mejor calidad para ti [Música]
