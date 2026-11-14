# Clarion: el programa que creaba programas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=YUVTJVHDtVw)
- **Canal**: ARCHIVO DEL FUTURO
- **Publicado**: 2026-10-29
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 25:47

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un negocio puede tener una computadora y seguir copiando el mismo dato por todas partes. El nombre del cliente aparece en el pedido, vuelve en la factura y termina en un informe. Alguien tiene que conectar esas piezas y alguien tiene que construir el programa que entienda cómo trabaja ese negocio, incluso cuando cambia. Ese trabajo llevó a Clarion. En este video vas a descubrir cómo convertía a decisiones sobre un negocio en programas y cómo fue cambiando esa forma de construirlos durante décadas.

[00:30] ¿Cuánto vale un sistema cuando también guarda la experiencia de quienes lo hicieron? En 1986, Clarion ya ofrecía algo concreto, dibujar una pantalla y obtener su código. Para los informes tenía otra herramienta. Se llamaban Screener y Reporter.

[00:47] Bruce Barrington y su equipo estaban intentando acercar la programación a las tareas de una oficina. Barrington conocía ese mundo. Había participado en la fundación de HBO and Company, dedicada a la informática sanitaria. Su nueva herramienta apareció para DOS, el sistema operativo de muchas computadoras personales. La publicidad llevaba el nombre de Barrington Systems. Detrás había desarrollo de software, diseño de interfaces y una pregunta comercial.

[01:15] ¿Cuánto trabajo podía ahorrarse al preparar aplicaciones parecidas? El primer Clarion se presentó en abril de 1986. Reunir programación, pantallas e informes dentro del mismo producto acercaba tareas que el desarrollador debía coordinar. La publicidad prometía rapidez. El trabajo útil empezaba por averiguar qué necesitaba realmente la persona que iba a usarlo. El manual con el que se aprende Clarion arma un caso de oficina, una fábrica cuyos clientes hacen pedidos por teléfono y cuya

[01:44] factura se imprime esa misma noche. Pensemos en algo parecido, una distribuidora de repuestos. Tiene clientes, productos y pedidos. Cada pedido pertenece a un cliente, cada renglón indica un repuesto, una cantidad y un precio. Después habrá que entregar, facturar y saber qué sigue pendiente.

[02:02] Una lista de nombres, por sí sola, resuelve una porción pequeña de ese circuito. El desarrollador debe decidir cómo reconocer a cada cliente, cómo relacionarlo con sus compras y qué ocurre cuando se corrige una operación.

[02:16] También debe preparar pantallas para cargar información y documentos que alguien puede imprimir. Muchos negocios repiten esas mismas tareas con otros productos y otras reglas. Una herramienta que conoce la estructura de esas tareas puede ayudar a construirlas, siempre que alguien le dé las definiciones adecuadas.

[02:33] En mayo de 1988 llegó Clarion Professional Developer 2. Su componente designer amplió la construcción de aplicaciones desde definiciones. El diccionario de datos se volvió una pieza central de ese método, un lugar donde describir la información y reutilizar esas decisiones al crear el resto del sistema. Para nuestra distribuidora, el diccionario empieza con clientes y pedidos. Del cliente se guarda un identificador, su nombre y su dirección. Del pedido, su fecha y el identificador del comprador. La relación

[03:04] permite saber a quién pertenece cada venta. Los detalles de los repuestos van aparte, porque un mismo pedido puede contener distintos artículos. Esa separación evita repetir la dirección en cada renglón y permite consultar las compras de un cliente, pero deja una decisión abierta. La factura emitida puede necesitar conservar la dirección usada en aquel momento, aunque el comprador se mude. El diseñador debe elegir qué datos se comparten y cuáles representan una fotografía histórica de

[03:30] la operación. El diccionario expresa esa elección. Conocer los nombres de las tablas resulta insuficiente para adivinarla. El diccionario también puede describir cómo mostrar un importe, qué texto acompaña un campo y qué valores admite. Una definición alimenta distintas pantallas e informes. Si el identificador del cliente cambia de tamaño, conviene que todos los lugares que lo usan sigan siendo compatibles.

