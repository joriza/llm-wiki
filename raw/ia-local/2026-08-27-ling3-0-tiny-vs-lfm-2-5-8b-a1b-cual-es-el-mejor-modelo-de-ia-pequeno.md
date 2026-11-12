# Ling3.0 Tiny vs LFM 2.5 8B A1B ⚖️ ¿Cuál es el MEJOR Modelo de IA Pequeño?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=yfo3KCvllCw)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-26
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:57

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya hemos hecho pruebas de LFM 2.5 8B a 1B, el cual es un modelo muy pequeñito mezcla de expertos bastante interesante. Es bastante eficiente en su tamaño, en su parte activa, así como lo que requiere realmente de memoria. Esto, por ejemplo, debido a que su KV caché, su ventana de contexto, prácticamente no consume nada. También hemos estado probando Link 3.0 Tiny y este modelo tiene un tamaño bastante similar y más o menos la misma cantidad de parámetros activos. Sin embargo, son modelos

[00:31] completamente diferentes en cuanto a arquitectura, inteligencia, usos y demás. Aún así, el día de hoy vamos a probar ambos para ver qué tan buenos son y cada uno para qué tipo de tareas funciona mejor. Lo voy a descargar cuantizado de la gente de un slot, el LFM 2.5 8B a 1B, por ejemplo, en cuantización UDQ4KXL.

[00:52] Estos modelos, por cierto, son únicamente de texto, no son modelos multimodales. De hecho, es más, cancelé la descarga y lo voy a descargar en MXFP4 MoE, porque precisamente en esa misma precisión ya tengo descargado el Link 3.0 Tiny y así estaríamos a igualdad de condiciones. Entonces, preparo la carpeta para el nuevo modelo.

[01:12] Comencemos probando el Link 3.0 Tiny ya con los ajustes que debemos de tener, así tal cual nos queda el archivo. En este momento, mi GPU Nvidia está completamente vacía. Y en cuanto ejecuto el punto bat, pues vamos a ver cuánto es que nos consume. Y vemos por aquí que en total de la GPU consumió 5.3 GB este modelo, Link 3.0 Tiny, en cuantización MXFP4 MoE, con todo y sus 131,000 tokens de ventana de visión. ¿Cuál de visión?

[01:40] De contexto, este modelo no tiene visión. Entonces, 5.3 GB, y vamos a ver qué tan rápido es y para qué tipo de tareas funciona. Según yo, le voy a activar su cadena de razonamiento al máximo y vamos a preguntarle alguna cosa como por qué el cielo es azul. Presiono intro y vemos que este modelo sí es un modelo razonador. Hace su cadena de razonamiento y luego responde, en esta ocasión, a 122 tokens por segundo. Voy a cerrarlo, y ahora vamos a probar el LFM.

[02:09] Y lo haré, pues, con sus valores recomendados de ejecución. Aquí ya tenemos el punto bat. La GPU está vacía. Ejecuto el punto bat, y este nos consume más, 6.8 GB, además de otro pequeñísimo detalle, y es que este no es de 131,072 tokens de ventana de contexto, sino que es de 128,000. Así que nos cargó, precisamente, con esos 128,000. Tenemos poquito menos de ventana de contexto, y aún con ello requiere más memoria. El otro estaba en 5.3 GB. Vamos, entonces, a regenerar la respuesta, pero con este

[02:41] otro modelo. Vemos por aquí, precisamente, que también es un modelo razonador. Generó más tokens por segundo. Sin embargo, respondió en idioma inglés y con algo que no tiene sentido. Por si las dudas, le damos en regenerar, y ahora sí respondió correctamente. Da más tokens por segundo, pero tiene poquita menos de ventana de contexto, y consume poquita más memoria. Y, por lo menos, en una de las pruebas ya falló para una consulta simple, aunque pudo ser coincidencia.

[03:09] Recordemos el modelo link generando 122 tokens, y LFM 167 en esta ocasión. Vamos a seguir con LFM, aprovechando que lo tenemos abierto, para hacer esta consulta. Le doy en enviar, y mientras procesa, leemos. José dejan una pelota en la mesa. José se duerme y Juan mueve la pelota a la azotea. Juan se va de casa. José despierta y se levanta para agarrar la pelota. ¿A dónde irá José por la pelota? José no supo que Juan movió la pelota, con lo cual no debería de ir a la azotea, debería de ir a la mesa. No

[03:43] la va a encontrar, claro está, pero es a donde debería de ir, porque él no sabe más información. ¿A dónde irá José por la pelota? Responde simplemente con José irá a la y pues aquí tenemos las frases completas, sin decir nada más ni hacer comentarios adicionales, solo puedes responder una de las siguientes dos cosas, José irá a la azotea, José irá a la mesa. Y en este caso respondió, José irá a la azotea. Y pues, parece que ese José es adivino, porque yo en ningún momento vi que José supiera que la

