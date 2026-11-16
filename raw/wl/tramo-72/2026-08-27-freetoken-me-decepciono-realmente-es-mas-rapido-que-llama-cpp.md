# FreeToken me Decepcionó ❌ ¿Realmente es más RÁPIDO que llama.cpp?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=T1o7X2Uz4oo)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-27
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:30

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En esta ocasión vamos a hablar y probar Free Token. Free Token es un programa que está para Windows y Linux, el cual permite, según nos dicen, ejecutar modelos de lenguaje más rápidamente que en otro tipo de programas. Está principalmente pensado para modelos mezcla de expertos y solo funciona con gráficas Nvidia. Si intentamos descargar la aplicación de escritorio flashml.ai, aquí viene para descargar. Una vez que la ejecutemos vamos a tener algo como lo siguiente. Y es que de por sí aquí mismo

[00:32] ya nos va a dar la posibilidad de descargar fácilmente distintos modelos, entre ellos indicándonos si cabe en nuestra memoria o no. Y pues una vez descargados también los podemos ejecutar. Cada uno de estos modelos comúnmente viene en distintas precisiones. Si nos vamos a settings, por aquí podemos indicar distintas cosas en cuanto a cómo queremos que se carguen los modelos en nuestro hardware, incluido de qué forma queremos que se compute los modelos mezcla de expertos.

[00:58] Si le damos en auto, tarda un rato y después nos da una lista de lo que más puede acelerar a lo que menos, las combinaciones de más a menos. Y en mi caso, por ejemplo, me decía que en modo hybrid en nvfp4 o mxfp4, que según podía acelerar por 24. No sé por 24 comparado con qué. Sin embargo, yo ya estuve probando los tres modos y ninguno de ellos es que me esté dando mejor velocidad, sin importar la precisión del modelo ni el modo en el que aquí hayamos indicado las cosas. Vamos entonces, por

[01:30] ejemplo, nosotros a chat. Y solo como ejemplo de lo que estoy comentando, probemos con el modelo quant3.6-35b-3b, en esta ocasión en nvfp4. Aquí a tener en cuenta, por cierto, que los modelos aquí no se cargan en formato gguf, sino que se cargan en safe tensors bajo distintas precisiones que no son tan variadas ni tan versátiles como un gguf. De igual forma yo ya estuve probando con distintos modelos, distintas precisiones, y vamos a ver qué tal funciona. Aquí, por cierto, antes de

[02:02] intentar ejecutar, si nos vamos a la parte de parámetros, vemos que tampoco es que haya mucho que podamos modificar, así que procedamos a intentar cargar el modelo. Ahí empieza la carga del modelo. Por cierto, la primera vez tarda más porque según quién sabe qué prepara, quién sabe qué compila y de todos modos las siguientes veces no es que cargue muy rápido. Una vez que todo esto termine, lo probamos también con llama CP. Parece que ya casi termina. La verdad es que la carga no es la más

[02:29] rápida, llevo aquí un pequeño rato esperando. Y ahí ya terminó de cargar. Vemos que utilizó 10.6 GB de mi GPU Nvidia, recordemos que solo funciona con Nvidia, y estamos utilizando en este momento 27 GB de mi RAM. Intentamos hacer alguna consulta al modelo, que por cierto, tal como decimos, por lo menos así simple, no hay forma de indicar cuánta ventana de contexto o cosas así.

[02:52] Seguramente modificando más cosas es posible, pero se me hace raro que al momento de cargar, en los ajustes por aquí no venga de por sí. Pero bueno, vamos a hacer una consulta, como por ejemplo, ¿por qué el cielo es azul?

[03:04] Presionamos intro y aquí lo primero que nos vamos a topar prácticamente siempre, no solo en la primera respuesta, sino en cada nueva conversación, no solo la primera vez que abrimos el modelo ni las siguientes, sino en cada nueva conversación que estemos haciendo, tarda un poco en comenzar a dar la respuesta, pero pues luego de ello ahí comienza.

