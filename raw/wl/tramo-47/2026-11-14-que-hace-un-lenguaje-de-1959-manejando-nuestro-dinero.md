# ¿Qué hace un lenguaje de 1959 manejando nuestro dinero?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RsQv7VecLoI)
- **Canal**: Gilada
- **Publicado**: 2026-11-14
- **Recopilado**: 2026-11-16
- **Idioma**: es-419 (subtítulos manuales es-419 (manual), transcripción literal)
- **Duración**: 16:38

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Es fin de mes. Abrís la aplicación del banco, actualizás los movimientos y aparece tu sueldo. Y enseguida empezás a restarle el alquiler, las cuentas, alguna compra medio chota que hiciste convencido de que iba a ser un problema para tu versión futura.

[00:14] Y ni en pedo te ponés a cuestionarte qué es lo que tuvo que pasar detrás de tu teléfono para que ese número aparezca. Contá que alguien tuvo que calcular cuánto te corresponde, aplicar descuentos y mandar una orden de pago. En algunas empresas y bancos, parte de ese recorrido sigue pasando por programas escritos en COBOL.

[00:31] Es un lenguaje que empezó a diseñarse en 1959. Para que te hagas una idea, el sistema que maneja todo el dinero que tenés en el bolsillo probablemente se haya inventado sobre una base que se inventó antes de que siquiera existiera la televisión a color en casi todo el mundo.

[00:49] ¿Cómo puede ser que sigamos usando algo tan viejo? La misma industria que te cambia una aplicación de lugar cada dos semanas sigue confiándole operaciones importantes a un lenguaje nacido cuando las computadoras todavía se alimentaban con tarjetitas perforadas. Bueno, imaginate que te encargan reemplazar el programa que calcula los sueldos de una empresa.

[01:07] Tenés que conseguir que todos cobren correctamente, incluidos los que tienen condiciones particulares que nadie se acordó de contarte. Y da igual todo lo que tengas que resolver en el aire, fin de mes va a llegar igual, y la gente va a precisar cobrar.

[01:20] Si alguna vez te encontrás en esa situación, no importa qué tan despegado, nivel 500, Linux Arch seas, vas a tener que caer en COBOL en algún momento. O bueno, puede que no, pero las chances son muy grandes de que pases por este programa del que te voy a contar su historia. A fines de los 50, las empresas estaban incorporando computadoras para llevar cuentas, administrar inventarios y procesar registros.

[01:42] El software podía estar muy ligado a una máquina determinada. Cambiar de fabricante podía obligarte a rehacer una parte importante de esos programas. Hay que pensar dos segunditos en lo que significaba eso para una organización que ya había invertido plata en automatizar sus tareas.

[01:56] Ahora había que volver a escribir esas instrucciones, comprobar resultados y formar a la gente para que sepa usarlo. Comprar otra computadora venía acompañado de un montón de laburo que no venía descrito en la caja. Es por eso que más o menos en 1959, representantes de fabricantes, usuarios y organismos de gobierno estadounidenses se reunieron para desarrollar un lenguaje en común orientado al trabajo comercial.

[02:22] El Departamento de Defensa de Estados Unidos, no me pregunten por qué, pero participó impulsando ese esfuerzo. Querían programas más fáciles de leer y menos atados a una sola máquina o a un fabricante en específico. De ahí salió COBOL, una sigla en inglés que significa lenguaje común orientado a los negocios. El nombre te explica bastante bien cuáles eran las prioridades.

[02:43] Había facturas, cantidades y personas esperando que las cuentas cerrasen. Entre sus predecesores estaba FLOW-MATIC, desarrollado por el equipo de Grace Hopper. Utilizaba instrucciones con palabras inglesas para describir operaciones comerciales.

[02:57] Esa experiencia en particular influyó bastante en COBOL, que fue producto del trabajo de varias personas y empresas. Para 1960 ya se publicaba su primera especificación. A fines de ese año, un mismo programa se probó en computadoras diferentes de dos fabricantes distintos.

