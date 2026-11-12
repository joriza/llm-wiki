# La irrazonable eficacia del HTML: por qué el equipo de Claude Code ya casi no usa Markdown

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=MBWwn15rmXU)
- **Canal**: Articulator ES
- **Publicado**: 2026-11-03
- **Recopilado**: 2026-11-12
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 12:11

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Markdown se ha convertido en el idioma en el que los agentes nos hablan. Pero Thariq, del equipo de Claude Code en Anthropic, ha dejado de usarlo. Ahora le pide todo a Claude en otro formato, el de las páginas web. En su artículo, "La irrazonable eficacia del HTML", explica por qué.

[00:18] Hoy te lo cuento en español. Markdown tiene muchas virtudes. Es simple y se lleva a cualquier sitio. Admite algo de texto enriquecido y es fácil de editar a mano. Claude incluso se ha vuelto sorprendentemente bueno dibujando diagramas con caracteres ASCII dentro de un archivo de Markdown.

[00:36] Pero los agentes son cada vez más potentes y Thariq siente que Markdown se ha quedado estrecho. Le cuesta leer un archivo de más de 100 líneas. Quiere visualizaciones más ricas, con color y diagramas, y quiere poder compartirlas con facilidad.

[00:50] Además, cada vez edita menos esos archivos él mismo. Los usa como especificaciones, como documentos de referencia o como resultado de una lluvia de ideas. Y cuando hay que cambiarlos, se lo pide a Claude. Así que una de las grandes ventajas de Markdown, que se edita fácil a mano, ya casi no le sirve.

[01:09] Por eso ha empezado a preferir el HTML como formato de salida. Y ve que cada vez más gente del equipo de Claude Code hace lo mismo. En este vídeo vemos por qué, cómo empezar, para qué lo usa y qué dudas suele despertar.

[01:22] Thariq da seis razones. La primera es la densidad de información. El HTML le puede contar mucho más que el Markdown. Hace lo básico, como títulos y formato, pero también puede representar muchos otros tipos de información.

[01:36] Puede tener tablas con filas y columnas de verdad, diseño con CSS, ilustraciones con SVG, fragmentos de código resaltados, interacción con controles que responden gracias a JavaScript, flujos de trabajo con cajas y flechas, datos espaciales con coordenadas y lienzos, y por supuesto, imágenes.

[01:57] Thariq llega a decir que casi no hay información que Claude pueda leer y que no se pueda representar con HTML de forma bastante eficiente. Por eso es una vía muy eficaz para que el modelo te cuente algo en profundidad y para que tú lo revises.

[02:11] Cuando no puede usarlo, el modelo recurre a trucos poco eficientes en Markdown, como los diagramas en ASCII, o su favorito, aproximar colores con caracteres Unicode. En esta captura, Claude Code intenta enseñar una paleta de colores con bloques de puntitos grises.

[02:27] Segunda razón, la claridad visual. Claude hace trabajos cada vez más complejos, así que escribe especificaciones y planes cada vez más largos. Thariq reconoce que, en la práctica, no lee más de 100 líneas de Markdown y, desde luego, no consigue que nadie más de su empresa las lea.

[02:45] En cambio, un documento en HTML se lee mucho mejor. Claude puede organizarlo para navegarlo con pestañas, ilustraciones y enlaces, y puede adaptarlo al móvil, para que lo leas distinto según la pantalla. Es el mismo contenido, pero pensado para leerlo y no para hacer scroll.

[03:01] Tercera razón, se comparte fácilmente. Un archivo de Markdown cuesta compartirlo, porque la mayoría de navegadores no lo muestran bien. Acabas mandándolo como adjunto en un correo o en un mensaje, con HTML, basta con subir el archivo, por ejemplo, a S3 de Amazon y compartir el enlace.

[03:21] Tus compañeros lo abren donde quieran y lo consultan cuando lo necesitan. Según Thariq, la probabilidad de que alguien lea de verdad tu especificación, tu informe o la descripción de tu pull request es muchísimo mayor si está en HTML.

[03:35] Cuarta razón, la interacción en los dos sentidos. Puedes pedirle a Claude deslizadores y ruedas para ajustar un diseño o para cambiar las opciones de un algoritmo y ver qué pasa. Y un botón que copia tus cambios como un prompt para pegarlos de vuelta en Claude Code.

