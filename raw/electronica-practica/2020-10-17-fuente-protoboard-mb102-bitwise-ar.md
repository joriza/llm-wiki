# Arduino desde cero en Español - Capítulo 62 - Fuente de Protoboard Arduino y electrónica MB102

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=tznNsm4ep8k)
- **Canal**: Bitwise Ar
- **Publicado**: 2020-10-17
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:23

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hola a todos y bienvenidos a un nuevo capítulo de arduino desde cero en español en esta oportunidad veremos un módulo fuente de alimentación para protoboard muy útil y versátil para diversidad de proyectos de arduino y electrónica en general el módulo tiene las dimensiones para colocarse directamente sobre protoboard como se ve en la imagen y los pines posteriores quedan alineados con los rieles de atención superior e inferior a este modelo también se le denomina mb 102 por el ampliamente utilizado modelo

[00:34] de proto guard del mismo nombre identifiquemos primero los componentes del módulo para entender su funcionamiento este jack de alimentación es el mismo que se usa en el modelo de arduino uno pensado para ingresar con tensión no regulada con un mínimo de 6.5 y un máximo de 12 volts mediante una fuente de pared o baterías en el capítulo 50 analizamos varias cuestiones de alimentación si no lo viste te lo recomiendo luego tendremos un interruptor mecánico de encendido y apagado un diodo para protección de

[01:07] polaridad imbert y un led verde de encendido le sigue un puerto usb convencional que servirá tanto para entrada como salida de 5 volts regulados más adelante veremos un poco más en detalle este puerto y sus características finalmente los componentes activos que serán el corazón del módulo los reguladores de tensión este de aquí es el de 5 volts con un suministro de corriente de hasta 700.000 jumper el regulador toma la tensión no regulada que apliquemos a la entrada irregular 5volts de forma estable a su

[01:41] lado encontraremos un segundo regulador lineal pero de 33 volts con un suministro máximo de también 700000 jumper de manera que con ambos reguladores podremos alimentar dispositivos con 5 o 3,3 volts los reguladores lineales deben reducir la atención de entrada al valor regulado ya sea de 5 o 3,3 y esta tarea la realiza disipando energía en forma de calor este módulo simple y de bajo costo utiliza al propio circuito impreso como disipador para la tarea por eso el máximo suministro de

[02:16] corriente de 700 mil jumper se puede lograr por períodos cortos de tiempo por dicho motivo en la práctica se recomienda no llegar a más de 500 mil jumper como vimos antes la idea es colocar el módulo sobre protoboard y aplicar las tensiones reguladas de forma directa sobre los rieles de tensión de la misma para esa tarea tendremos versatilidad de uso mediante estos jumpers o puentes de color amarillo que permitirán establecer qué nivel de tensión a aplicar a cada riel de forma

[02:47] independiente en esta tabla se muestran las tres posibles combinaciones para un riel sobre el propio circuito impreso aparecen las designaciones de los voltajes dependiendo de la posición de los jumpers por eso si lo ubicamos de esta forma obtendremos en el riel asociado cinco goles en definitiva la salida del regulador lineal de 5 volts se aplica al riel si colocamos el jumper en la posición intermedia con la denominación off no estaremos aplicando tensión es una forma de inhibir la

[03:18] aplicación de tensión al riel en esta otra posición lograremos que la salida del regulador lineal de 33 sea el aplicado al riel lo mismo se aplica al otro riel de protoboard de hecho podrás ver en esta imagen que los sounders están colocados de manera tal de tener en este riel 5 y en este otro 33 una configuración usual que podríamos tener en un proyecto de arduino donde se requieren ambos niveles por existir sensores o dispositivos que requieren tanto de 5 como de 33 un ejemplo sería cuando analizamos al nrf

[03:55] 24 l 01 en el capítulo 51 donde para alimentar al nrf usábamos un regulador externo de 33 con este módulo de fuente y podríamos haberlo hecho sin componentes adicionales estos 8 pines macho de aquí permiten brindar tensiones de 5 y 33 en todo momento útil para colocar por ejemplo dispositivos como ser un ventilador que ya viene con un conector tipo dupont hembra armado o para colocar cables individuales estas tensiones estarán siempre presentes y es independiente de la posición de los jumpers que se aplican

[04:32] sólo para los rieles de protoboard toda la fila inferior de 4 pines serán de referencia además a gene de 2 para 3 3 y dos para 5volts de manera que verás que existen muchas opciones que brindan versatilidad a la hora de alimentación aquí te muestro rápidamente cómo se coloca el módulo en protoboard con los pines del módulo primero en el riel superior y luego los pines sobre el riel inferior verificando que quede todo bien alineado y de forma firme quizás tengas que hacer algo de fuerza al colocarlo

