# Factor de Potencia Explicado - La Pérdida en su Factura de Electricidad

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=wpubuxVCJtE)
- **Canal**: Mentalidad De Ingeniería
- **Publicado**: 2026-01-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:01

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Este sitio industrial acaba de recibir una enorme penalización por algo llamado potencia reactiva. El jefe está enojado y confundido. El ingeniero eléctrico intenta explicarle que su factor de potencia es malo, pero ahora el jefe está aún más confundido.

[00:21] ¿Cuál es la diferencia y por qué importa? El factor de potencia se aplica a los circuitos de corriente continua. Número, el voltaje y la corriente son constantes y fluyen en una sola dirección, por lo tanto, el factor de potencia no aplica. Lo entenderás más adelante en el vídeo. Sin embargo, sí aplica a los sistemas de corriente alterna CA, que incluyen los equipos monofásicos, pero especialmente los equipos trifásicos, porque esos son los que normalmente generan las grandes

[00:50] penalizaciones. Un multímetro hace que parezca que el voltaje y la corriente son constantes, pero si usamos un osciloscopio podemos ver que no lo son. Tienen un patrón de onda senoidal. Los valores de voltaje y corriente están cambiando constantemente, subiendo y bajando con valores positivos y negativos. Eso se debe a que el generador básicamente está rotando un campo magnético que barre las bobinas de alambre. Las bobinas experimentarán un cambio en la intensidad del campo

[01:21] magnético. Esto induce un voltaje que básicamente empuja a los electrones en una dirección y luego los atrae en la dirección contraria. Esto ocurre 50 o 60 veces por segundo dependiendo de la norma eléctrica de tu país. Y así se genera el suministro de corriente alterna de 50 Hz o 60 Hz. Este cambio en intensidad y dirección crea una onda senoidal con valores positivos y negativos. El promedio de estos es cero, por lo que el multímetro simplemente calcula y muestra los valores RMS o

[01:52] valor eficaz raíz cuadrática media, para que sea más fácil trabajar con ellos. Supongamos que medimos el voltaje y la corriente RMS en una carga desconocida. Si multiplicamos estos valores, obtenemos algo llamado potencia aparente, que en este caso es de 120 Vampa.

[02:10] En los circuitos de corriente continua CC. Esto nos daría la potencia en wattios W, pero no en los circuitos de corriente alterna CA. En su lugar lo medimos en voltamperios. Esta es la cantidad de potencia que se está suministrando, pero no es la cantidad que realmente se está utilizando. Si conectáramos un osciloscopio a esta carga desconocida, podemos ver que el voltaje y la corriente no están alineados. La corriente se retrasa y queda desfasada respecto al voltaje, lo que significa que tenemos un problema de

[02:42] factor de potencia. Queremos que estos estén más cercanos entre sí. Supongamos que medimos el desfase en unos 1,71 milisegundos y podemos convertirlo fácilmente en grados. Si tomamos el coseno de este ángulo, obtenemos un valor de factor de potencia de 0,8, lo cual no es muy bueno. Un factor de potencia perfecto sería uno, pero eso es difícil de lograr. Así que normalmente apuntamos a valores entre 0,95 y 0,9.

[03:15] Ahora, si multiplicamos el voltaje y la corriente RMS por el factor de potencia, obtenemos la potencia real que medimos en vatios. Wivo. Esta es la potencia que realmente se utiliza para hacer algo útil. Idealmente solo necesitaríamos suministrar esta cantidad de potencia.

[03:33] Este es nuestro objetivo, pero estamos suministrando más que esto porque el factor de potencia es malo. ¿Qué pasaría si mejoráramos el factor de potencia hasta uno perfecto? Pues la potencia real se mantiene casi constante y lo mismo ocurre con el voltaje, lo que significa que la corriente debe cambiar.

[03:51] Vemos que la corriente se ha reducido, lo que significa que la potencia aparente también debe reducirse. Al mejorar el factor de potencia, podemos suministrar menos potencia para lograr la misma cantidad de trabajo. ¿A dónde va esta potencia extra? A esto lo llamamos potencia reactiva y podemos visualizarlo mejor con un triángulo de potencias. Podemos trazar una línea horizontal para la potencia real. Luego podemos dibujar otra línea en ángulo para representar la potencia aparente.

[04:20] El ángulo entre ellas es ese desfase que medimos en el osciloscopio. Sabemos que podemos convertir fácilmente el ángulo en el valor del factor de potencia, pero también podemos tomar el coseno inverso de ese valor para encontrar el ángulo.

[04:33] También podemos simplemente dividir la potencia real entre la potencia aparente para encontrar este valor. De eso se puede ver que el factor de potencia es solo una relación, por lo tanto no tiene unidades. Ahora, la diferencia entre estos dos puntos se llama potencia reactiva, medida en volt amperios reactivos br.

