# PRÁCTICA 3.5  LOGO RS Arranque estrella triángulo con inversión de giro de un motor trifásico.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=OaqSaC__qnU)
- **Canal**: José Miguel Pantoja Solano
- **Publicado**: 2023-12-30
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 35:40

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:03] Qué tal amigos vamos a hacer ahora el arranque estrella triángulo con inversión de giro de un motor trifásico con el controlador logo de sime iniciaremos con la programación encendemos el controlador y nos vamos a programar editar programa nuevo y nuevo y se ingresa la salida q1 tenemos que agregar aquí un bloque bloque especial sf vamos a agregar la memoria RS Ok editamos la entrada set aquí agregamos una función general que es el an y las entradas i1 e i3 Okay ahora retrocedemos

[01:22] y vamos a editar ahora la entrada reset aquí agregamos un bloque general también del tipo or seleccionamos y buscamos or y hacemos OK ahora entramos a definir las entradas acá es el q4 deos okay ahora colocamos estas entradas siguientes son negadas negado de la entrada i3 Okay bajamos nuevamente y acá también es la entrada negada de i4 Okay aquí hemos terminado esta parte y ahora haremos escape para salir y hacer otra bobina nuevo en este caso tenemos que cambiar aquí sigue la edición de

[02:59] q4 hacemos Ok y ahora acá colocamos otro bloque RS lo buscamos en funciones especiales seleccionamos y buscamos RS amos la entrada s buscamos funciones generales y acá colocamos la entrada i2 y la entrada i3 retrocedemos para editar la entrada r y acá colocamos el bloque or en funciones generales seleccionamos y buscamos or el bloque b6 como primera entrada colocamos el q1 hacemos Ok y las siguientes entradas son i3 e i4 negadas respectivamente y aquí hemos acabado con otra rama de

[05:08] esta bobina q4 ahora haremos la bobina q2 escapamos y hacemos nueva bobina acá sería q2 agregamos el bloque RS buscamos AC tenemos OK ahora en ahora editamos la entrada s y acá colocaremos el temporizador seleccionamos y buscamos el temporizador on the l Acá está hacemos Ok seleccionamos parámetros para configurar el tiempo bajamos acá seleccionamos tiempo 5 segundos hacemos Ok y escapamos y acá en la entrada seleccionamos el bloque or lo buscamos en funciones generales acá colocamos las entradas q1 y q4

[07:28] respectivamente aquí hemos acabado con la parte set retrocedemos y vamos ahora a editar la entrada reset y acá tenemos que colocar el bloque oro bloque 10 de 10 las entradas negadas i3 e i4 respectivamente acá hemos terminado con la rama q2 escapamos y hacemos la rama q3 agregamos el bloque RS está en funciones especiales Acá está Okay ingresamos una función an que está en funciones generales en la primera entrada colocaremos una or esta or tiene por entradas i2 e i1 aquí puede colocarse también

[09:58] i1 i2 da lo mismo la otra entrada del del bloque an es la entrada i3 hacemos Ok aquí hemos acabado con la parte set del bloque b11 ahora ingresamos al reset y colocamos un bloque or el b14 tenemos que colocar la entrada entrada del temporizador B8 y las siguientes entradas tenemos i3 e i4 negadas respectivamente aquí hemos acabado con la programación escapamos guardamos los cambios Okay escapamos subimos e iniciamos el controlador decimos que sí ya está listo para probar continuamos Armando el circuito

[12:00] de control colocamos la línea borne 2 del interruptor terom magnético al que es la alimentación de la línea del controlador luego conectamos del neutro Es decir de la pornera 4 del interruptor termomagnético hasta la entrada neutra del controlador que es el segundo borne empezando desde la izquierda ahora colocamos desde el borne 2 del interruptor terom magnético hasta el borne 3 del pulsador s1 contacto abierto y aquí colocamos hacia el borne 3 del pulsador s2 como se indica en la

[13:43] imagen El pulsador s2 tiene dos contactos cerrado y abierto entonces usamos el 34 justamente lo colocamos en la entrada tres y colocamos aquí el puente que conecte al uno del pulsador de paro contacto Cerrado del pulsador de paro de aquí aprovechando conectamos al borne 9 5 del relé contacto cerrado contacto Cerrado del relé f1 acomodamos el cable ahora colocamos desde el bne 4 según señalado en la figura la línea de color amarillo del a la entrada i1 del logo colocamos ahora del borne 4 del pulsador

[15:21] s2 según se muestra la figura y la línea de color amarillo en lo colocamos en la entrada i2 Ahora nos toca conectar el borne 2 del pulsador de paro la línea de color amarillo es lo que estamos haciendo vamos a conectar el borne do a la entrada i3 del controlador de la salida del contacto del relé del 96 lo conectamos ahora en la entrada i4 según se remarca de color amarillo ahora ya se convirtió en la línea ejecutada del montaje ahí hemos acabado con las entradas proseguimos

