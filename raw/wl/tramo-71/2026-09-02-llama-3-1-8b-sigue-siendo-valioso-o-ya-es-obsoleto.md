# Llama 3.1 8B ⚠️ ¿Sigue siendo VALIOSO o ya es OBSOLETO?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZiidlVYPIQ4)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-02
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a probar llama 3.1 8B instruct, el cual este modelo de meta en su momento fue bastante sobresaliente, siendo muy muy inteligente para el tamaño que tenía. Es un modelo que únicamente es de generación de texto, como entrada tampoco tiene otra cosa, solo texto y cuenta con 128,000 tokens de ventana de contexto. A día de hoy el repositorio oficial, solo del repositorio oficial, tiene poco menos de 6 millones de descargas en el último mes. Teniendo en cuenta que además nos deben de aprobar,

[00:34] debemos de registrarnos, llenar un formulario y nos deben de aprobar para descargarlo. Y a pesar de todo ello, en el último mes sigue teniendo bastantes descargas. Siendo que para empezar la gente que ya lo descargó en meses pasados, pues no seguiría descargándolo porque ya lo tiene. Este modelo estaba preparado únicamente para ocho idiomas y al igual que versiones anteriores de llama, era un modelo rompedor que llegaba y la verdad es que arrasaba con sus contrincantes básicamente. Era un

[01:04] modelo muy muy inteligente en su momento, sin embargo, esto fue antes de la multimodalidad, antes del razonamiento y antes de tantas optimizaciones en los modelos, porque vamos a ver que para su tamaño, pues actualmente no es el mejor, ni en cantidad de idiomas, ni en inteligencia, ni en consumo de memoria. Entonces, para ello vamos a irnos a cuantizaciones y vamos a descargarlo de algún lugar. Por ejemplo, de donde yo siempre bajo los modelos es de unslot llama 3.1 8B instruct GGUF. Nos vamos a archivos y

[01:38] versiones y pues solo es bajar el archivo del modelo, no hay mucho más. No hay modelo borrador de forma nativa, no hay multimodalidad ni nada de eso, así que en mi caso yo lo voy a descargar en UD Q4 KXL. El modelo pesando 5 GB y una vez con ello lo haremos funcionar en nuestro llama cpp. Ya tengo el archivo por aquí y entonces prepararía el punto cmd, el punto bat para ejecutar esto y pues va a quedar de forma muy simple porque básicamente no hay mucho que configurar en este modelo. Ejecutamos

[02:11] llama server con este archivo del modelo con 4096 tokens de ventana de contexto, vamos a ver por qué. Los parámetros de sampleo que recomiendan para ejecución y pues ya. Ahora, si este modelo tiene 128000 tokens de ventana de contexto, ¿por qué no lo ponemos? Porque en este entonces la ventana de contexto consumía un montón, pero montón de memoria. Si le doy en ejecutar, básicamente ni siquiera me va a funcionar, se va a terminar cerrando. Así que entonces lo que tengo que hacer es poner un valor bastante

[02:44] bajo, por ejemplo, 4096 y al momento de ejecutar vamos a ver cómo, pues primero claramente se carga el modelo y después la ventana de contexto. Aumenta bastante solo para 4096 tokens de ventana de contexto. Y listo, aquí ya lo tenemos cargado. Entonces si ahora intentáramos preguntarle algo al modelo, lo primero que notaremos pues es que este modelo no es un modelo razonador y que tampoco de forma nativa cuenta con algún modelo borrador para hacer speculative decoding. Sin embargo,

[03:16] en cuanto a escritura de texto, pues tampoco está tan mal, pero ahora vamos a ver las pruebas que hemos estado haciendo en los modelos previos, en los videos previos. Acerca sobre desarrollo y demás en HTML que tampoco es tan complicado. Este modelo 8B comparado contra modelos hasta 0.8B que vimos en videos pasados, ¿qué tal es? Y ahí vamos a notar la verdadera diferencia. No solo es que de por sí el modelo sea 8B comparado contra otros más pequeños y que además de ello es menos inteligente

