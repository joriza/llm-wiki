# TODAS las HERRAMIENTAS DevOps explicadas en 24 minutos (Debes Conocerlas)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vQ4OOw63svs)
- **Canal**: TecnoCroquis
- **Publicado**: 2026-09-21
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 24:55

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Devobs. Antes de empezar con las herramientas, hay que entender qué significa realmente esto. DevOps no es un programa ni un lenguaje de programación. Es una forma de trabajar que intenta que desarrollo y operaciones no vayan cada uno por su lado. Por un lado, tienes a los desarrolladores que escriben y modifican el código y por otro está toda la parte de desplegarlo, mantener los servidores, automatizar procesos, vigilar que la aplicación siga funcionando y reaccionar cuando algo

[00:29] falla. DevOps intenta unir todo eso. La idea es que desde que escribes código hasta que ese código termina funcionando en producción haya el máximo número posible de procesos automatizados y repetibles. Guardar versiones del código, revisarlo, ejecutar tests automáticamente, crear contenedores, desplegar aplicaciones, configurar servidores, monitorizar errores. Y aquí es donde entran todas las herramientas que vamos a ver, porque DevOps no es aprender un programa concreto, es

[00:57] entender qué problema resuelve cada herramienta y en qué momento del proceso tiene sentido utilizarla. Git, imagina que llevas una semana trabajando en una aplicación y haces un cambio que rompe medio proyecto. Sin Git empiezas a rezar para acordarte de qué archivos tocaste. Con Git puedes volver atrás. Git es un sistema de control de versiones. Básicamente va guardando el historial de cambios de tu proyecto para que puedas saber qué modificaste, cuándo lo hiciste y recuperar una versión

[01:27] anterior si algo sale mal. Ese historial se construye con commits. Un comit es como guardar una fotografía del estado de tu proyecto en un momento concreto. Terminas una funcionalidad, haces un comit, arreglas un error, haces otro y así vas construyendo una especie de línea temporal del código. Pero una de las partes más importantes de Git son las ramas. Una rama te permite trabajar en una funcionalidad nueva sin tocar directamente la versión principal del proyecto. Por ejemplo, puedes tener la

[01:57] aplicación funcionando perfectamente y crear una rama para añadir un sistema de pagos. Puedes romper cosas, probar cambios y modificar medio proyecto sin afectar a la versión estable. Cuando todo funciona, unes esa rama con la principal mediante un merch. Y si trabajas en equipo, esto es todavía más importante, porque cada desarrollador puede trabajar en su propia rama sin estar pisando constantemente el código de los demás. Además, Git distribuido.

[02:26] Cada persona tiene una copia completa del repositorio y de su historial en su ordenador. Eso significa que Git puede funcionar perfectamente sin internet. Y aquí viene una confusión bastante habitual. Git no es GitHub. Git es la herramienta que controla las versiones de tu código. GitHub. Lo voy a explicar a continuación.

[02:47] GithitHub. Git te permite controlar las versiones de tu proyecto en tu ordenador, lo que se conoce como en local. GitHub aparece cuando quieres compartir ese código y trabajar con otras personas. Es una plataforma donde puedes alojar repositorios Git en internet para que todo un equipo tenga acceso al mismo proyecto. Pero GitHub no sirve solo para guardar código. Una de sus funciones más importantes son las pull requests. Imagina que has creado una rama para añadir una nueva

[03:14] funcionalidad. Cuando terminas, en vez de meter esos cambios directamente en la rama principal, abres una pool request. Ahí otros desarrolladores pueden revisar tu código, dejar comentarios, detectar errores, pedir cambios o aprobarlo antes de unirlo con la versión principal. Y eso en proyectos grandes fundamental porque evita que cualquiera llegue, haga un cambio a las 3 de la mañana y destroce producción porque le pareció buena idea. GitHub también tiene issues que se utilizan para registrar errores,

[03:43] tareas o nuevas funcionalidades y además permite hacer forks. Un fork es una copia de un repositorio en tu propia [música] cuenta. Es muy habitual en proyectos de código abierto. Copias el proyecto, haces tus cambios y después puedes proponer que esos cambios se añadan al proyecto original. Por eso, gran parte del software de código abierto vive en GitHub. Así que la diferencia importante es esta. Git controla el historial del código. GitHub permite alojarlo, [música] compartirlo y

