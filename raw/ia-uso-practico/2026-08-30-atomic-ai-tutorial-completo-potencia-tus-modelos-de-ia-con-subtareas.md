# Atomic AI Tutorial Completo 🚀 Potencia tus Modelos de IA con Subtareas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=iCokaxKK8_I)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-30
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:03

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya estuvimos haciendo un montón de cosas con estos modelos 2B a 4 bits ejecutados en llama CPP desde funciones simples dentro de un chat hasta cosas más complejas como desarrollo dentro de Open Code. En este momento no solo es que hemos desarrollado ya dentro de Open Code con estos modelos, sino que también hemos instalado MSPs con el objetivo de potenciar dichos modelos. Sin embargo, hemos visto que a pesar de todo lo que hemos ido realizando aún tienen ciertos problemas de inteligencia, de habilidad.

[00:34] Los modelos pequeñitos donde más tienen problemas, de hecho, no es en esto, es en conocimiento, dado que son archivos tan pequeños que es imposible que sepan de todo, pero lo que mantienen muy bien son las habilidades teniendo en cuenta su tamaño. Pero en esta ocasión, dado que estamos con modelos 2B y para colmo en 4 bits, lo cierto es que aún en habilidades están bastante limitados. En modelos 4B o superiores esto ya no es realmente un problema, pero en modelos 2B lo sigue siendo. De hecho, por

[01:03] ejemplo, con 3.5 4B supera a Llama 3 mini high en todo, siendo que en su momento era el modelo frontera más inteligente y no era de pesos abiertos, pero tal como decimos a los 2B hasta esto ya les empieza a costar. Sin embargo, la ventaja que tienen estos modelos es el bajo consumo de memoria a pesar de estarlos cargando con MTP visión y su ventana de contexto completa. Para colmo, esto siendo aún más reducible, por ejemplo, si la KV cache la pasamos a Q8, mantenemos prácticamente el 99% de calidad, pero

[01:37] consumiendo la mitad la ventana de contexto. En resumidas cuentas, que son modelos pequeñitos que funcionan bien, pero que quizás les falta algo de habilidad. Sin embargo, dado que estamos viendo entonces que consumen poca memoria, lo que vamos a hacer para intentar suplir que son modelos medianamente malos debido a que son pequeñitos es el intercambiar en vez de memoria, procesamiento. Con procesamiento simplemente, pues lo que vamos a tener es un montón de tokens de razonamiento, los cuales nos van a poder

[02:09] permitir potenciar al máximo dichos modelos de lenguaje, dado que los tokens en este caso serían gratis y además a muy buenas velocidades, pues de esta forma supliríamos la falta de inteligencia que pueden tener, haciendo de esta forma que funcionaran como modelos poquito más grandes. Sin embargo, tener en cuenta que en modelos más grandes con esta estrategia van a llegar aún más lejos. Vamos a entrar a github.com/nichonauta/atomicai y por aquí tenemos este repositorio en el que funciona como intermediario entre

[02:42] cliente y proveedor del modelo de lenguaje, esto estando en medio, haciendo que cada solicitud que hacemos desde el cliente se vuelvan múltiples solicitudes hacia el proveedor, gastando muchos más tokens, descomponiendo las las tareas, las instrucciones hasta subtareas atómicas no divisibles, después realizarlas en orden y después dar la respuesta final. Esto funciona en cualquier tipo de uso que hagamos de los modelos de lenguaje y con cualquier proveedor y se puede usar en conjunto

[03:11] con skills, MSPs u otras cosas que también potencien de esta forma. Sin embargo, esto va a ser transparente porque no es un MSP, no es un skill y no es un prompt, sino que es un proveedor. Nosotros en vez de hacer la solicitud directamente al proveedor real, la haremos a este proxy y este desgranará, iterará y nos dará la respuesta final.

[03:34] Para utilizarlo, de hecho, podemos tener instalado Git para clonar fácilmente el repositorio, de lo contrario, pues simplemente descargamos el zip. Una vez con el archivo descargado, lo voy a descomprimir, por ejemplo, en mi carpeta documentos. Extraer a atomicai main.

[03:50] Aquí simplemente voy a quitar lo de main del nombre, lo voy a dejar como Atomic AI y una vez dentro esto es lo que tenemos. Si revisamos un poquito la documentación, por aquí nos indica que luego de tenerlo descargado y descomprimido, dentro de esa carpeta tenemos que ejecutar los siguientes comandos. Básicamente son tres, porque uno o es para Windows o Linux o Mac.

