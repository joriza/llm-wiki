# 🔥 Hackearon mi sistema… pero estaba preparado

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=iRNQELLy7F8)
- **Canal**: hdeleon.net
- **Publicado**: 2026-09-10
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:07

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Qué tal? Mi nombre es Héctor de León y quiero comenzar aclarando algo. Es probable que hayas visto que el último video ya no existe y esto fue porque YouTube lo quitó, lo quitó, lo eliminó. Y bueno, estoy muy triste por eso. De hecho, ayer me la pasé llorando toda la tarde en el baño viendo la miniatura, llorando y llorando, sabiendo que ese video ya no va a volver. Es por eso que te pido que en este video pongas un pulgar arriba para ponerme alegre y no volver a llorar toda la tarde, toda la

[00:26] tarde viendo las miniaturas de los videos que me quita YouTube. En este video vamos a ver cómo una buena estrategia en uno de mis sistemas previno un desastre, ya que el domingo pasado una persona quiso hacer cosas malas y pudo hacer algunas cosas, pero aquí vamos a ver también otro asunto que también es importante, cómo el usuario puede ser el más vulnerable. Así que déjame un pulgar arriba porque comenzamos.

[00:57] Esto comienza un domingo tarde noche, más noche que tarde, donde varios usuarios reciben un correo electrónico en el que dice, "Has sido hackeado, una imagen de un árabe, ya saben, y el nombre del hacker, ¿no? Es muy típico de esto de poner una imagen de cosas subnormales. Hay, no digo que el árabe sea subnormal, sino que son cosas que no tienen ni sentido con el hackeo, pero el punto es que reciben varios usuarios este correo electrónico. Lo primero que pensamos es han hackeado el sistema,

[01:24] pero cuando hackean un sistema o un sitio web, regularmente hacen esto sobre el sitio web, no en un correo electrónico. Y aquí es donde comienza el asunto, investigar qué es lo que pasó. Pero primeramente nosotros tenemos un mecanismo en el cual al momento que detectamos este tipo de situaciones, que bueno, es la primera vez que lo detectamos, pero ya lo habemos pensado para eso y ahorita te voy a explicar cómo porque necesitas ponerlo en tus sistemas, es votar la sesión de quien

[01:48] está dentro, si es que tiene una sesión. Pudo haber robado un token, inició sesión. Entonces, aquí era la investigación, cómo pudo entrar al sistema o qué estaba haciendo en el sistema. En el sistema que tenemos hay una módulo el cual tú puedes mandar un aviso. Este aviso cuando se manda llega por notificación y llega por correo electrónico. Y es lo que hizo esta persona. Pudo acceder al sistema y mandó un aviso y mandó la notificación. Y pues todas las personas que recibieron este

[02:17] correo pues se asustaron, fue un gran número de personas. Pero la ventaja que tuvimos aquí es que tenemos un mecanismo en el cual al momento que detectamos esto, pum, lo podemos votar. Simple, siempre viendo que cuál de la sesión, quién fue el usuario y lo votamos y ya no puede hacer nada. Le cambiamos la contraseña y ya está. Aquí la investigación fue la siguiente. ¿Qué es lo que estaba haciendo esta persona? Al principio vimos que solamente había hecho una noticia y algunos registros

[02:43] ahí, pero lo que notamos fue que esta persona que pudo entrar no tenía tanto conocimiento de programación o de hacer scripts, automatizaciones, porque todo lo que lo que hizo en el sistema fue hecho con formularios gracias a los logs. Como tenemos un sistema de logs, podemos detectar quién inició sesión, de dónde iniciaste sesión, a qué horas iniciaste, qué estás haciendo. Entonces, estábamos viendo que todo lo estaba haciendo con el sistema. Entonces, aquí la brecha de seguridad fue que pudo

[03:10] tener un usuario y una contraseña, algo que bueno, las contraseñas están encriptadas, ¿cómo pudiste obtenerlas? Y aquí donde haciendo ya más análisis profundo dimos con que esto pudo haber sido porque robó el usuario y la contraseña, cómo de muchas formas. De repente hay personas que bajan muchas cosas de internet, hay personas que que simplemente sus contraseñas la misma en todas partes. Entonces esta persona tenía acceso al usuario de la contraseña. Afortunadamente nosotros ya

[03:37] habíamos tenido un mecanismo el cual sirve para votarlo en el instante. Tú puedes tener tokens, los cuales puedan caducar cada 5 cada 5 o 15 minutos. Pero, ¿qué pasa si quieres votarlo al instante? Ahora te voy a decir cuál es el mecanismo que utilizamos. que al principio el susto es grande porque dices, "Oh, ya hackearon el sistema."

[03:56] Pero resulta que no hackearon el sistema, sino que hackearon la parte más vulnerable del sistema, que es el usuario. Tú puedes controlar la parte de tu sistema, la infraestructura, que los ataques de fuerza bruta, que lo que Dipés, puedes controlar todo eso, pero no puedes controlar lo que hace el usuario y eso es lo más peligroso, sobre todo cuando es un usuario que tiene privilegios para hacer cosas como esta, de mandar notificaciones a todas las personas que están relacionadas a él y

[04:21] todas estas otras personas. sin saberlo, creyeron que también están hackeados cuando solamente fue un usuario. Así que ahora te voy a explicar cuál es el mecanismo para votar la sesión a la persona que está haciendo cosas malas al instante. Lo más cuando estás utilizando un sistema que tiene frontend y backen o cliente servidor es que utilices un Jason web token para la parte de de autorización. te eh vas pasas el usuario y el password al backend, el backend te regresa un Jason Webtoken y lo guardas

