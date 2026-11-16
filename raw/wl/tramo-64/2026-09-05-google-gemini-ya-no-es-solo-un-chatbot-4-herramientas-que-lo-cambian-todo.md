# GOOGLE GEMINI ya NO es solo un Chatbot: 4 Herramientas que lo Cambian TODO

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ds6DUWA9DDM)
- **Canal**: Patricia Palazón | IA
- **Publicado**: 2026-09-05
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:22

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Durante el último año, todos hemos caído en la misma trampa, pensar que la inteligencia artificial se limitaba a abrir una pestaña, escribir un prompt, esperar una respuesta de texto y copiarla para hacer el trabajo nosotros mismos, pero eso es cosa del pasado.

[00:16] Google acaba de romper esa dinámica por completo. Lo que han lanzado en las últimas semanas no es un modelo para redactar correos bonitos, es un ecosistema agéntico completo, capaz de navegar en internet por su cuenta, programar herramientas, estructurar datos contables reales mientras tú tienes el ordenador apagado. Hoy no te voy a enseñar cuatro plataformas teóricas, voy a ejecutar cuatro casos prácticos reales paso a paso en pantalla. Vas a ver exactamente cómo activar el agente autónomo de Gemini

[00:46] Spark con su propio navegador en la nube para investigaciones complejas, cómo convertir archivos desordenados en entregables ejecutivos con Gemini Notebook, cómo usar AI Studio y Gemini Flash para desarrollo interactivo y cómo orquestar una agencia digital entera con Google Antigravity. El primer caso que vamos a hacer es con Gemini Spark, pero antes de seguir con el primer caso práctico, déjame decirte que todo esto lo vas a poder replicar tú, pero necesitas los prompts exactos. Y digo

[01:14] exactos porque no son prompts de dos líneas, el de Notebook LM lleva una instrucción muy concreta para que te devuelva las fórmulas de verdad en la hoja de cálculo en vez de números pegados. Y si esta línea no está, no funciona. Los tienes los cuatro con los archivos que voy a usar en mi comunidad de WhatsApp. Y he metido una cosa más que te va a interesar, una checklist de qué funciona hoy desde España, qué necesita VPN y qué necesita suscripción, porque no todo lo que vas a ver aquí

[01:43] está disponible igual para todos. Y el enlace está en la descripción de este vídeo, únicamente tendrás que acceder, deslizar hasta abajo y rellenar con tu nombre y tu email para poder acceder a la comunidad Original Bunker. Y ahora sí, seguimos con el vídeo. Entramos en el terreno que separa a Google de cualquier otro competidor, Gemini Spark.

[02:04] Aquí dejamos atrás el concepto de chatbot y entramos oficialmente en la automatización agéntica. ¿Cuál es la limitación de chat GPT o de cualquier otro asistente habitual? Que son reactivos. Tú preguntas, ellos contestan y si cierras el navegador, la sesión se interrumpe. Spark funciona de forma totalmente opuesta. Es un agente asíncrono y persistente que vive en la nube de Google. Pero antes de nada, si estás en Europa, tienes que saber algo.

[02:34] Esto no te va a aparecer por temas de regulación. Para este vídeo hemos tenido que cambiar nuestra VPN a Estados Unidos. Solo así Google nos habilita estas funciones avanzadas. Y ahora, el primer paso que hay que hacer es pegarle este prompt. Se lo pegamos aquí y se lo enviamos. Le acabo de ordenar una tarea que a otra persona le llevaría media hora de navegación aburrida y es buscar tres plataformas de software, meterse en sus webs oficiales, saltar todos los banners de cookies, buscar sus tablas de

[03:08] de precios ocultas, extraer los números exactos, eh redactar un informe en Google Docs y además quiero que mire mi Google Calendar para buscarme un hueco libre para una reunión mañana. Vemos que aquí nos piden los permisos, le damos aceptar, pero hay algo muy importante. Esto no te va a dejar eh continuar, no vas a poder continuar si no le has dado acceso a la aplicación.

