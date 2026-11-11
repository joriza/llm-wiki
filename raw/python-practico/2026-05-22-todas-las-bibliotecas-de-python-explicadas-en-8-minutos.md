# Todas las Bibliotecas de Python | Explicadas en 8 minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=4fmsMg5oxcs)
- **Canal**: Jorge Rolón · Finanzas y Tecnología
- **Publicado**: 2026-05-21
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:29

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Imagina que trabajas en una empresa y te mandan un archivo de Excel con un millón de filas llenas. Tu computadora se va a trabar y vas a pasar tres días ordenándolo. Lo primero que vas a necesitar es hacer millones de cálculos matemáticos con esos precios. Si utilizas el Python normal, es como contar con los dedos, así que llamas a NumPy. Esta librería es la calculadora científica del código. Grandes empresas de finanzas lo usan porque toman millones de números y hace operaciones

[00:23] complejas en un solo parpadeo. Es el motor oculto detrás de todo. Con los números listos, tienes que ordenar las filas. Para que el Excel no se trabe, llamas a Pandas. Es la librería reina para ordenar datos. Es como un asistente ultraveloz que limpia los errores de dedo y te lo deja perfectamente organizado en una tabla limpia. Lo que a ti te tomaría muchos días, a Pandas le toma milisegundos. Y empresas como Netflix lo usan para analizar lo que ves. Ya tienes los datos limpios en la

[00:48] tabla, pero si le enseñas miles de filas grises a tu jefe, se va a quedar dormido. Necesitas dibujar gráficos, por eso usas Matplotlib. Esa librería es de dibujo técnico por excelencia. Te permite crear gráfico de barras o de pastel básicos, trazar líneas de tendencia y poner las bases de lo que va a ser tu reporte visual. Los gráficos de Matplotlib funcionan, pero tu jefe cree que se ven un poco viejos. Para impresionar a la mesa directiva necesitas estilo, así que suma Seaborn.

[01:13] Seaborn es el diseñador de modas del equipo. Toma los gráficos de Matplotlib y los vuelve visualmente hermosos, coloridos y profesionales a un nivel ejecutivo. Mientras ordenas los gastos, te das cuenta que necesitas hacer un análisis estadístico [música] avanzado para encontrar los patrones de fraude. Por eso llamas a SciPy. Esta librería toma las de NumPy y las eleva a un nivel científico avanzado. Resuelve ecuaciones y estadísticas complejas que a cualquiera le tomarían meses de

[01:39] universidad. En medio del desastre, el matemático del equipo te manda un análisis increíble, pero lo hizo en un lenguaje de programación llamado R. Y tú no vas a perder tiempo aprendiendo otro idioma, así que usas rpy. Esta librería es el traductor universal. Te permite meter y ejecutar ese código de R directamente en tu programa de Python sin que el sistema [música] colapse por ser otro lenguaje.

[02:00] Ya tienes los datos internos listos, pero tu jefe te suelta otra bomba, necesitamos comparar nuestros gastos con los precios de la competencia en internet y saber el precio del dólar en tiempo real. Y tú no vas a entrar a Google a copiar y pegar datos cada 5 minutos. Tienes que mandar a los detectives de internet a buscar la información por ti.

[02:17] Para traer el valor del dólar en este preciso momento, usas requests. Primero va a internet, toca la puerta de la página del banco, pide el dato exacto que necesitas y se lo trae a tu computadora en un segundo, sin que tú muevas un dedo. Comenzamos ya con la automatización pura.

[02:33] El problema es que requests te trae la página del banco, pero viene llena de códigos raros, imágenes [música] y hasta publicidad. Tú solo querías el precio del dólar. Por eso usas beautiful soup, que es como un colador que separa la basura del código y te entrega en la mano únicamente el texto o el precio limpio de lo que le [música] pediste.

[02:51] Pero luego tu jefe te pide los precios de 50,000 productos de la competencia y filtrar eso con un colador tardaría muchísimo tiempo. Así que sacas a scrappy. Si beautiful soup era como pescar en caña, scrappy es un barco pesquero industrial. Gigantes como Airbnb lo utilizan para extraer toneladas de información de internet de forma masiva y automática en tan solo minutos.

[03:11] Pero hay un último problema. La página de un proveedor te obliga a iniciar sesión con usuario y contraseña, dar tres clics y arrastrar un mapa para ver los precios. Las otras librerías no pueden hacer eso, así que usas selenium.

[03:24] Esta herramienta toma el control de tu navegador, abre una ventana de internet real y como si fuera un fantasma, escribe la contraseña por ti, da los clics necesarios y te consigue la información que necesitas. Ya tienes los datos de tu empresa y los datos de internet. Todo va perfecto, pero para ganarte el ascenso, decides ir un paso más allá. Quieres que el sistema tenga cerebro [música] propio, que prediga el futuro y entienda los archivos de texto por sí solo. Es hora de inteligencia artificial.

[03:49] Para predecir cuánto va a gastar la empresa el próximo mes basándote en el historial, usas scikit-learn. Esta biblioteca analiza los patrones del pasado y te da una predicción inteligente del futuro de tus finanzas para que nunca te vayas a quedar en ceros. Es la herramienta más popular para iniciar con machine learning.

