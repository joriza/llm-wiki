# Spark X2.5 4B ⚠️ ¿Realmente es SUPERIOR a Gemma 4 y Qwen?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=7zUD_rh9MLQ)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-03
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:02

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya hemos probado el modelo de XH Token Spark 2.5 en su versión 1.7B. El día de hoy lo vamos a probar en su versión 4B. Recordar que este es un modelo de lenguaje, únicamente tiene como entrada y salida texto, liberado bajo licencia Apache 2.0, preparado para funcionar en hasta 200 idiomas y con 1 millón de tokens de ventana de contexto.

[00:24] Nos dicen que es muy bueno en tareas de código y tareas agénticas, como lo puede ser dentro de Codex, Cloud Code, Open Cloud y Hermes. Según su gráfica comparativa, vemos que este modelo Spark X 2.5 4B, según es aparentemente bastante superior a modelos como el Qwen 3.5 4B o Gemma 4 E 4B. De hecho, también por aquí aparece el Qwen 3.5 9B y de igual forma se ve bastante interesante este modelo. Así que para ello nos vamos a ir a cuantizaciones y vamos a irnos directamente a la oficial, formato GGUF

[00:59] de mismo XH Token. Si nos vamos a archivos y versiones, lo primero con lo que nos vamos a topar es que de cuantización nada. Esto simplemente es el mismo modelo pero en formato GGUF, aunque sigue a precisión completa, pesando 8.23 GB. Una vez que lo tengamos descargado, lo siguiente que tenemos que hacer es clonar su versión modificada de llama.cpp para luego compilarla y poder ejecutar dicho modelo, dado que actualmente no es compatible ni con llama.cpp, ni ollama, ni LM Studio de

[01:29] forma nativa. Luego de eso, por aquí ya tengo el punto bat con el que lo voy a ejecutar y vemos por aquí que solo lo ejecutaré con 32,768 tokens de ventana de contexto. Y esto básicamente porque a pesar de que nos prometen que es bastante eficiente en cuanto a ello, lo cierto es que requiere bastante memoria. Lo ejecuto y vamos a ver cómo nuestra GPU pasa de 0 GB a más de 7.8. Una vez que termino de cargar el modelo completo, ocupando 7.1 GB, recordemos porque el modelo está

[02:01] precisión completa, no cuantizado, y con 32,768 tokens de ventana de contexto, con lo cual, dado que no tenemos el modelo cuantizado, pues teóricamente vamos a obtener la mejor calidad que nos puede dar dicho modelo. Por aquí ya tenemos las respuestas que nos generó y vemos que en un promedio de 36 tokens por segundo estuvo generando la primera respuesta, que es básicamente una landing page creada en HTML, CSS, JavaScript, y esto no es tanto para ver qué tan bueno es programando, sino qué

[02:30] tan inteligente es siguiendo instrucciones y conociendo el mundo, conociendo cómo es que comúnmente se hace esto de por aquí. Vamos a ver la respuesta [carraspeo] y la verdad es que, como primera impresión, no está nada mal. Vamos bajando y el problema es que la demás información no está y tampoco funciona la animación del JavaScript para esta sección, con lo cual, aún con el modelo 4B a precisión completa, lo cierto es que no nos está dando la mejor calidad aún en la instrucción más simple. La

[03:00] parte inicial, el hero, se ve suficientemente bien. El problema es todo lo demás, que está vacío y que en el JavaScript ni siquiera funciona correctamente la animación que intentó hacer. Nos pasamos ahora a ver esta calculadora, vemos que la respuesta terminó en idioma inglés con algunas partes en español, curiosamente, y una vez que intentamos ver la calculadora, pues esto es lo que tenemos. Parece que todo está bien hasta que empezamos a probarla. Pongo 75 - 5 = y el igual se

[03:30] escribe, no es que recibamos dicha respuesta. Entonces, intentamos borrar y el símbolo de borrar se escribe en vez de literalmente borrar. Podemos limpiar la pantalla completa y no, tampoco, también queda escrito. Entonces, esta calculadora tampoco está siendo funcional. Tanto el modelo Qwen 3.52B como Gema 4E2B funcionan mejor que este modelo, aún cuantizados a 4 bits y este a precisión completa. Vamos entonces a la siguiente prueba y esta es intentar hacer un reloj analógico, tratando de

[04:01] pintarlo y todo, que sea realmente funcional, utilizable, entendible, con puro HTML, CSS y JavaScript. Y esto es lo que tenemos. Si bien aparentemente se intentó pintar todo, lo cierto es que nada tiene demasiado sentido. Le damos en cambiar tema y pues sí, cambia de claro a oscuro. Sin embargo, pues no funciona para nada. Y teniendo en cuenta que nos prometen ser superior a los demás con mucha diferencia y que además lo estamos cargando a precisión completa, pues sinceramente me esperaría

[04:30] más. La verdad es que de momento poco ha funcionado este modelo. Vamos a la última prueba, que es una simulación de fluidos y por aquí tenemos la respuesta. Vamos a ver qué es lo que logró hacer. Y pues vemos que aparentemente empiezan a caer las cosas, sin embargo, nunca dejan de caer, no hay como un fondo como tal.

[04:49] Y cuando intento dar clic puedo mostrar, sí, nuevas partículas, pero nunca sucede la gran cosa entre ellas. Cambio a modo arena y pues no aparece nada. Le doy en limpiar, pausar y la verdad es que no. Este modelo que promete ser superior a otros modelos bastante interesantes como Gema 4 E4B, Qwen 3.5 4B o 9B, lo cierto es que no está ni cerca de las versiones 2B de esos modelos, aún cuantizados a 4 bits. Este lo estamos cargando a 16 bits y es un modelo más grande y que además

[05:20] dicen que es más inteligente. Pero su ejecución no es tan sencilla, dado que necesitamos un llama.cpp modificado, su ventana de contexto no es cierto que consume tan poca memoria, no es cierto que funciona bien en código y no es cierto que funciona mejor que esos otros modelos que comentamos, que para empezar estamos comparando este a precisión completa y los otros a 4 bits. Así que sinceramente, bajo mis pruebas, bajo mi experiencia, no sería un modelo que recomiende, ni el Spark X2.54B

[05:53] y quizás tampoco el 1.7B. Te recomiendo ver ese otro vídeo si es que no lo has visto. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
