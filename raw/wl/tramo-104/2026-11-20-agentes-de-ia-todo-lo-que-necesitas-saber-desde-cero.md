# Agentes de IA: todo lo que necesitas saber desde cero

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=NzTBP5Lj3ls)
- **Canal**: Fran Reactive
- **Publicado**: 2026-11-20
- **Recopilado**: 2026-11-20
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 24:14

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Los agentes de IA ya contestan correos, investigan, preparan informes y toman decisiones por su cuenta, pero la mayoría de empresas los monta y paga de más. En este vídeo te enseño cómo funcionan por dentro, cómo se organizan y cómo usarlos sin darles las llaves de tu negocio. Esto es lo que vas a ver.

[00:19] Primero, ¿qué es de verdad un agente y en qué se diferencia de un chatbot? Después, ¿cómo se conecta tus herramientas con MCP y con skills? y por qué su memoria de trabajo es el recurso más caro. Luego, nueve formas de organizar un equipo de agentes con ejemplos de cuándo conviene cada una.

[00:38] Hablaremos de seguridad, qué permisos no deberías darle nunca y terminaremos creando paso a paso tu primer agente y un pequeño equipo de agentes. Al acabar sabrás cuándo usar un agente, cómo diseñarlo y sobre todo cuándo no hacerlo. Entonces, ¿qué es exactamente un agente? Antropic lo explica con una distinción muy útil. Un workflow es un camino que tú escribes en código.

[01:02] Primero esto, luego esto otro. Un agente, en cambio, es un sistema donde el modelo decide qué hacer a continuación y qué herramientas usar. La diferencia parece pequeña, pero cambia todo. ¿Quién tiene el volante? Y por eso Antropic aconseja empezar siempre por la solución más simple que funcione y subir de nivel solo cuando haga falta. Piensa en un deslizador. A la izquierda tienes una simple llamada al modelo. Preguntas y responde. Un poco más allá. Un workflow con pasos fijos que decides tú.

[01:32] Después un agente que elige su ruta y al final del todo, varios agentes colaborando. Cada paso a la derecha te da más flexibilidad, pero también más coste, más latencia y más cosas que pueden salir mal. La pregunta de ingeniería no es cuál es el más potente, sino cuál es el más pequeño que resuelve tu problema. Por dentro, todo agente es un bucle. Perci, razona, llama a una herramienta, observa el resultado y se pregunta si ya terminó. Si no, vuelve a empezar. Esa idea viene de un trabajo

[02:02] llamado React, que intercala razonar y actuar. Lo importante es cómo termina el bucle, cuando se cumple el objetivo, cuando se alcanza un límite de pasos, de tokens o de tiempo, o cuando el agente escala a una persona. Un agente sin condiciones de parada no es autónomo, es un problema esperando a ocurrir. Si abrimos el agente encontramos cinco piezas. El modelo que razona, el bucle que lo mantiene trabajando, las herramientas con las que toca el mundo, el contexto y la memoria, que son lo que

[02:34] el modelo ve en cada paso, y el objetivo que dice cuándo has terminado. Alrededor de ellas viven las capas de operación: seguridad, evaluación, trazas y costes. Más adelante veremos que la mayoría de los fallos no están en el modelo, sino en cómo conectamos estas piezas. Vamos con los tipos de agente. Esta es una clasificación didáctica, no un estándar.

[02:58] El agente reactivo decide solo la siguiente herramienta. Ideal para un asistente que consulta una interfaz de programación. El planificador diseña un plan completo y luego lo ejecuta, como cuando migras un repositorio por fases.

[03:11] Y el reflexivo critica su propio resultado antes de darlo por bueno. El trabajo reflexión lo demostró con modelos que aprenden de sus errores. Un generador de código con test ejemplo cercano. Luego están los tipos definidos por lo que pueden hacer. El agente con memoria guarda estado entre sesiones como un soporte que recuerda tu historial. El agente de código edita, ejecuta y verifica. y es el que más ha crecido en 2025 y 2026. El agente de uso de ordenador maneja pantallas y

