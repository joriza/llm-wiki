# Cómo usar una pantalla OLED SSD1306 con Arduino (128x64)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cWgWvNhWg-A)
- **Canal**: LaBuhardillaDelLoco
- **Publicado**: 2021-05-09
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:41

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:16] Hola y bienvenidos a La Guardilla del Loco. En este vídeo veremos en profundidad la pantalla OLED SSD 1306. Hablaremos de sus características y os enseñaremos cómo podemos usarla con nuestros proyectos de Arduino. Vamos allá.

[00:34] Este tipo de pantallas son cada vez más utilizadas en proyectos de Arduino u otros microcontroladores y tienen grandes diferencias frente a las pantallas de LCD. Las principales ventajas que encontramos es que son mucho más eficientes en cuanto a energía se refiere, ya que su consumo es mucho menor. Y esto es debido principalmente a su estructura. A diferencia de las pantallas LCD, estas no requieren de una luz de fondo ni de filtros para poder visualizar su contenido, ya que están

[01:00] formadas por unas láminas de materiales orgánicos que emiten luz cuando se les aplica electricidad entre ellas. De ahí vienen las siglas que las denominan organic light emitting diod, que traducido al castellano sería diode orgánico de emisión de luz.

[01:16] Estas pantallas, debido a su naturaleza, permiten ser mucho más finas, flexibles, de diferentes tamaños e incluso transparentes. Las pantallas OLED por sí solas no son capaces de mostrar información, ya que para eso necesitan un driver o controlador. Aquí es donde entra en juego el SSD 1306. Este es uno de los controladores más usados y se encarga de dar vida a este tipo de pantallas. Lo que hace el SSD 1306 comunicar con el microcontrolador para obtener los datos y enviarlos a la pantalla OLED para que

[01:48] dibuje esos datos. Como hemos dicho, este tipo de pantallas las hay de muchos tamaños y formas, pero nosotros hoy nos centraremos en una de las más usadas y que además consideramos una muy buena opción como punto de partida con este tipo de pantallas, ya que son muy económicas y fáciles de utilizar. La SSD 1306 OLED es perfecta para proyectos donde el espacio es fundamental, ya que son bastante pequeñas y ligeras.

[02:12] Podríamos usarlas, por ejemplo, para crear un reloj inteligente, usarla en pequeños dispositivos como juegos y, en general, en proyectos donde el espacio sea limitado. Lo bueno de este modelo es la poca cantidad de pines que se necesitan para hacerla funcionar, ya que la comunicación con Arduino se realiza por I2C, por lo que solo necesitamos cuatro pines.

[02:32] Las conexiones son muy sencillas. Conectaremos el SDA de la pantalla al pin analógico a cu de Arduino y el pin SC de la pantalla al pin analógico a 5 de Arduino. En cuanto a la alimentación, conectaremos GND y VCC a GND y 5 V, respectivamente.

[02:50] Para hacer funcionar esta pantalla con Arduino, podríamos hacerlo sin necesidad de usar ninguna librería, pero para facilitarnos el trabajo, haremos uso de ellas. Para instalar la librería, usaremos el gestor de librerías del Hyde Arduino y buscaremos la librería con el nombre Adap Fruit SSD16 y pulsaremos en el botón de instalar.

[03:09] Automáticamente nos aparecerá esta ventana informándonos de que esta librería dispone de dependencias que se necesitan para ampliar las funcionalidades de la librería. En este caso nos dará la opción de instalar únicamente la librería SSD 1306 o instalar también la librería GFX, que es una librería complementaria que nos permitirá dibujar formas geométricas como puntos, líneas, triángulos, círculos, etcétera. Es decir, se trata de una librería gráfica, así que la instalaremos también. Una vez instalada

[03:38] y para comprobar que todo funciona correctamente, abriremos el ejemplo que nos trae. Este ejemplo nos hace una demostración de lo que es capaz de ofrecernos gráficamente hablando. Algo importante a tener en cuenta, si no os funciona cuando subáis el sketch es que debemos modificar la dirección de comunicación que usará la pantalla. En mi caso, sustituiré la dirección por esta otra.

[03:59] Una vez hecho esto, subiremos el sketch y podremos ver el ejemplo en acción. Si nos fijamos, primero aparece el logotipo de Adat Thruid, seguido de una serie de dibujos y gráficos que van cambiando hasta completar la demostración.

[04:20] Como veis, las posibilidades frente a las pantallas de LCD 1602 son mucho mayores y nos dan más juego a la hora de crear y personalizar las pantallas de nuestros proyectos. Ahora pasaremos a enseñaros cómo usar las funciones más interesantes de la librería y lo haremos partiendo de un ejemplo que hemos creado para vosotros y que dejaré en la descripción del vídeo. Lo primero que debemos hacer como siempre es incluir en el sketch las librerías de las que haremos uso. En nuestro caso, ya que