[03:31] Por ejemplo, yo en este caso tengo que darle acceso a Google Calendar para que me agende la reunión. Entonces tendría que tener activado esto de aquí. Pero también puedes configurarlo y activarlo con otras aplicaciones como Air table, Canva y otras más. Entonces volvemos al chat, lo abrimos y vemos que ya está trabajando. Fíjate en la ventana que se acaba de abrir. No estoy tocando el teclado ni estoy tocando el ratón. Es una máquina virtual de Chrome corriendo en los servidores de Google. Mira cómo

[04:05] entra en la primera página web, localiza las tarifas, captura las variables y va buscando toda la información. Lo mejor de todo es que no tienes que quedarte aquí mirando. Si yo ahora mismo quiero cerrar el ordenador e irme a comer, Spark sigue trabajando exactamente igual en la nube. Esto lo que realmente está haciendo es buscarme toda la información que yo le he pedido para generarme luego un documento con toda la información. Y aquí en la izquierda nos dice que ha conseguido extraer todos los datos

[04:35] relevantes que nosotros le hemos pedido y ha identificado el periodo disponible que tengo para poder agendármelo en Google Calendar. Ha creado además el documento que le hemos pedido y aquí lo tenemos listo. Nos da los datos claves extraídos en las plataformas que nosotros le hemos dado, el documento que se ha generado, la disponibilidad en Google Calendar y la propuesta que nos ha dado de reunión. Y si lo abrimos aquí, vemos cómo nos da este informe comparativo con el resumen ejecutivo, la

[05:06] metodología, la comparativa general entre las tres páginas webs, el análisis detallado por cada plataforma, todo. Nos da exactamente todo lo que nosotros le hemos pedido. Y esto realmente en lo que nos sirve es que podemos tener un asistente ejecutivo trabajando en paralelo con nosotros. El primer error que comete mucha gente es usar Gemini directamente desde su página normal.

[05:29] Pero si quieres sacarle mucho más partido, tienes que entrar en Google AI Studio. Es una herramienta oficial de Google, gratuita y puedes acceder simplemente con tu cuenta de Google. Muchos usuarios van directos al modelo Pro porque asumen que lo más grande es lo mejor. Pero nosotros vamos a seleccionar Gemini 3.8 Flash. Otra cosa muy importante y que cambia todo es esto de aquí, el nivel de pensamiento. Esto le permite al modelo asignar un presupuesto de tokens para reflexionar

[05:59] antes de empezar a escupir caracteres. Normalmente un modelo empieza a generar la respuesta directamente, pero con el modo pensamiento activado primero analiza el problema, revisa los cálculos y comprueba que todo tenga sentido antes de darle el resultado final. Nosotros lo vamos a dejar en el nivel medio y una vez aquí nos vamos a crear una nueva app. Una vez estamos aquí vamos a pegarle el prompt, se lo enviamos y vamos a pedirle una herramienta que a cualquier desarrollador le llevaría

[06:31] varias horas. Un simulador de hipotecas interactivo con tablas dinámicas de amortización, deslizadores reactivos y diseño en modo oscuro. Aquí nos dice que el diseño está preparado si lo saltamos o seleccionamos este diseño. Y vemos cómo está empezando ya a preparar esta aplicación. Nos salen estas dos ventanitas también aquí arriba, que aquí es donde vamos a poder visualizar eh la la aplicación como tal y aquí si le damos nos va a salir el código de todo lo que está haciendo. Y ya la tendríamos

[07:05] lista después de unos minutos. Vemos cómo aquí nos ha hecho esta aplicación donde es superinteractiva, nosotros podemos mover aquí el capital principal del préstamo, el plazo, el interés anual, nos sale aquí también amortización anticipada, que lo podríamos activar para poner la estrategia de amortización, la frecuencia del pago, el importe de pago extra también lo podríamos poner.

