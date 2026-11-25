# Borland abandonó Delphi en Linux. Unos voluntarios construyeron Lazarus

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=kvqz_fltIU0)
- **Canal**: ARCHIVO DEL FUTURO
- **Publicado**: 2026-11-23
- **Recopilado**: 2026-11-24
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 23:13

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En marzo de 2001 Borland puso a la venta Kylix, la promesa de llevar Delphi a Linux. En pocos años la empresa dejó de desarrollarlo. Para entonces un grupo de programadores sin una compañía detrás ya llevaba tiempo construyendo su propio camino. Ese camino todavía se descarga hoy, se llama Lazarus. En el recorrido de hoy vas a descubrir quién lo empezó y por qué, qué tuvieron que fabricar para que un programa funcionara en varias máquinas y qué les costó hacerlo sin una empresa que respondiera. ¿Puede un

[00:31] proyecto de voluntarios durar más que la promesa de una compañía? Una ventana con un botón y un cuadro de texto se dibuja una sola vez. Se compila para Windows, después para Linux, después para una Mac y aparece en las tres pantallas, cada una con los bordes, las letras y los botones de su sistema. Detrás de esa ventana hay un compilador y su historia empieza con un tablero de ajedrez. A comienzos de los 90 Florian Klampfl escribía programas de ajedrez con Turbo Pascal. Según contó en una entrevista

[01:04] aquel compilador era de 16 bits y no aprovechaba los procesadores nuevos que empezaban a llegar a las casas. Una de esas limitaciones se notaba enseguida. Todas las variables globales de un programa tenían que entrar en un único bloque de 64 KB. Probó alternativas, ninguna lo convenció y tomó una decisión ambiciosa, escribir un compilador propio. Cuando el entrevistador le comentó que sonaba al comienzo de Linux la comparación no estaba tan lejos. Un compilador traduce las instrucciones del

[01:32] programador al código que ejecuta la máquina. Para quien lo usa es el paso entre escribir una idea y tener algo que funciona. Para quien lo construye significa conocer el lenguaje a fondo y producir instrucciones correctas en situaciones que nadie anticipó. Klampfl situó esa decisión en 1992.

[01:51] La base de código que hoy conocemos como Free Pascal empezó al año siguiente. En marzo de 1995 el compilador ya podía compilar sus fuentes. El programa que traducía Pascal estaba escrito en Pascal y podía fabricar una copia nueva de sí mismo.

[02:07] Quien aprendía el lenguaje para hacer aplicaciones podía usar ese mismo conocimiento para estudiar y mejorar la herramienta. 1996 el proyecto se publicó en Internet. Alrededor del código empezaron a reunirse otras personas con otras máquinas y otras necesidades. En julio de 2000 llegó la versión 1. El compilador personal se había convertido en un proyecto compartido y su futuro dependía de coordinar aportes sin romper lo que otros ya hacían con él.

[02:36] No era el único compilador libre de Pascal. En esos años también existía New Pascal, ligado a las herramientas del proyecto New y orientado sobre todo a los estándares del lenguaje. Free Pascal eligió otro norte, entender el Pascal que la gente ya escribía con Turbo Pascal y más tarde con Delphi.

[02:54] El ajedrez tuvo un desenlace con algo de ironía. En la misma entrevista Clempel reconoció que nunca llevó aquellos programas a Free Pascal. La herramienta nacida para su problema terminó resolviendo los problemas de otra gente.

[03:07] El archivo de noticias del proyecto deja ver cuánto costaba ampliar ese horizonte. En septiembre de 2002 el equipo contó que el compilador había logrado construirse a sí mismo en una vieja Macintosh bajo NetBSD. Esa máquina tenía un procesador de 50 MHz. La tarea había tardado más de 3 horas. Para el usuario, años después, eso sería una descarga más. Detrás había personas llevando el mismo proyecto a computadoras con limitaciones muy distintas. ¿Cómo se pasa de un compilador a una ventana que alguien usa

