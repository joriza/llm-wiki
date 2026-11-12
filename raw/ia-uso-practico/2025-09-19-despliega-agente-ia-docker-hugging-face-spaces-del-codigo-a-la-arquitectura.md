# Despliega tu Agente de IA con Docker y Hugging Face Spaces (GRATIS)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=V9TcltcpkYY)
- **Canal**: Del Código a la Arquitectura
- **Publicado**: 2025-09-19
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos automáticos es, transcripción literal)
- **Duración**: 12:05

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] Hey, ¿qué tal a todos? Bienvenidos nuevamente al código de la arquitectura. Yo soy John y en los videos anteriores creamos un agente multimodal capaz de consumir APIs, realizar operaciones Crub y extraer información de documentos. Hoy vamos a sacar a nuestro agente de nuestro entorno local y lo vamos a desplegar en la nube para que cualquiera pueda usarlo. En este video nos vamos a enfocar en el proceso de preparación y despliegue usando Docker y Hugan Face spaces.

[00:28] Antes de poder desplegar nuestra aplicación con ayuda Docker, primero tenemos que limpiar un poco el proyecto. Nuestro proyecto anterior era un proyecto de experimentación con rutas y end points por todas partes para probar rack, memoria, reranking. Bueno, el proyecto estaba funcionando, pero no era adecuado para un despliegue real.

[00:50] Entonces lo primero que hice fue refactorizar. Así que unifiqué todo en un único point en el archivo agent. Aquí reorganicé también las herramientas y los servicios para que todo esté más limpio y sea más mantenible. También hice un ajuste para algo que vamos a hacer en el siguiente video, donde vamos a evaluar la funcionalidad rack de nuestro agente. Así que modifiqué el agente para que ahora además de la respuesta también nos devuelva el contexto exacto que utilizo para generar esa respuesta.

[01:26] Como ven acá en el código, ahora extraemos los resultados de la herramienta buscar contextos en documentos de los intermediate steps que eh nos provee Lunchain. También por acá arriba en el executor debemos agregar la propiedad retur intermediate steps. Le tenemos que poner el valor en true para poder recibir estos datos. ¿Y de dónde vienen estos datos? Estos datos son los que nos retorna nuestra herramienta de buscar contexto en documentos.

[02:00] Este cambio es muy importante para poder evaluar la calidad de nuestro RAC de forma objetiva. Y como lo dije, es lo que vamos a hacer en el siguiente video. Ahora, con la aplicación ya lista y organizada, estamos listos para empaquetarla y desplegarla. Y para eso no hay mejor herramienta que Docker.

[02:20] Entonces, por acá tenemos un Docker file, que es lo que le dice a Docker cómo construir una imagen autoconenida de nuestra API de Fast Appi. El Docker File es nuestra clave para un despliegue sin complicaciones. Veamos qué estamos haciendo acá en este archivo. Primero vamos a usar una imagen oficial de Python como base. Esta etiqueta es LIN, significa que es una versión ligera sin paquetes innecesarios, lo que hace que nuestra imagen final sea más pequeña.

[02:53] En este bloque establecemos las variables de entorno que controlan el comportamiento dentro del contenedor. Esta variable evita que las instalaciones del sistema nos pida confirmaciones. Esta otra variable nos asegura de que los print de Python se muestren en los logs en tiempo real. Esto nos ayuda a hacer toda la depuración de nuestro agente.

[03:18] El py no cachir desactiva el caché de pipe. Esto también con el objetivo de reducir el tamaño final de la imagen. Y el HF Home le dice a las librerías de Hugin Face que usen una carpeta específica dentro de nuestro proyecto para guardar los modelos.

[03:37] Con este comando room actualizamos la lista de paquetes de Linux y luego con aptal instalamos Bill Essential y Git, que son herramientas de compilación que algunas librerías de Python como Torch necesitan para instalarse correctamente.

[03:56] Y al final con este RM - RF limpiamos los archivos de apt dejar basura en la imagen del Docker. Este comando de acá es de seguridad y lo que hace es crear un usuario llamado app user con su propio directorio y la idea es evitar correr la aplicación con el usuario root que tiene todos los permisos.

[04:19] Luego con Worder Code creamos y nos movemos a la carpeta code que será el lugar donde vivirá nuestra aplicación. Después con el copyre requirements.txt copiamos el archivo de requirements que es donde tenemos todas nuestras dependencias.

[04:36] Y después instalamos las dependencias con este otro room. Acá primero actualizamos Pyth y luego instalamos todo lo que está en requirements.txt. Ahora con el mkadir y home creamos la carpeta cach que definimos por acá arriba en la variable de entorno HF y nos aseguramos de que pertenezca a nuestro usuario app user. Para eso hacemos el CH.

[05:05] Luego cambiamos a nuestro usuario app user y ejecutamos esta línea. ¿Qué hace esta línea? Esta línea lo que hace es descargar el modelo de sentence transformer, que es el que utilizamos para nuestros embedings, y lo guarda en la carpeta de caché que creamos acá arriba.

[05:23] Al hacer esto durante el bill, el modelo ya está incluido en la imagen final del Docker y al momento de levantar nuestro servicio de FAS API, no va a ser necesario descargar el modelo. Esto nos evita posibles timeouts cuando el contenedor arranque por primera vez en la nube.

