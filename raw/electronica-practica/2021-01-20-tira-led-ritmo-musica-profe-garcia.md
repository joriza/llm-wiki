# ✅ Tira LED al Ritmo de la Música, muy fácil de hacer en casa

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZsMuX1fI0Fs)
- **Canal**: El profe García
- **Publicado**: 2021-01-20
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:46

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ah [Música] [Música] [Música] [Música] en el vídeo hoy vamos a aprender a hacer una tira led al ritmo de la música vamos a compartir los planos vamos a compartir el programa vamos a ver cómo hicimos la estructura todo en el vídeo hoy vamos con el vídeo está vídeo es patrocinado gracias a la empresa pixel higüey donde siempre mandó a hacer mis circuitos impresos nos ofrece la fabricación de pcbs estándar de percebes avanzados psd flexibles el montaje de los peces como tal plantillas esmd y ahora tiene

[01:13] fabricación de piezas en cnc y 3d damos la fabricación de piezas del cnc de tres cuatro y cinco ejes carcasas de metal la parte de 3d inyección nos pueden fabricar piezas en aluminio o en acero inoxidable realmente está muy bueno el nuevo servicio de piscis away no solamente es impresos que lo que yo manejo sino veamos que también hace otras cosas muy interesantes con fuente alimentación vamos a utilizar un cargador de 5 voltios 2 amperios debe ser exactamente de 5 voltios ya que

[01:47] tanto el arduino el sensor y las tiras led funcionan con 5 voltios y le colocamos un cargador rápido de 9 voltios o 12 voltios o algo no quemamos el arduino pero si quemamos la espiral del cargador de 5 voltios oa la 2 amperios vamos a requerir de un pulsador conectado de gn d al pin 5 para poder ir seleccionando los modos él va haciendo secuencias está a unos minutos en un estado luego cambia el siguiente cambio la siguiente secuencia pero si quiero me puedo adelantar con este pulsador ir a

[02:22] la secuencia que yo quiera vamos a requerir de un módulo sensor de sonido alimentado a 5 voltios y la entrada vamos a conectar al puerto análogo a 0 del arduino es importante tener en cuenta que él tiene un sistema de ajuste aquí vemos en este potenciómetro azul ahí debemos graduar el ajuste del nivel de entrada porque si no lo hacemos no nos va a funcionar ese es el riesgo más grande que ustedes instalen a esto y no les funciona y es porque no lo han ajustado es un destornillador de estrella y lo

[02:55] ajustan es muy fácil la salida hacia las tiras led va por el pin 6 conectadas en este caso pueden utilizar una dos tres o cuatro tiras led sin ningún problema y van conectados a de adn de la tira led en este caso lo tenemos de 60 led pero yo lo puede con 120 led que es dos metros estas tiras tienen 60 led por metro y funciona muy bien sin ningún problema funcional a estirarle w ese 28 12 o la w ese 28 se ve en cualquier lado les va a funcionar bien y aquí vemos que es conexión en paralelo

[03:33] de voltaje de los 5 voltios que vienen de la fuente ese mismo voltaje lo utilizamos para alimentar el arduino para que no necesitemos conexión aquí en ninguna parte el voltaje se utiliza para el sensor me ha gustado trabajar con estas tiras led porque es muy fácil los proyectos son muy rápidos el cableado es mínimo y tenemos la ventaja por lo menos en esta tienda acá en colombia que no necesitamos comprar los 5 metros de tira led si no podemos comprar led por led si yo necesito 40 led o 60 nada más puedo

[04:06] comprar solo los 60 led con estas mismas tierras ya hemos hecho este proyecto que fue uno de los bandera del año pasado que es convertir esa tira led en una pantalla de 16 x 16 incluso suscriptores que le hicieron un poco más grande utilizando el software que les compartimos esa vez incluido este otro que ya no es solamente como plasmar la imagen sino como crear animación que se el efecto de movimiento no solamente le va a servir para la esta pantalla sino para la programación como

[04:36] tal en pantalla y con estas mismas tiras inteligentes hicimos el monitor gamer en el que se va viendo en su televisor en su monitor sea viendo el resplandor de los efectos conociendo las conexiones vamos a hacer el montaje por este montaje con el que me decidí utilice dos largueros dos palos de balsa que es muy fácil trabajar madera para colocarlo dos metros pueden ser utilizados los dos metros en un solo larguero pero lo quise dividir en dos colocándolo en paralelo es un metro un metro esto ya el soporte

[05:13] para que se sostenga la estructura y aquí están las conexiones conectados al arduo profe pueden utilizar hard to profe arduino 1 nano mega los que ustedes quieran el programa es compatible con todas que alcanzamos a ver las uniones están hechas con un poco de pegamento y adicionalmente un tornillo que atravesó pero nerf la madera en esta imagen se ve mucho mejor iba escondida debajo de la tira led algunas personas pintan esta madera de color negro está bien mejor un poco para

