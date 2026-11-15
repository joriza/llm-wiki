# Google Harness 2: Cómo Crear Agentes de IA que Aprenden Solos (Sin Reentrenar el Modelo)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Rrwnak3RRIw)
- **Canal**: InzideTech
- **Publicado**: 2026-10-21
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina por un segundo que contratas al empleado más brillante del mundo. Tiene un doctorado [música] en matemáticas, habla 50 idiomas, sabe programar en cualquier lenguaje y ha leído prácticamente todo internet. El primer día le pides que revise un contrato legal o que arregle un error complejo en el código de tu empresa y falla. Comete un error de principiante porque no sabía cómo usar una herramienta interna. Pero aquí viene lo verdaderamente frustrante. Al día siguiente le das una tarea casi idéntica

[00:29] y vuelve a tropezar exactamente con la misma piedra. No aprendió absolutamente nada de su error de ayer. Esa es la realidad secreta de casi todos los agentes de inteligencia artificial que existen hoy. Tienen un cerebro gigantesco, pero sufren de amnesia operativa. Están atrapados dentro de una camisa de fuerza rígida que algún programador escribió hace meses. Pero hace apenas unos días Google Cloud AI Research, junto con investigadores de la Universidad de Northwestern, publicaron

[00:57] en código abierto algo que cambia por completo las reglas del juego. Se llama Harness 2 o Harness al cuadrado y en menos de 2 semanas ya ha acumulado más de 14,200 estrellas en GitHub por una razón muy simple. Es el primer sistema capaz de hacer que un agente de inteligencia artificial reescriba sus propias instrucciones, cree sus propias herramientas, modifique su memoria y evolucione su forma de trabajar en tiempo real sin tocar ni una sola neurona del modelo base. Y lo más loco

[01:26] de todo, sin que nadie le diga cuál es la respuesta correcta. En los próximos minutos vas a descubrir qué es exactamente Google Harness 2, cómo funciona por dentro su arquitectura de doble recursión, explicada de forma tan visual e intuitiva que nunca se te va a olvidar, por qué está batiendo récords en tareas profesionales y cómo puedes probarlo tú mismo hoy, gratis en tu computadora. Pero quédate hasta el final porque también hay un detalle crítico sobre seguridad y costos ocultos en este

[01:54] repositorio de Google que casi nadie está mencionando y que necesitas conocer antes de encenderlo. Empecemos por la pregunta más básica, pero que el 90% de la gente confunde. ¿Qué significa realmente la palabra harness en inteligencia artificial? En español, harness significa arnés o armazón. Para entenderlo al instante, imagina a Tony Stark. Tony Stark por sí solo es un genio, pero si lo sueltas en medio de una batalla sin nada más, no puede volar, no tiene radar y no puede

[02:22] levantar un autobús. Lo que convierte a Tony Stark en Iron Man es la armadura que lo rodea. En la inteligencia artificial ocurre exactamente lo mismo. El modelo de lenguaje, ya sea Gemini 3.5 Flash, Claude o GLM5, es solo el cerebro dentro del frasco. Si le haces una pregunta de texto, te responde con texto. Pero para que ese modelo se convierta en un agente autónomo que investiga en la web, edita hojas de cálculo, ejecuta código y entrega proyectos completos, necesita una armadura alrededor. Esa armadura de

[02:55] software es el arnés. Hasta ayer, toda la industria estaba obsesionada con dos cosas. O gastaban cientos de millones de dólares entrenando un cerebro más grande, o ponían a miles de ingenieros humanos a ajustar a mano los tornillos de la armadura escribiendo flujos fijos.

[03:11] El problema de los flujos fijos es lo que los científicos de Google llaman el problema del mundo abierto. Cuando diseñas un agente en tu oficina, no tienes ni idea de qué documento extraño, qué página web rota o qué base de datos caótica se va a encontrar dentro de tres semanas en el mundo real. Cuando un agente tradicional se topa con algo imprevisto, entra en bucle, alucina o se rinde. Aquí es donde entra Google Harness 2. La premisa de Google es brillante. Si no podemos reentrenar los

