# ¡ADIÓS LICENCIAS! Reemplaza Windows Active Directory con Samba 4 en Debian 13

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=k8Dl9RVYNLA)
- **Canal**: VM & Cloud Master
- **Publicado**: 2026-08-17
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 19:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:11] Hola a todos, gracias por estar nuevamente conmigo en el canal. Bueno, uno de los puntos más importantes por lo que las empresas siguen manejando servidores Windows su directorio activo, porque en él podemos centralizar todos los temas de seguridad, cuentas, privilegios, directorios compartidos, impresoras. Bueno, hoy vamos a ver cómo podemos hacer un directorio activo en una plataforma de código abierto que es totalmente funcional y nos permite tener las mismas funcionalidades. Espero el

[00:44] video les sea útil. Ya saben, comentarios, preguntas, inquietudes, en los comentarios los leo. Bueno, vamos al video. Bueno, ya tenemos nuestra máquina lista. En este caso, voy a utilizar una máquina virtual con Devian 13. Voy a ingresar a ella. cosas a tener en cuenta. Como ustedes bien saben, todo directorio activo o todo servidor de directorio activo en general siempre va a tener un servidor de NS.

[01:11] En este caso es igual, vamos a necesitar que nuestro servidor, además de ser controlador de dominio, tenga un servidor servidor DNS. Para esto, pues bueno, lo primero que voy a hacer es ingresar a una consola y vamos a hacer una revisión general de la configuración del sistema operativo para garantizar que tenga las configuraciones necesarias o que cumpla los parámetros necesarios para poder eh iniciar la configuración sin que tengamos ningún inconveniente.

[01:43] Entonces, lo primero y es, yo creo que lo más importante es verificar que tenga una dirección IP fija. Esto, ¿dónde lo vamos a ver? Lo vamos a ver en un archivo que se llama interfaces, que está en el directorio ETC Networks.

[01:58] Para esto vamos a ingresar como root en nuestra consola y vamos a simplemente darle more sletc network interfaces. Y aquí ya podemos tener la tranquilidad que nuestra máquina ya tiene el la dirección IP fija. Importante, si se dan cuenta, acá el DNS es el DNS que tiene mi red, que tiene la red en la que está la máquina.

[02:25] esa ese DNS más adelante lo vamos a cambiar porque para que funcione adecuadamente el directorio activo necesita que él pueda resolverlo internamente. Entonces por ahora lo vamos a dejar así porque necesitamos hacer la configuración de algunos elementos que necesitan descarga de internet y si no tenemos el DNS instalado, no vamos a poder resolver.

[02:50] Entonces, a continuación vamos a verificar que el host name cumpla con las normas de FQDN, es decir, que tenga un nombre de máquina más un dominio. Esto, ¿dónde lo vamos a poder ver? En el archivo hostame, igual more/c hostame. Listo, el FQDN está perfecto.

[03:10] En este caso ya está ajustado a como debería ser. En el caso de que ustedes no lo tengan ajustado, ¿cómo podríamos fijarlo? Una opción es editar el archivo host name y ponerlo de forma manual y la otra es con el comando host name ctl y vamos a decirle set host name el nombre de la máquina. Le voy a dar entero, me lo puse en completo, perdón. Y así ya queda fijado. En este caso ya está fijado. Si le damos more al archivo, pues está perfecto. A continuación vamos a verificar que el archivo host name

[03:48] esté correcto. Perdón, que el archivo host tenga la resolución de las del nombre propio de forma adecuada. Esto sí vamos a editarlo. Ustedes pueden ingresar con el editor editor que prefieran, eh, nano o B. Yo prefiero B.

[04:03] Entonces, bit/etc/hosts en este caso ya está adecuada. Tenemos la dirección local, la interna y tenemos la dirección pública. Ambas están orientadas a DC1.lab.local. En el caso de que ustedes no tengan las líneas así, las tienen que ajustar de acuerdo a los parámetros que tiene su máquina virtual.

