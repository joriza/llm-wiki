# Adiós Loops 🚀 SOLUCIÓNALO con Este COMANDO en LLMs

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=pkXUnTO7Y9c)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-08
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hemos visto ya que aparentemente el mayor problema de los modelos de lenguaje pequeños es cuando entran en bucles y no pueden salir de ahí, repitiendo la misma cadena de texto una y otra vez. Fuera de esto, pues siguen siendo bastante usables, como lo pueden ser el Qwen 3.5 0.8B.

[00:20] Tenemos ya varios videos y varias explicaciones acerca sobre cómo podemos quitar, o mejor dicho, evitar dichos loops infinitos. Sin embargo, el día de hoy lo vamos a ver en un ejemplo real a partir únicamente de los parámetros que tenemos para poder ajustar dentro de llama.cpp. Vamos a estar utilizando el modelo Qwen 3.5 0.8B con todos estos parámetros. Ya tenemos videos sobre este modelo y sobre llama.cpp. Y entonces, ahora lo que aquí haríamos es lo siguiente. Mismo llama.cpp tiene ya de

[00:53] por sí algunos parámetros que nos pueden servir para evitar la repetición de tokens. Y si simplemente escribimos el comando -h o el parámetro -h para ver toda la documentación, entre todo esto lo podemos encontrar. Aunque aquí hay tanta cosa que a lo mejor nos podemos perder. He copiado y pegado toda la salida que tenemos aquí en el CMD para tenerlo de forma más visual por acá en Visual Studio Code. Y básicamente los parámetros que nos interesan principalmente son estos, los que

[01:23] comienzan con drive. Esto es un añadido adicional a lo que ya tenemos típicamente en modelos de lenguaje de temperatura, top p, min p, top k, etcétera, etcétera. Pero funcionando un poco de forma más externa, no tal cual a la predicción de siguientes tokens, sino más bien a un paso adicional externo que va revisando dichos tokens, va revisando dichas cadenas que vamos generando. Por aquí vemos entonces los distintos parámetros que podemos ejecutar. En esta ocasión solo nos centraremos en este tipo de

[01:55] estrategia y en este tipo de parámetros, mas no significa que es la única forma en la que se puede hacer. Podemos leer un poco, investigar un poco y después de ello aplicar ciertos valores, como por ejemplo, en este caso, los que yo acabo de añadir por aquí, a mi mismo.

[02:12] En donde estamos ejecutando en llama server 4.50.8b. Tenemos nuestros parámetros de desempleo que la gente de cuen recomienda para este modelo en uso agéntico y de razonamiento, así como generación de código. A eso no le vamos a mover a nada. Simplemente añadiendo estas cuatro líneas con estos valores que tenemos por aquí, vamos a evitar que haga cadenas de texto o tokens repetidos.

[02:38] Hay que tener en cuenta que este es un filtro adicional que se puede ajustar para que sea muy estricto o poco estricto y que depende del caso de uso que vayamos a hacer. Puede ser que empeoremos la respuesta, porque a lo mejor de acuerdo al tipo de tarea que solicitemos, resulta que sí requiere repetir.

[02:56] Entonces, aquí tenemos estos valores, los cuales nos van a evitar que suceda lo que comentábamos de la repetición de tokens. Sin embargo, el estar aplicando estos valores nos va a estar haciendo perdiendo algo de velocidad. No va a ser algo realmente apreciable comúnmente.

[03:13] Sin embargo, claro que es un proceso adicional. Esto al mismo tiempo permitiendo al modelo aparentemente más creatividad, porque a pesar de que siempre el siguiente token más probable sea X, o sea, sea alguno, comúnmente va a intentar tomar entre los más probables, sí, pero que no hayan sido ya mencionados recientemente, dando más variedad y creatividad a la respuesta.

[03:38] Repito, depende exactamente de qué tan agresivos seamos con estos valores. Y pues bueno, una vez con estos valores establecidos, lo siguiente que vamos a hacer es cargar el modelo cuen 3.50.8b. ¿Y qué sigue? Empezar a utilizarlo.

[03:55] Básicamente a partir del uso realista nos estaremos dando cuenta si con esos parámetros que hemos establecido son los más adecuados para evitar dicha repetición de tokens sin perder calidad en el modelo y que en todo caso si sigue ocurriendo nuevamente, pues podemos ajustar. Sin embargo, la verdad es que son bastante efectivos los parámetros estos, así que con algún pequeño ajuste que tenga algo de sentido que hayamos hecho nos debería de funcionar.

[04:22] Claramente por aquí pues con una, dos, tres pruebas no nos va a dar una respuesta absoluta de si sí funcionó o no lo que estamos estableciendo, porque para empezar no es que siempre ocurra la repetición infinita, pero bueno.

[04:36] Vamos a activar la cadena de razonamiento y le vamos a preguntar, por ejemplo, ¿por qué el cielo es azul? Presionamos intro, comienza su cadena de razonamiento y después de ello, pues va a generar la posible respuesta. Y de hecho aquí, tal como estamos viendo, pues de hecho sigue con los loops infinitos cuando tenemos cadena de razonamiento activa, así que lo voy a detener y de acuerdo a lo que investigamos y demás podemos ir cambiando estos valores. Ahora, si no somos muy expertos en esto o no queremos