[03:55] La herramienta ayuda a propagar decisiones. La coherencia de esas decisiones sigue siendo responsabilidad de quien diseña. Ahí aparece el primer ahorro real. Con los datos definidos, el generador puede preparar una aplicación estándar para consultarlos, agregar registros, modificarlos y eliminarlos según las opciones elegidas.

[04:16] El desarrollador obtiene listas y formularios con un comportamiento común. Ya puede enseñar algo que funciona y discutir con el usuario sobre tareas concretas. La persona que atiende el negocio prueba un pedido y encuentra enseguida la primera excepción. Un cliente con deuda vencida necesita autorización antes de recibir más mercadería. La pantalla generada sabe guardar un pedido. La condición comercial exige que alguien explique qué significa deuda vencida, quién puede autorizar y dónde debe quedar

[04:45] constancia. Hasta la palabra pendiente pide precisión. Puede referirse a cobrar, a entregar o a una operación que todavía está esperando aprobación. Esa distancia entre una aplicación estándar y una aplicación terminada explica buena parte de Clarion.

[05:00] El sistema automatizaba trabajo conocido y dejaba espacios para las particularidades. Mi impresión es que el corazón de Clarion está en esa primera excepción. Ahí empieza el valor del programador que conoce el negocio. Si es tu primera vez acá, suscribite a Archivo del Futuro. Y si ya estás suscrito, contanos en comentarios qué tema te gustaría ver acá.

[05:23] ¿Cómo se agregaba esa excepción sin perderla al volver a generar el programa? La respuesta se fue desarrollando con las plantillas. Detrás conviven dos piezas, el lenguaje en que queda escrito el programa y las instrucciones que usa el generador para producirlo.

[05:39] Clarion es también un lenguaje de programación. Permite definir información, comparar valores, repetir operaciones y organizar procedimientos. El programador puede escribir una condición. Si la deuda supera el límite permitido, impedir que el pedido siga y mostrar el motivo. La computadora necesita instrucciones precisas para cada paso, incluso cuando la frase comercial parece evidente. El lenguaje incorporó recursos útiles para ese tipo de trabajo. Sus tipos decimales permiten

[06:08] fijar cuántos dígitos tendrá un importe y cuántos corresponden a la parte fraccionaria. Eso ayuda a representar cantidades de dinero con una precisión definida. El cálculo final también depende de las reglas de redondeo y del orden de las operaciones que establezca el desarrollador. El descuento de cada renglón y el descuento sobre el total pueden producir diferencias cuando se redondea en momentos distintos.

[06:33] La herramienta aporta la representación. La política de cálculo debe quedar establecida. El entorno reunía editor, diseñadores, compilador y depurador. Una pantalla dibujada allí terminaba expresada como código y el depurador permitía detener una operación para ver por qué un resultado no coincidía con el esperado.

[06:53] En la generación por plantillas, otro programa prepara parte de ese código. Una plantilla contiene instrucciones escritas de antemano, qué preguntas hacerle al desarrollador y qué texto producir a partir de sus respuestas.

[07:06] Si se pide una lista de pedidos por cliente, esas elecciones intervienen en el código generado. Podéis cambiar el orden de las columnas, elegir un filtro o indicar qué formulario abre un botón. Los diseñadores y las opciones de las plantillas registran esas elecciones. Al generar otra vez, el sistema reconstruye el código correspondiente. Para la regla de la deuda, el desarrollador busca el momento adecuado antes de aceptar la operación. Allí introduce su código propio, en un punto previsto para

[07:34] integrarlo con el código generado. Esos puntos de inserción permiten conservar la personalización en las siguientes generaciones. Elegir el momento exige comprender qué ya ocurrió y qué todavía puede cancelarse. Una condición situada después de guardar podría llegar demasiado tarde. Otra, aplicada solamente al formulario, podría faltar cuando los pedidos entran por una importación.

[07:58] Por eso el mantenimiento exige localizar todas las vías que cambian la información. La documentación de Clarion incluye mecanismos para centralizar reglas y evitar que cada pantalla termine aplicando una versión diferente.

[08:11] El ejemplo se complica cuando dos personas venden el último repuesto disponible. Ambas podrían haber consultado una existencia válida antes de confirmar. El sistema necesita coordinar la comprobación y la actualización para que las operaciones no se contradigan. Esa coordinación depende del acceso a los datos y del diseño de la transacción, el conjunto de cambios que debe completarse de forma coherente. Una pantalla generada no decide de por sí sola cuándo reservar una pieza ni qué hacer si el cliente

