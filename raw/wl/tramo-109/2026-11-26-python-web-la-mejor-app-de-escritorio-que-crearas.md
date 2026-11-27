# Python + Web = La mejor app de escritorio que crearás

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=PNPRbeXtFEc)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-11-25
- **Recopilado**: 2026-11-27
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:12

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esta página no puede guardar un archivo en tu disco. Esta otra sí, y es exactamente el mismo archivo HTML. Entre una y otra hay 10 líneas de Python, 10. Cuéntalas conmigo más adelante. Con ellas mi página web ya es una app de escritorio y no le cambié ni una coma. Y la pregunta que me quitó el sueño es esta. Si el navegador no puede escribir en tu disco, ¿cómo termina escribiendo una página que sigue siendo la misma?

[00:24] Nada de reescribirla, nada de meterle Electron con todo lo que trae. Para probarlo armé un cotizador para una ferretería. Seis productos, un botón más para agregar cada uno y abajo el neto, el IVA del 19% y el total. Lo hice en una página HTML normal. Si eres quien ya sabe HTML, CSS y un poco de JavaScript, esto lo armas en una tarde. Funciona perfecto en el navegador. Agrego un taladro, dos cajas de tornillos y un galón de pintura. Total 92,772 pesos. Todo bien, pero aprieto guardar y

[00:55] sale en rojo. Desde el navegador no puedo escribir directo en tu disco. Ojo con la frase. No dice que la web no pueda guardar nada porque puede descargar un archivo o pedirte permiso. Lo que no puede es escribir directo en un archivo de tu disco. ¿Y de qué sirve una cotización que no se guarda? De una calculadora cara. Lo normal aquí es pensar en Electron, instalar Node y empaquetar un navegador entero solo para guardar un archivo. Yo quería lo contrario, tocar lo mínimo y que lo que

[01:20] ya hice siga siendo mío. Aquí entra PyWebView. Se instala como cualquier paquete de Python. Es una librería de Python con 6,200 estrellas en GitHub y licencia BSD 3. La versión que usé es la 6.2.1. Su propia documentación lo dice sin rodeos. Muestra contenido HTML en su propia ventana nativa. Con PyWebView una página HTML queda dentro de una ventana nativa en unas 10 líneas de Python sin aprender un framework nuevo. Quien ya sabe HTML ya tiene casi todo el trabajo hecho. ¿Suena demasiado simple? Entonces

[01:52] cuéntalas tú mismo. Mira el archivo completo. Se llama app.py y lo vamos a contar en voz alta. Líneas 1 y 2, las importaciones. La tres es una línea en blanco. De la línea al la ocho hay una clase con una sola función. Recibe las filas, abre cotis.csv, escribe cada fila con el módulo CSV y devuelve un texto de confirmación. La nueve crea la ventana, apunta a mi index.html y le entrega esa clase. La 10 la pone a funcionar. 10 líneas, esa es toda la aplicación. Pero fíjate en lo raro, ahí

[02:25] no hay IVA, no hay botones, no hay un solo estilo, nada dibuja nada. Todo eso sigue viviendo en la página. Entonces, ¿cómo llega una fila desde un botón hasta ese archivo? Pero 10 líneas que nadie ha ejecutado no prueban nada. Así que abro la terminal y escribo python app.py y la misma página queda dentro de una ventana nativa, sin barra de direcciones y sin pestañas. Se ve y se siente como una aplicación de escritorio, porque lo es. Vuelvo a agregar el taladro, las dos cajas de

[02:53] tornillos y la pintura. Neto, 77,960 pesos. IVA, 14,812. Total, 92,772. Los mismos números que en el navegador. Aprieto guardar y esta vez sale en verde. Guardada en tu disco. Tres productos. Fíjate en lo que no hice, no toqué el HTML, no instalé node, no escribí un servidor. Cierro la app, abro el archivo con cat cotis.csv y ahí están, tres filas escritas por Python.

[03:21] El taladro, los tornillos con cantidad dos, la pintura. Una aclaración honesta, esto lo grabé en Linux y por eso el marco de la ventana es de Linux. Ahí PyWebview usa Qt Web Engine. En Windows es el mismo código y usa Webview 2, el motor de Edge que necesita estar instalado en el equipo. Pero sigue la pregunta, la página no cambió y aún así hace algo que antes no podía. ¿Qué le pasó? Piénsalo así. Hasta ahora tenías una página que sabe mostrar cosas y calcular, pero vive en una jaula. El

