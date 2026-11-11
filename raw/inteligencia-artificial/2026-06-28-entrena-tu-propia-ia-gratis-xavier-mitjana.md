# UNKNOWN

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Fn36INn_EAo)
- **Canal**: UNKNOWN
- **Publicado**: UNKNOWN
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 00:00

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Últimamente, cuando pienso en inteligencia artificial, me acuerdo de Samuel Langley. Langley tenía financiación del gobierno de Estados Unidos, los mejores ingenieros y recursos ilimitados. Los hermanos Wright tenían un taller de bicicletas. Langley construyó el avión técnicamente más avanzado.

[00:17] Se hundió en el río Potomac. Los Wright adaptaron cada pieza a lo que observaban que funcionaba y volaron. Con la inteligencia artificial estamos en el mismo punto. Puedes usar el modelo más potente del mundo y pelearte con él hasta que el resultado se parezca a lo que necesitas. O puedes entrenar un modelo pequeño para que se adapte a ti y te dé el resultado bueno cada vez.

[00:36] Por ejemplo, que escriba con tu estilo o con mucho menos slow. Que genere imágenes de ti mismo en cualquier situación. Que cree vídeos a partir de múltiples referencias. Y lo más sorprendente, es gratis. Se ejecuta en tu PC y puedes tenerlo listo en minutos.

[00:53] Cambia por completo la utilidad que le sacas a la inteligencia artificial. Y es que, si de verdad quieres exprimir la inteligencia artificial, tienes que saber cómo personalizarla. Hoy te enseño cómo es posible personalizar modelos de lenguaje para que escriban menos artificial, adaptar modelos de imagen para que reconozcan tu apariencia o dar nuevas habilidades a modelos de vídeo para que resuelvan tareas específicas que consumen muchas horas. Vas a descubrir cómo hacer todo

[01:15] esto y lo vas a ver en tres niveles. Pero antes, quiero que entiendas cómo funciona y por qué es algo que debes conocer. La técnica que hoy vas a aprender la usan los grandes laboratorios de inteligencia artificial. Y es que la lógica que siguieron los Wright con la aviación, Google la aplicó a la medicina. Cogieron Gemma 3, uno de sus modelos de inteligencia artificial abiertos. Un modelo generalista que responde sobre cualquier tema, pero que no es especialista en nada. Y lo

[01:42] adaptaron entrenándolo con datos médicos. El resultado fue Med-Gemma. Una familia de modelos que parten de la misma base, pero adaptados para entender imágenes y contexto médico. Mira estos números. Todos ellos explican por qué merece la pena personalizar una inteligencia artificial.

[01:58] Gema 3, el modelo base, acertaba un 14% al analizar imágenes del fondo de ojo para detectar enfermedades. MedGema elevó su acierto hasta un 76%, pero hay más. MedGema tiene solo 4.000 millones de parámetros, mientras que GPT-4 era un modelo mucho más grande, entre 100 y 200 veces más grande. Pues bien, en pruebas de diagnóstico por imagen, MedGema acertó un 80% de las veces. GPT-4 solo un 69%.

[02:28] Un modelo especializado puede rendir mejor que uno mucho más grande y pesado. En esto consiste la ventaja de la personalización, optimizar recursos y precisión. Y tú puedes hacer lo mismo con las tareas que más te interesen.

[02:41] De hecho, ya hay gente haciéndolo con modelos de texto, ajustando una sola capa de un modelo para que escriba con menos clichés y más personalidad. El modelo no pierde inteligencia, solo cambia su estilo. Y lo más interesante es que estos modelos entrenados por la comunidad puedes probarlos de un modo muy rápido y fácil en LM Studio. Si están alojados en Hugging Face, es tan fácil como simplemente ir a la parte de búsqueda de modelos y buscarla por el nombre con el que se ha indexado en

[03:07] Hugging Face. En este caso, el Queen 3.6 75.000 millones de parámetros a 3.000 millones de parámetros Style Tuned. Y nos aparecen estos dos modelos que son del mismo creador, que es el que del que os he mostrado la ficha del modelo. Por ejemplo, podemos seleccionar esta de aquí que tiene más descargas, casi 8.000.

