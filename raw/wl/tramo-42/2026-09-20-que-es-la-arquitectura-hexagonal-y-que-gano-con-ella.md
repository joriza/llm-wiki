# ¿Qué es la arquitectura hexagonal y qué gano con ella?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=lsSe7kOkVjE)
- **Canal**: Torti Code
- **Publicado**: 2026-09-20
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:24

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esta tienda en línea acaba de cambiar de base de datos, de SQL a Postgres. Mira lo que tocamos, un archivo nuevo y dos líneas en otro. El corazón del programa, donde vive la regla de no vender lo que no hay, cero líneas. Y las mismas pruebas pasan igual que antes.

[00:18] ¿Cuántos archivos habrías tocado tú en tu proyecto? Netflix contó algo parecido en 2020. Pasaron a leer de otra fuente de datos en 2 horas y el cambio fue de una línea. Detrás de eso hay una forma de organizar el programa que se llama arquitectura hexagonal.

[00:35] Al terminar, vas a poder mirar tu propio código y decir qué es núcleo, qué es puerto y qué es adaptador. Y vas a saber cuándo esto te sirve y cuándo te sobra. Hola, soy Torti y esto es Torti Code. ¿Dónde viven las reglas?

[00:51] Piensa en tu cuenta del banco. Puedes sacar plata por el cajero automático, por la app, en la ventanilla con una persona o en la tienda de la esquina que hace de corresponsal. Cuatro puertas distintas. Ahora intenta sacar más de lo que tienes. El cajero dice que no, la app dice que no, la persona de la ventanilla dice que no, la tienda de la esquina dice que no.

[01:15] Los cuatro dicen que no, porque ninguno de los cuatro decide eso. El cajero tiene sus propios topes, sí, y de eso hablamos al final. Pero la regla de la cuenta, no sacas más de lo que tienes, vive en un solo lugar, en el centro, y las cuatro puertas solo le llevan la petición.

[01:32] ¿Y cómo le llevan la petición? Con una papeleta con casillas fijas, de qué cuenta y cuánto. El cajero llena esa papeleta con botones. La app la llena con una pantalla. La persona de la ventanilla la llena con tu documento y tu firma.

[01:47] Cuatro formas de llenar la misma papeleta. Esa papeleta es lo único que la regla entiende. Fíjate en algo, si mañana el banco abre una quinta puerta, digamos un asistente por chat. ¿Quién aprende a hablar con quién? El chat aprende a llenar la papeleta. La regla no aprende a hablar chat. Ahora mira el otro lado del mostrador, el que nunca ves.

[02:09] Para aplicar la regla, la persona del centro necesita tres cosas de afuera: saber tu saldo, anotar el movimiento y avisarte que se hizo. Tres ventanillas hacia atrás, cada una con su propio formato. ¿Y quién está detrás de esas ventanillas?

[02:25] Puede ser un libro de papel sellado, como antes. Puede ser un computador. Y si quisieras entrenar cajeros nuevos, podrías poner un libro de juguete donde se anota y no pasa nada de verdad. La regla del centro no lo sabe, ni le importa. Ella dice, "Anota este movimiento." Quien esté detrás lo anota como pueda.

[02:46] El día que el banco cambia el libro de papel por el computador, ¿cambia la regla? No. ¿Cambia el cajero automático? Tampoco. Se retira un libro, se pone otro y la papeleta sigue siendo la misma. En un banco real esa migración tarda años. En el dibujo es cambiar un libro.

[03:06] Falta un detalle. El banco dicta qué se anota en cada movimiento: fecha, cuenta, monto. Quien guarde los movimientos tiene que poder anotarlos así. Otra vez, el de afuera se adapta al de adentro. Junta las dos mitades y ya tienes el dibujo completo.

[03:23] En el centro, una sola regla. Del lado de entrada, cuatro puertas que llenan una papeleta. Del lado de salida, tres ventanillas con formato fijo. Y detrás de cada una, algo intercambiable. Y la pregunta que ordena todo, ¿quién se adapta a quién?

[03:40] Siempre el de afuera al de adentro. El cajero aprende la papeleta del banco. El computador aprende el formato de los movimientos del banco. La regla no aprende nada de nadie. Cuando abre una sucursal, alguien decide qué va en cada lugar.

[03:56] Cuelga la ficha del cajero en su gancho, la de la app en el suyo y pone un libro en el mostrador de atrás. Ese momento de colgar fichas ocurre en un solo lugar. Guárdate esta imagen. Ahora le ponemos los nombres que usan los programadores.

