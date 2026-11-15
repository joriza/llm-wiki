# Si sigues usando pip, estás perdiendo horas de tu vida

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RFInJeuhiFk)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-02-26
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:30

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Si llevas más de 6 meses escribiendo Python y sigues usando PIB, llevas 6 meses perdiendo tiempo. En los próximos minutos te voy a mostrar por qué en el 2026 la comunidad de Python ya tomó una decisión en donde V es el nuevo estándar. Te voy a enseñar qué es porque es brutalmente rápido y y esto es lo importante, cómo lo adoptas hoy sin romper absolutamente nada de lo que ya tienes. Y quédate hasta el final porque hay un comando de V que una vez que lo veas no vas a poder usar pip de la misma

[00:25] manera. Seamos honestos sobre algo que todos hacemos pero nadie dice en voz alta. Lanzas pip install e instalas los archivos de requerimiento y te vas a buscar agua, revisas Twitter y cuando vuelves todavía se está instalando. Eso es tiempo de tu vida, multiplicado por cada vez que creas un entorno, multiplicado por cada máquina, multiplicado por cada pipline que corre 50 veces al día. Pero el problema no es solo la velocidad, el problema real es que para hacer algo básico en Python

[00:48] necesitas un zoológico de herramientas. PIP para instalar paquete, Virtual M OBM para entornos, PIPS Tool para lock files, bym para versiones de Python, etcétera, etcétera. Seis herramientas, seis sintaxis distintas, seis fuentes de error distintas, seis cosas que actualizar. Y si te dijera que hay una sola herramienta que reemplaza todo eso y que encima es entre 10 y 100 veces más rápida. V es el gestor de paquetes y de proyecto escrito, perdón, en RAS. Fue creado por Astral, los mismos que

[01:15] hicieron RAF, el Linter que ya dejó Flake 8 y Black sin excusas para existir. Se lanzó en febrero del 2024, en menos de 2 años se convirtió en el estándar recomendado para proyectos nuevos en el 2026 y eso no pasa por accidente. ¿Y por qué pasa esto? Por tres razones concretas. Primero, Rust.

[01:31] PIP está escrito en Python, sin embargo, V está escrito en Rust. No hay un overhead de arrancar un intérprete, no hay. No hay memoria manejada con recolección de basura. Es metal puro, resolviendo dependencias. Segundo, paralelismo real. PIP instala paquetes de forma secuencial. V descarga y resuelve dependencias en paralelo.

[01:50] Mientras PIP termina de cargar Nani, V ya tiene Nampi Pandas y tres dependencias más y listo. Tercero, caché Grobar inteligente. Y esto es lo que más me importa con PIP y BEM. Cada entorno tiene su propia copia de cada paquete.

[02:02] Si tienes 10 proyectos con pandas, tienes 10 copas de panda en el disco. Con V, un paquete se descarga una vez y se enlaza. Si panda ya está en el caché instalado, en un proyecto nuevo toma milisegundos, no segundos, milisegundos.

[02:14] Entonces, con PIB te demoras entre 45 y 60 segundos. V sin caché bajas a 15 segundos y V con caché te demoras milisegundos o muy pocos segundos. Y aquí está la parte que más me gusta, la migración. Desde VIIP es tan fácil que da vergüenza que no lo hayas hecho ya.

[02:29] un solo comando sin dependencia de Python. Si estás en Max o Linux es este código de acá. Si estás en Windows, ¿y qué es lo que vamos a hacer ahora? Es este comando acá, ¿no? Abrimos el Power Chell de Windows, el Windows Power Chell acá, y simplemente copiamos y pegamos el código que les mostré. Es una sola línea, le damos enter y ya se va a instalar V en su computador. Ahora, el proceso no es tan rápido porque yo ya lo tengo instalado, por eso se instaló rapidísimo, pero tampoco es lento, super

[02:53] rápido igual. Y bueno, si tienes un proyecto con con archivo de requerimiento, cambias exactamente una cosa. En vez de poner pip install R requirement, pones V pip install requirement. Vamos a ver cuánto se demora. Vamos a hacer la prueba. Vamos a hacer la prueba con un proyecto que estoy preparando para un video más de más adelante en donde tengo el archivo de requerimiento y acá voy a agregar un uno más. Voy a agregar Júpiter para que instale más Júpiter y voy a hacerlo [carraspeo] primero. Bueno, voy a borrar

[03:17] el entorno virtual. Voy a eliminar esta terminal. Vamos a borrar el entorno virtual y primero lo voy a instalar de la forma tradicional con pipinall requirement.txt. Le voy a dar enter y vamos a ver lo lento que va a ser.