[03:50] navegador la protege de tu disco y hace bien. Del otro lado tenías Python, que puede hacer lo que quiera con tus archivos, pero no sabe dibujar una interfaz bonita. Cada uno tiene lo que al otro le falta. Faltaba unirlos sin romper nada. Aquí está lo que casi nadie te cuenta. La diferencia entre las dos tomas está en lo que existe dentro de la ventana, no en el archivo. Cuando PyWeb View abre tu página le pone un objeto extra, window.pywebview.

[04:16] En el navegador ese objeto no existe, dentro de la app sí. ¿Y quién se entera de que ese objeto existe? Mi botón guardar. Hace una sola pregunta antes de nada y es lo primero que escribí en su código. Si ese objeto no existe estoy en un navegador y aviso. Si existe estoy dentro de Python y sigo. Ese mensaje rojo del principio lo escribí yo, no el navegador. Esto cambia cómo piensas el problema. Dejas de pensar reescribir mi web como app y empiezas a pensar mi web sigue siendo web y le abro una puerta

[04:46] hacia Python solo donde la necesito. Estilos, IVA y botones se quedan donde estaban. Falta ver cómo viaja el dato y ahí hay una trampa. Sigue una fila, aprieto guardar. JavaScript arma una lista con tres filas, fecha, producto, cantidad, precio y subtotal. Hasta aquí es JavaScript normal. Entonces ocurre la llamada que importa. Lee eso despacio.

[05:08] ¿Ves lo que pasa? Estás llamando a una función de Python como si fuera de JavaScript. El await es porque el viaje tarda un instante y la página espera la respuesta. Esa llamada no necesita rutas ni un servidor que levantar ni JSON que armar a mano. Tú escribes la llamada y PyWeb View se encarga de cruzar. Del otro lado PyWeb View recibe esas filas, busca en la clase API una función que se llame guardar y la ejecuta. Esa clase es la que le entregaste en la línea nueve con jsapi igual a API con paréntesis.

[05:37] Python abre cotis.csv, escribe las tres filas y devuelve un texto. Ese texto cruza de vuelta, llega a la página y aparece en pantalla. Guardada en tu disco tres productos, botón, JavaScript, Python, archivo y de regreso. Eso es todo el puente. Cada función que pongas dentro de esa clase tu página la puede llamar igual. Podrías sumar una que lea cotis.csv y devuelva las filas para mostrarlas en la propia página. Si quieres armarlo tú el completo, con tres retos, está en Ahora, te dije que había una trampa. Hay

[06:10] dos grandes y prefiero contártelas yo. La primera está en mi propio código. Abrí el archivo con el modo A, de agregar. Si guardas dos veces la misma cotización, las filas se duplican. Eso no viene de Fue una decisión mía y es mala para un cotizador real. Usa el modo W o agrega un número de cotización. Un reto para ti. La segunda es más seria. Todo lo que pongas dentro de esa clase tu página lo puede llamar. Si tu aplicación abre solo tus propios archivos, perfecto. Pero si algún día le cargas una página de otra

[06:39] persona, le estás regalando acceso a tu disco. Cuida qué cargas ahí. Un detalle para cuando lo armes tú. Todo lo que empiece con guion bajo dentro de esa clase, no lo expone a la página. Ahí puedes dejar tus funciones privadas, las que nunca quieres que nadie llame desde el HTML. Y otra cosa, la página no tiene el puente listo en el instante en que carga. Por eso llamo a Python desde un botón y no apenas abre la ventana. Si necesitas llamarlo al arrancar, espera el evento Sin eso, la primera llamada puede fallar

[07:09] sin avisarte. Una nota técnica más. Cada llamada desde la página se ejecuta en un hilo aparte de Python. Si dos llamadas pueden tocar el mismo archivo al mismo tiempo, el orden lo pones tú. Aquí no importa porque guardo una sola vez por clic. En una aplicación más grande sí te va a importar. Y una cosa más, para que no te quedes con la idea equivocada. Que esto sea corto no significa que sea un juguete. Es una ventana nativa de verdad, con la página dentro y tu código de Python corre completo del otro lado.

[07:36] Lo que escribas en esa clase puede leer carpetas, abrir otros archivos o llamar a lo que ya tengas en Python. Así que ya lo tienes. Una página HTML que ya sabías hacer, 10 líneas de Python y un puente. Sin reescribir nada y sin aprender un framework. Pero me dejé algo en el tintero y es la pregunta obvia. Esta es solo una de tres formas de hacer la misma aplicación de escritorio. ¿Y cuánto pesa esto comparado con Electron y Tauri que hacen lo mismo? Lo medí.

[08:01] Hice la misma aplicación en las tres, una al lado de la otra. Está en el video que tienes aquí, en pantalla. Nos vemos ahí.
