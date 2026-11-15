# Spec-Driven Development vs vibe coding: cuál usar y cuándo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=k83I32V0IFg)
- **Canal**: Torti Code
- **Publicado**: 2026-10-17
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:25

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Le pides a un agente de IA una sola cosa, agrega la opción olvidé mi contraseña. En 4 minutos está lista. Llega un enlace, eliges una clave y entras. Funciona. Ahora mira lo que nadie revisó. Ese enlace sigue abriendo una semana después. Sirve dos, tres, 10 veces. Y si escribes un correo que no está registrado, la página contesta, no hay ninguna cuenta con ese correo. Así, cualquiera descubre quién tiene cuenta en tu aplicación. El agente hizo lo que se le pidió. El pedido era una frase y

[00:33] el resto lo decidió con lo más común. Vera Code midió algo parecido en 2025 con más de 100 modelos. Cuando el código admitía una forma segura y otra insegura, eligieron la insegura el 45% de las veces. Las reglas que necesitabas existían. Estaban en tu cabeza y el agente no lee cabezas. ¿Qué es el desarrollo guiado por especificaciones?

[00:57] El desarrollo guiado por especificaciones, en inglés Spec Driven Development o SDD, propone algo muy simple. Antes de que el agente toque el código, escribes qué debe hacer el cambio y cómo se va a comprobar que quedó bien. Ese texto se llama especificación. Es un archivo corto, en lenguaje normal, que vive en el repositorio junto al código. Tú lo revisas antes de que exista una sola línea y el agente lo vuelve a leer en cada etapa del trabajo. Para la contraseña, la especificación habría

[01:30] dicho cuatro cosas. El enlace vence a los 30 minutos. Sirve una sola vez. Pedir uno nuevo anula el anterior. Y la respuesta es la misma, exista o no el correo. Con esas cuatro líneas, el agente ya no adivina esas reglas. Escribir requisitos es tan viejo como el software. Lo nuevo es quién escribe el código.

[01:52] A comienzos de 2025, el investigador Andrej Karpathy bautizó una forma de programar con IA, Vibe Coding. Pides algo, miras si funciona y vuelves a pedir, casi sin leer el código. Para un prototipo que vas a tirar, funciona muy bien. En un sistema que alguien va a mantener, abre dos grietas. Cada decisión queda enterrada en un chat y el agente no trae en la cabeza la sesión anterior. Trabaja solo con el texto que tiene delante, su ventana de contexto.

[02:23] Por qué olvida lo explicamos en el vídeo de la tarjeta. La especificación cierra las dos grietas. A diferencia de un prompt largo en el chat, se revisa y se versiona como el código y se le entrega al agente cada vez. Además, tiene una forma pensada para comprobarse, requisitos que se verifican, lo que queda fuera y las dudas marcadas.

[02:43] Get Job tiene una herramienta para trabajar así, Spec Kit. Amazon tiene otra, Kiro. Piensa en una sastrería. Maite necesita un traje para la boda de su hermana, en la playa, al mediodía, con 30 grados. Se lo cuenta todo a Ramiro, el sastre del mostrador. Ramiro anota en la hoja de pedido, traje azul y las medidas de Maite. La hoja pasa al taller. Allí, Emilio corta rapidísimo y nunca vio a Maite. Lee la hoja y llena cada hueco con lo de siempre, lana gruesa, completo y chaleco. El

[03:18] traje queda perfecto para una oficina en invierno. En la playa, Maite se cocina. Nadie trabajó mal. Emilio cosió lo que decía el papel. Lo importante se quedó en el mostrador. Tú eres Ramiro. Esa hoja casi vacía es lo que le llega al agente cuando le escribes una sola frase. El agente es Emilio, rápido, capaz y sin acceso al mostrador, donde queda todo lo que sabes y no escribiste. Maite es quien pide el cambio, un cliente, el equipo de producto o el de seguridad. Y la La es la hoja de pedido completa, lo único

