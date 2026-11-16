# Despliega tu propio Bitly - GRATIS y OPEN SOURCE

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=rGwNTdniad0)
- **Canal**: Pelado Nerd
- **Publicado**: 2026-09-22
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:02

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Les voy a contar una pequeña historia. Yo vengo usando Bitly como un eh acortador de links. Hay veces cuando querés compartir un link de afiliado o querés compartir algo en Twitter, los links son gigantes muchas veces y usas algo como bitle para que sea más cortito y lo pegas y y aparte es más o menos configurable. Puedes poner bitle barra pelado, nerdearla, lo que sea. Y ese link es fácil de leer, fácil de recordar y se lo puedes pasar a alguien y eso le llega un link mucho más largo de

[00:26] afiliados generalmente o no. Y esto era gratis para usar con Bitley y de repente hace poco empezaron a poner ads en el medio, o sea, vos hacías clic a un link de Bitley, te llevaba a una página donde te mostraba un ad y después te redireccionaba al link original después de unos 10 o 15 segundos. Cuando me di cuenta que estaban haciendo esto sin haberme avisado, me enojé mucho, por más que no esté pagando nada, pero bueno, loco, avisame por lo menos. Entonces dije, "No, no puede ser. Estamos en el

[00:52] mundo de la inteligencia artificial, estamos en el mundo del B coding. Voy a crear mi propio proyecto que haga exactamente lo mismo de una forma fácil y que sea bonito y que funcione bien y que sea totalmente manejado por mí para que yo también lo pueda hostear si quiero. Y ahí es donde creé Link Shorter. Link Shortner es algo que yo vengo usando hace bastante ya. Si ustedes ven mis tweets o los links en la descripción de mis videos, van a ver que estoy usando go.peleoner.com/algún

[01:15] link para que te lleve, por ejemplo, a un link de afiliado o un link mucho más largo. Para que te una idea, veo tengo, por ejemplo, el link de hostgator, ¿sí? Entonces, go.com/hostgator te lleva así a el link de afiliado de hostgatorio que es todo esto bastante largo, ¿sí? Y hoy les voy a mostrar cómo instalarlo de cero y va a estar todo en la descripción para que puedan seguir la guía. Es más, voy a probarlo desde cero, pero de verdad, usando un servidor vacío. Este servidor no tiene nada, está

[01:42] vacío, tiene solamente los script que vienen con el servidor, tiene mi key SS, no tengo ni Docker instalado. Vamos a seguir la guía desde cero y la vamos a probar a ver si funciona. Es vamos a ir al repo de link shortener. Primero lo que tenés que hacer entonces es crear un BPC con Ubuntu y anotar su dirección pública. Es lo primero que vamos a hacer. Después en el proveedor de NS de tu dominio, en el caso que estés usando HostGator, voy a dejar un link en la descripción de cómo hacerlo. Tenés que

[02:04] apuntar un subdominio con el registro a a la IP del servidor que creaste. Sí, este dominio tiene que ser tuyo y el subdominio puede ser el que vos quieras. Si, en el caso mío es go.com, pero puede ser links.peladoner, lo que vos quieras. Es más, lo vamos a probar.

[02:20] Vamos a hacer eso. Yo ya tengo creado links.peloner.com y está apuntado este servidor. Sí. Una vez que ya esté funcionando, lo que vamos a hacer es correr todo esto que lo que va a hacer es instalar Docker para unto. Sí, voy a copiar esto y lo voy a pegar.

[02:34] Fíjate lo fácil que va a ser. Sí, vamos a hacer esto. Bien, vamos a hacer una PT update. Vamos a instalar eh Docker. Listo. Y vamos a probar un va a hacer un Hello World chiquito como para ver que funcione Docker. Sí, se va a descargar la imagen de Docker y va a ser un Hello World. Perfecto, funciona bien. Y vamos a ver si está Docker con pause instalado. Y está acá instalado.

[02:58] Perfecto, listo. Como dije, no hace falta descargar nada. No hace falta instalar Node, no hace falta instalar NPM, no hace falta instalar Postgr CAD, nada, nada. Todo esto está dentro del contenedor de Docker. Sí. Vamos a aclarar entonces el repositorio.

