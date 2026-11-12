# Modelos de Lenguaje en CPU 🚀 CÓMO Ejecutarlos con llama.cpp sin una GPU

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=EyZMuU9SE3g)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-06
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:10

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Es muy común ver la carga de modelos de lenguaje, pero directamente en GPU, aunque ¿qué sucede en aquellos casos en los que no tenemos una GPU de buena capacidad? Pues a veces se nos olvida que de por sí es posible cargar estos modelos de lenguaje directamente en CPU y RAM. Y vamos a ver el día de hoy más o menos a qué velocidad funcionan y cómo los podemos ejecutar. Para ello estaremos usando directamente llama.cpp en vez de Ollama LM Studio o similares que en el fondo modos lo que utilizan es

[00:31] una versión de llama.cpp más desactualizada y limitada. Así que mejor directamente llama.cpp y lo vamos a descargar para versión CPU. Estoy en Windows versión CPU, este es el que voy a descargar. ¿Qué modelos de lenguaje podemos utilizar? Y pues básicamente los mismos, simplemente la velocidad va a variar de acuerdo a nuestra CPU y RAM en vez de de acuerdo a nuestra GPU. En esta ocasión tenemos un Ryzen 5 5600 G, en el cual tenemos 128 GB de RAM, pero no por tener toda esta capacidad significa que

[01:06] la vamos a aprovechar, porque una cosa es que tengamos la capacidad y otra es que tengamos la velocidad. A excepción de que sean modelos de lenguaje mezcla de expertos, de lo contrario no conviene cargar modelos tan grandes. Yo, como en nuestros vídeos anteriores que tenemos como tutorial a llama.cpp, voy a descomprimir esto mismo y en nuestra carpeta de llama.cpp lo voy a meter a bin. Aquí lo tenemos descomprimido ese llama.cpp específicamente para CPU en Windows. Y pues con ello pudiéramos

[01:38] cargar cualquier modelo de lenguaje. De hecho, en este caso tengo Gema 4 E2B y Qwen 3.5 2B. Y lo único que tendríamos que hacer para cargarlo en pura CPU y RAM, pues es indicar el llama.cpp en cuestión que tenemos para ello. Así que copio el nombre de la carpeta y lo voy a pegar por aquí en cada uno de nuestros punto bat. Ya tenemos tutoriales de llama cpp y de estos modelos, aquí simplemente lo que vamos a ver es qué tal funcionan en CPU. Vemos que los cambios a hacer pues son prácticamente

[02:10] nulos, es únicamente indicar dicho llama cpp. Una vez con ello vamos a probarlos para ver qué tal es la velocidad únicamente con CPU y RAM en esta ocasión con un Ryzen 5 5600G 128 GB de DDR4 3200 MHz dual channel. Doy doble clic a uno de los archivos y pues el consumo de memoria va a ser el mismo que si fuera en GPU, solo que en este caso en vez de en VRAM sería en RAM. Vamos a entrar a la interfaz web de llama cpp para hacer algunas pruebas y si por ejemplo escribimos "¿Por qué el

[02:47] cielo es azul?" al momento de presionar intro vamos a estar viendo la velocidad que nos está generando este modelo únicamente con CPU y RAM y vemos que la verdad es que es una velocidad bastante bastante utilizable. En esta ocasión con todo y MTP, a lo mejor hasta si le quitamos el MTP es más rápido o qué sé yo. MTP es para hacer speculative decoding, también tenemos vídeo sobre ello. Intenta acelerar la generación de tokens pero solo intenta porque en algunos casos pues lo puede disminuir en

[03:16] vez de mejorar. Vemos que realmente es un modelo bastante utilizable, sin embargo es un modelo de 2 billions, 2 billions de parámetros y pues prácticamente no ocupa nada de memoria. En nuestras GPUs menos porque no los estamos usando para eso, pero pues casi no ocupa nada de RAM, sin embargo no es muy rápido que digamos. No es lento teniendo en cuenta que es únicamente CPU al mismo tiempo que estoy grabando. Pero qué tal un modelo más grande, mezcla de expertos, pues vamos a probar ahora. Así

[03:44] que probemos por ejemplo con el Qwen 3.6 para variar. No usamos archivos y versiones y por ejemplo probemos con el MXFP4 MoE, que pesa 21.7 GB. Además de ello, voy a descargar el MM Pro BF16 para visión y, pues, a pesar de que requiere más memoria y que en este momento la RAM es cara, más cara es una GPU en donde quepa este modelo, por mucha, mucha diferencia. Claramente no va a ser la misma velocidad, pero debería de seguir siendo bastante utilizable porque solo tiene 3 billions activos. En mi carpeta

[04:20] de modelos voy a crear la carpeta para este modelo, Qwen 3.6 35B A3B, y aquí dentro vamos a meter los dos archivos GGUF que acabamos de descargar. Listo, ya he metido el Qwen 3.6 35B A3B en MXFP4 MoE, en conjunto con el MM Pro de visión. Preparo el archivo {punto}bat para ejecutar este modelo. Creo que todo ya está correctamente. Cierro el modelo anterior y ahora vamos a probar este Qwen 3.6. Ahí ya lo tenemos cargado, exactamente con estos ajustes que vimos en el {punto}bat y vamos a ver en este

[04:55] momento cuánta RAM estoy utilizando. Y aquí nos indica que estamos utilizando 35 GB de RAM, pero recordemos que no únicamente del modelo, sino de todo lo que tengo abierto en mi PC. Si venimos de nuevo a la ventanita de llama.cpp y le damos en regenerar, vamos a ver este modelo qué velocidad nos está dando en este momento. Y vemos que bajo los ajustes actuales en esta PC, mientras estoy grabando, estamos arriba de 11 tokens por segundo, lo cual sigue siendo una velocidad bastante utilizable. En

[05:24] este caso, teniendo en cuenta que no estamos utilizando MTP ni nada similar y que, además, pues, cabe perfectamente en CPU y RAM, no tengo que andar haciendo inventos raros, incluido el no gastar en una GPU en el que tenga que caber. A lo mejor, con unos 250 dólares, si es que no tengo la RAM suficiente, puedo comprar una de 32 GB, mientras que para comprar una GPU en el que quepa como una RTX 5090, tengo que gastar 5000 dólares, 250 contra 5000, además de la fuente de alimentación, calor, espacio en el

[05:59] gabinete y de que al momento de ejecutar, pues seguirá requiriendo mucha corriente eléctrica. Así que estamos viendo pues que sí, sin demasiado problema es posible cargar modelos en CPU, claramente no a la misma velocidad, pero pudiendo tener más fácilmente más capacidad y a precios más accesibles.

[06:15] Tener una GPU con 128 GB de VRAM es costosísimo, muy muy muy costoso, cuesta lo que puede llegar a costar una casa o la mitad de una casa. Así que este vídeo pues fue simplemente para recordar que se puede solo con CPU, que lo que tenemos que hacer no es la gran cosa, solo descargar la versión de llama CPP para CPU y vimos que la velocidad de generación de tokens, pues no es lenta, rapidísima no es, pero lenta tampoco. Es algo realmente utilizable que podemos utilizar sin demas iado problema. Si a

[06:46] esto le sumamos el encontrar un modelo adecuado, en conjunto con Speculative Decoding, pues puede mejorar aún más. Sin embargo, que de base en un modelo de 35 billons, que a día de hoy sigue siendo bastante usable, como en los vídeos anteriores que vimos, estar consiguiendo, sin esfuerzo alguno, arriba de 11 tokens por segundo, pues no está mal. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.
