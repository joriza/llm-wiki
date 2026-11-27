# ¿Miedo a perder tus correos? Así de fácil es migrar a Linux

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=NOZeNY_2pnY)
- **Canal**: Linux TakeAway
- **Publicado**: 2026-05-21
- **Recopilado**: 2026-11-27
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:50

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Si llevas años usando Outlook, tienes un problema y casi nadie te lo cuenta antes de migrar a Linux. Tu vida entera está dentro de ese programa, correos de hace 10 años, contactos que no recuerdas haber guardado, calendarios con citas, carpetas que has ido ordenando una a una durante años hasta tener tu propio sistema personal de archivo, todo metido en un archivo enorme, un archivo que ocupa varios gigas, donde Microsoft lo ha guardado todo en un formato que solo entiende Microsoft. Ese archivo se llama

[00:29] PST y es el muro real entre tú y Linux. La mayoría de la gente que se atasca migrando a Linux no se atasca con el sistema, se atasca con el correo porque temen perder 15 años de vida digital. Y aquí viene la trampa, Microsoft no diseñó el PST por casualidad, lo diseñó para que sea difícil sacar tus datos de ahí. Mientras tus correos estén en el PST, dependes de Outlook, de Windows y de Microsoft. La cadena es perfecta y termina con tu vida bloqueada. Te cuento un caso real, conozco a un autónomo que

[00:57] llevaba 17 años usando Outlook, facturas, contratos, conversaciones vitales. Instaló Linux Mint, todo funcionaba hasta que llegó el momento del correo y se quedó bloqueado, no sabía cómo moverlo. Después de tres tardes intentándolo, hizo lo que hace la mayoría, volvió a Windows, no por Linux, sino por su vida secuestrada en Outlook.

[01:16] Esa historia se repite todos los días, es la principal razón por la que mucha gente no da el salto a Linux por miedo a perder su correo. Lo que vamos a ver hoy es exactamente lo que ese autónomo necesitaba saber. Este vídeo no es un tutorial más, es la llave para abrir la puerta. Te voy a enseñar cómo sacar todo de Outlook y meterlo en Linux sin perder nada, sin pagar a nadie y sin herramientas propietarias. Veremos las tres situaciones posibles, te daré los comandos exactos para Debian, Red Hat,

[01:43] Open Suse y Arch, paso a paso. Esta migración no requiere conocimientos avanzados, si sabes copiar y pegar comandos en la terminal, sabes hacer esto. Si nunca has abierto una terminal, hoy será la primera vez y habrás hecho algo importante, empezar a recuperar tus datos. No usaremos soluciones de pago ni conversores comerciales. Todo es software libre que puedes auditar y usar gratis, porque la soberanía digital empieza por no pagar a nadie por tener acceso a tus propios datos. Es una

[02:09] cuestión de principios. Nada de lo que vamos a hacer es destructivo. Tu Outlook y tu PST original siguen intactos, solo estamos copiando la información. Si algo va mal, no entres en pánico. Vuelves al principio y lo intentas de nuevo, sin prisa. [música] El control es tuyo. En los próximos minutos te daré las herramientas para que tu migración a Linux no se detenga en la puerta del correo electrónico. Prepárate para romper ese muro. Vamos al lío. Antes de tocar nada, una idea fundamental.

[02:37] [música] Hay tres tipos de cuentas en Outlook y la forma de migrar cambia en cada una. En cuentas IMAP o Exchange, los correos viven en el servidor. Migrar es tan fácil como [música] configurar Thunderbird con la misma cuenta y esperar a que sincronice. En cuentas POP 3, los correos se descargaron a tu PC y probablemente solo existan dentro del archivo PST [música] de Outlook. Aquí es donde hay que trabajar. Si usas IMAP pero archivas correos viejos en archivos PST locales [música] para liberar

[03:04] espacio, tendrás que mezclar ambas técnicas de migración. Antes de seguir, abre Outlook y confirma tu tipo de cuenta en Archivo, Información. [música] Mira si tienes archivos PST adicionales conectados. Paso 0, el backup. Copia tu carpeta de Outlook entera a un disco externo. Sin red de seguridad no se empieza, [música] punto. Paso 1, exportar. En Outlook, ve a Abrir y Exportar. [música] Elige Exportar a un archivo y selecciona el formato PST.

[03:30] Selecciona la raíz de tu cuenta y marca siempre Incluir subcarpetas. Guárdalo en el escritorio para tenerlo a mano. Ahora [música] los contactos, repite el proceso pero elige el formato CSV y selecciona específicamente tu carpeta de contactos. Y el calendario, guárdalo como archivo {punto} ICS, asegurándote de elegir el rango de fechas completo y todos los detalles. Ya tienes tu vida digital en tres archivos. Cópialos a un pendrive o súbelos a tu nube para llevarlos al lado de Linux. Paso dos,

[03:56] instalar lo necesario. Thunderbird será tu cliente y ReadPST la herramienta para convertir el formato cerrado de Microsoft. En sistemas basados en Debian como Ubuntu [música] o Mint usa sudo apt install thunderbird y el paquete pst-utils. En Fedora el paquete se llama libpst. En Arch Linux instálalo con Pacman. En un minuto tendrás todo listo.

