# Llevé código generado por IA a PRODUCCIÓN

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=b15ferbj7KI)
- **Canal**: hdeleon.net
- **Publicado**: 2026-09-14
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:39

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Qué tal? Mi nombre es Héctor de León. Si las empresas de inteligencia artificial quisieran agradecer a los programadores por utilizar sus códigos para entrenar modelos de inteligencia artificial, estarían buscando la cura de la lopeesia. Muchos programadores estarían agradecidos por eso. Este video vamos a hacer algo real. Es decir, ya me hice una prueba de concepto en un video pasado que me quitó YouTube, pero igual te voy a explicar de qué trataba. Voy a pasar ese código, esa solución. Ahora ya

[00:26] al código que se va a utilizar real. Vamos a ver cómo eso, cómo lo hago. No quiero decir que esa única forma, pero es como yo trabajo y a mucha gente le importa ver videos más de cosas reales, cosas que sí salida a producción, no solamente demos. Así que déjame un pulgar arriba porque vamos a comenzar.

[00:50] Mi objetivo a alcanzar con la prueba de concepto era hacer un clasificador de documentos, porque yo busqué clasificadores de documentos que te digan, esta es una INE, esta es una licencia conducir, este es un pasaporte estadounidense. Era muy caro. Cobr 25 a 30 centavos de dólar. Si yo iba a utilizar esta aplicación 1000 veces al día, subía bastante el dinero, así que decidí hacerla mejor yo. Esto ya lo había explicado yo en otro video que YouTube me quitó y lloré toda la tarde

[01:16] en donde hicimos la prueba de concepto paso a paso, en el cual ya llegamos al punto de poderlos clasificar. Pero ahora el objetivo en este video es explicar cómo pasó todo ese código chilaquil allá al producto, a mi código que va a ser utilizado por usuarios. Yo lo que hice a final de cuentas es hacer plantillas, tener las plantillas que son oficiales del de cada institución gubernamental.

[01:38] Te dan una plantilla, este es un pasaporte, tiene estos pedazos, tiene estas partes y esa plantilla la utilizo junto con la imagen que va a subir la persona, que es de una credencial. Hago un prom, el cual explica qué es lo que quiero buscar, qué similitudes y que me regrese una respuesta esquematizada.

[01:56] Cuando tú utilizas un API de modelos, ya sea de Open AI, de modelos de lo que sea, modelos de paga, tú puedes esquematizar, decirle, "Yo quiero la respuesta de este forma, no quiero que me regreses el prom de respuesta, quiero que me regreses un Jason, por ejemplo."

[02:11] Entonces, aquí también te voy a explicar cómo es que puedes esquematizar que te regrese una estructura la cual estás esperando y de esta manera reducimos el indeterminismo que te puede regresar un promna y todo, ¿no? Directamente la respuesta ahí toda cruda. Vamos a ver en sí. cuál es el proceso que hice y cómo lo pasé ya ahora sí al código. En sí la la aplicación hace lo siguiente. Tenemos una credencial de una persona. Aquí está la credencial de la persona y el objetivo es indicarle si es una

[02:38] credencial, un pasaporte estadounidense, un pasaporte de Venezuela, una credencial mexicana, etcétera. Saber cuál es el documento al final o también si es un documento desconocido, es decir, que no es un documento el cual es clasificado bajo lo que yo necesito. Y bueno, el punto aquí lo que yo hago es mandar estas plantillas. Estas plantillas se mandan a el API, en este caso voy a utilizar el de Open AI con un modelo baratón que es el de GPT, en este caso 4.5, creo que es el que decidí al

[03:10] final. Puedes estar cambiando el modelo dependiendo tu necesidad, pero yo aquí en este tipo de cosas no te sugiero utilizar un modelo caro, un modelo que sea costoso, no vas a mandarlo Astra, o sea, no tiene mucho sentido.

[03:23] Ya, ya revisando es el cu o mini, con ese me fue bien. O mini. Bueno, esto puede cambiar igual el modelo puede cambiar. El objetivo es que yo a partir de la credencial que sube la persona mande junto con las plantillas junto con un prom. Mando el prom, mando las plantillas y mando también la credencial de la persona. Y lo que yo quiero es que me regrese esta plantilla es tal, es la credencial mexicana, es el pasaporte venezolano o es algo desconocido.

