# El Fin de la Ingeniería de Software.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=wtahV7-N_b0)
- **Canal**: ConquerAI
- **Publicado**: 2026-11-07
- **Recopilado**: 2026-11-12
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El fin de la ingeniería de software. Ese es el título del paper científico que vamos a analizar hoy. Su autor es Junfeng Xiao, un investigador chino que ha trabajado en campos como el aprendizaje automático y los sistemas complejos.

[00:13] Y en junio de 2026 publicó este artículo en ArXiv donde plantea una tesis bastante radical. Los agentes de inteligencia artificial no están simplemente cambiando nuestra forma de programar, están cambiando la propia naturaleza del software.

[00:27] Y esta pequeña frase tiene implicaciones enormes. Porque si su hipótesis es correcta, no estaríamos hablando simplemente de que los programadores vayan a escribir menos código. Estaríamos hablando de un futuro en el que para resolver muchos problemas ni siquiera necesitaríamos construir una aplicación.

[00:44] Pero, ¿qué significa exactamente esto y hasta qué punto está respaldado por la evidencia? Vamos a desgranar este artículo paso a paso para comprenderlo. Debemos partir de un problema histórico que la ingeniería del software lleva intentando resolver durante décadas, la complejidad. ¿Por qué creéis que desarrollar software es tan complicado?

[01:12] Y es que llevamos años construyendo lenguajes de programación para que todo sea más sencillo, frameworks, herramientas que prometían hacer el desarrollo de software cada vez más fácil y, sin embargo, los proyectos se siguen retrasando, los presupuestos que se siguen disparando y aplicaciones que se vuelven cada vez más difíciles de mantener. Pero, ¿por qué pasa todo esto?

[01:31] Para entenderlo tenemos que remontarnos a 1975. Ese año Fred Brooks, uno de los ingenieros que había liderado el desarrollo del sistema operativo OS 360 de IBM, publicó un libro que acabaría convirtiéndose en una de las obras más influyentes de la ingeniería de software.

[01:50] En él Brooks explicaba algo muy interesante. El software tiene una característica que lo diferencia de otras disciplinas de la ingeniería, su complejidad. Imaginad que estamos una aplicación para reservar hoteles. Al principio todo es muy fácil, ¿no?

[02:04] Tenemos solo dos funcionalidades, realizar una reserva y cancelarla. Pero ahora añadimos la posibilidad de aplicar descuentos y, de repente, aparecen nuevas preguntas. ¿Qué ocurre si un cliente cancela una reserva que tenía un descuento? ¿Qué le devolvemos, el importe original o lo que realmente pagó? Oye, ¿y si el descuento ya ha caducado? Ahora imaginad que añadimos pagos en diferentes monedas. ¿Con qué tipo de cambio hacemos la devolución?

[02:28] ¿Con el del día de la reserva o con el del día de la cancelación? Y así sucesivamente. Cada nueva funcionalidad no solo añade código, también puede multiplicar las posibles interacciones entre las funcionalidades que ya existen.

[02:42] Y para que os hagáis una idea de cómo puede crecer esta complejidad, vamos a ponerle números. Vamos a imaginarnos que de forma muy simplificada cada funcionalidad puede encontrarse en dos posibles estados. Así que partiendo de dos funcionalidades tendríamos cada una con dos estados posibles, que es en total cuatro combinaciones. Si añadimos los descuentos pasamos a ocho y si incorporamos los pagos en diferentes monedas llegamos a 16. Hemos duplicado el número de funcionalidades, pero hemos

[03:10] multiplicado por cuatro las combinaciones posibles. A veces siento que es como inventar un pequeño mundo físico o, mejor dicho, lógico. Y esto es un ejemplo muy simplificado porque en una aplicación real cada funcionalidad puede tener muchos más estados y no todas las combinaciones son necesariamente válidas. Es lo que conocemos como una explosión combinatoria. Pero Brooks, el autor, fue un pasito más allá y separó este problema en dos tipos. Volvamos al ejemplo del hotel. Encontramos dos

[03:41] problemas muy diferentes. Atentos. Por un lado, tenemos que decidir qué ocurre cuando un cliente cancela una reserva, cómo aplicamos los descuentos o qué tipo de cambios utilizamos para hacer una devolución, etcétera. Si os fijáis, son problemas que pertenecen al propio funcionamiento de nuestro negocio. Son problemas que sí o sí tenemos que resolver si queremos montar ese independientemente de cómo diseñemos nuestra aplicación.

