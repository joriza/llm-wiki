# La Forma Real en que los Ingenieros Senior Piensan el Diseño de Sistemas & Arquitectura

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=0GZF6iy9UZ8)
- **Canal**: CodeSimple
- **Publicado**: 2026-11-11
- **Recopilado**: 2026-11-18
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 33:57

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ahora puedes construir una aplicación completa, la parte visible, el servidor, la base de datos, todo desplegado y en línea. Y con inteligencia artificial puedes hacerlo más rápido que nunca. Así que aquí va la pregunta incómoda. Si ahora cualquiera puede construir la aplicación, [música] ¿qué queda que de verdad convierta a alguien en buen ingeniero? Porque construir la cosa nunca fue la parte difícil.

[00:25] La parte difícil es lo que ocurre cuando la aplicación que has construido se hace popular. [música] Cuando un solo servidor no basta, cuando la base de datos no da abasto y cuando va lenta y no sabes por qué. Eso es el diseño de sistemas. [música] Y la mayoría de los tutoriales lo enseñan como un montón de palabras que dan miedo, balanceadores de carga, réplicas, fragmentación, [música] caché, todo lanzado a la vez desde el primer día y para una aplicación que tiene 50 usuarios.

[00:56] Aquí haremos lo contrario. El plan es este. Empezamos con un servidor y una base de datos que ya es suficiente para muchos más usuarios de los que crees. Luego lo rompemos a propósito una y otra vez y cada vez que se rompe arreglamos exactamente una cosa. De modo que al final habrás construido el sistema completo y sabrás por qué está cada pieza y qué cuesta añadirla. Así que vamos a romper cosas. Esta es tu aplicación, un servidor ejecutando tu código [música] y una base de datos

[01:27] guardando tus datos. Si has construido algo y lo has puesto en línea, esto es lo [música] que tienes. Y quiero decir algo sobre este esquema antes de tocarlo. Esto es suficiente para miles de usuarios, no para decenas, para miles. La mayoría de las aplicaciones que existen ahora mismo son exactamente así y nunca necesitarán ser otra cosa.

[01:47] Eso no es un fracaso ni algo de lo que haya que crecer para escapar. Así que rompámoslo. Supón que construyes una aplicación web para comprar entradas de conciertos, de verdad, como lo hacen las grandes de venta de entradas. La despliegas, la pruebas y todo funciona a la perfección.

[02:06] Y entonces sale a la venta un gran espectáculo. Son las 10 de la mañana si tienes suerte y las 5 de la tarde de un viernes si no la tienes. Y miles de personas, si no decenas o cientos de miles, abren tu sitio en el mismo instante exacto para pillar una entrada y tu aplicación se desploma. Valentísima. Las peticiones se quedan colgadas y algunas no llegan a terminar nunca.

[02:29] Y tu código no tiene nada malo. No hay consultas defectuosas ni errores. El problema es más simple que eso. Tu aplicación corre en un único servidor y un único servidor solo puede hacer un número limitado de cosas a la vez. Así que cuando miles de peticiones llegan juntas se amontonan en una cola esperando su turno. Y esa cola se hace tan larga que las peticiones expiran antes de que les llegue el momento. La pregunta es, ¿cómo atender a miles de personas a la vez en lugar de tener un

[02:59] único servidor ahogándose bajo ellas? Pues hay dos [música] opciones y se llaman escalado vertical y escalado horizontal. Y algún día tendrás que elegir entre ellas de verdad. Así que entendamos bien las dos. Empecemos por la vertical que es la obvia. Consigues un servidor más grande, más capacidad de proceso, más memoria, la misma caja de servidor, solo que más potente y más grande. Y casi siempre esta es la primera jugada correcta.

[03:28] No cambias nada de tu código, pagas por una máquina más grande y asunto resuelto por la tarde. Si un servidor más grande arregla tu problema compra el servidor más grande y vuelve al trabajo. Y para ponerle un número, un servidor de 20 dólares al mes maneja cientos de peticiones por segundo en una aplicación típica. Eso son millones de peticiones al día en una sola caja barata.

[03:51] Pero se agota. Existe una máquina que es la más grande que puedes alquilar y se vuelve carísima mucho antes de llegar a ese punto. Así que una caja más grande te compra tiempo, pero no te compra la eternidad, lo que nos lleva a la segunda opción.

