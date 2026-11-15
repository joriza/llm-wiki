# Sabes SOLID pero te faltan estos 4 principios

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZjfopQLBH1E)
- **Canal**: Torti Code
- **Publicado**: 2026-07-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:41

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Todo el mundo te habla de Solid. Y Solid está bien. Pero la mitad del código horrible que vas a tocar en tu carrera no rompe ni un principio de Solid. Hace otra cosa. Repite la misma lógica en 10 archivos. Resuelve un problema de dos líneas con una arquitectura de astronauta. Construye funciones para casos que nunca van a llegar. Y amarra cada pieza con cada otra pieza, de modo que tocar una rompe tres.

[00:26] Esos cuatro pecados tienen cuatro principios que los curan y que casi nadie te los enseña juntos. Hola, soy Torti y esto es Torti Code. En los próximos minutos. Dry, no te repitas. Kiss, mantenlo simple. Y Yagni, no lo construyas hasta necesitarlo.

[00:47] Cómo separar piezas que hoy están pegadas con Super Glue y la herramienta real con la que se hace. Y cada principio con una analogía de la vida real. El dolor concreto que causa cuando lo rompes. Código que lo viola y luego lo cumple. Y dónde viven sistemas que usas todos los días.

[01:05] Cuando termine, vas a leer código y vas a ver exactamente cuál de estos cuatro está roto. Arrancamos. Empecemos por el primer principio. Dry. Imagina que tienes una receta de salsa que usas en 20 platos distintos. La forma torpe es copiar la receta entera dentro de cada plato. En la pasta, en la lasaña, en la pizza. 20 copias.

[01:29] Todo bien hasta el día que decides cambiar un ingrediente. Ahora tienes que encontrar las 20 copias y corregir las 20. Te olvidas de tres. Y de repente, tres platos saben distinto y nadie sabe por qué. La forma correcta es tener una sola receta maestra en un solo lugar y que los 20 platos digan, usa la salsa maestra.

[01:51] Cambias el ingrediente una vez y los 20 platos quedan corregidos solos. Eso es Dry. no te repitas. Cada pieza de conocimiento de tu sistema vive en un solo lugar, con una sola fuente de verdad. Si una regla cambia, la cambias una vez.

[02:09] Esto lo acuñaron Andy Hunt y Dave Thomas en su libro The Pragmatic Programmer de 1999 y lo definieron casi con esas palabras. Cada pieza de conocimiento debe tener una representación única y autoritativa dentro del sistema. Déjame ponerte el dolor exacto de repetirte. Porque esto suena obvio hasta que lo vives.

[02:31] Tienes la regla del impuesto del 19% escrita a mano en cinco lugares. En el carrito, en la factura, en el correo de confirmación, en el reporte de ventas y en la app móvil. Un día el gobierno sube el impuesto al 21. Tu tarea suena fácil, cambiar un número.

[02:48] Pero ese número está en cinco sitios y solo te acuerdas de cuatro. El quinto, el del reporte, se queda en 19. Nadie lo nota durante semanas. Hasta que contabilidad cruza los números y los totales no cuadran. Ahora tienes un bug silencioso, datos mal calculados en producción y media tarde de tu vida cazando dónde quedó la copia vieja.

[03:11] Ese es el costo real de repetirte. No es feo, es peligroso. Una verdad copiada cinco veces son cinco oportunidades de que una se quede atrás. En la versión mala, la regla del impuesto está copiada dentro de cada función La pasta, la pizza, la lasaña, cada una con su propio 19% escrito a mano.

[03:32] El día que ese impuesto sube, tienes que cazar todas las copias por el código y corregir cada una. En la versión correcta, el número del impuesto y la fórmula viven en un solo sitio, una sola fuente de verdad. Y cada precio la llama.

[03:48] El día que sube, lo cambias una vez y todo el sistema cobra bien. Y aquí DRY deja de ser un consejo y se vuelve herramienta concreta. Esa función como una sola fuente de verdad la pones en un módulo de utilidades, un archivo de helpers compartidos que todo el proyecto importa.

[04:06] Tu carpeta de euros, tus funciones helper, una librería interna que tu equipo rehúsa entre proyectos. Todo eso es DRY hecho herramienta. Ahora, ojo con un matiz que separa al junior del senior. DRY mal entendido te lleva al extremo contrario. Ves dos líneas parecidas y corres a fusionarlas en una abstracción. Y resulta que no eran la misma regla, solo se parecían por casualidad. Cuando una cambie, esa abstracción forzada va a doler más que la duplicación.

[04:35] Por eso existe la regla de tres que popularizó Martin Fowler. La primera vez lo escribes, la segunda toleras la duplicación y solo a la tercera repetición real refactorizas. Repetir un poco a veces es más sano que abstraer mal. Eso da para su propio video. Si lo quieres, déjalo en los comentarios. El segundo principio es KISS.

