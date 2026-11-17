# Hice mi MoE 🚀 Cómo Crear un Mezcla de Expertos LLM

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=aS8eLlm-vTM)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-25
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Ya habíamos hecho un vídeo acerca sobre tu Moe, el cual tiene su repositorio en GitHub y además fue lanzado en conjunto con su paper de investigación. Lo que esto nos promete es convertir cualquier modelo de lenguaje denso en un mezcla de expertos a partir de podar el modelo de forma estructural y dinámica. Esto comparado con la poda clásica que simplemente se intenta generar un modelo más pequeño prácticamente con la misma calidad. Es de esta forma que tenemos con 3.5 0.8 B, 2 B, 4 B, 9 B, 27 B. Sin

[00:35] embargo, lo que nos interesa en esta ocasión no es tanto el hacer un modelo más pequeño. Queremos mantener exactamente la misma inteligencia, el mismo tamaño del modelo, pero acelerando la velocidad simplemente pasándolo de un modelo denso a un mezcla de expertos.

[00:50] Esto, por cierto, no es nada fácil. Además de que tiene que ser compatible la arquitectura que vayamos a utilizar. En ese vídeo que nosotros ya habíamos hecho, mostré yo con unas diapositivas más o menos cómo es que funciona todo esto, desde la información del paper como todo el repositorio de GitHub y estábamos viendo que parecía algo interesante. Y yo prometí que nosotros intentaríamos hacer nuestro modelo mezcla de expertos y mencioné también que me gustaría, por ejemplo, del Qwen

[01:17] 3.5 4 B porque me parece un modelo bastante bastante bueno y que además si lográbamos ejecutar a más velocidad, pues sería aún mejor. Entonces, precisamente es lo que he estado intentando. Sin embargo, me he topado con varios problemas iniciales. El primero de ellos, pues es que no sé usar esto o no sabía. Y el segundo, que la arquitectura de Qwen 3.5 no es 100% una arquitectura clásica Transformer como en modelos más antiguos que esto sí es compatible. Sin embargo, investigando a

[01:48] fondo en conjunto con inteligencia artificial cómo es que funciona todo este código y el paper en conjunto con cómo funciona la arquitectura de Qwen 3.5, he logrado hacer no únicamente el entrenamiento y la conversión a modelo MoE, sino también ya directamente hasta los archivos en formato GGUF, listos para ser ejecutados. Esta es una prueba inicial, pero vamos a ver exactamente qué fue lo que hice. Y pues bueno, lo primero que estuve haciendo después de toda la investigación fue preparar todo

[02:18] un plan de exactamente todo lo que quería hacer. Después con ello y con la investigación y demás, generé un resumen en conjunto con la IA sobre todo lo que queríamos llevar a cabo. Y después, pues comenzamos a probar. Probé con el modelo 0.8B para hacer algunas pruebas más rápido, probé un poquito con el 2B y después me pasé directamente al 4B a ir haciendo varias versiones hasta lograr ir corrigiendo errores en el código con el objetivo de, pues, tener el modelo final. Tenemos entonces por aquí el

[02:47] modelo Qwen 3.5 4B convertido a mezcla de expertos. Inicialmente intenté que tuviera 0.9 billions de parámetros activos. Bueno, de hecho, inicialmente 0.6, pero después probé con 0.9 y luego de muchos intentos, pues, estos fueron los archivos finales. Esto, por cierto, de momento sin visión y de momento también sin MTP, pero no porque el MTP lo necesitemos aquí, sino porque bastaría con tenerlo en un archivo aparte, tal como vimos en el video de Agents A1, en el que extrajimos el MTP

[03:17] del modelo original para utilizarlo en cualquier otro modelo. Entonces, por aquí dentro de mi llama.cpp, ya hice la carpeta de Qwen 3.5 4B MoE y metí el archivo, por ejemplo, a 4 bits. Y pues ahora voy a preparar todo el entorno, todo el punto.bat para ejecutar dicho modelo. En este caso, inicialmente únicamente el modelo por sí solo.

[03:38] Tenemos entonces el parámetro listo para ser ejecutado, tenemos la GPU vacía y procedemos a intentar ejecutar. Y por aquí estamos viendo que en esta primera conversión a formato GGUF, pues si bien empezó a cargar sin demasiado problema, luego hubo un fallo. ¿Por qué es que hay este fallo? Bueno, pues porque la cuantización típica que mismo llama CPP permite hacer, fue con lo que hice la cuantización en formato GGUF, no entiende y no es compatible al 100%, digamos, con esta nueva arquitectura, porque estamos

