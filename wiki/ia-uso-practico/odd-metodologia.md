# ODD (Organic Driven Development)

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2 resúmenes de la playlist «IA-Recursos» (52/57 fuente primaria, 51/57) + uso propio de la wiki.
- **Ver también**: [[agentes-de-codigo]] · [[evaluacion-de-llms]] (evidencia real vs. cognitiva) · [[gentleman-programming]].

## El concepto

Metodología de trabajo con agentes de IA creada para Gentle AI (flujo por defecto desde su versión 3.0), que **reemplaza al spec-driven development (SDD)**. Su motivación: la burocracia de propuesta → spec → diseño → implementación → verificación encarece cada iteración, porque si algo falla hay que volver a cambiar la proposal, el diseño y las specs. Su criterio de fondo: las metodologías humanas (SDD, TDD) se aplican solo cuando aportan, y el arnés debe **crecer junto con la tarea** — no matar mosquitas con una bazuca.

## El flujo (fuente primaria 52/57)

1. **Petición → ¿implementación autorizada?** Si es simple: se implementa directo, sin artefactos.
2. Si hay incertidumbre: **exploración** del código existente → **research acotado** (búsqueda externa solo para llenar huecos del scope) → resolución de decisiones dentro del scope.
3. Si hay una **premisa de altas consecuencias**: **challenge** — buscar o ejecutar evidencia que la refute o confirme antes de implementar.
4. Si la petición es **sustancial**: **un documento por feature** (`odd/tasks/...md`) con objetivo, problemática, porqués, scope y fuera-de-scope, reglas, tareas (un TODO vivo que el agente actualiza constantemente), acceptance criteria, checks y **process log** para que otro agente retome el contexto.
5. Implementación con **TDD**, tarea por tarea; al terminar se graba con **evidencia real** (tests, e2e, golden files) — no «evidencia cognitiva»: si otro agente lee el documento, no re-ejecuta porque ya existe prueba de que funciona.
6. Al cerrar el ciclo se aplica **RDD** (receipt-driven) para la revisión; si queda trabajo, se vuelve al paso 1.

## Componentes del ecosistema que la rodean

- **Presupuesto de líneas**: cada tarea estima líneas con límite objetivo de ~400 (el «switch point» para revisar); se induce por carga cognitiva («te doy 400 líneas; si lo justificás, te doy más»), no por orden de minimalismo — la anti-sobreingeniería por diseño (51/57).
- **Pre-commit risk assessment + RDD**: severidad del cambio antes de commitear; review por slices con agentes enfocados por lentes (riesgo, resiliencia, legibilidad, confianza) aislados del contexto del padre, conducidos por un binario determinista (51/57).
- **Engram**: memoria compartida local entre agentes (decisiones, por tópicos) (51/57, 52/57).

## El debate que la contextualiza

ODD nace como respuesta a dos extremos documentados en el stream: la sobreingeniería de los arneses (crítica explícita al Swarm Forge de Uncle Bob: 6 agentes en paralelo) y el abandono del arnés (el tweet de Uncle Bob: «dejé de usar arnés, mi consumo cayó un factor gigante»). La tesis del canal: el arnés no es el enemigo, la **burocracia fija** sí (52/57).

## Nota de continuidad con esta wiki

Este lote se registra en `odd/tasks/` siguiendo exactamente el formato ODD que las fuentes describen (tareas, acceptance criteria, process log): la wiki es un usuario directo del patrón que documenta.

## Fuentes de este concepto

- [[resumen-hoy-te-presento-odd-mi-metodologia-para-eliminar-la-burocracia-de-la-ia]] (52/57, fuente primaria) · [[resumen-inteligencia-artificial-sin-sobreingenieria-por-que-cree-gentle-ai-curso]] (51/57).