[03:41] navegadores cuando no existe una interfaz de programación. El de largo recorrido trabaja durante horas con puntos de control y el multiagente reparte el trabajo entre varios roles, algo que veremos a fondo enseguida. Las herramientas son las manos de la gente y su descripción es lo único que el modelo ve de ellas. Por eso, la calidad de esa descripción decide el éxito. Antropic recomienda nombres claros, respuestas compactas y pensar las tools para el agente, no para una persona. Un fallo

[04:10] clásico es tener dos herramientas con nombres casi iguales, como notification send user y notification send. El modelo se equivoca de una a otra o de parámetros. Si tú dudarías leyendo el nombre, el modelo también. Hablemos del impuesto invisible de los agentes.

[04:27] Imagina que contratas a un asistente y antes de que diga hola ya ha gastado buena parte de su memoria de trabajo leyendo manuales de herramientas. Pasa de verdad. Cada herramienta que conectas llega con su descripción completa y todas se cargan antes de que escribas nada. Según Antropic, en noviembre de 2025, cinco servidores con 58 herramientas ocupaban unos 55,000 tokens. Solo el de Gira unos 17,000. Es como llegar a un examen con la mesa llena de apuntes que ni vas a abrir. Ya

[04:57] no te queda sitio para escribir. La solución es cargar herramientas bajo demanda. Antropic propone tres técnicas. La primera, tool search. El agente descubre las herramientas que necesita en lugar de recibirlas todas. La segunda, llamar a las tools desde código para que miles de filas no pasen por el contexto. Y la tercera, dar ejemplos de uso porque un esquema no expresa convenciones. Además, el 4 de noviembre de 2025, Antropic mostró que si el agente escribe código que invoca

[05:27] servidores, un ejemplo bajaba de 150,000 tokens a 2000, un 98,7% menos. Hasta aquí cada integración era un cable a medida. MCP, el Model Context Protocol, lo convierte en un enchufe estándar. Es un protocolo abierto cliente servidor.

[05:44] Un servidor expone herramientas, recursos y prompts y cualquier cliente compatible puede usarlos. Cloud, Cursor, Copilot, Gemini, Visual Studio Code y Chat GPT ya lo soportan. Y en diciembre de 2025 la Linux Foundation creó la Aentic AI Foundation y le dio a MCP un hogar neutral con más de 10,000 servidores publicados.

[06:07] Hay otras dos piezas de interoperabilidad. ADOSA es un protocolo abierto para que agentes distintos, incluso opacos entre sí, hablen entre ellos. Su web presenta la versión 1.0 y la sitúa también bajo la fundación. La regla fácil. MSP conecta un agente con sus herramientas, A2 a conecta agentes con agentes y agents.m es un archivo de instrucciones para agentes de código.

[06:33] Podrías verlo como un LM para máquinas, cómo se compila, qué convenciones seguir y qué no tocar. Las skills resuelven un problema distinto, enseñar a la gente cómo hacer algo. Una skill es una carpeta con un archivo skill.md MD con nombre, descripción e instrucciones y opcionalmente scripts y referencias. El truco es la divulgación progresiva. Al inicio, el agente solo ve el nombre y la descripción como los lomos de una estantería. Cuando la tarea encaja, abre el libro y carga el cuerpo. Es un

[07:04] formato abierto con especificación en agentsio. Y esta misma línea de producción de video funciona con skills, una regla para no confundirlos y es interpretación mía. Una tool sirve para ejecutar una acción, una skill sirve para saber cómo hacerla bien. Y un subagente sirve para aislar el contexto, de modo que un trabajo largo no ensucie la conversación principal. Si necesitas leer un calendario, tool. Si necesitas seguir el procedimiento de tu equipo para publicar, skill. Si necesitas investigar

