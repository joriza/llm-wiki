# Construí un control de inventario en Flet + SQLite y lo entregué en 4 días

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jw1IOxgbd3s)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-08-25
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:28

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un cliente me pidió un sistema de control de inventario. Le cotizaron 3 semanas en otro lado. Yo se lo entregué en 4 días, corriendo en su computadora, sin internet, sin suscripción mensual. La primera reacción de todo el mundo es la misma. 4 días, algo recortaste. Y sí, recorté, pero no recorté código escribiendo más rápido. Recorté alcance.

[00:18] Definí 4 pantallas que el negocio usa todos los días y descarté 6. Que suenan bien en una lista de funciones, pero que nadie iba a tocar nunca. Esta es la app terminada. Te voy a mostrar exactamente qué entra, qué queda afuera y por qué el esquema de base de datos que sostiene todo esto, cómo se construye la interfaz en Flet y la parte que pocos tutoriales muestran de verdad. Cómo se instala esto en la máquina de un cliente que jamás tuvo Python instalado. Antes de escribir una sola línea, me senté con el cliente

[00:41] y le pregunté una cosa. ¿Qué haces todos los días con el cuaderno de inventario que llevas ahora? No le pregunté qué función le gustaría tener. Casi todo cliente, si le preguntas eso, te va a pedir un dashboard con gráficos y reportes en PDF porque lo vio en algún vídeo. pregunté otra cosa. ¿Qué hace hoy a mano con el cuaderno todos los días?

[00:57] La respuesta fueron cuatro cosas, ni una más. Registrar entrada de mercadería cuando llega el proveedor, registrar salida cuando se vende algo, buscar un producto por nombre o por código cuando un cliente pregunta si hay stock y ver de un vistazo qué se está por acabar antes de que sea tarde para reponer.

[01:11] Cuatro pantallas, nada más. Fuera quedaron seis cosas que cualquier lista de funciones de un sistema de inventario te va a sugerir. Reportes con gráficos, multiusuario con roles y permisos, códigos de barra con lector físico, múltiples sucursales, facturación electrónica integrada y un dashboard con indicadores. Ninguna de esas seis estaba en el cuaderno del cliente. Todas suenan bien en una demo, todas quedan lindas en una captura de pantalla para vender el proyecto, pero ninguna resuelve el

[01:35] problema real, que es uno solo. No sé cuánto tengo de cada cosa hasta que se me acaba. El criterio de corte es simple y lo puedes aplicar a cualquier proyecto de software de gestión, no solo a un inventario. Si el cliente no lo hace hoy a mano, no lo metas en la versión 1. Se agrega después, si de verdad hace falta, cuando ya tienes el esqueleto funcionando y sabes qué pantalla usa de verdad y cuál nadie abre después de la primera semana. Yo he visto proyectos de meses que fallan por la razón contraria.

[01:58] Se construyen las 15 funciones que pidió el cliente en la reunión inicial y las 15 fallan un poco en vez de cuatro que funcionan bien. Ese recorte es lo que hace posible los cuatro días. No es escribir código más rápido, es no construir seis pantallas que nadie iba a abrir. Y con el alcance cerrado en un papel, lo que sigue es decidir qué sostiene esas cuatro pantallas por debajo. Con el alcance cerrado, lo primero que se define no es la interfaz, es el esquema. La interfaz la vas a

[02:22] cambiar 20 veces mientras el cliente prueba la app y te pide mover un botón o cambiar un color. El esquema, si lo piensas bien una vez, no lo tocas más. Por eso el orden importa en cualquier CRUD en Python de escritorio. Base de datos primero, pantallas después. Escogí SQLite por una razón simple, no por moda. Es un solo archivo, no hay servidor que instalar, no hay usuario ni contraseña que configurar, no hay puerto que abrir en el firewall del cliente. El motor entero vive dentro de la

[02:45] aplicación de Python. Así que instalar la base de datos en la máquina del cliente literalmente no es un paso. Ya está dentro del ejecutable. Y del lado de la interfaz pasa algo parecido. Flet es open source, sin costo de licencia, así que tampoco hay una cuota que pagar por usarlo en un proyecto para un cliente. Eso es lo que hace posible un sistema de inventario gratis de verdad.

[03:04] Sin costo de servidor, sin costo de licencia del framework, sin suscripción a una nube, sin factura mensual que el cliente tenga que pagar para seguir usando lo que le entregaste. El sistema usa tres tablas. Productos para lo que se vende, movimientos para cada entrada y salida. Nunca actualizo el stock directamente, lo calculo sumando movimientos porque así siempre tengo el historial completo, no solo el número final, y categorías para poder filtrar y agrupar sin repetir texto en cada

[03:28] producto. Fíjate en tres decisiones chicas que evitan bugs grandes. El pragma foreign case on al principio del esquema no es decorativo. SQLite no valida las referencias entre tablas por defecto, así que sin esa línea las referencias a categorías y a productos quedan ahí como documentación, no como una regla que la base de datos haga cumplir de verdad. El check en tipo impide que se guarde cualquier cosa que no sea entrada o salida. La base de de rechaza el dato malo antes de que llegue

