# IA local de texto

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 5+ resúmenes de la playlist «IA-Recursos» con desarrollo del tema.
- **Ver también**: [[agentes-de-codigo]] · [[evaluacion-de-llms]] · [[generacion-local-de-imagenes]] (su contraparte de imagen) · [[xavier-mitjana]] · [[la-hora-maker]].

## El concepto

Ejecutar modelos de lenguaje **en el propio hardware** (pesos descargables, sin límites de consumo, sin enviar datos a terceros) frente a las APIs y suscripciones cerradas. El corpus lo presenta como la base de la soberanía del usuario: privacidad legal, coste cero por token y disponibilidad sin red — a cambio de hardware y de modelos algo menos capaces.

## Herramientas de ejecución (consolidadas por las fuentes)

1. **Ollama**: el estándar de facto — modelos con un comando, tamaños documentados (Gemma 2 27B ≈ 16-19 GB, 9B ≈ 5,5 GB, cuantizaciones q3 ≈ 13 GB), app de escritorio y **API compatible con Anthropic** que permite sustituir el modelo de Claude Code por uno propio (18/57, 29/57); también integrable como proveedor más de FreeLLMAPI para privacidad (55/57).
2. **LM Studio**: «la herramienta más cómoda hoy» según La Hora Maker, ya con uso comercial permitido (29/57); base de los recopilatorios de IA local gratuita de Xavier Mitjana (Qwen Image, razonamiento con juez externo) (fuente 9/57).
3. **Capa agéntica local**: Obsidian con IA 100 % local (Ollama/LM Studio detrás de la bóveda) (32/57); dictado local (Handy con Parakeet v3) (fuente 34/57); y evaluación 100 % local con Promptfoo sobre providers de Ollama (18/57).

## Modelo y contexto

- La regla transversal del lote: **usar siempre el modelo más pequeño que dé el rendimiento necesario** (20-30 tok/s frente a 2) (29/57) — automatizada por SpecJudge con un juez local de Ollama (44/57).
- Límites estructurales: la arquitectura transformer escala mal con el contexto (duplicar contexto = cuadruplicar coste) y los pesos son estáticos; las salidas son no deterministas (temperatura 0,7 → `--repeat` para separar suerte de rendimiento) (29/57, 18/57).
- El patrón doméstico completo: mini PC siempre encendido con un modelo local ~35B o MoE ligero que ejecuta tareas planificadas por modelos más capáticos — el arnés de agentes sin nube (54/57).

## Tesis transversal

La IA local de texto no compite con las APIs cerradas en capacidad punta: compite en **privacidad, coste marginal cero y disponibilidad**. En el corpus aparece siempre como opción escalonada — empezar local, escalar a API cuando la tarea lo justifica — y como requisito cuando los datos no pueden salir (evaluaciones, notas personales, agentes personales).

## Fuentes de este concepto

- [[resumen-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana]] (9/57, LM Studio/Ollama) · [[resumen-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker]] (18/57) · [[resumen-usando-la-ia-como-si-fuera-2026-la-hora-maker]] (29/57) · [[resumen-obsidian-revento-la-ia-con-memoria-gratis-e-ilimitada-alejavi-rivera]] (32/57) · [[resumen-la-ia-gratis-que-esta-destrozando-a-las-suscripciones-alejavi-rivera]] (Handy/Gemma 4 local) · [[resumen-deja-de-usar-el-modelo-mas-caro-para-todo-specjudge-joaquin-ruiz]] (44/57) · [[resumen-herdr-es-increible-aprendelo-gratis-certificado-holamundo]] (54/57) · [[resumen-freellmapi-acaba-de-romper-las-suscripciones-todo-gratis-alejavi-rivera]] (55/57, Ollama como proveedor).

- Del lote ia-local (2026-11-11): [[resumen-ia-local-programacion-agentes-gratis-privado-cualquier-pc]] (58/58 — tareas acotadas + contexto claro como condición de viabilidad; estrategia híbrida nube/local; PCI Compliance → solo local) · [[resumen-como-usar-gpu-gratis-en-kaggle-30-horas-semanales]] y [[resumen-free-32gb-vram-server-running-ai-models-locally]] (la alternativa «local sin hardware»: GPU T4×2 de Kaggle gratis vía túnel — aprendizaje/experimentación, no producción) · [[resumen-estas-usando-el-motor-de-ia-equivocado-y-esta-es-la-razon]] (elegir motor según el cuello de botella).
