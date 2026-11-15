# Problemas con NRF24 - Soluciones y Mejoras! Antena, Ruido, Alimentación

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=8YIy0IyV4c4)
- **Canal**: ELECTRONOOBS en Español
- **Publicado**: 2022-10-22
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos manuales es (manual), transcripción literal)
- **Duración**: 12:54

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Este es uno de los muchos modelos de radio NRF24. ¿Alguna vez te has sentido frustrado por no hacer funcionar este módulo? Porque yo sí, varias veces. Así que déjame mostrarte qué problemas puedes encontrar con este módulo y cómo solucionarlos y mejorar la conexión.

[00:19] También, para ver que nuevos modelos tenemos. Hablaremos de ruido, problemas de SPI, sensibilidad de alimentación, amplificación y antenas. Así que, vamos a empezar. Que pasa electrónicos, bienvenidos. Todos estos son módulos de radio.

[01:51] De hecho son el mismo módulo, el NRF24 L01. Pero como puedes ver, a lo largo de los años, su diseño evolucionó y mejoró cada vez más. Pero aun así, usar este módulo puede ser frustrante. He usado mucho este radio y entenderás por qué sigue siendo mi favorito.

[02:10] He hecho varios mandos de radio y todos estos son caseros y están basados en el módulo NRF24. También he hecho muchos otros proyectos de conexión de radio, y por ahora todos funcionan. Pero tuve muchos problemas, y en este video quiero repasar cada problema y una posible solución.

[02:33] Como un 30% de los comentarios en mis videos del módulo NRF24 son sobre frustraciones con este módulo porque no funciona. Entonces, ¿por qué es eso? Problema número 1, conexiones. El NRF24 usa SPI y necesita 7 pines. Dos para alimentación, dos para MOSI y MISO y luego tenemos el CE, CNS y la conexión del reloj.

[02:59] Entonces, obviamente, esto da como resultado tener un montón de cables, así que la probabilidad de error es alta. Además, la forma básica de los pines del NRF24 no es compatible con ninguna placa de pruebas. En mi caso tuve que hacer estos adaptadores para poder usarlos.

[03:18] Así puedo poner el módulo en el adaptador y luego el adaptador en la protoboard. Si quieres, puedes comprar esos adaptadores que ya tienen la regulación de voltaje en la PCB, y ese es otro problema del que hablaremos. Entonces, mi primera recomendación es hacer una PCB en lugar de cables separados.

[03:39] Al mismo tiempo, si usas cables, debe hacerlos lo más cortos posible. ¿Por qué? Bueno, eso se debe al segundo problema, el ruido. No estoy hablando del ruido de radio de 2.4GHz. Estoy hablando del ruido inducido sobre la comunicación SPI.

[03:57] Entonces no es el ruido sobre la señal entre antenas, es el ruido entre el módulo y el microcontrolador. SPI es muy rápido y sensible. Por ejemplo, con mi dron Arduino, pasé meses averiguando por qué la conexión de radio se interrumpía todo el tiempo.

[04:17] Una razón fue que los picos de corriente de las pistas del motor DC inducían ruido sobre las pistas de SPI en la PCB. Por lo tanto, asegúrate de que las conexiones SPI no pasen por encima o cerca de las pistas de alimentación, sobre todo si esas pistas oscilan con PWM u otro tipo de señal oscilante.

[04:37] Con un proyecto he tratado de hacer una especie de caja Faraday alrededor de las pistas usando vías. Esa no fue una buena idea, y tuve aún más ruido. Lo mejor sería evitar que otras pistas se superpongan con las de SPI.

[04:52] Y hablando de cajas de Faraday, los diseñadores también se dieron cuenta de que el módulo tiene problemas de ruido, así que ahora podrías comprar un módulo como este. Tiene el módulo de radio encerrado dentro de una caja metálica para evitar cualquier ruido exterior, esa es la forma de hacerlo, no añadiendo vías alrededor.

[05:12] De todas formas, la recomendación final para el ruido SPI es intentar enrollar el cable de tierra con los de MOSI y MISO. Este método me ayudó mucho, sobre todo con las pruebas en la protoboard. Enrollar el cable de tierra alrededor de los cables SPI reduce mucho el ruido de otras pistas o cables, pero también el ruido entre los cables SPI.

[05:38] Por lo tanto, para el ruido debe: Primero, usar cables o pistas de PCB lo más cortos posible. Dos, coloque el módulo de radio lo más lejos posible de las pistas de conmutación de alimentación, incluso fuera de la PCB si puede.

[05:53] Tres, intente aislar el módulo de radio con algún tipo de carcasa Faraday. Y cuatro, enrolla el cable de tierra alrededor de los otros cables de comunicación SPI. Bien, el tercer problema frustrante son la potencia y la alimentación.

[06:07] Estos módulos son muy sensibles con el suministro. Todos funcionan a 3.3V. Con más lo quemarás y con menos no funcionará bien. Uno de los reguladores de voltaje más comunes que se usan con estos módulos es el AMS1117. Podría darte una salida de 3.3V muy estable.

[06:29] Un problema que encontré con este integrado es que tiene una caída de voltaje de 1.1V. Entonces, si tu proyecto funciona con baterías LIPO que son de 4,2 V, el voltaje máximo que podría dar este integrado es 4,2 menos 1,1, y eso es 3,1 voltios, que no es suficiente.

