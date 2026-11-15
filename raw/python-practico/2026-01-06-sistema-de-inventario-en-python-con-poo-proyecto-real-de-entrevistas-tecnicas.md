# Sistema de Inventario en Python con POO | Proyecto REAL de Entrevistas Técnicas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=6RndsyrTsEE)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-01-06
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Tu código de programación orientada a objetos probablemente funciona y ese es exactamente el problema porque hay una diferencia enorme entre código que funciona y código que te contrata. Y hoy vamos a construir un sistema de inventario completo en Python usando los cuatro métodos que cruzan esa línea. Así que abre tu editor porque empezamos ahora. Lo primero que necesitamos es entender que estamos construyendo. Un sistema de inventario. En su forma más básica necesita dos cosas: productos y

[00:26] un lugar donde guardarlos. Eso en programación orientada a objeto se traduce en dos clases, producto e inventario. La clase producto representa cada artículo individual y la clase inventario gestiona la colección de productos. Empecemos con la clase producto, ya aquí está el primer método profesional, el constructor bien definido. Cada producto tiene cuatro atributos esenciales. El identificador único es el ID, un nombre, un precio y la cantidad disponible. Pero aquí viene algo que muchos principiantes olvidan.

[00:51] Si tú creas tu producto así y luego quieres imprimirlo, lo que Python devuelve es esto. Y esto no le dice nada a nadie. Y es aquí donde entra el segundo método profesional, que es el método STR. Ya vimos el método INIT, que es nuestro constructor, y el método strmite saber qué es lo que vamos a mostrar cuando se imprima, en este caso producto. Aquí lo que vamos a mostrar va a ser el nombre, el ID del producto, el precio y el stock. Entonces ahora si ejecutamos nuevamente nuestro código,

[01:16] podemos ver que es exactamente lo que me imprime. Una información clara, legible, prof. profesional, pero tener productos bonitos no sirve de nada si no tienes donde guardarlos. Y aquí es donde el código de la mayoría empieza a volverse espagueti. El inventario es donde todo se conecta y es donde la magia de la programación orientado a objetos brilla.

[01:35] Entonces, vamos a crear nuestra clase producto, perdón, nuestra clase inventario. Y aquí, fíjate que que estamos usando dentro del constructor un diccionario para mostrar los productos o para tener los productos o almacenar los productos que va a tener nuestro inventario y no una lista. ¿Por qué?

[01:49] Porque el diccionario nos permite acceder a cualquier producto por su ID de forma mucho más rápida que con una lista, porque con una lista tendríamos que recorrer todo para encontrar algo. Y este son el tipo de decisiones que las que marcan la diferencia entre un profesional y un amater en una entrevista técnica. Y ahora vamos con el tercer método profesional, que son los métodos que manejan los casos extremos.

[02:09] Entonces, dentro de nuestra clase producto, vamos a crear un método que se va a llamar agregar producto. ¿Y cómo agregamos este producto? No, simplemente le añadimos un elemento al diccionario. Primero verificamos si el producto ya existe o no. Si el producto ya existe, el producto ya existe, es decir, el ID del producto está en el diccionario, sumamos cantidades y en el caso que no exista, simplemente lo creamos.

[02:30] Entonces, vamos a a probar algo. Vamos a borrar acá y vamos a poner inventario igual inventario. Vamos a crear un producto uno que va a ser 100 naranja y vamos a crear un producto dos que van a ser 150 naranja. ¿Okay? Luego vamos a agregar el producto uno, luego vamos a agregar el producto dos y luego vamos a agregar el producto tres, es decir, estamos agregando las manzanas de nuevo.

[02:47] Si ejecutamos nuestra aplicación, como ven, las primeras dos veces me dice producto agregado al inventario, pero la tercera vez me dice producto ya existe y está actualizando la cantidad. Okay. Entonces, como ven aquí lo primero que valida si el producto ya existe, si ya existe, le suma la cantidad en el caso que no la crea. Es decir, en este caso, como eran 100 manzanas y la agregamos dos veces, las manzanas ahora, perdón, tienen cantidad 200 y no 100. ¿Por qué?

[03:10] Porque el sistema es inteligente. Entonces, la lógica inteligente acá sería primero verificar si el producto ya existe, si existe, sumar las cantidades y si no, crearlo como nuevo. Pero agregar producto es solo la mitad de la historia. Un inventario real necesita eliminar, actualizar y listar elementos. Y aquí es donde muchos cometen errores que rompen todo el sistema. Y por lo tanto, aquí viene la parte tres, que es el CRUD completo, que es el estándar de la industria. Pero,