[03:54] Entonces aquí lo que era el trabajo rudo era hacer la prueba de concepto donde ya dijera, "Okay, esto sí es viable y ver el costo que me salía en el API, que al final de cuentas el costo me salió cerca de 2 centavos de dólar. muy diferente a los 25 30 centavos de dólar que me cobraba el proveedor. Entonces, ya teniendo el código todo espaguetti hecho, en este caso lo hice con chat GPT en con la aplicación Codex en escritorio. Bueno, ahora hora de pasarlo a la al código real, ¿no? Al que se va a

[04:27] utilizar. Y obviamente un espaguetti todo jedo pasarlo para el código a la estructura que yo estoy utilizando en mi proyecto que es real. Bueno, pues ahí es el meollo de este asunto. Una de las cosas que muchos se preguntan es, ¿es que ese código que me ha generado la prueba de concepto es bastante? es mucho, no le entiendo todo. Lo que yo te aquí recomiendo es primeramente que le digas este código que has hecho, quita primeramente toda esa basura que sobra porque cuando estás haciendo una prueba

[04:53] de concepto, mucho código se va quedando. El modelo va dejando código que ya ni siquiera se utiliza. Primero púlelo, límpialo, pélalo y después que te lo organice por archivos y pasos. Una vez que te lo organice por archivos y pasos, tú te puedes dar una idea de qué es lo que hizo y de esta manera analizarlo. A pesar de que a lo mejor va a ser mucho código que no entiendas en muchas ocasiones, trata de entenderlo, trata ver su objetivo y ver si realmente es lo que tú quieres. Una vez que yo ya

[05:21] clasifiqué todo esto, dije, "Bueno, todos estos pasos se pueden reducir a un método, el método llamado evaluar. ¿Y cómo lo voy a representar en esta aplicación?" Simplemente con una interface. la interface, lo que yo hago es simplemente darle un contrato antes de pasar el código. Este contrato indica que tiene que tener un método llamado evaluar y tiene que tener un deteo de entrada y un detto de salida. Este DTO de entrada va a tener lo siguiente, el pad de la imagen en temporal donde va a

[05:49] obtenerla temporalmente. Tenemos una carpeta temporal la cual se borra todas las noches y otro es indicarle el tipo de imagen para poder hacer una decodificación de la imagen, poder eh leerla si es PNG, JPG, etcétera. Y por último, el nombre del archivo, ¿no?

[06:06] Y la salida que yo espero siempre va a ser la misma, una salida en la cual tengamos esta información. es válido. ¿Qué tipo de documento es? Que es lo que me importa, la el nombre de la persona, si lo puede sacar, la confianza, cuánto fue el porcentaj porcentaje de confianza en esta eh extracción y la razón por qué sí o por qué no. Y aquí hago un énfasis.

[06:30] Hay muchas personas que cuando trabajan con datos confidenciales no lo saben, pero tienes que tener aquí el apoyo de un abogado que te haga un aviso de privacidad. tú no te lo hagas con chat GPT, no seas tan cabezón para que tu aplicación cumpla con las normas. Otro de los consejos que yo te doy es que si la foto de la persona no la necesitas, no la mandes. Puedes quitársela de la credencial, simplemente identifica el rostro, quítalo y ya ahí está. o quítalo por medio de posiciones de píxeles. Esto

[06:59] es prácticamente uno de los consejos que yo te doy para cuando estés trabajando con aplicaciones con datos confidenciales. Aviso de privacidad, que cumpla con todo lo de la ley, que apóyate con un abogado, no seas cabezón y también si hay información que tú veas que sea más crítica, pues no la mandes, porque cuando trabajas con proveedores terceros tienes que anexar toda esa información en tu aviso de privacidad.

