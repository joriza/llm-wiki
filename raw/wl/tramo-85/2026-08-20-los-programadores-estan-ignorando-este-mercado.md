# 🔥 Los programadores están ignorando este mercado

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WFmALD7Uhg4)
- **Canal**: hdeleon.net
- **Publicado**: 2026-08-20
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Qué tal mi nombre es Héctor de León? Si hubiera un remake de los locos Adams, para mí sería un honor ser el tío Cosa. De hecho, ni siquiera tengo que pasar por el departamento de vestuarios, ya que en sí ya me parezco al tío Cosa. En este vídeo vamos a hablar sobre la apuesta que yo tengo como desarrollador ya de producto, y mi apuesta es apuesta por el hardware. El hardware es esa parte donde, aunque tengas inteligencia artificial, va a seguir siendo mejor pagado, porque el hardware es muy

[00:25] difícil de probar, muy difícil de utilizar, muy difícil de muchas cosas, y eso vamos a hablar en este vídeo. Por si te quieres involucrar a trabajar con hardware, en cuanto a mi experiencia, voy a hablarte de las dificultades que he tenido para que no te pasen a ti. Así que déjame un pulgar arriba, porque comenzamos.

[00:50] Comencemos con un poco de contexto. Yo estoy involucrado como desarrollador, es decir, YouTube no me da para vivir, tengo que seguir programando, en un proyecto que administra condominios. Este proyecto, obviamente, tiene su parte que es una aplicación móvil, tiene su parte que es una aplicación web, sobre todo para los administradores de los condominios, y también tiene una parte que es toda la capa que se conecta a hardware, que va desde drones, porque ya tenemos drones que vuelan cuando le

[01:14] picas un botoncito en celular, va puertas de acceso, controles de acceso, por ejemplo, este dispositivo que detecta rostros, mmm elevadores y muchísimas otras cosas que tienen que ver con el hardware. Entonces, hablando bajo este contexto, que yo me involucro como un integrador de este tipo de dispositivos, no quiero tampoco meterme a que yo soy realmente un experto en hardware, programo en C++, no, tampoco, o sea, yo soy un integrador de dispositivos y te voy a hablar de mi

[01:40] experiencia, lo que he tenido eh problemáticas con estos dispositivos. Anteriormente [resoplido] también trabajé con antenas de radiofrecuencias, las cuales también ah es muy problemático trabajar con ellas, y vamos a ver, en sí, que muchos de estos dispositivos se centran en los mismos problemas. Y comencemos, por ejemplo, lo primero es que para estos dispositivos la documentación muchas veces viene mal, o sea, viene mal. Descargas un demo que te van, muchas de estos dispositivos son

[02:07] chinos, te dan las empresas chinas y el soporte chino también es muy malo, es decir, quieres contactar a ellos, te van a contestar en semanas, así tal cual. Entonces, tienes que lidiar con la documentación que es una documentación que te entregan con 500 páginas y solamente necesitas una pequeña parte de esas páginas para lo que quieres desarrollar. Porque muchos de estos dispositivos tienen bastantes funcionalidades, por ejemplo, este que tengo aquí tiene para leer lectura de

[02:31] huella, lectura de QR, lectura de tarjeta, lectura de rostros, pero qué tal si a mí solamente me interesa la lectura de rostros, bueno, no me voy a poner a leer todo. Una de las cosas claves que yo he hecho con inteligencia artificial cuando tengo que leer una documentación así de grande de hardware, que igual te puede servir para cualquier documentación, es cargar ese documento e indicar las partes que me interesan solamente y que me arme un plan o me me arme una mini documentación

[02:54] solamente donde involucre esas partes y también le puedo decir, dámelo en tal lenguaje para entenderlo, etcétera, etcétera. Eso es lo que yo hago la mayoría de veces últimamente con la documentación, porque me llega un nuevo dispositivo y tengo que probar, no me voy a poner a leer todo. Simplemente voy a cargar lo que me interesa, indicar que me lo resuma y que hasta te lo puede generar un podcast, como tú quieras, pero el punto es que tú ya tienes esta facilidad para leer sus documentos. Hace

[03:20] unos años era mucho más complejo, porque tenemos que estar buscando entre las páginas del PDF enorme y muchas veces, bueno, el PDF estaba mal redactado, etcétera. También este tipo de empresas te te dan un demo y los demos muchas veces ni corren, es decir, tienes que involucrarte a hacer correr ese demo y eso desde ahí ya hablamos de una complejidad para estos dispositivos. Ah, otra cosa que también eh que de que que quede claro, hay muchos dispositivos que son antiguos.

