# Gentleman Programming

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `agentes-de-codigo/` (reubicada desde `ia-uso-practico/` en la reestructuración aprobada por el usuario, 2026-11-12 — sus fuentes de metodología y arneses viven aquí).
- **Actualizado**: 2026-11-15 (consolidación tramos 8-17 — +1 fuente WL).
- **Fuentes**: 3 resúmenes de la playlist «IA-Recursos» — canal principal (2024-05-27, 2026-09-19) y canal de streams «Gentleman Programming Vods» (2026-09-16) — + 2 del lote «IA-Nuevas formas de trabajo» ([[resumen-laburas-las-mismas-horas-con-ia-y-terminas-frito-por-que-gentleman-programming]] — brain fry, bienestar — y [[resumen-inteligencia-artificial-7-reglas-si-recien-empezas-a-programar-gentleman-programming-vods]] — criterio para juniors) - 2 del backlog WL consolidados en la pasada de los tramos 5-6 (2026-11-14): [[resumen-WL052-14-horas-dia-hospital-que-cambio]] (WL-52, tramo 4 — confesión del burnout con decisiones de gobernanza del proyecto) y [[resumen-WL082-gentle-dot-asistente]] (WL-82, tramo 6 — **fuente primaria del ecosistema**: arquitectura de Gentle Dot sobre Gentle Shell/RPC + ODD como bitácora) + 1 del tramo 7 añadida en la consolidación de los tramos 3-4-7 (2026-11-14): [[resumen-WL094-metodo-odd-espanadero]] (WL-94, Daniel Españadero — **tercera voz independiente sobre ODD**: mapa vibe coding/SDD/ODD con convergencia en proporcionalidad y cierre con la verdad; sesgo de amistad declarado; AUTORREFERENCIA del protocolo de esta wiki). Total: 8. +1 del tramo 14 añadida en la consolidación de los tramos 8-17 (2026-11-15): [[resumen-WL137-todo-lo-nuevo-de-gentle-shell-4]] (WL-137, Vods — **demo de producto de primera mano**: Gentle Shell 4 — interfaz renovada, modo Vim/Yolo, perfiles, Claude Bridge multi-modelo, delegaciones y mensajería entre sesiones Pi; cifras de producto del autor sin verificación independiente). Total: 9. Conceptos derivados: [[verificacion-como-valor]], [[experimento-metr]], [[burnout-era-ia]], [[ambiguedad-rellenada-por-el-sistema]].

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
- [[resumen-laburas-las-mismas-horas-con-ia-y-terminas-frito-por-que-gentleman-programming]] (lote «IA-Nuevas formas de trabajo») y [[resumen-inteligencia-artificial-7-reglas-si-recien-empezas-a-programar-gentleman-programming-vods]] (Vods).
- [[resumen-WL052-14-horas-dia-hospital-que-cambio]] (WL-52, 2026-11-12): ataque de pánico tras ~1 año de 12-14 h/día; «no me quemó la IA, me ayuda»; herramientas gratis para siempre sin inversores; delegación en la comunidad reservándose core/orquestación; sostenimiento por donaciones + stars + charlas ([[burnout-era-ia]]).
- [[resumen-WL082-gentle-dot-asistente]] (WL-82, 2026-11-04): Gentle Dot (Tauri 2/Rust + daemon Node 24 + Gentle Shell en modo RPC white-label); **reglas fuera del agente** (botón de pánico, lista negra, permisos con vencimiento — «si la regla vive dentro del agente, se la puede saltear»); construido CON ODD («bitácora de capitán» que otro agente lee); despliegue VPS con 3 usuarios del sistema y secretos AES-256-GCM.
- [[resumen-WL137-todo-lo-nuevo-de-gentle-shell-4]] (WL-137, 2026-10-28): novedades de Gentle Shell 4 en demo de 6 min — interfaz personalizable en tiempo real, modo Yolo que frena acciones destructivas, Claude Bridge con perfiles multi-modelo por rol, ahorro de tokens en delegaciones y mensajería entre sesiones Pi (en pruebas).

## Véase también

- [[odd-metodologia]] — la metodología consolidada como concepto.
- [[obsidian-memoria-agentes]] — su fuente manual como antecedente del método automatizado.
- [[agentes-de-codigo]] — Gentle AI dentro de los «orquestadores y ecosistemas completos».
- [[burnout-era-ia]] — WL-52 y WL-68 como testimonios gemelos del clúster.
- [[ambiguedad-rellenada-por-el-sistema]] — «reglas fuera del agente» como respuesta al hueco de spec.
- [[hardware-agentico-mcp-first]] — el proxy MCP de Gentle Dot como frontera de permisos.
- Externa: [[resumen-WL078-ninguna-metodologia-correcta]] (Eric Risco, en tránsito tramo 6) describe y critica ODD de oídas — par docu «la misma metodología vista desde fuera y desde dentro».
