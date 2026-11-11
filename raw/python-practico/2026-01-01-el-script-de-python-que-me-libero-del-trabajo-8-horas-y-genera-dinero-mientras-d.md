# El Script de Python que Me Liberó del Trabajo 8 Horas (Y Genera Dinero Mientras Duermo)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Clx5JvcJfYY)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-01-01
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina pasar 6 horas al día haciendo exactamente la misma tarea, descargando reportes, limpiando datos en Excel, enviando correos con resúmenes una y otra vez. Eso le pasa a miles de personas hasta que un día se dan cuenta de algo que golpea como un balde de agua fría. No son programadores, son máquinas humanas haciendo trabajo de máquinas. Un script de 47 líneas puede cambiar todo eso. Este tipo de automatizaciones se venden como servicios que generan entre 500 a $2,000 al mes. Y lo más absurdo es

[00:29] que las librerías necesarias son tan simples que parecen trampa. Voy a mostrarte las siete librerías exactas que se usan con código real y al final del video vas a ver cómo convertir un script simple en un producto que se vende solo. Pero primero necesitas entender por qué el 90% de los programadores nunca monetiza sus habilidades. La mayoría de programadores piensan que para ganar dinero necesitan crear el propio o el próximo Feb o una aplicación revolucionaria. Pero según los datos de Upwor de este año, en

[00:55] realidad del año pasado, feliz año nuevo, los freelancers de Python que más facturan no están construyendo productos complejos, están automatizando tareas aburridas que las empresas odian hacer. Estamos hablando de cosas como limpiar hojas de cálculo, extraer datos de página web, generar reportes automáticos, enviar correos masivos personalizados. Suena aburrido. Exacto.

[01:15] Por eso las empresas pagan entre 20 $80 la hora para que alguien más lo haga. Y aquí es donde se pone interesante. Mi primera automatización fue un desastre. Usaba Pandas, que es genial, pero cuando tienes que procesar archivos de más de 100,000 filas se vuelve lento. Entonces descubrí Polars, que es una librería de análisis de datos que según Benchmark del 2024 es hasta 10 veces más rápida que Panda para operaciones comunes. Mira este código reemplazó 45 minutos de trabajo manual diario en donde primero

[01:39] se importa la librería y se lee el archivo de ventas mensuales que viene en un archivo. CSV podría venir perfectamente en un Excel. Luego, simplemente para renombrar fila y columna, le quitamos los espacios y le ponemos gu bajo con esta línea de código s simple y filtramos todos los montos que son mayores a cero. Si queremos transformar valores, por ejemplo, la fecha se usa str.data o si queremos traspasar todos los email a minúscula, usamos str.t lower case. Simple. Y para eliminar los valores nulos, simplemente

[02:11] usamos drop nuls y en este caso la la columna que queremos limpiar. También se pueden hacer agregaciones, por ejemplo, podemosar agrupar por región y hacer agregaciones como, por ejemplo, calcular la suma de los montos en una nueva columna que se va a llamar total venta o por ejemplo tener los clientes únicos con nunic.

[02:30] Alias que le lo renombramos como clientes guajúic podemos reescribir en un nuevo reporte que se va a llamar reporteelimpio.csv. Como ven ser simple. Este tipo de script puede venderse fácilmente por 300, $500 porque le estás ahorrando horas diarias a equipos completos. A las cuentas, si un equipo de cinco personas ahorra 2 horas al día cada uno, son 10 horas de trabajo de humanos eliminadas. Pero limpiar datos es solo el principio. ¿Qué pasa cuando necesitas extraer información de páginas

[02:57] web que cambian constantemente? Hay un tipo de sitios web que son una pesadilla para automatizar, los que cargan contenido con JavaScript, tienen login, detectan voz, etcétera. Selenium era la opción tradicional, pero Pllywright lo dejó obsoleto. Es más rápido, más estable, funciona con Chrome, Firefox y Safari con el mismo código. Por ejemplo, un script que uso para extraer precios de portal de proveedores que requiere autenticación es el siguiente.

[03:21] Simplemente llamamos Applyw a la librería, lanzamos el navegador y creamos una nueva página. Luego tenemos el login automático, que es s simple llenar los formularios. Aquí estamos llenando un formulario del usuario con la clave y con el click presionamos el botón. Además también podemos esperar que carguen ciertos elementos. Por ejemplo, si hay una tabla de precio que se demora en cargar, podemos pedirle a Playwght que espere para que cargue el selector y luego podemos extraer los

