# Todo Lo Que Necesitas Saber Sobre Fibra Óptica

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=f34u4ivZK8k)
- **Canal**: ASNetworking
- **Publicado**: 2026-10-25
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 22:53

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Fibra monomodo, multimodo, conector SC, LC, OS2, OS1, OM3, OM4. Pulido APC, pulido UPC. Vamos a intentar aclarar todo este batiburrillo de acrónimos y explicar todas estas tecnologías de la fibra óptica para que puedas tener redes de 10 GB por segundo, 25 GB por segundo o 100 GB por segundo funcionando adecuadamente. Cada uno de estos cables, conectores, pulidos y adaptadores tiene un uso específico a la hora de mover datos. Y da igual si es para tu home lab, para los servidores de

[00:41] la empresa o para un data center profesional, tienes que conocer. Nos vamos a centrar en los usos más comunes que te vas a encontrar cuando trabajes en redes locales y como siempre hacemos aquí, lo vamos a hacer de manera práctica, sin olvidar los fundamentos que hay detrás de toda esta tecnología, porque si no conocemos el origen de las cosas, nunca sabremos diagnosticarlas correctamente.

[01:02] Si hay dos cosas que nos gustan a los informáticos es usar acrónimos y la fibra óptica. Y hoy vamos a tope con las dos. La primera es fácil. Cuanto más acrónimos usemos, menos nos entiende la gente, menos vida social vamos a tener y más tiempo podemos dedicarnos a nuestra frikada. Y cómo no nos va a gustar la fibra óptica. Va como un pepino. La señal llega lejísimo, usa láser, tiene colores fosforitos y además, seamos sinceros, nos sigue pareciendo un poco de magia que todo esto funcione. Así que

[01:30] antes de ponernos a jugar con estos cacharros, vamos a explicar de qué va todo esto. Hay dos tipos de fibra óptica, multimodo y monomodo. Vamos a empezar con la fibra multimodo porque fue la primera en aparecer. La inventó la gente de Corning a principios de los años 70 y empezó a ser usada a nivel mundial a finales de esa década. Corning, que a día de hoy sigue siendo el fabricante más importante de cables de red. Esta tecnología de fibra óptica la verás por ahí llamada normalmente multimodo o

[02:00] multimode en inglés, [música] pero también la podrás ver abreviada como OM, que viene de Optical Multimode o MMF de Multimode Fiber. Después de esto, Corning siguió mejorando su tecnología de fabricación de fibra y a principios de los 80 nació la fibra monomodo, que la verás escrita casi siempre así, monomodo en español o single mode en inglés, con acrónimo SM o SMF de Single Mode Fiber. Otro pequeño truco para diferenciarlas es que el cable de la fibra monomodo es casi siempre amarillo,

[02:36] mientras que la fibra multimodo usa el arcoíris completo. No hace falta aprenderse toda esta nomenclatura de memoria, pero sí es importante que como mínimo todo esto te suene, porque cada fabricante llama a cada cosa de una manera y es superfácil perderse. Y aún nos quedan un chorro de acrónimos por ver.

[02:56] Voy a hacer un pequeño apunte o me va a dar un chungo. Corning no inventó la fibra óptica, solo creó el proceso de fabricación, que no es poco. El verdadero inventor de la fibra óptica fue el ingeniero eléctrico Charles Kuen Kao, que además se llevó por esto el Premio Nobel de Física en el 2006.

[03:12] Imagínate el parraque de los físicos cuando le dan su Nobel a un simple ingeniero. Entonces tenemos fibra multimodo y fibra monomodo, pero ¿cuál es la diferencia entre ellas? La diferencia más importante entre los dos tipos de fibra es que la fibra multimodo usa un diámetro de fibra mucho más grueso y la fibra monomodo, que es la más moderna, tiene un núcleo mucho más estrechito.

[03:38] Ojo, que a partir de ahora es posible que dé alguna pequeña patadita a la física y a las leyes de Maxwell, pero no me lo tengas en cuenta que lo hago solo exclusivamente para que este vídeo no se nos vaya a una hora de largo, ¿eh? La fibra multimodo usa un núcleo interno de 62,5 micrones y un revestimiento o cladding de 125. El núcleo interno es por donde pasa la luz y el cladding o revestimiento es otra capa un poco más opaca que previene que la luz se salga del núcleo. Por cierto, micrones y

[04:07] micrómetros es lo mismo. Un micrón corresponde a 0,001 mm. Por si se me va la pinza a partir de ahora y empiezo a mezclar los nombres, que me conozco. Cuando ves a alguien usando una de estas maquinitas para fusionar fibra óptica, lo que está fusionando es el conjunto del núcleo más el revestimiento. Para mandar información por esta fibra se usa luz de tipo LED que emite pulsos que viajan rebotando por las paredes hasta que sus fotones llegan al final del cable. Como los fotones han rebotado por