[04:06] En lugar de hacer una caja más fuerte, dejas de hacer que una sola caja haga todo el trabajo. Así que ejecutas varios servidores normales y repartes a la gente entre ellos. Esto es escalar horizontalmente, más máquinas compartiendo la carga.

[04:22] Y quiero dejar muy claro qué son estos tres servidores, porque aquí la gente se lía. No son tres partes distintas de tu aplicación, no es un servidor para pagos, uno para mensajería y otro para otra cosa. Son tres copias idénticas de tu aplicación corriendo al mismo tiempo, [música] el mismo código ejecutándose tres veces y cada copia puede atender cualquier petición por sí sola. [música] Y que quede claro, eso no significa que desplegues tu aplicación tres veces por separado. La publicas una vez,

[04:52] simplemente le dices a tu plataforma que ejecute tres instancias de ella. Y si usas ciertas plataformas, ya lo están haciendo por ti en silencio. Y este enfoque es el que de verdad aguanta. [música] ¿Demasiado tráfico otra vez el año que viene? Pues añades más copias, porque no hay un techo de la misma manera, ya que no dependes de que una máquina sea lo bastante grande.

[05:14] Pero en cuanto tienes más de un servidor, surge una pregunta que antes no tenías. Llega una petición de un usuario. ¿A qué servidor va? Algo tiene que situarse delante de tus servidores y entregar cada petición entrante a uno de ellos, repartir a la gente de forma uniforme para que ningún servidor se vea desbordado mientras los otros están ociosos. Y ese algo se llama balanceador de carga.

[05:39] Llega una petición, el balanceador elige un servidor y el servidor hace el trabajo. Si un servidor está ocupado, manda la siguiente petición a otro distinto. Y si el mes que viene añades un cuarto servidor, el balanceador empieza a usarlo. Los usuarios nunca saben cuántos servidores hay ni cuál les tocó. Hay programas clásicos para esto.

[05:59] Y si despliegas en ciertas plataformas, ya tienes un balanceador de carga. Simplemente nunca tuviste que configurarlo ni pensar en él. Pero también hay que hablar del coste, porque todo lo que añadamos a partir de aquí tiene uno. Acabas de añadir una caja nueva por la que fluye todo, lo que significa que ahora es un punto único de fallo. Si el balanceador de carga se cae, da igual que tengas tres servidores [música] sanos detrás, nadie puede llegar a ellos. Así que en los sistemas

[06:28] reales el balanceador también tiene su propia copia de respaldo, que es más cosas que mantener en marcha. Y hay un segundo coste, más silencioso, que rompe algo que ni siquiera puedes ver. Para que el balanceador pueda mandar cualquier petición a cualquier servidor, todos tus servidores tienen que ser intercambiables.

[06:48] Cualquiera de ellos tiene que poder atender cualquier petición y ahora mismo no es así. La siguiente sección es donde eso nos muerde. Así que ahora ejecutamos varias instancias de nuestra aplicación y eso crea un problema que no tenías con una sola. Un usuario inicia sesión en el servidor A, navega, elige una entrada y pulsa comprar.

[07:09] Esa petición va al servidor B y el servidor B le dice de inmediato, no has iniciado sesión, aunque acaba de hacerlo un segundo antes. Nada está roto, pero eso ocurre en cuanto ejecutas más de un servidor y no gestionas las sesiones correctamente. Déjame mostrarte por qué.

[07:27] Primero, ¿qué significa siquiera estar con la sesión iniciada? Cuando inicias sesión, el servidor comprueba tu contraseña y luego necesita recordar que eres tú en cada petición posterior para que no reescribas la contraseña en cada clic. Así que toma una nota. Esta persona es Bob y ha iniciado sesión. Te entrega un identificador de sesión, una cadena aleatoria que apunta a esa nota.

[07:52] Tu navegador envía ese identificador con cada petición. El servidor mira su nota y sabe que eres tú. La pregunta que importa es, ¿dónde guarda el servidor esa nota? Y por defecto la respuesta fácil es que la nota vive en la memoria del propio servidor.

[08:08] Intenta juntar eso con tres servidores. Inicia sesión, el balanceador manda esa petición al servidor uno, que el servidor uno toma la nota, Bob ha iniciado sesión en la memoria de un solo servidor. Pero un momento después haces clic en algo que es una nueva petición.