[04:11] colaborar alrededor de él. Y aunque GitHub probablemente sea la plataforma más conocida, se puede decir que es la estándar, pero no es la única que hace esto. Gitlab. A primera vista, Gitlab se parece bastante a GitHub. También puedes alojar repositorios Git, trabajar con ramas, revisar cambios y colaborar con otros desarrolladores. La diferencia es que GitLab nació con una idea bastante más amplia, intentar reunir en una sola plataforma buena parte de todo el proceso de Bobs. No solo guardar código,

[04:40] sino también automatizar pruebas, compilar proyectos, desplegar aplicaciones, analizar seguridad y controlar parte de la infraestructura alrededor del software. Y aquí aparece un concepto muy importante. C I C D para que no te líes. C significa integración continua. I CD sería como desarrollo o despliegue automático. La idea es que cada vez que alguien sube cambios al proyecto se puedan ejecutar automáticamente tareas como compilar el código o lanzar tests para comprobar que

[05:13] nada se ha roto. CD va un paso más allá y automatiza parte del proceso de entrega o despliegue. Es decir, en vez de que una persona tenga que hacer manualmente siempre los mismos pasos, cada vez que hay una nueva versión, puedes dejar definido todo el proceso para que se ejecute solo. Gitlab permite configurar estas automatizaciones mediante un archivo YML dentro del propio proyecto y además tiene una ventaja importante para algunas empresas. Puedes instalar GitLab en tus propios servidores. Eso da mucho más

[05:44] control sobre dónde está el código y cómo se gestiona toda la plataforma. Así que Gitlab no es simplemente otro sitio donde subir repositorios, es una plataforma que intenta cubrir muchas más partes del ciclo de desarrollo desde el mismo sitio. Y si ya estás usando GitHub, tampoco necesitas cambiar de plataforma para conseguir algo parecido.

[06:04] GitHub Actions. Si ya trabajas con GitHub, no necesitas cambiarte a GitLab para automatizar todo el proceso. GitHub Actions permite crear workflows, flujos de trabajo que se ejecutan automáticamente cuando ocurre algo dentro de tu repositorio. Por ejemplo, haces un push. Un push, para quien no lo sepa, es cuando intentas integrar el código que tú has trabajado al proyecto.

[06:27] Pues puedes dejar programado que cuando lo hagas, GitHub puede lanzar los tests automáticamente. Abres una pool request. Para que lo entiendas, una pool request es cuando solicitas que tu código se incorpore al proyecto. Normalmente el líder del proyecto es el que lo revisa y el que lo acepta o no. Puede comprobar que el proyecto compila y que no has roto nada importante. Publicas una nueva versión. puede construir la aplicación y desplegarla directamente. Todo esto se define en archivos YamL dentro del

[06:59] propio repositorio. Ahí puedes indicar qué evento activa el workflow y qué pasos tiene que ejecutar después. Y esos pasos pueden hacer prácticamente de todo. Instalar dependencias, ejecutar pruebas, construir una imagen de Docker, desplegar en la nube o mandar una notificación a Slack si algo falla. Si no estáis familiarizados con Docker, haré un vídeo explicándolo en profundidad, pero es muy importante en el mundo del desarrollo. Además, GitHub tiene un marketplace con acciones ya

[07:29] preparadas por la comunidad, [música] así que muchas veces ni siquiera tienes que montar todo desde cero. La idea es que GitHub Actions convierte tareas repetitivas en procesos automáticos y eso reduce errores, ahorra tiempo y evita depender de que alguien se acuerde de hacer siempre los mismos pasos manualmente. Pero este tipo de automatización [música] no empezó con GitHub. Hay herramientas que llevan años haciendo exactamente esto.

[07:57] Jenkins. Antes de GitHub Actions o GitLab, Jenkins ya llevaba años automatizando procesos de desarrollo. Jenkins es un servidor de automatización que permite montar pipelines. Un pipeline es una cadena de pasos automáticos que se ejecutan uno detrás de otro para llevar algo desde el inicio hasta un resultado final. La lógica es parecida a lo que acabamos de ver.

