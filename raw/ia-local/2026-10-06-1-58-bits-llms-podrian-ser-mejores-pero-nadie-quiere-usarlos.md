# 1.58 BITS: los LLMs que podrían ser MEJORES… pero nadie quiere usarlos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=SJkTWcy1P24)
- **Canal**: Cognix
- **Publicado**: 2026-10-06
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:52

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En 2024, investigadores de Microsoft publicaron un paper que descubrió cómo eliminar la operación matemática más pesada de la inteligencia artificial, reemplazándola, literalmente, por sumas y restas de primaria. El resultado fueron modelos que igualan la inteligencia de los de precisión completa en los benchmarks. Y adivina qué, todo mientras corren en hardware de consumo barato. Se llama BitNet, reduce el consumo de energía hasta un 82%, achica la memoria un 75% y permite que

[00:32] los modelos corran en una CPU a toda velocidad sin tocar una sola GPU. Y aún así, hoy Anthropic, OpenAI, Google e incluso la mayoría de los modelos de código abierto no lo usan. Entonces, ¿qué salió mal? ¿Será que simplemente es demasiado pronto o son los monopolios siendo monopolios? Mira, todo lo que sabe un modelo de lenguaje está guardado en sus pesos, que son básicamente miles de millones de números guardados con 16 bits cada uno, es decir, 2 bytes por peso.

[01:03] Si haces la cuenta rápida, un modelo de 8,000 millones de parámetros son 8,000 millones por 2 bytes, o sea, 16 gigas. Y tu GPU tiene que arrastrar cada uno de esos bytes por su bus de memoria para generar cada token. De esa es la parte cara, porque mover un número desde la memoria hasta el chip cuesta cientos de veces más energía que la operación matemática en sí. Cuando corres un modelo en casa, tu velocidad depende casi por completo del ancho de banda de tu memoria. Por eso todo el mundo corre

[01:32] modelos de 4 bits en local. Lo que realmente le estás pagando a Nvidia es la memoria. No es raro que los precios de la RAM estén por las nubes. Pero, ¿y si vamos más allá de los 4 bits? Eso mismo pensó Microsoft. El paper se llama La era de los LLMs de 1 bit y el subtítulo dice literalmente que todos los grandes modelos de lenguaje están en 1,58 bits. En su diseño, cada peso dentro de las grandes capas de matrices solo puede valer más 1, 0 o menos 1, con un único número de escala compartido

[02:04] para toda la matriz. Normalmente, cada peso se multiplica por un número que fluye por la red, pero si el peso es más 1, el chip simplemente suma ese número al total. Si es menos 1, lo resta, y si es 0, lo salta por completo. La atención y algunas capas pequeñas todavía multiplican, pero las matrices gigantes de pesos, que es donde ocurre la mayor parte de la matemática del modelo, se convierten en sumas de números enteros.

[02:31] El raro número 1,58 bits es simplemente la cantidad de información que guarda un peso de tres estados, que es el logaritmo en base 2 de 3. Y como 3 elevado a la quinta es 243, que cabe en un solo byte, puedes empaquetar cinco pesos en 8 bits y bajar a 1,6 bits por peso. Y los resultados fueron bastante locos. Con 3.000 millones de parámetros, el modelo ternario igualó a un modelo normal de 16 bits que Microsoft entrenó con los mismos datos. Usaba 2,22 GB de VRAM en lugar de 7,89.

[03:06] Y era 2,71 veces más rápido. Después, en octubre de 2024, Microsoft lanzó bitnet.cpp. Es un entorno de ejecución para CPU construido sobre llama.cpp. En un chip Intel de laptop, corrió entre 2,37 y 6,17 veces más rápido que llama.cpp ejecutando esos mismos modelos a 16 bits. Y todo mientras reducía la energía por token en más de un 72%.