[03:39] pesos del modelo en cada tarea nueva, porque es carísimo y lentísimo, ¿por qué no dejamos los pesos del modelo totalmente congelados y hacemos que el propio sistema modifique y optimice su armadura en caliente mientras trabaja?

[03:52] Pero cuidado, porque cuando la gente escucha esto suele pensar, "Ah, entonces el agente solo cambia su propia prompt y ya está." No, y aquí empieza la verdadera magia técnica. Google descompuso [música] toda la armadura del agente en ocho piezas modulares independientes, ocho archivos vivos que el sistema puede abrir, reescribir, [música] combinar o descartar en pleno vuelo.

[04:14] Vamos a recorrer estas ocho piezas como si abriéramos el capó de un coche de Fórmula 1. La primera pieza es el system prompt, el prompt del sistema. Es la brújula mental del agente, cómo razona y cómo estructura sus planes antes de actuar.

[04:28] La segunda pieza son los guardrails, las barreras de seguridad y control de calidad, como la lista de chequeo de un piloto antes de despegar. El agente puede escribirse nuevas reglas estrictas, como prohibido entregar un reporte financiero sin antes verificar que las sumas de todas las columnas cuadren exactamente a cero.

[04:46] La tercera pieza es la memoria. En tareas largas, los agentes normales llenan su ventana de contexto de basura y olvidan lo importante. Con Harness 2, el agente modifica cómo resume, filtra y guarda su propia memoria de trabajo para recordar solo lo vital.

[05:03] La cuarta pieza es la guía de herramientas o tool guidance. Si el agente nota que cada vez que usa un buscador con consultas largas, la herramienta falla, edita su propio manual de herramientas y deja una nota técnica para sí mismo, indicando cómo llamarla sin desperdiciar tokens.

[05:20] La quinta pieza son los subagentes. Si la tarea es demasiado compleja para una sola mente, Harness 2 puede crear en el acto subagentes especializados. Por ejemplo, un subagente auditor cuya única misión sea buscar agujeros legales en el borrador que el agente principal acaba de redactar.

[05:36] La sexta pieza son las skills o habilidades. Son manuales de procedimientos paso a paso, recetas modulares que el agente inventa para resolver subtareas específicas y deja guardadas para el futuro. La séptima pieza son los scripts. Los modelos de lenguaje suelen fallar haciendo cálculos repetitivos o leyendo formatos raros a ojo. En lugar de adivinar, Harness 2 escribe un script real en Python o consola, lo guarda en su cinturón de herramientas y lo ejecuta para procesar datos con precisión

[06:06] matemática del 100%. Y la octava pieza son los plugins de middleware. Son programas interceptores colocados dentro del bucle de herramientas. Cada vez que la gente una acción o recibe un dato, el plugin lo intercepta automáticamente para limpiar entradas, validar salidas o bloquear errores antes de que lleguen al modelo.

[06:25] Ocho componentes completos, desde su personalidad y sus reglas de seguridad hasta la creación de subempleados digitales y programas en Python hechos a medida. Pero aquí surge la pregunta del millón. Si le damos a una inteligencia artificial el poder de reescribir sus propias reglas y herramientas en medio de una tarea que nunca antes había visto y nadie le da la hoja con las respuestas correctas, ¿cómo sabe el agente si los cambios que hizo en su armadura lo hicieron más inteligente o si en

[06:53] realidad lo empeoraron todo? Presta mucha atención a los próximos dos minutos porque este es el corazón de la investigación de Google y se llama el bucle propose, probe, compose. En español, proponer, sondear y componer.

