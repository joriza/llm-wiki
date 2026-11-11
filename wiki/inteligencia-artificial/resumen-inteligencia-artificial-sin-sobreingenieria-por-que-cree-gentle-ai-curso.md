# Resumen: Inteligencia artificial sin sobreingeniería: por qué creé Gentle AI (curso)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=mjG1w1RjDKg) (fuente 51/57 del lote IA-Recursos)
- **Canal**: Gentleman Programming
- **Publicado**: 2026-09-19 · Duración 38:19
- **Raw**: `raw/inteligencia-artificial/2026-09-19-inteligencia-artificial-sin-sobreingenieria-por-que-cree-gentle-ai-cur.md` (subtítulos automáticos, transcripción literal)

## Idea central

Presentación completa de **Gentle AI**: un ecosistema open source y gratuito, «opinado», que se instala sobre tu agente (soporte para 16+; los principales: OpenCode, Claude Code, Codex y **Pi**, el agente propio llamado Gentle Shell). El objetivo: dar al agente una forma de trabajo (un «arnés» no empresarial) que reduzca el carácter probabilístico de los LLM — «one-shotear» el resultado — y que la **sobreingeniería esté justificada**: si la petición es simple, va de una; si hay incertidumbre, investiga y hace preguntas (human in the loop).

## Qué trae y cómo se instala

- **Instalador TUI** (`gentle-ai`): actualizaciones automáticas (incluidas dependencias como Engram), instalación por agente, backups automáticos de todo lo que instala, y sincronización tras cada actualización (prompts versionadas con tags — lo que esté fuera de las tags no se pisa).
- **Configuración por agente**: recomendaciones de modelos y esfuerzo por plan (Claude: Opus/Haiku para archivado; Codex según suscripción $20/$100/$200), elección de modelos ya conectados en OpenCode, TDD habilitable (tests primero), herramientas de comunidad — **CodeGraph** recomendado (índice semántico del proyecto para evitar find/grep y ahorrar tokens).
- **Personalidad**: «Gentleman» (habla rioplatense, mentor que reta) o «Neutral»; el código y documentación siempre en inglés.
- **ATLR**: registro mínimo de todas las skills del sistema (Claude las guarda en un lado, OpenCode en otro, Pi en otro); el agente lee ese archivito solo si hace falta — carga diferida, casi cero contexto.

## Metodologías propias integradas

- **ODD (Organic Driven Development)** — reemplazo de SDD: un solo fichero de tarea (ej. `odd/tasks/...md`) con objetivo, problemática, porqués, scope y fuera-de-scope, reglas, tareas (que son un TODO vivo que el agente actualiza constantemente), acceptance criteria, checks y **process log** para que otro agente retome el contexto; guarda todo en Engram y genera **evidencia** (tests, golden files) de que funciona. Se escala: el orquestador hace lo simple directo; delega a subagentes lo complejo; lo largo va en tareas con verificación.
- **Presupuesto de líneas (forecast)**: cada tarea estima líneas; el límite objetivo es **~400 líneas** (el «switch point» para revisar código); se induce por carga cognitiva («sos un genio, pero te doy 400 líneas; si lo justificás, te doy más») en vez de ordenarle «hacelo mínimo»: así una tarea usa solo lo necesario — la anti-sobreingeniería por diseño.
- **Pre-commit risk assessment**: antes de commitear evalúa severidad del cambio (ej. tocar `go.mod` = medio); el review corre por **slices** (cortes de trabajo), no por cada cambio.
- **RDD (Receipt Driven Development)**, deshabilitado por defecto: review con agentes enfocados según severidad, ejecutado por un **binario/máquina de estados determinista** que le dice al agente qué hacer en cada paso: revisión → **freeze** de cambios → documento de **lineaje** (qué se revisa, por qué, qué archivos) → review por **lentes** (riesgo, resiliencia, legibilidad, confianza) aislados del contexto del padre («vení, Jorgito, mirá esto que yo ya no veo por estar una semana encima») → **recibo aprobado** → commit. Se puede pedir «hazlo siempre» por sesión.
- **PRs encadenados**: si se superan las 400 líneas se particiona en PRs — encadenados con un **final tracker / feature PR** (se van mergeando entre sí y el último va a main), o entregables individuales directos a main.

## Gentle Shell (Pi) — capacidades destacadas

- Multi-modelo por rol (orquestador vs subagente) con perfiles exportables/compartibles y «pin» por proyecto (usuario + proyecto); asignación de modelos con esfuerzos y thinking; vista de usage/coste por proveedor (ej. suscripción OpenAI); kit de modelos open source.
- **Diff checker en vivo** (`/gentle changes`): ve los cambios a nivel archivo de lo que hace el agente.
- **Worktrees gestionados**: usa worktrees para que los agentes no se ensucien el trabajo entre sí; se guardan juntos (`gentlei-worktrees/`) como hermanos del proyecto, no dispersos.
- **Backgrounds**: agentes en segundo plano con consultas en vivo al orquestador mientras trabajan (sin el clásico «/by the way» que traba), y **comunicación bidireccional padre↔subagente** para resolver incertidumbres sin reiniciar el trabajo (ahorro de tokens).
- Multi-sesión: orquestar todos los proyectos desde una vista (all sessions), ver el output de cada subagente, abrirlo en el editor.

## Cruces y observaciones

- El vídeo pone nombres oficiales a prácticas que ya aparecían en el lote: ODD (fuente 52/57 la presenta como metodología; aquí queda como el workflow central de Gentle AI), Engram (memoria persistente local entre agentes), GGa/Guardian Angel (revisiones pre-commit), RDD y el rol de CodeGraph. Todo eso está dentro del ecosistema del canal, con autopromoción constante pero coherentemente ligada a la demo.
- La regla de ~400 líneas por slice conecta con la filosofía de PRs revisables de [[agentes-de-codigo]] y con la crítica a SDD de la fuente 44/57 (SpecJudge) y de la 33/57.
- Nota de continuidad con la wiki: este lote se registra en `odd/tasks/` siguiendo exactamente el formato ODD que la fuente describe (tareas, acceptance criteria, process log).

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal. Normalizaciones: «Gentlei/Gentli/gent.com» por Gentle AI y gentle-ai, «Cloud» por Claude, «Pi/p.d.» por el agente Pi, «ODD» como Organic Driven Development, «SDD» por Spec/Spec-driven Development, «Receip Dream/Receip Driving Development» por Receipt Driven Development, «Cograph/CodeGraph» por CodeGraph, «NAN» por (proveedor de modelos open source, dudoso), «wordes/wordresses/W» por worktrees, «Ponitel» (plugin de «arquitecto vago», dudoso), «sol» por Sonnet, «HikQ» por Haiku. Nombres de productos propios del canal verificados contra el repo antes de citar.