[04:09] pasando de un modelo denso que llama CPP ya conocía a un mezcla de expertos. Ahora vamos a probar con el modelo original, sin cuantizar. Sin embargo, se me olvidó mostrar un poquito cómo es que todo esto se fue llevando a cabo. Y pues a partir de los archivos que vimos de plan, estuve investigando en conjunto con Dipsy y QV4 Flash acerca sobre las distintas arquitecturas de los modelos que acepta de por sí Tumoy y el que necesitábamos para Qwen 3.5. Así fui avanzando para distintas cosas,

[04:40] intentando con distintos modelos y demás, viendo cuál era el piso mínimo en cuanto a parámetros activos posibles, porque de todos modos, pues hay unas partes que no se pueden dividir, como el sistema de embedding. Por ejemplo, el modelo 4B mínimo puede tener algo así como 0.6 billions activos. Y pues fui trabajando en conjunto con el modelo hasta lograr crear el modelo. Dado que en este momento no tengo mucha GPU Nvidia, lo primero que tuve que hacer fue todo el modelo primero preprocesarlo

[05:09] en archivos pequeñitos para el momento de intentar hacer el entrenamiento a mezcla de expertos, pues que no se requiera estar procesando todo el modelo completo en memoria, porque no me cabía. Así que dividí esa parte del proceso. Se comenzaron a generar entonces en distintas pruebas el modelo ya convertido. Y después de todo ello, pues logré tener el modelo ya en formato Safe Tensors, este sí está funcional, con todos sus archivos típicos, pero siendo mezcla de expertos, no modelo denso,

[05:37] como originalmente era. Luego de eso, pues lo que estuve intentando es básicamente lo que estamos viendo en este momento, que es a partir del modelo original tratar de transformarlo a archivos GGUF. Recordemos algo interesante aquí, y es que no es únicamente ejecutar, ¿por qué? Porque dicho proyecto no es compatible con esta arquitectura, es una arquitectura más compleja, así que tuve que estar haciendo un montón de cosas, y por lo menos para esta primera prueba, pues ya logramos tener el modelo final. Ahora lo

[06:04] que nos queda es que el GGUF funcione y que realmente dicho modelo, transformado a mezcla de expertos, siga manteniendo la calidad. Porque esto no aumenta el tamaño del modelo. Trata de dividirlo en expertos, manteniendo el mismo tamaño y la misma inteligencia, cosa que es un poquito más difícil. Sabemos que comúnmente los mezcla de expertos tienen menos inteligencia, pero mayor velocidad. De hecho, el Qwen 3.6 35B, a pesar de ser más grande que el Qwen 3.6 27B, es menos listo, porque uno es mezcla de expertos

[06:35] y el otro es denso. Vamos a probar entonces ahora a ejecutar el modelo en F16. Aquí empieza a cargarse, empieza a intentar pasarse a GPU, y lo tenemos 100 por 100 listo y cargado en memoria, nuestro modelo Qwen 3.5 4B mezcla de expertos en F16. Cargado en mi GPU Nvidia, en la cual, por cierto, dado que está el modelo de 16 bits y con buena ventana de contexto, ni siquiera cabe bien, está prácticamente al límite. Voy a cerrarlo, disminuimos el valor de la ventana de contexto, y vuelvo a intentar

[07:08] la ejecución. Vamos a ver ahora cuánto consume, y está consumiendo 9.1 GB de VRAM de mi GPU RTX 3060. Vamos entonces a probarlo aquí en llama.cpp, presiono intro, y alto ahí, ¿por qué? Porque esta es una introducción de cómo es que todo esto va a funcionar. Sin embargo, hasta el siguiente video en el que ya tenga las versiones cuantizadas y todo bien preparado, lo probaremos y lo lanzaré.

[07:36] Esto dentro de nuestro repositorio dentro de Hugging Face. Para el que quiera tener un Qwen 3.5 4B, pero mezcla de expertos. Y además, si a esto le añadimos directamente el MTP, pues va a volar. De por sí este modelo ya era rápido sin MTP, con MTP aún más, y siendo mezcla de expertos aún mejor. Si quieres ver estos videos, simplemente da like y suscríbete.