[04:11] Núcleo, puertos y adaptadores. Volvamos a la tienda del principio. Su regla es tan simple como la del banco. No reservar más unidades de las que hay. Y si quedan cinco o menos, avisar. Esa regla es el núcleo. Es una función que recibe un producto y una cantidad y decide.

[04:32] No sabe qué es una petición web ni qué es una base de datos. En el código es un archivo que no importa nada de afuera. Ni web ni base de datos. La papeleta del banco es el puerto de entrada. Un contrato que dice lo único que se le puede pedir al núcleo.

[04:48] Aquí, reservar unidades. Código del producto y cantidad. Las puertas son los adaptadores de entrada. En la tienda hay dos. Una terminal para que alguien del almacén escriba reservar café 500 gramos, tres. Y un servidor web para que la página mande la misma petición.

[05:07] Cada uno traduce lo suyo a la papeleta y se la pasa al núcleo. Ninguno de los dos tiene la regla dentro. Las tres ventanillas hacia atrás son los puertos de salida. Buscar y guardar un producto que van juntos en un contrato y avisar que queda poco en otro.

[05:23] Los dos contratos los escribe el núcleo. Y detrás de cada uno va un adaptador de salida. Para guardar, uno con ese Q Late y otro con Post Gres. Para avisar, uno que imprime en consola, que en producción sería un correo o un mensaje.

[05:38] Y para las pruebas, un adaptador que guarda todo en memoria y no toca ningún disco. Ese es el libro de juguete y tiene nombre. Doble de prueba. Esta misma tienda está escrita tres veces, en Python, en JavaScript y en Go.

[05:53] El adaptador de Postgres solo lo escribí en Python, para el cambio del principio. Cambio la sintaxis y el archivo se llama distinto, pero en las tres hay un núcleo que no importa nada, un contrato de entrada, dos de salida y una fila de adaptadores. Y en las tres, el ensamblado, el lugar donde se cuelgan las fichas, es un solo archivo de arranque con una línea por adaptador.

[06:15] Ahora sí, el dibujo con su nombre. Alister Coburn lo publicó en 2005 y lo llamó puertos y adaptadores. Dibujó la aplicación como un hexágono, adentro el núcleo, en los bordes los puertos, afuera los adaptadores. El lado izquierdo, quienes le piden cosas a la aplicación, el derecho, aquello a lo que la aplicación le pide cosas.

[06:38] En los libros vas a ver esos dos lados como lado conductor y lado conducido, es lo mismo que entrada y salida. ¿Y por qué seis lados? Por nada. Coburn lo dijo con esas palabras, el hexágono no es porque el seis importe, sino para que quien dibuja tenga espacio para poner los puertos y adaptadores que necesite.

[06:57] Podría haber sido un octágono y daría igual. Lo que sí importa es una sola flecha, todas las dependencias apuntan hacia dentro. Los adaptadores conocen al núcleo, el núcleo no conoce a nadie. Esa flecha es todo el patrón, las dos cosas que vienen ahora salen de ella.

[07:14] Pruebas en memoria y cambio de base de datos. Primera consecuencia, el mostrador de práctica. Para comprobar la regla de la tienda, escribí cuatro pruebas. Reserva y descuenta, rechaza si no hay stock, rechaza una cantidad inválida y avisa cuando queda poco.

[07:33] Las cuatro hablan solo con el núcleo, a través de la papeleta. Y como el núcleo no sabe dónde se guardan las cosas, puedo colgarle el libro de juguete, el adaptador en memoria. Corrí esas cuatro pruebas 200 veces seguidas, 800 pruebas en total.

[07:51] En memoria tardaron 12 milésimas de segundo. Con SQLite, 6 décimas de segundo. Contra Postgres de verdad, 5,8 segundos. 800 pruebas iguales, con el mismo resultado y casi 500 veces más rápido. A ese ritmo, 10.000 pruebas son un parpadeo en memoria y más de un minuto contra Postgres. Correrlas cada vez que guardas o de vez en cuando.

[08:18] Ojo, la base de datos real también se prueba, con menos pruebas y en otro momento. La regla se prueba 1.000 veces sin ella. Segunda consecuencia, cambiar el libro. Es lo que viste al principio. La tienda arrancó con SQLite. Para pasar a Postgres, escribí un adaptador nuevo, 37 líneas que cumplen el mismo contrato de guardar y buscar.

