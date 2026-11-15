# Cómo un Solo Developer Humilló a Toda la Industria con Git

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=fi4YiZvbLXU)
- **Canal**: fatdev;
- **Publicado**: 2026-04-04
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En 2005, Linus Torvalds era probablemente el programador más importante del planeta. Había creado Linux, el sistema operativo que hoy está dentro de tu teléfono, de los servidores de Google y de prácticamente todo Internet. Y una empresa le quitó la herramienta que usaba para trabajar en Linux. De un día para otro, la respuesta de Linus fue encerrarse a programar. Solo 10 días.

[00:28] Eso sí, lo que construyó en esos 10 días hoy usa más de 100 millones de personas. Y la empresa que lo provocó ya no existe. La mayor venganza de la historia del software no fue una demanda ni un boicot. Fue una persona sentada a programar.

[00:46] Y para entender cómo llegó ahí, hay que retroceder 3 años, a cuando Linus tomó una decisión que toda su comunidad le dijo que era un error. [música] En 1991, Linus Torvalds crea Linux. Un sistema operativo que empieza como un proyecto universitario y se convierte en el núcleo de Internet, de los servidores, de Android y de prácticamente todo. Para 2002, el kernel de Linux es uno de los proyectos de software más grandes y más activos del planeta. Miles de developers contribuyen

[01:25] con código desde todas partes del mundo. ¿Y cómo se gestionaba todo ese código? Con emails. No, no, no es una metáfora. Literalmente, un developer escribe un parche, lo envía por email, Linus lo recibe, lo revisa a mano y lo aplica, uno por uno. Para un proyecto de miles de contribuciones al mes. Artesanía pura a escala industrial. El proceso funciona mientras el proyecto es pequeño. Pero Linux no deja de crecer. Los parches se pierden, las versiones divergen y Linux se quema. Y básicamente necesitan una

[02:04] herramienta de version control. El problema es que las que existen le parece una ofensa personal. CSV, el estándar de la industria, lo odia. Subversion, la alternativa moderna, lo odia todavía más. De hecho, años después, en una charla de Google, dice esto. Si alguno de ustedes ha usado Subversion, por favor, levante la mano para que pueda ignorar vuestra opinión.

[02:30] Y no estaba bromeando. El problema de fondo, todas estas herramientas son centralizadas. Un servidor controla todo. Y para el kernel de Linux, con miles de contributos por todo el mundo, depender de un servidor central es inaceptable.

[02:53] Linux necesita algo que no existe. Hasta que en 2002 aparece BitKeeper. BitKeeper es todo lo que Linux necesita. Distribuido, rápido, diseñado para proyectos masivos. Larry McVoy, el CEO de BitMover, la empresa detrás de BitKeeper, ofrece licencias gratuitas para proyectos open source. Sobre el papel, suena perfecto.

[03:17] Eso sí, tienen una condición. Si usas BitKeeper, no puedes trabajar en herramientas de version control que compiten con él. Usas la mía o no usas ninguna. Linux acepta, porque funciona. Es pragmático hasta el hueso. Pero la comunidad open source no lo ve así.

[03:37] Richard Stallman, el fundador del movimiento del software libre, el hombre que lleva décadas diciendo que el software propietario es una trampa, ataca la decisión públicamente. Su frase es brutal. BitKeeper encarna el espíritu del látigo. y remata, "Tus derechos no son derechos, son privilegios temporales que podemos revocar." Recuerda esta frase, que más adelante va a ser muy importante. Alan Cox, uno de los kernel developers más respetados, se niega a usar Bitkeeper por principios. La

[04:10] comunidad se divide. Hay debates furiosos en el mailing list. Algunos incluso piden que baneen a Stallman, pero Linus defiende la decisión una y otra vez. Y tiene un argumento que nadie puede refutar. Funciona. El desarrollo del kernel se acelera visiblemente. Los merge que antes tardaban horas ahora son instantáneos. Tres años en los que Linus le dice a su comunidad que estaban equivocados, que lo práctico importa más que lo ideológico, que Bitkeeper es la herramienta correcta.

[04:44] Hasta que en abril de 2005 deja de serlo. Andrew Tridgell es una leyenda del Open Source. Creó Samba, el software que permite a Linux hablar con redes de Windows. Es uno de los developers que todo el mundo respeta. Tridgell nunca usó Bitkeeper, nunca firmó la licencia, pero quería acceder a los metadatos del kernel que estaban alojados en servidores Bitkeeper. Y aquí viene lo más absurdo. Su ingeniería inversa fue conectarse por Telnet al puerto 5000 del servidor de Bitkeeper. Escribe help y el

[05:22] servidor le devuelve la lista de comandos disponible y usa el comando clone. Eso es todo. No hackeó nada, no rompió ninguna protección. El propio servidor tenía la ayuda del protocolo abierta para que cualquiera pueda preguntar. Es como si dejas la puerta de tu casa abierta con un cartel que dice pasa y después denuncias al al entró.

[05:46] Pero para Larry McVoy no importa cómo, lo que importa es que alguien demostró que podía clonar repositorios sin el cliente oficial. Y si eso es posible, el modelo de negocio de BitKeeper muere. McVoy tiene dos opciones, aceptar que su protocolo era público o castigar a toda la comunidad de Linux por la acción de una persona.

[06:10] Elige castigar. En abril de 2005, BitMover revoca la licencia gratuita de BitKeeper para proyectos Open Source. El proyecto Open Source más grande del mundo se queda sin herramienta de version control de noche a la mañana.

