# Tras 273 días con mi propio servidor en casa, he cancelado todo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=YHvekRdVMLI)
- **Canal**: PepoTech
- **Publicado**: 2026-11-17
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:19

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Te han vendido que montar un servidor en casa es la jugada maestra definitiva, que mandas a paseo a Google Drive, cancelas Netflix, dejas de pagarle a Apple por almacenamiento y te conviertes en el [ __ ] amo de tu vida en internet.

[00:13] Yo me lo creí. Hace dos meses desenchufé mis datos de la nube, monté mi propio servidor en este mismo cuarto y me creí la fucking bestia del internet. Pero hoy te voy a contar la [ __ ] de realidad que nadie te cuenta en un vídeo de YouTube porque en el título suena fatal.

[00:27] Da igual si el equipo cuesta 500 euros o lo sacaste de la basura. No estás ahorrando dinero o al menos no tanto como piensas. La pregunta es si estás dispuesto a pagar todo lo que viene detrás. El primer error en el que cae absolutamente todo el mundo es el síndrome de Diógenes en Docker y pasa esto. Descubres los repositorios de proyectos de código abierto, ves que hay más de 1500 aplicaciones gratuitas y te crees el director de sistemas de Silicon Valley. En una sola tarde te instalas la

[00:56] alternativa Spotify, la alternativa Google Fotos, gestores de notas, tres paneles de control distintos y hasta un rastreador de hábitos y calendario diferente. Mira tú mismo el resultado. 32 contenedores corriendo, la memoria RAM pidiendo auxilio y 28 servicios que no has vuelto a abrir desde el día que los configuraste. Cada contenedor que levantas es una puerta trasera potencial, una base de datos que puede corromperse y una aplicación que vas a tener que actualizar a mano de por vida.

[01:25] La regla que al menos me he puesto yo es esta. Si no usas una herramienta al menos dos o tres veces por semana, se va. Montar una infraestructura entera para consultar dos archivos PDF al mes es hacer el canelo. Y cuando decides qué instalar viene el segundo bofetón, la batalla entre la comodidad y el control.

[01:44] Coge el streaming de películas y series. La opción obvia que todo el mundo recomienda es Plex. Sí, eh el de la velada no, este otro. Funciona bien, se ve bonito, pero poco a poco se ha convertido en exactamente en aquello que estabas huyendo. Te obliga a crearte una cuenta en sus servicios centrales, recopila telemetría de lo que ves y te cobra si quieres reproducir en el móvil o exprimir la transcodificación gráfica.

[02:06] La alternativa de verdad es Jellyfin, con cero telemetría, código abierto de verdad, tus datos no salen de tu casa, pero Jellyfin no te pasa una. O te peleas tú a mano con los permisos de las carpetas en Linux y configuras la aceleración por hardware con Intel Quick Sync o en cuanto intentes reproducir un archivo pesado en 4K fuera de casa, el procesador se va a poner a freír huevos.

[02:30] Eso que acabas de ver era tu procesador pidiendo clemencia, porque nadie le explicó qué es lo que tenía que hacer para no quemarse como un guiri en la playa. Y hablando de salir de casa, el tercer error puede costarte un disgusto muy serio, abrir puertos en el router como si estuviéramos en el año 2004. Si se te ocurre abrir puertos como el 80 o el 443, que son muy típicos, para poder acceder a tus archivos desde la calle, te garantizo que en menos de 15 minutos vas a tener a miles de bots con IA

[02:59] intentando robarte y tirarte todo tu internet. Recuerda, si no sabes qué estás haciendo en el router, mejor no lo toques. Para hacerlo bien tienes dos caminos. El camino sensato para el 99% de la gente es instalar una red privada virtual en malla como Tailscale basada en WireGuard. No abres ni un solo puerto, tus dispositivos se ven entre sí como si estuvieran en el mismo salón y tardas 3 minutos de reloj en configurarlo. El camino avanzado sería ya montarlo tú mismo con tus propios

[03:26] túneles, con tu propio proxy inverso con certificado SSL. Eh, sí, puede sonar muy complicado y de hecho, para la mayoría de gente lo es. Pero si vas por ahí, más te vale saber cómo configurarlo todo, porque no es tan fácil y porque en tu servidor ya no hay un equipo de seguridad de Google vigilando. Estás tú ante el peligro.

[03:52] Lo que nos lleva a la cuarta lección, la que vas a aprender cuando sea demasiado tarde o ahora que te lo estoy contando yo. Lo he llamado la amnesia del home lover. Imagínate esto, son las 2 de la mañana de un martes y estás intentando que una aplicación arranque, encuentras un comando suelto en un hilo de Reddit o en un foro de Linux, modificas dos líneas en el archivo de configuración sin entender del todo qué hacen, la aplicación milagrosamente funciona y te vas a dormir sintiéndote un genio. 6

