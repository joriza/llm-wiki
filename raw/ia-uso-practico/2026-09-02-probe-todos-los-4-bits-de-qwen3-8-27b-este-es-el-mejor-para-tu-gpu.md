# Probé Todos los 4 Bits de Qwen3.8-27B: Este es el Mejor para tu GPU

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cNgD4JDNLd4)
- **Canal**: Cognix
- **Publicado**: 2026-09-02
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:31

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Te descargaste un modelo de inteligencia artificial que dice pesar 4 bits. Tu amigo se descargó el mismo modelo, también en 4 bits, y sin embargo, el tuyo va a la mitad de velocidad, ocupa el doble de memoria y responde distinto.

[00:16] ¿Se rompió algo? No. Es que 4 bits no significa lo que tú crees que significa, y si vas a correr modelos grandes en tu propia máquina, esto es lo primero que tienes que entender antes de descargar nada. Un modelo de 27.000 millones de parámetros guardado con una precisión de 16 bits necesita alrededor de 55 GB solo para cargar los pesos en memoria. Eso ya descarta a casi cualquier computadora de consumo, así que la solución obvia es comprimirlo. Y ahí empieza el engaño silencioso. Dos archivos que dicen 4

[00:50] bits en el nombre pueden estar haciendo operaciones matemáticas completamente distintas entre sí. Uno puede volar en tu tarjeta gráfica y el otro puede arrastrarse como si tuviera 10 años. Si bajas un checkpoint INT4 pensado para una RTX 3090, una compilación NBF 4 pensada para una RTX 5090 y un modelo de 4 bits pensado para un chip de Apple, técnicamente no estás comparando lo mismo, aunque todos digan 4 bits en la etiqueta. La calidad final depende de la representación numérica. La velocidad

[01:24] depende de esa representación, más el hardware, más el kernel que lo ejecuta. Tres variables, no una. Pero antes de hablar de formatos de compresión, hay que entender qué estamos comprimiendo. Qwen 3.8, con sus 27.000 millones de parámetros, no es un modelo normal. Tiene 64 capas en total, pero solo 16 de ellas usan atención completa clásica. Las 48 restantes usan un mecanismo de atención lineal con compuertas que cambia por completo cómo se comporta la memoria de contexto. Esto

[01:57] importa porque afecta directamente a la llamada caché KB, la memoria que el modelo usa para recordar lo que ya leyó en la conversación. Solo con las 16 capas de atención completa, usando cuatro cabezales y una dimensión de 256, cada token necesita guardar 32,768 valores. A 16 bits de precisión, eso son 64 KB por cada token que escribes o que el modelo genera.

[02:25] Haz la cuenta con contexto real. Con 32,000 tokens, la caché ocupa unos 2 GB. Con 128,000 tokens, sube a 8 GB. Y si empujas el modelo hasta su límite nativo de 262,144 tokens, la caché sola, sin contar los pesos del modelo, se come 16 GB de video. Comprimirla a 8 bits la baja a unos 8,5 GB, a 4 bits a unos 4,5 GB. La conclusión práctica es esta, si alguien te asegura que un archivo de 14 GB en 4 bits cabe perfecto en una tarjeta de 16 GB, solo es cierto si le mandas mensajes

[03:04] cortos. En cuanto le pegas un documento largo o una base de código completa, esa memoria se desborda, empieza a usar RAM del sistema y la velocidad de respuesta se cae en picada. Para no perderte en este tema, hay cuatro cosas que nunca deberías mezclar.

[03:20] Una es la precisión numérica, el tipo de dato en sí, como FP8, INT4 o NBF P4. Otra es el algoritmo de cuantización, el método matemático para decidir qué redondear y qué no, como AWQ, GPTQ o calibración por matriz de importancia.

[03:38] Otra es el formato de contenedor, cómo se empaqueta todo en el disco, como GGML o EXL2 o EXL3. Y la última es el kernel de inferencia, el código de bajo nivel en CUDA o en metal que de verdad ejecuta la multiplicación de matrices en tu hardware. GUF, por ejemplo, no es un algoritmo, es solo el empaque. Hoy por hoy, la opción local más flexible para hardware mixto son las recetas dinámicas de GUF, en particular las versiones Dynamic del proyecto Unsloth, ya en su tercera generación.

