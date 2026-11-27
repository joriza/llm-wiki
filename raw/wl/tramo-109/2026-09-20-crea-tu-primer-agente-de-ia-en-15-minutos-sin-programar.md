# Crea tu primer AGENTE de IA en 15 minutos (sin programar)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZnlLfKR-vDQ)
- **Canal**: Xavier Mitjana
- **Publicado**: 2026-09-20
- **Recopilado**: 2026-11-27
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:45

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Agentes de IA, agentes de IA, agentes de IA. Están en boca de todos y es por una razón, hacen el trabajo por ti. Y si piensas que crear uno es difícil, hoy vas a cambiar de idea. Imagina que tener un agente a tu medida fuese tan fácil como crear una carpeta, que funcionase en Cloud, ChatGPT, Antigravity o en tu herramienta favorita y que se encargase de principio a fin de esos trabajos que te roban horas, preparar presupuestos, redactar informes, responder los correos que se

[00:28] acumulan. Pues deja de imaginar, porque hoy te enseño mi método de cuatro pasos para montar agentes útiles en minutos. Y es un método para cualquiera que use la inteligencia artificial en su día a día, sin necesidad de saber programar y sin ninguna complicación técnica. ¿Quieres automatizar cualquier tarea de forma fácil? Entonces, es para ti. Al terminar, tendrás un agente que trabaja a tu manera, que aprende de cada corrección y que funciona en cualquier herramienta. Vamos a verlo con un

[00:55] ejemplo claro. [música] Y lo primero es ver qué queremos conseguir. Imagina que tu empresa es un estudio de reformas que cada semana prepara presupuestos y propuestas. Algunas, incluso con una vista en 3D de cómo quedará la obra.

[01:10] Aquí ves la carpeta de mi agente. Le añado una carpeta con la información del siguiente cliente. Abro mi herramienta favorita y le doy una sola instrucción. Prepara la propuesta para este proyecto. Y automáticamente llega este resultado, el primero, un presupuesto detallado y ajustado a los criterios de la empresa.

[01:28] Y el segundo, una distribución 3D básica con la que explicar al cliente los cambios que quieres hacer. Pues construir esto para resolver cualquier tarea rutinaria es lo que aprenderás a hacer hoy. Vamos allá con el primer paso.

[01:40] [música] Y el primer paso es tan sencillo como crear una carpeta. Botón derecho, nueva carpeta y le pongo el nombre de la empresa con la que vamos a trabajar hoy. De momento, quédate con lo más importante, lo que vamos a resolver es trabajo que se repite, por lo que donde yo ahora te he dicho que vamos a resolver presupuestos, puede ser la tarea que tú quieras. Por ejemplo, podría ser la redacción de tus informes o la gestión de tus correos electrónicos.

[02:04] Dentro de esta carpeta, creo cuatro subcarpetas. ¿Y por qué creo estas cuatro? Pues porque un agente diría necesita lo mismo que una persona que empieza a trabajar contigo. Necesita saber cómo funciona la empresa. Eso es el contexto. Necesita saber hacer las tareas. Eso son las skills, es decir, habilidades, recetas paso a paso de cómo se hace cada trabajo. Necesita acordarse de lo que va aprendiendo. Eso es la memoria. Y necesita un espacio donde trabajar. Eso es la carpeta de

[02:32] proyectos, donde pondremos un cliente en cada subcarpeta. Y solo falta una cosa, el manual. Es un archivo de texto que se llama agents.md y que le dice a cualquier inteligencia artificial que abra esta carpeta, quién es nuestro agente y cómo tiene que trabajar con toda la información del resto de carpetas. De este manual, las dos líneas que más importan son estas. La primera, si te falta un dato, pregunta en vez de inventar. Y la segunda, apunta por tu cuenta todo lo que te convenga recordar.

[03:02] Y como ves, [música] aquí no hay nada técnico. Son todo instrucciones escritas como se las darías a una persona. Y ahora toca completar la carpeta de este agente con la información necesaria para hacer las tareas. En el contexto va todo lo que define cómo se trabaja en la empresa, las tarifas, el catálogo de acabados y un documento con sus condiciones y su forma de hablarle al cliente. Y en la carpeta de proyectos, toda la información propia de cada cliente, lo que nos ha pedido, el plano