[03:37] Un modelo de 100.000 millones de parámetros corriendo en una sola CPU M2 Ultra a entre cinco y siete tokens por segundo. Pero si lees el repositorio de Microsoft, dice que los modelos que probaron son montajes de mentira hechos para mostrar la velocidad. Obvio, porque un modelo ternario real de ese tamaño no existía. Su primer modelo real salió en abril de 2025, BitNet B1.582B4T, con 2.000 millones de parámetros. Frente a Qwen 2.51.5B, un modelo normal de 16 bits entrenado con más de cuatro veces más datos, sacó

[04:14] 54,2 de promedio contra 55,2 de Qwen. Y lo hizo generando cada token milisegundos en una CPU de laptop, contra 65 de Qwen. Entonces, si todo esto funciona, ¿qué salió mal? Pues bien, lo obvio habría sido agarrar Llama o Qwen y convertirlo, ¿no? Como hace la gente de llama.cpp, que comprime cada modelo nuevo a 4 bits a los pocos días de su lanzamiento. Pero no puede simplemente redondear hasta llegar a ternario. Con 4 bits, cada peso se ajusta a uno de 16 niveles, que es tosco, pero suficientemente cercano.

[04:51] Mientras que en ternario se ajusta a uno de tres. Así que casi todo lo que cada peso aprendió se borra, y esos errores se acumulan a lo largo de cada capa. En pruebas de una startup llamada Prism ML, de la que hablaremos enseguida, incluso una versión estándar de 2 bits de un modelo Qwen cae del promedio de 85 de la versión de 4 bits a 70.

[05:13] Entonces, ¿cómo se entrena realmente un modelo para que funcione así? Se llama entrenamiento consciente de la cuantización. El modelo mantiene dos de cada peso mientras se entrena. Una es la de precisión completa y la otra es la ternaria. Los pesos ternarios se usan para hacer el paso hacia adelante y los de precisión completa se usan para el paso hacia atrás.

[05:35] Verás, un entrenamiento normal consiste básicamente en que los pesos del modelo hacen una conjetura y, según si acertó o no, actualizan sus propios pesos. Hacer la conjetura se llama paso hacia adelante y aprender cuál era la respuesta correcta se llama paso hacia atrás. Básicamente en los modelos ternarios los pesos redondeados hacen el paso hacia adelante y hacen una conjetura, pero como no tienen la precisión para aprender la respuesta correcta en el paso hacia atrás se usa

[06:04] para eso una copia de precisión completa. Formalmente se llama estimador de paso directo. Después de miles de millones de conjeturas de baja precisión el modelo aprende de forma natural a producir valores que casualmente se redondean limpiamente a esos tres números. El problema es que este entrenamiento sigue ejecutándose en 16 bits.

[06:26] Así que el modelo ternario terminado es barato para la inferencia, pero entrenarlo sigue siendo tan caro como antes. A comienzos de 2024 la única forma comprobada de hacerlo era un entrenamiento completo desde cero, que es como el modelo de 2B de Microsoft terminó consumiendo 4 billones de tokens. E incluso cuando Hugging Face convirtió llama 38B más adelante ese año, igual requirió 100.000 millones de tokens de reentrenamiento. Todo por una arquitectura que nadie había probado más

[06:55] allá de unos pocos miles de millones de parámetros. Así que si eres un laboratorio que ya tiene un modelo de 16 bits funcionando, es una venta bastante difícil. Y aún si un laboratorio paga el costo, los modelos ternarios chocan con un límite que el entrenamiento no puede arreglar. Pueden guardar como máximo 1,58 bits de información, lo que limita cuánto puede memorizar un modelo por parámetro y se nota en los benchmarks.

[07:21] El modelo de 2B de Microsoft pierde contra Qwen en Trivia QA 33,6 a 38,4, aún cuando lo supera en varias pruebas de razonamiento. Trivia QA es básicamente una prueba de qué tan bien un modelo recupera información. Así que el modelo sigue pensando bien, solo que que puede recordar los datos cuando se los pides. Entonces, ¿será que simplemente es demasiado pronto? En cierto modo sí, porque ese muro del entrenamiento recién empezó a agrietarse este año. En septiembre, Prism ML lanzó