[04:46] en local para que tú tengas eh acceso a los métodos de land points, ¿no? Bueno, ¿cómo se compone un Jason Webt que muchas personas quizás no lo conozcan y por eso voy a explicarlo rápidamente y vean el mecanismo. Tenemos un header que explica un header que dice cómo va a estar conformado el Jason Web token, qué tipo va a ser, qué algoritmo se va a utilizar. Tenemos un payload que esto tú lo puedes leer, está en base 64 regularmente o lo común y esto lo lo puedes leer en tu frontend tal cual. O

[05:15] sea, no necesitas eh nada drástico para leerlo y es la idea que puedas leer esta información para que tú te en Fronen sepas quién es la persona, etcétera, sin poner datos sensibles como contraseñas o cosas así, solamente la información que necesita el fron. Y tenemos otra tercer parte que es la firma. Si alguien modifica esto de aquí que se puede leer, la firma le detectaría que se ha sido modificado el cuerpo, el payload. Bien, entonces un Jason Web token funciona o su objetivo es que funcione

[05:45] independientemente del backen. Esto quiere decir que una vez creado ya el backen no tenga que ir a la base de datos a comprobar nada. Esto tiene un gran problema. Al momento que tú tienes un Jackson Web token y este es raptado, eh una persona puede seguir utilizándolo hasta que caduque. Este este Jason Webtoken también tiene una aspiración y si la persona tiene el token, lo ha raptado, porque hay muchas formas de raptar un token, sobre todo con extensiones o programas que son

[06:12] maliciosos, pueden robar todos los tokens guardados en tu navegador, pueden estar siguiendo utilizando este token. Entonces, ¿cómo es que nosotros pudimos hacer un mecanismo en el cual esto pudiera matarse? Hay varias formas y la que más se te ocurre a ti, pues bueno, guardarlo en la base de datos, ¿no?

[06:29] Bien, es lo que hicimos, pero hay base de datos distintas. Hay una base de datos, por ejemplo, que se llama redis, que es de rápido acceso y puede ser utilizada este tipo de base de datos. Es rápido acceso, no está involucrada tu base de datos principal y sirve para tener un acceso rápido, que el sistema ni siquiera lo detecte, porque es su objetivo, una base de datos tipo caché.

[06:48] es para que sea muy rápido, pero lo que yo te sugiero o lo que nos ha servido es no guardar el Jason Web token completo, sino guardar un identificador único. Este identificador que está aquí es un identific identificador único o guardar un identificador serial que vaya 1 2 3 por cada usuario. Esto solamente se guarda en la base de datos. Entonces, tú cuando recibes el yung web token, vas a comprobar con el payload la información que estás que que sea de la versión del token del usuario que está activa.

[07:21] Solamente puedes tener una o dependiendo tu sistema como esté administrado las versiones que están activas. También otra forma, esta es la forma que nosotros utilizamos, hay otra forma de de también poder botar los tokens que es hacer una lista negra, la lista negra de tokens que ya están baneados. Entonces, cuando ese token está baneado, tú compruebas, ah, este está baneado, este ya no tiene permiso y ya le mandas un no autorizado. Nosotros hicimos algo como guardar un identificador del paylot y

[07:47] comprobar si sigue activo ese Jason Web token. Entonces, cuando detectamos que había alguien adentro, el mecanismo ya existía. Y este mecanismo lo que lo que fuimos a hacer es ir a la base de datos y matar el token, matar la sesión y simplemente ya la siguiente solicitud que hiciera cualquier endpint ya no podía hacerla. Y aparte de eso tenemos otro segundo mecanismo, el cual es en la de lo que es el frontend, está un interceptor, que es un prácticamente algo que se puede ejecutar tanto al

[08:19] inicio de una solicitud HTTP o al final de la solicitud HTTP. Aquí lo que vemos con el Interceptor es si recibes un 401 no autorizado para un endpint, bueno, la quitamos la sesión y lo mandamos al login. Entonces, de esta manera, la persona que está allá dentro del usuario, en el instante que nosotros vamos a a nuestra data, nuestra base de datos, a borrar que el token ya no es válido, lo bota tal cual, porque la siguiente solicitud que haga un F5, un un cualquier clic que haga lo va a votar

[08:48] al login. Esto solamente es un extra para que lo puedas tú contemplar y sobre todo para que a la persona la votes y ya no pueda entrar. Cambias la contraseña, revocas el token y ya no puede hacer más. ¿Y qué? ¿Aprendiste algo? Si aprendiste algo, decirme en la caja de comentarios. ¿Quieres que haga más videos de situaciones que me pasan y cómo se resuelven en el día a día como programador? También decirlo en los comentarios. Y aquí llegado a este punto es donde viene una persona a decir, pues

[09:15] yo lo hubiera hecho de esta otra forma, lo estás haciendo mal. Y es donde yo diría, pues está bien, pero no me importa. Recuerda que uno de los peligros más grandes es la vulnerabilidad del usuario mismo. Y tu sistema, por más protegido que esté, si le roban sus credenciales, pues bueno, igual van a poder entrar a tu sistema.

[09:31] Hay que tener un mecanismo para prevenir el mayor desastre que puedan hacer cuando ya tienen esas credenciales. Recuerda que todos mis cursos de programación están siempre en Metal Code. Con el cupón Metal Code puedes utilizar 15% de descuento tanto en compra de membresía como de cursos.

[09:45] Muchas gracias por llegar hasta aquí. Adiós. [música] [música] [música]