[03:40] para trabajar? Entre aceptar instrucciones de Pascal y ofrecer una aplicación con botones, menús y campos hay una distancia enorme. Cada clic tiene que llegar al código correcto, la ventana tiene que responder al ratón y los datos tienen que quedar donde se esperan. Un programa puede calcular bien una factura y aun así ser incómodo para quien debe cargarla. El desarrollo visual había hecho familiar otra forma de trabajar, colocar componentes sobre una ventana y asociar acciones a sus

[04:07] eventos. Un clic activaba un cálculo, un campo recibía un nombre. Los componentes resolvían lo repetido para que el autor se concentrara en las reglas de su aplicación. Esa experiencia era algo que muchos programadores querían conservar.

[04:22] Si viste en este canal las historias de Turbo Pascal y de Delphi, vas a reconocer esa forma de construir ventanas. Esta vez seguimos a quienes no tenían una empresa detrás y levantaron sus propias herramientas para continuar el oficio. En febrero de 1999, Cliff Beseman, Shane Miller y Michael Hess iniciaron Lazarus. Los tres habían intentado sumarse a Meguido, uno de los primeros proyectos que buscaban construir una alternativa libre a Delphi, y Meguido se había disuelto. La

[04:51] historia oficial del proyecto dice que arrancaron por frustración. El nombre lo explica. Lázaro es el personaje bíblico que vuelve de la muerte, y Lázaro nacía de lo que había quedado de Meguido. Mark Beustink se incorporó en agosto de ese mismo año. Matías Gertner llegó en septiembre de 2000 y entre los dos hicieron buena parte del corazón del proyecto. Los fundadores, con el tiempo, dejaron de participar. Lazarus siguió en manos de personas que encontraron sus propias razones para sostenerlo.

[05:20] Lazarus reunió el editor de código, las herramientas para ejecutar y depurar, el diseñador de formularios y una biblioteca de componentes. Free Pascal seguía siendo el compilador que fabricaba el programa. Uno es el taller, el otro la máquina que produce el resultado.

[05:37] Si es tu primera vez acá, suscribite a Archivo del Futuro. Y si ya estás, decinos en comentarios qué tema te gustaría que investiguemos. ¿Y qué hacía mientras tanto la empresa dueña de Delphi? Su propia apuesta por Linux.

[05:51] En marzo de 2001, Borland lanzó Kylix, un entorno basado en Delphi que generaba programas nativos para ese sistema. Siguiendo la costumbre griega de Delphi, el nombre venía de una copa de la antigua Grecia. Hasta lo ofrecían junto con estaciones de trabajo de Dell.

[06:07] Hubo una segunda versión ese mismo año y una tercera en agosto de 2002.s La tercera fue la última. Kylix había nacido para versiones de Linux que pronto quedaron viejas y las ediciones siguientes de Delphi ya no ofrecían un camino para seguir con esos proyectos.

[06:23] A mediados de esa década Borland dejó de desarrollarlo. Quien había llevado su aplicación a Linux con Kylix se quedó con una herramienta que ya no iba a avanzar. Embarcadero, la compañía que hoy vende Delphi, recién volvió a ofrecer Linux más de 15 años después. En ese intervalo el camino que seguía abierto para un programador de Pascal en Linux era el de los voluntarios. A mi juicio ahí está la diferencia que vale mirar. Una empresa puede abandonar un producto que no rinde y está en su

[06:52] derecho. Un proyecto de código abierto sigue mientras alguien quiera seguir trabajando en él. Para que eso funcionara Lazarus necesitaba una pieza central. Su biblioteca visual se llama LCL. Permite que el código de una aplicación trabaje con ventanas, botones y otros controles a través de una capa común y que debajo cada sistema dibuje esos controles a su manera. Mantener esa capa significa traducir comportamientos y decidir qué se puede compartir sin esconder los problemas de cada