[05:04] perder tanto tiempo de nuestra parte, claramente este tipo de cosas las puede responder perfectamente un modelo de lenguaje como GPT, Claude, Gemini, con lo cual de por sí, pasándole nuestro parámetro o nuestro comando de ejecución con dichos parámetros, podemos lograr algo como lo siguiente.

[05:22] Este es mi comando para ejecutar Gwen en mi PC. Y escribimos el comando completo, ¿de acuerdo? Después de eso voy a poner, al momento de intentar generar respuesta, esto es lo que sucedió. Y pego por aquí lo que nos había generado, desde que comenzó hasta que tuvo ese loop infinito. Y le voy a decir, "Escribe nuevamente mi comando de ejecución exactamente igual, pero haciendo los cambios necesarios a los parámetros drive para evitar que ocurra esto. Presionamos intro y pues aquí nos

[06:02] puede ayudar claramente. Ahora, a tener algo en cuenta y es que pues estos loops infinitos, tal como sabemos, pueden ocurrir en cualquier modelo de lenguaje, simplemente en aquellos pequeñitos puede ocurrir más, por eso estamos haciendo esto con el Qwen 3.50.8B.

[06:18] Y a tener en cuenta que dichos parámetros ayudan a evitarlo, mas no significa que 100% en todos los casos se pueda solucionar. Esto, por lo menos, sin poner los filtros demasiado estrictos, porque si lo hacemos de esa forma, a lo mejor el modelo ya ni siquiera tiene sentido sus respuestas.

[06:37] Vamos a ver por aquí qué es lo que nos responde y en este caso, aquí nos dice qué fue lo que estuvo cambiando. ¿De acuerdo? Vamos a copiar y pegar con estos nuevos parámetros y si vuelve a suceder, de hecho, tal como decimos, si no es que queremos perder demasiado tiempo nosotros o prestar demasiada atención a lo que estamos haciendo, pues aquí mismo podemos darle el nuevo ejemplo en el que sucedió, copiar y pegar en donde sucedió el loop, para que a partir de eso, pues esto mismo vaya

[07:06] probando, vaya ajustando, sin siquiera nosotros tener que estarlo haciendo. Entonces, copié y pegué el comando que se supone que es prácticamente lo mismo, simplemente cambiando los valores a los parámetros drive. Lo guardamos y volvemos a ejecutar. Aquí claramente, con un modelo pequeñito, pues estamos intentando forzar al máximo que ocurra, por eso estamos ejecutando el modelo más pequeño y pues claramente es un poquito más difícil de solucionarlo, pero para la prueba del video, pues es aún mejor.

[07:34] Muy bien, vamos a regenerar y esperemos en esta ocasión deje de suceder. Por aquí estamos viendo y pues de hecho volvió a suceder. Vamos a detenerlo y copiamos y pegamos. Ahora pasó esto. Pegamos la cadena que se estuvo repitiendo una y otra vez y veamos qué ajustes nos da ahora. Copiamos entonces el nuevo comando, lo pegamos y guardamos nuevamente nuestro archivo. Cerramos el CMD, volvimos a ejecutar el modelo, damos en regenerar y esperamos que ahora funcione mejor. Y tal como estamos

[08:09] viendo, parece ser que es el loop infinito ha terminado. Aún así hay cosas que se siguen repitiendo, pero por lo menos ya no es catastrófico. Y de todos modos en los modelos Qwen pues algo bueno que tienen es que su cadena de razonamiento puede ser muy larga y que por ello siendo modelos más pequeñitos pueden responder correctamente. Sin embargo, sabemos que en este modelo de hecho algo que recomiendan es que no lo utilicemos con cadena de razonamiento porque es donde principalmente da los

[08:35] loops, pero en este caso a pesar de todo lo hemos logrado solucionar. Con estos parámetros parece que ya hemos hecho funcionar nuestro modelo, así que vamos a hacer una prueba más. Pidámosle por ejemplo, escribe el juego de Tetris en Pygame. No vamos a probar el código, no nos interesa eso en esta ocasión. Lo que nos interesa es ver pues que no se repita. Y tal como estamos viendo por aquí acaba de terminar su cadena de razonamiento y ahora está comenzando a dar la respuesta final. Ahí vemos cómo

[09:05] va prediciendo tokens y pues perfectamente. Parece ser que al menos bajo las pruebas que hemos realizado este modelo Qwen 3.5 0.8B con estos parámetros de ejecución y en esta precisión, etcétera, etcétera, con estos parámetros de Drive hemos logrado solucionar, por lo menos en buena parte, los loops infinitos de tokens. Ahora, simplemente hay que tener algo en cuenta. Hay que leer un poquito de por qué hizo ciertos cambios y por qué aparentemente lo solucionó. Y por ejemplo aquí, a pesar de que nosotros

[09:37] indicamos que únicamente modificara los parámetros Drive, parece que con eso no había sido suficiente, así que añadió o modificó repeat penalty y repeat last n. Con estos dos parámetros adicionales, en conjunto con estos valores en lo demás, logramos que ya no esté cometiendo dichas cadenas de loops interminables prácticamente en todas las solicitudes.

[10:00] Este es un simple ejemplo forzado a que suceda todo esto, por eso es un modelo pequeñito y muy cuantizado, con lo cual de por sí en modelos en los que esto suceda menos, pues la solución va a ser aún más sencilla. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
