# Home Servers en 2025: Todo lo que tenes que saber para comenzar!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=hwaho9SAMco)
- **Canal**: Pocho Labs
- **Publicado**: 2025-04-28
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:07

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hoy vamos a cambiar de tema, vamos a dejar de lado un rato la domótica y la impresión 3D para hablar de home servers, qué son, por qué está bueno tener uno y contaros de paso mi experiencia, desde cómo arranqué armando la computadora hasta el sistema operativo que utilizo hoy en día que se llama unraid. Quédate que arrancamos.

[00:28] Como concepto base vamos a hablar de lo que es un home server, simplemente es una compu que tenemos en nuestra casa conectada y le vamos a dar un uso dedicado para distintas funciones. En mi opinión hay muchas ventajas por qué tener un servidor hogareño, pero las principales son: Primero, el almacenamiento centralizado de nuestra información, es decir, nuestras fotos, nuestros documentos, nuestros vídeos, todo en un solo lugar. Si se corta internet, al tenerlo en nuestra red

[00:53] vamos a poder seguir accediendo a nuestra info y además dejamos de utilizar servicios de terceros que a veces pueden comprometer nuestra privacidad. Otra de las cosas que tiene es que te puedes ahorrar unos cuantos mangos dejando de pagar suscripciones como la de iCloud, Google Drive, OneDrive o Dropbox y utilizar reemplazos como podrían ser ownCloud, nextCloud o Image para la gestión de nuestros álbumes de fotos y vídeos. También puedes utilizar Bitwarden para gestionar tus usuarios y claves de forma local,

[01:18] evitando exponer tus datos sensibles como puede ser esto, un usuario y una clave servicio de un tercero y que si tienen una brecha de seguridad nos llevan puesto y estamos al horno. Puedes también generar tu propia VPN y en caso de que estés en una red insegura poder conectarte a tu VPN local y navegar como si fuera que estás en tu casa o si estás del otro lado del planeta y necesitas acceder a contenido regionalizado, conectándote a tu VPN vas a poder verlo.

[01:43] Y bueno, si ya sos un gordo compu, puedes armarte tus propios laboratorios, levantar webs, bases de datos e incluso tus propias aplicaciones. Ah, una cosa más que no me quiero olvidar, cada una de las aplicaciones que estuve mencionando de ejemplo van a tener un vídeo aparte en el canal. Así que no te olvides de suscribirte, darle like al vídeo y de paso quiero leer tus comentarios. Si ya tenés un home server, qué otras aplicaciones, más allá de las que nombré, utilizas. Seguramente las

[02:08] esté probando y si están buenas las compartan en el canal. Pasemos a hablar de los componentes del servidor. En mi experiencia lo que pasó fue que actualicé la compu gamer y me quedaron componentes tirados, que si los quería vender, la verdad es que no me daban buena plata, entonces lo que hice fue comprar lo que faltaba para armar el servidor. En tu caso puede pasar algo totalmente similar, no sé, te compraste una laptop y te quedó un gabinete tirado o actualizaste la compu y tenés algún

[02:30] componente tirado por ahí. Te diría que revises qué hay, si tenés algo, completá con lo que falta. Hoy siendo 2025 te digo que un servidor más o menos funcional podríamos estar hablando de un procesador i3 de octava generación, entre 4 y 8 gigas de RAM, un disco mecánico de un tera para el almacenamiento y si podés un disco de estado sólido para que corran las aplicaciones, porque si utilizas el mecánico para que corran las aplicaciones, la verdad que va a ser bastante lento y vas a tener más dolores

[02:55] de cabeza que satisfacciones. Si no tenés nada, bueno, hay que pensar objetivamente para qué vamos a usar el servidor, porque no es lo mismo tener un servidor para que corra una VPN, un gestor de claves, el reemplazo de Dropbox, que podría ser ownCloud y de una página web y una base de datos que a todo eso sumarle un servidor multimedia que a veces tiene que hacer transcoding de vídeo para transmitir hacia una televisión y ahí ya necesitas mucha más potencia. Entonces, primero deberías

[03:20] dimensionar la el caso real que vas a tener vos con tu servidor y en base a eso ver en qué podemos gastar. Podrías comprar una Raspberry Pi 4 o 5, comprar una mini PC con un procesador N100 en adelante, que para las cosas básicas están bastante bien, pero si querés un poco más de hardware para hacer cosas potentes y una mini PC usada con un i3 o un i5 de octava generación, como decía, en adelante, o pensar en algún kit de madre, micro y memoria que se consiguen en Mercado Libre, algún proveedor de

