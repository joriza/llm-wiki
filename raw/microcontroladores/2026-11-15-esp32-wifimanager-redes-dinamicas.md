# SERIE ESP32 #19: WIFIMANAGER Gestiona tus redes WIFI Dinámicamente

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RSKU4f5l9SA)
- **Canal**: Jadsa Tech
- **Publicado**: 2023-03-20
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:59

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola cómo están Bienvenidos a un nuevo vídeo alguna vez les ha pasado que tienen un proyecto desarrollado con sp32 o sp8266 y quieren probarlo en otro entorno en otro sitio en otra casa con una red WiFi diferente a la que está en el código del SP 32 o peor aún tienen un proyecto comercial que lo pueden vender a clientes pero no le van a decir a sus clientes Mira edita el código cambia las credenciales del WiFi con pila y sube otra vez el firmware al microcontrolador no verdad en este vídeo veremos Cómo

[00:38] solucionar este problema utilizando una de las formas más fáciles que hay que es utilizando un WiFi manager del cual se pueden encontrar varias librerías desde básicas hasta más avanzadas veremos en particular una de las más populares y balanceadas que de hecho comenzó con soporte para el s&p 826 16 hace varios años y luego amplió su compatibilidad agregando al SP 32 Obviamente que también podríamos implementar nuestra propia versión específica a nuestras necesidades a propósito de ello hace un

[01:16] tiempo he creado mi propio wi-fi manager que si desean y lo hacen saber en los comentarios puedo hacer un vídeo después mostrando cómo hacerlo paso a paso por supuesto que es mucho más tedioso y consume tiempo por lo que vamos a empezar primero con la forma más sencilla que es usar la librería entonces lo que vamos a hacer en este vídeo es Descargar la librería explicar un poco acerca de su funcionamiento después veremos un ejemplo en código con su respectiva demostración en un SP 32

[01:47] para que quede totalmente claro antes de iniciar concédame unos segundos para recomendarles a todos aquellos que están desarrollando una placa de circuito impreso para sus proyectos ya sea para el colegio proyectos comerciales el servicio de pcbway el servicio estándar que por solamente 5 dólares puedes conseguir hasta 10 placas de 10 por 10 centímetros un servicio muy bueno rápido económico y que yo mismo he utilizado en varios proyectos personales Y también en proyectos que he mostrado aquí en el

[02:23] canal Ahora sí Comencemos [Música] me encuentro acá en el repositorio de github de la librería que es del usuario sapo y como ven acá Tiene 1.249 commits Entonces está bastante activo el proyecto vean aquí tabla tronics y su commit y la librería como ven acá es compatible con sp8266 y con sp32 más abajo pueden ver su documentación bastante completa Es por eso que me gusta podríamos bajarlo desde aquí pero lo vamos a instalar desde los ides Así que pueden usar el arduino clásico o el ID 2.0 o

[03:15] incluso visual Studio copia igual Entonces vamos a ir a la library manager o al gestor de librerías y vamos a colocar WiFi manager ahí la tienen sapo vamos a instalar la última que es la versión 2.0 punto 15 Release candidate le damos instalar y Listo ya estuviera instalada lo voy a cerrar porque ya saben que a mí me gusta usar visual Studio code Así que igual Si estuvieran utilizando visual Studio code podrían instalarla y está instalada pero abro library manager vamos a buscar WiFi manager

[03:55] Ahí está y vean que ya está instalado ahora vamos a ver el ejemplo manager punto y no que está basado en el modo de uso básico que nos da la misma librería Está bien voy a esconder esto para que podamos ver más y lo que hace la librería WiFi manager es simplificar el trabajo de gestionar las redes wi-fi y permitirnos Conectar a una red de manera fácil y amigable para el usuario esto es importante sin tener que escribir las credenciales en el código ya que hacer esto lo hace bastante rígido ustedes