[04:12] pelota está en la azotea. Vamos a probar para esa misma consulta Link 3.0 Tiny, de nuevo consumiendo menos memoria, 5.3 y teniendo más ventana de contexto, damos en regenerar, menos tokens por segundo, eso sí, y la respuesta igual de mal. No nos dice lo que va a suceder, nos dice lo que debería de suceder, pero pues, José no es adivino, según yo.

[04:34] Ahora vamos a intentar que nos haga una landing page. Esta va a ser la instrucción, desarrolla en HTML5 sin recursos externos en un solo archivo una landing page para un servicio de VPS ultrarrápido potenciado por IA. Le damos en enviar y vamos a ver Link 3.0 Tiny, qué tan bueno es. Y precisamente está intentando usar una herramienta del navegador, aunque no tiene sentido y lo quiere hacer para consultar la fecha.

[05:01] Pues consultó la fecha, no sé para qué, y después de ello empezó a escribir el código. Estoy leyendo su cadena de razonamiento y no entiendo exactamente por qué quiso leer la fecha, pero bueno, esperemos y cuando menos la utilice dentro de la página. Ya terminó el CSS, está trabajando el HTML, después debería de trabajar el JavaScript y con ello terminar. Aquí ya terminó, generando 6,583 tokens. Previsualizamos y esto es lo que tenemos de Link 3.0 Tiny. Con esa instrucción tan sencilla nos logró hacer

[05:33] esta landing page. Con pura información inventada, claro está, porque pues no le dimos ningún detalle real, pero pues está bastante bien, teniendo en cuenta lo simple de la instrucción y lo pequeño del modelo, tanto en billions de parámetros totales, 8B, como en parte activa, 1B, y además a 4 bits. Y aquí vemos, por cierto, que pues menciona la fecha, 2026. A lo mejor la usó para eso, por lo menos la aprovechó. Vamos a cerrar. Vimos entonces que fueron 120 tokens por segundo, y abramos el FM 2.5,

[06:04] el cual requiere poquita más memoria, según hemos visto, 6.8 en vez de 5.3, y tiene poquita menos ventana de contexto. De momento han fallado los dos en una consulta, en la de José de la adivino, y en la de por qué el cielo es azul, por alguna extraña razón la primera vez respondió mal el FM. Le damos en regenerar y veamos qué tal el modelo LFM 2.5 8B a 1B. Vemos que es bastante más rápido, y en esta ocasión está haciendo el código extremadamente corto y sin la etiqueta correspondiente o caracteres

[06:35] correspondientes para encerrar el código, con lo cual tengo que copiar el código, pasarlo a un archivo HTML temporal y desde aquí lo vamos a previsualizar. Y esto es lo que hizo ese modelo LFM 2.5 8B a 1B. ¿Significa que es menos inteligente? No, significa que no es para código, el otro sí. Ahora vamos a probar otra tarea extremadamente más difícil que solo modelos muy grandes y dentro de un agente logran desarrollar, porque básicamente es desarrollar un videojuego completo,

[07:03] sencillito, pero al fin y al cabo completo, a partir de todas estas instrucciones. Le vamos a dar en enviar y veamos qué hace primero el FM 2.5. 1000 tokens, 1500 tokens, 2000 tokens. Mucho razonamiento, la verdad. Espero y por lo menos tenga algo de sentido, que verdaderamente sirva para algo. 4000 tokens. Esto es normal, es por la instrucción compleja. De hecho, malo sería que no hiciera tanto razonamiento para una tarea tan compleja. 6000 tokens, y pues seguimos teniendo muy

[07:34] buena velocidad. Y luego de un total de 13791 tokens, tardando 1 minuto 26 segundos, a un promedio de de 160 tokens por segundo, tenemos la respuesta final. En este caso, por cierto, nuevamente en idioma inglés y nuevamente sin la caja correcta en la cual escribir el código.

[07:54] Así que lo voy a copiar y pegar y, por cierto, estoy viendo que es bastante extenso. Listo, terminé de copiar todo. Pego, guardo. Parece que hay ciertos errores de sintaxis. Abrimos y no se ve nada. No significa que no haya nada, hay muchas cosas, pero pues no es funcional. Ahora cerramos este modelo y abrimos Link 3.0 Tiny, 5.3 GB de VRAM, 131.000 tokens de ventana de contexto. Le damos en regenerar. La generación de tokens es más lenta, pero por lo menos hemos visto que la inteligencia es mucho mayor. El