[04:36] toda la longitud del cable y cada uno ha cogido un camino distinto, los fotones de cada pulso de luz no llegan todos a la vez, sino en una pequeña ventana de tiempo. A cada uno de estos caminos distintos se les llama modos. De ahí viene el nombre de multimodo. Realmente, cada modo está determinado por ciertas características físicas como el campo eléctrico y el electromagnético. Pero ahí sí que no me voy a meter porque recuerda que yo soy un simple youtuber y tengo mis limitaciones. Con lo que hay

[05:04] que quedarse aquí es que la fibra multimodo tiene el núcleo grande y la luz viaja por dentro por diferentes caminos a los que llamamos modos. La fibra monomodo llegó para solventar este rollo de los rebotes y conseguir llegar más rápido y más lejos. La mayor diferencia es que el núcleo de la fibra pasó de los 62,5 micrones que tenía la multimodo a solo nueve en la monomodo.

[05:31] Como siempre que alguien habla de fibra óptica lo tiene que comparar con los pelos, uno de estos, de los pocos que me quedan, ronda entre los 50 y los 100 micrones, o sea, que son 10 veces más grueso que la fibra óptica monomodo. Si te dedicas a trasplante de pelo, acepto patrocinios, ¿eh? Que conste, que esto hay que arreglarlo. Con este nuevo núcleo de 9 micrómetros ya no se puede meter por aquí luz LED porque el espectro es demasiado ancho y no entra.

[05:55] Ahora hay que subir un peldaño y usar láser. Así se consigue que la luz vaya tan guiada que por ella solo se genera un camino, o lo que es lo mismo, un solo modo. Con lo que se aumenta la eficiencia total de todo el sistema y la señal puede llegar muchísimo más lejos y a mayor velocidad.

[06:13] Una cosa importante es que las fibras ópticas que usamos en la actualidad han evolucionado desde que nacieron hace 40 años. A la fibra multimodo, la del núcleo tocho de 62,5 micrones, se la llama OM1 por ser la fibra multimodo original. Pero hoy ya vamos por la quinta generación, o para seguir con nuestros acrónimos favoritos, por la OM5. Esta es OM4, por cierto. Durante esta evolución el núcleo se redujo de los 62,5 que tenía originalmente a los 50 micrones y se pasó de luz LED a un

[06:44] láser de bajo coste llamado VCSEL y con todo eso ahora puedes obtener hasta 10 gigabit por segundo a 400 metros con una sola fibra o hasta 400 gigabit por segundo con dos fibras de tipo OM5. Con todo esto ahora tenemos que añadir otro puñado de acrónimos a nuestra nomenclatura de fibras multimodo. Así que si te encuentras por ahí con MMF, MM, OM1, OM2, 3, 4 o 5, todo eso son fibras multimodo.

[07:17] La fibra monomodo también ha evolucionado y pasó del estándar inicial OS1 al OS2 en el año 2006. Aquí el cambio fue mayormente del proceso de fabricación y de los materiales que ahora tienen menor atenuación y con esto se permite llevarla mucho más lejos, hasta 200 kilómetros, sin necesidad de que haya ningún amplificador por en medio. Y también permite hacer algunas cosas chulas como la bidireccionalidad y la multiplexación que veremos después.

[07:44] Vale, tío, muy interesante todo esto. Entonces, esto significa que me olvido de la multimodo y hago todas mis instalaciones en la single mode esa. Pues no exactamente. Para entender por qué la fibra monomodo nunca ha sustituido a la multimodo y se siguen usando ambas hoy en día, hay que entender que el cable es solo una parte del sistema y nos falta hablar de las otras, los conectores y los transceptores, que al fin y al cabo [música] son los que meten la luz por aquí.

[08:12] Como hemos visto, la fibra monomodo usa un cable con un núcleo mucho más pequeño que el de la multimodo. Y para conseguir que la luz viaje por este cable, el transceptor usa un láser potente y direccional con un enfoque mucho más preciso que encarece los transceptores para la fibra single mode o monomodo.

[08:30] [música] Otro motivo histórico por el que ambas fibras siguen conviviendo es que el cable monomodo era mucho más caro de fabricar y se usaban conectores más complejos para alinear la fibra. Pero hoy en día están a la par y la diferencia de precio entre monomodo y multimodo es despreciable. [música] En resumen, seguimos usando fibra multimodo porque su evolución tecnológica, especialmente con las fibras OM4 y OM5, han conseguido extraer mucha velocidad a precios muy reducidos. Hoy puedes tener