[03:49] componentes de PC para tener algo más actualizado, que sea compatible con los nuevos códecs de vídeo y que sea el transcodding bastante sencillo y que no tenga tanta carga el procesador. Pasemos a hablar de sistemas operativos para nuestro servidor. En mis inicios usaba un Windows a duras penas con un Plex Media Server instalado, alguna aplicación de descarga, después tenía otra que hacía algún tipo de automatización y por último dos o tres compartidos para poder acceder desde

[04:11] cualquier ubicación de mi red. La verdad es que empecé a buscar alternativas y un día hablando con mi amigo Juan, al que siempre le agradezco su sabiduría, me dijo, "Che Pocho, ¿por qué no miras Unraid que está buenísimo?" Y la verdad es que tenía razón.

[04:22] Pero antes de hablar de Unraid, estuve investigando y busqué distintos sistemas operativos para no solamente encasillarnos en Unraid y traté de separarlos en tres grandes grupos. Estos grupos van a estar separados por el nivel de dificultad y el conocimiento técnico que necesitamos a la hora de instalarlo y administrarlo.

[04:39] Tenemos fácil, intermedio y avanzado. Arranquemos por lo fácil. Si estás buscando algo sencillo de gestionar y poder levantar aplicaciones fácilmente, bueno, ahí tenemos opciones como CasaOS, como Cloud o incluso una que se llama Ambrel.

[04:54] La instalación es súper súper sencilla. Para Cosmos Cloud y CasaOS, lo que tenés que tener es un Linux instalado de base que puede ser un Ubuntu y luego corrés un script de instalación. En cambio, para Ambrel, lo que tenés que hacer es flashear un USB, colocarlo en la computadora y luego seguir los pasos de instalación.

[05:11] Una vez que está terminado, todo se gestiona desde una interfaz web. Vas a poder buscar en un catálogo de aplicaciones qué querés levantar y con un par de clics ya vas a tener las aplicaciones listas funcionando. Podés poner un servidor multimedia, un gestor de claves, etcétera.

[05:26] La única desventaja que tienen estos sistemas fáciles es que no están pensados como un NAS puro y duro. Como dato final de estos tres sistemas operativos, CasaOS es full open source. Está desarrollado por la gente de Zimaboard que hacen unas plaquitas muy similares a las Raspberry Pi, pero mucho más potentes. Así que chusméalas porque están buenísimas y si tenés la oportunidad de comprarte una te diría que no dudes. Por otro lado, Ambrel está bueno, está pensado para ser instalado

[05:53] dentro del hardware propietario de ellos que es Ambrel Home, pero si querés podés instalarlo en una Raspberry Pi o en una PC, aunque hay algunas de las funcionalidades que están bloqueadas o no están pensadas para utilizar en este tipo de computadoras. Por otro lado, Cosmos Cloud es gratuito, pero tiene algunas funcionalidades que son pagas mediante una suscripción. Mi recomendación final es dale una chance a CasaOS o a Cosmos Cloud si te interesa buscar algo fácil. Pasemos a hablar de

[06:19] la categoría intermedio y acá entra en juego Unraid. Y me voy a llevar hablando de este sistema operativo porque es el que utilizo hace años en mi servidor y lo recontra recomiendo. También todo se administra desde una interfaz web como CasaOS o Ambrel, pero es un sistema más robusto. Nos permite no solo instalar aplicaciones mediante contenedores como hacen estos dos sistemas fáciles, sino que también vamos a poder virtualizar máquinas de forma completa. Otra de las características

[06:43] copadas que tiene Unraid es que todo el sistema de archivos del sistema operativo va montado en un pendrive, buteamos la máquina desde USB y una vez que butea todo el sistema operativo va a memoria, por lo cual no ocupamos ningún disco del servidor con datos del sistema operativo. También tiene una comunidad superactiva y si tenés algún problema, el foro oficial es una mina de oro donde vas a encontrar la solución. Pero, pero, pero, lo que lo hace realmente diferente a Unraid por sobre el resto es como su

[07:11] nombre lo indica, no es un raid, pero tiene un sistema de archivos propietario de la gente de LimeTech, lo que hace que sea parecido a un raid y ahora vamos a hablar de las diferencias. Primero y principal es que podemos tener discos de distintos tamaños en nuestro array de discos, cosa que en un raid tradicional o tenemos todos los discos de igual tamaño o si tenemos discos con diferentes tamaños vamos a perder capacidad.

[07:34] Otra de las cosas que tiene es que los archivos siempre se guardan completos en uno de los discos, cosa diferente en un raid tradicional que ese archivo se fragmenta entre todos los discos para ganar velocidad. Acá en RAID pierde un poco de velocidad porque no es un NAS puro y duro en ese sentido, pero sí ganamos confianza en que si se rompe alguno de los discos y no tenemos forma de restaurarlo, podemos acceder a los datos en los discos sanos. Otra de las cosas que tiene esto de los discos de

