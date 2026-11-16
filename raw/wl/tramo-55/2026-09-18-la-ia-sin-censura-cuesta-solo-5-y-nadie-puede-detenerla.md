# La IA SIN CENSURA cuesta solo $5… y NADIE puede detenerla

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oK86HLPmdAg)
- **Canal**: Cognix
- **Publicado**: 2026-09-18
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:01

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Obliteration AI vende un modelo de clase frontera con los rechazos eliminados a 3 dólares por millón de tokens. TechCrunch abrió una cuenta gratis y logró que escribiera malware para robar contraseñas de Chrome y después un protocolo casero para cultivar un patógeno peligroso. El modelo de base es el GLM 5.3 de Kai con los pesos abiertos para que cualquiera los descargue y la cirugía se llama obliteración, una edición de pesos que cuesta menos de 5 dólares y borra el entrenamiento de

[00:31] rechazo que trae el modelo de fábrica. Ahora mismo hay miles de estos modelos sin censura dando vueltas en Hugging Face con millones de descargas por mes y todavía nadie fue demandado por uno solo. Te cuento cómo funciona la edición y si alguien puede frenarla.

[00:47] Un modelo de pesos abiertos es un archivo con miles de millones de números que vos descargás y corrés en tu propia máquina. El laboratorio lo arma en dos etapas, una larga donde el modelo lee casi todo internet y una corta donde le enseñan modales, incluyendo qué pedidos tiene que rechazar.

[01:07] En 2024 un grupo de investigadores salió a buscar en qué parte de ese archivo vive el rechazo. Lo encontraron en un solo lugar, repetido en 13 modelos de chat abiertos de Meta, Google, Alibaba y 01.ai. La decisión de rechazar aparecía como una sola dirección dentro de la actividad interna del modelo. Un patrón que se activa con pedidos dañinos y se apaga con los inofensivos. Si apagás ese patrón, el modelo responde. Si se lo inyectás a un pedido de receta de torta, el modelo se niega a hornear. O sea que

[01:41] el entrenamiento de seguridad solo le enseñó un reflejo y bastante superficial. Llama 2 arranca el 96% de sus rechazos con las mismas palabras, no puedo o me disculpo y después de esas primeras palabras el entrenamiento se queda sin nada más.

[01:59] Todo lo que el modelo hubiera dicho ya estaba ahí adentro, porque el modelo base leyó las mismas cosas turbias de internet que vos. Necesitás dos grupos de pedidos, unos 128 que el modelo rechazaría y la misma cantidad de pedidos comunes. Corrés los dos grupos, registrás la actividad interna del modelo y le restás el promedio de un grupo al del otro. Esa diferencia es la dirección del rechazo.

[02:25] Después reescribís el archivo de pesos para que el modelo ya no pueda producir ese patrón. No hay entrenamiento nuevo ni datos extra de por medio, por eso sale apenas $5. A fines del año pasado, un desarrollador empaquetó todo este proceso en una herramienta llamada Heretic. Con un solo comando, busca el ajuste que elimina la mayor cantidad de rechazos manteniendo al modelo lo más parecido posible al original. Un modelo de 8,000 millones de parámetros tarda unos 45 minutos en una sola placa de

[02:57] video 3090. Su resultado más llamativo fue en Yema 3 de Google, 97 rechazos de cada 100 antes, tres después. Un youtuber comparó el Queen 3.8 de 27,000 millones sin censura contra el archivo original. De los 866 bloques de números del modelo, 131 habían sido tocados y todos los cambios apuntaban en la misma dirección. El resultado se carga en Oyama o LM Studio como un modelo cualquiera.

[03:26] Alguien corrió 17 modelos vendidos como sin censura en las mismas siete tareas y cuatro se negaron ya en la primera. 13 de los 17 no pudieron respetar un límite de cinco oraciones. Los rechazos se sacaron, sí, pero la capacidad de seguir instrucciones se fue con ellos.

[03:45] En los benchmarks de opción múltiple que todos citan, una buena obliteración cuesta apenas es punto, pero en Truthful QA, la prueba que mide si el modelo repite mentiras populares, la caída va de 2 a 10 puntos en cada medición seria que se hizo. Eso de que estos modelos son 20% más tontos es un número de boca en boca que no aparece en ningún benchmark. Lo que sí muestran los benchmarks es que el modelo editado piensa más tiempo. Una comparación de 85 horas de GPU entre cinco métodos de

[04:16] remoción encontró que los puntajes de matemática variaban 47 puntos entre versiones y casi todo era por modelos que se quedaban sin presupuesto de razonamiento antes de responder. Y después está el rechazo que nunca se fue. Las herramientas puntúan por palabras clave, así que un "no puedo ayudarte con eso" cuenta como rechazo, pero una respuesta fluida que te desvía hacia algo legal cuenta como que sí ayudó. Cuando un equipo etiquetó a mano las respuestas de un modelo obliterado,

