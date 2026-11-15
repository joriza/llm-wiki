# ANÉCDOTA: Base de datos SIN RELACIONES y sin PK ☠️🔥Story Time

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=gNAQL-4hxUw)
- **Canal**: TodoCode
- **Publicado**: 2026-05-17
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:09

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya cuando empezamos con migraciones, se complica el tema. Una lluvia de dinero. Como le estaban esparciendo [música] plata a lo loco ahí. No tenía relaciones an caótico. No existía ni una sola llave primaria en las tablas. A la normalización lo usaron de papel higiénico. Un solo archivo llegaba a tener 25.000 líneas de código. El señor se puso violento y con permitían SQL injection. No, cuatro teléfonos, cinco teléfonos, seis teléfono nueve. Hola gente, ¿cómo andan? Espero que muy bien.

[00:28] Acá estamos en un nuevo vídeo de anécdotas de suscriptores de todo co. Y hoy tenemos una anécdota que la verdad hasta tengo capturas de pantalla para mostrar, así que se pueden mostrar, son legales, así que hoy les voy a contar lo que es la anécdota de Alberto, que es de Honduras, así que vamos a leer de qué se trata. Dice así, a ver. Hola Luisina, espero que te encuentres bien, soy un gran seguidor de tus vídeos, en especial de tus anécdotas. Qué grande Alberto, un gusto. Hoy te quiero contar una

[00:54] experiencia que tuve en mi trabajo hace algunos años. Trabajaba para un call center, el cual formaba parte de un grupo regional de varios países. Por tanto, compartían un software CRM enfocado en registrar las transacciones con los clientes. Era un programa ya empaquetado. Yo era encargado únicamente de soporte técnico a usuarios finales y algunos servicios como base de datos, llamadas, etcétera. Gente, paréntesis acá, los que no sepan qué es un CRM, básicamente es un sistema de gestión

[01:22] para clientes, para resumirlo. En algún momento la empresa con sede en mi país, Honduras, toma la decisión de separarse del grupo regional y volverse independiente, lo cual trajo grandes desafíos a nivel organizacional y tecnológico, ya que no terminaron en los mejores términos con el resto del grupo.

[01:38] Esos quilombos suelen ser bastante importantes. Dentro de estos retos era migrar el sistema que provee la casa matriz a una solución externa. Uy, migrar. Ya cuando empezamos con migraciones, se complica el tema. [risas] Teníamos varias opciones. Mi jefe, que en ese momento era jefe de tecnología a nivel país, tomó la decisión de contratar una empresa para desarrollar una solución a medida. Spoiler, fue un grave error. Ah, ya nos está dando spoilers, okay, okay. La empresa que

[02:04] contrató la seleccionó por afinidad con una persona que trabajaba para esta empresa. Hm, entre paréntesis, una dama de muy buen ver, si me entiendes a qué me refiero. Ay, el hombre cae por esa debilidad, eh, parece que eh ya en varias anécdotas pasa lo mismo. ¿Qué está pasando acá? Desde el inicio a mí me dejaron fuera del proyecto ya que yo era muy muy crítico de esta empresa porque conocía que trabajaba muy mal, ya era de común conocimiento. Así que mi jefe tomó la decisión de mantener más el

[02:31] margen necesario. Bien, el proyecto de migración desde el inicio era un caos. El cobro de desarrollo lo estaban calculando por horas de trabajo de los ingenieros, es decir, una lluvia de dinero. De lo poco que podía enterarme o ver los avances, estaban patinando de atrás hacia adelante, ya que no hicieron ningún tipo de análisis previo. Solo se lanzaron a codificar a lo loco, cual chat GPT con dos Red Bulls en su sistema.

[02:56] Solo para hacer el login del sistema, bien calculo que demoraron un mes. Para el login. Cómo le estaban afanando plata a lo loco ahí. [risas] Ya que este login debía tener autenticación de doble factor, algo que en algún momento no era tan sencillo como hoy en día. Estamos hablando del año 2013, pero que tampoco implicaba un obstáculo imposible, claro, como para un mes, tampoco eso. Para visualizar la información de un cliente tardaba fácil 30 segundos. Uy, es muchísimo. Poco a