[03:26] de su piso y las medidas que tomamos al hacer la visita. De aquí partimos y queremos llegar a una propuesta completa como esta, lista para enviar. El presupuesto y la vista 3D. Y antes de seguir, quédate con esta imagen. La carpeta de skills y la memoria están vacías, porque no las voy a llenar yo. Son carpetas de trabajo de la gente. Pero para eso le hace falta un cerebro. Y la buena noticia es que que vale cualquiera. Y entonces, ¿cuál le pongo? Pero antes de descubrirlo, vamos

[03:55] a ver quién hace posible este vídeo. Con tantos modelos de inteligencia artificial apareciendo, que si ChatGPT, que si Claude, que si Gemini, que si Deep Seek, es difícil saber cuál usar en cada momento. Para probarlos todos, necesitas registrarte en cada servicio por separado, cada uno con su interfaz y su suscripción. Por eso quiero hablarte de Mammoth AI, los patrocinadores de este vídeo. Mammoth te da acceso a todos los modelos premium desde una sola interfaz: ChatGPT, Claude, Gemini, Deep

[04:21] Seek, Perplexity y muchos más. Lo realmente útil es poder lanzar el mismo prompt a varios modelos y comparar las respuestas, para saber cuál te da el mejor resultado en cada tarea. Además, incluye generación de imágenes con Flux y Recraft, también animación de vídeo con Veo, Grok y Clean, además de Deep Research con Perplexity.

[04:40] Y acaban de añadir el modo agéntico. Delegas tareas complejas a un agente que ejecuta código, crea archivos y procesa datos por ti. Todo en un entorno aislado. Y algo muy importante, Mammoth es una empresa europea, con sede en Francia y que guarda los datos en Alemania. Tus prompts no se guardan y tus conversaciones no entrenan modelos. Todo esto desde 10 euros al mes, sin permanencia. Te dejo el enlace en la descripción.

[05:06] [música] Por lo que una vez construida la carpeta donde vivirá nuestro agente, toca hacer el segundo paso, que consiste en realizar por primera vez esta tarea de un modo manual en nuestra herramienta favorita. En mi caso, lo voy a hacer en ChatGPT. Yo ya tengo preparada la carpeta que os he mencionado anteriormente con las cuatro subcarpetas. Aquí podemos ver el contexto, donde hay tres archivos, un catálogo de acabados en Excel, otro Excel con un conjunto de tarifas y finalmente un archivo de texto para que

[05:33] la gente entienda cómo debe tratar al cliente y cómo se hacen las cosas en nuestra empresa. Por otro lado, en la carpeta de proyectos ya tengo un primer proyecto preparado con los datos de entrada, esencialmente un documento de texto con el encargo del cliente, las mediciones de su piso en Excel y el plano sobre el que trabajaremos.

[05:52] Tal y como se menciona en el primer paso, tanto la memoria, que solo tiene un archivo, que en estos momentos está esencialmente vacío, como las skills, en estos momentos son carpetas vacías, que lo que veremos es cómo se rellenan automáticamente una vez hayamos completado este segundo paso, que como os decía, es simplemente conectar al agente y hacer por primera vez la tarea de un modo manual. La gracia es que luego podemos hacer que la gente aprenda a hacer esta acción de un modo correcto

[06:17] y automático gracias a las instrucciones que tiene en el agents.md, por lo que empezamos por el principio. Nos vamos en este caso a chat GPT, nos vamos a la pestaña de work y una vez en la pestaña de work creamos un proyecto nuevo. Le damos a elegir proyecto, nuevo proyecto y le ponemos el nombre al proyecto, reformas Alfeizar. Y aquí añadimos la carpeta que acabamos de crear.

