# O Que é um Perceptron? Fundamentos de Redes Neurais e Simulação em Python

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=hd1J6mz8cHU)
- **Canal**: Bóson Treinamentos
- **Publicado**: 2026-11-20
- **Recopilado**: 2026-11-22
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 30:56

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hola a todos. Soy Fabio de Bóson Treinamentos y en este video hablaremos sobre perceptrones. ¿Qué es un perceptrón? Un perceptrón es una neurona artificial. Las neuronas artificiales se usan en la construcción de lo que hoy llamamos redes neuronales artificiales.

[00:17] Y estas redes neuronales artificiales son modelos computacionales matemáticos basados, de forma muy simplificada, en el funcionamiento del cerebro humano, de las redes neuronales humanas. Es decir, las neuronas biológicas.

[00:31] Una red neuronal está constituida por neuronas artificiales y el perceptrón es considerado la primera neurona artificial implementada. Esto fue allá en 1957. Entonces, claro, el perceptrón es algo antiguo. No usamos perceptrones hoy para construir sistemas de redes neuronales, aprendizaje automático o inteligencia artificial, pero es importante conocer este concepto porque hoy hablaré de varios componentes de la idea de la neurona artificial que sí usarás, incluso en redes más modernas.

[01:04] Asumiendo, claro, que quieras aprender este tema y trabajar en el desarrollo de sistemas y aplicaciones de IA, machine learning, redes neuronales y otros temas relacionados. Por lo tanto, las redes neuronales son bloques fundamentales para el aprendizaje automático, el aprendizaje profundo y, evidentemente, toda la IA moderna. Entonces, ¿qué es una neurona artificial? Es un modelo matemático también, computacional, que está inspirado, de forma simple, claro, en el funcionamiento de las neuronas

[01:33] biológicas. Una neurona artificial recibe una información de entrada, procesa esa información y genera una salida. Esta salida es una activación; puede o no pasar esa información adelante, dependerá del procesamiento y de las entradas. Así que esta es la unidad básica de procesamiento en redes neuronales artificiales.

[01:53] Recordarás de la biología, que debiste estudiar en la escuela, que la neurona biológica se compone de algunas partes, existiendo las dendritas, que podemos considerar como la entrada de señales de la neurona, donde recibe señales de otros lugares.

[02:10] Tiene su cuerpo celular con el núcleo, donde se realiza el procesamiento, por así decirlo, y tiene el axón que llevará esa señal adelante o no, dependiendo del procesamiento realizado. Esto para cada una de las neuronas.

[02:25] Una neurona artificial funciona de forma análoga. Tiene una entrada, o en realidad, una o más entradas. Tiene una unidad de procesamiento y una salida gestionada por una función de activación que activa o no esa salida, es decir, envía la señal adelante o no.

[02:45] Esto dependerá del resultado de los cálculos. Recuerda, es un modelo matemático. Entonces podemos establecer varias correspondencias entre una neurona biológica y una neurona artificial. Las dendritas equivaldrían más o menos a las entradas; el cuerpo celular, al procesamiento, sería la suma y la función de activación de la neurona artificial. Ya les explicaré qué es la suma ponderada. Y los axones corresponderían más o menos a las salidas generadas. Y un perceptrón es exactamente esto, una neurona artificial

[03:12] . Funciona exactamente de esta manera. Tiene una o más entradas que llamaremos aquí x1, x2, x3, xn. Cada entrada recibirá un peso, que llamaré w1, w2, w3 y así sucesivamente. La w viene del inglés "weight", que significa peso.

[03:31] Los pesos se utilizarán para realizar cálculos con esas entradas. También tendremos la aplicación de un sesgo, que siempre se representa con la letra b de "bias" en inglés, que significa sesgo, exactamente. Eh, una suma ponderada, que es el cálculo básico del perceptrón. En una red neuronal moderna, las unidades neuronales no necesariamente hacen sumas ponderadas, puede depender del tipo de red, pero el perceptrón utiliza este tipo de cálculo. Después, una función de activación que generará un valor y a

