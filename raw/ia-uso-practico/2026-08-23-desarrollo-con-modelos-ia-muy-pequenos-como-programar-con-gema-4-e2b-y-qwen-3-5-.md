# Desarrollo con Modelos IA Muy Pequeños 🚀 Cómo Programar con Gema 4 E2B y Qwen 3.5 2B

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=nDN9G6EsAfs)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-23
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:09

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Los dos modelos 2B que hemos descargado y preparado para ser ejecutados en llama cpp los tenemos por aquí, Gema 4E2B y Qwen 3.52B y simplemente ejecutando llama cpp.bat lo podemos abrir y trabajar con ambos modelos. Ahora nuestra prueba va a ser dentro de Open Code para ver qué tal se comportan estos modelos pequeñitos en grandes contextos, en el uso de herramientas para tareas más complicadas. Voy a añadir un nuevo proyecto y lo vamos a llamar, por ejemplo, landing. Presiono intro, le

[00:34] damos en seleccionar carpeta y comencemos, por ejemplo, con Gema 4E2B. Le vamos a decir algo como lo siguiente, desarrolla los siguientes archivos de una landing page, style.css, main.js, index.html. Deberá ser de un servicio de hosting ultrarrápido potenciado con IA. Usa Bootstrap y Bootstrap icons con su tema claro. Asegúrate de añadir muchas secciones, funcionalidad y que sea vistoso. Presionamos intro y veamos qué hace Gema 4E2B. Lo primero que va a intentar generar es el título, es lo

[01:14] primero que Open Code solicita y después de ello va a proceder con la respuesta. Ya tenemos título y va a comenzar por acá. Está comenzando a escribir un archivo. Quiero revisar los tokens por segundo, 150, 170, 150, 160 y ahí tenemos el archivo index.html, así que ahora supongo va a proceder con el style.css, efectivamente, y después con el main.js. Esto fue bastante rápido. Esperemos si el contenido tenga algo de sentido. Por lo menos vimos que dentro de grandes contextos, no de

[01:47] nuestra solicitud, sino de todo lo que tiene Open Code, el modelo fue respondiendo correctamente y utilizando las herramientas adecuadas, teniendo en cuenta que es un modelo 2B y además cuantizado a 4 bits, reviso mi carpeta de landing y tenemos CSS con el archivo adentro, JS con el archivo adentro y index.html.

[02:08] Presiono intro y esto es lo que nos generó, que de hecho en este caso no está mal, la verdad. Eh, IA Host, inicio, características, precios, testimonios, contacto. Aquí, por cierto, en contacto se alumbra, se ilumina diferente. Hosting ultrarrápido potenciado por IA, empezar ahora, ver servicios, puso una nube, velocidad de nivel, infraestructura diseñada para la latencia más baja, qué sé yo. Aquí del lado derecho intentó poner una imagen, la cual no existe, tenemos que poner

[02:36] una. Y aquí seguramente arriba intentó poner un icono, pero lo escribió mal. De hecho, también aquí en latencia cero. Vemos que este modelo tan pequeñito, pues no recuerda muy bien a fondo cómo usar Bootstrap, pero la habilidad como tal para hacer las cosas, pues está bastante bien, la verdad. Diseño simple, contenido pobre, pero igual que la instrucción, básicamente. Pero que en una iteración de un modelo tan pequeño hayamos conseguido esto, no está mal.

[03:01] Sin embargo, sí sería conveniente ponerle un MSP para que obtenga información actualizada de las distintas librerías y demás cosas que utilicemos, de lo contrario más de una vez lo hace incorrectamente. Aquí lo menciono por lo de los iconos, lo de la imagen, pues tenemos que poner una imagen real. De nada nos sirve que se haya aprendido una imagen de un repositorio en línea.

[03:21] Bastante bien en cuanto a información, teniendo en cuenta que todo es inventado. Damos clic derecho, inspeccionar y también el modo responsivo funciona correctamente. Vamos a ver si el menú de la hamburguesa funciona y sí, afortunadamente sí. Que por cierto, el botón de contacto aparece en medio. Ah, me acabo de dar cuenta de un fallo, esto ya no se cierra. Doy clic y medio se cierra y se vuelve a abrir.

[03:46] Bastante bien, en este momento vamos a intentar solucionar lo que comentábamos. De hecho, vamos a volver a entrar. Clic derecho, inspeccionar, y parece que cuando damos clic, al momento de intentar cerrar, pues cierra y abre a la vez, básicamente. Le vamos a decir, cuando entro desde móvil, el menú de hamburguesa se abre correctamente al darle clic, pero al momento de intentar cerrarlo, hace animación de cierre, pero termina nuevamente abierto. Analiza a fondo cuál puede ser el fallo y cuál

