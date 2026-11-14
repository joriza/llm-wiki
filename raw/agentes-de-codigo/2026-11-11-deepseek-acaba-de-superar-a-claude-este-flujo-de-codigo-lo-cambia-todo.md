# DeepSeek acaba de SUPERAR a Claude este flujo de código lo cambia TODO

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=L6TrE8f3kpE)
- **Canal**: Cognix
- **Publicado**: 2026-11-11
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:56

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Deepsik acaba de lanzar un método llamado superagente y arregla el mayor problema de trabajar con varias sesiones de cloud code. Lo curioso es que la solución que casi todos usan es justo lo que según Deepsic causa el problema y lo probaron. Con su configuración las tareas más lentas terminaron casi el doble de rápido que sin ella. Así que lo armamos nosotros mismos en Cloud Code y construyó nuestras funciones solo, avisándonos únicamente cuando necesitaba algo. Incluso encontró y arregló un

[00:31] error en nuestra app sin que se lo pidiéramos. Si es la primera vez que nos ves, somos una empresa de software y en este video vamos a repasar qué hizo Deepsek y a explicar cada paso en detalle para que vos también puedas armarlo. Cuando construimos con Cloud Code, solemos trabajar con varias sesiones a la vez, cada una con una tarea distinta y para manejarlas tenemos que estar saltando de una a otra para ver qué está haciendo cada una. Según Deepsic, ese salto constante es justamente el problema. Dicen que una

[01:02] persona solo puede seguirle el rastro a unas tres a cinco sesiones al mismo tiempo. Pasado ese número, empezas a olvidarte de qué sesión hace qué y perdés tiempo tratando de averiguar qué estaba haciendo cada una. Por eso crearon el superagente. En lugar de manejar muchas sesiones, trabajas con un único agente al que le das todas tus tareas. Así nunca tenés que acordarte de qué sesión hace qué. La forma en que ellos lo ejecutan es como un agente que corre siempre en la nube con el que se

[01:31] habla a través de chats de equipo y GitHub. Pero como nosotros usamos Cloud Code para todo nuestro trabajo, tomamos las mismas ideas y las armamos ahí. Pero antes de seguir, sería genial que te suscribas al canal y le des a la campanita. Este pequeño gesto de apoyo vale muchísimo para nosotros. Ahora, para armar un sistema donde un solo agente maneje todas tus tareas, Deepsik primero tuvo que resolver cómo repartir las tareas entre agentes. Si todo pasa por una sola sesión, esa sesión conoce

[02:01] todas las tareas, pero solo puede trabajar en una a la vez y los detalles de todas se mezclan. Y si cada tarea tiene su propia sesión, se terminan más rápido, pero volvés a tener que saltar de una a otra. Entonces dividieron el trabajo entre dos tipos de agentes. El primero es el enrutador, que básicamente es la sesión con la que hablás. Su único trabajo es hablar con vos y repartir las tareas a otros agentes. El segundo tipo son los trabajadores, los agentes que realizan las tareas, cada uno en su

[02:32] propia ventana de contexto para que los detalles de distintas tareas no se mezclen. Cuando un trabajador termina, le avisa al enrutador y el enrutador te cuenta cómo salió la tarea. Esto puede sonarte conocido como un agente líder que reparte tareas a sus suagentes, pero funciona distinto. Un agente líder toma una tarea y la divide en pasos más chicos para sus subagentes y Deepsik dice que eso es muchísimo trabajo para el líder. El enrutador, en cambio, no divide la tarea en pasos. Su único

[03:02] trabajo es llevar el control de lo que hacen los trabajadores y asignarles tareas. Ahora quizás pienses que no necesitas algo así y que alcanza con decirle a tu sesión normal de Cloud Code que delegue tareas en subagentes. Y eso es exactamente lo que pensó Deep Sigek.

[03:19] También probaron cinco veces cada opción, una sola sesión que podía lanzar subagentes contra su sistema de enrutador y trabajadores. Ganó el enrutador con trabajadores. Su tarea más lenta tardó 15,7 minutos, mientras que la sesión única tardó 29,5, casi el doble. Eso pasa porque la sesión única seguía haciendo el trabajo ella misma. Entonces cada mensaje nuevo la interrumpía, incluso cuando se le indicaba usar subagentes, muchas veces no los usaba y seguía haciendo todo por su cuenta. En cambio, en su sistema, el

