# Lo PEOR que le ha pasado a Claude

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=dqGnwoK9gsI)
- **Canal**: hdeleon.net
- **Publicado**: 2026-08-17
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:23

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Qué tal? Mi nombre es Héctor de León. Con la llegada de la inteligencia artificial generativa, hay tanto humo en el ambiente. Imagina lo siguiente, Anthropic anunció hace unos días que iba a poner una marca de agua a los textos, pero no dijo cómo. Y a las horas había personas ya con repositorios de GitHub diciendo que lo pueden remover. Es decir, ni siquiera dijeron qué es lo que iban a hacer y esto ya estaban diciendo cómo darlo. Hay tanto humo en el ambiente que creo que realmente estamos

[00:21] viviendo en la época del steampunk. En este video, ahora sí, Anthropic ha dicho cómo va a funcionar su modelo para poner marca de agua en los textos. Vamos a analizar esta situación, si te van a cobrar más tokens, qué es lo que va a pasar con esto y bueno, y sobre todo si esto va a aplicar para todos los modelos. Así que déjame un pulgar arriba porque vamos para allá.

[00:39] [música] Ahora sí, Anthropic ya dijo cómo iba a funcionar sus modelos, qué implicaba la marca de agua y sobre todo para quitar varios mitos, ¿no? Y esto viene sobre todo para la parte de estar cumpliendo con la ley de la Unión Europea de inteligencia artificial. ¿Qué qué significa esto? Bueno, van a utilizar un método el cual va a poner una marca de agua que no va a tener ningún impacto, según ellos, en la calidad del contenido de los resultados de los modelos de Claude. La diferencia entre esto en

[01:08] texto con marca de agua y sin marca no será distinguible por las personas, es decir, que tú ni te vas a dar cuenta. No se va a añadir nada de texto y no hay caracteres ocultos. Alguien hasta ya está haciendo repositorios en los cuales te eliminaban esos caracteres unicode.

[01:20] Es decir, había tanto humo que estaban vendiendo una idea que ni siquiera todavía habían especificado cómo iba a funcionar esto, pero ya estaban vendiéndote la solución, la vacuna. Y también aquí vemos la marca de agua no requiere fichas, tokens, tokens adicionales y no será más cara. Es decir, que no te tienen que cobrar más.

[01:34] Ahorita vamos a ver por qué funciona cómo funciona esto y por qué realmente sí sí tiene sentido que no te cobren más. El La marca de agua no conlleva información identificativa, es decir, que no va a venir una parte de decir, "Esta este texto lo generó Héctor de León, este texto lo generó Pancho, este texto lo generó Juan." No va a venir eso y pues prácticamente va a La marca de agua no será especificada de específica de Claude, es decir, que la Unión Europea se lo va a hacer obligatorio a

[01:57] todas empresas de inteligencia artificial, todos los proveedores de inteligencia artificial van a tener que poner su propia marca de agua. Pero ojo, no va a ser el mismo mecanismo. Si tú pones una marca de agua con o mejor dicho, tú generas un texto con Cloud, no va a tener el la misma marca de agua que un texto generado con la competencia. Y ahora vamos a analizar cómo es que funciona esto. Los modelos de inteligencia artificial generativa funcionan de la siguiente manera. Tú

[02:17] ingresas un prompt, que es un contexto, y este contexto lo que esperas es que te dé la se evalúa la siguiente palabra o siguiente token, mejor dicho, a a seguir o probable a seguir en este texto que has dado. Y así se va haciendo la cadena siguiente, siguiente, siguiente, siguiente, detectando cuál es el token a seguir más probable. Cuando tenemos un texto como este, "El tiempo hoy ha estado frío", y lo más probable es que no te diga "Juan", o sea, Juan no tiene sentido aquí. Juan aquí no tiene

[02:40] sentido. Vas a tener un conjunto de candidatos, mejor dicho, el modelo va a tener un conjunto de candidatos probables a seguir. Y hay ciertos eh escenarios en donde los candidatos no cambian el significado de la frase. Por ejemplo, que te dé nublado o te dé gris no cambia el significado de la frase, es decir, tú cuando te dicen "El cielo está gris", "El cielo está nublado", tú lo relacionas, es el mismo significado, el mismo eh eh en tu cerebro estás captando el mismo significado a final de cuentas.