[03:31] Empieza a instalar las librerías, las dependencias, empieza a descargar todo lo que necesita e instalar. Como ven, se toma su tiempo, va en 10 13 de 89. Eh, bueno, quiero seguir hablando para que se vean el tiempo real que se toma esto.

[03:46] No sé si quiero mostrar todo el tiempo porque es bastante. Como ven, van 4989. Y después de un rato, bueno, voy a parar y voy a esperar que termine porque eh se está demorando mucho. Bueno, ya va como un minuto más o menos, quizás un poquito menos, pero va cerca de un minuto. De hecho, ya cambió el minutero acá y todavía no termina. Todavía le quedan nueve librerías más que instalar. La verdad que está bastante lento hacer esto. Y bueno, ya terminó. Después de unos segundos más eh terminó. Como ven,

[04:12] se demoró bastante. Un poquito más de un minuto y medio. Yo creo que se demoró en instalar todo. Voy a borrar nuevamente. Ah, pero no me creé un entorno virtual. Bueno, me voy a crear un entorno virtual. Instalé la librería eh fuera del entorno, pero no importa, después voy a eliminarlo, da lo mismo. Pero ahora vamos a hacer el mismo experimento, pero con V. Y van a ver lo rápido que es. Vamos a apretar acá y como ven, ya está instalando las librerías y es superrápido y ya terminó.

[04:36] Así de simple. Ni siquiera alcancé a terminar la frase cuando ya había terminado de instalar. No sé si notaron esta gran diferencia y lo único que tienes que hacer es poner V adelante de PIP para poder instalar. Obviamente tienen que tener V instalado antes. Otra cosa, si no quieren tener ese chorizo instalado e para poner ese esa línea gigante para instalar V, pueden poner pipin instal V y se les va a instalar igual. Así que es otra opción para que puedan instalar V. Pero bueno, esto es

[05:02] eh con un poquito de migración de de PP Install V, pero eh para proyectos nuevos hay cuatro comandos. Tenemos el comando primero para crear un proyecto con estructura moderna, que sería poner v init el nombre del proyecto y cd mi proyecto. En esto te va a crear un proyecto dentro de una carpeta. Luego para agregar dependencia ponemos V ad y el nombre de las dependencias que queremos agregar. Luego, para sincronizar el entorno de lock file usamos VSYC. Y para ejecutar el código

[05:29] usamos vampythonm.pi. Topi es simple, cuatro comandos, proyecto creado, entorno aislado y lo file generado. Voy a crear acá una carpeta ejemplo en el escritorio. Ejemplo con dos J la crean. As que le pasa a mi teclado que a veces aprieta una tecla y se aprieta dos veces rápido.

[05:44] No sé, igual con el mouse a veces hago doble clic sin querer. Ya. Eh, vamos a comenzar acá. Entonces, lo que primero que vamos a hacer, vamos a crear la estructura del proyecto. Vamos a poner V init mi proyecto, por ejemplo. Y como ven, aquí se creó el proyecto. Incluso me creó el archivo mine.penzar a programar. el archivo T para la configuración del proyecto en donde tenemos la versión, el nombre, la descripción, el RMI, etcétera. Se crea el archivo Redmi inmediatamente, la

[06:09] versión de Python con la cual se creó y el Git ignore, que son los archivos que cuando subamos esto a GitHub a través de Git debería ignorar el comando. Ahora nos vamos a ir a nuestro proyecto, a la carpeta del proyecto, vamos a instalar las librerías necesarias, por ejemplo, vamos a instalar Fasap, Panda Inampi y vamos a ver lo rápido que es instalar las librerías. De verdad se va a demorar muy poco, se demoró casi nada. Luego vamos a sincronizar el entorno desde lock file con vs como ven. Ya ahí

[06:34] tenemos sincronizado. Y finalmente vamos a ejecutar el ram.pi con vampython main.pi y se ejecuta el archivo. En este caso fue solamente print from my projector, eso era lo que tenía el archivo, pero son esos cuatro comandos y nada más. Para los que se preguntan que qué es el lock file, es el equivalente al al package, perdón, lo log.jonjon de node o al cargo.log de Rust. Okay, es exactamente lo mismo en cada deploy, no más es mi máquina funciona. Okay, la idea es que con esto ya ustedes pueden

[07:04] correr el mismo proyecto en cualquier máquina. Ahora, no sé si ustedes tienen PM instalado, yo también lo tuve en algún momento, pero ahora con V no necesitan tel en PM porque ustedes pueden instalar Python en cualquier o crear un entorno virtual con cualquier Python instalado.

