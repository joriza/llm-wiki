# Repetidor WiFi ESP32 Extensor de alcance - Internet donde antes no llegaba

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=naJQhnYYlak)
- **Canal**: Computadoras y Sensores
- **Publicado**: 2023-01-14
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:18

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Bienvenidos a computadoras y sensores. Mi nombre es Carlos. En el capítulo de hoy volveremos a utilizar el ESP32, esta vez para hacer un router NAT de Wi-Fi, un extensor o un repetidor de Wi-Fi para aumentar el área de cobertura. Sin más tiempo que perder, vamos ya mismo con el video.

[00:25] Muchas veces nos encontramos con que la señal Wi-Fi del router no alcanza o es muy débil. En mi caso ocurre cuando me encuentro en la terraza de casa. Alguna vez un vecino tuvo un corte en su servicio de internet y le compartí mi señal. Otra vez, estando de vacaciones, el servicio de Wi-Fi solo alcanzaba algunas partes del lugar. Las posibilidades son muchas y la solución simple y económica. Con una placa ESP32 podemos extender el alcance de la señal manteniendo una velocidad adecuada.

[00:54] Incluso podemos alimentar la placa con una batería o powerbank y hacer nuestro dispositivo completamente móvil y sin necesidad de electricidad de red. El proyecto de hoy lo encontramos en la página en GitHub de su desarrollador Martin Girl, link debajo y en la descripción. Allí podemos encontrar información detallada donde, por ejemplo, nos indica que se puede obtener un ancho de banda de más de 15 megbit por segundo. Lo siguiente que haremos es desplazarnos hasta la parte superior de

[01:23] la página y hacemos clic en code y seleccionamos download ZIP. Se trata de un archivo de 1,3 MB. El siguiente paso es dirigirnos al URL de soporte y descargas del desarrollador de las placas ESP8266 y SP32 Expressif. El link debajo y en la descripción. Debajo de productos seleccionamos el modelo correspondiente a nuestra placa de desarrollo. En mi caso para esta oportunidad ESP32, pero también hay para el 8266 y las más modernas S2, C3 y S3.

[01:58] Luego, a la derecha descargamos la herramienta. Se trata de un archivo de 16,9 MB. A continuación tenemos que descomprimir los dos archivos ZIP recién descargados. Esto lo hacemos con la herramienta de nuestra preferencia, por ejemplo, Winip o Sevensip, entre otros.

[02:14] Una vez descomprimidos los dos archivos, tendremos dos carpetas o directorios que pronto usaremos. Pero ahora es tiempo de conectar nuestra placa de desarrollo al puerto USB de la computadora. [Música] Dentro de la carpeta Flash Download Tool ejecutamos el archivo Exe Omónimo. Se nos abrirá una terminal y una ventana donde lo primero que tenemos que seleccionar desde el menú desplegable es el chip de nuestra placa entre los distintos ESP32 y el 8266. En mi caso, selecciono ESP32 solo. En work mode lo

[02:49] dejamos en developad mode, excepto que tengas una placa con dos puertos USB no se podrá modificar. Damos en okay. Se abre una nueva ventana con varios campos o cajas vacías. Entonces, clic en los tres puntos del primero y seleccionamos el directorio que recién descomprimimos con el código que descargamos de GitHub. Luego clic en build y selecciono ESP32. Y aquí lo iremos ingresando en la herramienta de Expressif en este mismo orden. Primero el bootloader, luego clic en los tres

[03:21] puntos y seleccionamos firmware. Clic en los tres puntos nuevamente y seleccionamos partitions. Lo siguiente que haremos es indicarle la posición de memoria desde dónde se tiene que ubicar el binario. Para el primero, bootloader ingresamos 0 por o 0x 1000. En el segundo, firmware 0x1,000 y en el tercero, Partitions 0x 8,000.

[03:49] Ahora tenemos que chequear las tres casillas que se encuentran a la izquierda y todos los datos ingresados tienen que ponerse en color verde. Con respecto a los parámetros de configuración, los dejamos tal cual vienen por defecto y solo seleccionaremos abajo a la derecha el com que lo estableceremos en función al puerto de cada uno. Para el mío es com 4, pero muy probablemente en tu caso sea otro. Para asegurarnos que es el puerto correcto, podemos abrir el administrador de dispositivos y desplegar donde indica

[04:17] puertos COM y LPT. Allí tendremos el controlador o puente USB Award y entre paréntesis el número de com cuatro. Para mí solo nos queda cambiar la velocidad en Baudios a 576,000. Damos en el botón start y tan pronto vemos en la consola que comienzan a aparecer los puntos, presionamos el botón de boot en el ESP32 para comenzar a subir los binarios. Veremos la barra de progreso verde en la ventana de la herramienta y texto en la consola. Es un proceso que dura unos pocos segundos.