[07:07] Representa el primer nivel de recursión, la recursión a nivel de tarea. Funciona así. Supongamos que le pides al agente analizar 20 documentos de una fusión empresarial y redactar un informe de riesgos antimonopolio. No existe un botón mágico que le diga si su respuesta es un 10. Paso cero. El agente intenta hacer la tarea con su armadura básica original. Tarda bastante, tropieza al leer varios archivos PDF complejos y entrega un primer borrador. Toda esa grabación de lo que hizo y qué entregó

[07:37] se guarda como la ejecución de referencia. Ahora entra el primer paso del bucle: propose, proponer. Un agente editor analiza con lupa esa grabación de referencia para detectar dónde tropezó y en lugar de hacer una sola apuesta a ciegas, propone dos mejoras completamente distintas por separado.

[07:55] Primero, crea un candidato invariante o general que solo corrige fallos universales de agencia, como mejorar la planificación inicial o evitar repetir comandos rotos. Segundo, crea un candidato de dominio específico enfocado al 100% en el problema actual. En nuestro ejemplo, inyecta reglas de derecho antimonopolio y un script en Python para extraer tablas de contratos legales. Con las dos propuestas listas, pasamos al segundo paso: prove, sondear o probar.

[08:24] El sistema toma esos dos nuevos arneses candidatos y los pone a ejecutar exactamente la misma tarea bajo las mismas condiciones. Es como abrir dos universos paralelos. En el universo A, corre el agente con mejoras generales.

[08:38] En el universo B, corre el agente especializado en derecho. Cuando ambos terminan, nadie tiene la hoja de respuestas del examen, pero tenemos algo igual de poderoso llamado contraste conductual. El sistema compara las tres grabaciones lado a lado.

[08:53] Observa que en el intento original el agente falló seis veces al extraer tablas de los PDF, mientras que en el universo B, gracias al nuevo script, extrajo todas las tablas al primer intento en 3 segundos. Pero también nota que en el universo B el agente descuidó el formato final, mientras que en el universo A la estructura del informe quedó impecable gracias al nuevo planificador. Con esa evidencia empírica, llegamos al tercer paso: compose, componer.

[09:21] El compositor actúa como un cirujano jefe. Mira las diferencias de código y las pruebas reales de ejecución y fusiona selectivamente solo las piezas ganadoras. Toma el [resoplido] planificador del candidato general, toma el script lector de contratos del candidato de dominio, descarta las reglas que causaron regresiones y ensambla un superarnés refinado con el que entrega el trabajo final. Ahora, quiero hacerte una pregunta rápida a ti que estás viendo el video. Si tuvieras presupuesto extra para que este agente

[09:51] resuelva el problema más difícil de tu negocio, ¿qué estrategia elegirías? ¿Mandar a varios equipos a probar ideas distintas al mismo tiempo o mandar a un solo equipo a perfeccionar su idea paso a paso varias veces seguidas? En Harness 2 puedes elegir cualquiera de las dos con el parámetro llamado presupuesto K.

[10:11] Si eliges la recursión paralela, el sistema lanza múltiples candidatos generales y de dominio al mismo tiempo. Genera varias composiciones y un selector anónimo elige el mejor entregable. La recursión paralela explora a lo ancho. Si eliges la recursión secuencial, el sistema encadena varias rondas sucesivas de proponer, sondear y componer, donde cada ronda hereda la armadura mejorada y toda la evidencia de la ronda anterior. La recursión secuencial refina a lo profundo. Pero ¿qué pasa cuando el

[10:40] agente termina esa tarea y mañana llega un trabajo nuevo? ¿Acaso vuelve a empezar desde cero? No. Y aquí entra el segundo nivel de recursión que le da el nombre de Harness al cuadrado, la recursión a nivel de harnessing. Cuando termina una tarea, el sistema actualiza un improvement harness, un arnés de mejora continua. Guarda todos los componentes, scripts y habilidades que demostraron funcionar en una biblioteca persistente y escribe lecciones respaldadas por evidencia en un archivo

