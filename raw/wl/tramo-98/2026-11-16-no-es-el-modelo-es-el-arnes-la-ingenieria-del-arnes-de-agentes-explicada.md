# No es el modelo, es el arnés: la ingeniería del arnés de agentes, explicada

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=1teeq-GaiZE)
- **Canal**: Articulator ES
- **Publicado**: 2026-11-16
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 19:06

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Todo agente de programación es el modelo, más lo que construyes a su alrededor. Ese andamiaje se llama arnés y diseñarlo ya es una disciplina propia. Es la idea central de un artículo de Addy Osmani sobre la ingeniería del arnés y hoy te lo cuento en español.

[00:17] El artículo arranca con una regla. A grandes rasgos, cada vez que descubres que el agente comete un error, te tomas el tiempo de diseñar una solución para que no vuelva a cometerlo nunca. Llevamos dos años discutiendo sobre modelos.

[00:30] ¿Cuál es el más listo? ¿Cuál escribe el React más limpio? ¿Cuál alucina menos? Esa conversación está bien, pero le falta la otra mitad del sistema. El modelo es solo una entrada de un agente en marcha. El resto es el arnés.

[00:43] Prompts, herramientas, políticas de contexto, Hooks, sandbox, subagentes, bucles de realimentación y vías de recuperación, que lo envuelven para que pueda terminar algo de verdad. La tesis de Osmani, un modelo decente con un gran arnés, gana un modelo excelente con uno malo.

[01:00] Dice haberlo visto una y otra vez en su propio trabajo. Y cada vez más, la ingeniería interesante no está en elegir el modelo, sino en diseñar el andamio que lo rodea. Esa disciplina ya tiene nombre, ingeniería del arnés.

[01:14] El término, según el artículo, lo acuñó Viv Trivedy, autor también de la anatomía de un arnés. Dex Horthy sigue el patrón desde que apareció. La empresa HumanLayer sostiene que casi todos los fallos de los agentes son de configuración.

[01:28] Anthropic explicó cómo diseñar uno para trabajos largos, y Birgitta Böckeler lo cuenta desde el lado del usuario. Osmani junta esos hilos. Entonces, ¿qué es un Arnés? La frase de Trivedy hace casi todo el trabajo. Agente es igual a modelo más Arnés.

[01:45] Si no eres el modelo, eres el Arnés. Es decir, cada pieza de código, de configuración y de lógica de ejecución que queda fuera del modelo. Por sí solo, un modelo no es un agente. Se convierte en uno cuando el arnés le da estado, ejecución de herramientas, bucles de realimentación y restricciones que se pueden hacer cumplir.

[02:06] La figura del artículo lo dibuja como una placa de circuito. El modelo es un chip en el centro, razona y decide. A su alrededor, el arnés inyecta contexto, con prompts, memoria y skills. Controla el flujo con compactación y orquestación.

[02:21] Actúa con bash, herramientas y servidores MCP. Persiste en archivos y en Git. Y observa y verifica, con capturas, test y registros. El modelo es un chip de la placa, el arnés lo demás que lo hace útil. En concreto, dentro caben seis cosas.

[02:38] Los prompts de sistema y archivos como CLAUDE.md o AGENTS.md, las herramientas con sus descripciones, la infraestructura incluida, sistema de archivos, sandbox y navegador, la lógica de orquestación que lanza subagentes y enruta modelos, los juks para lo que debe ejecutarse siempre igual, y la observabilidad, registros, trazas, coste y latencia.

[03:02] Simon Willison lo reduce a su esencia. Un agente es un sistema que ejecuta herramientas en bucle para lograr un objetivo. La habilidad está en diseñar bien las dos cosas, las herramientas y ese ciclo. Si te parece mucha superficie, lo es.

[03:17] Y es tuya, no del proveedor del modelo. Claude Code, Cursor, Codex, Aider y Cline son todos arneses. Por debajo, a veces el modelo coincide, pero lo que tú notas al usarlos depende sobre todo de lo que hace el arnés. El debate sobre el primer sumando de la ecuación hace mucho ruido.

