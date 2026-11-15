# Esta nueva CACHÉ hace que la IA local sea 2 VECES más rápida

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ac_imYXldYo)
- **Canal**: Cognix
- **Publicado**: 2026-10-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:12

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esta semana llama.cpp sumó un truco nuevo para correr modelos de IA gigantes en tu propia computadora. Y esta vez no se trata de otro formato de cuantización, no es streaming desde el SSD, ni tampoco meter el modelo entero a la fuerza dentro de tu GPU. Lo que hace llama. cpp ahora es tratar tu VRAM como un caché en vivo para las partes del modelo que realmente se están usando. En los modelos grandes de tipo mezcla de expertos, esto puede cambiarlo todo. En las pruebas oficiales, con 3,8 Flash

[00:31] Next, pasó de unos 31 a casi 68 tokens por segundo en una sola RTX 5090. Es más del doble de velocidad de generación y las versiones experimentales con varias GPUs muestran ganancias todavía mayores en modelos que superan por mucho la VRAM disponible. Entonces, ¿cómo puede un caché hacer que exactamente el mismo modelo corra el doble de rápido? Para entenderlo, primero hay que mirar uno de los mayores problemas de correr localmente los modelos modernos de mezcla de expertos. Un modelo de mezcla

[01:03] de expertos puede tener cientos de miles de millones de parámetros en total, pero a diferencia de un modelo denso normal, no usa todos para cada token. Imagina que una capa contiene cientos de redes expertas distintas. Cuando el modelo procesa un token, un enrutador elige solo una pequeña cantidad de ellas. Por ejemplo, una de las configuraciones de Qwen 3,8 Flash Next que discuten los desarrolladores de llama. cpp tiene 512 expertos, de los cuales solo se activan 10 por token. Esa es la única razón por

[01:35] la que funciona este tipo de modelos. Conseguís una cantidad total de parámetros gigantesca sin pagar el costo de cálculo de activar cada uno para cada token. Pero hay un problema. Esos expertos tienen que estar guardados en algún lado. Si el modelo completo entra en la VRAM, es fácil, todo se queda en la GPU. Pero apenas el modelo es bastante más grande que la memoria de tu tarjeta, llama.cpp tiene que mantener una parte en la memoria RAM del sistema y eso genera un cuello de botella muy raro. Tu GPU puede

[02:07] ser rapidísima, pero en cada token nuevo, algunos de los expertos elegidos por el enrutador pueden estar en la memoria normal del sistema. Entonces, la CPU tiene que leer esos pesos, quizás haya que transferirlos por PCI Express y la GPU pasa parte de su tiempo esperando los datos que necesita. Puedes tener una RTX 4090 o una RTX 5090 en tu equipo y que el verdadero cuello de botella sea el ancho de banda de tu RAM y la conexión entre CPU y GPU. Acá es donde el nuevo caché de expertos cambia la

[02:39] estrategia. Normalmente, los motores de inferencia piensan en capas para decidir qué va en la VRAM. Estas capas se quedan en la GPU, estas otras se mandan a la CPU. Eso tiene sentido en los modelos densos, pero los de mezcla de expertos son distintos. Dentro de una capa suele haber cientos de expertos, mientras que cada token consulta apenas un puñado.

[02:59] Guardar una capa completa en la GPU puede ser increíblemente ineficiente. Estás desperdiciando VRAM, que es carísima, en expertos que el token actual quizás ni use. El nuevo enfoque plantea otra pregunta. En lugar de preguntar qué capas completas deberían quedarse en la GPU, ¿qué pasaría si usamos esa VRAM para recordar a los expertos individuales que se piden todo el tiempo?

[03:22] Eso es el caché de expertos calientes. Los expertos pueden quedarse en la memoria del sistema mientras una parte de la VRAM se reserva como caché. Cuando un experto se necesita una y otra vez, sus pesos pueden permanecer en esa zona. La próxima vez que el enrutador elija a ese mismo experto, llama. CPP puede usar la copia que está en la GPU en lugar de volver a leer los pesos desde la memoria del sistema. Y hay una razón por la que esto funciona sorprendentemente bien. El uso de los

[03:52] expertos no es del todo aleatorio de un token al siguiente. Una de las primeras implementaciones en llama. CPP analizó más de 54.000 registros de enrutamiento en tareas de programación, matemática, escritura y multilingües. Una lista fija de supuestos expertos populares no funcionó muy bien. La distribución a largo plazo era demasiado dispersa, pero sí había una fuerte localidad temporal.

[04:18] En otras palabras, los expertos que se usaron hace poco tienen muchas probabilidades de volver a ser útiles pronto. Con un caché LRU por capa que guardaba 64 expertos, la tasa de aciertos simulada fue de alrededor del 67%.

[04:33] Con 128 lugares llegó a cerca del 81%. O sea, que la solución no es identificar a 20 expertos y dejarlos fijos en la GPU para siempre. El conjunto de los más calientes cambia todo el tiempo y el caché tiene que adaptarse con él. Y eso es justo lo que hacen estas implementaciones. Los expertos usados recientemente se quedan en la VRAM. Los que casi no se usan terminan siendo reemplazados. Los aciertos de caché pasan por la veloz memoria de la GPU.

[05:03] Los fallos recurren a la memoria del host y los resultados ya son muy interesantes. El 7 de octubre se integró un caché de expertos para MoE directamente en llama.cpp. El benchmark oficial usó Qwen 3.8 Flash Next Q40, un modelo de unos 94 GB. En una RTX 4090, la ubicación automática normal alcanzaba unos 25 tokens por segundo.