[07:20] Por ejemplo, si quieren eh instalar Python 3.12, ponen V Python Install 3.12. Si quieren fijar la versión para este proyecto, ponen V Python Pin y fija la versión 3.11, por ejemplo. Y si quieren crear un entorno virtual en una versión específica, directamente ponen VB Python 3.10, por ejemplo. Nosotros vamos, voy a copiar esto y aquí me proyecto que todavía no he creado el entorno, voy a pegar Ven Python 3.10 y me va a crear un entorno virtual con Python 3.10. Okay. Y lo sé si se dan cuenta que

[07:52] me manda una advertencia que me dice que el proyecto es incompatible porque yo le había puesto acá cuando ejecutamos el proyecto, lo creamos, habíamos puesto que requeríamos Python 3.13, por eso me me manda esa advertencia. Okay, yo tengo 3.3 instalado, por default me lo instaló en esa versión, pero cuando empiezan un proyecto de cero y crean crear un entorno virtual primero, por ejemplo, vamos a voy a crear en la carpeta ejemplo otro proyecto. Otro proyecto y yo soy super creativo con los nombres.

[08:18] Vamos a abrirlo y creamos. Lo primero que vamos a hacer es crear el entorno virtual. Y como ven aquí no me manda ninguna advertencia y me crea el entorno virtual con esa versión de Python. Ahora vamos a activar el entorno y vamos a iniciar un proyecto nuevo con V init project. Y como ven, ahora me crea nuevamente todo lo necesario para el proyecto. Solamente que en el archivo de configuración tienen que ponerle que van a usar Python 3.10 para que no les mande el error o el la advertencia más bien.

[08:42] Entonces lo que hace V es manejar las versiones de Python. No necesitas PM, no necesitas con solo para cambiar de Python 3.10 a Python. 3.12 V lo hace y lo resuelve s simple. Y bueno, llegué hasta aquí y este es el comando que mencioné al principio. Si alguna vez necesitaste un correr un script de Python y para eso tuviste que agregar un entorno, instalar las dependencias, activarlo, correr el script y después borrar todo. ¿Cuántos pasos son esos?

[09:04] Cinco. Para correr un simple script. Con V podemos tener un comando que me permite crear un entorno eh temporal, instalar las dependencias en el caché global, correr el script y desaparece sin ensuciar tu sistema sin archivos huérfanos. Así que con Vran y with pandas matlit script.p PI lo que hace es correr este script con dependencias temporales sin crearte un entorno innecesario y sin instalar nada permanentes y es solamente un comand 3 segundos [carraspeo] de tercero con ampi

[09:33] pandas y mac le en este caso funcionando. Buen en este caso no está en ampi pero si le hubiesen puesto ampi acá adelante coma también hubiese funcionado entonces solamente eso es V run y con wid con este comando wid pueden usarlo de esta forma y todo el tiempo. Ahora V no es perfecto y sería honesto decirte que lo es cuando no de verdad no lo es. Y qué es lo que no puede hacer V, cuándo no usarlo? Si tu proyecto, por ejemplo, necesita paquetes que no son de Python puro, por ejemplo,

[09:59] KUDA o Q DNN o FF MPG para la para el audio o dependencia del sistema, sigue siendo el rey, vs es para Python, no instala binarios del sistema por si acaso, ¿okay? Del sistema operativo. Tampoco tiene el ecosistema de publicación de paquetes que tiene Power Tree todavía. Si mantienes una librería open source que que publicas en Pie con flujos complejos de will, en ese caso Power 3 sigue siendo más maduro en ese aspecto específico. Pero para el 90% de los casos y de los proyectos que existen

[10:28] en el mundo, aplicaciones, script, API, data science, data science con puro Python Vegana en todas las métricas que importan. Hagamos un resumen rápido. V reemplaza PIP, a BEMP, a Pion, a Pix, a PIP Tool y Powerry en un solo binario escrito en Rust. es entre 10 y 115 veces más rápido con caché. La migración toma exactamente un comando y tiene lock file reproducibles incluidos. En el 2026 no hay razón para empezar un proyecto sin VM y tampoco hay razón para no migrarlo en las próximas 24 horas si ya existe.

[10:59] Empieza con eso, solo con eso, sin cambiar nada más. Mira el cronómetro y después me cuentas. Bueno, así que espero este video te ayude para tus proyectos, ya sean proyectos para tu trabajo o si eres freelancer en Python para que mejores tu productividad.

[11:13] Y si como freelancer sigues vendiendo script genérico y automatizaciones básicas, espero empieces a incluir a V en tus proyectos. Y aprovechando esto, te voy a dejar un video que puede marcar la diferencia entre escalar tu carrera como freelancer o quedar fuera del mercado en los próximos meses.
