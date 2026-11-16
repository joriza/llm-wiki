# WL-390 — Taller de Skills para Agentes de IA desde cero: Claude Code, OpenCode, Codex, Cursor, VS Code

- **Fuente original**: `raw/agentes-de-codigo/2026-09-10-taller-de-skills-para-agentes-de-ia-desde-cero-claude-code-opencode-codex-cursor.md`
- **Canal**: MoureDev by Brais Moure
- **Publicado**: 2026-09-10 · **Duración**: 96:15
- **Video**: [`UGh6q6rKVM4`](https://www.youtube.com/watch?v=UGh6q6rKVM4) · WL-390 (índice 78 del cache, 4.584 entradas)

## Qué trata

Tutorial extenso (formato clase en directo) sobre **agent skills** con demostración simultánea en 5 agentes (Cursor, VS Code/Copilot, Codex, Claude Code, OpenCode), partiendo de un proyecto mínimo Python (cálculo de progreso de retos).

- **Concepto**: una skill empaqueta instrucciones para una tarea repetida («libro de recetas»); no es determinista, no infiere contexto ni sustituye la revisión — «tú eres responsable del código». Diferencia con prompt (texto puntual), reglas (documentación de proyecto), herramienta, MCP (conexión a sistemas de terceros) y plugin (skills + MCPs).
- **Anatomía**: carpeta `.agents/skills/<nombre>/` con `skill.md` obligatorio: frontmatter YAML (name = nombre de la carpeta, description crucial — es lo que usa el agente para decidir su uso automático) + cuerpo Markdown (qué hace, entradas obligatorias/opcionales — nivel principiante/junior, foco —, procedimiento paso a paso, límites, formato de salida). Skills avanzadas añaden `references/` (requisitos/reglas), `scripts/` (tests ejecutables) y `assets/` (plantillas de informe), referenciados desde skill.md — demostrada una skill de revisión (`review-progress`) que ejecuta tests y emite informe con plantilla.
- **Invocación**: explícita (`/` o `$` en Codex) e **implícita** — la peculiaridad clave: el agente decide usar la skill cuando el prompt encaja con su descripción, sin que el usuario la llame.
- **Compatibilidad**: estándar originado por Anthropic, hoy abierto (agentskills.io); `.agents/skills` lo leen 4 de los 5 agentes, pero **Claude Code sigue su carpeta propia** (`.claude/skills`) — el creador del estándar no lo cumple en su propio harness (señalado con ironía). Nivel proyecto vs global (`~/.agents/skills`): el global aún «baila» entre agentes; recomendación — global solo para skills útiles en todo proyecto (explicar código), de proyecto las ligadas a funcionalidad concreta.
- **Buenas prácticas**: pocas skills — el agente lee sus descripciones en cada prompt; estudios citados por el autor: demasiadas skills degradan los resultados por debajo de no tener ninguna; preferir formato comando (invocación explícita) si no se quiere inferencia automática; preferir nivel proyecto para saber qué está activo.
- **Skills de terceros**: agregador skills.sh (gestor CLI, instalar con `npx skills add`, selección de agentes y nivel proyecto/global, opción single-source), repos de Matt Pocock (grill-me, 259k stars), skills de Anthropic (frontend-design, skill-creator), GitHub/superpowers, Microsoft; gestores gráficos alternativos. **Seguridad**: una skill es texto plano — revisarla antes de instalar una desconocida; puede ordenar exfiltrar ficheros o API keys.
- **Recomendadas por el autor**: find-skills, grill-me (entrevista iterativa para afinar el prompt/especificación), frontend-design, agent-browser, skill-creator, skill de diagnóstico de errores.
- **Redacción**: descripción que dicte cuándo usarla y cuándo no; cuerpo concreto; formato simple mejor que complejo; escribir la primera a mano y luego usar la IA para crear skills — siempre revisando dónde las deja y qué escribió.

## Señales de triage

- Tutorial factual de 1.ª mano (demostraciones en vivo en los 5 agentes); las cifras de instalaciones/stars y el «estudio que demuestra» el degradado por exceso de skills son citados sin fuente (señalado).
- Marco comercial constante (cursos propios en MoureDev, mentorías) — excluido de la síntesis.
- ASR severo en vocabulario técnico: «jarnés»→harness, «gente»→agente, «Cloud Code»→Claude Code, «yamel»→YAML, «Mard»→Markdown, «Mat Pocock»→Matt Pocock, «agents.m»→AGENTS.md — normalizado solo aquí.

## Cruces y consolidación (deferida — L12)

- Dominio destino: `agentes-de-codigo/` (skills de agentes, harness, desarrollo asistido).
- Cruces: concepto candidato skills-publicables (WL-350), [[gentleman-programming]]/[[fazt]] ecosistema harness, agentes-de-codigo WL-334/346; [[opencode]] +1 fuente (MoureDev confiesa preferencia por OpenCode y Claude Code de terminal); [[mouredev]] entidad candidata de canal (1.ª fuente).