[05:04] por primera vez pero ya luego con el uso se ajustará perfectamente para la alimentación yo estaré usando una fuente de pared de 75 volts y 1000 miriam pero recordad que el rango posible es de 6,5 a 12 como los reguladores brindan un máximo de 700.000 jumper la fuente no es necesario que brinde un suministro muy superior a los 1000 miliamperios esta fuente en particular la tengo hace tiempo y no tenía el plus por eso verás que directamente tengo los cables separados y algo de soldadura en

[05:37] sus extremos con cables de color negro es importante primero verificar cuál de ellos es el positivo que lo podrás hacer con un tester o multímetro y este adaptador muy útil que tiene una born era en un extremo para atornillar los cables y un plug de 55 milímetros de diámetro exterior que va justo para el jack del módulo la idea es que pueda ser reutilizar alguna fuente que tengas de algún viejo dispositivo si está dentro del rango permitido de manera que sólo es cuestión de conectar la fuente a

[06:09] suministro de red y el plug a la entrada del módulo y así tendremos todo listo y dependiendo de cómo hayamos configurado los jumpers tendremos tensión en los rieles al presionar el botón de encendido es importante que antes de comenzar a trabajar con tu proyecto hagas una verificación de que los rieles tienen la atención correcta para eso podrás usar unos cables y colocarlos en principio sobre el riel superior en mi caso el último configurado para 5 volts el botón deberás verificar que el texto

[06:40] muestra una atención muy cercana a 5 en mi caso como se ve de 497 misma tarea para el riel inferior en mi caso que lo tengo configurado para 3,3 deberé verificar que se encuentra presente dicha atención ahora sí con tranquilidad podrás conectar todo lo necesario para tu proyecto queda el tema del puerto usb que al principio decía que sirve tanto de entrada como de salida de 5 volts regulados como salida es muy útil para alimentar otros dispositivos fuera de proto board mediante un cable aquí por

[07:15] ejemplo tengo conectado un arduino 1 y al presionar el botón de encendido del módulo vemos qué arduino uno enciende sin problemas claro que el modelo 1 ya tiene un jack de alimentación pero no sería el caso de por ejemplo una nano donde podrías colocar un cable usb a mini usb y así alimentarla o cualquier otro dispositivo para entender cómo usar este puerto como entrada enviamos el diagrama eléctrico o esquemático que nos brinda el fabricante qué vale aclarar hay varios de manera

[07:46] que cuando adquieras el módulo puede tener algunas variaciones de colores o disposiciones de componentes este conector es el de alimentación donde ingresamos con por ejemplo la fuente de pared si presionamos el botón de encendido queda justamente en esta posición si seguimos esta línea vemos que pasa primero por el diodo de protección de polaridad inversa y luego a la entrada del regulador de 5 volts a su salida tendremos 5 volts regulados y dicha atención estará presente sobre

[08:17] esta línea que se marca de color rojo si seguimos el camino vimos que ingresa al segundo regulador y de este último obtendremos los 3,3 volts pero quiero que veas como la línea roja de 5 goltz conecta el puerto usb que está aquí debajo y los 5 volts están presentes en el pin de dicho conector con el nombre usb bcc con letras de color naranja este sería el caso donde alimentamos el módulo con tensión no regulada y la salida del regulador de 5 volts rica de forma directa al puerto usb y de

[08:53] esa manera podemos alimentar otros dispositivos pero podemos usar también el conector usb como entrada aquí es importante aclarar que no podemos usar al mismo tiempo el puerto usb y el jack de alimentación como entrada entonces ingresamos con 5 volts mediante el puerto usb pasamos por alto al regulador conectamos directamente a la salida del mismo y luego igual camino que vimos antes para ingresar al regulador de 3-3 entonces para resumir y no complicar recomiendo que uses el puerto usb como

[09:27] salida para alimentar cualquier otro dispositivo aunque según lo explicado y aquí mostrado también podría usarse como entrada pero únicamente con 5 voltios regulados nunca con una tensión superior en resumen este módulo es muy útil para tenerlo a mano para nuestros proyectos de proto guard con arduino o electrónica en general es cómodo de bajo precio y podemos alimentar con variedad de tensiones y flexibilidad a la hora de brindar tensiones reguladas 5 33 volts eso es todo por este capítulo

[09:59] espero yo ha sido de tu interés si es el caso te pido le des un me gusta te suscribas si aún no lo has hecho activar la campana para recibir una notificación ni en se publica un nuevo material y por cualquier duda o comentario lo podrás hacer debajo que con gusto te responderé chao y hasta la próxima
