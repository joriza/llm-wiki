# Cómo LEER un SENSOR ANALÓGICO (autosen - AP016) de 4–20 mA en PLC LOGO!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oK0rGYagn8s)
- **Canal**: AV Smart Solutions
- **Publicado**: 2025-10-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:19

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola coleguitas, hoy veremos cómo conectar y escalar un sensor de presión de dos hilos con una señal analógica de 420 mamp con el logo de Siemens. Tenemos aquí nuestro sensor de presión de la marca Autosen con un rango de medición de 0 a 10 bar. Primero debemos comprobar que la señal que nos está entregando y el rango de medición del sensor sean las mismas que nos especifica el fabricante. Para esto utilizaremos un medidor de señales analógicas para comprobarlo. Bien, aquí tenemos

[00:37] conectada nuestro sensor de presión a nuestro medidor de señales analógicas. Vamos a proceder a encender. Como pueden ver, aquí tenemos nuestro instrumento patrón. Está marcando bares y nos está marcando 4 mamp. Si yo lo alimento, como pueden ver, tenemos cco bares, 12 mamp según según mi escala.

[01:12] Eso estaría correcto. Así que mi sensor me está entregando correctamente la señal y los valores que me está especificando el fabricante. Recordemos que nuestro logo no le es corriente, sino voltaje. Entonces, haremos uso de una resistencia para la conversión de de milamperios a voltios.

[01:34] Esto es gracias a la ley de este caso utilizaré una resistencia de 500 ohmnios. Ahora vamos a ver el cableado en un diagrama. Y bien, aquí tenemos el esquema de conexión entre nuestro logo, que en nuestro caso es una versión 1224 RCE y un sensor de presión de dos hilos.

[01:55] Aquí está el esquema de conexión por parte del fabricante. Como pueden ver, es un sensor de dos hilos donde el brown viene a ser la alimentación y el white es la salida analógica. Como les comenté, el logo no mide señales en milamperios, sino en voltios.

[02:15] Así que aquí está representada la forma de conexión de nuestra resistencia. Aquí pueden ver el cable va a la alimentación, en este caso es de 24 V al igual que nuestro sensor. La señal analógica va a la entrada analógica de este módulo, ya que en esta versión cuenta con cuatro entradas analógicas configurables.

[02:41] Y aquí conectaremos nuestra resistencia entre la entrada y la masa. Ahora continuaremos haciendo la conexión. de manera física. Aquí tengo mi cable brown que viene a ser el cable de alimentación. Estamos utilizando borneras, que es positivo y el wi que viene siendo mi el cable de la señal va a mi i7, que es el es la entrada que está configurada como entrada analógica. Bien, ahora vamos a pasar con la conexión de nuestra resistencia. Ahora que ya tenemos nuestra colección, vamos a pasar a ver

[03:26] el tema del escalamiento. Y bien, antes de pasar al escalamiento, primero veremos las equivalencias. Aquí tenemos el rango de medición de nuestro sensor y las señales analógicas estandarizadas por parte del logo. De estos podemos inferir que por cada volteo hay 2000 amp. ¿Por qué estoy haciendo esto? Lo vamos a ver en este apartado de acá. El logo no lee directamente de 0 a 10 V, sino que tiene una conversión y lo interpreta.

[04:03] como desde 0 hasta 1000. Este que está aquí, como pueden ver, yo lo he realizado, ya que nuestro sensor no mide desde cero, no nos envía una señal desde 0 mamp, sino desde cuatro. Así que nuestro rango en volos va a variar.

[04:19] Ahora tenemos que nuestro rango va a ser de 2 a 10 V y la interpretación por parte del logo sería de 200 a 1000. Ahora vamos a calcular el valor de la conversión o el factor de conversión para poder realizar el escalamiento, ¿no? Aquí tenemos nuestro 0 a 10 bar que por parte del logo vendrían a ser los 200 a 1000 en enteros o número en bruto.

[04:53] Realizamos una operación sencilla y tenemos aquí nuestro factor de conversión. Ahora vamos a ver todo esto dentro del logo Soft Comfort. Primero y principal, necesitamos una entrada analógica, ya que es la señal que nos está enviando nuestro sensor.

