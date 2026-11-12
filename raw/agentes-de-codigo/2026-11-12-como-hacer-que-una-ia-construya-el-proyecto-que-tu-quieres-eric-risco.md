# Cómo hacer que una IA construya el proyecto que tú quieres

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=4hzSdtikHNs)
- **Canal**: Eric Risco | Inteligencia Artificial
- **Publicado**: 2026-11-03
- **Recopilado**: 2026-11-12
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:46

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hace meses que no miro el código. Y es que cuando estás construyendo aplicaciones con inteligencia artificial y agentes, llega un momento en el que producen tantos cambios y de una forma tan rápida que no puedes ni revisarlo.

[00:13] Con varias aplicaciones en marcha, las revisiones se me están acumulando y si todas tienen que pasar por mí y tengo que reconstruir cada decisión que toman mal, el cuello de botella sigo siendo yo. Mi objetivo sigue siendo poder delegar la mayor parte del trabajo a los agentes, delegarles toda esta toda auto darles toda esta autonomía y necesito poder confiar en que lo que acepto estará bien y básicamente concentrarme en las decisiones importantes del proyecto.

[00:47] En los vídeos anteriores os he ido prometiendo que quería y que estoy construyendo un proyecto bastante ambicioso que se llama RSC Factory, que es para poder crear fábricas de código y fábricas de inteligencia artificial para crear cualquier cosa. Y es que el proyecto se ha vuelto más complejo de lo que me pensaba y eh le di mucha autonomía a un agente de código para que lo construyera.

[01:09] Me pasé mucho tiempo, hace una semana, explicándole muy detalladamente qué es lo que quería conseguir. Es decir, básicamente estuve durante varias horas hablando con el agente de código para que me escribiera las specs de una forma súper súper súper detallada. Básicamente estaba utilizando spec driven development porque este era un desarrollo que necesitaba verificación, que necesitaba ir paso a paso y que, bueno, básicamente siguiera las especificaciones que yo le iba dando.

[01:36] La realidad es que acabé con más de 12 specs, ¿vale? Cada una atacando a una de las funcionalidades que quería que tuviera el RSC Factory y básicamente le di total autonomía. Le dije, mira, escribí barra goal, que es un comando que tienen la mayoría de los agentes de código y que van siguiendo con van construyendo y siguen con el objetivo, básicamente es como darle un objetivo muy fijo y le dije, mira, el tu objetivo es una spec, crear una rama, crear un worktree, trabajar en la spec y hasta

[02:05] que no se cumplan todas las especificaciones de la spec, no has acabado. Subes cuando has acabado, mergeas con main y sigues con la la siguiente spec, así, paso a paso. El Goals estuvo más de 8 horas construyendo y lo que me encontré fue un auténtico Frankenstein. Y algunos me diréis, oye, pero cómo te puedes fiar de que un agente de código vaya a hacer bien el trabajo sin que tú estés en ningún momento del loop. Pues ahí me basé en que la gente de código o que el trabajo de la gente de código era

[02:35] suficientemente bueno siempre y cuando pasara los test. En el Spec Driven Development que está in dentro de RSC Harness, lleva en la fase de implementación es aquí os pongo el esquema del del lo que sigue como SDD el agente de código, y es que en la fase de implementación, básicamente las tareas se despliegan en varios subagentes y cada uno de estos subagentes coge las tareas que le haya dicho la especificación y cada una de ellas tiene que pasar test de, o sea, básicamente escriben el test, no lo pasa y luego

[03:06] hace, no acaba hasta que ese esa función o lo que está haciendo pase el test. La realidad es que después de 8 horas me había generado más de 4500 test. Pues nada más lejos de la realidad, me encontré con una plataforma en la que le he apodado un auténtico Frankenstein.

[03:22] Básicamente, al probarlo, me encontré con un conjunto de soluciones, por decirlo de alguna manera, que se alejaban de lo que le había pedido. Había asumido bastantes cosas, básicamente cosas que yo no le había dicho y que quedaban como gaps dentro de las decisiones que teníamos que tomar y él asumió un montón de ellas. Había omitido muchos requisitos alegando problemas de seguridad y había añadido comportamientos que yo no había solicitado.

