# Resumen: El Agente de Código que Viene Vacío… y Eso Es Su Mayor Fortaleza

- **Tipo**: resumen de fuente (reseña/tutorial: agente de código minimalista extensible).
- **Canal**: Fazt (página de entidad pendiente de consolidación).
- **Publicado**: 2026-04-18. **Duración**: 25:22.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RRAYtqnGJPs).
- **Raw**: [raw/inteligencia-artificial/2026-04-18-agente-de-codigo-que-viene-vacio-fazt.md](../../raw/inteligencia-artificial/2026-04-18-agente-de-codigo-que-viene-vacio-fazt.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (agentes de código minimalistas, Pi, extensiones TypeScript, skills).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Entre los agentes de terminal que «te dan todas las características en un solo comando» (OpenClaw, OpenCode, Claude Code), **Pi** va «en sentido contrario»: un agente **minimalista que no trae nada preinstalado** y se extiende a medida que lo necesitas — «es como tener un lienzo en blanco... no viene con nada preinstalado», consumiendo pocos tokens por arranque. Es un proyecto personal (paquete npm de un usuario) que «está ganando popularidad e incluso proyectos como OpenClaw lo utilizan por debajo». La analogía del cierre: «como Vim: un editor mínimo y luego investigar extensiones para lo que falta — esto es lo mismo, en el lado de los agentes».

## Recorrido del vídeo

- **[01:32–04:16] Instalación y primer arranque**: comando npm (de la cuenta de un usuario — proyecto personal). Al entrar: «no hay modelos disponibles» → `/login` (selección interactiva de proveedor) y `/model`. Autenticación OAuth con **GitHub Copilot** (URL + código) y **ChatGPT Plus** — los modelos aparecen marcados por suscripción («OpenAI Codex», «Gemini o Claude» de Copilot). Barra de estado simple: tokens gastados, equivalente en dólares y contexto disponible. Demo: «crea una web de recetas de cocina» → planificación + ejecución → index.html «nada mal».
- **[06:24–09:24] Proveedores por API (multi-proveedor)**: el agente **no viene unido a ningún modelo**: OpenRouter, Minimax, GitHub Copilot, APIs de OpenAI y Anthropic. Documentación en GitHub (índice completo): providers & models. Para API keys, variables de entorno con el nombre del proveedor: `export GEMINI_API_KEY=...` en Mac/Linux; en PowerShell `$env:MINIMAX_API_KEY = "..."`. Minimax «proveedor chino... competencia de GPT o Claude Opus, mucho más barato». `/model` muestra todos los instalados.
- **[09:49–11:49] Demo Minimax y steering vs. cola**: «convierte este proyecto a componentes de React con Vite.js» → analiza y ejecuta npm. **Steering**: escribir durante una tarea la actualiza en vivo. **Alt+Enter = cola (follow-up)**: encolar tareas para después («crea una página de perfil en el dashboard» → «crea una página de planes en el landing») — «este es el comportamiento que la mayoría espera, pero muchos agentes como Claude o GPT Codex no lo tienen por defecto». **Alt+Arriba** edita mensajes enviados. `/hotkeys` lista todo: tab autocomplete, Ctrl+C limpiar, Ctrl+D salir, **Ctrl+Z suspende herramientas en background** («se puede delegar una tarea en background»). El agente «no interrumpe la tarea» al responder preguntas — a diferencia de Claude, que a veces encola una pregunta creyéndola instrucción.
- **[13:34–14:37] Bash con y sin contexto**: `# comando` ejecuta y **añade la salida al contexto** (el agente la leerá después); `!! comando` ejecuta **sin** contaminar el contexto (ej. `!! ls -a`). Sirve para credenciales (AWS/Azure): «la IA va a saber que ya ejecutaron ese comando».
- **[14:37–16:53] Comandos y árbol de sesiones**: `/settings` (padding, tema light/dark, **bloquear imágenes** para no gastar tokens), `/new`, `@archivo` con autocomplete, `/name` (nombrar sesiones), `/session` (mensajes, llamadas a herramientas, tokens). **`/tree`**: el historial es «una estructura de árbol» — saltar a cualquier punto del pasado (con resumen opcional) y crear sesiones derivadas desde ahí; «es como saltar entre sesiones antiguas».
- **[16:53–19:15] Skills y personalización**: soporta **skills cargadas bajo demanda** (CLIs de Supabase, Railway, Docker...) siguiendo el estándar de la carpeta `.agents/` + su propia carpeta `.pi/` para configuración global. Instalación de un skill (Interface Design): carpeta `.agents` en el proyecto → Pi lo carga al inicio; **colisiones**: el skill del proyecto tiene prioridad sobre el global. Prompt templates reutilizables («se parece a los comandos que antes tenía Claude o GPT»).
- **[19:15–23:49] Extensiones TypeScript y marketplace**: la característica estrella: **escribir TypeScript para extender el agente** — «si quisieran que soporte MCPs, se puede hacer», subagentes, compactado/resumen personalizado, autocommits, «hacer lo que se parezca a Claude Code». Instalación con `pi install` (usa npm por debajo). Marketplace en **pi.dev/packages**: configuración personal, subagentes, ejecutar múltiples agentes a la vez, hasta una mascota 3D; **pi web access** (búsquedas web usando xamcp por debajo). Demos: `pi-subagents` (comandos `parallel`, `chain`, `run worker`; funciona principalmente con la API de Anthropic — «más tedioso de reconfigurar») y **task plane** (`task plane init`: nombre, agentes paralelos, área → crea agentes especializados; `/orchestration` ejecuta tareas con tabla de estado; `task plane dashboard` = vista web paso a paso — «las tareas se tienen que definir bien, si no, es solo ver una interfaz»; «no está tan producido como las apps de escritorio: lo creó una persona en su tiempo libre»).
- **[23:49–25:22] Filosofía y cierre**: «este agente es lo suficientemente pequeño para que ustedes puedan añadir sus herramientas encima»; desarrolladores lo usan «para integrarlo en herramientas muy pequeñas o puntuales, como un bot de Slack o una interfaz de chat». Analogía final con **Vim**. Cierre con patrocinios (Don Dominio, fast.dev — asesorías).

## Puntos clave

1. **Filosofía minimalista**: sin MCPs, sin configuraciones, sin contextos extensos por defecto — «un lienzo en blanco» que consume pocos tokens y arranca rápido; OpenClaw lo usa por debajo [00:12-02:34, 10:12].
2. **Multi-proveedor por diseño**: suscripciones (GitHub Copilot, ChatGPT) vía OAuth `/login` + APIs vía variables de entorno; `/model` y Ctrl+P para alternar; el nombre de la suscripción indica desde dónde gastas [04:16-06:24, 10:58].
3. **Steering vs. cola**: escribir durante la tarea redirige (steering); **Alt+Enter encola follow-ups** — comportamiento que «muchos agentes no tienen por defecto» [11:25-12:51].
4. **Contexto bajo demanda**: `#` añade salida de comandos al contexto; `!!` la mantiene privada; skills se cargan solo cuando se necesitan [13:34-14:37, 16:53].
5. **Árbol de sesiones (`/tree`)**: ramificar el historial desde cualquier punto del pasado con resumen opcional — sesiones derivadas sin perder el origen [16:03-16:53].
6. **Extensiones TypeScript + marketplace pi.dev**: MCPs, subagentes, autocommits, orchestration con dashboard — «no quieres crear un agente desde cero ni OpenCode no te deja: este agente es lo suficientemente pequeño para añadir tus herramientas encima» [19:15-23:58].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Pie/Pi», «Open Claw» por OpenClaw, «Cloud Code» por Claude Code, «Open Code Zen», «Minimax 7.2.7», «GPT 5.4», «examcp», «pi.dev es slash packages»). Este resumen los normaliza con cautela — algunos nombres/modelos pueden quedar garbiñados por los subtítulos automáticos (verificar en consolidación si se elevan a página).
- La herramienta reseñada es **Pi**, el mismo agente con el que se está ejecutando esta ingesta (relevante para la página de concepto futura de agentes de código).
- Incluye patrocinios (Don Dominio, fast.dev) registrados como tales.
- Fuente 26/57 de la playlist «IA-Recursos»; decimonoveno canal nuevo del lote (Fazt), entidad aplazada.