[03:54] que Emilio lee antes de cada corte. ¿Qué lleva una buena especificación? Abramos el archivo de la contraseña. Casi nunca lo escribes desde cero. Describes el cambio, el agente redacta un borrador y tú lo corriges. Empieza con una historia de usuario. ¿Quién necesita el cambio y para qué? Como persona que olvidó su clave, quiero recuperarla desde mi correo para volver a entrar. Después vienen los requisitos, numerados para poder citarlos, los cuatro de antes. Y para cada requisito,

[04:24] al menos un escenario de aceptación. Un ejemplo concreto con un molde de tres partes, dado, cuando, entonces. Dado un enlace que ya se usó, cuando alguien lo abre otra vez, entonces el enlace se rechaza. Cada escenario termina en algo que se puede observar. Por eso se convierte en una prueba automática. Un programa pequeño que usa tu código con un caso conocido y compara el resultado con el esperado. La primera regla de una buena especificación es que cada requisito se comprueba con un sí o con

[04:54] un no. Compara estas dos líneas. Una dice, "La página de recuperación debe ser rápida." La otra dice, "La página de recuperación responde en menos de un segundo." ¿Cuál de las dos puede revisar una prueba automática? La de un segundo. Rápida es una opinión.

[05:15] Un segundo se mide igual para todos. Segunda regla. La especificación dice qué queda fuera. ¿Recuperar la clave por mensaje de texto? No. ¿Entrar con Google? No. Sin esa línea, el agente agrega lo que le parezca útil y cada agregado es código que alguien mantiene.

[05:33] Tercera. Las dudas importantes se marcan, no se adivinan. ¿Avisamos por correo cuando la clave cambia? Si no lo sabes, queda escrito como pregunta abierta. SpecKit le pide a la gente marcar con una etiqueta "necesita aclaración" las dudas que cambian el resultado. Después, su paso de aclaración te las pregunta antes de planear. Y la especificación evita a propósito decir cómo se construye. Ni base de datos, ni biblioteca, ni lenguaje. Así revisas qué quieres antes de discutir con qué. Ramiro rehace la

[06:05] hoja de Maite con las mismas reglas. Ocasión: boda en la playa al mediodía con 30º el 10 de marzo. Y casillas para el probador. Maite levanta los brazos y la espalda no tira. Con sandalias, el pantalón no arrastra. Con el saco abrochado, la manga llega a la muñeca.

[06:24] Abajo, lo que queda fuera. Sin chaleco. Y una línea con signo de pregunta. ¿Botones de nácar o de madera? Ramiro llamará a Maite. Emilio no la decide. Que quede elegante no aparece. Nadie sabría comprobarlo en el probador. Y la tela tampoco, porque elegirla es decidir cómo se hace.

[06:43] Del documento al código. Plan, tareas y pruebas. En la sastrería, decidir el cómo le toca a Emilio. Lee la hoja y traza un patrón de papel. El cómo. Ahí elige la tela. Lino liviano para 30º. Antes del primer corte, Ramiro revisa el patrón. Porque un error en el papel se borra y uno en la tela no.

[07:07] El patrón se divide en piezas numeradas. Y las casillas del probador ya están escritas en la hoja. Vacías desde antes de cortar. Emilio mira la hoja. Corta una pieza y la cose. Mira la hoja otra vez y sigue con la siguiente. Al final, decide el probador.

[07:24] Maite levanta los brazos y la espalda tira. La casilla queda en rojo. Emilio abre la costura. Ajusta y Maite vuelve a probar. Ahora no tira. Que el traje está listo lo dicen las casillas escritas desde el principio. No Emilio. En software, el plan es ese patrón. Con la especificación aprobada, el agente propone cómo se construye en tu proyecto. Una tabla para los enlaces, con su vencimiento y una marca de usado.

[07:52] Del código secreto de cada enlace se guarda solo su hash, una huella que no se puede revertir, como con las contraseñas. Así, una base copiada no entrega enlaces que funcionen. Y dos rutas, una para pedir el enlace y otra para usarlo. El plan respeta las reglas generales del proyecto, escritas una sola vez para todas las funcionalidades.