[04:03] partir de la suma ponderada y la salida . La salida es una salida binaria, puede activarse o no, cero o uno, por ejemplo . Bueno, antes de explicar cada uno de estos puntos con un poco más de detalle , veamos un poco del historial del perceptrón. La historia del perceptrón en realidad comienza allá en los años 40 , cuando el primer modelo matemático de neurona artificial fue creado por McCulloch y Pitts, llamado MCP, McCulloch y Pitts, la abreviatura, que fue una base conceptual para las redes

[04:31] neuronales, pero esto era solo matemático, no se implementó. A partir del modelo MCP, una persona llamada Frank Rosenblatt propuso el perceptrón, que sería una neurona artificial capaz de aprender y clasificar patrones de forma lineal.

[04:51] Y Frank Rosenblatt efectivamente implementó el perceptrón en hardware; él creó un equipo que recibía las entradas , entradas en forma de señales luminosas , de imagen, y lograba aprender y emitir una salida a partir de esto.

[05:06] Y todo el estudio de este perceptrón inicial está en este material del Cornell Aeronautical Laboratory de enero de 1957, que es un informe que explica cómo funciona la propuesta de este perceptrón, escrito por Rosenblatt. Aquí está, Frank Rosenblatt. Este material lo puedes encontrar en internet para descargar, de forma gratuita, es libre.

[05:26] Voy a dejar el enlace aquí abajo en la descripción del video. Tiene 33 páginas , no es muy largo, pero es un poco complicado de entender. Fíjese que está escrito a máquina y utiliza un lenguaje bastante técnico. De cualquier manera, tampoco es el fin del mundo.

[05:43] Utiliza ejemplos del funcionamiento del perceptrón, e incluso incluye el esquema del hardware usado en la fabricación de esa neurona artificial. Así que es una curiosidad muy interesante. Bueno, después de esto, en 1969, Marvin Minsky y Seymour Papert publicaron un libro llamado Perceptrons, que uno podría imaginar que trata sobre aplicaciones de los perceptrones, cómo usarlos, etcétera . Pero en realidad, el libro es una crítica a los perceptrones. En el libro ellos muestran, demuestran que los

[06:14] perceptrones no pueden, por ejemplo, resolver funciones no lineales, lo que los hace básicamente inútiles para gran parte de los problemas. Pero en realidad no son inútiles, basta con que se usen en múltiples capas para que sí puedan resolver problemas distintos. Pero este libro destacó estas limitaciones de los perceptrones y entonces las investigaciones en IA disminuyeron, no solo por este motivo, por otros motivos también, pero este fue uno de los factores que contribuyó a lo que

[06:42] llamamos el primer invierno de la inteligencia artificial. Entonces, este libro fue publicado en el 69, también lo puedes encontrar en internet. Es este libro de aquí. Este en realidad es una versión más moderna, expandida, de Marvin Minsky y Papert. Este libro es grandecito, tiene más de 300 páginas, ¿ sabes? Ellos explican cómo funciona el perceptrón, qué puede hacer y qué no puede hacer. Es una lectura muy buena si realmente tienes interés en aprender a fondo sobre aprendizaje automático,

[07:13] aprendizaje profundo, redes neuronales, IA, todos estos temas, procesamiento de lenguaje natural, etcétera. Así que recomiendo este libro también, dejaré el enlace aquí abajo en caso de que tengas interés en descargarlo y leerlo.

[07:27] Entonces llegó el invierno de la IA, el congelamiento de los recursos para investigación, todo el mundo pensando que eso no iba a llegar a nada, olvídate , la IA es fantasía, pero a partir de los años 80, investigadores tuvieron la idea de crear redes neuronales utilizando múltiples capas de neuronas artificiales y ahí se dieron cuenta de que esto sí funciona y funciona muy bien . Y esto es la base de lo que tenemos hoy, por ejemplo, en IAs generativas, ¿ no? Si ya has usado un Gemini o un