[04:51] Aquí te lo muestro en tiempo real. Al finalizar vemos finish. Tenemos que desconectar la placa del puerto USB y volver a conectar. El resto de la instalación la haremos a través del navegador web y por medio de Wi-Fi. [Música] Ingresamos a configuración de red e internet y vemos mi red a la que estoy conectado y debajo el router NAT, el ESP32.

[05:23] Haciendo clic allí nos muestra como abierta es porque aún no hemos ingresado ninguna credencial. Lo siguiente es conectarnos al ESP32 y a los pocos segundos de dar en conectar en ESP32 NAT router, la luz azul del ESP32 comienza a parpadear.

[05:42] Ahora sí podemos ingresar las credenciales y finalizar con la instalación. Abrimos un navegador web e ingresamos el siguiente IP. Siempre es el mismo, es un IP estático 192.168.4.1. Y rápidamente se abren las configuraciones de nuestro ESP32 NAT. El nombre o SSID de este nuevo dispositivo o nuestro nuevo router podemos cambiarlo o dejar el mismo. En mi caso, lo dejaré así. En password tenemos que ingresar uno con al menos ocho caracteres. De ser menos es como si quedara abierto y

[06:20] público y cualquiera podría usarlo. En mi caso, la contraseña será com y sense not. Luego damos en set y pasamos a una nueva ventana indicando que los datos se están transfiriendo al dispositivo y que la página se refrescará automáticamente.

[06:37] Esperamos algunos segundos y luego vuelve automáticamente a la página anterior. Y aquí solo nos resta ingresar el nombre o SSID de nuestra red, es decir, la red Wi-Fi que usamos siempre y luego la contraseña de la misma. Damos en connect y nos lleva a la página que nos indica que se están enviando los datos ingresados al dispositivo o lo que es lo mismo al ESP32 y solo tenemos que esperar unos segundos. Luego nos devuelve a la página anterior automáticamente y eso es todo. Tenemos

[07:09] nuestro router ESP32 configurado y en funcionamiento. Aquí vemos que me encuentro conectado al ESP32 y desconectado de mi red habitual. Hagamos ahora unas pruebas para comprobar la velocidad con el Router NAT ESP32. [Música] Me dirijo a la prueba de velocidad de Google, que permite medir la velocidad de internet tanto de subida como de bajada, al igual que la latencia. Es una prueba que dura alrededor de 30 segundos. Doy en ejecutar prueba de velocidad. Ahora solo conectado al

[07:46] router NAT SP32. y esperamos a obtener el resultado final. Aquí acelero el video. Los valores son 10,3 megbit por segundo para la descarga o bajada de internet y 8,36 MB por segundo para la subida de datos, mientras que la latencia es de 6 milisegundos.

[08:07] Para realizar la siguiente prueba, me desconecto del router NAT ESP32 y me conecto al router del proveedor de internet, es decir, mi conexión habitual. Doy en volver a probar esto para tener la seguridad de que el cuello de botella lo genera el ESP32 y no que partimos de una baja velocidad de conexión del proveedor. Acelero el video y aquí los resultados. 220,1 megbit por segundo para la descarga y 245 megbit por segundo de carga o subida con una latencia de 4 milisegundos. Los

[08:41] resultados son los esperables y la velocidad con el ESP32 es más que aceptable. [Música] Para saber la potencia de la señal, voy a utilizar una aplicación para iOS de nombre Airport, desarrollada por Apple, que permite conocer la potencia de la señal recibida en DBM. Entonces, ubico el router ESP32 entre el router del proveedor y la terraza donde realizaré la prueba. Comprobando con la aplicación, la señal del router ESP32 es de entre -47 y -5 dBm, mientras que la señal del router del proveedor de

[09:19] internet es de entre -67 y -72 dBM, alrededor de 20 dBM de diferencia, que al ser el DBM una escala logarítmica es mucha diferencia de potencia. Otra de las utilidades que podemos darle al router NAT es brindar Wi-Fi de cortesía donde compartimos la contraseña y sabemos que del total de ancho de banda podrán emplear un máximo de 10 Mbit por segundo. Suficiente para la mayoría de usuarios con aplicaciones móviles y redes sociales. Y con esto terminamos el video de hoy. Espero que el video haya

[09:55] sido de tu agrado. De ser así, danos tu like, suscribirte, compartilo. Si tienes alguna duda o comentario, puedes dejarlo debajo, que con gusto lo responderé. De mi parte, muchísimas gracias por ver el video y será hasta la próxima.