[03:12] La promesa de compartir un lenguaje empezaba a funcionar, aunque la compatibilidad nunca significó que cualquier programa pudiera mudarse sin tener que revisar los pequeños detalles. Como ya te conté en algún que otro video, el código se procesaba mediante un compilador: un programa que lo traducía a instrucciones ejecutables en el sistema de destino. Así podías expresar el trabajo en COBOL y disponer de una implementación adecuada para cada máquina.

[03:38] El objetivo era reducir cuántas cosas tenías que hacer al cambiar de equipo. Y si mirás el código, es bastante sencillito. Vas a ver palabras como ADD, MOVE o DISPLAY. Por ejemplo, si querés añadir una bonificación al sueldo, sería tan simple como ADD BONIFICACION TO SUELDO.

[03:54] Es un sistema bastante sencillo de variables. Es bastante más explícito que encontrarte una línea llena de símbolos que no conocés. Pero la computadora sigue necesitando instrucciones precisas. No podés escribirle «Pagale lo que le corresponde a este señor»

[04:07] y esperar que averigüe qué negoció el tipo con recursos humanos. También tenés que describir los datos: qué campos contienen números, cuáles contienen textos, cuántos dígitos necesitás y ese tipo de cosas. En un programa típico aparecen divisiones que organizan su identificación, el entorno, los datos y los procedimientos.

[04:23] Puede parecer una cantidad exagerada de preparación para hacer una simple cuenta. Pero la cosa es que si vas a leer miles de registros con la misma estructura, definirla claramente te va a ayudar. Un código de empleado, un importe y una fecha cumplen funciones distintas.

[04:37] Confundirlos puede producir algo bastante más molesto que una pantallita mal acomodada. Por ejemplo, un código puede estar hecho solamente de cifras y aun así funcionar como una identificación. Si empieza con ceros, convertirlo simplemente en un número puede hacer que los pierda.

[04:53] El valor matemático sigue siendo el mismo, pero el registro que espera otro sistema capaz que no coincide del todo. Antes de ponerte a hacer cuentitas, necesitás saber qué significa cada dato y cómo lo van a interpretar los demás.

[05:06] El hecho de que sea parecido al inglés es para facilitar la lectura, pero eso no lo convierte automáticamente en una gran novela que cualquiera puede entender. Podés reconocer cada palabra de una cláusula de un contrato y seguir sin tener la más puta idea de qué es lo que acabás de firmar.

[05:20] COBOL también incorporó formas de trabajar con números decimales que resultaban convenientes para las cuentas. Podés definir cuántas posiciones tendrá un importe y dónde se ubican sus decimales. Eso permite representar exactamente cantidades dentro de los límites que elegiste. Porque algunas fracciones decimales, al guardarse en ciertos formatos binarios, quedan como aproximaciones.

[05:41] Si estás haciendo operaciones con plata, tenés que controlar esos detalles. Es vital que controles cómo se representan los importes y cómo se redondean los resultados. COBOL para esto ofrece herramientas. Otros lenguajes también, usando los tipos y las reglas adecuadas.

[05:54] Pero la cuestión es que elegir decimales tampoco te salva de cualquier error. Si dividís una cantidad entre tres personas, tenés que decidir qué hacés cuando el resultado no te va a entrar exactamente en centavos. El programa, entonces, necesita una regla, y cambiar el orden del cálculo o del redondeo puede cambiar el resultado por completo.

[06:13] Volvamos a la empresa ficticia que te contrató a vos, impresentable, para cambiar todo el sistema del ejemplo que te puse al principio del video. Tenés un archivo con empleados, otro con horas trabajadas y las reglas para calcular los pagos.

