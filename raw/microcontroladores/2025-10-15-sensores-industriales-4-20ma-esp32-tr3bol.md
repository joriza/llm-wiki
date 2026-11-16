# Sensores industriales 4–20 mA con ESP32 (SIN PLC)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=XkdxKrvYVnc)
- **Canal**: TR3BOL ARGENTINA
- **Publicado**: 2025-10-15
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Sabías que la mayoría de sensores industriales no trabajan con señales de tensión, sino de corriente, como por ejemplo este sensor de nivel y este sensor de presión? Y lo hacen de 4 a 20 mamp. Y hoy en día mucha gente sigue creyendo que esta es una tarea exclusiva para los PLC o peor aún que no se puede lograr medir con precisión y seguridad con un microcontrolador o también que se necesita una entrada analógica por cada sensor a medir. Pero hoy te contaremos la verdad y es que estamos trabajando en

[00:34] nuestro laboratorio midiendo conductividad, niveles expresión y muchas variables más. Todo con un ESP32. Si alguna vez quisiste medir uno de estos sensores con un microcontrolador y no supiste por dónde empezar, estás en el momento y lugar adecuados.

[00:53] Soyema, fundador y CTO de Trevol, Argentina, certificados por normas IPC Internacional y con más de 700 desarrollos en distintos rubros de la industria, siempre con microcontroladores en nuestros diseños personalizados de PCB. En este video te mostraremos cómo medir sensores industriales con distintas estrategias y cualquier microcontrolador. Pero antes, si no lo has hecho, ve ya mismo a suscribirte y darle a la campanita para no perderte todo el contenido práctico y real.

[01:28] El objetivo es aprender a medir sensores industriales como este de nivel a través de un transductor de presión u otros como directamente de presión con salida 420 a mamp de dos cables, pero hay otros con modelos de tres cables o más y otros sensores como conductímetros que tienen también salida 4 a 20 m. Entonces, para que nuestro ESP32 en primer lugar pueda leer todas estas variables sin problemas, lo que podemos hacer es empezar generando estas señales 420 mA.

[02:03] Podemos utilizar, por ejemplo, estos módulos comerciales que convierten de tensión a corriente. Entonces, es muy fácil simular el comportamiento de los distintos sensores. Este modelo en particular admite una tensión en bein positivo respecto de GND de 0 a 3.3 V y generará a su salida, cuando esté correctamente alimentado y conectado, una corriente de 4 a 20 m. Y la relación será proporcional. Entonces podemos colocar un potenciómetro a la entrada alimentado a 3.3 V y el punto medio a

[02:38] vein positivo. Y es lo que hemos hecho con este circuito auxiliar de prueba. Tenemos por ahora nuestro Node MSU ESP32, que será el que mida estas corrientes, pero por el momento solamente hemos extraído 3.3 3 vol a los extremos de un potenciómetro cuyo punto medio va a bino. Por lo tanto, con nuestra placa alimentada, recuerda que esto suministra 5 V, pero los nodu tienen un regulador a 3.3 cuya tensión se puede utilizar para alimentar otros circuitos siempre que entendamos qué

[03:13] estamos haciendo. Entonces, colocando nuestro voltímetro en una escala de 0 a 20 V, podemos medir entre GND y esta tensión que ahora es entrada a nuestro sistema. Allí está en un punto medio en 1.5 V, pero podemos ir a un extremo para acercarnos a 0 V e irnos al extremo opuesto girando la perilla completamente hacia la derecha para llegar a 3.3 V. Y por ahora no tenemos ninguna corriente a la salida porque nuestro sistema no está alimentado. Por lo tanto, utilizamos una fuente switching a 24 V para alimentar

[03:49] BCC respecto de GND que es compartido con el GND de la señal para poder generar y medir la corriente de carga que se establecerá entre out y GND. Para eso podemos utilizar el mismo multímetro, pero en el sector de corrientes, en este caso de 0 a 20 m. Y observen que tenemos un LED de encendido de carga que por el momento está apagado porque el circuito está abierto. Cuando pongamos en serie entre la salida y GND estaremos cerrando el circuito. Entonces encendemos nuestra fuente con 24 V donde te recomiendo

