# Cuantización de Modelos de IA 🚀 ¿Realmente se Pierde CALIDAD?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=SyLPqEO0YUU)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-23
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:06

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a comparar el modelo Quen 3.6 35BA3B a su precisión original tanto el modelo como el mm Pro como su KVCH contra este mismo modelo pero cuantizado. En esta ocasión del agente de Slot Q4 KXL. En ambos casos es versión que cuenta con MTP para predicción multitoken y a pesar de que aquí el modelo está a 4 bits, la visión sigue en BF16 y la ventana de contexto la voy a cargar en Q8 en este modelo para ver si es cierto que la cuantización en el modelo no lo hace

[00:37] perder calidad o por lo menos no aparente y que la KVK en Q8 según tampoco hace perder calidad o por lo menos no aparente. El modelo 4 bits en conjunto con la visión pesa poco más de 22 GB y el modelo a precisión completa en conjunto con la visión pesa 67 GB. Una vez en ejecución el modelo a precisión completa con los expertos cargados en CPU vemos que nos está consumiendo 8.6 6 GB de V RAM, teniendo en cuenta que son solo 131,000 tokens de ventana de contexto en BF16 y de RAM en total, en este momento,

[01:17] estoy consumiendo 79 GB. No únicamente por el modelo, sino por las demás cosas que están cargadas en mi PC. El modelo a precisión completa con mm pro a precisión completa, MTP y KVCH a precisión completa, me estuvo generando en promedio unos 13 o 14 tokens por segundo. Esto cargando el modelo y la KVC en RTX 3060 de 12 GB, pero pues los expertos tal como habamos dicho en CPU, o seéase en RAM. Mientras tanto, la versión Q4 comúnmente ya cuando empecemos a hacer código se va a

[01:53] mantener por encima de 40 tokens por segundo y eso principalmente en respuestas poquito más largas porque si no, dado que casi lo único que hay es cadena de razonamiento, el MTP aquí no perdice tokens tan rápidamente y este nos está consumiendo 11 GB de V RAM y en total estoy consumiendo solo 27 GB de RAM. Para la primera consulta, intentamos generar un SUVG animado de un planeta orbitando alrededor de un sol.

[02:22] Esto en el modelo Quen 3.6 cuantizado a 4 bits y la KV caché en Q8 vimos que generó arriba de 40 tokens por segundo y que esta fue la respuesta. Quizá no sean los dibujos más bonitos, pero las indicaciones las siguió y todo funciona correctamente. Mientras tanto, el modelo sin cuantizar esto es lo que hizo. No es como tal que uno de los dos se haya equivocado, pero si notamos más detalle en el modelo sin cuantizar. De hecho, aquí hasta intentó hacer la luna, aunque no lo solicitamos y pues no tiene

[02:56] rotación alrededor del planeta, pero bueno, no lo solicitamos. Aún así, en general, vemos más detalle en el modelo sin cuantizar. Ninguno se equivocó, pero sin cuantizar tiene más detalle. Luego, si intentamos hacer un SUVG de olas animadas, olas del mar moviéndose, esto es lo que hizo el modelo cuantizado.

[03:16] Tenemos las olas del mar, sin embargo, no se están moviendo y en el modelo sin cuantizar las olas no se dibujan y tampoco se están moviendo. Algún error hubo por ahí, pero vemos nuevamente un patrón claro y es que es como si diera más detalle a las cosas, aunque de igual forma este se equivocó, no pintó correctamente las olas. Vemos por aquí según el reflejo del sol y en ninguno de los dos tuvimos animación. En el seguimiento de instrucciones, pues el modelo cuantizado la siguió mejor,

[03:47] simplemente no hubo animación. Aquí no hay ni olas ni animación con el modelo cuantizado. Al intentar hacer un SUVG de un reloj, nuevamente vemos que no tiene animación y además los números están todos mal acomodados. La verdad el reloj aparentaba que iba a quedar bonito, pero pues no tiene animación y los números están a lo loco. Sin cuantizar, esto es lo que nos hizo. Tiene más sentido dónde está puesto cada uno de los números. No hay animación y quizá el diseño es un poquito peor, aunque eso quizá ya es más

[04:19] de gustos personales. Así que en general aquí solo hay un error, no hay animación. Los números cuando menos están más o menos bien acomodados. Ahora, si intentamos hacer una pelota rebotando, esto es lo que nos hizo la versión cuantizada, aparece la sombra, sin embargo, la animación de la pelota no tiene sentido alguno y por el contrario, el modelo sin cuantizar pinta algo más bonito, aunque de igual forma la animación no tiene mucho sentido.

[04:46] Donde está la sombra ni siquiera está la pelota. Pero bueno, vamos a ver ahora cómo intenta hacer el crecimiento de una planta. Y vemos por aquí al modelo cuantizado, qué fue lo que nos generó. No está mal, la verdad. tiene algunos detalles, algunas cosas a mejorar, pero funciona. Mientras tanto, el modelo sin cuantizar vemos que como comúnmente da más detalle y el resultado queda poquito mejor. El modelo cuantizado no necesariamente se equivoca mucho más. La principal diferencia está en el detalle