[07:34] 100 páginas sin llenar tu ventana, subagente. El contexto es el recurso más escaso de un agente. Antropic habla de un presupuesto de atención. Para cuidarlo hay tres movimientos. Compactar el historial cuando crece, guardar notas fuera del contexto y recuperar información justo cuando hace falta. En su sistema de investigación, el agente principal guarda su plan en memoria externa porque pasados 200,000 tokens, el contexto se trunca y los suagentes devuelven referencias a ficheros, no

[08:05] copias del texto, para evitar el efecto teléfono escacharrado. La planificación ha evolucionado en escalones. Primero, cadena de pensamiento, razonar paso a paso. Luego, react, razonar y actuar. Después árbol de pensamientos, explorar varias ramas y podar las malas. Más tarde planificar y ejecutar. Y por último, reflexionar sobre el resultado.

[08:28] Un detalle práctico del sistema de Antropic escribieron en el prompt reglas de esfuerzo. Una tarea simple, un agente y pocas llamadas, una comparación de dos a cuatro suagentes, una investigación compleja más de 10. Llegamos al núcleo del curso, las nueve topologías. Una topología es cómo se organizan los agentes entre sí. Cinco vienen de los patrones de Antropic, las otras cuatro completan una taxonomía didáctica. Para cada una veremos qué es sus pros, sus contras, cuándo es la mejor opción y dos

[08:59] casos de uso. Una advertencia honesta, esos casos son propuestas didácticas mías, no casos reales documentados. Y para recordarlas, imagina un equipo humano, freelance, cadena de montaje, recepción, jefe de proyecto, equipo, comité, relevos, sala de guerra y editor. Primera topología, el agente único. Un bucle, muchas herramientas y un solo contexto como un freelance que lo hace todo. Sus pros: contexto coherente, depuración sencilla y coste mínimo. Antropic estima un agente en

[09:32] torno a cuatro veces el coste de un chat. sus contras, se satura el contexto, se satura la lista de tools y no paraleliza. Es la mejor opción cuando cada decisión depende de la anterior. Argumento de cognition. Caso uno, refactorizar un módulo donde cada edición depende del anterior. Caso dos, un copiloto de incidentes que lee logs, plantea hipótesis y propone un arreglo, partirlo perdería la cadena causal.

[09:58] Segunda, el pipeline o encadenado de prompt. Cada paso procesa la salida del anterior con puertas de verificación entre ellos, como una cadena de montaje, pros, control, auditoría y posibilidad de bloquear antes de gastar. Contras, el error se acumula, es rígido y las latencias se suman. Es la mejor opción cuando las fases son fijas y conocidas.

[10:20] Caso uno, una factoría de contenido que investiga, escribe el guion, valida fuentes y traduce. Esta línea de producción funciona así. Caso dos, dar de alta a un proveedor extrayendo datos de un documento, validando el esquema y comprobando su identidad antes de registrarlo. Tercera, el router, la recepción de la oficina. Clasifica la entrada y la manda al especialista adecuado. Pros es barato y rápido porque las consultas fáciles pueden ir a un modelo pequeño. Contras. Si clasifica

[10:50] mal, todo falla y necesita una ruta por defecto. Es la mejor opción cuando las entradas son heterogéneas y hay especialistas claros. Caso uno, una ventanilla de soporte que separa facturas, incidencias técnicas y consultas legales. Caso dos, la puerta de un asistente de editor de código que manda las preguntas triviales a un modelo ligero y los grandes refactors a un agente potente. Cuarta, el supervisor u orquestador con trabajadores. Un agente líder descompone la tarea, crea

[11:20] workers con contexto limpio y consolida. es el jefe de proyecto. Pros, maneja lo impredecible y cada worker trabaja sin ruido. Contras, el líder es cuello de botella. Una delegación vaga produce trabajo duplicado y si es síncrono, bloquea. Es la mejor opción cuando las subtareas no se conocen de antemano, pero sí son separables. Caso uno, due diligence de una empresa con un worker financiero, otro legal y otro de reputación. Caso dos, migrar un monorrepo donde cada worker abre su pool

