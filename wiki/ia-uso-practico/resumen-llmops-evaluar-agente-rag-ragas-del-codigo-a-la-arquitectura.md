# Resumen: LLMOps — Cómo Evaluar tu Agente RAG con RAGAs

- **Tipo**: resumen de fuente (tutorial técnico: evaluación de agentes RAG con RAGAs).
- **Canal**: Del Código a la Arquitectura (página de entidad pendiente de consolidación).
- **Publicado**: 2025-09-23. **Duración**: 10:46.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oELZcpNCU9c).
- **Raw**: [raw/ia-uso-practico/2025-09-23-llmops-evaluar-agente-rag-ragas-del-codigo-a-la-arquitectura.md](../../raw/ia-uso-practico/2025-09-23-llmops-evaluar-agente-rag-ragas-del-codigo-a-la-arquitectura.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[evaluacion-de-llms]] (RAGAs).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Tras desplegar su agente RAG gratis en Hugging Face Space (video anterior), llega la pregunta clave de LLMOps: **«¿cómo sabemos que está funcionando bien?»**. Respuesta: evaluación objetiva con **RAGAs** — framework para medir pipelines RAG — construyendo un panel que puntúa **fidelidad** (faithfulness: qué tan apegada al contexto está la respuesta) y **precisión de contexto**, usando un LLM como juez (Gemini 2.5 Flash-Lite) y embeddings multilingües. Los puntajes son la **línea base** para medir todas las mejoras futuras.

## Conceptos y recorrido del vídeo

- **[00:21–01:36] MLOps vs LLMOps**: **MLOps** automatiza y estandariza el ciclo de vida del modelo (datos, entrenamiento, validación, despliegue, monitoreo). **LLMOps** es su especialización para aplicaciones con LLMs: «en lugar de entrenar modelos desde cero, nos preocupamos por la ingeniería de prompts, la gestión de la evaluación y el monitoreo constante para detectar alucinaciones». El primer paso «y quizás el más importante» es la evaluación objetiva — por eso RAGAs.
- **[02:10–03:26] Setup en Colab**: instalación de dependencias (el aviso de reiniciar el entorno es normal en Colab al instalar versiones nuevas); imports para variables de entorno, llamadas a la API, estructuración de datos y evaluación con RAGAs; configuración de la **API key de Gemini** (modelos gratuitos; guardada en los secretos de Colab; el video de creación del key enlazado en descripción) y la URL del agente desplegado en Hugging Face Spaces.
- **[03:48–05:17] El dataset de evaluación**: diccionario `eval_data` con dos claves: **question** (preguntas al agente) y **reference** («las respuestas ideales o correctas» — «nuestra base para juzgar la calidad»). El caso de prueba usa solo 3 preguntas y 3 referencias. Ojo con límites: usando Gemini se consume la cuota gratuita — error **419** de Google si se excede (esperar o cambiar de modelo). Como el agente usa 2.5 Flash, el script de evaluación usa **2.5 Flash-Lite** «para no consumir los tokens gratuitos de nuestro agente».
- **[05:17–07:02] Recolección de respuestas y contextos**: listas `respuestas_agente` y `contextos_agente`; bucle sobre las preguntas con `requests` POST a la URL del agente (JSON con `consulta` y `session_id` único por **uuid**; **timeout de 120 segundos** para dar tiempo al agente). El agente desplegado devuelve **respuesta + contexto usado** — ambos se extraen y agregan. Manejo de errores: capturar, imprimir qué pregunta falló y añadir valores vacíos «para no interrumpir el resto del proceso». Verificación en los logs del Space.
- **[07:02–07:53] Dataset de Hugging Face**: se agregan las claves **answer** y **contexts** al diccionario y se convierte a un **Dataset de Hugging Face** — «el formato que RAGAs espera».
- **[07:23–09:21] Juez y embeddings + métricas**: RAGAs necesita un **LLM evaluador** (Gemini 2.5 Flash-Lite: «lee la pregunta, la respuesta del agente, el contexto y la referencia para dar una puntuación») y **embeddings** (HuggingFaceEmbeddings con paraphrase-multilingual-MiniLM «para calcular la similitud semántica», p. ej. pregunta vs respuesta para la métrica de relevancia). Métricas importadas de ragas.metrics: **faithfulness** y **context precision** (documentación oficial enlazada). Llamada a `evaluate(dataset, metrics, llm_judge, embeddings)` con **`raise_exceptions = False`** — «asegura que la evaluación continúe incluso si hay errores con una fila en particular».
- **[09:21–10:46] Resultados**: el objeto `result` trae el resumen de puntuaciones; `to_pandas()` (con `set_option` para ver columnas completas) da la **tabla por pregunta y métrica** — «visión granular del rendimiento». Cierre: «ya tenemos un reporte objetivo que nos dice el porcentaje de fidelidad y de precisión del contexto» → línea base para medir mejoras.

## Puntos clave

1. **LLMOps = MLOps aplicado a LLMs**: prompt engineering + gestión de evaluación + monitoreo de alucinaciones, no entrenamiento de modelos [00:21-01:36].
2. **Evaluación objetiva con referencias**: questions + reference answers como criterio de calidad [03:48-04:23].
3. **Ahorrar cuota del agente**: el evaluador usa un modelo distinto y más ligero (Flash-Lite) que el agente evaluado (Flash) [04:56-05:17].
4. **El agente debe devolver contexto**: respuesta + contextos usados son necesarios para las métricas RAGAs [06:11-06:33].
5. **Arquitectura del panel**: dataset HF + LLM juez + embeddings + `evaluate()` con `raise_exceptions=False` → DataFrame granular por pregunta [07:23-09:37].
6. **Línea base**: las puntuaciones de fidelidad y precisión de contexto son el punto de partida para medir cualquier mejora futura [10:03].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («ragas/RAC/rack» por RAGAs/RAG, «Hugin/Hugan Face» por Hugging Face, «Yemini/Yemina» por Gemini, «piqui/APIC» por API key, «2.5 5 flashlight» por Flash-Lite, «Colap» por Colab, «datafray» por DataFrame, «matrix» por metrics, «Paraaprase Multilinguan Mini LM» por paraphrase-multilingual-MiniLM). Este resumen los normaliza.
- Parte de una serie (video previo: despliegue del agente en Hugging Face Space con Docker, enlazado en descripción); los scripts están en la descripción, no en el raw.
- Fuente 19/57 de la playlist «IA-Recursos»; decimoquinto canal nuevo del lote (Del Código a la Arquitectura), entidad aplazada.