[03:47] Dispositivos que tienen drivers para versiones muy antiguas de lenguajes de programación. Me ha tocado trabajar con básculas en fábricas enormes. Las básculas son esas que llega el tráiler, pesa el producto y ya saben cuánto pesa el tráiler, entonces simplemente es una resta. Pasa el tráiler directamente a una báscula enorme. Y estas básculas yo no he conocido últimamente una que esté actualizada o regularmente este tipo de empresas trabajan con esas básculas desde hace años, no van a

[04:13] comprar una nueva solamente para para decir ya trabaja con JavaScript. No, no van a hacer eso. Trabajan con Visual Basic 6, por ejemplo. Y te tienes que involucrar a código muy antiguo y esas son las otras dificultades que que existen aquí. Todo este tipo de dificultades, obviamente, radica en que aunque tengas IA va a ser mucho más tiempo. No no es no necesariamente la IA te va a reducir tiempo con este tipo de cosas. ¿Por qué?

[04:38] Cuando tienes que probar estos dispositivos tienes que probar directamente el dispositivo. No existe un sandbox o o es muy raro que exista un sandbox. De hecho, ahorita mismo que estamos trabajando con el dron, el sandbox que nos dieron no sirve, o sea tenemos que hacer ahí de repente unos parches, estar en lugar de de trabajar con el web hook que un dron está viajando y tiene que invocar un web hook a tu a tu backend.

[05:01] Bueno, estamos dando cuenta que que su su aplicación en sí no es tan buena. Así que tenemos que aplicar un tipo de técnica de sondeo para nosotros estar revisando si el dron ya llegó. Es decir, tenemos que hacer ahí un bomberazo.

[05:14] Entonces, el probar este tipo de dispositivos puede ser muy engorroso, muy difícil y muy tardado, aunque tengas la más IA que tengas. Que de repente me va a llegar aquí, "Es que ya puedes poner un robot." A ver, yo no voy a pagar un robot para ese tipo de cosas.

[05:27] Por ejemplo, para probar este dispositivo, cuando tú estás probando el rostro, hay que pasar un rostro. Tal cual, o sea, tengo que poner mi cara, probar, probar, probar, probar. Es algo que no puedes hacerlo con una prueba automatizada. Entonces, de aquí ya hablamos de tiempo, de tiempo el cual tenemos que considerar al momento que estamos desarrollando con hardware.

[05:45] Cuando estamos trabajando en empresa gubernamental que trabajaba la parte electricidad en México, no voy a decir el nombre, ustedes saben cuál es. Hace 10 años más o menos aproximadamente. Estamos haciendo un sistema el cual leía las lecturas por radiofrecuencia de unos dispositivos que estaban en cada poste.

[06:05] Entonces aquí lo complejo cuando estás trabajando con antenas de radiofrecuencia es que son dispositivos que están en el en el aire, en el clima y todo ese tipo de de factores afectan el la información. La ensucian. Y son cosas que tú como programador cuando estás trabajando con solicitudes HTTP, pues ya estás esperando el JSON y te llega el JSON completo, no no te llega a la mitad. Ah, pues con las antenas de radiofrecuencia te llega la mitad. Y no estás hablando de JSON, estás hablando de una

[06:34] un estándar mucho mmm me más anticuado que que trabajar con HTTP. La radiofrecuencia le lee la señal que tiene que leer y la transformamos a algo que pudiera leer un servidor. Y pero a veces en la transformación mucho de los bytes se perdían. Entonces aquí tienes que meter otro tipo de estrategias en las cuales tengas que solventar cuando un mensaje viene mal. Y es como re re reinventar la rueda de lo que es el HTTP pero para radiofrecuencias.

[07:03] Y son de las cositas que tú como programador sales de esa caja de solamente desarrollo web y te enfrentas a a este tipo de circunstancias las cuales te hacen ver que el desarrollo web es solamente una pequeña parte de todo lo que es la programación.

[07:15] Hay otra de las cosas que me han pasado con los dispositivos, sobre todo con estos, que a pesar de que es el mismo modelo, misma marca y todo de repente ya cuando se lo instalas a un cliente falla. Y dices, oye, pero ¿por qué falla si es lo mismo?

[07:30] Bueno, resulta que el firmware está actualizado en el otro cliente y en el tuyo no, por una o dos versiones. Este tipo de empresas no son muy estandarizadas que a veces de repente tú leías un objeto que se llama pato y pato ya no existe, lo quitaron simplemente, ya ahora pato no se llama, se llama ganso y tú cuando estás trabajando con el cliente te das cuenta hasta que estás escaneando, como estás recibiendo los mensajes y dices, oye, aquí está regresando ganso y todo eso qué es,