[04:57] Cuenta la leyenda que cuando empezaron los viajes al espacio hubo un problema. Los bolígrafos no escriben sin gravedad porque la tinta no baja. Y la historia dice que se invirtió una fortuna en diseñar un bolígrafo espacial presurizado carísimo, mientras que del otro lado simplemente usaban un lápiz.

[05:17] Esa historia es más fábula que hecho real, pero captura perfecto el espíritu de KISS. La solución más simple que funciona casi siempre le gana a la solución más impresionante. Cuando te encuentras orgulloso de lo complicada que quedó tu solución, casi siempre vas mal. KISS es mantenlo simple.

[05:37] El principio se le atribuye a Kelly Johnson, el ingeniero aeronáutico de Lockheed que diseñó aviones espía legendarios. Su idea era que sus jets, por avanzados que fueran, tenían que poder repararse en pleno campo de batalla por un mecánico promedio con herramientas básicas.

[05:53] Si tu solución solo la entiende su autor en su mejor día, no sirve. Te pinto la escena, porque a esto le tienes que poner cara. Te piden algo de lo más simple, saber si un número es par. La solución directa es una línea, preguntar si el resto de dividir entre dos es cero y se acabó.

[06:11] Pero llega el programador que quiere lucirse, convierte el número a binario, saca el último dígito como texto, lo compara con cero. Funciona, sí. Pero ahora cualquiera que lea ese código se frena, se pregunta qué está pasando, por qué hay conversión a binario para algo tan tonto.

[06:28] Multiplica eso por todo un proyecto. Cada cosa simple resuelta de forma rebuscada. Capas que nadie pidió, patrones aplicados porque sí. El resultado es un código que nadie se atreve a tocar porque nadie lo entiende. Donde un cambio de 5 minutos se vuelve de 5 horas, porque primero tienes que descifrar el laberinto que alguien construyó para sentirse listo.

[06:50] La complejidad no es gratis, la pagas tú o la paga el próximo cada vez que abren el archivo. Las dos versiones del ejemplo dan el mismo resultado. La primera convierte a binario, saca el último carácter y lo compara. La simple solo pregunta si el resto de dividir entre dos es cero.

[07:09] La complicada se ve más lista. La simple es la correcta y el que la mantenga en 6 meses te lo va a agradecer. Muchas veces esa que llega eres tú. KISS no es escribir código tonto, es no meter abstracciones, capas y patrones que el problema todavía no pide.

[07:28] La solución más simple que resuelve el problema de verdad, esa es la que ganas. El tercer principio es YAGNI. Imagina que acabas de mudarte y piensas, "Algún día quizá tenga un bebé, así que mejor compro ya la cuna, el cambiador, la ropa y armo el cuarto entero.

[07:45] Suena previsor, pero todavía no sabes si vas a tener ese bebé, ni cuándo, ni qué vas a necesitar exactamente cuando llegue. Mientras tanto, ese cuarto está ocupado por muebles que juntan polvo y cuando por fin llegue el momento, la mitad ya estará pasada de moda o no servirá.

[08:02] Eso es YAGNI, no lo vas a necesitar. No construyas hoy lo que crees que vas a necesitar mañana, construye lo que necesitas ahora. Cuando la necesidad real llegue, ya sabrás exactamente qué hace falta y será distinto a lo que habías imaginado.

[08:18] YAGNI viene de Extreme Programming. La frase nació en una conversación. Chet Hendrickson le iba diciendo a Ken Beck todas las capacidades que el sistema iba a necesitar pronto y a cada una Ken respondía, "No la vas a necesitar."

[08:32] Ron Jeffries, uno de los fundadores de la metodología, lo resumió así, "Implementa las cosas cuando de verdad las necesitas, nunca cuando solo prevés que las vas a necesitar." Esto es lo que de verdad pasa cuando lo ignoras. Te toca una función para guardar un usuario. Lo único que necesita el sistema hoy es meterlo en la base de datos, pero tú piensas a futuro, ¿y si algún día queremos exportarlo en otros formatos? ¿Y si lo queremos comprimir? ¿Y si lo queremos cifrar? Y construyes todo eso por adelantado.

[09:02] 50 líneas para algo que necesitaba una. Y aquí viene lo amargo, ese código del futuro nunca se usa, pero igual lo tienes que leer, probar y arrastrar en cada cambio. Es peso muerto y cuando por fin llega el día real, el requisito es distinto a lo que imaginaste, así que tiras tu adivinanza y la rehaces.

[09:22] Construir para un futuro que no llegó no es ser previsor, es regalarte deuda. Y el cuarto principio es el acoplamiento. Piensa en LEGO contra Super Glue. Dos piezas de LEGO encajan firme, funcionan juntas, pero cuando necesitas separarlas, lo haces limpio y sin romper nada.