[08:25] El balanceador manda esta al servidor dos y el servidor dos nunca ha oído hablar de ti [música] porque la nota está en el servidor uno. Así que el servidor dos mira [música] en su propia memoria, no encuentra nada y hace lo único que puede. Te pide que vuelvas a iniciar sesión. Ese es el cierre de sesión aleatorio. No te están expulsando, sino enviando a un servidor distinto que no tiene tu nota. Y con tres servidores aproximadamente dos de cada tres clics caerán en un servidor

[08:55] que no te conoce. Esto es lo que quería decir al final del capítulo anterior cuando dije que los servidores no eran intercambiables. Esto es lo que no era intercambiable. Tu inicio de sesión estaba atrapado en un servidor concreto.

[09:09] Así que la solución es una regla. Los servidores no pueden recordar nada sobre ti entre peticiones. Ningún servidor guarda una nota en su propia memoria. [música] En su lugar la nota va a un sitio al que todos pueden llegar, un lugar aparte, a un lado, que todos los servidores pueden leer y escribir. Ahora da igual en qué servidor caigas.

[09:30] Inicia sesión, la nota se escribe en ese lugar compartido y en el siguiente clic, sea cual sea el servidor que elija el balanceador, ese servidor lee ese mismo lugar compartido, encuentra tu nota y sabe que eres tú. Un servidor que no guarda nada sobre ti en su propia memoria se llama sin estado. Ahora todos los servidores son intercambiables, exactamente como el balanceador necesitaba. Cualquier servidor puede atender cualquier petición porque ninguno guarda secretos que los demás no puedan ver. Y ese lugar

[10:01] compartido es muy a menudo un sistema de almacenamiento en memoria extremadamente rápido de leer lo que importa porque lo consultas en cada petición. Y quédate con ese nombre, porque va a volver más adelante para un trabajo completamente distinto.

[10:16] Y no olvidemos hablar del coste, porque ahora cada petición hace una cosa más. Va a ese almacén compartido a buscar tu nota antes de poder hacer nada. Eso es un poco de tiempo añadido a cada petición y una pieza más de infraestructura que tiene que estar viva, porque si ese almacén compartido se cae, nadie puede tener la sesión iniciada. Así que en este punto has hecho todos tus servidores intercambiables, que es lo que necesitabas, y lo has pagado con una consulta más en todas partes y una cosa

[10:46] [música] más que debe seguir viva. Ahora la parte frontal de nuestro sistema es sólida, balanceador de carga, varios servidores sin estado y todos quedan atendidos sin importar cuánta gente aparezca [música] y todos hablan con una sola base de datos. Así que probablemente adivines hacia dónde va esto.

[11:05] Y si la aplicación vuelve a ir lenta, pero esta vez al mirar todos los servidores están [música] sanos, ninguno está al límite, no hay consultas defectuosas y nada parece roto, lo cual desconcierta hasta que te fijas en lo que todos los servidores tienen en común. Hablan con la misma única base de datos. [música] Escalamos los servidores, pero nunca escalamos lo que hay detrás de ellos.

[11:28] Aquí se esconden dos problemas separados. Vamos uno a uno. El primer problema es que la base de datos solo habla con un número limitado de interlocutores a la vez y es un hecho sobre las bases de datos que mucha gente desconoce. Una base de datos solo mantiene un número limitado de conexiones abiertas simultáneas.

[11:46] [música] Cada conexión, cada línea abierta de un servidor a la base de datos le cuesta memoria y atención, así que hay un límite estricto de cuántas acepta a la vez. Y ese límite es más bajo de lo que imaginas, no millones, [música] a menudo solo unos pocos cientos en planes más pequeños, a veces incluso unas pocas docenas.

[12:06] Ahora cuenta cuántas cosas intentan conectarse. [música] Tres servidores y cada servidor abre varias conexiones para poder atender varias peticiones a la vez. Eso suma rápido. Y si usas un entorno sin servidor, como hacen muchos, empeora de una forma que sorprende.

