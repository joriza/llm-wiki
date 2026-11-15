# WL-185 · Me equivoqué, NO uses Spec Driven Development

- **Fuente original**: `raw/wl/tramo-23/2026-10-23-me-equivoque-no-uses-spec-driven-development.md`
- **Video**: [Me equivoqué, NO uses Spec Driven Development](https://www.youtube.com/watch?v=5JjuF1zpNbI) · Canal: HolaMundo · Publicado: 2026-10-23 · Duración: 37:38
- **Dominio previsto** (consolidación diferida, L12): `ia-uso-practico/agentes-de-codigo` (metodología de desarrollo con IA; primera mano con skills propias publicadas; cruces candidatos con [[agentes-de-codigo]], [[odd-metodologia]], WL-178/WL-180 Eric Risco — Software Factory, WL-165 Harness²)

## Crítica al Spec Driven Development (SDD)

El autor (HolaMundo) repasa meses de experiencia con SDD (SpecKit de GitHub, Kiro, Bimad, OpenSpec — flujo propuesta → spec → diseño → tareas → código) y lo rechaza, con respaldo de Kent Beck (XP/TDD), Matt Pocock y Dave Farley. Su cadena de problemas:

1. **Planificar todo por adelantado = cascada**: se define la arquitectura cuando menos se entiende el problema; el LLM rellena los vacíos con sobreingeniería (interfaces, campos de BD, capas «por si acaso»).
2. **Tareas por capas horizontales**: primero toda la BD, luego API, luego frontend — sesgo de entrenamiento más que culpa del SDD.
3. **Nada funciona hasta el final**: BD sin API no se prueba; API sin frontend no se usa.
4. **Revisión solo por lectura**: PRs de 3.000 líneas que al final se aceptan por agotamiento; «si no revisas el código, ese código ya no es tuyo».
5. **El software evoluciona**: lo especificado en el paso 1 ya no sirve en el 5.

Conclusión conceptual: **SDD no está hecho para programar, sino para delegar** — la especificación vale, la delegación total de la implementación no.

## Alternativa propuesta (agniles, en 3 skills propias)

- **Vertical slices** (no la arquitectura homónima): cada unidad atraviesa todas las capas y entrega valor usable desde el día 1; se verifica *usándolo*, no leyéndolo; la arquitectura emerge (refactor solo cuando se necesita); errores detectados a los 30 minutos, no 3 días después.
- **Backlog de historias de usuario** cortas (tipo/tipo/quiere/para): una línea no cuesta escribir ni descartar; el detalle técnico se posterga al tomar la historia; el backlog vive en GitHub Issues/Trello o un `backlog.md` descartable.
- **Pair programming con roles invertidos**: la IA es el driver (escribe), el humano el navigator (decide) — «la IA te ahorra escribir, no te ahorra el pensar»; citando a Kent Beck lo llama *augmented coding*, con tres alarmas: loops, cosas no pedidas, y trampas (modificar tests para hacerlos pasar). Por eso cada micro-paso se comitea: si el agente toca un test, se ve en el diff.

## Demo completa (37 min)

Lista de tareas multiusuario en Deno + React + Drizzle: skill backlog con Claude Opus (mínimo viable, preguntas para eliminar ambigüedades, división de historias que hacen más de una cosa) → skill story (criterios de aceptación, plan de implementación por endpoints, out-of-scope explícito) → cambio a un modelo rápido (Sonnet) y pair programming test a test (TDD puro: test → código → refactor; Zod como middleware de validación, tests junto a sus rutas, refactors intencionales solicitados por el humano, commits por paso). Cierre: «no es para vibecoders, es para desarrolladores»; skills publicadas en la descripción, con invitación explícita a criticarlas.

## Valoración para la wiki

Fuente de primera mano (el autor usa y publica sus propias skills) con tesis clara y demo end-to-end verificable. Posición intermedia útil en el debate metodológico actual: ni vibe coding ni delegación total tipo Software Factory (WL-180), sino control humano persistente con slices verticales. El propio video reconoce que no está probado en producción y que las tareas por capas vienen del entrenamiento de los LLM, no del SDD per se — matices que conviene preservar al consolidar.