[07:58] tiempo, tiempo y el tiempo pues es un costo más elevado y todo esto obviamente tú como programador lo vas a cobrar más caro porque por más silla que tengas para desarrollar, el estar probando, el estar sobre todo eh solventando problemáticas que tienen que ver con el hardware, desde que falló el hardware también por el clima, que falló el hardware porque se rompió algo, se destruyó algo físicamente de él, tienes que solventar ese tipo de situaciones porque tu sistema, que es la parte, que

[08:25] es la capa web, que es lo regularmente vas a trabajar con la parte web que se conecta a estos dispositivos tiene que seguir funcionando a pesar que el dispositivo esté tronando, por lo cual tienes que utilizar resiliencia, patrón de resiliencia, que tengan una estrategia para cuando el dispositivo falle y te avise Entonces aquí también entra otro tema de meterle observabilidad obligatoriamente a tu sistema para estar viendo si los dispositivos están sí o no funcionando Una de las cosas que que nos ha pasado

[08:50] es que a veces las puertas no sirven, las puertas del fraccionamiento por por cualquier cosa, pueden no servir desde un problema de programación, pero también puede ser por un problema de conexión, un problema del hardware mismo, se descompuso, entonces tú no puedes dejar la puerta del fraccionamiento que no sirva, o sea, no puedes dejar que las las personas no entren, entonces tienes que buscar una alternativa para ese tipo de cosas, por ejemplo, hacer un circuito de botón para

[09:13] que se pueda abrir en ese tipo de circunstancias que esté ahí físicamente, etcétera, hay muchas cositas que se pueden hacer, que de repente que la red pública está fallando, la red que el internet está fallando, pero la red local sí funciona, entonces es a lo mejor una una aplicación que el tipo de la caseta que está en la entrada pueda aprender el botoncito directamente con la red local, es decir, buscas alternativas Así que a final de cuentas cuando tú estás haciendo desarrollo con hardware,

[09:39] hablo de hardware de dispositivos como integrador, no que yo programe hardware, porque aquí se puede malentender. Te vas a enfrentar a tipos de situaciones como estas, las cuales se elevan el costo, pero los beneficios de esto, ¿saben que yo me he puesto a pensar que regularmente, porque sigo teniendo bastante trabajo, es porque a la gente le encanta, la gente le encanta sentirse en el futuro, sentir que van a un estacionamiento y que pasa su su simplemente su carro sin hacer nada y ya

[10:05] pagaste con la aplicación que tienen y la placa directamente es la que le indica que ya pagaste, ni siquiera te tiene que meter un ticket, eso me ha pasado en algunas plazas aquí en mi ciudad. Y eso sí es dices, oh wow, o sea, se siente como que estás realmente en un futuro, ¿no? Sientes como que esa modernidad ya llegó. Entonces muchas personas que utilizan nuestro producto, de hecho del hecho de que puedan volar un dron o que que la puerta se abra directamente con su carro, todo eso le

[10:30] gusta a las personas. Y esas personas van a pagarte mucho dinero por tal de que estés utilizando hardware. El hardware da ese extra, ese plus extra que todavía causa a las personas esa sorpresa. Oh, parece mágico, pero sabemos que no es mágico, hay todo un conjunto de cosas que las cuales el programador sufrió para que parezca mágico. Y este vídeo más que nada es para dar esa otra parte que mucho no se habla en internet, que es el trabajar con dispositivos de hardware junto con

[10:59] desarrollo web. Se habla mucho de desarrollo web por todos lados, fíjate que todo lo de IOT tiene que ver con desarrollo web, pero poco tiene que ver con dispositivos de hardware. Así que si quieres que haga más vídeos donde ya me involucre más técnicamente a lo que ha pasado con dispositivos de hardware, cómo los he resuelto, qué técnicas he utilizado, ponme un comentario, porque creo que ese tipo de contenidos hace falta bastante y la verdad yo apuesto a el hardware junto con desarrollo web, creo que es parte de

[11:24] lo que viene fuerte junto con internet de las cosas y la robótica, porque a final de cuentas es parte de la nueva revolución industrial, que la revolución industrial, la cuarta esta vez ya la llaman, junto con la inteligencia artificial, la robótica, el internet de las cosas, han dicho que los expertos que la cuarta revolución industrial.

[11:40] Entonces, creámosle a los expertos y comencemos a involucrarnos más en el hardware, porque esa parte, yo creo que es la que te puede dar un extra a la hora de hacer producto y, ¿por qué no?, también a la hora de buscar trabajo. Espero que te haya gustado este video, un pulgar arriba me ayuda bastante.

[11:58] Recuerda que todos mis cursos están en Metalcode siempre 15% de descuento con el cupón Metalcode. Ponte truchilla, capaz que saco un curso de esto. Muchas gracias por llegar hasta aquí. Adiós. [música] [música] [música]
