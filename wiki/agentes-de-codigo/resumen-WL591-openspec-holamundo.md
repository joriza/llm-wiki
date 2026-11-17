# WL-591 — Millones de dolares a la basura... ya no más.

- **Fuente original**: `raw/agentes-de-codigo/2026-08-14-millones-de-dolares-a-la-basura-ya-no-mas.md` ([Vídeo](https://www.youtube.com/watch?v=w5t3nWe_mIw))
- **Canal**: HolaMundo
- **Publicado**: 2026-08-14 · **Duración**: 16:12
- **Dominio definitivo**: agentes-de-codigo (consolidación T97 relevo 3, 2026-11-17) (SDD / especificaciones)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tutorial completo de **OpenSpec** (framework open source de desarrollo orientado a especificaciones, sin API keys ni servidores MCP, agnóstico de harness — Claude Code, Codex, OpenCode, Pi, Gemini Code), presentado como respuesta a los límites del «modo plan»:

- **Diagnóstico**: los agentes no son determinísticos («lo que hoy funcionaba mañana puede fallar»); confiar en prompts sueltos ×50 funcionalidades acumula deuda técnica y «pensar que la IA te va a solucionar la deuda es sumamente ingenuo»; el modo plan solo funciona en una sesión de chat — para múltiples sesiones o equipo hacen falta **especificaciones versionadas en git**.
- **Flujo demostrado en vivo** (con Neovim + Claude Code en tmux): `openspec init` → directorios `changes/` y `specs/`; comandos `opsx:explore` (conversación de clarificación previa al código: diagramas ASCII, preguntas, discusión de stack y patrones — «Atomic Design se define aquí, no después»), `propose` (genera spec con **escenarios tipo Gherkin** + design.md con contexto/objetivos/**decisiones/riesgos** + tasks por fases), `apply` (implementa tarea por tarea verificable), `sync` (mueve la spec cumplida a specs/ como documentación viva) y `archive` (closes la change).
- **Puntos de control humano**: el agente «asume cosas que no querés que asuma» — el momento de corregir es el design.md (ejemplo: le falta la estructura de directorios del backend/frontend); la verificación de tasks «es manual y la tenemos que hacer nosotros»; cierre: revisá siempre si la spec tiene estructura de carpetas, patrones, modelo de BD — «si está bien diseñado, tu agente no debería tener tantos problemas. Igual los va a tener, así que igual preocupate de estarlo revisando».
- Marcado de tareas por el agente (completadas salvo la verificación manual), trabajo en paralelo del equipo sobre changes distintos sin toparse.

## Señales de triage

- **Demo completa de 1.ª mano** (dos cambios: dashboard de criptos simple y multi-user watchlist de 8 fases); la herramienta OpenSpec existe y su flujo coincide con el mostrado.
- **Paralelo directo con la metodología ODD/SDD de esta wiki** — el video es prácticamente la misma filosofía (spec → decisiones → riesgos → tasks por fases → verificación humana → archive).
- El claim «reduce tus tokens a la mitad»-style no está aquí; el título («millones de dólares a la basura») es clickbait sobre la deuda técnica por prompts sueltos — señalado.
- ASR: «set» por Gemini CLI?, «TDL CX» por ¿tmux+CX?, «plata» por plana, «Cloud Code» por Claude Code — normalizado solo aquí; raw intacto. Cierre estándar de suscripción (casi 1 M).

## Cruces

- **[[odd-metodologia]] +1 y [[agentes-de-codigo]] +1**: OpenSpec como herramienta pública del patrón SDD que esta wiki practica; par directo con WL-450 (curso SDD de MoureDev), WL-501 (Hermes), WL-541 (harness engineering) — el clúster «spec-driven» se consolida con esta fuente.
- [[delegacion-cognitiva-ia]] / [[brecha-junior-ia]]: «el agente asume, vos verificás» — el mismo principio de verificación humana de la wiki de Gentle.
- HolaMundo entidad confirmada (canal grande preexistente en el ecosistema; probable 2.ª+ fuente — verificar en consolidación).

## Veredicto de triage

Excelente: el mejor tutorial del backlog de SDD aplicado (OpenSpec completo, con puntos de control humano explícitos) y el par práctico de la metodología ODD. Clickbait del título señalado. Consolidación diferida (L12): agentes-de-codigo/odd-metodologia, cruces WL-450/501/541; HolaMundo a verificar como fuente recurrente.
