# Granite 4.2 ⚡ ¿Vale la pena este Nuevo Modelo de IBM? Review y COMPARATIVA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=CuvIvOnhUjc)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-28
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:13

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Recientemente se ha lanzado la nueva colección de modelos Granite por parte de IBM, en esta ocasión Granite 4.2. Son distintos modelos en distintos tamaños, tenemos desde 30B, 8B hasta 3B. El día de hoy vamos a probar la versión más pequeña, el 3B, y este es un modelo de lenguaje únicamente de generación de texto, tanto en la entrada como la salida solo tiene texto y está preparado para únicamente 12 idiomas, comparado por ejemplo contra Gemma o contra Quen, que según más de 150. Sin embargo, una

[00:33] cosa es lo que nos dicen y otra cosa es probar. De igual forma, por aquí mencionan que está el idioma español, que es un modelo con razonamiento, que puede hacer llamada a herramientas y que es un modelo conversacional. No es un modelo base, sino un modelo ya preparado para funcionar como chat. Algo interesante de este modelo es que se libera bajo licencia Apache 2.0 y tiene únicamente 128,000 tokens de ventana de contexto de forma nativa, expandibles hasta 512,000. Sin embargo, el

[01:02] expandirlos hace que pierda calidad el modelo, dándole posibilidad de responder en conversaciones más largas, pero con menor calidad. Nos dicen que es mejor para razonamiento, generación de código, llamada a herramientas, flujos de trabajo agénticos y diálogos multilingües. No viene mucha información comparado contra modelos de la competencia, sin embargo, sabemos que los benchmarks son los padres. Nos pueden decir lo que sea y de todos modos lo mejor va a ser probar. Así que el día

[01:28] de hoy vamos a descargar este modelo cuantizado para ejecutarlo en llama cpp, así que lo vamos a descargar en formato gguf. Aquí ya lo tenemos, de manera oficial por la misma gente de IBM subido y si nos vamos a archivos y versiones, descarguemos por ejemplo la versión Granite 4.2 3B Q6K, el cual pesa 3.01 GB. Este modelo, tal como decimos, solo es un modelo de lenguaje, no tiene visión, no es multimodal y solo tiene 131,000 tokens de ventana de contexto.

[01:58] Vamos al repositorio original porque en el de JUF no copiaron toda la información. Aquí nos mencionan exactamente 128.000 tokens de ventana de contexto y que solo es de generación de texto. ¿Por qué mencionamos esto? Porque modelos similares que tenemos actualmente muy buenos son, por ejemplo, Gema 4E2B, que a pesar de ser un modelo que aparentemente es más grande, esas son partes extra que se suelen activar únicamente cuando se requieren, imagen, audio, vídeo. Comúnmente solo sería de

[02:26] texto. Y de igual forma que el modelo sea más grande no significa que requiere más memoria. Y es un modelo bastante bueno y tal como decimos, preparado se supone hasta para 140 idiomas. Otro que tenemos es el Qwen 3.52B, el cual también es un modelo multimodal.

[02:43] Este tiene lo doble de ventana de contexto, 262.000, y realmente también sigue siendo bastante interesante. En esta ocasión, diciendo por aquí, preparado hasta para 201 idiomas. De ambas colecciones de modelos, por cierto, no únicamente tenemos versión 2B, sino que también tenemos versión 4B en ambos casos. Así que aquí tenemos una versión intermedia de 3B y en la competencia tenemos una versión un poquito más pequeña y una versión un poquito más grande.

[03:10] Mencionamos estos modelos porque los vamos a descargar y los vamos a probar comparado contra este Granite 4.2, que se supone que es más nuevo y pues teóricamente debería ser mejor porque hasta es más grande. De todos modos, tal como comentamos, idiomas menos, ventana de contexto menos, multimodalidad no tiene. Tenemos entonces el archivo del modelo, hice una carpeta para el mismo y pues meto aquí el archivo, versión 3B en Q6K y, por ejemplo, el Gema 4E2B no lo tengo en Q6, lo tengo en Q4, es modelo

[03:42] más pequeño y además en Q4 lo tenemos con visión, dado que tiene visión, lo tenemos con MTP, dado que tiene este modelo borrador para predecir más rápidamente los tokens y en el cuan 3.5 2B el MTP viene incluido en el mismo modelo, también más pequeño el modelo y la cuantización más agresiva y también el MM Pro de visión. Aquí ya tenemos el punto bat para intentar ejecutarlo con los parámetros que nos recomiendan de sampleo y de ventana de contexto y vamos a ver qué sucede cuando lo intentamos

[04:12] abrir y en esta ocasión por alguna extraña razón nos está consumiendo un montón de memoria. De hecho no cabe completamente bien en mi GPU y se termina utilizando RAM. Recordemos siendo únicamente de 128.000 tokens de ventana de contexto, sin tener MTP, sin tener visión ni nada de eso. Vamos pues a intentar probarlo con una instrucción como la siguiente: desarrolla en HTML 5 sin recursos externos en un solo archivo una landing page para un servicio de VPS ultrarrápido potenciado por IA. La

