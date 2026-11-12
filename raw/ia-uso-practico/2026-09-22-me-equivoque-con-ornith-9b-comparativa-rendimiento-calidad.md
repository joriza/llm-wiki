# Me equivoqué con Ornith 9B 🧪 Comparativa de RENDIMIENTO y Calidad con Qwen

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=SLt4-2aIgAs)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-22
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:28

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Para no probar los modelos de manera individual, los vamos a comparar directamente. En esta ocasión Qwen 3.5 9B, que se supone que después lo mejoraron a Ornit 1 9B y ahora a Ornit 1.5 9B. Es decir, se supone que es una mejora de la mejora. Estos son los ajustes de ejecución que tenemos en cada uno. En esta ocasión, si en ambos casos tenemos MM Pro y MTP, sin embargo, los parámetros de desempeño cambian pues porque pusimos los adecuados para cada uno, los que nos recomiendan en cada uno

[00:33] de forma oficial. Acabo de ejecutar Qwen 3.5 9B y vamos a ver cuánta memoria nos consume bajo esos ajustes de ejecución. Y en este momento nos está consumiendo 8.9 GB de VRAM. Con estos ajustes, pues, vamos a empezar a probar. Primero sin uso agéntico y después con uso agéntico.

[00:54] La primera consulta va a ser simplemente por qué el cielo es azul. La generación de tokens por segundo mejor vamos a ver el promedio final. Y si vemos su cadena de razonamiento, pues, la verdad es que principalmente es en idioma inglés, aunque tiene partes en español, eso me da igual. Y luego de aproximadamente 1,000 o 1,200 tokens empieza a dar la respuesta final. Vamos a visualizarla un poco y por aquí tenemos distintos párrafos, distintos subtítulos, listas, negritas, bastante bien. 72 tokens por

[01:25] segundo este Qwen 3.5 9B. Probamos ahora el Ornit 1.5 9B. Vamos a ver cuánta memoria nos consume y pues debería de ser bastante similar, pues porque es el mismo modelo y lo estamos cargando con todo, con MTP, con visión. Simplemente aquí creo que requiere muy poquito menos porque esta cuantización hace que el modelo sea ligeramente más pequeño. Esa ligera diferencia de cuantización no debería de afectar a inteligencia. Si de por sí en 4 bits comúnmente no se nota la pérdida de inteligencia comparado con

[01:57] el modelo original, menos con unos 100, 200, 300 MB de diferencia. Damos en regenerar y por aquí ya estoy empezando a ver que aparentemente la velocidad de generación de tokens por segundo es más lenta, a pesar de en este caso ser el modelo poquito más pequeño. Aquí, por cierto, en menos tokens de razonamiento comenzó a dar la respuesta final, la veo más corta y menos detallada, sin embargo, eso ya es preferencia personal de cada quien. En general, la respuesta está bien. La principal diferencia fue

[02:27] que en este caso generó menos tokens y de hecho también menos tokens por segundo, menos velocidad. Ahora vamos a probar este mismo Ornit 1.5 9B, pero para que intente hacer un SVG de un sol y un planeta orbitando alrededor con una animación infinita. Llevamos 1,000 tokens de razonamiento y sí notamos que aparentemente en cuanto a velocidad es peor que el modelo original, a pesar de que, como comento, pues es ligeramente más pequeño. 3,000 tokens de razonamiento y luego de como 3,500 o algo así,

[02:59] poquito menos, está comenzando a dar la respuesta final. Ahí tenemos el sol, tenemos la órbita y el planeta que sí va alrededor, pero también tenemos un círculo negro. Creo que todo fuera perfecto, sinceramente, si esto estuviera transparente, pero no lo está.

[03:16] Sin embargo, en general, bastante bien. 5,000 tokens, casi 67 tokens por segundo. Seguimos con el Qwen 3.5 9B y algo que sí es que seguramente va a dar la respuesta más rápido, no solo porque genera tokens por segundo más rápidamente, sino porque, según yo, va a generar menos tokens de razonamiento. Le damos en regenerar, estamos como a 70, 69 tokens por segundo y aquí ya estamos con un problema y es que no puso la caja correspondiente para encerrar el SVG.

[03:48] Sin embargo, por lo menos quiero revisar si es correcto, aparenta hacerlo, así que bueno, claramente le dijimos que lo encierre en una cajita de SVG y no lo hizo, pero por lo menos vamos a ver el SVG como tal, qué tal quedó.

