# GPU 40GB 🚀 Cómo usar tu GPU INTEGRADA para IA con llama.cpp

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=4ZZT0ZTAJAI)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-24
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:41

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Vamos a abrir el administrador de tareas y por aquí vamos a ver que tengo una RTX 3060 de 12 GB, una RX 6600, pero que también tengo una GPU integrada. Básicamente mi procesador es un Ryzen 5 5600G y pues dicho procesador incluye una GPU, la cual funciona a partir de la RAM.

[00:22] Entonces, si reviso por aquí en estos momentos, me aparece como que RAM disponible tiene hasta un máximo de 16 GB. Sin embargo, eso es lo que yo tengo indicado como mínimo en la BIOS, pero realmente en este caso, bajo los 64 GB de RAM que tengo, 16 100% ya asignados a la GPU y de lo que queda de por sí la mitad se puede usar adicionalmente para esta misma GPU, nos da un total de aproximadamente 40 GB. Tengo aparentemente por aquí una GPU integrada de 40 GB de RAM, la cual claramente no

[00:59] es igual de rápida que ninguna de las otras dos, pero que sigue siendo más rápida que el procesador, porque el procesador no es GPU, para ese tipo de cálculos no es lo mejor. Entonces, ¿qué sucede si intento cargar un modelo de lenguaje más grande de lo que cabe en la RX 6600? Pues sencillamente que no es que obtenga pocos tokens, es que obtengo cero, si es que no cabe el modelo. Lo mismo en la RTX 3060 de 12 GB. Podemos dividir el modelo entre distintos dispositivos, como por ejemplo, utilizar

[01:28] la RTX 3060 y lo que falte que sea CPU y RAM. Sin embargo, ahí hay dos cuellos de botella. El primer lugar que la RAM no es tan rápida como la VRAM y el segundo que la CPU, para el tipo de cálculos que requerimos en modelos de lenguaje o inteligencia artificial generativa en general, no es tan bueno como lo puede ser una GPU. Entonces, si utilizamos la GPU integrada, lo que estaremos obteniendo será sí, pues la misma velocidad que de por sí tiene la RAM, pero realizando los cálculos más

[01:57] rápidamente. el perfil de tokens o el procesamiento de los prompts, así como en la generación de los mismos, claramente la RAM no va a ser tan rápida, pero para mezcla de expertos esto está genial, ¿por qué? Porque tenemos buena cantidad de memoria disponible y cabría todo en un único dispositivo que sí es GPU y pues dado que los mezcla de expertos solo activan una parte a la vez, haría que el ancho de banda de la memoria RAM tampoco sea un gran problema. Y de igual forma, modelos densos de todos modos

[02:28] funcionaría mejor que directamente en CPU. No solo eso, sino que además si tenemos una GPU dedicada, pues podemos usar ambas, en vez de GPU y CPU, GPU y la otra GPU. En esta ocasión la RTX 3060 no la vamos a usar absolutamente para nada. La Radeon RX 6600 es la que está grabando y mostrándome las cosas en pantalla y la GPU integrada Radeon que tenemos hasta un máximo de 40 GB disponibles, la vamos a utilizar para cargar 100% aquí los modelos de lenguaje, siendo mucho más económica y

[03:01] teniendo más capacidad. La RAM está cara, sí, y la VRAM más, con lo cual sigue siendo bastante económico esto comparado contra una GPU de la misma capacidad. Voy a dirigirme entonces primero a llama.cpp, a su repositorio dentro de GitHub y vamos a descargar llama.cpp, pero en esta ocasión versión Vulcan para que pueda funcionar directamente con esa GPU integrada.

[03:24] También la versión de RockM no tiene soporte oficial como tal, pero es compatible de todos modos. Sin embargo, Vulcan comúnmente para esto funcionaría mejor, aunque lo mejor es probar. Pero bueno, en esta ocasión yo descargaré la versión Vulcan y una vez que la tenga descargada, pues la voy a descomprimir.

