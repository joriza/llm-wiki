# De Arduino a ESP32: Como empezar!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=GFSmj-4rOgM)
- **Canal**: IoT Lab
- **Publicado**: 2025-04-01
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:11

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Si estás buscando mejorar tus proyectos de Arduino incorporando capacidades inalámbricas, el SP32 es una opción que debes conocer. En este vídeo exploraremos las diferencias clave entre Arduino y SP32. Hablaremos de las placas SP32 que hay en el mercado. Te guiaré en su programación donde te daré algunos consejos y destacaremos sus características más importantes.

[00:17] Comenzamos este vídeo haciendo una comparación entre las dos placas más populares del mundo de la electrónica, el Arduino 1 y el SP32. Ambas cuentan con un microcontrolador. Para quien no lo sepa, es el componente que actúa como el cerebro de la placa. o, en otras palabras, el encargado de ejecutar el código, pero como veremos, las capacidades entre el Arduino 1 y el SP32 son muy distintas. Por ejemplo, el Arduino 1 utiliza el chip ATM Mega 328P, el cual opera a 16 MHz. Este procesador

[00:42] de 8 bits es ideal para proyectos básicos, prototipos y para quienes inician la electrónica, ya que ofrece una buena relación entre simplicidad y funcionalidad. Y por otra parte, el SP72 está basado en el chip DWDQ6, que funciona a más velocidad, a unos 240 MHz. Este microcontrolador es de 32 bits, no solo ofrece una capacidad de procesamiento mucho mayor, sino que también incorpora conectividad wifi y Bluetooth. Y justo esto abre un abanico de posibilidades para proyectos más

[01:07] complejos e interconectados. Para poner en perspectiva esta diferencia, existe una prueba de rendimiento muy ilustrativa. En 30 segundos, un Arduino 1 es capaz de encontrar aproximadamente 3,000 números primos, mientras que el SP32 logra identificar más de 125,000 números primos en el mismo intervalo de tiempo. Este resultado nos muestra claramente la potencia del SP32 para ejecutar cálculos intensivos en comparación con el Arduino 1. Es importante aclarar que cuando hablamos

[01:31] de Arduino nos referimos a las placas originales equipadas con chips ATM y no a los modelos recientes que ya incorporan chips SP. Esta diferenciación nos ayuda a entender que aunque ambas plataformas tienen sus ventajas, el SP32 destaca por aplicaciones que requieren mayor velocidad y conectividad, mientras que el Arduino 1 sigue siendo una opción excelente para proyectos sencillos y para aprender los conceptos básicos. Con esta comparación quiero que te hagas una idea clara de las capacidades de cada

[01:53] placa y sepas cuál se adapta mejor a las necesidades de tu proyecto. Si estás empezando, seguramente te preguntas qué modelo del SP32 elijo. Probablemente ya has buscado SP32 en Google y te has puesto a mirar los diferentes módulos que hay. Y si no te ha dado un brote de esquizofrenia como a mí cuando vi 1000 versiones que hay, felicidades, eres un verdadero friky. Porque por algún motivo existe el SP32 S2 Vrom N4, el SP32 S2 Vrover N4 R2, el SP32 Mini 1N4, también el SP32 Pico V30, seguido del SP32 C3

[02:24] Mini 1U N4. ¿Y cómo olvidarme del SP32 Mini 1U N4? Y así una lista infinita de módulos con nombres cada vez peores. Si todavía no has entrado en el hospital psiquiátrico de tu ciudad, estás de suerte porque la gente de Expressive tiene una web para poder comparar cada módulo y ver las diferencias que hay entre ellos. Pero bueno, hazme caso, haz como yo. Entra en Amazon, coge el más barato que veas y en menos de una semana lo tienes en casa. Con esto haz tus primeras pruebas, conecta pines, explora

[02:49] funcionalidades y cuando tengas todo claro, ya sí elige una placa que sea más compatible con el tipo de proyecto que quieras hacer. Todas las placas suelen tener WiFi y Bluetooth, permitiendo la comunicación inalámbrica y unos 38 pines para conectar entradas y salidas para diferentes funciones como PWM, convertidor analógico digital, convertidor digital analógico, SPI i2C, entre otros. Pasemos ahora a la programación. La forma más sencilla de programar el SP32 es usando el Arduino

[03:12] ID, ya que la experiencia es similar a la de trabajar con un Arduino tradicional. La plataforma es lo mismo, solo hay unos pequeños pasos adicionales. Necesitas instalar el paquete de la placa para SP32. Para hacerlo, abre el administrador de placas del IDE, busca SP32 y descarga la versión más reciente. Una vez instalado, selecciona el SP32 de module y tu código funcionará correctamente. Y ahora que el entorno de desarrollo está listo, hablemos de cómo alimentar la placa.

[03:34] Tienes tres opciones. Conectar el cable USB directamente a tu portátil OPC, suministrar 5 V a los pines correspondientes de 5 V y tierra y tercero, suministrar 3,3 V a los pines de 3V3 y tierra. Ten cuidado de no aplicar un voltaje mayor a los de 3,3 V, ya que podrías dañar el chip. La única excepción es el pin de 5 V que incluye un regulador de voltaje interno. Pasemos al esquema de pines. El SP32 dispone de 38 pines. Seis se destinan a la alimentación que acabo de explicar. Para

