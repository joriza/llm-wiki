# Joaquín Ruiz

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2 resúmenes de la playlist «IA-Recursos» (2026-07-28 y 2026-09-08) + 1 del lote «IA-Nuevas formas de trabajo» ([[resumen-los-6-niveles-de-programar-con-ia-el-90-no-pasais-del-3-joaquin-ruiz]] — los 6 niveles de Shapiro, SDD como muro 3→4). Total: 3. Conceptos derivados: [[spec-driven-development]], [[experimento-metr]].

## Identidad

Creador de contenido con canal «IA para Desarrolladores»: divulgación técnica para programadores, con explicación del mecanismo de fondo antes del consejo práctico. Es además **autor de herramientas y libros propios**: SpecJudge (librería Python open source, MIT) y varios libros de IA en Amazon («El motor de la inteligencia artificial», «Del vibe coding al Spec driven development»), cuya promoción se registra como autopromoción en cada resumen.

## Temas recurrentes

1. **La economía del token**: el límite de la suscripción no se agota por escribir mucho sino por el **input reutilizado** — en cada turno se reenvía system prompt, herramientas, MCP, skills e historial completo. De ahí sus 11 trucos: editar en vez de discutir, ventana nueva por tarea, handoff por fichero, límites de output, MCP on-demand (verificando que lo sea) frente a skills que siempre pesan, prompt caching y compactación controlada; y como capa avanzada, un proxy local entre entorno y API (49/57).
2. **El modelo justo para cada tarea (SpecJudge)**: herramienta propia que lee las specs del proyecto y recomienda el modelo con mejor encaje calidad-precio **antes de gastar un token** — juez local con Ollama + reglas declarativas en YAML, veredictos con motivo y honestidad como feature (si nada encaja, lo dice). La regla: el encaje manda y el precio solo desempata (44/57).

## Tesis transversal

Ambas fuentes comparten un principio: **el coste es una variable de diseño, no un accidente**. Entender qué se reenvía en cada llamada (no hay memoria) permite consumir menos; entender qué exige el proyecto (no hay modelo universal) permite elegir el modelo más pequeño que dé el rendimiento.

## Fuentes procesadas en la wiki de este autor

- [[resumen-deja-de-usar-el-modelo-mas-caro-para-todo-specjudge-joaquin-ruiz]] (2026-07-28).
- [[resumen-deja-de-ver-vuelve-en-5-horas-11-trucos-ahorrar-tokens-joaquin-ruiz]] (2026-09-08).

## Véase también

- [[evaluacion-de-llms]] — SpecJudge como complemento de Promptfoo/RAGAs (evalúa el encaje del modelo, no los outputs).
- [[agentes-de-codigo]] — handoff por fichero y spec-driven development.
- [[agregacion-apis]] — la otra mitad de la economía: proveedores gratuitos.