[08:19] Cambias código. Jenkins detecta el cambio y ejecuta una serie de pasos automáticamente. Esos pasos se pueden definir en un archivo llamado Jenkins File. Ahí puedes indicar cosas como compila el proyecto, ejecuta los tests, genera una imagen de Docker, despliega la nueva versión y si algo falla avisa al equipo. Una de sus grandes fortalezas es su sistema de plugins. tiene integraciones para Git, Docker, AWS, Slack, Cubernetis y prácticamente cualquier herramienta que te puedas

[08:50] encontrar en una empresa. Eso le ha permitido sobrevivir durante muchísimo tiempo porque sí, la interfaz tiene un aspecto bastante de esto no se toca porque funciona, pero debajo sigue siendo extremadamente flexible. Además, Jenkins puede repartir trabajo entre varias máquinas, así que una empresa grande puede ejecutar muchos procesos al mismo tiempo. Hoy existen opciones más modernas y más fáciles de configurar, pero Jenkins sigue apareciendo muchísimo en empresas que llevan años construyendo

[09:22] su infraestructura alrededor de él. Y después de automatizar el código llega otro problema, conseguir que la aplicación se ejecute igual en todas partes. Circle C. Circ también sirve para automatizar procesos de C o CD, los cuales te han he explicado antes que son, pero con un enfoque bastante cómodo. Normalmente no necesitas mantener tu propio servidor de automatización. Conectas tu repositorio, defines el pipeline en un archivo de configuración y Circle C ejecutar todo en la nube. Por ejemplo, cada vez que

[09:56] haces un push puede instalar las dependencias, ejecutar los tests, compilar el proyecto y desplegarlo si todo ha salido bien. La diferencia con algo como Jenkins es que Jenkins suele darte muchísimo control, pero también puede obligarte a mantener toda esa infraestructura. Con Circle C, gran parte de ese trabajo ya viene gestionado. Además, utiliza paquetes reutilizables llamados ORBs. UNORB contiene configuraciones ya preparadas para integrar herramientas y servicios sin tener que escribir siempre lo mismo

[10:26] desde cero. Por ejemplo, puedes encontrar ORBs para Docker, AWS o Slack. También utiliza caché para reutilizar dependencias y archivos de ejecuciones anteriores y así acelerar los pipelines. Así que Circle C encaja especialmente bien cuando quieres automatización de C y CD sin montar y mantener toda la infraestructura que hay detrás. Pero hasta ahora hemos hablado de cómo probar y desplegar código. El siguiente problema es conseguir que ese código funcione exactamente igual cuando sale

[10:59] de tu ordenador. Docker, pienso hacer un vídeo dedicado solamente a este software, dada la complejidad e importancia que tiene, pero es imposible hacer un vídeo sobre herramientas de Bobs y no mencionarlo. Hasta ahora hemos hablado de cómo guardar código, revisarlo y automatizar pruebas, pero luego llega el momento de ejecutar la aplicación. en otro ordenador y ahí aparece el clásico problema. En mi ordenador funciona, ¿por qué en el tuyo no? Docker intenta precisamente evitar

[11:27] eso. La idea es meter tu aplicación junto con todo lo que necesita para funcionar dentro de un contenedor de dependencias, librerías, configuración y entorno de ejecución. Así consigues que la aplicación se comporte de forma mucho más consistente en tu ordenador, en un servidor de pruebas o en producción.

[11:45] Para crear ese entorno, normalmente utilizas un Docker file. Ese archivo describe qué necesita tu aplicación y cómo debe construirse. A partir de ahí, generas una imagen. No pienses en una foto, aunque conceptualmente es algo así, pero imagínatelo más bien como una plantilla y cuando ejecutas esa imagen obtienes un contenedor. Imagen y contenedor no son exactamente lo mismo.

