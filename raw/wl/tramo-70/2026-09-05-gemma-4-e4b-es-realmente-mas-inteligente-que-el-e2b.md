# Gemma 4 E4B 🧠 ¿Es Realmente más INTELIGENTE que el E2B?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=NYcH2wHmzNQ)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-04
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya en el video pasado estuvimos probando el Gema 4E2B y en esta ocasión vamos a probar el 4B. Sigue siendo prácticamente el mismo modelo, mismas bondades y de todo, simplemente en esta ocasión posesiendo del doble de tamaño, lo cual lo haría técnicamente más inteligente.

[00:15] Sin embargo, ¿qué tanto se nota? En tamaño es lo doble, en inteligencia será lo doble, lo dudo. Lo vamos a descargar en formato GGUF del agente de un slot. En esta ocasión el que Google preparó con Qat para ser cuantizado a 4 bits.

[00:29] Este modelo funciona para más de 140 idiomas. Como entrada puede tener texto, imagen, video, audio, puede usar herramientas. Es un modelo con cadena de razonamiento, MTP para acelerar los tokens y demás. Así que en esta ocasión vamos a descargar el Gema 4E4B UDQ4KXL.

[00:47] Vamos a descargar el mm prog para la visión MBF16 y vamos a descargar el MTP para la aceleración de tokens en Q4 pesando este último como 60 MB. Una vez con eso descargado, vemos que en total son 4.9 GB en disco duro y una vez que lo ejecutemos en llama CPP, tal como lo hacemos en nuestros tutoriales de llama CPP, pues vamos a ver cuánto consume. Y vemos por aquí que está consumiendo algo así como 6.1 1 GB, el modelo completo, su ventana de contexto completa, su MTP, su visión, etcétera, etcétera. Este

[01:19] modelo es rápido en GPU, pero también en CPU. Es un modelo bastante bastante optimizado que simplemente teniendo la memoria suficiente, pues puede funcionar sin problema. Más aún el 2B, claro está, pero este 4B teóricamente sería más inteligente. Estos son los parámetros con los que lo estamos ejecutando.

[01:35] Modelo mm prog, borrador, valores del borrador, cadena de razonamiento activa, ventana de contexto completa, parámetros de desampleo que Google recomienda y vamos a proceder con la primera instrucción para ver qué tal funciona.

[01:49] Aquí lo que nos va a interesar más bien es la velocidad del mismo y estamos viendo que genera arriba de 120 tokens por segundo aún dentro de su cadena de razonamiento, siendo que comúnmente es donde más le cuesta predecir los tokens correctamente. Luego de esos 13 tokens que generó tanto en respuesta como en razonamiento 121.77 tokens por segundo. Ahora lo vamos a probar en algunas cosas de desarrollo que como desarrollo no tiene bastante sentido, pero porque el objetivo es ver

[02:15] qué tan inteligente es para resolver problemas. No estamos haciendo uso agéntico, no estamos utilizando dependencias muy específicas ni nada de eso. Simplemente queremos ver su inteligencia, qué tan bueno es resolviendo problemas. Entonces, vamos a regenerar estas respuestas que habíamos generado en el pasado con el E2B. Y por aquí vemos que este Gema 4 E4B en este momento está generando arriba de 140 tokens por segundo en este tipo de tarea, dado que el MTP perdice tokens mucho mejor en código, por ejemplo. Sin

[02:45] embargo, aquí no queremos ver qué tan bueno es en código, queremos ver qué tan bueno es el modelo resolviendo problemas. Esta primera instrucción, este primer prompt es para que intente hacer una página web, una landing page y vamos a ver qué tal la desarrolla, que aquí vimos que flaqueó bastante el modelo Gema 4 E2B con esta instrucción.

[03:02] Sin embargo, es una instrucción genérica, no le estamos pidiendo nada en específico. Vamos a visualizar. Y en esta ocasión esto es lo que tenemos. Sí se ve mejor que la del E2B, sin embargo, pues aún no es 100% algo que nos interese como para tener una página web profesional, pero recordemos, sin ninguna dependencia y sin ninguna especificación muy detallada, simplemente un prompt como este en el que se le indican ciertas secciones y la verdad no está mal. El modelo por sí solo sin nada más. Es un modelo que para