[06:26] Linux escribe a la mailing list del kernel. El tono del email no es furia, es peor, es resignación. Describe la situación como a grey and bleak world, un mundo gris y obsoleto. Y no culpa a BitMover, pero la ironía, la ironía es aplastante. Stallman dijo palabra por palabra tres años antes, "privilegios temporales que podemos revocar." Y eso es exactamente lo que acaba de pasar. El idealista más radical de la industria tenía razón con el pragmático más exitoso.

[07:02] Linux defendió a BitKeeper contra su propia comunidad durante tres años. Discutió con Stallman, discutió con Cox, le dijo que se equivocaban y ahora está enviando un mail admitiendo que el mundo es gris y desolado, porque la herramienta propietaria que él eligió hizo exactamente lo que todos le dijeron que iba a hacer. Pero Linux no se queda ahí. En ese mismo email pide a todos los maintainers que se preparen para enviar parches individuales, que va a haber caos, que va a estar efectivamente

[07:34] offline por una semana. Lo que no dice en el email, lo que nadie sabe todavía, es que ya está escribiendo código. Que la semana offline no es para pensar, es para construir. Evalúa las alternativas existentes, Subversion, centralizado, todo lo que odia, CVS, un sistema de version control diseñado para personas que odian a los developers, Monotone, buena arquitectura, rendimiento inaceptable. Ninguna sirve.

[08:04] Entonces, hace lo que todo developer furioso fantasea con hacer pero casi nadie hace. Sentarse a programar algo mejor. Desde cero. 3 de abril de 2005. Linus envía un mensaje a la mailing list que dice, "Estoy escribiendo algunos scripts para intentar rastrear cosas a un nivel más alto que los parches." Suena casual, como si estuviera haciendo algo menor, un side project de fin de semana.

[08:31] Probablemente este mensaje es el mayor understatement de la historia del software. Porque lo que pasa en los siguientes días es esto. 3 de abril, primeras líneas de código. [música] Linus programa en C, solo, en la misma máquina donde gestiona el kernel. 6 de abril, Git es self-hosting, gestiona su propio código fuente. 3 días, unas 1300 líneas de código.

[08:57] 7 de abril, primer commit del kernel de Linux usando Git. 16 de abril, [música] la primera release completa del kernel se gestiona enteramente con Git. 10 días. La semana offline de Linus Torvalds, de escribiendo unos scripts a la herramienta de version control del proyecto más grande del mundo. Pero la velocidad no es descuido, es justo lo contrario, diseño con furia. Cada decisión de arquitectura de Git es una respuesta directa a la tradición de BitKeeper. Distribuido, cada developer

[09:33] tiene una copia completa del repo. No hay servidor central, nadie puede revocar tu acceso nunca más. Es la cicatriz de BitKeeper convertida en diseño. Rápido, las operaciones que eran lentas en BitKeeper son instantáneas en Git. Branching, merging, Linus quería que los developers crearan branches con la misma naturalidad con la que crean archivos y no tuvieran que pensárselo dos veces. Integridad de datos, SHA1 para cada commit. Nadie puede alterar la historia sin que se note. Confianza por

[10:07] criptografía, no por contrato de licencia, porque los contratos de licencia, como acaba de aprender Linus, no valen nada. Git no es un proyecto académico, no es un experimento, es un arma diseñada por alguien furioso con tres especificaciones claras: no depender nunca más de nadie, funcionar a la escala del kernel y ser tan rápida que las alternativas parezcan juguetes.

[10:33] [música] El 26 de julio, tres meses después de empezar, Linus pasa el mantenimiento de Git a Junio Hamano, porque ya terminó. Construyó lo que necesitaba. Ahora vuelve a lo que de verdad le importa, el kernel de Linux. Pero antes de soltarlo, le pone un nombre. Git en argot británico significa persona desagradable, testaruda, que cree que siempre tiene razón. Linus, con toda autoconciencia sobre el mundo.

[11:04] "Soy un bastardo egocéntrico, le pongo mi nombre a todos mis proyectos. Primero Linus, ahora Git." También aclara: "Global Information Tracker, cuando funciona bien. Godman Idiotic Trackload of Shit, cuando no." Es Linus en estado puro, autoconsciente, irreverente. La persona que creó Linus creó Git y los bautizó con insultos. La herramienta ahora tiene nombre, tiene diseño y tiene mantenedor. Lo que le falta es un ecosistema.

[11:35] Tres años después lo va a tener. En 2008 un grupo de developers lanza GitHub. Y GitHub no solo aloja código con Git, inventa una cultura. Pull request, code review público, contribuciones open source como currículum, tu perfil de GitHub como tu identidad de developer.

[11:55] Todo construido sobre la herramienta que Linus programó en 10 días porque estaba furioso. En 2018 Microsoft compra GitHub por 7.500 millones de dólares. 7.500 millones por una plataforma construida sobre algo que un tipo programó en 10 días de rabia. GitLab, Bitbucket, todo el ecosistema de CI/CD, todo el DevOps moderno existe porque Git existe.

[12:21] Hoy más de 100 millones de developers usan Git. Cada empresa de software del planeta, cada proyecto open source. Git no es una herramienta más. Git es la forma en la que se desarrolla software. ¿Y BitKeeper? En 2016, 11 años después de provocar a Linus, BitKeeper se hace open source.

[12:43] 11 años demasiado tarde. En 2018 el desarrollo se detiene. Nadie lo nota. La mayor contribución de BitKeeper al software no fue BitKeeper, fue enseñarle a Linus Torvalds que podía hacer una herramienta de version control y después enfurecerlo lo suficiente como para construir una. Y si crees que construir Git en 10 días por venganza es impresionante, espera ver al developer que sin empresa y sin presupuesto humilló a Google y Facebook con un framework de JavaScript. Tienes la

[13:14] historia completa aquí. Y dicho esto, con Dios.
