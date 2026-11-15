# Arranque estrella triangulo con PLC LOGO en cade simu. paso a paso.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cYQZbnc1BNQ)
- **Canal**: Aprendiendo Electricidad Industrial.
- **Publicado**: 2025-05-09
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 17:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Hola, saludo a todos los participantes de la página ingeniería eléctrica de Geosas y los que nos siguen en YouTube como Aprendiendo Electricidad Industrial. Hoy quiero presentarles cómo hacer un arranque estería triángulo con un PLC logo de Siemens en Catim.

[00:17] Eh, la vez pasada estuve enseñándoles cómo hacer un arranque directo con un logo. Esta vez vamos a hacer una arranca estrella triángulo. Vamos a usar una línea de alimentación para el PLC de 24 V. Usamos positivo y negativo y seleccionamos un logo. Aquí en la barra de tarea van a encontrar donde dice IO, entrada y salida y elegimos el primero módulo lógico que es el logo.

[00:56] Necesitamos un star, un stop. Lo encontramos aquí en alionamientos. Tenemos aquí el stop y agregamos un star. Posteriormente vamos a agregar las tres bobinas porque vamos a usar la bobina de que va a arrancar el motor, la bobina de fuerza, la bobina de KM2 y KM3 que sería estrella triángulo. Y aquí conectamos pues la bobina KM1.

[01:30] KM2 y KM3. Vamos a ir cableando. Entonces, donde dice P1 va la línea de alimentación positiva. Y aquí donde dice Q1, estas son las salidas. Entonces, también debemos alimentar la salida. Todas la salida deben ir alimentadas. Bien, ya tenemos la salida alimentada y la entrada.

[02:18] Necesitamos ahora pues conectar el negativo donde dice P2 y posteriormente pues cerrar el circuito con la bobina. Bien, ya aquí tenemos pues las conexiones. Vamos a hacer la etiqueta KM1 km2 y posteriormente la última KM3.

[03:13] Conectamos los pulsadores y donde dice I1 se conecta, I2 se conecta al pulsador desktop y colocamos aquí. Quiero que tengan en cuenta la referencia porque dice I1 y2. Entonces le cambiamos la etiqueta y le colocamos I1 y posteriormente al stop le colocamos I2. Lo simulamos y ven que ya está ya está la conexión hecha del PLC. Necesitamos hacer el circuito de fuerza línea de alimentación trifásica.

[04:02] Vamos a ver cómo se ve. Si se ve bien. Bien. Línea de alimentación trifásica. Un guardamotor. Recuerden que el guardamotor nos hace doble función como térmico y como automático. Necesitamos un contactor que va a ser el de fuerza.

[04:20] Posteriormente agregamos uno de de delta y el de estrella. Vamos a rodarlo un poco más para acá porque necesitamos espacio para para hacer el lenguaje láter. Posteriormente necesitamos un motor de seis puntas. Aquí donde dice motores y agregamos el de seis puntas trifásico. Bien, hagamos la conexión.

[05:10] Esta punta va aquí. Esta siempre va en el medio. Posteriormente esta va conectada primero. Ahora si este lo conecté esquina la última salida debe ir aquí en la primera. O sea, vamos a hacer prácticamente la inversión. Esta queda aquí en la y posteriormente esta aquí. Ahora conectamos este que sería el estrella.

[06:17] Y aquí arriba cerramos el circuito. Hacemos las etiquetas. Est sería KM1, KM2 y este sería KM3, que sería el circuito de estrella. Bien, ya aquí tenemos pues el circuito de fuerza, tenemos la conexión en el logo. Ahora nos falta la programación en lenguaje lader para que pueda funcionar el el circuito. Entonces, tenemos dos líneas de alimentación, una línea positiva y posteriormente una línea negativa para cerrar el circuito del lenguaje lader. O sea, arrancamos con un arranque

[07:19] directo que sería básicamente le damos aquí donde dice lader. Si ven aquí en la barra de tareas, aquí hay una dice lader que está al ladito de grabf o lógica. Bueno, aquí el ladder que sería escalera, que es el lenguaje que que maneja pues el PLC y necesitamos un contacto normalmente abierto, otro aquí y posteriormente le agregamos un una bobina, un star, un stop y necesitamos el enclavamiento.

[08:12] Vamos a robarlo más para acá para que nos despacio. Lo vamos cable. Bien. Ahora agregamos un contacto normalmente abierto y vamos a agregarle un timer para que haga porque es que iba a arrancar en estrella triángulo, pero necesita pasar a delta y claro necesita un tiempo pues de reposo que sería unos 5 segundos, pero vamos a agregar aquí dos contactos normalmente cerrados y la bobina KM3, que sería la bobina de de estrella. Bien, aquí donde dice aquí al ladito de del lenguaje