[05:12] Necesitamos un bloque amplificador analógico, ya que dentro de este vamos a poner los valores que hemos visto aquí, ¿no? De interpretación interna. Vamos a ver. Aquí tenemos que especificar nuestro sensor, en este caso 420 mamp y aquí, como pueden ver, rango de medición. Aquí colocamos 200 y 1000.

[05:40] Damos a aceptar. Este bloque no se puede quedar solo, así que le vamos a colocar una marca analógica. Debe ser analógico, ya que este envía una señal analógica. Vamos a necesitar también nuestro bloque de instrucción aritmética, ya que en este va a ser donde realizaremos las operaciones para realizar el descaramiento.

[06:04] Vamos a configurarlo. Aquí, como pueden ver, tenemos que conectar el valor que tenemos aquí, que vendría que vendría a ser la señal que me está enviando mi sensor, que va a ser mi valor primario o mi valor uno. Aquí vamos a realizar primero una resta, ya que nuestro sensor mide de 0 a 10 bares.

[06:39] ¿Y cuál era mi rango mínimo? Vamos a regresar. Aquí tenemos el mínimo es 200, así que aquí también vamos a restarle 200. Ponemos resta aquí y 200. Ahora sí, cuando esté en 200, cuando mi entrada me mande 200 por interpretación de logo, aquí yo voy a tener un cero.

[07:09] Una vez hecho esto, pasamos a multiplicar por el factor de conversión, pero como nuestro logo no acepta valores en decimales, vamos a colectarlo como entero. Y aquí si dividimos estos dos números, ya tenemos el 1 punto, ya tenemos el 0.0125 que nos da aquí.

[07:35] Bien, aquí yo lo voy a quitar un cero, ya que ese cero lo voy a poner como decimal en el texto de aviso. Bien, aquí tenemos configurado nuestro bloque de instrucción aritmética. Ese también va conectado, ese también va ese también va conectado a una marca analógica. Y recuerden que para que este siempre esté ejecutando la operación, necesitamos negar el conector o en su defecto colocarle una marca de estado high que vendría a ser un uno lógico.

[08:22] Pasamos a nuestro cuadro de texto de aviso, nuestro bloque de texto de aviso y ese también va conectado a una marca. En este caso yo le he colocado un conector abierto, pueden ser ambos. También necesitamos negar, ya que necesita un uno lógico para que este muestre en pantalla de logo lo que queremos visualizar. Vamos a pasar a la configuración.

[08:45] Aquí vamos a seleccionar el bloque de instrucción aritmética y vamos a seleccionar AQ amplificada, que vendría a ser el resultado final. Como pueden ver aquí, yo ya lo tengo arrastrado. Lo arrastran simplemente y este ya quedaría aquí. Si quieren comprobar antes de hacer la conexión, vamos a darle simular.

[09:13] Aquí está, ¿ve? 200 a 1000 que vendrían a ser el valor que va a interpretar el logo. Vamos a hacer la variación. 200 que es el cero tengo cero bares y 1000 vendrían a ser los 10 bares. Y así podemos verificar que está funcionando correctamente nuestro escalamiento, ¿no? Ahora vamos a pasar a cargar nuestro programa a logo.

[09:41] Seleccionamos aquí PC logo. En este caso yo tengo una conexión internet. Actualizamos. Comprobamos. Le damos aceptar. Vamos a darle que sí. Y ahora pasamos a la visualización en la pantalla del PLC logo. Y ahora pasaremos a comprobar los datos con nuestro instrumento patrón, contrastándolo con los valores que se pueden ver en pantalla.

[10:21] Ahí podemos ver está midiendo bares y en mi logo también me indica 0 bares. Vamos a darle alimentación. Ahora podemos ver cuatro bares en nuestro instrumento patrón y en el logo de igual manera cuatro bares. Vamos a realizar la variación.

[10:52] para que vean que también en nuestro logo está variando en tiempo real. Es tres bares y tres bares en nuestro instrumento patrón. Ahora tenemos dos bares en nuestro instrumento patrón y de igual manera se puede ver en la pantalla de nuestro logo.
