# Test Modelos Muy Pequeños 2B 🤖 ¿Hasta Dónde Pueden Llegar con IA?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=muiow8wjgIU)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-22
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Con los ajustes que ya tenemos de nuestros modelos de lenguaje en este reto que estamos haciendo de ejecutar modelos 2B para prácticamente todo, vamos a ver ahora desde cosas más simples hasta cosas más complejas hasta dónde podemos llegar de momento con ellos. Para ello entonces, desde mismo Open Code que ya habíamos configurado o desde la misma interfaz de mismo llama CPP, vamos a comenzar a probarlos desde cosas básicas hasta cosas más complejas.

[00:29] Por ejemplo, vamos a comenzar con una consulta simple como ¿cuál es la capital de Francia? Presionamos intro y aquí en este caso Gema 4E2B nos dice la capital de Francia es París. A casi 179 tokens por segundo luego de una pequeña cadena de razonamiento. Si pasamos a una nueva conversación y ahora probamos el otro modelo y le decimos algo como "traduce el siguiente texto a idioma inglés", lo debería de hacer también sin problema.

[00:59] El texto a poner para que traduzca es "si te gusta el video, da like y suscríbete". Le damos en enviar, está haciendo su cadena de razonamiento y al final nos responde correctamente. En este caso, por cierto, con una gran cadena de razonamiento únicamente para esto de por aquí. Sabemos que los modelos Qwen tienden a razonar demasiado. Aquí lo podemos revisar un poco. Cambiamos nuevamente a Gema 4E2B y vamos a ir subiendo la dificultad.

[01:25] Ahora, por ejemplo, le vamos a pasar una imagen y vamos a intentar hacer que se equivoque. Dime cuántos gatos y cuántos perros hay en la imagen. Y aquí nos responde, luego de una cadena de razonamiento, "en la imagen no hay ningún gato ni ningún perro. La imagen muestra un casco de astronauta". Vamos a una nueva conversación. Ahora, por ejemplo, con Qwen 3.52B, le vamos a pasar un PDF técnico del paper que comenzó con todo esto de los modelos de lenguaje. Son 11 páginas con bastante información y muy compleja.

[01:59] Adjuntamos el PDF, de lo contrario podemos copiar y pegar todo el texto y le vamos a decir, "Dime resumidamente en idioma español de qué trata ese documento." Presionamos intro y de nuevo vemos que comienza a razonar demasiado este modelo, pero también porque lo tenemos en dicha posibilidad. Aquí ya nos respondió y nos dice lo siguiente, "Este documento es el resumen de la investigación presentada titulada Atención es todo lo que necesitas.

[02:27] Resumen breve introduce una nueva arquitectura de red neuronal llamada Transformer. Conclusión es el primer modelo de transducción basado puramente en atención, estableciendo un nuevo estado del arte en tareas de traducción como entrenamiento mucho más rápido que los modelos basados en RNN o convoluciones." Con lo cual vemos que podemos consultarle cosas a partir de contextos muy extensos, hasta lo que pudiera ser un libro completo, claramente que quepa en la ventana de contexto, que en este caso tenemos

[02:55] 131,000, pero estos modelos son de hasta 262,000, expandibles a 1 millón. Ahora, por ejemplo, le voy a decir, "Crea una presentación al estilo PowerPoint pero en HTML sobre todo ese documento." Presionamos intro y esperemos qué tal funciona. Aquí teniendo en cuenta que es instrucción respuesta, no estamos haciendo de momento ningún uso agéntico.

[03:18] Aquí ha terminado y vamos a ver qué nos hizo este modelo quant 3.52B cuantizado a partir de dicha información sin demasiado prompt de nuestra parte. Aquí ya terminó y entonces voy a copiar y pegar, lo guardo como test.html, lo pego, guardo y vamos a intentar ejecutar. En este caso, esto es lo que tenemos como primera diapositiva, le doy en siguiente, tenemos la siguiente diapositiva y al darle en siguiente, de hecho, ya no funcionó. Si bien el mismo código tiene hasta seis slides, pues

[03:51] parece ser que el código, la lógica que va cambiando entre diapositivas, en este momento no funciona bien. Con este mismo modelo o con el otro, Gemma 4e2b, vamos a intentar que nos dé nuevamente todo el código, pero en esta ocasión corregido.

[04:06] Es decir, aún no hacemos uso agéntico. Va a tener que reescribir todo, pero corregido. Al pasar de la primera diapositiva, el botón de siguiente deja de funcionar. Presionamos intro y pues aquí comienza, en este caso, Gemma 4e2b, a intentar corregir. También podíamos probar con el modelo original, pero es para ir intercambiando. Aquí, según él encontró el problema y logró corregirlo, vamos a ver si es cierto. Le doy en copiar, pego y guardo el archivo, recargamos, siguiente y pues ahora no

[04:39] funciona el dar clic al siguiente, pero funciona darle en anterior. De momento ya nos estamos topando con el primer problema y es que dentro de un simple chat, al momento de intentar hacer cosas ya más complejas como un código, a partir de un prompt muy simple, tratando de delegar todo el modelo de lenguaje, pues sí estamos viendo que en ambos casos parece ser que se le está complicando. Ni con 4.52b, intentando generarlo bien a la primera, ni con Gemma 4e2b, intentando corregir.

[05:08] A pesar de ello, hemos estado viendo que de por sí, en un simple chat, sin herramientas ni nada, han sido funcionales para muchas cosas. Y por ejemplo, ahora le podemos preguntar algo como lo siguiente, escribe un poema sobre dicha información. Presionamos intro y pues aquí está respondiendo sin demasiado problema, a muy buenas velocidades. Sin embargo, de momento únicamente nos sirve bien como modelo de lenguaje. Cuando lo intentamos usar de programador, pues ya vimos que están

[05:36] fallando. Para ello entonces, en el siguiente video vamos a ver actualmente dentro de Open Code, ya como lo tenemos configurado, cuál es el límite actual que podemos tener de cosas más simples a más complejas que podemos ir desarrollando. Esto teniendo en cuenta que no es únicamente que pueda escribir código, sino que puede crear archivos, leer archivos y editar archivos. En vez de tener que volver a escribir completo para una simple corrección. Con ello veremos para ese tipo de tarea

[06:04] actualmente hasta dónde podemos llegar con él, porque después en siguientes vídeos estaremos potenciando más estos modelos con skills, MSPs y con Atomic AI. Sabemos que los modelos de lenguaje pequeños son buenos para tareas simples, pero cuando son tareas grandes se pierden. Entonces tratemos de que todas las tareas sean simples, llegando hasta su forma atómica no divisible. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
