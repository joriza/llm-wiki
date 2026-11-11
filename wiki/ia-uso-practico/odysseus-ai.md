# Odysseus AI

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 18/58 del lote ia-local).
- **Fuentes**: [[resumen-odysseus-ai-tiene-algo-increible]].

**Odysseus AI** es el workspace de IA **open source creado por PewDiePie** — «se cansó de que lo espiaran». A diferencia de un chat, es un **workspace de herramientas múltiples** self-hosted (Docker o nativo) pensado para el uso diario de IA con privacidad.

## Módulos

- **Chat** con modelos locales o APIs — integración con **suscripción de ChatGPT sin API key** (OAuth con código), además de OpenAI y otros.
- **Deep Research**: investigación profunda configurable (rounds, formato producto/comparación/how-to/fact-check, motor de búsqueda) que corre en background y produce páginas con fuentes, refinables por conversación.
- **Mail IA**: cliente de correo (Gmail) con resúmenes y respuestas redactadas que **aprenden tu estilo de tus mails enviados**; tareas automáticas diarias (resúmenes, drafts).
- **Brain/memorias**: memorias sobre el usuario **visibles, ordenables y borrables** — la ventaja frente a servicios cerrados.
- **Cookbook**: corredor de **LLMs locales sin instalar Ollama** (usa Ollama por debajo) con **detección automática de hardware y puntuación de compatibilidad** de modelos — solo en modo nativo (Docker oculta el hardware).
- **Comparador blind A/B** de modelos (mismo prompt, sin revelar cuál es cuál, con votación).
- Galería/editor de imágenes, notas, tareas tipo cron.

## Estado (según la revisión de Pelado Nerd, 2026-08)

Funciona bien: chat, configuración (su rasgo destacado: «extremadamente fácil», con OAuth sin API key), cookbook, deep research, comparador, estilo de mail. **Roto al momento de la revisión** (en ambas branches): edición de imágenes (devuelve 400 / resultados absurdos), calendario con Gmail (CalDAV no funcionó), resúmenes de correo intermitentes sin error.

## Instalación

Docker compose (puerto 7000, no expuesto al exterior — acceder vía túnel reverso SSH `ssh -L 7000:localhost:7000`; password de admin desde `docker logs`) o app nativa en Mac. Branches: `main` (estable) y `dev` (novedades).
