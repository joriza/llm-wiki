# Resumen: Google crea tu PROFESOR PARTICULAR con IA (y es GRATIS)

- **Tipo**: resumen de fuente (tutorial: NotebookLM como tutor adaptativo en Gemini).
- **Canal**: Migue Baena IA (entidad pendiente de consolidación).
- **Publicado**: 2026-07-19. **Duración**: 19:47.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IH__GK4XBbU).
- **Raw**: [raw/inteligencia-artificial/2026-07-19-google-crea-tu-profesor-particular-con-ia-y-es-gratis.md](../../raw/inteligencia-artificial/2026-07-19-google-crea-tu-profesor-particular-con-ia-y-es-gratis.md) (subtítulos automáticos, transcripción literal).
- **Páginas de concepto asociadas**: [[evaluacion-de-llms]] (evaluación diagnóstica como base del plan de estudio); [[agentes-de-codigo]] (Canvas para generar la app).
- **Disposición de la ingesta**: Nueva.

## Tesis central

NotebookLM dentro de Gemini, con el modo **«estudia y aprende»**, funciona como profesor particular adaptativo: se le da un temario real (manual del permiso B de 2011 páginas), fija un objetivo (aprobar en 3 semanas con máx. 2 fallos), hace una **evaluación diagnóstica** de 15 preguntas, y a partir de los errores reorganiza las lecciones por prioridad. El mismo sistema vale para oposiciones, carreras o certificaciones «basadas en tus propios materiales». Cierra generando una **aplicación interactiva** con Canvas para practicar casos reales.

## Recorrido del vídeo

- **[00:42-03:30] Setup**: cuaderno nuevo en Gemini → «estudia y aprende» → objetivo («aprobar en 3 semanas con máx. 2 fallos, basado exclusivamente en el manual») → subir el PDF (también admite webs, YouTube, texto pegado). NotebookLM organiza el temario en lecciones y genera un cuestionario inicial de personalización.
- **[03:30-06:44] Materiales de estudio generados en paralelo** desde el mismo cuaderno: **infografía** detallada (resumen visual del temario), **presentación** en diapositivas (con tablas, líneas de tiempo y comparativas: ITV, documentación, puntos) y **resumen en vídeo** (~8,5 min, estilo «podcast con imágenes», hoja de ruta de 5 niveles). Tres profundidades para elegir según el momento.
- **[08:49-11:44] Evaluación inicial**: 15 preguntas sin consultar el manual (resultado: 7/15). El cuaderno actualiza el perfil: 42 % del temario dominado, 5 puntos fuertes y 7 áreas de mejora, desglosado en 4 bloques (normas, señales, seguridad vial, vehículos/mantenimiento) con detalle por subtema (marcas viales, alcohol y drogas, seguridad activa…). El plan reordena las lecciones según los errores concretos, no según el índice del manual; el progreso global se recalcula repitiendo el cuestionario completo.
- **[11:44-16:37] Lección adaptada (tasas de alcoholemia)**: empieza recordando el objetivo y el error del alumno; tabla de límites (general 0,25 mg/l aire / 0,5 g/l sangre; novel y profesional 0,15/0,3) con el aviso de fijarse en la **unidad** de la pregunta; situaciones prácticas (novel con 14 meses; peatón obligado si está implicado en accidente o infracción); cuestionario de la lección con umbral del 80 % para convertir el área en fortaleza. Charla abierta con el profesor dentro del cuaderno: pedidos de preguntas-trampa tipo examen (novelidad contada desde el primer permiso) y **árbol de decisión** visual para resolver el tema.
- **[16:37-19:41] App interactiva con Canvas**: «¿quién pasa primero?» — simulador de prioridades en cruces, generado con el símbolo «+» + Canvas dentro del cuaderno, con código escrito y preview en vivo. 8 escenarios por dificultad (sin señalizar, stop, semáforos, ambulancia), puntuación, rachas, pistas y explicación de la norma tras cada respuesta.

## Puntos clave

1. **Diagnóstico antes del plan**: la evaluación de 15 preguntas convierte «estudiar el manual» en un plan priorizado por errores reales (42 % dominado, áreas concretas) [08:49-11:44].
2. **Tres formatos de estudio del mismo material** (vídeo guía, presentación, infografía) generados en paralelo y elegibles por profundidad [03:30-06:44].
3. **Umbral de dominio del 80 % por lección** y recalculado global solo con el cuestionario completo [13:59-16:37].
4. **El material es la fuente única**: todo (lecciones, trampas, app) sale del PDF propio, no de conocimiento genérico del modelo [01:38-02:35].
5. **Canvas convierte el temario en software**: simulador interactivo con niveles, pistas y explicación de la norma [16:37-19:41].

## Notas sobre la fuente

- Nombres garbiñados que este resumen normaliza: «Notebook LM/NotebookLM» → NotebookLM, «Yemini/Gemini» → Gemini, «conductor Nobel/nobeles» → conductor novel, «tasas de alcoemia» → alcoholemia, «Hickfield/Higfield» → Higgsfield (patrocinador), «Gemini Omnil Flash/Omnifash/Omniflash» → Gemini Omni Flash (modelo de vídeo del patrocinio), «Nano Banana 2 Light/Lite» → Nano Banana 2 Lite.
- **Patrocinio Higgsfield** entre [06:17] y [08:49] (Nano Banana 2 Lite para imagen iterativa + Gemini Omni Flash para animar/editar por lenguaje natural), transcrito en el raw y excluido de la síntesis.
- Cruce con el corpus NotebookLM del lote (25/57 [[resumen-notebooklm-reventar-ia-gratis-alejavi-rivera]] y 35?/57 SurfSense): aquí el foco es el modo tutor con evaluación, no la ingesta de fuentes; y con [[evaluacion-de-llms]] por el patrón diagnosticar → adaptar (análogo a evaluar modelos antes de decidir).
- La fuente 37/57 de la playlist (numeración canónica del playlist JSON; el log del 2026-11-10 la llamaba «fuente 36») — raw por el fallback de subtítulos tras el fallo de la sesión previa.
