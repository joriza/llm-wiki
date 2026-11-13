# 🔥 ¡C# 15 YA ESTÁ AQUÍ! Estas son sus NOVEDADES

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ryRpsa0TAis)
- **Canal**: hdeleon.net
- **Publicado**: 2026-11-10
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:24

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] ¿Qué tal? Mi nombre es Héctor de León. En este canal antes tú venías a ver videos de .NET. Este es un video de .NET, pero lamentablemente con el tiempo me di cuenta que muchas personas dejaron de ver estos videos porque fueron personas que se fueron quedando calvas.

[00:14] Así que las personas que siguen con cabello este video les va a gustar. Ha salido .NET 11 este día y las novedades también vienen junto con C# 15. Así que vamos a ver las novedades del lenguaje de programación C# 15, novedades que ni siquiera los modelos de inteligencia artificial por ahora conocen, así que es importante conocerlas para que las puedas aplicar en tus prompts y para que te sientas todo un máster del C#. Así que deja un pulgar arriba porque este es un video de lenguajes de programación

[00:39] para que te sientas como en los ochenta, la MTV de la programación. Vamos a comenzar por la novedad del tipo union, que es un tipo que ya existe en otros lenguajes de programación, que prácticamente es un dato que representa varios tipos de datos posibles, pero solamente la información, la variable que va a evaluarse con este tipo solamente puede tener un tipo. Pero, por ejemplo, podemos tener un tipo que categorice tanto un string como un int y ponemos ese union en una función,

[01:13] permite tanto que mandes un entero como un string. Bueno, para hacer un ejemplo rapidísimo vamos a hacer un record. Recordemos los records son prácticamente objetos inmutables. Hago hago aquí un record llamado Success que recibe que tiene un un elemento llamado Message, hago otro llamado Error que tiene un elemento también llamado Message y por último voy a hacer debajo un tipo Union, que es la novedad de C# 15, la cual va a decir, bueno, este Union llamado Result puede ser Success o Error. Bien,

[01:42] entonces acá arriba me voy a crear una variable del tipo Error, de digo, del tipo Result, del tipo Result la cual puede ser Success o Error, por lo cual yo puedo decirle, bueno, vamos a crear un objeto del tipo Success que va a ser un tipo record inmutable. Le mandamos lo que nos pide en su constructor que es Guardado. Y por último vamos a poner una de evaluación, la cual ya existía en C# vamos a poner que en la variable message me regrese con la condición con la evaluación switch, vamos a evaluar qué

[02:10] tipo es el union que estamos utilizando y lo podemos hacer de la siguiente manera, simplemente aquí especificando si es del tipo success, regrésame un string que tenga concatenado al principio success. Si es del tipo error, entonces regrésame un string que esté concatenado con la palabra palabra error. Ponemos punto y coma y ya podemos evaluar nosotros con un console.writeline aquí debajo y está. De esta manera nosotros ya podemos poder podemos obtener o mejor dicho, recibir

[02:38] información de diferente tipos, las cuales están agrupadas en un tipo, en este caso result. El tipo success y error están categorizados en result, por lo cual son válidos para el momento que queremos nosotros crear un objeto del tipo result. Podemos crearlo con el tipo success o con el tipo error. Si corremos el programilla, aquí dice success guardado, porque es del tipo success y es válido porque es parte de los tipos de de la unión de result. La siguiente característica es llamada labeled break

[03:05] and continue, que lo que permite es salirte de un ciclo anidado con un break. Ya no tenemos que poner doble break si queremos sacar directamente salirnos de todos los ciclos que que estén anidados y, por ejemplo, vamos a poner primero un tag, una etiqueta, tú puedes llamarle, en este caso outer, le vamos a poner un for que vaya del 0 al 10 y enseguida enseguida vamos a anidarle otro for interno, el cual va a tener la la letra famosa J que te ponen todos los cursos y en cada iteración yo

[03:34] voy a poner aquí que va de J 0 a 10, voy a poner un console.writeline que que imprima el I y el J. Si yo esto lo ejecuto, ponemos dotnet run, vamos a ver que esto se va a ejecutar tantas veces, bueno, aquí va a fallar porque tengo un outer, bueno, no falló, pero bueno, aquí vemos que se ha ejecutado, bueno, desde el 0 al 9 y del 0 al 9 tanto de la I como de la J.