[03:52] a la interfaz. No depende de que el código de la pantalla se acuerde de validarlo. Y el check cantidad cero impide una salida negativa, que es el bug clásico de un inventario mal hecho. Alguien resta stock con un número mal tipeado y el reporte queda mintiendo durante semanas sin que nadie lo note hasta que falta mercadería. La relación es simple, una categoría tiene muchos productos, un producto tiene muchos movimientos, nada de tablas intermedias ni relaciones de muchos a muchos. Ese

[04:15] tipo de complejidad es exactamente lo que un inventario chico no necesita y meterla igual es la manera más común un proyecto de cuatro días en uno de tres semanas. La capa de acceso es una función por operación, nada de un ORM completo para tres tablas. Sería más código para mantener que las tablas mismas. Stock actual no lee un campo, lo calcula sumando entradas y restando salidas cada vez que se pide. Es un poco más de trabajo en la consulta, pero significa que el número de stock nunca

[04:39] se desincroniza del historial, porque son la misma fuente de verdad. Si algún día el número no cuadra, el historial de movimientos te dice exactamente por qué, cosa que un campo stock guardado a mano nunca te va a poder mostrar. Con la base de datos resuelta, la interfaz se vuelve el problema fácil. Y esto es lo que pocos tutoriales muestran en español. Un CRUD en Python de escritorio se resuelve con tres controles de Flet. Una tabla de datos, campos con validación y diálogos.

[05:01] Con esos tres cubres listar, crear, editar y eliminar, el 80% de cualquier app de gestión en Python que vayas a construir. Esto es la pantalla de productos, una data table que lee de SQLite y un botón que abre un diálogo para agregar o editar. Esa línea del color es la alerta de stock bajo completa, la función entera del negocio resuelta en una comparación. Si el stock calculado es menor o igual al mínimo que definiste para ese producto, la fila se pinta de rojo. No hay un sistema de

[05:26] notificaciones separado, no hay un job corriendo en segundo plano, no hay correo automático. Es una condición evaluada en el momento de dibujar la tabla y eso es todo lo que el cliente necesitaba para dejar de quedarse sin stock por sorpresa. El diálogo de alta usa validación simple antes de tocar la base de datos, para no llenarla de basura si alguien deja un campo vacío.

[05:44] La pantalla de búsqueda reutiliza la misma data table, solo que en vez de listar todo, filtra por lo que el usuario escribe en tiempo real mientras tipea. La pantalla de movimientos es la misma lógica de formulario y diálogo, pero al revés, un formulario que llama a registrar movimiento y la tabla de productos se refresca sola después, porque el stock siempre se recalcula, nunca se guarda como número fijo en ningún lado. Con esto ya tienes el 80% de cualquier CRUD de escritorio en

[06:07] Python resuelto, listar, buscar, crear, validar y actualizar en pantalla sin recargar nada a mano. Y algo que ayudó muchísimo a llegar a 4 días, la recarga de Flet que muestra el cambio en la ventana apenas guardas el archivo sin reiniciar la app cada vez que ajustas un detalle de la interfaz. Acá está la parte que la mayoría de los tutoriales de Flet se saltea y es la parte que de verdad separa un proyecto de práctica de un proyecto entregado, llevar esto a una computadora que nunca tuvo Python

[06:32] instalado. Esa máquina, la del cliente, no tiene Python y no lo va a tener, no le voy a pedir que instale nada, ni un intérprete, ni dependencias, ni que entienda qué es un pip install. Flet empaqueta la app como ejecutable con el intérprete incluido adentro, así que el cliente no instala nada de Python. El empaquetado, eso sí, no lo hace la máquina del cliente, lo hago yo en mi propia máquina de desarrollo que tiene Visual Studio con el workload de desarrollo de escritorio en C++

[06:55] instalado, porque ese es el requisito para compilar el ejecutable de Windows. El comando de empaquetado, eso genera un ejecutable en build boss Windows que ejecutas directo en la máquina destino, doble clic y arranca como cualquier programa que el cliente ya conoce. Antes de copiarlo a esa máquina, hay un paso chico que es fácil de olvidar y caro si lo olvidas, verificas que el archivo .db que se distribuye está vacío o con los datos iniciales reales del cliente, no con tus datos de prueba. Es un error

[07:20] fácil de cometer y el cliente termina viendo 20 productos inventados que nunca cargó en su primer día usando el sistema. Lo último que dejé configurado antes de dar el proyecto por cerrado fue un respaldo automático simple, copiar el archivo .db a una carpeta con fecha en el nombre cada vez que se cierra la app.

[07:37] Con eso, si algo se corrompe o alguien borra algo por error, hay una copia de horas antes esperando en la carpeta de respaldos, no de la semana pasada. Es una función de 10 líneas y en la práctica es la diferencia entre un cliente tranquilo y un cliente que te llama en pánico un lunes porque perdió el inventario completo. Cuatro días, tres tablas, cuatro pantallas y un ejecutable que corre sin depender de un servidor, sin depender de internet, sin depender de ninguna suscripción que el

[08:04] cliente tenga que pagar cada mes. El código no fue lo difícil, lo difícil fue decidir qué no construir y ese mismo criterio de recorte lo puedes usar la próxima vez que alguien te pida un sistema de control de inventario en Python o cualquier otra app de gestión.

[08:16] Pregunta qué hacen hoy a mano, no qué les gustaría tener. Si es la primera vez que ves Flet, el vídeo donde lo pruebo en las tres plataformas está en el canal y explica de dónde sale todo esto. Soy Iván y nos vemos en el próximo.