[04:28] No vamos a hacer ninguna modificación, simplemente le damos Q y salimos. [suspiro] Bueno, en este punto ya lo que debemos hacer es hacer la instalación de los elementos necesarios para que funcione nuestro DNS. Bueno, el paso siguiente es hacer la instalación y configuración del DNS. Para esto yo ya tengo un script, entonces ya lo tengo acá en una ubicación. Voy a pasar a la ubicación.

[04:56] Este es el script. Se los voy a mostrar. Bueno, como pueden darse cuenta, hay algunos parámetros que tenemos que ajustar. Yo los dejé ahí eh ajados para que en el caso de que lo necesiten lo puedan hacer fácilmente. Entonces, ¿qué vamos a encontrar? Lo primero que vamos a necesitar cambiar es el dominio.

[05:15] Dominio lo tienen que ajustar a lo que tengan ustedes. En este caso, pues la puncal está perfecto para lo que estamos haciendo en esta red. El segundo es el servidor de NS. La IP que va a tener es el mismo servidor de dominio, es la IP que él tiene. Prefijo de la red. Son los tres primeros oetos de la dirección IP.

[05:34] Ahí yo dejé marcado, dejé una notica para que les quede muy fácil. La tercera, la zona reversa. La zona reversa es la son los tres primeros obtetos de la red de forma inversa. Es decir, primero va a estar el tercer oeto, segundo va a estar el segundo y tercero va a estar el primer oeto. Y siempre va a terminar con inaddr punto punararpa. Estos parámetros son fijos, excepto la dirección IP. Y por último, los forwarders. Los forwarders son básicamente servidores de NS públicos

[06:06] que pueden ser los que les dé su proveedor de internet o uno público como el de como el de Google. Yo estoy utilizando los de Open DNS. ningún otro parámetro, necesitamos modificarlo. Acá básicamente lo que encontramos en el script es el proceso de instalación y configuración. Si lo revisan al detalle aquí más adelante lo que encontramos es que se crean los archivos necesarios para las zonas eh directas y reversas y al final simplemente hace un proceso de eh activar el servicio de bin y

[06:38] reiniciarlo. Este este paso es importante que tengan en cuenta que puede que saque error ese paso de activar el bin porque en algunas ocasiones cuando se instala queda activo, en algunas otras no. Yo prefiero dejarlo que lo active para que después no haya no vaya a haber fallas.

[06:59] Entonces, simplemente si les sale error en el proceso de enable del servicio, ya saben que pueden ignorar el error, no hay ningún inconveniente. Si no le sale error, eso quiere decir que su sistema lo tenía deshabilitado, por lo cual lo habilitó y ya podemos continuar.

[07:15] Continuación, simplemente lo que nos queda revisar es que el archivo tenga permiso de ejecución. Para esto vamos a revisarlo con l - l. Acá lo tenemos. Y como nos podemos dar cuenta, ya tiene los permisos de ejecución. Si nos damos cuenta, ya tiene la X en los tres parámetros. En dado caso que no lo tuviera, simplemente le vamos a dar ch mod + x el nombre del archivo. Lo voy a ejecutar porque sé que no tiene ningún problema. Ya allí quedó. A continuación, simplemente debemos lanzarlo.

[07:49] Importante, tengan en cuenta, debemos estar con root. En este caso estamos con root. Entonces, simplemente le damos punto slash y el nombre del script y lo lanzamos. Este proceso va a demorar un muy buen rato. Una vez termine, continuamos.

[08:05] Bueno, ya terminó el proceso de instalación y configuración. Si se dan cuenta, ahí está el error que les decía, que les mencionaba. File it to enable the unite. Este error lo podemos ignorar, pero bueno, yo creo, por lo menos a mí me daría la inquietud. de saber si efectivamente el servicio quedó activo o no. Entonces, simplemente lo podemos hacer. Podemos revisarlo con system CTL status bint 9 y acá ya nos muestra que está activo y que está funcionando. Aquí vemos que el estado

[08:40] está activo y running y que el servicio está enable. Entonces, ya esto nos da la tranquilidad que efectivamente el servicio está activo y va a iniciar cada vez que nuestra máquina arranque. Acá simplemente le damos Q para salir y ya quedamos listos. Paso siguiente, es más que obvio que debemos probar y garantizar que el servicio esté funcionando adecuadamente. Acá vamos a tener que hacer dos cosas. La primera, vamos a tener que cambiar en resol.c C conf DS que colocamos en nuestro

