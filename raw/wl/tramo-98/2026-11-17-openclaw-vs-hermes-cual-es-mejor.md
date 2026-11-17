# Openclaw vs Hermes - Cual es MEJOR?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jmqq0ocRvNo)
- **Canal**: Pelado Nerd
- **Publicado**: 2026-11-17
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 24:53

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Buenas, hoy vamos a hablar de mi experiencia migrando de Open Club a Hermes. Sí, finalmente lo [música] hice. Había millones de comentarios, millones, millones de comentarios de gente diciéndome, [música] "Pablo, ¿por qué no pruebas Hermes? Ahora probas Germes. Es mejor Germes que Open Cloud." No solamente en YouTube, sino en Twitter, también en la vida real. Cuando fui a las diferentes conferencias que fui, todo el mundo decía, "Yo estoy en Germes, es mucho mejor." La gente me lo

[00:25] mostraba, "Mira, es mejor." Finalmente lo hice y te puedo decir que finalmente sí estoy usando Hermes ahora después de un mes. Así que vamos a comparar estas dos herramientas, vamos a ver cuál es mejor y también vamos a hablar un poquito de este proceso de migración, cómo hice para migrar toda esta información que yo tenía, ¿no? Open Clow ahora Hermes. Vamos a volver un poquito para atrás y vamos a tratar de explicar qué es lo que es un agente de inteligencia artificial. No los voy a

[00:48] aburrir mucho con los detalles porque yo ya hice varios videos sobre esto. El video de Open Clow original lo explica, pero lo voy a explicar rápido por si no han visto ese video. Básicamente, un agente de inteligencia artificial es un software que nos permite interactuar con un LLM, con un modelo de inteligencia artificial. Nosotros no podemos interactuar directamente con un LM.

[01:05] Necesitamos sí o sí lo que se llama un harness o un cliente. Y este cliente es este software que del que estoy hablando. Nosotros cuando interactuamos con este cliente podemos usarlo por medio de una aplicación de chat como Telegram o WhatsApp o tal vez una interfaz web. y le mandamos ese mensaje a este software, a este agente. El agente lo que va a hacer es agarrar ese mensaje que nosotros le mandamos y también le va a agregar un poco de memoria, mensajes anteriores, contexto,

[01:27] cosas que nosotros le de damos a la gente antes y va a armar toda esa información y se la va a pasar al LLM. El LLM entonces les va a responder y el agente ahí puede decidir si hacer algo más. No necesariamente va a devolver la la respuesta directamente al usuario, sino que, por ejemplo, la gente le puede decir, "Bueno, necesito información que las traigas de internet." Entonces ahí es donde va a usar, por ejemplo, una tool, una tool para ir y buscar información en internet. Recordemos que

[01:49] el LLM tiene información que está estática, no puede cambiar, solamente se actualiza cuando sale una nueva versión de ese modelo. Entonces, si nosotros necesitamos información actual, sí o sí tenemos que ir a buscarlo a internet. Y eso lo hacemos por medio de las tools.

[02:01] Estas tools no solamente pueden buscar cosas en internet, sino que se pueden conectar, por ejemplo, a una API o leer un correo o miles de otras cosas. Después, una vez que ese agente decidió que ya es hora y tiene toda la información necesaria para responderte, te va a responder y ahí vuelve a ejecutarse el loop nuevamente. Entonces, listo, ya entendemos lo que es un agente. Ahora vamos a nombrar un par de diferentes agentes que existen. Open Cl, Hermes, Cloud, Kimchi, Open Code, Chat

[02:28] GPT, todos esos son agentes de inteligencia artificial que se conectan a un modelo y tienen estas tools, est contexto, esta memoria y todas estas cosas que nos permiten usar la inteligencia artificial de una forma más completa. Tanto OpenCloud como Hermes son proyectos open source que nosotros podemos instalar en nuestro propio hardware y lo podemos conectar a un LLM o a tools que pueden estar en el mismo hardware o pueden estar de un servidor externo. O sea, yo puedo instalar mi

[02:56] aplicación, mi agente OpenCl en mi máquina, en mi Mac o mi Linux, en mi Windows y conectarlo a un modelo que esté corriéndose la misma máquina. O también lo puedo conectar a un modelo externo como Open AI, Antropic o Gemini o el que sea. La instalación de ambos de Open Clow y Hermes es muy similar. En los dos vamos a ejecutar un comando. En el caso de OpenClow es cool- fso/ install/bash. Esto yo lo copio, lo pego en cualquier Mac o en Linux y automáticamente se va a descargar todas

