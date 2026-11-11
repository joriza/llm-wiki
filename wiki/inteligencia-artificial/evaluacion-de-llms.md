# Evaluación de LLMs

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2 resúmenes de la playlist «IA-Recursos» (2024-09-16 y 2025-09-23) + 2 del corpus previo.
- **Ver también**: [[limites-de-los-llm]] · [[agentes-de-codigo]].

## El concepto

Sustituir la comparación por hype («¿es mejor el o1?») por **comparación con datos**: ejecutar casos de prueba con criterios objetivos, medir y promediar. Es el primer paso «y quizás el más importante» de LLMOps: «en lugar de entrenar modelos desde cero, nos preocupamos por la ingeniería de prompts, la gestión de la evaluación y el monitoreo constante para detectar alucinaciones» (19/57).

## Dos herramientas consolidadas por el corpus

1. **Promptfoo (100 % local, reproducible)** — open source (MIT), configuración YAML versionable con prompts (variables `{{}}`), providers (Ollama y muchos más) y tests; `promptfoo eval` + `promptfoo view` (localhost:15500). Enseñanzas del episodio 1: sin aserciones todo «pasa» (el evaluador es el humano); la aserción `contains 220` automatiza el chequeo; el no-determinismo (temperatura 0,7) se mide con `--repeat 5` — separa suerte de rendimiento real (4 éxitos/11 fallos tras promediar); y la evaluación del modelo base (sin few-shot ni RAG) mide conocimiento internalizado, distinto de operar sobre datos traídos (18/57).
2. **RAGAs (evaluación de pipelines RAG)** — dataset con `question` + `reference` (respuestas ideales) y del agente `answer` + `contexts`; métricas **faithfulness** (apego al contexto) y **context precision**, con un **LLM juez** (Gemini 2.5 Flash-Lite, más ligero que el agente evaluado para no gastar su cuota) y embeddings multilingües; `raise_exceptions=False` para que la evaluación no se interrumpa; resultado por pregunta y métrica como **línea base** de mejoras futuras (19/57).

## El LLM como juez (patrón transversal)

Aparece en las tres vertientes del corpus: como aserción de Promptfoo («otro LLM como juez») (18/57), como componente de RAGAs (19/57) y como práctica de uso local: GPT-5 evaluando «si la respuesta es correcta en precisión, no estilo» a la salida de un modelo local (7/57). Es el patrón barato que convierte la confianza subjetiva en verificación medible.

## Conexión con los límites de los LLM

La evaluación sistemática es la respuesta operativa a la tesis de Gary Marcus: los LLM producen lo verosímil, no lo real — «confía, pero verifica. Si la respuesta importa de verdad, debes comprobarla» [[limites-de-los-llm]]. El corpus añade el matiz de que la verificación en local es gratis (repeat sin coste de API), lo que hace viable evaluar mucho y barato.

## Fuentes de este concepto

- [[resumen-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker]] (18/57) · [[resumen-llmops-evaluar-agente-rag-ragas-del-codigo-a-la-arquitectura]] (19/57) · [[resumen-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana]] (7/57, juez externo) · [[resumen-entrevista-gary-marcus-gustavo-entrala]] (corpus previo).