[12:22] Cuando llega una petición y no hay ninguna instancia libre lista para ella, la plataforma arranca una copia nueva de tu función y cada copia nueva abre su propia conexión nueva. Así que un gran pico [música] significa cientos de copias apareciendo a la vez, cada una acaparando conexiones y llenan todas las plazas en segundos. Ah, y hay una señal que hará esto reconocible muy rápido. El síntoma no es lentitud, son errores. Tu aplicación de entradas iba perfectamente, pero salió a la venta un

[12:53] espectáculo popular, el tráfico se disparó y de repente recibes errores de conexión con la base de datos justo cuando [música] las cosas iban bien. Eso es esto. La solución a este problema se sitúa entre tus servidores y tu base de datos y es casi aburrido de lo sencilla que es la idea. En lugar de que cada servidor abra y cierre sus propias conexiones cuando le apetezca, mantienes un pequeño conjunto fijo de conexiones abiertas en todo momento y todas las comparte. Una petición necesita la base de datos, así

[13:25] que toma prestada una del conjunto, la usa y la devuelve de inmediato para que la siguiente petición la use. Esto se llama agrupación de conexiones. La base de datos solo ve ese pequeño número fijo de conexiones, sin importar cuántos servidores o peticiones tengas.

[13:41] Dejas de abrumarla con la pura cantidad de líneas abiertas. Hay herramientas comunes para esto y la mayoría de las bases de datos gestionadas ya incluyen un agrupador que puedes simplemente activar. Eso arregla los errores, pero no arregla el otro problema, que es el que la gente suele querer decir cuando dice que su base de datos no da abasto. Y ese es el segundo problema. La base de datos está genuinamente sin capacidad. Digamos que tienes las conexiones bajo control y la base de datos sigue al máximo. De verdad

[14:12] está haciendo más trabajo del que una máquina puede hacer. Antes de ponerte a hacer nada ingenioso, haz una comprobación rápida. Tus consultas habituales están usando índices de verdad. Si tu aplicación busca usuarios por correo en cada inicio de sesión y no hay un índice en la columna del correo, la base de datos recorre cada fila para encontrar a una persona cada vez. Ese índice que falta se parece exactamente a un problema de capacidad y no lo es. Así que añade el índice y la carga puede

[14:43] sencillamente desaparecer. Comprueba eso primero porque es gratis. Pero digamos que lo has comprobado y los índices están ahí. La base de datos simplemente no tiene espacio. [música] Ahora mira en qué está gastando todo su esfuerzo. Piensa en cómo usas de verdad una aplicación así.

[15:00] Cualquier aplicación social la abres y te desplazas. Lees publicación tras publicación y de vez en cuando quizá escribes algo, una publicación, un me gusta, un comentario. Así [música] que por cada cosa que escribes lees cientos de cosas. Y eso vale para casi cualquier aplicación.

[15:18] [música] Imagina cualquier plataforma de vídeos. Estás leyendo vídeos, te desplazas por el contenido que te sirven. Así que [música] las lecturas superan masivamente a las escrituras, lo que significa que la base de datos gasta casi todo su esfuerzo respondiendo a las lecturas. Si de algún modo pudieras quitarle la carga de lectura arreglarías casi todo el problema. La solución [música] es hacer copias de la base de datos. Una base de datos sigue siendo la original, la única en la que puedes escribir

[15:48] [música] y todo lo que añades o cambias va ahí. Llamémosla nuestra base de datos primaria [música] y luego haces copias de ella. Las copias son de solo lectura. No puedes escribir en ellas, pero puedes leerlas todo [música] el día. Y cada vez que algo cambia en la primaria esta envía ese cambio a las copias para que se mantengan al día. Esas copias se llaman réplicas de lectura. Ahora el trabajo está repartido. Las escrituras van a la primaria, las lecturas, [música] la inmensa mayoría de tu tráfico se

[16:18] reparten entre las réplicas. Cada máquina hace una fracción de lo que ahogaba a una sola. Y, de nuevo, hay que hablar del coste, porque no paramos de añadir rectángulos. Este tiene un coste distinto de los demás, porque no solo te cuesta dinero o una pieza móvil, sino que, en silencio, hace que tu aplicación sea un poco incorrecta. Aquí está el porqué. Cuando escribes algo en la primaria, tarda un momento, normalmente diminuto, pero no cero, en que ese cambio llegue a las copias. Imagina