[04:11] Entonces, en esta carpeta simplemente abro un CMD y con Python instalado procedemos a escribir este comando, el cual nos va a permitir crear un entorno virtual en el que todas las variables de entorno, todas las dependencias se instalen en esta misma carpeta, no de forma global en nuestro Python. Luego de ello, el siguiente comando, en mi caso para Windows, lo que nos va a permitir activar dicho entorno virtual. Después de ello, con el siguiente comando vamos a instalar las dependencias, lo mismo,

[04:42] en la misma carpeta, no de forma global en nuestro Python. Y después de ello, lo que vamos a hacer es preparar nuestro archivo {punto} env, el cual va a ser el que permita indicar desde qué puerto va a funcionar este intermediario y hacia qué servicio real se va a conectar.

[04:58] Entonces, por aquí tenemos el {punto} env.example, lo copio y pego y le voy a cambiar de nombre a que únicamente sea {punto} env. Con esto listo, lo abro y en la misma documentación se indica para qué sirve cada variable de entorno. De todos modos, es bastante entendible, pero básicamente en esta ocasión lo que vamos a estar cambiando es lo siguiente.

[05:18] La URL de hacia dónde nos vamos a conectar, pues en esta ocasión va a ser a nuestros modelos de llama.cpp, así que pongo aquí la URL de llama.cpp. En cuanto a API key, pues en este caso dentro de llama.cpp no tengo ninguna, pero simplemente voy a escribir llama.cpp. Y el nombre del modelo, por ejemplo, vamos a indicar gemma-4-e-2b.

[05:38] Con esto listo, podemos guardar el archivo y ya ejecutar nuestro intermediario. Sin embargo, en esta ocasión está con hasta tres niveles de profundidad como máximo para la descomposición de las tareas, con lo cual teóricamente podemos potenciar el modelo de manera, entre comillas, infinita, a partir de que desgrane al máximo las tareas. Sin embargo, va a tardar un montón. En esta ocasión le vamos a poner el valor de tres, pero solo para entender cómo funciona. Sin embargo, comúnmente vamos a querer el

[06:06] valor de uno o de dos. Ya tres o más puede resultar en demasiados tokens, demasiado tiempo, aunque eso sí, probablemente una mejor respuesta. Simplemente recordemos aquí que este es el máximo nivel de descomposición, la máxima profundidad. No significa que en todos los casos va a llegar hasta ese nivel, porque el modelo de lenguaje puede determinar que alguna tarea o subtarea ya es una tarea atómica, no divisible, y por más que aquí lo tengamos en 999, pues si ya no es divisible, ya no es divisible. Pero

[06:36] bueno, con estos ajustes lo tendremos listo para funcionar. Aquí tenemos también cuál va a ser dónde se va a lanzar dicho proxy, hacia dónde nos tenemos que conectar en vez de hacia el servidor real. Presiono Ctrl S para guardar y lo siguiente que tendríamos que hacer, pues es dar doble clic en run.bat. Doy doble clic y con esto ya tenemos el intermediario funcionando.

[06:55] Así que en este momento podemos hacer una solicitud hacia llama.cpp real, nuestros modelos de lenguaje reales o directamente a partir del intermediario, que después va a dividir en múltiples solicitudes y demás hacia el proveedor real. Si nosotros por aquí, en este momento, hacemos una solicitud directamente a llama.cpp, pues al momento de que yo escriba cualquier cosa, por aquí vemos que en llama.cpp suceden cosas, no en nuestro proxy, porque no lo estamos haciendo desde él.

[07:24] Entonces, lo siguiente que haríamos sería dar en Gestionar modelos, Conectar proveedor personalizado, esto en cualquier entorno, en cualquier cosa que vayamos a utilizar, no únicamente Open Code. Voy a poner Atomic AI y vamos a poner la URL de hacia dónde nos vamos a conectar, solo que en este caso al final debe de llevar slash V1. De API key voy a poner mejor llama CPP, que es lo mismo que habíamos puesto en dicho proxy y después vamos a indicar cuál modelo es el que vamos a utilizar, en este caso