[03:24] las dependencias y va a iniciar un instalador por medio de una terminal. Y en el caso de Windows también lo podemos hacer con una Power Shell. Y en el caso de Hermes es muy muy similar. También tenemos otro instalador, ¿sí? Que podemos copiar y pegar en diferentes sistemas operativos. Luego nos va a levantar una interfaz por medio de la terminal y nos va a llevar por como por un wizard para instalar algunas cosas.

[03:44] En mi experiencia, cuando yo instalé OpenClow hace 7 meses, más o menos en enero, febrero de este año, el software era bastante nuevo, entonces todavía no estaba bien tuneado y tenía que muchos pasos intermedios. Lo probé instalar hace un tiempo y sigue siendo simple, pero es bastante pelado, o sea, no te instala muchas cosas que por un lado es bueno y por otro lado es medio engorroso. Por ejemplo, algo tan simple como para poder buscar en internet por defecto no viene instalado. Entonces,

[04:15] tenés que instalar como un plugin, ya puedes ya sea DADC Go o Brave, que es superfácil, o sea, te permite elegirlo y de ahí podés empezar a buscar en internet. En el caso de Hermes es como mucho más desatendido, te instala todo de una y funciona directamente. Y cuando vos vas y le preguntas algo, directamente ya tiene esa tool, esa herramienta y lo puede hacer sin tener que pedirle nada. Una de las cosas que a mí no me gustó en el caso de Hermes es que Hermes está creado por una empresa

[04:43] que se llama Nouse Research y como que hay una parte en la instalación que te pregunta si tenés una cuenta de y si querés conectar esa para seguir la instalación por medio de la interfaz de ellos. No es difícil saler, decirle que no y seguir por tu lado, pero es algo que me chocó la primera vez que lo instalé. Yo no sabía que esto era así y cuando tuve que ir y ver esa opción como que me me pareció medio raro. Como dije, tanto como Open Clow y Hermes lo podés instalar en tu propio hardware. Lo

[05:10] puedes instalar en una laptop, lo puedes instalar en un servidor que tengas vos corriendo. En el mi caso yo lo instalé en unas Raspberry Pi que tengo corriendo en este en este mueble que está acá, que tengo un video de eso, ya lo voy a poner para que lo veas. En el caso de Hermes, también lo podes instalar en el proveedor de ellos. Ellos mismos te venden como la la posibilidad de correr Open Clone Interface en los servidores, en la infraestructura de Nose Research, la empresa esta. O también podés

[05:33] instalar un VPS y es donde entra el sponsor de este video que es HostGator. Este video está patrocinado por HostGator. Si necesitas un servidor para desplegar las diferentes tipos de aplicaciones que estamos hablando hoy o tal vez querés levantar contenedores o tener simplemente un servidor Linux propio para hacer pruebas, HostGator tiene una línea de BPS Cloud pensada justamente para eso. Ya han visto cómo he venido usando servidores BPS NBME en proyectos anteriores. Podes elegir una

[05:56] instalación limpia con Ubuntu, Alma Linux o Rocky Linux. entrar por sh con acceso 100% root e instalar lo que quieras sin quedar atado un panel de administración. Puedes usarla para docker, una IPI, una base de datos o crear automatizaciones para cualquier proyecto [música] en el que estés trabajando. No solo eso, sino que HostGator también ofrece máquinas con software ya instalado, por ejemplo, Canel, N8N, [música] WordPress y hasta Open Cloud.

[06:18] Impresionante. Los servidores están en Latinoamérica, usan storage [música] en EBME y procesadores AMD Epic. Además, incluyen IP dedicada y transferencia de datos ilimitada. Hay planes desde máquinas chicas para laboratorios o proyectos personales hasta configuraciones con más CPU, memoria y almacenamiento para aplicaciones que necesitan crecer. Si querés probar la VPS de HostGator, te dejo el link en la descripción. Entrando desde ahí vas a poder ver un discuento especial para

