# WL-716 — DevTalles 279: 40 términos de IA que todo dev debe conocer (Fernando Herrera)

- **Fuente original**: `raw/educacion-ia/2026-11-01-devtalles-279-40-terminos-de-ai-que-todo-dev-debe-de-conocer.md` ([Vídeo](https://www.youtube.com/watch?v=snyVpalf6ho))
- **Dominio definitivo**: `educacion-ia` (consolidación T25, tramo 105)
- **Canal**: Fernando Herrera / Detalles (2.ª fuente del canal, tras WL-711)
- **Publicado**: 2026-11-01 · **Duración**: 22:37
- **Fecha de ingesta**: 2026-11-24

## Qué trata

Episodio-glosario del podcast Detalles: ~40 términos de IA definidos en lenguaje llano para programadores, organizados en cuatro bloques:

1. **Conceptos base**: IA, machine learning (aprender patrones de datos), deep learning (redes con muchas capas), red neuronal, LLM, SLM, transformer como arquitectura casi universal, IA generativa (con la objeción de que «crea» es debatible: mezcla estilos).
2. **Anatomía de los modelos**: token (unidad de facturación también: entrada/salida), ventana de contexto, stateless (el «recuerdo» vive en contexto y archivos, no en el modelo), parámetros, temperatura (creatividad vs. predictibilidad), embeddings, multimodalidad (usar modelos especializados en vez de «ojos» innecesarios).
3. **Entrenamiento y optimización**: entrenamiento con «overseer» (referencia al video de Corisan — ASR, probablemente Coursera o la animación de 3Blue1Brown), preentrenamiento (por eso existen las 5.1/5.2/5.5), fine-tuning, destilación (modelo chico imita al grande), cuantización, benchmarks para comparar categorías de modelos.
4. **Uso y riesgos**: prompt/prompt engineering, system prompt, context engineering (qué entra y qué se excluye del contexto), chain of thought («abrirle la cabeza» al modelo), RAG + base de datos vectorial (dónde está la data, no la data misma), agente, tool use / function calling, MCP como estádard abierto para conectar modelos con herramientas (ASR: «NCP»), sistemas multiagente, modelo de razonamiento, alucinación (inventa con seguridad; sin mecanismo de autoverificación), sesgo heredado del entrenamiento (metáfora de la llanta mal cambiada por generaciones), prompt injection («el nuevo virus de 2026»; peligro máximo si toca el system prompt — desconfianza total de todo input), guardrails (las barritas del boliche), knowledge cutoff, open weight vs. cerrado.

Cierre con mensaje de carrera: no memorizar el glosario sino conocer la existencia de los términos; y «si solo presionás yes, yes, yes, no te sorprendas si te reemplazan» — hacerse indispensable, espejo directo de WL-711 («no ser proxy de la IA»).

## Señales de triage

- Divulgación introductoria correcta: definiciones estándar sin errores graves; ASR confunde MCP→«NCP» y Coursera→«Corisan» (normalizado solo aquí).
- Contenido promocional del curso propio entre medio; densidad baja por definición pero cobertura amplia — útil como índice de vocabulario IA del tramo.
- 2.ª fuente del canal Detalles en el mismo relevo de lista (WL-711 + WL-716 cargadas juntas por el usuario).

## Cruces

- [[agentes-de-codigo]]: agentes, MCP, tool use y multiagente definidos en el bloque 4.
- [[delegacion-cognitiva-ia]]: el cierre «solo presionás yes» = ser proxy de la IA (espejo WL-711).
- Entidad creada en consolidación T25: [[fernando-herrera]] (×2 con WL-711).

## Veredicto de triage

Glosario correcto y honesto (declara que no hay que memorizarlo); valor de referencia léxico más que de análisis. Sin candidatas nuevas a baja. Sin dominios nuevos ni consolidación (aplazada).
