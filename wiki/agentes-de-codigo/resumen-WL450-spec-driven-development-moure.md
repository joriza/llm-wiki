# WL-450 — El fin del Vibe Coding: Crea software robusto con este método

- **Fuente original**: `raw/wl/tramo-75/2026-08-27-el-fin-del-vibe-coding-crea-software-robusto-con-este-metodo.md` ([Vídeo](https://www.youtube.com/watch?v=5HaOxAAA5qI))
- **Canal**: MoureDev by Brais Moure
- **Publicado**: 2026-08-27 · **Duración**: 123:16 (2 h 03 m, formato curso/masterclass)
- **Dominio provisional**: agentes-de-codigo (metodología de desarrollo con IA — curso de primera mano)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Curso completo de **Spec Driven Development (SDD)** de Brais Moure: tesis de que la IA no elimina la ingeniería de software sino que la modifica, y que el spec (el «qué» y el «por qué») debe ser el artefacto principal de comunicación con la IA, dejando el «cómo» al agente bajo revisión humana constante (human-in-the-loop).

## Contenido

1. **Crítica del vibe coding**: rápido pero sin control — código indeterminista, inseguro, deuda técnica; «nadie paga a bycoders, pagan a programadores». Válido solo para prototipos desechables y herramientas de uso propio.
2. **Continuidad histórica**: el SDD no inventa nada — equivale al ciclo de vida clásico (planificar→analizar→diseñar→implementar→testear→mantener, 60 años) mapeado a fases nuevas: **Constitución** (principios innegociables, se escribe una vez), **Spec** (`spec.md`: contexto, historias de usuario, RF/RNF, casos límite, fuera de alcance, definition of done, notación **EARS** para reducir ambigüedad), **clarificación** (QA que lista ambigüedades sin proponer soluciones), **plan técnico** (`plan.md`: módulos, modelo de datos, algoritmo, estrategia de test), **tasks** (`tasks.md`: tareas de 20-30 min con checkboxes y trazabilidad a RF), **implementación tarea a tarea con TDD**, **validación requisito por requisito** («¿la spec está cumplida?»).
3. **Taxonomía de tres enfoques**: **spec-first** (la spec muere; fuente de verdad = código), **spec-anchored** (spec y código sincronizados, doble fuente de verdad) y **spec-as-source** (la spec ES el programa; Moure lo considera peligroso — caso **Tessel**, framework que pivotó y abandonó el enfoque). Moure recomienda un mix entre los dos primeros.
4. **Frameworks SDD** (Kiro, BMAD, Spec Kit de GitHub, OpenSpec, Specful): son «prompts y skills empaquetados»; el 90 % muere; el estándar de la industria es el flujo SDD, no ninguna herramienta. Recomendación: aprender fundamentos antes de usar cualquiera.
5. **Práctica real**: app «Hábitos CLI» en Python (crear hábitos, marcar hechos, listar rachas) desarrollada en vivo con Claude Code + Opus: agents.md (plantilla: proyecto, comandos, convenciones, límites, verificación al terminar), constitution.md, spec 001 con preguntas de ambigüedad («¿qué es una racha?» — tolerante hasta ayer), plan, 8-14 tareas, implementación T2 con tests primero, validación RF 1-11.
6. **Siguiente nivel**: skills por fase (spec-generator como ejemplo), subagentes especializados en SDD, MCP a Jira para historias de usuario.
7. **Cierre**: ahorro estimado de 80-90 % del tiempo frente a programar a mano, a cambio de revisión humana obligatoria — «el responsable eres tú».

## Señales de triage

- Fuente de primera mano docente (repositorio público `mouredev/hello-sdd` — ASR «hello-sd»); contenido técnico reproducible, sin afirmaciones dudosas de hechos externos.
- Promoción de la plataforma propia MourePro (mentorías/comunidad) y CTAs excluidos de la síntesis.
- Nombres de productos ASR sin verificar («Cloud Code» = Claude Code, «Bimath/Bimad» = BMAD, «Speckid» = Spec Kit, «Ghajopilot» = GitHub Copilot) — normalizados solo donde seguros.

## Cruces

- [[agentes-de-codigo]] (fuente mayor de primera mano), [[odd-metodologia]] (paralelismo explícito con ODD: spec → tareas → implementación → validación → commit), [[delegacion-cognitiva-ia]], [[brecha-junior-ia]] (junior puede seguir el curso), [[obsidian-memoria-agentes]] marginal.
- Cluster SDD previo: WL-211 (SDD candidato), WL-185, WL-165 (Harness²), WL-228 (context rot) — consolidar juntos en la migración.

## Veredicto de triage

Fuente técnica de primer nivel para el cluster agentes/SDD; conservar.


## Ver también

- [[agentes-de-codigo]]
- [[brecha-junior-ia]]
- [[delegacion-cognitiva-ia]]
- [[frameworks-web-python]]
- [[historia-software-corporativa]]
- [[obsidian-memoria-agentes]]