[03:22] poco mi jefe me hacía consultas técnicas, ya que yo siempre programé desde antes de entrar a este trabajo, en Java y en C# con .NET. Así que yo de la mejor manera posible le comentaba que el sistema iba fatal. Y que el mayor problema no era la tecnología, o sea, no era PHP, sino la mala planificación.

[03:39] Para el proyecto habían asignado un programador fijo y otros dos asesores para consultas más complejas. Me comenzaron a incluir en las reuniones de avance y entregas, las cuales eran una vez a la semana. Desde la primera reunión que estuve, no me pude quedar callado y comencé a cuestionar muchas cosas. El jefe le conocía, sabía que él era cuestionador. Por ejemplo, las bases de datos, lo cual siempre fue mi fuerte.

[04:00] [música] Luisina no tenía relaciones. Ah, no. Gente, yo llegué a ver en un proyecto, una empresa en la que yo trabajé, que era un proyecto legacy, viejo, del 90 y pico, bases de datos relacionales, entre comillas, sin relaciones, pero se entendía, eran del 90 y pico, eran viejísimas y, bueno, justamente había que migrar. Pero ya estamos hablando del año 2013 y que las bases de datos no tuvieran relaciones es caótico. Es caótico, realmente, lo que está contando, si es una base de

[04:30] datos relacional, porque eso significa que había datos duplicados por todos lados, podía ser un desastre. No existía ni una sola llave primaria en las tablas. Yo no me lo podía creer y me quería morir cuando miraba eso. Sentí un dolor de estómago y náuseas. Dios mío, y eso que era no era el mayor de sus problemas, este. Al revisar el funcionamiento del sistema, me di cuenta que tenían una tabla que almacena la información de los clientes, la cual tenía datos como teléfono, dirección,

[04:54] número de cuenta, saldos. Esta tabla, cada vez que agregaba un teléfono adicional de un cliente, el sistema creaba una nueva columna. Ay, no. Es decir, si en la tabla existían los campos teléfono 1, teléfono 2, teléfono 3, el sistema le permitía al usuario crear una columna llamada teléfono 4 para crear el nuevo teléfono. A la normalización lo usaron de papel higiénico. Obvio, si las tablas no tenían ni llaves primarias, mucho, pero mucho menos la base de datos iba a estar normalizada. Aún hoy creo que

[05:21] escribiendo esto me da náuseas. Cada vez me iba involucrando un poco más con el desarrollador a cargo y él comenzó a analizar cómo funcionaba nuestro sistema. Genio. Lo interesante es que a medida que lo iba conociendo, me fui dando cuenta que tenía 3 meses de haber egresado de la carrera de ingeniería. No tenía experiencia laboral. El único proyecto en el que había estado era el del proyecto de graduación. Yo lo entendía, o sea, que él no estaba ni enterado de la negociación que había

[05:47] hecho con mi empresa, él solo quería sacar lo que podía y si el pibe no tiene la culpa, no, el chico no tiene la culpa. En un punto ya con varios meses, tres si no me equivoco, de desarrollo se habían sacado los modelos más básicos, como visualización de clientes, carga de datos masivas, documentación de transacciones y otros cuantos más.

[06:03] [música] Pero para hacerte una idea, de 30 módulos no tenían ni 10 finalizados. El plazo de las licencias que habían extendido con el software anterior era de 6 meses, es decir, ya tenían la mitad del tiempo consumido y la cuenta del desarrollo iba por las nubes, una exageración de plata y sin nada tangible para lanzar a producción. En este punto yo ya estaba metido hasta las rodillas en el proyecto. Logramos normalizar la base de datos y que funcione decentemente con procedimientos

[06:28] almacenados, funciones y triggers para desencadenar eventos para reducir el código necesario del back-end. Esto, claro, si existiera un back-end. Te explico, a medida que íbamos avanzando en un punto, el chavo que estaba como desarrollador me mostró lo que utilizaba para programar. No era un IDE, no era Visual Studio Code, tampoco existía, no era ni siquiera Notepad ++, o no. Ellos utilizaban un generador de código, una herramienta CASE de esas que traen código empaquetado y que tú lo podías