[04:22] meses después, el contenedor se actualiza automáticamente, se rompe todo y tu yo del futuro no tiene la más remota idea de qué tocó aquella noche. Esta, si tienes un servidor en casa, seguro que te ha pasado. Dime en comentarios lo más loco que te ha pasado. A raíz de ahí, entiendes que tienes que al menos escribir qué es lo que pasó y cómo solucionarlo en algún archivo, porque si no, te estás poniendo una bomba de relojería en tu propio asiento. Y hablando de bombas, vamos a

[04:48] destruir el mayor mito del home labing, el famoso "tengo mis datos seguros porque tengo un sistema con RAID". Y es mentira, aunque duela. Un RAID no es una copia de seguridad como tal, sino que solo te da continuidad de lo que ya tienes en el ordenador, pero solo te salva si algún disco muere. Escucha esto con atención. Si compraste los dos discos duros a la vez en la misma tienda, pertenecen al mismo lote de fabricación, tienen exactamente las mismas horas de rodaje y la misma fatiga

[05:17] de materiales. Cuando el primer disco falla y metes uno nuevo, entra en una reconstrucción forzada que pone los discos al límite durante 12 horas seguidas. La probabilidad de que el segundo disco reviente por estrés en mitad del proceso es gigantesca. Y lo que es peor, si te equivocas con un comando en la terminal o si entra un virus, el RAID va a replicar tu [ __ ] en ambos discos a la vez.

[05:42] Ese chasquido es el sonido de años de fotos familiares y documentos que han sido perdidos para siempre. Así que para solucionarlo existe la regla del 3-2-1. Tres copias de tus datos importantes en dos soportes físicos distintos y al menos una de ellas fuera de tu casa física. Puede ser un disco duro externo cifrado que dejas en casa de tus padres o una copia fría en la nube. Todo lo que no sea eso es jugar a la ruleta rusa. Y nos queda el coste del que nadie te avisa, el factor familia y la factura de

[06:12] la luz. Cuando Netflix o Spotify tiene una caída general, la culpa es de una multinacional multimillonaria. Le echas la culpa al perro Sánchez y al Donald Trump y sigues con lo tuyo. Pero cuando tu servidor en casa se cuelga un viernes por la noche porque a tu proveedor le ha dado por cambiar tu IP pública o porque simplemente se congeló un servicio, el culpable en esa casa eres tú. Tu pareja te mira, la tele no funciona y tú estás peleándote con la consola de comandos mientras todo el mundo se pregunta por

[06:39] qué narices no pagan la suscripción oficial y se dejan de experimentos. Y esto viene de primera mano, de verdad. A eso súmale el hardware. La gente dice, "Aprovecha esa torre vieja que tienes en el trastero." Una torre con un procesador antiguo de hace 10 años y una fuente genérica puede tragarse fácilmente 60 o 70 W continuos en reposo. Haz la cuenta, a 24 horas al día los 365 días al año, ese trasto viejo te está costando entre 70 y 90 euros al año solamente en la factura de la luz. Te

[07:12] estás gastando en electricidad el doble de lo que te pretendías ahorrar en suscripciones. Entonces, ¿cómo comienzas en el Home Labing? Yo me iría olvidando de gastarme 1000 dólares en un armario de servidores o en cajas de almacenamiento profesionales. Lo ideal para arrancar en este mundillo es un mini PC reacondicionado de oficina con un procesador Intel de octava generación o superior, con eso es suficiente. Te cuesta entre 100 y 150 euros de segunda mano, perfectamente, incluso menos. En

[07:40] un rastro o quizás lo tengas tirado por casa. Así consumiría entre 10 y 15 W en reposo y su gráfica integrada decodifica cualquier vídeo en 4K sin despeinarse. Le metes un disco de estado sólido para el sistema, un disco duro externo para los datos y tienes un laboratorio indestruct, y tienes un laboratorio indestruct, y tienes un laboratorio indestruct, y tienes un laboratorio indestructible para comenzar a aprender.

[08:03] Entonces, ¿merece la pena el homelabbing o autoalojamiento? Después de 9 meses de haber estado toqueteándolo y viviendo con él todos los días, si tu único motivo es ahorrar dinero, rotundamente no. Te puedes quedar en la nube de Google o de Apple o en la que te venga mejor, pagar las cuotas mensuales si son 2 teras o algo así lo que necesitas, y compra tu tranquilidad mental, porque tu tiempo vale bastante más que 10 euros.

[08:30] Pero si tu motivo es la soberanía, si te revienta saber que tus fotos familiares se usan para entrenar algoritmos ajenos, que una empresa puede borrar tus archivos cuando le dé la gana, o que una plataforma puede retirar tu película favorita de la noche a la mañana porque caducó su licencia, entonces este es el mejor camino que debes tomar ahora.

[08:50] Ahora ya conoces las reglas del juego, la decisión de meterte hasta el fondo de la madriguera es únicamente tuya. En este vídeo te explico cómo ha sido mi experiencia después de 180 días usando bloqueador de anuncios en mi casa para todos los dispositivos instalando una sola cosa en un ordenador y buenas noches.

[09:10] Ey, ¿haría super feliz llegar en algún momento a los 100.000 suscriptores? Sé que aún estamos bastante lejos, pero tú puedes hacer la diferencia. ¿Hm?