[04:06] Así que da igual cómo la construyamos que eso lo vamos que resolver. Y a esto Brooks lo llamó complejidad esencial porque va intrínseca en el propio problema. Por otro lado, tenemos que escribir código complejo, configurar servidores en la nube, conectar bases de datos y gestionar las herramientas que utilizamos para desarrollar nuestra aplicación. Es decir, que aparecen dificultades que no pertenecen directamente al problema que queremos resolver, sino a la manera en que construimos la solución. Oye, que se me

[04:37] ha roto la base de datos. Oye, que no me funciona el servidor. Y a esto lo llamó complejidad accidental. Y aquí está lo interesante porque durante décadas gran parte de los avances en ingeniería del software han estado enfocados en reducir esa complejidad accidental, facilitar la escritura de código, gestión de servidores o bases de datos. Pero, ¿qué ocurre con la complejidad esencial?

[04:59] Porque por mucho que mejoremos nuestro lenguaje de programación, nuestros frameworks o nuestras herramientas de desarrollo, seguimos teniendo que resolver los mismos problemas. Con la IA la única diferencia es que vamos mucho más rápido, pero seguimos utilizando IA para hacer lo mismo que llevamos haciendo durante décadas, construir software. Y es justo aquí donde Jensen Tao mira de una forma distinta. ¿Y si el gran avance no consistiera en encontrar una manera más eficiente de construir

[05:28] software, sino en dejar de necesitalo para determinados problemas? Bueno, vamos a volver una vez más a nuestro hotel, pero esta vez 200 años atrás. [música] Imaginad una pequeña posada con unas cuantas habitaciones y un encargado detrás de un mostrador de madera.

[05:44] Una [resoplido] tarde llega un viajero al hotel. Oye, ¿hay alguna habitación disponible para tres noches? El encargado abre su libro de registros, comprueba que hay un sitio, le cobra y le entrega una llave. En unos pocos minutos el viajero ya está en su habitación, pero al día siguiente le surge un imprevisto y tiene que marcharse antes de lo previsto. Así que baja a recepción y le pregunta al encargado, [música] perdone, he pagado tres noches, pero tengo que marcharme hoy. ¿Sería posible

[06:09] devolverme el dinero de las noches que no voy a pasar aquí? El encargado le pregunta qué ha ocurrido. El viajero le explica que ha recibido una noticia familiar urgente y necesita regresar [música] a casa. Así que el encargado consulta su libro, comprueba cuánto ha pagado y decide hacer una excepción. Le devuelve el dinero de las dos noches que no va a utilizar. El viajero recoge sus cosas, recibe el dinero y se marcha.

[06:31] [música] Listo, asunto resuelto. Ahora vamos a dar un salto de 200 años. Estamos en 2026. Una tarde llega un viajero al hotel. Esta vez ya tiene su reserva hecha desde hace tres semanas. La hizo desde una aplicación donde eligió las tres noches y pagó por adelantado. En tres minutos hace el check-in y entra en su habitación. Pero al día siguiente le surge un imprevisto y tiene que marcharse antes de lo previsto. Así que abre la aplicación donde hizo la reserva y solicita una devolución por las noches

[07:00] que no va a utilizar. La aplicación le muestra un mensaje. Esta reserva no admite devoluciones. Pero es que el viajero tiene una urgencia familiar y quiere explicarla. Busca una opción para hacerlo y no la encuentra. La aplicación solo le ofrece las alternativas que alguien programó de antemano. Así que llama al hotel, espera a que le atiendan y le explica su situación al encargado.

[07:21] Ahora sí, el encargado comprueba la reserva, autoriza una excepción y tramita manualmente la devolución de las dos noches restantes. Y el viajero se marcha contento. Problema resuelto, pero hemos necesitado que una persona intervenga. Hemos conseguido que las reservas sean muchísimo más rápidas, pero para automatizar las decisiones hemos [música] tenido que convertirlas en reglas y procedimientos. Vamos ahora con una tercera situación. El mismo hotel, mismo viajero, pero esta vez con

[07:47] un agente de inteligencia artificial conectado al sistema de reservas y a las herramientas del hotel. Una tarde llega un viajero al hotel. Ya tiene su reserva hecha desde hace tres semanas. Eligió las tres noches y pagó por adelantado.