[05:41] Bueno, al mencionar esto, recordé que también hay algo importante que tenemos que hacer y es que acá dentro de nuestra carpeta core, en el archivo embeding, vamos a agregar la palabra sentence transformers antes del nombre del modelo. ¿Por qué? Cuando yo estaba haciendo pruebas, al desplegar en Hugin Face estaba teniendo un error de que no encontraba el modelo. ¿Y cuál fue la solución? La solución fue esta. Al indicarle la ruta completa, el error desaparece. Entonces es importante que

[06:10] hagamos esto para evitar esos errores. Listo. Volviendo al Docker file, vamos a volver a usar el usuario root temporalmente para poder copiar el código de nuestra aplicación y asignarle como propietario de esta carpeta al usuario app user. Luego con Expose 7860 le informamos a Docker que nuestra aplicación escuchará en este puerto. Y para terminar, volvemos al usuario appusser y con el cmd estamos ejecutando el comando que vemos acá abajo. Estamos iniciando el servidor en el local host

[06:46] Docker y en el puerto 7860. Listo, con nuestro Docker file terminado vamos a ir a Hugin Face, que es donde vamos a alojar nuestro gente de forma gratuita. Y el proceso es muy sencillo. Primero nos creamos una cuenta e iniciamos sesión. Como yo ya tengo una cuenta, voy a iniciar sesión.

[07:09] Ya con la sesión iniciada desde nuestra cuenta de Hugin Face vamos a Space y hacemos clic en new space. Le damos un nombre, también le podemos dar una descripción y una licencia. Yo dejaré estos campos en blanco. Ahora, en la parte de space SDK seleccionamos Docker y seleccionamos la plantilla blanca.

[07:31] Vamos a bajar y vamos a hacer clic en create space. Una vez creado el space nos dará un repositorio de git vacío. Ahora solo tenemos que subir nuestros archivos. Podemos hacerlo directamente desde la interfaz web en la pestaña files haciendo clic acá y enlates o usando git. En mi caso voy a usar git.

[07:55] Entonces voy a volver a la pestaña app. Voy a copiarme esta URL y desde Visual Studio Code abriré una terminar e iniciaré un repositorio de kit. Luego voy a añadir como remoto la URL que copié. Listo, ya con esto tenemos configurado nuestro remoto que es donde vamos a subir todos los archivos. Entonces voy a hacer un git add para agregar todos estos archivos y luego haré un comit.

[08:27] Listo, ya solo nos queda enviar la rama a nuestro repositorio de Hugan Face. Antes de enviar la rama vamos a ir a Hugan Face. Y si recuerdan, acá en el tab de files vamos a ver que ya tenemos unos archivos cargados. Vamos a abrir el RMI y esto que tenemos acá es lo que usa Hugin Face como configuración para saber cómo mostrar y ejecutar un space. Y acá tenemos toda la documentación para saber qué se agrega en cada propiedad.

[08:59] Entonces, esta parte la vamos a tener que agregar en nuestro RMI. Así que si venimos por acá al Ritmi, vemos que acá arriba ya tenemos agregada esa configuración. Vamos a volver a Hugan Face porque hay algo más que tenemos que hacer y es agregar las variables de entorno y los secretos. Para eso vamos a irnos a secrets y por acá abajo tenemos variables secrets. Aquí vamos a agregar las variables y los secretos que necesita nuestro API para funcionar.

[09:32] Listo, ya con las variables y secretos configurados, ahora sí ya podemos enviar la rama a Hugin Face. Así que haremos un git push. Bueno, copiamos esto, lo pegamos y lo enviamos. Y acá nos falla. ¿Por qué nos falla? Porque nuestro historial de cómics en local es diferente al que tenemos en Hugin Face.

[09:54] Entonces vamos a forzarlo agregándole un menos force al comando anterior. Y listo. Ahora, en cuanto subamos los archivos, Hugin Face detectará el Docker file y comenzará a construir la imagen automáticamente. Podemos ver que acá está haciendo el building y también podemos ver los locs desde acá. Vamos a esperar que termine con la construcción y ya volvemos.

[10:22] Después de unos minutos vemos que el estado cambia a running y nuestra API ya está desplegada. ¿Cómo lo podemos probar? Hugin Face nos arma el end point usando primero nuestro nombre de usuario, en mi caso código archy guion, el nombre del space que yo lo llamé agent hf.space space y podemos revisar nuestra documentación de swagger ingresando a slogs.

[10:53] Con esto ya podemos ver que tenemos el API desplegada y la podemos probar desde acá. Vamos a darle clic acá en Tride Out y vamos a preguntarle qué es la ingeniería de Proms. Y acá ya tenemos la respuesta junto con el contexto que vamos a usar en el próximo video para evaluar la funcionalidad RAC de nuestro agente.

[11:19] Y listo, hemos llevado a nuestra gente desde un prototipo local a una aplicación robusta. La hemos empaquetado con Docker y desplegado en la nube para que todo el mundo pueda acceder a ella. Pero, ¿cómo sabemos si está funcionando bien? ¿Cómo podemos medir que nuestro RAC sea un RAC de calidad? Esa es la pregunta que vamos a responder en el próximo video, donde hablaremos un poco del lls y usaremos ragas para crear nuestro primer panel de evaluación.

[11:52] Si te ha gustado este video, dale like, suscríbete para no perderte el siguiente video y déjame en los comentarios cualquier duda que tengas. Nos vemos en el próximo
