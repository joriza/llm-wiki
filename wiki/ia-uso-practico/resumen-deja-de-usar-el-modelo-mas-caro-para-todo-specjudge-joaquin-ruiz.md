# Resumen: Deja de usar el modelo más CARO para todo | SpecJudge

- **Tipo**: resumen de fuente (presentación de herramienta open source).
- **Canal**: [[joaquin-ruiz]] — IA para Desarrolladores.
- **Publicado**: 2026-07-28. **Duración**: 08:23.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=T53zvm08zUg).
- **Raw**: [raw/ia-uso-practico/2026-07-28-deja-de-usar-el-modelo-mas-caro-para-todo-specjudge.md](../../raw/ia-uso-practico/2026-07-28-deja-de-usar-el-modelo-mas-caro-para-todo-specjudge.md) (subtítulos manuales es-ES, transcripción literal).
- **Páginas de concepto asociadas**: [[evaluacion-de-llms]] (elegir modelo por encaje, no por fama); [[agentes-de-codigo]] (spec-driven development).
- **Disposición de la ingesta**: Nueva.

## Tesis central

El instinto de arrancar todo proyecto con el modelo «rey» (Opus 5, GPT sol…) lleva meses pagando capacidad que los proyectos no usan. **SpecJudge** (librería Python open source, MIT): lee tus specs/tasks (spec-driven development) y recomienda el modelo con mejor **encaje calidad-precio antes de gastar un token**, usando un juez local (Ollama) + reglas declarativas. Dos errores que evita: overkill («alquilar una excavadora para plantar un geranio») y modelo justo — este peor, porque los tokens quemados se pagan igual.

## Recorrido del vídeo

- **[00:38-02:39] Instalación**: Python 3.11+ y Ollama con un modelo local sencillo (8B basta; `ollama pull` de Mistral Small o Llama 3.1). Instalable con uv/pip/pipx; comprobación `specjudge --version`; ejecución efímera con uvx; código en GitHub.
- **[02:39-03:56] Uso y salida**: `specjudge .` sobre un proyecto con specs → ranking (Gemma 4 31B, Qwen 3.6, Claude Sonnet 5 «buena nota»; **Opus 4.8 clasificado overkill** — «no porque sea malo, sino por pagar un margen que no usarás»; tiers fair y poor). Regla clave: **el precio no decide el podio** — el ranking va por encaje con la complejidad; el precio solo desempata entre modelos con igual encaje. Flag `--open`: matriz visual en **HTML autónomo** (sin cargar nada de la red).
- **[03:56-04:34] Honestidad de la herramienta**: dos cosas que no hacen las demás — si ningún modelo del catálogo da la talla, lo dice (no recomienda igualmente); y si las specs son escasas, da la recomendación con un aviso de fiabilidad.
- **[04:34-05:45] Patrocinio-libro**: «Del vibe coding al Spec driven development» (>300 páginas, ciclo completo de Spec Kit con Claude Code/Copilot/Cursor, capítulo sobre aplicarlo a repos existentes con historia; viene con repo para clonar). El canal tiene varios libros de IA en Amazon.
- **[05:45-07:31] Arquitectura**: sistema híbrido — un **juez** (modelo local vía Ollama) lee specs y tasks y estima la exigencia del proyecto en dimensiones (razonamiento, tamaño, especialización) **en una tirada** (no tarea por tarea); y **reglas declarativas** en `rating-rules.yaml` que cruzan esa demanda contra la capacidad declarada de cada modelo. No es caja negra: cada veredicto viene con motivo legible.
- **[06:56-08:04] Decisión de diseño**: todo lo volátil (modelos, precios, valoraciones) vive en **YAML legible fuera del código** — «un catálogo mantenido por una sola persona nace caducado el primer día»; añadir un modelo es un bloque YAML cero Python (PR con tests de contrato que validan el esquema).

## Puntos clave

1. **El encaje manda sobre el precio**: el ranking clasifica por adecuación a la complejidad; el precio solo desempata entre encajes equivalentes [03:19-03:56].
2. **Juez local + reglas declarativas**: Ollama estima la exigencia; YAML cruza demanda vs. capacidad; veredictos con motivo, no caja negra [05:45-06:56].
3. **Volatilidad en YAML fuera del código**: modelos/precios cambian cada semanas; mantenerlos es editar datos, no programar (con tests de contrato) [06:56-07:31].
4. **Honestidad como feature**: si nada encaja, lo dice; si las specs son débiles, avisa [03:56-04:34].
5. Aplica directamente al patrón del lote: varios resúmenes ya recomiendan «el modelo más pequeño que dé el rendimiento» (29/57); SpecJudge lo automatiza leyendo las specs.

## Notas sobre la fuente

- Subtítulos manuales (buena calidad); normaliza igualmente: «speckit» → Spec Kit, «rating-rules.yaml» → nombre del fichero tal cual, «data models.yaml» → `data/models.yaml`, «Gemma 4 31b/Qwen 3.6/Claude Sonnet 5/Opus 4.8» → versiones según el canal (verificar nombres reales).
- Cruces: [[evaluacion-de-llms]] (Promptfoo/RAGAs evalúan outputs; SpecJudge evalúa el **encaje del modelo al proyecto antes de ejecutar** — complemento, no solape); [[agentes-de-codigo]] (Spec Kit/OpenSpec como input de las specs); «el modelo más pequeño que funcione» ya propuesto en 29/57.
- **Patrocinio del propio libro** del canal entre [04:34] y [05:45] (Amazon), transcrito y registrado como autopromoción.
- Fuente 44/57 de la playlist «IA-Recursos» (video ID canónico `T53zvm08zUg`); raw por el fallback de subtítulos (manuales).
- **Enlaces de consolidación (2026-11-11)**: [[joaquin-ruiz]] · [[ia-local-texto]] (juez local de Ollama).