[16:50] esto, publicas algo, esa escritura va a la primaria. De inmediato, tu aplicación carga tu muro y esa lectura va a una réplica, pero la réplica aún no ha recibido tu nueva publicación. Así que miras tu propio muro justo después de publicar y tu publicación no está. Refrescas y entonces aparece. Nada estaba roto. La copia simplemente iba medio segundo por detrás.

[17:16] Ese desfase tiene un nombre, retardo de replicación, y es el precio de las réplicas de lectura. Tus datos están ahora ligeramente desactualizados en las copias durante un instante a veces, lo cual [música] suele estar perfectamente bien. Que alguien vea una publicación medio segundo tarde no importa, pero a veces sí importa. Que tú veas tu propia publicación ausente parece algo roto.

[17:39] Así que para esos casos concretos, [música] las aplicaciones leen deliberadamente de la primaria en lugar de una réplica. Y esa es la verdadera lección aquí, la que vale la pena llevarse por encima de todo lo demás del vídeo. Acabas de hacer tu aplicación más rápida y ligeramente incorrecta a propósito. Y tú eliges qué partes pueden estar ligeramente incorrectas y cuáles no. Con eso, la base de datos está resuelta. Escrituras a la primaria, lecturas repartidas entre las réplicas,

[18:09] conexiones agrupadas. Pero algunas de esas lecturas siguen siendo caras. Hay un tipo concreto de pregunta que le hacemos a la base de datos una y otra vez, miles de veces, y obtenemos casi siempre la misma respuesta. Y calcular la misma respuesta miles de veces es sencillamente un desperdicio. Así que a continuación [música] dejamos de hacerlo.

[18:32] Piensa en el número de seguidores de un perfil. Para obtenerlo, la base de datos tiene que contar cada registro de seguidor de esa persona. Y si alguien tiene 2 millones de seguidores, eso es la base de datos contando 2 millones de filas para producir un número. Ese número está en su perfil, lo que significa que cada persona que abre ese perfil hace que la base de datos cuente los 2 millones de nuevo miles de veces por hora, el mismo recuento caro para un número que apenas se mueve. Eso es un

[19:01] desperdicio. Hacemos que la base de datos trabaje duro una y otra vez para obtener la respuesta que ya teníamos un segundo antes. Así que, en lugar de calcularlo cada vez, lo calculamos una vez y guardamos la respuesta en un sitio rápido, de modo que la siguiente persona que pregunte obtiene la respuesta guardada y nunca se toca la base de datos. [música] Esa respuesta guardada en un sitio rápido y cercano es una caché. El flujo es simple. Llega una petición pidiendo el número de seguidores. Primero

[19:33] comprobamos la caché. [música] ¿Está ya la respuesta ahí? Si sí, la devolvemos directamente y nunca nos acercamos a la base de datos. Si no, preguntamos a la base de datos, obtenemos el número y esto es lo importante. Lo ponemos en la caché de vuelta. Así la siguiente persona lo obtiene gratis. Y esto es rápido de una forma que la base de datos no puede, porque una caché mantiene sus datos en memoria en lugar de leerlos del disco. Por eso la respuesta vuelve en una fracción del tiempo.

[20:02] Y esto es muy a menudo ese mismo sistema de almacenamiento en memoria que mencioné cuando necesitábamos un lugar compartido para las sesiones de inicio de sesión. La misma pieza de tecnología haciendo un segundo trabajo, lo cual conviene notar, no has añadido un sistema nuevo entero a tu infraestructura. Lo que ya ejecutabas para las sesiones puede guardar tu caché también.

[20:26] ¿Cuál es el coste? Pues la caché tiene el coste más afilado de todo el vídeo. En el momento en que guardas una copia de una respuesta, esa copia puede quedar desactualizada. Alguien consigue un nuevo seguidor, así que el recuento real en la base de datos es ahora uno más alto, pero la caché sigue guardando el número antiguo.

[20:45] Así que todos los que abran ese perfil ven el recuento antiguo hasta que la caché se actualice o se descarte. Así que tu número de seguidores es ahora, a veces, un poco incorrecto. Y decidir cuándo descartar esa respuesta guardada para que no se quede incorrecta demasiado tiempo es de verdad uno de los problemas más difíciles de todo el campo. Hay un viejo chiste entre ingenieros que dice que las dos cosas más difíciles en informática son nombrar las cosas y saber cuándo limpiar la