[07:54] ChatGPT, estás usando básicamente un sistema basado en esto, ¿cierto? Bueno, veamos cómo funciona con más detalle el perceptrón. El perceptrón funciona por medio de matemáticas, evidentemente. El perceptrón trabajará con varias entradas, que ya llamamos x1, x2, x3, etc., y pesos.

[08:15] Los pesos se utilizan para crear una ponderación. Haremos una suma ponderada. La suma ponderada es aquella suma en la que cada valor de entrada tiene una importancia diferente a la del otro valor. Así que no son todos idénticos. Un valor puede ser más importante que el otro.

[08:31] Y el grado de importancia lo da un numerito al que llamamos peso. Ese peso lo multiplicamos por el valor de la entrada. Y luego sumamos todos ellos, toda esa multiplicación. Entonces , entrada uno multiplicada por peso uno , entrada dos multiplicada por peso dos , entrada tres multiplicada por peso tres. Sumamos todo eso y al final sumamos también un valor extra llamado sesgo.

[08:55] El sesgo es un valor de ajuste para que podamos determinar el umbral de disparo o no del neurona artificial de forma adecuada. Que es un valorcito que indicaremos con la letra b de bias. Y eso nos dará el valor z, que es nuestra suma ponderada. ¿Por qué la llamamos suma ponderada?

[09:14] Porque cada valor tiene un peso diferente. Tal vez ya hayas estudiado el promedio ponderado en la escuela, la suma ponderada es algo similar. Después de hecha la suma ponderada, aplicamos una función especial llamada función de activación.

[09:31] La función de activación tomará esta suma ponderada, este valor z, y determinará si debe disparar o no la neurona. El disparo ocurre en el perceptrón así. El valor de y, que es la salida, será uno, es decir, disparó, si el valor de z es mayor o igual a cero. Entonces, si esta suma ponderada con el sesgo da un número igual a cero o mayor, o positivo , eh, dispara la neurona.

[09:59] De lo contrario, si z es menor que cero , no dispara, la salida será cero. A esto lo llamamos función de activación . Existen varios tipos de funciones de activación que pueden usarse en neuronas artificiales hoy en día. El perceptrón utiliza una función especial llamada función escalón, que es una función estrictamente binaria.

[10:19] Por lo tanto, tenemos lo siguiente: entradas, cada entrada multiplicada por un peso, todo esto se suma junto con un sesgo. Entonces, aquí hay una formulita matemática básica, en este caso una suma de uno a tres porque tengo tres entradas simuladas. Este valor resultante de la suma ponderada se pasa a la función de activación; la función de activación realiza otro cálculo sobre este y determina la salida y, que será el resultado del procesamiento. La función de activación es general, parecida a

[10:48] esto que estás viendo. Si el valor de z , que es nuestra suma ponderada, es menor que cero, la salida es cero. Si es cero o superior, la salida es uno. Es decir, activa o no activa la salida de la neurona artificial, pasa adelante la señal o no la pasa. Esta función específicamente se llama función escalón porque parece un pequeño escalón. Pasas de un escalón al siguiente en cuanto superas un umbral, que es este valor cero aquí.

[11:14] Las neuronas de redes neuronales modernas pueden usar otros tipos de funciones de activación, ¿sabes? En el perceptrón es esta de aquí. Lo importante es que entiendas qué es la función de activación, qué es el peso, qué es el sesgo, porque todos estos conceptos se usan actualmente.

[11:31] Los perceptrones funcionan muy bien cuando tienes problemas de tipo linealmente separables que resolver. ¿Qué es un problema linealmente separable? Llamaremos aquí problema linealmente separable a un problema de clasificación cuando podemos separar perfectamente sus ejemplos en dos clases distintas usando una línea recta.

[11:52] Si es en dos dimensiones, esto también puede hacerse en tres o en dimensiones superiores. Un ejemplo clásico que siempre usamos es el de la función AND, la función lógica AND. Es totalmente separable, logramos tener valores específicos de un lado de la línea recta y valores del otro lado de la línea recta.