[03:26] Y aquí, pues podríamos ver todas las versiones que hay entrenadas de este modelo. Yo, en mi caso, pues me voy a quedar con la versión recomendada. Y una vez aquí, simplemente le podríamos dar a descargar y automáticamente se empezaría a descargar en nuestro ordenador y lo podríamos ejecutar luego en LM Studio.

[03:44] Este sería el primer nivel de personalización, aprovechar un modelo ya ajustado para mejorar alguna de sus características. El segundo nivel es mejorar tú mismo el modelo y donde mejor se entiende esto es en los modelos de generación de imágenes, porque la diferencia se ve.

[03:59] Vamos a ver el proceso completo, pero antes quiero hacerte una pregunta. ¿Cuánto tiempo dedicas cada semana a tareas que son necesarias, pero que no aportan valor real? Como rastrear qué está haciendo la competencia, preparar un informe con los hallazgos y luego montar la presentación para el equipo.

[04:14] Son tareas que alguien tiene que hacer, pero que te roban horas que podrías dedicar a pensar, a decidir, a crear. Y para hacerlas, probablemente estás pagando tres o cuatro suscripciones de inteligencia artificial distintas.

[04:25] Nexus.ai, los patrocinadores de este vídeo, es una plataforma de inteligencia artificial europea que junta todo esto en un solo sitio. Tiene agentes de inteligencia artificial ya preparados para tareas concretas. Uno para escribir contenido con la voz de tu marca, otro para resumir reuniones, otro que analiza oportunidades de mercado y otro para gestionar gastos. Te pongo un ejemplo real con dos de ellos. Primero, lanzamos el Competitor Intelligence Scout. Le dices qué competidores quieres rastrear

[04:52] y el agente analiza sus actualizaciones de producto, el sentimiento real de los usuarios y te genera un informe estratégico con los hallazgos clave. Y ahora cogemos ese informe y se lo pasamos al generador de presentaciones.

[05:03] Nexus.ai lo convierte en un deck estructurado con diapositivas, puntos clave y notas para el presentador. De análisis competitivo a presentación lista para tu equipo en minutos. Y si no hay un agente para lo que necesitas, puedes crear el tuyo propio de un modo muy sencillo, sin necesidad de programar. Puede conectarse con Google Drive, Slack, SharePoint y cuando seleccionas un modelo, puedes elegir que se ejecute desde servidores europeos.

[05:26] Tus datos no salen de Europa. Todo esto no reemplaza tu criterio profesional, pero elimina el trabajo mecánico para que te centres en lo que de verdad te importa. Deja de pagar por cinco suscripciones de inteligencia artificial distintas. Con Nexus.ai lo tienes todo en uno. Te dejo mi enlace en la descripción con un 50% de descuento y tienes 14 días de de de devolución completa, sin riesgo.

[05:48] [música] Ideogram ha cambiado su filosofía. Su último modelo es de pesos abiertos. Esto significa que cualquiera puede descargarlo y ejecutarlo en su máquina. Es un modelo que compite con Nano Banana y puedes hacer algo con él que con los modelos de Google no puedes, reentrenarlo para adaptarlo a lo que tú necesites. Ahora aterricemos esto con un ejemplo. Vamos a entrenarlo para que pueda generar imágenes de mí mismo, pero para que entienda a mi apariencia, no vamos a reentrenar todo el modelo. Eso

[06:16] sería caro, ineficiente y poco flexible. Vamos a hacer algo mejor. Vamos a crear un adaptador, un Lora, un archivo pequeño que se ejecuta junto al modelo original y modifica su comportamiento. Hacerlo es muy fácil. Solo necesitas alrededor de 20 imágenes de ti mismo o de un producto si no quieres hacerlo con una persona.

