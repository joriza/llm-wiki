# No Compres Hardware Para IA Local Hasta Que Veas Este Video

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=3ht97XIKhJY)
- **Canal**: CodeSimple
- **Publicado**: 2026-09-17
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:36

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hace 6 meses estaba yo sentado justo donde estamos muchos ahora, justo antes de una compra grande de hardware, con un montón de pestañas del navegador abiertas, un hilo de Reddit a un lado y una reseña de YouTube al otro, la calculadora abierta y genuinamente convencido de que estaba a punto de hacer la compra más inteligente de mi carrera. Ya tenía la configuración elegida. Ya tenía la excusa preparada para mi mujer e incluso tenía en la cabeza todo un monólogo interno sobre

[00:28] cómo esto iba a cambiarme el flujo de trabajo para siempre. IA local, sin costes de API, sin límites de uso, solo yo y mis modelos corriendo en mi propio hierro a la hora que quisiera. Y entonces me puse a hacer las cuentas de verdad, y no las cuentas que hacían las reseñas, sino las mías, el panorama completo. Y lo que encontré me paró en seco. Lo que nadie en el mundo del hardware para IA local nos está contando es que las reseñas no mienten, porque cada benchmark es real y cada demo es

[00:59] real, pero están poniéndole precio a la cosa equivocada. Y ese único error nos va a costar miles de euros, puede que decenas de miles, según cuánto nos metamos. Así que, antes de dar al botón de comprar, o peor, antes de pedir algo que no se puede devolver, quiero repasar lo que encontré. Y la cifra que me voló la cabeza cuando la vi por primera vez es esta. Cogí como referencia la RTX 3090, una tarjeta gráfica de hace 5 años que se vendía por 639 dólares en enero de este año. Y para junio, esa misma

[01:32] tarjeta en el mismo mercado de segunda mano se vendía por 946. No cambió nada en la tarjeta, no se volvió más rápida y Nvidia no sacó ningún parche que le añadiera VRAM. Simplemente subió un 48% en 6 meses. Y exactamente al mismo tiempo, el precio de 1 millón de tokens de un modelo de IA de frontera cayó un 84%.

[01:54] Así que leedlo otra vez, porque aquello con lo que calculamos bajó por un factor de seis, mientras que aquello sobre lo que calculamos subió a la mitad. ¿Cómo se encarece una tarjeta gráfica de segunda mano en el mismo año en que lo que hace funcionar se abarata tantísimo?

[02:09] Ese es el vídeo entero resumido ahí mismo. Y todo lo demás que voy a contar es básicamente desmenuzar por qué esas dos líneas deberían cambiar completamente cómo pensamos esta compra. Repasé los cinco vídeos más grandes sobre hardware de IA local de los últimos cuatro meses, canales grandes, gente que de verdad sabe de esto, y busqué en todos ellos las palabras "reventa" y "depreciación". ¿Sabéis cuántas veces apareció alguna de las dos?

[02:37] Ni una sola vez, cero de cinco. Todos ponen precio a lo que cuesta la caja el día que la compramos y ninguno pone precio a lo que vale el día que terminamos con ella, que es justo cómo terminan recomendándonos la máquina que más dinero nos cuesta tener. Pero quiero ser justo aquí, porque a mí también me tentó genuinamente la vía del electrodoméstico todo en uno, y el argumento a favor es un argumento real.

[03:00] Así que dejadme plantearlo bien. Digamos que queremos correr un modelo de 120.000 millones de parámetros, que no es una pretensión descabellada, porque los modelos grandes son donde las cosas se ponen realmente impresionantes.

[03:14] Para hacer eso en local necesitamos unos 128 GB de memoria y podemos meterlo todo en una sola caja, porque el DGX Spark de Nvidia nos da exactamente eso por 4.699 dólares y Framework tiene un equipo de sobremesa basado en el chip Ryzen AI Max con la misma cantidad de memoria unificada por unos 3.449.

[03:36] Una caja, un cable de corriente, un enchufe. Comparadlo con la alternativa, que son cuatro GPUs discretas de gama alta tirando de 2.400 W y en una casa española eso son dos circuitos distintos como mínimo. Un tipo en Reddit, y os juro que no me lo invento, se cargó literalmente el armario entero donde tenía el servidor haciendo justo eso y tiró abajo todas las máquinas de la habitación. Así que, visto así, el electrodoméstico empieza a parecer bastante buena opción e incluso

