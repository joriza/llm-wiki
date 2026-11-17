# Así se programa con agentes de IA en 2026

- **Fuente original**: `raw/agentes-de-codigo/2026-10-06-asi-se-programa-con-agentes-de-ia-en-2026.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=wrhTDWv66kQ))
- **Canal**: Eric Risco | Inteligencia Artificial
- **Publicado**: 2026-10-06 · **Duración**: 15:46 · **Idioma**: es (subtítulos automáticos, normalizados en este resumen)
- **Recopilado**: 2026-11-15 (tramo 22, WL-178)

## Qué trata

Presentación y demo de instalación de «RSC», un meta-arnés (metaharness) del autor que se instala por encima de cualquier agente de código (Claude Code, Codex, OpenCode, Antigravity, Pi) para dotarlo de memoria estructurada, documentación forzada y reglas transversales entre proyectos. El problema que ataca: al empezar cada proyecto nuevo se re-montaba todo desde cero — duplicidad de código, inconsistencias, tener que recordar qué skills había en cada proyecto (con riesgo de seguridad: skills de terceros con código malicioso).

## Ideas principales

1. **Problema: duplicidad y pérdida de contexto entre proyectos** (~[00:00]): sin memoria compartida, el agente recrea funciones ya existentes y obliga a re-montar el sistema en cada proyecto nuevo; los intentos previos (p. ej. Superpowers, skills que fuerzan DDD) no se trasladaban entre proyectos.
2. **Meta-arnés vs. agente de código** (~[02:16]): RSC no es un agente sino una capa instalable por encima (Greenfield y Brownfield) con tres piezas — memoria estructurada, herramientas reutilizables y una «constitución» de reglas.
3. **Documentación forzada (OKF)** (~[02:48]): «Open Knowledge Format», presentado como formato propuesto por Google para documentación de agentes; el agente documenta cada decisión, feature y restricción en cada interacción — reduce iteraciones fallidas y ahorra tokens (el agente no re-investiga la arquitectura en cada cambio). AGENTS.md / CLAUDE.md quedan solo para lo mínimo (son ficheros que viajan en cada petición).
4. **Herramientas reutilizables («brazos»)** (~[04:22]): scripts documentados una vez (p. ej. conexión a la base de datos) que el agente reutiliza en vez de regenerarlos cada vez.
5. **Constitución de reglas** (~[05:14]): reglas que el agente no se salta (p. ej. «nunca subir a main»).
6. **Trabajo en equipo vía autosync** (~[13:08]): las carpetas de tools y docs lanzan commit+push/pull automáticos — cualquier miembro del equipo tiene la documentación actualizada en menos de 5 minutos sin compartir rama de trabajo.
7. **Onboarding demo sobre proyecto Brownfield** (~[05:42]): instalación sobre un minijuego de un hackathon de 9 años; el instalador pregunta nivel técnico, tipo de proyecto, objetivo y alcance (con/sin flujo SDD); genera plan (29 skills, flujos plan/implement/review, carpetas por agente), crea PR contra master sin ensuciarla y luego «documenta todo el proyecto» revisando el código (arranque, arquitectura, problemas detectados).
8. **Actualización centralizada** (~[08:35] y ~[14:34]): «busca en mi ordenador todos los RSC instalados y actualízalos» — adapta todos los proyectos a nuevas tendencias (cita el ejemplo de los «carpaz»/aviation-grade prompts) sin tocar cada proyecto a mano.
9. **Control remoto por móvil** (~[11:20]): arnés expuesto como control remoto (proyecto en Mac mini local o servidor Hetzner) — instrucciones por voz desde el móvil, arreglar issues desde cualquier sitio.

## Cruces

- Dominio natural: ia-uso-practico/agentes-de-codigo. Cruce directo con [[agentes-de-codigo]] y la discusión de memoria de agentes ([[obsidian-memoria-agentes]], WL-27 [[deepseek-harness]]): misma tesis de que la memoria estructurada en archivos es lo que hace escalable el trabajo con agentes.
- La advertencia sobre skills de terceros con código malicioso (~[01:23]) cruza con WL-147 (seguridad de montajes locales) y WL-177 (riesgos de agentes).
- El flujo SDD opcional según tamaño/producción del proyecto conecta con la metodología ODD documentada en la wiki ([[odd-metodologia]]).

## Notas de triage

- Fuente de primera mano del proyecto propio del autor (demo en vivo del instalador); el video es a la vez tutorial y promoción del arnés propio (autopromoción señalada; URL del repo en descripción del video, no verificada).
- Nombres ASR: «RSC», «Cloud Code» (= Claude Code), «OKF» — normalizados en este resumen según contexto; «carpaz» sin identificar con certeza.
- **Entidad**: [[eric-risco]] — primera de las dos fuentes del autor en este conjunto (WL-178 RSC + WL-180 AI Factory); cruce ya anotado con [[agentes-de-codigo]] y [[obsidian-memoria-agentes]] (consolidación T39, 2026-11-15).