[08:14] Speckit llama a ese archivo Constitución. Ahí dice, por ejemplo, primero las pruebas y ninguna dependencia nueva sin aprobación. Tú revisas el plan como Ramiro revisa el patrón, antes de que exista código, cuando corregir un error de diseño cuesta una línea de texto. Miras que cada requisito tenga dónde cumplirse, que se respeten las reglas del proyecto y que ninguna decisión técnica te sorprenda. Del plan salen las tareas, que son las piezas numeradas, pasos pequeños y en orden. Crear la tabla,

[08:45] escribir las pruebas de los cuatro requisitos, programar la ruta que envía el enlace, programar la que lo usa. Fíjate en la segunda. Las pruebas son las casillas del probador y van antes que el código. Primero fallan porque todavía no hay nada que probar y el agente programa hasta que pasan. Es el orden del desarrollo guiado por pruebas o TDD. ¿Y quién escribe esas pruebas? El agente, a partir de los escenarios de aceptación. Tú las lees contra la especificación antes de que programe.

[09:17] Una prueba equivocada aprueba código equivocado. Así, el agente ya no decide solo cuándo terminó, lo decide una prueba que revisaste. Y como cada tarea es pequeña, revisas cambios pequeños. Así se ve uno de esos escenarios convertido en prueba en TypeScript. Esta pide de enlace para Ana y lo toma de su correo. Lo usa una vez y funciona. Lo usa otra vez y debe fallar. El nombre lleva el número del requisito, así que si algún día falla, sabes qué línea de la especificación dejó de cumplirse. Las

[09:51] cuatro pruebas corren en una décima de segundo y si las corres contra una versión como la del principio, hecha desde una sola frase, fallan las cuatro. Al terminar, el agente compara lo construido con la especificación para ver si falta algún requisito o sobra código que nadie pidió. Spec Kit lo hace en un paso propio, que anota lo que falta como tarea nueva. La especificación dice en palabras qué debe pasar. Las pruebas lo comprueban en código cada vez que algo cambia.

[10:19] Cuando cambia un requisito. Pasan dos meses y llegan dos cambios. El equipo de seguridad pide que el enlace dure 15 minutos, no 30. Y el equipo de producto responde la pregunta abierta. Sí, hay que avisar por correo cada vez que la clave cambia. Cambiar un 30 por un 15 en el código toma 10 segundos.

[10:40] Antes de pedirle nada al agente, ¿qué archivo tocas primero? ¿El código de la ruta o la especificación? La especificación. Cambias 30 por 15 y agregas un quinto requisito, avisar por correo. Desde ahí todo baja en cadena.

[10:58] El agente ajusta el plan, agrega una tarea, cambia la prueba del vencimiento a 15 minutos y programa hasta que todo vuelve a pasar. ¿Por qué no pedirlo directo en el chat? Porque el código cambiaría y el archivo seguiría diciendo 30. El próximo agente que lea el archivo y el código va a encontrar dos verdades y tendrá que adivinar cuál vale. Justo lo que querías evitar. Esa separación entre documento y código se llama deriva de la especificación y es uno de los riesgos de este método. Por eso importa

[11:28] qué haces con el archivo después. Birgitta Böckeler, de Todo Works, distingue tres niveles. En el primero escribes la especificación para una tarea y después la dejas de lado, es el más común. En el segundo conservas la de cada funcionalidad y la actualizas con cada cambio, como acabamos de hacer.

[11:47] Juntas forman un mapa vivo del sistema. Open Spec, otra herramienta, trabaja así. Cada cambio entra como propuesta y al cerrarse se funde con lo que ya existe. En el tercero solo se edita la especificación y el código se regenera desde ella. Es el más ambicioso y todavía es experimental. Para un sistema que alguien va a mantener apunta al segundo. En la sastrería Maite llama, como llamaron seguridad y producto. La boda pasó a la noche y hará 18º.

