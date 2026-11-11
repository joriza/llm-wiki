# La Hora Maker

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2 resúmenes de la playlist «IA-Recursos» (2024-09-16 y 2026-03-13).

## Identidad

Canal de fabricación digital vinculada al ecosistema **Fab Academy** (fablabs, Neil Gershenfeld): clase traducida a vídeo más que divulgación de novedades. Su rasgo distintivo es el **método experimental verificado**: comparar modelos con datos («¿es mejor el o1? Haciendo pruebas»), repetir ejecuciones contra el no-determinismo (`--repeat`), y publicar los ficheros de prueba en el GitHub del canal. Contribuciones propias citadas: **fabrag** (RAG sobre el contenido de Fab Academy) y el **MCP de Mods** (control por lenguaje natural de las máquinas de fablabs, construido con Claude Code).

## Temas recurrentes

1. **Evaluación de LLMs en local (Promptfoo)**: curso práctico de comparación de modelos con YAML versionable, providers de Ollama (Gemma 2 2B/9B/27B), aserciones automáticas (`contains`), `--repeat N` contra el no-determinismo y variables desde ficheros JSON; evaluación 100 % local sin enviar datos a terceros (18/57).
2. **Panorama de IA aplicada 2026**: del «prompt perfecto» al **context engineering** — qué entra en la ventana (memoria, instrucciones, skills, MCP, wiki interna) y el cierre del bucle de feedback humano (capturas, reproducir errores) como multiplicador; modelos cerrados vs. abiertos, coste cuadrático del contexto, skills con scripts ejecutables, MCP/A2A en fabricación digital y spec-driven development (Spec Kit/OpenSpec) (29/57).

## Tesis transversal

Su hilo compartido con el lote: **el modelo más pequeño que dé el rendimiento necesario** — pero demostrado con mediciones, no afirmado. Y la conclusión del 2026: el trabajo ya no es escribir prompts, es diseñar el contexto y cerrar el bucle de verificación.

## Fuentes procesadas en la wiki de este autor

- [[resumen-curso-evaluacion-llm-promptfoo-episodio-1-la-hora-maker]] (2024-09-16).
- [[resumen-usando-la-ia-como-si-fuera-2026-la-hora-maker]] (2026-03-13).

## Véase también

- [[evaluacion-de-llms]] — su curso de Promptfoo es la base «local y reproducible» de la página.
- [[ia-local-texto]] — Ollama/LM Studio como herramientas de ejecución local.
- [[agentes-de-codigo]] — context engineering, skills, MCP/A2A y OpenSpec.
