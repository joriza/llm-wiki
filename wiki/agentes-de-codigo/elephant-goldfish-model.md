# Elephant-Goldfish Model (EGM)

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-13 (consolidación de los tramos 1-2 del backlog «Ver más tarde»).
- **Fuentes**: 1 resumen — [[resumen-elephant-goldfish-model-el-metodo-gratis-de-google-para-programar-con-ia]] (WL-10, InzideTech).
- **Ver también**: [[odd-metodologia]] (misma familia: disciplina de diseño antes de código) · [[agentes-de-codigo]].

## El concepto

Sistema abierto de Google (Apache 2.0) contra la **contaminación de contexto**: horas de conversación con un asistente generan supuestos compartidos que nadie cuestiona («tu IA te sigue la corriente»). La solución divide el trabajo en tres roles estrictos:

- **El elefante**: agente principal con memoria del proyecto que redacta el diseño **por secciones aprobadas** (redacta una y se pausa; no escupe «una biblia de 2.000 líneas»).
- **Los peces dorados**: subagentes recién nacidos con **cero memoria** de la conversación — solo leen el documento y el código «en frío» para destruir puntos ciegos sin empatía por el esfuerzo invertido; auditoría en cinco etapas con revisor adicional basado en TRIZ (contradicciones técnicas).
- **El humano**: árbitro que acepta o descarta cada crítica (`/egm-resolve`) y aprueba la especificación final.

Flujo maestro de cinco pasos: bootstrap (documentar un repo viejo sin documentación) → brainstorm con primeras críticas (concepts brief) → especificación por secciones (design draft) → fuego cruzado review+resolve (especificación definitiva en `docs/designs/`) → ejecución + **drift-report** (compara los documentos contra el código real tras un mes de parches). Portátil: Claude Code, Codex CLI, Antigravity CLI, Cursor, Copilot. Limitación dura: exige subagentes verdaderamente aislados — sin soporte, la revisión se detiene en seco en lugar de fingirse.

## Parentesco con ODD

Familia de la **disciplina de diseño antes de código** ([[odd-metodologia]]). Coincidencias: ambos reservan la burocracia para cambios sustanciales (la política de EGM prohíbe documentos para cambios pequeños; el switch point de ODD es el presupuesto de ~400 líneas) y ambos tratan el documento vivo como artefacto verificable, no como ceremonia. Diferencias de énfasis: ODD decide *cuándo* un cambio merece documento y hace crecer el arnés con la tarea; EGM industrializa la *revisión adversarial* del documento (auditores sin memoria ni anclaje en la conversación) y añade el drift-report como verificación posterior de que la implementación no se desvió de la especificación. Complemento directo: «un diseño probado por 10 peces dorados sigue siendo papel» — EGM manda generar primero los tests desde la especificación, el mismo lugar que ODD asigna al TDD. Cruce futuro registrado en la fuente: [[resumen-estamos-mergeando-codigo-que-nadie-entiende-nerdearla-jp-flores]] (el código que nadie entiende como problema que una especificación auditada pretende prevenir).

## Marcas de la fuente

Cifras de adopción (13.900 estrellas «en tiempo récord»), la demo (seis fallos de concurrencia) y la versión mínima de Antigravity son claims del canal sin verificación; los nombres de comandos fueron reconstruidos de ASR — contrastar con el repositorio antes de citar.