[12:11] Recordarás de la lógica de programación que la función AND funciona así. Si una de las entradas es cero, la salida es cero. Si ambas entradas son uno, la salida es uno. Entonces podemos hacer una separación. De un lado solo los valores cero y del otro lado el valor uno, que es lo que se muestra en este gráfico aquí. Aquí los valores cuando una de las entradas es cero y aquí el valor cuando ambas entradas son iguales a uno. Así que podemos separar los dos valores. Pero no toda función es

[12:37] linealmente separable. Un ejemplo de la propia lógica de programación es la función XOR, o exclusivo. Esta no es linealmente separable. No puedes trazar una única recta que divida las dos categorías de salidas. Es imposible. Entonces, este es un tipo de problema que un perceptrón no puede resolver. Es decir, no puede aprender a resolverlo. Recuerda que la idea del neurona artificial es el aprendizaje, es aprender a hacer algo. Y ahí vamos a tener el concepto de frontera de decisión. ¿Qué es la frontera de

[13:06] decisión? Es exactamente el lugar por donde pasa esta línea. Ella decide entre activar o no la neurona artificial, separando y clasificando los elementos, sus valores . Entonces llamamos a esto frontera de decisión. Es posible calcularlo.

[13:21] La frontera de decisión está formada por todo el conjunto de puntos aquí en el plano cartesiano en los cuales la suma ponderada es siempre igual a cero. Entonces, estos valores aquí. ¿Para qué sirve el perceptrón exactamente? La neurona artificial sirve para aprender.

[13:37] La idea es que aprenda algo y pueda hacer ese algo posteriormente sin necesidad de intervención humana. ¿Cómo aprende el perceptrón? El perceptrón aprende por etapas. Primero vas a proporcionar las entradas , que pueden ser valores numéricos, por ejemplo, pero puede ser cualquier cosa, en realidad, nombres, textos, lo que necesites. Se realiza el cálculo de la suma ponderada, como ya expliqué. La suma ponderada se proporciona a una función de activación y la función de activación generará un valor en la

[14:05] salida. Hasta aquí todo bien. ¿Qué se hace con este valor en la salida ? Durante la fase de entrenamiento del perceptrón vamos a comparar el valor generado en la salida con el valor esperado. Entonces la idea es la siguiente, necesitamos enseñar al perceptrón. Para ello tenemos que tener un conjunto de datos para los cuales sabemos cuáles son las entradas y cuál es el valor de la salida. Aplicas estos datos en la entrada, esperas a que el perceptrón proporcione la salida y lo comparas con

[14:33] la entrada. Si son iguales, el perceptrón puede resolver ese problema. Si no son iguales , el perceptrón aún no ha aprendido a resolver el problema. En ese caso, calculamos el error. Entonces, esta comparación nos permitirá calcular un valor numérico que es el error. Mientras el error no sea cero, en la mayoría de los casos, haremos lo siguiente: ajustar los pesos que se utilizaron en el cálculo, ajustar el sesgo haciendo un pequeño cálculo, por ejemplo, multiplicando el sesgo por el

[15:03] error y alterando el valor de los pesos del sesgo, y volvemos a hacer todo el entrenamiento de nuevo con las mismas entradas, obteniendo las salidas y comparando nuevamente. Haremos esto repitiendo hasta que los valores converjan.

[15:17] ¿Qué es converger? Es cuando los errores han sido eliminados y ahora tenemos un perceptrón que puede resolver el problema por sí solo. En este punto, si proporciono otros datos al perceptrón, debería devolverme una salida adecuada, incluso si no sé cuál es el valor de esa salida, es decir, ha aprendido. Ese es el objetivo.

[15:35] Y esta repetición se hace cuantas veces sean necesarias. A cada ciclo completo de entrenamiento lo llamaremos época. Así que ahí tienen otro concepto importante que deben conocer. ¿Qué es una época? Es un ciclo completo de entrenamiento que puede resultar en que el perceptrón haya aprendido o no, depende de la cantidad de errores que queden. Si quedan errores , pasas a una nueva época y realizas el entrenamiento otra vez.