[04:45] vamos a comunicar la pantalla usando I2C, declararemos la librería Quir, ya que esta se encargará de dicha comunicación. Después declaramos las dos librerías de la pantalla, es decir, la librería base de [música] SSD 1306 y la librería gráfica. A continuación, y esto dependerá del tamaño de vuestra pantalla, definiremos dos constantes simbólicas con el ancho y alto de nuestra pantalla. En nuestro caso es una pantalla de 128 [música] por 64.

[05:11] Después, y esto también dependerá de la pantalla que estemos usando, definiremos el pin de reset. Este pin se usa en algunos modelos que incorporan un pulsador en la pantalla que nos permitirá resetear Arduino con él. En nuestro caso, nuestra pantalla no dispone de ninguno, así que lo dejaremos en -1. La siguiente línea corresponde con la dirección de comunicación I2C que mencionábamos anteriormente. En mi caso, esta es la dirección correcta. A continuación, creamos una instancia de

[05:36] la librería llamada Display. Como primer parámetro, le indicaremos el ancho de la pantalla usando la constante vista anteriormente. [música] El segundo parámetro de igual modo corresponde con el alto de nuestra pantalla, así que le pasaremos la constante de altura también. El siguiente parámetro que debemos indicar es un puntero a la comunicación I2C y lo haremos de este modo. Y por último pasaremos el parámetro del pin de reset aunque en nuestro caso no lo usemos. A continuación en el void setup

[06:03] inicializaremos el puerto serie a 9600 baudios. Inicializaremos la pantalla pasándole dos parámetros. El primer parámetro corresponde con una constante que indica que la pantalla usará la alimentación interna del microcontrolador. En caso de que usemos una alimentación externa para la pantalla, debemos usar esta otra constante. Y como segundo parámetro indicaremos la dirección de comunicación de nuestra pantalla almacenada en la constante dirección pantalla.

[06:29] Esta inicialización de la pantalla está dentro de un condicional if, porque en caso de que ocurra algún error, al iniciar la comunicación devolverá un valor buleano falso. Y de ser así, mostraremos por la consola serial dicho error. Vale, ahora ya lo tenemos todo listo para empezar a hacer uso de la librería. Empezaremos mostrando cómo podemos escribir en la pantalla un texto. Para ello, primero borraremos el contenido de la pantalla en caso de [música] que se esté dibujando algo en

[06:53] ella usando el método Clear Display. Después definiremos el tamaño del texto que vamos a imprimir en la pantalla y para ello usamos el método set teste. Este método lo que hace es multiplicar la escala del texto por un factor entero dado. Y como para este ejemplo queremos que la letra tenga el tamaño más pequeño posible, le indicaremos el tamaño uno.

[07:13] El siguiente método de la librería que usamos es set test color. Este método nos permite elegir el color de las letras. En nuestro caso, al tratarse de una pantalla monocroma, tendríamos únicamente dos opciones, el color negro y el color blanco. En nuestro caso, usaremos el blanco. Seguidamente, usando el método set cursor, definiremos la posición donde se dibujará el texto.

[07:33] Este método recibe dos parámetros, la posición X y la posición I, donde el texto comenzará. En nuestro caso, lo colocaremos en la parte superior izquierda. A continuación escribiremos el texto que mostraremos usando el método print ln. Y por último, para que nuestro [música] texto se dibuje, debemos llamar al método display.

[07:52] Subimos el sketch y veremos cómo el texto se muestra en nuestra pantalla. Como veis, ha sido muy sencillo. Ahora dibujaremos, por ejemplo, una línea en nuestra pantalla y lo haremos justo debajo del texto que acabamos de escribir. Para ello, haremos uso del método Drabline de la librería. Este método recibe cinco parámetros. El primero es el punto del eje X, donde empezará la línea, en nuestro caso en el punto CER. El segundo parámetro es el punto del eje i, donde comenzará la

[08:24] línea. Y como queremos que quede justo debajo del texto anterior, haremos que empiece aproximadamente en el punto 10. En el siguiente parámetro se indicará el punto final de la línea en el eje X. Y como queremos que la línea atraviese la pantalla de lado a lado, le indicaremos el ancho máximo, en nuestro caso 128.

[08:42] Como cuarto parámetro, del mismo modo, indicaremos el punto final de la línea en el eje I y usaremos de nuevo el punto 10, ya que queremos que la línea sea totalmente horizontal. Y como último parámetro, indicaremos el color de nuestra línea, que en nuestro caso será blanca. De nuevo, llamaremos al método display para que se actualicen los datos en nuestra pantalla y si subimos [música] el sketch podremos ver la nueva línea subrayando nuestro texto.