[03:50] Quinta razón, el contexto. ¿Por qué hacer estos archivos con Claude Code y no en la web de Claude o con Claude Design? Porque Claude Code puede leer muchísimo contexto. Tus archivos, tus servidores MCP, como Slack o Linear, tu navegador con Claude in Chrome y tu historial de Git.

[04:08] Veamos un ejemplo. Para escribir este artículo, Thariq le pidió a Claude Code que buscara en su carpeta de código todos los archivos HTML que había generado, que los agrupara por tipos, y que hiciera un HTML con un diagrama de cada tipo.

[04:21] Los diagramas del artículo salieron de ahí. La sexta razón: es divertido. Hacer documentos en HTML con Claude es más entretenido, y Thariq se siente más implicado en lo que crea. Dice que solo por eso ya merece la pena.

[04:36] ¿Y cómo se empieza? Thariq teme que la gente lea su artículo y lo convierta en una skill de HTML o algo parecido. Puede tener su valor, pero insiste en que no hace falta casi nada. Basta con pedirle a Claude, hazme un archivo HTML o hazme un artefacto HTML.

[04:53] El truco está en saber qué quieres que haga ese archivo y cómo lo vas a usar. Con el tiempo, quizá acabes creando una skill. Pero de momento, Thariq recomienda pedirlo desde cero cada vez, para aprender a sacarle partido en cada caso.

[05:07] Thariq ha hecho muchos archivos HTML para usos distintos y los ha reunido en una galería. Los agrupa en cuatro familias. La primera, especificaciones, planificación y exploración. Cuando empieza con un problema, en lugar de un plan sencillo en Markdown, espera acabar con una red de archivos HTML.

[05:25] Primero le pide a Claude Code una lluvia de ideas con varias opciones distintas. Luego le pide que profundice en una, quizá con maquetas o fragmentos de código. Cuando lo ve claro, le pide un plan de implementación con maquetas, el flujo de datos y el código importante.

[05:41] Si el plan le convence, abre una sesión nueva y le pasa todos esos archivos para que lo implemente. Y al verificar, el agente que comprueba el trabajo los lee también. Así que entiende mucho mejor qué se necesita. Por ejemplo, este prompt: "No sé qué dirección darle a la pantalla de bienvenida.

[05:59] Genera seis enfoques muy distintos y ponlos en cuadrícula en un solo HTML para compararlos. Etiqueta cada uno con lo que sacrifica. Sirve para explorar varios diseños o varias formas de programar lo mismo." Segunda familia.

[06:14] Revisar y entender código. En Markdown, el código cuesta leerlo. En HTML se pueden mostrar los cambios con anotaciones, diagramas de flujo o módulos. Sirve para entender lo que ha escrito el agente, para pedir una revisión o para explicar tu pull request a quien lo revise.

[06:31] A Thariq esto le funciona a menudo mejor que la vista de cambios de GitHub. Y ya añade un explicador en HTML a cada pull request que hace. Su prompt: "Ayúdame a revisar este pull request. Muestra los cambios con anotaciones al margen y colorea los hallazgos según su gravedad."

[06:49] Tercera familia. Diseño y prototipos. Claude Design se basa en HTML porque es increíblemente expresivo para diseñar, aunque el producto final no sea una web. Claude puede bocetar el diseño en HTML y después escribirlo en el lenguaje que uses, sea React o Swift.

[07:06] También puedes prototipar interacciones. Por ejemplo, quiero un botón de pago nuevo que, al pulsarlo, haga una animación y se vuelva morado. Hazme un HTML con deslizadores para probar opciones y un botón para copiar los parámetros que funcionen.

[07:21] Sirve para documentar tu sistema de diseño, con sus colores, tipografías y espaciados. Para ajustar componentes, para ver una biblioteca de componentes de un vistazo o para prototipar animaciones que den gusto. Cuarta familia.

[07:35] Informes, investigación y aprendizaje. Claude Code es muy bueno juntando información de varias fuentes y convirtiéndola en un informe fácil de leer. Puede buscar en tu Slack, en tu código, en el historial de Git o en Internet y preparar informes para ti, para tus jefes o para tu equipo.

