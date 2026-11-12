# ¿Por que los Vibe Coders destrozan todas las apps que tocan? (aunque usen agentes de IA)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=pO6x9GI07WA)
- **Canal**: Victor Robles WEB
- **Publicado**: 2026-10-23
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Antes de pasar a temas más difíciles, vamos a ver el módulo número cuatro, que va de cómo se degrada una arquitectura y cómo evitarlo. Vamos a ver la línea temporal del caos, porque cuando empezamos a crear un proyecto, ¿vale? El día uno tenemos una buena estructura, tenemos una buena integridad en nuestro software. Cuando pasan 100 días o 500 días, ¿de acuerdo? Empezamos ya a degradar esa arquitectura planificada en un primer momento añadiendo pequeñas cositas a la casa, que sería la

[00:32] aplicación, ¿vale? Añadimos di- diferentes cosas, modificaciones no planificadas y cosas que no se han pensado previamente, que no se han planificado y demás. Cuando hablamos de un agente de IA, por ejemplo, que lo ponemos a hacer una planificación, pues vale, nos hace un plan de implementación de una funcionalidad o de un proyecto entero. ¿Qué pasa con eso? Que cuando vas añadiendo cosas, haciendo by coding barato y vago, ¿qué pasa ahí? Que si no haces un plan de implementación de una

[00:57] funcionalidad gorda que vayas a meter, puede pasar que generes un caos arquitectónico como pasa aquí, que empiezas a meter grandes trozos de del proyecto, grandes funcionalidades nuevas, grandes cosas sin planificarlas pri- primero y sin diseñar una buena y sin hacer una buena arquitectura, ¿y qué sucede? Que el sistema, pues, está prácticamente roto, hay fallos en la estructura, hay deuda técnica, hay errores y hay muchos problemas a nivel arquitectónico, ¿no? A nivel arquitectura. Entonces, la arquitectura,

[01:26] como bien pongo aquí, no se rompe de golpe, se rompe reforma a reforma, sin mirar el plano, ¿okay? Entonces, la casa, al final, sigue funcionando, pero cada cambio, al final, cuesta el doble de trabajo. Eh hay mucho más riesgo de romper cosas, hay mucho más riesgo de romper cosas o que la gente de inteligencia artificial te rompa cosas, así que hay que planificar bien cada cambio también, ¿no? Y aquí hay un problema y es que muchos desarrolladores decimos, "Bueno, voy a hacer esto rápido

[01:54] solo por esta vez, ¿no?" Y esto se puede considerar una enfermedad, ¿no? Porque la deuda técnica nunca nace de malas intenciones, nunca tenemos malas intenciones con metiendo deuda técnica, ¿vale? Nace de decisiones pequeñas que parecen inofensivas, como meter un pequeño trozo de código, una pequeña funcionalidad sin planificar, vais codear un trocito sin hacer una planificación en un fichero de agentes o lo que sea. Entonces, un if rápido, una excepción, una llamada directa a base de

[02:22] datos sin usar un ORM o sin usar un query builder en el framework que estéis usando, lo que genera es que empieza a meter aquí esto, empieza a meter un helper con 800 funciones, empieza a importar cositas, empieza a meter cosas sin planificar y sin orden y solo por esta vez, solo por esta vez, solo esta vez, ya lo arreglaré luego, ya lo ya lo ordenaré luego, solo por esta vez y al final haces un caos terrible en la aplicación, ¿no? Entonces, es mejor, como te digo, planificar las cosas antes

[02:51] de hacerlas y ver dónde encajan en todo el organigrama de la arquitectura de mi programa, ¿no? Entonces, la deuda técnica se genera así, solamente ir metiendo cambios sin planificar y sin ordenarlo sin sin hacerlo bien, ¿no? Y sin tener en cuenta todos los conceptos que vimos anteriormente, todas las capas, dónde debería yo meter esto, eh cómo lo debería hacer para que fuera escalable y todo esto, ¿no?

[03:15] Esto siempre ha pasado, la verdad, siempre en el desarrollo de software siempre ha pasado. Solo por esta vez hago este cambio y al final hago un cacao maravillado haciendo pequeños parches, parches, parches y al final la aplicación se convierte pues en un andamio, una o sea, y al final monta un andamiaje que está todo cogido con palicos y cañicas, con pequeños eh no sé, pequeñas correcciones pequeños bug fixes, pequeñas ñapas que se conocen y al final pues sí, todo funciona pero de aquella manera muchas

[03:43] veces, ¿no? Entonces, ¿cuáles serían los síntomas de una mala arquitectura? Los síntomas serían el efecto dominó, el primero es que cada cambio rompe otra cosa, como te digo, muchas veces pasa en los agentes de inteligencia artificial, te pones a programar con Claudio o con antigravity o con lo que sea, haces un cambio y rompe otra cosa, eso es un síntoma de que no hay buena arquitectura o que el modelo que estás usando es bastante malo, pero generalmente podría ser por eso y también cuando trabajas tú

[04:10] por con tu propio código, cada cambio genera un efecto dominó. Luego, desorientación, nadie sabe dónde hacer una modificación, esto también suele pasar mucho. Eh, tienes que añadir algo y no encuentras la zona donde lo tienes que hacer, entonces tienes que ponerte a investigar el proyecto, ¿no? Eso también es un mal síntoma, ¿no? Duplicidad, hay varias implementaciones con la misma lógica, estás duplicando código que hace lo mismo en diferentes lugares, esto también lo hacen mucho los agentes de IA