[04:19] sería la solución. Aún no apliques la solución, simplemente analiza. Presionamos intro, seguimos con Gema 4E2B, intenta analizar, está haciendo bastantes tokens de razonamiento, no muchos, pero sí suficientes, y nos indica según cuál es el problema. Vamos de hecho a cambiar a Quen 3.52B para decirle, ¿está seguro? Verifica nuevamente. Presionamos intro y vamos a ver qué nos dice este otro modelo luego de tener esto previo en la conversación.

[04:49] Aquí está analizando también y veamos qué es lo que dice. De hecho, ya se puso a editar y no le dije eso, pero bueno. Verificación completa, mi análisis fue correcto, okay. Control shift R, doy clic, abre, doy clic, cierra.

[05:03] Afortunadamente, Gema estuvo en lo correcto y Quen también, así que hasta se puso a corregirlo. Bueno, por lo menos ese fallo lo pudieron determinar a la primera ambos modelos. Y ahora, por ejemplo, le voy a pedir algo como lo siguiente, el icono de donde dice latencia cero no se ve. Seguramente ese icono indicado no existe. Presiono intro y vamos a ver qué es lo que hace Quen 3.52B.

[05:29] Falló en una edición, pero otras dos las hizo bien, cambió lo de latencia cero y de hecho también cambió donde dice CDN inteligente. En CDN inteligente no sé por qué lo cambió, pero bueno, vamos a ver, control shift R, latencia cero de forma correcta, CDN inteligente. Vamos ahora a solicitarle lo de seguridad predictiva. Parece que este modelo cuen, por lo menos estos iconos los logra solucionar. A lo mejor tiene más conocimiento de dicha librería, pero lo mejor es con text 7 o algo similar,

[05:58] darle documentación actualizada. Esto ayuda en cualquier modelo, ningún modelo sabe lo actual. Ahora para seguridad predictiva, presiono intro, seguimos con cuen 3.52b, ahí intentó corregir, vamos a ver qué tal. Control shift R y sí, seguridad predictiva correctamente. Simplemente esto no está bien centrado, pero vemos que podemos seguir iterando sin problema. Simplemente para que no se vea vacío, aquí en AI icon, voy a crear una carpeta llamada IMG y dentro voy a poner AI icon, esta imagen que tenemos por

[06:31] aquí, solo para que no esté vacío ese lugar, no es la mejor imagen como para poner ahí, pero bueno. Y le voy a decir, la imagen AI icon no se ve, pero además no quiero esa, quiero la que añadí en la nueva carpeta IMG. De hecho, más que no se ve, le voy a decir no existe, porque con no se ve a lo mejor intenta corregir código. Presionamos intro, el modelo comienza a revisar, la encontró correctamente luego de varios intentos porque no sabía qué usar, si CMD, power cell, bash, lo que sea, pero la encontró

[07:06] en la carpeta y aparentemente cambió la ruta correctamente. Mmm, ah sí, sí está bien. Esta es la que eliminó, esta es la que añadió. Presiono control shift R y sí, efectivamente ahí está la imagen. Okay, sin embargo prácticamente todos los cambios, o bueno, mejor dicho todos los cambios, los hemos hecho con cuen y con gema generamos el diseño inicial. Sin embargo, la primera corrección gema la determinó correctamente y después cuen simplemente la confirmó, pero sigamos probando un poquito con ese modelo gema

[07:36] 4e2b. Vamos a decirle ahora algo como lo siguiente, quiero ver si por sí solo, sin pasarle aquí mismo en el chat la imagen, logra verla, visualiza dicha imagen y dime qué es y qué colores utiliza. Presiono intro, Gema 4E2B y dice que no puede visualizar imágenes, pero estoy seguro que sí. Con el comando read, no, eso es para leer archivos, pero estoy seguro que Open Code tiene la posibilidad de ver imágenes directamente así, sin necesidad de arrastrarla o adjuntarla. Vamos a volver a probar solo

[08:09] por si las dudas. Y sí, parece que lo logró. ¿Qué fue lo que ahora utilizó? Ah, pues también utilizó la herramienta de leer. Parece que sí puede. Curioso. Sí, correctamente Niche Nauta monetizando la IA, los colores que integra y todo. Vamos a decirle, cambia los colores de nuestro proyecto para que utilicen la misma paleta de colores de dicha imagen.

[08:33] Recordemos, nuevamente estamos con Gema, hace rato hicimos varios cambios con Kwen. Ojo, quiero seguir con el tema claro, no oscuro. Simplemente cambiar los colores secundarios. Presionamos intro y vamos a ver qué se le ocurre por sí solo, porque no estamos indicando nada. Intentó editar, pero falló y según él lo hizo correctamente. Bueno, dice que se ha intentado y que se le editor sigue sin reconocer, pero pues no, es que no cambió nada. A ver, para esa misma solicitud probemos nuevamente Kwen

[09:01] 3.52B. Simplemente reenvió la solicitud, le damos en enviar y parece ser que Kwen de momento ha funcionado mejor, pero veamos. Parece que necesita actualizar dos cosas, dos archivos. Llevamos 16,000 tokens de ventana de contexto y esto sigue generando arriba de 130 tokens por segundo con Kwen 3.52B. Gema 4 es más rápido. Parece ser que corrigió correctamente o bueno, por lo menos editó y ahora también lo hizo con el otro archivo, con el style CSS y hasta en el main JS al final hizo cambios. Ah,