[04:17] Paso tres, convertir. Usaremos readpst para pasar el archivo PST al formato MBOX, que es el estándar [música] que entiende Linux. Usa el comando readpst con la opción menos o para la carpeta de salida y la menos r para mantener tu estructura de carpetas. Cuando termine tendrás una carpeta con archivos MBOX.

[04:37] Es exactamente lo que Thunderbird necesita para leer tus correos antiguos. [música] Paso cuatro, Thunderbird. Configura tu cuenta IMAP o usa carpetas locales si prefieres [música] trabajar solo con la información local. Instala el complemento ImportExportTools NG. Es el que sabe importar los archivos MBOX de forma masiva y sencilla. Haz clic derecho en carpetas locales e importa tus archivos MBOX. [música] En pocos minutos verás toda tu estructura de Outlook. Paso cinco, contactos. Importa

[05:06] el archivo CSV, [música] mapea los campos de nombre y correo y ya tienes tu agenda completa. Paso seis, calendario. [música] En la vista de calendario importa el archivo {punto}ics y todas tus citas aparecerán [música] al instante. Paso siete, verificación. Comprueba el número total de correos y asegúrate de que los adjuntos se abren correctamente. Si hay errores [música] usa la herramienta scanpst en Windows para reparar el archivo original [música] antes de volver a exportar. Por último, no borres

[05:33] el PST original durante [música] seis meses. Es tu seguro de vida digital. Disfruta de tu libertad en Linux. Si has seguido todos los pasos en orden, ahora mismo tienes [música] en tu Linux exactamente lo que tenías en Outlook.

[05:45] Pero hay una diferencia, una [música] diferencia que es mucho más grande de lo que parece a primera vista. Lo que acabamos de hacer no es solo una migración técnica, es un cambio de bando. Has sacado 15 años de tu vida digital de un formato propietario [música] que controla Microsoft y los has metido en formatos abiertos que controlas tú, MB, OX, ICS, CSV. Tres palabras que significan que tus datos ya no están secuestrados. MB OX no es de nadie, [música] es un estándar. Lo entienden todos los clientes de correo

[06:13] libres del mundo. Si mañana no quieres usar Thunderbird, lo cambias por Evolution, o por KMail, o por Claws Mail, o por Mutt si te va el rollo terminal, y tus correos te siguen sin pedir permiso a nadie. ICS es lo mismo, pero para el calendario. Es un estándar abierto. [música] Funciona en Thunderbird, en GNOME Calendar, en KOrganizer, en cualquier aplicación moderna de calendario y también en aplicaciones móviles. Tus citas te siguen. CSV es texto plano. Es el formato más abierto que existe. Lo

[06:40] puedes leer con un editor de texto. [música] Lo puedes manipular con un script de Bash. Lo puedes meter en cualquier libreta de direcciones. Tus contactos son tuyos para siempre. Y eso [música] es soberanía digital de verdad, la que se cuenta en frases bonitas, la que se hace con la terminal abierta leyendo carpetas que llevabas años [música] sin abrir y dejándolas seguras. Si has llegado hasta aquí, ya eres una persona distinta a la que abrió este vídeo hace media hora. Antes dependías [música] de

[07:04] un programa propietario para acceder a tu propio correo. Ahora no. Antes, si Microsoft decidía subirte la licencia, no tenías opción. Ahora sí. Antes, [música] si Microsoft decidía cambiar el formato del PST, te quedabas atrapado.

[07:17] Ahora ya no. Y aquí hay algo más profundo. Migrar el correo es uno de los pasos más simbólicos [música] hacia un equipo soberano, porque el correo es la columna vertebral de la identidad digital. Quien controla tu correo te controla a ti. [música] Es donde llegan los avisos del banco, las facturas, las contraseñas, las conversaciones que importan. Quien controla tu correo controla tu identidad digital. Y a partir de hoy, quien lo controla eres tú. Lo siguiente, si quieres seguir

[07:41] cerrando dependencias, es el correo en sí. Migrar a Thunderbird soluciona el cliente, pero si tu cuenta sigue siendo de Microsoft o Google, el correo lo siguen leyendo ellos. [música] Necesitas un correo soberano, y para eso he preparado el kit de supervivencia digital. Seis herramientas, 30 minutos, guía paso a paso para blindar tu correo, tu navegación, tus contraseñas, tu DNS [música] y tu conexión. Descárgalo gratis. Te lo descargas gratis en el primer enlace de la descripción. Es la continuación

[08:07] lógica de hoy. Ahí dentro hay gente que está en tu mismo punto, gente que ya ha hecho la transición. Compartir ayuda. Lo importante es que entiendas lo [música] que ha pasado hoy. No has aprendido un truco técnico, has cruzado una frontera.

[08:19] Has ejecutado comandos, has rescatado tus datos de un formato cerrado y los has dejado en formatos abiertos. Has instalado software libre y has montado tu primer cliente soberano. [música] Es un día importante, aunque no te lo parezca ahora mismo. Dentro de unos meses vas a mirar atrás y recordarás este vídeo como el que te abrió la puerta. Y ese es el mejor regalo que te puedo hacer. Suscríbete si te sirve.

[08:40] [música] Este canal vive de la gente que entiende que la soberanía digital no se compra, se construye paso a paso, vídeo a vídeo, comando [música] a comando. Nos vemos en el próximo vídeo.