[11:51] request y el líder integra. Quinta, el paralelo con dos sabores. En sectioning repartes partes independientes. En voting repites la misma tarea varias veces y comparas. Pros. Baja la latencia. Antropic documentó reducciones de hasta el 90% en consultas complejas al paralelizar subagentes y herramientas. Contras. El coste se multiplica y reducir pierde matices. Es la mejor opción con partes independientes o cuando necesitas consenso. Caso uno, una revisión de código con seguridad, rendimiento y

[12:24] estilo a la vez sobre el mismo cambio. Caso dos, tres clasificadores independientes votando antes de bloquear una cuenta. Sexta, el debate o crítico. Varios agentes defienden posturas y un juez decide como un comité. Un trabajo de DU y colaboradores de 2023 sugiere que puede mejorar la factualidad y el razonamiento. Contras, es muy caro y si todos son el mismo modelo pueden coincidir en el mismo sesgo. Esto es interpretación mía. Es la mejor opción cuando el error sale caro y no hay un

[12:54] verificador automático. Caso uno, una segunda opinión de apoyo, nunca decisoria, con hipótesis rivales. Caso dos, evaluar una arquitectura con un agente que defiende microservicios, otro el monolito y un juez que puntúa.

[13:08] Séptima, el handoff o traspaso. El agente activo posee la conversación y cuando toca otra especialidad pasa el testigo como una carrera de relevos. El Agents SDK de Open AI lo ofrece como primitiva. Pros es modular y cada gente tiene sus reglas. Contras, pueden aparecer bucles de traspaso y se pierde contexto al pasar. Es la mejor opción en conversaciones largas que cambian de especialidad. Caso uno, un chat que va de triage a facturación, a técnico y a retención. Caso dos, un concierge de

[13:40] viajes con vuelos, hotel y seguros, cada uno con sus herramientas. Octava, la pizarra compartida o Blackboard. Los agentes no se hablan, escriben hallazgos en un artefacto común y reaccionan a lo que otros dejan. Es una sala de guerra.

[13:56] Pros. Desacopla a los agentes y encaja con guardar salidas en ficheros. Contras. Carreras de escritura, estado contaminado y dificultad para saber quién hizo qué. Es la mejor opción cuando muchos especialistas aportan de forma oportunista a un documento vivo.

[14:13] Caso uno, una sala de guerra de incidente con agentes de logs, métricas y despliegues. Caso dos, un informe colaborativo con agentes de datos, gráficos y citas. Novena, evaluador optimizador. Un agente genera, otro evalúa y devuelve críticas. Se itera hasta cumplir el criterio. Es el editor.

[14:32] Pros, la calidad medible sube con las vueltas. Contras. Puede no converger, un juez débil estropea todo y necesitas un máximo de iteraciones. Es la mejor opción cuando existe un criterio claro como tests o una rúbrica. Caso uno, generar consultas SQL donde el evaluador las ejecuta y devuelve el error. Caso dos, traducción técnica con una rúbrica de terminología y tono. Fíjate, en ambos el criterio existe antes de empezar.

[15:01] ¿Cómo se elige? con preguntas, pasos fijos, pipeline. Entradas heterogéneas, router, subtareas imprevisibles, supervisor. Partes independientes, paralelo. Hay un criterio medible, evaluador. Cambia el especialista durante la conversación. Handof. Y si el contexto es denso y compartido, agente único. Mira la tabla de coste. El único es barato, el debate es muy caro. Esta comparativa es cualitativa, interpretación mía. Mi consejo, empieza por el agente único y añade estructura

[15:33] solo si una evaluación demuestra que la necesitas. Ahora la evidencia con matices. En la evaluación interna de Antropic para su sistema de investigación, el multiagente gastó unas 15 veces los tokens de un chat y superó en un 90,2% al agente único. Gran parte de esa mejora la explica el gasto de tokens, pero el estudio Mast con más de 16 trazas, siete frameworks y 14 modos de fallo concluye que las ganancias en benchmarks suelen ser mínimas, no se contradicen, ayuda en tareas amplias y paralelizables, no en