[04:46] encontraron que el 70% eran en realidad rechazos contra el 14% que había detectado la herramienta automática. Esa pelea todavía sigue abierta. El asistente de código de Amazon se niega a explicar cómo está configurado tu usuario porque no responde preguntas de seguridad y ChatGPT se negó a escribir una expresión regular para detectar insultos raciales en un bot de moderación. Hay todo un conjunto de pruebas armado con pedidos inofensivos que los modelos rechazan por error y cuanto más estricto el entrenamiento de

[05:18] seguridad más larga esa lista. Por volumen, el uso más grande es el rol y la ficción y la propia comunidad lo admite. Uno de los pedidos más votados en los foros de Heretic fue armar un benchmark que no fuera solo para contenido para adultos y la misma matemática también sirve para cosas que no tienen nada que ver con seguridad. Aplicada a la prosa cliché en vez de al rechazo, te da el primer modelo sin ajuste fino que reduce las frases hechas.

[05:46] Y un aficionado la aplicó a la positividad y terminó con una llama permanentemente melancólica. Hugging Face aloja miles de estos modelos y el rastreador de la comunidad cuenta más de 15,000 modelos obliterados hechos por 3,600 autores. En abril, un publicador con 22 modelos sin censura y 5 millones de descargas mensuales, con cada ficha técnica asegurando cero rechazos sobre 465 pedidos y cero pérdida de capacidad, le atribuía todo a herramientas propias y privadas. Alguien recuperó su paquete

[06:18] borrado del caché del repositorio de Python. Era Heretic, con los créditos borrados y la licencia cambiada, y 30 de sus 32 marcadores de rechazo estaban copiados letra por letra, hasta con los mismos errores de tipeo. El autor de Heretic le contestó, con ironía, que no hacía falta robarle el código, porque total se lo estaba regalando igual.

[06:41] Obliteration AI corre su versión sin censura del GLM 5.3 en servidores de Estados Unidos, con una ventana de contexto de 1 millón de tokens y sin retención de los pedidos, y lo vende para ciberataques ofensivos y ejercicios de Red Team. El fundador dice que sus clientes son empresas de Red Teaming en Reino Unido y Europa que trabajan para bancos, aerolíneas e infraestructura crítica. Pero los Red Teamers que nombró TechCrunch dijeron que no usan modelos obliterados para trabajo real, porque la

[07:13] edición les saca capacidad, o como preguntó alguien en Reddit el día del lanzamiento, ¿esto es un señuelo? Las licencias, en el papel, dicen otra cosa. La licencia de llama de Meta te deja modificar el modelo, pero su política de uso aceptable prohíbe saltarte las medidas de seguridad. Los términos de Yema de Google dicen lo mismo. Quen, Mistral 7,000 millones y GPT-OSS de Open AI salen bajo Apache 2.0, que no dice absolutamente nada sobre seguridad. Nadie fue demandado nunca por esto y Hugging Face da de baja

[07:48] repositorios caso por caso, mientras miles siguen ahí sin tocar. La ley de IA de la Unión Europea empezó a exigirse a los proveedores de modelos este agosto y su excepción para código abierto desaparece para los modelos clasificados como de riesgo sistémico y para cualquiera que monetice el modelo, que es justo lo que hace un servicio pago de desensura.

[08:10] Estados Unidos fue para el otro lado. La orden ejecutiva de junio le da al gobierno una mirada temprana sobre los modelos de frontera, pero descarta explícitamente exigir licencias obligatorias para publicar los pesos y los laboratorios no pueden parchear nada porque no le podés mandar una actualización a un archivo que ya está sentado en 10,000 discos rígidos.

[08:31] Un estudio de 2025 entrenó modelos chicos para razonar antes de rechazar, esparciendo el reflejo por todo el modelo y mantuvo el rechazo por encima del 90%, pero ningún laboratorio lo lanzó todavía. La única defensa que de verdad funciona es no enseñarle nunca lo peligroso, filtrarlo directamente de los datos de entrenamiento, que es justo por qué GPT-OSS, entrenado con un corpus filtrado, es el modelo que a la comunidad más le cuesta desensurar de forma útil. En julio, el NIST escribió que las salvaguardas de un

[09:04] modelo de pesos abiertos alojado por uno mismo se pueden saltar sin importar qué puntaje saquen en las pruebas de jailbreak. Un rechazo metido adentro de un modelo descargable es apenas una configuración por defecto y cada laboratorio ya lo sabe. La seguridad se mudó a la capa de alrededor del modelo, clasificadores a la entrada y a la salida, permisos, registros y alguien que te pueda revocar la clave en cualquier momento. Obliteration AI también vende esa capa, envuelta arriba

[09:35] del mismo modelo que acaba de decensurar. Si vas a correr un modelo abierto armado como si el no no existiera, tené presente que para quien tiene los pesos en la mano, en los hechos, no existe. Y si tu asistente de IA te sigue rechazando el informe de tu pentest y esas descargas sin censura te empiezan a tentar, primero probalo con tu trabajo real. Los rechazos son lo único de lo que podés estar seguro que perdió.