[06:39] Simplemente buscamos la carpeta y la seleccionamos. Una vez hecho esto, le damos a crear proyecto. Y el primer paso es darle una instrucción general como podría ser esta. Lee agents.md, después prepara el presupuesto del proyecto 01 piso García y se lo envío.

[06:56] La idea de esta instrucción es saber qué es lo que puede hacer el modelo por sí solo y donde no llega el modelo, pues le añadiremos correcciones que luego incorporaremos en las habilidades. Y aquí podemos ver cómo chat GPT identifica algunas preguntas que necesita para continuar. Algunas de estas preguntas son ejemplos de cosas que quizás deberían estar en alguna habilidad que podría responder automáticamente. Por lo que de momento simplemente nos limitamos a responderle dentro del chat para que lo corrija en

[07:22] este proyecto concreto. De modo que podemos responder esas tres preguntas de este modo. A la pregunta la puerta de la cocina desaparece, cerramos su hueco o lo dejamos abierto, le digo que la puerta de la cocina desaparece porque es una cocina abierta. Y le digo, esto es un criterio para aplicar siempre. A la pregunta de si incluimos nivelación del suelo y si es así en cuántos metros cuadrados, le digo también esto, sí, esto es algo que siempre debe incluirse en todos los necesarios. ¿Y cuántos

[07:46] contenedores de residuos presupuestamos? Le digo que siempre incluye una estimación por defecto que ya validaré manualmente. Y simplemente se lo envío. La idea detrás de estas respuestas es añadir criterios que son necesarios para hacer la tarea. Fijaros como lo primero que me responde es justo esto, guardaré estos criterios para futuros presupuestos.

[08:07] Y Chat GPT ya ha terminado el trabajo y me ha generado dos versiones del mismo presupuesto. Por un lado, una versión HTML que es la que estamos viendo ahora mismo en el panel lateral. Y por el otro, una hoja de cálculo en un archivo Excel que contiene exactamente la misma información.

[08:21] Sin embargo, este presupuesto es un presupuesto que no se ajusta a nuestros criterios. Simplemente porque estos criterios no se los habíamos proporcionado al agente. Y por lo tanto, es un presupuesto que no es del todo práctico y funcional. Lo principal que veo es que mezcla por un lado disciplinas, como puede ser demoliciones y albañilería, con por otro lado estancias, como puede ser la cocina o el baño. Y yo, idealmente, lo que querría es que me lo separase por industriales.

[08:47] Es decir, por carpintería, albañilería, electricidad, instalaciones. Y por lo tanto, lo que tengo que hacer es asegurarme que esta clasificación sea la correcta. Por lo que le voy a dar una instrucción para que rehaga el presupuesto siguiendo estas tres reglas.

[09:02] Por un lado, que haga una estructura por industriales, es decir, capítulos por oficio. Por el otro, que cada partida incluye el suministro y la colocación en una sola línea y con un único precio. Y finalmente, le doy un criterio para utilizar las unidades de medición. Con esto, Chat GPT podrá rehacer el presupuesto ajustándose realmente a mis criterios. Y esto es algo que la gente deberá recordar y deberá saber cómo aplicar. Y Chat GPT ya ha terminado y me dice que ha rehecho el presupuesto

[09:30] siguiendo estos nuevos criterios. Me dice que lo ha organizado por ocho capítulos por oficio y 23 partidas. Por lo que si ahora hago scroll en el HTML, podemos ver que es cierto que los diferentes capítulos son derribos, albañilería, cerrajería, fontanería, electricidad, carpintería, marmolería y pintura. Por lo que vemos como ChatGPT, evidentemente, es capaz de seguir este criterio, pero lo interesante hubiese sido que el agente lo conociese desde el principio. Y justo esto es lo que

[09:58] veremos en el siguiente paso, el paso tres. [música] Y el tercer paso consiste en que todos estos criterios que vamos descubriendo y desvelando a medida que interactuamos manualmente con la herramienta se consoliden en habilidades que hagan que el agente haga bien el trabajo a la primera.

