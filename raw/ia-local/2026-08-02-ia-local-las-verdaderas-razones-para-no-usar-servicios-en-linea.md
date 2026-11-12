# UNKNOWN

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=96etD_ZHrmk)
- **Canal**: UNKNOWN
- **Publicado**: UNKNOWN
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 00:00

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En este vídeo vamos a tratar un tema de una forma un poco más informal de lo que de por sí comúnmente los tratamos, pero simplemente para explicar algunos motivos de los cuales por qué algunas personas prefieren ejecutar IA generativa de manera local en su PC, dado que puede ser que esto lo hacemos porque es gratis o porque hay privacidad. Sin embargo, gratis 100% pues tampoco es, pero por lo menos muchísimo más barato que pagar por servicios en línea algunas veces sí, otras no. Y privacidad pues no significa

[00:32] que es la única forma en la que se pueda conseguir 100% y no significa que en todos los casos la necesitemos. Agradecimiento especial en este caso a Juan David que dejó este comentario hace aproximadamente 1 hora en el vídeo que tenemos sobre llama C++ como instalaría local y modelos GGUF en tu PC. En este vídeo hablamos de cómo preparar llama C++, cómo descargarlo, dónde descargar los modelos y cómo ejecutarlos específicamente modelos de lenguaje pues para trabajar en local. Sin embargo,

[01:05] esto de local pues es relativo. ¿En qué sentido? Puedo tener un VPS y en y en mi VPS de forma local quiero ejecutar llama C++. Local no significa literalmente en mi casa, significa local en este dispositivo. Así que de todos modos es algo a tener en cuenta, ¿no? Eh muy bien, aquí lo que nos pregunta Juan David es, "Gente, ¿qué beneficios trae aparte de la privacidad? Es decir, ¿es realmente útil? Yo programo pero no hago vibe coding, solo uso la IA para cuando se me olvidan conceptos y no leer

[01:38] documentación. ¿Alguien logró desarrollar algo muy top?" Bueno, primero mencionar esto que se me hace muy típico de eh y si puedes programar bien con IA, ¿cuál es el límite de que llega la IA? No, es que el límite no lo no lo da la IA, lo da quien está usando la IA. Dejar a la IA por sí sola no hace absolutamente nada. Entra a chat.openai.com y no hagas nada tú y no hace nada la IA. Entonces, puede ser una muy buena herramienta, hay mejores herramientas, hay peores, pero lo que sí

[02:05] es que es simplemente una herramienta que nos puede ayudar a trabajar o algunas veces perjudicar en el trabajo, pero de igual forma no es que el límite a donde podemos llegar es dado por la IA. Muy bien, una vez aclarado eso, aquí yo le puse exactamente cuáles son mis puntos y en el orden en el que yo los considero relevantes para mí de por qué es que comúnmente para prácticamente todo uso inteligencia artificial generativa en local. Cada quien tiene sus tipos de necesidades, en mi caso con

[02:35] los modelos de lenguaje pequeños, con los modelos de generación de imágenes, audio, vídeo, lo que sea, medianamente pequeños, me basta y hasta me sobra. Tengo múltiples GPUs, tengo dos RTX 3060 de 12 GB, una RTX 5050 de 8 GB, una, no, dos RX 6600 de 8 GB, una RX 590 de 8 GB, una RX 580 de 8 GB, una 1050 TI y una 1650. Prácticamente todo el día esas GPUs están haciendo cosas en distintas PCs, desde generación de contenidos, clasificación de contenidos, eh uso de herramientas,

[03:13] asistencia para código, porque la IA no programa, la IA te ayuda a programar en todo caso. Cada quien tiene necesidades diferentes y quizá un modelo pequeño no le sea suficiente, pero cuando sí nos son suficientes, ¿por qué los usamos en local y no en línea? Y en mi caso no es solo por gratis o por privacidad. De hecho, lo puse entre comillas, pues porque, bueno, lo de gratis está más entre comillas que lo de privacidad, eso sí es más una forma más privada ejecutándolo nosotros. Sin embargo, pues

[03:45] no son las razones principales necesariamente. En mi caso, estas son las razones en el orden de mis prioridades. Lo primero, disponibilidad, siempre disponible, no se cae. Si yo tengo un modelo descargado, en el momento en el que yo lo quiero utilizar, lo puedo utilizar, a excepción de si se me va la luz, pero pues es en ese caso no tengo acceso a nada, ¿no? Pero mientras esté en mi PC, siempre está disponible. El día de ayer intenté entrar a chat.gpt.com y estuvo caído por como media hora, por