[04:35] y los modelos baratos. ¿Vale? Entonces tienes que tenerlo en cuenta para que no se genere esa duplicidad, ¿por qué? Porque una misma funcionalidad, una misma función que hace lo mismo, la puedes tener una vez hecha y reutilizarlo o llamarla en diferentes lugares, en lugar de escribir el mismo código en eh, varios sitios, ¿no? Eso ya se convierte en inmanteníble. Luego, la telaraña, ¿vale? Y es que todo depende de todo, como te digo, cada una de las áreas o cada una de las capas tiene que

[04:59] tener su responsabilidad, cada módulo tiene que tener su responsabilidad, todo en una buena arquitectura tiene que tener su responsabilidad única, ¿no? Incluso los propios conceptos como tal, los propios controladores tienen que tener su responsabilidad, los servicios, los modelos, todo lo que tú tengas en la aplicación, ¿no?

[05:15] Vale, y luego archivos monstruo, esto pasa un montón también. Eh, cuando tú trabajabas con eh, [resoplido] un lenguaje a pelo, por ejemplo, con PHP, sin ningún framework, se podía generar un archivo monstruo, un ultracontrolador que gestione, pues a lo mejor, eh, usuario, facturas, pagos y mil cosas, ¿no? Entonces se genera eh, un megacontrolador, un megaarchivo con todo, con miles y miles de líneas de código, aquí podríamos añadir varios ceros más, ¿vale? Y son archivos que superan esas

[05:47] miles de líneas de código y se hacen inmanteníbles porque está todo demasiado encapsulado en el mismo sitio, todo demasiado metido en el mismo sitio, entonces no se están separando responsabilidades y se genera un caos, ¿no? Eh, luego también tendríamos la fricción y es que cada nueva funcionalidad tarda más que la anterior en hacerse, ¿vale? Esto con los agentes de IA pasa también y en el desarrollo eh normal con código a mano pasa también cuando se hace programación y no se

[06:13] puede hacer bycoding o desarrollo con agente porque hay datos sensibles, por ejemplo, cada nueva funcionalidad eh al ser más grande el proyecto y al tener más lío, pues cuesta más añadirla, ¿no? Y luego también el miedo, el miedo que tiene el desarrollador porque da pánico hacer cambios porque no puedes tocar nada porque a poco que tocas todo explota, ¿vale? Entonces, eso también es un síntoma de mala arquitectura, hay que tenerlo en cuenta para el código que creamos con agentes o el código que

[06:42] creamos nosotros, ¿no? Vale, pero ¿cuál sería el coste oculto de la degradación? Pues el tiempo para añadir una funcionalidad en un proyecto nuevo, por ejemplo, serían 2 horas, ¿vale? Venga, pues 2 horas. En un proyecto de 5 años podrían ser 3 días o que todo se rompa, ¿vale?

[06:58] Y ¿en qué gastaríamos el tiempo cuando un proyecto pues ya está degradado en este sentido? Pues eh un poquito de tiempo en escribir el código o en mandar a la gente a escribir el código y tal y un montón de tiempo más en eh pues en comprender todo esto, en comprender las dependencias, en buscar efectos secundarios eh para cuando cambie algo y arreglar errores y problemas que surgen, ¿vale? Si tú tienes una buena arquitectura, tanto tú como el equipo de desarrollo, como un agente de IA, como

[07:26] lo que sea, va a hacer que esto no suceda, ¿de acuerdo? Entonces, el coste oculto es que no estamos pagando por escribir código, estamos pagando por comprender el caos, que esto pasa muchas veces también cuando trabajas con un agente, cuando trabajas con Claudio o con lo que sea, que muchas veces dices, vale, explícame o dime dónde está esto porque no lo encuentro y no sé dónde tengo que tocar, porque no comprendes cómo está hecho el el proyecto, porque lo ha hecho a parches, ¿no? Vale, y aquí

[07:51] hay que tener también muy en cuenta la regla de la dependencia, y es que cada flecha es una dependencia en este caso. Vale, cada flecha es una dependencia y cada dependencia aumenta exponencialmente la complejidad y la arquitectura consiste en reducir las conexiones innecesarias, ¿no? En un plano ideal de un proyecto, vale, en un plano ideal, tendríamos notificaciones, usuarios, pagos, facturación, eh módulo de IA y todo estaría conectado de manera, pues, sencilla, simple y tal, y no hay nada

[08:23] mezclado, no hay ninguna dependencia mezclada, ¿no? Y no se aumenta la complejidad porque cada módulo tiene sus partes y al final tocas cada módulo y no se lía nada, pero cuando tú empiezas a mezclar y a crear un caos, aquí cuando tienes que tocar algo de notificaciones, a lo mejor te tienes que ir a la parte de usuarios porque hay unas notificaciones que se lanzan aquí o que se crean aquí. Luego, hay otras notificaciones en la parte de pagos, hay otras notificaciones en la parte de IA,

[08:46] hay otras notificaciones en la parte de facturación. Y entonces, al final, para tocar algo de las notificaciones tienes que revisar 80 módulos. Entonces, tú tienes que separar, como te digo, las responsabilidades y hacerlo todo bien, que cada cosa eh tenga su propia dependencia, ¿no? Que cada cambio que añadas, que cada dependencia que añadas no sea eh luego un lío, ¿no?

[09:05] Y bueno, en la siguiente clase seguimos con más cositas de este módulo 4 para no destrozar una arquitectura en un software. Puedes conseguir el curso completo y ver las siguientes clases desde el enlace que aparece en pantalla y desde el enlace que tienes en la descripción del vídeo. Aquí vas a aprender un montón acerca de arquitectura de software y cómo aplicarla a tu día a día como desarrollador y a tu día a día como ingeniero de inteligencia artificial que utiliza agentes e IA generativa para

[09:30] escribir su código. Así que espero que te guste y que te sirva y nos vemos en el próximo vídeo de este canal de YouTube y dentro del curso. Chao, muchas gracias.
