# ADEs: orquestación de agentes

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-14 (consolidación diferida de los tramos 4-7 del backlog «Ver más tarde»; tema-candidato «ADEs-como-orquestación» registrado en el cierre del tramo 4).
- **Fuentes**: [[resumen-WL056-t3-code-ade-comparativa]] (WL-56, Fazt Code — T3 Code, el ADE opinionated de Theo) y [[resumen-WL047-superagente-deepseek]] (WL-47, Helmcode — arquitectura multi-agente del SuperAgente de DeepSeek).
- **Ver también**: [[multiplexores-agentes]] · [[deepseek-harness]] · [[ofimatica-agentica-local]] · [[odd-metodologia]] · [[hardware-agentico-mcp-first]].

## El concepto

Dos respuestas al mismo problema de 2026 — demasiados agentes, demasiadas sesiones, humano como cuello de botella:

1. **ADE (Agentic Development Environment) — la capa GUI**: T3 Code (WL-56) — GUI Electron minimalista multi-suscripción (Claude Code, Codex, Grok, Gemini CLI…), worktrees paralelos para vi-coding, cola de tareas con atención visual, contadores de uso unificados, remoto headless vía GitHub/Tailscale + app móvil. Veredicto: UX sobresaliente para orquestación pura; Fazt prefiere harnesses originales actualizables. Límites: sin agrupación por proyecto, headless no en Windows, solo suscripciones (sin modelos locales), opinionado por su creador.
2. **El multi-agente disciplinado — la capa de arquitectura** (WL-47): SuperAgente de DeepSeek — gate determinista, router que **nunca ejecuta, siempre delega** (−47 % en tareas lentas), threads/subscriptions (−27 % tokens de coordinación), slots que se liberan al esperar revisión humana, proactividad graduada (off/observe/auto; default observe).

## Relación con otros conceptos

- **Router-delega ≈ orquestador-workers**: la misma separación coordinación/implementación que [[odd-metodologia]] aplica a su nivel de proceso (WL-47).
- Tensión documentada con WL-45: allí el humano se «oxida» delegando en IA; aquí el diseño asume que el humano es el cuello de botella y lo minimiza —WL-52 (burnout del one-man-band) es el contraargumento vivo ([[burnout-era-ia]]).
- La GUI multi-suscripción (ADE) vs el harness original ([[multiplexores-agentes]]): dos modelos de gobernanza de herramientas (opinionado de Theo vs actualizable de la comunidad).
