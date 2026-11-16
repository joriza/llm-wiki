# WL-300 — Por qué crear gentle-ai casi me destruye

- **Fuente original**: `raw/agentes-de-codigo/2026-09-24-por-que-crear-gentle-ai-casi-me-destruye.md` (transcripción automática intacta)
- **Video**: https://www.youtube.com/watch?v=0FXJWS6Dens
- **Canal**: Gentleman Programming Vods · **Publicado**: 2026-09-24 · **Duración**: 14:30 · **Ingesta**: 2026-11-16
- **Idioma**: español (subtítulos automáticos; normalizado solo aquí, no en el raw)

## Resumen

Video confesional del creador de Gentle AI/Gentle Shell (Gentleman Programming, primera mano sobre su propio proyecto) combinando métricas de adopción y un anuncio de freno por salud:

- **Ritmo de releases**: v3.7 hace 6 h, v3.6.1 hace 20 h, v3.6 el día anterior — «horas de diferencia entre cada release»; nueva sección «Build with Gentle» en el repositorio (badge tipo certificado para README, sugerencia de un maintainer).
- **Estadísticas de red mostradas (sin fuente verificable más allá de la pantalla)**: 4,38 «billones» de tokens en 15 minutos (escala inglesa: billions), 23.627 sesiones activas en 15 min, 1,4 «trillones» (trillions) acumulados.
- **Reportes de la comunidad (Discord)**: caso «Foncat» — menos del 50 % de fatiga en chat, de 180 prompts a 91 para cerrar fichajes más grandes, >112 % de autonomía (5,8 → 12 llamadas a herramientas por turno), −32 % de coste, 91,4 % de prompt caching; caso de Rafa (benchmarks + caché): 97,4 % de caché hit sobre el prompt; corrida del «23»: 3 h, 14,2 M de tokens (4,73 M/h), −61 % frente a la media — el creador atribuye el caché hit de subagentes al manejo nativo de Pi que extendió a subagentes (release 23); la mayoría de plugins de Gentle Shell ya son nativos.
- **Anuncio central — sobreesfuerzo y salud**: gastritis con reflujo que le quemó la garganta (no podía hablar ni tragar), cortisol alto, insomnio, dolores; ~27 h al día atendiendo el proyecto; decisión de bajar el ritmo de releases y descansar una semana (sin streams), priorizando a su hijo de 3 años y la familia. Contexto: dejó su trabajo, formalizando la empresa (cuenta bancaria abierta, falta notario), lo que le exige aprender finanzas/startups; la creación de videos ya no es su prioridad frente al ecosistema y la comunidad. Agradece a los maintainers («Engram gracias Dani», «lo está manejando a 4500 por hora» — cifra sin contexto claro).

## Apreciación

Fuente interna de primera mano sobre el proyecto Gentle: las métricas de adopción y de eficiencia (tokens/sesiones, caché hit) son autocreportadas, de pantallas sin método — útiles como percepción del proyecto, no como verificación independiente (señalado). El valor principal es el relato de burnout del mantainer único: la tensión entre velocidad de release y salud, y la delegación parcial a maintainers.

## Cruces y notas

- Dominio destino previsto: agentes-de-codigo o ia-uso-practico (ecosistema Gentle/Gentle Shell); cruces: [[gentleman-programming]] (entidad de canal — fuente adicional, ya con múltiples fuentes), WL-137/153 (demo Gentle Shell, Gentle Design), WL-271/272 (comparativa DHH/Omarchy), WL-292 (eficiencia laboral — contraste de otro mantainer que se sobreexpone), WL-165 (Harness²).
- Sin dominios nuevos (S4); pendiente de consolidación (L12).