[17:03] haciendo el montaje del cableado de salida colocamos un cable preparado la cual conecta la línea con los primeros bornes de los contactos de salida q1 q2 q3 y q4 la tenemos vamos a colocarlo en los primeros bornes de cada contacto ya saben que la línea va al contacto tenemos ya el cable preparado para agilizar la conexión ya está hemos terminado esta parte de alimentación con la línea ahora colocamos la salida conectamos ahora el a1 del contactor k1 la bobina este cable es preparado aquí

[18:44] mismo empalma la conexión a la lámpara h1 de color verde ahora colocamos la salida de q2 al a1 del contactor k2 a la bobina este cable está empalmado y permite conectar directamente a la lámpara h3 lámpara de color blanco conectamos ahora la salida q3 al contactor k3 conectamos al a1 del contactor k3 y este cable como los demás cables están preparados para conectar directamente a la lámpara h4 lámpara de color amarillo por último colocaremos la salida q4 al contactor k4 a su bobina que es la

[20:47] entrada a1 y de aquí este cable también está conectado y la colocaremos a la lámpara azul lámpara h2 ahora conectaremos los a2 del contactor k3 y el a2 del contactor k2 y utilizaremos el X 2 que es común de lámparas la que posteriormente alimentaremos con el neutro este tomaremos x2 de de una lámpara a manera de Empalme lo utilizaremos ahora conectaremos el a2 de k4 y el a2 de k1 también lo conectaremos a un x2 las cuales se van a alimentar al neutro esta Línea Amarilla ahora se

[22:15] convierte parte de x2 Ahora solo bastaría conectar un x2 para poder completar el circuito conectamos un x2 que esté libre usamos El de acá lo conectaremos al neutro para cerrar el circuito vamos a bien para que pueda conectarse Y ajustamos con seguridad bien damos los cables y eso es la parte del armado del circuito de control vamos a verificar el funcionamiento hacemos marcha con s1 vemos que prende y hace el cambio Ahora sí hacemos inversión y vemos que funciona por último ahora colocamos el

[24:08] circuito de fuerza conectamos el borne 2 del guardamotor con el borne 1 del contactor k1 el borne 4 del guardamotor con el borne 3 del contactor k1 conectamos ahora el borne 6 del guardamotor con el borne 5 del contactor k1 ahora conectamos los puentes del borne un del contactor k1 al borne 1 del contactor k4 del borne 3 del contactor k1 al borne 3 del contactor k4 estamos ahora conectamos el borne 5 del contactor k1 al borne 5 del contactor k4 ajustamos y ahora vamos a desconectar el relé f1 del contactor

[26:20] k1 para poder hacer las conexiones que siguen conectamos el borne 2 del contactor k1 con el borne 4 del contactor k4 vamos a aprovechar en conectar o colocar los cables para poder hacer un ajuste al final de todos colocamos el borne 4 del contactor k1 con el borne 6 del contactor k4 Aquí hacemos el cambio de fases para que el motor haga la inversión de giro y colocamos el borne 6 del contactor k1 con el borne 4 del contactor k4 y aquí procedemos a ajustar y poder acoplar el relé f1 con

[27:50] el contactor k1 colocamos ahora los cables que unen el borne dos del contactor k4 con el borne 1 del contactor k2 conectamos el borne 6 del contactor k4 al borne 3 del contactor k2 ahora conectamos el borne 4 del contactor k4 con el borne 5 del contactor k2 estos dos últimos cables que hemos colocado entre el contactor k4 y k2 quedan cruzados Como se muestra en la foto y ahora colocamos este puente que hace corte circuitar los terminales w2 U2 y bv2 del motor en el contactor

[30:26] k3 al conectamos ahora la conexión entre el relé f1 y el motor el borne 2 del relé f1 con el terminal u1 del motor el borne 4 del relé f1 con el terminal bv1 del motor M1 del borne 6 del relé f1 con el terminal w1 del motor M1 conectamos ahora el k2 el borne 2 con el terminal w2 conectamos ahora el borne 4 del contactor k2 con el terminal U2 del motor M1 conectamos el bne 6 de contactor k2 con el U2 del motor M1 conectamos ahora el borde dos del contactor k2 con el dos del contactor

[33:41] k3 conectamos el borne 4 del contactor k2 con el borne 4 del contactor k3 Y por último conectamos el borne 6 del contactor dos con el borne 6 del contactor k3 y así hemos terminado con el circuito de fuerza ahora queda probar el arranque activamos el interruptor trom magnético el guardamotor y hacemos marcha con s1 el motor arranca en Estrella triángulo hacia la derecha probamos el enclave eléctrico con s2 y vemos que no invierte el sentido de giro del motor tenemos que hacer

[35:12] paro Ahora hacemos arranque estrella triángulo hacia la izquierda con s2 probamos el enclave eléctrico con s1 vemos que no es posible tenemos que hacer paro con ese cero muy bien amigos Espero que les haya gustado el video No olvides suscribirse y dar sus comentarios Hasta pronto