[07:30] Y aquí nos saldría el resumen de la cuota mensual, los intereses totales, el coste total y el plazo de liquidación. Nos sale hasta la evolución, la curva de desapalancamiento financiero, el cuadro de amortización anual, nos sale toda la información. Ahora lo que vamos a decirle es que convierta toda esta aplicación en un único archivo HTML completamente autónomo, para así poderlo abrir. Esto es porque si nosotros le damos aquí a exportar, vemos que se puede exportar con antigravity,

[08:02] con GitHub o subirlo a GitHub o descargarlo en formato zip. Entonces, nosotros lo que nos interesa es poderlo descargar en HTML. Y ahora sí ya lo podemos descargar. Nos vamos a code, nos vamos a exportar, descargamos el archivo zip, lo abrimos y aquí en index nos tendría que abrir el enlace y aquí la tendríamos la página lista para utilizar en el navegador.

[08:27] Como has visto, en tan solo unos minutos puedes tener una aplicación nativa funcional que puedes integrar en tu web o utilizar para tus propios cálculos. Esto demuestra la diferencia entre pedirle a una IA que te hable de programación y usarla como motor de software instantáneo. Pasamos al siguiente caso y este resuelve el problema número uno de todas las personas que trabajan con documentos: el tiempo perdido poniendo datos a mano.

[08:53] Entramos en Gemini Notebook. La gran mayoría de usuarios sigue usando esto únicamente como un lector de PDFs para hacer preguntas o para escuchar el resumen en audio. Pero su motor interno procesa millones de tokens con fidelidad estricta a las fuentes, lo que significa que no inventa datos. Si algo no está en el documento, no se lo inventa. En primer lugar, vamos a crear un cuaderno que lo vamos a llamar como auditoría y estrategia financiera. Una vez ya tenemos creado este cuaderno, el

[09:22] siguiente paso va a ser añadir las fuentes aquí. Para esto yo voy a escoger en mi carpeta de gastos distintos comprobantes de luz, de agua, eh suministros, eh informática, eh cafetería, gastos de la asesoría, los vamos a seleccionar todo y los vamos a añadir en las fuentes. Lo arrastramos y aquí vemos cómo en unos segundos se indexan todos estos PDFs. Y el siguiente paso va a ser pegarle el prompt. Se lo pegamos, lo enviamos y aquí no le vamos a decir que nos haga un resumen. Le vamos a pedir que actúe como

[09:59] un auditor contable que cruce los importes, identifique la base y el IVA de cada proveedor y nos devuelva un entregable listo para presentar. Y si nos fijamos, en unos minutos nos ha analizado todo. Cita con números exactos cada fuente con su fecha, el proveedor, el concepto detallado, la base imponible, el IVA, todo. Te da toda la información, el total de la factura. Si nos fijamos en cafetería, te dice gastos de restauración, menú del día, cafés y agua mineral.

[10:29] El servicio de diseño de identidad visual, te da todos los datos. Además, nos da el análisis de duplicidades, desviaciones e incidencias de control interno, también la hoja de cálculo de control financiero que ahora abriremos en un Excel, el memorando ejecutivo del control de flujo de caja, nos da toda la información. Incluso nos ofrece darnos el impacto de retenciones en flujo de la caja, el informe comparativo por departamento o la auditoría de suministros y consumo. Además, aquí en

[10:57] la derecha podemos ver cómo nos ha creado este Excel. Y cuando lo abrimos en Excel, vemos que lo realmente interesante es esto, es que no se ha pegado un texto plano copiado del chat. Si hacemos doble clic en las celdas, vemos cómo se calcula todo mediante fórmulas. Tanto la cuota de IVA, la base imponible, la retención, se calcula absolutamente todo con estas fórmulas.

[11:20] ¿Esto qué significa? Que has pasado de tener tickets desordenados en una carpeta a tener un modelo contable verificado en menos de 2 minutos. Y ahora sí, llegamos a la cúspide técnica del ecosistema, Google Antigravity. Si Spark es tener un empleado digital, Antigravity es montar tu propia agencia con departamentos coordinados. Hasta la fecha, el cuello de botella de los flujos de trabajo con inteligencia artificial eras tú. Tenías que pedirle el texto a un modelo, copiarlo,