[07:23] plataforma. Para un usuario la consecuencia parece pequeña. Un cuadro de diálogo se comporta como espera. Para el desarrollador esa familiaridad cuesta trabajo. El orden de los controles, el teclado o el tamaño del texto pesan en una tarea que alguien repite durante horas.

[07:41] Lazarus además se desarrolla con el propio Lazarus. Quienes lo mantienen conviven todos los días con sus decisiones. Su sistema de paquetes permite sumar componentes y ampliar el editor. Así una necesidad especializada encuentra una extensión sin esperar a que todo venga en la instalación básica.

[08:00] Cada extensión agrega a su vez otra pieza cuya compatibilidad hay que cuidar. En agosto de 2012 se anunció Lazarus 1. Habían pasado más de 13 años desde el comienzo y el anuncio agradecía a los participantes anteriores y al equipo de Free Pascal.

[08:16] Ese número reconocía un recorrido porque mucha gente ya llevaba años haciendo aplicaciones reales con las versiones previas. La utilidad llegó mientras el taller todavía estaba en obra. Ese taller sigue abierto. La página oficial presenta a Lazarus como un entorno compatible con Delphi para varios sistemas, ofrece descargas para Windows, Linux y macOS y hasta una versión para la Raspberry Pi, la computadora del tamaño de una tarjeta. En 2026 siguió publicando versiones nuevas. Uno de sus

[08:46] usuarios trabajaba con imágenes del cerebro. Chris Rorden, investigador en neuroimagen, contó en un artículo de 2025 de dónde había salido su primera herramienta. En la institución donde trabajaba con John Duncan y John Driver había una sola licencia de Analyze, un programa especializado instalada en una estación de trabajo. Naghi Antoun, el radiólogo que dibujaba las lesiones, quería hacer esa tarea en su computadora personal. De esa necesidad nació MRI Crow y Rorden la programó con Delphi. Según su

[09:17] currículum, el artículo que describía ese programa ya superó las 2800 citas. El investigador abre una imagen, recorre sus cortes y marca la región que quiere estudiar. Eso necesita controles que respondan, archivos que se lean bien y cálculos rápidos. Más adelante, Rorden quiso que su herramienta llegara a equipos que usaban máquinas diferentes y que trabajara con NIfTI, el formato que la comunidad científica estaba adoptando para compartir imágenes junto con su posición en el espacio. Una imagen puede

[09:47] abrirse y aún así quedar mal interpretada si pierde su orientación. En 2006 presentó MRI Cron, una reconstrucción gratuita de código abierto y para varios sistemas construida con Lazarus. Sus instrucciones de compilación de entonces pedían una versión de Lazarus posterior a mayo de 2006 porque necesitaban correcciones recientes y advertían que algunas funciones todavía fallaban.

[10:11] Rorden estaba apoyando su programa en una herramienta que seguía en construcción. Ese vínculo podía cambiar el papel de un usuario. Rorden presentó en el registro de la SALUS una propuesta para rellenar áreas cerradas en el componente de dibujo, una función útil al marcar regiones en una imagen, y la acompañó con código de ejemplo. Para quien usa el programa, rellenar una región es un clic. Para quien lo escribe, hay que decidir cómo reconocer los bordes y qué hacer con los puntos de

[10:38] adentro. Incorporar un ejemplo así a una biblioteca común exige que alguien lo revise y compruebe qué pasa con los programas que ya existen. También aparecieron problemas de velocidad. Rorden publicó un informe sobre unas rutinas de procesamiento de imágenes que le corrían más lentas con Free Pascal que con Delphi y ofreció una recompensa a quien ayudara a mejorarlas. El problema quedó registrado como corregido en una versión posterior del compilador.

[11:02] Para conseguirlo, Rorden tuvo que convertir una lentitud de su aplicación en una prueba que otras personas pudieran estudiar. La aplicación ya funcionaba y ahora aparecían otras cuentas. Una pieza comprada podía cerrar el paso a otra máquina. Las licencias decidían si el programa podía venderse con el código privado. El mantenimiento de una herramienta científica podía quedar en una sola persona. Su autor terminaría llevando nuevas imágenes al navegador.

