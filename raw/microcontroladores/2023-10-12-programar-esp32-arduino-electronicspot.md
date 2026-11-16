# Programar ESP32 con Arduino | Instalar Configurar ESP32 en Arduino

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=BQBFJ8qc3z4)
- **Canal**: ElectronicSpot
- **Publicado**: 2023-10-12
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:43

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] mis queridos amigos en esta oportunidad aprenderemos Cómo cargar nuestro primer programa en la placa de desarrollo esp32 en este caso la placa de 38 Pines aprendiendo en el proceso la instalación de sus drivers o controladores la instalación de sus recursos en el ambiente de desarrollo y las consideraciones que hay que tener en cuenta para subir programas a esta la económica placa esp32 de menos de $ cuenta con el potente chip sp32 fabricado originalmente por la compañía expressive

[00:32] con sede en China que cuenta con capacidades de conectividad wi-fi y Bluetooth haciéndola ideal para la elaboración de proyectos o sistemas electrónicos embebidos con conectividad a internet o iot para esta práctica ubicaremos la placa en un pequeño protoboard de 400 puntos y a través de un cable USB a micro USB conectaremos el extremo micro usb a la placa y conectaremos el otro extremo al puerto USB de nuestra computadora en nuestro sistema operativo Windows vamos al explorador de archivos en la

[01:05] opción de equipo damos clic derecho y accedemos a propiedades en la ventana de configuración accedemos al enlace de administrador de dispositivos y en la opción otros dispositivos podemos observar que el Windows detecta el dispositivo correspondiente a nuestra placa esp32 sin embargo no sabe cómo trabajar con este colocando un signo de admiración amarillo ya que no cuenta con el controlador Para ello el Windows nos indica que detecta el chip cp2102 el cual corresponde a Este chip

[01:35] cuadrado ubicado en la placa esp32 y que se encarga de convertir datos de uasp a serial y viceversa y que finalmente Crea una interface física de comunicación entre nuestro computador y el chip esp32 ubicado en la placa para instalar en nuestro Windows el controlador para Este chip vamos a nuestro Buscador de Google o el de su preferencia y buscamos cp2102 dver download podemos Ingresar a cualquier enlace por mi preferencia ingresaré al enlace de pololu y acá podemos encontrar

[02:07] los controladores para sistemas operativos Windows sistemas Mac o sistemas Linux en mi caso me desplazar a las instrucciones para Windows y doy clic en el enlace para descargar el controlador para Windows una vez complete la descarga ubicaré el archivo comprimido provisionalmente en el escritorio y voy a descomprimirlo utilizando winrar con la carpeta descomprimida vamos nuevamente a la ventana del administrador de dispositivos damos clic derecho sobre el dispositivo de interés

[02:38] y seleccionamos actualizar controlador seleccionamos examinar mi PC en busca de controladores examinamos la ubicación donde tenemos la carpeta descomprimida con el controlador seleccionamos la carpeta y aceptamos luego damos clic en siguiente hasta completar la instalación del controlador y aquí ya podemos ver que Windows realizó la instalación del controlador de celicon labs para el chip cp2102 cerramos y ya podemos ver en el administrador de dispositivos que Windows reconoce plenamente nuestra

[03:11] placa de desarrollo esp32 y que le asignó de forma automática el puerto lógico com 4 al completar la instalación de los controladores abrimos nuestro software arduino bide les dejo en la descripción de este video el enlace de la página oficial de arduino para descarga e instalación de este software en su último versión en nuestro software de arduino vamos a archivo luego a preferencias y en la ventana de preferencias accedemos al icono de URL adicionales de gestor fe placas aquí

[03:43] accedemos al enlace para listar las URL de tarjetas no oficiales de arduino se nos despliega una ventana de internet en donde se listan de forma alfabética los recursos para utilizar tarjetas de fabricantes diferentes a arduino nos desplazamos hacia abajo hasta en encontrar el recurso para las tarjetas esp32 de la compañía expressive el cual tiene soporte para muchas variantes de las placas esp32 copiamos la dirección del enlace que se encuentra a su lado y lo pegamos en el gestor de URL de

[04:15] arduino separándolo con una coma de las otras direcciones URL que puedan estar aquí pegadas con anterioridad damos clic en aceptar y luego aceptar luego abrimos el gestor de placas y en la barra de búsqueda digitamos esp32 ubicamos el recurso para esp32 de expressive y damos clic en instalar tardará como máximo un par de minutos en realizar la instalación de todo este paquete una vez completada la instalación podemos cerrar el gestor de placas y podemos ver en herramientas placa que ya tenemos una

[04:57] nueva pestaña con la lista de todas las variantes de placas de desarrollo para el GP sp32 para nuestro caso vamos a seleccionar en las primeras opciones de la lista la que dice esp32 t module y en herramientas Puerto seleccionamos el puerto en donde el Windows reconoce está ubicada la placa esp32 en mi caso el com 4 solo después de seleccionar la placa esp32 en herramientas podemos ir a archivo ejemplos y podemos ver una pestaña adicional con un listado extenso de ejemplos relacionados con el esp32 desde ejemplos

[05:37] básicos para utilización de sus Pines gpio o hasta ejemplos de mayor complejidad con conexión wi-fi y bluetooth para internet de las cosas para este caso en el que cargaremos el primero de muchos programas vamos a la pestaña básico y abrimos el ejemplo blink para parpadear un LED en este ejemplo blink cambiaremos el pin de Led objetivo hacia el pin número cinco de la placa esp32 que es donde ubicaremos el led de acuerdo con nuestro esquema de conexiones entonces extendamos en el

[06:07] protobar del pin 5 o g5 de la placa esp2 con un cable puente y extendamos el p o tierra de la placa con un cable puente Y ubiquemos el bombillo led En este caso de color rojo con eltodo o la patita más larga hacia el pin g5 y con el ánodo o patita más corta ha el pin tierra o gnd y en nuestro software damos clic en el icono cargar para subir este código a la placa podemos ver en la salida del sistema un mensaje que dice conectando y Finalmente nos sale un error indicándonos que falló la carga

[06:44] del programa Esto se debe a que a diferencia de las placas estándar de arduino la placa esp32 cuenta con un botón de arranque con el que esta puede entrar en su modo inicial de arranque modo en que la placa puede recibir nuevos programas desde la computadora conociendo esta información vamos nuevamente a dar clic en el icono subir Y si nos fijamos en los mensajes de salida del sistema cuando veamos el mensaje conectando presionemos el botón de arranque manteniéndolo presionado hasta que en la salida del

[07:21] sistema veamos que inicia el proceso de escritura de la memoria indicado en porcentajes al completar la carga del programa ya podemos ver el LED parando de acuerdo con nuestro código culminando así nuestra primera de muchas interacciones con la placa esp32 un especial saludo