[09:14] sistema operativo. Esto se fue lo que les mencioné al principio. Acá vamos a cambiar este DNS nuestra red o un DNS público, el que ustedes tengan, por el 127001 para que se resuelva a sí mismo y no tenga que ir a la red a buscar un DNS. A mí no me gusta eliminar líneas, yo simplemente la renombro. Así si pasa alguna cosa fácilmente puedo regresar.

[09:40] Simplemente le agrego name server 127.0.0.1. Le damos salvar y ya quedó. Ahora sí vamos a probar que nuestro DNS esté funcionando. Esto lo hacemos con el comando dick. Vamos a decirle @ 1270.0.1. 1 espacio DC1.lap.llocal.

[10:11] ¿Qué va a hacer este comando? Va a consultar en la base de datos del DNS si existe el registro para este servidor. Esta es una respuesta válida. nos está mostrando que existe el registro para el servidor. En dado caso que no existiera, no se nos arrojaría un error. Aquí ya vamos a hacer la instalación de los componentes necesarios. Para esto, simplemente vamos a utilizar el comando apt.

[10:38] Vamos a primero actualizar los elementos de la plataforma y a continuación hacer la descarga de los elementos necesarios para que funcione el directorio activo. En este caso sería aptal. Los elementos necesarios serían Samba, Winbin, Kerveros, la el módulo de usuario, ACL, que es el que nos permite hacer control de listas de usuario, y ATTR, que es el que maneja los atributos de todo el directorio. Este proceso va a tomar unos 10 minutos aproximadamente.

[11:15] Ya continuamos. Una vez finaliza la instalación, eh si no salieron errores, pues vamos a proceder con la configuración de los elementos necesarios del directorio activo. Lo primero que debemos hacer, lo primero que se recomienda hacer es remover el archivo de configuración que instala de forma predeterminada Samba. Ese archivo no lo necesitamos, vamos a volverlo a generar con los parámetros necesarios para nuestra infraestructura. Esto lo hacemos con el comando RM - F. Este archivo se encuentra

[11:46] en/etc/samba/smb.com. No es necesario sacarle copia a este archivo porque no sirve lo que hay dentro de él. es una configuración predeterminada que no se ajusta para nada a los parámetros que tiene la red en la que se está configurando. Estos parámetros los vamos a generar en el en este paso. Entonces, para generar esta configuración, simplemente vamos a utilizar la herramienta que contiene la Samba para hacerlo todo el proceso de ajuste de los parámetros. Esto simplemente vamos a utilizar Samba Tool

[12:24] Gu tool. Vamos a decirle que vamos a crear domain provision. Vamos a provisionar un dominio. Terminamos con backsash porque vamos a digitar varias líneas. Quiero que ustedes vean parámetro a parámetro y que podamos entender qué es lo que se está haciendo en cada uno de los diferentes modificadores que tiene esta herramienta. Bueno, el primero que vamos a colocar es menos menos realm. Real es el nombre completo del dominio, es decir, va a incluir todo el FQDN. Para esto siempre los parámetros van en

[13:02] mayúscula, entonces va a ser lap. Local. Esto lo deben ajustar de acuerdo a su a su dominio y de acuerdo a su red. Lo terminamos con backet lash. El siguiente parámetro va a ser domain, [carraspeo] perdón. Domain va a ser el dominio que es que estamos colocando, que en este caso es lab. Siempre terminado en backlash. Si vamos a agregar más líneas.

[13:26] A continuación vamos a decirle cuál va a ser el rol del servidor. Server GU roll igual va a ser un DC controlador de dominio backash enter. A continuación vamos a decirle cuál va a ser el DNS que va a utilizar. En este caso, DNS gu back end. Igual, como les decía, en este caso el DNS que vamos a utilizar es BINT, entonces va a ser BIN 9 y el servicio como lo reconoce Samba es BIN9-dlzetash.

