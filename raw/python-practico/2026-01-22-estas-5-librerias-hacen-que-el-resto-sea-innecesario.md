# Estas 5 librerías hacen que el resto sea INNECESARIO

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=F9_iusp2b2Y)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-01-22
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:39

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Estoy cansado. Cansado de escribir la misma lógica de validación en cada proyecto. Cansado de configurar salary por décima vez para una tarea que debería ser simple. Cansado de tener archivos de configuración desperdigados por todo el proyecto que solo funcionan en mi máquina. Y después de 4 años construyendo backend en Python, me di cuenta de algo que nadie me dijo cuando empecé. El 80% del código que escribes no es lógica de negocio, es plomería.

[00:23] Autenticación, validación, colas, configuración, serialización, los mismos problemas, los mismos patrones, los mismos bug una y otra vez. Así que va a ser la última semana investigando qué librería están usando los desarrolladores que realmente entregan proyectos rápidos, no las que todos conocen, salvo un par, las que realmente eliminan componentes enteros del backend. Y encontré cinco que cambiaron completamente cómo estructuro mis proyectos. Antes de mostrarte las librerías, necesitas entender por qué

[00:51] esto importa. Cuando empiezas con Python, generalmente te enseñan flash, te dicen, "Es minimalista, es flexible, tú controlas todo." Y eso suena genial hasta que tienes que validar un JSON que viene de una API. Entonces, escribes 40 líneas de código verificando tipos, rangos, formatos de email y cuando algo falla, el error que le muestras al usuario es un desastre. Luego necesitas guardar eso en una base de datos.

[01:12] Entonces, creas un modelo de SQL Alchimy. Pero espera, también necesitas un esquema de Pidantic para la API. Ahora tienes dos clases que representan lo mismo y cada vez que cambias un campo tienes que acordarte de cambiarlo en dos lugares. Después el cliente te pide que ciertos procesos corran en segundo plano. Entonces investigas Celeri. 3 horas después sigues leyendo documentación sobre brokers, workers y configuraciones que no entiendes. ¿Te suena familiar? Esto es lo que llamo

[01:37] código de plomería. No aporta valor al negocio, pero sin él nada funciona. Y la pregunta es, ¿por qué seguimos reescribiéndolo? Y la primera librería que necesitas conocer es Pedidanting. Me imagino que muchos de los que siguen mi canal ya la conocen, pero si eres nuevo y quizás no la conoces, es muy importante que lo hagas. Ya antes que digas, "Ya conozco Pidantic", déjame mostrarte lo que realmente reemplaza.

[01:58] Mira este código con estas solo cinco líneas de código acabamos de reemplazar validación de request, coersión de tipos, serialización, desearización, programación defensiva y la mayoría de los errores de tipo runtime. Si el email no tiene formatos válidos, Pidantic te lo dice. Si la edad es negativa o mayor a 130, te lo dice. Si alguien manda un string donde esperabas un número, pidanting intenta convertirlo automáticamente.

[02:23] Y aquí viene lo importante, la versión dos que salió hace poco y ya va por la versión 2.2. 12, si no me equivoco. Está escrita internamente en RAS, que es entre 5 y 50 veces más rápida que la versión anterior, pero la velocidad no es lo más valioso. Lo más valioso es que defines el contrato de tu sistema en un solo lugar y todo lo demás, ya sea la validación, la documentación, los errores, se genera de forma automática.

[02:44] Si tú recibe datos y no estás usando Pidantic, estás construyendo sobre arena. Y esto nos lleva a Fasapi, en donde Flash nos enseñó cómo funcionan los framework web. Pas nos muestra cuánto código realmente no necesitamos escribir. Mira, con estas líneas de código acabamos de crear soporte asíncrono, inyección de dependencia, validación automática con Pidantic, documentación Open Appi, genera automáticamente parsing the request, serialización de respond con tipos seguros, sin código pegamento, sin

[03:12] decoradores apilados seis niveles de profundidad solo Python haciendo lo que Python hace mejor. Y hoy en el 2026 Pasa es uno de los frameworks más rápidos de Python, comparable a Note JS y GO para cargas de trabajo y O. Además empresas como OpenI, Antropic y Microsoft lo están usando en producción, o sea, no son empresas chiquititas.