[09:00] red a 100 gigabit por segundo hasta 100 metros de distancia por con un transceptor de apenas 60 euros. Y por eso seguro que habrás escuchado alguna vez el mantra de "Multimodo es la fibra para conectar equipos dentro del mismo rack y monomodo para cuando hay que salir fuera del rack." Pues esto es menti, bueno, mentira no, pero una verdad a medias. Hace años la diferencia de precio de cables, latiguillos y sobre todo de los transceptores hacía que fuera normal usar multimodo para

[09:30] conectar dispositivos que estuvieran en el mismo rack o en el mismo data center. Y luego usabas monomodo para conectar el resto de las plantas del edificio o incluso irte y conectar otros edificios. El problema de esto es que tienes que lidiar con dos tipos de cable, dos tipos de transceptores y hacer esto en redes grandes es muy difícil de llevar el seguimiento. Si a eso añades que la diferencia de precio es relativamente pequeña y que con monomodo además te aseguras crecer en el futuro sin

[09:58] necesidad de tirar más cable, se tiende a usarlo todo monomodo y ahorrarte dolores de cabeza. Si has llegado hasta aquí, conoces perfectamente este conector. El todopoderoso RJ45 que nos ha permitido comunicarnos durante muchos años y que aunque no lo creas, también ha sufrido sus variaciones, pero esto igual lo dejamos para otro vídeo. Si el RJ45 es el conector de las redes de cobre, en las redes de fibra óptica se usa conector FC para multimodo, este que es el biconic, luego tenemos el MT-RJ, también el SC,

[10:32] por supuesto también tenemos el SMA, SMC, el estándar ST, luego también tenemos el D4, el L2000, FC para single mode y para multimode, también tenemos el SC. Sí, es una locura. Mi consejo, olvídate de todos estos conectores porque la mayoría están o obsoletos o solo se usan para conectar cosas raras que ni tú ni yo vamos a ver nunca. Lo que nos interesa a nosotros son los conectores más utilizados y modernos que son el SC y el LC. Bueno, también tenemos este otro, pero me lo voy a guardar para el

[11:03] final. El conector SC seguro que te suena porque es el más usado por los operadores de telefonía y proveedores de internet para la FTTH. Se creó a finales de los 80 y sigue siendo igual o más popular hoy en día que entonces. Si tienes internet por fibra óptica en tu casa, estoy seguro al 99% que te llega con un cable monomodo con este conector SC. Todo lo que sean ONTs, router con ONT integrada, cajas de terminación o cualquier cosa que te instale la empresa que tengas como proveedor de internet,

[11:36] casi seguro que usará conectores SC. También lo vas a ver bastante en redes locales, sobre todo en tiradas entre edificios o entre plantas, pero desde hace años que esto está cambiando y se está sustituyendo todo por el conector LC.

[11:51] Este es el conector LC. Es el más moderno y de largo el más común para conectar switches, routers, servidores, racks y prácticamente cualquier cosa que lleve un transceptor. La gran ventaja de este conector con respecto al SC es la densidad. Como es mucho más pequeño, te caben muchos más en el mismo espacio, como por ejemplo un patch panel. Otra ventaja es que el método de desbloqueo funciona con esta pestañita que aguanta mejor el maltrato de conectar y desconectar miles de veces que el que

[12:24] tiene el conector SC. Así que este es el conector más común que te vas a encontrar por ahí y por eso la inmensa mayoría de los transceptores vienen preparados para conector LC. ¿Y qué pasa si mi patch panel es antiguo y tiene conectores SC? ¿Cómo le conecto mis transceptores y mis latiguillos? Hater, hoy estás concentrado, eh. Se ve que te gusta este rollo de la fibra. Para estos casos tienes dos opciones. O pones un convertidor de SC a LC en tu patch panel, que es una solución un poco

[12:53] cutre, o simplemente compras los latiguillos que sean de SC en un extremo y LC en el otro. Por si no tuviéramos bastante con monomodo, multimodo y 7000 tipos de conectores, también debemos tener en cuenta los pulidos. La férula es esta cosita blanca, esto no, que es el tapón, estas cositas blancas que está en el extremo de los conectores y el pulido es la forma que tiene la parte frontal de la férula. Esta forma está diseñada para que el conector transmita la luz de la fibra óptica de una forma concreta al