[03:53] enrutador no hacía nada del trabajo, así que nada interrumpía a los trabajadores. Dipsik dice que una sola sesión está haciendo dos trabajos a la vez, hablar con vos y hacer el trabajo. Por eso separaron esos dos trabajos. Así cada agente se concentra en lo suyo y rinde mucho mejor. Para armarlo vos mismo, necesitás tener algunas cosas listas antes de darle cualquier tarea. Como los trabajadores nunca hablan con vos, cada trabajo tiene que estar escrito con claridad antes de que el enrutador lo

[04:25] reparta. Así, ninguna gente tiene que frenar a preguntarte algo. Por eso, lo primero que configuramos fueron los tickets. Para eso, podés crear una skill que escriba tickets parecida a la que mostramos en nuestro video anterior. Un ticket es básicamente una función escrita completa para que un agente pueda construirla sin preguntarte nada.

[04:45] La skill guarda cada ticket en su propia carpeta con el nombre de la función y dos archivos adentro. El primero es prb.md, MD que dice qué tiene que hacer la función con todos los detalles. El segundo es eval.md, que indica cómo el agente comprueba si el trabajo está bien hecho. O sea, este archivo le dice al si está construyendo la función de la manera correcta. Y el archivo skill.md MD. Guarda todos los pasos que la skill tiene que seguir. Primero divide tu pedido en funciones y después te hace

[05:17] preguntas hasta que no quede nada poco claro. Así no queda nada que el agente tenga que preguntarte o adivinar. Este es uno de los pasos más importantes porque deja cada función bien definida antes de empezar a trabajar. Una vez hecho eso, guarda cada ticket en la carpeta de tickets dentro de la carpeta de especificaciones con un número delante del nombre, que es el ID del ticket. Para usarla, simplemente ejecutas el comando de la skill en el agente que uses y le contás qué querés

[05:46] construir y convierte lo que pediste en tickets. En nuestro caso teníamos un archivo PRD con todas las funciones que habíamos planeado para la app. Entonces, le pedimos que convirtiera esas funciones en tickets y se puso a trabajar. Primero nos hizo un montón de preguntas y después recorrió la appunaba.

[06:05] Cuando terminó, había creado todas las carpetas de tickets. Cada carpeta tenía un archivo PRD D y cada ticket arrancaba como borrador. Adentro el archivo enumeraba todo lo que la función tenía que hacer, las partes de la app que iba a cambiar y las que no debía tocar.

[06:22] También enumeraba cada decisión que se había tomado sobre la función. Al lado, el archivo de evaluación tenía cómo se harían las comprobaciones junto con las pruebas que la función debía pasar para considerarse funcional. También cubría los casos raros que podían salir mal y terminaba con lo que significa terminado para esa función, para que el agente supiera exactamente cuándo había acabado. En nuestro caso, creó 19 tickets junto con un archivo board.md en la carpeta de tickets. Ese archivo es

[06:53] básicamente un tablero que muestra en qué estado está cada función, si sigue en borrador, lista para construirse o terminada. El tablero también tiene una columna de modo y cada ticket está en modo solo o en modo equipo. Equipo significa que los agentes que trabajan en ese ticket se van a comunicar entre sí porque forman parte de un equipo de agentes. El modo equipo usa la función de equipos de agentes de Cloud Code, que es experimental y se activa con el ajuste de equipos de agentes en el

[07:23] archivo settings. Jason dentro de la carpeta de Cloud. Y si usas otro agente, simplemente pedile que use subagentes para los tickets de equipo. Un ticket solo va directamente a un subagente. La única diferencia es que los subagentes no pueden hablar entre sí como los agentes de un equipo. Entonces, las funciones que no necesitan ese ida y vuelta pueden correr en modo solo. Y la última columna es la de ejecución, que indica si un ticket puede correr al mismo tiempo que los otros o si tiene