[08:42] Y en el archivo de arranque cambié dos líneas. La que dice de dónde viene el adaptador y la que lo cuelga en su gancho. El núcleo, cero líneas. Las pruebas, cero líneas. Las mismas cuatro pasaron contra Postgres sin tocarlas. Y la regla sigue igual de estricta. Con el libro nuevo tampoco puede reservar lo que no hay.

[09:02] Eso fue lo que Netflix contó en 2020 con su propio sistema. Pasaron a leer de otra fuente de datos en dos horas y según ellos, con un cambio de una línea. La línea que cuelga la ficha. Para que veas la diferencia, escribí la misma tienda como la escribimos casi todos la primera vez. La regla adentro del servidor web, junto con las consultas a la base de datos. Funciona igual.

[09:26] Pero mira lo que pasa cuando llega a la terminal. Como la regla está dentro del servidor, la copio en la terminal. Ya son dos copias de la misma regla. Y el día que alguien cambia el umbral de aviso de 5 a 10 en una copia, la otra sigue en 5 y la página avisa cuando la terminal no.

[09:44] Para cambiar de base de datos en esa versión hay que tocar tres archivos, porque las consultas están regadas en los tres. Y para probar la regla hay que arrancar el servidor y crear la base de datos. Porque la regla no existe sola, vive pegada a las dos cosas. Es la misma tienda. La diferencia es hacia dónde apuntan las flechas. Tu turno.

[10:05] Mañana la tienda quiere avisar por correo cuando quede poco stock en vez de imprimir en consola. Con lo que ya sabes, ¿qué se toca? Piénsalo un segundo. Se escribe un adaptador de salida nuevo, el que manda correos, que cumple el contrato de avisar. Y se cambia la línea del ensamblado que cuelga el notificador. El núcleo ni se entera de que ahora existe el correo. Y una más difícil. Llega una app móvil.

[10:30] ¿Adaptador de entrada o de salida? De entrada, porque le pide cosas a la aplicación. Llena la misma papeleta que la web y la terminal. Si respondiste las dos, ya sabes leer un hexágono. Costo, límites y clean architecture.

[10:46] Ahora el costo. Esta tienda tiene 11 archivos con código en Python para una regla que cabe en un puñado de líneas. La versión acoplada tiene tres. El hexágono se paga con archivos y con indirección. Para seguir una petición pasas por el adaptador, el puerto y el núcleo.

[11:05] La guía de patrones de Amazon Web Services lo dice sin rodeos. El código extra de los adaptadores se justifica solo si la aplicación tiene varias entradas y salidas o si esas entradas y salidas van a cambiar con el tiempo. Si no, es una capa más que mantener.

[11:22] Y añade algo de latencia. Entonces, la tiendita de una sola ventanilla, el script que corre una vez, el CRUD sin reglas, no necesitan cuatro puertas ni un departamento de libros. El hexágono paga cuando hay reglas que proteger y cuando afuera cambia. Otro canal, otra base de datos, otro proveedor.

[11:44] Que es, casi siempre, lo que le pasa a un sistema que sobrevive más de un año. Dos aclaraciones. Una. El patrón no dice nada de cómo organizar el núcleo por dentro. No te obliga a capas ni a carpetas con nombres en inglés.

[12:01] Dos. Si alguien te habla de Clean Architecture o de Onion Architecture, es la misma flecha hacia dentro, dibujada en círculos en vez de un hexágono. Robert Martin, el autor de Clean Architecture, lo escribió él mismo. Son variantes muy parecidas con una sola regla en común.

[12:20] Las dependencias del código solo apuntan hacia dentro. ¿Y el límite de la comparación con el banco? Los bancos de verdad sí ponen reglas distintas por canal, como límites de retiro por cajero. En tu código, si una regla depende del canal, no va en el núcleo, va en el adaptador.

[12:39] Ahí la analogía se acaba y empieza tu criterio. Entonces, arquitectura hexagonal en dos frases. Las reglas viven en un núcleo que no conoce a nadie. Y todo lo demás se adapta a los contratos que ese núcleo publica. Por eso puedes probar 1,000 veces sin base de datos y cambiar de base de datos con un archivo.

[13:00] Te quedó una duda pendiente. Del lado de entrada dijimos web, pero web puede ser REST, GraphQL, gRPC o WebSockets. Son cuatro adaptadores distintos para la misma papeleta y no da igual cuál cuelgas. En el video que ves en pantalla comparo esos cuatro con ejemplos para que sepas cuál conectar a tu puerto de entrada.

[13:23] Nos vemos allá.