[21:13] caché. Así que aquí está la verdadera habilidad, que no es realmente técnica. La caché intercambia corrección por velocidad a propósito. Y tienes que decidir qué partes de tu aplicación pueden estar un poco incorrectas durante un rato y cuáles [música] no. Un recuento de seguidores desactualizado en 30 segundos, nadie lo notará jamás y nadie sale perjudicado. Guárdalo con fuerza. Pero el saldo en la cuenta bancaria de alguien, eso nunca puede estar ni siquiera ligeramente desactualizado. Eso no lo guardas en

[21:43] caché jamás. Y quiero detenerme en esa decisión un segundo porque es el sentido entero de un vídeo como este. Decidir que un recuento de seguidores puede estar 30 segundos obsoleto, pero el saldo de una cuenta no puede estarlo ni un instante.

[21:58] Eso no es una decisión de programación. Una inteligencia artificial escribirá encantada ese código de caché por ti y lo escribirá bien, pero lo que no hará es tomar la mejor decisión porque esa decisión no va de código, va de tu producto, de tus usuarios [música] y de lo que aceptarán y no aceptarán.

[22:17] Necesita a alguien que entienda el sistema completo y a las personas que lo usan. Y esa es la parte del trabajo que no va a ninguna parte porque puedes delegar el tecleo, pero no la toma de decisiones. Con eso en mente, las lecturas caras están ahora en caché. La base de datos hace mucho menos trabajo, lo que significa que nuestra aplicación es rápida de principio a fin.

[22:39] Pero hay un tipo más de lentitud [música] y es extraño porque no tiene nada que ver con leer los datos. Piensa en un flujo típico de registro. Un usuario rellena el formulario, pulsa registrarse [música] y espera que la cuenta se cree de inmediato. Pero crear la cuenta podría no ser lo único que tu servidor tiene que hacer. Quizá también necesites enviar un correo de verificación, registrar el alta en tus estadísticas o preparar algunos datos iniciales para esa nueva cuenta. Y si haces todo eso

[23:09] antes de enviar la respuesta, el usuario se queda ahí mirando una rueda de carga esperando a que todo termine. Y eso es más que lento, [música] porque enviar ese correo de verificación no es algo que tu servidor haga por sí mismo. Le pasa el correo a un servicio externo y espera a que ese servicio diga enviado.

[23:28] [música] Así que tu registro es ahora solo tan rápido como ese servicio de correo. Si está teniendo un mal día, tu registro va lento hoy. Y si está caído, tu registro falla también. La cuenta no se pudo crear porque el correo de verificación no se pudo enviar. Has atado el que alguien pueda siquiera unirse a tu aplicación al que cierta empresa de correo externa esté funcionando justo ahora. [música] Y eso es algo malo que atar.

[23:54] Y ya lo has visto, solo que no lo sabías. Cuando te registras en algo y el correo de verificación tarda unos segundos en llegar o subes un vídeo y dice procesando y te deja seguir, eso es exactamente esto. El retraso no es la aplicación yendo lenta, es la aplicación construida correctamente.

[24:13] La idea es esta, crear la cuenta es la única parte que el usuario necesita de verdad que ocurra antes de responderle. El correo de verificación no tiene que ocurrir en ese mismo instante, solo tiene que ocurrir pronto, así que divides el trabajo. En el instante en que la cuenta crea, respondes al usuario. Listo, estás registrado. Y el correo no lo envías en ese momento.

[24:35] Escribes una nota que dice, enviar un correo de verificación a esta persona y la deja en una lista. [música] Esa lista se llama cola. Es simplemente una fila de tareas esperando a hacerse en orden. Y luego algo separado, no el servidor que atiende la petición del usuario, sino un proceso distinto cuyo único trabajo es recorrer esa lista. Toma esa nota y envía el correo un momento después, mientras el usuario ya está mirando feliz su página de inicio con la sesión iniciada. [música] Y ese proceso