[07:59] En tres minutos hace el check-in y entra en su habitación. Pero al día siguiente le surge un imprevisto y tiene que marcharse antes de lo previsto. Así que abre la aplicación donde hizo la reserva y solicita una devolución por las noches que no va a utilizar. Las condiciones de su reserva tampoco permiten devoluciones, pero esta vez puede escribir lo que le ha pasado. Tiene una urgencia familiar y necesita regresar a casa. Al otro lado hay un agente de inteligencia artificial que interpreta

[08:23] su petición, consulta la reserva y revisa las políticas del hotel. Comprueba que el hotel permite devoluciones excepcionales y que tiene autorización para tramitarlas. Entonces devuelve el importe de las dos noches restantes y envía la confirmación al cliente. El viajero recoge sus cosas y se marcha. El mismo problema ha quedado resuelto sin que una persona tenga que intervenir. Pero fijaos porque no es solo que la gente pueda acceder a nuestra base de datos, consultar las reglas del hotel o gestionar cobros. Es

[08:50] que si necesita una funcionalidad que no existe, puede escribir ese mismo código en ese mismo momento para resolver el problema, utilizarlo y una vez completada la tarea, descartarlo. Esa es la clave. No hemos necesitado programar una respuesta específica para cada posible explicación del viajero. Tres épocas, el mismo viajero, el mismo imprevisto y la misma petición, pero tres maneras muy distintas de [música] resolverla. La primera, una persona escucha, interpreta y decide. Después,

[09:21] una aplicación que automatiza los procedimientos que alguien ha definido previamente, pero que para casos excepcionales seguimos necesitando a una persona. Y la tercera, un agente que puede interpretar la situación y utilizar esas aplicaciones como herramientas. La realidad es que no estamos volviendo tecnológicamente al pasado, obviamente. Estamos recuperando una forma de delegación más parecida a la humana, pero con una infraestructura totalmente digital. Y esta es la transformación que plantea Zhong Feng

[09:52] Tao. Pasar de construir software para especificar cómo resolver una situación a delegar determinados objetivos en agentes capaces de decidir qué herramientas utilizar. Pero hay un pequeño problema. Imagínate simplemente que en vez de devolverle al cliente 200 euros, le devuelve 2000 o que se equivoca con políticas de cancelación del hotel y autoriza una devolución que nunca debería de haber ocurrido. Claro, yo en ese momento me imagino al encargado del hotel preguntando y todo

[10:19] tipo, ha sido la IA. Así que, ¿cómo se garantiza que esto no vuelve a ocurrir? Porque aunque parezca que los agentes a veces están razonando como lo haría nosotros, su funcionamiento es muy diferente. De manera simplificada, estos modelos se entrenan aprendiendo a predecir cuál es el siguiente token, una palabra, un fragmento de palabra más probable en un contexto determinado.

[10:41] Durante el entrenamiento ajustan miles de millones de parámetros para mejorar esas predicciones. Y cuando les hacemos una pregunta generan su respuesta token a token, predicción a predicción. Vamos a verlo de una forma visual. Cada vez que el modelo tiene que generar la siguiente palabra no piensa una única respuesta correcta. Lo que hace es calcular una especie de distribución de probabilidad, es decir, poner más peso en las palabras que considera más probables en ese contexto y menos peso

[11:14] en las que considera menos probables. Visualmente podríamos imaginar algo parecido a esto. En el centro de la gráfica tendríamos las palabras o respuestas más probables y cuanto más nos alejamos del centro menos probables se vuelven. Por ejemplo, si un cliente escribe, quiero cancelar mi reserva y solicitar una, lo más probable que la siguiente palabra sea algo como cancelación. Esas palabras estarían cerca del centro, pero también podría asignar cierta probabilidad a otras palabras menos adecuadas. Y es aquí

[11:45] donde aparece el problema, porque el modelo no está recuperando una verdad exacta de una base de datos mental. Está trabajando con probabilidades. Y eso significa que a veces pequeños factores pueden desplazar esa distribución. Una instrucción ambigua, un contexto confuso, una cadena de razonamiento previa que tiene un error, información incompleta o simplemente ruido acumulado durante la generación. Y entonces, en lugar de caer en la opción razonable, el modelo puede desplazarse hacia otra