[13:27] equipamiento que va conectado. Hay muchos tipos de pulido, pero los que nos interesan, los más usados son el UPC y el APC. En los conectores [música] con pulido UPC, la férula tiene forma plana en la punta. Este tipo de pulido se utiliza porque funciona bien, es fácil de limpiar y muy barato de producir. Es el más común en redes de datos por muchísima ventaja y lo verás casi siempre en conectores de tipo LC.

[13:55] [música] La forma de distinguir el pulido sin tener que dejarte la vista mirando la férula es que los conectores suelen ser de color azul, aunque como ves aquí no siempre es el caso, pero en este cable monomodo sí que es azul.

[14:09] El pulido APC, en lugar de ser plano, tiene un corte en ángulo de 8º. Esto se utiliza para evitar que parte de la luz que pasa por el cable rebote en la unión y vuelva hacia atrás hasta el equipamiento emisor. Esto es importante porque esa luz yendo hacia atrás puede dañar el equipamiento de nuestro proveedor de internet y por eso los conectores de la fibra que te llega a casa, las rosetas, las ONT y toda la infraestructura de tu proveedor de fibra viene siempre con pulido APC cortado a

[14:40] 8º. Y lo diferenciamos sobre todo en que el conector es verde. Ojo, muy importante, los pulidos son incompatibles entre sí. Si nuestro cable tiene pulido UPC, nuestro transceptor, nuestro adaptador o nuestro conector, lo que sea que vaya en el otro lado, tiene ser que tiene que estar hecho también para pulido UPC. Resumiendo, en redes locales el 95% del tiempo vas a trabajar con conectores LC con pulido UPC y en el entorno de proveedores de servicio lo común es usar conectores SC con pulido

[15:12] APC. [música] Te avisé que esto iba a ser un infierno de acrónimos, no me eches a mí la culpa. Ya te habrás dado cuenta que la inmensa mayoría de cables tienen dos conectores. Esto es porque son cables dúplex, que realmente llevan dos fibras, una de envío y otra de recepción. Usar dos fibras en lugar de una tiene dos ventajas. La primera es que al separar el envío de la recepción podemos mandar más datos y con esto ganar velocidad. Y la otra es que los transceptores son más baratos, porque uno de los puertos lleva

[15:44] el emisor de luz, que recuerda que era láser para monomodo o VCSEL para el multimodo, y el otro puerto solo va a llevar el fotorreceptor. Pero vamos a ver, y entonces cómo me llega a mí 10 gigabits por segundo de internet por un solo conector, ¿eh?

[16:00] Hater. Acabas de descubrir la multiplexación. Tenemos claro que la fibra monomodo tiene un mayor techo de velocidad y además llega más lejos, pero tiene otra ventaja que me he guardado hasta el final, los colores. En la fibra multimodo la luz se emite en un solo color, o para ser más exacto, en una sola longitud de onda, que en este caso son los 850 nanómetros. Esta frecuencia se eligió porque tenía una buena relación entre atenuación y coste de los fotorreceptores que están en los

[16:33] transceptores. En la fibra monomodo, al poder enviar la luz en línea recta y sin deformarse ni rebotar, se puede enviar por el mismo cable múltiples señales diferentes, cada una de ellas de una longitud de onda distinta. A esta técnica es a lo que se llama multiplexación.

[16:51] Y sí, tenemos otro par de acrónimos más, WDM y CWDM. Esto básicamente nos permite enviar múltiples señales independientes por una sola fibra, cada una de ellas con un color o una longitud de onda diferente, por lo que podríamos mandar por un simple cable de fibra 80 canales independientes. ¿Qué uso tiene esto?

[17:12] Pues imagínate que tienes un solo cable de fibra monomodo que une dos edificios y que va de switch a switch. Con WDM puedes multiplicar por cuatro o por ocho el ancho de banda y el número de conexiones que van por un solo cable de fibra sin tener que hacer obra ni tirar otro cable más. De hecho, esto es lo que hacen las operadoras de telecomunicaciones como Movistar para [música] que a tu casa llegue por un solo cable la subida y la bajada.

[17:37] Normalmente el color de la bajada es de 1490 nanómetros y la subida es de 1310. Este es el trabajo que hace tu ONT, usar WDM para separar el tráfico de subida y de bajada que va por un solo cable y luego además usa otra tecnología como TDM y TDMA para separar el tráfico de tus vecinos y descartarlo en el propio cable de fibra. Y esto no sirve solo para el equipamiento de las grandes telecos. Imagínate que necesitas 10 gigabits por segundo, pero solo tienes una fibra disponible. Una de las formas

[18:10] de solucionarlo es con un transceptor simplex o BD que solo lleva un conector LC. Este transceptor recibe y envía por una sola fibra, pero por contrapartida es mucho más caro que un transceptor dúplex normal, porque tiene la construcción más compleja, ya que tiene el fotorreceptor y el láser aquí todo junto en uno solo de los puertos.

