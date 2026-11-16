# WL-211 · Spec-Driven Development vs vibe coding: cuál usar y cuándo

- **Fuente original**: `raw/futuro-programacion/2026-10-17-spec-driven-development-vs-vibe-coding-cual-usar-y-cuando.md`
- **Video**: [Spec-Driven Development vs vibe coding: cuál usar y cuándo](https://www.youtube.com/watch?v=k83I32V0IFg)
- **Canal**: Torti Code
- **Publicado**: 2026-10-17 · **Duración**: 16:25 · **Ingesta**: 2026-11-15 (tramo 29, formato dominio pendiente de consolidación)
- **Marco**: tutorial didáctico con analogía (sastrería) y datos citados de terceros (Vera Code, Birgitta Böckeler/Thoughtworks, Colin Eberhardt/Scott Logic); sin datos primarios propios.

## Qué trata

Tutorial sobre desarrollo guiado por especificaciones (SDD) frente a vibe coding: por qué un agente al que se le pide "una frase" adivina mal las reglas que solo estaban en la cabeza del humano, cómo una especificación corta versionada en el repo cierra esa brecha, y el flujo completo especificación → plan → tareas → pruebas → revisión, con cuándo NO conviene.

## Puntos clave

- **El problema**: un agente que agrega "olvidé mi contraseña" en 4 minutos deja un enlace sin vencimiento, reutilizable, y una página que delata qué correos tienen cuenta. Dato citado: Vera Code (2025, >100 modelos) — ante una forma segura y otra insegura, eligen la insegura el 45 % de las veces. El agente no lee cabezas.
- **La especificación**: archivo corto en lenguaje normal, en el repo, revisado antes del código y releído por el agente en cada etapa. Para el caso de la contraseña: vence a los 30 min, sirve una sola vez, uno nuevo anula el anterior, respuesta idéntica exista o no el correo.
- **Vibe coding (Karpathy, 2025)**: válido para prototipos desechables; en código mantenible abre dos grietas — decisiones enterradas en el chat y agente sin memoria de sesión (solo ventana de contexto). La especificación cierra ambas porque se revisa, se versiona y se entrega cada vez.
- **Anatomía**: historia de usuario; requisitos numerados verificables sí/no ("rápida" es opinión, "<1 segundo" se mide); escenarios de aceptación dado-cuando-entonces que se convierten en pruebas; sección de qué queda fuera; dudas marcadas como preguntas abiertas (Spec Kit las aclaran antes de planear); sin decisiones de implementación (qué antes de cómo).
- **Flujo con Spec Kit / Kiro / Open Spec**: constitución (reglas globales del proyecto) → plan (revisado como el patrón del sastre, antes de que exista código) → tareas pequeñas → pruebas primero desde los escenarios (TDD, escritas por el agente pero revisadas contra la spec) → comparación final construido-vs-especificación.
- **Cambio de requisito**: se edita primero la especificación (30→15 min, nuevo requisito de aviso por correo) y todo baja en cadena — evita la "deriva de especificación" (documento y código con dos verdades). Tres niveles de Böckeler: spec desechada por tarea (común), mapa vivo por funcionalidad (recomendado; Open Spec), código regenerado desde la spec (experimental).
- **Cuándo no**: cambios triviales de una frase (Böckeler: un bug chico terminó en 4 historias con 16 criterios); caso Eberhardt — Spec Kit produjo 2.500 líneas de Markdown y 3,5 h de revisión para lo que su método habitual resolvía en 8 min de agente + 15 min de revisión; riesgo de volver al modelo en cascada (antídoto: una spec corta por funcionalidad); los agentes se saltan instrucciones, así que las pruebas y la lectura del código siguen obligatorias.

## Observaciones de triage

- Tutorial pedagógico de calidad, con datos de terceros bien citados (Vera Code, Böckeler, Eberhardt) — fuente secundaria sin verificación propia.
- Cruces previstos: [[agentes-de-codigo]] (WL-153/WL-165/WL-178/WL-180/WL-185/WL-203), [[odd-metodologia]] (TDD, spec-first — solapa fuerte con la metodología ODD del propio wiki), WL-211 ↔ especificaciones en Gentle Design (WL-153), Spec Kit/Kiro como herramientas → página [[spec-driven-development]] existente, actualizada con esta fuente (T40, 2026-11-15).
- Dominio previsto: ia-uso-practico/agentes-de-codigo — consolidación diferida, S4: no se crean dominios nuevos.