[06:41] todos los planes vigentes sin usar ningún código. Los precios son realmente super accesibles. Gracias HostGator por patrocinar este canal. Bien, entonces ya tenemos nuestro Open Clow y nuestro Hermes instalado. Y ahora lo que tenemos que hacer es configurar el modelo que vamos a usar. Como dije, ambos agentes se pueden configurar para conectarse a cualquier modelo. Son todos compatibles con Open AI, con Olama de una forma local o con Antropic. En el caso Open AI, ambos tienen la posibilidad de

[07:08] configurar con tu cuenta de Chat GPT. Eso está bueno porque si estás pagando la suscripción de $20 por mes de chat GPT, directamente lo conectas a tu cuenta y no te consume tokens extra, o sea, no tenés que pagar por una API key para hacer eh inferencia, digamos. Este video no está patrocinado por PNI porque tiene Codex. Codex es un agente para codear. ¿Qué quiere decir esto? Nosotros podemos usar Hermes y y OpenCl para codear. Sí, por supuesto. Ellos tienen acceso a este modelo y pueden pedirle eh

[07:36] código, pero no son agentes de codeo. Eso qué quiere decir, que no tienen todas esas buenas prácticas que pueden llegar a tener un agente de code como Codex, por ejemplo. Entonces, ahí es donde usas ACPs, ¿sí? que básicamente es una forma de delegarle el trabajo a Codex. Esto yo ya hice un video sobre SP, también lo voy a poner acá. Y ambos se pueden conectar a este plugin y de esta forma pasarle la tarea de code a un otro binario en el caso de Codex o Kimchi o lo que sea. En el caso de la

[08:07] estructura de archivos también es muy similar. Ambos te crean un directorio, ¿sí?, que se llama OpenClow. En el caso de OpenClow tenemos el directorio Workspace donde tenemos todos los archivos. Si tenemos algunos archivos como memory MD, Harbit, eh, y user.m y Soul.md. En el caso de OpenCl es como un poco más eh separado, tenés mucha información en diferentes archivos. En cambio, en el caso de Hermes, solamente tenés el archivo soul.md, ¿sí? Y no tenés agents.md o user.md, como que todo

[08:37] va en un solo archivo, pero sí ambos tienen algo interesante que es el el directorio con la memoria. Sí. Entonces vos tenés en el caso de Hermes es Memories y en el caso de OpenClow es el directorio Memory. Ambos básicamente lo que hacen es que cuando le decís que recuerde algo crea un archivo punmd en ese directorio. En el caso de los dashboards, eh, los dos son bastante completos y bastante parecidos. Cuando instalá lo podés configurar para que tenga una interfaz web. Creo que por

[09:01] defecto no está habilitado para entrar desde afuera, sí o si tienes que usar local host, pero le puedes decir a la gente directamente por medio de chat de de WhatsApp o de chat que te active la la interfaz web. Eso es lo que yo hice.

[09:13] En los dos funcionó bien. Y en los dos tenemos básicamente muy parecidos. Tenemos eh una parte donde son los canales. Como dije, los canales es la forma en la que yo me comunico con mi agente, que puede ser WhatsApp, puede ser Telegram o bueno, Discord o millones. Y después tenemos los modelos que lo puedes configurar para que se conecte a y use estos modelos Google Kimchi o Lama o Peni. Eh, los dos tienen MCP. Acá los dos son muy parecidos, siendo sincero. Y esto es algo totalmente estético. A mí no me gusta

[09:44] mucho eh el look and feel que tiene Hermes. Eh, se puede cambiar, pero es medio como que no sé, medio medio raro para mí. Me costó un poco acostumbrarme, ¿sí? Pero los dos tienen lo que son eh las sesiones, ¿sí? Donde yo puedo ver las diferentes sesiones que voy abriendo. ¿Cuándo qué qué es lo que es una sesión? Por ejemplo, si yo la hablo por WhatsApp, me voy a crear una sesión de WhatsApp y va a guardar toda la información ahí. Y eh también puedes crear una sesión eh extra por por eh por

[10:09] vía chat o por terminal. Y esto algo interesante, en el caso de Hermes, el chat por defecto es una terminal. O sea, si vos te vas acá a la interfaz de Hermes vía web, te va a abrir una terminal y podés eh hablarle por medio de esa terminal. En el caso de Open Clente.