[03:34] Casi toda la palanca está en el segundo. Hay un patrón en el que caen muchos ingenieros. El agente hace una tontería, el ingeniero culpa al modelo y el problema se archiva en la carpeta de esperar a la próxima versión. La mentalidad del Arnés rechaza esa salida, porque el fallo casi siempre se puede leer.

[03:53] El agente no conocía una convención, la añades a AGENTS.md. Lanzó un comando destructivo, pones un hook que lo bloquea. Se perdió en una tarea de 40 pasos, la divides entre un planificador y un ejecutor. Daba por terminado código roto, conectas la comprobación de tipos al bucle, como contrapresión.

[04:14] HumanLayer lo resume así. No es un problema del modelo, es un problema de configuración. En inglés lo llaman skill issue, cuestión de habilidad. La ingeniería del Arnés es lo que pasa cuando te tomas eso en serio. Hay un dato llamativo.

[04:28] Según el artículo en Terminal Bench 2, Opus, el modelo de Anthropic puntúa dentro de Claude Code muy por debajo de lo que logra en un arnés hecho a medida. Y el equipo de Trivedy subió su agente del top 30 al top 5 cambiando solo el arnés.

[04:44] ¿Por qué pasa? Los modelos se post-entrenan acoplados al arnés con el que se entrenaron. Si los llevas a otro, con mejores herramientas para tu código, un prompt más ajustado y una contrapresión más afilada, puede aparecer capacidad que el original dejaba sin usar.

[04:59] Es lo contrario de sentarse a esperar al próximo modelo. La distancia entre lo que los modelos de hoy pueden hacer y lo que les ves hacer es, en gran parte, cosa del arnés. El hábito más importante tiene nombre de mecanismo, el trinquete.

[05:14] Esa rueda dentada solo gira en un sentido. Aquí significa tratar cada error del agente como una señal permanente, no como una anécdota para reírse, ni como una mala ejecución que se reintenta, como una señal. El ejemplo de Osmani, el agente envía una pull request con un test comentado y él la fusiona sin querer.

[05:34] Eso es una entrada. La siguiente versión de su AGENTS.md dice, nunca comentes las pruebas, bórralas o arréglalas. El hook de pre-commit busca en el diff las marcas que las desactivan y el subagente revisor trata cualquier prueba silenciada como bloqueante.

[05:51] Solo añades restricciones cuando has visto un fallo real y solo las quitas cuando un modelo más capaz las vuelve redundantes. Cada línea de un buen AGENTS.md debería poder rastrearse hasta algo concreto que salió mal. Por eso esto es una disciplina y no un framework.

[06:07] El arnés adecuado para tu código tiene la forma de tu historial de fallos. No se puede descargar. ¿Cómo se diseña entonces? El enfoque de Trivedy que a Osmani le resulta más útil es trabajar hacia atrás. Partes del comportamiento que quieres o que quieres arreglar y de ahí deduces la pieza que lo consigue.

[06:25] La figura lo pinta como puente sobre un barranco. A un lado, lo que el modelo puede hacer solo. Al otro, lo que necesitas. Cada pieza cruza una carencia concreta. Son seis. Trabajar con datos duraderos pide sistema de archivos y Git.

[06:40] Ejecutar código pide Bash. Hacerlo sin romper nada. Entornos aislados. Aprender cosas nuevas, archivos de memoria, búsqueda web y MCP. Aguantar contextos largos, compactación y skills. Y las tareas de muchas sesiones, bucles Ralph, planificación y verificación.

[06:57] Así, cada componente tiene un trabajo. Si no sabes nombrar el comportamiento que aporta, probablemente sobra. Empecemos por el sistema de archivos, la primitiva más básica y la más infravalorada, porque es aburrida. Un modelo solo opera sobre lo que cabe en su contexto.

[07:14] Con archivos, el agente gana un espacio para leer datos, código y documentación, un sitio donde dejar el trabajo intermedio y una superficie donde varios agentes y personas se coordinan. Y con git encima llega el versionado, seguir el progreso, deshacer errores y probar ramas.

