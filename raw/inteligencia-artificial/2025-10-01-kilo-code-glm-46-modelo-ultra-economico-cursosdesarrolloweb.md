# Kilo Code + GLM 4.6: Modelo ULTRA ECONÓMICO que FUNCIONA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=V6EPzmp36iw)
- **Canal**: CursosDesarrolloWeb
- **Publicado**: 2025-10-01
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 13:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hola, bienvenido. En este vídeo vamos a ver cómo podemos intentar abaratar costes cuando estamos programando con IA. La idea es poder eh bajar estos costes al máximo, pero sin perder calidad. Para ello te propongo dos herramientas. En este caso, por un lado, Kilo Code. ¿Qué es Kilo Code? Si venimos a la sección de precios, veremos que primero es gratuita, que es open source y que es una extensión de Visual Studio Code que no tiene coste y no tiene restricciones. ¿Cómo la podemos

[00:24] utilizar? Pues simplemente venimos a Visual Studio Code, sección de extensiones, buscamos Kilo Code, le damos, la instalamos y ya la tendríamos lista. Una vez la tenemos lista, aparecerá esta pestaña donde vas a poder hacer la configuración. En este caso podrás seleccionar un proveedor, un vamos a utilizar Zi que te lo voy a mostrar a continuación y a través de cada proveedor tendrás una serie de configuración con una piqui, un modelo, etcétera. Lo mismo de siempre. Así que una vez tenemos Kilo Code instalado en

[00:52] Visual Studio Code, vamos a ver cómo podemos acceder a ZII. Esta plataforma tiene unos modelos que se llaman GLM. Ayer salió el modelo 4.6. Este modelo está pensado exclusivamente para programar. Tiene muy buena pinta. Lo he probado un poquito, funciona bastante bien. Y en este vídeo vamos a hacer una prueba para ver cómo funciona esto. Fíjate que te estoy mostrando el plan anual. El plan anual tiene un coste de $36. pagas una vez y tienes un año entero de acceso con $36. Si te vas al

[01:21] mes son $3, si te vas al trimestre son $9. Es super poco esto, el plan más pequeño, el Light. Luego tienes el Pro y tienes el Max. Depende de lo que necesites, vas a tener pues unas capacidades u otras. ¿Qué vas a tener aquí? pues vas a tener el modelo 4.6, que es el que te recomiendo, y luego aquí vas a tener pues la posibilidad de integrarlo con estas herramientas, en este caso, por ejemplo, Cloud Code o también Kilo Code, que es la que vamos a utilizar nosotros en nuestro caso. ¿Cómo

[01:49] empezar? Pues simplemente hay que venir a la página del Kickstart y aquí nos dicen que para obtener una API Key, que es como funciona todo, tenemos que visitar la plataforma, registrarnos o identificarnos. Te voy a dejar todos los enlaces en la descripción del vídeo para que los tengas. Acceder a la página de pago, crear un API en la sección de API Keys y a partir de ahí pues empezar a utilizarla. Puedes escoger un modelo, el que necesites, y ya está. Hacer la selección de lo que vayas a utilizar y

[02:16] bueno, en definitiva, aquí tienes todas las herramientas que puedas necesitar. En esta página nos explican un poco más y además nos dan instrucciones para hacer la instalación en cada una de estas herramientas, por ejemplo, en Kilo Code. Algo que muy interesante es que aquí si venimos y nos hablan del uso que está por aquí, los límites y nos dice que en el plan más pequeño tenemos eh 100 promps cada 5 horas. Más o menos son eh tres veces más que la cuota que hay en el plan Pro de Cloud.

[02:46] Luego en el Pro tenemos 600 cada 5 horas y en el Max tenemos 2400 cada 5 horas. Así que en cada uno de los casos se comparan con Cloud y nos dicen que nos ofrecen el triple de lo que nos ofrece Cloud. Todo esto contando con que los precios son superridículos. Estamos hablando de $ versus $, que es lo que vale el plan pro de Cloud. Dicho esto, para empezar lo que tenemos que hacer es venir a la sección de AP KIS. Una vez has creado tu cuenta, has puesto la tarjeta o el método de pago, lo que sea,

[03:13] ya puedes empezar a crear tus propias API Keys. Para crear una API, simplemente pues vienes a tu panel, a la sección de API Key List y aquí creas una nueva API key. Una vez la tienes, la copias, la pones en Visual Studio Code en Kilo Code y ya puedes empezar a programar. En este caso, fíjate la configuración que voy a utilizar yo. El proveedor va a ser el de ZI, que es el que hemos estado hablando. Aquí tenemos una serie de opciones como entry point.

[03:36] Puedes seleccionar el que quieras y probar. No los he revisado bien a fondo, simplemente voy a seleccionar este, luego introduce la API y el modelo que quieras utilizar. Bien, el último que salió ayer es el 4.6, que es el que nosotros vamos a probar.

[03:49] En nuestro caso, este es el proyecto en el que vamos a estar trabajando. Kilo Code GLM 4.6. Es un proyecto con Arabel 12, con PHP 8.4, 4 con My Sequel y la idea es intentar desarrollar una API de tareas sencilla, pero darle un prom para que pueda trabajar y a ver qué consigue.

