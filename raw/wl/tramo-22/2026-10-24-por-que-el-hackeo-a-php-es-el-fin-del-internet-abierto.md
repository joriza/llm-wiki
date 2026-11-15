# Por qué el hackeo a PHP es el fin del internet abierto

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=F3EmYmJjIoQ)
- **Canal**: Platzi
- **Publicado**: 2026-10-24
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 21:23

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Este es un tracker de vulnerabilidades de seguridad informática en los últimos 20 años y aquí pueden ver cómo en el último año tenemos una explosión cambriana, empezando por supuesto por la vulnerabilidad de PHP. El jueves 21 de octubre la industria se levantó con esta noticia. La NSA de Estados Unidos, la National Security Agency, publicó un tweet diciendo que de forma inmediata todas las organizaciones que están usando PHP para sus sistemas se les advierte y se les aconseja estar

[00:27] preparados para actualizar dos vulnerabilidades críticas en que directamente estaban pidiendo, de pronto tienen que bajar sus sitios web temporalmente y sus sistemas mientras actualizan. Esto fue al extremo de que la primer ministra japonesa, Takaishi Sanae, o doña Sanae para la gente con confianza, empezó a decir, la primer ministra japonesa, tenemos una petición urgente para que todo el mundo tome acción esta noche a las 5:55 de la mañana antes de la NSA.

[00:58] Tiene que ver con PHP que es usado por muchos sitios web en el tipo de seguridad de PHP, envió una advertencia de dos vulnerabilidades críticas, por favor verifiquen que tu sitio web disponible al público use PHP y prepárate para aplicar el patch que va a salir. Imagínense esto, estar recibiendo noticias de seguridad informática de la presidenta de Japón. ¿Cómo funciona el problema de PHP? El problema de PHP funciona cuando se envían solicitudes que van más allá de los límites de

[01:21] memoria. Este es el típico eh problema de sobrecarga de memoria en la mayoría de los problemas de seguridad informática. Cuando eso pasa, el sistema de PHP, la capa de mod underscore PHP, puede ejecutar código que fuera controlado por un atacante en el proceso de limpieza de la memoria antes de que se ejecutara el código de la aplicación y eso le permitía ese código tener los privilegios en el computador que tiene PHP. Un lenguaje cuando es ejecutado pues tiene muchos privilegios.

[01:47] Se han hecho correcciones, pero se han hecho correcciones principalmente a las versiones 8 de PHP y también hay pequeñas adaptaciones a las versiones 7 de PHP. Si ustedes están corriendo PHP inferior a la versión 8, prácticamente "run your own", básicamente "bandense"

[02:04] con lo que se pueden porque el equipo de PHP no los va a ayudar. Ellos dicen, "actualicen el código". Pero ojalá, ojalá, ojalá fuera simplemente PHP, porque pasaron más cosas. Por ejemplo, Matthew Prince de Cloudflare empezó a mencionar algunas estadísticas en la vulnerabilidad que le están llamando PHP to Shell. En las 10 horas antes de que fuera anunciado públicamente en la red de Cloudflare, miles de intentos de explotar la vulnerabilidad ocurrieron antes de que fuera públicamente

[02:30] anunciado, es decir, habían atacantes en internet que ya sabían de la vulnerabilidad y la empezaron a tratar de explotar. Eso saltó a decenas de miles en los 45 minutos después del anuncio, pero antes de que explicaran cómo era y antes del parche, y cientos de miles en 2 horas hasta millones ahora mismo. Esto fue 12 horas después del tweet de la primera ministra japonesa y de la NSA a las 6:25 de la tarde el 21 de octubre. Es una cosa superimpresionante.

[02:59] Los hackers estaban explotando la vulnerabilidad de PHP días antes de que fuera parchada. Eso significa que que que la tenían y les cuento algo, resulta que alguien mencionó que la vulnerabilidad fue descubierta diciéndole a un modelo de IA moderno, "find vulnerabilities in PHP". Eso es todo. No hubo un prompt complejo, un harness increíble. A ver, claramente esta persona tenía montado un entorno completo de desarrollo de PHP, pero todo fue simplemente "find some vulnerabilities" y ya está. Y eso no es

[03:29] lo único que pasó. Una de las autoridades que certifican certificados de cifrado, como por ejemplo los que funcionan con SSL, HTTPS, etcétera, en India, llamada eMudhra, se descubrió que creó un escalar privado, una una una clave de firma que simplemente era el número cuatro. Esta era la clave.