[05:46] oscurecer deben tener en cuenta que aquí el punto de conexión va más 5 voltios es el positivo en el otro extremo baje nd y en el centro va la señal que sacamos por el pincel del arduino lleva conectado por de jim si le llegan a dar la vuelta a toda la tira led les quedaría de auto veo entonces no se equivoquen vapor de aquí en más la conexión que hace el paralelo viene de la tirada de la izquierda llega a ésta sale hacia las conexiones como la fuente de alimentación es un adaptador y

[06:17] terminando un plug entonces compre este hembra para poder sacar el positivo en negativo ustedes lo pueden hacer cortándolo si quieren de esta forma es mejor la conexión al sensor de sonido recuerden que hay que ajustarlos no sé de se alcanzan a ver una pequeña marca que le dice acá que fue el punto donde yo encontré que funcionaba mejor detectada mejor ahí marque para siempre tenerlo ahí ajustado y las conexiones a nuestro arduo profe o cualquier arduino de los principales este módulo realmente es un micrófono

[06:49] electro con un pequeño amplificador de amplificador lo que nos hace es mejorar nos la salida de audio o lo que le está detectando pero la ganancia de ser ajustado con este potenciómetro y alguna resistencia que trata este potenciómetro lo vamos a girar hasta que ajustemos el sonido perfecto o la detección de sonido perfecto esta fue la forma como lo instalé en mi reproductor de sonido entonces por eso es el ancho porque calculé que quedara lado y lado vemos nuestro arduino conectado como van a quedar las tiras

[07:23] led ahí puestas una lado el otro y el micrófono está apuntando hacia el parlante ahí abajo está el parlante del equipo de sonido del reproductor para que alcance a detectarlo si ustedes quieren conectarlo a través de un jack es una opción o dejarlo con un micrófono para que detecte cualquier sonido si usted nunca han trabado con arduino deben entrar a la página oficial de arduino arduino punto cc entrar a software descargas y descargar al sistema operativo que ustedes tengan con

[07:55] esto les instala en la plataforma de desarrollo el ide de arduino ya teniendo se ha instalado el y de arduino vienen aquí abajo a la descripción les dejo un enlace donde van a poder entrar el programa es un programa libre no lo diseña yo está público en la red pues lo pueden descargar lo copian que deben cambiar en el programa pero primero hay que copiarlo no copian todo y van y lo pegan allá en arduino deben tener en cuenta sólo dos aspectos hay que descargar las librerías y

[08:25] librerías de neo pixel y de la de fast led estas dos creo que ya vienen incluidas y lo único que van a cambiar es el número de píxeles el número de píxeles es el número del led que trae en mi caso estoy utilizando 60 que es un metro si ustedes tienen 40 también los 40 30 ó 120 l 200 led y yo levas aquí el nivel como yo hay gente que instala el micrófono solo pueden amplificar un poquitico le suben aquí el nivel a 20 a 30 más o menos yo sólo dejé solo en dos porque el detector

[09:00] de sonido que estamos utilizando tiene su propio amplificador realmente no hay que cambiarle más al programa cómo descargar estos proyectos si no no le va a funcionar no le va ni siquiera competir a compilar lo primero que se pueden hacer es darle aquí y verificar o compilar con eso se dan cuenta si la falla es del programa o del arduino como tal del hardware entonces si les compila quiere decir que está encontrando la librería se están encontrando todos sin ningún problema si

[09:31] ustedes no las tienen que pagar error así que hay que instalarlas aquí me salió compilado quiere decir que está bien pero ustedes de error entonces vienen a programas incluir librerías tiene estar conectados a internet administrar bibliotecas y después de que les termine de cargar está actualizando las bibliotecas depende de su conexión a internet igual de rápido como en 30 segundos y ahí colocan colocan nuevo pixel aquí ya me aparece instalada está nada fruit ustedes lo van a instalar y

[10:02] luego colocan fast led y deben instalar esta otra yo también ya la tengo instalada ustedes le dan instalar entonces vamos a cargarlo pero antes deben asegurarse que tienen la placa se vienen a herramientas y en placas buscan que sea arduino 1 o la que estén utilizando ya sea la mega la nano la que estén utilizando sistemas del profe les funciona con arduino 1 y el puerto el puerto también es de reconocer como si ustedes tienen windows con 3 con 47 en mac normalmente reconoce

[10:37] así ya después de que la verifiquen de que se está compilando ya le dan aquí donde dice subir queda listo las conexiones ya disfrutar de nuestro metro [Música] este vídeo se realiza gracias a personas como usted que aportan a este canal que creen en esta labor educativa que hacen su aporte a través de petro que están suscritos a los que se unieron oprimiendo es el botoncito que por acá abajo que dice unirse que son miembros del canal oa las personas que me invitan un café a través de paypal acá abajo en

[11:16] la descripción están las opciones si quieren hacer parte de este canal gracias totales [Música] [Música] [Música]