[12:07] La imagen es lo que tienes preparado. El contenedor es esa imagen funcionando. Además existe Docker Hub, donde puedes encontrar imágenes ya hechas de herramientas muy utilizadas, por ejemplo, con MySQL o distintos lenguajes como Python o Java y entornos, lo que consigue que no tengas que tener instaladas en la otra máquina las mismas versiones de estos lenguajes o bases de datos para que funcione. Y otra cosa importante, un contenedor no es lo mismo que una máquina virtual. Una máquina

[12:36] virtual ejecuta un sistema operativo completo. Los contenedores comparten el kernel del sistema anfitrión, así que normalmente arrancan mucho más rápido y consumen menos recursos. Esto hace que puedas levantar y destruir contenedores con bastante facilidad. El problema llega cuando tu aplicación ya no tiene dos o tres contenedores, [música] sino decenas o incluso cientos. Ahí hacerlo todo a mano deja de ser una opción.

[13:03] Cubernetes. Docker te permite crear y ejecutar contenedores. El problema aparece cuando ya no tienes tres, tienes 100 y además están repartidos entre varios servidores. Ahí entra Cubernetes. Cubernetes es una plataforma de orquestación de contenedores. Su trabajo es decidir dónde se ejecutan, cuántas copias necesitas y qué hacer si alguna falla. En cubernetes, los contenedores normalmente se agrupan dentro de unidades llamadas podsos pots se ejecutan dentro de un conjunto de

[13:34] máquinas llamado cluster. La gracia está en que tú defines cómo quieres que esté funcionando tu aplicación y cubernetes intenta mantener ese estado. Por ejemplo, quieres tener siempre cinco copias de un servicio funcionando. Si una se cae, cubernetes levanta otra. Si un servidor entero falla, puede mover esas cargas a otros nodos disponibles. Y si de repente necesitas más capacidad, también puedes escalar el número de réplicas. Otra función muy importante son las actualizaciones progresivas. En

[14:03] vez de apagar toda la aplicación, actualizarla y volverla a encender, Cubernetes puede ir sustituyendo versiones poco a poco para reducir el tiempo de caída. Esto tiene muchísimo sentido en aplicaciones grandes formadas por muchos servicios, pero también hay que decir una cosa, Cubernetes es potente, pero no es precisamente sencillo. Para una aplicación pequeña puede ser bastante más infraestructura de la que realmente necesitas. Ahora bien, cuando empiezas a manejar muchos contenedores y varios servidores, ahí es

[14:32] donde se entiende por qué existe Terraform. Hasta ahora hemos hablado de aplicaciones y contenedores, pero alguien tiene que crear los servidores, las redes, las bases de datos y todos los recursos donde después vas a desplegar eso. Y ahí entra Terraform.

[14:48] Terraform permite gestionar infraestructura como código. En vez de entrar en AWS, Asure o Google Cloud y empezar a crear cosas a mano desde un panel, defines por escrito qué infraestructura quieres tener. Por ejemplo, quiero dos máquinas virtuales, una base de datos, una red privada y un balanceador de carga. Terraform le esa configuración, y se encarga de crear los recursos. El flujo suele ser bastante claro. Primero escribes la configuración, después ejecutas Terraform Plan para ver qué cambios va a

[15:17] hacer y cuando estás seguro, ejecutas Terraform Apply. Además, Terraform mantiene un archivo de estado para saber qué recursos existen ya y cuáles tienen que cambiar. Eso permite algo muy importante, [música] version infraestructura igual que versionas el código. Puedes revisar cambios, trabajar en equipo y repetir la misma configuración en distintos entornos. Y también reduces muchísimo el problema de tener servidores configurados cada uno de una manera distinta porque alguien

[15:44] hizo cambios manuales hace 6 meses y ya nadie se acuerda. Eso sí, Terraform también tiene su curva de aprendizaje y el archivo de estado hay que tratarlo con cuidado, sobre todo cuando varias personas trabajan sobre la misma infraestructura. Pero cuando una empresa empieza a gestionar bastantes recursos en la nube, hacerlo todo a golpe de clic deja de ser una buena idea.

[16:06] Ansible. Terraform puede crear tus servidores, pero una vez existen alguien tiene que configurarlos. Instalar programas, copiar archivos, crear usuarios, cambiar permisos, reiniciar servicios o aplicar la misma configuración en decenas de máquinas.

