# Hito del MIT: una IA ha mejorado a otra sin entrenarla

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ea4cyoDURvc)
- **Canal**: iabro
- **Publicado**: 2026-11-03
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:20

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Este coche lleva mil millones de intentos entrenando. Tiene que subir esta rampa y falla, siempre. Cero de 256. Entonces, los investigadores hacen algo que nunca se había hecho. Le pasan los números que forman su cerebro a otra inteligencia artificial, GPT-6 Astra de OpenAI. Sin volver a entrenarlo y sin probarlo ni una sola vez, Astra cambia unos pocos números. Y mira, el coche da marcha atrás, coge carrerilla y salta. 1024 de 1024.

[00:38] ¿Cómo ha sabido qué números tocar si ni sus creadores saben leerlos? Esto acaba de pasar en el MIT. Una inteligencia artificial ha leído el cerebro de otra. Y cuando digo cerebro, me refiero a los pesos, los millones de números que la forman por dentro y que ni sus creadores saben interpretar. Se los han dado tal cual, sin explicaciones. Los ha analizado, ha entendido qué hacían y los ha cambiado para arreglarla. Y si esto sigue avanzando, una inteligencia artificial podría abrir su propio cerebro y

[01:15] mejorarse a sí misma. Y esa versión mejorada, hacer lo mismo, cada vez más rápido. Es lo que los científicos llevan 60 años llamando explosión de inteligencia. Hoy vas a ver las tres pruebas que le han hecho y por qué los mayores expertos del mundo están divididos entre el asombro y el escepticismo. Pero primero, para entender por qué esto parecía imposible, escucha al hombre que dirige este tipo de investigación en Google DeepMind.

[01:52] Las redes neuronales se cultivan más que se diseñan. Nadie diseña cómo tiene que ser una red como Gemini. Se porque nadie sabe escribir esos números a mano. Imagina un motor con millones de tornillos puestos a la azar. Entrenar una inteligencia artificial es girarlos todos un poquito, a ciegas, probar si falla menos y repetir millones de veces.

[02:18] Al final el motor funciona de maravilla, pero nadie sabe qué hace cada tornillo. Es lo que se llama la caja negra y Hanna Fry en el podcast oficial de Google DeepMind lo resume así. Si miraras dentro de la mente de una inteligencia artificial, solo encontrarías enormes listas de números que de alguna forma producen inteligencia. ¿Cómo? De verdad que no lo sabemos.

[02:45] Y no es por falta de ganas. Las grandes empresas tienen equipos enteros intentando mirar dentro. Dario Amodei, el jefe de Anthropic, la empresa de Claude. Invertimos muy pronto en lo que se llama interpretabilidad mecanicista. Mirar dentro de los modelos de inteligencia artificial e intentar entender exactamente por qué hacen lo que hacen.

[03:11] Y aun así nadie sabe leer esas listas. Hasta que cuatro investigadores del MIT han planteado una idea casi absurda. ¿Y si se las damos a otra inteligencia artificial de las más listas y le pedimos que las lea? Han cogido GPT-6 Astra de OpenAI y le han puesto tres retos, cada uno más difícil que el anterior.

[03:34] Leer, arreglar y fabricar. Han empezado por el primero. ¿Puede adivinar qué hace una red mirando solo sus números? Han entrenado cuatro cerebros pequeños para jugar a cuatro videojuegos clásicos. Por fuera idénticos, la misma forma y 17.253 números cada uno. Se los han pasado a Astra a secas sin decirle ni qué juegos había. Y ha acertado los cuatro, Breakout, Pong, Pac-Man y Freeway. En uno ha visto que los números se concentraban en la fila de abajo y ha deducido que ahí estaba la pala que

[04:12] golpea la bola. Es como si un mecánico viera una caja de tornillos sueltos y te dijera qué coche es, pero leer el plano está muy bien. Lo difícil es meter mano cuando el motor se rompe. Segunda prueba, arreglar. Es el coche del principio. Se había quedado atascado en lo que los ingenieros llaman un mínimo local. Había aprendido a acelerar a tope contra la rampa porque así casi llegaba y de ahí no salía aunque entrenara 1000 millones de veces. Astra ha mirado sus números y un solo vídeo del fallo, ha entendido el

[04:47] bloqueo y ha escrito la solución de un tirón sin herramientas. Ha tocado el 3,5% de los pesos para añadir un pequeño atajo. Primero, marcha atrás y cuando ya tienes carrerilla, el resto lo hace el cerebro de siempre. Pero eso te lo cuento en unos minutos.

[05:05] Hace más de 3 años, cuando casi nadie hablaba de IA, escribí un libro. Hoy puedes descargarlo gratis. Es mi manera de darte las gracias por estar ahí. Te dejo el link en la descripción. Hasta aquí, impresionante. Imagina lo que supone. En vez de tirar un modelo a la basura y volver a entrenarlo cuando hace algo mal, otra máquina localiza el fallo y lo repara con bisturí. Pero lo que viene ahora a mí me ha dejado helado, porque una cosa es arreglar un cerebro que ya existe y otra muy distinta es fabricarlo desde