[07:54] Gema 4 E2B. Con esto listo le damos en enviar y si ahora intentamos hacer una solicitud nuevamente debería de pasar por nuestro proxy y luego de ahí a llama CPP, sin embargo en este caso no sucedió porque aquí no seleccioné el otro proveedor, así que lo selecciono y ahora sí damos en reenviar. Aquí vemos cómo por aquí aparece la solicitud, se empiezan a generar tokens y vemos que se intenta dividir en tareas hasta llegar a las tareas atómicas, realizar cada una y al final responder. Claramente para esta

[08:25] solicitud no tiene demasiado sentido, pero ya comenzamos a ver cómo funciona y es que aquí vimos una sola solicitud porque Open Code realmente realizó una sola, pero pues en llama CPP, en llama server surgieron varias cosas. Intentar dividir, en este caso una sola vez porque la respuesta no daba para más, realizar cada tarea en orden, en este caso una sola y al final responder, con lo cual fueron tres solicitudes a pesar de simplemente decir hola. Por aquí pues ya podemos empezar a probar más cosas

[08:53] más a fondo, sin embargo en este momento no tenemos totalmente bien configurado, no es tenemos por ejemplo la entrada de imágenes, no tenemos indicado el límite de contexto comparado con cómo ya lo teníamos preparado para llama CPP.

[09:08] Entonces lo que vamos a hacer es cerrar Open Code, de hecho con mismo Open Code podíamos corregir esto, pero vamos a hacerlo en esta ocasión manualmente. Vamos a Windows C, usuarios, usuario, básicamente tenemos que ir hasta nuestro usuario y en punto config Open Code, aquí tenemos Open Code.json C. Damos doble clic y por aquí entonces vamos a tener todos los ajustes que hemos hecho en vídeos anteriores, entre ellos los proveedores y vemos que tenemos el proveedor de llamas cpp y debajo el

[09:39] proveedor de Atomic AI, en el cual debería de haber exactamente lo mismo que en llamas cpp, simplemente cambiando pues el puerto al que se va a conectar, así que de hecho, hasta lo podemos reemplazar, podemos eliminar todo esto y lo que voy a hacer pues es copiar y pegar el de llamas cpp, lo copié y pegué, pongo la coma correspondiente, Atomic AI, aquí también ponemos Atomic AI y simplemente aquí en el puerto, en esta ocasión es el 8000. Aquí parece que se me olvidó cerrar una llave, la pongo,

[10:08] presiono control S y entonces ya tendríamos todo listo para conectarnos tal cual a llamas cpp o a Atomic AI, a nuestro intermediario, exactamente con los mismos modelos, los mismos ajustes, etcétera, etcétera. Abrimos Open Code y pues entonces al elegir modelo vemos Atomic AI y por aquí vemos que ya tenemos texto e imagen como entrada en ambos casos y no solo eso, sino el límite de contexto, con lo cual ya está correctamente funcional para todo lo que queramos. Voy a iniciar una nueva

[10:38] conversación y simplemente vamos a revisar que esté funcionando correctamente la visión de imágenes, que realmente lo hayamos configurado bien. Esto a partir pues de Atomic AI, recordemos. Le voy a decir, describe la imagen en idioma español de forma bien detallada y específica, presiono intro y vemos por aquí cómo suceden muchas cosas en llamas cpp, decidió que la tarea es atómica y pues sí, lo es. Esto es para dividir tareas, pero cuando no es divisible pues de poco sirve, realiza la

[11:07] primera tarea y después nos da la respuesta final. Y aquí nos dice, es una representación estilizada y vibrante de un traje espacial futurista con un diseño de neón, bla bla bla. Okay, aquí a tener en cuenta que lo que nosotros vemos como cadena de razonamiento no es la cadena de razonamiento real.

[11:22] Realmente para cada solicitud individual de por sí hay cadena de razonamiento, la que tiene activa realmente el modelo. Así que estamos teniendo una cadena de razonamiento de la cadena de razonamiento, por así decirlo, gastando muchos tokens, como decimos, pero en estos modelos no habría mucho problema.

[11:38] Okay, todo está listo para funcionar. Voy a hacer una nueva conversación y vamos a probar con otra cosa. Ahora sí, correctamente preparado para dividir en subtareas. No tan rápido, velocista. Esto lo vamos a estar viendo en el siguiente video. Llevamos más de 10 minutos configurando, además de que me es un pretexto perfecto, dado que tuve que dejar de grabar. Si quieres seguir viendo ese tipo de videos, simplemente da like y suscríbete.