[08:28] otro a veces responde en inglés sin sentido. Y este para código es superior y tiene más ventana de contexto y requiere menos memoria. Parece que en general para prácticamente todo Link 3.0 Tiny es mejor. Para alguna cosa será mejor el FM 2.5, tal vez, pero seguramente para alguna que otra cosa más esporádica, porque en general hemos estado viendo un mejor rendimiento de este otro modelo, consumiendo menos, teniendo más ventana de contexto y dando más calidad. 6.000 tokens de

[08:55] razonamiento, casi 10.000 tokens de razonamiento, 12.000, 14.000, 16.000, 20.000 y luego de 22.000 intenta nuevamente revisar la fecha. Le doy en permitir y al fin está comenzando a dar la respuesta final. Luego de 26.000 tokens respondiendo, por cierto, también en idioma inglés. Tan grande es su razonamiento en inglés y tan pequeña nuestra instrucción en español que termina haciendo más caso al idioma que usó en el razonamiento. 30.000. Para tener esto en perspectiva, cuando

[09:31] probamos esto con Sonnet 5 dentro de cloud.ai, tardó algo así como 30 minutos en desarrollar todo. Sin embargo, en múltiples respuestas, aquí está haciendo una sola tanta cadena de razonamiento, porque aquí no tenemos un uso agéntico como lo existe dentro de club.ai, que puede descargar, ejecutar, compilar y otras cosas. Así que eso ya no es cosa del modelo, sino del entorno.

[09:53] Simplemente lo menciono no porque esté en el mismo nivel de inteligencia, sino porque pues no es tanto lo que está tardando. Recordemos que le estamos solicitando el hacer un juego completo y por aquí tenemos el resultado. Lo vamos a intentar revisar. Por cierto, antes de eso, si está escrito en la caja de código correspondiente, lo abrimos. Esto no está muy bien, pero por lo menos empezamos a ver cosas en pantalla.

[10:18] Presiono intro y pues la verdad es que ya escuché ruido. Se escucha ruido y se empiezan a ver cosas en pantalla. Claramente para un modelo pequeñito, pues es imposible hacer un juego así de detallado a la primera y menos únicamente a partir de una única respuesta. Tal como mencionó, Sonnet 5 tardó más aún siendo un modelo más inteligente y en mejor hardware y generó algo mejor, sí, pero también por el uso agéntico, fue probando. Aquí no, es la primera respuesta, con lo cual realmente

[10:46] está bastante interesante que un modelo tan pequeñito haga algo así. Sin embargo, hay algo que no he mostrado y es que el modelo se volvió loco. Sigue generando tokens. Según él terminó su cadena de razonamiento y empezó a dar la respuesta, pero después resulta que dijo, "Espera, hay algo mal." Y sigue intentando corregir cosas y de hecho, según él, volvió a intentar cerrar su cadena de razonamiento y está escribiendo una nueva versión del código. Veamos qué tal queda esta otra.

[11:14] Llevamos 52,000 tokens generados por el modelo, lo cual no está nada mal porque indica que realmente su cadena de razonamiento le ayuda mucho. Y al ser un modelo gratis, ilimitado, pequeñito y rápido, pues está muy bien. Sin embargo, para desarrollar algo así, pues mejor dentro de un uso agéntico. Y parece ser que lo terminó, pero después sigue intentando hacer correcciones, no tiene para cuando terminar. Según él ahora sí está haciendo la versión final y de nuevo escribió el cierre de la cadena de

[11:39] razonamiento. Vamos a ver su nueva versión que ya terminó. Esto es lo que tenemos. Presiono enter y de hecho funcionó peor. Ya lo voy a detener y entonces, ¿qué vimos el día de hoy? LFM 2.58B a 1B parece ser un modelo bastante optimizado y bueno para su tamaño, siendo de pocos billones de parámetros y con únicamente un billón de parámetros activos, al igual que Link 3.0, pero Link 3.0 requiere menos memoria, da más calidad de respuesta y tiene poquita más ventana de razonamiento, mejor dicho de

[12:12] contexto y entre ella de razonamiento, llegando a hacer cosas bastante interesantes, solo que claramente un único juego completo a la primera, pues está medio difícil, ningún modelo puede eso, pero me pareció muy interesante que haya estado tan cerca de haberlo conseguido a partir de una única instrucción y una única iteración, sin probar, sin corregir. Así que en general, en mi caso, me gustó más Link 3.0 Tiny. Requiere menos, tiene más ventana de contexto, es más inteligente,

[12:44] sin embargo, genera poquitos menos tokens por segundo. Aún así es extremadamente rápido. Para tareas más normales, no esto, pues va a funcionar mejor. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
