# [RELAY] 7 FORMAS de ARRUINAR tus DISEÑOS

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IlfEYTcdfHE)
- **Canal**: TR3BOL ARGENTINA
- **Publicado**: 2025-01-14
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] alguna vez quemaste tus circuitos y no sabes bien Por qué tenés miedo de que te vuelva a pasar Quédate porque te vamos a contar en este video las siete formas en las cuales podes arruinar tus diseños incorporando relés No te preocupes porque todos estos errores los hemos cometido y también sabemos cómo solucionarlos soy Guada fundadora de trébola Argentina y te cuento que te trae muchos beneficios incorpor relays a medida en tus diseños de pcb en este increíble video te vamos a contar cómo

[00:36] incorporar relays de forma segura en tus diseños sin explotar nada en el camino presta mucha atención ya que si bien Vamos a mostrar un caso en concreto los principios son genéricos para activaciones de potencia con cualquier microcontrolador y eso no se encuentra con facilidad así que ya mismo suscríbite a nuestro canal y dale a la campan porque te vamos a contar todos los secretos que nadie quiere [Música] decir error número uno conexión directa como aprendimos en otros videos

[01:16] los microcontroladores pueden generar y recibir señales lógicas pero es importante que entiendas que esas señales generadas no deben ser utilizadas para activar Potencia de forma directa por ejemplo resulta más intuitivo cuando queremos activar una carga de 220 vol de corriente alterna como es el caso de una lámpara sabemos que esto no se puede hacer de forma directa con los Pines de un microcontrolador de 5 vol sin embargo cuando la carga se activa con 5 vol de continua por ejemplo un relay de 5 vol

[01:48] es un error muy común que intentemos hacerlo de forma directa Debes saber que los Pines de un microcontrolador pueden manejar corrientes muy pequeñas esta información la puedes encontrar en el dat sheet de cada microcontrolador por ejemplo para el caso de ad mea 328p típico del arduino 1 y arduino Nano la corriente máxima absoluta en un pin gpio es de 40 mamp sin embargo este valor es máximo y absoluto por lo tanto de ninguna manera Es recomendable trabajar cerca de ese límite nosotros te recomendamos

[02:25] minimizar el consumo de tu microcontrolador para optimizar la performance y trabajar a más de 4 o 5 mamp por Pin y si es posible mucho menos además es diferente la cantidad de corriente que un pin puede drenar y suministrar para que te quede más claro te mostramos en las imágenes un ejemplo del encendido de un led por estado alto y estado bajo con activación por alto un pin suministra corriente como fuente desde bcc por el contrario con activación por bajo un pin drena corriente como Sumidero hacia gnd para

[03:05] la carga en este caso un led es lo mismo pero para un microcontrolador no en general la corriente que puede drenar por low un pin Es mayor que la que puede suministrar por High por ejemplo para el sp32 tenemos capacidad de drenaje 28 mamp capacidad de suministro 20 m Entonces cuál es son error número uno intentar activar el relé de forma directa de ninguna manera podemos activar un relé como se activa un led nunca cometas ese error y el motivo principal es el consumo por ejemplo el consumo típico de

[03:48] un relé de 5 V ronda entre los 70 mamp podemos verlo a través de la experiencia que realizamos en nuestro laboratorio de electrónica y como veremos en los próximos puntos ent eso es solo un valor de establecimiento Qué sería lo correcto utilizar al menos una etapa de amplificación con un transistor el transistor es un amplificador de corriente una pequeña corriente en su base permite manejar una corriente mucho mayor cuanto mayor lo determinará su ganancia Beta Por ejemplo si inyectamos

[04:20] un milamp en su base con nuestro microcontrolador con una ganancia de 100 podremos amplificar la señal a hasta 100 ma lo cual es más más que suficiente para activar nuestro relé si te está gustando este video dejanos en los comentarios Qué te pareció Este primer error que te contamos Y por cierto No olvides suscribirte a nuestro canal y darle a la campanita así no te perdes Ninguno de los tips que vamos a seguir dando en todos nuestros videos error número dos olvidarnos del diodo de

[05:02] recirculación si bien con el transistor solucionamos el problema de sobrepasar el consumo de un pin de gpio no es suficiente al ser una carga inductiva una bobina al cerrar el circuito circula corriente al abrir el circuito esa corriente no tiene por donde escapar y es por ello que se produce un sobre pico de tensión este sobre pico puede ser decenas de veces el valor de su tensión nominal dependiendo de la inductancia de la bobina de la frecuencia de operación y de otros factores en el video te mostramos la