[03:11] Vamos a irnos a ese archivo. Vamos a copiar este archivo de producción. Este archivo de producción va a tener algunas KIS que necesitamos cambiar. Sí, acá va a ser el dominio que vamos a usar. En mi caso voy a usar linkpeladoner.com.

[03:28] Vamos a generar dos eh valores seguros. Sí, esto lo vamos a hacer así. Vamos a copiar esto. Vamos a ir acá, lo vamos a pegar ahí password y después vamos a crear otro valor seguro de base 64 para eh la session key. Esto es una sola única vez. Esto lo que va a hacer es cifrar las sesiones y la contraseña de password de posgr SQL para la conexión.

[03:54] Tenemos que cambiar el shortener domain, como dije recién. Acá le ponés tu dominio, eso es importante. Y una vez que ya lo tenés, lo único que vas a hacer entonces es hacer este comando, que lo que va a hacer es levantar nuestro eh Docker Compose con todo lo que necesitamos para correr nuestra aplicación. Esto lo va a hacer con Cadi.

[04:11] Cadi no he hecho videos sobre Cadi, pero es una forma de como un enginex integrado que ya tiene incluso el tema del manejo de certificados, todo integrado. Entonces, va a levantar un proxy adelante de nuestra aplicación que va a recibir todo el tráfico y se lo va a pasar a nuestra aplicación y entonces va a tener certificado SL y todo lo que lo que necesita. Ahí está levantando entonces CADI, está levantando eh nuestra configuración, está levantando nuestro postgr, está levantando la

[04:36] aplicación. Sí, si hacemos un docker compost PS, vemos que están corriendo todos los contenedores. Bien, y después vamos a hacer una prueba. Si esto lo que va a hacer entonces es chequear que esté funcionando nuestro aplicación. Ves que está link.peloner.com, incluso está con hts. Lo vamos a probar. Vamos a ver si es verdad. Admin/ dashboard. Si es el dashboard para nuestro admin. Y ya tenemos entonces nuestra aplicación corriendo. Fíjate que está incluso corriendo con https. Todo esto lo

[05:03] levantó de un servidor de cero, lo levantó con con nuestro Docker compos. Vamos a levantar entonces nuestra eh contraseña. Vamos a correr este comando. Vamos a poner nuestra contraseña. Listo. Acá obviamente le puedes cambiar el mail que vos quieras y vamos a entrar. Listo.

[05:24] Nuestra aplicación está funcionando. Y ahora, ¿cómo hacemos para probarlo? Bueno, es bastante simple. Vamos a crear entonces un barra algo, ¿sí? Vamos a hacer barra prueba, ¿sí? Y esto va a ser que nos va a llevar a otro link, ¿sí?

[05:34] Vamos a poner en este caso un link de hostgor, ¿sí? Y acá vamos a elegir qué tipo de redirección queremos que haga. Puede ser 301, 302, 307, 308. ¿Por qué hay diferencias? ¿Y por qué yo recomiendo siempre usar 302? El 301 va a ser una redirección permanente. Eso quiere decir que nuestro navegador va a cachar esa redirección y siempre que yo entre a link.pelhoner.com/prueba, apeloner.com/prueba.

[05:57] La segunda vez, o sea, a partir de la segunda vez, va a estar cachado en el navegador y y no va a preguntar a dónde tiene que ir. Entonces, eso hace que cuando yo quiera cambiar este link, el navegador va a ir al link anterior.

[06:08] Entonces, por eso yo recomiendo que uses un 302, porque ese es una reción temporaria. Entonces, eso fuerza al navegador a preguntar todas las veces a dónde ir. Entonces, de esa forma nos aseguramos de que siempre el navegador va a traer la última versión, digamos, de nuestro link. ¿Sí? Entonces, vamos a crearlo. Ya está creado. Y ahora si yo entro desde mi máquina, si esta misma máquina voy a poner link.peladoner.com.

