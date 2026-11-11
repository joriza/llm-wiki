# Evaluación de LLMs

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 5 resúmenes de la playlist «IA-Recursos» + 1 referencia crítica (marcas de agua) + 2 del corpus previo.
- **Ver también**: [[limites-de-los-llm]] · [[agentes-de-codigo]].

## El concepto

Sustituir la comparación por hype («¿es mejor el o1?») por **comparación con datos**: ejecutar casos de prueba con criterios objetivos, medir y promediar. Es el primer paso «y quizás el más importante» de LLMOps: «en lugar de entrenar modelos desde cero, nos preocupamos por la ingeniería de prompts, la gestión de la evaluación y el monitoreo constante para detectar alucinaciones» (19/57).

## Dos herramientas y un selector consolidados por el corpus

1. **Promptfoo (100 % local, reproducible)** — open source (MIT), configuración YAML versionable con prompts (variables `{{}}`), providers (Ollama y muchos más) y tests; `promptfoo eval` + `promptfoo view` (localhost:15500). Enseñanzas del episodio 1: sin aserciones todo «pasa» (el evaluador es el humano); la aserción `contains 220` automatiza el chequeo; el no-determinismo (temperatura 0,7) se mide con `--repeat 5` — separa suerte de rendimiento real (4 éxitos/11 fallos tras promediar); y la evaluación del modelo base (sin few-shot ni RAG) mide conocimiento internalizado, distinto de operar sobre datos traídos (18/57).
2. **RAGAs (evaluación de pipelines RAG)** — dataset con `question` + `reference` (respuestas ideales) y del agente `answer` + `contexts`; métricas **faithfulness** (apego al contexto) y **context precision**, con un **LLM juez** (Gemini 2.5 Flash-Lite, más ligero que el agente evaluado para no gastar su cuota) y embeddings multilingües; `raise_exceptions=False` para que la evaluación no se interrumpa; resultado por pregunta y métrica como **línea base** de mejoras futuras (19/57).

3. **SpecJudge (elegir el modelo antes de ejecutar)** — librería Python open source (MIT) del canal Joaquín Ruiz: lee las specs/tasks del proyecto (spec-driven) y recomienda el modelo con mejor **encaje calidad-precio antes de gastar un token**, con un **juez local** (Ollama 8B) que estima la exigencia en una tirada + **reglas declarativas en YAML** que cruzan demanda contra capacidad; cada veredicto viene con motivo legible y cita fragmento literal del spec. Clasifica a Opus como *overkill* cuando el proyecto no lo usa («no porque sea malo, sino por pagar un margen que no usarás») y es honesto: si nada encaja, lo dice (44/57). Es la automatización del consejo repetido por el lote: «usar siempre el modelo más pequeño que dé el rendimiento» (29/57).

## Lo que no es evaluación de outputs (límites del corpus)

- **Evidencia real vs. evidencia cognitiva** (ODD, Gentle AI): una review textual no prueba nada — el registro del trabajo se cierra con tests, e2e y golden files que otro agente puede verificar sin re-ejecutar; la «prueba» narrativa no cuenta (52/57).
- **Detectores de IA y falsos positivos**: las marcas de agua invisibles (SynthID) comparten el problema de fondo — ninguna verificación puramente estadística o textual es concluyente; la API de detección puede explotarse en bucle (48/57). Refuerza la tesis de [[limites-de-los-llm]]: sin evidencia verificable, tanto la evaluación de modelos como la de contenidos quedan abiertas.

## El LLM como juez (patrón transversal)

Aparece en las tres vertientes del corpus: como aserción de Promptfoo («otro LLM como juez») (18/57), como componente de RAGAs (19/57) y como práctica de uso local: GPT-5 evaluando «si la respuesta es correcta en precisión, no estilo» a la salida de un modelo local (7/57). SpecJudge añade la cuarta vertiente: el juez local que estima la exigencia del proyecto y emite veredictos citando fragmentos literales (44/57). Es el patrón barato que convierte la confianza subjetiva en verificación medible.

## Conexión con los límites de los LLM

La evaluación sistemática es la respuesta operativa a la tesis de Gary Marcus: los LLM producen lo verosímil, no lo real — «confía, pero verifica. Si la respuesta importa de verdad, debes comprobarla» [[limites-de-los-llm]]. El corpus añade el matiz de que la verificación en local es gratis (repeat sin coste de API), lo que hace viable evaluar mucho y barato.

## Fuentes de este concepto

- [[resumen-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker]] (18/57) · [[resumen-llmops-evaluar-agente-rag-ragas-del-codigo-a-la-arquitectura]] (19/57) · [[resumen-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana]] (7/57, juez externo) · [[resumen-deja-de-usar-el-modelo-mas-caro-para-todo-specjudge-joaquin-ruiz]] (44/57) · [[resumen-hoy-te-presento-odd-mi-metodologia-para-eliminar-la-burocracia-de-la-ia]] (52/57, evidencia real) · [[resumen-marcas-de-agua-invisibles-en-la-ia-2026-alan-daitch]] (48/57, detectores) · [[resumen-usando-la-ia-como-si-fuera-2026-la-hora-maker]] (29/57, modelo mínimo) · [[resumen-entrevista-gary-marcus-gustavo-entrala]] (corpus previo).
