# FrogNano 4B 🚀 ¿Es REALMENTE mejor que el Qwen 3.5 Original?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=95vKXHnfwpA)
- **Canal**: Nichonauta
- **Publicado**: 2026-10-02
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:20

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Microsoft está de vuelta en el mundo de los modelos de lenguaje y en esta ocasión ha lanzado Frog Nano 4B. Este modelo, en su versión 2609, que es un Qwen 3.5 fine tuneado. Si bajamos por aquí para ver información, al momento [carraspeo] de traducir vamos a ver que es un modelo de propósito general preentrenado, diseñado para tareas de lenguaje, razonamiento, codificación, agentes y multimodales.

[00:26] Todo lo demás que nos empiezan a mencionar, pues es del Qwen 3.5 4B del modelo original. Se supone que mejorando al modelo original, sin embargo, a simple vista por aquí veo puro texto generado con IA, aparentemente, y pues nada de comparativa, nada de benchmark.

[00:44] Dejando de lado eso, nos vamos a ir a cuantizaciones y vamos a descargarlo, por ejemplo, a partir de la cuantización de Bartowski. Lo descargaré en Q4KM, en conjunto con su MM Pro de visión. Aquí tengo el punto bat con el que a ejecutar y vamos a ver qué tal funciona.

[01:03] Le doy doble clic al punto bat, en el que básicamente, pues tengo los ajustes típicos para un modelo Qwen 3.5 4B, porque en el fondo es lo que es, y dado que no nos dan más información, pues lo vamos a ejecutar de la misma forma. Si lo ponemos, por ejemplo, a describir una imagen, vamos a ver qué tan bueno es con respecto al original, teniendo en cuenta que se supone, pues, que mejoró. Y al menos en este momento, sí está describiendo correctamente la imagen, aunque perdió bastante calidad en cuanto

[01:33] a redacción comparado con el modelo original. Los modelos Qwen 3.5 y punto 6, comúnmente ponen listas, ponen emojis, ponen negritas y muchas otras cosas más que hacen que la respuesta sea más asistencial y más fácil de entender.

[01:51] Aquí, como está entrenado a partir de puro dato sintético, perdió un poco de esa naturalidad. Y simplemente otro detalle que estoy notando por aquí en este momento, pues es que aquí hay un pequeño fallo. Dice que la barra de tareas es de Windows 11, pero no, es de Windows 10. Aunque bueno, es algo pequeñito, un ligero problema. En general, pues la respuesta está suficientemente bien, solo que más robotizada, por así decirlo. Si intentamos poner al modelo a que haga un juego de Tetris, vamos a ver qué tal

[02:19] hace esto de por aquí. Y por cierto, mencionar que este modelo comparado contra otros fine tunings que a veces no lo integran. Este sí integra MTP, con lo cual no solo es que el modelo como tal sigue siendo un Qwen 3.5 4B, se supone mejorado, sino que además seguimos teniendo muy buenas velocidades, tal como estamos viendo. Vamos a previsualizar este juego de Tetris en HTML5, luego de una pequeña cadena de razonamiento bastante similar a la del modelo original y hasta en idioma

[02:51] español. Y esto es lo que tenemos y la verdad es que noto mejor, lo noto igual que el modelo original. De momento, lo único que he notado es pérdida de naturalidad al momento de expresarse, es más texto robótico y que en códigos como estos, pues es literalmente el mismo juego que genera el 4B original. Por lo menos, no hemos visto una pérdida de calidad como tal, solo eh al momento de la redacción, digamos. Vamos ahora aquí a continuación a decirle, "Mejora al máximo el estilo visual del juego con un

[03:22] tema cyberpunk neón." Presiono enter y vamos a ver qué es lo que nos genera. La generación de tokens, pues es muy rápida, al igual que en el original, por su pequeño tamaño y por el MTP. La verdad es que aquí el MTP funciona muy bien. Muchos otros fine tunings no integran MTP o si lo integran, no dan tanta velocidad. Comúnmente en este tipo de cosas en el que ya es iterar, el Qwen 3.5 4B original le cuesta un poquito, no es tan bueno. Vamos a ver si este fine tuning sí mejora respecto a eso. Y pues

[03:54] no, igual que el original estamos en las mismas, no es tan bueno al iterar, ya no funcionó el juego. Y si le decimos sin indicarle cuáles son los fallos, corrige el juego, pues seguramente vamos a seguir igual. Entonces, de momento, bajo las pocas pruebas iniciales, ya es cosa de probar verdaderamente en el día a día, cosa que en un vídeo pues no se puede hacer, eh no noto como tal una pérdida de calidad, lo noto bastante similar al original, solo un poquito más robótico en cuanto a la forma de

[04:24] expresarse. Pero si, por ejemplo, verdaderamente mejora, no sé, en contextos largos o en razonamiento largo o en uso agéntico, pues sería algo que veríamos luego de muchas pruebas, aunque de momento no pinta mal. No estoy diciendo que pinte bien, solo que no pinta mal, otros a la primera ya están funcionando peor. Vamos a decirle, pues, bueno, ahí le dijimos, corrige, vamos a ver si corrigió. Y pues no. Bueno, sí, de hecho sí corrigió una cosa. Quizá esto sí es una ventaja con respecto al

[04:53] original, aunque bueno, después sigue sin funcionar y el original sí funcionaba. Solicitémosle otra cosa solo para ver qué tal, pero solo el día a día nos dirá qué tan bueno es. Crea en HTML5 el juego de Asteroids. Presiono intro.

[05:07] Aquí está, por cierto, sin cadena de razonamiento, tal como estamos viendo, y vamos a ver qué tal es trabajando sin cadena de razonamiento en otra tarea como esta de por aquí. Por lo menos para ver si genera cosas que tienen sentido.

[05:20] Y el código es que la verdad se ve bien, la verdad no tengo ninguna crítica con eso. La única crítica que he tenido es, pues, en la forma de redactar, pero vamos a ver qué tal quedó este juego. Wow, aquí sí hay mejora, a excepción de que el movimiento siempre va hacia el mismo lado, pero sí, es uno de los pocos modelos fine tuneados que no estoy seguro de que funcione peor. Sí estoy notando cosas a mejor, otros detalles a peor, como la redacción, pero eso es típico en cualquier modelo que se

[05:48] entrena con puros datos sintéticos. Claro que tiene detalles, pero nuestra instrucción es simple y además no hemos intentado iterar. Interesante, la verdad, es un modelo que no digo que en todo sea superior al original, es prácticamente imposible que en todo sea superior, pero que quizá para algunas tareas sí haya mejorado y con ello pues es una opción interesante, que no va a reemplazar en todo, pero que en alguna cosa a lo mejor sí. Te recomiendo probarlo para tus casos de uso para ver

[06:13] qué tal con respecto al original. Y si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.
