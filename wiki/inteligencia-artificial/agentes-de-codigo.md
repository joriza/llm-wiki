# Agentes de código (IA agéntica para programar)

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 8 resúmenes de la playlist «IA-Recursos» (2025-10-01 a 2026-07-14) + 1 del corpus previo (Gary Marcus).
- **Ver también**: [[evaluacion-de-llms]] · [[generacion-local-de-imagenes]] · [[xavier-mitjana]] · [[alejavi-rivera]].
- **Nota**: un «agente de código» ejecuta comandos, edita archivos y actúa sobre el sistema — el mismo rasgo que el caso Antigravity convirtió en riesgo; la autonomía y su control son el eje de la página.

## El concepto

Herramientas donde un LLM **actúa** sobre un proyecto (escribir código, correr comandos, editar archivos) siguiendo instrucciones en lenguaje natural, en lugar de solo sugerir texto. El corpus cubre la gama completa: extensiones de editor (Kilo Code), agentes de terminal (Claude Code, OpenCode, Pi), marcos de especificación (OpenSpec) y agentes de producto no-código (Antigravity).

## Arquetipos consolidados por las fuentes

1. **Extensión + modelo económico (Kilo Code + GLM 4.6)** — Kilo Code (VS Code, open source) con modos Architect/Code/Ask/Debug/Orchestrator; GLM 4.6 de Z.ai por 3 USD/mes; demo: API REST Laravel 12 completa y probada en 12 minutos «sin ningún error», con dos correcciones conversacionales del humano (tabla existente, rutas no registradas). Contraste: GPT-5 Codex CLI «no ejecuta nunca comandos» (12/57).
2. **El agente como director que orquesta (Claude Code + Remotion)** — un **skill** («receta que le enseña a Claude Code a hacer una tarea completa») genera vídeos estilo Vox: Claude no dibuja, orquesta ElevenLabs, Kie AI y Apify; el modelo importa («entre mejor el modelo, mejor queda tu vídeo» — Opus) y la primera versión nunca es la final (37/57).
3. **Vídeo programático con OpenCode** — prompt único → proyecto Remotion completo; reparto agente/humano: la IA construye, el humano corrige detalles finos (avatar PNG, dirección de animación, codec VP9 para transparencia) (38/57).
4. **El minimalista extensible (Pi)** — en contra del «todo preinstalado»: multi-proveedor por diseño, steering vs. cola (Alt+Enter), contexto bajo demanda (`#` vs `!!`), árbol de sesiones (`/tree`), skills bajo demanda y **extensiones TypeScript** con marketplace — «como Vim, en el lado de los agentes»; OpenClaw lo usa por debajo (26/57).
5. **Desarrollo dirigido por especificaciones (OpenSpec)** — antes de dejar actuar al agente: propuesta → viabilidad → implementación → **archivado para liberar contexto**; agnóstico del agente (Claude Code, Windsurf, Cursor, OpenCode, Kilo Code, Codex, Copilot) y admite proyectos ya iniciados (27/57).
6. **Interfaces unificadas de agentes** — AnythingLLM y OpenHands unifican Claude Code/Codex/Gemini CLI con chats, automatizaciones programadas y MCP; Paper Click y Gstack organizan agentes «como una empresa» (jerarquía, roles, costes, gobernanza) (34/57).

## Seguridad de agentes: el contrapeso del corpus

- **El caso Antigravity**: un agente que «malinterpretó la orden de limpiar caché» ejecutó un borrado silencioso de una unidad completa, sin confirmación ni recuperación realista — «fallos de diseño en las salvaguardas de seguridad» y el debate sobre permisos y autonomía (15/57).
- **El protocolo resultante**: backups siempre; permisos mínimos; nunca producción — réplica local destructible, verificación humana de los scripts del agente (las primeras iteraciones daban falsos positivos), y desconfianza de fondo: «no puedes confiar ciegamente en un sistema que es un LLM» (15/57).
- **La supply chain de skills**: Skill Spector (Nvidia) inspecciona skills antes de instalarlas — «>26 % podrían contener vulnerabilidades» (prompt injection, jailbreaks) (34/57).
- Desde el marco crítico: el filtrado de Claude Code revela que los agentes punteros son en realidad **sistemas neurosimbólicos** (≈500.000 líneas de código simbólico + ~50 herramientas junto a la red neuronal) — «ahora todos lo hacen, pero nadie quiere admitirlo» (entrevista a Gary Marcus, corpus previo).

## Patrón transversal: el humano supervisa

En todas las fuentes el agente ejecuta, pero el humano mantiene el control del plan: correcciones conversacionales (12/57), priorización de tareas en OpenSpec (27/57), ajustes finos post-generación (38/57) y revisión visual antes de tocar producción (15/57). El dato que rige la adopción no es la inteligencia del modelo sino el **coste por resultado** (3 USD/mes vs. Claude Pro; modelos gratuitos por OpenRouter).

## Fuentes de este concepto

- [[resumen-kilo-code-glm-46-modelo-ultra-economico-cursosdesarrolloweb]] (12/57) · [[resumen-ia-le-borro-todo-el-disco-duro-hdeleon-clips]] (15/57) · [[resumen-agente-de-codigo-que-viene-vacio-fazt]] (26/57) · [[resumen-openspec-apps-full-stack-sin-codigo-vera-badias]] (27/57) · [[resumen-reventar-la-ia-gratis-sin-limites-alejavi-rivera]] (34/57) · [[resumen-despedi-editor-contrate-claude-code-santiago-munoz]] (37/57) · [[resumen-herramientas-ia-2-video-remotion-opencode-darellanodev]] (38/57) · [[resumen-notebooklm-reventar-ia-gratis-alejavi-rivera]] (25/57, control agéntico) · [[resumen-laboratorio-ia-gratis-ubuntu-y-opencode-con-killercoda-comarca-ia]] (30/57, OpenCode efímero en Killercoda) · [[resumen-entrevista-gary-marcus-gustavo-entrala]] (corpus previo).