[10:15] Antes de ver cómo crear una habilidad, vamos a ver el estado actual del agente. Es decir, nos vamos a nuestra carpeta donde vive el agente y comprobamos cómo, por ejemplo, la carpeta de skills sigue vacía. Pero, sin embargo, si ahora nos vamos a la memoria y la abrimos, fijaros qué es lo que nos encontramos. Nos encontramos con que el agente, automáticamente, ha empezado a rellenar este archivo con las diferentes indicaciones que le hemos dado que le parecían relevantes. Y, por ejemplo,

[10:40] vemos cómo el primer recuerdo que ha anotado es este. El usuario indica que al abrir una cocina su puerta desaparece por ser cocina abierta. Aplicar siempre este criterio, siempre presupuestar sustitución ni cerrar el hueco. O vemos cómo el penúltimo criterio que ha anotado es este. El usuario pide suministro y colocación en una única partida y precio con material y modelo concreto. No separar material y mano de obra. Por lo que vemos que en la memoria ya va anotando, pues, los criterios más

[11:08] relevantes. Pero ahora toca darles forma en forma de habilidad. Y ahora os podéis preguntar por qué vamos a crear una habilidad si la memoria ya va anotando todos estos criterios. Pues, por una simple cuestión de orden. La memoria simplemente anota criterios de modo cronológico. Con la habilidad lo que vamos a hacer es clasificar estos criterios y luego ordenarlos de modo secuencial para que el agente aprenda realmente a resolver tareas en base a ellos. Pero lo interesante es que crear una habilidad,

[11:35] una vez llegamos a este punto, es muy sencillo. Simplemente volvemos a nuestra conversación en ChatGPT y le pedimos algo como esto, "Crea una habilidad de creación de presupuestos que asegure que todos los criterios planteados a lo largo de la conversación se cumplan siempre." Y simplemente se lo enviamos y fijaros cómo automáticamente ya nos responde que va a crear esta habilidad en la carpeta skills. Y ya ha terminado, me dice que ya ha creado la habilidad de crear presupuestos que recoge todos mis

[12:01] criterios y que queda guardada en la carpeta skills. Si le damos aquí a crear presupuestos, pues podemos ver cómo ha organizado la skill con el formato correcto. Y si ahora nosotros lo que hacemos es irnos a nuestra carpeta del agente y nos vamos y nos vamos a la carpeta de skills, podemos ver cómo ha creado un subdirectorio de crear presupuestos que lo que incluye es nuestra skill. Por lo que a partir de ahora, cuando necesitemos crear un nuevo presupuesto, simplemente consultará esta

[12:28] skill y aplicará todos los criterios que hemos ido definiendo manualmente a lo largo de la última conversación. Y lo más interesante de este sistema es que es completamente modulable y escalable. Te lo demuestro. Volvamos a nuestra conversación. Aquí podéis ver cómo estamos en el punto donde hemos creado la skill de crear presupuestos, pero este no era todo el trabajo a la hora de hacer una propuesta. Además de crear el presupuesto, tenemos que facilitar una experiencia inmersiva 3D para que el

[12:54] cliente se imagine la reforma. De modo que yo lo que he hecho es simplemente continuar en la misma conversación y lo que le he pedido es que hiciese un recorrido 3D del proyecto y que lo hiciese directamente en una tecnología que se pudiese ejecutar en una web. De modo que él se ha puesto a trabajar, me ha pedido si podía simplificar la representación y hacerla más esquemática, le he dicho que sí y lo que ha hecho es proporcionarme, pues, esta experiencia. Un resultado donde nosotros

[13:21] lo que podemos ver es el piso entero donde le podemos subir y bajar los muros, ver el estado actual pre reforma, que sería este de aquí, ver el estado una vez el piso está reformado y lo más interesante es que esta experiencia, si nosotros vamos señalando o clicando encima de los diferentes elementos, podemos ir viendo el desglose del presupuesto. Aquí podéis ver cómo podemos ir navegando por todos los elementos, bien sea a través del panel lateral o bien sea clicando directamente