[04:04] Aquí lo tenemos, fue más simple, no gira, aunque tampoco tiene el fallo del círculo negro encima, pero pues también al mismo tiempo yo tuve que encerrarlo en la cajita correspondiente, haciendo que después parece ser que ya nada tiene sentido, porque yo modifiqué la respuesta del modelo. Aquí no sé realmente cuál consideraría ganador, todo esto que está aquí arriba mal, no es que el modelo haya estado mal, sino que al yo editar la respuesta, ya no sé distinguió bien cuál era el fin de la

[04:30] cadena de razonamiento, pero antes no teníamos esto. Esto es directamente su razonamiento como tal, generó más tokens por segundo, fue más rápido porque generó menos tokens, sin embargo, la respuesta sí está más simple. En ambos casos cometió errores, en el otro, el fondo negro y en este, pues que no gira el planeta, pero en general de por sí el diseño está más simple. Con este mismo Qwen 3.5 9B, ahora lo que vamos a probar es intentar generar una landing page y veamos qué tal queda y qué tal funciona

[05:00] tanto en un modelo como en el otro. Ahí luego de menos de 1000 tokens de razonamiento, más o menos, está comenzando a dar la respuesta final, ya está por terminar la respuesta y aquí ya la tenemos con 7600 tokens en total, aproximadamente 79 tokens por segundo.

[05:17] Previsualizamos y esto es lo que nos hizo el modelo Qwen 3.5 9B, de momento se ve bien, funciona bien, todo de manera correcta, por lo menos no vemos un problema catastrófico. La verdad es que bastante bien, es funcional, no le veo errores. Veamos pues con el Ornit 1.5 9B. Le damos en regenerar, como de costumbre vemos menos tokens por segundo, pero esperemos si al menos la respuesta sea mejor. De momento 100% no he notado a uno claro ganador. Lo único que sí estoy completamente seguro,

[05:53] porque es algo literal, es que la generación de tokens por segundo es más rápido en el Qwen 3.5 9B. Aquí tenemos la respuesta, prácticamente gastando el doble de tokens, con un promedio de casi 70 tokens por segundo, y vamos a ver qué tal terminó la respuesta final de este Ornith 1.5 9B. Previsualizamos y la verdad es que se ve mejor, bastante bastante mejor, por lo menos a mí me gusta más. Sigo bajando, funciona el JavaScript. En este caso, este texto está oscuro, pero es una ligera cosa a

[06:27] resolver. También por aquí esos iconos están oscuros, pero en general creo que sí me gusta más, es algo más completo. Pudo haber sido coincidencia, qué sé yo, de que en ese caso un modelo hizo un diseño más simple y otro más completo, pero la verdad es que claramente creo que el del Ornith es mejor, no solo es más completo, sino que en general me gusta más. No es que alguno haya tenido grandes problemas, y en todo caso si quisiéramos decir problemas, aquí falta un icono y los textos que están más oscuros de lo

[06:56] que deberían, pero de ahí en más, pues no le veo problemas, ciertamente. Bueno, sí, estos iconos no están muy bien dibujados, la verdad. Y el modelo Qwen 3.5 9B, a pesar de que generó 10 tokens por segundo más y que gastó menos tokens, la respuesta no es mala y aquí yo no veo ningún fallo, pero sí es más simple. Aquí ya es cosa de valorar, teniendo en cuenta que, pues, la landing se la inventó él, nosotros no es que hayamos decidido exactamente cada punto.

[07:25] Por primera vez estoy notando un modelo en el que no estoy 100% seguro de cuál está ganando. Podemos decir que nos gusta más uno o que nos gusta más el otro, y la verdad es que tendría sentido. Lo único que 100% es realista, pues, es que el original genera poquitos más tokens por segundo. Vamos a ver pues, en uso agéntico, qué tal funciona.

[07:45] Y para ello, en esta carpeta vacía, voy a abrir Pi Agent. Y aunque aquí diga Qwen 3.6, pues el que va a responder es el que sigue abierto, Ornit 1.5 9B. Podemos hacer scroll hasta arriba y ahí aparece el nombre. Simplemente es para no estar modificando a cada rato el archivo de configuración de Pi Agent. Le vamos a decir, escribe el juego snake.html.