[04:44] velocidad claramente no está siendo la mejor, esto es sencillamente pues porque no cabe bien en mi GPU, se está utilizando RAM. Lo voy a detener y he bajado la ventana de contexto a la mitad para ver si así sí cabe. Y sí, ahí ya está ocupando 7.7 GB, con lo cual ahora la ejecución debería ser más rápida. Y efectivamente estamos a ochenta y tantos tokens por segundo, casi 90. De momento en cuanto capacidades del modelo parece que no son muchas, me refiero específicamente a la multimodalidad que

[05:12] no tiene, a la ventana de contexto reducida y luego pues el problema no es solo de capacidades de ese tipo de funcionalidades, sino también que aparentemente consume mucha memoria. Esperemos si por lo menos la respuesta sea interesante. No nos lo puso en la cajita adecuada para código, sin embargo pues lo vamos a copiar y pegar. Voy a guardar un archivo y lo voy a abrir. Y esto fue lo que este modelo, que en su misma documentación dice que preparado para código, nos hizo. Vamos ahora a

[05:41] probar Gema 4 E 2B, más pequeño en billions de parámetros, más cuantizado y a pesar de ello con visión con MTP para acelerar los tokens en esta ocasión ligeramente más ventana de contexto 131.072 en vez de 128.000 y probemos exactamente para la misma consulta. Aquí nos daremos cuenta no únicamente la calidad del modelo, sino también cuánto consume de memoria. Está generando 160 y tantos tokens por segundo prácticamente lo doble. La respuesta parece ser que está mejor con algo de texto previo. El

[06:15] código más completo y escrito en la caja correspondiente y esto mientras nos consume de memoria únicamente 3.6 GB. El otro con 64.000 de ventana de contexto nos consumía 7.7 sin MTP y sin visión. Aquí tenemos MTP y visión y el doble de ventana de contexto, de hecho más de lo doble porque no son 128.000, son 131.072 y a pesar de ello nos consume la mitad, genera tokens más rápido y aparentemente la respuesta en cuanto a texto es mejor y en cuanto a código también, la verdad.

[06:48] Esto es lo que nos generó. Claramente no es la mejor calidad, pero teniendo en cuenta el tamaño del modelo, la verdad es que no está mal. Granite 4.2 3B 85 tokens por segundo, Gema 4E 2B 169 tokens por segundo. Más del doble de ventana de contexto, MTP para acelerar los tokens y aún sin eso de por sí sería más rápido. Además tiene visión de imágenes, audio, vídeo tal como estamos viendo por aquí y pues aparentemente más inteligente. Vamos a probar ahora con el Qwen 3.5 2B, el cual también tiene

[07:21] visión, tiene 262.144 tokens de ventana de contexto, tiene también MTP, aunque en este caso no acelera tanto como en el otro. De igual forma está siendo más rápido y también aparentemente está dando mejor respuesta. Si revisamos cuánto está consumiendo de memoria, pues prácticamente lo mismo que el otro, tampoco es que esté cambiando mucho, el otro era 3.6, este es 4.4, claramente es más, sin embargo, es bastante menor a lo que el Granite 4.23B, dado que aquel sin visión, sin MTP y con

[07:53] menos de la mitad de ventana de contexto, consumía más memoria, generaba tokens más lento y era peor calidad la respuesta. Vamos a ver aquí qué es lo que nos hizo este modelo Qwen 3.52B y pues básicamente esto es lo que nos generó. En cuanto a iconos parece que no le ha atinado a las clases correspondientes, sin embargo, en general pues creo que es el que mejor respuesta dio y esto con los modelos más cuantizados en vez de en Q6 en Q4 y esto modelos 2B, no 3B. Recordemos que tanto

[08:24] Gema como Qwen tienen también tamaño de 4B y a pesar de aparentemente en billions de parámetros ser más grande, seguramente consumen menos, dado que ya estuvimos viendo que ese Granite pues la verdad es que no es lo mejor. Aquí precisamente tengo el Qwen 3.54B con visión, con MTP, con 262,144 tokens de ventana de contexto, lo voy a ejecutar y nos está consumiendo 10.7 GB, así es, pero con más de cuatro veces la ventana de contexto del otro, siendo más grande en billions de parámetros,

[08:58] teniendo visión y teniendo MTP. Ahora revisemos el Gema 4E4B, estos son los ajustes que tenemos en este, con máximo 131,000 tokens de ventana de contexto, aún así es un poquito más, MTP, también visión y consumiendo 6.1 GB, 6.1 GB y la KV cache ni siquiera está cuantizada. Doy en regenerar para ver la calidad y la velocidad de la respuesta y pues vemos que aún así sigue siendo más rápido que el otro. Ese Granite 4.23B la verdad es que a pesar de ser aparentemente más pequeño, pues no es

[09:33] que genere tokens muy rápido y en todo es que está mal, menos idiomas, menos inteligencia, menos ventana de contexto, no tiene multimodalidad, consume más memoria, menos velocidad, no lo sé, pero al menos en mi caso no es algo que me convenza mucho, la verdad. Aquí solo por revisar vamos a ver el Gemma 4 E 4B, aunque el Qwen 3.5 4B para esto es mejor, que nos hizo de código. Y aquí tenemos lo que nos hizo este modelo, Gemma 4 E 4B, y pues no hacía falta ver este, desde los 2B ya estaban siendo

[10:03] superiores, con lo cual pues nuevo modelo, poquito más grande, pero peor en todo. Si quieres seguir viendo este tipo de vídeos, simplemente dale like y suscríbete.
