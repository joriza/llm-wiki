# 10 herramientas de la terminal que de verdad te sirven en Linux

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=LbcyTbM38zQ)
- **Canal**: xeyt
- **Publicado**: 2026-11-15
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:40

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Una línea en tu terminal y ya tienes el clima sin instalar absolutamente nada. Y esta es la menos útil de las 10 herramientas que te voy a enseñar hoy. Las otras nueve te van a evitar perder archivos, te van a ahorrar tiempo y te van a hacer la vida mucho más fácil en Linux. Si ya viste mis videos anteriores, sabes que ya te mostré 30 herramientas para la terminal, desde Ranger, FZF y Sozide hasta Cmatrix, Toilet y Pokémon Color Scripts y muchos de ustedes me pidieron una cuarta parte.

[00:32] Pero esta vez quise hacer algo totalmente diferente. Aquí no vamos a ver herramientas solo para que tu terminal se vea bonita. Son herramientas que de verdad vas a usar en tu día a día, sobre todo si vienes de Windows y todavía le tienes un poco de miedo a la terminal. Y no, no hace falta ser experto en todo esto. Todas se instalan con un solo comando y te voy a decir cómo hacerlo en Arch, en Ubuntu y en Fedora. Así que abre tu terminal y comencemos.

[01:00] Vamos a empezar con la que ya viste al inicio, wttr.in. No sé cómo se pronuncia. Lo curioso de esta es que no es un programa que tengas que instalar, es un servicio que responde directamente a tu terminal. Pero, ¿qué es lo que hace? Te muestra el clima de tu ciudad con dibujos hechos con texto. El sol, las nubes, la lluvia, la temperatura, el viento y el pronóstico de los próximos tres días. Y, ¿cómo lo uso? Solamente escribes curl wttr.in, una diagonal y el nombre de tu ciudad,

[01:36] le das enter y listo, ahí lo tienes. Y si quieres algo más corto, le agregas al final format igual a tres y te da el clima en una sola línea. Perfecto para ponerlo en tu fast fetch o en tu barra. Ahora, ¿cómo lo instalo?

[01:53] Pues en realidad esta herramienta no se instala, solo necesitas curl, que ya viene prácticamente en cualquier distro. Y si algo tú no la tienes, en Arch es con sudo pacman - S curl. En Debian es con sudo apt-get install curl. Y en Fedora es con sudo dnf install curl.

[02:10] Y listo, solamente tienes que poner curl separado wttr.in, una diagonal y el nombre de tu ciudad. Y ojo, si no pones una ciudad lo detecta por tu conexión, así que si tú no llegas a poner una diagonal y le das enter, va a tomar tu dirección que tienes o la más cercana a donde te encuentres.

[02:32] En pocas palabras, el clima en tu terminal con cero instalación. El segundo es bat. [música] Es una herramienta que mejora algo que usamos todos los días y es el clásico cat, que te muestra lo que hay dentro de un archivo. Y funciona, pero seamos honestos, es bastante básico.

[02:51] Todo te sale en blanco, sin números en línea y si el archivo es largo te pierdes. Y ahí es donde entra bat, que es básicamente la versión mejorada de cat. Te muestra archivos con colores, con resaltado de sintaxis, con número de línea e incluso te marca qué líneas cambiaron si estás en una carpeta con git.

[03:11] ¿Y en qué caso te puede servir? Por ejemplo, cuando estás revisando un archivo de configuración como tu .bashrc, tu hyperland.config o .lua o cualquier otro script, con cat es un bloque de texto. Con bat sabes exactamente dónde empieza y dónde termina cada cosa.

[03:29] Y ¿cómo lo instalo? En Arch es con sudo pacman - S bat. En Fedora es con sudo dnf install bat. Y en Debian y derivados es con sudo apt-get install bat. Pero ojo con esto también, en Ubuntu el comando no se llama bat, se llama batcat. Así que si escribes bat y no funciona es por eso. Ahora, para usarlo es igual de fácil. Solamente escribes bat y el nombre del archivo y listo.

[03:55] Cuando le des enter aparecerá todo el archivo con cuántas líneas tiene, resaltado, colores y todo esto desde la terminal. El siguiente, fd, y sirve para buscar archivos. En Linux existe un comando clásico llamado find y es muy poderoso, pero la verdad es que su sintaxis es bastante rara. Tienes que poner find, el punto, guion name, comillas, asteriscos y si se te olvida algo no funciona. Con fd es mucho más sencillo. Escribes fd y lo que estás buscando y ya. Además, por defecto

[04:31] ignora los archivos ocultos y las carpetas que normalmente no te interesan, así que los resultados te salen mucho más limpios y mucho más rápidos. Este comando te puede llegar a servir cuando descargas algún PDF desde hace días y no sabes en qué carpeta quedó. Solamente escribes fd y parte del nombre y lo encuentras. Y si quieres buscar solo un tipo de archivo le pones guion e y la extensión. Por ejemplo, fd guion e pdf y te muestra todos los PDFs de esa carpeta.