[03:52] El valor de la clave era cuatro. Podían colocar cualquier cosa y simplemente colocaron un byte. El cuatro. Eso es todo. Las claves tenían 47 bytes en cero y un byte de valor. Y entonces pues alguien dijo, hagamos un ataque de fuerza bruta contra esto y tenga, encontraron que era cuatro. El problema es que esos certificados viven en todas nuestras computadoras, en nuestros teléfonos, en nuestros televisores.

[04:17] Todos los dispositivos que se conectan a internet tienen por dentro una base de datos de certificados enviados por las autoridades de los países para poder hacer transmisión cifrada protegida de datos entre diferentes dispositivos. El navegador se actualiza, Chrome se actualizó muy rápido, pero ¿cuándo fue la última vez que actualizaste el software de tu televisor, de tu router Wi-Fi, de tu lavadora inteligente? Todos estos dispositivos ahora son vulnerables y todas las transacciones transmisiones

[04:44] de datos que hagan pueden un atacante aprovecharse de el hack de Emudhra para romper ese cifrado, es increíble. Y esto es hasta ahora la punta del iceberg. Esta organización india Emudhra de India anunció que se sale del negocio de la seguridad informática y del negocio de los certificados después de todo esto que pasó.

[05:07] Luego Pink Cap, que ellos hacen una base de datos para agentes de inteligencia artificial, anuncian que entre el 9 de septiembre y el 7 de octubre atacantes tuvieron acceso a credenciales robadas. Y luego pues simplemente no hicieron nada, simplemente pues cerraron esto y piden que por favor roten las contras roten los API keys. Pero no es el único.

[05:28] Ayer o fue hoy, no fue ayer, no sé ni qué día es hoy. Railway, que es una de estas neonubes, anuncia que un atacante pudo acceder los secretos de sus clientes y pide que la gente rote sus API keys. Entonces todo el mundo está rotando API keys sin parar. GitLab, que es pues el software que mucha gente usa para correr su propio sistema de control de versiones, anunció un problema de seguridad máxima que permite atacantes ejecutar código de manera remota y que es vulnerable en sus 12 años de release

[06:01] que han tenido. Lo parcharon, pero todo el mundo que corre GitLab, que son muchas organizaciones, la NASA usa GitLab, los bancos usan GitLab, pues están ahora vulnerados. Light LLM fue comprometido y se robaron credenciales de la gente que usa Light LLM.

[06:16] Signal, el software que se usa de manera hipersegura para comunicaciones, descubrieron un bug que puede mantener prendido el micrófono y la cámara después de que uno cuelga la llamada, una vulnerabilidad que pues ya parcharon, pero vuelve a ser dramática.

[06:31] Node.js, la forma de correr JavaScript en el servidor o en dispositivos, también anuncia una actualización de seguridad para arreglar varios bugs de seguridad de alta severidad en su manejo de DNS, que es la forma en la que se traducen IPs a letras en los dominios de internet, TLS, que son los certificados, entre otras cosas. Hasta una plataforma que se llama Zivver, que es una plataforma de Vibe Coding, básicamente, colapsó después de que una serie de ataques expusieron los datos públicos,

[07:04] los datos privados de muchos de sus usuarios, al punto que los fundadores dijeron, ¿saben qué? Cómanse la startup, cierro la compañía. Y minutos antes de que yo empezara a grabar esto, sale una vulnerabilidad en Bind, que es el software que maneja el sistema de nombres de dominio de internet, el que traduce una IP a platzi.com.

[07:27] Pero no es lo único, porque los bancos de Estados Unidos empezaron a anunciar que en las últimas semanas han empezado a detectar una larga cantidad de agentes de inteligencia artificial no autorizados que están operando dentro de las cuentas de los clientes. Muchos de ellos porque el cliente quiere, un cliente termina usando Open Cloud, Hermes, Dots, Muse, cualquier Instinct, todos esos que existen hoy en día y le dice, "Venga, métase en mi cuenta bancaria y dígame yo qué estoy haciendo

[07:53] mal, arrégleme las suscripciones que tengo, solucióneme esta cosa." Y pues eso no está permitido por un lado y por otro lado, pues hoy en día no sabemos realmente una gente qué carajos es lo que hace. Si realmente es seguro o no es seguro, estamos hasta ahora en el viejo oeste del mundo de la inteligencia artificial.

[08:10] Al punto de que este otro desarrollador, Steven Lees, dice, "Una vulnerabilidad de la que poca gente está hablando, encontré a mi Cloud Code exponiendo datos personales en headers HTTP, porque los sitios que empezaba a solicitar le pedían amablemente que identificara a sus usuarios. Ciberseguridad epistémica, esa nueva categoría del 2027." Vengan les explico este por si es muy técnico.