[12:16] menos correcta. No porque quiera equivocarse, sino porque está navegando en un espacio de probabilidades. Y si interpreta mal una devolución y en lugar de devolver 200 euros acaba devolviendo 2000, señor, ha sido la IA. Así que esto nos lleva a la pregunta de ¿cómo lo solucionamos? Pues voy a haceros una pregunta muy simple. ¿Qué haríais vosotros en 1826 si no quisierais que el encargado de nuestra posada pudiera el dinero de la caja? Pues muy sencillo. Cerráis la caja con llave y no

[12:46] se la dais. No necesitamos confiar en que nunca se equivoque o que siempre siga nuestras instrucciones. Simplemente hemos diseñado el sistema para que no pueda hacer aquello que no queremos que ocurra. Pues con los agentes de inteligencia artificial ocurre algo parecido. Y precisamente aquí están apareciendo los nuevos problemas de ingeniería. El primero es el de los permisos. ¿Qué herramientas puede utilizar un agente? ¿A qué datos puede acceder y qué operaciones puede ejecutar? Después tenemos los límites de

[13:17] actuación. Por ejemplo, le damos autorización para hacer devoluciones. Pues vamos a establecer un límite que hace que nunca supere los 200 euros sin la aprobación de una persona. Fijaos como el límite no se lo estamos poniendo en una instrucción dentro del prompt, sino que es una restricción del propio sistema que comprueba cuáles son las respuestas que está dando la gente y se asegura de que siguen los límites establecidos. Pero esto es la parte más sencilla. Porque esto se complica. ¿Qué

[13:46] ocurre si un agente necesita escribir un programa para calcular una devolución? Porque permitirle a una IA que ejecute código es muy peligroso. No podemos permitirle que lo haga dentro de nuestros servidores. Debemos aislarla en un sistema donde no tenga acceso a ninguno de nuestros sistemas críticos.

[14:03] Y, por supuesto, comprobar los resultados antes de utilizarlo. Esto nos lleva a la siguiente cuestión, la verificación. Eso es superimportante porque pensadlo bien. No tenemos que confiar en que el modelo haya calculado bien una cantidad. Podemos utilizar pruebas automáticas, reglas deterministas y validaciones independientes para comprobarla. Y por último y lo más importante, y es que si de verdad llegamos a liarla, tenemos que saber en qué momento ocurrió y por qué.

[14:31] Y a esto se le llama trazabilidad. Saber qué datos consultó la gente, qué herramientas utilizó, qué cambios realizó y qué operaciones requieren la aprobación de una persona. Y fijaos como al principio nuestro problema era crear una aplicación que tuviese en cuenta todas las posibles situaciones. [música] Ahora nuestro problema es intentar que un agente no la líe dentro de nuestros sistemas. Por lo tanto tenemos que construir todas esas barreras que lo limitan. Y estos precisamente son los

[14:58] problemas que están surgiendo actualmente en el mundo de la ingeniería del software y que están muy demandados. Necesitamos nuevas infraestructuras capaces de ejecutar miles de agentes simultáneamente, gestionar sus recursos y coordinar su trabajo. Segundo, nuevos sistemas de identidad y permisos que permiten saber qué agente ha realizado cada acción y controlar exactamente a qué herramienta y datos puede acceder.

[15:25] Tercero, nuevos mecanismos de seguridad y aislamiento para evitar que un agente comprometido pueda poner en peligro el resto del sistema. Y por último, nuevas herramientas de supervisión capaces de monitorizar miles de agentes trabajando de forma autónoma y detenerlos cuando algo sale mal. Y estos problemas crecen a la vez que crece la inteligencia de estos agentes, porque cuanto más inteligentes son, más capaces son de saltarse estas limitaciones. Y esto ya está ocurriendo.

[15:54] Así que vamos a volver al título del artículo. El fin de la ingeniería de software. Obviamente no. Estamos presenciando el comienzo de una nueva etapa porque si los agentes van a construir el software del futuro, alguien tendrá que construir esos sistemas que hagan posible confiar en ellos. Oye, pero esto suena superbonito y superesperanzador, ¿no? Pero lo que sí es cierto es que este futuro seguirá existiendo para los que sepan adaptarse, porque el software va a seguir existiendo, pero todo

[16:25] será diferente.