[06:58] adaptar según tus necesidades. Omito el nombre porque la empresa aún existe y podrían haber complicaciones, está bien, gracias, te agradezco por eso para no tener problemas. Para darte un ejemplo, la herramienta te podía generar un login, pero todo el código que creaba iba amarrado a una estructura de tablas y vistas en PHP, o sea, que era como un microservicio, pero solo un nivel de plantilla. Todo el código lo colocaban en archivos PHP donde iban a estar. Un solo archivo llegaba a tener 25.000

[07:24] líneas de código donde la mayoría era todo basura y se utilizaban solo un pequeño porcentaje. Cuando yo informé a mi jefe todo lo que había visto y que era imposible que finalizaran el proyecto en el tiempo que se había establecido, decidí agendar una reunión con el gerente de la empresa contratada.

[07:38] El día de la reunión llegó y el gerente, un señor de 1,50 y tantos, no se miraba muy bien de salud. Esto es importante tener en cuenta. Era el prototipo de los gerentes de antes, con su portafolio negro, camisa blanca y corbata. A medida que iba avanzando la reunión y se le demostraba que el sistema no servía, el gerente se iba calentando cada vez más, al punto que nos comenzó a decir "ladrones" y que no le queríamos pagar lo que faltaba al desarrollo. El señor se puso violento y comenzó a gritarnos y

[08:01] a tirar papeles que estaban sobre la mesa. Las oficinas eran de vidrio y todas las personas que estaban cerca vieron el show. Comenzamos a mostrar un informe donde tenía todos los puntos débiles del sistema. Sí, me tocó hacer un análisis completo. Dentro de este análisis incluí una falla de seguridad muy grave. Los inputs del login permitían SQL injection. Le dejaba en blanco la password a todos los usuarios y cerraba todas las sesiones a todos. Él no lo podía creer y me dijo "mentiroso"

[08:29] gritándome a la cara. A lo que procedí a compartir mi pantalla en el monitor, ejecuté el login con la inyección y bloqueé la sesión de todos los que estaban en el sistema en ese momento. En ese momento del impacto al ver que con ese simple comando le botamos todo el sistema y eso que no seguí por temor a dañar más el sistema, el señor comenzó a ponerse pálido. Estaba sudando frío. Le dio como un bajón de azúcar, le dio un microdesmayo, pensamos que iba a fichar con San Pedro, pero solo fue algo leve,

[08:56] gracias a Dios. Mi jefe inmediatamente me pasó un papel diciendo "cambia la clave de los servidores". Obvio, el tipo estaba como asesor, estaba conectado, así que le cerré la sesión de la terminal del servidor y cambié la clave.

[09:07] Inmediatamente se levanta y dice "no puedo entrar al servidor, ¿qué pasa?" Sabiendo que en ese momento lo estábamos dejando fuera para evitar que borren evidencia. Al final, el sistema no continuó, por supuesto. Lo malo, y a la vez bueno, es que me permitieron desarrollar un nuevo sistema a mí, comenzando con los módulos más esenciales y poco a poco desarrollar el resto. Esta experiencia me permitió formar un equipo de desarrollo dentro de la empresa. Hoy en día desarrollamos

[09:30] sistemas para uso interno e incluso externo. Mi jefe ya no es mi jefe, obvio, y soy yo el que está como gerente de tecnología, pero a nivel regional. El sistema y las versiones futuras quedó tan bien que vendemos las licencias. Hoy la empresa el 60% de su operación es desarrollo de software y ya no call center. Posdata, te dejo una imagen de la tabla que conté con las n columnas.

[09:53] Podemos mostrarlo con tranquilidad. Vamos a mostrarlo entonces. Y dice que hay 10 partes, me pasó solo cuatro y que espera que pueda leer su anécdota y que le encanta nuestro contenido. Saludos desde Honduras. A ver, vamos a ver de qué se trata la captura. Que tengo tengo ansiedad por ver. Es la primera vez que me pasan pruebas. A ver, vamos a ver de qué se trata. Gente, yo estoy mirando esto y es una locura. O sea, ID, ID, ID. ¿Cuántos ID hay?

