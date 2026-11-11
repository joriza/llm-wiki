# Resumen: Todas las HERRAMIENTAS IA que necesitas 100% GRATIS e ILIMITADAS

- **Tipo**: resumen de fuente (tutorial/guía de IA local: texto, imagen, vídeo y código).
- **Canal**: Xavier Mitjana ([[xavier-mitjana]]).
- **Publicado**: 2025-09-07. **Duración**: 36:16.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UlvCl6rQK8U).
- **Raw**: [raw/inteligencia-artificial/2025-09-07-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana.md](../../raw/inteligencia-artificial/2025-09-07-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (Qwen Image, FLUX Kontext Dev), [[evaluacion-de-llms]] (juez externo), [[agentes-de-codigo]] (vibe coding).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Los dos grandes problemas de usar IA en la nube tienen la misma solución: **ejecutar modelos en el propio ordenador, gratis**. (1) **Privacidad**: citando a Sam Altman — «la gente le cuenta a ChatGPT las cosas más personales de su vida... como si fuera un terapeuta» — advierte que esas conversaciones «no están protegidas por ninguna ley»: ante una demanda, la empresa puede ser obligada a entregarlas. (2) **Control**: caídas del servicio, actualizaciones y cambios de configuración «pueden hacer que todo tu trabajo del día se venga abajo». La alternativa local da «privacidad total, personalización e independencia», «al nivel de las herramientas de pago», para texto, código, imagen y vídeo — demostrado en cinco casos de uso con tres herramientas y una familia de modelos.

## Recorrido del vídeo

- **[03:00–04:45] (Publicidad)**: segmento patrocinado por HP (portátil Omen Max 16, AMD Ryzen + RTX), citado como hardware capaz de ejecutar los demos.
- **[05:00–11:47] Caso 1 — documento confidencial en local (LM Studio + Gemma 3)**: un informe de sanidad médico-forense escaneado como imagen → modelo **Gemma 3 de 27B** (multimodal, 7 tokens/segundo): transcripción fiel (marcando fragmentos ilegibles), resumen (latigazo cervical, 98 días de tratamiento, secuelas), **dos correos** (a la paciente en lenguaje sencillo y al juez en técnico) y **traducción al inglés**. Para tareas ligeras cambia al Gemma 3 12B «como en ChatGPT». Sistema prompt de ejemplo en LM Studio: «responde siempre en español de España...». Conclusión: «estos modelos funcionan mejor que muchas herramientas específicas de reconocimiento de texto».
- **[12:01–19:45] Caso 2 — imagen y vídeo en ComfyUI**: **Qwen Image** (Alibaba) — «adherencia al prompt fantástica», genera **texto dentro de imágenes** (en inglés; en español «aún no funciona bien»); 40 pasos ≈ 4-6 minutos por imagen, optimizable a ~2 minutos o **55 segundos con LoRAs** precargados. **Wan 2.2** (Alibaba) para **animar** esas imágenes en vídeo en un clic. **FLUX Kontext Dev** para **edición por instrucciones** (~45 segundos por imagen HD 1920×1080): añadir un sombrero, colorear un blanco y negro, reinterpreta una escena de los años 50 a moderna conservando el cartel «vendo coche» y a la misma chica, o convertirla al estilo Studio Ghibli. Argumento profesional: editar en local sin «comprometer nuestra propiedad intelectual o... la de los proyectos que realizamos para otros».
- **[19:45–24:09] Caso 3 — razonamiento en Ollama (Qwen 3 30B-A3B)**: MoE de 30B que «activa 3B» (por eso corre en local). Sube un paper de 18 páginas (VideoGigaGAN, superresolución de vídeo) y pregunta abierta: piensa ~1 minuto y explica el «dilema consistencia-calidad» y las tres técnicas clave en lenguaje simple. Validación cruzada: sube el documento a ChatGPT y usa **GPT-5 como juez** («evalúa si la respuesta es correcta en precisión, no estilo») → confirma que es precisa. Combinado con confidencialidad, «abre un abanico de casos de uso enorme».
- **[24:09–26:34] Caso 4 — vibe coding**: Qwen3-Coder: el open source «compite con Claude Sonnet 4 en el SWE-Bench Verified» (la versión grande ocupa 290 GB; la de 30B corre en local). Prompt único para una **app de cálculo de hipoteca** (HTML/CSS/JS, UI moderna) → pegado en CodePen funciona: cuota, intereses, gráficos y tabla de amortización, recálculo al cambiar tipo o plazo — «100% en local en una única instrucción».
- **[26:34–36:16] Instalación de las tres herramientas**: **Ollama** — su favorito para «interrogar modelos sobre documentos extensos: la función de RAG por defecto la hace mejor que LM Studio»; descarga modelos automáticamente al usarlos. **LM Studio** — más opciones de configuración; cuatro secciones (chat, modelos, buscador); iconos por capacidad (martillo = herramientas, cerebro = razonador, ojo = visión); interfaces por nivel (normal y **Power User** con prompt de sistema por modelo y métricas: Qwen 3 a **60 tokens/segundo**, primer token en 0,1 s). **ComfyUI** (comfy.org) — «mucho más potente pero con plantillas de un clic»: Qwen Image Text-to-Image, FLUX Kontext Dev y las versiones de Wan (14B para GPUs potentes, 5B para modestas); parámetros visibles (pasos de inferencia, frames por segundo, resolución, seed). Cierre con reiteración del patrocinio.

## Puntos clave

1. **Privacidad legal, no solo preferencia**: las conversaciones en la nube «no están protegidas por ninguna ley» y pueden entregarse judicialmente (cita de Sam Altman) [00:00-00:52, 05:00-05:44].
2. **Multimodalidad local real**: Gemma 3 27B transcribe documentos escaneados mejor «que muchas herramientas específicas de OCR» y encadena resumen + correos + traducción [07:02-11:47].
3. **Texto legible en imágenes**: Qwen Image escribe texto coherente dentro de imágenes (en inglés; el español aún falla) — capacidades «similares a GPT Image» en local [13:13-16:02].
4. **Validación con juez externo**: respuesta local evaluada por GPT-5 solo en precisión — patrón barato para confiar en modelos locales [23:18-24:09].
5. **MoE para local**: Qwen 3 30B-A3B (3B activos) y Qwen3-Coder 30B — «modelo open source que compite con Claude Sonnet 4 en SWE-Bench Verified» [20:06-20:34, 24:38-25:06].
6. **Elección de herramientas**: Ollama para RAG sobre documentos largos; LM Studio para configuración fina; ComfyUI con plantillas para imagen/vídeo [27:39-28:35, 31:45-33:13].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Gema» por Gemma, «Kiwin/Keywin/QIN» por Qwen, «Oyama» por Ollama, «Confi» por ComfyUI, «One 2» por Wan 2.2, «Flux Context Def» por FLUX Kontext Dev, «Cloud Set 4» por Claude Sonnet 4, «Gibli» por Ghibli, «Samman» por Sam Altman). Este resumen los normaliza.
- Incluye patrocinio (HP Omen Max 16) entre [03:00] y [04:45], transcrito en el raw y excluido de la síntesis.
- Cuarta fuente del lote alineada con IA local (con 4/57, 5/57 y 6/57); consolidación conjunta pendiente (LM Studio/Ollama/ComfyUI, Qwen, Gemma, FLUX/Wan).
- Fuente 7/57 de la playlist «IA-Recursos».
- **Enlaces de consolidación (2026-11-11)**: [[ia-local-texto]] · [[xavier-mitjana]].
