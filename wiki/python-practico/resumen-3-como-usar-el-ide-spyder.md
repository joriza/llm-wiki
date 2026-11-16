# Resumen: 3. Cómo usar el IDE Spyder para programar en Python 3

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-01-20-3-como-usar-el-ide-spyder-para-programar-en-python-3-curso-de-python-3-desde-cer.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «payton»→Python, «spider/slider/espai de reports»→Spyder/Spyder-reports, «ceibas»→Save as, «consola de mike tyson»→consola de IPython, «caip/kite»→Kite, «con da update olt»→conda update --all, «más lab/matlab»→MATLAB, «el estudio»→RStudio) — https://www.youtube.com/watch?v=m6Ij39K-TPc — La Cartilla, 2020-01-19 (10:28). Tutorial 3 del curso «Python 3 desde cero»; recorrido de configuración del IDE, no de sintaxis.

## Spyder: el IDE científico

Spyder es uno de los IDE más usados de Python, construido con filosofía **para científicos, ingenieros y analistas de datos**; open source, instalable vía la distribución Anaconda y extensible con plugins (spyder-notebook para editar Jupyter notebooks dentro del IDE, spyder-unitest para pruebas unitarias, spyder-reports para reportes en Markdown). Recomendación de 2020: actualizar de Spyder 3 a 4 (`conda update --all`) por el asistente de codificación Kite, la interfaz renovada y mejoras de desempeño. Nota de contexto: **Kite (asistente con IA de predicción de código) fue descontinuado años después** — la parte del video sobre Kite queda como registro histórico, no como herramienta vigente.

## Los tres paneles

- **Izquierda**: editor de texto (donde se escribe el código).
- **Derecha superior**: explorador de variables en memoria (observar e interactuar con cada variable al ejecutar), ventana de ayuda de librerías/módulos, pestaña de plots con gráficas integradas (configurable a ventana dedicada) y explorador de archivos del proyecto.
- **Derecha inferior**: consola IPython — instrucciones cortas y toda la salida de las corridas (warnings, errores).

## Configuración destacada

Ejecución con F5 (guarda automáticamente); depuración; menú de preferencias: temas claro/oscuro (con reinicio), colores de sintaxis, **backend de gráficos** (`inline` para integrar plots en el IDE vs automático para ventanas independientes), shortcuts (accesibles desde una ventana propia), layouts predefinidos (MATLAB y RStudio para quienes vienen de esos entornos), sistema de proyectos, y monitoreo opcional de RAM/CPU cada 2 s. Advertencia práctica del canal: Spyder «tarda un tiempo considerable en arrancar».

## Dónde encaja en la wiki

Pieza de herramental básico del dominio: es la contraparte IDE-científica de las opciones ya cubiertas (VS Code con notebooks en [[resumen-podras-contra-este-ejercicio-avanzado-de-python]]; Jupyter como entorno de análisis) — el explorador de variables y el backend de plots son el argumento distintivo de Spyder frente a ambos para flujo exploratorio de datos. Su instalación vía Anaconda/conda conecta con la gestión de entornos de [[resumen-FAV-333-uv-reemplaza-pip]] (uv como alternativa moderna a pip/conda para proyectos). Contexto 2020: Kite descontinuado; la recomendación de IDE científico hoy se revisaría.

---

**Ver también**: [[resumen-podras-contra-este-ejercicio-avanzado-de-python]] · [[resumen-FAV-333-uv-reemplaza-pip]].


## Ver también

- [[interfaces-graficas-python]]
