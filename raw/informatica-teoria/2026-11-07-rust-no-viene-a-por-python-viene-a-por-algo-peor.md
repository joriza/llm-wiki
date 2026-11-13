# Rust no viene a por Python. Viene a por algo peor

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=qI_t-NeBlZo)
- **Canal**: CD
- **Publicado**: 2026-11-07
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:26

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Abril de 2023. Elon Musk responde a este tweet: "La inteligencia artificial general se construirá con Python. Piénsalo." [música] Su respuesta es una sola palabra: "Rust". Sonaba a provocación, pero este año Musk ha dicho que el código de XAI es en su mayoría Rust y que X está cambiando el viejo escala de Twitter por Rust. Eso lo dice él. Lo siguiente lo puedes comprobar. Y Python ni siquiera es el objetivo. En septiembre, GitHub contó que había pasado el motor de Copilot de TypeScript a Rust, unas

[00:33] 430.000 líneas. Y la mayor parte del código nuevo la escribieron agentes de IA. Boom hizo algo parecido. 535.000 líneas de Zig reescritas en Rust con Cloud [música] en 11 días. La versión final tardó 3 meses más. Eso sí, Boom pertenece a Anthropic, la empresa que hace Cloud. Hugging Face lleva años en esto. Sus tokenizers están en Rust y también Candle, su framework de aprendizaje automático. Y un ingeniero de Microsoft cuenta que Rust ya es de primer nivel allí, aunque C++ sigue

[01:07] dominando. Entonces, ¿Python está muerto? Para nada. Sigue siendo el número uno. Y ahí está lo interesante, porque Rust busca otra cosa, una que casi nadie mira. Python manda en la inteligencia artificial. NumPy, Pandas, PyTorch, Transformers, casi todo se usa desde Python. Pero mira esta línea.

[01:28] Parece Python y lo es. Solo que Python aquí apenas hace nada. Le pasa el trabajo a una librería en C++ y esa librería se lo pasa a un programa de CUDA que corre en la GPU. Python es el volante. C, C++ y CUDA son el motor. Y funciona porque la IA tiene dos capas.

[01:47] Arriba, la de investigación. Pruebas una idea por la mañana, la cambias por la tarde y tu compañero entiende lo que has hecho. Para eso, Python es perfecto. Abajo, la de sistemas. Aquí importan otras cosas. Que vaya muy rápido, que no gaste memoria de más y que siga encendido dentro de 6 meses. [música] Python ahí sufre. Durante décadas, esa capa fue de C y C++. Y ahora, Rust se está comiendo un trozo cada vez más grande. C++ es rapidísimo, pero te deja compilar errores graves de memoria. Un

[02:18] programa puede seguir usando un dato que ya se borró o dos hilos pueden pisarse la misma información y el compilador, muchas veces, te deja pasar. Son errores habituales. Microsoft dijo en 2019 que cerca del 70% de las vulnerabilidades a las que asigna un CVE cada año eran de seguridad de memoria. En Chromium, cerca del 70% de los fallos de seguridad graves viene del mismo sitio. Y hablamos de ingenieros que llevan décadas escribiendo C++ con mucho cuidado. Rust cambia el momento del error. Esos

[02:51] fallos, en vez de explotar con el programa en marcha, se convierten en errores de compilación. El código no llega a ejecutar se hasta que lo arreglas. Tiene letra pequeña. El código marcado como unsafe queda fuera de esa garantía y los fallos de lógica también.

[03:06] Cloudflare lo aprendió en noviembre de 2025 con su peor caída desde 2019 que arrancó en código Rust. Rust te quita una familia entera de errores y los demás siguen siendo tuyos. En la capa de sistemas, esto tiene mucho sentido y hay cuatro razones. La primera, velocidad previsible. Python gestiona la memoria por ti y de vez en cuando tiene que pararse a limpiar. En un notebook ni lo notas. En un chatbot con miles de peticiones por segundo, cada pausa es alguien mirando el cursor. Rust no tiene

[03:38] recolector de basura. La memoria se libera en puntos exactos del código y eso te da una latencia estable, aburrida. Aburrida es justo lo que quieres. La segunda, [música] el GIL, el candado global de Python. Durante años, solo un hilo podía ejecutar código Python a la vez. Desde Python 3.14, ya existe una versión oficial sin ese candado, pero es opcional y aún no la usa todo el mundo. Rust nunca tuvo ese límite. Su sistema de tipos controla qué datos se pueden compartir entre hilos y

[04:09] el compilador te frena si te equivocas. [música] Lo llaman concurrencia sin miedo. Esto importa al entrenar modelos porque a veces el cuello de botella es la CPU que le lleva los datos a la GPU. En 2021, Meta midió en un entrenamiento un 56% de ciclos de GPU parados, esperando. [música] Tarjetas carísimas sin hacer nada. La tercera, control de la memoria. La IA mueve matrices de números enormes y cómo se colocan esos números decide lo rápido que los lee el procesador. Rust te deja controlar ese

[04:41] detalle con la misma precisión que C++. [música] Y con muchas menos formas de romperlo todo sin enterarte. Y la cuarta, explica por qué se está extendiendo tan rápido. Rust se enchufa a Python. Con PyO3 y Maturin, escribes una librería en Rust y la importas desde Python como cualquier otra. Quien la usa nota la velocidad y muchas veces ni se entera de que hay Rust debajo. Probablemente ya lo estés usando. Mira esto. Instalamos los mismos seis paquetes con la caché llena. Pip,

[05:12] casi 16 segundos. Uv, [música] una décima de segundo. Ahora datos. 10 agrupaciones sobre 10 millones de filas. Pandas, [música] 16 segundos. Polars, menos de tres. Uv, Ruff, Polars, el núcleo de TikToken de OpenAI, el de Pydantic, la base de datos vectorial Qdrant. Todo eso tiene Rust dentro y casi todo se instala con Pip.

[05:37] Rust deja a Python donde está y su objetivo es el C++ de debajo. Y ni siquiera lo tiene ganado. PyTorch y llama.cpp siguen sobre C++ y en noviembre Rust ha salido del top 10 de TIOBE adelantado por Go. Donde sí está ganando terreno es en las herramientas, en los datos y en los agentes. Python sigue al volante. Lo que está cambiando es el motor, pieza a pieza. ¿Y tú qué haces con esto? Si programas en Python, nada de abandonarlo. Prueba UV esta semana, que te lleva 5 minutos. [música] Y si

[06:10] quieres aprender Rust, empieza por una función lenta de tu propio código. Pásala a Rust con PyO3 y compara. Si quieres más herramientas así, en este otro video te enseño cinco librerías de Python que parecen ilegales. Casi todas esconden la misma sorpresa.
