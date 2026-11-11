# Reto Modelos 2B 🚀 Cómo Sacar el MÁXIMO Provecho con IA Local

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=C_nBDT9cIGM)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-19
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:18

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esto de que cada día probamos nuevos modelos de lenguaje, si bien está interesante, lo cierto es que solo es una pérdida de tiempo. Un modelo de lenguaje es un asistente, digamos que puede ser nuestra secretaria, puede ser nuestro ayudante de programación. Creo yo que en ninguna compañía a diario cambiamos de secretaria, a diario cambiamos de asistente, porque no solo depende lo hábil que sea dicha persona, sino lo bien que podemos comunicarnos con ella, lo bien que nos entendemos y

[00:34] podemos trabajar en equipo. Yo veo esto algo similar con los modelos de lenguaje. Si lo que realmente queremos hacer es estar trabajando, casi que nos conviene más seguir con el mismo modelo de lenguaje, en vez de a diario estar probando nuevos, que no solo es que estamos perdiendo tiempo al descargar y probar, sino también al momento de trabajar, no tenemos 100% un entorno ya listo para estar haciendo lo que tenemos que hacer. Es por ello que por lo menos por unas semanas el enfoque del

[01:06] contenido del canal va a cambiar. Ahora no va a ser estar a diario probando nuevos modelos de lenguaje, sino estar con los mismos, tratando de trabajar con ellos y sacarles el máximo provecho. Esto, por cierto, lo voy a estar haciendo con dos modelos de lenguaje, dos colecciones de modelos de lenguaje, los Gemma 4 y los Qwen 3.x.5.6 .8, pero no solo es que únicamente va a ser con estos, sino que además va a ser únicamente con estos tamaños, 2 billions, Gemma 4 e2b, Qwen 3.5 2b. No

[01:45] significa que ya no va a haber nuevo contenido en el canal, significa que todo va a ser referente a cómo utilizar, cómo crear entornos en los que podamos trabajar todo tipo de cosas con estos modelos de lenguaje, entendiendo sus limitantes y tratando de suplirlas con todo lo que hay, desde rag, mcps, skills, etcétera, etcétera. En conjunto, claramente con Atomic AI. Los modelos de lenguaje pequeños, el problema que tienen es que tareas más largas es donde les cuesta. Tareas pequeñitas las pueden

[02:18] hacer sin problemas. Pues con Atomic AI vamos a descomponer las tareas a tareas atómicas, a tareas no divisibles, para potenciar todo tipo de usos, no solo el desarrollo agéntico de estos modelos de lenguaje pequeñitos. Para el Gema 4e2b, si nos vamos a cuantizaciones, el que voy a estar utilizando es el de la gente de un slot, pero a partir del QAT, que por cierto aquí ni me aparece porque entramos al modelo normal, pero bueno, básicamente es un slot Gema 4e2b y QAT. Este modelo está preparado por la

[02:53] misma gente de Google para ser cuan- -tizado a 4 bits y mantener una calidad equivalente al modelo original, pero pesando una cuarta parte. Esto en conjunto con las cuantizaciones dinámicas de un slot, en este caso UDQ4KXL, vamos a tener un modelo pequeñito, muy rápido y funcional. A tener en cuenta que en la serie de modelos de Gema, los nombres que empiezan con E, realmente los archivos son más grandes que lo que verdaderamente se ocupa en memoria, porque estos son modelos que tienen como

[03:25] entrada cualquier cosa. Tienen texto, imagen, audio, vídeo, pero realmente en ejecución, pues ocupa lo mismo que un 2b tradicional. Y de hecho, dado que la KV caché, la ventana de contexto de estos modelos son muy optimizadas, de hecho, aunque el modelo ocupe más tamaño que en la competencia, al momento de ejecución vamos a requerir menos memoria.

[03:49] Entonces, yo voy a estar utilizando este Gema 4e2b y QAT UDQ4KX XL con todo y MM Pro BF16 para la visión y con MTP pero en Q4 que es el que más me acelera la generación de tokens. Esto no nos hace perder calidad. Y luego en Qwen 3.52B nos vamos a cuantizaciones y vamos a descargar el Qwen 3.52B MTP GGUF. De aquí yéndonos a archivos y versiones, también el que vamos a utilizar es el UDQ4KX XL que pesa 1.38 GB. Aquí vemos que el archivo pesa menos comparado con los modelos E de Gema. Sin embargo, a

[04:28] pesar de que el modelo ocupe menos, una vez cargado en VRAM puede llegar a consumir hasta más memoria, depende de cuánta ventana de contexto estemos utilizando porque su KV caché consume más que en los modelos Gema. No solo descargaríamos este archivo, sino el MM Pro BF16 para la visión. Aquí no hace falta descargar un archivo por separado de MTP porque viene incluido en el mismo modelo. No hace falta descargar un archivo adicional. Yo ya los tengo descargados por aquí en una carpeta

[04:56] llamada GGUF y dentro de Gema 4 E2B pues tengo los tres archivos que mencionamos y dentro de Qwen 3.52B pues tengo los dos archivos que mencionamos. Además de esto, también tengo llama.cpp, en este caso B 10045.3 para Windows CUDA 13.3. Ya tenemos muchos videos sobre cómo descargar y utilizar llama.cpp. Aquí dentro pues descomprimí dicha versión de llama.cpp y las librerías de CUDA pues para que pueda funcionar. De hecho, aquí mismo en la carpeta ZIP tengo ambos archivos que