[03:54] Y aquí os cuento una para que entendáis lo que os estoy diciendo. Básicamente, yo le dije, mira, a RSC Factory nos vamos a conectar con Cloud Code, Codex, Antigravity, el agente de código que sea para poder crear fábricas y nos vamos a conectar mediante MCP, mediante un token o mediante Oauth. Básicamente para que entendáis, lo que yo le estaba pidiendo es que nos queremos conectar por MCP con una contraseña, que sería por token o con Oauth donde el el agente de código generaría una URL, nosotros daríamos

[04:19] click, nos conectaríamos a la plataforma y eso devolvería un token Oauth a la al MCP que se conecta desde Cloudcode. La realidad, cuando fui a probar esto, es que me encontré una complejidad añadida que yo no había pedido y es que él montó directamente descartó el token porque era inseguro desde su punto de vista, luego eh usó Oauth, pero con un código QR de por medio que yo no había pedido, o sea, básicamente en la URL generaba una página que se abría en un navegador, luego tenías que leer ese QR

[04:53] con la típica aplicación de Google Authenticator o LastPass Authenticator y tal y luego con eso le dabas el código a la aplicación y así te dejaba conectar. Que ojo, la seguridad había aumentado, pero era algo que yo no le había pedido y que él en pro de la seguridad tomó esa decisión sin que yo pudiera decir nada porque básicamente le di el goal de resolver las especificaciones que yo le había dicho.

[05:16] Y ahí es cuando me di cuenta que darle simplemente que pase los test como tarea no es suficiente porque al final el agente de código tenía como goal solucionar eso, se puso como una máxima de que la aplicación fuera supersegura porque bueno, al final las aplicaciones tienen que ser seguras y eso es un must.

[05:33] Yo sigo convencido de que se le puede dar total autonomía a los agentes de código, son lo suficientemente buenos y tiene que haber la manera de poder darles las una tarea de largo alcance como puede ser crear una plataforma desde cero totalmente con agentes de inteligencia artificial siempre y cuando como programador o como creador de la plataforma nosotros le podamos dar las funcionalidades que queremos y que él no se salte ninguna de las partes. Para que me entendáis, darle la métrica de que

[06:01] solo tiene que pasar los test no es suficiente para que un agente de inteligencia artificial llegue a la solución o llegue a darte una plataforma totalmente hecha porque entre medio hay muchas decisiones que tiene que tomar y que te necesita a ti cuando se encuentra con ese dilema. Y es que al final he decidido cambiar mi forma de trabajar.

[06:19] Quiero que la autonomía del agente de código incluya demostrar el resultado. Antes de aceptar una funcionalidad, necesito saber que el requisito se está cumpliendo, cómo lo está comprobando y qué es lo que queda pendiente para realizar. Una explicación detallada sigue siendo bastante útil, pero además necesito que el proceso sea capaz de detectar cuándo eh se aparta de la de lo que yo le he explicado que tiene que cumplir. Y es que en este artículo que ha escrito Anthropic hablan de que la

[06:49] revisión debe acompañar la fase de implementación. Básicamente dicen que el agente debe comprobar y corregir antes de entregar cualquier cambio a una persona. Y la atención humana se debe de centrar o concentrar según el riesgo y las decisiones pendientes. Distingue entre encontrar errores y mantener la comprensión del proyecto.

[07:12] También hablan de que automatizar comprobaciones no garantiza que yo siga entendiendo las decisiones que está tomando el agente de código. Y no sé si te has encontrado con este problema de que llega un punto que llegas llevas tanto tiempo aceptando, aceptando, aceptando que pierdes el hilo de dónde estaba el proyecto o incluso de lo que está haciendo. Así que el punto clave ha sido en sacar la nueva versión de RSC Harness donde he transformado totalmente Spec Driven Development, que era

[07:39] básicamente esta fase de aquí que teníamos la fase de especificación, la fase de planificación, la fase de implementación, la fase de review y la fase de ship. Y ahora mismo vamos a cambiar totalmente esta este Spec Driven Development por el lo que he llamado el Agent Spec Driven Development, donde vamos a tener básicamente o prácticamente las mismas fases, pero en la fase de implementación añadiríamos review por cada cosa que se está haciendo. Y Y en la fase de especificación deberemos especificar