[25:05] separado se llama trabajador. El trabajo del servidor es responder al usuario rápido y dejar el trabajo lento en la cola. Y el trabajo del trabajador es ir masticando ese trabajo en silencio en segundo plano. Y no son solo correos de verificación, restablecimientos de contraseña, notificaciones, recibos, cualquier tarea lenta en la que no quieras que un usuario espere. Todo va a la misma cola y el trabajador lo gestiona en segundo plano. En muchas aplicaciones esto se apoya en ese mismo sistema de

[25:37] almacenamiento en memoria que ya tienes para las sesiones y la caché. Tres trabajos ahora en una sola pieza de tecnología. Pero bueno, esa es toda la ganancia. El registro se vuelve instantáneo y ya no le importa siquiera si el servicio de correo está en pie. Si está caído la nota simplemente espera en la cola hasta que vuelva. La cuenta ya se creó de todos modos. Y no olvidemos hablar del coste. Primero el trabajo ocurre ahora más tarde, que es exactamente por lo que ese correo de verificación tarda unos

[26:09] segundos en aparecer. Para un correo de verificación a nadie le importa. Solo tienes que saber que hecho ahora significa hemos prometido hacer esto y no esto está terminado. Segundo, tienes dos cosas más que mantener en marcha, tanto la cola como el trabajador. Y tercero, las tareas pueden fallar. El trabajador intenta enviar el correo y el servicio de correo está caído, así que tienes que planificarlo. Vuelve a intentarlo en un minuto y si sigue fallando, ponlo en algún sitio para que

[26:40] una persona pueda revisarlo luego. Una tarea que dejas en una cola y que nunca revisas es una tarea que en silencio no estás haciendo. Lo que hemos hecho hasta aquí es arquitectura real y seria. La mayoría de las aplicaciones nunca necesitan más que lo que tenemos ahora mismo en pantalla, [música] pero hay una última cosa que puede romperse y no es como las demás. Todo lo que arreglamos hoy iba de atender a más gente. [música] Esta última no va de gente, va de cuántos datos tienes.

[27:12] ¿Recuerdas esas réplicas de lectura? Cada una es una copia completa de tu base de datos, lo que en silencio asume que tu base de datos entera cabe en una sola máquina para empezar. Pero, ¿y si no cabe? ¿Y si los datos simplemente siguen creciendo hasta ser demasiado grandes para que una sola máquina los contenga? Una copia no puede salvarte ahora porque no hay máquina lo bastante grande en la que copiarla. Así que haces una cosa que hemos evitado todo el vídeo. Dejas de [música] tener todos tus

[27:41] datos en un sitio y los repartes entre varias bases de datos y cada una guarda solo una parte. Pero eso plantea de inmediato un problema. Si tus datos están repartidos entre, digamos, tres bases de datos, ¿cómo sabe tu aplicación en cuál meter un usuario nuevo? Y después, ¿cómo sabe en cuál encontrarlo de nuevo? No puedes dejarlos en cualquier sitio. Si guardas un usuario al azar, tendrías que buscar en las tres bases de datos cada vez para encontrarlo y eso es más lento que la

[28:10] única base de datos con la que empezaste. Así que, obviamente, necesitas una regla. Eliges una columna, algo que todo registro tenga. Para los usuarios, [música] la elección obvia es el identificador de usuario y usas ese identificador para decidir en qué base de datos va. La regla más simple posible es el identificador de usuario [música] y dividirlo por el número de de datos que tienes. Si tienes tres, divides por tres y el resto te dice dónde va. Si el resto es cero, a la base de datos uno, si es

[28:43] uno, a la dos, si es dos, a la tres. Ahora tus usuarios están repartidos de forma uniforme por las tres. Cada una guarda aproximadamente un tercio, así que ninguna máquina tiene que guardar a todo el mundo. [música] Una cosa rápida, si tus identificadores tienen letras, primero los pasas por una función que convierte cualquier valor en un número, [música] el mismo número cada vez, y luego se aplica exactamente la misma regla de dividir y mirar el resto.

[29:10] Y cada una de esas bases de datos se llama fragmento y todo este enfoque, dividir tu base de datos en fragmentos según una regla, se llama fragmentación. Y aquí está la parte que de verdad lo hace encajar, la que mientras investigaba esto vi que la mayoría de los que enseñan se saltan.

