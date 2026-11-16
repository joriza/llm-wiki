# Curso de Arduino desde cero en Español - Capítulo 12 | pines analógicos como digitales

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ESoZxL9RTUA)
- **Canal**: Editronikx
- **Publicado**: 2014-11-22
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:04] Bienvenidos a los vide tutoriales editron quien les habla el ingeniero Edison Viveros continuando con la serie de videotutoriales arduino desde cero en esta oportunidad Les traigo un video bastante útil a la hora de utilizar un arduino cuando queremos utilizar más Pines de los que normalmente tiene este arduino un arduino 1 un uino Leonardo normalmente tiene desde el pin cer hasta el pin 13 como fines digitales siempre y cuando el cer y uno no sean utilizados como salida serial los podemos utilizar

[00:37] como una salida o entrada digital Pero qué sucede cuando nuestro proyecto ya se hace más grande a veces podemos usar varias opciones una multiplexar una salida dos comprar un arduino mega ya que este tiene pues bastantes Pines pero a veces no tenemos la oportunidad de comprar otro arduino y queremos a veces por dos tres Pines no hacer ese ese gasto entonces podemos configurar los Pines analógicos como Pines digitales arduino desde que salieron estas tarjetas nos ha dicho que sí se pueden

[01:07] utilizar los analógicos como digitales normalmente cuando se utiliza como analógico no se puede usar como digital o si Us como digital no se puede usar como un analógico en mi caso no ha dado buenos resultados por ejemplo usar un acero como eh una entrada analógica y desde el a1 hasta el a5 utilizarla como digital realmente no vale la pena hacer esas combinaciones porque el circuito es muy muy inestable en realidad nosotros tendríamos 19 Pines 13 que tenemos acá más cinco Pines que tenemos acá o sea

[01:44] que sería pin 13 a0 14 15 16 17 18 y 19 en el arduino 1 no hay ningún problema a la hora de llamarlos así pin 13 14 15 16 17 18 19 pero con el arduino Leonardo esa configuración a veces no suele funcionar por tanto es mejor llamarlo así como se llama el pin analógico a0 a1 a2 a TR a cu en la configuración de nuestro arduino Aquí está el sketch que siempre nos da arduino Aquí hacemos la configuración típica de la configuración de Pines de entrada y salida para este ejemplo no voy a usar todos los Pines

[02:25] simplemente como ejemplo voy a utilizar el pin 13 lo voy a usar como salida en algunos eh tutoriales información que hay en internet Dice que se puede utilizar el pin acer como 14 o sea así y que este será el acero en algunos arduinos funciona por ejemplo en arduino 1 Funciona muy bien pero en arduino Leonardo no funciona Entonces por tanto para evitarnos problemas y generalizar este tutorial podemos usar a cero así eh tanto el arduino 1 como el arduino Leonardo pueden reconocer estos Pines

[03:07] como digitales sin ningún inconveniente digamos que vamos a usar también otro pin usemos el pin a5 en teoría vendría a ser el pin 19 y Aquí vamos a hacer la configuración Entonces vamos a hacer digital Wi y este digital Wi será por ejemplo el pin 13 como High digamos que el pin 14 o pin acero será también estado alto y el último pin que estamos utilizando que es el a5 será Low vamos a hacer un While y Dentro de este While le diremos que es verdadero para que se repita la secuencia Luego hacemos un

[04:20] delay de unos 300 milisegundos tenemos este mismo código lo que haremos es un blink prender y Apagar los led entonces hacemos el código contrario lo que está en High pasamos a low y lo que está en low pasamos a High y la secuencia vuelve Y se repite Entonces primero se prenderá el pin 13 a cer y a 5 será apagado Y luego el proceso inverso y así de forma sucesiva entonces guardamos nuestro código en el montaje práctico tengo tres led y tres resistencias las resistencia son de

[05:08] 300 Ohm el positivo de Led y el negativo respectivamente conectados ahora hacemos la conexión el primer pin que declaré es el pin 13 luego el acer o pin 14 y el último pin el a5 y compartimos nuestro gmd hacemos la conexión al computador vamos arduino al sketch placa arduino Leonardo Puerto con cuatro y le damos subir nos falta una llave La del While guardamos nuevamente y Tratamos de subir nuestro código aquí podemos observar el blink que acabamos de hacer o circuito de oscilación con el pin 13 a0 y a 5 en

[06:41] salidas digitales recordemos que lo podemos utilizar como salida digital o como lectura de un estado digital ya sea cer0 o uno de esta manera podemos expandir los Pines de nuestro arduino uno o arduino Leonardo y así poder utilizar más Pines para nuestros proyectos Espero que este pequeño tutorial haya sido de eso grado les sirva en sus proyectos electrónicos y así nos evitamos comprar un arduino más grande como un arduino meja nos vemos en un próximo videot tutorial vide tutoriales

[07:29] editron an
