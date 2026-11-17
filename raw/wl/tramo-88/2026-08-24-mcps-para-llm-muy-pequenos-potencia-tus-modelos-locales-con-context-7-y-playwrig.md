# MCPs para LLM muy pequeños 🚀 Potencia tus Modelos Locales con Context 7 y Playwright

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=MeipNmJyWg0)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-24
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 16:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya en el vídeo previo estuvimos utilizando quant 3.5 2B y Gemma 4 E2B cargados en llama cpp a 4 bits con el objetivo de estar desarrollando, por ejemplo, dentro de Open Code. Claramente son modelos muy pequeños que, de hecho, la versión 4B mejora muchísimo en ambos casos para usos agénticos y de desarrollo, pero aquí estamos intentando con los modelos más pequeñitos tratar de hacer de todo, con el objetivo de que si con esto se puede, con otros más grandes aún mejor. Estamos ejecutando los más

[00:32] pequeños que aún son utilizables para que notemos más las carencias que pueden tener modelos pequeñitos y poco inteligentes y, pues, todos los problemas que vamos teniendo los estamos solucionando y esto funciona para modelos pequeños y modelos grandes.

[00:47] Estuvimos desarrollando una pequeña landing e iterando en ella, claramente es horrible, simplemente fue la primera prueba con el objetivo de ver qué tal funciona. Y si bien estuvo funcionando decentemente, el mayor problema modelos es que, quizá, por su pequeño tamaño tienen habilidades, pero lo que no tienen es conocimiento. Básicamente, quant 3.5 2B, pesando 1.28 GB, pues, no se sabe todas las librerías que existen, por ejemplo, Bootstrap, que lo estábamos utilizando. Sin embargo, esto es algo

[01:18] que sucede en modelos pequeños y en modelos grandes porque de un día para otro puede salir nueva versión de algo y, a lo mejor, cierto modelo de lenguaje no está preparado para ese tipo de desarrollo. Entonces, vamos a hacer el día de hoy, una vez que tengamos Node.js instalado, se instala simplemente con su instalador bajado de su sitio web, es utilizar e instalar Context 7 msp, el cual, un msp, digamos, que es una herramienta que puede utilizar fácilmente un modelo de lenguaje y, en

[01:47] el caso de Context 7, lo que nos permite para cualquier modelo de lenguaje es que no esté con códigos de ejemplo antiguos basados en su entrenamiento, que no alucine APIs que no existen y que no de respuestas genéricas para versiones antiguas de paquetes. Simplemente con este MSP instalado, el modelo de lenguaje no es que sepa más cosas, sino que puede consultar. Con esto podemos potenciar cualquier modelo de lenguaje y donde más se notaría, pues es en modelos pequeñitos. Aunque esto igual para

[02:19] cualquier modelo de lenguaje funciona y es recomendable. Aquí simplemente utilicé Claude para buscar rápidamente cómo instalar dicho MSP, aunque de igual forma aquí está la documentación. Y por qué no lo hice con nuestro modelo de lenguaje local que busque en internet, pues porque de momento no le damos dicha posibilidad. Eso se pudiera hacer de hecho con otro MSP. Es más, de hecho Context 7 va a ser para que busque, que busque información de librerías, eso sí, o de lenguaje de programación o qué sé

[02:46] yo. Entonces, sencillamente lo que en este momento vamos a hacer es dirigirnos a la carpeta de nuestro usuario y dentro de punto config o Open Code, vamos a abrir Open Code.jsonc. Doy doble clic y por aquí lo primero que recomendaría escribir son estos parámetros, los cuales van a hacer que cada vez que el modelo de lenguaje intente editar, escribir un comando o usar web fetch para hacer alguna consulta a un sitio web, Open Code no ejecute el comando automáticamente, sino que primero nos pregunte. El modelo de

[03:19] lenguaje va a intentar hacer lo que él quiera, lo que se le ocurra. Sin embargo, Open Code nos va a preguntar antes de llevar a cabo dicha acción. Aquí mismo entonces vamos a añadir esto. Para ello, copio y lo añadimos, por ejemplo, aquí debajo, simplemente poniendo la coma correspondiente.

