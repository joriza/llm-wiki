# Cómo desplegar tus apps con Dokploy  | Alternativa open source a Vercel o Netlify

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=FywVewJ6ooQ)
- **Canal**: NextGen
- **Publicado**: 2026-10-22
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:52

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En mi máquina funciona. Todos lo hemos dicho alguna vez. El problema empieza justo después. ¿Cómo sacamos esto de nuestro portátil? Configurar el servidor, el proxy, los certificados, los scripts de despliegue o pagar a una plataforma por cada aplicación. Hay un tercer camino. Veamos cuál.

[00:19] Dokku es una herramienta de código abierto que convierte un servidor normal en una plataforma de despliegue de aplicaciones, lo que en el sector llamamos un PaaS, una plataforma como servicio. La diferencia con Vercel, Heroku o Netlify es que aquí la plataforma vive en nuestra máquina. Los datos son nuestros, no pagamos por aplicación y podemos empezar con un único servidor.

[00:41] ¿Y qué podemos hacer con Dokku? Desplegar aplicaciones en prácticamente cualquier lenguaje, Node, Python, PHP, Go, directamente desde GitHub, GitLab, Bitbucket o Gitea o a partir de una imagen Docker. Configurar dominios con certificado HTTPS.

[00:59] Crear bases de datos como PostgreSQL, MySQL, MariaDB, MongoDB o Redis con copias de seguridad automáticas. Y lo mejor, cada vez que subimos un cambio al repositorio, la aplicación se vuelve a desplegar sola. Por dentro, Dokku funciona con Docker.

[01:16] Cada aplicación acaba convertida en un contenedor. Si nuestro proyecto ya tiene un Dockerfile, lo usa. Y si no lo tiene, no pasa nada. Herramientas como Nixpacks, la opción por defecto, o Rail Pack, su sucesora, analizan el proyecto, detectan el lenguaje y sus dependencias y construyen la imagen por nosotros.

[01:34] Y si la aplicación necesita varias piezas, como una web, una base de datos y una caché, podemos describirlas juntas con Docker Compose. Al instalar Dokku se montan varias piezas. En la entrada, Traefik, un proxy inverso. Recibe todo el tráfico de internet y envía cada petición al contenedor que corresponde según su dominio. Gracias a él, un solo servidor puede servir muchas aplicaciones.

[01:56] Detrás, el panel de administración, una aplicación hecha en Next.js. Su configuración se guarda en una base de datos PostgreSQL y Redis gestiona la cola de despliegues. Y debajo de todo, nuestras aplicaciones, cada una en su contenedor, orquestadas con Docker Swarm.

[02:13] Para instalarlo, necesitamos un servidor, por ejemplo, un VPS de cualquier proveedor con al menos 2 GB de RAM y 30 GB de disco. ¿Por qué tanto? Porque las imágenes Docker se construyen en el propio servidor y eso consume recursos. Como sistema operativo, una distribución Linux como Ubuntu o Debian.

[02:31] Y un detalle importante, los puertos 80, 443 y 3000 tienen que estar libres. Contratamos el VPS, elegimos Ubuntu como sistema y desde el panel del proveedor definimos la contraseña de root. Con la IP del servidor, abrimos una terminal y nos conectamos por SSH.

[02:49] Aceptamos la huella del servidor la primera vez, introducimos la contraseña y ya estamos dentro. Ahora, la instalación. Es un solo comando que encontramos en la web de Dokku Deploy. Lo pegamos en la terminal y el script se encarga de todo. Instala Docker si no lo tenemos, inicializa Docker Swarm y levanta los servicios de Dokku Deploy. En un par de minutos veremos el mensaje de que todo ha ido bien.

[03:11] Abrimos el navegador en la IP del servidor, puerto 3000. Lo primero que nos pide es crear la cuenta de administrador, nombre, correo y contraseña. Es la llave de toda la plataforma, así que usemos una contraseña robusta. Más adelante veremos cómo proteger este acceso.

[03:26] Un vistazo rápido al panel. Todo se organiza en organizaciones, proyectos y servicios. Una organización puede ser nuestro equipo o un cliente. Dentro, los proyectos agrupan lo que va junto. Y cada proyecto contiene servicios, aplicaciones, bases de datos o stacks de Docker Compose.

[03:43] Además, tenemos monitorización del servidor, uso de CPU, memoria, disco y de los contenedores en tiempo real. Para desplegar desde nuestro código, primero conectamos Dokploy con el proveedor de Git. Vamos a ajustes, Git y elegimos GitHub. Dokploy crea una GitHub app en nuestra cuenta, el paso que menos se ve. Después hay que instalarla y elegir a qué repositorios puede acceder.

[04:06] Lo recomendable es darle acceso solo a los que necesitemos, no a todos. Ahora sí, dentro del proyecto pulsamos create service y elegimos application. Le damos un nombre y una descripción. En el apartado provider seleccionamos GitHub, el repositorio y la rama, por ejemplo, main. Después elegimos el tipo de build.

[04:26] Si no tenemos Dockerfile, Nixpacks o Rail packs se encargan. Guardamos, pulsamos deploy y Dokploy clona el repositorio, construye la imagen y arranca el contenedor. Mientras tanto podemos seguir los logs en directo. La aplicación ya corre, pero aún no tiene dirección. En la pestaña domains añadimos una. Tenemos dos opciones.

[04:46] Dokploy puede generar un dominio gratuito de traffic.me, perfecto para pruebas, pero solo funciona con http. Para algo serio usamos un dominio propio. Creamos un registro DNS de tipo A que apunte a la IP del servidor, activamos https y elegimos Let's Encrypt. El certificado se genera y se renueva solo. Un detalle clave, el puerto del contenedor tiene que coincidir con el puerto en el que escucha nuestra aplicación. Y ahora lo mejor, cambiamos un texto en nuestra aplicación, hacemos commit y push a la

[05:15] rama main. Sin hacer nada más, Dokploy detecta el cambio, reconstruye y despliega la nueva versión. En la pestaña deployments vemos el despliegue con el mensaje de nuestro commit. Con GitHub funciona sin configuración extra.

[05:29] Con GitLab, Bitbucket, Gitea o Docker Hub se configura con un webhook. Y también podemos lanzar despliegues desde la API. A partir de aquí, Dokploy crece con nosotros. Podemos crear bases de datos con copias de seguridad automáticas en un almacenamiento S3, desplegar aplicaciones listas desde plantillas, como N8N, WordPress o Uptime Kuma, y añadir más servidores. Los servidores remotos ejecutan aplicaciones mientras el panel sigue en uno solo, e incluso podemos tener un servidor dedicado solo

[05:58] a construir imágenes. Y si necesitamos más, con Docker Swarm podemos repartir una aplicación entre varios nodos. Antes de usarlo en producción, cinco buenas prácticas. Pon un dominio con HTTPS al panel y cierra el acceso por el puerto 3000.

[06:14] Activa un cortafuegos que solo deje pasar SSH, el 80 y el 443. Entra por SSH con claves, no con contraseña. Activa la verificación en dos pasos en todas las cuentas. Y guarda copias de seguridad fuera del servidor, y comprueba que se pueden restaurar.

[06:30] Recapitulando. Un servidor. Un comando. Conectar el repositorio y desplegar. A partir de ahí, cada push se publica solo. Dokku Deploy es gratuito y de código abierto, así que la mejor forma de entenderlo es probarlo. Tienes toda la documentación en docs.dokku.com.
