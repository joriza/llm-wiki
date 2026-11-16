# Walter: La Placa IoT Definitiva con IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Q1hAE8VwkZY)
- **Canal**: El Próximo Framework en Ingeniería
- **Publicado**: 2025-10-25
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:24

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola a todos y bienvenidos al próximo framework en ingeniería. Muchas gracias por todas las suscripciones al canal. Veo que [música] os están gustando este tipo de vídeos y para mí son de mis favoritos. Llevo más de 15 años realizando todo tipo de proyectos con tarjetas de desarrollo. En la parte superior podéis ver un vídeo con mi primer proyecto. Pronto vamos a empezar a realizar proyectos con las tarjetas de los últimos vídeos. Los subiremos a un repositorio y además estamos dispuestos

[00:24] a sortear las tarjetas entre todos los suscriptores. No nos olvidemos del objetivo de este canal. [música] es que aprendáis la base de la ingeniería para construir el futuro utilizando inteligencia artificial. Hoy vamos a centrarnos en una tarjetita de IoT, la describiremos y veremos ejemplos de uso con inteligencia artificial. Os dejo con Carlos y Ana que os darán una charla de esta tarjeta.

[00:45] Muchas gracias, Francisco. [música] Hoy nos sumergimos en una de las revoluciones más silenciosas, pero más impactantes de nuestra era. La conectividad masiva de objetos, [música] el internet de las cosas o IoT y cómo la inteligencia artificial está llegando hasta el último rincón de nuestra infraestructura.

[01:02] Seguramente has oído hablar del 5G y sus promesas de coches autónomos y ciudades inteligentes, [música] pero ¿qué pasa con los miles de millones de dispositivos que no necesitan la velocidad de un coche de Fórmula 1, sino la resistencia de un maratonista?

[01:16] Sensores en campos de cultivo, localizadores de activos en contenedores, medidores de agua en sótanos, dispositivos que necesitan enviar pequeñas cantidades de datos de forma fiable durante [música] años con una sola batería. Aquí es donde la carrera no es por la velocidad, sino por la eficiencia extrema. Y es en este campo de batalla donde están surgiendo soluciones de ingeniería absolutamente brillantes. [música] Para entender el valor de las placas de desarrollo que vamos a analizar, primero

[01:43] debemos situarnos en el complejo mapa de las redes inalámbricas para IoT. Pensemos en esto como un espectro de herramientas, cada una diseñada para un trabajo muy específico. [música] En primer lugar, tenemos tecnologías como Lora One y Six Fox. son los especialistas en el ultrabajo consumo y el larguísimo alcance. Son perfectos para enviar paquetes de datos muy pequeños como una simple lectura de temperatura cada hora a kilómetros de distancia. Hablamos de velocidades de kiles por segundo en el mejor de los

[02:12] casos para hora y apenas unos cientos de bits en Sixfox. El gran inconveniente es que son lentos, muy lentos. Olvídate de tareas complejas como las actualizaciones de firmware remotas o cualquier [música] tipo de comunicación en tiempo real. son como enviar un mensaje en una botella. Llegará lejos, pero no esperes una conversación fluida.

[02:31] En el extremo completamente opuesto del espectro tenemos [música] al 5G tradicional, una latencia casi inexistente y velocidades que compiten con la fibra óptica. Pero para un sensor que funciona con una pila, usar 5G es como encender una vela con un lanzallamas. Es una exageración impráctica en costo, complejidad [música] y sobre todo en un consumo de energía que agotaría la batería en cuestión de horas, sino minutos. [música] El tercer y más interesante punto es el término medio, donde está ocurriendo la

[02:58] verdadera revolución silenciosa, el LPWAN celular o red de área ampleada de baja potencia celular. [música] Aprovechando la infraestructura LTE que ya existe en todo el mundo, las operadoras han desplegado dos estándares diseñados específicamente para el IoT.

[03:14] Estos son los protagonistas de hoy, NB IoT y LTEM. NB IoT o Nerobond IoT [música] es como un susurro digital. Utiliza una porción increíblemente estrecha del espectro de radiofrecuencia, lo que le confiere una capacidad de penetración de señal asombrosa. [música] Es capaz de atravesar gruesos muros de hormigón o llegar a medidores de agua en sótanos profundos donde un teléfono móvil normal no tendría ninguna cobertura. Es la opción ideal para sensores estáticos que envían pocos datos de forma esporádica.