[04:13] lo menos que a mí no me cargaba. La API de Cloud se cae seguido. Hace rato estuve haciendo cambios a tube.nichonauta.com y a writer.nichonauta.com, porque en ambos casos estoy usando servicios en línea. Preparo mis códigos para dichos servicios, API de OpenAI, de Deep Infra y de Value Server. Al mes, a los dos meses, sin yo mover absolutamente nada de mi código, este modelo ya no está disponible. Tienes que cambiar a este otro modelo. Tengo que modificar mi código de un servicio que

[04:44] ya estaba listo para funcionar y seguramente me doy cuenta ya cuando está fallando, cuando los clientes ya me están reclamando. Y además no basta únicamente con ponerme a cambiar el modelo, tengo que ver por cuál cambiarlo, cuál sigue teniendo un precio que merece la pena y que el modelo siga funcionando para lo que yo requiero.

[05:02] Pero además no solo basta con eso, tengo que volver a adaptar distintas estrategias de cómo se ejecutan los prompts, de qué dicen los prompts y todo ello para que el resultado sea el esperado. No es simplemente cambias un modelo por otro y sigue funcionando exactamente igual. Entonces, el primer punto es disponibilidad. Tal como digo, precisamente hace un rato estuve eh corrigiendo errores de esos dos pequeños SAS que tenemos para algunos clientes, sin yo haber hecho ningún cambio en el

[05:30] código, simplemente porque sí, cada cierto tiempo tengo que corregir cosas o porque actualizaron el modelo de TTS de Google o porque actualizaron el modelo de TTS de OpenAI, que ahora es en el que estamos, porque el de Google lo habían actualizado. ¿Y qué sucede? Que el de OpenAI ya van tres veces es lo actualizan. Se sigue llamando exactamente igual, pero funciona diferente. Ahora, eh narra mejor que antes, ahora es más conversacional, ahora quién sabe qué, ahora suena más natural. No tienes que hacer nada. Las

[05:59] actualizaciones, las mejoras están ya para el nombre actual del modelo. No tienes que cambiar nada en tu código. Eso no es positivo, eso me es negativo. Yo tenía unos prompts para un tipo de eh de narración estilo documental y ahora suena como una persona platicando conmigo, que a lo mejor está mejor en ese caso de uso, sí, no es el que yo requería. Entonces, esto vamos a hilarlo con el siguiente punto, consistencia.

[06:25] Diario va a funcionar exactamente igual mientras yo no cambie nada. Si hacemos usos extremadamente masivos de inteligencia artificial generativa, ya tenemos hasta nuestras automatizaciones y demás de cómo es que va a estar funcionando cada cosa y que de la nada me cambien la versión, me cambien el cómo funciona el modelo o se les caiga el servicio o lo que sea, es algo que no nos deberíamos de permitir, por lo menos bajo mi opinión. Lo siguiente es sin límites. De nada me sirve tener mucho

[06:56] dinero en el banco, eso es una exageración, pero para entender el punto, si de igual forma dentro de una cuenta de Anthropic o de OpenAI no me van a dejar hacer todas esas consultas el mismo día. Es decir, aquí el problema no está siendo el precio. Imaginemos que tenemos dinero ilimitado, okay, de igual forma, si necesito hacer un millón de solicitudes en un día, a lo mejor no me lo permiten en una sola cuenta, a lo mejor tengo que tener distintas cuentas, a lo mejor tengo que tener distintas

[07:23] IPs. No estoy diciendo que esto sea lo típico, porque para empezar con modelos en local, a lo mejor no puedo hacer tantas solicitudes, pues sencillamente porque de aquí a que se terminen de hacer todas, pues pasó más de un día, pero para cosas como generación de imágenes que a veces requiero hacer 20,000 imágenes en un día, para videos de YouTube, para páginas web, sus los artículos y demás, pues de nada me sirve que el modelo sea barato o no al ser ejecutado en línea, que sea bueno o no,