[06:26] Un programa puede recorrer esos registros, hacer las cuentas y producir la información necesaria para generar los recibos. Y ese tipo de trabajo se presta al procesamiento por lotes, o batch, que es cuando se prepara un conjunto de datos y se ejecuta una tarea sobre ellos sin que haya una persona apretando un botón por cada registro. O sea, se pasa justamente por lotes. Después pueden seguir otros pasos, como comprobar totales y preparar archivos para otro sistema.

[06:51] Por eso existen trabajos que se ejecutan de noche o en horarios programados. Necesitan información que se reunió durante el día y tienen que terminar antes de que empiece la siguiente actividad. Hay dependencias: si todavía no llegó el archivo correcto, el proceso siguiente se puede quedar esperando.

[07:08] COBOL también se usa en sistemas que atienden solicitudes en el momento. En entornos como CICS de IBM, una petición puede activar programas que consultan o modifican datos. Esa petición puede llegar desde una terminal, una aplicación o un servicio conectado por internet.

[07:22] No importa qué tan nueva y bonita se vea la interfaz que estás usando, capaz que se tiene que hablar con un programa que lleva décadas en evolución. La pantalla del celular y la parte que procesa la operación tienen responsabilidades muy distintas.

[07:35] No importa de qué color sea el botoncito de la aplicación ni qué te agregaron hoy. Lo que realmente importa para lo que tenés en el bolsillo es todo lo que ocurre detrás. Y la seguridad del mundo moderno depende del conjunto.

[07:46] Si transferís plata, hace falta coordinar los cambios en las cuentas, controlar errores y poder recuperarse si algo falla. El lenguaje, las bases de datos y los sistemas que ejecutan las transacciones participan de formas diferentes en cada caso.

[08:00] COBOL por sí solo no convierte cualquier programa en un banco confiable. Hubo equipos construyendo, probando y manteniendo toda esa infraestructura a pesar de basarse en COBOL. Ese trabajo acumulado es parte de lo que una organización tiene que evaluar antes de tocar nada.

[08:15] Porque pasan los años y la empresa puede cambiar. Y ya que estamos imaginativos en este video, vamos a imaginarnos de vuelta que tenés una empresa. Tiene empleados que cobran una bonificación por antigüedad, pero los que ingresaron antes de determinada fecha conservan un convenio anterior que capaz tenía otras condiciones.

[08:30] Imaginate que después vos adquirís otra empresa y cuando absorbés a los trabajadores tenés que mantener algunas de sus condiciones laborales dentro del payroll. Y ponele que las dos empresas o sea, la que vos tenías y la que compraste, empezaban numerando a sus empleados desde 01.

[08:45] Ahora tenés dos personas con el mismo número interno y necesitás distinguirlas sin confundir sus historiales ni sus cosas de pago. Unificar las bases requiere decidir cómo identificar a cada una y qué hacer con los programas que ya utilizan esos números. Esta compra ficticia que te estoy relatando ahora fue una cuestión de reuniones, lapiceras, abogados y toda la cuestión, pero el sistema todavía necesita a alguien que le explique todas las consecuencias de esa absorción.

[09:10] Agrega una condición, modifica una fórmula o consulta otro archivo. Más adelante cambia una regla general, pero algunas excepciones van a seguir vigentes. 20 años después llega alguien con ganas de ordenar el código y encuentra una comparación con una fecha de 1987.

[09:25] Le parece una boludez y se pregunta si se puede sacar. Capaz que esa línea sigue determinando cuánto cobra un grupo de personas en tu empresa, y si la sacás, rompés todo. El programa es capaz de conservar decisiones que ya nadie te va a poder explicar de memoria. Algunas tendrán documentación; otras, ya sabemos que no, y van a estar repartidas en manuales viejos, archivos olvidados y lo que recuerde alguna persona que capaz que lleva media vida laburando en esa empresa. Entonces,

[09:49] antes de reemplazarlas, necesitás averiguar cuáles siguen siendo necesarias. Ese tipo de dificultad escapa muchísimo a solo saber la base de la sintaxis. Precisás un montón de cosas. Vos podés entender perfectamente cómo funciona una condición y todavía ignorar por qué existe la misma.