[03:33] ¿qué es CRUD? Crud significa crear, leer, de read en inglés, actualizar, de update en inglés y eliminar, delete en inglés. Es el estándar en cualquier sistema que maneje datos. Ya tenemos el crear. Ahora vamos con el resto.

[03:45] Entonces, primero vamos a eliminar productos. De nuevo, lo primero que verificamos, le entregamos a nuestro método el ID del producto y verificamos si el producto existe o no en el diccionario y en el caso que exista, simplemente usamos el DEL y eliminamos el producto y en caso que no exista escribimos o imprimos en pantalla producto no encontrado. De nuevo, estamos verificando antes de actuar.

[04:06] Intentar eliminar algo que no existe sin verificar primero es un error de principiante que generalmente causa bugs difíciles de rastrear. Pero bueno, ahora vamos con la clase o perdón, el método listar producto. Primero lo que hacemos para listar el producto, vamos a iterar por cada uno de los valores de nuestro diccionario producto y luego vamos a imprimir el producto. Y como ven, aquí es donde entra nuestro método str que consumimos acá arriba, que sin él esta función simplemente imprimiría basura. Y

[04:30] nos falta el actualizar producto. Entonces, creamos el método actualizar producto, que también le entregamos el ID, la cantidad y el precio que queremos actualizar. Y fíjate acá lo que estamos comparando o lo que estamos creando acá como la cuando no entregamos cantidad, en vez de ponerle cero le ponemos non como valor por defecto. ¿Y por qué estamos haciendo esto? Porque porque el cero en este caso es un valor válido.

[04:47] Por ejemplo, si alguien quiere poner un precio cero algo, sería un producto gratis o una promoción y debería poder US hacerlo. En cambio, usar non nos permite distinguir entre no quiero cambiar esto o quiero cambiarlo a cero.

[04:59] ¿Okay? Y este tipo de detalle es lo que separa el código junior al código senior. Entonces, creamos nuestra nuestro método de actualizar el producto. Si el ID está en nuestro diccionario de producto y la cantidad no es non, la nueva cantidad va a ser igual a la cantidad que le estamos entregando.

[05:13] Lo mismo para el precio e imprimimos la actualización. En caso contrario, vamos a a imprimir que el producto no fue encontrado, o sea, no vamos a poder actualizar algo que no existe en nuestra en nuestro diccionario. Entonces, aquí vamos a hacer, vamos a listar producto, vamos a ejecutar y como ven, aquí me dicen que tenemos 200 manzanas y 150 naranjas. Si queremos actualizar producto, por ejemplo, vamos a actualizar el ID1, que son las manzanas, le vamos a poner una cantidad 1000 y un

[05:36] precio 045. Ejecutamos, luego listamos. Vamos a listar de nuevo, se me olvidó listar. Y como ven, ahora en vez de tener 200 manzanas, tenemos 1000 manzanas y en vez de ser 0,5 el precio es 0,45, que es lo que le pedimos al actualizar el producto. Y lo mismo si quiero eliminar un producto, le pongo inventario eliminar producto, le entrego el ID, que en este caso el ID 2, que son las naranjas, luego listo los productos y como ven aquí la última me dice que el producto, el ID 2 fue eliminado y al

[06:01] listar la última vez solo me muestra las manzanas. Y el cuarto método profesional es la separación de responsabilidades. Es decir, cada clase hace una cosa y la hace bien. Mira el código que acabamos de escribir. La clase producto solo se preocupa de ser un producto. La clase inventario solo se preocupa de gestionar producto. Ninguna hace el trabajo de la otra. Esto se llama principio de responsabilidad única y es parte de los principios solid que usan empresas como Google, Amazon y Meta. ¿Y esto por qué

[06:26] importa? Porque cuando tu código crece y siempre crece, necesitas poder modificar una parte sin romper las otras. Por ejemplo, si mañana necesitas agregar un una categoría a los productos, solo tocamos la clase producto. Si necesitamos guardar la base de datos, perdón, el inventario en una base de datos, solo tocamos la clase inventario.

[06:43] Aquí nada se está mezclando, nada se rompe. ¿Qué hacen generalmente los principiantes? Meten todo en una clase gigante, mientras que los profesionales lo separan. Y bueno, lo que acabamos de construir es un sistema de inventario simple, pero con los mismos patrones que usan las empresas que mejor pagan a desarrolladores de Python. cuatro métodos que son el constructor bien definido, representación legible con STR, manejo de casos extremos y separación clara de responsabilidades.

[07:07] Ahora PO o programación orientada objeto es solo una pieza del rompecabeza y ten en cuenta que el mercado de Python este 2027 cambió completamente. Y si quieres saber exactamente qué habilidades están pagando mejor ahora y en y en qué orden aprenderlas, darme un roadm completo en este
