# La GPU de 78$ para IA que triplicó su precio en 9 semanas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=yyDF1P4sU4w)
- **Canal**: CodeSimple
- **Publicado**: 2026-11-17
- **Recopilado**: 2026-11-18
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:10

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Antes de gastarte un solo euro en un ordenador para usar inteligencia artificial en casa, tienes que saber porqué la misma tarjeta de $78 a unos les da 11 tokens por segundo y a otros 74. Casi siete veces más rápido. Misma pieza, mismo modelo. Y la diferencia no la puso Nvidia, [música] la puso un chaval de 17 años, gratis.

[00:24] En este vídeo vamos a responder tres preguntas. ¿Por qué una tarjeta de hace 10 años de repente funciona tan bien con IA? ¿Por qué su precio se ha multiplicado por más de tres en nueve semanas? Y si a día de hoy te conviene comprarla o no.

[00:39] Y empezamos por lo primero, porque la historia tiene truco. La protagonista se llama Nvidia Tesla P100. Salió en junio de 2016 [música] y costaba $5699. No era una tarjeta para jugar, vivía en los armarios de servidores de las grandes empresas.

[00:58] 10 años después esas empresas la han ido retirando y se vende de segunda mano en eBay. Este verano se encontraba por unos $78. Básicamente chatarra de centro de datos que nadie quería. Hasta que a finales de octubre se hizo viral un vídeo. Dos de estas tarjetas, $156 en total, moviendo un modelo de IA llamado Cuen 3,8 de 27.000 millones de parámetros a 67 tokens por segundo.

[01:27] Para que te hagas una idea, un token es un trozo de palabra. 67 por segundo es más rápido de lo que tú lees. Más rápido que muchos ordenadores nuevos con tarjetas de $1500. [música] La reacción normal es pensar, aquí hay gato encerrado. Y lo hay, pero no donde crees.

[01:47] Para entender por qué esta tarjeta vieja tiene algo especial, necesitas saber una sola cosa sobre cómo funciona una IA por dentro. Cada vez que la IA escribe un trozo de palabra, tiene que leer de la memoria todo sabe, todo.

[02:02] Y lo vuelve a leer para la siguiente palabra. [música] Y para la siguiente. Así que lo que marca la velocidad no es tanto lo listo que sea el chip, sino lo rápido que puede traer datos desde la memoria. Es como un cocinero que necesita consultar el libro de recetas entero antes de cada movimiento. Lo que importa es lo rápido que pasa las páginas.

[02:23] La P100 tiene una memoria muy especial, apilada encima del chip como un pequeño rascacielos. Mueve 732 GB por segundo. Una tarjeta moderna muy popular para IA, la RTX 3090 mueve 936. Así que una P100 sola pierde, pero dos juntas, en teoría, suman 1464 y además suman 32 GB de memoria, suficiente para que quepa el modelo, que ocupa unos 22. Sobre el papel todo cuadra, pero hay un problema. Sobre el papel nunca funcionó así.

[02:59] Antes de montar el equipo, el creador del vídeo viral preguntó a ChatGPT y a Claude cuánto iba a sacar. Las dos le dijeron lo mismo, entre 17 y 19 tokens por segundo. En el vídeo se presenta como las IA se equivocaron por completo, pero no se equivocaron. Con el programa normal que casi todo el mundo usa para ejecutar IA en casa, que se llama llama.cpp, esas dos tarjetas dan 17,5 tokens por segundo, exactamente lo que dijeron. Lo que pasó entre agosto y octubre no fue un cambio en la tarjeta, fue un cambio

[03:35] en el programa. Y aquí entra el verdadero protagonista de esta historia. A finales de septiembre alguien publicó en un foro de Reddit dedicado a la IA en casa una versión modificada de ese programa, ajustada específicamente para tarjetas de la generación de la P100. En la publicación contaba tres cosas, que tenía 17 años, que no tenía ninguna titulación y que se había ayudado mucho de herramientas de IA para hacerlo y lo subió gratis a GitHub para que cualquiera lo usara. Lo que hizo fue

[04:05] arreglar dos cosas que el programa normal hacía mal en esta tarjeta. La primera, imagina dos trabajadores que tienen que leerse un libro enorme para responder cada pregunta. La forma fácil de repartirlo es tú la primera mitad, la segunda, pero tienen que ir en orden.