[07:52] que esperar a que otro termine. Los tickets marcados como paralelos son los que pueden correr por su cuenta. Los demás llevan el número del ticket que están esperando junto con el motivo. Entonces, la función que quieras construir tenés que marcarla como lista.

[08:08] Eso cambia el estado de borradora a listo y desde ahí queda lista para que la tomen y la construyan. Una vez que un ticket está marcado como listo, alguien tiene que pasárselo a un agente y en el sistema de deepsek, ese es el enrutador.

[08:22] Entonces, para repartir los tickets listos, creamos un agente llamado Router. Este agente supervisa todo el trabajo, reparte las tareas a los agentes correctos y los mantiene trabajando juntos, pero sus instrucciones le indican claramente que no escriba nada porque su único trabajo es dirigir a los otros agentes. lo frenamos con instrucciones en lugar de quitarle las herramientas. Eso es porque los compañeros de equipo en Cloud Code reciben las mismas herramientas que la sesión que los inició. Entonces, si el

[08:53] router no pudiera escribir, su equipo tampoco podría. usa el modelo Opus y le pusimos el esfuerzo en alto porque el router es quien inicia a todos los demás agentes. Deepsek hace lo contrario y ejecuta su enrutador con un modelo más liviano porque descubrieron que el trabajo del enrutador es más simple de lo que parece. Sus instrucciones también incluyen los detalles de cada agente que tenemos y qué hace cada uno. Así sabe a quién entregarle cada tarea. Y como el router revisa el trabajo el mismo, vos

[09:22] no tenés que hacerlo. Cuando un trabajador dice que terminó, el router abre sus resultados y los compara con la evaluación del ticket. Entonces, solo te consulta cuando hay una decisión que tomar. Y si el resultado de un trabajador necesita arreglos, el router le devuelve la corrección a ese mismo trabajador que todavía recuerda todo sobre el ticket. También sigue una lista fija de pasos y lo primero que hace es iniciar el Watch Dog. El Watch Dog es básicamente otro agente que creamos que

[09:51] corre en segundo plano y usa Sonet con esfuerzo medio. También lo configuramos para que reduzca su memoria cuando llega a 150,000 tokens, que es muchísimo menos que la ventana de contexto completa de estos modelos. Lo hicimos porque no necesita tanta ventana de contexto y solo estaríamos gastando nuestro límite de uso si le diéramos el contexto habitual de 1 millón. El trabajo del Watch Dog es vigilar a los otros agentes para que no se queden atrapados en bucles ni se vayan por el camino

[10:19] equivocado. Entonces, si un agente está tardando demasiado en una tarea o no está funcionando bien, el Watch Dog lo detecta y se lo avisa al router. El router solo se entera de un problema cuando un trabajador se lo cuenta.

[10:33] Entonces, sin el Watch Dog, un agente que se queda callado nunca sería detectado. Cada 10 minutos, el Watch Dog ejecuta un pequeño script que lista los problemas que encuentra. Así que incluso si dos agentes se quedan trabados esperándose mutuamente, el Watch Dog lo detecta. El trabajo de verdad lo hace un agente trabajador que toma un ticket y trabaja en él. Configuramos al trabajador con Sonet en lugar de Opus porque el ticket ya explica exactamente qué construir y Sonet puede manejarlo.

[11:04] De esa forma, cada subagente que lanza no consume tu uso y no llegas al límite demasiado pronto. Entonces, con el router, el Watchdog y el trabajador configurados, ya podemos empezar a construir. Para eso, simplemente abrís cloud code con el agente router, lo hacés escribiendo cloud, después el flag de agente seguido del nombre del router.

[11:25] También tenés que poner el modo de permisos en automático para que el router no te pida permiso todo el tiempo. Cuando ejecutas este comando se abre la sesión de Cloud Code, pero corriendo como el agente router que creamos. Entonces, simplemente le das el ticket con el que querés arrancar escribiendo su número en el prompt. Y antes que nada inicia el Watch Dog que corre en segundo plano y vigila a cada uno de los otros agentes. Empezamos con el primer ticket porque era un ticket de

