# Cómo hacer que un LLM LOCAL atienda a CIENTOS de usuarios a la vez

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Zri8dLpRnaU)
- **Canal**: Cognix
- **Publicado**: 2026-09-17
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Un laboratorio universitario puso una capa de servidor delante de $50,000 en GPUs y hoy procesa 1000 millones de tokens por día a través de ellas. Suficiente para que las placas se paguen solas en un año. Un modelo por caja y cada usuario nuevo abarata el hardware.

[00:18] Es el sueño húmedo de cualquiera que tenga fierros. La GPU que compraste a las apuradas antes de que se dispararan los precios de la RAM atiende a un solo usuario, vos, y pasa la mayor parte del día funcionando como una estufa muy confiable. Vamos a abrir la tienda. Tu modelo atendió al cliente número dos, después al 20, después al 200. Te voy a mostrar qué pasa adentro de la caja en el momento exacto en que entra el segundo cliente y cómo afecta eso a la velocidad y al rendimiento. Un solo

[00:48] usuario es el peor modelo de negocio que puede tener una GPU. Para escribir un solo token, el modelo lee todo su conjunto de pesos desde la memoria, 140 GB, en un modelo de 70,000 millones de parámetros. La escritura está limitada por el ancho de banda de memoria, así que en una a 100 el cálculo llega como máximo a unos 14 tokens por segundo, mientras la mayor parte de la capacidad de cómputo del chip queda ociosa. Estás pagando una placa de centro de datos y la estás usando como un diario personal

[01:20] ultra rápido. Y entonces llega el segundo cliente, justo cuando el primero está a mitad de su respuesta. La herramienta de un solo usuario que corrés en casa tiene una sola jugada. El segundo, espera hasta que el primero termine del todo, token por token. Un motor de servicio funciona distinto. El modelo se ejecuta en pasos, un paso por token. Y después de cada paso, el motor puede cambiar quién está en el lote, el grupo de solicitudes que comparten ese paso. El cliente dos recibe su token y

[01:52] avanza al paso siguiente. La misma lectura de pesos que generaba un token, ahora genera dos. Se duplica la salida con el mismo tráfico de memoria. Cuando un cliente termina, su asiento queda libre en el paso siguiente y lo ocupa el que está esperando en la fila. Eso es procesamiento continuo por lotes del paper Orca de 2022 y hoy lo hacen todos los motores serios. Los tokens de cada cliente llegan un poco más lento porque cada paso implica más trabajo mientras el total sube rápido. Un análisis de

[02:24] concurrencia en un equipo DGX corriendo el modelo de 27,000 millones de parámetros de Quen muestra exactamente lo que vas a estar vendiendo. Un cliente solo recibe 82 tokens por segundo. Ocho clientes reciben 63 cada uno. 500 combinados. 32 reciben 34 cada uno, casi 1100 combinados. La producción total se multiplica por 13. Cada cliente individual va dos veces y media más lento. Asientos, no velocidad. Esa es la característica correcta para agentes de programación que están masticando una

[02:59] tarea larga o para un trabajo por lotes de más de un millón de documentos. Y es la característica equivocada para un humano sentado mirando cómo caen los tokens. También significa que la cantidad de tokens por segundo, sin decir cuántos usuarios había, es un número sin sentido. Dos RTX 3090 con ese mismo tamaño de quen reportaron 100 tokens por segundo de escritura, 100 por segundo de lectura del prompt y 585 por segundo con ocho solicitudes simultáneas. El número que importa

[03:32] depende de quién más esté usando el equipo. Cada conversación que cobrás necesita sus propias notas de trabajo, el registro que el modelo guarda de todo lo dicho hasta ese momento. Y esas notas crecen con cada token de contexto. En un modelo de 70,000 millones con 128,000 tokens de contexto, esos son unos 40 GB por cliente a precisión completa. Los pesos son un costo fijo que pagas una sola vez. Las notas, en cambio, crecen con cada asiento que vendas y son lo primero que se te agota. Un equipo que

[04:04] probó una estación de trabajo con dos RTX Pro 6000 y 192 GB de RAM, chocó contra el límite en tres solicitudes simultáneas de 64,000 tokens de contexto con un modelo de 4 bits enteramente en las GPUs. Una configuración más lenta de 8 bits que se desbordaba a la memoria del sistema atendió 10. Más Bram vende más asientos, pero solo hasta que la longitud de contexto se la come. Cuando las notas llenan la memoria, el motor tiene opciones ordenadas según cuánto se enojan tus clientes. Las solicitudes