[03:45] [música] Su punto débil es la latencia, que puede ser de varios segundos, por lo que no es apto para aplicaciones de control en tiempo real. [música] Por otro lado, tenemos al LTEM, que son las siglas de Long Term Evolution for Machines. [música] Este es el hermano mayor y más versátil. ofrece un ancho de banda considerablemente más amplio de cientos de kil por segundo, lo que ya permite actualizaciones de frameware.

[04:07] Soporta handover entre torres de telefonía, lo que es absolutamente esencial para dispositivos en movimiento como localizadores de vehículos o de ganado. [música] Incluso puede soportar voz. Su latencia baja a menos de 200 milisegundos, lo que sí abre la puerta a un control casi en tiempo real. Tener la capacidad de usar ambas tecnologías en una sola placa de desarrollo te proporciona una flexibilidad global sin precedentes. Tu dispositivo puede elegir la red que mejor se adapte a su

[04:34] ubicación y a sus necesidades en cada momento. Y eso precisamente nos lleva [música] a la estrella de nuestro análisis de hoy. Una pieza de hardware que encapsula esta flexibilidad de una forma magistral. La placa Walter. La placa Walter, desarrollado por Quickpot, [música] es un sistema en un módulo o SOM que a primera vista puede parecer pequeña, pero es un auténtico gigante en cuanto a capacidades. Vamos a hacer una autopsia técnica para entender qué la hace tan especial.

[05:01] Muchas gracias, Carlos. Continúo yo. El primer componente clave, su cerebro es el microcontrolador ESP32 S3 [música] de la empresa Expressive Systems. Este no es un microcontrolador cualquiera, es un [música] System on chip con una arquitectura de CPU extensa de doble núcleo de 32 bits, el modelo LX7, que puede correr hasta 240 MHz.

[05:23] [música] Viene equipado con una generosa cantidad de memoria, 16 MB de memoria flash Quad Spy para almacenar el programa y los datos y 2 MB de PS RAM, también Quad [música] Spy para operaciones que requieran más memoria RAM. Pero lo más interesante del ESP32 S3 es que no está solo. Incluye un coproador Risk V de ultrabajo consumo, diseñado para manejar tareas sencillas mientras los núcleos principales duermen. Y atención, un acelerador de hardware para operaciones de inteligencia artificial. Esto permite

[05:54] ejecutar inferencias de machine learning directamente en el dispositivo en el [música] borde, sin necesidad de enviar todos los datos a la nobre. Y por si fuera poco, este chip integra de forma nativa conectividad WiFi 802.11 BGN [música] y Bluetooth 5 de bajo consumo o LE, incluyendo soporte para redes Bluetooth mesh. El segundo componente que es el corazón de la conectividad global de Walter es el modem celular. Se trata del Sequence Monarch 2 GM02 SP. [música] Esta es la verdadera joya de la Corona.

[06:24] Es un modem de segunda generación preparado para 5G que gestiona de forma nativa toda la complejidad de las redes LTM en sus categorías M1 y NB IoT, en sus categorías NB1 y NB2. Pero la genialidad de este chip [música] de Sequence es que también integra un receptor GNSS completo. Esto significa que tenemos soporte para GPS y otras constelaciones de posicionamiento global sin necesidad de añadir un chip externo.

[06:49] Esta integración es crucial. Ahorra espacio en la placa, reduce el consumo de energía y simplifica enormemente el diseño del producto final. El tercer pilar y quizás el más impresionante desde el punto de vista de la ingeniería electrónica [música] es la gestión de energía. Aquí es donde Walter realmente brilla. La placa incorpora un convertidor de corriente continua de ultra alta eficiencia, un modelo de Texas Instruments, [música] el TPS 6283.

