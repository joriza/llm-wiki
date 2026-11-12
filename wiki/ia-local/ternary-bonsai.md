# Ternary Bonsai

- **Tipo**: página de entidad (modelos ternarios / proyecto).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuente 53).
- **Fuentes**: [[resumen-1-58-bits-llms-podrian-ser-mejores-pero-nadie-quiere-usarlos]] (Cognix).

**Ternary Bonsai** es la línea de LLMs ternarios de **Prism ML** que resolvió el problema que frenaba a [[bitnet]]: cómo obtener un modelo ternario **sin entrenar desde cero**.

## El truco: distilación desde pesos reales

- La copia oculta de precisión completa **arranca con los pesos ya entrenados de Qwen** (todo el lenguaje ya está ahí).
- El modelo original corre en paralelo como **profesor**; la versión ternaria se entrena solo para **igualar sus respuestas**.

## Ternary Bonsai 2 (sept 2025): Qwen 3.8 27B ternario

- **54 GB → 5.9 GB** (×9 menos).
- Benchmarks de Prism ML: **98.2 % del score promedio** del original; matemáticas y programación casi al nivel.
- Pierde ~9 pts en razonamiento sobre historias largas (contexto largo sigue siendo el punto débil).
- Pesos en Hugging Face; hay gente corriéndolo en una **RTX 5060 Ti de 16 GB**.
- ⚠️ Los puntajes son **auto-reportados por Prism ML** — pruebas independientes pendientes.

## Contexto

- Bonsai 1 (jul 2025) fue el primer 27B; Bonsai 2 lo mejora.
- Junto con Apple Intelligence (~3B a 2 bits), demuestra que la vía «QAT sobre pesos reales + distilación» es la que está agrietando el muro del entrenamiento del 1.58-bit.

## Cruces

[[bitnet]] (el paper fundacional) · [[qwen]] (modelo base) · [[hardware-para-ia-local]] · [[ia-local-texto]].