[08:08] qué, Y lo tengo aquí apuntado en la libreta porque debo acordarme, deberemos especificar qué podrá hacer el usuario de lo que vayamos a desarrollar, o sea, básicamente cuál va a ser la acción, qué condiciones de partida y qué permisos necesarios, por lo tanto tendremos que consultar con el brain de RSC todas las decisiones que tomemos en la fase de especificación, qué resultado debe obtener el agente del desarrollo que va a hacer en la especificación, básicamente le podemos decir que para si

[08:31] estamos haciendo algo de UI que compruebe contra la captura de pantalla y un esbozo que nosotros le podemos pasar o que compruebe directamente la respuesta que le puede dar una API porque nosotros le vamos a decir que una API debe responder básicamente o algo parecido a esto.

[08:47] Luego le diremos también qué debe respetar, debe respetar pues restricciones y comportamientos anteriores y que tienen que seguir funcionando, aquí es donde entra también la importancia del brain que tiene RSC, todas las decisiones que hayamos tomado anteriormente, todas las funcionalidades que ya hayamos hecho tienen que [música] aplicarse en este spec driven development nuevo porque así pues no nos pasaremos por encima specs que hayamos hecho, features que hayamos hecho o incluso decisiones que ya hemos hecho

[09:11] anteriormente aquí no se incumplan porque se tiene que cumplir con el plan que ha dicho el usuario. Y por último, cómo lo demuestra, tenemos que darle al agente la posibilidad de poder demostrar que el trabajo que ha hecho es bueno y aquí el [música] de tenemos que explicar cómo comprobar o cómo ejecutar la comprobación de que lo que ha hecho está bien y qué evidencia quedará de que ha probado esto, porque muchas veces se dirá sí, lo he probado, pero tiene que quedar evidencia y tiene

[09:38] que estar documentada en el brain de RSC para que así podamos validar en posteriores eh specs que vayamos a crear de que lo que hicimos en ese momento estaba bien revisado. Así que si te has dado cuenta la parte más importante es cómo se organiza el proceso de revisión y verificación de que el agente lo está haciendo bien.

[09:58] La primera fase será la de implementar y autocomprobar. Básicamente el agente desarrollará una funcionalidad que estará acotada y deberá ejecutar comprobaciones en cada desarrollo que hace. En mi adaptación deben cubrir los criterios acordados y dejar evidencia de que los resultados que ha sacado de esa implementación o de la comprobación que ha hecho en esa implementación son buenos.

[10:21] Luego en una segunda fase deberá revisar con otros agentes que lo que ha hecho está bien. Básicamente lo que lanzaremos eran revisores que pueden ser del mismo agente de código pero con el contexto totalmente limpio o lo que se llama básicamente subagentes y examinarán el cambio y el código que lo rodea.

[10:39] Buscarán errores lógicos y problemas de seguridad y efectos sobre otras partes del mismo proyecto. Luego deberá comprobar los hallazgos si en la fase de revisión ha encontrado alguna cosa, básicamente ha encontrado pues algún error o algún fallo, deberá contrastarlos con el código real, eliminar duplicados y los deberá ordenar por gravedad.

[11:04] [carraspeo] Básicamente esta parte lo hemos tenido que hacer porque así de esta manera el agente necesita respaldo antes de tratarlo como un bug confirmado. Luego deberá aplicar controles obligatorios. Y es que combinar test, que el proyecto compile, deberá pasar controles de seguridad y comprobaciones del comportamiento solicitado. Para que nos entendamos, una comprobación obligatoria fallida debe impedir dar la funcionalidad por terminada.

[11:33] Una comprobación que no se haya ejecutado debería quedar visible para cuando el código nos llegue a nosotros. Luego el el bug o los hallazgos que hayamos encontrado en la fase de revisión que, ojo, antes en Spec Driven Development había una sola fase de revisión, ahora estamos implementando todo esto en la fase de implementación, o sea, revisión en la misma implementación, pues si se encuentra errores en la fase de implementación deberá volver al implementador con la evidencia que ha encontrado, se se

