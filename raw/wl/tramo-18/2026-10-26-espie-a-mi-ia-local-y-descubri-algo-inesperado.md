# ESPIÉ a mi IA local… y descubrí algo INESPERADO

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WdOLEwGuEN8)
- **Canal**: Cognix
- **Publicado**: 2026-10-26
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 15:52

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] La semana pasada, un vídeo con casi 400.000 vistas te dijo que tu IA local no es tan privada como crees. Hablaba de modelos con puerta trasera, plantillas de chat envenenadas y 175.000 servidores de Ollama expuestos, todo en 26 minutos y nunca miró un solo paquete. Así que yo sí lo hice. Corrí una captura completa de paquetes en mi Mac mini de 16 gigas, instalé Ollama LM Studio, Jan y llama.cpp y a cada uno le pasé una contraseña falsa y un número de seguro social falso. Cuatro aplicaciones, media

[00:37] hora y tres gigas y medio de tráfico capturado, casi todo apps descargando cosas, como vas a ver. Una app bajó 170 megas antes de que yo tocara un solo botón. Otra escribió mi número de seguro social falso en un archivo de registro, palabra por palabra. Y después de cambiar una sola variable de entorno, otro dispositivo de mi Wi-Fi pudo correr modelos en mi cuenta de nube de Ollama y leer mi correo sin ninguna contraseña.

[01:04] En el vídeo de hoy vamos a descubrir qué manda realmente tu IA local a casa, dónde terminan tus prompts en el disco y si local significa lo que vos pensás. Abramos el repositorio. Primero, un poco de vocabulario, porque tres palabras se usan como si fueran lo mismo. Local quiere decir que el modelo corre en tu hardware. Sin conexión quiere decir que nada sale de tu máquina. Privado quiere decir que nadie más puede ver lo que escribiste. Podés ser local sin estar desconectado y estar desconectado sin

[01:34] ser privado. Y esa brecha es toda la trama de este vídeo. La promesa de la IA local siempre fue simple. Tus prompts no terminan en el entrenamiento de ningún laboratorio. Nadie los lee y nadie te cambia el modelo por debajo el mes que viene. Las aplicaciones también se apoyan en eso. La política de privacidad de LM Studio dice que la app no tiene telemetría. Ollama dice que no recolecta tus prompts ni tus respuestas locales.

[02:00] Yo las llamo promesas de folleto y la única forma de comprobar un folleto es mirar qué hace realmente la aplicación. Pero espera, quizás te preguntes cómo se ve lo que manda una app. Mac OS tiene una interfaz de captura especial llamada Pica Tap. Corres TCPdump sobre ella y cada paquete queda marcado con el nombre del proceso que lo envió. Hasta las consultas de DNS quedan etiquetadas con la app que las pidió. Así que nada se esconde detrás del resolvedor del sistema. Además, corrí un registrador

[02:31] que anotaba cada conexión de red que abría cada aplicación dos veces por segundo. Hay un límite grande. Casi todo este tráfico está cifrado. Entonces, puedo leer el sobre de todo lo que mi Mac manda. A quién va dirigido, cuándo salió y cuánto pesa. No puedo abrir la carta.

[02:49] Cada vez que te cuente qué hay adentro, eso sale de leer el código fuente de la app y te lo voy a aclarar. Para seguir mis prompts usé canarios. Son cadenas inventadas, como una contraseña falsa y un número de seguro social falso, que no existen en ningún otro lugar del planeta.

[03:06] Si una aparece en un archivo o en un paquete, sé exactamente de dónde vino. Pero la gran pregunta es, ¿tu chat sale realmente de la máquina? Mandé prompts con canarios a Qwen 3.5 de 4 mil millones en Ollama, a Qwen 3.5 de 8 mil millones en LM Studio y al mismo modelo en llama.cpp.

[03:26] Durante cada chat local, la cantidad de paquetes que salieron de mi Mac fue cero. Ni consultas de DNS, ni señales de actividad, nada. O sea, que la promesa central se cumple. El modelo en sí es privado. Y para ser justos, el otro video también lo decía cerca del final.