[05:42] cero, sin entrenarlo ni una sola vez. Tercera prueba, fabricar. Le han dado las reglas de Breakout y un cerebro vacío con todos los números a cero, sin datos, sin entrenar y sin dejarle echar ni una partida de prueba. Astra ha pensado qué debía calcular cada capa. La primera, dónde va a caer la bola contando los rebotes en las paredes.

[06:07] La segunda, mover la pala hasta ahí. Y ha escrito todos los números de una vez. Resultado, 517 puntos. Un cerebro igual, entrenado de la forma tradicional 500 millones de veces, ha sacado 25, 20 veces menos. Ojo, que no es infalible. En otros dos juegos más complicados se ha quedado por debajo del entrenado más tiempo, aunque ha ganado al de 100 millones. Y estos son videojuegos diminutos. La verdadera prueba de fuego estaba clara. ¿Y con un modelo de lenguaje de verdad de los que

[06:43] hablan? Después han subido la apuesta con Quen, un modelo pequeño, pero de los que ya hablan y razonan con 800 millones de números. Tenía un defecto exasperante. Con los problemas difíciles entraba en bucle. Le daba vueltas a lo mismo, como quien repite a ver, a ver, a ver y nunca termina la frase. Nueve de cada 10 respuestas se cortaban a medias. A Astra le han dado un entorno para programar y 50 pruebas con el modelo. Ha rastreado por dentro de dónde salía esa obsesión.

[07:18] La ha encontrado en dos capas concretas y se la ha restado. Ha tocado 131.000 números. Parecen muchos, pero es el 0,016 %. Como cambiar una sola baldosa en un campo de fútbol embaldosado entero. Resultado, los problemas de matemáticas resueltos han pasado de ocho de cada 100 a 48, seis veces más. Y no ha hecho falta esperar meses para saber si había truco. Al día siguiente, ingenieros de Hugging Face, la mayor web de modelos abiertos del mundo, lo han reproducido con los registros publicados y les ha

[07:55] salido 51 de cada 100 y han colgado el modelo para que cualquiera lo pruebe. Claro, una máquina que multiplica por seis la nota de otra y que encima cualquiera puede comprobar, internet se ha vuelto loco. Muchos lo ven como el primer paso de una inteligencia artificial que se mejora a sí misma. Pero espera, porque ¿qué ha pasado cuando han intentado el mismo truco con un modelo que no se quedaba atascado?

[08:28] Ahí está la letra pequeña. Lo han probado con Gemma, un modelo pequeño de Google que casi nunca entra en bucle y la nota apenas se ha movido, del 6,8 al 7,7. Es decir, Astra no le ha enseñado matemáticas a Quen. Quen ya sabía, simplemente tenía el freno de mano echado. Astra ha encontrado la palanca y lo ha soltado. Los propios autores lo dicen, quita obstáculos, no añade capacidad. Y Adam Karvonen, investigador del campo, ha añadido otro matiz. Astra no [carraspeo] ha leído esos números a

[09:04] ojo, ha programado, ha buscado el bucle con técnicas que ya existían y ha tardado más de 20 horas en dar con su mejor arreglo. Cuando le han pedido detectar solo mirando los números qué modelo había sido entrenado para ser un pelota, de los que te dan siempre la razón, ha fallado.

[09:24] Jürgen Schmidhuber, uno de los padres de las redes neuronales, ha recordado que ya en 1991 hacía redes que modificaban los pesos de otras. Y Nil Nanda, el de Google Deep Mind, ha dicho que esto no tiene nada de inquietante, es interpretabilidad de toda la vida.

[09:43] Eso sí, ha admitido que Astra lo hace mejor de lo que él esperaba. Y esa es la clave. Las redes de los años 90 estaban hechas solo para eso y los científicos llevan años quitando frenos de mano a base de meses de trabajo artesanal. Lo que cambia hoy es quién sujeta la llave inglesa. Un modelo general, el mismo tipo de inteligencia artificial que usas para escribir un correo.

[10:11] Ha abierto otro motor, ha encontrado el atasco y nos ha explicado qué tornillos ha tocado y por qué. Por eso los autores lo titulan chispas. Ni la caja negra ha muerto ni el entrenamiento tradicional tiene los días contados. Pero si esto escala, cambia tres cosas. Una, revisar una inteligencia artificial por dentro y encontrar fallos o trampas escondidas antes de que salga al mundo. Dos, arreglarla sin volver a entrenarla, que hoy cuestan meses y millones. Y tres, la que quita el sueño y que los propios

[10:48] autores dejan escrita como siguiente paso, que un día el mecánico abra su propio motor. Hoy solo ha soltado el freno de mano de un coche pequeño, pero ya sabe dónde está la palanca. Y los modelos que sabrán abrir motores más grandes ya están llegando. En el canal tienes cómo la inteligencia artificial ya está resolviendo problemas que los matemáticos llevaban décadas sin resolver.