[06:48] Ese es un problema que tuve con el proyecto del mini dron porque quería usarlo con una pequeña batería de LIPO. Entonces, también probé el regulador HT73 33. Este tiene solo 100 mV de caída de voltaje. Pero otro problema a tener en cuenta es el consumo de potencia.

[07:08] En general, el NRF24 puede gastar unos 20 mA cuando esté en uso. Pero gastará más si tienes el modelo amplificado, con antena. El regulador HT73 33 tiene una salida máxima de 250mA. Si lo usas para toda la PCB, esa corriente se dividirá entre el microcontrolador, los MOSFETs de conmutación, los LED, etc., y también el módulo de radio, así que es posible que la potencia no sea suficiente.

[07:39] De hecho, con el HT73 33 todavía tuve algunos problemas. Es por eso que siempre trato de usar el AMS11 17 y tener una entrada superior a 5V para que la caída de voltaje no lo afecte. El peor escenario es usar reguladores conmutado como estos.

[07:56] Si usas un convertidor reductor para sacar los 3,3 V, tendrá mucho ruido y el voltaje no será suficientemente estable, así lo que los reguladores lineales deberían ser la solución. Estos módulos de radio son tan sensibles a los cambios de voltaje que se recomienda poner una capacidad de 20 a 100 nF entre su tierra y los pines de 3,3 voltios para reducir las oscilaciones de voltaje.

[08:20] Esta es una solución muy eficaz y lo hago todo el tiempo. Soldado directamente al módulo, o en caso de una versión SMD, poniendo la capacidad cerca del módulo en el PCB. Así que para problemas de alimentación, tenemos un regulador lineal con suficiente salida de corriente, una alimentación muy estable de 3,3 V y poniendo una capacidad cerca de la conexión de 3,3 V y nunca usar reguladores conmutados con este módulo de radio.

[08:50] El siguiente problema podría ser la antena o la amplificación de potencia. Cuando comencé con estos módulos, estaba usando este, que es el más común. Pero para una mejor conexión y mayor alcance siempre recomiendo usar el amplificado y con una antena como esta, sobre todo para el transmisor.

[09:09] Como podéis ver, este tiene en la PCB el NRF24 pero también un amplificador de potencia que es el RFX 24 01 C. Y en vez de una antena PCB esta vez tenemos una antena externa de unos 10cm. Para el proyecto del mando de radio esto funcionó muy bien.

[09:31] Pero cuando quieres hacer un proyecto pequeño como el mini dron, necesitas una versión más pequeña. Para eso tenemos el módulo SMD que se podría soldar directamente en la PCB. De hecho, mi placa ELECTRONOOBINO ya tiene los pads SMD para eso por si quieres hacer pruebas con ella.

[09:48] También puedes encontrar el NRF24E LE, que es una versión diferente. Pero este módulo SMD no tiene amplificación de potencia. O al menos no lo tenía hace unos años porque ahora también puedes encontrar la versión SMD del módulo de potencia amplificado como este.

[10:06] También es muy pequeño y lo mejor es que también tiene un conector IPEX. Entonces, podrías usar la antena de PCB o conectar una externa a este conector. Todo lo que necesitas es este pequeño adaptador y luego podrías atornillar una antena externa que podría ser de diferentes tamaños.

[10:24] Con esta configuración puedes obtener una conexión constante de hasta 2 Km, lo cual es una locura. Y sabes qué, con esta enorme antena, en la casa de mis padres en el pueblo, tenía comunicación de hasta 5 km, lo que es increíble.

[10:40] Te recomiendo que veas el canal IFORCED2D que llegó hasta 30Km usando este tipo de antena, y por eso me encantan estos módulos. Podrían tener un rango decente y son bastante fáciles de usar. Y este sería el último problema de frustración que podrías tener.

[10:56] El código. Una vez que descargues la biblioteca de Arduino, todo lo que tiene que hacer es definir 2 pines y la configuración básica. Esos dos pines son para las conexiones CE y CSN del SPI y pueden ser cualquier pin digital del Arduino.

[11:11] El resto son pines de comunicación de hardware y deben ser los pines 11, 12 y 13. Un problema podría ser que estes usando un código de canal diferente para el transmisor y el receptor, así que asegúrate de tener el mismo código.

[11:27] Luego tenemos algunas funciones para fijar algunas configuraciones. Puedes fijar la velocidad, y obviamente, cuanto menor sea la velocidad de transferencia de datos, menos errores deberíamos tener, así que siempre mantengo la velocidad en 250 KB por segundo.

[11:42] Y básicamente, eso es todo lo que debes saber sobre estos módulos. Tenemos algunas versiones con diferentes tamaños, son sensibles al ruido, necesitas conexión de cables cortos, aislamiento de ruido y son muy sensibles a la entrada de voltaje.

[11:57] Además, con amplificación y una antena decente puedes llegar muy lejos y también puedes controlar algunos parámetros en el código. Consulta mis tutoriales de Arduino o STM32 sobre cómo usar esos micros con estos módulos de radio.

[12:11] Y por cierto, no compres este módulo. Dicen que es un NRF24 compatible pero no lo es. No pude hacer que esto funcione, así que tenlo en cuenta. Espero que ahora puedas hacer que tu conexión NRF funcione. Si has aprendido algo nuevo, considera darme un me gusta o un comentario debajo.

[12:30] Gracias de nuevo y hasta luego electrónicos.