[08:35] Cuando Cloud Code va y lee un sitio web en internet, actúa como si fuera un navegador y va y descarga todos los datos. En esos datos están los headers HTTP, que eso es una parte que uno nunca ve. Así es como los sitios web saben, por ejemplo, si tú eres Windows, Linux o Mac, si estás en un teléfono o en un laptop, en qué país estás, etcétera.

[08:56] Eso, bueno, el país viene de la IP, pero Cloudflare lo manda por los headers, en fin. Todo eso es lo que ocurre en headers. ¿Ven que ahí dice, el tweet dice una cosa que dice "Cloud"? Es porque se usa un comando que se llama Cloud, c u r l.

[09:08] El punto es que cuando Cloud Code se chupa eh estos datos, lee los datos que le está mandando el sitio web. Y pues los servidores quieren saber cosas del cliente, entonces el servidor probablemente le dice a Cloud, "Identifica a tu cliente, es decir, tú con quién estás hablando." Y Cloud dice, "Claro, está este este sitio amablemente me está preguntando quién es Freddy, entonces mire, le estoy hablando a Freddy Vega, Freddy tiene bla ble bla ble bla." Tenaz, increíble.

[09:35] 27 problemas graves de seguridad informática en las últimas 24 horas. Eso es lo que está pasando en este momento. Y una pregunta que vale mucho la pena responder es ¿por qué ahora? ¿Por qué esto está pasando justo en este momento y no antes? ¿Qué es lo que hizo posible que ahora tengamos esta explosión absurda de seguridad informática y de repente estemos hundidos en estos problemas? Tú probablemente me estás viendo y trabajas en una compañía que puede ser vulnerable. En el mundo hispano, con la

[10:07] excepción de España, no hay leyes que realmente obliguen a las compañías a a hacer público que las hackeen. Eso pasa en Estados Unidos, hay ciertos sistemas legales que lo hacen, pero no es común. En Latinoamérica es más común que la gente se quede callada excepto bajo ciertas circunstancias. Y muchas empresas de nuestra región y de nuestros países están traumatizadas porque los hackearon. Ahora, la forma típica de hackearlos era con ransomware, les bloqueaban la información y les pedían

[10:36] bitcoin a cambio. Pero eso siempre era un proceso humano. Ahora lo que pasa es que está hiperautomatizado, pero esto ya se podía hacer antes con mitos, con no sé quién, pero ustedes han tratado de hacer algo sobre informática con Cloud, es difícil, ¿verdad?

[10:50] Pues resulta que más o menos hace 6 días salió la última última última actualización de Deep Seek, Deep Seek versión 4.1 Flash 10 17, es decir, el 17 de octubre. Deep Seek es increíble, la última versión es muy muy muy eficiente, es relativamente costosa de correr, es relativamente lenta de correr para estándares de un modelo de inteligencia artificial, pero lo que importa es el puntaje que se ha sacado en inteligencia artificial para hacer código, para ejecutar cosas en la terminal. Existe un

[11:22] un test para modelos de inteligencia artificial que se llama Terminal Bench, donde se sacó excelente excelente puntaje. Este modelo, en algunas cosas, como por ejemplo en Deep Software Engineering, que es otro de los de los de los exámenes, se sacó un puntaje superior a Claude Opus 5. Se sacó un puntaje superior a GPT 5.6 Sol, que estos son modelos que al inicio de este año fue cuando Anthropic dijo, "Los modelos en la categoría Mythos son muy peligrosos y pueden hackear todo el planeta."

[11:51] Ahora, ustedes lo crean o no, los modelos chinos vienen con un cierto nivel de seguridad, vienen con guardrails. Si ustedes le piden a un modelo chino recién descargado de internet con Open Weights que les hackee el Pentágono o que les fabrique drogas sintéticas o cosas por el estilo, que les haga un virus, les va a decir que no.

[12:08] Pero aquí les quiero dar la bienvenida a un concepto que de pronto no es tan eh popular. Se llama ablation. Ablation es un proceso en el que investigadores descargan los pesos del modelo, que eso es lo que ponen a disponibilidad los laboratorios. Los pesos del modelo, piensen en ello como la red neuronal, que es la el el cerebro del modelo.

[12:29] Entonces, estos toman el cerebro que pone Deep Seek o Quen de Alibaba o todas estas compañías a disponibilidad del público, y cuando lo tienen en sus manos, le empiezan a hacer un proceso de reentrenamiento para quitarle los mecanismos de seguridad, para hacerle ablation. Eso es lo que significa ablation. Ablation es cuando uno va como raspando los bordes de algo.