[10:24] Básicamente vas acá a la izquierda y tenés todos los eh las sesiones. Y como puedes ver son sesiones por medio del navegador y es un poco tal vez un poco más amigable. Una cosa interesante con respecto a Hermes, como dije al principio, te instala todo de una y esto es algo que eh me sorprendió. por ejemplo, te instala un navegador y lo usa sin que yo nunca se lo haya pedido.

[10:45] O sea, yo a veces le he pedido que que vaya y busque algo en internet y va y yo veo hago un PS Fax, digamos, y abre un Chrome, digamos, y puede ver la pantalla de ese Chrome y y hacerlo. En el caso de Open Chrome, me acuerdo que eso me costó muchísimo hacerlo andar. No sé si en las últimas versiones ya lo tiene, soy sincero. Y y y tengan en cuenta que salen versiones de esto todos los días, literalmente. Entonces, es muy es muy difícil que yo te estoy hablando de algo ahora y tal vez cuando ves el video en 5

[11:10] días eh ya lo tienen. Entonces, tengan en cuenta que lo que estoy hablando es en la versión que yo tengo instalada en este momento, que Hermes es la 0.221 y en el caso de Open Cloud 202609, ¿sí?, O sea, de septiembre, que fue la que instalé en ese momento. Entonces, tengan en cuenta que puede ahora puede ser diferente, pero en el caso de OpenCl por defecto no te instala un navegadora, entonces cuando querés que busque algo, tenés que poner un plugin aparte y configurarlo y todo eso para que

[11:35] funcione. En el caso de Hermes anduvo de una. Otra cosa más a tener en cuenta con estos dos agentes es el tema de los skills. Los skills es algo que está bueno. Yo ya hablé en el video de esto de Open Clock, que básicamente es una receta para hacer cosas. ¿Qué quiere decir? Por ejemplo, yo le puedo decir, quiero que me mandés noticias de tecnología todos los días de la mañana.

[11:51] Entonces, lo que yo haría sería crear un Chromejob que se ejecute todo desde a la mañana y puedo crear un skill. Ese skill básicamente es un archivo MD que dice, "Para buscar noticias tenés que leer este diario, resumirlas y después escribírmelas." Hay una tienda de skills, un marketplace de gente que crea estos skills y vos básicamente te lo descargas. La realidad es que hace 6 meses yo iba, me fijaba y buscaba una skill y hace mucho tiempo que ya directamente no busco skills y

[12:16] simplemente le digo a mi agente que lo haga y y mi agente en el caso de OpenCl escribe su propio skill en el momento y en el caso de Hermes lo que he notado es que escribe un skill cada vez que yo le pido algo que puede darse cuenta que sea algo repetitivo. Te te doy un ejemplo.

[12:34] Hace un tiempo le dije, "Búscame información sobre unos switch para que yo apague y prenda las luces automáticamente." En el caso de Hermes, automáticamente creó como un archivo skill que le dice cómo buscar información con respecto a automatización de la casa y la próxima vez que yo le he preguntado algo de eso, reusó ese skill. Eso es algo que me sorprendió bastante. Entonces, en el caso de Hermes, vas a ver que tenés una carpeta con muchísimos skills y está creándolas y modificándolas todo el

[12:59] tiempo. En el caso de Open Cloud, solamente esas skills se crean o se usan cuando vos le pedís que cree una skill o vos o vos te descargas un skill. Bueno, ¿cómo fue la migración de Open Club a Hermes? En realidad fue bastante simple.

[13:12] Cuando instalas Hermes automáticamente te detecta que tenés Open Club corriendo y te pregunta si lo querés importar. le puse que sí y básicamente me copió eh toda la configuración, no toda la configuración, pero la mayoría pudo detectar todos los plugins, pudo detectar eh los Chromejobs y también pude detectar la configuración de los modelos que yo tenía. Una cosa interesante es que no copió los secretos. Hay una opción que vos le podés decir acá, migrate secret y eso lo que hace básicamente es copiar esa

[13:40] configuración con con la API key, por ejemplo, para conectarse a los diferentes proveedores de modelos y que funcionen. Te digo la verdad, a mí no me anduvo. Tuve que ir y configurarlo de nuevo. No sé si era porque la configuración que yo tenía OpenClot tal vez era muy vieja y no era el estándar para lo que espera Hermes ahora, pero básicamente lo tuve que volver a configurar. No fue tan difícil.