[03:36] Presiono control S, cierro Open Code, lo abro y una vez abierto, luego de un ratito, por aquí nos va a aparecer el MSP de Context 7. Teniendo de esta forma ya siempre disponible para que el modelo de lenguaje pueda consultar en internet.

[03:52] Entonces, voy a hacer lo siguiente. Le voy a decir al modelo de lenguaje, "Lee index.html y dime qué versión de Bootstrap utiliza." Presionamos intro. El modelo comienza a responder y aquí nos dice que Bootstrap 5.3.3. Y si yo mismo reviso, efectivamente, 5.3.3.

[04:14] Pues ahora podemos hacer lo siguiente. "Consulta en Context 7 sobre Bootstrap para averiguar cuál es la versión más reciente." Presionamos intro. Aquí vemos cómo empieza a consultar en Context 7 y a partir de ahí responde, que en este caso, el modelo de lenguaje, a pesar de ser entrenado, no necesariamente con el dataset más moderno, consultó y todo funciona correcto. Ahora, le vamos a preguntar, "Bootstrap icons." Presiono intro y aquí va a buscar ahora sobre Bootstrap icons. Nos dice todos los

[04:47] iconos disponibles. Sin embargo, yo quería saber la versión, pero qué versión es. Y nos dice que la 1.11.3. Vamos a decirle algo como lo siguiente. "Compara todos los iconos mencionados en index.html con la librería completa de iconos y actualízalos por unos mejores."

[05:09] Presionamos intro y aquí, de hecho, lo primero que intenta hacer es cambiar a 1.11.4. Entonces, esta versión habrá sido la que teníamos en el archivo, pero se puede actualizar. Quizás sí. Le damos en permitir una vez y después intentó editar y pues, parece que falló, pero que todo está bien, dice. "La versión de Bootstrap icons se ha actualizado a 1.11.4.

[05:32] Antes era 1.11.3." Okay, pero eso no es lo que yo me refería. Dime qué iconos estamos utilizando en index.html de Bootstrap icons. Presionamos intro y aquí nos dice más o menos qué iconos son los que estamos utilizando. Aquí nos los intenta representar con un emoji, pero pues no es lo mismo. También nos menciona que un icono no es directamente de Bootstrap Icons, sino una URL de internet, que es precisamente lo que tenemos aquí. Okay, por ejemplo, podemos iniciar una nueva conversación para

[06:05] probar nuevamente el MSP, pero ahora con Gema 4 E2B. Le vamos a decir, lee index.html y luego consulta dichas librerías en Context 7 para ver si estamos usando las versiones más recientes. Presionamos intro y pues en este momento lo que nos interesa es que el MSP esté funcionando correctamente con estos modelos pequeñitos dentro de Open Code. Aquí comienza a pensar cosas el modelo y vemos que hace el llamado a la herramienta correspondiente. Está haciendo distintas consultas, por

[06:41] cierto, y después de eso nos respondió. Sin embargo, en este caso respondió en idioma inglés. Vamos a decirle, vuelve a decir lo mismo pero en idioma español. Esto seguramente es porque toda la información de Context 7 está en inglés.

[06:56] Y bueno, aquí ya nos dice que la versión de Bootstrap 5.3.3 está desactualizada, que la más reciente es la 5.3.8. La versión de Bootstrap Icons 1.11.4 está desactualizada y que la más reciente es la 1.11.0. Vamos a decirle que entonces corrija nuestro archivo. Entonces corrige nuestro archivo. Está editando la primera línea, le damos en permitir una vez y ahora la siguiente línea con la versión de Bootstrap Icons. Con eso se supone que todo está listo, tendríamos que revisar más a fondo, pero vemos que

[07:32] ya fácilmente le podemos dar información actualizada al modelo. Aunque hay algo que estamos notando y es que no basta con información. El modelo le siguen faltando ciertas habilidades, cierta inteligencia, no solo información actualizada. De todos modos, en este momento, más que intentar suplir la falta de inteligencia, vamos ahora a instalar Playwright, un MSP que nos va a permitir que el modelo de lenguaje use por sí mismo el navegador, para que él mismo pueda estar probando, a pesar de

[08:02] que falle, pues que él mismo pruebe. Para ello, simplemente vamos a buscar Playwright MSP y entrando al sitio oficial, aquí nos dice cómo lo podemos instalar. De una vez cierro Open Code, me voy a Open Code.jsonc, doy doble clic y así como aquí añadimos el MSP de Context 7, pongo una coma y vamos a añadir el de Playwright.