[05:02] Pero, ¿cómo lo instalo? Es muy sencillo. En Arch es con sudo pacman menos s fd. En Debian y derivados es con sudo apt install fd guion find. Y ojo, igual que bat, en Ubuntu el comando también puede cambiar el nombre, se llama fd find. Y en Fedora es con sudo dnf install fd guion find.

[05:23] Y ahora vamos con la que para mí es la más importante de todo este video. Trash. Mira, en Windows cuando borras algo se va a la papelera de reciclaje. Y si te equivocaste vas a la papelera y lo recuperas. Pero en la terminal de Linux cuando usas el comando rm el archivo no se va a ninguna papelera, se borra. Así sin más.

[05:42] Y si te equivocaste de archivo pues ya ni modo. Y esto le pasa a todo el mundo, sobre todo cuando estás empezando. Trash-cli soluciona justamente eso. En lugar de usar rm usas trash guion put y el nombre del archivo. Y en lugar de borrarse se va a la papelera. Y lo mejor es que es la misma papelera que ves en tu explorador de archivos. Así que lo puedes recuperar desde ahí o desde la misma terminal.

[06:07] Ahora, ¿cómo lo puedes recuperar? Con trash-list ves todo lo que hay en la papelera y con trash-restore eliges qué archivo quieres regresar y cuando ya estés seguro con trash-empty la vacías. Ahora, para instalarlo también es muy fácil, solamente le pones sudo pacman -S trash-cli. En Ubuntu, Debian y derivados es con sudo apt install trash-cli y en Fedora es con sudo dnf install trash-cli.

[06:35] Y no te digo que ya no uses rm, pero simplemente esta herramienta es una de las mejores para personas que van iniciando. El número cinco es micro y este es para todos los que alguna vez abrieron vim y no supieron ni cómo salir o cuando pusieron nano y se perdieron, así que no te preocupes porque micro es un editor de texto para la terminal, pero con una diferencia enorme. Usa los mismos atajos que ya conoces en Windows, control S para guardar, control C y control V para copiar y pegar y control Z para deshacer

[07:08] y control Q para salir, así tal cual. Y además puedes usar el mouse para seleccionar texto, moverte por algún archivo, tiene colores para cada tipo de archivo y te muestra abajo los atajos por si se te olvida alguno. Este programa te puede servir cuando un tutorial te dice edita este archivo de configuración y no quieres abrir nvim, vim ni nano. Solamente abres micro, editas, guardas y listo.

[07:34] Para instalarlo es igual que todos los demás. En Arch y derivados sudo pacman -S micro, en Debian y derivados sudo apt install micro y en Fedora y derivados sudo dnf install micro. Y para usarlo es simplemente muy sencillo, pones micro, separado y el nombre del archivo y listo, ya solamente queda editar el archivo, dale control S y guardar.

[07:56] Ahora vamos con atuin. Seguro te ha pasado esto, hace una semana usaste un comando larguísimo que te funcionó perfecto y hoy lo necesitas otra vez, pero ya no te acuerdas cómo era. Normalmente presionarías la flecha hacia arriba una y otra vez o usarías Control R, pero el historial normal de la terminal es bastante limitado.

[08:16] Antuin reemplaza ese historial por uno mucho más completo. Guarda cada comando en una pequeña base de datos junto con la fecha, la carpeta donde lo usaste y si funcionó o falló. Y cuando presionas Control R te abre un buscador donde vas escribiendo y te va filtrando los comandos al instante.

[08:35] Algo que me parece bastante bueno es que si quieres puedes sincronizar tu historial entre varias computadoras, pero eso es opcional. Si no lo quieres funciona perfecto solamente en tu equipo, sin cuenta y sin nada. Y para instalarlo es igual que los demás, en Arch es con sudo pacman -S antuin.

[08:52] Y en Ubuntu y Fedora lo más sencillo es con el script oficial de su página que te voy a dejar en la descripción. Y después de instalarlo tienes que agregar una línea a tu .bashrc o a tu .zshrc, dependiendo qué shell estés usando, y reiniciar la terminal.

[09:08] Y listo, ya podrás tener más memoria en tu historial de comandos. El siguiente es Croc y sirve para algo que todos hemos tenido que hacer alguna vez, pasar un archivo de una computadora a otra. Normalmente buscas una USB, lo subes a Google Drive o te lo mandas por WhatsApp a ti mismo.

[09:28] O ya si quieres hacerlo de mejor manera usas localsend, pero con Croc no necesitas nada de eso. ¿Cómo funciona? En la computadora que tienes el archivo escribes croc send y el nombre del archivo. Croc te da un código en unas cuanta palabras. Luego en la otra computadora escribes croc y ese código y el archivo se empieza a transferir directamente y además va cifrado.