[03:55] Por lo cual podrá haber una condición aquí internamente en el for que está dentro, la cual diga, bueno, cuando la I sea igual a 3 y la J igual a cinco, ya, salte, pero salte completamente también del for de afuera, por lo cual aquí yo puedo decirle, bueno, rómpete, pero rómpete hasta la etiqueta outer que está acá. De esa manera vamos a ver cómo esto al ejecutarlo va a solamente correr hasta el punto de llegar al tres en i y a al j en cinco. De esta manera evitamos tener acá lógica afuera para también

[04:24] romper el ciclo que está exterior. Esta etiqueta outer la puedes llamar como tú gustes, yo la he puesto pato, por ejemplo, y también esto funciona, si la ejecuto funciona, solamente un tag que te sirve para identificar hasta dónde hay que romper. Otra de las características agregadas a C Sharp 15 son las llamadas close har x o jerarquías cerradas, que lo que permiten es que puedas restringir una clase a que solamente puedan heredar elementos de su mismo ensamblado. Y esta sintaxis es la

[04:51] siguiente, por ejemplo, tenemos aquí una clase llamada order status y yo la estoy poniendo close, es decir, que con esto yo ya estoy bloqueando que otro ensamblado, otra biblioteca de clases, por ejemplo, no pueda hacer herencia sobre esta clase, pero dentro del mismo ensamblado sí puedo hacer, por ejemplo, esta esta parte de herencia, puedo crear más status, en este caso más clases que que signifiquen [resoplido] status de heredando order status, pero si yo hago esto en un proyecto de ensamblado

[05:19] diferente, una biblioteca de clases ajena a este proyecto, no me va a permitir. Esto sirve sobre todo en el diseño de software para que tu biblioteca cierre el diseño, cierre el diseño y no permitas que existan otras funcionalidades heredando de lo ya existente. Esto nos ayuda sobre todo para hacer más predecible las cosas que estamos nosotros metiendo dentro de un empaquetado, un ensamblado. Otra característica interesante de C Sharp 15 son los extension indexers. Es prácticamente darle el indexador a un

[05:53] tipo que no lo tiene. Y cuando digo el indexador son esos corchetes para poder acceder por posición. Por ejemplo, cuando tenemos nosotros un innumerable aquí del tipo numérico, el este no puedo yo acceder de la siguiente manera, por ejemplo, si yo hago un console.WriteLine, yo no puedo acceder por sus por por la posición con los corchetes porque no existe en ese tipo.

[06:13] Pero con el extension indexer o la extensión eh los indexadores de extensión, podemos hacerlo de la siguiente manera. Vamos a hacer nosotros aquí la extensión de la siguiente manera. Vamos a poner public static class en este caso puedo llamarlo como yo quiera, my extensions, el nombre de tu novia, como tú gustes. Enseguida vamos a poner la sintaxis extensions y el tipo que vamos a agregarle esta funcionalidad de indexador y enseguida también le voy a especificar qué va a hacer con los enteros, con los números.

[06:38] Y aquí dentro lo que voy a hacer es especificar cuando accedan por medio de corchetes qué es lo que va a hacer para que obtenga la información adecuada. En este caso voy a ponerle aquí dentro una con la palabra reservada get seguido de la obtención del elemento con un método existente en enumerable, que en este caso es element at. Y si te fijas acá ya se ha quitado el error. Si esto yo lo compilo, dotnet run, vamos a ver que funciona y va a la posición, en este caso la posición primera que es el cero,

[07:08] va por el 10. Igual esto ya lo podría hacer con otros elementos, por ejemplo el uno y ya funcionaría con esta sintaxis de corchetes. Aquí nosotros solamente hemos especificado que trabaja con enumerables del tipo entero. Ponemos el int. Si yo si pongo un tipo string, esta extensión no sirve. Mira, me marca error. Pero esto lo podemos arreglar utilizando los generics ya existentes en C Sharp cambiando aquí en extensions vamos a poner un menor que, la t, le ponemos aquí que va a ser la t en lugar

