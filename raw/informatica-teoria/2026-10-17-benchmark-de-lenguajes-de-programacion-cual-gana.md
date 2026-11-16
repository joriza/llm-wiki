# Benchmark de lenguajes de programación: ¿cuál gana?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=y3Fjr2LGW_w)
- **Canal**: CodeSimple
- **Publicado**: 2026-10-17
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hace unas semanas, un programador puso a prueba ocho lenguajes de programación en el servidor más barato que se puede alquilar, uno de 12 dólares al mes, un solo procesador y 2 gigas de memoria, menos que muchos teléfonos móviles. El mejor resultado fue el de Rust, un lenguaje moderno y muy rápido, que aguantó unos 14.000 usuarios conectados a la vez. Entonces lanzó un reto a sus seguidores, ¿creéis que podéis hacerlo mejor? Y vaya si lo creían, llegaron 28 propuestas escritas en 13 lenguajes

[00:32] distintos. La mejor aguantó 64.000 usuarios a la vez, más de cuatro veces el récord anterior, en el mismo servidor de 12 dólares. Hoy vamos a ver cómo lo consiguieron, qué trucos usaron, qué tuvieron que sacrificar por el camino y sobre todo, cuáles de esos trucos puedes aprovechar tú en tus propios proyectos.

[00:52] Y te adelanto algo que sorprende, ganó un lenguaje, sí, pero lo que de verdad marcó la diferencia no fue el lenguaje. Antes de ver los resultados, hay que entender el examen, porque las reglas lo explican casi todo. Un servidor es, sencillamente, un ordenador que está siempre encendido en algún sitio y que atiende a quienes visitan una web o usan una aplicación. Este era el más modesto del mercado, 12 dólares al mes, un procesador compartido, 2 gigas de memoria y 50 de disco. Todos los

[01:24] participantes tenían que construir exactamente la misma aplicación, una mini red social, parecida a Twitter. Con cinco funciones: comprobar que el servidor está vivo, ver el muro de publicaciones, abrir una publicación, darle me gusta y crear una publicación nueva. Para entrar en la clasificación, la aplicación tenía que superar 42 comprobaciones y responder justo como decía la especificación. Y había tres reglas importantes.

[01:53] Primera, la base de datos, el sitio donde se guarda la información, tenía que ser SQLite. Es un sistema que va metido dentro de la propia aplicación, como llevar la agenda en el bolsillo, en lugar de tener un archivador en otra oficina. Estaba prohibido usar una base de datos aparte o un sistema de memoria auxiliar. Segunda, cada petición tenía que comprobar el carnet del usuario, es decir, que su inicio de sesión era auténtico. Tercera, cuando alguien publicaba algo o daba un me gusta, el

[02:25] dato tenía que quedar guardado de verdad antes de contestar hecho. Nada de decir que sí y guardarlo después. Todo lo demás era libre. Podías usar piezas ya hechas, escribir tu propio servidor desde cero o quitar de en medio cualquier programa intermedio. Para medirlo, el autor simuló miles de usuarios virtuales. Cada uno se comporta como una persona real, abre el muro, espera unos segundos, abre una publicación y de vez en cuando da un me gusta o publica algo. Y va sumando usuarios hasta que el servidor no da la

[02:59] talla. Para aprobar un nivel, el servidor tenía que aguantar esa carga 5 minutos seguidos, con el 95% de las respuestas en menos de medio segundo, el 99% en menos de 1 segundo y menos de un 1% de errores. No vale un pico de visitas, hay que aguantar el ritmo, como un corredor de fondo y no como un velocista. Un detalle curioso, algunas propuestas eran tan rápidas que el ordenador que simulaba a los usuarios se quedaba sin memoria antes que el servidor. Tuvo que alquilar cuatro máquinas más solo para generar

[03:35] tráfico. Vamos con los resultados, de menos a más. De las 28 propuestas se pudieron probar 26. Una usaba una base de datos en memoria que iba contra las reglas y otra en el lenguaje R no llegó a arrancar. Y una curiosidad, cero propuestas en Java y cero en Node. Los programadores de Java le fallaron, bromea el autor.

[03:57] Empezamos con Ruby, el lenguaje de la famosa herramienta Rails. Las dos propuestas con Rails aguantaron entre 3000 y 3500 usuarios. Pero la mejor propuesta en Ruby llegó a 14000, cuatro veces más y casi no parecía Ruby. Dejó a un lado Rails y usó un servidor web escrito en C con un solo trabajador.