[11:52] equipo. El router inició tres agentes, cada uno trabajando en una parte distinta. A partir de ahí, los tres agentes trabajan por su cuenta a menos que necesiten que vos tomes una decisión. Y eso fue exactamente lo que pasó. Cuando uno de nuestros agentes necesitó que eligiéramos, el router vino con dos opciones y una vez que elegimos le pasó nuestra decisión a la gente para que siguiera trabajando. Mientras trabajan los agentes escriben sus notas sobre el ticket en la carpeta de ese

[12:21] ticket. Eso incluye el contrato, que es el plan en el que todo el equipo se puso de acuerdo, junto con los resultados y las capturas de pantalla como prueba. Pero cada agente trabajador escribe cada cambio en su propio árbol de trabajo separado, que básicamente es una segunda copia de tu proyecto en su propia rama.

[12:40] Entonces, el código de cada árbol de trabajo tiene que juntarse en un solo lugar y ahí entra un agente llamado Merger. El merger hace eso combinando el trabajo de distintos árboles de trabajo en la rama principal de tu proyecto. Así que cuando el equipo terminó, el router inició el merger. Después de eso, inició un agente llamado Checker que revisa las funciones ya combinadas. El checker prueba esas funciones en el navegador para asegurarse de que funcionan bien.

[13:08] Una vez que se combinó el primer ticket, pudieron arrancar los siguientes. El tablero decía que los tickets número dos y seis esperaban al primero y ambos estaban marcados como listos. Entonces el router tomó esos dos y le dio a cada uno su propio agente trabajador y los dos empezaron a trabajar al mismo tiempo. Además de eso, tenemos algunos otros agentes que trabajan por su cuenta. El primero es el agente reproductor que repite los pasos que causaron un error para verlo ocurrir de

[13:37] nuevo. Si el arreglo es pequeño y puede resolverlo, lo arregla solo en su propia rama y si no puede, te entrega un informe. También hay un agente tester que se encarga de las pruebas. Ejecuta pruebas en el navegador con agent browser, la herramienta de Versel que permite que un agente abra tu app en un navegador real y haga clic por todo. El que debe iniciarlo es el trabajador y el tester le avisa al trabajador si algo anda mal.

[14:03] Y mientras se construyen los tickets, si aparece algún problema que rompe parte de la app, interviene el agente reproductor. Primero, usa agent browser para encontrar qué causa el problema y qué podría solucionarlo. Después prueba el arreglo en el navegador para asegurarse de que funciona y luego se lo cuenta al router. Este sistema de router y trabajadores cuesta más que una sola sesión. Cada trabajador tiene su propia ventana de contexto, así que correr varios usa muchísimos más tokens que una

[14:33] sola sesión. Deepsek vio lo mismo en su prueba y esos tokens extra les dieron tareas que terminan más rápido con menos tareas lentas. En nuestra prueba, el router estuvo abierto aproximadamente una hora y en esa hora construyó tres tickets. El ticket de equipo corrió durante 26 minutos antes de que lo detuviéramos y lo combináramos. Después, los dos tickets solos corrieron al mismo tiempo y tardaron 11 y 17 minutos. Pero la mayor ganancia se ve en la calidad de la app que se construyó y en tener que

[15:05] manejar menos sesiones. No tuvimos que llevar el registro de qué hacía cada agente y el router lo manejó todo muy bien. Lo único que hicimos fue marcar como listas las funciones que queríamos construir y dejar que se encargara del resto. Hay una parte que no armamos y es que la versión de Deepsek corre en la nube, así que sigue trabajando aunque tu notebook se duerma. Si querés acceder a tu configuración desde cualquier lado, podés usar las sesiones remotas que te permiten controlar la sesión de cloud

[15:34] code de tu computadora desde tu celular o desde otro navegador. O podés usar una app gratuita y de código abierto que te deja ver cómo están tus agentes desde el celular. Eso nos lleva al final del video. Si querés apoyar el canal y ayudarnos a seguir haciendo videos como este, podés hacerlo suscribiéndote a Cognits. Como siempre, gracias por ver el video y nos vemos en el próximo.