[03:43] El problema es todo lo que la aplicación hace alrededor del chat. Lo siguiente que miré fue qué pasa cuando simplemente abrís estas apps y te vas. El servidor de Ollama contactó a ollama.com apenas arrancó. Según su código fuente, está buscando la lista de modelos en la nube y un lote de recomendaciones de modelos que refresca cada 4 horas. Cada pedido va firmado con una clave que Ollama generó en silencio en tu carpeta personal. La aplicación de escritorio de Ollama va más lejos. Unos 10 segundos

[04:13] después de abrirse, se comunicó con ollama.com y su propio registro dice que arranca un verificador de actualizaciones con un intervalo de 1 hora. El código fuente dice que esa verificación va firmada con la misma clave. Y en una Mac, además, manda un identificador del dispositivo.

[04:30] Desactivar las actualizaciones automáticas solo frena la descarga. La verificación siempre corre. Y hay un reporte en GitHub pidiendo un botón para apagarla, abierto desde mayo de 2024. Así que tu IA privada le avisa a la central cada hora, como un adolescente en su primera noche de salida. LM Studio fue el más hambriento.

[04:51] Lo instalé de cero, lo abrí y lo dejé en la pantalla de bienvenida. En unos 15 segundos descargó alrededor de 170 megas desde los servidores de LM Studio. Lo más probable es que fueran sus motores y paquetes de extensiones, lo cual es razonable, pero yo todavía no había hecho clic en nada. Después, se quedó callado hasta que le pedí algo.

[05:12] Jan hizo lo mismo en menor escala. Buscó actualizaciones, bajó las notas de la versión desde GitHub y descargó sin preguntar un modelo de embeddings de unos 50 megas desde Hugging Face a través del espejo de Jan. Y llama.cpp, el servidor, no mandó nada, cero conexiones. Es la única app acá que actúa como si no tuviera nada que demostrar.

[05:35] Después, pasé a la búsqueda y descarga de modelos, porque ahí es donde se filtran tus intereses. Cuando busqué un modelo desde la línea de comandos de LM Studio, la búsqueda fue a search.lmstudio.ai. Después, descargué un modelo de 1 GB y cada byte vino de los servidores de LM Studio. El proceso de LM Studio nunca contactó a Hugging Face. Eso es una opción llamada usar el proxy de Hugging Face de LM Studio y viene activada por defecto. Mientras tanto, la documentación sin conexión de LM Studio

[06:07] todavía dice que la búsqueda va a Hugging Face. Esa es la promesa de folleto número uno. Para ser claros, no es algo malvado. Alguien tiene que ver lo que descargas. Solo que es LM Studio en lugar de Hugging Face y la mayoría no lo sabe. Ollama funciona igual.

[06:25] Descargar un modelo pasó por el registro de Ollama y después bajó 1,2 GB desde almacenamiento de Cloudflare. O sea, que Ollama y Cloudflare conocen tu dirección IP y exactamente qué modelos te interesan. Ahora vamos a lo que de verdad me sorprendió. Ollama tiene modelos en la nube. Se ejecutan con el mismo comando que los locales y la única diferencia es la palabra cloud al final del nombre. Corrí Gemma 31 B Cloud con un prompt canario. Fue directo a ollama.com y volvió con una respuesta.

[06:55] Escribís ollama list y los modelos en la nube aparecen justo al lado de los locales. La única pista es un guion en la columna del tamaño, porque no hay ningún archivo en tu disco. El primer modelo en la nube que probé, GLM 5.1, había sido retirado en septiembre y el mensaje de error me sugirió amablemente otro modelo que estaba, textual, en el plan gratuito. Hasta los mensajes de error ya tienen embudo de ventas.

[07:22] Después abrí mi propio archivo de configuración de Ollama y mi integración con Open Code ya apuntaba a un modelo en la nube. Así que si usas Ollama con un agente de programación, revisa esa configuración. Tu código podría estar yendo a la nube a través de una herramienta que vos consideras local.