[03:40] La tengo descomprimida y como en nuestro tutorial o tutoriales de llama.cpp, la voy a pasar a mi carpeta bin. Ya tenemos aquí esta versión de llama.cpp que además es más reciente y con soporte Vulcan y ahora vamos a probar algunos modelos de lenguaje, por ejemplo, comencemos con esto mismo con esto mismo que tengo aquí, que es link 3.0 Tiny, un modelo 8B mezcla de expertos con únicamente una B activa. El primer cambio que debo de hacer pues es indicar la versión de llama.cpp correspondiente

[04:09] y todo lo demás debería de quedar exactamente igual, solo que aquí hay un problema y es que en este momento dado que vamos a usar Vulcan sería compatible las tres GPUs, pero qué sucede si no tenemos otras o no las queremos utilizar. Pues directamente agregando un parámetro como este de por aquí podemos hacer que llama.cpp directamente solo tenga visible uno de los dispositivos, en este caso el dispositivo 2, que es mi GPU integrada. De lo contrario, si no ponemos este parámetro para cada parte

[04:37] del modelo, modelo borrador, mm.prog, kv.cache y demás, tendríamos que estar indicando en cada uno de esos puntos qué dispositivo utilizar y de esta forma pues va a utilizar el único que siempre va a tener visible. Presiono control S para guardar, revisamos la GPU y está 100% vacía. Doy doble clic al punto bat y por aquí vemos cómo empieza a cargar 100% en la GPU integrada, la cual estaremos utilizando únicamente para esto. Recordemos que mínimo asignado ya tengo 16 GB de RAM, lo tengo indicado en

[05:11] la BIOS, lo que significa que esa ya ni siquiera me aparece como RAM normal, a pesar de que tenemos 64 GB. De igual forma, si quiero utilizar más, puedo utilizar más. Puedo utilizar hasta 40 GB en total porque tengo el mínimo de 16, pero luego de la RAM que queda utiliza la mitad, haciendo que la suma sean prácticamente 40 GB. En este caso utilizando aproximadamente 8 GB en total. Entro entonces en la interfaz de llama.cpp para aquí mismo hacer unas pruebas, no tanto de la inteligencia del

[05:41] modelo, sino de la velocidad del mismo dentro de nuestra GPU integrada, utilizando la dedicada pues para grabar pantalla y la otra, pues teniéndola de adorno, no la estamos utilizando. Vamos a enviar un prompt y vamos a ver qué tan rápido responde. Y por aquí estamos viendo que obtenemos más de 20 tokens por segundo con este modelito que es mezcla de expertos en una simple GPU integrada, teniendo únicamente RAM, la cual es cara, sí, la VRAM es aún más.

[06:08] Aquí tenemos mucha RAM y realmente bastante buena velocidad en mezcla de expertos, tal como decimos, dado que únicamente tiene una parte activa, pues da igual el tamaño total del modelo. Que por cierto, otra cosa, esta GPU no solo es que entre comillas nos sea gratis, la RAM sea más barata y poder tener más capacidad, sino que también genera muchísimo menos calor y consume muchísimo menos electricidad. Voy a aprovechar también para probar lo que estamos usando en vídeos pasados, que

[06:37] básicamente es Gemma 4E2B y Qwen 3.52B. Esto según para GPUs pequeñas, pero pues vamos a ver el día de hoy qué tal sin GPU real. Todo esto, tal como decimos, se puede en CPU. La velocidad teóricamente sería similar, esto debido a que la RAM, pues sigue siendo la misma. Sin embargo, los cálculos de una GPU, los cálculos matriciales, las precisiones que maneja y demás, hacen que dicha parte del proceso sea más rápida y de hecho lo notaremos más en el procesamiento de tokens. Ejecutamos

[07:06] entonces ahora este punto bat en el que tengo dos modelos disponibles y entonces simplemente por aquí voy a seleccionar en este caso Gemma 4E2B. Este modelo, tal como vemos, requiere menos memoria y esta es la velocidad que nos está generando, aún dentro de su cadena de razonamiento. Por aquí vamos observando qué tal funciona y claramente, de hecho, el MTP y demás, pues lo deberíamos de ajustar de acuerdo a qué tal funciona dentro de esta GPU y con esta RAM, pudiendo a lo mejor hasta conseguir más