[16:06] todas. La tendencia, y esto es una interpretación, es pasar de los frameworks de orquestación como Langraf o el SDK de agentes de Open AI a los harnesses entornos completos para agentes. El valor ya no está en dibujar grafos, sino en lo que viene de serie, planificación, compactación, memoria, aprobaciones de herramientas y observabilidad. Aún así, Antropic aconsejaba empezar usando directamente la API del modelo para no ocultar tus prompts detrás de capas que no entiendes. Elige la herramienta que

[16:39] puedas depurar, no la que tenga más demos. Hablemos de seguridad, que no es un añadido, es arquitectura. Simon Willison el 16 de junio de 2025 describió la trifecta letal. Si un agente tiene acceso a datos privados, procesa contenido no fiable y puede comunicar hacia afuera, alguien puede engañarlo para filtrar tus datos. Basta un texto malicioso escondido en un correo o en una página. La inyección de prompt sigue sin tener una solución completa y por eso hay que diseñar para

[17:08] que aunque funcione el daño sea imposible. Meta propuso el 31 de octubre de 2025 la regla de dos de tres propiedades, entrada no fiable, acceso a datos o sistemas sensibles y capacidad de cambiar estado o comunicar hacia afuera.

[17:25] Un agente debe tener como máximo dos por sesión. Si necesita las tres, hace falta supervisión humana. Su ejemplo, un bot de correo recibe un mensaje spam que ordena reenviar todo el buzón. Con la regla rompes una pata, por ejemplo, sin salir a internet. y el ataque pierde fuerza. Resumamos las buenas prácticas.

[17:44] Empieza simple. Delega con claridad objetivo, formato, herramientas y límites. Da nombres inequívocos a tus tools y añade ejemplos. Carga tools y skills bajo demanda. Pon límites duros de pasos, tokens y tiempo. Guarda el plan fuera del contexto. Monta evaluaciones desde el primer día con 20 casos. Instrumenta trazas. Pon a una persona en el bucle para lo irreversible y aplica la regla de dos. Si solo recuerdas una cosa, lo simple se depura, lo complejo se justifica con datos y las

[18:15] malas prácticas que son el espejo. Usar multiagente por moda. Delegar de forma vaga, lanzar 50 suagentes para algo simple. Cargar 100 herramientas siempre, no poner límites de iteración. Usar el prompt como única seguridad, dar credenciales amplias, no tener trazas.

[18:33] Elegir un framework opaco, ignorar el coste por tarea y confiar en el último modelo de moda sin una evaluación propia. En 2025, Garner predijo, según fuentes secundarias, que más del 40% de proyectos agénticos se cancelarían a finales de 2027.

[18:50] Pasemos a la práctica. Voy a usar Open Code, un asistente de código abierto, para que veas que todo esto son simples ficheros de texto. Hay nueve piezas. Los agentes definen quién hace el trabajo, un papel, un modelo y unos permisos. Las skills explican cómo se hace algo y solo se cargan cuando hacen falta. Los comandos son atajos para pedirlo.

[19:11] Agents.md son las reglas que siempre están presentes. Los permisos dicen qué no puede tocar cada gente y MCP, los plugins y las herramientas propias le dan manos nuevas. Todo vive en una carpeta, la de tu usuario para todos tus proyectos o la del proyecto solo para ese. Así es un agente por dentro, un único fichero de texto. Arriba, entre dos líneas de guiones, va su ficha. La descripción es lo más importante, es lo que lee otro agente para decidir si le pasa el trabajo, si es vaga, delegará

[19:42] mal. El modo dice si hablas tú con él o si lo lanza otro agente. Luego eliges el modelo y un tope de pasos para que el bucle no de vuelta sin fin. Después vienen los permisos, una lista de reglas en la que gana la última que encaja y debajo el cuerpo, las instrucciones de la gente con su rol, su proceso, sus reglas y cómo debe responder. Vamos paso a paso. El fichero, la ficha, la descripción, que es el anzuelo para que lo elijan, el modo, el modelo y el tope de pasos.