[07:48] si no lo puedo utilizar, si solo me permite generar una imagen por minuto y máximo 100 al día y yo necesito 2000 imágenes, pues ahí tenemos un problema. Así que aunque tuviera un millón de dólares en el banco, en el banco, ninguna API me dejará usar todo eso en un mismo día. Es una exageración, pero para que se entienda el punto. Lo siguiente, personalización. ¿Qué sucede con los modelos en línea? Y más cuando estamos dentro de una suscripción. Si estoy en chat GPT, puedo usar algunos

[08:18] modelos GPT, así es, bajo el system prompt que ellos le pusieron, bajo las herramientas que ellos le pusieron, bajo el entrenamiento que ellos le hicieron. No puedo hacer fine tuning, no puedo modificar temperatura del modelo, tokens máximos de razonamiento, no puedo modificar un montón de cosas que cuando tengo un modelo de lenguaje local, aunque sea más pequeñito, me es más versátil. No tiene la misma inteligencia total, pero a pesar de ello se puede usar para más cosas, o sea, se ajusto

[08:49] las cosas a mis necesidades, no lo que un servicio en línea quiera. Lo siguiente, y otro punto también muy importante en todo esto, pues es hasta por simple gusto. Por más que un modelo en línea, imaginemos, que hasta me fuese más barato, que hasta me prometieran 100% privacidad, que fuera más inteligente, más rápido y si yo quiero ejecutarlo en local, [risas] también ese puede ser un punto, ¿no? Que sencillamente lo ejecutamos en local porque queremos. Aquí no es de los puntos más relevantes, estamos yendo en

[09:19] orden, con lo cual este pues ya es un punto menos relevante y después uno aún menos relevante en mi caso es la privacidad. Es relevante, sí, pero en servicios en línea también depende de qué tipo de servicio en línea, depende de cómo sea ejecutado y todo. Puedo pagar por un VPS con una GPU, con un VPN que encripte todos los datos hasta llegar a mi PC. Y aunque se esté ejecutando en línea, a lo mejor hasta sería más privado que instalar programas raros en mi PC, de ejecutar cosas en

[09:48] local. Ahí depende, ¿no? Pero en mi caso no es una de las razones más más importantes. Aunque por lo menos lo es más que el precio. Porque el precio lo tengo hasta el final. Sí, el ser, entre comillas, gratis el ejecutarlo en nuestra PC está muy bien y es otro punto a tener en cuenta. Pero en mi caso no es el más importante. No es por precio.

[10:07] Aunque de igual forma, aunque este lo tenga hasta el final, sigue siendo una gran diferencia comparado con ejecutar modelos en línea. Volvemos al caso. Con una simple RTX 3060 de 12 GB puedo generar 20,000 imágenes en un día. Por ejemplo, la GPU la compré hace tiempo, hace año y medio. Me costó barata por ser gama baja y de hace tres generaciones. Ahora solo me consume algo de electricidad, muy poca. El generar todas esas imágenes a lo mejor en electricidad me cuesta $3. El generar

[10:37] todas esas imágenes en línea a lo mejor me cuesta $300. Quizás sí, con un modelo que genera más calidad, si necesito mucho detalle y cosas muy específicas. Pero y si no necesito algo tan específico, si de todos modos me es más que suficiente para el 99% de las imágenes, los modelos pequeños que puedo ejecutar en mi PC.

[10:57] Estoy pagando más al día por usar ese modelo de generación de imágenes en línea en vez de directamente comprar una GPU. Y además estoy desaprovechando quizás ciertas funcionalidades que estoy pagando por ese modelo en línea, por esas capacidades que a lo mejor ni llego a usar. A lo mejor me permite hacer todo un folleto, todo un periódico, pero a lo mejor yo necesito una imagen de un perro saltando. Entonces, en vez de estar gastando lo que cuesta una GPU al día, pues mejor lo tengo en local. ¿Por qué

[11:27] estoy mencionando esto? Porque aquí los estoy organizando en mi caso de mi punto más relevante hacia el menos relevante. Y a pesar de que al final tengo lo de, entre comillas, ser gratis, aún así sigue siendo un punto bastante relevante de acuerdo a la cantidad de uso que demos a inteligencia artificial generativa. Quizá no lo ponemos hasta abajo, quizá nos parece más prioritario tener en cuenta la comparación que hice, pero de igual forma todos estos son los puntos importantes de por qué en mi caso

[11:57] uso inteligencia artificial generativa en local. Si quieres seguir viendo vídeos, simplemente da like y suscríbete.
