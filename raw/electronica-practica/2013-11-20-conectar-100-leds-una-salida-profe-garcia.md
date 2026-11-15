# Como Conectar 100 LEDs a una Salida (Circuito)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=CtJqhg5Y6DA)
- **Canal**: El profe García
- **Publicado**: 2013-11-20
- **Recopilado**: 2026-11-15
- **Idioma**: es-419 (subtítulos manuales es-419 (manual), transcripción literal)
- **Duración**: 05:32

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En videos anteriores habíamos visto cómo hacer encender LED al tiempo. Vamos a ver qué circuitos hay que hacer para poder encender varios LED al mismo tiempo, utilizando el pulso generado sólo por un LED o un motor con ese mismo pulso.

[00:15] Vamos a ver cómo se hacen. Cuando armábamos circuitos como el de la secuencia de LED, veíamos que la salida del 555 lo utilizábamos para encender un solo bombillo y a la vez para reloj del segundo integrado. Pero sólo lo usábamos para encender un LED.

[00:35] De igual forma, todas estas salidas las usábamos para encender un solo LED. Vamos a utilizar cada salida de estas para encender varios LED, un motor, un zumbador o activar un RELE. Cogemos la salida de la pata 3 en este caso, que permitía encender un solo LED, y esa salida de cualquier circuito la pasamos por una resistencia de 1K que entra a la base de un transistor NPN que en este caso es el que siempre usamos, el 2N2222A.

[01:02] El emisor lo conectamos a tierra. Y desde la fuente de alimentación conectamos una resistencia de 100 OHMIOS y en serie cinco LED. La poca corriente que yo pueda atender en la salida la amplifica y deja pasar los 12 voltios completos con un máximo, en este caso de 800mA, que es capaz de manejar este transistor.

[01:22] Esta serie de LED en promedio maneja 20mA y como puedo manejar 800 mA con este transistor, puedo seguir colocando series iguales a esas. Puedo colocar otra serie igual, resistencia de 100 OHMIOS y los cinco LED en serie.

[01:38] Puedo continuar. Repito esta misma serie de cinco LED conectadas entre el positivo con la resistencia y el colector del transistor. Puedo hacerlo para 40, 50, 100 LED. Otra opción es conectar esa salida para encender un motor.

[01:52] Hacemos exactamente lo mismo. Una resistencia que va a la base del transistor, el emisor del transistor va conectado a tierra o negativo, y al colector conectamos el motor directamente a los 12 voltios. Cuando conectamos cualquier bobina de un motor, debemos colocar un DIODO de protección, puede ser el 1N4004.

[02:09] Cuando en esta salida, que se vuelve la entrada, se genera un pulso pequeño, activa la base, y permite que se conduzca entre colector y emisor, cerrando el circuito del motor; haciéndolo funcionar directamente con los 12 voltios y la corriente que necesite.

[02:24] No con el voltaje, sino la corriente pequeña que está entregando esta salida. Otro caso, hacemos exactamente lo mismo, es para conectar un RELE. Repetimos lo mismo, sólo que conectamos el RELE entre los 12 voltios y el colector usando el DIODO de protección, y entre los contactos del RELE podemos conectar un bombillo ya sea de 110 o 220 voltios.

[02:43] También un motor de varios caballos de fuerza, un cilindro neumático o lo que yo quiera. Esta salida que va al último LED el quinto LED en este caso, de ahí también sacamos una resistencia de 1K que va a la base del transistor a la pata del centro.

[02:58] La de la izquierda, que es el emisor, va con este cable blanco a tierra. La salida del colector, que es el cable azul, va todo el arreglo del LED en el que van series de cinco LED y al final una resistencia de 100 OHMIOS conectada a positivo.

[03:12] La resistencia de 100 OHMIOS es café, negro, café, terminado en dorado. Conectamos una resistencia para cada serie de cinco LED. Conectamos la fuente de alimentación. Ahí vemos que cuando la secuencia llega al último LED se enciende todo el arreglo del LED que hemos hecho, utilizando el transistor que amplifica la corriente.

[03:28] Esto jamás lo podríamos hacer directamente de la salida del integrado. La salida del chip la traemos por el cable verde. La pasamos por una resistencia de 1K, lo conectamos al transistor, el transistor va conectado a tierra por el emisor, colocamos el DIODO de protección entre colector y positivo, y conectamos el motor entre positivo y el colector del transistor.

[03:47] Colocamos la energía y podemos ver que no se ve afectado el último pulso, que es el que estamos utilizando para encender los LED, el motor y todo lo que queramos. si yo repito esto mismo para las diez salidas del 4017 y organizo los LED, puedo hacer una serie muy larga que va haciendo la misma secuencia por más de 100 LED. Sólo es cuestión de organizarlos.

[04:09] Qué hacemos en los casos donde utilizábamos circuitos como este, que es el detector de tacto, donde no se ve claro un pulso de salida. Lo que se debe hacer es desconectar este punto de tierra, quitamos este punto de tierra del emisor y ese es el que utilizamos como salida para conectar al circuito amplificador.

[04:26] Hacemos esta conexión. Así que el emisor del último transistor del detector de tacto es la salida para alimentar el nuevo circuito que va a encender no solo uno sino varios LED. Van a darse cuenta que la mayoría de circuitos terminan de la misma forma, sólo hay que hacer esta variante.

[04:42] Si yo quisiera encender un motor hago exactamente lo mismo. Conecto el circuito con esa variante y funcionaría. Si yo quisiera encender un bombillo de 110 o 220 voltios hago la misma variante y funcionaría. Les dejo el enlace de cómo conectar un RELE que ya lo habíamos visto en varios videos y la conexión de los bombillos.

[04:59] Si están aprendiendo con mis videos regálenme un click en "me gusta" o "manito arriba". Recuerden suscribirse para que no se pierdan videos nuevos cada semana. Gracias por todos los buenos comentarios que me dejan.