[07:54] Puede ser un documento largo, un explicador interactivo o incluso una presentación, con diagramas en SVG. Para sus artículos sobre la caché de prompts, Thariq le pidió que leyera el historial de Git y le preparara un informe a fondo en HTML con todos los cambios del equipo.

[08:11] Otro prompt. No entiendo cómo funciona nuestro limitador de peticiones. Lee el código y hazme una sola página que lo explique, con un diagrama del flujo, los fragmentos clave comentados y una sección de trampas al final.

[08:24] Sirve para entender una función o un concepto, o para el informe semanal a tu jefe. Hay cosas difíciles de describir solo con texto. En esos casos, Thariq le pide a Claude un editor desechable, hecho para lo que tiene entre manos.

[08:38] No es un producto ni una herramienta reutilizable. Es un único archivo HTML pensado para ese dato concreto. El truco es terminar siempre con una exportación. Un botón de copiar como JSON o de copiar como prompt que convierte lo que hiciste en la interfaz en algo que puedes pegar en Claude Code.

[08:58] Por ejemplo, tiene que repriorizar 30 tíquets de Linear. Le pide un HTML con cada tíquet como una tarjeta que se arrastra entre 4 columnas: Ahora, Siguiente, Más tarde y Fuera. Claude las coloca primero según su criterio, y un botón exporta el orden final con una frase que justifica cada columna.

[09:17] Otro, un formulario para editar la configuración de sus interruptores de funciones. Los agrupa por áreas, muestra las dependencias entre ellos y le avisa si enciende uno cuyo requisito está apagado. Y un botón de copiar diferencias le da sólo las claves que ha cambiado.

[09:32] Otro para afinar un prompt de sistema. A la izquierda, el prompt editable, con las variables resaltadas. A la derecha, tres ejemplos que se rellenan en vivo. Debajo, un contador de tokens y un botón de copiar. Sirve para ordenar o clasificar cualquier cosa, para editar una configuración con reglas, para afinar prompts viendo el resultado, para curar datos o anotar documentos, y para elegir valores que cuesta expresar con palabras, un color, una curva de animación, un recorte o una expresión regular.

[10:04] Thariq ha oído varias preguntas una y otra vez. ¿No gasta más tokens? Sí, Markdown suele gastar menos, pero el HTML es más expresivo y es mucho más probable que él lo lea. Así que en conjunto, el resultado es mejor. Y con la ventana de un millón de tokens de Claude Opus, el gasto extra casi no se nota.

[10:24] ¿Cuándo usa todavía Markdown? Casi nunca. Lo ha dejado para casi todo, aunque reconoce que es un maximalista del HTML. ¿Y cómo abre los archivos? En el navegador, en local o pidiéndole a Claude que los abra. Y si quiere compartirlos, los sube a S3.

[10:41] ¿No tarda más? Sí, el HTML puede tardar entre 2 y 4 veces más que el Markdown, pero para él compensa. ¿Y el control de versiones? Es uno de sus mayores inconvenientes. Las diferencias entre dos versiones de un HTML tienen mucho ruido y cuestan más de revisar.

[10:58] ¿Y cómo consigo que no quede feo? El plugin de diseño front end ayuda a Claude a hacer buenos HTML. Y para que siga el estilo de tu empresa, pídele un único archivo con tu sistema de diseño, sacado de tu código. Después, úsalo como referencia para todos los demás.

[11:14] Al final, Thariq cree que la verdadera razón por la que usa HTML es que se siente mucho más dentro del bucle con Claude. Como había dejado de leer los planes a fondo, temía que no le quedara más remedio que dejar a Claude tomar sus propias decisiones.

[11:29] Pero se alegra de decir que ha pasado lo contrario. Con el HTML se siente más dentro del bucle que nunca. Y espera que a ti te pase lo mismo. En resumen, Markdown se queda corto cuando los agentes escriben más de lo que podemos leer.

[11:44] El HTML aporta densidad, claridad, enlaces que se comparten, interacción y contexto. Y te devuelve al bucle. Si te ha sido útil, dale a me gusta y suscríbete al canal para no perderte el próximo vídeo. Y cuéntame en los comentarios, ¿tus agentes todavía te escriben en Markdown?

[12:00] ¡Hasta pronto!