[14:01] A continuación va vamos a colocar el password de administrador. Este password va entre comillas, recuerden, un password seguro, ocho caracteres como mínimo, una mayúscula, un número y un carácter especial. Esta línea no va con backetash porque es la última. Y ya con esto finalizamos el parámetro completo.

[14:22] Simplemente le damos enter para que inicie el proceso de [resoplido] generar la configuración necesaria de nuestro directorio activo. Esto se demora unos 10 minutos. Aquí ya terminó el proceso de configuración. Importante que miren que el forest o el bosque ya fue poblado y ya tenemos todos los elementos necesarios. Es muy importante que verifiquen que al final todo salga verde y no tengan errores. Si existe algún error, seguramente eh hay algún elemento que falta que falta cargar. Entonces,

[14:56] la opción más sencilla es reiniciar la máquina para que podamos garantizar que todos los servicios suben adecuadamente. A continuación, pues vamos a copiar el archivo de configuración que generó Kerveros eh para que se pueda hacer la para habilitar la autenticación de los tickets. Un ticket es una solicitud que hace un elemento del directorio activo.

[15:21] Esto es un parámetro bastante sencillo. Simplemente vamos a hacer una copia de un archivo de un directorio a otro. Este esta copia es simplemente hacer un CP de la ubicación donde la creó Kerveros, que es es bar lip samba private krb.

[15:44] Y lo vamos a copiar en slashtc. A continuación vamos a ajustar los parámetros del demonio o del servicio, como lo quieran llamar. Es lo mismo de samba para que el directorio activo funcione. Lo primero que que vamos a hacer es un desenmascarar el servicio el servicio porque este se encuentra enmascarado para que no pueda ser cargado. Entonces simplemente le damos system CTL un mask Samba- AD-DC. Listo. El siguiente va a ser simplemente activar el mismo servicio y por último vamos a iniciarlo. Y ya aquí estamos

[16:25] listos con nuestro directorio activo en un servidor Linux. Y el último paso, obviamente, es probar que nuestro directorio activo en Linux esté funcionando adecuadamente. Para eso vamos a utilizar el comando Kinit. quienes nos va a permitir ingresar al directorio activo, específicamente a a a Kerveros, y verificar los elementos que hay. Para esto, simplemente vamos a dar kinit administrator @lap.local.

[16:58] Tengan en cuenta el dominio, si se dan cuenta, está en mayúscula. Así debe ser. Nos va a pedir la clave. Es la misma clave que digitamos en el momento de la instalación. Y aquí ya nos dejó ingresar. Esta este error es normal, simplemente nos está especificando que la clave vence en 41 días. Lo siguiente, vamos a listar los elementos que tiene Kerveros con el comando Calist.

[17:22] Y aquí ya nos está mostrando que tiene eh pues que ya el dominio está totalmente activo y que está funcionando. Vamos a verificar adicional los registros para nuestros nuestro controlador de dominio. Entonces, para esto vamos a usar el comando host menos t, es un tipo de servidor gu bajerveros gucp.lab.

[17:53] Y aquí ya nos arroja que ese ese registro está a dc1.lap. ¿Está correcto? Ahora vamos a registrar el revisar el parámetro de Eldap. lo mismo, host, perdón, host - t srb- beldap.g-tcp.lab.lcal. Listo. Los dos registros más importantes que debe tener el directorio activo, que es el parámetro Kerveros y el parámetro EldAP, están adecuados al servidor que va a funcionar como como nuestro controlador de dominio. Con esto ya garantizamos que el directorio activo está listo y totalmente funcional.

[18:40] Bueno, como se pudieron dar cuenta, es una solución totalmente funcional, muy práctica y bueno, recomendaciones, siempre tener como mínimo dos controladores de dominio. Pueden hacer los físicos o en una máquina virtual o en un contenedor. Esa es la gran ventaja que tienen este tipo de soluciones de código abierto. Y bueno, ya saben, cualquier inquietud, duda, pregunta, estoy acá para resolvérsela. No duden en los comentarios, enviármelas sin ningún problema. estaré revisándolas y en la

[19:08] medida de lo posible las estaré respondiendo. Y bueno, no se les olvide, like a los videos, click en la campanita, suscríbanse al canal y nos vemos en el próximo. Ciao