[07:20] Yo no soy el experto, por eso ve con un experto que sepa todo este tipo de cosas, como en mi caso un experto que sabe todo este tipo de cosas es el que nos apoya. Ahora, ya que tenemos esta esta estructura de entrada y salida, todo el código que es un espaguetti, si se lo paso a un agente y le digo, "Esto explica estos pasos porque ya sé de qué trata." Tenemos que hacer la conexión a Open Tenemos que trabajar con este modelo, este prom tienes que trabajarlo.

[07:46] Lo más importante es que yo la respuesta la quería de manera lo más determinista que pueda. Y ya este es el código pasado de Open AI y cumple con mi interface, mi contrato. Y esto es lo importante, cumplir con la interface.

[08:01] Y las cosas que se mandan junto con las plantillas que te da la institución gubernamental, la imagen ya pelada quitándole información que no la necesitamos. Bueno, lo que vamos a hacer es hacer un prom, el cual, bueno, este prom tuve que pulirlo, no es mágico, prueba y error, prueba y error hasta llegar a mejores resultados. Y también este esquema, tú tu a tu proveedor API de que utilizas modelos de de paga, puedes decirle con un Jason esquema le puedes indicar que quieres esta salida

[08:29] de información en Jason, qué tipo de dato, cómo la quieres, qué es lo que significa. Aquí tengo yo unas constantes para que me digas si es una un tipo desconocido o las o los elementos, las plantillas que yo voy a utilizar, etcétera. Tú puedes indicárselo a al API. Yo quiero que la respuesta sea un Jason. No quiero que me des ahí toda la respuesta tal cual. Esto es importante porque de esta manera vas a detener mucho indeterminismo en las respuestas, ya que siempre va a buscar esta forma de

[08:57] regresártelo. Y ya una vez que tenemos esto en mi ya en un controlador cualquiera, lo meto por inyección de dependencia y simplemente utilizo el método evaluar, le mando la imagen y es todo. Ya con eso ya tengo resuelto el problema. siendo la imagen un objeto DTO, el cual tiene la información que espero y eh que tengo que recibir que enviársela a nuestra clase que implementa el interface y la respuesta es la la estructura que yo espero ya con la información que necesito. Eso es como tú puedes trabajar

[09:33] donde la caja negra es este código que está en evaluar. Esa caja negra puede ser reemplazada gracias a que tienes una interface. Después a lo mejor quieres utilizar un modelo local, a lo mejor quieres utilizar otro proveedor, bueno, simplemente ya tienes una interface que te ayuda a que el código donde está utilizándose este mecanismo siempre tenga la misma entrada, que es esta mismo DTO, y la misma salida que es el DTO, que se llama Identity Document Evaluation. Es por eso que yo he

[10:01] decidido mejor hacer la aplicación cuando me di cuenta que los proveedores que iba a utilizar también utilizaban modelos de inteligencia artificial y y que a su vez me estaban cobrando 10 veces más, dije, mejor hago la aplicación yo mismo y así utilizando mayor mañosidad me ahorro mucho dinero.

[10:19] Por eso la importancia de saber diseño de software, arquitectura de software, porque puedes darle mayor determinismo a ese código que te genera la inteligencia artificial. le puedes dar una guía, una estructura que se respete, qué es lo que quieres de entrada, qué es lo que quieres de esa líquida. Y a lo mejor mucho código va a ser generado con la inteligencia artificial y es código que no al 100% vas a entender, pero sí por lo menos sepas que hay no hay cosas maliciosas, o sea, no seas tan cabezón

[10:42] tampoco, sabes que va a respetar la estructura. Una interface es un contrato que le das a la inteligencia artificial para que lo respete y lo cumpla. Si quieres que haga más videos de este tipo de temas, decírmelo en la caja de comentarios. También si te gustó este video, dme un pulgar arriba y compártelo en tus redes sociales, ayuda bastante.

[11:00] Recuerda que todos mis cursos de programación están en Metal Code, siempre con 15% de descuento con el cupón Metal Code. El nuevo curso de diseño de software asistido con inteligencia artificial. Ya están saliendo las clases y bueno, aún tiene un precio que está rebajado. Cuando terminen de salir todas las clases va a subir de precio. Muchas gracias por ver el video. Adiós.

[11:23] [música] [música]
