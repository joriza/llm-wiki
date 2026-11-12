# Resumen: Curso evaluación LLM con Promptfoo — episodio 1

- **Tipo**: resumen de fuente (curso/tutorial técnico: evaluación de LLMs con Promptfoo).
- **Canal**: [[la-hora-maker]].
- **Publicado**: 2024-09-16. **Duración**: 45:42.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=nGaHoH9HHu0).
- **Raw**: [raw/ia-uso-practico/2024-09-16-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker.md](../../raw/ia-uso-practico/2024-09-16-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[evaluacion-de-llms]] (Promptfoo local).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Publicado justo el día después del lanzamiento de o1 de OpenAI («el salseo del día»: mucha gente hace videos de prensa, pocos prácticos), este episodio enseña a **comparar modelos con datos, no con hype**: «¿es mejor el o1 o el mini? ¿Cómo lo sé? Haciendo pruebas». La herramienta es **Promptfoo**: open source (MIT), nacida para evaluaciones de seguridad (salidas peligrosas, filtrado de datos personales), útil para evaluar prompts, agentes y RAGs, con soporte para **Ollama** y muchos proveedores — lo que permite evaluaciones **100% locales**: sin enviar datos a terceros, sin coste de API, con configuración en YAML versionable y reproducible.

## Recorrido del vídeo

- **[01:25–04:10] Instalación y filosofía**: `npm install -g promptfoo`; verificación con `promptfoo --version`. La configuración vive en un `promptfooconfig.yaml` con cuatro componentes: **prompts** (plantillas con `{{variables}}`), **providers**, **tests** y variables. Comandos básicos: `promptfoo eval` (ejecuta; lee promptfooconfig.yaml por defecto) y `promptfoo view` (visor local en localhost:15500). Documentación completa: getting started, listado de providers (Ollama, Azure, Hugging Face, Groq, LiteLLM, Mistral, Perplexity, Together...) y ejemplos.
- **[06:04–09:26] Configuración del experimento**: carpeta `lhm01-pruebas-ollama-basicas`; tres providers `ollama:chat` con **Gemma 2 de 2B, 9B y 27B** — la pregunta de fondo: «¿y si el modelo pequeño es suficiente para la tarea?» en vez de gastar más y ser más lento. Variable `mensaje` con dos preguntas: «¿qué es el movimiento Maker y cuál fue su rol durante la pandemia?» y el valor de una resistencia «rojo rojo marrón dorado» (220 Ω ±5%). Prompt mínimo: `usuario: {{mensaje}} / asistente:`. Opción `evaluateOption maxConcurrency: 1` (modelo a modelo). Sin aserciones, todo sale «Ok» — solo compara salidas (test A/B: el evaluador es humano, por ahora; luego hay funciones matemáticas u otro LLM como juez).
- **[10:29–13:07] Ejecución, caché y no-determinismo**: `promptfoo eval` genera la tabla de resultados; sin criterios todo pasa. `--no-cache` regenera de cero; la caché evita gasto al comparar APIs de pago. Los modelos **no son deterministas**: el Gemma 2 de 2B y el de 9B respondieron partes en inglés y el de 27B en castellano — según la ejecución.
- **[13:07–17:36] El visor (promptfoo view)**: variables a la izquierda, salidas desplegables, **latencia** (el 27B tarda «casi el triple»), feedback manual (marcar fallo/inválido), comentarios y tasas de acierto por modelo (Gemma 27B 100%, los otros 50%) — así se comparan modelos con evidencia.
- **[17:36–20:20] Variante de prompt para idioma**: cambiando la plantilla a «responde en español a la siguiente pregunta» las salidas salen en castellano — «podemos dirigir la salida... solo modificamos el prompt», sin cambiar código ni modelos.
- **[20:20–26:08] Chain of thought y aserciones**: o1 razona con chain of thought interno; nosotros podemos probarlo explícitamente con prompts (sin «cadenas ocultas... sin trampa ni cartón»): «resuelve esta pregunta paso a paso... ofrece la respuesta final con un valor numérico». Resultados mixtos: el 2B se va por las ramas, el 9B casi acierta (falta el ×10¹), el 27B da 220 Ω ±5%. **Aserciones**: `assert` tipo `contains` valor **220** — Promptfoo evalúa automáticamente si la salida contiene el valor esperado.
- **[26:44–29:06] Tamaños de modelo en Ollama**: gemma2:27b ocupa 16-19 GB (GPU de 24 GB o offload parcial a RAM); 9B ≈ 5,5 GB; Gemma son «modelos de Google construidos de forma similar a Gemini», sin el contexto de un millón de tokens del API; cuantizaciones (q3 ≈ 13 GB) para GPUs menores; en Mac M1 la memoria es unificada.
- **[29:06–33:00] Prompt «respira» y repeat**: variante minimalista («tómate un respiro y resuelve esta pregunta paso a paso devolviendo un valor numérico» + aserción 220) — el mediano acierta esta vez. Como la salida no es determinista (Ollama usa temperatura 0,7), `--repeat 5` ejecuta el mismo test 5 veces y promedia: resultado **4 éxitos / 11 fallos** — el buen resultado anterior era suerte. Coste: repetir 5 veces con modelos de pago caros (Claude Opus a ~75 USD/M tokens) eleva el coste; en local es gratis.
- **[36:02–37:35] La copla**: lo óptimo sería un **few-shot** (tabla de colores + ejemplos de cálculo), pero «esto que estamos evaluando es la capacidad del modelo base, sin documentos ni información extra» — clave para distinguir conocimiento internalizado vs. manipulación sobre datos traídos por RAG.
- **[37:35–45:36] El reto de Alberto (variables desde ficheros)**: ficha de cliente JSON del episodio anterior → variable `clientData` apunta a `cliente.json` y `{{clientData}}` inserta su contenido; prompts en ficheros separados; aserciones: la salida debe contener **«trusality»** (la marca), **«firmware»** (último problema) y en la v2 **«25»** (fecha de la interacción más reciente). Providers: Gemma 2 2B/9B, **Llama 3.1 8B** y **Mistral Nemo 12B** («optimizado para RAG»). Con `repeat 3`: extracción de información «tres de tres» — funciona bien incluso con Gemma 2 12B-équivalentes (2,8 GB de VRAM, apto para GPUs de 4 GB). Cierre: feedback, aserciones y elegir el LLM ajustado al caso de uso.