[04:18] Aquí aparece el primer truco que vas a ver una y otra vez. Lo normal es que la base de datos te devuelva filas sueltas, que la aplicación las convierta en objetos y que luego los convierta de nuevo en un texto en formato J Sales para enviarlo al usuario.

[04:35] Muchos pasos. Este programador se lo saltó. Le pidió a la propia base de datos que preparase el texto ya listo para enviar, como pedirle al almacén que te mande el paquete ya embalado en vez de recibirlo suelto y embalarlo tú.

[04:49] Segundo. Erlang, un lenguaje pensado para sistemas de telefonía que llegó a 15000. Está diseñado para repartir el trabajo entre muchos procesadores, pero este servidor solo tenía uno. Así que el programador lo configuró para usar uno solo y puso a un único responsable a cargo de la base de datos. Se quedó sin potencia de procesador en cuanto subió un poco más. Tercero. Python. Esta es la que más me gusta y no solo por ser la que más se usa. En el vídeo anterior, Python con su herramienta más popular

[05:22] aguantaba unos 2150 usuarios. Ahora, 22000, 10 veces más. La historia tiene truco. La primera propuesta, bastante normal, llegó a 11000. Otro programador cogió esa misma y la duplicó. ¿Cómo? Midió dónde se iba el tiempo del procesador y descubrió que una gran parte se gastaba en las capas de la herramienta que movían las peticiones de un lado a otro sin hacer el trabajo de verdad. Como un edificio con tantos mostradores y sellos que el papel tarda más en llegar a la mesa que en

[05:54] resolverse. Quitó las capas y dejó que cada petición fuera directa a quien la resolvía. Resultado, el doble. Cuarto, Go, que empató con Python en 22,000. Aquí el truco fue un solo trabajador a cargo de la base de datos, que iba recogiendo peticiones de 256 en 256.

[06:14] Hacía todos los guardados juntos, de una sola vez, y después contestaba a todos. Es lo que se llama guardado en grupo, y es otro truco que se repite mucho. Piénsalo así, si tienes que llevar 100 paquetes a Correos, no haces 100 viajes, haces uno con todos los paquetes.

[06:31] Y aún así, no contestas hasta que Correos los ha sellado. Ese servidor en Go tenía un límite curioso, al pasar de 16,000 conexiones abiertas, empezaba a pedirle a los clientes que se desconectaran y volvieran a conectarse.

[06:45] Y a esa escala, eso salía caro. Por eso es probable que pudiera dar más de sí. Y quinto, C#, el lenguaje de Microsoft. En el vídeo anterior aguantaba 4,400. Esta propuesta, 32,000. Quitó todo lo que sobraba entre el servidor y su código, y además, evitó crear objetos innecesarios que luego el recolector de basura de la memoria tiene que limpiar.

[07:09] Usó espacios de memoria reutilizables. Con un solo procesador, ahorrarse ese trabajo se nota muchísimo. Llegó a usar el 93% de la capacidad del procesador, el más alto entre los mejores. Se acabó la potencia. Ahora empiezan las sorpresas. Fortran.

[07:27] Sí, Fortran, un lenguaje que nació en los años 50, pensado para cálculos científicos. Nadie esperaba que una aplicación web en Fortran hiciera nada digno. Y llegó a 38,000, por delante de Python, Go y C, usó una pequeña biblioteca escrita en C para atender las conexiones y dejó que SQLite hiciera casi todo, hasta comprobar los carnés de los usuarios. Es un buen ejemplo de que la forma en que diseñas el sistema pesa más que el lenguaje que escribes. PHP.

[07:59] En el vídeo anterior, con su herramienta más famosa, Laravel, aguantaba 750 usuarios. Pasarlo a PHP sin más herramientas lo subió a 2700, pues esta propuesta llegó a 40000, más de 50 veces el resultado original y la aplicación entera son solo 250 líneas de código. El secreto, una extensión llamada Swoole, que convierte a PHP en un servidor que se queda siempre encendido. Normalmente, PHP monta toda la aplicación desde cero con cada visita, como un restaurante que montara y desmontara la cocina para cada

