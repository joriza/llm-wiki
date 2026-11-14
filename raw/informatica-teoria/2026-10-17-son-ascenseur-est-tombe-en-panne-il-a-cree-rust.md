# Son ascenseur est tombé en panne. Il a créé Rust.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=BIy9mNZAb_U)
- **Canal**: CodingBiceps
- **Publicado**: 2026-10-17
- **Recopilado**: 2026-11-14
- **Idioma**: es-ES (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 17:11

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Vancouver, 2005. Un programador se muda a una planta 21. Y descubre un problema. El ascensor se cuelga. Culpa de su software. Y pasa a menudo. Así que sube. A pie. Veintiún pisos. Años después, resumirá ese momento en una frase: «elevator can't even go… just seemed so pathetic.»

[00:26] Este programador se llama Graydon Hoare. Y de ese cansancio nació un lenguaje que hoy funciona en el núcleo Linux, en Android, en Windows, en los comandos básicos de Ubuntu. Un lenguaje que Git quiere hacer obligatorio.

[00:38] Ese lenguaje es Rust. Bueno, seamos sinceros: el ascensor no lo hizo todo. Graydon llevaba años quejándose de los lenguajes de programación, y garabateando en los márgenes cómo lo haría él. Fue la gota que colmó el vaso.

[00:52] En este vídeo, te cuento una cita fallida con Linus Torvalds, un proyecto personal programado de noche, un creador que se va antes de la versión 1.0, una empresa que despide a sus equipos, una guerra en el núcleo Linux donde alguien dijo «cáncer»… y una caída mundial que depende de una sola palabra de código.

[01:10] Venga, volvamos a 2005. Para entender esta historia, primero hay que hablar… de Git. Antes de Rust, Graydon ya había escrito un programa. Se llama Monotone. Es un gestor de versiones, la herramienta que guarda todo el historial de tu código.

[01:27] Primera versión: el 6 de abril de 2003. Dos años después, el mismo día, el 6 de abril de 2005, hay crisis en el mundo Linux. Linus Torvalds tiene que sustituir a BitKeeper, la herramienta que gestionaba el código del núcleo.

[01:41] Esa historia la conté entera en un vídeo de mi canal. Y si te gustan estas historias, suscríbete. Así que Linus busca una alternativa. Y en la lista de correo del núcleo, escribe: no me hablen de Subversion. Si de verdad insisten, miren «monotone».

[01:57] Parece la alternativa más viable. El software de Graydon está sobre la mesa. Solo que Monotone tiene un defecto. Es lento. Pero lento… Un desarrollador del núcleo Linux lo resume así: «A heavily sedated sloth with no legs is probably faster.»

[02:14] Linus lo prueba un día. Se rinde. Y escribe su propia herramienta. Esa herramienta es Git. Pero aquí va el detalle que casi nadie conoce. Años después, Graydon escribirá que Git es «decidedly a copy» de la estructura de datos de Monotone: cada versión del código identificada por una huella calculada a partir de su contenido y su historial.

[02:34] Con una interfaz y una implementación completamente distintas. Y él mismo no se atribuye la idea: se la reconoce a otro colaborador de Monotone, Jerome Fisher. Y mientras el mundo Linux buscaba desesperadamente una herramienta…

[02:47] Graydon estaba de vacaciones. En 2006, Graydon trabaja en Mozilla, la empresa que hace Firefox. Y su trabajo de día es, precisamente… la memoria. Escribe un programa que limpia la memoria del navegador, liberando lo que ya no sirve.

[03:03] Y él mismo avisa de que puede provocar nuevos cuelgues. Porque Firefox está escrito en C++, y el código hace muchas suposiciones sobre cuánto viven sus datos. Para entender el problema, imagina que devuelves las llaves de tu piso a la inmobiliaria, la que lo alquila para el dueño.

[03:19] Pero te quedaste una copia. Se muda un nuevo inquilino. Y una noche, entras igual. Abres la puerta, y estás en casa de otro. En C o en C++, un programa puede hacer exactamente eso. Devolver un trozo de memoria, quedarse la llave, y volver a usarlo después.

[03:36] A veces se cuelga. A veces no se nota. Y a veces, alguien malintencionado lo aprovecha para tomar el control de la máquina. Así que de día, Graydon arregla la memoria de Firefox. Y de noche, en su propio portátil, en su tiempo libre, empieza su propio lenguaje.

[03:51] Su commit más antiguo es del 23 de julio de 2006. Y desde el primer archivo, el lenguaje ya tiene nombre: Rust. ¿Por qué Rust? Nunca lo ha aclarado. Lo ha confesado: «people keep asking and I keep making up different explanations»; su favorita es un hongo.

[04:09] La roya de las plantas es una familia de parásitos muy resistentes. «Over-engineered for survival», dice. Y además, Rust es un trozo de la palabra «robust». Durante tres años, es un proyecto personal. Luego, en 2009, Graydon camina por el paseo marítimo de Vancouver con un directivo de Mozilla.

[04:27] Y le habla de su lenguaje. También se lo cuenta a Brendan Eich, el creador de JavaScript, un lenguaje del que también hice un vídeo. Lo que pide es modesto: un día a la semana para trabajar en él. Silencio absoluto. Durante meses.

[04:40] Piensa que está muerto. Y en otoño, llega la respuesta: «team of 3-5, full time, go!» Julio de 2010. En la cumbre anual de Mozilla, en Whistler, Canadá, Graydon presenta por fin su lenguaje. En sus diapositivas se lee: «Spare-time kinda thing.

[04:58] Yeah, I got problems.» Y luego, para calmar a la sala: «We are not rewriting the browser. That's impossible. Put down the gun.» Explica también por qué fue secreto tanto tiempo: lo pidió él… porque es tímido. Ese día, cree que Rust está casi listo: uno o dos años más.

[05:17] En realidad, la 1.0 llegará cinco años después. Y en 2022, al recordarlo, escribirá solo: «Ha ha ha.» Porque falta un paso enorme. Hasta entonces, el compilador de Rust está escrito en OCaml, otro lenguaje. La verdadera prueba: escribirlo… en Rust.

[05:35] Y que compile su propio código. El 29 de abril de 2011, lo logran. El compilador se compila a sí mismo, luego recompila esa versión, y los dos archivos son idénticos, bit a bit: ni un 0 ni un 1 de diferencia. Graydon escribe al equipo: «We're done», y felicita a Patrick Walton, del primer equipo de Rust en Mozilla, que hizo el último commit.

[05:58] Pero para él, lo que sigue es más duro. El 30 de agosto de 2013, deja la dirección técnica de Rust. El puesto, escribe, ha sido «quite draining», para él y para su entorno. Pasa el relevo. Y sin él al frente sale Rust 1.0, el 15 de mayo de 2015.

[06:15] ¿Y cuál es la idea de Rust? En una imagen. Una pizarra en una reunión. Todos pueden mirarla a la vez. Pero solo uno tiene el rotulador. Y si lo prestas, tiene que volver. En Rust, cada dato tiene un dueño, uno solo. Puedes prestarlo a varios que lo leen, o a uno solo que lo cambia.

[06:33] Nunca ambas cosas a la vez. Y cuando el dueño ya no lo necesita, el dato desaparece. Lo genial: estas reglas se comprueban antes de ejecutar nada. Si las rompes, tu código no compila. Punto. Adiós a la copia de las llaves.

[06:47] Y sin frenar tu programa ni un milisegundo. Una promesa está bien. Una prueba, mejor. Julio de 2016: por primera vez, Rust llega a los usuarios de Firefox. Un pequeño módulo que lee los datos de los vídeos MP4. Mozilla publica sus cifras: cero problemas en más de mil millones de usos.

[07:09] Noviembre de 2017: Mozilla lanza Firefox Quantum, más del doble de rápido que seis meses antes. En su corazón está Stylo. Nada que ver con nuestro rotulador de antes, eh. Es el motor que calcula el estilo de las páginas web.

[07:23] Escrito en Rust. Sustituye unas 160.000 líneas de C++… por 85.000 líneas de Rust. Mozilla ya había intentado dos veces, en C++, hacer funcionar este motor en varios núcleos del procesador. Dos fracasos. Febrero de 2019, dos cifras caen el mismo mes.

[07:41] En Microsoft, un ingeniero de seguridad muestra que cerca del 70 % de las vulnerabilidades que corrigen vienen de problemas de memoria. Y en Mozilla, una investigadora repasa todas las vulnerabilidades del motor de estilo de Firefox desde 2002.

[07:54] Hay 69. Y 51 habrían sido simplemente imposibles con código en Rust desde el principio. Pero es honesta: al reescribirlo, el equipo reintrodujo una vieja vulnerabilidad, ya corregida en C++. Rust ayuda a escribir mejor código.

[08:10] No es infalible. Las empresas se apuntan. En Discord, un servicio tiene picos de lentitud cada pocos minutos. El culpable: el recolector de basura de Go. En Go, no liberas la memoria tú: un recolector pasa cada cierto tiempo a tirar los datos que nadie usa.

[08:26] En Discord, Go lo hacía pasar al menos cada dos minutos, y en cada pasada revisaba una caché enorme: el servicio se frenaba de golpe. Reescrito en Rust, los picos desaparecen. Aun así, Discord avisa: no reescriban todo en Rust por diversión.

[08:41] ¿Y los desarrolladores? De 2016 a 2025, la encuesta anual de Stack Overflow pone a Rust en cabeza de los lenguajes que sus usuarios quieren seguir usando. Quien lo prueba no lo suelta. Y entonces llega 2020. El 11 de agosto de 2020, en plena pandemia, Mozilla anuncia el despido de unas 250 personas.

[09:03] Entre ellas, según cuenta una de ellas, todos los ingenieros de Servo, el motor de navegador experimental escrito en Rust. Y miembros del propio proyecto Rust. El lenguaje más querido por los desarrolladores se queda con una pregunta muy terrenal, ¿quién va a pagar?

[09:19] El proyecto Rust no tiene nombre legal. Ni dirección. Ni cuenta bancaria. El equipo lo escribe él mismo: «How does the Rust project sign a contract?», algo irónico para un lenguaje cuya idea es saber de quién es cada cosa.

[09:33] Siete días después, la respuesta: una fundación. Y el equipo no resiste la broma. La primera misión de esa fundación, escribe, será algo que Rust ya hace muy bien: «taking ownership». Tomar posesión. Solo que esta vez no es memoria, es algo jurídico.

[09:49] El 8 de febrero de 2021 se crea la Rust Foundation. Alrededor de la mesa: AWS, Google, Huawei, Microsoft y Mozilla. Mozilla le transfiere las marcas y el registro de bibliotecas de Rust. El pequeño proyecto nocturno ya no pertenece a una sola empresa.

[10:08] El 14 de abril de 2021, un desarrollador, Miguel Ojeda, propone añadir Rust al núcleo Linux. El corazón del sistema, escrito en C desde hace treinta años, y cuya historia también conté. Linus Torvalds responde el mismo día: «on the whole I don't hate it», y viniendo de Linus, famoso por sus correos incendiarios, al punto de disculparse en público en 2018 por su conducta, es casi una declaración de amor.

[10:34] Pero pone una condición. Nunca un «panic». En Rust, un panic es cuando el programa se para en seco ante una situación que no sabe manejar. Y para Linus, un núcleo que se para en seco es impensable. Recuerda esta palabra.

[10:49] Va a volver. El 11 de diciembre de 2022 sale Linux 6.1: por primera vez, hay Rust en el núcleo. Pero no todos están de acuerdo. En agosto de 2024, Wedson Almeida Filho, uno de los pilares de Rust para Linux, tira la toalla.

[11:05] Ya no tiene energía, escribe, para responder a lo que llama «nontechnical nonsense». Y añade: si Linux no pasa a lenguajes seguros, teme que otro núcleo acabe haciéndole lo que él le hizo a Unix. El 28 de enero de 2025, estalla.

[11:20] Christoph Hellwig, que mantiene una parte importante del núcleo, rechaza un parche de Rust que usa su código. Y habla de «this cancer». Precisa que se refiere al código que mezcla dos lenguajes, no a Rust en sí. Pero ya lo ha dicho.

[11:33] Hector Martin, fundador de Asahi Linux, que lleva Linux a los Mac recientes, propone presionar a los reacios en redes sociales. El 6 de febrero, Linus le responde: «How about you accept the fact that maybe the problem is you», y veinte minutos después, Hector se retira de la lista de mantenedores.

[11:50] Una semana más tarde, deja Asahi Linux, alegando también agotamiento y acoso. Y el 20 de febrero, Linus zanja, en mayúsculas, a Christoph Hellwig: un mantenedor no decide quién usa su código. «YOU ARE WRONG»: nadie está obligado a tocar Rust.

[12:07] Pero nadie tiene derecho a veto sobre Rust. Poco después, Hellwig deja el mantenimiento de esa parte del núcleo. El 10 de diciembre de 2025, en Tokio, los mantenedores del núcleo se reúnen. Y llega la conclusión: el experimento Rust ha terminado.

[12:23] Rust ya no es experimental. Ha venido para quedarse. En un año, la cantidad de Rust en el núcleo se ha multiplicado por cinco. Y seis días después, el 16 de diciembre, primer bug de seguridad registrado oficialmente en el código Rust del núcleo.

[12:38] Está en un bloque marcado «unsafe», donde el desarrollador le dice al compilador: «trust me». Solo provoca un cuelgue. Y Greg Kroah-Hartman, uno de los responsables del núcleo, señala que ese mismo día se publicaron otras 159 vulnerabilidades… en el código en C.

[12:56] ¿Recuerdas la palabra de Linus? Panic. El 18 de noviembre de 2025, parte de internet se cae. Cloudflare, pilar de la web, cae durante horas. Lo recuerdo bien: un cliente me llamó pidiendo ayuda… y no pude hacer nada. Al principio, un cambio de permisos en una base de datos.

[13:16] Un archivo de configuración duplica su tamaño. Supera un límite fijado por el código. Y justo ahí, el código Rust tiene una sola palabra: unwrap. Unwrap es decirle al programa: «seguro que todo ha ido bien, abre la caja»; y si no… panic.

[13:32] El programa se para en seco. Cloudflare lo reconoce: es su peor caída desde 2019. Y está muy bien documentada: Cloudflare publicó su análisis completo ese mismo día, con código, mientras las redes lo seguían en directo.

[13:46] Para ser justos: la causa raíz es ese archivo, y el sistema antiguo, que no era Rust, también falló (de otra forma). Diecisiete días después, Cloudflare vuelve a caer. La inteligencia artificial escribe cada vez más código, y en LinkedIn llueven los posts: AWS cae en octubre, Cloudflare dos veces en un mes… sería culpa suya.

[14:07] Pero en los análisis oficiales, ninguna caída viene de código escrito por una inteligencia artificial. Esta vez, el bug está en su código antiguo, y la empresa señala que la versión nueva en Rust no lo tenía. Misma lección en Ubuntu.

[14:19] En octubre de 2025, sudo y los comandos básicos del sistema pasan a Rust. Un bug en date rompe las actualizaciones automáticas. Una auditoría externa halla 44 vulnerabilidades. Y en la versión de abril de 2026, tres comandos, cp, mv y rm, siguen en C, mientras se corrige.

[14:38] Por cierto, este trabajo lo dirige Sylvestre Ledru, un ingeniero de Mozilla en París. La prueba de que en Francia tenemos a los mejores ingenieros del mundo. Bueno… quizá soy un poco chovinista. Y Francia no se queda atrás: la ANSSI, la agencia francesa de ciberseguridad, publicó ya en 2020 una guía para crear aplicaciones seguras en Rust.

[14:57] Clever Cloud pasa su tráfico por un proxy en Rust. Meilisearch, un buscador francés, está escrito en Rust. Y en octubre de 2025, la gran conferencia europea de Rust se celebró en la Cité des sciences, en París. Rust no elimina todos los bugs.

[15:13] Elimina una familia de bugs. Pero es la que causa más fallos de seguridad. En Google, la parte de fallos de memoria en Android pasó del 76 % en 2019 al 24 % en 2024, escribiendo el código nuevo en lenguajes seguros, Rust, pero también Kotlin y Java.

[15:32] Y en unos cinco millones de líneas de Rust en Android, Google estima la densidad de fallos de memoria mil veces menor que en su código C y C++. ¿Y Graydon Hoare, el creador de Rust, el del ascensor, en todo esto? En 2023, publica un post con un título sorprendente: «The Rust I Wanted Had No Future».

[15:54] Explica que el Rust de hoy está muy lejos del que él imaginaba. Ojo, le gusta el resultado, y lo usa con gusto. Él habría hecho un lenguaje más simple. Más lento. Habría sacrificado rendimiento por simplicidad. Y concluye: «My preferences are weird.

[16:11] You probably wouldn't have liked them. The Rust I Wanted probably had no future. Don't jinx it by imagining I would have done any better!» El creador de Rust explicando que Rust triunfó… precisamente porque no se convirtió en su Rust.

[16:25] Y el círculo casi se cierra. Git, la herramienta que, según Graydon, tomó la estructura de Monotone, piensa hacer Rust obligatorio en su versión 3.0. El software nacido de la cita fallida de 2005 pronto debería necesitar el lenguaje nacido en 2006.

[16:41] En diciembre de 2025, Graydon publica un mensajito, con humor: «finally, the future of rust controlled elevators is within reach. only twenty years of work (mostly by other people)!» ¿Y tú, ya has tocado Rust? ¿El compilador te ha vuelto loco, o te ha salvado el pellejo?

[16:58] Cuéntamelo en los comentarios. Si te ha gustado esta historia, suscríbete, porque hay muchas más historias como esta que contar. Nos vemos en el próximo vídeo.