[29:28] Mira lo que pasa cuando llega una petición para el usuario número cinco. La aplicación ejecuta exactamente la misma regla, cinco dividido entre tres, resto dos, que es la base de datos tres. Va directa allí, no busca, [música] no comprueba las otras dos, simplemente lo sabe. Y ese es todo el truco, porque la regla es consistente. [música] El mismo usuario siempre cae en el mismo fragmento, así que siempre sabes exactamente dónde mirar. Escribir datos y encontrarlos de nuevo usan la misma

[29:59] regla, un fragmento cada vez. Así que, en esencia, has dividido tu tiempo de búsqueda, de lectura y de escritura por tres. Pero con esta cosa estupenda que acabas de implementar, hay algo que has renunciado y es un coste real. Mientras una pregunta sea sobre un usuario, va bien. Un fragmento lo obtienes rápido, pero algunas preguntas no son sobre un usuario. Digamos que quieres contar cuántos usuarios tienes en total. No hay un único fragmento que sepa la respuesta porque ningún fragmento tiene a todos

[30:31] los usuarios. Así que tienes que preguntar a los tres, obtener sus recuentos por separado y luego tú mismo. Una pregunta que antes era una consulta simple es ahora tres consultas y algo de montaje adicional. Y empeora cuanto más fragmentos tienes.

[30:47] Diez fragmentos significa preguntar a diez bases de datos y combinar diez respuestas. Cualquier cosa que tenga que mirar a través de todos tus datos, contar, ordenar todo por fecha, buscar a todo el mundo, tiene ahora que tocar cada fragmento. Y esto se llama consultas entre fragmentos y evitarlas es todo el arte de la fragmentación. Es por eso que elegir esa regla, qué columna usas para dividir, es una decisión tan importante. Elige bien y casi toda consulta se queda en un fragmento. Pero si eliges mal, todas tus

[31:20] consultas habituales tendrán que tocar cada máquina y habrás construido algo más lento que con lo que empezaste. Ah, y una cosa más. Una vez que tus datos están divididos así y todo tu código está escrito en torno a ello, volver atrás es su propia migración dolorosa. Así que esta es la herramienta más potente de todo el video y aún así la última a la que recurrir con mucha diferencia. Los equipos la posponen durante años y hacen bien. La haces solo cuando los datos sencillamente no caben

[31:50] de ninguna otra forma. Esa es la fragmentación como idea. Hacerla de verdad en una aplicación en vivo con millones de personas ya usándola es un nivel de dificultad distinto. Solo la migración, mover todos esos datos a los fragmentos sin tirar la aplicación abajo, es una historia seria.

[32:09] Hay empresas que lo han hecho pasando de una base de datos a una fragmentada con más de 200.000 millones de filas mientras todo el producto seguía vivo. Veamos lo que hemos construido. Empezamos con un servidor y una base de datos. Apareció más gente de la que un servidor podía manejar, así que añadimos servidores y un balanceador de carga delante de ellos. [música] Los servidores no podían recordar quién había iniciado sesión, así que movimos las sesiones a un almacén compartido.

[32:37] Todos golpeaban una sola base de así que agrupamos las conexiones y repartimos las lecturas entre las réplicas. Las mismas respuestas caras se calculaban una y otra vez, así que las pusimos en caché y el trabajo lento hacía esperar a los usuarios, así que lo movimos a una cola para que un trabajador lo gestionara en segundo plano. Eso es un sistema real y es genuinamente cómo se construye un número enorme de aplicaciones y la inteligencia artificial puede construir cada una de

[33:06] estas cajas por ti, pero saber cuáles necesitas de verdad y qué cuestan es la parte que no puede. Ese es el trabajo ahora y ese trabajo, colaborar con la inteligencia artificial en sistemas reales, tomar estas decisiones, llevar el flujo completo desde la definición hasta la arquitectura y la revisión, eso es exactamente lo difícil.

[33:27] Y si estás aquí preparándote para entrevistas de trabajo, cualquiera puede nombrar estas cosas, [música] pero quien consigue el puesto es quien dice por qué elegiría una sobre otra y qué cuesta. Eso es el diseño de sistemas, no las cajas, sino el orden y los compromisos que hacemos.

[33:44] Este ha sido un tipo de video nuevo, así que si te gustaría ver más videos sobre diseño de sistemas, dímelo en los comentarios. Es todo por este y nos vemos en el próximo. Que tengas un día estupendo. capricious