[07:32] Luego, bash. El bucle principal de hoy es de tipo React. El modelo razona, actúa con una llamada herramienta, observa el resultado y repite. Pero el arnés solo ejecuta aquello para lo que tiene lógica. Puedes fabricar una utilidad para cada acción posible o darle bash y que construya las suyas sobre la marcha.

[07:50] Willison apunta que los agentes ya son muy buenos con la terminal. Es la diferencia entre enseñar a alguien un solo utensilio y entregarle la cocina entera. Bash solo sirve si corre en un sitio seguro. Ejecutar en tu portátil código generado por un agente es arriesgado.

[08:07] Y un único entorno local no escala a muchos agentes en paralelo. El sandbox les da un espacio aislado. El arnés se conecta a él para ejecutar, inspeccionar archivos, instalar dependencias y verificar. Puedes permitir solo ciertos comandos, cortar la red, crear máquinas bajo demanda y destruirlas al acabar.

[08:26] Además, uno bueno viene bien equipado. Lenguajes y paquetes ya instalados, Git, tests y un navegador sin interfaz. Navegador, registros, capturas y pruebas son lo que deja el agente observar su propio trabajo y cerrar el ciclo de autoverificación.

[08:42] El modelo no configura su entorno. Dónde corre, qué tiene a mano y cómo verifica son decisiones del arnés. Cuarta pieza. Memoria y búsqueda. Un modelo no sabe más que lo que hay en sus pesos y en su contexto. Como los pesos no se pueden editar, la única vía para añadir conocimiento es inyectarlo.

[09:01] Otra vez con archivos. El arnés carga AGENTS.md en cada arranque. Cuando el agente lo edita, se recarga y lo aprendido en una sesión pasa a la siguiente. Es una forma tosca, pero eficaz, de aprendizaje continuo. Para lo que no existía al entrenar, como versiones nuevas de una librería, documentación actual o los datos de hoy, la búsqueda web y herramientas MCP como Context7 salvan la fecha de corte.

[09:25] Conviene que vengan de serie, en lugar de dejárselas al usuario. Quinta, la pudrición del contexto, en inglés context rot. Es la observación de que los modelos razonan y rematan peor a medida que la ventana se llena. El contexto es escaso y un arnés es, en gran parte, un mecanismo de reparto de buena ingeniería de contexto.

[09:45] Hay tres técnicas que se repiten. Compactar. Cuando la ventana está casi llena, el arnés resume y saca fuera lo antiguo, porque dejar que la API falle no es opción. Descargar las salidas de un registro de 2000 líneas se queda con el principio y el final, y manda lo demás a un archivo que el agente puede leer si lo necesita.

[10:05] Y las skills con revelación progresiva. Instrucciones y herramientas aparecen solo cuando la tarea las pide, en vez de cargarlo todo al arrancar. Anthropic añade una cuarta para los trabajos muy largos, el reinicio completo.

[10:19] El arnés derriba la sesión y la reconstruye a partir de un archivo de traspaso compacto. Dicen expresamente que compactar no bastaba. A veces hay que empezar de cero con un informe bien estructurado. Se parece más a incorporar a un ingeniero nuevo que a lo que solemos llamar memoria.

[10:36] Sexta, y la más difícil, el trabajo autónomo de largo recorrido. Los modelos de hoy paran antes de tiempo, descomponen mal los problemas complejos y pierden coherencia cuando la tarea cruza varias ventanas de contexto. El arnés tiene que diseñarse alrededor de esas tres debilidades.

[10:53] La respuesta inicial es el bucle Ralph. Un hook intercepta al modelo cuando intenta salir y reinyecta el prompt original en una ventana de contexto limpia, obligándolo a seguir hasta cumplir el objetivo. Cada vuelta empieza de cero, pero lee el estado del anterior en los archivos.