[12:54] El modelo ablated de Deep Seek salió hace más o menos unos 4 o 5 días. Entonces, tiene sentido que se haya demorado más o menos 2 días en tener esta explosión termonuclear de problemas de seguridad informática globales.

[13:06] Y este es hasta ahora el inicio, porque vuelve a salir un modelo gringo y lo que termina pasando es que los modelos gringos luego son usados por modelos chinos para entrenar el modelo chino y por eso los modelos chinos tienden a estar o a 6 meses o a 3 meses de distancia de los modelos más avanzados de Estados Unidos, en lo que estos modelos van y succionan el entrenamiento y las especializaciones que los modelos gringos hicieron. Que ojo, aquí yo no estoy defendiendo a nadie. Los modelos

[13:31] gringos básicamente mmm se robaron internet y se robaron eh la propiedad intelectual de todas las personas que hemos creado en algún punto cosas digitales para internet. El punto es que ahora tenemos modelos de capacidades espectaculares, completamente fuera del control de ningún gobierno. Cualquier persona, cualquier organización que tenga GPUs puede correr estos modelos.

[13:54] Y y eso puede ser un data center como puede ser 500 MacBooks conectados por un cable Thunderbolt. Es impresionante. Entonces, antes de contarles un par de cosas más de para donde yo creo que va esto, les quiero implorar algo. Les quiero rogar que aprendan.

[14:11] En Platzi, de pura casualidad, la semana pasada actualizamos el curso de ciberseguridad para trabajar con inteligencia artificial. Tómenlo ya mismo. Aprendan. Aprendan tan rápido como sea posible. Si ustedes son de las personas que creen que la inteligencia artificial es una burbuja, de encina cachetada y aprendan. Porque sí, esa burbuja tiene al mundo en llamas, tiene los bancos cerrando transacciones. Hay un servicio de Estados Unidos que yo tenía que usar esta mañana y no pude porque

[14:40] está cerrado temporalmente por arreglos, que es básicamente esto. Por supuesto. Mmm si ustedes creen que esto no va a pasar, quítense esa idea ya mismo. Esto ya pasó. Y aprendan a usarlo a profundidad. El 7 de octubre, hace poquitos días, lanzamos el curso de Cloud Cowork y lo estamos actualizando todo el tiempo cada que Cloud Cowork cambia. Usar inteligencia artificial en modo chat no es suficiente, tienen que conectarla al computador de ustedes para hacer las cosas interesantes y divertidas. Pero

[15:07] Freddy, ¿nos estás diciendo que hagas que la seguridad informática y la inteligencia artificial es un problema? ¿Eso no es contradictorio? No. Ustedes piensan que esto es contradictorio probablemente porque no han usado estas herramientas. Pero es es que es la única opción, es la única opción. Es literalmente imposible de tener un ataque de seguridad informática hecho con IA sin IA. No se puede. Hay que usarla para detenerla. Estamos, tristemente, pero eso es, pues no sé si tristemente, eso simplemente es la

[15:32] realidad de las cosas. Estamos en el mundo de IA en la equivalencia a como estábamos en los años 70 con la energía nuclear y con las bombas nucleares. El la seguridad de la destrucción mutua asegurada. Y en este caso es muy parecido. La única seguridad es esto. Y todo esto pasa en el contexto de que pues han pasado cosas, ¿no? La semana pasada salió la noticia de que los refrigeradores de varias cadenas de supermercados en Holanda y en Francia fueron hackeados y les subieron la

[15:58] temperatura a 50 grados centígrados, arruinando toneladas de comida por internet. Tomen el curso de Cloud Code para programadores. Si ustedes desarrollan software y no han dominado Cloud Code, se los juro, no tengo ninguna razón acá ni para vender Anthropic ni nada por el estilo. Si mañana es otra cosa, pues mañana es otra cosa, pero hoy, en el momento en el que estoy grabando este video, no existe un modelo superior a Opus 5.5.

[16:23] Ni siquiera de lejos. GPT 6.1 Sol es bueno, pero es lento y es caro. Opus 5.5 es prácticamente gratis. Em, ninguno de los modelos chinos se le acerca. Ninguno de los modelos de SpaceX se le acerca. Grok, Cursor, Bullshit, no, nada, nada. Opus 5.5 es demasiado bueno. Y puede que mañana sea otra cosa, pero ustedes tienen que estar si si esto es lo que aman, si lo que aman es la tecnología, esto es lo que hay que hacer, aprendan. Y si ustedes no son desarrolladores de software, por el