[08:39] cancela. También los informes tienen decisiones propias. El generador y el diseñador aportan la estructura para recorrer datos y distribuir encabezados, detalles y totales. El responsable del sistema debe establecer qué pedidos entran, cómo se agrupan y qué significa cada suma.

[08:58] Un listado de ventas entregadas y otro de pedidos recibidos pueden mostrar importes distintos y estar ambos bien hechos. Las plantillas podían modificarse y ampliarse. Un equipo podía preparar una solución común para sus proyectos o incorporar una de otro proveedor. Eso repartía el trabajo entre quien mantenía el generador y quien conocía cada negocio. También añadía una dependencia. Al actualizar, había que comprobar que las plantillas, bibliotecas y personalizaciones siguieran encajando. Esa búsqueda tenía

[09:29] límites técnicos muy concretos en la época de dos. Una aplicación debía caber y responder dentro de máquinas con recursos ajustados. En 1991, Jeff Duntemann describía el desarrollo con Clarion Professional Developer 2.1 usando un código intermedio llamado P-Code que ejecutaba una máquina de software. El mismo análisis documentaba una utilidad para traducir ese resultado y enlazarlo como un ejecutable de código máquina. Así, la capacidad de distribuir programas y la tecnología con que se

[10:00] construían evolucionaron antes de la llegada de Windows. La integración posterior de nuevos compiladores fue una transformación más amplia que simplemente permitir crear un archivo ejecutable. Si viste nuestras historias de Turbo Pascal, Delphi o Clipper, vas a reconocer algunos nombres de lo que viene. Esta vez los miramos desde otro lado, el de una herramienta que quería describir el sistema una sola vez y dejar que el generador construyera el resto. La otra parte de esa transformación estaba en Londres. Jensen

[10:30] y Amp Partners International, conocida como JP, desarrollaba la familia de compiladores TopSpeed. La dirigía Niels Jensen, uno de los fundadores de Borland. En 1987, Borland eligió comprar un compilador de C ajeno para vender como Turbo C, mientras en casa tenía casi terminado uno propio. Esa decisión lo separó de la empresa y Jensen se llevó a Londres aquel compilador de nueva generación. Su equipo trabajaba con varios lenguajes sobre una infraestructura común para generar el código final. Clarion

[11:02] necesitaba llevar su manera de describir aplicaciones a esa infraestructura. El acuerdo tecnológico acercó a ambos equipos. En 1992, anunciaron su intención de fusionarse y la unión se concretó durante ese año. El grupo de Londres aportó la experiencia en compiladores a una herramienta centrada en aplicaciones de negocio.

[11:22] Clarion Database Developer 3.0 reunió esa tecnología con un generador más extensible. Las primeras entregas salieron con muchos errores y el equipo de Londres pasó a trabajar en corregirlos. El compilador podía optimizar código y el proyecto podía enlazar distintas piezas. Además, el acceso a los datos se organizó mediante controladores. Un controlador traduce las operaciones que pide el programa a las operaciones que entiende el sistema donde está guardada la información. Eso

[11:50] ampliaba las posibilidades de nuestra distribuidora. Sus pedidos podían necesitar convivir con archivos creados por otra herramienta. El programador ganaba una interfaz común para acceder a distintos formatos, mientras cada controlador resolvía una parte de las diferencias. La compatibilidad real dependía del formato, los tipos de datos y de las operaciones disponibles. En su presentación de septiembre de 1992, Barrington describió las plantillas visuales como una combinación de código

[12:18] condicionado y decisiones interactivas. También explicó los lugares donde insertar código propio. La ambición era sostener una aplicación durante su vida útil, regenerando sus partes comunes a medida que cambiaban las necesidades.

[12:33] Después cambió el escritorio. Los usuarios empezaron a esperar ventanas, botones y varias tareas abiertas. Para el desarrollador, el ratón añadía caminos. Una persona podía cambiar de ventana, cancelar una operación o activar un control en un orden diferente. Había que adaptar el comportamiento del sistema, además de su apariencia. Clarion entró en Windows entre fines de 1994 y comienzos del año siguiente. La empresa había adoptado el nombre TopSpeed Corporation. La nueva familia trasladó la generación de