[07:34] velocidad, pero de por sí está bastante bien. Ahora, es un modelo pequeño, sin embargo, es denso, tiene 2 billions de parámetros activos. Qwen 3.6 35B tiene 3 billions de parámetros activos. Obtendríamos una velocidad más o menos similar, pero con un modelo mucho más inteligente. Vamos a probar ahora con el Qwen 3.5 2B. Esto es lo que nos está consumiendo y esta es la velocidad que en este momento está generando dicho modelo. Tal como decimos, va a depender de cuantización, de modelos borrador y

[08:04] demás. Y de hecho, en este caso podemos usar distintas técnicas de modelo borrador para hacer speculative decoding, dado que tenemos mucha RAM, mucha VRAM, básicamente. Okay, pero ¿qué sucede con un modelo más grande que siga siendo denso, no mezcla de expertos?

[08:20] Pues vamos a archivos y versiones. Voy a descargar el modelo y el MM prog de visión y lo añadiré a mi archivo {punto} ini para ver qué tal nos funciona. Repito, de por sí de modelo borrador podemos hacer otros ajustes. Estos ajustes eran para mi GPU anterior.

[08:36] Todo esto del archivo {punto} ini y carga de múltiples modelos lo tenemos en los videos recientes. Hago la carpeta Qwen 3.5 9B y dentro vamos a meter ambos archivos. Si todo lo configuramos correctamente, esto debería estar listo para funcionar. Y vamos a ver ahora qué velocidad nos da este modelo Qwen 3.5 9B. Creo que soy medio tonto y descargué la versión que no tiene MTP. Vamos a probarlo entonces, habiendo quitado de los ajustes dicha configuración de MTP, porque este modelo no lo integra. Y pues

[09:07] vamos a ver qué tal funciona. En este caso estamos consumiendo 11.2 GB en total y nos está generando algo así como 7 tokens por segundo. Así es, pero por ejemplo, reitero, el Qwen 3.6 35B es más grande, más inteligente y más rápido. Es de solo 3 billions de parámetros activos. Al ser mezcla de expertos, este es 9B. Además de que de momento no lo cargamos con MTP porque descargué la versión que no lo integra. No solo podemos utilizar MTP, sino que podemos utilizar otro modelo más pequeño como

[09:40] borrador, podemos usar de Spark, de Flash o cualquier otra cosa. La ventaja es que tenemos mucha memoria. Así que principalmente modelos mezcla de expertos más grandes van a funcionar muy bien y modelos densos, aunque sean más grandes, van a funcionar muy bien si les ponemos modelo borrador. Y vemos en este caso que la ventaja de hacerlo de esta forma, pues es que el CPU está como si nada. Podemos estar haciendo otras cosas con la PC sin problema y pues todo debería de seguir funcionando bastante

[10:08] bien. Muy bien, estas son estas primeras pruebas con los modelos pequeñitos densos y modelos mezcla de expertos pequeñitos como el Link 3.0 Tiny. Sin embargo, ¿qué sucede con modelos más grandes? Más grandes densos y más grandes mezcla de expertos. En modelos densos con modelo borrador para acelerarlos y en mezcla de expertos también. Todo esto lo estaremos viendo en el siguiente video porque además no vamos a tener ahora 64 GB de RAM. Voy a poner otros dos módulos de 32 GB teniendo un total de 128, con lo cual

[10:41] vamos a tener disponibles más de 64 GB únicamente como GPU. Vamos a poder cargar modelos de 100 billions de parámetros, por ejemplo, 100% en GPU sin requerir de CPU, lo que nos da mayor velocidad, no solo de generación, sino también de procesamiento de prompt.

[11:01] Además de que lo estaremos comparando de CPU versus GPU integrada y que también pues vamos a poder combinar una GPU dedicada en conjunto con la integrada, en vez de GPU dedicada en conjunto con CPU. Así que simplemente, de momento, si el Qwen 3.5 9B genera siete tokens por segundo, un mezcla de experto con tres billions activos, aunque sea más grande el modelo, debería de generar más tokens por segundo. Y además, si le añadimos MTP, que aquí no lo hicimos, debería de funcionar aún mejor. Veamos qué tal

[11:34] funciona en modelos grandes, densos y mezcla de expertos. Si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.
