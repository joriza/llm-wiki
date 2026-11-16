# WL-234 — 7 pasos para programar mejor con coding agents

- **Fuente original**: `raw/agentes-de-codigo/2026-10-14-7-pasos-para-programar-mejor-con-coding-agents.md`
- **Video**: [7 pasos para programar mejor con coding agents](https://www.youtube.com/watch?v=dhkiC4Iq1eM)
- **Canal**: return(GiS); · **Publicado**: 2026-10-14 · **Duración**: 27:32 · **Ingesta**: 2026-11-15 (tramo 33)

## Qué trata

Metodología personal de la autora (Elena Martín / return(GiS);) para trabajar con agentes de código, en 7 pasos aplicables a cualquier agente (Copilot, Codex, Claude, OpenCode):

1. **Preparar el entorno**: conocer el proyecto antes de tocar el agente — barrido visual, cómo se arranca (`npm run dev`), qué aspecto tiene la app.
2. **`AGENTS.md` en la raíz**: compatibilidad cross-agente. Contenido conciso (49 líneas en su repo demo), formato del curso de Codex: project summary, archivos clave con descripción breve (que el agente no investigue lo que ya se sabe), development & validation (instalar, correr, lint, formateo), guardarraíles y **definition of done** (lint + build en verde). Todos los agentes tienen `/init` como punto de partida.
3. **Planificar con modelo altamente capaz**: usar el modo plan («poco utilizado» según su experiencia) con un modelo «perfil senior» (Opus 5.5, Astra en OpenAI); se puede cruzar familias (un modelo planifica, otro critica). Alternativa: skill «Grill Me» de Matt Pocock (repo con ~300 K estrellas) que entrevista al usuario para enriquecer la planificación.
4. **Implementar con modelo adecuado (no el mismo)**: planificación ≠ implementación; delegar en modelos menos capaces = más barato y más rápido (razonan menos porque ya tienen todo el detalle). El planificador queda de orquestador y puede reasignar si uno no termina (ejemplo: Astra delega en Sol/Luna según complejidad).
5. **Revisar siempre** (humano y/o agente): pedirle que pare antes de pushear; revisar en local los diff antes de la PR; `/review` existe en todos los agentes.
6. **Entrega revisable**: toda PR con 4 bloques — qué, por qué, cómo se probó y qué queda pendiente; skill «Show Me» para acompañar la PR con diagramas visuales del cambio, y adjuntar imágenes/vídeos antes-después en cambios de UI (GitHub CLI ya lo permite).
7. **Nueva tarea, nueva sesión**: no inflar el contexto con temas no relacionados — el agente «con tantas cosas en la cabeza» pierde el hilo igual que una persona.

**Bonus (instrucciones a nivel usuario)**: además del AGENTS.md por repo, mantiene buenas prácticas globales (`.codex`/`.copilot`/`.claude` a nivel usuario, AGENTS.md por encima): avisar cuando la petición se sale del objetivo de la sesión (sugerir nuevo chat con título); no fijar modelos por nombre sino pedirle que elija entre los disponibles según la tarea (evita quedarse con el modelo de planificación); verificar que exista un issue de tracking de la planificación; adecuar etiquetas del repo; crear branch aislado desde el default con Conventional Commits; avisar antes de pushear para revisión local; adjuntar evidencia visual en cambios de UI.

## Observaciones de triage

- Contenido metodológico de primera mano (muestra sus propios archivos de instrucciones y repos); las referencias a modelos («Opus 5.5», «Astra», «Sol/Luna» de OpenAI) corresponden al ecosistema 2026 del autor, sin verificación independiente — nombres de producto, no benchmarks.
- Menciona a Matt Pocock y sus skills (Grill Me, Show Me) con ~300 K estrellas — cifra de popularidad citada de pasada.
- **Cruces fuertes**: [[agentes-de-codigo]], [[odd-metodologia]] (planificación previa, sesiones acotadas por tarea, revisión antes de commit — mismo patrón), serie metodología WL-153/178/180/185/203, WL-228 (context rot / sesiones cortas), WL-203 (skills con Claude Code), WL-185 (metodología con IA, Melina Blanco).

## Dominio destino sugerido (pendiente de consolidación)

- **ia-uso-practico/agentes-de-codigo** — metodología de trabajo con agentes de código.