[13:05] aplicaciones a un entorno gráfico. La primera etapa trabajaba con Windows de 16 bits. Las capacidades posteriores llegaron en entregas distintas. La rama 1.5 llegó en 1995. Con ella se podían construir aplicaciones de 16 bits o de 32. El entorno de desarrollo, en cambio, todavía conservaba componentes de la generación anterior. La herramienta que usa el programador puede tener una arquitectura distinta de la del programa que entrega al cliente. En 1996, Clarion for Windows 2 añadió herencia y

[13:39] encapsulación al lenguaje. Eran recursos para reunir datos y comportamiento en objetos y reutilizarlos de forma organizada. El código existente podía convivir con esas nuevas estructuras. Cada equipo decidía cuánto aprovechaba de esa forma de programar. Clarion 4 incorporó las Application Builder Classes, conocidas como ABC. Son clases reutilizables que resuelven trabajo común de listas, formularios y otras partes de la aplicación. Las nuevas plantillas generaban código que se

[14:09] apoyaba en ellas. Así, una porción del comportamiento pasó a a en una biblioteca compartida con sus propias posibilidades de ampliación. El cambio también pedía aprendizaje. Cuando una acción dependía de una clase y de sus métodos, encontrar dónde intervenir exigía entender esa organización. Podía ahorrarse mucho código repetido y, al mismo tiempo, aumentar el conocimiento necesario para una personalización delicada.

[14:36] Esa tensión atraviesa toda la historia de los generadores de aplicaciones. La parte que la herramienta automatiza también se vuelve una parte que alguien debe comprender cuando aparece un comportamiento inesperado. Las alternativas ofrecían otros puntos de partida. Clipper estaba ligado al mundo de los programas y archivos de la familia dBase. Delphi combinaba el lenguaje Pascal con componentes y diseño visual. Visual Basic acercaba la construcción de formularios y la programación de sus eventos. FoxPro,

[15:05] Paradox y, ya en Windows, PowerBuilder y Access disputaban el mismo tipo de encargo. Todos podían participar en sistemas de negocio con herramientas y recorridos diferentes. Para un equipo con bibliotecas propias en Clipper, conservar ese trabajo podía pesar más que adoptar otro entorno. Para quien necesitaba diseñar una interfaz muy particular, los componentes de Delphi o Visual Basic podían resultar atractivos.

[15:30] [música] Clarion ponía especial énfasis en describir los datos y generar el comportamiento repetido alrededor de ellos. La elección dependía también de experiencia, soporte y mantenimiento. [música] En mayo de 2000, la línea Clarion pasó a SoftVelocity. Al frente estaba Robert Zaunere, que había sido responsable de desarrollo de producto en TopSpeed. El cambio de propietario abrió otra etapa para equipos que ya vendían y mantenían aplicaciones. Sus clientes seguían necesitando correcciones, nuevas

[16:01] funciones y continuidad de sus datos. Una herramienta que mantiene aplicaciones durante años enfrenta pedidos nuevos sobre estructuras antiguas. El negocio quiere compartir información por internet. Una base debe cambiar sin perder registros. Otro desarrollador necesita entender lo que heredó. Cada decisión pone a prueba cuánto trabajo acumulado puede conservarse y cuánto conviene revisar.

[16:24] Un archivo de clientes llega a otra herramienta y sus fechas aparecen como números. [música] Jeff Hoyka busca otro lugar para alojar su portal. Soft Velocity vuelve a revisar el texto de distintos idiomas. ¿Qué permiten conservar esos cambios y qué trabajo exigen para que el negocio siga funcionando?

[16:43] Soft Velocity fue modernizando el entorno. Con la generación de Clarion 7 llegó una interfaz basada en tecnología de Sharp Develop, un entorno de desarrollo construido sobre la plataforma .NET de Microsoft. Eso cambiaba las herramientas del programador. Los programas habituales de Clarion seguían teniendo su propio destino de compilación para Windows. Al mismo tiempo existió un proyecto Clarion.NET. Compartir tecnología de entorno y generar aplicaciones para .NET eran trabajos diferentes. Los anuncios