[06:36] Y lo bueno es que no solo puedes generar imágenes en tu máquina, también puedes entrenarlo en local y lo podemos hacer con herramientas como esta, que es completamente gratuita. Ostritz AI Toolkit, que permite reentrenar modelos de imagen, de vídeo, de audio de un modo muy sencillo. Eso sí, siempre deberemos tener un buen dataset preparado. Para entrenar Ideogram, yo he preparado este dataset de aquí, el de Chaz Mit, que consiste, pues en lo que estáis viendo, en unas 30 imágenes de mí mismo, pues

[07:02] tomadas desde diferentes ángulos y con diferente vestimenta. Y una vez tenemos listo el dataset, ya podemos iniciar nuestro entrenamiento. Simplemente nos vamos a nuevo trabajo y a partir de aquí podemos configurar todos los detalles de nuestro Lora. Su nombre, el modelo sobre el cual vamos a entrenar, que en mi caso es el Ideogram 4, que se encuentra en la sección experimental. Aquí terminaríamos de ajustar algunos parámetros que no lo voy a hacer en este vídeo porque es algo

[07:26] un poco técnico, pero si os interesa, decírmelo en los comentarios y veo si merece la pena hacer un tutorial. Con todo esto configurado, yo lo que he hecho es ejecutar este trabajo, pero lo más interesante, como os digo, es esta sección de aquí, de muestras, donde podemos ver cómo cada 500 pasos generaba tres imágenes y cómo poco a poco iba haciendo imágenes que cada vez se parecían más a mí. Estas tres primeras imágenes es antes de iniciar el entrenamiento, es decir, simplemente con

[07:52] el prompt. Estas tres son con 500 pasos, con 1000, con 1500, 2000, 2500 y finalmente con 3000 pasos. Y una vez tenemos el entrenador Lora, ya podemos generar imágenes como esta. Por cierto, esta imagen es una hoja de personaje que utilizaremos en un ejemplo que vendrá después y que me parece superinteresante para generar vídeo. Pero de momento quedaros con la calidad que genera. Esta es una imagen generada en 4K. Si hago zoom, por ejemplo, en mi cara, podéis llegar a ver el detalle con el que se ha

[08:23] generado. Y generarla es realmente muy fácil. Simplemente partimos de un flujo estándar de Comfy para generar de texto a imagen con Ideogram, donde en el nodo de Lora, pues hemos cargado el archivo que acabamos de generar entrenando el modelo y donde seleccionando el tamaño que queremos generar, en este caso 1920 por 1080, ya lo tenemos todo listo para generar otra imagen. Y por ejemplo, vamos a generar una imagen con este prompt, donde quiero aparecer en medio de una calle de noche, en una noche

[08:51] lluviosa, en medio de una ciudad. Ya he cargado el prompt, simplemente le doy a ejecutar. Y aquí vemos cómo ha generado la imagen. Vemos cómo estoy en un entorno lluvioso, con una iluminación que se ve un poco artificial, un poco cinematográfica y como la persona que aparece aquí, pues realmente soy yo.

[09:10] Antes, el modelo no sabía quién era. Ahora, el mismo modelo me identifica casi a la perfección. ¿Lo que ha cambiado? Un archivo de unos pocos megas generado en minutos. Eso sí, la calidad del Lora depende mucho de las fotos que le des. Con 20 fotos malas o todas iguales, el resultado será malo. Como dicen en inglés, basura dentro, basura fuera. Pero con buenas referencias funciona sorprendentemente bien. Y lo mejor es que puedes tener tantos loras distintos como necesites, uno por

[09:39] cliente, uno por estilo, uno por proyecto y cargar el que necesites en cada momento o lo que es más interesante, incluso puedes combinarlos. El archivo pesa poco y se cambia en un clic. Esto que has visto es el nivel dos de personalización, pero hay un tercer nivel, el más poderoso y sorprendente, porque hasta ahora hemos enseñado al modelo a reconocer una identidad visual, pero no hemos modificado lo que puede hacer. Y es que no solo podemos hacer que el modelo reconozca nuevos