[11:08] Con un truco así de simple, un agente de una sesión pasa a ser de muchas. Y jamás lo deducirías de la idea de usar un modelo más listo. Después, planificar. El modelo descompone el objetivo en pasos, normalmente en un archivo de plan en disco, y el arnés le recuerda cómo usarlo.

[11:26] Tras cada paso, se autoverifica. Unos juks lanzan la batería de test y devuelven los fallos con el texto del error, o él mismo revisa su salida frente a criterios explícitos. Separar papeles, planificador, generador y evaluador.

[11:42] Según Anthropic, repartir la generación y la evaluación entre agentes distintos funciona mejor que autoevaluarse, porque los agentes tienden a puntuarse al alza. Osmani lo compara con las redes GAN, pero para texto... Además, está el contrato de Sprint.

[11:57] Las dos partes acuerdan qué significa terminado antes de escribir código. A él, apuntar esa condición al empezar le ha evitado más desvíos que ningún cambio de prompt. Quedan los hooks, la capa que hace cumplir. Separan dos frases.

[12:11] Yo le dije a el agente que hiciera algo y el sistema lo impone. Son scripts que se ejecutan en un punto concreto del ciclo de vida, antes de una herramienta, tras editar un archivo, antes de un commit o al iniciar sesión.

[12:24] Sirven para lo que el agente no debe olvidar y olvida. Pasar tipos, linter y test tras cada edición. Bloquear comandos destructivos como un borrado recursivo o un push forzado. Pedir aprobación antes de abrir una pull request.

[12:38] Formatear al guardar. Y un principio de HumanLayer. El éxito es silencioso y los fallos ruidosos. Si todo pasa, el agente no oye nada. Si algo se rompe, el error entra en el bucle y se corrige solo. Luego está el archivo AGENTS.md en la raíz del repositorio.

[12:57] Sigue siendo el punto de configuración con más palanca, porque entra en el prompt de sistema en cada turno. Dos lecciones. Que sea corto. HumanLayer mantiene el suyo por debajo de 60 líneas, porque cada regla compite por la atención.

[13:11] Lista de comprobación de piloto, no guía de estilo. Y que cada línea se gane el sitio. Si no viene de un fallo pasado o de una restricción externa, es ruido. La misma disciplina vale para las herramientas. El nombre, la descripción y el esquema de cada una se estampan en el prompt en cada petición.

[13:28] 10 bien enfocadas rinden más que 50 solapadas, porque el modelo puede tener el menú en la cabeza y hay un riesgo de seguridad. Esas descripciones son texto en el que el modelo confía. Un servidor MCP descuidado o malicioso puede inyectar instrucciones en tu agente antes de que escribas nada.

[13:48] ¿Cómo se ve todo esto en producción? La imagen pública más clara para Osmani es el desglose que hizo Fareed Jan de la arquitectura de Claude Code. ¡Ojo! Es una estimación, no un plano oficial. En el centro, el bucle maestro del agente.

[14:02] Alrededor, siete capas: entrada, conocimiento, integración, ejecución, salida, observabilidad y multiagente. Casi todo lo anterior aparece ahí con nombre propio. La inyección de contexto es la capa de conocimiento. El estado vive en el almacén de memoria y en el aislador de ramas.

[14:21] Los hooks contra acciones destructivas están tras la puerta de permisos. Los cortafuegos entre subagentes son toda la capa multiagente. En el despacho de herramientas se enchufan bash y los servidores MCP. La conclusión de Jan coincide.

[14:34] La trayectoria de Claude Code se debe al arnés al menos tanto como al modelo. Una idea de Anthropic. Cuando los modelos mejoran, el espacio de arneses interesantes no encoge. Se mueve. La historia ingenua dice que un modelo mejor vuelve obsoleto el andamiaje.

[14:51] Y algo hay. Opus casi eliminó la ansiedad de contexto que hacía Sonnet, un modelo anterior, cerrar el trabajo antes de tiempo al creer que se le acababa la ventana. Lo que Osmani escribía hace seis meses para mitigarla hoy es código muerto.