[05:28] Asignar alrededor de 6,4 GB al caché de expertos lo subió a 39,4 tokens por segundo. Y con una configuración de caché más grande llegó a 40,7. Eso es una aceleración de 1,62 veces. Después probaron con una RTX 5090. La configuración por defecto dio 30,8 tokens por segundo. Con un caché de 6,4 GB, el valor subió a 54,5.

[05:55] Y con unos 18,6 GB de memoria de caché, la generación llegó a 67,8 tokens por segundo. Es 2,2 veces el valor de partida. El mismo modelo, la misma GPU, un uso muy distinto de la VRAM. Y la tasa de aciertos explica buena parte de esto. En la configuración más rápida de la 5090, cerca del 89% de los accesos a expertos fueron aciertos de caché.

[06:20] En lugar de cargar una y otra vez la mayoría de esos pesos desde la memoria RAM, la GPU los encontraba localmente. Pero hay otra versión de esta idea que va todavía más lejos. Un fork aparte de llama.cpp, basado en este concepto de caché de expertos calientes, se centra en modelos grandes y en sistemas con varias GPU. Llena automáticamente la VRAM sin usar con entradas de caché de expertos, agrega una lógica de expulsión más inteligente, superpone el cálculo de CPU y GPU e incluye optimizaciones

[06:52] adicionales de planificador y de kernels. Esto se vuelve especialmente interesante con modelos como GLM 5,3 flash. En una de sus configuraciones, cada token de GLM activa solo 8 de 288 expertos en cada capa MoE. Una ubicación convencional usaría la VRAM para mantener residentes unas 14 capas completas, pero así la mayoría de los expertos guardados no tienen nada que ver con el token actual. Del fork experimental reparte su caché a lo largo del modelo y mantiene listos a los cerca

[07:24] de 100 expertos más útiles de cada capa. La CPU atiende los fallos mientras las GPU procesan los aciertos al mismo tiempo. En una máquina con dos RTX 3091 125 GB de memoria DDR4, esto dio resultados dramáticos. Un modelo MoE de 132 GB pasó en un benchmark corto de generación de unos cuatro tokens por segundo a poco más de 10. Es una mejora de 2,5 veces. Un modelo Qwen 3,8 Flash Next pasó de unos 28 a 47 tokens por segundo solo con el caché. Y cuando se sumó decodificación especulativa MTP a

[08:03] la misma configuración, llegó a unos 60 tokens por segundo. Pero llegados a este punto, hay que ser cuidadosos. Esto no es un universal para duplicar la velocidad. La ganancia depende mucho del modelo, de la capacidad de VRAM, del ancho de banda de la RAM, de la configuración de PCIe, del tamaño del caché y del enrutamiento de los expertos. Si el modelo ya entra en la VRAM, casi no hay nada que optimizar. En las pruebas, los modelos densos que entraban por completo en la GPU,

[08:33] básicamente no mostraron diferencia. Y si la ubicación normal de llama.cpp ya mantiene en la GPU la mayor parte de los cálculos importantes, el caché tiene menos margen para mejorar. El procesamiento del prompt también puede comportarse distinto que la generación de tokens. Algunas configuraciones incluso pierden rendimiento al procesar el prompt cuando los pesos están mapeados en memoria, porque hay que subir los expertos por PCI Express. Es decir, una configuración que permite una

[09:03] generación bastante más rápida no es automáticamente más rápida en todo. Además, hay una distinción importante entre lo que viene incluido oficialmente en llama.cpp y lo que todavía es experimental. La versión integrada en llama. cpp apunta por ahora a lotes pequeños y a una sola GPU. La implementación más agresiva para varias GPU sigue siendo un fork aparte.

[09:27] Así que si ves afirmaciones de rendimiento dos, tres o incluso cuatro veces más rápido, no asumas que podéis instalar el último llama. cpp agregar una opción y reproducir cada una de esas cifras. Lo interesante, de todos modos, es más que un solo benchmark. Estamos viendo cómo la inferencia local de IA se aleja de la idea de que los pesos de un modelo tienen un lugar permanente donde vivir. En cambio, la memoria se vuelve jerárquica.

[09:55] Tus datos más rápidos y más útiles se quedan en la VRAM, más pesos están en la RAM del sistema y para modelos todavía más grandes que la RAM, otros proyectos ya experimentan con hacer streaming de expertos desde almacenamiento NVM, del SSD a la RAM, de la RAM a la VRAM y un caché decide qué puede subir. Eso se parece mucho más a una jerarquía de memoria de computadora tradicional que a lo que originalmente entendíamos por cargar un modelo de IA. Y las arquitecturas MoE son casi perfectas

[10:25] para esto, porque un modelo de 100 GB no necesita para cada token 100 GB de pesos a máxima velocidad. Solo necesita a los expertos correctos en el momento correcto. Eso significa que la pregunta se va desplazando poco a poco de ¿entra este modelo en mi GPU? a ¿puede el motor de inferencia predecir qué partes de este modelo necesitan estar ahora mismo en mi GPU? Y ese es un problema muchísimo más interesante, porque si el software mejora cada vez más en responder eso, los modelos enormes

[10:56] podrían volverse prácticos en hardware de consumo sin esperar a que las GPU de consumo salgan de golpe con 100 GB de VRAM. El modelo no se achica, el hardware no se vuelve más rápido, simplemente nos volvemos mucho más inteligentes sobre lo que realmente necesita ser rápido.