[10:05] conceptos, sino que también podemos hacer que aprenda nuevas habilidades o a resolver tareas o procesos específicos. Y esto se ve mucho más claro cuando generamos vídeo. [música] En uno de mis últimos vídeos te enseñé a generar vídeos en local con uno de los últimos modelos de LTX. Hoy vamos a ir un paso más allá, modificar la forma en que este modelo genera vídeo. Y lo mejor es verlo con un ejemplo.

[10:29] Ahora puedo proporcionarle a LTX una imagen de inicio como esta, no para que la utilice como primer frame, sino para que entienda todas las referencias y llegar a este resultado. Es mía. Dámela. No. Es como darle a un director de cine un casting y una actriz antes de rodar.

[10:54] Estos son los actores, estos son los objetos y este es el decorado, rueda. Y utilizarlo es muy fácil, especialmente si utilizáis una aplicación como One GP, sobre todo si la instaláis a través de Pinocchio. Si estas aplicaciones que os estoy comentando no suenan, no os preocupéis, en la descripción encontraréis el enlace en un vídeo donde explico cómo instalar Pinocchio paso a paso y con él instalar diferentes aplicaciones que podéis utilizar en local, entre ellas One GP. Esta sirve

[11:20] para generar vídeos e imágenes, por lo que el siguiente paso es seleccionar el modelo correcto. En este caso, pues vamos a utilizar el LTX2 en su versión 2.3 de 22.000 millones de parámetros y en mi caso voy a utilizar la versión destilada 1.1. En caso de tener una GPU menos potente, podéis utilizar alguna de las versiones cuantizadas de 4 bits, 6 bits y 8 bits. Una vez tenéis seleccionado esto, lo que tenéis que hacer es configurar la interfaz para utilizar este Lora. Lo primero, cargar

[11:49] el Lora. Simplemente hacemos scroll, nos vamos a la pestaña de Lora, clicáis aquí encima de Lora activados y seleccionáis el Lora de ingredientes. Con este Lora seleccionado, ahora lo que nos queda es configurar la interfaz para poder subir nuestra imagen con las referencias. Nos vamos aquí donde pone control vídeo frames injection.

[12:09] Desplegamos el menú y seleccionamos este elemento, ingredients reference sheet. Una vez lo hemos seleccionado, ya podemos subir la imagen con nuestras referencias. Simplemente clicamos aquí y en mi caso voy a subir esta imagen de aquí, una imagen que tiene como referencias un personaje en 3D, una caja de herramientas y un escenario que es un desierto futurista.

[12:33] Con esto cargado, solo nos queda poner el prompt, que se pone en esta caja de aquí. El prompt, como sabéis, se compone de dos elementos, una primera parte donde simplemente describimos los objetos o elementos que aparecen en las referencias, en la imagen de referencias y por el otro lado, pues lo que queremos que suceda en el vídeo, que en este caso es una acción muy sencilla, simplemente entra el personaje a escena, toca un poco la caja de herramientas y dice, "Perfecto, ya funciona."

[13:03] Con todo esto configurado, simplemente queda darle a generar. Le damos a generar, se cargará el modelo y en un par de minutos tendremos generado nuestro vídeo. Y aquí tendríamos el resultado. Y el resultado que obtenemos es un resultado como este.

[13:18] [música] Perfecto, ahora sí funciona. Como podéis ver, un resultado que mantiene todas las referencias con un nivel de fidelidad realmente alto y con una calidad de vídeo muy buena. Y aquí puedes ver un par de ejemplos más, por ejemplo, en animación 2D.

[13:39] Tranquilos, la pizza llega caliente. Y aquí un ejemplo con referencias realistas. Fíjate bien en la calidad de esta generación, porque luego te comento algo importante. Donde he usado esta imagen de referencia, donde además de la imagen que he generado de mí mismo con Ideogram, está esta imagen de este perro, la imagen de la mochila y la imagen de esta cabaña, donde quiero que os fijéis en estas piedras de aquí, la piedra más clara, la color marrón y esta de color más oscuro. El vídeo que he