[08:24] Simplemente copio estas líneas, le doy en copiar, pego por aquí abajo y de hecho, creo que más bien lo voy a preparar como el comando que tenemos aquí arriba. Lo preparo de la misma forma, como tipo local, comando de NPX, habilitado, guardo el archivo y procedemos a abrir Open Code, esperando que todo sea correcto. Y por aquí revisamos y sí, efectivamente ya nos aparecen los dos MSPs. Sin embargo, no solo basta con que aparezcan. Veamos que realmente funcione. Como primera prueba,

[08:59] vamos a decirle al modelo, "Usa Playwright para entrar a nichonauta.com y dime de qué trata." Presiono intro y el modelo aquí precisamente acaba de abrir el navegador y a partir de ahí va a responder. Efectivamente, usó el navegador, entró a nichonauta.com, revisó unas cuantas cosas y respondió.

[09:21] "Es una plataforma que vende software y herramientas innovadoras como nichonauta, clipeador V1 por $40." Pues funciona bien. Quiero revisar que el MSP anterior siga funcionando, si no bonita cosa. Ahora investiga en Context 7 la versión actual de Gema, presionamos intro y vamos a ver qué información logra encontrar en ConTeXt 7. Y aquí nos dice que la versión más reciente de Gema es la 4.0.1, la cual incluyó una actualización de dependencia. No sé a qué se refiere exactamente. Para empezar, ConTeXt 7 no

[09:55] es para buscar esto, pero sí, vemos que sigue funcionando ConTeXt 7 sin problema. Entonces, ya tenemos más preparado nuestro modelo de lenguaje, por ejemplo, para el momento de hacer desarrollo web, que no únicamente pueda desarrollar, sino que primero pueda investigar en internet o cuando nosotros le digamos, y no solo ello, sino que después de que desarrolle por sí mismo pruebe el proyecto. Vamos a hacer una prueba rápida sobre esto. Le estamos dando ciertas posibilidades de uso de

[10:24] herramientas, una de ellas, de información. Nos falta entregarle más inteligencia. Eso lo estaremos viendo en el siguiente video con Atomic AI, pero vamos a probar primero esto. Así como estos MCPs hay más, pero creo que esto es bastante útil y nos ayuda a entender bien para qué nos sirven y cómo se utilizan e instalan. Le voy a decir, revisa qué archivos tenemos. Presiono intro. Y aquí, en este caso, no respondió con algo que tuviera sentido.

[10:53] Vamos a regenerar, enviar. Está intentando ejecutar un comando. Dicho comando con guion LA no funciona en Windows, el LS sí, pero después intentó con comandos de PowerShell. Le damos en permitir una vez y listo correctamente todos los archivos. Este tipo de fallos no son fallos tal cual de inteligencia del modelo, sino que simplemente, pues, prueban de una forma y si no funciona prueban de otra, depende del sistema operativo que estemos utilizando. Y aquí, una vez que se dio cuenta que

[11:21] estamos en un entorno Windows, pues, entonces prueba con comandos de PowerShell. Okay, encontró los archivos. Ahora le voy a decir, lanza un servidor temporal en el puerto 8001 para poder ver este proyecto en el navegador, asegúrate de lanzar dicho servidor web con Python, por ejemplo. Presionamos intro, intenta escribir cierto comando para ello, le damos en permitir una vez y con ello, si nosotros revisamos en el navegador, localhost en el puerto 8001, pues sí, vemos que aquí carga la web.

[11:56] Sin embargo, dado que escribió el comando en primer plano, el modelo no sigue respondiendo hasta que se cierre esto. Lo vamos a detener y simplemente, pues, este comando yo mismo lo escribo en una terminal. De todos modos, ya vimos que sí sirve tenerlo ejecutado.

[12:11] Presiono intro y ahora le voy a decir, usa el msp de Playwright para navegar tú mismo en el proyecto y verificar si funciona correctamente. Presiono intro, aquí abre el navegador, sin embargo, creo que esta no era la ruta, ¿verdad?