[09:51] Y ahora, ¿en qué casos te puede servir? Eh, si tienes alguna laptop y una PC y quieres pasarle un archivo o en dado caso de que tengas un archivo pesado y quieras pasárselo a un amigo, no lo vas a tener que subir a ningún lado, solamente escribes croc y listo.

[10:06] Y lo mejor es que Croc también existe para Windows y para Mac, así que aunque la otra persona no use Linux, también funciona. ¿Y cómo lo instalo? En Arch es con sudo pacman -S crock. En Ubuntu y Fedora con el script oficial que viene en su GitHub, que también te lo dejo en la descripción. El siguiente es ouch.

[10:24] Y aunque el nombre suene algo que te dolió, esta herramienta viene a quitar un dolor de cabeza. En Windows cuando tienes un zip, le das clic derecho y extraer aquí, pero en la terminal para un tar.gz tienes que recordar tar separado -xzvf.

[10:42] Para un zip usas un zip y así con distintos comandos, pero obviamente no te vas a acordar de todo eso. Ouch soluciona eso con dos comandos. Para descomprimir escribes ouch descompress y el archivo y detecta solo qué formato es. Y para comprimir escribes ouch compress lo que quieres comprimir y el nombre del archivo final. Si le pones .zip te hace un .zip, si le pones un .tar te hace un .tar, así de simple.

[11:11] ¿En qué caso te puede servir? Cuando descargas un programa o un tema que viene comprimido o cuando quieres hacer un respaldo rápido de una carpeta para mandarla a alguien más. Para instalarlo es igual de fácil. En Arch y derivados es con sudo pacman -S ouch. En Ubuntu y Fedora puedes descargar el paquete desde su GitHub o instalarlo con cargo, que es el gestor de paquete de Rust. Primero instalas cargo con sudo apt install cargo o sudo dnf install cargo y luego escribes cargo

[11:39] install ouch y listo, ya puedes comprimir y descomprimir. EnvyTop. Esto es más que nada para los gamers y para los que editan video. En el primer video te enseñé VTop, que te muestra el uso de la CPU y tu RAM y tus discos, pero si juegas o editas videos, lo que más te importa es tu tarjeta gráfica y ahí es donde entra EnvyTop. Te muestra en tiempo real cuánto de está usando de tu GPU, cuánta memoria de video está ocupando, la temperatura y qué programa es el que estás usando. Esto te puede

[12:10] servir si en un juego te va lento y quieres si tu gráfica está al 100% o si se está calentando demasiado. O si estás exportando un video y quieres ver si de verdad te está usando la GPU. Y ojo, aunque se llame Nvtop, no es solo para Nvidia, también funciona para AMD e Intel. Y para instalarlo igual es muy sencillo.

[12:31] En Arch es con sudo pacman -S nvtop. En Debian, Ubuntu y derivados es con sudo apt install nvtop y en Fedora es con sudo dnf install nvtop. Y listo, ya podrás administrar tu tarjeta gráfica. Y llegamos a la última y a la que más tiempo te voy a ahorrar.

[12:49] Topgrade. En Linux actualizar el sistema a veces no es solo un comando. Si usas Arch actualizas con pacman, luego el AUR con yay o paru. Luego tus aplicaciones de flatpak. Y si tienes otras cosas también esas. Y en Ubuntu y Fedora es lo mismo, apt o dnf, luego flatpak o luego snap.

[13:10] Topgrade hace todo eso por ti. Detecta qué tienes instalado y lo actualiza todo uno por uno con un solo comando. Y al final te da un resumen de qué se actualizó y qué falló. Y tranquilo, no hace nada que tú no quieras. Cuando necesita permisos te pide tu contraseña y te va mostrando todo lo que está haciendo. Para instalarlo es sencillo.

[13:32] En Arch lamentablemente no están los repositorios oficiales, así que lo tienes que instalar desde AUR, pero es igual de simple con paru o con yay -S topgrade. En Ubuntu y Fedora igual que AUR lo puedes instalar con cargo, con cargo install topgrade. Y para usarlo solamente escribes topgrade y le das enter. Y listo, toda tu PC se empezará a actualizar.

[13:55] Y así llegamos al final de esta cuarta parte. En pocas palabras tienes herramientas para ver el clima, para leer archivos, para buscarlos, para no perderte y para editar sin miedo. Y tranquilo, no tienes que instalar las 10 que te estoy enseñando. Si vienes de Windows empieza con trash-cli y con micro que son las que más te van a salvar principio y poco a poco vas probando las demás, porque recuerda, la terminal no es complicada, solo hace lo que tú dices. Ahora dime, ¿cuál vas a

[14:24] instalar primero? ¿O conoces alguna que debería estar en una quinta parte? Déjamelo en los comentarios y si te sirvió dale like, suscríbete y compártelo con alguien que está empezando en Linux. Y sin nada más que decir, nos vemos en un próximo video.

[14:39] Adiós.