[04:07] en las cifras se sostiene, porque eso sale a unos 27 GB por cada 1000 dólares, mientras que una 3090 de segunda mano nos da 24 GB por 946, que son unos 25 GB por cada 1000. Así que el electrodoméstico gana en memoria por dólar y las reseñas no se equivocan en eso, pero están citando la cifra correcta para la pregunta equivocada. La capacidad de memoria nos dice si un modelo corre o no, pero no nos dice lo rápido que corre y son dos cosas muy distintas.

[04:39] Así es como funciona realmente la inferencia y lo resumo rápido. Por cada palabra que genera nuestro modelo, el chip lee los pesos de la memoria, los arrastra hasta la unidad de cómputo, hace el cálculo y luego los descarta y vuelve a hacerlo para la siguiente palabra. Así que una respuesta larga significa que esos mismos datos cruzan ese mismo chip una vez por cada palabra que contiene. La velocidad que realmente sentimos, la del cursorcito parpadeando mientras escupe texto, es en realidad la

[05:08] velocidad de ese agujero. Y los ingenieros lo llaman ancho de banda de memoria. Así que hagamos la misma cuenta, pero con el ancho de banda en vez de con la capacidad. El DGX Spark tiene un ancho de banda de memoria de 273 GB por segundo y dividido entre su precio, eso nos da 0,058 GB por segundo por dólar. Una RTX 3090 de segunda mano tiene 936 GB por segundo y a su precio, eso nos da 0,99.

[05:39] Que son 17 veces más velocidad por dólar, por el mismo dinero, el mismo día y es la única cifra que nunca aparece en una pantalla de reseña. Así que capacidad por dólar es un empate, ancho de banda por dólar es una paliza y nos están vendiendo el electrodoméstico basándose en el empate.

[05:56] Y esa es en realidad la división clave aquí. Las tarjetas gráficas comerciales son cosas que quieren miles de personas, jugadores, gente que renderiza, investigadores, gente que se acaba de enterar de que una tarjeta de 24 gigas puede correr un modelo de 27 mil millones de parámetros. Mientras que el electrodoméstico tiene la memoria soldada a la placa y el único comprador para eso es alguien que quiera exactamente esa máquina. Y la distinción importa muchísimo, no solo para el

[06:26] rendimiento, sino para lo que pasa cuando eventualmente queramos salir de esa compra. Cuando miramos datos reales del mercado, ahí fue donde esto dejó de ser teórico para mí. Un rastreador de precios recopiló datos diarios de más de 50 mil anuncios vendidos en eBay en siete mercados nacionales de enero a junio de este año, 16 tarjetas en total, con las medianas normalizadas en dólares.

[06:51] Esto es lo que subió. La RTX 3090 subió un 47,9%. La 590 subió un 31%. La 5080 subió un 22,3% y la 4090 subió un 12,8%. Y esto es lo que bajó. La RTX 3080 cayó un 20,1%, la 3070 cayó un 20,4%, la 4070 cayó un 7,3% y la 5060 cayó un 4,6%.

[07:22] La 3090 y la 3080 salieron la misma semana, de la misma generación y la 3090 ganó casi la mitad de su valor, mientras que la 3080 perdió una quinta parte del suyo. No es la generación y tampoco es la velocidad, porque una 4070 machaca a una 3090 en la mayoría de los juegos. La línea divisoria son los 16 GB y si volvemos a mirar esa lista, veréis que pasa justo por el medio. Todo lo que está en esa línea o por encima se revalorizó y todo lo que está por debajo de 12 GB se depreció. Nuestra tarjeta

[07:57] gráfica dejó de ser una tarjeta gráfica y ahora cotiza como una materia prima de memoria. Y el motivo está en algo a nivel de suministro en lo que la mayoría no está pensando. Los precios de contrato de la DRAM subieron un 172% a lo largo de 2025 y siguen subiendo. Y Samsung, SK Hynix y Micron, tres empresas que entre ellas controlan más del 95% de la producción mundial de memoria, han movido toda su capacidad de obleas hacia la memoria de alto ancho de banda que necesitan los centros de datos

