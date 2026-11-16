# Qwen 3.8 me decepcionó ⚠️ La VERDAD tras la comparación con Qwen 3.6

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Zx9hXpCemZQ)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-24
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:03

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a comparar el modelo Qwen 3.6 35B a 3B a precisión completa contra Qwen 3.8 Flash Next, el cual no solo es más nuevo, sino que además es un modelo más grande. Para el modelo 3.6, todo va a estar absolutamente a precisión completa, mientras que para el modelo 3.8, el modelo lo tenemos bajo esta cuantización que teóricamente es casi sin pérdida. Todo lo demás sigue en BF16. Sin embargo, no solo es que el 3.8 sea más grande y más nuevo, lo cual ambas cosas teóricamente lo harían más

[00:38] inteligente, sino que también cuenta con distintos niveles de esfuerzo de razonamiento y en esta ocasión lo vamos a probar en modo bajo, porque a pesar de ponerle modo bajo, hace más cadena de razonamiento, gasta más tokens antes de dar la respuesta final. Entonces, a pesar de estar en bajo, hay tres razones por las que debería de ser más inteligente. Primero, porque siguen siendo más tokens. Después, porque es más nuevo. Y después, porque es más grande. Sin embargo, esa es la teoría.

[01:12] Vamos a ver en la práctica si verdaderamente merece la pena. A tener en cuenta también que no solo es que este en BF16 consume menos memoria, sino que además, pues lo podemos cuantizar tan siquiera a Q8, notando prácticamente ninguna diferencia más que en el tamaño, que sería más pequeño. En este momento ya estuve generando las respuestas con el modelo 3.8 y nos está consumiendo exactamente 8.4 GB de VRAM y en total en mi sistema en este momento se están consumiendo 60 GB de RAM. No únicamente

[01:45] por el modelo, sino por las demás cosas que están abiertas en mi PC. Una vez que cerramos este modelo, pues vemos que ahora estoy utilizando únicamente como 9 GB de RAM, mientras que de GPU, pues estamos en cero. Ejecuto el quant 3.6 sin cuantizar y una vez habiéndolo puesto generar algunos tokens para que veamos ya 100% cuánto consume de memoria, vamos a ver que nos está consumiendo 8.5 GB de VRAM y 50 de RAM.

[02:13] Así que claramente, aunque no esté cuantizado, consume menos memoria. Y pues si queremos lo podemos cuantizar en Q8, Q6, Q5, Q4. Vamos a ver pues las respuestas de cada uno. Y para la primera consulta, que es hacer un SVG animado de un planeta orbitando alrededor de un sol, vemos que el modelo 3.6 sin cuantizar esto fue lo que nos generó. Realmente el sol parece sol, el planeta parece planeta y sí gira alrededor del sol. Tiene una luna que no gira alrededor de ese planeta, pero pues

[02:44] tampoco lo pedimos. Lo que pedimos está bastante bien y suficientemente bien dibujado. Este modelo, por cierto, habiendo generado 2,500 tokens o prácticamente 2,600 a un promedio de casi 14 tokens por segundo. Eso va a depender del hardware, claro está. Por cierto, el 3.6 funcionando así a partir de MTP y el 3.8 no. Dicha versión GSQRC no cuenta con MTP. Muy bien, ahora aquí tenemos la respuesta del 3.8, el cual generó 3,077 tokens a un promedio de nueve tokens por segundo. Esto principalmente porque no

[03:22] contamos con MTP, si no seguramente tendríamos una velocidad bastante similar, unos 400 o 500 tokens más. Y vemos pues que la respuesta también está bien. Ya es cuestión de cuál dibujo nos guste más, pero en ambos casos está bien. Aquí también hizo luna y aquí sí gira alrededor del planeta, aunque eso no lo solicitamos. Vamos a ver una vez más la velocidad de tokens por segundo y cuántos tokens generó. Pero a tener en cuenta que comúnmente en el 3.6 obtenemos más velocidad porque es más

[03:51] pequeño y con menos parte activa al mismo tiempo que tenemos MTP. Eso en cuanto a velocidad. Y en cuanto a tokens generados, comúnmente consume menos que el 3.8, a pesar de estar en low. Vemos aquí que para la solicitud de hacer un SVG animado de olas del mar moviéndose, pues las olas no se ven y tampoco se mueven, seguramente ahí hubo alguna especie de error. Tenemos sí una parte dibujada, pero pues claramente falta. Y mientras tanto el 3.8, pues si bien hizo olas, la verdad es que hasta el cielo es