[07:14] Este componente es el responsable de tomar el voltaje de entrada que puede venir de un puerto USBC o directamente del pin de alimentación BIN en un rango de 3 a 5.5 V y convertirlo en una salida estable y regulada de 3.3 V para alimentar toda la electrónica. El diseño es tan sumamente eficiente que permite que la placa en su modo de sueño más profundo Deep Sleep [música] y con el modem en modo de ahorro de energía o PSM alcance un consuma de tan solo 9.8 microamp.

[07:41] [música] Para que nos hagamos una idea, vamos a crear una pequeña analogía. Imaginen que el consumo normal de un dispositivo es como una persona corriendo. [música] El modo de bajo consumo sería esa misma persona caminando. Pero 9.8 microamperi no es caminar, ni siquiera es dormir. Es un estado de hibernación biológica profunda donde el metabolismo se reduce a la mínima expresión posible para mantenerse vivo. Este consumo tan ridículamente bajo es lo que se traduce en años y no meses de autonomía con una

[08:07] sola batería. Finalmente, el cuarto pilar es la gestión de radiofrecuencia. La placa expone conectores UFL para antenas externas, tanto para la parte celular como para el GNSS. [música] Un detalle técnico que revela el cuidado puesto en el diseño es la recomendación de usar antenas GPS pasivas. ¿Por qué?

[08:24] Porque las antenas activas, aunque a veces pueden ofrecer una mejor recepción, tienen un amplificador interno cuyo consumo de energía es impredecible [música] y puede variar enormemente, arruinando por completo el presupuesto energético de un dispositivo a batería. Las antenas pasivas, en cambio, garantizan un rendimiento energético constante y predecible, [música] algo absolutamente crucial para despliegues a largo plazo donde cada microamperio cuenta. Pero un farware excepcional es completamente inútil si

[08:48] no va acompañado de un software y un ecosistema que permitan exprimirlo al máximo. Y aquí es donde Walter demuestra que no es solo un producto para aficionados, sino una plataforma profesional. [música] Es un proyecto totalmente de código abierto, tanto el hardware como el software. Esto es fundamental porque te da control total y evitas el temido vendor locking o la dependencia de un único proveedor.

[09:07] Quickspot ha publicado los esquemáticos y el footprint para Kikat en su GitHub, [música] permitiendo que cualquiera pueda auditar el diseño o incluso adaptarlo para sus propias placas. Para programarlo, tienes un abanico de opciones que se adapta a cualquier nivel de experiencia. En primer lugar, puedes usar el entorno de Arduino. Es ideal para un prototipado rápido, para pruebas de concepto y para todos aquellos que vienen del mundo major y están familiarizados con su simplicidad. El

[09:29] segundo escalón sería usar Platform IO, que se integra perfectamente con editores de código profesionales como Visual Studio Code. Platform IO ofrece una gestión de librerías y dependencias mucho más robusta y un flujo de trabajo más profesional. En tercer lugar, para aquellos que necesitan exprimir [música] hasta la última gota de rendimiento del ESP32 S3, está el ESP IDF. Este es el framework de desarrollo oficial de Spif.

[09:51] [música] Te da acceso a configuraciones de muy bajo nivel, a la gestión avanzada de los modos de energía y al control total sobre los dos núclos del procesador y el coprocesador. Y finalmente, para los que prefieren un enfoque de scripting más ágil y sin necesidad de compilación, Walter también es compatible con Micropython. Además, [música] la documentación es exhaustiva. En el GitHub de Quickspot encontramos repositorios como Walter- Arduino, Walter- Micr Python o Walter- ESP-IDF,

[10:17] lleno de ejemplos listos para usar, desde cómo enviar un paquete de datos por MQTT hasta cómo gestionar correctamente los complejos modos de bajo consumo del Modem Sequence. No estás comprando solo una placa, estás accediendo a un ecosistema de desarrollo completo y bien documentado. Ahora bien, la conectividad celular tiene un requisito indispensable, [música] una tarjeta SIM, pero no puedes usar la SIM de tu teléfono. Necesitas tarjetas SIM M2M [música] que están optimizadas para un bajo