[16:00] Entonces época, paso completo del modelo por todo el conjunto de entrenamiento. Entonces, por ejemplo, en la primera época podemos esperar un valor y obtener uno diferente. Yo esperaba 0 1 1 0, por ejemplo, pero obtuve 1 0 1 0, tuvimos dos errores. Realizo el entrenamiento de nuevo. En la segunda época, después de ajustar los pesos y el sesgo, tenemos 1 0. Todavía tenemos un error. Realizo nuevamente el entrenamiento en la siguiente época, ajustando otra vez los sesgos, eh, el sesgo y los pesos. En la

[16:31] última época aquí, no tuvimos ningún error, así que el entrenamiento convergió. Ya no necesitamos entrenar, el modelo aprendió. Y en este punto puedes usar, teóricamente, el perceptrón para resolver otros problemas que no sepas resolver o para los que no tengas respuesta. Entonces ese es el punto de convergencia. Que la convergencia, por lo tanto, es el momento en que el entrenamiento se estabiliza, los errores llegaron a cero. En realidad no necesita ser cero, puedes establecer que sea un

[16:57] valor muy pequeño, porque no siempre es posible llegar a cero, pero la idea es esa. A medida que las épocas pasan, es decir, el ciclo de entrenamiento, el número de errores debe ir bajando hasta llegar lo más cerca posible de cero, preferiblemente a cero. ¿Todo bien?

[17:13] Entonces esa es la idea del perceptrón. Las principales críticas al modelo fueron precisamente que no puede resolver problemas que no sean linealmente separables. Tiene una capacidad relativamente limitada, por ser un modelo de una sola capa, y terminó contribuyendo al invierno de la IA, el primer invierno de la IA, allá en los años 70, a principios de los 80. Bueno, espero que haya quedado claro cada uno de estos conceptos que cité sobre el perceptrón, que son conceptos, en realidad, base de

[17:41] las redes neuronales, como el concepto de sesgo, el de peso, el de valor de entrada, función de activación, función escalón, el concepto de convergencia y el concepto de los errores. Y lo que vamos a hacer ahora es simular un perceptrón.

[17:55] Entonces tengo un pequeño código en Python que simula un perceptrón que intenta aprender algo y devolvernos un resultado. Bien, vamos a hacer la simulación de un perceptrón en Python, por lo tanto. Voy a utilizar aquí un colab de Google para ejecutar el código. El código está listo , obviamente no voy a escribir el código completo, de lo contrario perderíamos media hora haciéndolo. El código también estará disponible en el GitHub de BOSCH en entrenamientos para quien quiera tomarlo. ¿Genial? Entonces vamos con

[18:22] este código. Bueno, es lo siguiente. Aquí tengo un pequeño código para un perceptrón que aprenderá a determinar si un alumno será aprobado o no, basándose en las notas de algunas pruebas proporcionadas y también en su asistencia.

[18:39] Entonces él hará una predicción. Voy a proporcionar algunas notas, supongamos que sean cuatro pruebas, y también tengo la asistencia. Y ahí el perceptrón tiene que decirme si el alumno está aprobado o si está reprobado. Para ello, lo primero que tenemos que hacer es entrenar el modelo. Entonces vamos a entrenar este modelo. Voy a usar cuatro notas en las variables de nota uno a nota cuatro, más la variable asistencia y la variable resultado. El resultado será uno aprobado, cero reprobado. Recuerda que

[19:06] el perceptrón siempre genera un valor binario en la salida, cero o uno. Para esto necesito un conjunto de datos de entrenamiento, es decir, necesito tener datos ya preparados con las notas , la asistencia y el resultado para un grupo de alumnos. Entonces voy a usar una matriz para esto que está aquí.

[19:25] Matriz de alumnos con algunos datos que escribí. ¿Cómo funciona esta matriz? El primer valor es una nota, otra nota, otra nota , otra nota, entonces los cuatro primeros valores son notas, después la asistencia en porcentaje, por ejemplo 95 %, y el último valor aquí es el resultado. Uno es aprobado, cero es reprobado. Entonces hay varios alumnos aprobados y algunos reprobados. La gran clave aquí, y es lo que necesitas tener en mente, es que yo no sé cuál es la regla de aprobación aquí.

