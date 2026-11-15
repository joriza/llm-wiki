# Cómo hacer que tus proyectos IoT duren AÑOS: powerTimer (Consumo Cero)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=sy0iTkA_p64)
- **Canal**: DevelopOnChip
- **Publicado**: 2026-04-12
- **Recopilado**: 2026-11-14
- **Idioma**: es-ES (subtítulos manuales es-ES (manual), transcripción literal)
- **Duración**: 07:57

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Las baterías son el alma de casi cualquier proyecto portátil, pero tienen un enemigo silencioso, el consumo en reposo. Ante la falta de autonomía, le podemos meter más baterías en paralelo o quizás una mucho más grande, pero hay una alternativa mejor. El Power Timer. Este módulo está diseñado para gestionar la energía de forma inteligente, manteniendo el sistema apagado y despertándolo solo por intervalos o eventos externos. Ojo, la diferencia es radical. Pasamos en el mismo proyecto de durar menos de un día usando el

[00:32] modo sueño a casi un año de autonomía sin recargar. ¿Te interesa? Vamos a echarlo un ojo. Comenzamos con el diseño en alto nivel. El núcleo de este módulo es un RS. Su función es sencilla pero vital. Actúa como una memoria de estado físico. Cuando recibe un pulso set activa la salida y no la suelta hasta que recibe una orden en reset. Ahora conectamos nuestra carga, el microcontrolador y los sensores, pero que puede ser cualquier otra cosa. Al activar el set, el latch alimenta el sistema. Una vez que el procesador termina su tarea, envía una señal

[01:04] de don al reset, cortando su propia energía por completo. Ya que queremos automatizarlo y que despierte periódicamente, añadimos un RTC. Este reloj de ultrabajo consumo despierta el sistema mediante una interrupción conectada al set. Pero antes de apagarse, el microcontrolador configura por I2C la hora exacta de su próxima alarma. Como necesitamos despertarlo la primera vez manualmente o queremos recibir evento de sensores externos, añadimos una puerta lógica tipo OR.

[01:32] Luego veremos en el diseño que vamos a ir algo a algo más simple, pero es más fácil de verlo así. Esto quiere decir, si alguna de las entradas es un uno, la salida es un uno. En resumen, el RTC da el aviso, el sistema trabaja, programa su siguiente despertar y se desconecta eléctricamente. Un ciclo de eficiencia máxima que se repite una y otra vez consumiendo prácticamente cero mientras espera.

[02:01] Pasamos de la teoría la realidad en Kicat. El diseño del módulo es minimalista, enfocado en reducir el consumo a lo mínimo posible, pero sin dejar de lado intentar hacerlo económico. Empezamos por los conectores. He separado la entrada de la salida para facilitar su uso. La entrada admite de 1,1 a 5,5 V. Este rango está condicionado por el RTC, ya que es su voltaje operativo y lo veremos posteriormente. En la salida tenemos la alimentación de la carga, el bújito C, la interrupción y la señal de dos. Para el latch, en lugar de un integrado,

[02:34] es optado por transistores discretos y componentes pasivos. Aunque da un poco de más trabajo de diseño, nos permite un control total sobre las corrientes de fuga, logrando un consumo en reposo casi inexistente. Además, son componentes baratísimos y fáciles de encontrar en cualquier sitio. Y aquí está, digamos, el cerebro, el RTC, RV 3028C.

[02:56] Comenzamos por lo más relevante que es su consum que es solo 45 namp que eso casi se podría considerar nada rango de voltaje operativo, que es lo que mencionamos anteriormente. Ya como último punto a destacar tenemos timer, alarmas y eventos externos independientes. En cuanto a la lógica de descendido, usamos diodo para aislar las señales y crear, entre muchas comillas, una puerta or simplificada. Pasando al diseño de la PCB, tenemos una placa de 24 por 35 mm.

[03:24] Es un diseño sencillo de solo dos capas. Aunque podríamos haberlo minutilizado más, he preferido priorizar la facilidad de soldadura a mano. He ubicado los conectores en los extremos opuestos para diferenciar claramente la entrada de la salida. Además, veréis que he reforzado el mo principal con varias vías para manejar corrientes de hasta 1 amperio con total seguridad térmica.