[12:05] corregirá o se descartará de forma justificada y documentada para que el usuario cuando acabe la Spec de end to end pueda decidir qué hacer o no hacer. Luego, eh habrá decisiones, porque aquí estamos hablando de optimizar o automatizar el proceso de desarrollo, el al final deberemos decidir según el riesgo. Si hay un error que es un error o el hallazgo que hemos encontrado, pues o que la gente ha encontrado, es un hallazgo de muy poco implicación de negocio o es un error muy muy trivial,

[12:38] pues podemos ir directamente a solucionarlo y aplicarlo o si es algo que afecta al core del negocio o una decisión anterior, porque así lo ha encontrado en en la documentación anterior, pues deberá al menos avisar al usuario o directamente, como os decía antes, si si es un hallazgo, pues pequeño, directamente implementarlo y siempre registrar la decisión de que sí se ha hecho y en qué implementación se ha hecho.

[12:58] Y por último, una vez ya está todo desplegado, me haya pedido a mí o no eh decisiones, deberá comprobar el cambio junto con la versión principal. Básicamente, el objetivo es observar el comportamiento y prever cómo recuperarse si lo que acabamos de desarrollar falla.

[13:15] Fijaos que todo esto lo he montado porque yo lo que quiero conseguir es que un agente de código le des una tarea para que sea capaz de montar una plataforma end-to-end y consiga hacerlo a partir de varias especificaciones.

[13:27] Darle los test, darle de que lo único que tiene que pasar para que la plataforma esté okay o no okay es que pase los test. Esto no es suficiente. Con este proceso que ya he integrado en el en la nueva versión de RSC Harness, la verdad es que los la respuesta o lo que lo que me está generando tiene mucho más sentido. Sí que es verdad que la fase de especificación es mucho más larga, pero al menos lo que va generando no tiene que pasar por mis manos o cuando llega a mis manos, al menos

[13:55] entiendo lo que está pasando y puedo tomar decisiones antes de que una decisión que al principio era una tontería acaba siendo una bola de nieve gigante y acaba generando, pues, un Frankenstein como lo que me ha pasado a mí con RSC Factory. Así que actualmente estoy evaluando cómo funciona esta nueva forma de trabajar. ASDD, la verdad es que está haciendo que el, al menos las horas que llevo probándolo, pues el formato de programar de esta manera está consiguiendo que al menos yo pueda tomar

[14:25] muchas más decisiones, pero decisiones que importan, porque ahí es lo que os decía antes, ¿no? El cuello de botella no tenemos que ser nosotros, pero que al menos las decisiones que el agente de código no tiene que tomar, las tomemos nosotros. La fase de especificación va a ser mucho más larga, pero al menos el código que nos dará al final tendrá mucho más sentido con lo que estábamos buscando. Como veis, mi objetivo sigue siendo delegar cada vez más parte del desarrollo de código a un agente de

[14:53] código y yo poder centrarme más en las capas de funcionalidad o en las capas de producto y en todo caso ir aportando, pues, decisiones que el agente, si las toma él, acaba generando Frankensteins. Yo lo que quiero es poder aportar en las funcionalidades y que las herramientas que vayamos construyendo tengan sentido, no que simplemente sean código y código y código sin sentido. Así que sigo construyendo RSC Factory. Si hubiera adoptado este sistema, pues, desde el principio, ya seguramente hubiera

[15:21] acabado. Muy pronto, y algunos me preguntáis, ¿qué quiere decir muy pronto? Pues yo creo que entre esta semana y la siguiente ya tendré la primera versión para que lo lo podáis probar. Y eh en todo caso, pues, bueno, si os ha gustado esta nueva forma de trabajar y la queréis probar, está en la nueva versión de RSC Harness. He quitado SDD, he puesto ASDD y he dejado FTD para las cosas pequeñitas. Así que si te ha gustado este vídeo, dale a like, suscríbete y nos vemos muy pronto en el

[15:45] siguiente vídeo.