[19:57] Si supiera cuál es la regla de aprobación, podría hacer simplemente un if else básico, como hacemos en lógica de programación, y tendría un pequeño programa que dice si el alumno está aprobado o no. Que es algo que tal vez ya te hayas imaginado. Pero la idea aquí es la siguiente: yo no sé cómo se hace esto, cómo se llega a la aprobación; solo tengo los conjuntos de datos. ¿ Pero cuál es la regla?

[20:19] El perceptrón tendrá que aprender esa regla a partir de ese conjunto de datos y ser capaz de resolver otros datos para los cuales no tenemos el resultado listo . Entonces, la gran ventaja del aprendizaje automático es esa: que la máquina aprenda a hacer algo independientemente de si nosotros sabemos hacerlo o no. Entonces, yo no sé cuál es la regla, no sé cuál es la nota de corte, si es siete, seis, seis y medio u ocho. No sé si la asistencia tiene alguna influencia o no, si el

[20:45] alumno viene a todas las clases, si no viene, o si falta a la mitad. No lo sé. Solo sé que tengo este conjunto de datos , el perceptrón estudiará estos datos y luego, para cualquier otro dato que yo le proporcione, dará un resultado similar. Bueno, una vez obtenido el conjunto de datos de entrenamiento, necesitamos inicializar el perceptrón.

[21:03] Solemos inicializar los pesos con un valor muy bajo o cero, así que todos los pesos en cero; el sesgo generalmente lo comenzamos en cero y esta variable de tasa la usaré justamente para ajustar los pesos y los sesgos. Entonces, mientras el perceptrón no haya aprendido correctamente, es decir, aprender significa tomar estos valores de asistencia y notas y llegar a ese valor final, que es cero o uno indicando si aprobó o no.

[21:32] Entonces, para ajustar los pesos y el sesgo usaré un valor pequeño, cero punto uno, es decir, subirá o bajará en pasos de cero punto uno. La siguiente fase es realizar el entrenamiento. Entonces, aquí está la gran clave. ¿Cómo entrenamos un perceptrón? Bueno, el perceptrón se entrena en épocas. Así que crearé un bucle de repetición para poder circular a través de estas épocas. ¿ Ahora, cuántas épocas son? No lo sé. No hay forma de prever cuántas épocas utilizará el perceptrón para aprender.

[22:00] Así que crearé un rango de 1000 épocas. Puse un valor bastante alto aquí, 1000 épocas. Intentará hasta 1000 veces. Probablemente se detenga mucho antes, más aún porque esto es relativamente sencillo. También comenzamos con los errores en cero, porque por ahora no hay ningún error, no se ha hecho ninguna prueba. ¿Y entonces qué voy a hacer?

[22:19] Para cada alumno dentro de mi lista de alumnos, que es esta lista de aquí arriba, voy a empezar normalizando las entradas, porque las entradas son así. Tengo las calificaciones que son números entre cero y 10, pero tengo las asistencias que son números entre cero y 100. Entonces, para hacer mi suma ponderada, quiero que estén más o menos dentro del mismo intervalo. Así que hago esta normalización.

[22:42] Para las notas de los alumnos, es decir , los cuatro primeros elementos, los voy a dividir por 10 y los pongo en una lista llamada entradas. Y luego la posición cuatro, que sería la asistencia , la voy a dividir por 100. Así tendré todos los valores en la misma proporción .

[22:58] Y el valor esperado lo voy a colocar eh como el valor de la quinta columna, que en realidad es la sexta, sería la posición cinco, de cero a cinco, que es ese uno o cero. Entonces, aquí dentro está el valor esperado y aquí las entradas para un alumno. Así que tomo una fila de esa pequeña tabla.