[06:30] Prueba, me va a llevar entonces a el link que yo puse. Perfecto. Y fíjate que si refrescamos acá la página vemos incluso el recent click. Vemos acá desde Argentina no hubo referrer, pero si hubiera habido un referrer, lo mostraría acá. Bueno, mi navegador y la IP.

[06:44] Entonces, fíjate que qué bien con la banderita de Argentina. Gracias al video anterior donde implementamos eso, ya está funcionando, fue superfácil de usar, fue superfácil de crear y esto funciona de una, lo pueden probar, es 100% gratis, chequéenlo. Obviamente repositorios open source, si quieren hacer algún cambio, si quieren probarlo, si quieren sugerir algo, metan un pull request y lo vemos, no hay ningún problema. Bueno, y como puedes ver, hic hicimos todo este video con HostGator.

[07:08] Hostgator es un servicio de hosting superfácil de usar, super rápido y super seguro y barato. Fíjate que hoy esto está bien, esto si lo ven en el futuro puede cambiar y aparte con la inflación de Argentina esto puede cambiar, pero fíjate que hoy podés elegir un servidor desde 3,000 pes por m es superbato. Eso son $2 hoy, sí, menos de $2. Entonces está buenísimo. Yo en este momento estoy usando este, el de NBM 4 con que vale 4,450 pesos por mes. De nuevo, hoy son aproximadamente $3. Superfácil de usar.

[07:39] chequeen con el link en la descripción tienen un descuento y le sale un poquito más barato. Eh eh con esto también tiene hasta 69% de descuento. Está super bueno. La verdad que me gusta porque están hosteado en Latinoamérica los servidores y aparte tenés muchas opciones, no solamente puedes levantar tu propio servidor con Ubuntu, como dije recién, instalarle lo que vos quieras, sino que tenés servicio de hosting completo como hosting de páginas web, de correo, tenés correo profesional, tenés

[08:03] servicios hasta con Open Cloud instalado. Si lo querés probar, está buenísimo, es super accesible. chequéenlo, está el link en la descripción para probarlo, les da este descuento y la verdad que funciona muy bien. Como pudieron ver, lo hicimos andar en nada, en nada lo p y pudimos hacer andar todos. Así que bueno, chequeen entonces el link en la descripción para el proyecto Link Shortunner. Pruébenlo, lo pueden probar local, no hace falta que lo quieran en un servidor. Si lo van a probar en un

[08:25] servidor, usen el link de HostGator para tener ese descuento especial. Y también chequeen nerdearla, el evento más grande y gratuito de Hispanoamérica, donde va a haber más de 50,000 nerds, incluido yo. O sea, va a haber Pablito Pelado Nerd y 499,999 nert más. Vamos a [música] estar ahí y vamos a estar disfrutando este evento que es regroso. Hace 12, 13 años que están ya. Yo he ido y dado charlas miles de veces más. Seguramente [música] voy a aparecer yo acá. A ver, ¿aparezco,

[08:52] aparezco? No aparezco. Ahí está el pelado ese que estáido ahí. Ese que está ahí. Ese soy yo. No, no salí. No, me sacaron, me sacaron del evento. Ya no estoy más. Así que bueno, chequeen el link. Ahí está. Ese era yo. Así que bueno, eso fue todo por hoy. Espero que hayan aprendido algo nuevo. Suscríbanse para más videos. Denle me gusta si les gustó.

[09:09] Chequen los [música] links en la descripción de Link Short de Ju Gator de Nardearla. Anótense, todo gratuito. Este va a estar gratis el evento [música] presencial si lo están ahí. Si no lo pueden ver online, chequen, chequenlo, está rebueno y denle no me gusta si después de ver todos esos links le yo, Pablito Peloner, me olvidé y no puse ningún link. Me ha pasado la la cantidad de veces que digo, chequé el link y después veo comentarios, Pablo, te olvidaste poner el link.

[09:35] Lo que pasa es que en el momento en que estoy grabando esto hasta que lo tengo que publicar y escribir, me olvido las cosas que tengo que hacer. Me olvido. Esta vez no me voy a olvidar. Voy a poner todos los links en la descripción y denle me gusta si si no lo pongo se los permito. Si no puse los links, denle no me gusta. Está permitido. Esta vez está permitido.