[07:39] Pero el resultado más aterrador vino de una variable de entorno. Si alguna vez quisiste usar Ollama desde el celular o desde otra notebook, la mayoría de las guías te dicen lo mismo. Pone host en 0.0.0.0. Esos cuatro ceros significan escuchar en todas las interfaces de red, no solo en esta máquina. Así que lo probé. Con la configuración por defecto, un pedido a la dirección de red de mi Mac fue rechazado. Con los cuatro ceros, cualquiera en mi Wi-Fi podía listar mis modelos y correrlos en mi GPU. Sin

[08:10] contraseña, sin clave, sin nada. Eso lo esperaba. Lo que no esperaba era la nube. Como yo estaba con la sesión iniciada en Ollama, otro dispositivo de mi red también podía correr modelos en la nube con mi cuenta, usando mi cuota.

[08:25] Y un pedido más, a un endpoint llamado api/me devolvió el nombre de mi cuenta, mi correo electrónico y mi plan, sin ningún tipo de inicio de sesión. Pone los cuatro ceros en una notebook, llévala a un café y podrías estar compartiendo tu cuenta de IA con todos los que piden un latte con leche de avena. Y se pone mejor. Ollama tiene una defensa contra un truco llamado DNS rebinding, en el que una página web maliciosa convence a tu navegador de que ella es tu servidor local. Ollama revisa

[08:56] el encabezado host en cada pedido. Con la configuración por defecto, mi falso atacante recibió un 403 prohibido. Con los cuatro ceros, exactamente el mismo pedido recibió un 200. O sea, la verificación simplemente se apaga. Y hay que darle crédito al otro video. Lo dijo y puedo confirmar que es verdad. En agosto, unos investigadores usaron justo esa brecha contra Nemo Cloud de Nvidia para reescribir la plantilla de un modelo local desde una sola página web maliciosa. Y la frutilla del postre, el

[09:28] firewall integrado de la Mac viene apagado por defecto y en la mía estaba apagado. Así que no había nada entre mi cuenta de Ollama y el resto de la red. Entonces, ¿se puede apagar la nube sin más? Ollama tiene una opción para eso.

[09:42] Ollama tiene una ocloud igual a uno. La probé. Con ella activada, el servidor no mandó ningún paquete en reposo y los modelos en la nube fueron rechazados. Eso funciona. Pero cuando volví a llamar al endpoint api/me, Ollama igual salió a ollama.com y devolvió mi cuenta. Y según el código fuente, la verificación horaria de la aplicación de escritorio ni siquiera está cubierta por ese interruptor. Osea que no cloud en realidad significa menos nube. Si no necesitas una cuenta de Ollama, la

[10:12] solución más limpia es cerrar sesión. Lo siguiente, ¿dónde terminan tus prompts en el disco? Busqué en mi biblioteca de usuario cada canario y aparecieron en exactamente dos lugares. El primero es el historial de la terminal de Ollama. Cada prompt que escribís en una sesión interactiva de Ollama run se guarda en un archivo de texto plano llamado history dentro de la carpeta oculta de Ollama. Solo tu usuario puede leerlo y no hay ninguna opción para apagarlo. Bueno, es razonable. El segundo es peor. El

[10:44] servidor local de LM Studio escribió mi prompt completo, número de seguro social falso incluido, en un archivo de registro, palabra por palabra. Y ese archivo ni siquiera está restringido a tu cuenta. Sus permisos lo marcan como legible por todos. Si conectaste algo a la API de LM Studio, tus prompts se están acumulando en esa carpeta en texto plano. La buena noticia es que Spotlight no indexó ninguno de los dos archivos porque ambos viven en carpetas ocultas.

[11:13] Así que al menos la barra de búsqueda de tu Mac no te autocompleta los secretos. Volvamos al callado. llama.cpp no mandó nada y no registró mis prompts, pero su servidor le responde a cualquiera. Le mandé un pedido haciéndome pasar por una página llamada evil.example y respondió con la respuesta completa más un encabezado que básicamente dice, "Claro, malvado, tenés permiso para leer esto." O sea que, sin clave de API, cualquier página web que tu navegador deje llegar a localhost podría usar tu