[23:16] Luego calculamos la suma ponderada. La suma ponderada es trivial, ¿sabes? Z recibe el sesgo y después, usando un bucle for, multiplicamos cada posición de las entradas por los pesos y añadimos esto a Z, acumulamos esto en la variable Z, ¿entiendes? Usando un bucle de repetición. Entonces, al final de este bucle, tenemos todas las sumas eh de esa fila específica de ese alumno dentro de la variable Z. Aplicamos la función de activación, que es bastante sencilla. Si Z es mayor o igual a cero, eh retorna

[23:48] uno, de lo contrario retorna cero. Esto lo coloco en la variable previsto. Y calculo el error. ¿Qué es el error? Es el valor esperado, lo que esperaba obtener, uno o cero, menos el valor obtenido en el cálculo, que puede ser uno o cero. Si es cero, si es uno menos uno o cero menos cero, no hubo error. Si es cualquier otro valor, tuvimos un error. Hecho esto, si el error es diferente de cero, es decir, si hubo error, voy a acumular un valor en la variable errores, en plural, ¿verdad?

[24:17] Entonces, ¿qué contendrá errores? El conteo de los errores obtenidos. Entonces, tiene un error, dos, tres, depende de la cantidad. Y luego hacemos el ajuste, esto es muy importante, el ajuste de los pesos y del sesgo. El ajuste se hará de esta manera.

[24:34] Los pesos acumularán la cantidad de errores por la tasa de aprendizaje, ese 0.1 por la posición de cada entrada. Y ponemos esto en un vectorcito de errores. Y el sesgo también lo ajustamos multiplicando la tasa por el error, es decir, aquel número que empezó en cero para todos ahora será un poco diferente porque hubo errores. Esto solo sucederá si hay error, si el error es distinto de cero. Si el error es igual a cero, no hubo error, así que no hay que ajustar ni el sesgo ni los pesos. Y ahí

[25:07] escribiré en pantalla cuál fue la época . Así tendré un control de cuántas épocas se obtuvieron y cuántos errores hubo en cada época. ¿Cuándo termina? Cuando la cantidad de errores es igual a cero. Entonces hago un break, salgo del bucle de repetición y finalicé el entrenamiento. Luego mostraré en pantalla los pesos y el sesgo.

[25:25] Entonces ahora mira qué interesante, voy a ejecutar este primer código para que podamos crear los valores. Lo ejecuté. Ya está en la memoria. Voy a hacer el entrenamiento. Ejecuté el entrenamiento. El entrenamiento es rápido, ¿sabes? Rápido , ya va a mostrar las épocas. En la época uno hubo un error, en la época dos hubo dos errores. Los errores fluctúan mientras intenta ajustar los pesos y el sesgo hasta llegar al momento en que ya no hay ningún error, que fue en la época 53; hizo 53 veces todo ese bucle. En la

[25:57] época 53 no hubo ningún error, finalizó el entrenamiento. Y aquí muestra cuáles son los pesos. Los valores obtenidos fueron estos para el conjunto de datos que proporcioné. Y el sesgo es este de aquí. Entonces lo que está pasando aquí es lo siguiente, presta atención.

[26:13] Este conjunto de pesos y este número de sesgo son el aprendizaje que se obtuvo. A partir de estos valores nuestro perceptrón ahora en teoría es capaz de recibir las notas y la asistencia de cualquier alumno y decirte si está aprobado o reprobado usando los mismos criterios usados en los datos de entrenamiento, independientemente de si yo sé cuáles son esos criterios o no.

[26:35] Por lo tanto, el perceptrón sabe resolver esto ahora. Y podemos probarlo. Para probar, voy a hacer lo siguiente. Voy a pedirle al usuario que digite cuatro notas y la asistencia y calculamos la predicción. Como ya aprendió, voy a pasar las notas que se obtuvieron, que pasé en las entradas de un alumno nuevo del que no sé el resultado y obtendré un resultado para él aquí que será aprobado o no.