[03:22] Este modelo en precisión NVFP4 está generando poco menos de 10 tokens por segundo en mi hardware. Ahí está dando un poquito más de 10 tokens, 11, 11.1, 10.8, 10.5. Y pues, por lo menos de momento, parece ser que por más que esto instala cosas y promete cosas y configura cosas, no estamos obteniendo realmente la mejor velocidad. Lo voy a detener. Tal como digo, esto es solo un ejemplo, una prueba de a mí cómo me ha funcionado, no sé en otro tipo de hardware, pero de momento pues no pinta muy bien. Ahora,

[03:58] no vamos a estar probando todos los modelos, todas las precisiones, todos los tamaños, simplemente es contar un poco mi experiencia dando un ejemplo, así que ahora pasémonos directamente a llama.cpp. Cierro esto y en llama.cpp vamos a cargar el modelo cuentres.6.35b.3b, en esta ocasión en mxfp4moe, de todos modos ya he probado todo tipo de precisiones en un lado y en el otro, visión, mtp, toda la ventana de contexto, etcétera, etcétera, estos son todos los ajustes y vamos a ver qué tal

[04:29] nos funciona. Doy doble clic para intentar cargar el modelo y vamos a ver por aquí que esto carga mucho más rápido comparado directamente contra ese otro programa de free token. Aquí con los ajustes que puse estamos ocupando 10.6 GB de vram y solo 24 de ram, teniendo en cuenta que es con visión, que es con mtp, que es con toda la ventana de contexto. Entro entonces aquí a la interfaz web del mismo llama.cpp y hagamos exactamente la misma consulta.

[04:58] ¿Por qué el cielo es azul? Presiono intro y vemos cómo rápidamente procesa los tokens y rápidamente comienza a dar la respuesta y de hecho desde el mismo razonamiento estamos arriba de 30 tokens por segundo. De hecho ya terminó el razonamiento, está siendo muchísimo más rápido y está siendo más fácil de configurar. Tal como digo, esto solo es un ejemplo, pero yo ya estuve haciendo muchas pruebas y la verdad es que en mi caso todas esas mejoras que me promete free token, la verdad es que no las

[05:25] estoy consiguiendo, mientras que en aquel, una vez que estaba empezando a dar la respuesta final, ni siquiera dejé que terminara, ya estábamos como 9 tokens por segundo, aquí el promedio total fue de 33.35 tokens por segundo, sin programas raros que instalan un montón de cosas, que tardan descargar los modelos, que no se pueden todas las precisiones, que la primera vez que cargamos un modelo que quién sabe qué cosa prepara y se tarda un rato, eso no lo vimos, pero igual lo menciono, que la configuración

[05:54] aparentemente no resulta ser tan sencilla, porque a pesar de que okay, no tenemos que meter comandos, de igual forma de manera rápida no vemos dónde es donde podemos configurar, por ejemplo, la ventana de contexto y pues en definitiva que al menos en mi caso yo no le estoy encontrando sentido a ese free token luego de haber estado haciendo varias pruebas. Vamos a volver a abrir free token simplemente para mostrar un poquito más todos los ajustes que tiene por aquí, pero sinceramente si es que

[06:19] comúnmente funciona como a mí, no es algo que en estos momentos esté recomendando. Promete mucho y cumple poco, no, nada y menos que nada, porque funciona peor. Esto es lo que vemos en modelos, esto es lo que vemos en consola, aquí por cierto tampoco veo cómo cambiar la ventana de contexto, aquí en chat ya habíamos visto que en los parámetros tampoco veo eso, apps pues viene fácilmente conectable a otras aplicaciones, aunque esto igual se puede con llama CPP, simplemente a partir

[06:48] precisamente del endpoint al estilo open y ahí van tropic, eso no hay mucha diferencia, la verdad. Logs, aquí podemos ver todo lo que ha sucedido, settings y pues ya, es todo. Por lo menos a simple vista no encuentro dónde se configuran los modelos y no solo ellos, sino que pues tampoco es que me hayan funcionado más rápido. No es que no me hayan funcionado más rápido y que me hayan funcionado igual, es que directamente me han funcionado a un tercio de la velocidad o a menos como lo

[07:13] que vimos en este ejemplo, 33 tokens por segundo contra nueve y eso que ni siquiera dejamos que terminara la respuesta. Así que en mi caso free token suena bonito, prometen mucho, pero para mí no cumplieron con nada. Si quieres seguir viendo este tipo de videos, simplemente dale like y suscríbete.