[11:29] ¿Qué parte de aquella libertad seguía dependiendo de otros? Una parte del equipaje era el propio lenguaje. Free Pascal incorporó modos de compatibilidad para distintas tradiciones de Pascal, entre ellas Turbo Pascal y Delphi. El modo elegido cambia las reglas que entiende el compilador.

[11:47] Así puede acercarse a código existente sin obligar a todos los programas a hablar exactamente la misma variante. Para quien lleva años programando, eso significa conservar estructuras, algoritmos y buena parte de sus hábitos.

[12:00] También significa revisar diferencias concretas, cómo se representan los textos, qué tamaño tiene un dato, cómo se resuelven ciertas instrucciones. Un programa guarda suposiciones que quedaron escondidas porque siempre se ejecutó en el mismo entorno. Después vienen los componentes. Una ventana hecha con la biblioteca visual de Delphi usa piezas que Lazarus debe interpretar, convertir o reemplazar. Las dos bibliotecas se parecen, pero sus comportamientos pueden diferir. Un componente especializado, una conexión a

[12:31] una base de datos o una extensión de terceros suman cada uno su propia condición. El formato de esas piezas también importa. El código fuente conserva instrucciones que se pueden estudiar y adaptar. Una unidad ya compilada guarda un resultado preparado para un compilador y un destino determinados. La propia página de Lazarus lo advierte. El código que depende de unidades compiladas de Delphi no se puede llevar así nomás. Por eso una carpeta llena de piezas compradas sin su código puede volver mucho más

[13:01] difícil una migración que una aplicación cuyo autor conserva todas las fuentes. Lazarus incluye un convertidor para ayudar con los proyectos de Delphi. Hasta el código de esa herramienta reconoce que una etapa puede fallar y pedir una reparación manual antes de continuar. Está pensado para detenerse, dejar que el programador corrija y volver a intentar. Todavía queda el sistema operativo. Un programa puede pedirle a Windows una función específica o guardar sus preferencias de una manera

[13:28] que solo existe allí. Que Free Pascal entienda el lenguaje resuelve una capa del problema. Llevar la aplicación a Linux o a MacOS exige resolver también lo que tenía por debajo. Separar desde el principio las partes que hablan con el sistema es una decisión que se paga al construir y se recupera cuando llega a otro destino. La distinción se vuelve cotidiana en algo tan simple como abrir un archivo. La lógica que interpreta su contenido puede compartirse. El diálogo para elegirlo usa controles distintos en

[13:58] cada sistema y el lugar donde se guardan los ajustes y los permisos necesarios también cambian. Si esas decisiones están mezcladas por todo el código, cada plataforma obliga a perseguirlas por muchos lugares. Lo mismo pasa con los datos. Mostrar una tabla en pantalla depende de un control visual, pero leer la exige una conexión, un protocolo y unas reglas. Cambiar la ventana conserva apenas una parte de la aplicación. En un traslado bien resuelto el usuario sigue con su tarea como si

[14:26] nada. Debajo de esa continuidad hubo varias decisiones independientes. Además, cada destino necesita su propio ejecutable. Free Pascal genera código para muchas combinaciones de procesador y sistema y las fuentes se pueden reutilizar, pero el archivo resultante pertenece a una plataforma. El usuario recibe un programa preparado para su máquina y el desarrollador conserva la responsabilidad de probarlo allí.

[14:50] Ese trabajo tiene resultados que mucha gente usó sin saber con qué estaban hechos. PeaZip, el compresor gratuito que Giorgio Tani publicó en 2006 como alternativa a WinZip y WinRAR, está escrito con Lazarus y Free Pascal.

[15:04] Trabaja con más de 200 tipos de archivos comprimidos y hoy tiene versiones para Windows, Linux y macOS. Double Commander, un administrador de archivos con dos paneles al estilo de Total Commander, también salió de ese taller.