[03:44] y consume más memoria, por ejemplo, su KV caché, sino que realmente al momento de probarlo en temas que actualmente se hacen con los modelos, pues este se queda muy atrás. Comencemos, por ejemplo, con una simple landing page, nada de especial, simplemente una landing page con HTML, CSS, JavaScript, sin nada más. El modelo 2B con 3.5 2B nos había generado esto, por ejemplo.

[04:08] Vamos a ver este llama 8B qué es lo que genera. Aquí tenemos la respuesta del llama 3.1 8B a 58 tokens por segundo y esto es lo que nos generó. La verdad es que hasta los modelos más pequeñitos actuales son mejores que esto, bastante, bastante mejores. Vamos a ver ahora una posible calculadora y la previsualizamos y pues la verdad es que lo mismo, no es que [resoplido] sea un modelo muy bueno, la verdad, en la actualidad. Sirve para predecir texto, predecir unos cuantos códigos pequeñitos, pero no para

[04:41] programar por nosotros. Aún el modelo más pequeño actual hace cosas mejores que esto de por aquí y consumiendo menos memoria. Ahora vamos a probar cómo nos mo- straría un reloj analógico directamente en una página web y al momento de previsualizar, pues lo cierto es que si bien hay manecillas y todo tipo de información, nada tiene sentido.

[05:00] Por aquí veo un botón que según eso de tema oscuro y le doy clic y lo único que cambia es lo que dice el botón, no lo demás. Y por último, un simulador de fluidos, pues que menos aún va a funcionar. Intentamos previsualizarlo y curiosamente aquí sí se ve algo de información. Vamos a ver si podemos cambiar in- Olvídenlo, ya se borró todo.

[05:21] [risas] Parecía que todo iba bien, que era una prueba interesante, pero de la nada desapareció todo, sin siquiera aún presionar algún botón. Como que empiezan a salir cosas y después desaparecen. Pues muy bien, entonces, ¿cómo es que en la actualidad, solo en el repositorio oficial, solo en el último mes, tiene casi 6 millones de descargas el modelo completo sin cuantizar ni nada de eso?

[05:43] Además, teniendo en cuenta que tenemos que rellenar un formulario y nos tienen que aprobar. Bueno, lo que sucede con este modelo es que es un modelo bastante interesante, aunque no el único, para cosas como lo pueden ser fine tunings específicos para tareas en concreto. No un modelo general que reemplace a chat GPT o algo similar, sino imaginemos prepararlo bajo cierta tipo de habilidades muy específicas que vamos a requerir, como que nos reformatee cierto texto, que identifique cierta cosa, que

[06:12] clasifique, que categorice o qué sé yo. Sin embargo, a pesar de que en la actualidad se sigue usando mucho para eso, pues la verdad es que pienso yo que comúnmente ya no es la mejor opción. La ventaja que tiene es que es un modelo bastante simple en cuanto a arquitectura y demás y que tiene mucha documentación, pero hay mejores modelos actuales que se puede utilizar para todo esto. Es interesante cómo hace un par de años este modelo era rompedor dentro de su de su tamaño, no había nada igual. Y a día

[06:39] de hoy, pues en nada parece un modelo muy interesante, la verdad. Ni por tamaño, ni multimodalidad, ni razonamiento, ni muchos idiomas, la verdad. Además de que su ventana de contexto no solo es que no sea muy grande, sino que consume un montón de memoria. Simplemente quería probar este modelo para ver qué tal en la actualidad, ver si realmente han mejorado los modelos y la verdad es que sí. Hasta para un simple chat, un modelo como el Q3.5 0.8B es bastante superior.

[07:08] Más ventana de contexto, multimodalidad, razonamiento, más idiomas, más rápido, con modelo borrador para hacer speculative decoding. Así que pues fue bonito mientras duró este modelo. Actualmente, bajo mi opinión, no tiene demasiado sentido. Por lo menos no como modelo general para usarlo para cualquier cosa. Si quieres seguir viendo este tipo de vídeos, simplemente dale like y suscríbete.
