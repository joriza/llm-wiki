# Crea Web APIs con Python y FastAPI paso a paso

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=wPJ7q2V4s3Y)
- **Canal**: Open Sessions
- **Publicado**: 2021-01-02
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:31

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hola y bienvenido a este nuevo pen sessions en este vídeo vamos a hablar acerca de fast up y un framework para implementación de web app y sin python implementar un nuevo app y puede ser bastante sencillo si no me lo crees acompáñame a lo largo de todo este video y conoce a xavi un framework para implementación de huelva peace súper eficiente en python si aún no estás suscrito al canal te invito a que lo hagas activa todas las notificaciones y disfruta de este y muchos vídeos más

[00:45] bien en nuestro ejemplo vamos a implementar un método de cinco métodos de nuestra app el consumo de la información lo vamos a hacer a partir de una variable que contiene un jason esta variable nos nos va a permitir tanto listar la información que tiene no es cierto nuestro jason como agregar un nuevo elemento a este jason haciendo uso del método post por ejemplo lo primero que necesitamos es un ambiente virtual en donde podamos instalar las dependencias del proyecto lo llamamos n b y vamos a utilizar la

[01:26] opción 3 de paita cerca proyecto únicamente va a necesitar dos dependencias la primera dependencia que es falsa y con toda la implementación digamos que necesita no es cierto nuestra a pie y la segunda es ubicar que es el servidor con el cual vamos a desplegar la aplicación aquí cabe recalcar que el sapi no tiene un servidor de pruebas integrado como sí lo tiene por ejemplo de django flash sin embargo eso no es un problema porque uvi con se integra muy bien le hace funcionar muy rápido y la otra

[02:07] ventaja es que de paso estamos trabajando ya con un servidor que tranquilamente nos sirve para hacer nuestro paso producción por ejemplo procedemos de instalar las dependencias happy [Música] y ubi corn no vamos a hacer referencia a ninguna versión en especial de ninguno de los dos paquetes vamos a instalar la última versión que nos viene por defecto con el gestor entonces ya con el ambiente virtual y las dependencias vamos a crear el archivo main punto apple en donde vamos a hacer toda la implementación de la

[02:47] quiero que presten atención y se fije en lo sencillo que va a ser la implementación y las pocas líneas de código que vamos a tener justamente para llegar a tener una api bastante robustas lo primero entonces de fase te falta vamos a importar fast y vamos a importar jason para poder trabajar justamente con jason veamos una variable app y va a ser igual jason con lenguajes de programación quedaría de la siguiente manera entonces básicamente tenemos 5 elementos con 5 lenguajes de programación y estos

[03:43] van a ser los que podamos listar los e ingresar nuevos elementos a este 6 ahora lo que nos queda es implementar los dos métodos tanto el get como el post nuestro método que va a hacer referencia a qué sucede cuando desplegamos no es cierto la dirección raíz entonces utilizamos el decorador el app decimos que queremos utilizar el método get como parámetro vamos a indicar la raíz el mercado rise lo que va a hacer es vamos a tener básicamente que cargar el diccionario porque es un diccionario en

[04:29] realidad datos transformarlo string y devolver en formato 6 manera ya está en formato string y aquí vamos a retornar con jason punto los hearts con esto entonces ya estaría listo nuestro nuestro método get fíjense son básicamente tres líneas de código y si sumamos la implementación original y los importes no tenemos más que 10 líneas de código incluyendo espacios bastante rápido con esto nosotros ya podríamos inicializar el servidor y ver qué pasa cuando se ejecute o cuando se despliegue nuestro nuestro

[05:14] servicio en la dirección raíz de efecto ubicó se despliega en el puerto 8000 las líneas de entonces de para desplegar nuestro servidor ovh y con quedarían de la siguiente manera ubico mein concierto haciendo referencia al archivo del cual voy a leer dos puntos a pepe en la variable que tiene la implementación de el api y vamos a utilizar la opción menos menos filos para que todos los cambios que vayamos realizando automáticamente se vayan refrescando y no tengamos que estar parando el servidor iniciando nuevamente

[06:04] aquí hemos puesto ya la dirección de nuestro servicio con el tipo que es get hacemos un set y automáticamente tenemos ya la respuesta para el caso del método post vamos a tener que hacer dos ajustes el primero es instalar una nueva dependencia para el proyecto vamos a instalar entonces payton que un medio múltiple y te hacer el par sin la decodificación de la información que recibamos el método post y la segunda modificación que tenemos que hacer es agregar además de fasa para el puesto definimos el

[06:55] método lo vamos a llamar agregar vamos a recibir ahí la petición de ser algo bastante rudimentario por decirlo así entonces vamos a crear una nueva variable que se llamen nuevos datos a ser del tipo diccionario vamos a crear una variable que nos permita recibir los datos el método post entonces vamos a llamar el formato variable x el de quest vamos a recibir el forma aquí vamos a crear una variable igual a 1 que básicamente nos va a servir para ir generando los nuevos datos a partir

[07:50] 61 original vamos a hacer como si fuera un duplicados únicamente para tener el huevo y el ingreso así es que estos fueran capaces humanos [Música] en el caso [Música] vamos popular precisamente para que al final del fort no se quede simplemente el valor del nuevo índice deberán tomar en elegir tus en euros datos en la posición y porque tienen la última posición [Música] información vamos a hacer por más que venga la información de los 4 [Música] tenemos nuestro agregado [Música]

[09:33] y punto y [Aplausos] un dato adicional a tomar en cuenta es que aquí el método o más claro los métodos de fase y pueden ser síncronos wazin cronos entonces para el caso del post es necesario decir que el método va a ser a 5 para que nosotros podamos ir manejando y controlando cuando ya llegue la información desde el envío de información entonces declaro mi método de tipo asíncrono y la respuesta del leaf quest voy a agregar la palabra a wait para esperar que me llegue la información de

[10:27] modo que no se produzca una excepción y básicamente estoy controlando el flujo de la información que viene o que llega a mi método agregar bien entonces en el post man he agregado ya el la url en donde está escuchando nuestro método post el método no es cierto de tipo post y aquí en el body en la sección foronda está ingrese la variable nuevo lenguaje que es la que definimos no es cierto en nuestro nuestro método post en nuestro método agregar y como valor desde el nuevo lenguaje que voy a dar que voy a

[11:09] enviarle está el lenguaje göttling bien cent y por favor no se olviden de arrancar no es cierto el servidor y fíjense tenemos entonces los cinco lenguajes que habíamos simplemente que habíamos definido no es cierto en nuestro jason más el sexto quin scott y esto ha sido todo en este vídeo por favor déjenme saber en sus comentarios qué les pareció la implementación de este framework así es que quieren ver más vídeos acerca de esto qué tipo de implementaciones gustaría por ejemplo o trabajar con base

[11:56] de datos o análisis comparativo con los otros frameworks y cosas por el estilo también si es que les gustó el vídeo no olviden dar su like y si aún no estás suscritos suscríbete también al canal activar la campanita activa todas las notificaciones y por supuesto siempre nos gusta saber acerca de ustedes recuerden que todas estas acciones me ayudan a que el vídeo se posicione de mejor manera y podamos llegar a muchos más programadores que tal vez necesitan también este conocimiento