[14:00] Obviamente fui leí la configuración de OpenCloud, busqué lo las variables de entorno y las copié eh en un archivito y nada más. En el caso de WhatsApp sí lo tuve que reautenticar. Tuve que básicamente crear un nuevo QR. Eso lo hice con el teléfono, fue superfácil, pero después de eso anduvo perfecto. Una cosa que sí me noté que era mucho más fácil es pedirle cosas para que se autoconfigure. Funcionaba bien de una.

[14:23] De nuevo, tengan en cuenta que OpenCla lo vengo usando hace 7 meses y muchas de las cosas que yo hice en su en un principio tal vez no estaban bien documentadas y tal vez ahora es un poco más diferente, pero yo cuando hice esta migración me llevó nada 5 o 10 minutos y de ahí en adelante siempre fui pidiéndole cosas por medio de mensajes de audio en WhatsApp. Entonces, lo primero que hizo fue como transcribir ese audio. Entonces, como que puso este iconito de un micrófono y puso lo que yo

[14:47] le dije, ¿puedes averiguar si es posible mandar paquetes de una tienda UPS, bla, bla. Por cierto, una charla en la Cubc, impresionante. Entonces, fíjate que ahí no más empezó a escribirme su pensamiento. Esto es algo que por defecto Open Cloud no lo tiene y Hermes sí, o sea, me escribe lo que va haciendo y lo va editando. Entonces, no me manda muchos mensajes. A veces sí va mandando mensajes cuando pasa mucho tiempo entre cada uno de esos de esos cosas que está haciendo, pero fíjate que está rebueno

[15:13] eso, poder ver lo que está haciendo. Esto se puede desactivar, pero solamente se puede desactivar de forma global. O sea, que si yo desactivo esto a Laura, mi mi señora, cuando le mando un mensaje, no le va a mostrar esto, que es lo que yo quería hacer. Pero si quiero activarlo, se lo va a activar para los dos. Eso es algo que estaría bueno cambiar. No sé si se puede hacer ahora, pero por ejemplo si ella le habla le va a mostrar todas estas todo este pensamiento y tal vez a ella no entiende

[15:36] lo que está pasando. Tampoco el fin del mundo, pero algo para tener en cuenta. Fíjate que lo primero que hizo fue listar las skills y encontró una que se llama travel planning, que de nuevo no es una skill que está en el marketplace, sino una skill que creó Hermes automáticamente cuando hablamos de planear un un viaje, en este caso de la Cubecon, y ahí delegó dos tareas. Eh, una fue buscar se puede mandar al PS y la otra es a buscar la dirección.

[16:00] Entonces ahí no más me respondió. Y fíjate, otra cosa interesante es que Hermes me responde con un quote a cada uno de mis mensajes. Cada vez que yo le mando un mensaje, me hace quote, me responde a ese mensaje y me escribe.

[16:11] Fíjate que me escribió un texto. En el caso de Hermes no tiene eh el momento que estoy escribiendo esto, no tiene la forma de mandarte un audio o responderte en un audio. Sí, sí puede mandar audios, pero como que no está configurable para que cuando yo le mando un audio me responda con un audio, cosa que en Open Cloud sí se podía hacer. A mí igual eso no me molesta. Yo prefiero que me escriba un texto, pero hay pocas veces donde quiero hablar con germes y lo podés hacer. Ya les voy a mostrar cómo.

[16:37] Fíjate que tardó un rato y esto es algo interesante y es algo que he notado con respecto a OpenClub versus Hermes. Hermes es más lento, ¿si? O por lo menos es más lento por defecto. Tal vez se puede configurar que piense un poco menos, pero sí noto que a veces le pido algunas tareas y tarda 3, 4, 5 minutos.

[16:55] Obviamente las tareas cortas no, pero si es algo como esto puede tardar 3 cu 5 minutos. En el caso de Open Club, eh, yo notaba que era un poco más rápido, pero era silencioso. Eso, ¿qué quiere decir? que yo le mandaba una tarea a OpenCloud y yo no sabía qué estaba pasando hasta 5 minutos después cuando me respondiera.