[08:08] Comienza a hacer una búsqueda de archivos y después se pone a escribir el archivo snake.html. Aquí, por cierto, estamos viendo que la velocidad está siendo mayor, 70 y tantos tokens por segundo, mayor a la respuesta anterior, no necesariamente mayor a Qwen, tenemos que compararlo. Luego de un rato, por aquí vemos que ya terminó y de hecho, no solo estuvo creando el código, sino que probó algunas cosas y estuvo corrigiendo, según. Vamos a ver si es cierto que el código queda funcional. Le doy doble clic, esto es lo

[08:39] que tenemos, le doy en jugar y la verdad es que es funcional. Y claramente se nota a simple vista, los que ya hemos probado el Qwen 3.59 original, que este modelo no sé si funcione mejor, pero funciona diferente. A excepción de que cuando hacemos que la serpiente esté hacia abajo, un ojo no se acomoda correctamente, queda bizca, pero de ahí en más, pues está bastante bien, la verdad. Vamos a ver si podemos perder y efectivamente. Le damos en reintentar y todo funciona. Ahora le vamos a decir

[09:11] que cambie el estilo visual, por ejemplo, a lo siguiente, cambia el estilo visual a estilo Tetris, simplemente para ver si sigue funcionando luego de un cambio tan raro. Y aquí, luego de un rato, se supone que ya terminó.

[09:23] Acabo de ver texto en otro idioma, pero bueno, dejando de lado eso, vamos a ver qué tal funciona el cambio. Presiono control shift R y aquí tenemos un estilo así más al estilo Tetris y sigue funcionando. Esto no está completamente centrado, pero por lo menos esto sigue funcionando, sigue siendo funcional.

[09:41] Bastante bien, la verdad. El modelo pudo iterar sin problemas, al mismo tiempo que sigue funcionando el código, no lo descompuso. Pasamos a una nueva conversación, borramos el archivo, cerramos Ornit y abrimos Qwen 3.5 9B. Escribimos nuevamente el mismo primer prompt, presionamos intro, se pone a hacer una pequeña cadena de razonamiento y luego escribir el código. Y como vemos, la velocidad sigue siendo mayor que en el otro modelo. No es mucha la diferencia, pero es constante, siempre ha sido más

[10:12] rápido que el modelo Ornit. Aquí ya terminó, de hecho fue bastante rápido este modelo. Vamos a ver qué tal funciona. Aquí tenemos la respuesta, le doy en jugar y pues se ve diferente y más simple, tal como el modelo Qwen 3.5 9B original. Por lo menos funciona, eso sí. Vamos a probar ahora con la iteración para ver qué tal. Por cierto, sí podemos morir y ese botón está feo, pero en general pues todo es funcional.

[10:38] Le decimos cambia el estilo visual a estilo Tetris, presiono intro, hizo una muy pequeña cadena de razonamiento y de nuevo se va a poner a editar. No recuerdo si en el otro modelo reescribió todo el archivo o editó. Aquí se está poniendo a editar. Al final, de hecho, mejor se puso a escribir el archivo completo, vamos a ver qué tal el resultado. Aquí ya terminó, tenemos la respuesta final y vamos a ver qué tanto cambió y si sigue funcionando. Control Shift R, esto es lo que nos generó y

[11:07] pues sigue siendo funcional, pero sí. Creo que en general el diseño web Ornit lleva la delantera. No es que este no funcione, pero en Ornit sí vemos como un resultado mejor acabado. En ninguno de los dos modelos hemos visto grandes problemas en lo más mínimo, pero sí se ve Ornit como si fuese un modelo que piensa poquito más las respuestas o algo así. Las deja más detalladas, de más calidad. Esto teniendo en cuenta principalmente uso agéntico y de desarrollo, que es para lo que está

[11:37] pensado. Seguramente para otro tipo de usos, convenga más el modelo original, por ejemplo, para uso como un agente, como un chat, como redactor, aunque para eso está mejor Gema. Es la primera vez que veo un modelo que sí me hace pensar el utilizar dicho fine tuning comparado contra el modelo original. No absolutamente en todos los casos, pero sí para el que se supone que lo mejoraron, que fue para desarrollo agéntico. En ese caso sí notamos una diferencia. No que este falle, sino que

[12:09] el otro genera mejores respuestas, mejor acabadas, más pulidas. Solo que genera poquitos menos tokens por segundo. La ventaja es que este modelo sí cuenta con MTP y sí cuenta con visión como el modelo original. Si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.