[04:22] más simple y las olas no tienen animación. Ya depende de cuál consideremos mejor respuesta, pero ninguna es perfecta. Después para intentar hacer un reloj animado también en SVG, aquí vemos lo que nos hizo el modelo 3.6. Está suficientemente bien, sin embargo, no tiene animación y los números quizá pueden estar mejor organizados. Y esto es lo que nos hizo el 3.8. Quedó mejor, pero tampoco tenemos animación. Y de todos modos no es que los números hayan quedado perfectos en su lugar. Después para

[04:52] intentar hacer una pelota rebotando, esto es lo que nos generó el 3.6 sin cuantizar. Vemos que la pelota rebota, pero no hacia donde está la sombra, esto está muy raro, por cierto. Pero mientras tanto en el 3.8, pues ni siquiera rebotó. Quizá el dibujo quedó mejor, pero no hay animación. El 3.6 intentando hacer una flor, todo su crecimiento, esto es lo que nos generó.

[05:13] Suficientemente bien, tiene sentido, se entiende. Y el 3.8, pues parece que algo está mal o no dibujó lo demás o está mal el código como para que ni siquiera aparezca. Recordemos, más cuantizado sí, pero más nuevo, más grande y más tokens de razonamiento, a pesar de estar en low. De razonamiento, no de respuesta, ya los tokens de respuesta pues varía.

[05:36] El 3.6 para una consulta simple, como por qué el cielo es azul, responde correctamente con párrafos, listas, negritas, emojis. Y el 3.8, pues más o menos lo mismo, solo que aquí también tenemos subtítulos y aquí una especie de cita, un resumen. Para intentar hacer una landing page de un producto, el modelo 3.6, esto es lo que nos generó.

[05:57] La verdad es que está bastante, bastante bien, me gusta mucho, no noto un problema aparente y si bien pudiera ser un diseño medianamente genérico, pues funciona perfecto. Y mientras tanto, el 3.8, esto es lo que nos generó. Muy diferente, ¿sí? Quizá me gusta más, aunque esto ya es más gustos personales, quizá, pero en general está muy bien también. De hecho, si no toma detalles, así que bajo mi opinión, pues tiene un poquito más de sentido, pero ninguna es que haya estado mal. El 3.6, intentando

[06:27] hacer un reloj analógico en HTML con la hora real, vemos que funciona correctamente y que podemos cambiar de tema claro a oscuro, tal como se solicita en el prompt. Y el modelo 3.8 flash, vamos a ver qué es lo que nos generó. Vemos que el reloj no tuvo tanto sentido, aunque funciona. Y al cambiar de tema, pues sí, cambia de tema, sin embargo, quizá el dibujo no quedó muy bien. Para un simulador de fluidos, el 3.6, esto es lo que nos generó, sin embargo, quedan todas juntas, todas las

[06:57] partículas. Al dar clic, podemos estar poniendo más y si cambiamos a modo arena, pues sí, cambia su comportamiento. Y en el 3.8, esto es lo que tenemos. Inicialmente no aparece nada, pero nosotros lo podemos poner, solo que la gravedad está quizá para el lado incorrecto. Cambiamos a modo arena y simplemente se mueve más lento, pero no noto que haya como colisiones entre ellas. En agua, creo que me gusta poquito más, aunque de igual forma tampoco es perfecto. Ahí estamos viendo

[07:26] qué tal funciona y la verdad es que hasta funciona lento, funciona raro. Luego, para intentar hacer una calculadora, el 3.6, esto es lo que nos genera. El modelo sin cuantizar, todo bastante bien y también tenemos historial. Y en el 3.8, esta es la calculadora generada, aparentemente también funciona y el historial también lo tenemos, solo que de forma diferente, pero en general ambas funcionan. Luego de todas estas pruebas, mi resumen es que el modelo 3.8 flash claramente es

[07:55] superior, pero no necesariamente con esfuerzo de razonamiento bajo. El problema principal no es la cuantización, el problema principal es el esfuerzo de razonamiento bajo, que a pesar de haber indicado bajo, comúnmente genera más tokens de razonamiento que el 3.6 y que generando más tokens de razonamiento, requiriendo más espacio y siendo más nuevo, no necesariamente genera mejores respuestas. Para generar muy buenas respuestas debemos de utilizarlo con esfuerzo de razonamiento

[08:24] extra alto, lo cual va a hacer que de por sí sea bastante más lento. Todo este tipo de pruebas las hemos hecho tanto en el 3.6 a 4 bits como en el 3.6 a 16 bits, que fue lo mismo que vimos hoy, y entre ellos dos casi no hay diferencia, con lo cual casi que hasta yo prefería el 3.6 a 4 bits en vez de este 3.8 flash con esfuerzo de razonamiento bajo y con esta cuantización que teóricamente no tiene mucha pérdida. El modelo no es malo, la cuantización tampoco, pero para funcionar bien requiere mucho, mucho

[08:57] razonamiento. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