[04:27] hacer esta estrategia de enchufar y desenchufar el positivo, porque si no, al encender la fuente tendremos un sobrepico de corriente muy elevado que puede dañar otros circuitos. Fíjate cómo rebota la aguja sin piedad. Entonces, vamos a cerrar el circuito y observaremos que se enciende el LED de carga y que en un punto medio tenemos 10.74 m. Entonces, podemos irnos a un extremo.

[04:54] En el extremo inferior debemos tener 4 m. Si no es exacto, podemos regularlo con el potenciómetro inferior multivoluelta. Vamos a dejarlo exacto en 4 m y vamos a pasar ahora al extremo derecho. Giro el potenciómetro completamente a la derecha para llegar a 3.3 V y debemos llegar a 20 mA. Para ajustarlo fino, nuevamente podemos hacer uso del potenciómetro que como estamos muy al límite del valor superior de 20 m, podemos aumentar en uno, aunque perdamos un poquito de precisión para

[05:28] dejarlo exactamente en 20. Hacemos la regulación fina y tenemos de 4 a 20 m exactos para todo el rango de funcionamiento de nuestro potenciómetro. Recuerda que esto es solamente para simular la carga real de corriente de 4 a 20 m. Si abrimos el circuito, se apaga la carga y se apaga el LED. Si volvemos a cerrarlo, se establece la corriente y podemos medirla.

[05:56] Ahora, ¿cuál es el siguiente paso? medir esta misma corriente con nuestro Node MSU o cualquier microcontrolador. Por lo tanto, la estrategia más simple de todas, sin complicarnos es agregando la denominada resistencia chunt. Es decir, en lugar de cerrar el circuito únicamente con nuestro multímetro, podemos agregar una resistencia, en este caso de 220 ohm 1/4 de W. Esta es de muy baja precisión. Para nuestro diseño final, debemos elegir una resistencia de un valor acorde con una precisión muy

[06:28] buena, por ejemplo, de 0.1% en valor y baja variación con la temperatura, por ejemplo, 25 ppm o partes por millón. Entonces, lo que haremos será agregar esta resistencia de 220 ohm entre GND y la salida. Así tenemos con mucho cuidado de no hacer un cortoocircuito la resistencia correctamente conectada entre el punto medio y GND. Entonces, midiendo ahora tensión entre GND y el otro extremo de la resistencia, al conectar nuestra fuente tendremos la tensión a medir con nuestro ESP32.

[07:05] Vamos al extremo inferior donde a 4 m tenemos una caída en la resistencia de aproximadamente 0.72 72 V y para el extremo superior, para 20 m, tenemos una caída en la resistencia de 3.58, lo cual destruiría nuestro ESP32 si lo conectamos directo a su conversor analógico a digital. Por lo tanto, es importante elegir el valor de esta resistencia a un valor seguro y con buen margen de seguridad. Por ejemplo, podríamos cambiarlo a una resistencia de 120 ohm. Vamos a desconectar la fuente,

[07:41] quitamos la resistencia anterior y colocamos la nueva. Así tenemos ahora una resistencia de 120 ohm y estamos en condiciones de cerrar nuevamente nuestro circuito. Y vemos que ahora en el mínimo tenemos 0.43 V y en el máximo 2.16.

[08:00] Totalmente dentro del rango seguro de 0 a 3.3 V de nuestro ESP32. Entonces, en forma directa, GND debe ser compartido con el ESP32. Y esta salida la podemos ingresar a cualquiera de todos sus pines analógicos con una precisión aceptable comparado con el ESP8266 que es de 10 bits. En cambio, el ESP32 es de 12 bits. Sin embargo, lo que recomendamos es utilizar integrados como el ADS1115, que no solo tiene una precisión mucho mayor y real, sino que se puede alimentar a 5 V, elegir una resistencia

[08:38] para aprovechar mejor el rango de conversión y conectar múltiples ADS 115 con multiplexación para leer múltiples corrientes 420 mA con solo dos pines de nuestro ESP32. Si utilizamos I² C, son solo dos pines y un convertidor lógico de tensiones, usamos la salida I² C para activar todos los dispositivos que queramos. Por ejemplo, el ADS tiene cuatro canales, pero podemos colocar múltiples ADS, cada uno con cuatro salidas. Por ejemplo, 4 ADS por cuatro salidas, podemos leer 16 corrientes, 420

