# ✅  El Primer Juego creado con PICO Raspberry, uso de la pantalla OLED y nuevas Librerías

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=SavAmyic_J4)
- **Canal**: El profe García
- **Publicado**: 2021-03-22
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:05

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] en el vídeo hoy vamos a aprender a programar la pantalla oled para crear un juego space invader vamos al vídeo para que aprender a programar su pantalla oled a cargar librerías y crear un pequeño juego [Música] l vamos con el vídeo vídeos patrocinado gracias a la empresa pixel higüey donde siempre mandó a hacer mis circuitos impresos nos ofrece la fabricación de pcbs estándar de percebes avanzados psd flexibles el montaje de los peces como tal plantillas de cmd y ahora tiene

[00:38] fabricación de piezas en cnc y 3d damos la fabricación de piezas del cnc de tres cuatro y cinco ejes carcasas de metal la parte de 3d inyección nos pueden fabricar piezas en aluminio o en acero inoxidable realmente está muy bueno el nuevo servicio de piscina no solamente es impresos que lo que yo manejo sino veamos que también hace otras cosas muy interesantes para programar una pantalla oled inicialmente nos conectamos le damos stop de que esté funcionando y se detenga cualquier

[01:12] programa que esté corriendo en el momento recuerden que por ejecutar el intérprete debemos escoger el raspberry pipe ico y el puerto al que esté conectado luego debemos subir la librería que nos va a consolar la pantalla oled el integrado a la pantalla oled es un ssd 1306 entonces vamos aquí a herramientas gestionar paquetes debemos estar conectados a internet y lo colocamos acá ssd le damos buscar aquí lo encuentra esta es la que vamos a utilizar nos aseguramos que sea stefano el

[01:53] fabricante del autor le damos instalar a ella realizó la instalación le damos aquí cerrar o veamos dónde la instaló porque le había instalado en el mic nos vamos a ficheros abrir ficheros pregunta donde mi computadora en el micro en el rush barry pipe y co y si nos damos cuenta aquí ya está instalada en una sub carpeta que dice librerías y aquí la tenemos cancelamos y ahora sí vamos a escribir nuestro código para controlar la pantalla oled está la conexión que vamos a realizar la pantalla desde el

[02:30] bcc a veces invierte esta vez ese con el gn de tengan cuidado en eso no siempre es así estándar está funcionando con 5 o 3,3 voltios así que lo conectamos a 3,3 voltios la señal del club que está activa en gris la conectamos al gp 7 la señal del data la amarilla la conectamos al gp 6 ahí vamos a reutilizar el puerto una comunicación y dulce utilizamos esto gps a gps 7 que son el y 12 1 tanto de seda como ssl si fueran a utilizar el i20 nos conectamos al 8 y el 9 y esta vez estamos con él y 12 1

[03:06] téngalo presente para el momento de la programación le decimos que el nuevo programa tiene más y ya podemos empezar a escribir el código vamos a llamar una librería la de machine e importamos la función team y la función y 12 puede mantener esta sintaxis está mayúscula y ésta la primera mayúscula ahora vamos a importar la librería que controla el oled la ssd 1306 aquí utilizamos el nombre que queramos que le puse doble profe y vamos a programarlo con las características de la pantalla oled

[03:40] este 128 x 64 es el tamaño de nuestra pantalla oled así que se lo debemos configurar x es importante colocarle el puerto de comunicación y 12 11 el 0 1 y 1 el que estamos cuadrando en este momento primero colocamos la pantalla en negro lo que haríamos y este texto es para desplegar el texto que queramos a partir de ahí pues vamos a escribir lo colocamos entre comillas profe garcía el texto que queramos y ahora posiciones x y la pantalla posición xy posición de la pantalla y colocamos la columna 6 fila

[04:20] 12 vamos a colocar un segundo texto qué dice prueba o let lo metemos entre comillas para finalizar debemos desplegar aquí programamos lo que vamos a hacer pero con el último comando es que desplegamos toda la pantalla con este que es show ya estamos listos así que le damos subir por qué ocurrió este error porque no era conectado a la pantalla oled pues él intenta comunicarse con la pantalla oled y como está abierto a nuestros cables dice que hay error así que realizamos bien la conexión y volvemos a enviar el

[04:57] programa ahora si descargo bien y ahora podemos ver aquí en la pantalla ya vieron que es muy fácil son unas pocas instrucciones pero hay que tener precaución de tener bien conectado tenía un cable levantado por eso me dio el primer error ahora vamos a realizar esta conexión donde le agregamos un potenciómetro para poder mover nuestro tanque de guerra para defendernos de los marcianos invasores y lo conectamos a positivo en nuestro modo negativo en el otro y gp 27 en el centro y un bóxer que va conectado

[05:30] entre tierra y gp 18 esas son las condiciones adicionales y como ya teníamos o led conectados lo vamos a ver de forma lateral como está acá una vertical ese primero es el vídeo del cual yo lo descargue así que les voy a dejar el enlace por si quieren ver el vídeo original adicionalmente explican el programa porque él es el creador nos comparte el enlace para poderlo descargar ya les muestro aquí está el enlace y esta es la librería que ya la instalamos no es necesario ya que hasta el enlace

[06:03] compartido en níjar vamos a hacer enlace pueden ir el vídeo descargarlos y no se los dejo aquí en la descripción el enlace y copiamos todo el programa todo el programa del space invader todo el programa está lo copiamos y vamos al tony y se lo pegamos entonces ya lo tenemos todo listo que cambió debemos hacer recuerda que estamos utilizando nosotros la conexión 1 no la 0 entonces el programa que está ahí le cambiamos a la 1 lo cambié al 1 la línea 18 para que me funcione el play y ya me cargo

[07:11] aprendimos de una forma básica controlar la pantalla oled y ya pudimos cargar un juego de uno de los miembros de la comunidad nos vemos en un próximo vídeo chao [Música] [Música]