[11:08] llamado experience.md, anotando por qué funcionó cada cambio y cuándo volver a usarlo. Así, en la tarea número 10 o 50, el agente ya tiene un cinturón lleno de herramientas probadas y experiencia acumulada. De hecho, Google demostró que cuando transfieres esta biblioteca de experiencia de un benchmark a otro distinto, el agente sigue mejorando su rendimiento.

[11:29] Veamos los números reales del paper oficial. Manteniendo totalmente congelados los pesos de Gemini 3.5 flash y GLM 5 y usando los ejecutores Open Code y Codex con Claude Opus 4.8 como editor, los enfrentaron a tres pruebas profesionales durísimas.

[11:45] En Work Body Bench, que evalúa trabajo de oficina, web y código, un solo paso de Harness 2 disparó el puntaje hasta 11.5 puntos por encima del agente base. En Lab, el benchmark de agentes legales, la tasa de aprobación subió hasta 11.8 puntos porcentuales. Y en Job Bench, de tareas profesionales multidisciplinares, logró hasta 4.5 puntos de mejora inmediata en el primer paso, escalando aún más al aumentar el presupuesto K.

[12:12] ¿Cómo puedes probar Google Harness 2 hoy mismo en tu computadora? El código está en GitHub bajo licencia libre Apache 2.0 e incluye una demostración local que corre en 2 minutos sin gastar un centavo en claves de API. Solo necesitas Linux, Python 3.12 y el gestor de paquetes V, creas el entorno virtual, instalas el paquete y ejecutas el comando Harness 2-demo, indicando la carpeta de salida y un presupuesto K igual a 2. Al terminar, se creará la carpeta runs, donde podrás explorar los resúmenes de cada tarea,

[12:43] los arneses adaptados, las diferencias de código y las notas de reflexión del agente. Y si quieres conectarlo a modelos reales en Vertex AI para correr Work Body, Job Bench o Lab, solo necesitas Node 20 o superior, Google Cloud CLI y herramientas como Docker o Pandoc, según la prueba. Usando la bandera dry run para previsualizar tus tareas antes de gastar en llamadas a la API. Pero antes de terminar, aquí están las dos advertencias críticas que prometí revelarte al inicio. La primera

[13:10] es el costo de cómputo en tiempo de prueba. Como Harness 2 ejecuta la tarea base, luego sondea a múltiples candidatos y finalmente compone la versión final, consume varias veces más tiempo y tokens que un agente simple. No lo uses para preguntas triviales, úsalo en misiones complejas donde la calidad del resultado justifica la inversión y donde puedas aprovechar su biblioteca de aprendizaje para futuras tareas. La segunda advertencia es de seguridad. Por defecto, el acceso a internet de los

[13:36] ejecutores viene sin restricciones, y el ejecutor de Codex corre con el sandbox desactivado para poder instalar paquetes y correr scripts libremente. Eso significa dos cosas. Primero, en evaluaciones públicas, debes restringir la red para que la gente no busque las respuestas del examen en internet. Y segundo, jamás ejecutes un agente que escribe y corre [música] su propio código sin sandbox, directamente en tu computadora personal. Hazlo siempre dentro de un contenedor Docker aislado

[14:05] [música] o en una máquina virtual segura. Lo que Google acaba de demostrar con Harness 2 cambia nuestra forma de ver la inteligencia artificial. [música] Estamos pasando de la era del prompt engineering manual a la era del automated harness engineering, donde el modelo pone el potencial bruto, pero es la evolución continua de su armadura la que convierte ese potencial en maestría real.

[14:26] Déjame saber aquí abajo en los comentarios a [música] qué tarea de tu trabajo pondrías a iterar primero a un agente con Harness 2. Y si te entusiasma o te inquieta [música] que los agentes empiecen a reescribir sus propias herramientas sin intervención humana.

[14:40] [música] Si este análisis te aportó valor, suscríbete al canal, activa las notificaciones y comparte este video. Nos vemos en el próximo.