[08:34] cliente. Con Swoole, la cocina se monta una vez, se dejan preparadas las recetas y se sirve a todo el que llega. Hubo una segunda propuesta con Swoole que llegó a 39000. Rust, la primera propuesta. Con una herramienta muy popular llamada Axum llegó a 43000. Otra vez con un solo trabajador a cargo de la base de datos y guardado en grupo. Fue la que más memoria gastó, 1,1 gigas de los dos que tenía el servidor. C. La mejor propuesta en C llegó a 46000 y usó una función moderna de Linux que se llama IO_uring.

[09:10] Normalmente, una aplicación tiene que ir pidiéndole cosas al sistema operativo una a una. Acepta esta conexión, lee estos datos, envía esta respuesta. Con IO_uring se entregan las peticiones por lotes y se recogen los resultados también por lotes. Menos idas y venidas.

[09:29] Pero lo más curioso es que el programador también optimizó SQLite. Durante la preparación del programa, le hizo ejecutar un trabajo de ejemplo, midió qué partes se usaban más y fabricó una versión de SQLite a medida para esas consultas. Un traje hecho a medida, en vez de uno de tienda. Y esta propuesta falló cuando el procesador estaba solo al 36% de su capacidad, es decir, algo en su diseño la frenaba. El autor sospecha que la causa son ocho hilos de trabajo esperando turno para usar una

[10:01] misma cerradura. Y tiene, por cierto, el récord de menor uso de memoria, 39 megas. Bun con TypeScript. En el vídeo anterior, 4200 usuarios. Esta propuesta, 47000, 11 veces más en unas 350 líneas. ¿Cómo? Ni siquiera usó el servidor web que trae Bun, que ya es rápido.

[10:23] Escribió su propio lector de conexiones y leyó directamente los bytes que llegaban, buscando solo las cabeceras que necesitaba. Y pidió a SQLite que le devolviera la respuesta ya preparada, en bytes, sin pasar por texto. Es un caso extremo de quitar todo lo que no hace falta. Y Zig, un lenguaje joven que muchos pedían probar. Llegó a 61000 en unas 680 líneas. Cayó al pasar de 60000 porque su autor había fijado a mano un límite de 60000 conexiones permanentes.

[10:55] Otras dos propuestas en C++ del mismo programador cayeron exactamente en el mismo punto. Así que, con ese número cambiado, probablemente habrían llegado más lejos. Y llegamos a la final. Dos propuestas empataron en 64000 usuarios.

[11:11] La segunda propuesta en Rust usó también IO_uring como la de C, pero fue más lejos. Dejó que el sistema operativo gestionara directamente las referencias de las conexiones, lo que ahorra trabajo. Y en lugar de guardar los datos de uno en uno, su bucle recogía un lote de eventos, ejecutaba las operaciones, guardaba todo de golpe y respondía.

[11:32] Resultado, 64.000 usuarios con el 99% de las respuestas en 224 milisegundos, menos de un cuarto de segundo. Usando solo la mitad del procesador y menos de 100 megas de memoria. ¿Por qué 64.000 y no más? Porque aquí se topó con un límite que no era suyo. Cada usuario virtual mantiene una conexión abierta y el cortafuegos de Linux apunta todas las conexiones en una lista.

[11:59] En esta máquina, esa lista tenía sitio para unas 65.000 entradas. Al pasar de ahí, se llena y el sistema empieza a descartar paquetes. El autor podría haberla ampliado, pero las reglas prohibían tocar el sistema operativo.

[12:14] Todos competían en igualdad. Así que 64.000 era la nota máxima posible y Rust la alcanzó con media máquina libre, así que no sabemos cuánto más habría dado. El otro finalista fue C++, también con 64.000. Un solo hilo, un solo bucle de eventos, hablando directamente con SQLite, sin colas de trabajadores, sin cerraduras, sin intermediarios. Su truco estaba dentro de SQLite. El programador midió que SQLite gastaba un 13% de su tiempo repasando su propia memoria cada vez que guardaba, así que la redujo casi

[12:50] a nada y dejó que se encargara el sistema operativo. Y sacó las tareas de mantenimiento del registro de cambios fuera del camino de las respuestas para que nadie esperara mientras se hacía limpieza. Pero esta lleva un asterisco.

[13:03] Usa un modo de SQLite que no obliga a escribir cada guardado en el disco al instante. Cumple las reglas, pero tiene un precio. Si el servidor se queda sin luz justo en ese momento, las últimas anotaciones podrían perderse. Es como apuntar una venta en la libreta sin esperar a que se seque la tinta. Casi siempre no pasa nada. Pero casi siempre no es siempre. Entonces, ¿quién ganó el desempate? Con 64,000 usuarios, el 99% de las respuestas de C++ tardaba 910 milisegundos, casi un segundo. Las de