[09:36] lader dice temporizador de conexión y agregamos una bobina. Vamos a ir cableando y haciendo las etiquetas como para que no vayamos tan perdidos. Entonces, aquí agregamos aquí. Posteriormente alimentamos esto aquí cerramos el circuito con el negativo. Hagamos las etiquetas por lo pronto. Bien, esto sería el start, sería I1. Si ven aquí dice I1, el start. Este sería el stop, sería I2, que es el que va a detener el circuito. Y esta sería Q1, ingeniero. ¿Por qué Q1? Porque si ven que aquí en la salida del PL se dice

[10:44] Q1, Q2, Q3, Q4. Entonces, debemos manejar esta referencia y por por pues inercia también debemos manejar esta I1, I2, y 3. Y no podemos colocar pues las que la que queremos acá porque no nos va a funcionar. Entonces, como tenemos que vincularlas todas con el PLC, el encladamiento debe ser Q1.

[11:07] Y entonces aquí colocamos Q2, que esto es un enclavamiento mecánico que hacemos aquí como para proteger el motor. Y aquí colocamos M2. Posteriormente esta es la bobina Q3 que va a ser el arranque estrella. Esta Q3 nos va a activar el timer y le colocamos 5 segundos, que el timer sencillamente nos va a enclavar esta siguiente bobina M1 y ya tenemos prácticamente la mitad del circuito hecha. Yo puedo dejarlo así y sencillamente meterle la bobina Q2, que sería la de, pero no estaría bien. Entonces creo quiero

[12:06] agregarle un segundo timer como protección con 010 milisegundos, que a a pesar de que ya tengo los 5 segundos de receso, quiero quiero agregarle otro timer con 10 segundos de receso para que el motor no sufra un daño o un cortoocircuito, porque esto se hace muy rápido. Entonces, le agregamos un contacto normalmente cerrado.

[12:40] Aquí le agregamos un encladamiento y la bobina M2. Esto es para necesizar el segundo timer. Y cerramos el circuito. Entonces hacemos la etiqueta. serie, quedaría aquí como Q2 quedaría como M1. Posteriormente aquí quedaría M2 y esta vo sería M2.

[13:45] Ahora nos falta un contacto normalmente abierto que sería DM2 que nos va a abrir aquí el segundo timer. Entonces aquí dice temporizador de conexión y agregamos el segundo timer. Agregamos la bobina M3 y lo cableamos. Cerramos el circuito y estamos ya a un solo paso.

[14:26] Hacemos las etiquetas. Aquí quedaría M2, que sería esta bobina que pasado el tiempo se va a enclavar. Y este vamos a colocarle 0,1, vamos a colocarle 10 milisegundos. Esta nos quedaría como M3. Y ya nos queda un solo paso, que sería agregarle un contacto normalmente abierto.

[14:56] Aquí le agregamos otro, le agregamos el encladamiento de de de un contacto normalmente cerrado aquí que sería la bobina Q3, la de la de estrella, y posteriormente la bobina KM2. dos, que sería la de delta. Cableamos y cerramos el circuito. Hacemos las etiquetas. Esto quedaría como I2.

[15:57] que sería el stop. Este me quedaría como M3. Posteriormente esta bobina me quedaría como Q2, que sería la delta, y aquí me quedaría Q3, que sería la estrella. Posteriormente aquí me quedaría Q2, que sería la de delta. Bien.

[16:24] Simulamos, subimos aquí el guardamotor, le damos start y ahí arrancó en estrella. Van a pasar 5 segundos y se va a pasar a delta. 2 1 Ahí se pasó a Delta. Si vieron. Entonces, de esa forma, pues hacemos la la conexión de una arranque estrella triángulo en catimu con un PLC y pues me me me place mucho pues poder compartirles este conocimiento. Y bueno, aquí veo que tengo un pequeño error que no se enclava la bobina de ah, no s se enclavó, sino que no energiza el motor. Entonces debe ser

[17:30] algún cablecito que está mal conectado. Pero si ven que se enclavó la bobina KM1 y KM2 y está funcionando aquí. Entonces, muchísimas gracias, eh un abrazo fuerte, un saludo fuerte a todos y gracias pues por estar atentos a nuestro a nuestros videos, a nuestra información y que tengan un feliz día. Yeah.
