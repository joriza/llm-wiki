# Odysseus AI

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 18/58 del lote ia-local).
- **Fuentes**: [[resumen-odysseus-ai-tiene-algo-increible]] (revisión crítica, 2026-08) · [[resumen-pewdiepie-acaba-de-reventar-la-ia-lanzo-odysseus-ia-gratis-y-sin-limites]] (cobertura del lanzamiento, 2026-06 — Alejavi Rivera) · [[resumen-i-used-odysseus-ai-for-30-days-heres-the-truth]] (veredicto a 30 días — Ash Automates).

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

## Aporte de la cobertura de lanzamiento (fuente de Alejavi Rivera, 2026-06)

Los 7 casos de uso del lanzamiento, con funciones que la revisión crítica no cubrió:

1. **Instalación en una línea** (+3 comandos Docker); en Apple Silicon ejecutar directo (Docker no usa su GPU); la instalación puede **delegarse a un agente** (Antigravity/Claude Code/Codex) compartiendo la URL del GitHub.
2. **Cookbook**: escaneo automático de hardware (Apple M3 Pro/18 GB) con modelos recomendados; DeepSeek R1 a un clic; reutiliza modelos de LM Studio/Ollama (exponer Ollama a la red, opción desmarcada por defecto).
3. **APIs múltiples**: OpenRouter (1 USD gratis, 300+ modelos, filtro «free»), Grok (16 modelos con transcripción/imágenes), oficiales.
4. **Chat/agente + Personas**: modos chat y agente (el agente controla el PC); apps con previsualizador; **Compare blind A/B con votación**; prefijo/sufijo automático de prompts; índice de creatividad; **Personas** (GPTs personalizados, trae Sócrates) agrupables para **interactuar entre sí secuencialmente o en paralelo** — «un equipo completo que se comunica entre ellos y con vosotros».
5. **Deep Research** con fix de búsqueda: los buscadores gratuitos por defecto fallaban → **Tavily** (1000 créditos, test integrado); informe visual en 13 segundos, extensión adaptativa.
6. **Brain + Skills centralizados**: memoria compartida entre modelos/proveedores («mi nombre es Aleji» recordado desde cualquier modelo — «adiós a entrenar cada plataforma»); skills autocreadas, editables/testeables/auditables.
7. **Tasks/Prompter**: tareas preconstruidas pausables + prompts programados (diarios, salida a sesión o email); notas/to-dos/calendario; chats auto-organizados en carpetas por IA.

Más: galería con editor «tipo Adobe» (crop, expandir, inpainting, removedor de fondo instalable), Library unificada, **modo incógnito**, temas personalizables (constelaciones/lluvia/flow), integraciones (MCPs incluidos, email server propio), **sistema de usuarios para equipos**, apps Android/iPhone.

## Veredicto a 30 días (fuente de Ash Automates)

El modelo mental correcto: «Odysseus no es un agente de IA — es una **sala de control de IA autohospedada**. La promesa es el control, no la magia». La mejor versión tras 30 días es **HÍBRIDA**: modelos locales para lo simple/barato/privado y APIs (OpenRouter) para investigación compleja, código y agentes. Las 5 funciones que sobrevivieron a la luna de miel: modo comparación (elegir modelo por tarea y ahorrar), cookbook (con la trampa: «local» ≠ ChatGPT gratis en tu laptop), pre-search/deep research («por sí solo justifica el workspace»), mail+calendario+flujo de contenido (regla: **nunca dejar que envíe mails en tu nombre**) y tareas programadas (solo las simples y repetitivas). El efecto compuesto: memoria/brain/skills mejoran con el uso — «te dan una curva, no una foto». Frustraciones honestas: instalación con fricción, código 5/10 (Claude Code/Cursor 10× mejor), agente a veces inconsistente, **llamadas MCP que reportan éxito sin hacer nada** (lo peor), galería insutil. Posicionamiento: no compite con Hermes/OpenClaw/Claude Code — «es la habitación donde todas convivirían». Sí, si necesitás exactamente ese workspace con control.