[04:54] Explicaré qué hace en un momento. Al trazar estas líneas formamos un triángulo de potencias. Si lo hemos representado correctamente, entonces podríamos simplemente medir este valor. De lo contrario, podemos calcularlo usando esta fórmula.

[05:08] Observa que si el valor del factor de potencia mejora, entonces el ángulo se reduce, lo que acerca los valores de potencia aparente y potencia real, y eso hace que la potencia reactiva disminuya. Más adelante, en este vídeo, veremos cómo mejorar eso. Existen varias formas de calcular cada parte de este triángulo. Para la potencia real podemos usar estas fórmulas. Para la potencia aparente podemos usar estas fórmulas. Y para la potencia reactiva podemos usar estas fórmulas. Pero, ¿dónde encontramos

[05:39] estos valores? Si tienes suerte, el cuadro eléctrico tendrá un medidor de potencia digital que muestre todos estos valores. A veces se incluyen diales analógicos que puedes leer manualmente. Idealmente tendrías acceso a un analizador de potencia que proporcione resultados muy precisos y detallados. A veces el fabricante también incluye estos valores en la hoja de datos del producto. Sin embargo, puedes conseguir estas versiones pequeñas, económicas y simples que solo proporcionan los

[06:10] valores básicos con menor precisión. O podemos usar estas versiones enchufables para dispositivos portátiles. Te dejaré un enlace aquí abajo por si estás interesado. Ahora el circuito contendrá componentes que pueden ser resistivos, inductivos o capacitivos. Las cargas resistivas, como las bombillas incandescentes, convierten la energía en calor y luz. Las cargas inductivas, como los motores eléctricos, almacenan y liberan energía en su campo magnético.

[06:38] Las cargas capacitivas, como los condensadores, almacenan y liberan energía en su campo eléctrico. Todas estas afectan al circuito de manera diferente. Vamos a entender cómo y por qué. Supongamos que medimos el voltaje RMS. Este es aproximadamente el 70,7% del valor pico de la onda senoidal. Así que para encontrar el valor pico usamos esta fórmula. Luego podemos usar esta fórmula para calcular el voltaje instantáneo en cualquier punto del ciclo de la onda senoidal. Podemos ver que

[07:10] existen valores positivos y negativos. Si tomamos una carga puramente resistiva, podemos encontrar fácilmente la corriente RMS y a partir de esta calcular la corriente pico. Con eso podemos calcular la corriente instantánea en cualquier punto.

[07:26] Nuevamente vemos valores positivos y negativos porque la corriente fluye hacia delante y hacia atrás, alterna su dirección. El voltaje y la corriente están en fase entre sí, lo que significa que alcanzan su valor máximo al mismo tiempo. Este es un factor de potencia perfecto. Si multiplicamos los valores instantáneos de voltaje y corriente, obtenemos la potencia instantánea, incluso cuando el voltaje y la corriente son negativos.

[07:54] Podemos pensar en estas regiones positivas como energía que sale del circuito. Está haciendo un trabajo útil, como producir luz y calor. La energía solo fluye en una dirección y esa es fuera del circuito. A esta potencia la llamamos potencia real o activa. En este caso, toda la corriente que circula por el conductor se está utilizando para realizar un trabajo útil, que es lo que queremos. Sin embargo, si conectáramos una carga puramente inductiva, el voltaje y la corriente dejarían de estar

[08:25] en fase. Están desfasados 90º. La corriente se retrasa con respecto al voltaje. Ahora la potencia instantánea tiene valores positivos y negativos. El inductor formará un campo magnético a su alrededor, el cual almacena energía.

[08:42] Así, durante los segmentos positivos, la energía fluye hacia el inductor para construir el campo magnético y luego en el segmento negativo, el campo colapsa y casi toda esa energía se devuelve al circuito. No se utiliza energía, pero la corriente fluye. El voltaje aplicado variable impulsa la corriente en el circuito, creando un campo magnético cambiante en el conductor. Pero en la bobina, ese campo magnético cambiante va a afectar a las secciones vecinas de la propia bobina. Sabemos que un campo

[09:16] magnético variable inducirá un voltaje en una bobina. Así, este campo magnético también inducirá un voltaje que se opondrá al voltaje aplicado. Eso limitará la rapidez con la que la corriente puede aumentar o disminuir, lo que provoca el retraso en la corriente.

[09:35] Pero si conectamos una carga puramente capacitiva, ocurre lo contrario y la corriente se adelanta al voltaje. Nuevamente tenemos los segmentos positivos y negativos de potencia porque el condensador está almacenando y liberando energía en su campo eléctrico.