[07:53] Ternary Bonsai 2. Es una versión de Qwen 3.8 de 27,000 millones de parámetros, donde cada uno de sus pesos del lenguaje es ternario, y pasó de 54 GB a 5,9. En los propios benchmarks de Prism ML, conservó el 98,2% del puntaje promedio del original, con matemáticas y programación prácticamente al mismo nivel. Los pesos están en Hugging Face ahora mismo si quieres correr el modelo.

[08:21] Y el truco es que no empezaron desde cero. La copia oculta de precisión completa arranca con los pesos reales ya entrenados de Qwen, así que todo el lenguaje y la inteligencia ya están ahí. El modelo original corre en paralelo como profesor, y la versión ternaria se entrena simplemente para igualar sus respuestas.

[08:40] El primer Bonsai de 27B salió en julio, y ya hay gente corriéndolo en una sola 50 Li 60 Ti de 16 GB. Apple, de hecho, llegó bastante cerca de esto. El modelo de unos 3,000 millones de parámetros detrás de Apple Intelligence ya corre a 2 bits por peso usando este mismo tipo de entrenamiento.

[09:00] Pero solo estamos a mitad de camino. Todavía falta descubrir cómo eliminar el multiplicador, pero es algo bastante enredado si lo piensas. Verás, los Tensor cores dentro de tu GPU son básicamente matrices de multiplicadores.

[09:15] Pueden hacer muy fácilmente toda esa compleja multiplicación de matrices, pero se han especializado tanto que literalmente no pueden hacer sumas y restas. Los pesos tienen que desmpaquetarse de vuelta a números normales antes de que los multiplicadores siquiera puedan tocarlos.

[09:31] Y luego esos multiplicadores se la pasan multiplicando por estos números ternarios. Ya ves lo ineficiente que es, pero bueno, al menos el consumo de RAM es menor. A pesar de este método ineficiente, las mejoras siguen ahí. La generación de tokens es unas 2,7 veces más rápida gracias al menor consumo de BRAM. Mark Horowitz de Stanford calculó que una multiplicación de 16 bits consume aproximadamente 37 veces la energía de una suma de 8 bits, pero en una GPU ese ahorro es casi inútil porque

[10:03] los multiplicadores se activan igual que antes. Entonces, ¿son los monopolios siendo monopolios? Bueno, en parte. Nvidia también bajó de bits, pero solo hasta en BFP4, donde sus multiplicadores se usan tal como están diseñados.

[10:20] Su GPU Rubin empezó a enviarse este verano a OpenAI, Microsoft, Google Cloud, Meta y CoreWeave, cada una con una capacidad de 50 petaflops en punto flotante de 4 bits, lo que consigue la mayor parte del ahorro de memoria sin cambiar cómo funcionan los Tensor Cores.

[10:37] Y cuando controla cerca del 80% del mercado de hardware de IA, el formato que corren tus chips se convierte básicamente en el formato para el que todos los demás afinan su software. Pero incluso con el chip perfecto, todavía queda el consumo de RAM que los pesos ni siquiera cubren. El contexto se sigue guardando en 16 bits por defecto, así que en un modelo típico de 8B, 64.000 tokens de contexto consumen más de 8 GB por sí solos, más que el propio modelo.

[11:06] Hablando de contexto largo, Bonsai 2 también pierde 9 puntos en una prueba de razonamiento sobre historias largas. Y una cosa más, al momento de grabar esto, todos los puntajes de Bonsai 2 que te mencioné los dio la propia Prism ML.

[11:21] No podemos estar tan seguros de que vayan a mantenerse en pruebas independientes. Entonces, ¿los LLMs de 1,58 bits son realmente mejores? Pues claro que sí, al menos para quienes no tienen GPUs caras con mucha RAM. Quiero decir, ¿qué otra opción tienes?

[11:38] ¿Esos modelos lobotomizados que fueron comprimidos tan fuerte que ni siquiera recuerdan su nombre? Estos modelos conservan casi toda la inteligencia y son mucho más baratos y superiores a los modelos cuantizados por debajo de los 4 bits con métodos convencionales.
