# Resumen: Todas las Bibliotecas de Python | Explicadas en 8 minutos

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2026-05-22-todas-las-bibliotecas-de-python-explicadas-en-8-minutos.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «scrappy»→Scrapy, «Piglet»→Pyglet) — https://www.youtube.com/watch?v=4fmsMg5oxcs — Jorge Rolón · Finanzas y Tecnología, 2026-05-21 (08:29).
- **Nota**: fuente 4/7 del lote python-practico. Panorámica divulgativa: una librería = una frase, sin profundidad técnica; su valor es el mapa de roles, consolidado en [[mapa-del-ecosistema-python]].

## La estructura: una historia para elegir herramienta

El recurso didáctico del video: un caso corrido (Excel de un millón de filas → análisis → reporte ejecutivo → aplicación) donde cada obstáculo exige una librería distinta. La moraleja: «no hay que aprenderse 500.000 bibliotecas — entender para qué sirve cada una y cómo conectarlas en una historia real».

## Las 23 librerías por rol (tal como las presenta)

- **Cómputo numérico y datos**: NumPy («la calculadora científica», operaciones masivas usadas por finanzas), Pandas («la reina para ordenar datos», Netflix como usuario citado), SciPy (estadística avanzada sobre NumPy: patrones de fraude, ecuaciones), rpy (ejecutar código R desde Python).
- **Visualización**: Matplotlib (gráficos técnicos: barras, pastel, líneas de tendencia), Seaborn (el «diseñador de modas»: estilo ejecutivo sobre Matplotlib).
- **Web y scraping**: requests (HTTP simple: pedir el valor del dólar), BeautifulSoup («el colador»: separar el dato del HTML), Scrapy («el barco pesquero industrial»: extracción masiva — Airbnb citado), Selenium (control de navegador para login/clicks/mapas).
- **IA y machine learning**: scikit-learn (predicción sobre patrones históricos, la puerta de entrada al ML), TensorFlow (Google, «fábrica industrial»), PyTorch (Meta, «taller flexible», favorito de investigadores), Keras (bloques prefabricados sobre TensorFlow/PyTorch), OpenCV (visión: imágenes/vídeo, escanear recibos), NLTK (lenguaje humano: análisis de tono de correos de clientes).
- **Frameworks web**: Django («edificio prefabricado», Instagram), Flask («ladrillos sueltos», minimalista), FastAPI (velocidad + documentación automática), Asyncio (concurrencia, «el mesero eficiente»).
- **Persistencia, UI y juegos**: SQLite (base de datos en un solo archivo, sin instalación), Kivy (interfaces multiplataforma móviles), Pygame (juegos 2D pixelados), Pyglet (multimedia pesada, 3D).

## Cruces con la wiki

El mapa conecta con páginas existentes del dominio: [[fastapi]] (aquí presentada por velocidad y docs automáticas; consolidación completa en su página), y el debate Pandas vs [[polars]] (el video presenta Pandas como «la reina»; nuestra fuente 2 documenta que por encima de ~100.000 filas el reemplazo natural es Polars — ver [[automatizacion-con-python]]). También cruza con [[codigo-de-plomeria]]: Django/Flask/FastAPI aparecen exactamente en el rol de eliminar plomería web.

---

**Ver también**: [[mapa-del-ecosistema-python]] (concepto consolidado con la taxonomía completa).