[09:08] Ahora haremos algo más divertido y lo que haremos será añadir nuestro logo del canal justo debajo de esa línea. Lo primero que necesitamos es preparar nuestro logo para pasarlo a un formato legible por la librería y lo haremos usando una herramienta online que es genial para llevar a cabo este proceso, ya que nos facilitará muchísimo el trabajo. Os dejaré el enlace en la descripción del vídeo. Esta herramienta nos permite convertir nuestras imágenes en una matriz de bytes que incluiremos

[09:32] en nuestro sketch para dibujar en la pantalla imagen deseada. El primer paso será seleccionar nuestra imagen y automáticamente se creará una previsualización de ella, pero debemos realizar unos cuantos ajustes para que la imagen quede perfecta en nuestra pantalla. Para ello, primero modificaremos el ancho y largo de la región donde se dibujará nuestra imagen.

[09:50] Y tenemos que tener en cuenta lo siguiente. Si quisiésemos que la imagen se dibujase ocupando todo el tamaño de la pantalla, deberíamos indicar precisamente eso, las dimensiones de nuestra pantalla. Pero como ya tenemos dibujadas nuestras letras y nuestra línea, queremos ajustar la imagen a un tamaño más pequeño. Nosotros ya hemos realizado pruebas y el tamaño óptimo para este ejemplo es de 84x 52.

[10:12] El siguiente paso será seleccionar el color de fondo. En nuestro caso, usaremos el color negro. Después invertiremos los colores marcando el siguiente check. El brillo, por el momento, lo dejaremos por defecto. El siguiente paso será elegir la escala de nuestra imagen y seleccionaremos la opción de escale to fit para que la imagen se adapte a las proporciones de nuestro canvas. Después debemos centrar la imagen de forma horizontal. Y ahora podríamos ajustar el brillo para que se

[10:38] aprecien mejor los detalles. Nosotros lo dejaremos en un 76%. Los ajustes del formato de salida los tejaremos tal cual por defecto y por último pulsaremos sobre el botón generate code y automáticamente se generará una ra de valores hexadecimales. Ahora ya tenemos nuestra imagen convertida.

[10:58] El siguiente paso será incluirla en nuestro sketch para dibujarla en la pantalla. Primero declararemos dos constantes simbólicas que contendrán las dimensiones de nuestra imagen. Si recordáis teníamos un ancho de 84 y un alto de 52. Ahora declararemos el array que contendrá nuestra imagen. Para ello, crearemos una constante sin firmar de tipo char a la que pasaremos la directiva progmen para que los datos sean almacenados en la memoria flag en lugar de la memoria RAM. De este modo,

[11:26] Arduino irá más desahogado. Y ahora pegaremos los valores hexadecimales que habíamos copiado al generar nuestra imagen. Bien, ya tenemos la imagen incluida en nuestro sketch. Ahora solo faltaría dibujarla en la pantalla y eso lo haremos usando el método Drop Bitmap.

[11:41] Este método recibe seis parámetros. El primero corresponde con la posición X de la pantalla donde comenzará nuestra imagen. En el segundo parámetro indicaremos la posición I, donde se posicionará. En el tercer parámetro indicaremos el nombre de la ray donde está almacenada nuestra imagen. [música] El cuarto y quinto parámetro corresponden con el ancho y alto de nuestra pantalla y el último parámetro se refiere al color. Ahora, como queremos que la imagen se posicione justo debajo del texto y la línea,

[12:08] haremos lo siguiente. Primero centraremos la imagen en la pantalla y esto lo haremos restando el ancho de la imagen al ancho de la pantalla y lo dividiremos entre dos. De este modo la imagen se centrará horizontalmente.

[12:20] Ahora haremos lo mismo verticalmente. Restaremos la altura de nuestra imagen a la altura de la pantalla, lo dividiremos entre dos y le sumaremos siete para que la imagen se encuentre un poco más abajo del centro vertical. Con esto ya tenemos nuestra imagen en la posición deseada.

[12:34] Ahora indicaremos el nombre de la array que contiene nuestro logo, el ancho y largo del mismo y el color. Y por último, llamaremos al método display para dibujarlo en la pantalla. Subiremos el sketch y podremos ver nuestro texto, nuestra línea y nuestro logo justo debajo.

[12:51] Como veis, no ha sido muy complicado. Ahora podríamos crear animaciones, menús para controlar nuestros dispositivos o incluso juegos. Las posibilidades son infinitas. Si os ha gustado el vídeo y queréis que profundicemos más en este tipo de pantallas y todas las posibilidades que nos ofrecen, déjanos tu like y suscríbete si todavía no lo has hecho. Estamos preparando nuevos contenidos muy interesantes que pronto tendremos en la guardilla. Espero que estéis bien. Un saludo a todos y

[13:16] recordad, nos vemos en la guardilla. Ah.