[03:34] Ahora, algunos me van a preguntar sobre Light Start, que es un framework más nuevo que en que en BCH en benchmark, perdón. Incluso es más rápido que Pidanti y sí, es impresionante, pero Fasapi tiene un ecosistema mucho más masivo, mucho más maduro, una documentación mucho más excelente y una comunidad enorme. Entonces, para el 90% de los proyectos va a ser la elección correcta. La mayor parte de la complejidad del backend desaparece cuando tu framework deja de pelear contra ti. Pero si tenemos validación y

[03:59] los http resueltos, ¿qué pasa con la base de datos? Y aquí es donde la cosa se pone interesante y ya no olvidamos la librería que siempre menciono. ¿Recuerdan lo que dije sobre mantener dos modelos, uno para Pidante y otro para SQL Alquem? Bueno, el creador de Fasapi pensó lo mismo y creó SQL Model.

[04:14] Mira esto. Aquí hay una sola clase, la una única fuente de verdad. Esta clase es un modelo de Pidante y al mismo tiempo es un modelo de SQL Alchemy. Acabas de reemplazar modelos de ORM, DTO, esquema de validación, mapeadores de datos. En un proyecto reciente, esto me permitió reducir mi capa de modelos de más de 1000 líneas a menos de 300 líneas. Es increíble. Y obviamente sin perder expresividad. y lo mejor que ya soporta SQL Alchim 2.0 y Pidanti versión 2, además con Así en el road Map. ¿Y qué

[04:44] significa esto? Bueno, menos código, obviamente significa menos lugares donde los book pueden esconderse. Además, SQL está diseñado, pero SQL Model está diseñado para los casos de uso más comunes. Para casos más complejos, puedes mezclar SQL Model con SQL Alchemí puro, no estás atrapado. Okay, tenemos los datos validados y persistido, pero ¿qué pasa con las tareas en segundo plano? Cellery es poderoso, Cellery también es pesado, complejo y fácil de configurar mal. Y aquí viene Dramatic

[05:12] que te da tareas en segundo plano sin convertir tu backen en una tesis de sistemas distribuidos. Con estas líneas de código, listo, ejecutas un worker y funciona perfectamente. Acabamos de reemplazar la infraestructura de tareas de en background, la lógica de reintentos, el manejo de colas y la gestión de workers. Además, el diseño de Dramatic evita por defecto muchos de los problemas comunes de Celeric. Bueno, ahora seamos claros, si necesitas workflow empresariales complejos como

[05:38] esperas a que estas cinco tareas terminen, luego agrega los resultados y luego envía un mail, Cellery sigue siendo la mejor opción. Además tiene canvas, tiene todo, ¿okay? Pero si no necesitas cada feuture bajo el sol, dramatic es probablemente la elección correcta para la mayoría de tus proyectos. Además, los benchm más recientes, Dramatic junto a Way y Taskic son casi 10 veces más rápidos que otras opciones como RQ. Solo nos falta un problema por resolver, que es el fin del

[06:03] caos de la configuración. La mayoría de los backend mueren lentamente en su capa de configuración. Archivos. NB, variables de entorno, valores hardcordeados, secret esparcidos por todos lados, funcionan en mi máquina. Es básicamente el sistema de configuración mal manejado. Dynacomf centraliza toda la lógica de configuración. Con estas líneas de código ya tenemos cambios de entorno, development, staging, producción, casting de tipo automático, separación de seclet, valores por

[06:28] defecto que realmente tienen sentido y soporte para bol y redits para secretos. Además, los bugs de configuración son los más difíciles de debugear porque no fallan ruidosamente. Dynacov los hace explícito. Además, ya va por la versión 3.2 más o menos que soporta los formatos TO ml, los jam, los Jason, los ini, incluso hasta archivos de Python y tienen extensiones nativas para flags y diango, por si acaso. Mira, la complejidad del back no viene de problemas difíciles, viene de reescribir

[06:54] problemas ya resueltos, pero mal. Cada librería que te mostré hoy reemplaza cientos de líneas de código, categorías enteras de book y carga mental por la que nadie te paga. Los mejores desarrolladores de Python no son los que escriben más código, escriben menos código con mejor apalancamiento. Si tu Ban se siente pesado, lento, frágil, probablemente no es tu arquitectura, son tus import, así que tienes que elegir mejores. Pero nada de este importa la verdad y sigues vendiendo tu tiempo como

[07:19] un comodity. Puedes conocer todas estas librerías, dominarlas, ser más rápido que el 90% de los desarrolladores y aún así competir por el precio contra miles de freelancer que cobran $5 la hora. El problema no es técnico, es de posicionamiento.