[13:51] en el elemento 3D. Y no solo esto, también lo que podemos hacer es entrar directamente al piso y tener una experiencia interactiva para movernos a través de él. Aquí podéis ver, como si fuese un pequeño videojuego, cómo podemos ir navegando por él. Es una representación muy básica, pero tened en cuenta que esto se podría hacer con conectando la gente a herramientas más avanzadas, como por ejemplo Blender.

[14:15] Pero lo realmente interesante es entender que nosotros, una vez hemos completado esta tarea, podemos volver a repetir el mismo proceso, es decir, pedirle que cree otra habilidad y él lo hará y la guardará en la misma carpeta.

[14:27] Como podéis ver, si yo ahora entro en la carpeta de skills, podemos ver que además de la skill de crear presupuestos, tenemos la skill de crear recorridos. Y esta es incluso una skill un poco más compleja, no solo tiene la instrucción, sino que también tiene referencias y también tiene una referencia de assets y materiales procedurales. Es decir, él automáticamente crea skills de la complejidad que necesita. Y lo bueno es que, como vamos a ver a continuación, todo esto es reutilizable.

[14:55] [música] Y en este último paso es donde la cosa se pone interesante. Como habéis visto a lo largo del vídeo, he hecho el primer proyecto enteramente en chat GPT. ¿Pero qué sucedería si quisiese hacer el segundo proyecto, por ejemplo, con Cloud Cowork? Pues lo tendría realmente muy fácil, simplemente tendría que tener la información lista del siguiente proyecto para cargarla en la carpeta proyectos de la gente. Y una vez aquí, aquí podéis ver la información que tendrá disponible, otra vez el encargo, unas

[15:21] mediciones y un plano y una vez hecho esto, simplemente darle acceso a la gente a Cowork, por lo que seleccionamos Cowork en Cloud y seleccionamos la carpeta donde va a trabajar, seleccionamos la carpeta de la gente y simplemente le damos a crear proyecto. Y una vez configurado esto, lo único que tenemos que hacer es darle una instrucción como esta, "Lee agents.md y completa la propuesta del proyecto 2, Ático Ferrer, crea el presupuesto y la experiencia 3D interactiva". Y simplemente se lo envío. Y Cloud ya ha

[15:52] terminado y podemos ver como con una sola instrucción ha sido capaz de entregar directamente los tres entregables. Fijaros, solo hay una instrucción y una respuesta y al final de esta respuesta están estos tres archivos. Por un lado, el presupuesto en formato Excel, que es lo que estamos viendo ahora a la derecha. Por el otro, aquí tenemos el presupuesto en formato HTML.

[16:15] Y finalmente, y lo más interesante, también nos ha creado el recorrido interactivo, que es este que estáis viendo aquí. Y fijaros como es prácticamente idéntico en estilo a lo que nos había generado ChatGPT. Podemos ver como podemos subir y bajar los muros, podemos ver como podemos pasar del estado actual a la reforma y también podemos entrar al ático y movernos en él como si estuviésemos en un videojuego.

[16:43] Por lo que ahora tenemos un agente que automáticamente con una sola instrucción es capaz de replicar el mismo proceso en cualquier herramienta. Y hasta aquí el cuarto y último paso de mi sistema. Si necesitas una referencia para configurar tus archivos de agents.md, que es el archivo que gestiona todo el agente, en la descripción encontrarás un enlace para acceder a un documento doc donde verás el archivo de configuración que he utilizado en este ejemplo.

[17:08] Como ves, la gracia de mi sistema es que puede servir para realizar cualquier tarea, pero no solo esto, piénsalo bien, en cada agente podemos escalarlo añadiéndole más y más habilidades. Además, los proyectos quedan automáticamente ordenados, pero no solo esto, también es escalable pensando que como cada gente vive en una carpeta, podemos almacenarlos todos en una única carpeta y tener un sistema global que nos permita resolver la mayoría de tareas de nuestro día a día en cualquier

[17:34] herramienta. Si además de todo esto tienes curiosidad por saber cómo los agentes pueden manejar mejor tu conocimiento, te recomiendo que veas el siguiente vídeo. Nos vemos en el próximo vídeo.