[16:51] resto del año en Platzi vamos a estar haciendo cursos para diferentes profesiones. Entonces, por ejemplo, vamos a hacer un curso de inteligencia artificial para abogados, específicamente, que es primero una clase en vivo y luego el curso editado, profesionalizado, con la teoría, proyectos, etcétera. Ustedes pueden anotar estas clases en vivo, pueden ir a platzi.com/eventos y ahí siempre van a encontrar los cursos. Pero ahora sí, pues acá sigue el internet, ¿no?

[17:16] Acá sigue el internet. No se ha caído el internet, no nos hemos ido, acá seguimos, seguimos firmes, seguimos en este planeta, ustedes me están viendo este vídeo porque internet está todavía de pie, entonces ustedes pueden decir no es para tanto pero sí es para tanto porque esto es la punta del iceberg porque tengan en mente que las los países Estados Unidos con la NSA, eh los chinos con sus propias organizaciones tanto públicas como privadas, los rusos, todo el mundo, Finlandia, Francia Israel,

[17:50] todo el mundo tiene organizaciones gubernamentales cuyo trabajo es tener una base de datos escondida de vulnerabilidades de software que nadie conoce, eso se llaman zero day exploits exploits de día cero para que en la eventualidad de una guerra se usen al máximo, entendiendo que cuando son usados, pues la gente sabe cómo se usaron y entonces son parchados.

[18:18] Esto existe desde tiempos inmemoriales, desde que en la Segunda Guerra Mundial hackeaban los cables submarinos del telégrafo o la máquina Enigma o cosas por el estilo, esto siempre ha sido así pero ahora esas capacidades que históricamente han sido de gobiernos y es honestamente o potencias, hoy en día están en manos de tres huevones con deep six y muchos MacBook Pros con suficientes cables Thunderbolt es realmente impactante, pero el problema es para mí, a mí me parece que es un momento que cambia todo

[18:49] entonces acá sigue internet, no es como que nos desconectemos mañana, no es como que de repente no hayan bananos en el supermercado pero sí puede ser, por ejemplo, que dejemos de tener acceso a ciertos vuelos que deje de ser tan sencillo viajar, que deje de ser tan fácil enviar dinero por internet lo más preocupante para mí es que esto puede causar una mini recesión a medida que las empresas se asustan y retraen su inversión en todo lo demás, mientras siguen invirtiendo en AI porque

[19:17] también esto es muy irónicamente conveniente para los laboratorios. Como AI me está atacando, necesito AI para defenderme. Yo creo que lo que viene es la era de las intranets. Yo cosas como lo que pasó en Francia me me hace pensar que ¿por qué tenemos todo conectado a internet?

[19:36] ¿Por qué nuestras plantas de energía eléctrica, nuestros aeropuertos, nuestros bancos tienen que estar conectados por un cable de fibra óptica de alta velocidad al internet global del mundo? Y pues la razón principal ha sido conveniencia y que nosotros creemos que desde una perspectiva de seguridad podemos pagar a Cisco, a Oracle, a AWS, a Google, a quien sea a Palo Alto Networks para que tengamos los firewalls y los protocolos, etcétera, que nos permitan al mismo tiempo darle acceso a nuestros sistemas

[20:08] al mundo entero a través de internet y tener nosotros mismos un entorno seguro para trabajar en nuestras compañías. Se va a poder. El cifrado pues todavía no tenemos computación cuántica, se demora un montón, el cifrado todavía sigue siendo fuerte e incluso si tuviéramos computación cuántica hay cifrado a prueba de computación cuántica. No es no es no es lo peor que nos puede pasar.

[20:29] Pero los gobiernos sobre todo se tienen que empezar a cuestionar probablemente que tener una intranet. El ejército gringo tiene un internet paralelo al internet de la gente normal por el a través del cual se comunican. Y es medio terrible porque es básicamente un Outlook especial, entonces solamente usan Microsoft Outlook, un Internet Explorer especial, entonces lo pueden usar en Internet Explorer, imagínense eso, o Edge, lo que sea, yo no sé.

[20:51] Pero esta es la nueva realidad, la nueva realidad es que probablemente vamos a tener más redes locales. Si ustedes tienen dispositivos IoT en sus casas, como lámparas inteligentes y eso, háblenle a Cloud Code para que se los vuelva una red local para salirse de internet. Es la era de las intranets y es tristemente el inicio del salvaje y viejo oeste de AI es el fin del internet abierto inocente.

[21:19] Y quién sabe qué venga después.