[03:45] En la cara posterior he aprovechado para añadir leyendas que identifican cada pin. También he incluido un código QR que lleva directamente al repositorio del proyecto. Una vez que ya tenemos todo listo, pues lo enviamos a fabricar y a ver qué nos llega. Bueno, ya hemos recibido todos los componentes, el estén y las placas y parece que todo tiene buena pinta, así que comenzamos con el montaje. Ahora, en cámara muy rápida vamos añadiendo los componentes. Gracias a que dejamos

[04:11] algo de espacio entre ellos, es relativamente fácil ir poniéndolo en sus posiciones. Llevamos la placa a la cama caliente para que se funda la pasta de soldadura. Aquí ya tenemos el resultado final. Han sido necesarios algunos retoques con el solador, pero ya estamos listos para probarla. He desarrollado una librería personalizada para Arduino. El objetivo era simplificarlo todo. Configurar el timer, la alarma o la señal de don es ahora cuestión de un par de líneas con ejemplos muy fáciles de seguir.

[04:45] Vamos a comparar el mismo proyecto utilizando el Power Timer contra el modo sueño profundo. El sensor medioambiental obtiene temperatura y humedad. El SP32 los procesa y los muestra en la pantalla que tenemos aquí. Antes de apagarse le indica al Power Timer que despierte el sistema en un minuto y activa la señal do. Soy consciente de que un sensor a batería no suele llevar pantalla, pero es el ejemplo para ilustrar el concepto. Lo que buscamos es eliminar el consumo vampiro

[05:10] de periféricos que incluso en reposo siguen drenando energía. Echemos un ojo al código. He implementado un flash de compilación que nos permite elegir entre el modo deep slip nativo o el uso del power timer. Así comparamos ambos mundos con el mismo código base. Aunque la interfaz con LVGL es algo extensa en línea, se resume en dos widgets sencillos para temperatura y humedad. La lógica es directa. Leemos el tensor, refrescamos la pantalla y damos un margen de 5 segundos de lectura. El punto clave está al final. Decidimos si el micro entra en modo

[05:35] sueño profundo por software o si el power timer le corta el grifo físicamente a todo el sistema. Para las pruebas utilizaremos este power por fail. Este dispositivo nos permite alimentar el circuito con voltajes precisos y medir consumos a nivel de nanomperios con una resolución de milisegundos.

[05:50] Comenzamos con el test del Jeep Slip nativo. Seteamos la salida 3,3 V. Activamos la medición, la alimentación y quitamos algo de zoom para observar un ciclo completo desde el procesamiento activo hasta el modo de sueño. Lo ponemos a cámara muy rápida hasta que se despierta el dispositivo. Tiempo en activo, 5,78 segundos y un consumo aproximado de 63 m. Tiempo en modo sueño sobre 60 segundos, pero un consumo de 36,7 mamp de media. Esto es un consumo muy alto que se comería cualquier batería en cuestión de horas. Repetimos la prueba con nuestro power timer

[06:25] gestionando toda la energía del sistema. Activamos la alimentación y alejamos el zoom. De nuevo, aceleramos el tiempo para cubrir el intervalo de reposo hasta el siguiente ciclo de activación. En la parte activa apenas hay cambios, una media de 64 mamp durante 5,4 segundos. En el modo sueño es a donde viene la gran diferencia. Hemos pasado de 36 m a tan solo 50 namp. El power timer ha cortado físicamente la energía, permitiendo que el sistema sobreviva meses o años con la misma

[06:58] batería. Para entender el impacto real, usemos una calculadora de autonomía. Con una batería estándar de 1000 mamp y un intervalo de lectura de una hora. Los datos en el primer experimento son bastante curiosos, ya que el sistema no aguantaría ni siquiera un día completo funcionando. Pero si simplemente cambiamos el consumo en reposo a los 50 nampos que hemos obtenido anteriormente, la magia ocurre. Pasamos de menos de un día de autonomía a teóricamente 312 días de autonomía,

[07:26] casi un año con el mismo dispositivo y la misma batería. Para finalizar, tenéis todos los archivos de la PCB, el firware, los ejemplos que hemos visto en el repositorio del proyecto que estará en la descripción. Recordad que estos resultados de autonomía son para este escenario específico. Si vuestro proyecto requiere despertares asíncronos frecuentes, la evaluación variará. Pero para sensores ambientales o estaciones remotas, esto es una solución que puede ser bastante interesante y nos puede dar rangos muy

[07:52] extendidos de autonomía en el dispositivo. Muchas gracias por ver el vídeo y hasta la próxima. M.