[04:10] Antes, 4 bits significaba aplicar la misma reducción a todo el modelo por igual, sin distinción. Las recetas dinámicas modernas ya no funcionan así. Usan datos de calibración para identificar qué capas son sensibles y merecen conservarse en mayor precisión, mientras comprimen agresivamente las capas menos críticas. La versión más reciente de Unsloth para este modelo amplió su calibración de 45 fragmentos a más de 200, combinando hasta 14 tipos distintos de cuantización dentro de un

[04:40] solo archivo. En números concretos, una variante etiquetada como UDQ4XS pesa unos 14,3 GB en disco y la UDQ4KXL sube a 17,6 GB. Si tu tarjeta anda justa en 12 o 16 GB, la UDQ3KXL comprime el modelo a unos 13,1 GB, sacrificando algo de precisión general, pero protegiendo las proyecciones de atención más importantes.

[05:11] Ahora, en hardware real, si tienes una tarjeta Nvidia de la serie 30 o 40, el formato EXL3, que usa cuantización vectorial en lugar del redondeo tradicional, te da algunas de las velocidades de generación más altas para un solo usuario. En pruebas con una sola RTX 3090 de 24 GB, una compilación de 4 bits por peso con las capas críticas en 8 bits y caché KB también en 8 bits ocupó unos 22 GB con una ventana de contexto de 196.000 tokens. El resultado fue más de 43 tokens por segundo con

[05:45] contexto corto y todavía por encima de 30 tokens por segundo pasados los 100.000 tokens de contexto. Para una estación de trabajo local, eso es una diferencia enorme. Con las tarjetas más nuevas de Nvidia, arquitectura Blackwell, entra en juego NBF P4. En vez de descomprimir los pesos de 4 bits antes de calcular, el hardware multiplica directamente en 4 bits dentro del núcleo tensorial. La pérdida de calidad es mínima. En pruebas independientes, una versión NBF P4 de este modelo obtuvo 77,26

[06:20] en Blue Pro frente a 77,50 del modelo sin comprimir y 88,08 en GP Coa Diamond frente a 88,79. Prácticamente imperceptible con una ganancia real de velocidad. En el mundo empresarial, formatos como AWQ y GPTQ siguen siendo el estándar sobre motores como VLLM o SGLang. Y si tu hardware es Apple Silicon, olvídate de forzar formatos pensados para CUDA. Lo nativo ahí es la cuantización de 4 bits estilo MLX con grupos de 64 que en una Mac de 32 GB deja espacio de sobra usando apenas unos 15 GB de memoria unificada.

[07:03] Seguramente viste circular la noticia de un modelo que corre a 1,71 bits por peso ocupando menos de 6 GB. Ojo con esa comparación. Ese modelo no parte del mismo Qwen 3.8 del que hablamos aquí, sino de una versión anterior. Y no usa cuantización posterior al entrenamiento, sino un reentrenamiento completo a baja precisión. Es una categoría distinta, no un más comprimido todavía del mismo modelo.

[07:31] Y esto tiene un impacto que va más allá de tu escritorio, que un modelo de razonamiento híbrido de 27.000 millones de parámetros con licencia abierta pueda correr en en sola tarjeta empresarial usada de 500 dólares o en una estación de trabajo de gama media, está presionando fuerte los precios de los proveedores de IA en la nube. Cuando el costo por token se acerca al costo de la electricidad que consume tu propia PC, el mercado entero se mueve. Así que la conclusión para este momento es simple.

[08:01] Una etiqueta como 4 bits u 8 bits ya no describe nada por sí sola. Lo que de verdad importa es cómo se distribuye esa precisión dentro de la red, qué tan bien encaja con los núcleos de tu tarjeta específica y si te alcanza la memoria para el contexto que realmente necesitas usar. No busques el archivo más pequeño, busca el que de verdad calza con tu hardware. Y a ti, ¿priorizas comprimir el modelo o comprimir la caché de contexto? Cuéntame tu configuración en los comentarios.