[09:42] Eso es bajo acoplamiento. Las piezas trabajan juntas, pero no dependen de los detalles internos de la otra, así que cambiar una no obliga a cambiar la otra. Ahora, dos cosas pegadas con Super Glue. Funcionan pegadas, pero el día que quieras separarlas, se rompen las dos.

[09:59] Eso es alto acoplamiento. Y al lado va la cohesión, que es su contraparte y se confunde. Cohesión es que cada caja guarde cosas que van juntas. La caja de tornillos, solo tornillos. Alta cohesión es que cada módulo de tu código haga una cosa clara y todo lo de adentro sirva a esa cosa.

[10:19] La meta de oro es bajo acoplamiento entre módulos y alta cohesión dentro de cada uno. Estos conceptos los introdujo Larry Constantine a fines de los años 60, en lo que llamó diseño estructurado y los formalizó en el libro Structured Design con Ed Yordan en 1979.

[10:38] Mira el dolor en cascada. Tienes un sistema donde pedidos llama directo a pagos, que mete la mano dentro de inventario, que conoce las tripas de envíos. Todo amarrado. Un día te piden cambiar el proveedor de pagos. Suena local.

[10:52] Pero como pedidos dependía de la forma exacta en que pagos hacía las cosas, al cambiar pagos se rompe pedidos y al arreglar pedidos se rompe el reporte que leía de ahí. Tocaste una pieza y se cayeron tres. En efecto dominó.

[11:07] Con bajo acoplamiento aíslas. Cada módulo habla por un contrato, sin ver cómo lo hace el otro por dentro y el cambio se queda encerrado donde lo hiciste. En el código se ve así. En la versión acoplada, un notificador crea por dentro su propio canal de Gmail. Está casado con Gmail.

[11:26] El día que quieras mandar también por mensaje de texto, tienes que abrir esa clase y operarla a corazón abierto. En la desacoplada, el notificador no sabe ni le importa qué canal recibe, solo pide algo que sepa enviar y se lo entregas desde afuera.

[11:41] Eso se llama inyección de dependencias. Gmail, mensaje de texto, lo que sea, encaja como Lego y sale limpio. Y para probarla en un test, le pasas un canal de mentira que no envía nada real. La clave es depender de un contrato, una interfaz, no de una clase concreta.

[11:59] Y esto, en proyectos de verdad, no lo haces a mano pasando todo por el constructor uno por uno. Hay una herramienta entera para esto, los frameworks de inyección de dependencias. Spring en Java, Nest JS en el mundo de Node, el contenedor de inyección que trae .NET, todos hacen lo mismo.

[12:18] Tú declaras qué necesita cada clase y el framework arma el rompecabezas por ti, inyecta las piezas correctas y te deja cambiar una implementación por otra sin tocar a quien la usa. Inyección de dependencias es el principio. Estos frameworks son la herramienta real con la que se aplica todos los días. Estos cuatro principios no son teoría de examen.

[12:40] DRY vive en cualquier carpeta de utilidades y en las librerías compartidas que tu equipo rehúsa entre proyectos. KISS vive en las APIs que de verdad amas usar, las que hacen exactamente lo que dicen con pocos puntos de entrada claros.

[12:56] YAGNI vive en cualquier producto mínimo viable, lanzas lo más pequeño que resuelve el problema central antes de saber si el producto sirve. Y el bajo acoplamiento vive en los microservicios y en cualquier sistema modularizado, sostenido por esos frameworks de inyección de dependencias.

[13:13] Cada servicio habla por un contrato y por eso un equipo puede reescribir el suyo entero sin que los demás se enteren. Recapitulando, DRY, una sola fuente de verdad, no copies la receta en 20 cuadernos. KISS, el lápiz en vez de la nave espacial. Yagni. No amuebles el cuarto del bebé antes de tiempo. Y acoplamiento. Piezas de Lego que se separan limpio, no Superglue que rompe todo al tocarlo.

[13:41] Cuatro principios que Solid no cubre. Y una cosa sobre la inteligencia artificial. Si la dejas suelta, tiende a entregarte un castillo. Capas, abstracciones y opciones para casos que nunca pediste. Justo lo contrario de mantenerlo simple y de no construir de más.

[13:57] Si conoces estos principios, le pides lo más simple y desacoplado que resuelve el problema. Y reconoces cuándo te entregó sobreingeniería disfrazada de buena práctica. Si no, te quedas con el castillo que cae al primer cambio.

[14:11] La inteligencia artificial es brutal cuando tú sabes pedir simple, si no, ella decide por ti. Si este vídeo te ordenó la cabeza, suscríbete. Y ahora mismo ve a ver el vídeo de los principios Solid, porque estos cuatro de hoy son justo los de diseño que Solid no cubre.

[14:28] Juntos te dan el set completo para leer y escribir código limpio. Te lo dejo en pantalla, ve a verlo ya. Y dime en los comentarios cuál de estos cuatro pecados has cometido más. Soy Torti y esto fue Torti Code.