## Puntos clave

1. **Evaluar, no leer prensa**: «¿es mejor el o1? Haciendo pruebas» — test A/B (o A/B/C) con evidencia y tus propios ojos [00:26-00:58, 10:29].
2. **Promptfoo 100% local y reproducible**: YAML versionable, sin enviar datos a terceros, sin coste de API, Ollama + muchos providers [02:23-03:18].
3. **Sin aserciones todo «pasa»**: las aserciones (`contains` 220) convierten la comparación subjetiva en chequeo automático [23:05-24:45].
4. **No-determinismo medido**: temperatura 0,7 → `--repeat N` promedia y separa suerte de rendimiento real (4/11 tras repeat 5) [30:12-33:38].
5. **El tamaño importa pero contextualiza**: 27B correcto con CoT; Mistral Nemo 12B clava la extracción con 2,8 GB de VRAM [26:44-27:24, 43:27-44:05].
6. **Modelo base vs. RAG**: sin few-shot ni documentos se evalúa el conocimiento internalizado — distinto de operar sobre datos recuperados [36:02-37:35].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («prom Fu/pron Fu/pront Fu» por Promptfoo, «jam el» por YAML, «olama/oyama» por Ollama, «Gema» por Gemma, «haing Face» por Hugging Face, «gitc» por GitHub, «sonet» por Sonnet, «billones de parámetros» — anglicismo por *billions*). Este resumen los normaliza.
- Primer episodio de un curso; los ficheros de prueba están en el GitHub del canal (URL en el video, no en el raw).
- Fuente 18/57 de la playlist «IA-Recursos»; decimocuarto canal nuevo del lote (La Hora Maker).
- **Enlaces de consolidación (2026-11-11)**: [[la-hora-maker]] · [[ia-local-texto]] (providers de Ollama).
