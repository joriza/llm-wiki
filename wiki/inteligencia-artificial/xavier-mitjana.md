# Xavier Mitjana

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 5 resúmenes de la playlist «IA-Recursos» (2025-06-27 a 2026-09-27).

## Identidad

Creador de contenido español especializado en **IA gratuita, local y open source** (canal principal «Xavier Mitjana» y sub-canal técnico «Xavier Mitjana - Lab»). Su eje reivindicativo constante: ejecutar modelos en el propio ordenador — «privacidad total, personalización e independencia», al nivel de las herramientas de pago. Argumento distintivo: la **privacidad legal**, no solo la preferencia — citando a Sam Altman, advierte que las conversaciones en la nube «no están protegidas por ninguna ley» y pueden entregarse judicialmente (resumen-todas-las-herramientas).

## Temas recurrentes

1. **IA local completa** (LM Studio, Ollama, ComfyUI; Gemma, Qwen, FLUX, Wan): transcripción de documentos, generación de imagen con texto legible, RAG sobre documentos largos, razonamiento con validación por juez externo, vibe coding con Qwen3-Coder (resumen-todas-las-herramientas).
2. **Modelos de imagen abiertos y su fine-tuning**: coberturas de los pesos abiertos de FLUX.1 Kontext Dev (edición por instrucciones, LoRAs de acción entrenados con pares entrada→salida) (resumen-automatiza-tareas, Lab) y de Ideogram (LoRA de identidad con ~20-30 fotos propias vía Ostris AI Toolkit) y LTX 2.3 (vídeo con hoja de referencias) (resumen-entrena-tu-propia-ia).
3. **Novedades Google** desde su ángulo de productividad: NotebookLM vinculado a Gemini y Gems, tablas exportables a Sheets, Gemini 3 Flash en visión y como agente navegador en Antigravity (resumen-google-dispara).
4. **Tesis de la especialización**: «un modelo especializado puede rendir mejor que uno mucho más grande» (MedGemma 4B 80 % vs. GPT-4 69 % en diagnóstico por imagen) — antes que pelearse con el modelo mayor, entrenar uno pequeño para tu tarea (resumen-entrena-tu-propia-ia).
5. **Del prompt al método de uso** (2026): el prompt es «la parte menos importante»; lo que decide la calidad es el contexto, el criterio comprobable y el nivel de automatización. Escalera de tres niveles (herramienta → encargo con contexto persistente en Projects/Gems → sistemas proactivos como el agente Spark de Gemini, que cruza 42 documentos de Drive y produce informe y cuadro de mando solo), más la idea de la **LLM wiki** de Karpathy (la IA se monta su propia Wikipedia privada en Obsidian) (resumen-asi-se-usa-la-ia-en-2026). Curiosidad: aquí recomienda probar una herramienta **de pago** al menos un mes — el punto donde su tesis gratuita cede ante la calidad (divergencia interna de su propio discurso).

## Prácticas declaradas en sus fuentes

- Valida respuestas de modelos locales con **un LLM juez externo** (GPT-5 evaluando «precisión, no estilo») (resumen-todas-las-herramientas); en 2026 lo generaliza como **criterio comprobable**: condiciones verificables (longitud, fecha, prohibiciones) que el modelo audita solo, dejando lo subjetivo (tono) al humano — «la versión no programador del spec-driven development» (resumen-asi-se-usa-la-ia-en-2026). Ver [[evaluacion-de-llms]].
- Regla de dataset para LoRAs: «basura dentro, basura fuera» — pocas fotos malas arruinan el entrenamiento (resumen-entrena-tu-propia-ia).
- Sus guías excluyen de la síntesis los patrocinios recurrentes (HP, Freepik, HubSpot, Nexos.ai, Hostinger), registrados como tales en cada resumen.

## Fuentes procesadas en la wiki de este autor

- [[resumen-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana]] (2025-09-07, canal principal).
- [[resumen-automatiza-tareas-edicion-imagenes-flux-kontext-dev-xavier-mitjana-lab]] (2025-06-27, sub-canal Lab).
- [[resumen-google-dispara-tu-productividad-novedad-xavier-mitjana]] (2025-12-21).
- [[resumen-entrena-tu-propia-ia-gratis-xavier-mitjana]] (2026-06-28).
- [[resumen-asi-se-usa-la-ia-en-2026-olvida-los-prompts-xavier-mitjana]] (2026-09-27).

## Véase también

- [[generacion-local-de-imagenes]] — el hilo técnico donde más fuentes de este autor se cruzan.
- [[agentes-de-codigo]] — su demo de vibe coding local con Qwen3-Coder y el agente Spark como nivel 3 de su escalera.
- [[evaluacion-de-llms]] — el LLM juez y el criterio comprobable que sus guías aplican.