[03:31] desarrollo se puede llegar a utilizar en esta ocasión desarrollo web. Vamos a ver ahora qué tan bueno es creando una calculadora que además sea funcional. Esto el modelo E2B lo hizo perfecto y parece ser en esta ocasión que también este modelo va a poder sin demasiado problema. Pongo 78 - 8 le damos en igual 70 * 2 = 140 + 2 = 142 / 2 = 71. Le damos en borrar. presiono igual y pues sigue en cero. Sí, perfecto. La verdad es que bastante bien la calculadora, a excepción en este caso

[04:05] de que hizo el botón del doble de tamaño y pues ya solo quedaba un espacio ahí, pero este no es un fallo como tal muy catastrófico ni nada de eso. De hecho, hasta pudiera ser que así la queremos por simple diseño, qué sé yo. Así que, pues, algo completamente funcional.

[04:19] Ahora vamos al tercer prompt, a esta tercera prueba, que en esta ocasión es intentar hacer un reloj analógico. El modelo Gema 4E2B aquí lo hizo funcional, sin embargo, no correctamente pintado todo. O bueno, todo estaba pintado, pero no en las coordenadas adecuadas. Vamos a ver aquí. Y en esta ocasión sí está bastante mejor, aún no es perfecto, pero ya tiene más sentido que lo que hizo el modelo E2B. Intentamos cambiar a tema claro, pasamos a tema dark y la verdad es que bastante bien. Sin embargo, vemos

[04:49] que muchos números están aquí juntos, no se pusieron en los lugares correspondientes. De igual forma sí se nota una mejora comparado con el E2B. Vamos ahora a ver la simulación de fluidos, que en esta ocasión el E2B también lo hizo de forma correcta y por aquí pues parece que también vemos en esta ocasión que si hay gravedad van las cosas cayendo, colisionando unas con otras. ¿Y qué sucede cuando intento dar clic o algo así? Pues no, en esta ocasión no sucede la gran cosa, no pasa

[05:14] nada con que yo haga eso. Intento dar pausa, se pone pausa, intento poner arena. No sé si se comporte realmente de forma diferente comparado con el agua, pero estamos viendo aquí algo bastante interesante. Quiero cambiar, por ejemplo, la cantidad de partículas y la verdad es que sí cambia bastante. No sé qué tal se vea en el video por el bit rate de grabación. Sin embargo, la verdad es que que un modelo pequeñito haga algo como esto está muy muy bien.

[05:41] Vemos que podemos cambiar 100% el número de partículas que queramos. Y de hecho, cuando yo doy clic, lo que sucede es que yo creo partículas y si hago varias en el mismo lugar, pues colisionan y se mueven a los lados. Bastante interesante, la verdad. Si aumentamos o disminuimos la gravedad, quiero ver qué es lo que sucede. Y pues sí, efectivamente, la gravedad es más fuerte y se empieza hasta volver loco todo porque todo intenta estar en el suelo.

[06:05] Bastante interesante, la verdad, este modelo Gema 4E4B sí se nota una mejora con respecto al E2B, sin embargo, el E2B, la verdad es que no se queda nada atrás. Te recomiendo ver ese video si es que te llama la atención un modelo aún más optimizado, pero de igual forma en esta ocasión sí se nota una mejora con este E4B. Es un modelo del doble de tamaño en el que aún a simple vista, con pruebas simples, se sigue notando la mejora de inteligencia, no solo el aumento del tamaño a lo doble. Vamos a

[06:34] recordar simplemente que también este modelo tiene visión de imágenes, audio, video y probemos, por ejemplo, con la descripción de una imagen. Le vamos a decir, "Describe la imagen." Y vamos a ver también que el MTP es bueno, pero diciendo tokens aún cuando la entrada no es únicamente texto, en esta ocasión siendo también imagen y aún con ello genera buena velocidad. Vemos que tiene sentido lo que dice aquí con lo que dice la imagen, así que bastante bien. Es un modelo bastante interesante desde la

[07:01] versión E2B, con lo cual este E4B pues no hace más que mejorar, lo cual está de por sí muy interesante. Si quieres seguir viendo estos videos para por ejemplo ver ahora el 12B qué tanto mejora, teniendo en cuenta teniendo en cuenta que es tres veces el tamaño de este y seis veces el tamaño del E2B.

[07:19] ¿Mejorará tanto como su tamaño? Es algo que estaremos viendo.