[10:06] Para modificarla con criterio, necesitás conocer el negocio y sus datos. Además, lógicamente, ese sistema va a hablar con otros. Va a enviar archivos, va a recibir códigos y va a producir resultados que después alguien va a tener que utilizar.

[10:17] Si cambiás el formato de salida porque te parece más cómodo capaz que el programa de la otra punta deja de reconocerlo. Todo esto te lo cuento porque esa es la base de por qué todavía seguimos usando un lenguaje que se inventó en 1960.

[10:30] Algunos son infalibles, eh, no me malinterpreten. Hacen Lisp desde el inicio de los tiempos y nadie se ha quejado. Lo mismo con C, pero bueno, la organización tiene que conocer sus costos y saber qué resultados esperar. Reemplazar COBOL exige un presupuesto, pruebas y una transición que permita seguir trabajando y todo eso es dificilísimo.

[10:47] Eventualmente pasa lo que pasa en todos lados: se vuelve una excusa para postergarlo y al final nunca lo hacés. Cada cambio se termina haciendo a las apuradas, la documentación queda para que alguien la llene otro día, y las personas que entienden el sistema se van yendo de a poco de la empresa.

[11:01] Cuando finalmente quieras intervenir, primero tenés que reconstruir lo que fuiste dejando de conocer a medida que puedas rescatar los retazos de memoria de otras personas. El problema del año 2000, o del Y2K, mostró lo concretas que podían ser esas decisiones acumuladas cuando algo explota.

[11:15] Muchos sistemas representaban el año usando solamente dos dígitos. Guardar 99 en vez de 1999 ahorraba espacio y parecía suficiente dentro del contexto para el que se habían diseñado. El tema es que esta gente no sé qué se pensó, que no no íbamos a llegar a cambiar el milenio o algo, porque llegó el 00 y un programa podía interpretar eso como 1900.

[11:36] Podía equivocarse al ordenar las fechas, calcular edades o decidir si algo había vencido. Por ahí venía todo el tema de la conspiración de que se iba a terminar el mundo en los 2000 y bla, bla, bla. Porque una diferencia aparentemente chica podía terminar afectando procesos enteros a escala global.

[11:50] Esto tampoco es exclusivo de COBOL, no me malinterpretes. La forma de almacenar y tratar las fechas aparecía en programas y datos de distintas tecnologías. Había que localizarla, corregirla y comprobar que la información siguiera entendiéndose entre sistemas. Se dedicó muchísimo trabajo a esas revisiones antes del cambio de siglo.

[12:06] La oficina de auditoría del gobierno estadounidense documentó, por ejemplo, cómo los preparativos de la Seguridad Social contribuyeron a que la transición pudiera funcionar. Y bueno, ta, te hablo de Estados Unidos porque en realidad es lo más documentado y fácil que pude encontrar.

[12:20] Pero ese mantenimiento continúa. En un informe de 2025, la misma oficina identificó 11 sistemas federales especialmente necesitados de modernización. Entre ellos había sistemas de la Tesorería de Estados Unidos que todavía utilizaban COBOL y assembly, con dificultades para disponer del personal capacitado que necesitaban para poder mantenerlo.

[12:40] En ese informe también se había encontrado que tenían un montón de hardware o software sin soporte y un montón de vulnerabilidades en parte del conjunto analizado. COBOL siguió teniendo compiladores y herramientas de desarrollo.

[12:52] Incluso existe GnuCOBOL, un compilador libre que funciona en sistemas como Linux, Windows y macOS. Podés escribir un programa en una computadora común. No necesitás una máquina de museo, tipo una Xerox Alto o algo por el estilo.

[13:04] Lo difícil, en realidad, es que muchos puestos de trabajo requieren conocer el entorno concreto donde ese programa efectivamente corre: los archivos, la base de datos, las tareas programadas y las reglas de organización.