[20:13] Ahora, los permisos. Y aquí hay una trampa. Como gana la última regla que encaja, si pones de negar todo, al final lo bloqueas todo. Lo general va arriba y las excepciones abajo. Y por último, el cuerpo, rol, proceso, reglas y formato de respuesta. Esa estructura es lo que más mejora la calidad de un agente. Un fichero, un agente. Ahora, una skill es una carpeta con un fichero SKL.md MD y si quieres plantillas, referencias o scripts al lado. El nombre de la carpeta es su identificador y otra vez,

[20:48] la descripción es el anzuelo. El agente solo ve el nombre y la descripción de cada skill y cuando la tarea encaja la carga. Sin descripción para él la skill no existe. ¿Y por qué no meterlo todo en las instrucciones de la gente? Porque lo pagarías en contexto en cada mensaje. La skill solo cuesta cuando se usa y además decides qué agente puede cargar cada una.

[21:09] Míralo en acción. El agente ve un catálogo con nombres y descripciones. Llega una tarea, escribir un texto con la voz de la marca. La descripción encaja, así que pide cargar la skill. Antes pasa por la puerta de permisos.

[21:22] Como la tiene permitida, el contenido entra en su contexto y ya sabe cómo hacerlo. Pero si agente, el investigador, intenta cargar la misma skill, la puerta se cierra. Cada gente carga solo sus skills. Con estas piezas ya puedes montar un equipo. Este ejemplo está inspirado en el equipo real que prepara mis vídeos. El manager recibe el encargo y reparte, pero no puede escribir ni ejecutar nada. Coordina. El investigador busca en internet y lee, pero no puede editar. El redactor

[21:52] escribe con la voz de la marca y solo en su carpeta. Y el revisor lo tiene todo cerrado, salvo leer. Opina, pero no corrige. ¿Podrías hacerlo con un solo agente? Sí. Y recuerda, empieza simple, pero separar papeles aísla el contexto y limita el daño si uno se equivoca. Y así trabaja el equipo. Llega el encargo al manager, intenta editar y no puede, no es su trabajo. Así que delega en sus tres especialistas que trabajan en segundo plano. Cada uno carga su skill y cada uno choca con su límite. El

[22:23] investigador no puede escribir y el redactor no puede salir de su carpeta. Al final vuelven los resultados y el manager entrega. Fíjate en la regla de dos. El investigador lee contenido no fiable de internet, pero no puede escribir ni ejecutar nada. Hay tres formas más de ampliarlo. Un comando es un atajo. Escribes barra revisa y el nombre del texto y se lanza un encargo que ya tienes preparado. Un servidor MSP se añade con unas pocas líneas de configuración o con un solo comando. Eso

[22:52] sí, cada servidor suma herramientas y contexto, así que conecta solo los que uses. Y un plugin es un pequeño programa que le da a la gente una herramienta nueva. No necesitas plugins para empezar, pero conviene saber que existen. Te dejo la chuleta para crear tu primer agente en seis pasos. Uno, define su papel en una frase, esa será su descripción. Dos, crea el fichero de la gente y elige su modo. Tres, cierra todos los permisos y abre solo los que necesite. Cuatro, escribe el cuerpo con

[23:24] rol, proceso, reglas y formato de respuesta. Cinco, si repite un procedimiento, sácalo a una skill. Y seis, pruébalo. Mira qué hace y ajusta. Un truco, si funciona con todo cerrado, ábrelo permiso a permiso. Al revés, nunca sabrás que sobraba. Cerremos con el recorrido. Un agente es un bucle con herramientas y la topología es un coste que solo pagas si una evaluación te lo demuestra. El contexto es el recurso escaso. Carga bajo demanda, compacta y guarda fuera. MCP A2A, agents.md y

[23:57] Skills te dan estándares abiertos donde invertir. La seguridad es arquitectura. Aplica la regla de dos. Y antes de añadir un segundo agente, pregúntate si un único agente bien diseñado ya lo resuelve. Empieza simple, mide y entonces escala. Nos vemos en el siguiente
