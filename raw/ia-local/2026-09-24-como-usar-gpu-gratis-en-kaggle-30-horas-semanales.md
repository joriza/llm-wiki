# Cómo Usar GPU Gratis en Kaggle: 30 Horas Semanales para Modelos de IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=XL64zph9Chs)
- **Canal**: CodeSimple
- **Publicado**: 2026-09-24
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:25

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola a todos, bienvenidos de nuevo. En el vídeo de hoy os voy a enseñar cómo podéis correr modelos grandes de IA online de forma gratuita, incluso si vuestro ordenador no tiene suficiente GPU o VRAM para correrlos en local. Os traigo la solución a este problema. En lugar de usar vuestra propia GPU o si no tenéis ninguna, vamos a usar un servidor de GPU gratuito de Kaggle. Vamos a crear un cuaderno de Kaggle conectado a la GPU, instalar Ollama, descargar el modelo de IA que queramos usar y después

[00:32] usar un túnel de Cloudflare para hacer que ese modelo sea accesible desde internet. Así que, sin perder más tiempo, seguid mis pasos con atención y si tenéis cualquier duda, simplemente dejadla en los comentarios. Vamos a ello. Primero abrimos Kaggle, como veis aquí. No os preocupéis, os dejo el enlace en la descripción del vídeo, desde ahí podéis entrar directamente en Kaggle.

[00:55] Para poder usar la VRAM o la GPU, tenéis que ir a ajustes y ahí tenéis que verificar vuestra identidad. Tenéis que verificar vuestro número de teléfono, simplemente le dais y lo dejáis verificado. Después vais a la sección de inicio y ahí vamos a crear un cuaderno nuevo. Aquí lo tenemos. Ahora vamos a entrar en ajustes, hacemos clic en aceleración y aquí seleccionamos GPU T4 por 2 y la activamos. Lo dejamos tal cual y ahora vamos a crear una celda de código nueva. Aquí escribimos el comando

[01:25] que os voy a dejar en la descripción del vídeo y simplemente lo ejecutáis. Una vez ejecutado el comando, ya está todo listo y ahora podemos volver a hacer clic en código y vamos a instalar Ollama. Para eso, escribo este comando aquí y le doy a ejecutar. Como veis, está instalando Ollama y ahora nos aparece "Instalación completada. Ejecuta Ollama desde la línea de comandos." Así que volvemos a hacer clic en código y escribimos esto otro aquí. Le damos a ejecutar y vemos que Ollama ya se ha

[01:56] iniciado. Ahora que Ollama está en marcha, necesitamos un modelo de IA. Para eso podemos ir a Hugging Face. Si ya conocéis Hugging Face, genial. Y si no, simplemente entráis en esa web, en la sección de Hugging Face, hacéis clic en modelos, dentro de modelos, marcáis generación de texto y hacéis clic en Ollama. Ahí podéis seleccionar más descargados y elegir el modelo que queráis usar. Si queréis algo más directo, podéis filtrar y buscar y ahí encontraréis también los modelos sin

[02:26] censura. Si hacéis clic en el primero, le dais a usar el modelo y seleccionáis Ollama. Ahí os aparece el enlace. Podéis elegir el modelo que prefiráis, el mejor suele ser la versión Q4K Zorma M. Es bastante rápida. Lo copiamos, volvemos a Kaggle, hacemos clic en código y lo pegamos aquí. Vemos que el programa se está ejecutando y ahora nos aparece que ha ido bien, así que podemos cancelar esa ejecución porque no vamos a usar el modelo desde esta misma ventana.

[02:57] Vamos a correr el modelo de IA desde nuestro propio ordenador, así que para eso no hace falta mantener completa esta sesión. Volvemos a hacer clic en código y pegamos lo siguiente y lo ejecutamos. Básicamente, vamos a correrlo con Cloudflare. Como veis, ya está hecho.

[03:15] Ahora volvemos a hacer clic en código y escribimos esto otro. Lo ejecutamos de nuevo y así obtenemos la información que necesitamos. Ya está todo configurado y funcionando, así que ahora podemos ir a nuestro propio ordenador. Para eso, abro la terminal, aseguraos de ejecutarla como administrador. Ahí escribimos el nombre del modelo, en este caso Hermes, y le damos a intro. Desde ahí, tenemos que buscar el endpoint personalizado. Si todavía no tenéis instalado el agente Hermes en vuestro sistema operativo

[03:45] Windows, tengo un vídeo dedicado a eso, id a verlo. Buscamos el campo de endpoint personalizado. Ahí es donde introducimos la URL. Escribimos ahí el puerto 42, vamos a Kagel y copiamos esa dirección. Aseguraos de que Ollama sigue corriendo. Copiad esa dirección, la pegáis aquí y aseguraos de añadir al final /v1 y le dais a intro. Ahora nos pide una clave de API, simplemente escribimos Ollama y le damos a intro.

[04:14] Eso es todo. Ahora pulsamos uno y veréis que ha detectado el modelo de IA. Nos pregunta si queremos usar este modelo Q4 KMSM y efectivamente nos muestra el modelo exacto que necesitábamos usar. Aquí lo veis. El mismo modelo Q4 QE Dios M, vale. Así que confirmamos y le damos a intro y dejamos lo demás en blanco. No lo necesitamos. Ahora escribimos Hermes y le damos a intro. Y ya tenemos Hermes abierto correctamente, con el modelo de IA funcionando aquí. Ahora simplemente escribimos hola y le damos a intro.

[04:50] Y como veis, nos responde preguntando en qué puede ayudarnos. Si le preguntamos qué modelo está usando, nos responde que está corriendo con tal modelo y nos da toda una presentación de sí mismo. Así que sí, este es el método que podéis usar para tener 32 GB de RAM en vuestra máquina, pero a través de un sistema en la nube. Y ya no tenéis que preocuparos más por vuestra tarjeta gráfica, porque con este método podéis solucionar el problema sin más. Muchísimas gracias por ver este vídeo. No os olvidéis de dejar

[05:20] vuestro like y quedaros en nuestro canal. Si tenéis alguna duda, dejadla en los comentarios.