[08:29] de IA. Y un analista espera que los centros de datos absorban hasta un 70% de la producción mundial de memoria este año, lo cual nos lleva al problema del electrodoméstico. Cuando compramos el DGX Spark o un Mac Studio con esa memoria soldada, estamos pagando en el mostrador toda la prima de la escasez por una memoria que nunca vamos a poder despegar de la placa y revender. El comprador de una GPU comercial paga exactamente esa misma prima, pero luego la puede revender. Y hay una experiencia de un propietario

[09:01] que se me quedó grabada. Compró un Mac Studio M3 Ultra de 512 GB por 23.000 dólares canadienses y cuando fue a hacer la entrega como parte de pago, Apple le ofreció 2.460, más o menos una décima parte de lo que había pagado. Comparadlo con el dueño de una 3090 que pagó 639 dólares en enero y podría haberla vendido por categoría de compra en el mismo periodo de 12 meses y uno perdió el 89% de su valor, mientras el otro ganó un 48% y el mecanismo aquí no es que Apple sea tacaña, es simplemente cómo funciona la

[09:41] memoria soldada, porque cuando la RAM forma parte de la placa, nadie va a comprarnos la máquina vieja para aprovechar la RAM. Nuestro comprador tiene que querer la máquina entera a nuestro precio sin la garantía. Una GPU discreta es una pieza estándar que encaja en cualquier torre montada en la última década. Así que no estamos vendiendo un ordenador, estamos vendiendo un componente que quieren tanto jugadores como gente que renderiza como investigadores y hay un mercado real por debajo que podemos ver

[10:11] funcionando cada día en eBay. La liquidez es toda la diferencia y la liquidez nunca aparece en una reseña. Miremos ahora la otra hoja de la tijera, qué es lo que está pasando con el precio de los tokens mientras el precio del hardware sube.

[10:27] Un índice sigue el precio de los tokens de frontera frente a una base de marzo de 2023 y ahora está en 16, es decir, un 84% más barato en 3 años y la mayor parte de esa caída llegó solo en los últimos 12 meses. Los modelos de pesos abiertos son todavía más baratos con un precio mediano combinado de 1,53 centavos por millón de tokens y aquí va la cuenta de equilibrio que genuinamente me hizo guardar la cartera. La RTX Pro 6000 Blackwell, que es una tarjeta profesional seria, cuesta 16,000

[11:00] dólares. Y la salida alojada en un buen modelo abierto ronda los 47 centavos por millón de tokens, así que ese dinero nos compra 34,000 millones de tokens de salida de la infraestructura de otro. Esa misma tarjeta genera 1,77 tokens por segundo medidos por un propietario con longitudes de contextos realistas. Así que, corriéndola las 24 horas de todos los días, produce 2,460 millones de tokens al año, lo cual sale a 13,8 años de producción antes de contar la electricidad y antes de que el

[11:34] modelo quede obsoleto. Lo repito, porque tendríamos que correr la tarjeta al 100% de uso durante casi 14 años, solo para empatar con el coste de alquilar ese mismo cómputo. Y eso, sin contar la energía. Ni el hecho de que probablemente exista un modelo mejor dentro de 18 meses. Ahí nadie gana esa discusión.

[11:55] Y hay otra cosa que hacen las reseñas que me parece un poco tramposa, no a propósito, pero el efecto es real. Miden la velocidad de decodificación, que es lo rápido que el modelo saca tokens una vez que ya ha procesado nuestro prompt.

[12:09] Y esa cifra en realidad favorece al hardware local, porque un chip Ryzen AI Max corre un modelo de 120 a unos 30 tokens por segundo, lo cual es totalmente razonable y queda genial en una demo. Pero lo que no nos enseñan es la velocidad de preprocesamiento, que es lo rápido que el modelo lee y procesa nuestra entrada. Apuntamos un agente de programación a nuestra caja local, Cloud Code, Cursor, lo que sea, y antes de leer una sola línea de nuestro código de verdad, tiene que cargar su propio

[12:40] prompt de sistema. Y solo el prompt de sistema de Cloud Code ya son más de 32.000 tokens. Leer ese prompt es una carga de trabajo completamente distinta a generar una respuesta. Un propietario midió 50 tokens por segundo de lectura de prompt en una tarjeta de 16 GB con memoria DDR4 estándar detrás, lo que significa que solo el prompt de sistema tarda 10 minutos y 40 segundos antes de que nuestro agente haya siquiera mirado nuestro código. Y una base de código de 100.000 tokens son 33 minutos de lectura

