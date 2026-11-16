# WL-230 — Así creo skills de IA que realmente uso todos los días (7 tips)

- **Fuente original**: `raw/agentes-de-codigo/2026-10-13-asi-creo-skills-de-ia-que-realmente-uso-todos-los-dias-7-tips.md`
- **Video**: [Así creo skills de IA que realmente uso todos los días (7 tips)](https://www.youtube.com/watch?v=oZTXrgHRi-k)
- **Canal**: Fazt · **Publicado**: 2026-10-13 · **Duración**: 19:45 · **Ingesta**: 2026-11-15 (tramo 33)

## Qué trata

Guía práctica de primera mano del canal Fazt sobre cómo **crear y mantener skills propios** para agentes de código (Claude Code, Codex, OpenCode y "cualquier agente que soporte el estándar"), organizada en 7 consejos:

1. **Skills simples y legibles**: al pedirle a la IA que genere un skill, tiende a escribir archivos enormes (~100 líneas). Mejor pedirle explícitamente que los reduzca a solo los pasos pedidos, sin explicaciones obvias ni texto redundante, y de forma genérica (sin comandos ni código específico). Un skill corto se puede leer, editar y extender a mano.
2. **Skills modulares**: un skill por tarea (code review, browser test, ship/desplegar) en vez de un monolito que crece. Se pueden dividir skills que hacen dos cosas y crear un skill "orquestador" (p. ej. «prueba completa») que llama a los otros en orden — aunque el autor recomienda mantener los modulares sin encadenarse entre sí.
3. **Automatizar tareas cotidianas por demostración**: se le enseña al agente los pasos en vivo (abrir navegador → filtrar noticias de IA → generar reporte HTML en términos simples) y luego se le pide que anote solo los pasos en un skill. El autor argumenta que para uso personal esto es más genérico que web scraping: el modelo ya sabe leer una página cualquiera.
4. **Darle herramientas al agente**: un agente sin herramientas solo genera texto. Ejemplos: FFmpeg para audio (Audacity se basa en él), MCPs de DaVinci Resolve y After Effects para vídeo, proyecto open source para descargar de YouTube. Los skills combinan herramientas en flujos (descargar → editar con FFmpeg → cortar en DaVinci).
5. **Ejemplos/plantillas en `assets/`**: para que la salida tenga siempre el mismo formato, el estándar de skills permite una carpeta `assets` dentro del skill con plantillas HTML (u otros recursos) que el modelo usa de referencia; se pueden nombrar y referenciar por caso (backend vs frontend).
6. **Definir restricciones por skill**: al estar modular, cada skill lleva sus propias reglas (p. ej. «nunca hacer merge ni push a main, siempre push a la rama actual y crear pull request», «preguntar antes»). El autor prefiere escribirlas a mano en el Markdown antes que pedirle a la IA que agrande el archivo.
7. **Guardar y versionar**: los skills de proyecto viajan con el repo (commit/clone). Los globales (carpetas `~/.claude/skills`, `~/.agents`, etc.) los mantiene en repos de dotfiles público y privado en GitHub, que luego se clonan/enlazan a la carpeta del agente — así sobreviven a herramientas nuevas.

## Observaciones de triage

- Contenido **técnico de primera mano** (el autor muestra sus propios skills y dotfiles en pantalla); sin citas externas que verificar — son recomendaciones de práctica, no afirmaciones factuales contrastables.
- **Patrocinio excluido de la síntesis**: bloque integrado al inicio por "Sinut" (plataforma de despliegue; features, precios fijos y MCP declarados por el sponsor).
- ASR con errores sistemáticos de reconocimiento: «gente/agente» (agent), «Cloud/Cloude» (Claude), «Sinut/Sinout» (nombre del sponsor), «{punto} aliens» (`~/.agents`), «Orca» (¿Otra herramienta? ambiguo), «herder» (¿Hyprland? ya aparece bien luego) — normalizado solo aquí, jamás en el raw.
- **Cruces**: [[agentes-de-codigo]] (skills como mecanismo de extensión de agentes; alternativo a la metodología ODD — cruces WL-153/WL-178/WL-180/WL-185/WL-203/WL-230 temático con la serie de metodología); WL-203 (skills + Claude Code aplicado a video, Melina Blanco).

## Dominio destino sugerido (pendiente de consolidación)

- **ia-uso-practico/agentes-de-codigo** — guía de práctica de extensión de agentes de código.