[04:23] Mientras uno lee, el otro espera de brazos cruzados. Eso es lo que pasa por defecto con dos tarjetas. Tienes el doble de memoria, pero solo trabaja una cada vez. La solución es cortar cada página por la mitad. Los dos leen a la vez, cada uno su media página. Ahora sí, las dos tarjetas trabajan al 100% al mismo tiempo.

[04:45] La segunda es todavía más curiosa. En estas tarjetas el programa normal iba a buscar una y otra vez un pequeño dato que necesitaba constantemente a la memoria lejana. Es como un cocinero que para cada paso de la receta va a la despensa, coge la sal, la usa y la vuelve a guardar.

[05:05] Una y otra vez. El arreglo fue sencillo de explicar, dejar [música] el salero en la encimera, guardar ese dato en una memoria rapidísima que está dentro del propio chip. ¿El resultado? Las mismas tarjetas pasaron de 17,5 a 32,6 tokens por segundo. Un 86% más rápido sin tocar un solo tornillo, solo con código. Pero espera, porque 32 no es 67, falta la mitad del truco.

[05:34] El resto de la velocidad no la pone la tarjeta, la pone el propio modelo de IA. Este modelo trae una pieza extra, un pequeño ayudante que intenta adivinar las cuatro palabras siguientes. Luego el modelo grande revisa esas cuatro de golpe. Y aquí está la clave. Revisar cinco palabras le cuesta más o menos lo mismo que escribir una, porque la memoria la lee una sola vez.

[05:57] Si el ayudante acierta tres de cuatro, has conseguido cuatro palabras por el precio de una. Y ahora viene la letra pequeña. Sin el ayudante, el equipo da 29,7 tokens por segundo. Con el ayudante, escribiendo un documento normal, 49,2.

[06:14] Y los famosos 67 salen solo resolviendo un acertijo de lógica, porque ahí [música] el texto es tan predecible que el ayudante acierta alrededor del 70% de las veces. En un documento normal, acierta más o menos la mitad. Es decir, el 67 de la miniatura es real. Pero no es una propiedad de la tarjeta, es una propiedad del texto que le pides.

[06:37] Y una pregunta que seguro que te estás haciendo. ¿Si un ayudante adivina, la calidad empeora? Con este método, no. El modelo grande revisa cada palabra y si no le convence, la descarta y pone la suya. El resultado final es el mismo que si lo hubiera escrito él solo.

[06:55] Lo que sí afecta a la calidad son otros dos detalles del montaje. Para que quepan textos muy largos, se comprime parte de la memoria y el modelo que se usa es una versión modificada por la comunidad, no la oficial. Nada de esto es un engaño. Está explicado en el vídeo original, pero conviene saberlo. ¿Y qué sacan de verdad los que tienen estas tarjetas en casa?

[07:17] Si juntamos los resultados publicados por distintos usuarios, la misma pareja de tarjetas va desde 11,7 tokens por segundo hasta 74. Un factor de seis. Con el programa normal y la configuración por defecto, estás abajo del todo, en 11 o 12. Con los ajustes correctos, en 30. Con el programa del chaval de 17 años, entre 45 y 75 según la tarea. [música] La conclusión es sencilla. La tarjeta no es lo que decide la velocidad, lo decide el programa que pones encima y cómo lo configuras.

[07:51] [música] Y ahora, la parte más curiosa de toda la historia. Hay una web que registra cada semana el precio más barato de esta tarjeta en eBay. Esto es lo que pasó. En agosto y septiembre, estaba entre 77 y 80 dólares. El 18 de septiembre, el chaval sube su programa a GitHub. Esa semana sube a 99. A principios de octubre, 120. El 29 de octubre sale el vídeo viral. Al día siguiente, 150, luego 177, luego 220 y hoy está en 274 dólares. Se ha multiplicado [música] por 3,4 en 9 semanas.

[08:30] En ese mismo tiempo, la RTX 3090 de segunda mano apenas se movió un 6%. Piénsalo un momento. El chip es exactamente el mismo que en agosto. Lo único que cambió es que ahora la gente sabe que existe un programa gratuito que lo hace rápido. Y quien cobra ese conocimiento no es el chaval que lo programó, es quien vende la tarjeta en eBay. Hagamos números. Dos tarjetas en septiembre, 156 dólares. Dos tarjetas hoy, 548.