[04:06] Luego quieres crear un sistema inteligente más profundo, algo que pueda aprender como un cerebro humano para reconocer firmas falsas en los recibos de gastos. Por eso usas TensorFlow, que fue creada por Google. Es como una fábrica gigantesca e industrial [música] de inteligencia artificial, que hoy en día utilizan las empresas más grandes del mundo para procesar cosas masivas.

[04:25] Y para comparar opciones, pruebas PyTorch, que fue creada por Meta. Mientras TensorFlow es como una fábrica enorme, PyTorch es como un taller flexible [música] y dinámico. Hoy en día es la biblioteca favorita de los investigadores del mundo, porque permite cambiar de opinión sobre la marcha mientras entrenas la inteligencia artificial.

[04:44] El problema es que programar en TensorFlow o PyTorch requiere miles de líneas de código indescifrables. Para no volverte loco, utilizas Keras. Keras te da piezas ya prefabricadas. En lugar de soldar un motor de inteligencia artificial tornillo por tornillo, Keras te da los bloques listos para que los unas y los tengas en minutos.

[05:03] Pero para que el sistema pueda leer los recibos físicos impresos de los empleados, necesitas darle ojos al programa. Por eso utilizas OpenCV. Esta biblioteca le permite a tu computadora analizar imágenes y vídeos en tiempo real para reconocer objetos, caras o en este caso, escanear textos en papel arrugado.

[05:21] Finalmente, tu jefe te da miles de correos de quejas de clientes sobre los reembolsos de gastos y quiere saber si están muy enojados. Y tú no vas a leer todos los correos. Así que utilizas NLTK. Esta librería analiza el lenguaje humano, desmenuzar las frases y te dice si el tono general de los textos es feliz, triste o furioso.

[05:39] Tienes todo tu sistema listo, pero no [música] puedes entregarle a tu jefe un montón de líneas de código negras. Tienes que empaquetarlo todo en una aplicación dinámica, rápida y visual que pueda abrir desde su teléfono o en su computador.

[05:51] Piensas en construir una plataforma web gigante, donde todos los gerentes puedan entrar con su propia contraseña. Por eso, te imaginas usar Django. Es como un edificio prefabricado que utilizan empresas como Instagram. Te entrega todo con seguridad y el sistema para que los usuarios lo puedan utilizar. [música] Tú solo llegas a decorar.

[06:07] Pero te das cuenta que Django es demasiado pesado para lo que tu jefe quiere ver ese día. Él solo espera una pantalla rápida y minimalista. Así que cambias a Flask. Flask es lo opuesto, una cajita con ladrillos sueltos que te da la libertad de construir una página web en pocos minutos sin herramientas que te estorben.

[06:23] Para que los datos puedan volar entre el teléfono de tu jefe y su computadora, usas FastAPI. Es ridículamente rápida, aguanta millones de peticiones por segundo y, lo mejor de todo, escribe los manuales de instrucciones del sistema en tiempo real.

[06:38] Para asegurarte de que la página no se congele mientras FastAPI busca los datos en internet, agregas Asyncio. Esta librería le enseña a tu programa a hacer varias cosas a la vez. Es como un mesero eficiente. Mientras espera a que la cocina entregue el platillo A, va tomando la orden de las mesas B y C, y así se optimiza el tiempo y evita que tu programa tarde mucho en realizar las peticiones.

[06:57] Ahora, necesitas guardar las contraseñas de los jefes para que puedan ver el reporte, pero instalar un servidor de base de datos es costoso para una demo. Por eso utilizas SQLite. Es como una base de datos pequeña que vive en un solo archivo y dentro de tu computador. Rápida y sin instalaciones.

[07:15] Cuando tu jefe te dice, "Quiero ver esto desde mi tablet y en mi teléfono también." Pero tú no entras en pánico. Utilizas Kivy. Esta librería toma tu interfaz y la adapta automáticamente para que funcione de manera [música] interactiva en cualquier pantalla del mundo.

[07:29] Para relajarte después de terminar todo y con el tiempo que te ahorraste, recuerdas que un sueño de la infancia era hacer un videojuego. Así que utilizas Pygame para armar un pequeño juego en 2D, donde un monito atrapa los billetes de los gastos de la empresa.

[07:41] Ese es el kit clásico para hacer juegos pixelados con sonido arcade. Y si quieres que ese juego o las animaciones de los gráficos financieros [música] se vean en alta definición y con efectos visuales en 3D impresionantes para la presentación final, tienes [música] a Piglet. El primo moderno para el manejo de multimedia pesada.

[07:58] Al final de la semana, tu jefe abre la aplicación en su teléfono, ve los gráficos limpios, las [música] predicciones del futuro y los datos automatizados. El resultado, te ganas el ascenso. Y todo por saber qué herramienta elegir en el momento correcto. Así que ya sabes, no necesitas aprenderte 500.000 bibliotecas que existen en el mundo. Solo tienes que entender para qué sirve cada una y cómo conectarlas en una historia real. Como siempre decimos aquí, no es difícil, solo es nuevo. Déjame en los comentarios

[08:23] cuál de estas herramientas te urge aprender hoy mismo para salvar a la empresa. No olvides suscribirte y nos vemos en el próximo vídeo.
