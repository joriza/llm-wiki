# DeepSeek Harness CAMBIA las reglas: ¿Adiós a Claude Code y Codex?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ly2R2-Ga8e4)
- **Canal**: Patricia Palazón | IA
- **Publicado**: 2026-08-26
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 13:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Deepseek acaba de sacar la pieza que faltaba para competir con Cloud Code o Codex, el motor que convierte un modelo en un agente capaz de trabajar solo. Lo ha dejado abierto para que cualquiera lo toque y hoy te voy a enseñar cómo funciona, qué puedes construir con él y a compararlo con otras herramientas de pago que seguramente ya conoces. Desde hace unos meses las inteligencias artificiales están compitiendo por bajar el precio y Deepseek fue una de las primeras. Después le siguieron otros

[00:27] modelos como Quen, Kimi o GLM con la misma filosofía, un rendimiento decente pero a un coste mínimo. Lo que hace Deepseek ahora es distinto, en vez de sacar un modelo más barato ha abierto el código de su propio Harness de agente, es decir, la capa de software que hace que un modelo deje de ser un chat que responde a un agente que realmente ejecuta. La filosofía de Deepseek Harness se resume en una sola frase, todo es un plugin y si nos vamos a GitHub podremos ver que se trata de un

[00:58] código abierto bajo licencia MIT y que está cerca de las 200.000 estrellas. Antes de nada, déjame decirte que te dejo aquí abajo el enlace para entrar a mi comunidad de inteligencia artificial donde compartimos recursos y aportamos mucho contenido de valor. Para entrar solo tendrás que deslizar hasta abajo, rellenar con tu nombre y tu email y solicitar este acceso. Ahora sí, seguimos con el vídeo. Y para instalarlo únicamente tienes que copiar este comando de aquí y pegarlo en la

[01:28] terminal, así de fácil. Lo copiamos y esperamos. Una vez lo tenemos instalado nos saldrá aquí abajo una URL que deberemos copiar y pegar en el navegador para que se abra. Te saldrá para añadir una API Key, pero eso lo tendremos que poner más adelante. Recuerda que para que esto funcione debes tener instalado Node en tu ordenador que es completamente gratuito. Esto que sale aquí es el dashboard de Deepseek, pero como verás no te va a dejar escribir hasta que no elijas un espacio de

[01:56] trabajo. Entonces tendremos que ir aquí y seleccionar nuestra carpeta de trabajo. La seleccionamos y ahora sí que nos va a dejar escribir. Y aquí abajo nos saldrá la opción para darle los permisos que queramos a nuestra carpeta. Por ejemplo, permiso solo para leer, para escribir o acceso completo. Nosotros le vamos a dar acceso completo y listo. Y el segundo caso es conectar el modelo oficial de Deep Fake, que es uno de los que mejor rinde y tiene el coste más pequeño de todos los modelos

[02:26] de inteligencia artificial que existen. De hecho, si lo comparamos con Stable Diffusion 5, vemos que cuesta 100 veces menos haciendo la misma tarea. Para conseguir esta API de Deep Fake, solo tienes que entrar a esta plataforma que te estaré dejando abajo en la descripción y tienes que ingresar con tu cuenta si ya tienes una o crearte una nueva. Una vez ingresas, te va a salir una interfaz como esta donde se te van a mostrar todos los balances, incluso si quieres añadir créditos sobre la API

[02:55] oficial, tendrías que meterte aquí y seleccionar cuánto quieres cargar. Fíjate que hay desde los $2 hasta los $500, pero nosotros para lo que queremos hacer con $2 tenemos más que suficiente. Y una vez completada la compra, podemos ver cómo se nos han cargado aquí estos $2. Incluso si nos vamos aquí, también nos saldrá aquí como cargado.

[03:19] Pero ahora para poder utilizarla, necesitamos crear una API Key que después conectaremos con Deep Fake. Para crearla, tenemos que irnos aquí, poner un nombre, por ejemplo, tutorial, la creamos y ya nos saldrá esta API Key.

[03:34] La tenemos que copiar y ahora nos iremos a la página de Deep Fake, recargamos y nos volverá a pedir esta API Key. La pegamos, guardamos y continuamos. Y para comprobar si esta API se ha instalado correctamente, nos tenemos que ir aquí a ajustes, modelos y veremos que está completamente disponible. Ahora el siguiente paso es ver si esta API funciona. Y para ver si funciona venimos otra vez al apartado del chat y como antes le hemos dado acceso a esta carpeta, todas las pruebas