[18:31] También puedes aplicar WDM con un pequeño multiplexor como por ejemplo este que vende Unify, donde puedes convertir de una sola fibra dúplex en cuatro o ocho canales y cuesta apenas 185 euros. Muchísimo más barato que si tuvieras que tirar ahora ocho fibras de aquí a donde quiera que vaya este cable.

[18:50] Y este, amigos, es el elemento definitivo por el que hay que instalar siempre fibra monomodo, especialmente para tiradas largas, unir plantas o unir edificios, porque si en un futuro necesitamos tener más conexiones o más velocidad, no vamos a tener que hacer obra para tirar más cable, simplemente nos vale con cambiar el transceptor o usar un multiplexador y enviar por el mismo cable muchas más señales.

[19:17] Como a todos nos gusta la velocidad, si no me estarías viendo esto, que te conozco, me he reservado para el final este conector, el MPO. La característica estrella es que en este minúsculo conector no hay una fibra y tampoco hay dos, hay 12. Y este es el mínimo, hay versiones de 16, 24 y hasta 72 fibras en este minúsculo trozo de plástico. Es flipante. Por supuesto tienes MPO multimodo, que es este que tengo yo aquí rosita, y también tienes monomodo en color verde vómito. Cuando veas muchos

[19:49] de estos conectados a un servidor, aléjate de ahí porque como rompas algo no lo vas a pagar ni en siete vidas. Si necesitas tirar fibra en tu empresa, edificio o incluso en tu casa, aquí tienes unos consejos cutres del abuelo Cebolleta. La fibra óptica no es solo para data center con cientos de equipos ni para necesidades altísimas de velocidad. Veo continuamente casos donde, por ejemplo, las copias de seguridad de una empresa no funcionan o fallan porque no pueden completarse en

[20:19] la ventana de tiempo que tienen asignada. Usa siempre monomodo OS2. La diferencia de precio de los transceptores solo es importante si vas a instalar 500 fibras, pero para 12 o 24 el ahorro es ridículo y nunca te va a compensar. Instala todo para conectores LC. Si el contratista o el electricista te quiere meter SC o cualquier otra cosa, te está intentando vender stock viejo que tiene por ahí el tío acumulado de hace tropecientos años. LC.

[20:48] No toques nunca la férula con los dedos. La grasa y el sudor de la piel puede taponar entre 1 y 5 decibelios el paso de luz y esto es suficiente para que ya el switch no sea capaz de negociar. Usa cable preterminado siempre que puedas. Estos cables vienen testados de fábrica y es más barato que terminar los in situ. Si tienes que poner cable normal porque no te cabe y tienes que ponerlos sin conectores, pues vale, no te queda otra.

[21:17] Pero si estás poniendo canalizaciones nuevas, aprovecha y pon siempre cable predeterminado. La fibra se usa casi siempre por pares. Tenlo en cuenta siempre para hacer los cálculos de cuántas fibras vas a tirar. Si tiras ocho fibras, que pueden parecer muchas, solo vas a poder conectar cuatro equipos entre sí.

[21:34] Si además quieres tener redundancia y hacer, por ejemplo, link aggregation, solo vas a poder conectar dos dispositivos diferentes, ya que cada uno usará dos conexiones y cada conexión usa dos fibras. Y la más importante de todas, nunca, jamás, se te ocurra mirar por el conector de un transceptor.

[21:53] Recuerda que por aquí sale luz láser que, aunque no es muy potente, está super, superconcentrada y enfocada y te puede freír la retina en segundos. Además, el láser que sale de aquí es invisible, con lo que realmente no sabrás si te está dañando hasta que ya sea demasiado tarde. Evidentemente, esto empieza a emitir luz láser desde que lo conectas a un conector SFP plus, así que cuidadito y no se te ocurra mirar por aquí. En este vídeo tenía planeado hablar de fibra óptica y de

[22:23] transceptores, [música] pero creo que me he liado tanto con la parte de la fibra que se me ha quedado un poco largo y si meto ahora los transceptores no va a quedar ni uno ahí detrás mirándolo. [música] Así que si crees que podemos hacer un vídeo directamente de transceptores y lo ves interesante, déjamelo abajo en los comentarios y lo continúo para ponerlo en otro vídeo. Gracias por ver este hasta el final. Espero haberte aportado un poquito de luz en este tema.

[22:48] Es que no sé por qué no me he hecho cómico. Bueno, gracias por estar ahí. Nos vemos en el próximo.