[16:22] Para eso sirve ansible. En vez de entrar servidor por servidor haciendo todo a mano, escribes un Playbook. Un Playbook es un archivo Yamel donde describes cómo quieres que estén configuradas esas máquinas. Por ejemplo, quiero Enginex instalado, quiero este archivo de configuración, quiero este servicio arrancado y quiero este usuario creado.

[16:44] Ejecutas el Playbook y Anbl se encarga del resto. Además, normalmente se conecta por SSH y no necesita instalar un agente especial en cada servidor. Por eso se suele describir como una herramienta agentless. Y aquí aparece otra palabra típica de Theev Bobs y de en Potencia que suena a enfermedad de transmisión, ya tú sabes, en la época medieval, pero significa algo bastante simple. Si ejecutas el mismo playbook varias veces, ansible, intenta dejar el sistema en el mismo estado deseado sin

[17:17] repetir cambios innecesarios. Si NGX ya está instalado, no lo vuelve a instalar porque sí. Si el archivo ya es correcto, lo deja como está. Así que la diferencia rápida sería esta. Terraform crea infraestructura ansible configura lo que hay dentro. Y cuando ya tienes todo desplegado y funcionando aparece una pregunta bastante importante. ¿Cómo sabes si realmente está funcionando bien? Prometeus, tu aplicación ya está desplegada. Ahora necesitas saber qué está pasando dentro. Prometeus sirve

[17:49] para recopilar métricas de tus aplicaciones y de tu infraestructura. Por ejemplo, ¿cuánta CPU estás usando? ¿Cuánta memoria? ¿Cuántas peticiones recibe tu aplicación? ¿Cuánto tardan en responder? ¿O cuántos errores están ocurriend? Prometeus va consultando esos datos de forma periódica y los guarda como series temporales. Eso significa que no solo sabe cuánto consume tu servidor ahora, también puede enseñarte cómo ha cambiado ese consumo durante la última hora, el último día o la última

[18:20] semana. Además tiene su propio lenguaje de consultas prom ql. Con él puedes hacer preguntas bastante concretas sobre tus sistemas. Por ejemplo, ¿cuál ha sido el tiempo medio de respuesta durante los últimos 20 minutos? O si la tasa de errores ha empezado a subir. Y también puedes definir alertas. Si la CPU supera cierto nivel, si un servicio deja de responder o si empiezan a aparecer demasiados errores, puedes avisar automáticamente al equipo. Prometeus es especialmente habitual en entornos con

[18:50] contenedores y cubernetes. Pero hay una cosa importante. Prometeus recopila y almacena métricas. No está pensado principalmente para enseñártelas de la forma más bonita posible. Para eso, normalmente se combina con otra herramienta.

[19:08] Grafana. Prometeus recoge métricas. Grafana hace que puedas entenderlas de un vistazo. Grafana es una herramienta de visualización y monitorización que se conecta a distintas fuentes de datos y convierte toda esa información en dashboards. Por ejemplo, puedes tener en una sola pantalla uso de CPU, memoria, peticiones por segundo, tiempo de respuesta, errores y estado de distintos servicios. Todo actualizado prácticamente en tiempo real. Lo importante es que grafana no suele ser

[19:39] la herramienta que genera esos datos. Se conecta a otras fuentes como Prometeus, Elastic Search o servicios de monitorización en la nube. Por eso Prometeus y Grafana se usan tanto [música] juntos. Prometeus recoge las métricas, Grafana las representa.

[19:54] También puedes configurar alertas para que el equipo reciba un aviso si algo se sale de lo normal. Por ejemplo, si el tiempo de respuesta de una API se dispara o si un servidor empieza a quedarse sin memoria. Y esto cambia bastante la forma de trabajar porque ya no tienes que esperar a que un usuario te diga que la aplicación va mal. Muchas veces puedes detectar el problema antes.

[20:15] Ahora bien, las métricas te dicen que algo está fallando, pero no siempre te dicen exactamente por qué. Para investigar eso, muchas veces necesitas mirar los locks. El K stack. Las métricas pueden decirte que algo va mal.

