# Gentleman Programming

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 3 resúmenes de la playlist «IA-Recursos» — canal principal (2024-05-27, 2026-09-19) y canal de streams «Gentleman Programming Vods» (2026-09-16).

## Identidad

Desarrollador argentino (Alan) creador de contenido sobre arquitectura de software y desarrollo asistido por IA; habla rioplatense en pantalla pero mantiene código y documentación en inglés. Es el autor de **Gentle AI**, un ecosistema open source de arnés (harness) para agentes. Su contenido combina tutoriales de metodología (segundo cerebro, 2024) con la presentación de su propio ecosistema (2026), incluyendo streams largos con reacción a críticas (Uncle Bob, hate en X) — el ruido de chat de esos streams se recorta al hilo técnico en los resúmenes.

## Temas recurrentes

1. **Segundo cerebro manual (Obsidian + Neovim)**: Zettelkasten con notas atómicas (ID con timestamp, alias, tags), hubs temáticos, grafo de relaciones y plugin obsidian.nvim con plantillas y lint; backup en repo privado de GitHub en vez de sync de pago. Fuente de 2024 **sin IA**: el antecedente manual del método que otras fuentes automatizan con agentes (33/57).
2. **Gentle AI y ODD**: presentación del ecosistema open source «opinado» sobre 16+ agentes (OpenCode, Claude Code, Codex, Pi como Gentle Shell): ODD (Organic Driven Development) como reemplazo de SDD, presupuesto de ~400 líneas por slice, pre-commit risk assessment, RDD (reviews por lentes aisladas), PRs encadenados, Engram (memoria local entre agentes) y CodeGraph (51/57).
3. **Defensa de los arneses**: en el stream sobre ODD responde a Uncle Bob («dejé de usar arnés») y al hate: el arnés no es el enemigo, la **burocracia fija** sí — sobreingeniería justificada según la petición; metodologías humanas (SDD, TDD) solo cuando aportan; challenge de premisas de altas consecuencias antes de implementar; evidencia real (tests, golden files), no «evidencia cognitiva» (52/57).

## Tesis transversal

Su argumento de fondo: los LLM son probabilísticos, así que el valor del arnés es **reducir la varianza del resultado** («one-shotear») sin encarecer cada iteración con burocracia — el arnés debe escalar con la tarea, crecer junto con ella, y documentar con evidencia verificable para que otro agente (o humano) pueda retomar el contexto.

## Fuentes procesadas en la wiki de este autor

- [[resumen-segundo-cerebro-digital-obsidian-nvim-gentleman-programming]] (2024-05-27).
- [[resumen-hoy-te-presento-odd-mi-metodologia-para-eliminar-la-burocracia-de-la-ia]] (2026-09-16, Vods).
- [[resumen-inteligencia-artificial-sin-sobreingenieria-por-que-cree-gentle-ai-curso]] (2026-09-19).

## Véase también

- [[odd-metodologia]] — la metodología consolidada como concepto.
- [[obsidian-memoria-agentes]] — su fuente manual como antecedente del método automatizado.
- [[agentes-de-codigo]] — Gentle AI dentro de los «orquestadores y ecosistemas completos».