[09:01] Pagas 392 dólares más por exactamente el mismo hierro. Y esos 392 dólares no compran un chip mejor, compran saber que existe un programa que además es gratis. ¿Qué alternativa hay? Ese mismo modelo se puede usar por internet pagando por uso a través de una plataforma llamada Open Router con 26 proveedores distintos.

[09:25] Con el más barato, solo con esos 392 dólares de sobreprecio, tendrías tanto texto que las dos tarjetas escribiendo sin parar día y noche tardarían 223 días en producirlo. Y luego está la luz, que casi nadie cuenta. Las dos tarjetas juntas consumen unos 300 vatios trabajando. Según los cálculos del vídeo original, con precios de electricidad de Estados Unidos, solo la factura de la luz ya cuesta tres cuartas partes de lo que cobra el servicio por internet más barato. Y eso sin contar las tarjetas.

[09:58] Aunque no hagan nada, encendidas y esperando, gastan entre 36 y 47 vatios cada una. Tener la IA en casa sale gratis es uno de los mitos más repetidos. El contador de la luz no opina mismo. Hay otra cosa que el vídeo viral no enseña. Todo lo anterior es la velocidad de escribir, pero antes de escribir la IA tiene que leer lo que le das. Y leer es justo lo que peor se le da a esta tarjeta porque no tiene los circuitos especiales que traen las modernas. Si le pasas un documento largo o un proyecto de

[10:30] programación, unos 30.000 tokens, tardará unos 75 segundos solo en leerlo antes de decir la primera palabra. Para charlar, perfecto. Para trabajar con documentos grandes [música] se hace eterno. Y lo más importante si estás pensando en comprar. Esos 67 tokens por segundo tienen tres relojes en marcha.

[10:51] Primer reloj, depende de una sola persona. El programa está hecho a medida para este modelo concreto. [música] Cuando salga la siguiente versión del modelo habrá que adaptarlo. El chaval ha dicho que lo hará [música] y no hay motivo para dudarlo, pero es una persona sola en su tiempo libre y sin fecha.

[11:08] Segundo reloj, Nvidia. Las últimas versiones de sus herramientas ya no son compatibles con esta generación de tarjetas y el soporte de sus controladores tiene fecha de fin anunciada para mediados de 2028. [música] Después seguirán funcionando, pero sin actualizaciones ni siquiera de seguridad.

[11:29] Tercer reloj, el propio modelo. [música] Cuando todo el mundo quiera usar el siguiente, si el programa no se ha actualizado, vuelves a la velocidad de antes. Las tarjetas durarán más que los tres relojes. La pregunta es si las compras antes o después de que se acaben.

[11:46] Entonces, ¿te conviene? [música] Aquí tienes la respuesta clara, que es lo que te prometí al principio. Si ya tienes alguna PC 100 de un ordenador de empresa antiguo, instala el programa gratuito esta misma noche. No te cuesta nada y vas a flipar.

[12:01] Si trabajas con datos que no pueden salir de tu oficina, como información médica, legal o financiera, aquí no se trata de ahorrar, sino de cumplir una obligación. Ahí tener la IA en local tiene todo el sentido. Si lo que te apetece es pasar un fin de semana montando el equipo, refrigerándolo y configurándolo, adelante. Pero apúntalo como afición, no como ahorro. Y si solo quieres usar ese modelo sin complicarte, a 274 dólares la tarjeta no compensa. Úsalo por internet, que es más barato, va igual o mejor y no

[12:35] te vas a pasar un domingo peleándote con la placa base. Y un último consejo que vale para cualquier compra de tecnología. Las tarjetas seguirán ahí cuando nadie haga vídeos sobre ellas. Esa suele ser la mejor semana para comprar.

[12:49] Lo que hemos visto hoy no va realmente de una tarjeta gráfica. Va de que un buen programa puede convertir chatarra en algo valioso y de que esa información, en cuanto se hace pública, tiene precio. Si quieres seguir entendiendo la IA sin tecnicismos y sin tirar el dinero, suscríbete a Code Simple. Nos vemos en el próximo vídeo.