[15:06] Pero el techo se movió con el modelo. Ahora hay tareas alcanzables que antes no lo eran y traen sus propios fallos. Donde había andamiaje contra la ansiedad, hace falta una política de memoria de varios días o coordinar tres agentes especializados o evaluadores de calidad de diseño para interfaces generadas.

[15:25] Anthropic lo dice así. Cada componente de un arnés codifica una suposición sobre lo que el modelo no puede hacer solo. Cuando aprende a hacerlo, esa pieza ya no sostiene nada y debe salir. Cuando desbloquea algo nuevo, hace falta andamiaje nuevo.

[15:38] Una figura lo muestra en tres generaciones. El modelo absorbe la planificación y la verificación, luego la memoria y la compactación, y el arnés se anexiona a territorio, orquestación y después contexto justo a tiempo. Hay además un bucle entre el diseño del arnés y el entrenamiento.

[15:56] Se descubre una primitiva útil, se estandariza en el producto, se usa al entrenar la siguiente generación, y el modelo nuevo mejora justo en eso. Los agentes de hoy se postentrenan con el arnés dentro, mejoran en archivos, bash, planificación y reparto a subagentes.

[16:13] Por eso Opus se siente distinto en Claude Code que en otro arnés. Y por eso cambiar la lógica de una herramienta a veces causa regresiones extrañas. A un modelo de verdad general le daría igual editar con ApplyPatch o con otra utilidad.

[16:26] Pero entrenar juntos crea sobreajuste. Dos consecuencias. El arnés es un sistema vivo, no una configuración que se escribe una vez. Y el mejor no es necesariamente aquel donde se entrenó el modelo, sino el diseñado para tu tarea.

[16:41] Otra idea de Trivedy, el arnés como servicio. Estamos pasando de construir sobre la API de un modelo que devuelve una respuesta, hacerlo sobre la de un arnés, que entrega un entorno de ejecución entero. Los kits de desarrollo de agentes de Claude, de codex y de open AI apuntan al mismo sitio.

[16:58] El bucle, las herramientas, la gestión de contexto, los hooks y el sandbox vienen de serie. Y tú los personalizas. Antes, el camino por defecto era montarlo todo, tu bucle, tus llamadas a herramientas, el estado de la conversación, el flujo de aprobaciones.

[17:15] Ahora es elegir un framework de arnés, configurarlo en sus cuatro pilares, que son prompt de sistema, herramientas, contexto y subagentes, y dedicar el esfuerzo a lo específico de tu dominio. Eso hace abordables los fallos de configuración.

[17:29] No reconstruyes un agente cada vez que algo sale mal. Ajustas una superficie ya bien organizada. Es el mejor argumento para empezar aunque quede feo. Lo dice Trivedy. Construir buenos agentes es un ejercicio de iteración.

[17:42] Y no puedes iterar si no tienes una versión 0.1. ¿Hacia dónde va esto? Pon los mejores agentes de programación uno junto a otro, y se parecen entre sí más que sus modelos. Los modelos son distintos. Los patrones de Arnés convergen.

[17:57] Osmani no cree que sea casualidad. La industria va encontrando las piezas de andamiaje que cargan peso, las que convierten un modelo generativo en algo capaz de entregar. Los problemas abiertos que plantea Trivedy son tres: orquestar muchos agentes en paralelo sobre un mismo código, agentes que analizan sus propias trazas para encontrar y arreglar fallos del arnés, y arneses que ensamblan las herramientas y el contexto justo a tiempo para cada tarea, en vez de venir configurados desde el arranque.

[18:26] Con este último, dice Osmani, el arnés deja de ser configuración estática y empieza a parecerse a un compilador. En resumen, el agente es el modelo más el arnés y cada error es una señal para apretar el trinquete. Añade una regla cuando algo falla y quítala cuando el modelo ya no la necesite.

[18:45] Si te ha sido útil, dale a me gusta y suscríbete al canal para no perderte el próximo vídeo. Y cuéntame en los comentarios, ¿qué regla has añadido a tu arnés después de un fallo de tu agente? Hasta pronto.
