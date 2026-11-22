# WL-726 — Arquitectura de Software usando IA — Curso Completo (SDD, ODD, Vertical Slicing, Hexagonal) (aDevSays)

- **Fuente original**: `raw/agentes-de-codigo/2026-11-21-arquitectura-de-software-usando-ia-curso-completo-sdd-odd-vertical-slicing-hexag.md`
- **Dominio definitivo**: `agentes-de-codigo` (consolidación T25, tramo 105)
- **Video**: https://www.youtube.com/watch?v=2p_iy9C5mz0
- **Canal**: aDevSays (1.ª fuente; directos semanales de desarrollo asistido con IA) · **Publicado**: 2026-11-21 · **Duración**: 44:48 (directo de ~1 h 15) · **Idioma**: es (ASR; garbiñeos normalizados solo aquí; ASR degrada los acrónimos: «SD/Spyra/Spect» = SDD/spec-driven, «vertical slide» = vertical slicing)

## Síntesis

Curso en directo sobre arquitectura de software para desarrollo con IA. Tesis central: el papel del programador migra de «obrero» (escribir código) a **arquitecto del sistema** — la IA es no determinista y un «error aparentemente inofensivo» (una semilla recursiva) puede tumbar un servidor, así que la estructura, las restricciones y el acotado del contexto son lo único que sigue siendo responsabilidad humana.

- **Bycoding vs. SDD por alcance**: el vibe coding «funciona» solo con alcance reducido (app personal, pocos usuarios, pocas features); al escalar, los problemas estructurales invisibles se acumulan sobre bases sin cimientos y son incorregibles a posteriori. Crítica a la dicotomía viral «bycoding malo / SDD bueno»: depende del alcance.
- **Crítica bien argumentada al Spec-Driven Development** (lo más original del video, contra el «mantra absoluto»): (1) el spec completo se inyecta en cada petición → coste de tokens; (2) el spec describe TODA la app antes de que exista — imposible prever todos los módulos/casos, así que el «documento de la verdad» sufre mutaciones y pierde su valor normativo; (3) modularmente, la IA «se come» el contexto general en vez del módulo. El SDD queda reservado a apps chicas o estables.
- **Vertical slicing como propuesta**: separar por módulos/funciones verticales (carpeta del personaje con su modelo dentro, vs. carpeta horizontal de modelos), specs minimalistas por módulo, **una sala de chat por módulo** y subagentes para tareas pequeñas — acota el contexto, que es el recurso crítico: «entre más cosas tenga en el contexto, más tonta se vuelve» (aunque tampoco al revés: un arnés vacío desorienta al agente — los extremos se tocan). Sesiones largas degradan: renovar la sesión y que un bug que la sesión vieja no resuelve, la nueva lo entiende «más rápido».
- **ARN (harness) bien explicado**: lo que rodea al modelo (reglas base, árbol de skills, conexión de MCPs) — Codex/Antigravity/Claude Code/pi/opencode como arneses (cerrados vs. de código abierto); el arnés viaja en el contexto en cada petición.
- **IA programming / revisión por guía**: no aceptar cambios a ciegas, guiándolos en vivo (como senior junto a un junior); en un módulo de 2-5 archivos la revisión es viable, en 10.000 no. Matiz honesto: él no cree en revisar sintaxis/código («la IA va a terminar programando mejor que cualquiera de nosotros») sino en verificar **alineamiento** — que no toque lo que no debe. Desmonta el TDD-con-IA ingenuo: la IA puede escribir código cuyo único objetivo sea poner el test en verde sin cumplir la intención (problema de alineamiento/specification gaming).
- **Subagentes**: consumen menos tokens que el agente principal (contexto pequeño y resumido), pero pueden «pisarse» en operaciones conjuntas — pedirle al subagente solo tareas verificablemente separadas.
- **Arquitectura hexagonal** (tocado por encima por falta de tiempo, con humor autopromocional): reglas de negocio (núcleo: subir/ver/comentar videos = ser YouTube) vs. dominio vs. puertos como puentes tipados hacia servicios externos; su valor con IA es que el tedio (contratos, puertos, carpetas) ya lo hace la IA — vuelve a tener sentido para apps muy grandes (microservicios, microfrontends), aunque «es horrible» de manejar manualmente. El hexágono mismo: «seis lados por gusto, no hay razón».
- Contenido de calidad técnica real con tono streamer (encuestas, donaciones, meta de 100 miembros, anécdota del mouse muerto y del servidor tumbado prometida como video futuro) — **sin señales de content-farm**; confusión ASR de acrónimos señalada.

## Cruces

- [[agentes-de-codigo]] — arneses (harness), subagentes con contexto acotado, salas por módulo y «todos arquitectos»: misma topología de delegación que el hub.
- [[delegacion-cognitiva-ia]] — la división obrero/arquitecto reubicada: la estructura y el alineamiento quedan como responsabilidad humana indelegable.
- [[paradoja-jevons-software]] — el coste de tokens por petición como variable de diseño arquitectónico (spec completo vs. spec por módulo).
- [[limites-de-los-llm]] — degradación con contexto largo y no-determinismo; especificación como mitigación parcial de la alucinación.

Candidatas para consolidación (aplazada): **aDevSays** entidad nueva ×1; concepto [[specification-gaming]] creado en T25 (el test-en-verde de este video suma a WL-709 — umbral ≥2 alcanzado); «el contexto es un recurso finito» como posible extensión de [[limites-de-los-llm]].