[13:16] Hacer un curso te permite empezar, pero hacerse cargo de una liquidación real requiere muchísima más información que ni la experiencia te va a dar. Y entonces, ¿Cómo reemplazás todo eso? Una posibilidad es hacerlo por partes.

[13:28] Primero identificás qué hace cada componente y con cuáles se comunican, y después elegís una función que puedas separar y comprobar. Podés actualizar el entorno manteniendo código, conectar servicios nuevos o reescribir determinados programas.

[13:41] Cada opción conserva algunas cosas y obliga a revisar otras. Cambiar de lenguaje es una decisión dentro de ese trabajo y tiene que servir para resolver un problema concreto. Supongamos que reescribís el cálculo de la bonificación del que hablamos hace un rato.

[13:54] Pasás los mismos casos al programa viejo y al nuevo y comparás los resultados. Incluís a los empleados del convenio anterior, las fechas límite y las situaciones que casi nunca ocurren. Porque una regla puede decir que la bonificación corresponde después de cumplir cierta antigüedad, pero ¿qué pasa justo el día del aniversario?

[14:11] ¿Se calcula con la fecha del cierre o con la del pago? Esa clase de preguntas que inesperadamente me roban el sueño cada tanto tienen que tener una respuesta consistente a lo largo de todo el sistema. La prueba sirve para descubrir qué decisión estaba tomando el sistema y si el reemplazo sigue haciendo lo mismo.

[14:27] Y si aparece una diferencia, toca investigarla. El programa viejo podría tener un error, pero también podría estar aplicando una regla que tu reemplazo había perdido. Que el nuevo código se vea más ordenado no alcanza para decidir cuál es el correcto.

[14:40] Y comparar resultados obviamente va a exigir cuidar cómo hacés la prueba. Podés calcular dos veces cuánto debería cobrarse sin ejecutar dos pagos reales. En una transición, hay que distinguir la comprobación del resultado efectivo de las operaciones que cambian algo en el mundo real.

[14:55] La IA medio que ya se está metiendo en toda esta transición, porque ya ayuda a explicar código, localizar relaciones y producir una primera traducción. IBM, por ejemplo, desarrolla herramientas para ese mismo trabajo y también mecanismos para comprobar la equivalencia entre programas de COBOL y sus versiones transformadas a Java.

[15:12] Todavía no hemos sacado el factor humano y la validación del medio del proceso, pero bueno, es un avance. De hecho, investigadores de IBM publicaron un trabajo sobre esas pruebas, donde advierten que las traducciones generadas por modelos no pueden darse por correctas sin verificarlas.

[15:28] O sea, sí, obvio, lógico. Estamos hablando del sistema que maneja dinero. Y a mí lo que me interesa de COBOL es la cantidad de decisiones humanas que puede seguir ejecutando un programa cuando sus autores ya se fueron, inclusive algunos de este plano. Un lenguaje capaz de recordar y poder referenciar una fecha, una excepción, una forma de redondear y cosas que parecen minúsculas hasta que realmente afectan un tipo de contabilidad.

[15:49] Fijate esto: que en 1960 uno de los integrantes del comité llegó a encargar una lápida para COBOL porque tenía miedo de que el proyecto no tuviese futuro. Décadas después, el lenguaje sigue teniendo trabajo pendiente para actualizarse.

[16:02] Alguien tiene que entender qué hace, mantenerlo o reemplazarlo sin perder lo que todavía importa. Mientras tanto, vos abrí la aplicación y mirá si entró el sueldo. Y si está todo bien, si te pagan más, te callás la boca y listo.

[16:13] Y la cosa es que detrás de ese número hubo instrucciones que alguien escribió, condiciones que alguien negoció y personas comprobando que todo siguiera funcionando. Si hicieron bien su trabajo, lo más probable es que nunca te enteres ni de sus nombres.

[16:25] Porque así funciona la tecnología que realmente sirve: es invisible hasta que falla.