[03:04] En este tipo de escenarios es donde los modelos de Cloud van a hacer este tipo de eh la la del la marca de agua, dónde la van a poner, porque son escenarios que si decide que es nublado o es gris no cambia nada la frase o no tiene un riesgo en que cambie su sentido. Ahora, lo que va a hacer Anthropic es tener una clave que no van a decirte cómo la generan, porque a a partir también van a revelar una API en la cual vas a poder detectar si su texto si un texto fue generado con los modelos de Cloud en los

[03:28] próximos días. Lo que van a hacer ellos es tener una clave, la cual te va a dar, por ejemplo, la siguiente secuencia, una secuencia de de números, la cual va a ser en sí la firma de que fue generado con con estas herramientas, estos modelos. Vamos a tener a lo mejor un 2, un 3, un un 3, un 8, un 10, etcétera.

[03:45] Imagina que este 2 ya eh esa clave fue generada y ese 2 es la primera decisión que va a tomar el el en cuanto a la palabra que sigue. Entonces aquí tenemos que nublado es uno y gris es dos. Entonces, aquí ya la aleatoriedad ya no sería como lanzar un dado, sino que sería tomar la secuencia que sacó como clave y decir, "Okay, el primer la primera decisión va a ser este dos."

[04:03] Entonces, tomamos la palabra gris. La siguiente decisión va a ser entre los candidatos va a ser la la el número tres. La siguiente va a ser el ocho. La siguiente va a ser el 10. Y así de esta manera, cuando ellos tienen ya un texto generado que quieren analizar si fue hecho con alguno de sus modelos, ellos van a tener esta clave, obviamente la clave va a ser variante entre cada contexto, entre cada generación. Esta clave ellos la van a generar, no han dicho cómo, pero ellos van a tener una

[04:24] secuencia con la cual van a poder detectar cuál es la palabra que que está en tu texto y si tiene con esta decisión eh relación con la clave que ellos tienen para ver si es lo que pudo generar su modelo. Es como lo van a detectar. Es decir, que al final de cuentas para ti va a ser imperceptible porque la frase no pierde el sentido. Va a ser solamente tomado esas decisiones con esa clave que genera en textos que tienen bajo riesgo de cambiar el sentido, como es el tiempo hoy ha estado

[04:49] frío y nublado y o o gris y no cambia el sentido, va a ser lo mismo. Entonces, ese tipo de de situaciones es donde ellos van a hacer este tipo de decisiones y ellos van a poder detectarlo. Obviamente, los modelos de otras empresas van a tener su propia forma de generar las claves y esto a final de cuentas va a ser aplicado en los modelos que están trabajando en la Unión Europea y obviamente va a ser trabajado a en todo el mundo, no solamente con ellos. Así que es algo que se va a venir ya de ya, es un hecho, así

[05:13] que espéralo los siguientes en los siguientes semanas. Muchísimas herramientas en GitHub de cómo eliminar esto, cómo eliminar esto de la marca de agua de tu texto generado con los modelos de Claude. Que de seguro ya ahorita hay muchísimos repositorios de esto. Lo que también deja claro Anthropic es que la marca de agua no es 100% segura. De hecho, cuando utilizan la clave para generar la marca de agua, en sí solamente se responde la o se deja la pregunta, "¿Cuál es la probabilidad?"

[05:36] Es decir, no es 100% seguro, de que esto haya sido parcialmente escrito por Claude. Es decir, que la marca de agua no es 100% segura. Aparte, si tú modificas el texto, si haces eh modificación con otro modelo, también no se va a poder detectar si esto viene de Cloud, porque al momento que otro modelo modifica tu texto, ya le pone su propia marca de agua, así que ya ahora con las herramientas de Cloud no podrías detectar si fue modificado con otro modelo, por ejemplo, Gemini, etcétera.

[05:59] También otra de las cosas a que se que se hace mucho énfasis, es que hay ciertas frases que el 100% seguro en el contexto es solamente una palabra, ahí no va a aplicar esto de la marca de agua, de hecho ni siquiera va a ser detectado, porque es que hay seguro cuando tú pones 2 + 2 es igual a a qué, pues a 4, ¿no? Casi seguro te va a dar ese resultado. Entonces, ahí no se va a poder detectar la marca de agua. También otra de las cosas que tenemos que aclarar es que cuando tú tienes poco