[27:02] Fíjate que aquí voy a usar los pesos que ya están guardados, están en la memoria , están grabados. El sesgo ya está en la memoria también. Entonces simplemente aplico aquella idea de la suma acumulada , hago el cálculo de la función de activación y el resultado que obtenga será el resultado de aprobado o reprobado.

[27:20] ¿Todo bien? Es decir, voy a usar aquí los mismos cálculos que usé dentro del entrenamiento. La diferencia es que durante el entrenamiento yo suministré el resultado y dejé que ajustara los pesos y el sesgo hasta aprender. Ahora no necesito suministrar, no necesito ajustar nada más, solo proporciono los datos y él me da el resultado. Llamamos a esto aprendizaje supervisado.

[27:42] Supervisado porque sé cuál es la respuesta e indico la respuesta del problema al modelo hasta que aprenda. Y entonces muestro el resultado en la pantalla. Así que cuando ejecuto este código, me pedirá las notas. Entonces pongamos unas notas aquí.

[27:57] Ocho, seis, cinco y siete, por ejemplo, y una asistencia del 80%. Entonces me dirá que este alumno está aprobado. Vamos a intentar con notas bajas ahora. Nota uno, tres, ocho, después bajó a cuatro, después a dos y la asistencia quedó en 70%.

[28:19] Ahora está reprobado. Vean que no puse ningún cálculo específico, ¿no? Si es mayor a esto, entonces aprobado, si no sé, está en recuperación, si no, reprobado. No. El perceptrón miró dentro de aquel conjunto de datos y de ahí extrajo la forma en que debería tratar nuevos datos.

[28:36] Por ejemplo, no sé si la asistencia tuvo una influencia o no, pero me está diciendo que con esa asistencia y esas notas el alumno está reprobado. Y una cosita más importante para cerrar, este conjunto de pesos y sesgos lo podemos llamar parámetros. Entonces, cuando ves un modelo de lenguaje grande que tiene, digamos, 100 mil millones de parámetros , gran parte de esos parámetros son los pesos calculados durante el entrenamiento del modelo y los sesgos utilizados. Así que esto es el gran

[29:06] tesoro de la IA moderna, los pesos y el sesgo; son los valores que efectivamente hacen que estos modelos de redes neuronales funcionen, es decir, que logren aprender y ejecutar aquello que aprendieron. ¿Todo claro, gente? Bueno, este video fue una introducción muy básica a la idea de redes neuronales tratando el perceptrón.

[29:26] Entonces vimos algunos conceptos importantes que se usan en esta disciplina o en estas disciplinas que necesitas conocer si quieres aprender a fondo a desarrollar y entrenar modelos de IA, etc. Y vimos una pequeña simulación usando el lenguaje Python de cómo esto podría funcionar en la práctica.

[29:44] Voy a dejar los enlaces para que descarguen los materiales aquí abajo en la descripción del video y quisiera saber qué opinan ustedes sobre este tema . ¿Les gustan las redes neuronales, el aprendizaje automático?¿Les gustaría ver videos más profundos sobre los algoritmos utilizados, entender a fondo cómo funcionan estos conceptos, trabajando evidentemente con técnicas más modernas? Si es así, déjenlo aquí abajo en la descripción del video. Si tienen alguna sugerencia de algún tema

[30:12] relacionado o similar, déjenlo también en la descripción del video aquí abajo, ¿vale? Así que eso es todo. Gracias y hasta la próxima. Entonces eso es todo, amigos. Espero que les haya gustado este video. Aprovechen para suscribirse al canal de Boson Treinamentos si aún no están suscritos, y si ya lo están, hagan clic en la campanita aquí abajo para activar las notificaciones y así ser avisados cuando tengamos contenido nuevo publicado en el canal. Y si quieren contribuir con Boson

[30:37] Treinamentos, conviértanse en miembros de nuestro club del canal. Tenemos el enlace aquí abajo en la descripción del video y también el botón de "unirse" de YouTube con las instrucciones. Y no dejen de visitar nuestro sitio web www.bosontreinamentos.com.br, además de seguirnos en las redes sociales que aparecen aquí arriba. Gracias y hasta la próxima.