[09:17] mA. Y si utilizamos multiplexación como con el TCA 9548A, seguimos multiplicando y multiplicando nuestro alcance. El siguiente paso fue realar la salida analógica de 0 a 3.3 V como entrada al ESP32 en cualquiera de sus pines analógicos. En este caso elegimos el D15, pero podría ser casi cualquier pin analógico. El circuito es exactamente el mismo al estar alimentado y con el regulador de tensión interno, tenemos 3.3 V en los extremos del potenciómetro.

[09:53] Y ahora vamos a alimentar con 24 V convertidor con la resistencia de 120 oh donde estamos imprimiendo el valor en milamper leído entre 4 y 20 mamp en todo el rango de la medición. Aquí tenemos el sensor de nivel sumergible y un tanque con agua.

[10:15] Entonces vamos a dejarlo sumergido y vemos que el extremo es muy simple de dos cables donde tenemos la alimentación positiva y la negativa. En este caso hemos agregado la resistencia de 120 ohms en el negativo. Por lo tanto, podemos alimentar nuestro circuito con 24 V, pero a su vez podemos medir la corriente generada con nuestro amperímetro. Entonces ponemos el positivo en serie con el positivo de nuestro amperímetro. y el negativo en el positivo de nuestro sensor. Y simplemente alimentando con 24 Vemos que

[10:52] en función de la profundidad tenemos un consumo diferente. Por ejemplo, aquí está totalmente en el aire y tenemos 4 mamp. A medida que lo sumergimos y mientras más profundo tendremos una corriente mayor, en este caso en el fondo de 5.32 m. Este mismo circuito, en lugar de medirlo con el amperímetro, lo mediremos con el ESP32 para mostrar la profundidad en el display.

[11:24] Entonces, realizamos una pequeña adaptación con el sensor real de dos cables. Tenemos la tensión negativa compartida con el negativo del ESP32 para que tenga la misma referencia y la resistencia de 120 oh. tenemos el punto medio a la entrada analógica en el mismo pin de 15, es decir, hemos reemplazado el conversor auxiliar ahora por el sensor real y estamos midiendo esa tensión analógica que ya sabemos que nunca supera los 3.3 V. Vamos a cerrar el circuito y hemos agregado la

[11:58] profundidad en porcentaje. Cuando tenemos el sensor completamente afuera, está al 0% con una lectura de 4 m. A medida que comenzamos a sumergir empieza a tener más presión, más corriente y por lo tanto la profundidad porcentual es mayor. Con el nivel de agua que tiene en este momento llega a un 61% de profundidad.

[12:24] Lo que acabas de ver es una experiencia muy simple como punto de partida para leer un sensor industrial con un pin analógico de tu microcontrolador. Pero como te enseñamos en el video de pocos pines que te dejamos por aquí o por aquí, podrás leer múltiples sensores con solo dos pines SDA y SCL. Por ejemplo, con un solo multiplexor tipo TCA puedes conectar ocho integrados ADS115, cada uno con cuatro canales. Entonces, un multiplexor 32 lecturas independientes de sensores industriales.

[13:01] Y si ves el video, entenderás hasta cuánto puedes multiplicar con simples estrategias de multiplexación E² C. Y si quieres más precisión, pero aún no dominas el diseño electrónico, puedes empezar utilizando convertidores en el sentido opuesto al mostrado en el video, es decir, de corriente 420 m. Atención, ten mucho cuidado de que esta tensión no sobrepase la que admite tu microcontrolador. Y si quieres ir un paso más allá con mayor precisión, también puedes hacer diseños basados en

[13:32] esta arquitectura con amplificadores operacionales y realimentaciones inteligentes para medir este tipo de sensores con mayor precisión. Siempre tu diseño profesional y robusto superará a los módulos comerciales. Pero recuerda, en lugar de utilizar las entradas analógicas de un microcontrolador, es mucho mejor utilizar integrados específicos con mayor resolución real y efectiva. Y luego adquirir esta información en forma digital, ahora sí, con cualquier microcontrolador. Y si

[14:02] quieres ir un paso más allá en tus desarrollos, te invitamos a nuestro curso de diseño de PCB esencial. Te dejamos toda la información aquí abajo en la descripción. Esperamos haberte aportado mucho valor con este y cada uno de los videos de nuestro canal. Y si no lo has hecho, ve ya mismo a suscribirte y darle a la campanita para no perderte todo el contenido de valor que está a punto de salir.