[09:50] La corriente fluye para formar el campo eléctrico, por lo que la corriente alcanza su valor máximo antes que el voltaje. En ambos casos, tenemos corriente circulando por el conductor solo para almacenar y liberar energía, pero no está realizando ningún trabajo útil, solo está moviendo potencia de un lado a otro. A esta potencia la llamamos potencia reactiva. En un circuito normalmente tenemos cierta cantidad de resistencia, inductancia y capacitancia, por lo que el factor de potencia no es

[10:21] tan extremo. Típicamente tenemos un factor de potencia atrasado debido a las grandes cargas inductivas, pero podemos corregir esto añadiendo algo de capacitancia al circuito. La potencia reactiva entonces se mueve entre el inductor y el condensador en lugar de hacerlo a través del conductor. Vamos a calcular la potencia reactiva, la potencia aparente y la corriente para un motor eléctrico y también cómo mejorarla. Y por cierto, puedes descargar mis hojas de Excel con todos los cálculos y ejemplos resueltos.

[10:52] También tenemos estas tazas muy prácticas con todas las fórmulas. Los enlaces están aquí abajo por si quieres una, supongamos que tenemos un motor monofásico de 120 V 60 Hz con una potencia nominal de 2,87 caballos de fuerza, un factor de potencia atrasado de 0,7 y una eficiencia del 82%.

[11:14] Primero convertimos eso a vatios y luego lo dividimos entre la eficiencia. Esa es nuestra potencia real. La potencia nominal es la salida en el eje, pero no incluye la energía perdida como calor por la resistencia de la bobina, la fricción de los rodamientos, el calor de las corrientes de fucolt, etcétera. Toda esta es energía que sale del circuito y que ahora hemos tenido en cuenta.

[11:38] Entonces, dibujamos una línea horizontal para representarlo. Tomamos el coseno inverso del valor del factor de potencia para encontrar el ángulo. Luego calculamos la potencia aparente dividiendo la potencia real entre el factor de potencia. Esa es la potencia total que debe suministrarse para lograr esta potencia real. Sabemos que esta línea corresponde a nuestra potencia reactiva y también podemos calcular fácilmente ese valor. Como conocemos la potencia real, el voltaje y el factor de

[12:05] potencia, podemos reorganizar esta fórmula para encontrar la corriente. Ahora veamos qué ocurre si aumentamos el factor de potencia a 0,95. Pues la potencia real se mantiene igual. El ángulo se ha reducido a casi 18º. La potencia aparente también se reduce y eso significa que nuestra potencia reactiva también ha disminuido. Se puede ver la mejora en el triángulo de potencias.

[12:31] Esto también significa que la corriente se ha reducido significativamente. Para lograrlo, conectamos un condensador en paralelo con el motor. El condensador debe proporcionar la diferencia entre las dos potencias reactivas que acabamos de calcular. La potencia reactiva oscilará de un lado a otro entre el campo magnético del motor y el campo eléctrico del condensador. Pero, ¿qué tamaño de condensador necesitamos? Pues esta fórmula lo calcula. Conocemos la potencia reactiva, conocemos el voltaje

[13:01] y la frecuencia, así que podemos calcular fácilmente el tamaño del condensador. Probablemente no encontrarás un condensador con exactamente ese valor, pero podemos probar con el tamaño estándar más cercano disponible. Simplemente conviértelo a faradios, coloca tus valores en esta fórmula y encuentra la potencia reactiva que puede suministrar.

[13:20] Luego restamos eso de la potencia reactiva inicial del motor para obtener el valor restante. Ahora que conocemos la potencia real y la potencia reactiva, podemos encontrar la potencia aparente. Luego podemos calcular fácilmente el factor de potencia, que está bastante cerca de nuestro objetivo, por lo que podemos usar este condensador. La fuente de energía entonces solo necesitará suministrar la potencia real y la pequeña cantidad restante de potencia reactiva.

[13:46] Así que si eso ocurre con un solo motor pequeño, imagina lo que pasa dentro de un sitio industrial grande con muchos equipos de mayor tamaño. Habrás notado que equipos como generadores y transformadores están clasificados en potencia aparente.

[14:02] Así que si un gran consumidor tiene un mal factor de potencia, ocupará toda la capacidad sobrante de la red con su potencia reactiva, la cual no realiza ningún trabajo útil. Nadie más podrá conectarse a la red a menos que se instale una red completamente nueva o se instale un equipo mucho más grande.

[14:23] Ambas opciones son muy costosas. A medida que aumenta la potencia reactiva, también lo hace la corriente en el conductor, lo que significa que las pérdidas en la transmisión serán mucho mayores. Todo esto da como resultado que el equipo deba reemplazarse con mayor frecuencia y estos costos se trasladan a los consumidores. Por ello, la compañía eléctrica suele imponer cargos por penalización a los grandes consumidores para alentarlos a instalar corrección del factor de potencia. Estos

[14:50] normalmente no se aplican a los clientes residenciales, ya que su consumo es muy pequeño en comparación.