[04:05] o cambios que hagan serán en base a esa carpeta. Si nos fijamos aquí abajo también podemos mirar y seleccionar el modelo que queramos poner, como por ejemplo el Deep Seek V4 Flash, Deep Seek V4 Pro y Deep Seek V4 Flash Vision X.

[04:22] Además también podemos poner el nivel de esfuerzo, que nosotros en este caso lo vamos a dejar en high y en el modelo en el flash. Y ahora lo que vamos a hacer es pedirle que nos diga qué tipos de documentos se encuentran en esta carpeta que hemos seleccionado y una vez los tenga controlados, nos haga una carpeta únicamente para esos PDFs. Se lo enviamos y veremos cómo rápidamente empieza a procesar toda esta información.

[04:49] Nos dice los vídeos que hay, los PDFs, los HTMLs, archivos comprimidos, nos da toda la información. Incluso si nos vamos aquí arriba, podemos ver el sistema, el contexto, el usuario, asistente, herramientas. Además podemos ver cómo nos ha encontrado un PDF que se encuentra duplicado y nos pregunta si quiere que elimine uno de ellos. Le vamos a decir que sí y veremos lo rápido que lo elimina. Y para comprobarlo nos iremos a documentos. Entramos dentro de la carpeta y vemos cómo efectivamente

[05:24] están todos los documentos que él nos ha descrito y además nos ha creado esta carpeta de PDFs. Y el siguiente caso de uso será la creación de una aplicación. Desde aquí podemos ver y seleccionar los tipos de agente que existen y vemos que está el estándar, el de código, el minimal y el creador. Nosotros vamos a seleccionar el estándar porque para lo que queremos crear es suficiente. Y ahora tenemos que pegarle el prompt y en nuestro caso lo que le hemos dicho es que la aplicación debe permitir

[05:56] introducir la URL de cualquier empresa y realizar automáticamente un análisis del negocio para detectar oportunidades de mejora mediante inteligencia artificial y automatización. Quiero que el resultado sea muy visual e impactante y no quiero únicamente un prototipo visual, quiero una aplicación funcional que puedas ejecutar localmente.

[06:17] Le damos a enviar y ahora vemos cómo rápidamente empieza a trabajar en la creación de esta aplicación. Y después de 30 minutos podemos ver aquí de forma rápida que ha construido los datos reales versus la demo, la verificación realizada, incluso las notas. Además, aquí abajo podemos ver todo lo que ha hecho paso a paso. Y al final nos saldrá una URL para poder entrar en esta aplicación. Le damos y como podéis ver ha sido una aplicación para analizar empresas, por tanto nosotros lo que hemos hecho ha sido

[06:50] elegir cualquier empresa, por ejemplo, esta, copiamos la URL de la página web, la ponemos aquí, le damos a analizar empresa y aquí empezará a analizar la página web, identificar los modelos de negocio, analizar la captación de clientes, etcétera. Irá trabajando uno a uno y al final y el resultado es esto, una aplicación donde nos va a dar toda la información de esta página web. Al principio nos encontramos con todos los datos, si seguimos bajando nos salen los dolores que tiene esta empresa para

[07:22] poderle automatizar y solucionar, por ejemplo, la atención al cliente, las ventas, también nos sale la auto, bueno, la automatización, los procesos que siguen siendo manuales y se pueden cambiar. Si seguimos bajando salen estas oportunidades de automatización, por ejemplo, en en el problema detectado y la solución, el agente de IA de WhatsApp, el problema detectado y la solución, muchas otras más oportunidades, nos sale incluso un mapa de automatización, donde te explica cómo podría funcionar

[07:56] el negocio después de implementar estas automatizaciones que hemos visto antes. Si seguimos bajando, salen también el análisis competitivo, las oportunidades de inteligencia artificial adaptadas a este negocio, donde explica por qué encaja con lo detectado en su web, pues lo que hemos dicho también antes, el agente de IA, eh generación de propuestas y presupuestos con inteligencia artificial, un dashboard, generación de contenido.

[08:22] Seguimos bajando, incluso te dice el impacto versus la dificultad, es decir, la priorización para implementarlas, los quick wins, te sale toda la información. Un roadmap también con las fases, el cálculo del ROI con los datos actuales del negocio para obtener los escenarios de mejora con automatización e inteligencia artificial.

