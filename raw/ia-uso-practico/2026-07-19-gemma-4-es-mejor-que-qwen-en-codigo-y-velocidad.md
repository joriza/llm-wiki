# Gemma 4 🚀 es MEJOR que Qwen en CÓDIGO y VELOCIDAD

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=0pa-Fy4hsBA)
- **Canal**: Nichonauta
- **Publicado**: 2026-07-19
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:36

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] A ver, a ver, artificial analysis, leatherboards models, todos los modelos, pesos abiertos, tamaño muy pequeño y pequeño y vamos a buscar cuen 3.5 9b. Abramos otra pestaña exactamente donde mismo y busquemos gema 4 12b. Aquí nos dice que el cuen 3.5 9b con razonamiento activo tiene un total de índice de inteligencia de 21 mientras que el gema 4 12b 22, pero faltan algunos benchmark.

[00:34] Okay, pero por ejemplo para código y uso agéntico, ¿qué tal? Yo ya sé de por sí que para temas de redacción, escritura en distintos idiomas, traducción, escritura creativa y conocimiento está mejor que cuen 3.5. Cuen 3.5 9b en uso de herramientas, en razonamiento, en visión y en código aparentemente era mejor. Aparentemente era, ¿por qué?

[00:58] Porque acabamos de ver lo referente a una actualización de gema 4 por parte del mismo Google en el que corrigieron varios detalles incluyendo la plantilla del modelo y ahora no solo es que genere más tokens por segundo, tal como en el video anterior que aún no subo, multiplicando por tres literalmente la velocidad, sino que también en cuanto a inteligencia de uso de herramientas ha mejorado muchísimo. Entonces, para casi todo tipo de texto era bueno, el problema era con las herramientas. Si

[01:29] revisamos por aquí por ejemplo el benchmark terminal bench, que es de uso agéntico, uso de herramientas, daba 18% o 11% con o sin cadena de razonamiento activa, mientras que el cuen 3.5 9b daba, ¡wow!, 24 o 18. De acuerdo, pero porque usaba herramientas y gema estaba mal en eso, ya lo corrigieron. Sin embargo, específicamente en código, ¿qué tal es cada uno. Por aquí vemos que el Qwen 3.59B con o sin razonamiento, únicamente en código, 28% escribiendo código sin contar el uso de

[02:09] herramientas, ¿de acuerdo? Ya vimos entonces que el uso agéntico de Gemma 4 estaba mal, pero que ya está corregido, tal como en ese video más reciente mostramos, porque actualizaron la gente de Google los modelos, con lo cual hay que volverlos a descargar, pero este modelo de por sí, desde antes, ya era superior en código. Sin cadena de razonamiento, 30%, mientras que Qwen 3.5 con o sin cadena de razonamiento, 28, pero es que este con cadena de razonamiento activa, 38%.

[02:41] Era un modelo que en todo lo referente al lenguaje, era mejor, y ahora también lo vamos a poder disfrutar mucho más para código, no porque haya mejorado en código, sino porque era mejor en código, pero usaba mal herramientas. Dado que ya usa bien herramientas, podemos tener una velocidad a por tres, más inteligencia, mejor código y uso agéntico de este modelo. Vamos a revisar entonces lo primero. Yo por aquí tengo Qwen 3.59B a 4 bits. Lo tengo con MTP para acelerar la generación de tokens, como vimos en

[03:17] el video pasado, y pues una vez que yo le pregunto algo, vemos que la generación de tokens por segundo es de aproximadamente 70 cuando comienza, pero esperemos a que termine, porque para empezar todavía ni siquiera da respuesta final, está en cadena de razonamiento. Y listo, en total nos dio 67 tokens por segundo, este modelo 9 billions, consumiéndonos además 10.3 GB a pesar de tener la KV caché en Q8. Ahora vamos a ver un modelo más grande que debería de consumir más memoria y debería de ser

[03:49] más lento. Pues memoria consumió igual, sin embargo, lo tengo sin la KV caché cuantizada. Un modelo 12B y uno 9B consumiendo lo mismo, a pesar de que el 9B es más pequeño y de que tiene la KV caché cuantizada. Pero no solo eso, veamos la velocidad de generación de tokens. Por ahí está arriba de 70 y vemos que a pesar de ser más grande, la velocidad final fue mayor. Y esto en texto, pero en código se nota aún más.

[04:17] Por aquí tenemos lo del vídeo previo, 92 tokens por segundo. Luego de contoy cadena de razonamiento, generar un total de 3700, generando un generando un total generando un total de 3729 tokens a una velocidad promedio de 92 tokens por segundo, mientras que sin el MTP 36. Mejor en todo lo referente al lenguaje, mejor en código, ahora usa mejores herramientas y además es mucho más rápido. A pesar de ser más grande, consume menos memoria, así que está perfecto, ¿no? Pues parece ser que los

[04:50] modelos Gemma 4, a pesar de que siguen siendo la versión 4, han mejorado muchísimo simplemente con estas correcciones y el añadido de MTP. Y luego además, si a esto le sumamos que okay, lo estamos cargando en Q4, sí, pero QAT, la técnica que tiene Google para que al momento de cuantizar los modelos a 4 bits sigan prácticamente al 99% de su calidad. Así que estamos disfrutando de lo mejor de lo mejor en este momento y no hace falta que sea el 12B. Se aplica similar al 26 B, al 31 B,

[05:21] al E4 B, al E2 B. Así que, sin importar la capacidad de hardware que tengas, mientras te quepa algún Gemma 4, vas a estar disfrutando de mejoras como estas. Abrimos Open Code y desde aquí comenzamos a probar. Desarrolla el juego de Flappy Bird en HTML en un único archivo llamado flappy.html.

[05:42] Si revisamos en los logs de llama.cpp, vemos que estamos cerca de los 90 tokens por segundo y pues aquí ya ha terminado muy rápidamente. Voy a revisar el archivo que nos hizo y pues okay, el juego es bastante simple para esa instrucción simple inicial, sin embargo funciona y usó correctamente herramientas, cosa que es lo que le costaba. Vamos a decirle, mejora el estilo visual al máximo. Presionamos intro y veamos qué es lo que hace. Está usando de nuevo herramientas correctamente, vemos 90 y tantos tokens

[06:15] por segundo gracias al MTP en un modelo 12B en una RTX 3060 de 12 GB y pues aquí ya terminó. Recargamos [resoplido] y aquí está nuestro modelo Gemma 4 12B generando tokens muy rápidamente usando correctamente herramientas y siendo bastante bueno en desarrollo, tal como estamos viendo. Claro que esta es una prueba simple, pero pues ya sabíamos más o menos cómo funcionaba el modelo, sin embargo con las mejoras de velocidad y de uso de herramientas, pues está perfecto. Vamos a probar una última cosa

[06:49] y siempre ha funcionado a la primera, por cierto. Cambia el estilo visual por completo a un estilo neón cyberpunk con muchos efectos y animaciones. De nuevo más de 90 tokens, 93 tokens por segundo, a pesar de que ya llevamos mucho contexto. De nuevo usando herramientas sin problema y ahí está.

[07:12] Actualizamos y listo, pues tal como vemos funciona perfectísimamente este modelo Gemma 4 12B y sus demás variantes de Gemma 4 con los ajustes que hicieron de velocidad y de uso de herramientas. Descarga lo actualizado, lo vimos en el video pasado por si quieres tener más información. Si quieres seguir viendo videos como estos, simplemente da like y suscríbete.
