# Cómo crear software que de verdad aporte valor

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WIriMsfscYw)
- **Canal**: Factoria de Agentes
- **Publicado**: 2026-11-02
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:44

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Quieres crear software, pero te han dicho que sin ser ingeniero, olvídate? Eso ha cambiado. Con la IA puedes construir tu primera aplicación aunque no hayas programado nunca. Pero ojo, que sea posible no quiere decir que sea fácil. Lo difícil ya no es escribir el código. Lo difícil es construir algo que funcione, que sea seguro y que alguien quiera usar. En esta serie te cuento, paso a paso, qué puedes hacer para reducir el riesgo y sacar tu primer MVP, la versión más pequeña de tu producto

[00:31] que ya resuelve un problema real. Son 12 ideas y empezamos por la más importante, que no tiene nada que ver con el código. Antes de abrir ninguna herramienta, hazte una pregunta. ¿Qué dolor estoy resolviendo? No qué app quiero hacer, sino qué problema tiene alguien y cuánto le molesta. Si el problema no duele, nadie va a dejar lo que ya usa para probar tu aplicación. Y si quieres cobrar, hazte una segunda pregunta. ¿Por qué alguien me pagaría a mí? Esa es tu ventaja competitiva. Puede ser que lo

[01:08] hagas más rápido, más barato, más fácil o para un nicho que nadie atiende. Escríbelo en una frase. [música] Ayudo a este tipo de persona a resolver este problema mejor que la alternativa porque si no puedes terminar esa frase, todavía no es momento de programar. Y un truco, [música] habla con cinco personas que tengan ese problema antes de escribir una sola línea.

[01:33] [música] Para construir, usa modelos frontera, los mejores del momento. Para mí, la mejor opción hoy es Anthropic con Claude. La segunda, Codex de OpenAI. Y hay buenas alternativas, muchas de pesos abiertos y más baratas. Química 3 de Moonshot, DeepSeek v4, GLM de Z.ai o Qwen de Alibaba con su QwenCode. ¿Por qué importa tanto el modelo? Porque un buen modelo no solo escribe código que funciona, conoce los patrones habituales, detecta errores comunes y, si se lo pides, tiene en cuenta la

[02:10] seguridad. Bien guiado, te ayuda a tener un código más limpio y más seguro que el que escribirías tú solo empezando de cero. Eso sí, los modelos cambian cada pocos meses. Lo que no cambia es el método y de eso va el resto de la serie.

[02:29] Antes de pedir código, crea el diseño en imágenes. Puedes usar un generador de imágenes como el de chat GPT o Cloud Design, la herramienta de Anthropic para prototipos. Pídele las pantallas principales, la de inicio, la de registro y la que resuelve el problema.

[02:46] Así ves tu producto antes de que exista y es mucho más barato cambiar una imagen que reescribir una aplicación. Enséñaselo a posibles usuarios. ¿Lo entienden? ¿Lo usarían? Cuando tengas un diseño que te guste, pásaselo a la IA que programa como referencia. Ya no tiene que adivinar cómo quieres que se vea, tiene un objetivo claro.

[03:12] El siguiente paso es darle buenas costumbres a tu IA. Para eso existen las skills, paquetes de instrucciones que la gente carga cuando los necesita. Una de las más conocidas es Superpowers de Jessie Vincent. Trae habilidades para hacer una lluvia de ideas antes de programar, escribir un plan, trabajar con los tests primero, depurar y revisar código. Mi consejo, no las instales a ciegas, léelas. Si entiendes qué hace cada una, aprendes cómo trabaja un buen equipo de software y sabrás cuándo pedir

[03:43] cada cosa. Y en cada proyecto, díselo claro a tu IA, sigue las mejores prácticas y ten en cuenta la seguridad. Parece obvio, pero si no lo pides, no siempre lo hace. [música] Nunca sale el código perfecto a la primera, ni con la mejoría, ni con el mejor ingeniero. ¿Por qué? Primero, porque el modelo no está en tu cabeza.

[04:09] Lo que no le has dicho, lo rellena con suposiciones. Segundo, porque tú tampoco sabes del todo lo que quieres hasta que lo ves funcionando. Y tercero, porque el código vive en un entorno real, con datos, navegadores y casos raros que nadie previó. Por eso, trabaja en vueltas cortas. Pide una cosa pequeña, pruébala, cuéntale a la IA qué ha fallado y pídele que lo corrija. En cada vuelta, el resultado se parece un poco más a lo que necesitas. Iterar no es fracasar, es el método.

[04:42] [música] Hay una corriente que dice, "Escribe primero una especificación completa y deja que la IA la implemente." [música] Es el desarrollo guiado por especificaciones. Yo te recomiendo otra cosa. ODD, desarrollo guiado por resultados.

[04:59] [música] Tú defines el resultado, qué problema resuelve, para quién y cómo sabrás que funciona. Y dejas que la IA diseñe la solución, porque conoce más patrones de arquitectura que la mayoría de nosotros. Si te gustan las especificaciones, perfecto. Pídele que te las escriba ella y tú las revisas.