[15:18] Su documentación muestra los bordes del asunto. Los complementos de Total Commander compilados para Windows funcionan en la versión de Windows de Double Commander, pero en Linux hace falta otra construcción compatible cuando las fuentes lo permiten.

[15:33] La aplicación principal viaja. Algunas de sus piezas se quedan atadas al sistema donde nacieron. Y aun dentro de Linux el programa se ofrece con distintas bibliotecas gráficas que cambian cómo se integra con el escritorio.

[15:46] El caso más reciente es también uno de los más claros. HeidiSQL, un administrador de bases de datos muy usado con MySQL y MariaDB, se escribió durante años con Delphi y solo para Windows. En Linux quien lo quería tenía que correrlo a través de Wine, una capa que permite abrir programas de Windows con ventanas que no siempre se integraban bien con el escritorio. En mayo de 2025 su autor, Hans Bergacker, publicó la primera versión nativa para Linux después de pasar el código de

[16:16] Delphi a Lazarus y Free y anunció que las versiones siguientes para Windows también se iban a compilar desde esa misma base. Para mí, ese movimiento dice más que cualquier tabla de funciones. Un programa con años de historia en Delphi eligió el taller de los voluntarios para salir de Windows. Esa es la parte del costo que la palabra multiplataforma suele esconder. Llegan más usuarios y también más combinaciones que comprobar.

[16:42] Una corrección puede arreglar un sistema y alterar otro y una dependencia puede cambiar a su propio ritmo. El permiso para distribuir plantea otra decisión. Free Pascal y el entorno Lazarus tienen código bajo la licencia GPL, pero sus bibliotecas centrales usan una licencia con una excepción que permite combinarlas con módulos propios bajo otras condiciones. En la práctica, eso permite hacer aplicaciones comerciales y mantener privado el código propio, siempre que se cumplan las obligaciones

[17:11] de cada pieza utilizada. El compilador y el programa que se hace con él son obras distintas. Alguien puede vender su aplicación, otra persona puede publicar las fuentes y un equipo puede mantener una herramienta interna. Las condiciones siguen a cada componente. Modificar y distribuir una biblioteca puede traer obligaciones sobre esos cambios y una extensión de terceros trae su propia licencia. Lo gratuito elimina una barrera de entrada. Cualquiera puede instalar las herramientas y empezar sin

[17:38] comprar nada. Del otro lado, en julio de 2018 Embarcadero lanzó Delphi Community Edition, una edición gratuita. Tiene un límite. Sirve mientras los ingresos anuales del que la usa no pasen de 5000 dólares. Lazarus no pone ese techo. El costo de un proyecto sigue estando en las horas de aprendizaje, en los componentes necesarios, en las pruebas y en el mantenimiento. Para una persona ese balance puede ser excelente. Otra puede valorar más una oferta comercial que le resuelva parte del trabajo.

[18:10] Delphi conserva usuarios con componentes, equipos y aplicaciones que funcionan bien en su ecosistema. La comparación útil aparece cuando se sabe qué trabajo hay que hacer qué está dispuesto a mantener cada uno. Algunos proyectos directamente conviven con los dos. Castle Game Engine, un motor para hacer juegos con Pascal, mantiene integración con Lazarus y con Delphi. En 2025 sus responsables reorganizaron los paquetes de Lazarus para ubicarlos junto a los de Delphi en carpetas separadas y

[18:40] conservaron los nombres anteriores para que los proyectos existentes siguieran funcionando. La continuidad se juega muchas veces en cambios que el usuario final nunca llega a ver. La independencia tiene una condición humana difícil de repartir, que haya personas dispuestas a hacerse cargo.

[18:57] Publicar una corrección, revisar un cambio o mantener un destino poco usado consume horas reales. Tener las fuentes permite que alguien continúe. La continuidad efectiva necesita que esa persona exista, entienda el problema y tenga tiempo. En la entrevista de 2014 Clem Fels explicó que intentaban no romper nunca el código de la gente, que corrían pruebas automáticas todos los días para que los errores viejos no volvieran y que la dirección del proyecto la marcaban sobre todo quienes