[11:45] modelo y leer las respuestas. Los navegadores modernos están agregando protecciones justo para esto, y yo no probé con un navegador real, así que tomalo como un podría, no como un lo hace. Agregar el parámetro de clave de API lleva unos 10 segundos. Entonces, ¿cuánto importa todo esto? Bastante.

[12:04] Cuando el servidor sale de tu máquina, Sentinel Labs y Census contaron 175,000 servidores abiertos a internet en 130 países. Cuando investigadores de Intruder saludaron a más de 5,000 servidores expuestos, casi un tercio respondió sin ninguna autenticación. Y Kaspersky puso en línea un falso servidor de IA como carnada. Lo encontraron en unas 3 horas, y recibió más de 113,000 pedidos en un mes. Los atacantes iban sobre todo por cómputo gratis y archivos en llenos de claves de

[12:36] API. Si usás Docker, hay una trampa extra. El comando documentado por el propio Oyama publica el puerto en todas las interfaces, y los puertos publicados de Docker se saltan directamente un firewall de Linux como UFW. Poner 127.0.0.1 delante del número de puerto lo arregla.

[12:56] Y el mejor ejemplo de todo mi punto pasó a principios de este mes. Unos atacantes entraron a un sistema detrás de la consola en la nube de Open Code y expusieron claves de API que los usuarios tenían guardadas ahí. Algunos usuarios reportaron cargos sorpresa de hasta unos 1,700 dólares, pero las claves en la aplicación local de Open Code nunca fueron tocadas, porque nunca salieron de la máquina. La parte local estuvo bien. Lo que les robaron fue la capa de comodidad en la nube.

[13:25] Ahora la salvedad. Todo lo que había dentro de esas conexiones estaba cifrado, así que puedo decirte con quién hablan estas apps y con qué frecuencia, pero no exactamente qué dicen. Cada vez que describí lo que hay adentro salió del código fuente. Mis pruebas en reposo duraron minutos, no días y en una sola Mac. Y el código fuente de Jan dice que la búsqueda web viene activada por defecto y manda las búsquedas a una empresa llamada Exa, pero confirmarlo requiere un chat completo de dentro de

[13:55] la app, así que no fue parte de esta prueba. Una cosa más para aclarar, si un vídeo te dijo que el bug Bleeding llama sigue sin parchearse por debajo de la versión 0.30.1, no es así. Esa fuga de memoria que podía exponer claves de API se corrigió en la versión 0.17.1 en febrero. Un bug más nuevo de este mes podía permitirle a un atacante ejecutar código como root dentro de la mayoría de las imágenes de Docker y se corrigió en la 0.35.

[14:27] La versión actual es la 0.40.11. La mía también estaba en la 0.40.2 hasta que empecé este vídeo, así que no juzgo a nadie. Entonces, ¿deberías preocuparte? Depende de cómo lo uses. Si solo chateas con modelos locales, estás bien porque tus prompts se quedan donde están. Si usas la aplicación de escritorio de Ollama, avisa cada hora y no podés apagarlo, así que decidís si te sirve o usá directamente el servidor simple. Si iniciaste sesión en Ollama, revisá tu lista de modelos y tus integraciones en

[15:01] busca de cualquier cosa con Cloud en el nombre. Si alguna vez pusiste los cuatro ceros, deshacelo hoy y usá Tailscale o un proxy inverso con contraseña para acceder desde el celular. Si usas la API de LM Studio, vaciá la carpeta de registros del servidor y si corres llama server, agregá una clave de API. Después activá el firewall de tu Mac. Y si quieres ver qué mandan tus apps, instala Lulu. Es gratis. Así que mi IA local fue privada. Mi cuenta de Ollama, mis archivos de registro y una variable de

[15:32] entorno, no. Y hablando de cosas que avisan, si quieres que revise cómo tenés armado tu equipo, suscribite al canal, que ahí voy a estar respondiendo y subiendo más videos como este. Y contame, ¿alguna vez pusiste el host de Ollama en cuatro ceros? Sé sincero, nadie está capturando tus paquetes.

[15:50] Gracias por ver y nos vemos en el próximo.
