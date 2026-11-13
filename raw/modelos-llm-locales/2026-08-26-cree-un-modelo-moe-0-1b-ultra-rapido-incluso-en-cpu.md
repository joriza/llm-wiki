# Creé un modelo MoE 0.1B 🚀 Ultra RÁPIDO incluso en CPU

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=QZ18qtz9WJ8)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-25
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:07

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Si en Hugging Face buscamos Liquid AI, nos vamos a topar con los modelos de esta gente, los cuales tienen como objetivo ser bastante eficientes en tamaños muy reducidos. Tienen distintas variantes actualmente de su versión LFM 2.5.

[00:17] Sin embargo, a pesar de todo ello, aún existe cierto problema. Y es que estos modelos, por más pequeños que sean, comúnmente son modelos densos, a excepción de la versión 8B, que sí es mezcla de expertos. El 230M, el 350M, el 1.2B y el 2.6B son modelos que se pudieran optimizar aún más si, a pesar de mantener ese tamaño y esa eficiencia, fueran mezcla de expertos. Funcionarán más rápido hasta únicamente con CPU. Estos modelos no son ChatGPT, estos son modelos de lenguaje, principalmente preparados para

[00:55] hacer la base para ciertos desarrollos y automatizaciones que queramos hacer. No es un reemplazo de ChatGPT. Si acaso a partir del 2.6, igual el 8B, pero más pequeños no. Son para ciertas implementaciones que nosotros queramos hacer. Entonces, tal como comentamos, sí existen estos modelos y además también los entregan bajo cuantizaciones en formato GGUF, que los hacen aún más pequeños. Sin embargo, sin embargo, esto los hace más pequeños, no necesariamente más rápidos, porque sigue siendo un

[01:26] modelo denso que requiere toda esa parte activa. Entonces, imaginemos, por ejemplo, un modelo 230M o 0.2B, que no solo es que su tamaño total sea de 0.2B y de que además lo ejecutemos cuantizado, sino que también ese 0.2B sea de un modelo mezcla de expertos, que realmente su parte activa es aún más pequeña. Pues eso es algo que yo he estado trabajando. Si nos regresamos al repositorio del modelo oficial sin cuantizar y buscamos fine tunes, por aquí deberíamos de encontrar los modelos

[02:03] que yo he empezado a preparar de esta forma. Son exactamente los mismos modelos, mismos safe tensors, misma precisión completa de 16 bits y no solo es que los tenemos como mezcla de expertos en su precisión original con toda la información, sino que también los hemos subido en formato GGUF, cuantizados, Q4KM, Q8, F16. De todos modos, tal como digo, también está a precisión completa, nada de un simple Lora, nada de 4 bits, el modelo a precisión completa y en formato safe tensors, por si queremos hacer un fine

[02:38] tuning o lo que queramos de este modelo que ya es un mezcla de expertos. Modelo pequeñito y para colmo mezcla de expertos. No solo lo hice para este, lo estoy haciendo para más modelos que me van solicitando. Sin embargo, pues vamos a ver, como primer ejemplo el día de hoy, este modelo PLFM 2.5 230M, ya en formato MoE o bueno, más que formato, en tipo de arquitectura, que solo una parte está activa. Si nos vamos a cuantizaciones, pues por aquí también está nuestro archivo cuantizado en

[03:10] formato GGUF, nos vamos a archivos y versiones y por aquí los vamos a ver, en F16, en Q4KM o en Q8. Yo no lo descargo porque ya lo tengo, básicamente porque yo los creé. Simplemente, pues, para revisar, si nos vamos a nuestro perfil de NichoNauta dentro de Hugging Face, pues por aquí vamos a poder ver todos los modelos que hemos ido generando. En este caso, de momento, únicamente el 230M transformado a MoE y el 350M.

[03:41] En ambos casos, tanto GGUF como el modelo en safe tensors, además de cosas más antiguas que aún tenemos disponibles. Otros modelos ya los hemos borrado de por aquí, solo están en Oyama. Entonces, en este momento, por ejemplo, vamos a cargar el 350M, no el 230, uno poquito más grande, sin embargo, sigue siendo mezcla de expertos, con lo cual va a ser bastante rápido, y lo vamos a cargar en Q4KM.

[04:05] Estos son los ajustes que en este momento estoy utilizando para cargar dicho modelo, y entonces procedo a ejecutarlo. Ahí ya está en ejecución, vamos a entrar desde el navegador y hagámosle alguna pregunta, como por ejemplo, ¿por qué el cielo es azul? Aquí vemos cómo rápidamente respondió, según a 341 tokens por segundo, sin embargo, esto es muy falso, ¿por qué? Pues porque solo son 319 tokens en total. La respuesta tardó menos de un segundo, solo en conversaciones, en generaciones

[04:35] de texto muy muy largas, vamos a ver la velocidad real. Vamos a probar, por ejemplo, con esta otra solicitud, presiono intro, y pues aquí vemos cómo la generación de tokens por segundo realmente está en más de 400 tokens, en mi GPU RTX 3060, consumiendo en este momento, bajo los ajustes que tenemos, 0.8 GB. Tal como digo, de por sí, originalmente son modelos muy pequeñitos, siendo que este ni siquiera es el más pequeño, el más pequeño es el de 230M, este es de 350M, cuantizado a 4 bits, y además mezcla de

[05:09] expertos. Sin embargo, pues, okay, en GPU está bastante bien. Para el tipo de uso que le queramos dar, pues está muy interesante, para cierto tipo de desarrollos o demás cosas que necesitemos, así como el simple hecho de poder hacer fine tunings a los modelos originales, aunque comúnmente no hace falta, con un simple rag o fine tuning in context, ya tenemos vídeos de esto en el canal, se puede hacer sin problema.

[05:33] De acuerdo, pero eso es en GPU, ¿y qué tal en CPU? Pues entonces, lo único que voy a hacer en este momento es cambiar la versión de llama.cpp que voy a utilizar para que use únicamente CPU. Lo tenemos entonces así configurado, y procedo nuevamente a abrirlo. Se va a abrir con CPU y RAM. Entramos de nuevo por acá, le doy en regenerar, y vamos a ver qué velocidad estamos consiguiendo sin siquiera una GPU dedicada, ni integrada, ni nada. Simplemente con puro CPU y RAM estamos consiguiendo 121

[06:06] tokens por segundo. Ahora probemos, por ejemplo, con la versión en Q8, también en CPU, control S para guardar, lo ejecuto, le doy en regenerar, y vemos que estamos a algo así como ochenta y tantos tokens por segundo, aún con el modelo en Q8. Esa es la ventaja de que el modelo originalmente sea de por sí muy eficiente, y además transformado a mezcla de expertos, pues aún más. De momento he subido ya el LFM 2.5 230M, y el 350M.

[06:37] Voy a hacer eso también con el 1.2B, y con el 2.6B, así como modelos de otras arquitecturas, como por ejemplo de Qwen. Lo pienso hacer con el Qwen 3.5 0.8B, 2B, 4B, 9B, y quizás también el Qwen 3.8 27B. Están entonces los modelos por aquí subidos, ya se pueden utilizar sin problema, y pues si te interesa que un modelo lo desarrollemos de esta forma, déjalo en los comentarios, y para seguir viendo este tipo de vídeos, simplemente dale a Like y suscríbete.
