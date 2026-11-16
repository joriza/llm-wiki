# Qwen 3.5 0.8B 🚀 ¿Sirve para PROGRAMAR? Prueba de Rendimiento y Código

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=fGyLXOACW9k)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-01
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:05

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Vamos a probar el día de hoy el modelo Qwen 3.5 0.8B a precisión completa BF16 con su MM Pro o visión también en BF16 en toda su ventana de contexto que son 262.144 tokens con todo y MTP también a BF16 al igual que la KV caché. El modelo 100% sin cuantizar y ver un modelo tan pequeñito para qué cosas tan complejas puede llegar a funcionar teniendo en cuenta que ni si quiera está cuantizado.

[00:32] La máxima calidad que se le puede sacar a este modelo pues es simplemente a precisión completa. Sin embargo, por más alta precisión y por más gigabytes de modelo, pues lo cierto es que siguen siendo solo 0.8 billions de parámetros.

[00:47] Así que vamos a ver qué tal nos funciona. Para ello entonces lo vamos a ejecutar y vemos por aquí que nos está consumiendo 6.5 gigabytes de VRAM de mi RTX 3060 de 12 gigabytes al cargarlo en su precisión completa con todo y su ventana de contexto MTP, MM Pro, etcétera, etcétera. Todo lo que nos puede dar este modelo de por sí y en esta ocasión consumiendo únicamente 6.5 gigabytes de VRAM teniendo en cuenta que nada está cuantizado. Entro a la interfaz de mismo llama CPP, su interfaz

[01:21] web para hacer las pruebas y vamos a comenzar con la siguiente, básicamente una landing page. Vemos aquí que el modelo con cadena de razonamiento está generando aún dentro de su razonamiento arriba de 100 tokens por segundo. Esto principalmente por el MTP y por los bajos billions de parámetros porque de todos modos en cuanto a memoria pues consume bastante por estar a precisión completa. El modelo ha comenzado correctamente a hacer su cadena de razonamiento y luego de probar unas

[01:51] cuantas cosas en ella ha dado esto como respuesta en conjunto con con generación del código que está haciendo en este momento. Primero CSS, luego HTML, seguramente después JavaScript y podemos ver ya, después de esto, el resultado final. Aquí está, luego de 6173 tokens, tardando 46 segundos y generando en mi GPU 133 tokens por segundo, obtuvimos esta respuesta de por aquí, lo cual aquí encima, si bien aparentemente debería de haber cosas, pues la verdad es que no veo nada. Bajamos un poco y

[02:26] empezamos a ver más información, más o menos simple, pero por lo menos funcional, a excepción de que parece ser de que hay información que debería de estar apareciendo con JavaScript y que no aparece. Con lo cual este modelo, por más apreciación completa que lo tengamos, por menos cuantizado que lo tengamos, pues su límite real está en los billones de parámetros que son muy pocos. Ahora vamos a intentar hacer una calculadora funcional también en HTML y veamos qué tal el resultado. Por aquí

[02:57] tenemos la respuesta, luego de 4874 tokens y es lo siguiente. Se supone que esto es una calculadora, sin embargo, al menos en mi caso, yo no le veo sentido alguno y no solo sentido, sino que directamente ni funciona, por más que presione alguna cosa u otra, pues la verdad es que no está funcional. Este modelo, aún para cosas simples de desarrollo, pues puede servir para autocompletar código, pero no literalmente para ponerse a programar por sí solo. Ahora vamos a hacer una especie de reloj analógico, igual en

[03:29] HTML5, para ver qué tal el resultado. Estamos viendo que si bien el modelo responde con bastante sentido, con bastante coherencia, pues no es el más inteligente. Puede ser para usos más específicos, bajo entornos más específicos, no un reemplazo a ChatGPT ni similares. Previsualizamos y pues de nuevo algo muy similar, que aparentemente comienza a hacer las cosas, sin embargo, nunca terminan de funcionar, la verdad. Vamos a hacer una prueba más, en este caso de simulación de fluidos. Presionamos intro,

