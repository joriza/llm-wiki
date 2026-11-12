# Laboratorio IA GRATIS: Ubuntu y OpenCode con Killercoda desde tu navegador

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=r8bJpmw19_s)
- **Canal**: Comarca IA
- **Publicado**: 2026-06-23
- **Recopilado**: 2026-11-11
- **Idioma**: español (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:19

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Con esto hemos transformado el navegador en un laboratorio de inteligencia artificial completamente gratuito. Buen día, comarca IA. Mi nombre es Hugo Paredes. ¿Cómo están, chicos? Qué gusto verlos nuevamente. Si tu equipo de trabajo sufre para procesar modelos de inteligencia artificial locales y prefieres no incurrir en pago de APIs para pruebas de inteligencia artificial, no te preocupes. Hoy estructuraremos una solución técnica eficiente. Vamos a montar un laboratorio de inteligencia

[00:28] artificial completo, gratuito y en la nube. Desplegaremos en cuestión de segundos el sistema operativo Ubuntu 24.04 LTS dentro de Killer Code y lo integraremos con Open Code, este famoso agente de terminal que incluye modelos de inteligencia artificial completamente gratuitos y que son muy buenos para codificar y para hacer pruebas. Y todo esto operará desde una simple pestaña de navegador con Google Chrome. Cabe mencionar que en el canal el 90% de nuestros videos son sobre inteligencia

[00:58] artificial local, pero siempre que encuentre soluciones prácticas en las cuales ustedes puedan hacer pruebas y aprender, las voy a compartir, como en este caso con Killer Code y Open Code. Así es que vamos a pasar a mi pantalla principal para hacer todo este despliegue. Como pueden visualizar en mi navegador, al lado izquierdo ya me encuentro en Killer Coda y al lado derecho tengo Open Code. Killer Coda es una plataforma que nos permite levantar servicios en la nube de forma muy

[01:24] rápida, eficiente y gratuita. Y es por eso que la he escogido para poder compartirlo con ustedes. Asimismo, Open Code es un agente en terminal que se conecta a múltiples modelos de inteligencia artificial, incluyendo su plan completamente gratuito, que es bastante generoso, y además que también se puede conectar tanto a Ollama y a LM Studio para que puedan montar inteligencia artificial local dentro de Open Code, lo cual veremos en próximos videos. Pero ahora vamos a pasar al

[01:49] despliegue. Nos vamos al lado derecho y antes de usar uno de los servicios en la nube dentro de Killer Coda, tenemos que registrarnos y todo es completamente gratuito. así es que nos vamos donde login, en este caso me voy a registrar con mi correo de Google, hago clic aquí, selecciono mi correo, le doy los permisos a mi correo, hago clic en continuar y ya me encuentro autenticado correctamente. Cabe mencionar que en Killer Coda ustedes pueden usar una versión plus, en la cual ustedes tienen

[02:14] varios planes, pueden usar una suscripción course subscription de 30 dólares al mes o también pueden desplazarse al lado inferior y pueden elegir planes desde 9.99 dólares al mes o 69.99 dólares al año para que les brinden algunos servicios adicionales para su servicio de Killer Coda, pero si nos vamos a la parte superior, nosotros podemos usarlo completamente gratuito, con el cual ya podemos montar un servicio en la nube completamente gratuito por una hora y eso es lo que vamos a hacer, así es que regresamos a

[02:42] Killer Coda, nos vamos a ir al apartado playgrounds y si deslizamos hacia abajo tenemos varios servicios, tenemos Ubuntu, Kubernetes, Kubernetes playground, CKS, etcétera, etcétera. En este caso vamos a elegir Ubuntu 24.04, hacemos clic ahí, damos check aquí para estar de acuerdo, esperamos unos segundos y ya cargó correctamente nuestro servidor con Ubuntu y nos encontramos actualmente en la terminal y si nos vamos a la parte superior derecha podemos visualizar que tenemos 60

[03:10] minutos completamente gratuitos, donde podemos desplegar múltiples pruebas, así es que vamos a aprovechar esta versión gratuita para desplegar Open Coda y para desplegar Open Coda dentro de nuestro Ubuntu, simplemente tenemos que copiar este código curl, lo vamos a copiar, nos vamos dentro de la terminal de Ubuntu en Killer Coda, clic derecho, lo pegamos y vamos a hacer enter para instalar Open Coda. Como podemos visualizar se está descargando e instalando, así es que vamos a esperar unos segundos porque

[03:36] esto demora muy poquito y volvemos. Por mientras que va cargando e instalando vamos a agrandar un poquito la pantalla de Killer Coda, así es que nos vamos a la parte superior, hacemos clic aquí y vamos a hacer clic en cerrar la ventana de la derecha, esto lo vamos a traer más aquí y ya podemos visualizar mejor toda la instalación. Ya llegamos al 100% y se instaló correctamente Open Code. Ahora vamos a pegar el siguiente comando, clic derecho, pegar y vamos a usar este comando para recargar las variables del

[04:00] entorno de la sesión, hacemos enter y ya se recargaron correctamente. Ahora vamos a pegar el siguiente comando, hacemos clic derecho, pegar y con este comando vamos a crear un directorio, en este caso el directorio se llama mi proyecto, hacemos enter y vamos a ingresar a ese directorio, clic derecho, pegar, CD espacio mi proyecto, hago enter y ya me encuentro dentro del directorio. Cabe mencionar que esto es bastante importante porque Open Code necesita que estemos dentro de un directorio para que

[04:27] funcione correctamente, es por eso que se tiene que crear e ingresar al directorio que ustedes están creando y una vez que están dentro de su directorio solo tienen que escribir Open Code. Como pueden visualizar estamos escribiendo pocos comandos y son cortos, pero de todas formas los voy a dejar en la página comarca.pro/recursos en un manual completamente detallado para este vídeo, así es que pásense por ahí para que puedan descargarlo y visualizar todos los comandos con mayor

[04:52] tranquilidad. Una vez que hemos escrito Open Code, simplemente hacemos enter y listo, ya estamos correctamente conectados a Open Code. Cabe mencionar que si nos vamos a la parte superior todavía tenemos 54 minutos libres.

[05:03] Recuerden que estas máquinas o servicios virtuales en la nube con Killer Code son completamente gratuitos por una hora, si necesitan más tiempo pueden pagar el plan plus para extender sus sesiones por 4 horas, sin embargo, una vez que se termine esa hora ustedes pueden actualizar la página, es decir aquí y pueden volver a usar otra máquina por una hora más. Cabe recordar que cuando se acabe el tiempo se elimina completamente todo lo que han hecho en esta pantalla, es por eso que en el

[05:28] inicio les mencioné que esta plataforma sirve para pruebas, si necesitan entornos de producción lo más recomendable es usar un VPS, un servidor local o su computadora local, como lo estuvimos viendo en vídeos anteriores.

[05:40] Ahora volvemos a Open Code y vamos a usar uno de sus modelos gratuitos, así es que escribimos slash models, hacemos enter y como pueden visualizar, aquí tenemos cinco servicios de inteligencia artificial completamente gratuitos.

[05:53] Tenemos el Big Pickle, el Deep Seek V4 Flash, el mismo 2.5 de Xiaomi, el Nemotron 3 Ultra de Nvidia y el Nok Mini Code Free. Todos estos modelos los pueden usar completamente gratis. Personalmente, en muchas ocasiones he hecho varias pruebas y no terminé de usar todos los tokens gratuitos que nos dan con estos modelos libres. Cabe mencionar que también tenemos un plan Go, que cuesta $5 y con el cual ustedes van a tener una cuota más extensa de varios modelos dentro de Open Code.

[06:20] También tenemos la suscripción de Open Code Zen, el cual les dará una gran variedad de modelos, incluyendo los modelos de Cloud, de Gemini y de Open AI. Cabe mencionar que Open Code también lo podemos conectar con Ollama y LM Studio, y eso es precisamente lo que haremos en próximos videos, pero en esta ocasión vamos a usar un modelo gratuito.

[06:38] En este caso, el Deep Seek V4 Flash. Hacemos clic ahí, lo vamos a poner en High y vamos a hacer dos pruebas superrápidas con dos prompts. Vamos a pegar el siguiente prompt. Crea un script de Python llamado hola.py, que imprima el mensaje "Hola comarca IA, ejecutando desde el Killer Code". Vamos a hacer enter, esperamos unos segundos, como ven, procesa superrápido y en 5 segundos nos entregó el resultado. "Hola comarca IA, ejecutando desde Killer Code". Primero ha imprimido el código en

[07:03] Python, luego nos respondió y nos dijo "creado y ejecutado correctamente". Si se van al lado derecho, pueden ver los tokens que consumió, el uso que le dio y el costo que tuvo. Con este prompt pequeño solo usé el 4%. Para que lleguen al 100% tendrían que usar bastante este modelo. Es por eso que les mencioné que los modelos gratuitos dentro de Open Code alcanzan para hacer varias pruebas, incluyendo pruebas más difíciles en comparación a la que acabo de hacer.

[07:28] Vamos a cambiar de modelo rápidamente, escribo models, hago enter, vamos a elegir el mismo 2.5, lo vamos a dejar en High y vamos a escribir el siguiente prompt. Crea un script en Bash llamado info.sh, que muestre de memoria RAM total y disponible en el sistema.

[07:43] Hacemos enter y está comenzando a pensar superrápido, ya creó el código y nos contestó en 6.2 segundos. Como pueden visualizar en la parte superior, ha creado el info.sh, generó el bash y al momento de ejecutarlo nos respondió, memoria total 1.9 GB, memoria RAM disponible 832 MB, que es la memoria total y memoria disponible que actualmente tenemos en nuestro servidor de Ubuntu que hemos levantado en Killer Code y como pueden visualizar en la parte superior derecha todavía tenemos

[08:11] 45 minutos para que ustedes puedan realizar múltiples pruebas. Así es que a este servidor completamente gratuito le pueden sacar todo el jugo. Con esto hemos transformado el navegador en un laboratorio de inteligencia artificial completamente gratuito. Recuerden que para estas pruebas hemos usado Ubuntu 24.04 LTS, la versión servidor, conectado directamente con un agente integrado gracias a Open Code. Con esto hemos podido mantener intacto nuestros recursos locales sin el peligro de

[08:38] afectar nuestro software o hardware con múltiples pruebas completamente gratuitas. Recuerden que próximos videos vamos a conectar Open Code completamente local con Ollama y LM Studio para que ustedes puedan usar inteligencia artificial desplegada en su propia computadora y con sus propios recursos completamente gratuita y completamente privada. Así es que no olviden dejarnos un me gusta y suscribirse al canal para que puedan ver esos videos. Cabe mencionar que tenemos la página

[09:04] comarca.pro/recursos, donde dejaremos un manual completo de este video y donde ya tenemos compartido todos los manuales de los videos anteriores completamente gratis. Gracias por quedarse hasta el final del video. Cuídense, que la suerte los acompañe.