[05:17] Lee, pregunta lo que no entiendas y corrige lo que no encaje con tu idea. Tu trabajo no es dibujar el plano, es decidir si el plano resuelve tu problema. [música] Nunca te fíes de un ya está hecho. Pide pruebas. Primero, tests automáticos. Pequeños programas que comprueban que tu aplicación hace lo que debe y que lo sigue haciendo cuando cambias algo.

[05:44] Pídele a la IA que escriba tests para cada funcionalidad y que los ejecute delante de ti. Segundo, evidencias. Capturas de pantalla, la salida de los tests, un vídeo del flujo funcionando. Si la IA dice que el registro funciona, que te enseñe a un usuario registrándose. Los modelos, a veces, dan algo por terminado cuando no lo está. Los test y las evidencias son tu forma de saberlo sin tener que leer cada línea de código.

[06:16] Además de los test, pídele herramientas que vigilen la calidad por ti. Un linter que detecta errores y malas prácticas. Un formateador para que todo el código tenga el mismo estilo. Comprobación de tipos que caza fallos antes de ejecutar nada. Y escáneres de seguridad que avisan si una dependencia tiene vulnerabilidades o si se ha colado una clave en el código. Lo mejor es que no tienes que saber configurarlas. Pídeselo a tu IA. Configura las herramientas necesarias para asegurar al máximo la

[06:46] calidad del código y que se ejecuten solas antes de cada cambio. Son guardarailes. La IA se puede equivocar. Ella es la frenan antes de que el error llegue a tus usuarios. Ahora, automatiza el camino hasta tus usuarios. Eso es CI/CD, integración y entregas continuas. Cada vez que cambias el código, un servidor ejecuta solo los test y las herramientas de calidad. [música] Si algo falla, el cambio no pasa. Si todo está bien, se empaqueta y se publica. Puedes empezar sin coste con GitHub Actions y tu IA te

[07:24] lo puede configurar. Lo importante es que nadie, ni tú, ni la IA, pueda saltarse los controles con las prisas. Cada cambio pasa por el mismo filtro. Así, publicar deja de dar miedo, porque ya no depende de acordarte de hacerlo todo bien. Depende de un proceso que lo hace siempre igual.

[07:47] Piensa en tu software como una cadena de montaje. En una fábrica, cada coche pasa por las mismas estaciones, en el mismo orden, y sale con su número de serie. Con tu app, igual. [música] Cada cambio entra por el mismo sitio, pasa los test y las herramientas de calidad, se empaqueta y sale como una versión con su número. 1.0, 1.1, 1.2 y cada versión lleva una nota con lo que ha cambiado. Así, si algo falla, sabes en qué versión apareció y puedes volver a la anterior en minutos. [música] Y

[08:19] publica a menudo, en pasos pequeños. Una versión pequeña es fácil de probar y fácil de deshacer. Una enorme, cada 3 meses, es una apuesta. [música] Y si quieres ir un paso más allá, este es el nivel avanzado. Las fábricas de software automatizadas. La idea es esta.

[08:42] En cada proyecto aprendes cosas, [música] qué skills funcionan, qué herramientas de calidad usar, cómo montar los tests y cómo publicar. En vez de repetirlo a mano, lo conviertes en una fábrica. Plantillas, agentes con papeles distintos, uno que planifica, otro que programa, otro que revisa y otro que prueba. Y la misma cadena de montaje para todo. Así, no construyes una sola aplicación, sino muchas. Y cada una sale mejor que la anterior, porque la fábrica aprende de todas.

[09:17] Y un consejo para toda la vida de tu producto. Antes de añadir cualquier funcionalidad nueva, pregúntate, [música] ¿esto de verdad le va a ayudar a alguien? Con la IA, añadir cosas es tan fácil que es tentador meterlo todo. Pero cada función nueva es más código que mantener, más cosas que pueden fallar y más botones que confunden a tus usuarios. Mira qué usan de verdad.

[09:40] Pregúntales. Y si una función no ayuda, no la hagas o quítala. El mejor software no es el que hace más cosas, es el que hace menos, pero las hace mejor. [música] Repasemos. Empieza por el dolor y por tu ventaja. Usa modelos frontera. Diseña primero, en imágenes. Dale a tu IA buenas skills y entiéndelas. Itera en vueltas cortas. Define el resultado y deja que la IA diseñe. Pide tests y evidencias. Añade herramientas de calidad. Automatiza con CI/CD. Publica versiones como en una cadena de montaje.

[10:20] Y cuando domines todo esto, crea tu propia fábrica. Sin olvidar lo más importante, menos pero mejor. Y dos cosas que no te puedes saltar. Guarda tu código en Git desde el primer día. Y nunca metas contraseñas ni claves dentro del código. ¿Me he dejado algo?

[10:36] Cuéntamelo en los comentarios. Y si te ha servido, dale a Like y síguenos en School of Agents.