[05:38] siguiente experiencia con un esp32 activamos un relé sin diodo de recirculación con un potenciómetro variamos la frecuencia de activación del relé podemos observar los picos de tensión al abrir el circuito los cuales varían de forma aleatoria y además aumentan con la frecuencia en la segunda experiencia colocamos el diodo 1 n4007 y observamos que los picos desaparecen independientemente de la frecuencia tercer error olvidarnos del [Música] optoacoplador la mejor manera de proteger a tu microcontrolador de los

[06:27] efectos adversos de las cargas de potencia inalmente inductivas y en alta frecuencia es logrando una aislación eléctrica en ambas partes Esto se logra con los optoacopladores la activación de un opt led genera la activación Sin contacto eléctrico de un opt transistor que es capaz de activar el transistor del lado de potencia el que vimos en el error número uno por ejemplo con un opto 817c podemos sacar una señal pequeña de corriente al micro que provocará la activación en cadena opto led o opto

[07:00] transistor transistor relé cuarto error utilizar la misma fuente de alimentación si bien el opto colabora con la aislación de la señal no sirve de nada si utilizamos la misma fuente de alimentación de ambos lados lo ideal es utilizar dos Fuentes por separado una de lógica y otra de potencia Aunque ambas sean de 5 v y si disponemos de una sola fuente o es nuestra decisión de diseño realizarlo así por lo menos debemos aplicar algún filtro a la alimentación ejemplo bcc es la tensión sin filtrar para el relé y 5

[07:35] vol es la tensión filtrada para el microcontrolador Por cierto si estás utilizando los famosos SP 8266 o sp32 en tus diseños no te puedes perder El séptimo error es el más importante para esos microcontroladores Y por supuesto No dejes de suscribirte a nuestro canal hacelo ahora antes de que sigamos con todo este contenido s super valioso quinto error mal uso del relleno de gnd Y qué pasa con gnd si utilizamos la misma fuente debemos aplicar algunos trucos muy útiles estos trucos están

[08:15] basados en el concepto de conexión estrda para evitar bucles de corriente pero de forma práctica lo que debes crear es un camino independiente de gd tanto para la parte lógica como de potencia y unirlos solamente en un punto es ese punto puede ser en primer caso en la misma pcb en lo posible lo más cerca de la bornera de alimentación Y en segundo lugar Mejor aún fuera de la pcb saliendo por borneras independientes y uniéndose lo más cerca posible de la Fuente por ejemplo con cables trenzados

[08:48] dicho esto el relleno de gnd debe excluirse del gnd del lado de potencia de lo contrario la estrategia no tendrá ningún efecto sexto error no usar caladura cuando la potencia que se maneja es muy alta la distancia entre la activación de las bobinas y los contactos del relé no son seguras ya que pueden generar arcos eléctricos que destud dan los circuitos por ello que se utilizan caladura para mejorar la aislación entre ambas partes incluso muchos módulos de relé comerciales ya lo traen y tú puedes

[09:25] indicarlo en tus huellas de diseño de la forma que la requiera el Fabric y llegamos al error número siete el que estaban esperando los fans de los sp32 o SP 8266 y es el error con activación por High qué este error es muy común y peligroso en especial con los sp32 sp82 66 y otros muchos de sus Pines tienen el comportamiento de High on Boot esto significa que los Pines se ponen en alto durante la programación y el sto si la activación del circuito es por alto se puede cerrar la carga de potencia de

[10:04] forma no deseada durante algunos instantes en el Boot suficiente para provocar un accidente es por esto que lo más seguro es hacer activaciones por bajo o low además recuerda como vimos en este video que un pin gpio puede drenar más corriente como Sumidero hacia gnd que la que puede suministrar como fuente desde bcc me imagino que si llegaste hasta el final de este video es porque te gustó nuestro contenido y porque realmente Te agregó valor déjanoslo saber en los comentarios Qué te pareció y si pasaste

[10:42] Por alguno de estos errores además te invito a que nos cuentes si te gustaría saber cómo aplicamos cada uno de estos puntos en el diseño de pcb con sp32 muchas gracias y nos vemos en los próximos videos No olvides de suscribirte