[11:48] pegárselo a otro modelo para que hiciera el código, luego revisar tú los fallos y volver a empezar. Antigravity elimina el intermediario humano mediante jerarquías agénticas. Para poder utilizar esta herramienta de Google Antigravity te la tendrás que descargar en tu ordenador, pero no te preocupes porque es completamente gratuita. Una vez estamos aquí en la interfaz de Google Antigravity, lo que vamos a hacer es crear un nuevo proyecto. Nos vamos a crear nuevo proyecto, escritorio y yo

[12:14] elegiré esta esta carpeta que he creado de demo Antigravity. La abrimos y una vez la tenemos creada le vamos a pegar el siguiente prompt. Se lo enviamos y le decimos que actúe como un agente director de este proyecto. Debes invocar exactamente tres subagentes independientes y mostrar su actividad en el panel de subagentes. Empieza a trabajar y vemos cómo poco a poco va cambiando ya el estado de nuestro proyecto. Se ha dividido en distintas fases, en la fase uno con el subagente

[12:41] asignado, que sería el investigador, con su misión, en la fase dos el desarrollo front-end que está en curso con el subagente desarrollador y la fase tres con el subagente auditor. Vamos viendo cómo poco a poco se va actualizando este proyecto y vemos que la primera fase de investigación ya estaría completada. Y ahora sí ya está la fase dos completada y entra en juego la fase tres. Si encuentra un error, rechaza la entrega internamente. Se la devuelve al desarrollador para que la corrija y a mí

[13:10] solo me notifica cuando el producto cumple el estándar de calidad marcado. Y ahora sí ya la tendríamos creada. Vemos aquí la entrega del proyecto, el resumen de actividad de los subagentes, tanto el subagente investigador, su misión, el diagnóstico de los tres problemas críticos, la propuesta de valor, el entregable y nos dice que para visualizar la landing page en nuestro navegador, la podemos abrir directamente desde este archivo HTML. Le damos y ahora sí, para descargarlo nos vamos

[13:39] aquí a los tres puntos, le damos aquí y se nos abrirá la carpeta. Le damos a index y vemos aquí cómo nos ha creado esta landing. Aquí arriba podemos encontrar el problema, la solución, el antes y el después, la calculadora ROI, los casos de éxito, incluso preguntas y respuestas. Toda la información necesaria. Como acabas de ver, la batalla de la inteligencia artificial ya no consiste en ver qué modelo redacta mejor o quién tiene la interfaz más bonita. Consiste en la capacidad de

[14:10] ejecución y autonomía. El flujo de trabajo que marca la diferencia en este 2026 combina estas cuatro capas. Usas Gemini Flash en AI Studio cuando necesitas crear herramientas, prototipos y código limpio en segundos sin coste.

[14:24] Usas Gemini Notebook para volcar el caos de tus documentos y obtener hojas de cálculo y presentaciones ejecutivas reales con fórmulas. Dejas que Gemini Spark se encargue de la investigación web pesada y la navegación en segundo plano mientras tú descansas y estructuras en antigravity tus propios equipos agénticos para que resuelvan proyectos complejos de principio a fin sin requerir tu supervisión constante en cada paso. En la descripción tienes los enlaces oficiales de las cuatro

[14:52] herramientas para que las abras ahora mismo. Los completos, los archivos de prueba y la checklist de disponibilidad están en la comunidad de WhatsApp. Y ahí es donde voy subiendo también lo que va cambiando, porque esto se mueve cada dos semanas. Y lo que hoy no está en España, mañana sí. Para acceder, te dejo aquí abajo en la descripción del vídeo el enlace para entrar en la landing y únicamente tendrás que deslizar hasta abajo, rellenar con tu nombre y email y poder solicitar el acceso a la

[15:18] comunidad. Y si te ha gustado este vídeo, dale like, suscríbete y nos vemos en el siguiente.