[17:11] En el caso de Hermes, yo veía que estaba trabajando y me mostraba esto. Acá, por ejemplo, le mandé para que eh para que me vea unas imágenes. Fíjate que looking at the image, esto anduvo de una, puede mirar imágenes. Ahí le dije, eh, fíjate si tenés acceso al calendario ta ta ta ta, para agregar los vuelos que lo que tengas para el viaje.

[17:30] Nuevamente buscó el skill Google Calendar, le dio un archivo así que tenía y fíjate que cuando tardó mucho tiempo y miraate mandé a las 1423, me respondió ahí no más y tardó 3 minutos más, sí, en simplemente ver el coso del calendario. Eso es bastante. Y como veía que estaba tardando mucho, me mandó un mensaje diciendo working. Sí, 3 minutes.

[17:51] Como que estaba trabajando. Entonces, fíjate que tardó 4 minutos, sí, en encontrar todos mis eh vuelos. y respondió bien. Tal vez tardó más tiempo, pero tiene el pensamiento alto, entonces pudo encontrar la información perfecta y no alucinó. Eso está bueno.

[18:04] Fíjate acá cuando lo estaba confirmando por primera vez, yo le mandaba, "Podemos dejar habilitado el dashboard para que corra siempre de alguna forma que esté disponible para la Lam, pum, y lo hizo. Tardó más de 6 minutos sin hacerlo. A ver, a ver, probando el audio, ¿cómo andás? ¿Todo bien? Respondemme con el clima de Mendoza." Sí. Y ahí sí fue que generó el audio cuando yo le dije que lo hiciera, pero por defecto no me responde. Y aparte también me escribió el mensaje. Le dije, por ejemplo, veo

[18:28] que me respondiste con un acento de inglés, intenté hablar español, eso se puede arreglar. Y ahí lo hizo. Y mira qué interesante, como es la primera vez que hago algo, le mandé dos audios uno detrás del otro, me dice, "Che, es la primera vez que me haces esto de mandar dos tareas juntas. ¿Qué queres hacer?

[18:43] que cada vez que yo reciba un mensaje cuando estoy trabajando, haga un steer, o sea, reciba ese mensaje y cambie mi pensamiento o que lo encole para la próxima tarea. Y yo le respondí barrabcq. Sí, fíjate que esto es como un comando, entonces se configuró automáticamente para que yo le pueda mandar muchos mensajes y básicamente cada un mensaje se encola, no hace el steer, o sea, no pera su no para su pensamiento para seguir el eh aceptar el cambio que le acabo de hacer. Esto es mi

[19:10] configuración. Obviamente lo podés configurar como vos quieras. Fíjate como yo acá simplemente le seguía mandando audios de todo lo que quería hacer y ahí le estaba diciendo, "Bueno, hacete un archivito para guardar la migración."

[19:19] Entonces, yo como que le iba diciendo las cosas que estaba viendo. Una cosa que estuvo bueno también eh acá es que cuando le pedí algo de que busque un mail, me respondió como con una encuesta, o sea, me dio las dos opciones y me respondió una encuesta donde yo puedo votar cuál es la la respuesta que quiero y hace eso. Eso es algo que OpenCloud tampoco hacía. Otra cosa que también está buena es en el caso de cuando piensa que va a ser un comando que puede ser peligroso y me pregunta si

[19:44] quiere aprobar eh para esa sesión todos los los comandos o aprobar always. Sí. Entonces le puse barra approve always. Entonces cada vez que quiera hacer un comando que puede llegar a ser peligroso, lo va a hacer. Esta es mi configuración nuevamente. ¿Por qué?

[19:58] Porque yo tengo corriendo Hermes y y Open Cloud en un hardware dedicado, no tiene nada mío ahí, entonces tiene rienda suelta para hacer lo que quiera. Una cosa más, para que no quería no quería irme es mostrar el tema del cliente de eh escritorio, que yo creo que tanto el cliente de escritorio como la interfaz web está mucho más pulida la de Germes en comparación con la doppen club nuevamente en el momento que estoy haciendo este video y la verdad que funciona muy bien. Tampoco le estamos

[20:27] pidiendo mucho, es fácil. Sí, lo que vamos a hacer, pero eh una cosa que está buena, que a mí me sirve muchas veces es el tema de hablar y por defecto tiene dos. Yo puedo hablar por germes y básicamente lo que va a hacer es escuchar mi voz, transcribirlo, escribir su mensaje y después eh generar un archivo de audio. Esto lo podemos probar ahora.