[19:26] contribuían. Como ejemplo reciente citó el regreso del soporte para la familia de procesadores Motorola 68000. Una plataforma podía recibir atención porque a alguien le importaba, aunque el mercado ya la hubiera dejado atrás. Esa forma de decidir permite rescatar máquinas o usos que le interesan a pocos y también hace que el avance sea desigual. Una función deseada puede esperar mientras otra recibe ayuda. La libertad de tomar el código convive con prioridades colectivas que ningún

[19:55] usuario controla del todo. En MRIcron, Rorden encontró una consecuencia muy clara de eso. En su artículo explicó que haber elegido un lenguaje poco popular había dejado en manos de una sola persona las actualizaciones y mejoras de la aplicación.

[20:10] ¿El ecosistema compartido sostenía el compilador y las ventanas? Reunir colaboradores para un programa científico concreto era otra tarea. Creo que es la advertencia más honesta de toda esta historia. Tener el código abierto asegura que alguien pueda seguir y no que alguien vaya a seguir.

[20:27] MRI Cron conservaba además compromisos del hardware para el que había nacido. Su vista tridimensional usaba el procesador principal y no tenía la fluidez de herramientas posteriores. Esa misma decisión le permitía funcionar sin una tarjeta gráfica moderna en computadoras más viejas. Su recorrido siguió cambiando. MRI Cron GL aprovechó la tarjeta gráfica para mostrar los volúmenes en tres dimensiones en tiempo real y su repositorio sigue indicando cómo construirlo con Lazarus. Hoy el

[20:56] propio repositorio de MRI Cron dice que el programa es estable, pero que el desarrollo se mudó a MRI Cron GL. Después llegó Niview, construido con tecnologías web. Forden explicó que su trabajo más reciente necesitaba llegar al navegador y había reunido a más desarrolladores. La misma persona que eligió Lazarus para una necesidad eligió otro camino para la siguiente. Sostener una herramienta durante años incluye reconocer qué problemas nuevos piden decisiones distintas. Ese desenlace deja

[21:25] una medida más interesante que una victoria entre lenguajes. MRI Cron permitió trabajar con imágenes del cerebro en varios sistemas durante casi dos décadas. Su autor tuvo que resolver fallos, limitaciones y mantenimiento y la comunidad le dio una base sobre la que avanzar. El valor de esa base aparece en el trabajo que se hizo con ella, aunque después se construya otra cosa.

[21:47] Free Pascal conservó una manera de traducir y desarrollar código Pascal. Lazarus construyó alrededor un entorno visual y una biblioteca capaz de mediar entre sistemas. Sus participantes ampliaron destinos, mantuvieron conocimientos útiles y abrieron las fuentes a otras manos. También heredaron las pruebas, la documentación y las diferencias que en una empresa quedan a cargo de un equipo pagado. Lo que alguien conserva al elegirlos puede ser muy concreto. Una aplicación que conoce,

[22:16] una forma de pensar, el permiso para modificar una pieza, la posibilidad de distribuir su trabajo o las ganas de construir algo propio. Esas razones pueden coincidir en una misma persona, y también cambian cuando cambian el trabajo, los colaboradores y las máquinas. Al principio, había un programador que quería aprovechar mejor su computadora para escribir programas de ajedrez, tres personas que no quisieron dejar morir un proyecto y una empresa que prometió llevar Delphi a Linux. La promesa de Kylix se apagó. El

[22:45] taller de los voluntarios sigue abierto y lo que dejó es una posibilidad, que el próximo problema encuentre a alguien con conocimientos, permiso y herramientas para intentar resolverlo. Gracias por ver Archivo del Futuro. Si se te ocurre una idea para el próximo video, déjala en los comentarios y suscribite. Y si este te gustó, los que te recomendamos en pantalla te van a gustar todavía más.

[23:07] Hacé clic en uno y nos vemos ahí.
