# La IA le borró TODO el disco duro

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=2CMbqUSPzjs)
- **Canal**: Hdeleon Clips
- **Publicado**: 2025-12-16
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 05:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:08] gente que quiera hacerlo todo con antigravity para un MVP, bien, pero se se romperá cuando le agregues pictures y aparte sí supieron al tipo que le que le borró un disco duro. Google Antigravity borra un disco duro completo por limpiar la caché. Un agente de inteligencia artificial de Google Antigravity malinterpretó la orden la la orden de limpiar caché y ejecutó un burrado silencioso sobre toda la unidad de un desarrollador. Digo, ojo con esto, eh.

[00:32] Ojo. La reconoció el error. Uh, menos mal, ¿eh? Menos mal, menos mal que reconociste el error. Un fallo crítico, pero los intentos de recuperación con herramientas como Recuba no evitaron la pérdida práctica, prácticamente total de datos. El caso revela fallo de diseño en el salvaguardas de la seguridad de los agentes de inteligencia artificial y reabre el debate sobre los límites de su autonomía y nivel de permisos. Ojo, este incidente ejemplifica los riesgos crecientes de la inteligencia artificial

[00:55] agentivas agentivas [risas] agentivas, especialmente cuando puede ejecutar comandos del sistema, modificar hardware sin supervisión estricta. Y esto es lo primero que pasa. Eh, ya ha pasado que les ha borrado la base de datos, ya ya ha pasado que que ha hecho desastres con el código, que de repente ya no pueden volver para atrás porque pues hicieron tantos branch y tantas mezclas que ya no pueden volver. Un simple borre cache ha terminado convirtiéndose en una pesadilla para un desarrollador que vio

[01:19] como Google Antigravity, un agente de inteligencia artificial de Google integrado en su entorno de desarrollo, eliminaba absolutamente todo el contenido de su unidad e lo que debía ser una rutina de mantenimiento. Acabó en una pérdida masiva de datos personales y profesionales. Vaya, eh, también este tipo, ¿por qué no tiene respaldos? Es decir, también, o sea, bueno, bueno, sin confirmación, se amiso y sin posibilidad realista de recuperación, pero menos mal aceptó que se equivocó. Lo ocurrido no ser una

[01:42] anécdota exagerada para asustar a programadores despistados, sino un caso muy ilustrativo de los riesgos de inteligencia artificial agentivas, es decir, aquellas que no se limitan a generar texto o sugerir código, sino que pueden ejecutar comandos, tocar archivos, lanzar script, modificar configuraciones e incluso actuar sobre hardware. Por eso lo que les comentaba, las migraciones o dame un esquema de cómo puedo migrar de una versión a otra y todas las dependencias que tiene mi

[02:01] sistema, hazlas sobre otro branch, o sea, o genérate otro repositorio para eso porque pues pasan este tipo de cosas también. Ojo cuántos permisos le des a ese a esa inteligencia artificial en cuanto a a lo que puede hacer con comandos. Con esta incidencia sobre la mesa, la gran pregunta es clara, ¿hasta dónde podemos delegar en una inteligencia artificial sin ponernos un tiro en el pie o en el disco duro? Pero también, loco, o sea, ¿por qué tienes que pensar en respaldos hasta que te

[02:26] pasa esto? Por siempre, repito, siempre toda su información, toda, toda, toda, toda, téngala respaldada. ¿Y esto qué? Quítate la ¿Por qué se quítate maldito menú? A ver, déjalo ver sí lo ocurrido no es solo una anécdota. Ah, eso ya lo he leído. Ay, qué bueno. ¿Qué es Google Antiigravity? ¿Porque es tan potente y tan peligroso? Bueno, eso ya lo sabemos, ¿no? Pero ustedes, ¿qué opinan de esto? O sea, [risas] ¿ustedes no sabían esta noticia? A mí se me hace como este cómico pero lamentable porque

[02:51] también está cabrón que no te da respaldos, ¿no? Le hizo un RMF, pues sí quería borrar caché, pero le dijo la caché es el disco C, el disco C. Y vamos a ver qué dice. En el trabajo de mi hermano borraron la caché de su máquina y ahora no puede entrar a sus correos ni office. Pero lo curioso es que acá la instrucción fue, "Borra el caché." Y le y dijo, "Para mí el caché es la unidad de no y me vale yo lo voy a borrar. Lo voy a borrar y me voy a disculpar al final."

[03:15] inteligencia artificial. ¿Cuánta existencia de inteligencia artificial es aceptable? Pero yo creo que al final de cuentas siempre tienes que ver la inteligencia artificial como alguien que la va a Y como alguien que la va a pues obviamente le vas a dar permiso de todo. Por ejemplo, estaba el caso también de la la del cabrón que le borraron la base de datos de producción.

[03:28] ¿Por qué le das acceso a producción y permisos de borrar? Hazle. Primeramente, yo ya había hecho un video de por qué no tienes que hacerle darle acceso a producción a una inteligencia artificial porque te puede pasar este tipo de cosas. Segundo, yo prefiero mejor hacer una réplica en la base de datos de producción, una réplica en local y hacer desmadre con ella. destrózala si quieres. Así es como yo le hice. Hice un video hace unos meses sobre cómo yo en Metal Code puse la base de datos de

[03:53] producción, la puse en local y a una agente a que encontrara a base de datos todos los errores ortográficos. Y no solo eso, sino que le puse, "Okay, dame una un Excel de los errores ortográficos y dime el ID de cuál registro es el que tiene los errores ortográfico."

[04:07] Posterior a esto, hice yo otro script en el cual hice el update a partir de esto, obviamente antes revisando que si fueran errores ortográficos, porque las primeras interacciones me daba errores ortográficos que no eran errores ortográficos y aparte me da la sugerencia de cómo resolverlo y tampoco era la sugerencia. Por eso es lo bueno revisar. Obviamente ya cuando revisas visualmente rápido hacer un script, ya no tienes que escribirlo rápidamente.

[04:27] Cámbiame esto a este Excel, cámbiamelo a un update masivo que vaya la misma tabla y ya ese mismo lo hago en la base de datos que tengo de réplica en local y ya veo que todo esté bien. Si veo que está todo bien, vamos a producción, pero yo voy, no va la gente, yo voy con el script ya hecho, el cual ya revisé que si es un update solamente a los IDs que están mal ortográficamente, lo copio, lo pongo en producción, lo corro y ya está.

[04:48] Pero antes sí hice un respaldo en producción. Es decir, yo sé que la inteligencia artificial la puede varias veces, pero siempre fui a la segura y es lo que tienes que hacer. Este, no puedes confiar en un sistema que es un LLM, que se basa por medio de de conocimiento, que vio por data que está pública por todos lados. Esa data muchas veces puede estar mal. Y digo porque a final de cuentas somos humanos, esa data puede estar mal. y confiar ciegamente en eso, pues tampoco, ¿no? O

[05:10] sea, digo, es algo tonto, ¿no? también. [música] [música] [música]