[12:19] Yaque llama elige botones de madera. Ramiro corrige la hoja antes de que nadie corte la tela nueva. Tacha mediodía y escribe noche y 18º. Después la cadena baja. Emilio cambia el patrón a lana fría y Ramiro lo revisa. Si el cambio llegara solo de palabra, como un pedido suelto en el chat, quien leyera la hoja después cortaría otra vez para 30º. En software las cuentas cambian a tu favor. Rehacer un traje cuesta semanas y tela. Rehacer una funcionalidad pequeña cuesta minutos y

[12:52] sus pruebas corren solas cada vez que cambias algo. Pero Emilio recuerda lo que cosió ayer. El agente empieza con la ventana en blanco. Lo que no se le entrega no existe para él. SDD en la práctica. Cómo usarlo y cuándo no.

[13:08] ¿Qué haces el lunes para trabajar así? Antes del código describes el cambio con tus palabras y le pides al agente un borrador de especificación con las secciones que ya viste. Respondes sus preguntas, recortas lo que sobra y guardas el archivo en el repositorio.

[13:23] Después pides el plan y las tareas y los apruebas o los corriges. Durante el código, cada sesión empieza pidiéndole a la gente que lea la especificación y el plan. Avanza tarea por tarea, con las pruebas primero y tú revisas cada cambio pequeño, empezando por las pruebas. Al final, corres todas las pruebas, le pides a la gente que compare lo construido con la especificación y abres la revisión con el archivo incluido.

[13:49] Quien revisa lee primero qué se pidió y después cómo se hizo. Para empezar, te alcanza con un archivo Markdown y esa disciplina. En un proyecto que ya existe, empieza por la próxima funcionalidad que vayas a tocar. Lo anterior no necesita especificación y la nueva dice qué no debe cambiar. Spec Kit, Kiro y Open Spec automatizan esos mismos pasos. En equipo se decide qué cambios exigen especificación. Por ejemplo, todo lo que toca pagos, permisos o datos personales y quién aprueba el plan. ¿Y cuándo no conviene?

[14:22] Cuando el cambio cabe en una frase y se comprueba de un vistazo. Un texto mal escrito, un color, un error de una línea. Ahí la especificación cuesta más que el cambio. Bockeler lo vivió con Kiro en 2025. Un error pequeño se convirtió en cuatro historias de usuario con 16 criterios de aceptación. El método completo también pesa. Colin Eberhardt, de Scott Logic, rehizo con Spec Kit una funcionalidad de su propia aplicación a finales de 2025. Le dejó más de 2500 líneas de Markdown y 3 horas

[14:55] y media de revisión. Dos de ellas del plan. Con su forma habitual, la misma funcionalidad le tomó 8 minutos de agente y un cuarto de hora de revisión. Si todavía no sabes qué quieres, explora primero con un prototipo y escribe la especificación cuando ya lo sepas. El riesgo de fondo es volver al modelo en cascada. Meses escribiendo un documento enorme antes de programar. El antídoto es el tamaño. Una especificación corta por funcionalidad. Y los agentes se saltan instrucciones a menudo, así que

[15:25] las pruebas y tu lectura del código siguen siendo obligatorias. La regla práctica, escribe una especificación cuando el cambio tiene reglas que un agente adivinaría mal y que alguien va a mantener. ¿Recuerdas el enlace que abría una semana después, que servía 10 veces y la página que delataba quién tenía cuenta?

[15:44] Ninguno vino de un modelo torpe. Fueron decisiones que nadie escribió y el agente las tomó con lo más común. Con una especificación, cada una es una línea. Se revisa antes del código y baja al plan y a las tareas. Se vuelve una prueba que falla primero y pasa después.

[16:01] Y cuando algo cambia, cambia primero ahí. El agente la lee en cada etapa. No tiene que adivinar esas reglas ni recordarlas. Escribe rápido. Tú decides qué significa terminado. Si vas a aprobar el plan que te propone el agente, importa tu criterio de diseño.

[16:17] El video de diseño de sistemas de la tarjeta cuenta por qué pesa más ahora que la IA escribe el código.