[03:47] datos con page.evaluate de forma ser simple, anotando los nombres del selector, por ejemplo, el nombre, el precio y el stock que son los elementos que quiero sacar del producto. Y finalmente, cuando ya terminemos de hacer la magia, con brows. Close se cierra el navegador, retornamos los productos y simplemente después llamamos a la función para que se ejecute. Es muy simple, son muy pocas líneas de código que a todo esto, todos estos proyectos te los voy a dejar en mi Patreon para

[04:13] que los descargues si quieres tener los códigos completos. Y este tipo de script puede correr todos los días, por ejemplo, a las 6 a. y enviar un reporte si algún precio cambia más de un 5%. Por ejemplo, negocios e-commerce pagan entre 100 a $200 mensuales por este tipo de monitoreo automatizado. Piénsalo, 15 líneas de código con potencial de generar ingresos recurrentes cada mes.

[04:32] Ahora bien, extraer datos está genial, pero ¿cómo conviertes un script en algo que otras personas pueden usar sin saber programar? Y este es el punto de imprensión donde pasas de persona que programa a persona que vende soluciones.

[04:43] Passapi te permite exponer script como un servicio web en literalmente 10 líneas de código y es aquí donde está la magia que ahora sapier puede llamarlo. Mape.com también puedes puedes integrarlo o n8n dependiendo de la herramienta node code que estés utilizando y tus clientes pueden usarlo sin entender nada de Python. Por ejemplo, un código ser simple. Aquí vamos a importar FasapI, importamos Polar y la librería IOM. creamos la aplicación de de Fasapim para que se inicie la la sección de Fasapim, por

[05:12] llamarlo de alguna forma. Luego, simplemente creamos un post que sería un endpo para limpiar los datos, en donde en este endpo le vamos a dar un archivo que va a ser un archivo que queremos limpiar. Se va a subir este archivo, se va a leer y luego con polar lo vamos a limpiar de la misma forma que lo hicimos anteriormente. Vamos a renombrarlo las columnas, por ejemplo, eliminar los valores nulos y todo lo que vimos anteriormente con limpieza de pollars. Y finalmente vamos a retornar en un

[05:38] formato Jason la respuesta, el estado, por ejemplo, que esté procesado, las filas originales, las filas limpias y las columnas. Y también podemos crear otro endpoint para saber el estado. Va a ser el stado, en donde retornamos que el servicio está activo y la versión.

[05:51] Podemos desplegar todo esto en un servidor que puede costar como 5 al mes, por ejemplo, Ray Wilds. Y si quieren un que traiga un video de cómo desplegar algo en Rayw, déjenlo en los comentarios. De todas maneras les voy a dejar un link ahí, si es que me acuerdo, de afiliado de Ral White, que pueden si se meten por ahí les dan un crédito de $. También pueden usar otros servicios e que también valen como cinco de 5 a 7 que yo también uso mucho render que ya tengo video en el canal de render y de

[06:19] repente ya tenemos nuestro microSASAS funcionando. Según GitHub Fasapi pasó de 15,000 estrellas en el 2020 a más de 70,000 estrellas el 2025. Es el forign que más rápido está creciendo en el ecosistema de Python. Pero un API que solo responde cuando lo llamas no es verdadera automatización. ¿Cómo haces que tu código trabaje solo sin que nadie lo active? Para eso está Sketle. Esta librería es ridículamente simple y por eso muchos la ignoran, pero la base de la mayoría de los servicios de

[06:46] automatización que generan ingresos recurrentes las usan. Es s simple configurarla. Primero importamos lo que queremos, por ejemplo, y vamos a importar los scripts que queremos que se ejecuten a determinado tiempo. Por ejemplo, si queremos que una un código se ejecute diariamente todos los días a las 7 a, por ejemplo, ponemos schedule everyday at 7. ¿Y qué queremos hacer? Y ponemos el script que queremos que se ejecute. En este caso sería la limpieza de datos. Por ejemplo, si queremos que

[07:13] todos los lunes se envíe un reporte a las 9 a, simplemente ponemos schedule everymonday at9 a pun y enviar al reporte. Por ejemplo, si queremos verificar los cambios de precio cada 4 horas, aquí le ponemos every 4 hours, que es lo que vamos a hacer, verificar precios. Y por ejemplo, si queremos respaldar la base de datos cada domingo a medianoche, simplemente ponemos every Sunday at 00 respaldar base de datos.

[07:37] Simplemente para ejecutar el schedule creamos un loop infinito en donde ponemos wi through schedule rrunpending y se van a ir ejecutando todas las tareas que estén pendientes. Y ponemos un time slip de 60 segundos para que esté verificando las tareas pendientes cada 60 segundos. Como ven, este loop infinito es literalmente un empleado que nunca duerme, que nunca se enferma y nunca pide aumento. Lo combinas con un servidor pequeño en Digital océano o Raywal y tienes automatizaciones