[04:01] previsualizamos y pues el simulador de fluidos tiene cierto panel, el cual ni siquiera puedo seleccionar correctamente y no vemos lo demás. Muy bien, claramente no es el mejor modelo para todo esto. Sin embargo, en estas pruebas algo que no hemos estado haciendo es decirle que corrija. Podemos indicarle exactamente el error o directamente que lo intente encontrar y corregir. Así que para los cuatro prompts que hemos aplicado, le vamos a decir, "Analiza tu código y vuélvelo a escribir, pero 100%

[04:34] corregido." Esto lo voy a escribir en cada una de las solicitudes que hemos hecho, tratando de ver si por lo menos logra corregir. Que al ser un modelo pequeñito, quizás a la primera no logra hacer bien las cosas, pero qué tal si logra corregir. Si logra corregir y fácilmente, sin siquiera nosotros indicarle cuál es el problema, sería bastante interesante aún así. Aquí se supone que para el primer prompt, el de la landing page, ha logrado corregir.

[05:00] Recordemos cómo estaba antes, que era algo como esto, simplemente el hero estaba vacío, no veíamos nada y lo demás estaba muy sencillo, además de que quizás faltaban ciertos datos. Vamos a previsualizar la nueva versión y por aquí tenemos exactamente lo mismo.

[05:17] Bajamos y todo es exactamente lo mismo. De hecho, creo que por aquí en el formulario estuvo peor. Así que corregir, la verdad es que no, aunque por lo menos nos respondió con otro código muy diferente, cambiando cosas que no debería, pero corregir tampoco lo hizo. Vamos, pues, a la calculadora.

[05:35] Recordemos que no tenía sentido alguno, la verdad, ni en cuanto a cómo estaba acomodada, ni en cuanto a funcionamiento ni nada de ello. Vamos a ver luego de su según corrección, qué es lo que logró hacer. Y pues en este caso sí veo que cambió cosas, se ve menos peor, pero aún le falta mucho. Además de que de todos modos sigue sin estar funcional. Ahora vamos a ver el reloj. Este fue el original, el reloj analógico que ni se muestra correctamente. Entonces ahora vamos a ver cómo logró, según él,

[06:07] corregir. Doy un clic para previsualizar y la verdad es que pues corregir nada. Y de hecho el botón de alternar que quedó peor y pues no, la verdad es que no. Por último, la simulación de fluidos que inicialmente pues el panel ni siquiera se puede utilizar y era lo único que podíamos ver. Y ahora vamos a ver en la nueva versión y tenemos por aquí exactamente lo mismo. Vemos que no es un modelo bastante inteligente la verdad como para por sí solo desarrollar y por sí solo corregir. Sin embargo, estamos

[06:39] viendo que como modelo de lenguaje está bastante interesante. Responde con texto que tiene sentido, da respuestas convincentes aunque no sean correctas y genera código bastante bien estructurado y demás. Solo que no tiene la inteligencia para eso. Entonces este modelo para usos específicos, con prompts específicos, entornos específicos y quizás hasta fine tunings puede ser bastante interesante para tareas en concreto, pero no 100% como una especie de chat GPT. A lo mejor hasta para resúmenes de cada algo corto,

[07:11] no tanto como aquí, claramente. Pero para código a pesar de que los modelos Qwen son interesantes, pues en su versión 0.8b, a pesar de no tener absolutamente nada cuantizado, ni el modelo, ni el borrador, ni la KV caché, ni la KV caché del borrador, ni el MM Pro, pues no, no es un modelo para programar. Si acaso para autocompletar código mientras nosotros vamos desarrollando, pero más que eso la verdad es que no. Tengo por aquí 35 pruebas diferentes que le puedo estar realizando a cualquier modelo de

[07:44] lenguaje. Dime a cuál modelo de lenguaje quieres que le hagamos estas pruebas y de todos modos comentar que a toda la colección de cuen actual, todos los modelos interesantes actuales de cuen se los voy a estar realizando en siguientes vídeos. Estamos comenzando del más pequeño y vamos a ir del más pequeño al más grande. Si quieres seguir viendo este tipo de vídeos, simplemente dale like y suscríbete.