[04:05] Antes de arrancar a programar, que sepas que en esta pestaña puedes seleccionar lo que realmente quieres que haga. Por ejemplo, arquitecto, planea y diseña antes de la implementación. Code, escribe, modifica y refactoriza código es la que vamos a utilizar. Ask para poder obtener explicaciones y respuestas. de back, bueno, para hacer diagnóstico y hacer fix de incidencias que podamos encontrar de ISUS. Y orquestitor, pues coordina tareas a través de múltiples modos. Bien, así que

[04:32] nosotros vamos a seleccionar code, pero que sepas que tienes un montón de opciones para poder seleccionar la que desees. Dicho esto, el prom va a ser sencillo. Crea una birre simple de tareas en la árabe del 12. Crew completo de tareas, título, descripción, estado, pending completed, end points, get post, put delete, que sea pitask, validaciones en for request, respuestas jon con API resource, códigos HD apropiados, My sequel, migraciones incluidas, código limpio y buenas prácticas en la Rabel.

[04:59] Así que con esto vamos a pulsar aquí y vamos a empezar a dejarle que haga el trabajo. Esto puede tardar un poco. Vamos a ir viendo cómo lo hace. Aquí nos empieza a dar un poco de información de todo lo que va a estar haciendo. Está bien porque todo lo hace en español. He visto que ejecuta comandos, cosa que GPT5 Codex no es capaz de ejecutar cuando cuando utilizamos su CLI. No ejecuta nunca comando, dice que está como en entorno de sandbox y que no puede hacerlo, así que bueno, es un poco

[05:25] rollo. Y bueno, vamos a ver qué es lo que lo que va haciendo. De momento lo que lo que va haciendo lo va mostrando aquí. Primero crea un archivo y luego te crea aquí el bueno, ¿no? Y lo que ha hecho ha sido crear el archivo API.php donde está generando pues un una ruta AP resource que está bien con el TASk controller que todavía no existe y lo ha importado aquí. Así que por ahí está bien. Ahora lo que va a hacer es crear eh una migración. Le voy a decir que no sé si le puedo escribir aquí eh

[05:53] utiliza en lugar de PHP. Voy a decirle a ver porque no quiero rechazarle, sino que quiero informarle. Entiendo, ¿vale? Y entonces lo hace bien. Utiliza Vendor Vinile Artisan Make Migration para crear la migración de de las tareas. Voy a decir que sí, que ejecute. Y con esto ha creado la migración. Y ahora, bueno, todo lo que vaya haciendo lo va a ir saliendo aquí. Nos va a ir pidiendo confirmación. Y bueno, la forma de trabajar me gusta más que la de la de Codex. La verdad que no tuve muy buena

[06:25] experiencia y sobre todo por la interfaz y por la por esa evasión, ¿no? Esa forma de no ejecutar comando, no lo entiendo, pero bueno, ya ha creado aquí la migración, ha utilizado, bueno, una columna de string para el título, texto para la descripción y un enum con estatus pending y completed, así que está bien. No me gusta utilizar enums, prefiero utilizar strings y luego castear en el modelo, pero tampoco le hemos dicho nada y es como normalmente se hace. Ahora va a crear el modelo

[06:51] task. Le vamos a decir que sí, que lo cree. A mí me gusta supervisar todo lo que hace la IA. No me gusta dejarle que lo haga todo, sino que prefiero hacerlo yo. Y bueno, lo que va a hacer está bien. Lo que pasa que aquí utiliza el atributo CAS en lugar del método, que es lo que tendría que utilizar, pero ni tiene contexto de nuestro proyecto, ni le hemos dicho nada ni nada de nada.

[07:10] Entonces, es muy difícil que pueda trabajar de otra manera. Sí, vamos a seguir. Ahora va a crear el for request request, así que está bien, está haciendo caso de lo que hemos dicho, que utilice un for request para llevar a cabo la validación. Ahora va a leer el tas request y configurar las reglas de validación. A ver si puede continuar y establecer las reglas. Tampoco es muy complicado, es poco lo que tiene que hacer. El autoriz retorna true, está bien. Y las reglas, pues esto de aquí

[07:34] que está bien. Tampoco lo hemos dicho que esto tiene que ser único ni tiene sentido, así que está bien. Y los estados los está revisando así. Está bien, pero lo podríamos hacer con un enum y de otra manera, pero bueno, funcionará. Así que le vamos a decir que sí y vamos a seguir para que cree el TAS Resource. Con esto podremos generar las respuestas para poder enviar esas respuestas ya con el modelo maquetado que queramos en la API. Así que también lo está haciendo muy bien. La verdad que

[08:00] de momento las impresiones son muy buenas. está siguiendo todo lo que estamos pidiendo y sobre todo no olvidemos el precio que tiene este modelo que estamos hablando de $3 al mes, 120 promps cada 5 horas con el modelo con el plan más bajo.

[08:15] Vamos a esperar a que termine de crear el Tar Resource. [Música] Bueno, finalmente ha salido un 400. Le voy a dar a reintentar porque la conexión últimamente no la tengo muy bien y puede ser que haya fallado por algo de eso.