[12:27] ¿Qué estuvo mal aquí? ¿El modelo? No. Yo. Básicamente, lo que está sucediendo es lo siguiente, y es que ejecuté el comando pero en otra carpeta. Presionemos control C y vamos, verdaderamente, a la carpeta del proyecto. Ahora, por aquí, ejecuto correctamente el comando correspondiente y volvemos a enviar este mensaje al modelo. Usa el navegador y, pues, dice que todo funciona. Viene hasta el título de la página, viene aquí en su razonamiento, con lo cual, pues, vemos que sí, que lo hizo correctamente. Sin

[12:59] embargo, ahora le quiero preguntar alguna cosa, como, por ejemplo, ¿de qué trata el sitio? Presiono intro y nos dice, el sitio se trata de AI Powered Ultrafast Hosting. Por aquí estoy viendo que en su cadena de razonamiento dijo que hay dos errores en consola. Vamos a revisar, clic derecho, inspeccionar, consola, sí, efectivamente hay dos errores. Le voy a preguntar, ¿qué errores aparecen en consola? Presionamos intro y aquí aparece la información de ambos. Aparecen errores del favicon.ico

[13:30] que no existe, no es un error como tal, y un error de sintaxis inesperado en la consola. Vamos a decirle, "Revisa el archivo correspondiente del error de sintaxis y verifica dónde se encuentra el error." Presiono intro y por aquí, luego de leer el archivo main.js, hizo una cuanta cadena de razonamiento y nos dice dónde probablemente se encuentra el error. Es que son muchas llaves. Estos son pruebas iniciales simplemente para ver si el modelo de lenguaje por lo menos logra usar correctamente los MSPs.

[14:05] Y en este caso, ambos MSPs los pudo utilizar sin demasiado problema. Creo que nunca falló la llamada a un MSP. Sin embargo, estamos viendo que un modelo de lenguaje pequeño no únicamente le bastan MSPs, porque aunque tenga la información, puede no entenderla correctamente o peor aún, ni siquiera entender correctamente cómo usar el MSP.

[14:27] Es por ello que ya hemos avanzado bastante con estos modelos de lenguaje en local, que si bien nos han permitido trabajar, sí vemos que tienen ciertas carencias. Estamos ejecutando lo más pequeño que aún es utilizable. Si en vez de las versiones 2B ejecutáramos las 4B, esto mejoraría muchísimo. ¿Por qué lo hacemos con las 2B? Porque encontrándonos más carencias, más formas vamos a encontrar de solucionarlas. Así, sin importar qué modelo de lenguaje utilicemos, vamos a saber estrategias

[14:56] para hacerlos funcionar mejor, dado que todos son simples predictores de la siguiente palabra. Algunos predicen mejor, otros peor, pero simplemente son eso. Es por ello que ahora que ya tenemos correctamente todo preparado, tanto llama.cpp con los modelos bien configurados, Open Code con los modelos bien configurados, demás ajustes en Open Code bien preparados y MSPs, nos queda potenciar al máximo la inteligencia de estos modelos de lenguaje a partir de Atomic AI, el cual nos va a permitir

[15:27] gastar muchos tokens a cambio de no necesitar mucha RAM en modelos más grandes o pagar servicios en línea. En todo lo que hemos ido realizando nos hemos dado cuenta que las tareas complejas, largas son el problema. Tareas más acotadas, más pequeñitas las pueden hacer sin problema. Pues vamos a descomponer cada instrucción en un árbol de subtareas atómicas no divisibles para que después resuelva una por una y luego de la respuesta final, potenciando la inteligencia de estos modelos, pero

[15:57] además no solo es que vayamos a generar mucho más tokens para esto, sino que los vamos a generar mucho más rápido. Ya tenemos videos iniciales a esta serie de videos acerca sobre distintos métodos de Speculative Decoding y ahí vimos algunos que nos van a funcionar bastante bien para todo esto, que básicamente es darle muchas vueltas a los mismos tokens, pero dado que va a ser mucho más rápido de lo que ya tenemos, pues no habría mucho problema. Y eso que en este momento estamos como a 150 tokens por segundo

[16:25] aún en contextos largos, pero esto va a mejorar mucho más. Si quieres seguir viendo este tipo de videos para llegar a ese paso final definitivo, simplemente da like y suscríbete.
