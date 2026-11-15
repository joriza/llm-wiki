# FAV-419 — Cómo generar un LLM a partir de tus documentos (RAG con agentes) — TuTechGuy

- **Fuente original**: raw/electronica-practica/2026-11-15-rag-documentos-ollama-langchain.md (YouTube j_R3Do3WwgU, canal TuTechGuy, 2025-11-04, ES con subs automáticos, 15:50).
- **Dominio**: `electronica-practica/` (asignación por defecto). **Fuente claramente de INFORMÁTICA/IA — candidata a dominio informatica** (decisión del usuario en consolidación).

## Qué es

Tutorial de construcción de un **RAG (Retrieval-Augmented Generation) con agentes** completo y gratuito: backend **FastAPI** + **LangChain** (LangGraph) + **ChromaDB**, frontend en **React**, y LLM vía **Ollama** en local o Azure OpenAI en la nube. El agente recibe como herramienta la capacidad de recuperar fragmentos de la base vectorial.

## Conceptos clave

- **RAG**: convertir la pregunta del usuario en **embeddings** (vectores), buscar por similitud en la base vectorial (ChromaDB) y devolver los *n* fragmentos más cercanos como **contexto** junto a la consulta — el modelo responde sobre los documentos propios en lugar de su entrenamiento genérico.
- **Embeddings**: modelo que convierte texto en vectores numéricos en un espacio donde cercanía = similitud semántica (aquí un modelo de embedding servido también por Ollama).
- **Modelos locales y hardware**: Ollama (`ollama list`, modelos con tag `tools` para agentes; llama 3.2 en tamaños según GPU). Sin gráfica dedicada, los modelos pequeños por CPU son imprecisos y hasta provocan timeouts del endpoint — el video muestra el fallback natural: cambiar el proveedor del mismo stack a **Azure OpenAI** (nombre de modelo + API key + API version) sin tocar la arquitectura.
- **Stack**: FastAPI (endpoint de chat), LangGraph (agente con prompt + herramientas + histórico), React (chat con carga e indexado de archivos).

## Relacionado

- [[ia-en-mcu]] — contraste de arquitecturas (inferencia local vs nube) desde la escala MCU; aquí el mismo eje local/nube a escala de PC.
- Dominio ia-local de la wiki (Ollama, modelos locales) — si se crea el dominio informatica, esta fuente migraría ahí junto con FAV-413.