[20:28] Loss suelen ayudarte a descubrir por qué. EL son las siglas de Elastic Search, Lockstash. I Kibana, cada herramienta cumple una función distinta. Lockstash recoge y procesa loss que generan tus aplicaciones y servidores.

[20:44] Elastic Search los almacena e indexa para que puedas buscar entre millones de registros rápidamente. Y Kibana te permite explorar esos datos desde una interfaz visual, crear gráficos y montar dashboards. Imagina que tu aplicación empieza a devolver errores de repente.

[21:00] Prometeus puede avisarte de que la tasa de errores se ha disparado, pero con ELK puedes buscar exactamente qué errores se están produciendo, en qué servicio, a qué hora y con qué información relacionada. Eso es especialmente útil cuando tienes muchas aplicaciones o microservicios generando locks al mismo tiempo. En vez de entrar servidor por servidor buscando archivos, centralizas todo en un único sitio. El Astic Search, además, permite hacer búsquedas bastante potentes sobre cantidades enormes de

[21:32] datos, aunque también tiene una pega. puede consumir bastante memoria, almacenamiento y recursos cuando el volumen de locks crece mucho. Pero en sistemas grandes, tener los locks centralizados deja de ser un lujo, porque cuando algo se rompe en producción, leer 500 archivos a mano no es precisamente un planazo sonar cube.

[21:53] Hasta ahora hemos hablado de desplegar, automatizar y monitorizar aplicaciones, pero hay otro problema bastante menos visible, que el código se vaya convirtiendo poco a poco en un desastre. Sonar analiza automáticamente tu código buscando errores potenciales, vulnerabilidades, duplicaciones y lo que se conoce como code smells. Un code smell no significa necesariamente que el programa esté roto, significa que hay algo en el código que puede convertirse en un problema más adelante. Por

[22:22] ejemplo, métodos demasiado complejos, código repetido o estructuras difíciles de mantener. La gracia es que Sonar Cube se puede integrar dentro de un pipeline de C/CD. Así cada vez que alguien sube cambios, el código se analiza automáticamente y puedes definir un quality gate, es decir, unas condiciones mínimas que el proyecto tiene que cumplir. Si aparecen demasiados problemas, vulnerabilidades graves o empeora demasiado la calidad del código, el pipeline puede bloquearse. Así evitas que ciertos

[22:55] cambios lleguen a producción. no sustituye una buena revisión de código hecha por personas, pero sí funciona como un filtro automático que está revisando siempre las mismas reglas, sin cansarse, sin olvidarse y sin decir a las 5 de la tarde que ya lo mira mañana.

[23:15] Hashiorpolt. Una aplicación moderna necesita manejar secretos. Contraseñas de bases de datos, claves API, certificados, tokens y credenciales de acceso. Y guardar todo eso directamente dentro del código es una idea bastante mala porque si subes el proyecto a un repositorio y esas claves están ahí dentro, acabas de convertir un problema de seguridad en uno bastante serio. Bolt sirve precisamente para gestionar esos secretos de forma centralizada. En vez de tener contraseñas desperdigadas por

[23:47] archivos de configuración, variables mal protegidas o documentos compartidos, las guardas en un sistema pensado específicamente para protegerlas. Las aplicaciones pueden pedir esos secretos cuando los necesitan y Bol controla quién puede acceder a qué. Además, puede trabajar con credenciales temporales.

[24:07] Eso significa que en vez de utilizar siempre la misma contraseña durante años, puedes generar accesos que caducan automáticamente. También mantiene registros de acceso para saber quién ha pedido determinada credencial y cuándo.

[24:21] La idea es sencilla. El código debería contener lógica, no debería contener las llaves de tu infraestructura. Y con esto cerramos bastante bien el recorrido, desde controlar la primera línea de código con Git hasta desplegar, automatizar, monitorizar y proteger una aplicación cuando ya está funcionando en producción. Hasta aquí el vídeo de hoy, mis technocrockers. Me gustaría más adelante hacer una guía individual de cada una de estas herramientas, pero no os voy a engañar, hay algunas que no

[24:52] domino y me gustaría informarme mejor. Hasta la siguiente, mi gente.