[05:14] que deja. El modelo sin cuantizar pintó mal las olas. El modelo cuantizado pintó mal los números en el reloj y en todo lo demás, pues van muy similar, a excepción de que el modelo sin cuantizar deja más detalle. En una consulta simple como por qué el cielo es azul, vemos el modelo cuantizado que puso párrafos negritas, listas y la respuesta es correcta. Y ahora en el modelo sin cuantizar tenemos más o menos lo mismo, aunque también en esta ocasión se incluyeron emojis.

[05:46] Ahora, al intentar crear una landing page de presentación para un producto o servicio ficticio, únicamente con HTML 5, el modelo cuantizado, esto fue lo que nos generó. La verdad es que está bastante bien, bien detallado, no noto errores, tiene sentido como comúnmente son las páginas web, las landing page, todo. La verdad es que bastante bien.

[06:09] Nos puede gustar más o menos, pero en general pues todo funciona perfecto, todo está bien desarrollado. Y ahora el modelo sin cuantizar. Vamos a ver qué es lo que nos generó. Tenemos un diseño diferente que quizá me gusta más, pero esto no necesariamente es que esté más detallado como en los casos anteriores, simplemente el diseño es diferente. Lo que sí es que en ninguno de los dos casos vimos algún claro error. Solo son diseños diferentes, pero no hay ni más detalle ni más errores. Ahora vamos a

[06:39] ver cómo la versión cuantizada intenta hacer un reloj analógico en HTML 5, no solo con animación, sino que realmente con hora real. Entonces vamos a visualizarlo. Y esto es lo que nos hizo en esta ocasión la versión cuantizada.

[06:53] Ha habido otras veces que funciona mejor, pero pues en este caso no. Intento cambiar al modo claro y no funciona. Y ahora el modelo sin cuantizar, esto es lo que nos generó. De hecho, este tipo de respuesta yo prácticamente nunca, por no decir nunca, la había visto en 3.635B, pero comúnmente lo usaba cuantizado y hoy que lo estoy usando sin cuantizar sí noto como nuevos estilos, nuevos detalles. Los errores como tal no hay tanta diferencia, a veces uno se equivoca, a veces el otro, pero sí vemos

[07:23] que hay más detalle, eso es lo que principalmente notamos, aunque de todos modos el Q4 se debería de equivocar poquito más. Voy a intentar cambiar al modo claro y pues sí, todo funciona perfecto, tal como estamos viendo. Ahora un simulador de fluidos con la versión cuantizada y esto es lo que tenemos. La verdad es que bastante bien, sin embargo, la gravedad pues como que brilla por su ausencia un poco. Es muy poquita. Por más que aumento los valores por aquí, la verdad es que tardan mucho

[07:50] en caer las cosas. Si mantengo el clic presionado, vemos como cómo podía poner más partículas y si aumento el número de partículas, pues puedo seguir poniendo aún más. Y si cambiamos, por ejemplo, a modo arena, pues se comporta diferente y de hecho en este caso hasta desaparecen de la pantalla prácticamente. Y en el modelo sin cuantizar esto es lo que tenemos. Se ve diferente, [carraspeo] más pequeñito, no desaparecen de la pantalla, pero están todas juntas. Y al momento de intentar poner más, así es

[08:17] como se ve. Voy a poner muchas. Y aquí, como estamos viendo, pues tiene una animación bastante interesante. Y al momento de cambiar a modo arena, pues vemos como sí se comporta diferente. Ninguna de las dos simulaciones, yo diría que es perfecta. Simplemente están funcionando de forma diferente. Y por último, al intentar generar una calculadora, el modelo cuantizado, esto es lo que nos desarrolló, ya la habíamos probado y funciona sin problemas. La verdad es que todo bastante bien. Y

[08:44] también tenemos un historial, el cual lo tenemos por aquí y pues funciona sin problemas. Y sin cuantizar vamos a ver cómo funciona esto en un diseño diferente, que tal como digo, comúnmente no vemos este tipo de diseños en el modelo cuantizado y al momento de que doy clic aquí en el historial, pues funciona bien. De hecho, tiene un estilo que quizás me llama más la atención. No sé si mejor o peor. El problema aquí es que quedaron los dos botones juntos. Ahí está. Y pues bueno, con esto ya creo que

[09:09] podemos sacar una conclusión clara. Y es que claramente hay diferencia, hasta en el tamaño hay diferencia. No es lo mismo 16 bits que 4 bits. Y además no solo el modelo en 4 bits, sino que la KV caché en 8 en vez de 16. Sin embargo, se nota mucho más en tamaño que en verdadera calidad. ¿Por qué? Aquí estamos viendo detalles, no tanto qué tanto se equivoca uno o el otro. En eso, si bien aparentemente el de 4 bit se equivoca poquito más, la verdad es que por lo menos bajo estas pruebas no es algo tan

[09:41] diferenciador como la diferencia de tamaño. Lo que sí se nota como diferencia es que el modelo sin cuantizar da como más detalle siempre. No significa necesariamente que esté siguiendo mejor el prompt. Ambos siguieron bastante bien el prompt, solo que en ese mismo seguimiento de promptisar generó cosas más bonitas, mejor acabadas. Si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.