[08:00] paridad es con que tener un solo disco de paridad de igual al de mayor tamaño de la RAID de los discos, vamos a poder recuperar uno de los discos en caso de que falle. Podemos tener hasta dos discos de paridad, lo cual hace que podamos recuperar hasta dos discos a la vez, pero como decía antes, si tenemos tanta mala leche y se rompen más de dos discos, por ahí perdemos datos de esos dos discos que fallaron, pero el resto de los discos de la RAID va a ser accesible y vamos a poder recuperar la

[08:27] información. Bueno, ahora pasemos a hablar de dos aspectos negativos, porque algo negativo tiene que tener. Primero, es pago. No hay versión gratuita y aunque vale cada dólar, puede ser no accesible para todos. Primero te recomiendo hacer la prueba gratuita de 30 días a ver qué te parece.

[08:43] El sistema de licenciamiento lo cambiaron hace poco. Si bien la licencia es perpetua, las actualizaciones solamente están incluidas de por vida para la licencia lifetime. La licencia starter o unleash vas a tener que pagar 36 dólares anuales para poder mantener actualizado tu versión de unRAID. Los tipos de licencias son la licencia starter cuesta 49 dólares y nos permite conectar hasta seis discos.

[09:08] La licencia unleash nos cuesta 109 dólares y permite discos ilimitados. Bueno, limitado para el hardware que tengas. La otra es romper el chanchito y pagar la licencia de por vida que sale 249 dólares y te incluye las actualizaciones de por vida y los discos ilimitados. El otro aspecto negativo es que no es ideal si estás buscando un NAS puro con altas velocidades de transferencia. El sistema de archivos unRAID está más orientado a la flexibilidad y la facilidad de recuperación que a la performance pura.

[09:35] Si tu prioridad es velocidad, vas a tener que mirar opciones como TrueNAS, OpenMediaVault y de estos sistemas vamos a hablar en el siguiente apartado, que son los sistemas avanzados. En resumen, para mí Unraid es una joya para crear un servidor hogareño de tipo intermedio avanzado, donde nos va a permitir correr aplicaciones locales y crear máquinas virtuales. También, aprovechando su sistema de archivos propietario, vamos a tener una red de discos flexible y seguro. No es gratis,

[10:00] pero su costo para mí lo vale si querés algo confiable, que sea sencillo y a la vez con muchas más posibilidades que los sistemas operativos fáciles. Ahora, pasemos a hablar de los sistemas avanzados. Estos sistemas tranquilamente los podemos correr en nuestra casa, pero requieren un conocimiento técnico mayor, no solo para instalarlos, sino para configurarlos y mantenerlos funcionando en el tiempo. Y estoy hablando de TrueNAS, OpenMediaVault y Proxmox.

[10:24] TrueNAS y OpenMediaVault son soluciones NAS puras y duras. Está pensado para directamente compartir archivos en red, administrar permisos y usuarios. También vamos a poder gestionar máquinas virtuales o levantar aplicaciones, pero la curva de aprendizaje, como les digo, es más compleja si lo comparamos con soluciones fáciles como CasaOS o la intermedia, como decía, Unraid. Por otro lado, Proxmox para mí ya juega otra liga, porque es algo más pro. Es un hipervisor que lo que nos permite a

[10:51] nosotros levantar contenedores LXC o máquinas virtuales. Tiene muchas herramientas pensadas como para entorno empresarial. Podemos gestionar snapshots, backups diarios. También podemos tener alta disponibilidad, podemos utilizar clusters y todo se maneja también desde una interfaz web supercompleta. Si tenés ganas de hacer un laboratorio un poco más robusto con sistemas operativos que estén aislados, te recomiendo utilizar Proxmox. Pero bueno, acá ya va en vos de cuál es tu necesidad real de tu home server y a qué

[11:18] estás apuntando. En resumen, si recién arrancás y no tenés mucha experiencia, te recomiendo comenzar con CasaOS para ir agarrándole la mano. Si ya te sentís un poco más confiado y buscás una solución que te permita tener varios discos de distintos tamaños para armar un NAS con tolerancia a fallos, virtualizar máquinas, además de correr aplicaciones en contenedores y no te importa que sea pago, andá de una por Unraid, te aseguro que no te vas a arrepentir.

[11:43] TrueNAS y Proxmox te los recomiendo si te gustan las soluciones más robustas que nos brindan una mayor flexibilidad, pero a costa de una curva de aprendizaje un poco más compleja. Si te gustó el video, como siempre te digo, dejá like, me encantaría leer tus comentarios, si usás alguna solución distinta a las que estoy comentando, si usás alguna de ellas, qué te pareció, cómo la venís utilizando, qué cosas distintas harías y bueno, nos vemos en un próximo video de PochoLabs.
