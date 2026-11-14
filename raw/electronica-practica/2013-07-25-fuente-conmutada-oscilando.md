# Como saber si una fuente de alimentación conmutada está oscilando.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=U1LlPJg4e7Y)
- **Canal**: Terrazocultor jose manuel
- **Publicado**: 2013-07-25
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:15

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:05] Hola amigos en este vídeo vamos a ver un truco de taller para comprobar si una fuente de alimentación conmutada está oscilando o no Aquí tenéis la fuente y esto es un Dvd le falta la parte mecánica pero da igual porque la Fuente está perfectamente Así que lo usaremos como conejillo de indias eh Por cierto los ojos los tengo así porque está tard de estado en la piscina y Parece ser que al cloro le han puesto un poco de agua bro una espero salir de esta vamos a ver qué es eso de si la

[00:35] Fuente oscila o no estas Fuentes conmutadas pueden cambiar de diseño de un equipo a otro Pero básicamente siempre son lo mismo una entrada de corriente alterna rectificada con cuatro diodos o un puente y después se aplicará un condensador de filtro es muy fácil de reconocer este condensador porque es el más grande con diferencia cuidado porque este condensador se queda cargado incluso Aunque desconectes el equipo de la red siempre hay que descargar con la bombilla como me habéis visto

[01:02] hacer en otros vídeos para evitar sorpresas vale esta corriente continúa de algo más de 300 V es nuevamente convertida en corriente alterna con este morf es un tipo de transistor especial y esa alterna es aplicada al transformador pero ya a una frecuencia mucho más alta que la de la red que es solamente de 50 hz Aquí estamos hablando de frecuencias de 20,000 hz y mucho más algunas superan los 200,000 y así el transformador se puede hacer mucho más pequeño con los diseños antiguos con las fuentes

[01:38] convencionales los transformadores eran mucho más grandes porque se trabajaba a 50 hz Vale pues la duda que podemos tener eh este componente digo es el que realmente hace el trabajo de la oscilación eh tiene en una de sus patillas aplicada la tensión de polarización de 300 V en continua pero también debe tener superpuesta una componente de alterna bien la continua la podemos determinar fácilmente si existe o no con un polímetro pero no así la alterna podríamos utilizar un osciloscopio pero no siempre está

[02:11] disponible un instrumento de este tipo además lo vamos a comprobar si esa alterna existe o no con un circuito Tan sencillo como este que apenas nos va a costar 2 o 3 eur y los puntos donde vamos a aplicar cada uno de los cables de este dispositivo para medir si hay alterna o no van a ser uno el negativo del condensador que lo vamos a identificar por la banda que lleva aquí negativo lo pone claramente es este terminal aquí irá un punto de prueba de nuestro circuito aquí en el negativo del

[02:45] condensador y el otro punto de prueba lo vamos a poner en una de las patillas del mosfet la que contenga 300 V si no lo sabemos podemos comprobarlo con el polímetro ahí también Debe de haber alterna Bueno pues vamos a ver ahora nuestro comprobador de si oscila o no la fuente y este es el circuito para probar que la Fuente está oscilando aquí tenemos los dos cables de prueba vamos a conectarlos como dije uno al negativo del condensador aquí en la parte de las soldaduras y el otro a la patilla del

[03:18] mosfet que contenga los 300 V que también debería de tener la tensión alterna de oscilación no os preocupéis por estas patillas Qué polaridad puesto que como aquí no hay componentes polaridad podéis ponerlo De cualquier manera a pesar de que en la Fuente hay un negativo y un positivo esto lo podéis conectar en el orden que queráis los componentes son tres un condensador cuya función es evitar que pase la corriente continua solamente queremos comprobar si hay alterna Así que este condensador impide el paso de

[03:49] continua y solo deja pasar la alterna el Neón va a iluminarse cuando la tensión sea superior a aproximadamente 90 v y como la tensión alterna aquí es superior a 90 V sí está oscilando el Neón debe encenderse y en serie está esta resistencia de 10k para evitar que el Neón se funda ya que si lo ponemos directamente se va a fundir he probado varios valores y he visto que 10k es un valor que hace que luzca el Neón sin riesgo de que se estropee Bueno vamos a probar el circuito ahora mismo con la

[04:23] Fuente he conectado eléctricamente el comprobador a la Fuente donde dije en el Polo negativo de el condensador principal y en la patilla central del morfer donde están los 300 V vamos a probar esto a ver si está la Fuente oscilando enchufo el equipo y le doy al on atentos al Neón mm funcionando Esto indica que la Fuente está oscilando no es la corriente continua la que está iluminando el Neón ya que el condensador impide el paso de esa corriente continua esto es una Clara señal de que la Fuente está oscilando

[05:02] además el visor del propio equipo nos dice que la Fuente está trabajando o sea que está perfectamente ahora lo que voy a hacer va a ser introducir una avería aposta en la fuente pero no voy a anular esos 300 vos de continua lo voy a dejar para que veamos que el Neón no se va a encender si la fuente No oscila aunque estén presentes los 300 V vamos a ver qué es lo que le hago a la Fuente Ya sé que haía voy a introducir en la Fuente para que no oscile el mosfet es gobernado por este pequeño

[05:31] transistor y esta patilla central del transistor pequeño es lo que parece ser la base la voy a desoldar para que quede sin polarizar y por lo tanto no va a funcionar este transistor que a su vez no va a poder gobernar el mofet y así la fuente No va a oscilar voy a desoldar esa patilla del centro muy bien completamente al aire vamos a probar la Fuente ahora y repetimos los mismos pasos que antes he vuelto a conectar el comprobador a los mismos puntos conectamos el equipo de la

[06:18] red y le damos a on comprobamos el Neón y nada de nada la Fuente no está oscilando solo Añadir una cosa y es que esto está en plan provisional en una placa de entrenamiento lo suyo sería poner todo En una cajita pequeña y sacar de esa caja un par de cables para hacer las mediciones y así le daría un plan instrumento de medida más compacto y eso es todo nos vemos en el próximo vídeo gu F