[06:23] texto, la marca de agua también va a ser como irrelevante, no entre menos texto tengas, la marca de agua va a ser más borrosa, más difusa. Y en un texto más grande, la marca de agua va a ser más notoria. Ahora, si tú modificas el texto manualmente generado por una de estas herramientas, también ese texto va a tener cierta probabilidad eh de de de ser detectado que sí fue generado en un inicio con un modelo de inteligencia artificial, a pesar de que le hayas movido tú algunas palabras, porque al

[06:45] final de cuentas, tú la secuencia de Cloud va a poder detectar si tú dejaste alguna de las frases. Y como para ti es no no lo vas a poder detectar como cuando tú ves la marca de agua en un billete, pues bueno, no sabrías cuáles son las palabras que en sí son parte de esta generación con la clave. También otra de las preguntas como programadores es, ¿y el código? ¿Qué pasa con el código? ¿Recuerdas la frase 4 eh 2 + 2 es igual a 4? Bueno, este escenario es de muy alto riesgo cuando quieres

[07:09] utilizar la marca de agua. E igual en el código, cambiar una instrucción de sintaxis en el código puede ser de muy alto riesgo. Entonces, en la parte de código, la marca de agua va a ser muy difusa, muy borrosa, no se va a poder detectar tanto, a menos que tengas comentarios. En los comentarios sí podría la marca de agua ser más detectada, ya que ahí es una es prácticamente texto natural, lenguaje natural que se escribe en los comentarios. Así que si tú estás generando código, pues la marca de agua

[07:33] va a ser muy difusa en estos casos, por la situación de que es muy alto riesgo estar haciendo eh eh jugando con la aleatoriedad, con su clave, para que pueda decidir por otro tipo de sintaxis en la en la generación de tu código y bueno, final de cuentas el código entra en esa parte de alto riesgo de poder meter la marca de agua tan notoriamente.

[07:50] Y como ellos aclaran, ¿cómo puedo probar si un texto fue escrito por Cloud? Pronto ofreceremos un API para detección de marcas de agua. Estamos en proceso de definir los detalles de su implementación. Pues fíjate en Tropi, yo creo que en GitHub ya hay como 1000 tipos haciendo eh la detección de tu marca de agua y tú ni cuenta te habías dado. Lo a lo que voy es que a final de cuentas esta medida es curiosa eh porque a final de cuentas si tú modificas el texto pues la marca de agua se va

[08:11] haciendo difusa, ¿no? Yo creo que a final ellos están cumpliendo con la ley que le está obligando eh la Unión Europea y para quedar bien con ellos y tener a sus clientes siguiendo utilizando sus herramientas, pero en sí a final de cuentas sabemos que este tipo de cosas es una medida a medias, no creo que sea una medida como ellos lo han dicho, no es una medida 100% que pueda comprobar esto fue hecho 100% seguro con un modelo de de de de Cloud. Yo creo que va más por el tema de solamente

[08:33] cumplimos con tu ley y realmente sabemos que es una herramienta que a está medias, no es 100% segura, pero estamos cumpliendo con tu ley y es la forma que lo podemos hacer sin meter caracteres invisibles, sin meter eh etcétera de cosas. Así que usted qué opina, ¿cree que es una medida que es necesaria, cree que es una medida que está de más, cree que es un berrinche de la Unión Europea, cree que es una herramienta que realmente era necesaria en este punto?

[08:55] Decírmelo en los comentarios. Igual en este punto ya hay muchísimas herramientas en GitHub para hacer modificaciones de esto, lo van a mandar a otro modelo, lo van a modificar. Y también otra de las cosas que aclararon es que los modelos que ya están ahorita en uso van a ser modificados para tener la marca de agua, para poder para que todos los modelos que están en uso de Anthropic vayan a tener esta marca de agua. Y pues nada, si te gustó este video dejar un pulgar arriba, recuerda

[09:15] que esos pulgares de arriba me dan de comer, recuerda que todos mis cursos de programación están en Metal Code siempre 15% descuento con el Metal Code. Muchas gracias por llegar aquí. Adiós.
