# Que es JEV? Y porque fue destronado por LAYA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WKsRwtR1D3I)
- **Canal**: Tobias Simonetti | IA y Tecnología
- **Publicado**: 2026-09-22
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:06

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hace 7 días salió Shep, y fue el lanzamiento de inteligencia artificial más comentado de todo el año. Una inteligencia artificial que no escribe, sino que decide, y cuesta cientos de veces menos que Chat GPT. Pero, ¿qué pasó? 3 días después salió LLaMA. Que hace exactamente lo mismo, que es gratis, open source, y la puedes correr en tu computadora. Y no solamente eso. Y según las tablas que publicaron, la gratis le gana a la paga. O sea, LLaMA le está ganando a Shep en precisión,

[00:30] velocidad y confiabilidad. En 6 minutos te explico qué es cada una, en qué se diferencian, cuál te conviene y para qué se están usando de verdad. Vamos. Primero lo básico, porque no se parece a nada de lo que venís usando.

[00:45] Cuando le preguntas algo a Chat GPT, el modelo te escribe la respuesta palabra por palabra, como si te la dictara, y te cobra por cada palabra. Ahora imagina un negocio que recibe 100 mensajes por WhatsApp al día, y quiere que un sistema los ordene solo. Esto es un pedido, esto es una consulta, esto es un reclamo. No quieres que te escriba un párrafo explicando por qué cree que es un pedido. Quiere la decisión, nada más que eso. Eso hacen estos modelos nuevos. Le das el texto y le das las opciones

[01:13] posibles, y te devuelven una con un número que dice qué tan seguros están. No escriben nunca, básicamente. Solamente te dan la respuesta mediante las opciones que vos le proporcionaste. Y de ahí salen dos cosas importantes. La primera es que no pueden inventar. Las respuestas posibles las definís vos de antemano. Así no hay manera de que se saque una de la manga, básicamente de que la inventen. La segunda, son baratísimos y contestan en milisegundos, porque no hay texto que generar,

[01:43] solamente la decisión. Antes de la comparación, armé una hoja con todos los números de estadísticas de este video y el enlace a cada fuente, para que no tengas que creerme, sino que lo puedas ver por vos mismo. Bien, pasemos a explicar qué es Shep. Shep salió el 15 de septiembre de una empresa llamada Tape Safe AI. El fundador venía de Open AI, levantaron 40 millones de dólares.

[02:07] Básicamente es un servicio, te conectas a su nube y le haces preguntas, pagas por pregunta, no por respuesta. Eso es raro y es a propósito. Como no genera texto, la respuesta no te cuesta nada. 42 dólares por millones de palabras de entrada. Ellos dicen que es hasta 400 veces más barata que un modelo de lenguaje haciendo lo mismo. Como por ejemplo, un modelo de ChatGPT o de Cloud. Y un detalle que es parte de la historia. Lo lanzaron con lista de espera a los 5 días, anunciaron que ya

[02:35] no había lista y estaba abierto para todos. Y hoy el registro dice, "No tenemos plazas disponibles." Básicamente la demanda explotó y ellos tuvieron que frenar la entrada de los usuarios. Continuemos con saber qué es LLaMA. Para saber esto, tenemos que saber que 3 días después del lanzamiento de Shep, una empresa llamada Combai Innovations publicó LLaMA. Hace lo mismo, no escribe, decide.

[03:00] Con tres diferencias. Es abierta y gratis, licencia Apache 2.0, básicamente. La bajas, la usas y hasta podés usarla para cobrarle a un cliente. Corre en tu computadora. Una ventaja es que los mensajes de tus clientes no salen de tu máquina, como por ejemplo, si usas Shep, va todo a sus servidores. Pero lo que destaca de esto es que es chiquita, 322 millones de parámetros, una miniatura al lado de los modelos a los que estamos acostumbrados, por eso funciona en cualquier computadora común. La

[03:30] diferencia más importante entre cada uno y que casi nadie explica es que Shep es un servicio y LLaMA es un archivo adentro de tu computadora. Un servicio te lo pueden pausar, encarecer o cerrar. De hecho, lo acabas de ver, lo pausaron al público. Un archivo ya lo bajaste, es tuyo y lo podés usar cuando vos quieras.

[03:50] Bien, y ahora vamos a los números. Estos números salen de las tablas publicadas por el propio Can buy. En decisiones normales gana LLaMA, en clasificar noticias gana, en detectar emociones gana por bastante, en velocidad no hay discusión, 32 milisegundos contra 250, casi ocho veces más rápido. Y en confiabilidad, básicamente, qué tan en serio le puedes creer cuando dice estoy seguro, gana por tres. Por eso están todos los titulares diciendo que la gratis destrozó a la paga. Pero abajo,

[04:22] en esa misma página, hay dos líneas que cambian todo. La primera dice que los modelos bases están cerca del azar, 0,36, el azar puro es 0,31. Sin entrenarla para tu tarea específica, LLaMA acierta casi lo mismo que tirar una moneda. Ese 77% de la tabla es de una versión afinada con el examen mismo.

[04:46] Y la segunda dice que esa confiabilidad tres veces mejor es después de recalibrarla a mano. De fábrica viene casi seis veces peor. Y hoy hay un caso donde se derrumba. Así que la respuesta de cuál es mejor depende, y es bastante.

[05:00] Si tu tarea tiene pocas opciones y la vas a entrenar con tus propios datos, LLaMA, sin dudarlo, es gratis, es tuya y es más rápida. Si necesitas que funcione hoy sin entrenar nada y con muchas categorías, Shep, cuando te dejen entrar. ¿Y para qué están usando esto? Te doy cuatro casos reales con números. Uno, una empresa de base de datos le entregó clasificar 100.000 filas de texto, les tomó 40 segundos y 50 centavos. Con un modelo de lenguaje tardaba 32 minutos y costaba 37 dólares. Es una diferencia

[05:32] muy grande. Dos, alguien le pasó 100 correos, mitad legítimos, mitad fraudulentos, y los clasificó todos en un segundo y medio. Es una locura. Tres, otro clasificó 1018 trabajos de una investigación por 8 centavos en total.

[05:50] Cuatro, revisión automática de código, medio segundo cada una a 7 100 milésimos de dólar, 200 veces más barato que hacerlo con Cloud. ¿Ves el patrón? Ninguno reemplaza a una persona, mover mucho volumen a un costado rápido y barato, con el objetivo de que lo importante les llegue a un humano mucho más rápido y mucho más barato. Y el contraejemplo que circuló bastante estos días es que alguien armó una máquina, un bot que compraba y vendía en bolsa según lo que el modelo decía, sin

[06:23] entrenamiento. Y esta persona perdió más de 30,000 dólares. Pero ¿qué pasó acá? El modelo no falló, contestó rápido y barato y con el nivel de confianza que ya venía establecido. Lo que falló fue no entrenarlo y darle a decidir algo importante sin supervisión, donde literalmente puede perder demasiado dinero. Y si tenés un negocio donde no necesitás una herramienta más de inteligencia artificial, sino que alguien detecte los problemas que tenés, los cuellos de botella, dónde estás

[06:51] perdiendo tiempo y dinero y que te dé soluciones que tu competencia no tiene a nivel tecnológico, el enlace al diagnóstico está en la descripción. Comentá qué te parece el Haya, que supuestamente destronó a Shep a unos días de su lanzamiento.