[08:04] corriendo las 24 horas por menos de $10 al mes. Ya tienen los datos limpios, UNPI, tareas programadas, pero los clientes no quieren archivos CSV, quieren documentos bonitos. ¿Cómo generamos reportes profesionales automáticamente? Y aquí entra la librería Python Doc más Report Lab. Y es aquí donde las empresas realmente pagan bien. Generar documentos Word y PDF automáticamente suena simple, pero ahorrar 3 horas de trabajo administrativo diario vale oro para cualquier negocio. El código también es

[08:30] s simple, lo vamos a ir mostrando. Aquí importarlo la librería. Creamos la función para generar un reporte semanal. Creamos un documento. Esto me estás emulando cómo crear un un libro de Word. Para añadir un título con formato, simplemente ponemos doc@ heading y le ponemos el título que queremos, que en este caso reporte semanal de venta. Por ejemplo, si queremos añadir un párrafo, con el comando doc.adparagram, añadimos un párrafo al Word y le ponemos lo que queremos escribir. En este caso

[08:55] generado automáticamente y como estamos usando un f stram de ahora, pero en el formato bonito, ¿okay? Y así, por ejemplo, si queremos generar un resumen ejecutivo, añadimos otro encabezado. Aquí podemos poner el total de ventas, el número de transacción, el ticket promedio, etcétera. También podemos crear tablas con ad table, donde le ponemos el número de fila y número de columnas que queremos y el estilo de la tabla.

[09:17] Después podemos ponerle simplemente los encabezados de la tabla en las celdas que nosotros queremos que estén. Por ejemplo, aquí estamos diciendo que queremos la fila cero y en la columna cero poner producto. En la columna uno y en la columna dos ingresos. y luego llenamos los datos en donde también eramos por cada una de las de las filas y vamos poniendo el texto en cada una de las celdas y después simplemente le ponemos guardar y se va a guardar el reporte en en docs o en Word. Despachos

[09:40] contables. Empresas de servicio pagan entre 200 y 400 mensuales por script que generan decenas de reportes de cliente automáticamente. Lo que antes toma 2 días completo de trabajo manual se reduce a 15 minutos. Y para PDFs más visuales, Riport Lab te permite crear documentos con gráficos, logos, diseños profesionales, etcétera. Ya tenemos todas las piezas, pero aquí viene la pregunta del millón. ¿Cómo encuentras clientes que paguen por esto? Todo lo que te mostré se conecta con un

[10:04] ecosistema que se ve así. Polars limpia y procesa los datos a velocidad absurda. Priright extrae información de cualquier sitio web. Pas API convierte tus script en servicios que cualquiera puede usar. Sketchule ejecuta todo automáticamente sin intervisión humana. Python más Report Lab genera documentos profesionales combinados. Puedes ofrecer sistemas de reporte automático con un potencial de de 150 a $00 por m por cliente. Scrapper como servicio, potencial entre 100 a $300, limpieza de

[10:30] datos bajo demanda de 20 a 50 por proyecto y generadores de documentos potencial de 200 de implementación más mantenimiento mensual. La clave está en algo que casi nadie hace. En lugar de vender tu tiempo, vende sistemas. Un scris que escribe una vez puede generar ingresos por meses o por años. Los primeros clientes los puedes encontrar en grupos de LinkedIn y comunidades de pequeños negocios. No ofrezcas programación, es muy importante. Ofrece eliminar tres horas diarias del equipo

[10:58] que pierden tareas repetitivas. Ese cambio de perspectiva es lo que transforma habilidades de Python en un negocio real. Esa noche cuando escribí mi primer script de automatización por pura frustración no tenía idea del potencial que estaba descubriendo.

[11:10] Freelancer de Python en plataformas como Upware o Fiver están reportando ingreso entre 500 y 5000 mensuales con este tipo de servicios de automatización. Todo con scripts que se escriben una vez y siguen funcionando mientras duermes. El código que te mostré no es teoría, son las mismas librerías y patrones que usan los free lancer mejor pagados del ecosistema Python, obviamente. Y si ellos pueden hacerlo, tú también puedes. Ahora, si quieres ver cómo estructurar propuestas a clientes y cómo encontrar negocios que

[11:35] necesitan automatización, déjalo en los comentarios para ver si traigo un próximo video con este tema, si veo que este video tiene harto apoyo. Si quieres saber cuál es ese proyecto donde fracasé con la automatización, te lo voy a dejar aquí para que lo veas y aprendas las mismas enseñanzas que aprendí yo.