[05:31] son los que yo descargué. Además de ello, tengo los siguientes archivos: dos.bat, uno para ejecutar Gema 4 E2B y otro para ejecutar Qwen 3.52B. [carraspeo] Si abrimos en Visual Studio Code dichos archivos, por aquí podemos ver su contenido. Así es como lo configuré para Gema 4E2B y así es como lo configuré para Qwen 3.5 2B. Puedes tomar un recorte, una captura y pedirle a un modelo de lenguaje que te lo transcriba si quieres más o menos copiar mis ajustes.

[06:02] Sin embargo, ten en cuenta que son mis ajustes bajo mis necesidades, bajo mis preferencias, con lo cual depende del tipo de hardware hasta quizás en el MTP te conviene un valor más alto o más bajo. En ambos modelos lo tengo cargado con 131.000 tokens de ventana de contexto en el Gema porque este modelo pequeñito es lo máximo que tiene y en el Qwen, pues simplemente para estar a igualdad de condiciones, aunque en este se puede lo doble. Razonamiento activo en ambos casos y los parámetros de

[06:28] sampleo adecuados para cada uno de estos modelos. En Gema 4, siendo estos tres parámetros de sampleo, y en Qwen 3.5 2B, los parámetros de sampleo recomendados para uso agéntico de desarrollo con razonamiento activo. Sin embargo, con dos valores de por aquí cambiados, simplemente para evitar que entre en bucles. Sin embargo, si a lo largo de estos días en cada vídeo diario, mientras vamos haciendo cosas, vemos que entra en bucle, vamos a seguir nuestros mismos tutoriales de cómo hacer que deje

[07:00] de entrar en bucle. Pero mientras tanto, estos son los ajustes. Para Qwen también tenemos un mínimo de tokens para revisar una imagen que son 1024, es decir, una imagen mínimo se va a transformar en 1024 tokens. Esto es una recomendación de la gente de Qwen para que el modelo pueda revisar mejor la imagen. Y después, en ambos casos, tenemos presupuesto de razonamiento de 8192.

[07:25] Esto simplemente es por si el modelo entra en un bucle dentro de su cadena de razonamiento, pues que de igual forma, como máximo, consuma 8192 tokens de razonamiento. Por la razón que sea, si consume más de eso, se va a cortar exactamente en 8192 y después de ello va a comenzar a dar la respuesta final. Con estos valores en mi RTX 3060 de 12 GB en Windows con CUDA 13, estando en un PCI Express no muy rápido, la verdad, lo que nos va a consumir cada modelo es lo siguiente.

[07:57] Abro Qwen 3.5 2B y me consume 4.4 GB. Si queremos que consuma menos, podemos cuantizar la KV caché en Q8. Vamos a mantener el 99% de calidad, pero consumiendo la mitad de memoria de la KV caché. Esto es solo en el modelo, no en el modelo borrador. De lo contrario, más que consumir menos, consumiríamos más, dado que el cuantizar la KV caché requiere algunos MB adicionales, a pesar de que la KV caché se consume la mitad.

[08:27] Y en el modelo borrador, dado que consume tan poquito, pues sí terminamos consumiendo la mitad, pero además unos MB adicionales, con lo cual pierde algo de sentido. Eh, tendría sentido únicamente cuantizar la KV caché del modelo, no del borrador. Pero bueno, ahí nos consume 4.4 GB. Y vamos a ver, aquí mismo en la interfaz de llama.cpp, su interfaz web, con cadena de razonamiento máxima, la velocidad de tokens por segundo que en este momento estamos obteniendo. De momento no nos vamos a

[08:54] centrar en la calidad, en la inteligencia de los modelos, simplemente en el rendimiento de los mismos, en cuanto a cuánto consumen de memoria y la velocidad de generación de tokens por segundo. Estos modelos, al ser pequeños, no es solo que únicamente la generación de tokens por segundo debería de ser suficientemente rápida, sino que también la lectura o el procesamiento de los tokens, de los prompts. Así que en cosas como Open Code, Cloud Code o similares, comenzaríamos a ver la respuesta

[09:21] bastante rápido. Muy bien, aquí nos generó 136 tokens por segundo. Ahora vamos a ver qué tal Gemma 4 2B, con ajustes muy similares, hasta misma ventana de contexto. Sin embargo, al ser arquitecturas diferentes, pues en este caso vemos que consume algo menos de memoria y de hecho si queremos que consuma aún menos lo mismo podemos cuantizar la KV caché en Q8 manteniendo el 99% de calidad pero consumiendo la mitad la KV caché 3.6 GB de VRAM y si hacemos la misma consulta presionamos

[09:53] intro por aquí luego de 4500 tokens generando en promedio casi 173 tokens por segundo así que tenemos unos buenos modelos como base que si bien son pequeñitos siguen siendo bastante utilizables consumiendo poca memoria y generando tokens muy rápidamente los vamos a utilizar para redacción de contenido búsqueda de información en internet rag generación de código uso de herramientas como por ejemplo dentro de RMS agent y todo ese tipo de cosas tratando de en vez de intentar tener

[10:25] mayor calidad o inteligencia de los modelos cambiando de modelos en este caso cambiando de entorno preparándoles el entorno claramente si todo lo que vamos a estar haciendo en esos vídeos se hace de por sí con modelos más grandes pues los resultados deberían de ser aún mejores sin embargo el objetivo aquí es tratar de suplir sus carencias porque adivinemos algo cualquier modelo de lenguaje tiene carencias algunos más algunos menos pero en general las mismas estrategias que vamos a estar utilizando

[10:55] van a servir para todos y aquí vamos a estar trabajando con modelos de 2B y a 4 bits además no son modelos muy nuevos son modelos que ya tienen como 6 meses o algo así y eso en el mundo de la IA es un montón entonces si quieres estar viendo todo eso como 100% esto es lo único que voy a estar utilizando y los vídeos van a ser prueba de ello pues simplemente da like y suscríbete