[07:36] de int y vamos a poner aquí en el relemento regresado aquí vamos a poner que lo define al momento que se otorga el tipo. Y de esta manera fíjate que ya se me ha quitado el error y ya podemos trabajar la extensión con diferentes tipos de datos en el enumerable. Y vemos que va por la segunda posición porque le he puesto un uno y va por Luis. La siguiente característica que vamos a ver es la collection expression arguments, que lo lo que hacen nos permite pasar argumentos al constructor de una

[08:01] colección directamente desde que estamos definiéndola con los corchetes. Vamos a verlo con un ejemplo primero cómo se hacía anteriormente. Por ejemplo, si yo quiero crear una colección rápidamente con sus valores, hago algo como esto, ¿no? List in number y los números. Bien, perfecto. Pero, ¿qué pasa si yo quiero reservar un espacio de la capacidad de mi colección? Bueno, tengo que hacerlo de la siguiente manera. Pongo en lugar ya de los valores, pongo aquí el listado y le mandamos a su constructor la

[08:30] capacidad de 100 y los elementos los tengo que agregar acá debajo con el método ADD. Bien, mucha sintaxis, ¿no? Mucha sintaxis para definir solamente un tamaño y agregar ciertos valores que se repite aquí código, el punto ADD, punto ADD, punto ADD. Bien, con la collection expression arguments todo esto lo podemos reducir a lo siguiente. Como podemos pasar no solamente la propiedad de la longitud, podemos pasar otras propiedades que que acepte el constructor de list que vemos acá que

[08:56] tiene sobre sobre sobrecarga, que se me fue la palabra, sobrecargas que pueden en este caso la capacidad es la es uno de los cuantos valores que puede recibir su constructor y hay otras dos sobrecargas. Con la misma con la nueva sintaxis collection expression arguments podemos mandar esos valores con una sintaxis mucho más sencilla. Para eso vamos a quitar esto y le voy a poner aquí los corchetes, la palabra que hace la magia se llama with y dentro vamos a poner el la propiedad el parámetro del

[09:21] constructor que queremos pasarle un valor. Por ejemplo, capacity que es el que tiene la longitud de nuestra lista, le va a mandar 100 y enseguida los valores. Vamos a poner 10, 20 y luego 30 y de esta manera hacemos dos cosas, mandamos element valores a los parámetros del constructor y a su vez mandamos los valores que va a tener la colección. Esta nueva herramienta de C# funciona para colecciones que tienen argumentos en los constructores, parámetros en los constructores. Va a

[09:49] funcionar esta misma sintaxis. Por ejemplo, hay otra colección que se llama hash set la cual puede recibir información, por ejemplo, cómo vas a comparar los elementos que la construyen. Aquí tenemos que tenemos a Ana Ana mayúscula que ahí le estamos especificando que que ignore la diferencia entre mayúsculas y minúsculas, un elemento, una propiedad que se le agrega en el constructor, por lo cual nosotros con esta nueva sintaxis mandársela directamente en la asignación de los

[10:14] valores. Y de esa manera también funciona con este tipo de colecciones. Esta esta nueva característica de C Sharp, Collection Expression Arguments, recuerda que puedes utilizarla en las colecciones que permitan valores eh su construcción.

[10:27] ¿Y qué? ¿Aprendiste algo? Si aprendiste algo decírmelo en la caja de comentarios. ¿Cuál fue la característica de C Sharp 15 que más te gustó? ¿Quieres que siga haciendo videos de este tipo? También decírmelo en los comentarios. A poco no te sentiste como en los ochentas. Y si quieres profundizar en .NET, en Metal Code tenemos toda una ruta de .NET con más de 1000 clases y puedes acceder con cualquier suscripción. Recuerda que estamos de aniversario, 2 años de Metal Code, así

[10:51] que te dejo el cupón del 30% descuento para todo, compra de cursos o compra de suscripciones. Ahí te lo dejo en la descripción y pues nada, muchas gracias por llegar hasta este punto. No has dejado tu pulgar arriba, mañoso, te ando observando.

[11:09] [música] [música] [música]