[10:40] consumo de datos y sobre todo de energía. Es absolutamente crucial que tu proveedor de conectividad dé soporte a los modos de ahorro de energía PSM y EVRX. Sin [música] ellos, tu dispositivo nunca podrá alcanzar esos consumos de microamperios. Existen varios modelos de negocio en este sector. Por un lado, tenemos empresas como 11 que ofrecen un modelo de pago único absolutamente disruptivo. Pagas [música] una vez, unos $10 y obtienes una SIM con 500 MB de datos y 10 años de servicio en redes LTM

[11:08] y NBIoT con cobertura en gran parte del mundo. Es el modelo ideal para proyectos de instalar y olvidar, donde el costo total de propiedad es el factor más importante. Muchas gracias. Termino [música] yo. Por otro lado, tenemos proveedores como Hologram o Soracon. Estas plataformas ofrecen dashboards increíblemente avanzados para gestionar flotas de miles de dispositivos. Permiten una facturación flexible, un control granular sobre el consumo de datos de cada dispositivo. Y lo más importante,

[11:33] [música] sus Sims Hyper son EUECC, lo que significa que pueden cambiar de perfil de operador de forma remota por el aire para garantizar siempre la mejor conexión y las mejores tarifas en cualquier parte del mundo. Entonces, [música] después de este análisis profundo, ¿qué hemos aprendido?

[11:48] Plataformas como Walter no son solo placas de desarrollo para que los makers hagan prototipos. Están diseñados desde su concepción para la producción en masa. Y hay varias razones clave para ello. En primer lugar, las certificaciones. La placa Walter viene preertificada para los mercados más importantes del mundo. Tiene la certificación FCC para Estados Unidos, la CE para Europa, la UCA para Reino Unido, la IC para Canadá y la RCM para Australia y Nueva Zelanda. Esto punto es

[12:14] absolutamente crucial. El proceso de certificar un producto con radiofrecuencia es extremadamente caro, puede costar decenas de miles de dólares y muy largo, pudiendo llevar meses de pruebas en laboratorios. Al usar un módulo preertificado como Whiter, te ahorras la mayor parte de este costo y este tiempo, [música] reduciendo drásticamente la barrera de entrada para llevar tu producto al mercado. En segundo lugar, el Cellopen Hardware te da una libertad total. Tienes acceso a

[12:37] los esquemas completos. Si para tu producto final necesitas una placa con una forma específica o con menos componentes para abaratar costos, puedes tomar el diseño de Walter como base y adaptarlo a tus necesidades, sabiendo que la parte de radiofrecuencia ya ha sido probada y certificada. [música] Y en tercer lugar, la longevidad. Los componentes elegidos como el SP32 S3 y el modem de Sequence [música] son componentes de grado industrial con una disponibilidad garantizada por los

[13:02] fabricantes de más de 10 años. [música] Esto es crítico para despliegues comerciales en sectores como la agricultura, la logística o las ciudades inteligentes, donde los dispositivos deben funcionar de forma fiable durante una década o más. En definitiva, ya sea que optes por la flexibilidad del control total y el ecosistema abierto de una solución como Walter o por la simplicidad y el ecosistema manejado de una alternativa como Blues Wireless, una cosa queda meridianamente clara. La

[13:26] barrera de entrada para crear dispositivos IoT conectados globalmente, fiables, inteligentes y con un consumo de energía ultra bajo nunca ha sido tan baja como ahora. Ya no se trata de ensamblar un Frankenstein electrónico a partir de docenas de componentes. Se trata de tener una idea y contar con una plataforma de ingeniería robusta, documentada y lista para la producción que te permita hacer la realidad. Y esto es solo [música] el comienzo. En el repositorio de GitHub de Walter ya

[13:51] puedes encontrar proyectos increíbles, desde librerías para Arduino, Micro Python y ISP32 hasta un proyecto para darle conectividad celular a un computador como Dor 64. Las posibilidades son infinitas. Espero que este análisis técnico os haya resultado útil. Si tienen dudas, ideas o quieren compartir su propio proyecto de IoT, déjenlo en los [música] comentarios. Nos encantará leerlos. Aquí en el próximo Framework en ingeniería seguiremos explorando estas tecnologías que están

[14:16] definiendo nuestro futuro. Pronto tendremos más proyectos y análisis como este. No olviden suscribirse y activar las notificaciones para no perderse nada. Hasta la próxima. Yeah.