[08:32] Ahora sí que ha vuelto a trabajar. Ya ha modificado el tarours. Aquí tiene el método toarray con lo que se tiene que retornar que está bien. El estado, la descripción, el título, el ID, la fecha de creación y la actualización. No es necesario, pero está bien. Ahora va a crear el controlador. Va a crear un controlador API está bien. No va a crear un controlador resource, sino API porque nosotros queremos simplemente los métodos de los controladores API. Así que le vamos a decir que sí, que

[08:54] continúe. Y este controlador, pues al final tampoco tiene mucho método, es el index, el store, el update, el edit y el delete, poco más. Así que vamos a esperar a que lo cree. Aquí está el index, el store, el show, mejor dicho, el update y el destroy. Aquí en el primero hace la paginación, así que está bien y convierte esto en una colección de tareas, eh, generando la respuesta.

[09:20] Añade también el tipado de respuesta, así que también está bien. Utiliza el T request y crea la tarea con los datos validados, así que está perfecto. Genera la nueva instancia del TAR Resource con la con la tarea que se ha creado y utiliza los códigos de estado, tal cual le hemos dicho. Aquí utiliza para el show el tarource, así que también está bien. El update lo hace perfecto también y el destroy también lo hace perfecto.

[09:43] Así que bueno, todo está bien. Vamos a decirle que sí, que ejecute migraciones. Aquí parece que hay algún problema. La tabla de task ya existe. Vale, le voy a decir que haz el eh fresh. Sí, así es como le hablo yo normalmente a Cloud Coke y normalmente me entiende.

[10:05] A ver si también lo entiende. Y perfecto, también lo entiende. Le vamos a decir que sí, que haga la bueno, que rehaga la base de datos con todo. Y con esto ya lo tendríamos todo listo. Nos dice que excelente, la migración se ha ejecutado correctamente.

[10:18] la lista de tareas, probar la API para asegurar que todo funciona correctamente. Ha creado todo esto. Ahora quiere probar la API. Lo que pasa que tenemos un problema, que no está registrando la ruta. Le voy a decir que eh no has registrado las rutas API.

[10:34] Estas rutas se tienen que registrar eh manualmente. Si no lo haces, no funcionará. Y lo hace bien, se va al archivo Boostrap app.php php y tiene que añadir pues el named parámeter este con el pad de del archivo de rutas.

[10:53] Aquí está. Ha añadido correctamente esto, así que parece que está bien. Ahora va a listar las rutas a ver si están bien registradas. Tendrían que estar todas bien registradas. Dice que no tiene ninguna. Vale, mejor que haga el roll list sin lo otro. Y por aquí sí que tienen que estar. Aquí están las Deltas Controller, así que está todo bien. Excelente. Ya están todas las rutas, así que se supone que lo tenemos todo. En nada y menos hemos conseguido pues algo que parece que funciona. Eh,

[11:19] ya está Sil corriendo. Voy a decir que no, que ya está Sil corriendo, así que no tiene que hacer nada más. Y lo que vamos a hacer ahora es probar rápidamente, en este caso con Bruno Client si todo funciona. Aquí tengo Bruno Client y lo que vamos a hacer es empezar por el listado paginado. Así que vamos a hacer la solicitud alpoint de tareas. Pedimos y aquí tenemos toda la información. Fíjate que no tenemos datos porque directamente no hemos creado nada. Así que lo que vamos a hacer es ir a crear. Para ello,

[11:47] aquí en el body ya tengo una tarea que es la que vamos a crear. Voy a darle formato a esto bien para que desaparezca ese error y simplemente es una primera tarea. Así que le vamos a enviar en este caso en estado pending y nos aparece que se ha creado correctamente. Así que ya tendríamos la tarea con ID1. Si vamos al detalle y buscamos la uno, enviamos, aquí tendríamos la tarea. Si vamos a actualizar y vemos el body, la cambiamos a completed, añadimos aquí esto y aquí esto. Si enviamos aparece como

[12:19] completada, se actualiza y se actualiza, así que está bien. Y si vamos al listado paginado y le volvemos a dar, ahora ya aparecería esta tarea. Además, si venimos a eliminar y eliminamos la uno y le damos, también se elimina porque aparece un código de estado 204 conforme no hay contenido, pero se ha eliminado.

[12:36] Así que en tan solo 12 minutos, desde el principio que he empezado la explicación hasta ahora, hemos podido crear una APIRES completa de una manera sers sencilla y sin ningún error en el proceso. Se ha creado toda la primera perfectamente.

[12:50] Así que le vamos a decir que ya está probado, 100% funcionando y que muchas gracias para dar por finalizadas pues todo el desarrollo y todas las pruebas que hemos hecho. Así que como puedes ver con Kilo Code instalándolo como extensión de Visual Studio eh Code de manera gratuita, sin restricciones y sumando a ello el modelo GLM 4.6, que además tiene unos precios tremendamente ridículos actualmente tiene suficiente para poder hacer esto y mucho más. Así que nada, espero que te

[13:16] haya gustado este vídeo, que te haya parecido interesante y nos vemos en próximos vídeos.