[04:28] saben entonces comenzamos arriba por incluir la librería en el Setup podemos si deseamos especificar el modo por defecto comienza en modo estación más Access Point estos modos ya lo habíamos visto en la serie sp32 o en la serie sp8266 Así que pueden verlo esos vídeos si es que desean profundizar sobre estos temas podemos decirles explícitamente que se conecte en modo estación ya que si no detecta una red WiFi conocida entonces lo que hace es cambiar automáticamente a modo Access Point para

[05:06] generar una red ahora vamos a iniciar nuestra comunicación serial para imprimir algunos mensajes en la consola y voy a usar el led que está incluido en mi placa en este caso voy a utilizar el loling de 32 tiene un LED en el pin 5 así que por eso voy a ponerle ledding lo bueno de esto es que ya me detecta automáticamente vean voy a ir acá y ven que lo Configura bien con el pin 5 si tuvieran otro Deep kit igual va a asignarles el incorrecto y si no pues bueno usan igual el número de Pin Al que

[05:45] está conectado luego lo voy a apagar porque es lógica inversa Así que le ponemos High y algo importante es crear una instancia WiFi manager para que luego podamos utilizar varios métodos útiles por ejemplo este reset settings si nosotros queremos Borrar todo lo que tenemos guardado del WiFi manager podemos utilizar este método lo voy a dejar activo para que borre todo lo que pueda ver ahorita en mi sp32 y hagamos una demostración desde cero este bloque de acá se activa cuando no

[06:17] se detecta una red WiFi conocida por lo que se va a crear una nueva o generar un Access Point con diferentes nombres podemos utilizar este método autoconnect directamente sin ningún parámetro y va a utilizar el ID del chip también podemos crear una con este nombre autoconect y esta no tuviera password Es recomendable utilizar esta porque le damos una red y aparte un pequeño paso entonces con esta respuesta podemos verificar si es que falló la conexión acá que podemos resetear Incluso si queremos el s&p o si

[06:54] es que se conectó que un mensaje con carita feliz y podemos imprimir la IP pero el framework es la librería directamente igual imprime eso en el monitor Así que lo voy a comentar y ahora pasaría si al Loop y correría este pequeño programa que es un blink del led eso sería cuando no se detecta una red wifi si es que la detecta entonces directamente desde esta parte del Setup pasaría al programa principal ahora vamos a subir el sketch al sp32 perfecto y vamos a abrir el monitor

[07:36] serial le voy a iniciar y le voy a dar un reset para que podamos ver los mensajes lo primero que hizo es borrar las settings con reset settings luego intentó auto conectarse a una red no encontró así que por eso falla y luego inicia un Access Point con esta ssd que habíamos especificado y el password también es del 1 al 8 y genera este portal web en esta dirección IP Así que ahora voy a entrar a mis redes y voy a buscar autoconnect perfecto voy a ingresar el password y nos vamos a conectar

[08:20] perfecto Abre directamente en la IP si es que no la abriera ustedes ponen 192.168.4.1 en el navegador ahora podemos entrar acá a configurar WiFi o info Vamos a entrar a info para que les muestre ahí por ejemplo el chip ID que ahí está si es que eligieran ese modo crearía una red con ese número que es un poco críptico por eso es preferible poner nuestra propio nombre de ese isid y hay algunos detalles más incluso la temperatura está las ips la versión de la librería me voy a ir atrás y ponemos acá

[09:01] configurar WiFi vean que en el monitor sería el imprime cinco redes encontradas entonces acá yo directamente puedo darle clic a la que me voy a conectar yo en este caso le voy a dar acá a mi red hatza y voy a introducir la contraseña y le voy a dar guardar perfecto vean ahora El Monitor serial accede a la nueva red y se encuentra conectado por lo que vean que el s&p 32 comienza a ejecutar el Loop con el código que habíamos escrito de parpadeo para el led building ahora como ya lo

[09:39] había dicho hay usos más avanzados y personalizados que se le puede hacer pero se requieren conocimientos básicos intermedio de html css Y javascript si ustedes quieren que haga un vídeo más avanzado pasando parámetros especiales o personalizados déjenlo en los comentarios por ahora eso sería todo Así que nos vemos en un próximo vídeo Chau