[13:13] antes de recibir una sola palabra de vuelta. Los mismos pesos, alojados en infraestructura decente, devuelven el primer token en menos de un segundo. Así que la caja hace muy bien el chat, hace bien los borradores y los trabajos por lotes durante la noche son estupendos.

[13:30] Pero la programación agéntica interactiva nos va a hacer tirar el trasto por la ventana y comprar más RAM no lo arregla, porque leer es un problema de ancho de banda y de cómputo y ninguna de esas dos cosas la compramos en la tienda del electrodoméstico. Otro coste que la gente se salta es el consumo en reposo. Una máquina que consume 100 W en reposo y se queda encendida todo el año gasta 876 kWh. Y a 12 centavos el kWh son unos 105 dólares al año antes de hacer una sola inferencia, lo cual nos compraría 198

[14:03] millones de tokens al precio medio de los modelos abiertos. Así que el equipo de sobremesa sentado en la esquina con los ventiladores al mínimo ya se ha gastado eso en electricidad antes de que escribamos un solo prompt y el consumo en reposo es curiosamente impredecible. Una RTX 590 debería consumir unos 30 W en reposo y usuarios con un par de monitores 4K reportan entre 60 y 100 en su lugar, mientras que una 3090 a plena carga tira de 350 W. Aunque tengo que decir que un propietario dio la reflexión más honesta

[14:38] que he visto sobre todo esto y cito textualmente, "En invierno, además, ahorro en calefacción." El hombre encontró su lado bueno y se aferra a él. Quiero ser sincero aquí, porque nada de lo que he dicho aplica igual para todo el mundo.

[14:54] Si nuestro trabajo genuinamente no puede salir del edificio, documentación militar, historiales de pacientes, causas judiciales bajo secreto, cualquier cosa con un requisito de residencia de datos escrito en el contrato, entonces la opción alojada no es solo cara, es inviable directamente.

[15:12] Y una respuesta local lenta gana a ninguna respuesta. Para esa gente un equipo local no es una preferencia, es la única opción y este vídeo básicamente no les concierne. Y lo mismo si ya tenemos la tarjeta, ese dinero ya está gastado y la cuenta de equilibrio describe una compra, no una posesión.

[15:31] Así que vender una tarjeta que funciona para ponernos a alquilar tokens es solo dar vueltas con pasos de más. Y si estamos aprendiendo, comprad lo barato y experimentad con ello, porque una RTX 3060 de segunda mano por 186 dólares nos enseña cuantización, descarga a disco y ventanas de contexto igual de bien que un electrodoméstico de 5000 dólares y probablemente mejor, porque vamos a hurgar de verdad dentro cuando hay menos en juego.

[16:00] Así que ahí es donde aterricé después de todo esto. Si vamos a comprar hardware local en este mercado, deberíamos comprar piezas estándar que miles de personas más quieran. Y ahora mismo eso significa tarjetas comerciales de 24 y 32 gigas con mouse en el mercado de segunda mano, las que están por encima de esa línea, en el nivel que la escasez de memoria está protegiendo activamente.

[16:23] Y evitad cualquier cosa con la memoria soldada a la placa, porque estamos pagando la prima de la escasez de 2026 por un componente que nunca vamos a poder vender por separado, a una fracción del ancho de banda por dólar de una tarjeta comercial. Y si simplemente necesitamos sacar trabajo adelante hoy, los modelos abiertos alojados a 53 centavos por millón de tokens no necesitan un circuito dedicado, ni curva de ventiladores, ni pasta térmica, ni un comprador esperando en eBay cuando

[16:51] terminemos con ellos. Así que la versión honesta de todo este vídeo cabe en una frase. Deberíamos comprar la tarjeta que un desconocido nos quitaría de las manos en una tarde o no comprar nada en absoluto, porque el hardware solo cuenta como inversión mientras alguien más lo siga queriendo. Y si esto os ha hecho dudar, esa duda está cumpliendo su función. Si ya tenéis una tarjeta en una máquina funcionando, recordad que esta cuenta describe una compra, no una posesión, así que corred vuestros

[17:20] modelos y seguid con vuestro trabajo, porque ya tomasteis la decisión y ahora tenéis una máquina y eso está bien, pero si todavía estáis en la fase de cambiar de pestaña con la calculadora abierta, cerrad el carrito, haced las cuentas y luego decidid.