[13:40] Rust, 224. Y C++ usaba el 68% del procesador frente a la mitad de Rust. Ambos aprobaron, pero Rust tenía mucho más margen. Por eso se lleva el título. ¿Qué hicieron de verdad los más rápidos? Cinco cosas se repitieron una y otra vez. Primero, quitaron Nginx. Es un programa que hace de recepcionista, atiende las conexiones, las reparte y las pasa a la aplicación. En una web de verdad es utilísimo porque se ocupa de la seguridad de la conexión, de repartir la carga y de muchas cosas más. Pero en un

[14:16] servidor con un solo procesador, cada petición tiene que pasar por un proceso extra antes de llegar al código. Más trabajo, más datos moviéndose, más tiempo de procesador. No todos lo quitaron. Hubo buenos resultados que lo conservaron, pero las propuestas más rápidas atendían las conexiones directamente. Segundo, prepararon las consultas una sola vez y reutilizaron una única conexión con la base de datos.

[14:41] Es como aprenderte la receta una vez, en lugar de volver a leerla cada vez que cocinas. Tercero, dejaron que SQLite preparara las respuestas ya montadas en lugar de convertir filas en objetos y objetos en texto. Lo vimos en Ruby, en Erlang, en Fortran, en Bun. Cuarto, el guardado en grupo. En lugar de guardar cada escritura por separado, juntaron varias en una sola operación. Cuántas más escrituras tiene tu aplicación, más se nota. Y quinto, se saltaron el marco de trabajo entero. En vez de usar las

[15:14] herramientas prefabricadas de cada lenguaje, escribieron sus propios servidores, su propia gestión de memoria y y propios bucles de eventos. Ahora, un aviso importante. Aunque las cifras son espectaculares, el propio autor dice que no aprobaría la mayoría de estas soluciones en una empresa de verdad. La propuesta ganadora en C++ ocupa más de 1300 líneas en un solo archivo e incluye su propio lector de peticiones y su propio lector de JSON.

[15:42] La mejor en Rust tiene unas 2400 líneas y usa mucho código inseguro, el que le quita al lenguaje sus protecciones habituales. Depende de funciones muy modernas de Linux y la de Bun solo entiende la parte del protocolo web que esta aplicación necesita, ni una más. Ninguna de esas decisiones es mala.

[16:02] El objetivo del reto era llegar al límite, pero en un entorno real importan otras cosas, que el código se pueda mantener, que sea seguro, que funcione en otros equipos y que otra persona pueda entenderlo dentro de un año. Para eso, los resultados del vídeo anterior con herramientas normales son más realistas. También hay una pega con el guardado en grupo. Si una de las operaciones falla, todas las peticiones que esperaban en ese lote pueden fallar juntas. Y si todo pasa por una sola

[16:32] conexión, hay que cuidar que una tarea lenta no deje a todos los demás esperando. Entonces, ¿qué te llevas a casa? Una lección sencilla que sirve aunque no programes. Antes de comprar un servidor más grande, mide dónde se va el tiempo. El programador de Python que duplicó el resultado no cambió de lenguaje ni de máquina. Midió, descubrió que el tiempo se iba en capas que no hacían el trabajo de verdad y las quitó.

[16:58] Resumamos. Un servidor de 12 dólares ha pasado de aguantar 14000 usuarios a aguantar 64000 gracias a la comunidad. Rust se lleva el título empatado con C++. Pero la lección no es usa Rust. Fíjate en lo que pasó. Python duplicó su resultado quitando capas.

[17:19] PHP pasó de 750 usuarios a 40,000 al dejar de arrancar la aplicación en cada visita. Y Fortran, un lenguaje de los años 50, superó a Go y a C. Cuando el diseño es bueno, casi cualquier lenguaje corre y cuando es malo, ninguno te salva.

[17:37] Si este vídeo te ha ayudado a entender cómo se exprime un servidor, suscríbete a Code Simplo. Aquí explicamos la inteligencia artificial y la programación así, sin prisa y sin palabras raras. Y cuéntame en los comentarios, ¿qué lenguaje usas tú y qué resultado te ha sorprendido más? Te leo.

[17:56] Nos vemos en el próximo.