[04:01] conectar a tierra, el pin GND. Para alimentarlo a 3,3 V usamos el pin 3V3. Y para alimentarlo a 5 V, el pin 5V. Después tenemos seis pines que no están disponibles, los que van de la D0 a la D3, el pin CMD y CLK. El SP32 usa estos pines para comunicarse con la memoria flash externa mediante SPI, por lo que no son muy recomendables para uso general. Y quitando los pines de alimentación y estos últimos que no pueden usarse, quedan 26 pines de entrada salida. Si consultas el pinout

[04:27] de la placa de Explif, podrás ver la leyenda y fijarte para todo lo que se pueden utilizar estos pines restantes. 22 de estos pines pueden generar señales PWM con una resolución de 16 bits. Esto quiere decir que permite valores de 0 a 65,535. Con Arduino tan solo tenemos 8 bits, por lo que tan solo podemos tener valores de 0 a 255. Además de esto, 16 pines permite la lectura de señales analógicas mediante convertidores ADC de 12 bits que son capaces de interpretar valores de entre 0 y 4,095 comparado con

[04:56] el ADC de 10 bits de Arduino que opera entre 0 y 1023. En cuanto a la comunicación como Ward i2C y SPI tenemos diferencias entre las dos placas. Por ejemplo, el Arduino 1 dispone de un puerto Wart, mientras que en el SP32 tienes tres. En cuanto al i2C y SPI, el Arduino 1 cuenta con un puerto dedicado para cada uno, mientras que en el SP32 permite configurar múltiples pines GPIO para estas funciones mediante software.

[05:18] Ahora llegamos a las capacidades inalámbricas que distinguen al SP32. Este puede trabajar en tres modos WiFi: modo estación, modo punto de acceso y modo dual. El primero, que es el modo estación, se conecta a una red wifi existente, como lo haría un móvil o un PC, permitiéndole acceder a servicios de internet, descargar datos y conectarse a APIs Web. La forma de hacerlo es importando la librería declarar dos variables, una con el nombre de tu red y otra con la contraseña. Le decimos al

[05:41] SP32 que intente conectarse la red mediante el método beginin, al cual le pasaremos los parámetros del nombre y la contraseña que acabamos de crear, y luego hacemos este bucle esperando hasta que la conexión sea exitosa y mostrar un mensaje cuando se conecte. Como consejo puedes utilizar la librería WiFi Manager. Con ella no tendrás que modificar manualmente el SSID y la contraseña de la red Wii a la que deseas conectar tu dispositivo, es decir, los dos parámetros que hemos creado al

[06:02] principio. WiFi Manager lo que hará es crear una red WiFi temporal a la que te conectarás. Luego te redigirá un navegador web donde podrás configurar manualmente la red wifi deseada. Una vez establecida la conexión, los datos quedarán almacenados para futuros arranques. Vayamos con el siguiente modo, que es el punto de acceso. En este, el SP32 crea su propia red inalámbrica a la que otros dispositivos pueden conectarse y se puede configurar un servidor web para intercambiar datos.

[06:23] Puedes usar el mismo código que has utilizado para conectarte en modo estación, pero en vez de usar el begin, usa Soft AP, donde el Ssid será el nombre del punto de acceso. Y finalmente, el modo dual permite que el SP32 obtenga internet del router, pero también que otros dispositivos se conecten a él. Es muy útil para proyectos de IoT donde necesitas que el SP32 sea un intermediario. En cuanto al código, simplemente tendrás que usar las dos versiones mencionadas anteriormente

[06:45] a la vez, creando obviamente dos SIDS y dos contraseñas. El SP32 también incorpora conectividad Bluetooth, lo que permite emparejarlo con otros dispositivos. Es similar a como cuando conectas tus auriculares a tu teléfono.

[06:55] Puedes hacer una simple prueba. Ejecuta este código en tu 32 usando la librería Bluetooth Serial haciendo un vegin como hicimos con el wifi. Al ejecutar y cargar el código en tu SP32 te aparecerá el nombre que le has puesto en la vinculación de dispositivos Bluetooth de tu teléfono móvil. Una vez queda vinculado, descarga una aplicación llamada serial Bluetooth Terminal.

[07:11] Enlázalo con tu SP32 y podrás comunicarte entre el móvil y tu SP32 por terminal. También tiene el Bluetooth Low Energy o BL. Como su nombre lo indica, está diseñado para consumir menos energía. En lugar de enviar los datos de forma continua, BL envía pequeños paquetes de datos de manera intermitente, lo que lo hace perfecto para dispositivos que necesitan ahorrar batería, como relojes inteligentes, sensores y dispositivos Io IoT. Para finalizar, hay una última forma de comunicación inalámbrica entre el SP32,

[07:34] que es el protocolo llamado SPN, desarrollado por Expressif, permite la comunicación inalámbrica directa entre dispositivos SP32 sin necesidad de un router, facilitando el intercambio de datos de manera rápida y eficiente. Este protocolo es especialmente útil en aplicaciones como el internet de las cosas, donde se requiere comunicación eficiente y de bajo consumo energético entre múltiples dispositivos. Además, ese pena es versátil, permitiendo configuraciones de comunicación

[07:56] unidireccional y bidireccional y soporta la coexistencia con WiFi Bluetooth, lo que amplía sus posibilidades de uso en diversos proyectos. Y si quieres seguir aprendiendo de IoT, te dejo dos cursos. un de MQTT, el protocolo por excelencia de IoT y también Lorwan, una tecnología muy popular en el campo del IT.