[04:39] nuevas esperan en una cola. Una conversación en curso se interrumpe a mitad de frase y se recalcula más tarde. Y si calculaste mal el margen de seguridad, todo el sistema se cae por falta de memoria. Vas a estar adivinando porque OBLLM te obliga a fijar su presupuesto de memoria como un porcentaje y si lo pones muy alto revienta. Oyama acepta 512 solicitudes y a partir de ahí empieza a repartir errores 503. El laboratorio de la universidad corrió 2H200 con un modelo abierto de 120,000 millones de

[05:15] parámetros, 1000 millones de tokens por día con 173 solicitudes en ejecución y 29 esperando. El tiempo promedio hasta el primer token fue de 17,8 segundos y el tiempo promedio de espera en la cola 18,7. Casi toda la demora hasta el primer token era pura cola porque las placas ya estaban saturadas. Subir el número de solicitudes paralelas a 512 tampoco sirvió de nada. La producción total nunca pasó de 3,000 tokens por segundo.

[05:46] Cada respuesta se volvió más lenta. No subestimes el costo de leer el prompt. Un cliente que pega 40,000 tokens frena el flujo de todos los demás porque leer una solicitud tan larga consume muchísimo cómputo mientras el resto espera su paso siguiente. El motor parte esa solicitud enorme en fragmentos y los intercala. Eso se llama prellenado fragmentado. En el otro extremo, los proveedores con miles de GPUs ponen la lectura del prompt y la escritura de tokens en máquinas separadas, porque

[06:17] leer exige cómputo y escribir exige ancho de banda. Eso es desagregación de prellenado y de codificación. El término que ves todo el tiempo en los hilos es real a escala de frontera e irrelevante en tu única máquina. Tus herramientas actuales ya procesan más por lotes de lo que crees. El servidor de llama.cpp tiene ranuras paralelas y procesamiento continuo por lotes activados por defecto desde marzo de 2024. LM Studio agregó cuatro ranuras paralelas en enero. O llama corre una solicitud paralela por

[06:50] modelo por defecto. Cuatro. Si la memoria alcanza y se puede subir. Hay un operador que está corriendo nuestro plan de negocio exacto ahí arriba. Preguntas y respuestas sobre documentos para estudios de abogados. Dos ranuras paralelas entre cinco y 10 usuarios concurrentes y un Cron que despierta al modelo cada 2 minutos para que no se enfríe. Los amigos no dejan que sus amigos usen Oyama", dijo la mitad de la sección de comentarios. "Pero las facturas dicen la verdad." Alex Siskind

[07:20] probó la versión con cinta adhesiva, 16 copias del servidor de llama.cpp CPP detrás de Engine X en una Mac Studio y pasó de 124 tokens por segundo a 200 combinados con la salvedad de que llama. CPP no sostiene tantas conexiones como VLM.

[07:39] Más allá de eso, VLLM o SG Lang en una sola 5090 es una configuración normal. Lo que te cuesta son las operaciones, una instalación de 9 GB, cargas de modelo de 5 a 15 minutos, memoria configurada a mano en porcentajes y versiones nuevas que rompen cosas. Un usuario en producción necesitó tres parches en una versión, se comió bucles de tokens en la siguiente y reporta algún fallo crítico en cada lanzamiento.

[08:08] Fija tu versión en el momento exacto en que funciona y migrá por síntomas, nunca por un número de tokens por segundo. Latencia que fluctúa según quien más esté conectado. Una GPU con poca utilización, mientras las solicitudes se inclinan hacia promps largos que dominan tu tiempo hasta el primer token. La mayoría de las empresas no se autoalojan, llaman a las APIs grandes y las que corren sus propios racks tienen un volumen enorme de datos que legalmente no puede salir del edificio o

[08:38] un ajuste fino propio. La matemática lo explica. 16H200 por un valor de $750,000 amortizados en 3 años y funcionando las 24 horas dan alrededor de 30 centavos por millón de tokens de salida con la energía incluida. Deepsik vende su modelo Flash a 28. El precio de mercado del token lo fija quien tiene utilización perfecta y tu plan de recuperar la inversión compite contra ellos desde el día uno. El laboratorio gana porque 1000 millones de tokens por día mantienen sus dos placas encendidas

[09:12] las 24 horas. Y antes de gastar un peso, hacé la prueba gratis. Mandá dos solicitudes a la vez a tu configuración actual, después ocho y mirá cómo se comporta la cola. Si se mantiene tranquila, felicitaciones, ya podés abrir la tienda. M.