[14:11] generado es este. Qué bien sienta una vuelta por el campo. Como ves, la clave es que ya no le doy solo un prompt o un frame inicial. Puedo trabajar con referencias, algo que antes era imposible. Y esta es una de las funciones estrella de los últimos modelos de generación de vídeo, Google Omni, Kling, Sidence 2 y ahora también la tiene LTX. Pero, y aquí viene el detalle a comentar, el resultado aún no está en el mismo nivel de calidad. Con Sidence podemos obtener resultados como

[14:42] este. Qué bien sienta una vuelta por el campo. Pero, más allá de la diferencia de calidad, que es importante, pero hay que tener en cuenta que todo esto seguirá mejorando, el concepto con el que debes quedarte es que un modelo de pesos abierto puedes personalizarlo en la dirección y tarea específica que tú necesites. Y cuanto más concreta y específica sea la tarea, mejores resultados se consiguen. Y esas habilidades muchas veces no hace falta ni que las entrenes tú. El ecosistema de

[15:14] LTX 2.3 lleva mucho más allá. Hay Loras para prácticamente cualquier cosa. Y es que en este hilo de X de la propia LTX podemos ver unos cuantos ejemplos más muy interesantes. Este Lora, por ejemplo, sirve para añadir simulaciones de agua a cualquier vídeo. Fijaros la diferencia entre la izquierda y la derecha.

[15:31] Si bajamos un poco más, encontramos precisamente el Lora que os he mostrado hoy, el de utilizar múltiples referencias para crear vídeos. Pero como os decía, hay un total de 10. Este, por ejemplo, es especialmente útil. Nos permite hacer o painting, es decir, extender los límites de un vídeo. Podéis ver el original a la izquierda y la versión vertical expandida a la derecha.

[15:53] Si bajamos un poco más, nos encontramos este que también puede ser muy interesante. Cambia una escena de día por una escena de noche, manteniendo toda la estructura y todos los elementos. O, por ejemplo, este de aquí que permite colorizar cualquier vídeo que originalmente estuviese en blanco y negro.

[16:11] Y si bajamos un poco más, podemos ver cómo podemos encontrar cosas incluso más específicas, como este Lora que lo que hace es literalmente afeitarte. O este otro de aquí que lo que te hace es cambiarte la mirada, aunque no sea del mejor modo.

[16:26] Y finalmente, este creo que es muy, pero que muy interesante. Este Lora lo que nos permite es reenfocar cualquier vídeo. Cuántos clips se podrían haber llegado a salvar en muchas situaciones con un Lora como este. Y en esto consiste el tercer nivel de personalización. Como ves, ya no solo le dices al modelo cómo se ve algo o en qué consiste un concepto nuevo, es decir, no le añades conocimiento, sino que le añades una nueva forma de trabajar.

[16:53] Aprende a hacer cosas de diferente manera. [música] Acabas de ver tres niveles de personalización. Ahora, lo que toca es hacerte esta pregunta. ¿Lo que generas con tus suscripciones de inteligencia artificial lo podrías diferenciar fácilmente del resultado que consigue cualquier otro usuario?

[17:10] Lo ves, ¿verdad? La diferencia ya no radica solo en tener acceso a la inteligencia artificial. Eso ya lo tiene todo el mundo. La diferencia está en que la inteligencia artificial entiende mejor tu contexto y se adapta a tu manera de trabajar.

[17:23] Esto, evidentemente, no sustituye aún a los modelos grandes, pero te permite crear herramientas específicas que pueden ser tremendamente útiles para ti. En el vídeo donde te mostraba las últimas novedades de Nvidia, te conté que el gran cambio era pasar de anclar la inteligencia artificial a ser dueño de ella. Pero ser dueño de una inteligencia artificial genérica es solo la mitad del camino. Ser dueño de una inteligencia artificial que conoce tu especialidad, tu estilo y que resuelve

[17:47] mejor las tareas que a ti te interesan, eso sí cambia por completo la utilidad de esta tecnología. Y ya no necesitas un laboratorio para crearla. Si no viste el vídeo donde te enseño a montar todo el entorno de inteligencia artificial con Pinocchio desde cero, te lo dejo aquí.

[18:01] Es la base sobre la que hemos trabajado hoy. Nos vemos en el próximo vídeo.