[09:33] sin cambios funcionales, solo ajustes mínimos. Presionamos control shift R y pues sí, cambió algunos colores tal como estamos viendo. Quizá aquí este cambio no fue el que más me gustó, porque de hecho ya ni veo el texto, pero por ejemplo esto verde ya no lo queremos verde, aunque bueno, eso es de bootstrap, pero también se puede cambiar. Pero y el icono de aquí donde quedó, esto es más importante todavía.

[09:54] Perdimos el icono de seguridad predictiva y vamos a ver qué es lo que sucede. Aparentemente editó, control shift R y sí, apareció nuevamente. Vamos a decirle que textos como estos aparecen en tema oscuro o bueno, con texto oscuro. Textos como los siguientes se ven muy oscuros y deberían de ser claros, porque ahora el fondo es oscuro.

[10:19] De hecho le voy a pasar una captura a ver si alcanza a apreciar lo que hay ahí. Se la comparto por aquí, presiono intro, está editando, sin embargo, creo que quiere editar punto card y no sé a lo que nos referíamos y además falló.

[10:31] Ahora sí editó, pero no sé si era eso lo que queríamos. Control shift R y no, cambió acá otra cosa, que de hecho está bien, esto ya se nota, pero esto es lo que nos interesa. Pero este texto no debe estar oscuro. Presionamos intro y aquí después de fallar intentó volver a leer para editar. Control shift R y no, ese texto sigue igual. No sé qué cosa cambió, pero eso sigue igual. Creo que si bien hemos podido estar modificando, el problema viene cuando son contextos más largos o algo así, no lo sé. Vamos a

[11:05] probar con gema 4e2b y le voy a decir que ese texto sigue negro. Ese texto sigue oscuro, no se ve. Intro, está razonando, [resoplido] va a leer un archivo y ahora se pone a editar. La edición falló y no pudo. Vamos a probar corregir eso pero en una nueva conversación con cuentras.52b, por ejemplo. El texto del index.html se ve oscuro y no se nota. Debe ser claro, pues el fondo ya es oscuro.

[11:37] Presiono intro y vamos a ver qué es lo que hace por aquí. Leyó, editó, pero falló, buscó, buscó, leyó y ahora aparentemente modificó de forma correcta. Esperemos si dicha clase exista y no se la haya inventado. Presiono control shift R y sí, quedó solucionado. Si solo fuera aquí donde sucede y donde queremos corregir, quizás sí sería la mejor solución. Pero aquí más bien nos interesaría una solución más global de que en todos los elementos que tiene este color de fondo, el texto

[12:09] de este tipo de elemento sea blanco. Si no lo tenemos que ir corrigiendo manualmente en cada uno y no tiene sentido. De igual forma, aquí estamos viendo el potencial que tienen estos modelos pequeñitos, que claramente es limitado, pero que claramente de todos modos son una herramienta que se puede utilizar. Sin embargo, lo prometido es deuda y es que dichos modelos de lenguaje les vamos a intentar sacar su máximo provecho en siguientes videos. Ya los instalamos, configuramos,

[12:37] ejecutamos, probamos dentro de un chat y de uso agéntico para desarrollo, pues ahora sigue MCPS skills, principalmente porque hay cosas que no es que no tengan la habilidad, sino que no tienen el conocimiento, no saben algunas cosas de cómo usar Bootstrap, por ejemplo, y pues teniendo acceso a MCPS como el de Context 7, teniendo la documentación actualizada, pues no cometerían ciertos fallos. Porque también hay que tener en cuenta que a un modelo que pesa 1.28 GB le estamos intentando sacar un montón de

[13:10] conocimiento y habilidades tiene, conocimiento no. Pero esto sumado a lo siguiente, Atomic AI. Queremos potenciar al máximo dichos modelos a partir de descomponer cada instrucción en árboles de subtareas atómicas, tareas no divisibles, dado que ya vimos que para tareas largas se pueden complicar, pero que en tareas pequeñitas pueden funcionar sin problemas, como por ejemplo, al momento de poner iconos, al momento de cambiar a un color, qué sé yo. Y si además le damos la posibilidad

[13:38] de utilizar el mismo el navegador e ir probando y demás, pues claramente se les va a poder sacar más provecho. Consumiendo un montón de tokens, sí, tokens gratis y muy rápidos, de como 150 tokens por segundo. El cuenta 3.52B poquito menos y el Gema 4E2B poquito más. Depende del tipo de hardware, claro está. Mientras tanto, pues ya vimos que son funcionales. Por aquí estuvimos haciendo un montón de cosas y sin demasiado problema, la verdad. Si quieres seguir viendo este tipo de

[14:06] videos, simplemente da like y suscríbete.