[17:11] de la época prometían un generador para esa plataforma y la prensa especializada siguió preguntando por su evolución. Para una empresa que preparaba su siguiente sistema, distinguir lo disponible de lo anunciado tenía consecuencias sobre su inversión.

[17:25] La continuidad también se construyó fuera del fabricante. Los complementos podían ampliar la impresión, la seguridad, las comunicaciones y el mantenimiento de archivos. CapeSoft desarrolló, entre otras herramientas, File Manager y NetTalk. IceTips ofreció utilidades y plantillas. Esas piezas daban alternativas a los equipos que necesitaban evolucionar una aplicación existente. File Manager muestra un problema cotidiano. Se entrega una versión nueva del programa y el archivo del cliente todavía tiene la estructura

[17:56] anterior. Hay que agregar campos o convertir información sin confundir los registros guardados. La automatización ayuda con ese trabajo, pero necesita un diseño de actualización y pruebas sobre copias de los datos reales. Puede ocurrir que el programa nuevo se instale en una computadora y una versión anterior siga abierta en otra, o que una conversión se interrumpa y deba recuperarse. La documentación de esas herramientas dedica espacio a la coordinación de versiones y a las copias

[18:23] de respaldo. El negocio necesita poder seguir trabajando después de actualizar, con una forma de comprobar qué cambió en su información. Los datos merecen su propia distinción. Clarion es un lenguaje y un conjunto de herramientas.

[18:37] Dati TPS identifican formatos asociados a su historia. También existen controladores para trabajar con bases externas. SQL es el lenguaje de consulta usado por muchos motores de bases de datos. ODBC es una interfaz para que aplicaciones y controladores se comuniquen. Una base local compartida y un servidor SQL reparten las tareas de manera diferente. Al migrar, puede convenir que el servidor filtre y agrupe los registros antes de enviarlos. Un proceso que recorría archivos desde cada

[19:07] computadora podría necesitar otro diseño. Cambiar el controlador abre una conexión. Aprovechar bien el nuevo motor exige revisar cómo trabaja la aplicación. En 2011, un desarrollador publicó su experiencia trasladando datos de archivos TPS a SQL Server. Tuvo que preparar las columnas de fecha y hora antes de exportar e importar. Sin ese formato, los valores podían verse como números enteros. El caso muestra una dificultad pequeña y concreta, conservar el significado del dato durante el

[19:38] traslado. Otro ejemplo aparece en un intercambio de 2012 sobre migración de Clarion a Windev. Los participantes compartían formas de exportar clientes, convertir fechas y conservar correctamente caracteres dentro de archivos de intercambio. Uno explicó que había colocado una conversión en el punto equivocado de la ejecución.

[19:57] Moverla al lugar adecuado corrigió ese problema. Pasar los datos puede salir bien y todavía faltar pantallas, permisos, cálculos y procesos. En nuestra distribuidora, comprobar la migración significaría seguir operaciones completas. Un pedido antiguo debería conservar su relación con el cliente. Una devolución tendría que afectar la existencia y el saldo de la forma acordada. Los resultados se compararían con casos conocidos. Copiar todas las filas sería una parte del trabajo. Verificar cómo se comportan

[20:27] juntas permitiría saber si se conservó el sistema. El caso de Jeff Oica siguió otro camino. The Marathon System, el programa de oficina que su empresa ofrece a agencias de seguros independientes, tenía un portal para clientes construido con Clarion y NetTalk. Según documentó, trasladó ese servidor de aplicaciones a Ubuntu usando Wine, una capa de compatibilidad que permite ejecutar programas de Windows. Conservó el código de la aplicación y cambió la infraestructura que la alojaba. Eso

[20:57] amplió sus opciones de despliegue sin convertir el programa en una aplicación nativa de Linux. La solución dependía de esa combinación y de sus pruebas. En su guía también aparecen ajustes de configuración y problemas del primer arranque. La continuidad tuvo trabajo propio, aunque evitara una reescritura del sistema. NetTalk aporta otra distinción útil. Puede usarse para construir aplicaciones web y servicios que otros programas consultan. Su documentación aclara que llevar una