[08:45] Incluso te da la prioridad de automatizar. Si le damos aquí abajo, pues todo volvería a empezar, le tendríamos que poner otra URL para que nos mirara todos los datos de esa empresa. Aquí arriba también nos sale para ir directamente. Y como podemos ver, después de media hora esta es la aplicación que nos ha creado tan funcional y tan profesional. Si nos vamos aquí y recargamos, veremos cómo el coste total ha sido este, 157 llamadas a la API, los tokens consumidos y el coste total únicamente ha sido este. Fijaos

[09:22] que nos quedan aquí $1,75 aún por gastar. Es una locura para todo lo que hemos construido, lo poco que ha consumido. En este cuarto bloque vamos a hablar de una de las funciones menos conocidas, pero para mí una de las más interesantes, Y es que puedes pedirle en lenguaje natural que te cree un plugin nuevo para la interfaz, sin escribir tú ni una sola línea de código. Y para ver esto solo tenemos que volver a Deep Seek, nos vamos a Ajustes, Plugins aquí, y vemos una lista infinita sobre

[09:57] plugins disponibles. Algunos están habilitados y otros deshabilitados, pero no hay ningún problema porque estos se pueden habilitar. Pero aparte de este listado, también podemos escribirle qué tipo de herramienta queremos tener en esta plataforma y el mismo nos la crearía. Y para añadir este plugin en Deep Seek es muy sencillo. Únicamente tendremos que abrir una nueva sesión y decirle que nos cree un plugin de un bloc de notas, por ejemplo. Le damos a Enviar y mientras se va procesando

[10:26] podemos ver aquí abajo el contexto utilizado. El usado según el prompt del sistema, las herramientas o los mensajes. Una vez que esté hecho, solo tenemos que activarlo siguiendo los pasos que nos indica. Refrescamos el navegador y nos saldría aquí en la izquierda, Notas. Podemos crear una nueva nota, escribir y la tendríamos lista.

[10:50] Incluso la podemos exportar o importar. En el siguiente paso vamos a ver cómo podemos crear agentes personalizados para crear cualquier tipo de automatización. Y para esto tenemos que volver a abrir otro chat, cambiamos el modo del agente porque hasta ahora lo teníamos estándar y ahora lo vamos a cambiar a modo creador y le ponemos el prompt.

[11:12] En este caso yo le he dicho que actúe como un agente de auditoría de código especializado en seguridad y calidad. Tu objetivo es analizar el código que te entregue y generar una auditoría rápida, clara y útil para una demo funcional sin construir un sistema excesivamente complejo. Lo enviamos. Una vez creado nos sale aquí toda la información y además ha hecho una demo para ver cómo actuaría este agente. Nos hace un resumen y nos explica todos los hallazgos encontrados, el problema, la

[11:41] severidad, la ubicación, la explicación, la solución, incluso el código corregido. Y al final nos da el resultado final con el total de vulnerabilidades encontradas, en este caso en la demo, la vulnerabilidad más importante y te hace la pregunta si la quieren desplegar en producción. Y para activarlo únicamente tendríamos que abrir un nuevo chat y aquí, donde nos encontramos los otros cuatro agentes que hemos comentado anteriormente, tendríamos el auditor de código, donde nos indica que es una auditoría rápida

[12:11] de seguridad y calidad del código. Detecta los comandos, secretos expuestos, fallos de la y muchas otras cosas más. Y para cerrar los casos prácticos, hay algo que debes de saber, y es que como los modelos de Deep Six son compatibles con los formatos de API, puedes llevarte a ese mismo modelo más barato a otras herramientas de agentes distintas, siguiendo la documentación oficial de Deep Six para conectarla. Es decir, no hace falta que dejes de utilizar herramientas que ya utilizabas,

[12:39] simplemente tienes que cambiarle el motor para trabajar con un modelo más económico cuando te interese. Además de todo lo que hemos visto en este vídeo, se pueden crear muchas otras cosas y lo más importante es que se pueden hacer a un bajo coste. Y recuerda que si te gusta este tipo de contenido, te dejo abajo el enlace para entrar en la landing, donde podrás acceder al grupo de WhatsApp donde compartimos recursos y aportamos muchas cosas de valor.

[13:05] Únicamente tendrás que deslizar hasta abajo, completar con tu nombre y tu email y así podrás solicitar el acceso. Y si te ha gustado este vídeo, dale like, suscríbete y nos vemos en el próximo.