[20:48] Hola, Lupe, ¿cómo estás? Estoy grabando un video. Saludar a la gente. Hola a todos, soy Lupe, la asistente de Pablo. Les mando un saludo enorme y espero que estén disfrutando el video. Bastante lento, ¿eh? Y no sé si notaron que entre Soin Lupe, el asistente de Pablo, pausó un rato y le saludó, le mandó un saludo enorme. Yo me imagino que ahí lo que hizo fue generar dos audios separados. para poder mandar el primer audio más rápido. Entonces, por eso se pausó. Esto funciona y esto es

[21:24] gratis. Sí, pero también podés usar, y esto está bueno, puedes usar las API key de Chat GPT de Open AI y usar eh como un plugin que se llama GPT Live, que es mucho más rápido. Ahí los voy a mostrar. Y aparte puedes elegir la configuración, le puedes poner un acento y todo que es el que yo uso. Mira. Hola Lupe, ¿cómo estás? Estoy grabando un video a ver saludar a la gente de nuevo con este nuevo plugin.

[21:48] Hola a todos, soy Lupe, el asistente de Pablo. Un gusto saludarlos otra vez y espero que estén pasando muy buen momento en el video. Bueno, notaron que es no solamente mucho más rápido, mucho mejor, fue facilísimo usarlo y aparte eh es mucho más natural.

[22:06] ¿Por qué? porque está usando básicamente este modelo que está diseñado para charlas en el momento. Vamos a darle algo más difícil. Voy a decir, por ejemplo, que porque ahí fue como una charla que está en el modelo, no tuvo que usar una herramienta. O sea, la respuesta se la trajo del modelo. No le dije que buscara algo en internet. Vamos a probar eso. Lupe, ¿podrías buscar en internet quién es el presidente de Argentina en este momento?

[22:29] Vale, lo busco. Y de paso también buscar quién es el último campeón. Mundial de fútbol. Okay, ya encontré lo del presidente. Sigo con lo del campeón mundial de fútbol. Mira, el presidente de Argentina es Javier Miley y el último campeón mundial de fútbol es España. Le ganó 1 a0 a Argentina en la final de 2026 en el alargue. Dolió, dolió. Pero bueno, increíble, ¿no?

[23:04] Increíble lo bien que funcionó y lo rápido que fue. O sea, fue y buscó algo en internet y automáticamente generó el audio y fue supernal. Fíjate que yo le mandé dos cosas y como que se acordó que después tenía que responder los dos juntas. Armó una oración con las dos cosas. Esto está buenísimo. Y a ver, fuera del chiste y algo que que acá veníamos haciendo hace mucho tiempo en el canal, yo tenía Lupe que lo hablaba y esto era con con el la edición, básicamente era un audio que yo generaba

[23:30] después y ahora esto es una charla natural. Qué qué increíble. Hemos llegado a este momento y la verdad que se siente muy bien, funciona muy bien, así que estoy super contontento con Hermes y esto es algo que Open Cloud no andaba muy bien, yo lo he probado y no andaba tan bien, pero bueno, tal vez ahora mejora un poco más. Y eso fue todo por hoy. Espero que les haya gustado el video, espero que hayan aprendido algo nuevo. Espero que prueben, Hermes, obviamente usen el link que está en la

[23:54] descripción si lo quieren probar en Hostgator, si no tienen un hardware para probarlo. Si no lo pueden probar local o o open club, prueben cualquiera de los dos. La verdad que funciona muy bien y eso fue todo por hoy. Espero que hayan aprendido alguno. Suscríbanse para más videos. Denle me gusta si les [música] gustó. Doble doble porque tenemos open cl y tenemos Hermes. ¿Cuál va a ser el que va cuál cuál va a ser? [música] Germes. Ganó Germes.

[24:16] Dale no me gusta. Si mirar si después de buscar este video decí, "Bueno, a ver, me voy a instalar Germes. Ahora vas y te metés a germes.com, ah, voy a instalar Germes." A ver acá. E, voy a verificarme. Qué raro. Germ París está restringida la tienda oficial de Germes. Ahí está.

[24:37] No, no me deja. Estoy en Argentina, no puedo comprar GMES. Tengo culpa de Javier M que estaba ahí, me habló.