[21:26] aplicación de escritorio a la web exige crear una aplicación nueva, aunque pueda reutilizarse parte del código. El acceso desde el navegador cambia la interacción y obliga a revisar qué se comparte y cómo se autoriza. Yo veo en estos casos lo que de verdad guarda un sistema viejo. Decisiones que siguen sirviendo cuando cambian los datos, el alojamiento o la interfaz. La experiencia del desarrollador ayuda a reconocer cuáles siguen siendo válidas. Cuánto conviene conservar depende de cada empresa, de

[21:56] sus costos y de sus objetivos. También puede llegar el momento de reemplazarlo. Si cuesta conseguir soporte, integrar servicios o cumplir requisitos nuevos, una migración puede ganar sentido. Documentar reglas y probar resultados permite llevar el conocimiento a otra tecnología. Una factura correcta en la herramienta nueva necesita representar las mismas obligaciones que la factura que el negocio ya sabía emitir. La evolución del producto continuó.

[22:22] SoftVelocity publicó Clarion 12 en mayo de 2025. Su anuncio separaba el presente de la preparación futura. Esa entrega producía binarios de 32 bits. El paso a 64 quedaba en preparación. La promesa de compatibilidad del fabricante seguía necesitando comprobarse en cada proyecto y con sus complementos. Clarion sigue ofreciéndose como producto comercial con ediciones Professional y Enterprise. En la tienda oficial, la licencia nueva de la edición Enterprise cuesta 2100 dólares e incluye un año de

[22:54] actualizaciones. A un programador que empieza, ese precio le pesa frente a entornos gratuitos. A una empresa que ya factura con su sistema, le pesa mucho menos que reescribirlo. Los complementos tienen sus propias condiciones.

[23:06] Conservar el código ayuda a tener control junto con las herramientas para construirlo y las personas que saben revisarlo. El texto internacional ofreció un ejemplo de revisión. Después del lanzamiento, la empresa anunció otra beta con un tipo de cadena llamado UString. Su objetivo era tratar de forma más explícita texto Unicode, la representación que permite reunir escrituras de distintos idiomas. El diseño se ajustaba con pruebas y comentarios de quienes mantenían aplicaciones reales. El 21 de octubre de

[23:36] 2026, el blog oficial publicó una nueva actualización de esa beta Unicode. Incluía cambios para organizar tablas en el diccionario y mejoras relacionadas con informes y depuración. El depurador, por ejemplo, pasaba a recordar los puntos de interrupción entre una ejecución y la siguiente. Seguía siendo una beta y la preparación para 64 bits iba por otro carril. Dos días después, un anuncio oficial incorporó a esa beta actualizaciones de los controladores de memoria y archivos dinámicos. El trabajo

[24:08] alcanzaba también las piezas internas que conectaban el programa con sus datos. La comunidad participa en ese mantenimiento compartiendo preguntas, herramientas y soluciones en foros y encuentros como Clarion Live. Allí importa cómo se convierte un archivo, dónde se inserta una regla o qué cambia al actualizar. El tamaño de esa conversación pública dice poco por sí solo sobre el valor de una aplicación concreta para el negocio que depende de ella. Volvamos a la distribuidora de

[24:36] repuestos. [música] El sistema útil sabe distinguir un pedido recibido de uno entregado. Conserva precios [música] anteriores, aplica autorizaciones y produce informes que las personas entienden. Parte de ese comportamiento puede venir de plantillas, otra parte fue diseñada y corregida junto a quienes trabajan allí. Su historia está en esas [música] decisiones. Clarion reunió varias formas de construirlas, describir los datos, generar estructuras comunes y programar las excepciones. Después tuvo

[25:06] que adaptar esa combinación a otros compiladores, a Windows, a bases externas y a nuevas maneras de conectarse. Cada transición volvió a exigir criterio sobre qué conservar y qué cambiar. Por eso una herramienta puede seguir siendo útil con poca visibilidad pública. Su lugar depende del trabajo que resuelve, de las personas que pueden mantenerlo y de las alternativas que ofrece [música] cuando cambian las necesidades. En el archivo de un negocio quedan clientes y pedidos. En el sistema que los conecta

[25:36] también quedan años de aprendizaje. Eso es todo por hoy desde Archivo del Futuro. Si te gustó este expediente, deja tu like y suscribite. Nos vemos en la próxima desclasificación.
