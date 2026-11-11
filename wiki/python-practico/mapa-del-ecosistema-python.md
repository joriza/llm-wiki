# Mapa del ecosistema de librerías Python

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 4/7 del lote python-practico).
- **Fuentes**: [[resumen-todas-las-bibliotecas-de-python-explicadas-en-8-minutos]].

## El principio de selección

No se aprenden «500.000 bibliotecas»: se entiende **para qué sirve cada una y cómo conectarlas en una historia real**. El método del video — un caso corrido (Excel de un millón de filas → análisis → reporte ejecutivo → aplicación) donde cada obstáculo exige una herramienta — es en sí la lección: la elección la determina el problema del momento, no la moda.

## La taxonomía por rol

| Rol | Librerías | En una frase |
| --- | --- | --- |
| Cómputo numérico | NumPy, SciPy | La calculadora científica; SciPy la eleva a estadística avanzada (fraude, ecuaciones) |
| Tabular | Pandas | «La reina para ordenar datos» (Netflix citada); clásico, se frena con volúmenes grandes |
| Tabular a escala | **[[polars|Polars]]** | El reemplazo moderno para >100.000 filas (ver fuente 2 de este dominio) |
| Visualización | Matplotlib, Seaborn | Dibujo técnico (barras, pastel, tendencias); Seaborn le pone estilo ejecutivo |
| Web estático | requests, BeautifulSoup | Pedir un dato HTTP y «colarlo» del HTML |
| Scraping masivo | Scrapy | Extracción industrial (Airbnb citada) |
| Scraping con interacción | Selenium | Navegador real: login, clicks, mapas (hoy el estándar interactivo es [[playwright|Playwright]]) |
| ML clásico | scikit-learn | Predicción sobre patrones históricos; la puerta de entrada al ML |
| Deep learning | TensorFlow, PyTorch, Keras | Fábrica industrial (Google) vs taller flexible de investigación (Meta); Keras da los bloques prefabricados |
| Visión y lenguaje | OpenCV, NLTK | Ojos (imágenes, OCR de recibos) y oídos (tono/sentimiento de texto) |
| Frameworks web | Django, Flask, **[[fastapi|FastAPI]]** | Edificio prefabricado vs ladrillos sueltos vs API rápida con docs automáticas |
| Concurrencia | Asyncio | «El mesero eficiente»: no esperar ocioso mientras otra petición procesa |
| Persistencia liviana | SQLite | Una base de datos entera en un archivo, sin instalación |
| UI y juegos | Kivy, Pygame, Pyglet | Interfaces móviles multiplataforma; juegos 2D; multimedia pesada/3D |

## Cruces con la wiki

- El bloque **frameworks web** es exactamente el rol de «eliminar plomería» de [[codigo-de-plomeria]] (Django/Flask como deuda histórica, FastAPI como estado del arte).
- El bloque tabular conecta con el pipeline de [[automatizacion-con-python]] (Polars como paso de procesamiento).
- La librería de logging que cualquier proyecto de este mapa necesita: [[loguru]] / [[logging-en-python]].

**Advertencia de profundidad**: la fuente es divulgativa (una frase por librería, sin código ni matices de rendimiento); para decisiones técnicas reales, las páginas enlazadas tienen los detalles medidos.