[10:18] ID, identidad, tipo de saldo, tipo producto, tipo producto dos, tipo de cartera. Miren la cantidad de columnas. Teléfono celular, teléfono casa, teléfono trabajo. Teléfono referencia personal, teléfono referencia familiar, más teléfono. Miren acá. Teléfono uno va a ser seguro, teléfono dos va a ser seguro, teléfono tres, teléfono cuatro, teléfono cinco, teléfono seis, teléfono nueve.

[10:43] No, Dios mío. ¿Esto era una sola tabla? No, no, no, no. Y y la cantidad de datos mezclados, o sea, esto obviamente normalizado no está, pero y me dice que hay más partes. O sea, me pasó cuatro partes. Acá estoy mirando una de las cuatro partes.

[11:00] Esto en las consultas SQL será un desastre, hay error de integridad, hay reportes complejos que no se podrían hacer, hay lógica repetida probablemente. Esto es imposible de escalar después si queremos que el sistema siga creciendo. Y esperen, acá hay un detalle.

[11:14] Todo es character varying null. Eso significa que no hay tipos de datos para optimizar los tamaños de la base de datos, sino que son todos strings. Básicamente todos sean varchars. Ahora entiendo. A qué se refiere con la anécdota de No, no, no, a veces uno piensa que no, no puede ser que algo se haya existido y encima en el 2013, 14, que era año, me quedé sin palabras. Primero que nada, Alberto, te mando un beso enorme, muchísimas gracias por esta anécdota.

[11:42] Eh, se pone cada vez mejor esto. Qué anécdota que tiene de todo, a ver, no puso ninguna, eh, vamos a decir, moraleja, voy a crear yo la moraleja en este caso. Por lo que dio a entender Alberto, bueno, lo que hizo bien, creo yo, Alberto acá, y bueno, esto es como un consejo para ustedes, es que si el jefe decidió que él no formara parte del equipo y no le dio pie para que él se vaya metiendo, él hizo bien al quedarse a un costado, porque a veces nos pasa, me pasó a mí, creo que nos pasa a todos,

[12:11] de que cuando vemos que otro está haciendo las cosas mal, nosotros queremos ir y meternos y prevenir que eso pase. Y sin darnos cuenta, puede ser que eso que esté mal estén embarrados, o sea, están en el barro y nosotros que estamos limpitos nos metamos en el barro igual y liguemos de arriba, aunque no tengamos nada que ver. Entonces, lo que yo creo que él hizo perfecto acá es eh, advertir, le advirtió a su jefe porque él conocía la situación de la empresa, el jefe no le hizo caso, dijo, "No, vos

[12:38] sos muy contestador, vos sos muy, prefiero dejarte afuera." Él dijo, "Okay, me quedo afuera, lo miro desde afuera." Y cuando empezó a ver en las cosas de afuera y obviamente el jefe se dio cuenta, le empezó a consultar a él, él se empezó a meter recién cuando le dijeron que se meta. Creo que esa es la moraleja que puedo dejar acá de no meternos donde no nos llaman. Y cuando no, sí advertir, "Che, mirá, esto puede pasar, ¿sí?" Pero no meternos si no nos llaman. Y después cuando nos pidan que

[13:05] nos llamen, "Okay, dejame por escrito que vos me pediste que yo me meta." Para no embarrarme y después salir embarrado y que vos te laves las manos y le pegues una piña al micrófono como en todos los videos, diciendo que nadie pidió que yo participe. Así que eso, Alberto, espectacular y gracias por la captura. Y bueno, gente, no se olviden que pueden mandarnos sus anécdotas a tocoacademy@gmail.com con el asunto anécdota. Me la cuentan con la mayor cantidad de detalles posible, como que fuera la primera vez

[13:30] que le cuentan a alguien. Bueno, imagínenselo así, me la cuentan a su anécdota y yo para que yo la pueda leer. Nos vemos, gente, en un próximo video. No se olviden de poner Me gusta, suscribirse, darle clic a la campanita si quieren más anécdotas y no se olviden que en el primer comentario tienen una lista de reproducción con anécdotas de videos anteriores para que puedan deleitarse un rato con esto. Nos vemos, gente, en un próximo video. En todo con.

[13:53] Chao, chao. [música]
