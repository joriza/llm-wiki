# Articulator ES

- **Tipo**: página de entidad (canal/medio).
- **Fuentes**: [[resumen-la-irrazonable-eficacia-del-html-claude-code-articulator-es]] · [[resumen-WL048-servicios-nuevo-software-sequoia]] (WL-48, tramo 4 — síntesis del artículo de Julien Bek/Sequoia: copilotos vs pilotos automáticos, mapa sectorial con estimaciones de VC) · [[resumen-WL051-napmem-memoria-agentes-alibaba]] (WL-51, tramo 4 — síntesis del paper NapMem de Alibaba: pirámide de memoria + navegación activa + GRPO). Canal «subtítulos manuales» de alta fidelidad; las dos fuentes WL sintetizan papers/artículos de terceros (Sequoia, Alibaba) — estimaciones de parte interesada marcadas en los resúmenes.

Canal de divulgación en español que versiona artículos técnicos de Anthropic (su fuente: Thariq, equipo de Claude Code, «The unreasonable effectiveness of HTML»). Contenido: HTML como formato de especificación de agentes (densidad, claridad, compartir, interacción bidireccional con «copiar como prompt», contexto); 4 familias de uso; el «editor desechable con exportación».

**Ver también**: [[spec-driven-development]], [[agentes-de-codigo]].

## Actualización 2026-11-17 (consolidación T6, tramo 98 — total 5 fuentes)

Dos fuentes nuevas del canal en el tramo 98, ambas versionando artículos clave de terceros con transcripción manual (alta fidelidad) y la misma honestidad de atribución:

- **WL-612** ([[resumen-WL612-openclaw-asistente-persistente-articulator]], tramo 98): el artículo «You could have invented OpenClaw» de Nader Dabit — arquitectura de asistente personal persistente en 10 pasos (sesiones JSONL, SOUL.md, herramientas, permisos, pasarela multi-canal, compactación, memoria en markdown, candado por sesión, latidos cron, multi-agente con colaboración por archivos compartidos; prototipo ~400 líneas Python). Par con WL-331 (OpenClaw 2.0) y WL-624.
- **WL-614** ([[resumen-WL614-arnes-de-agentes-articulator-osmani]], tramo 98): síntesis del artículo de Addy Osmani sobre **harness engineering** (trinquete, diseño hacia atrás, context rot, bucle Ralph, contrato de sprint, bucle arnés↔entrenamiento) con la cadena de fuentes completa (Trivedi, Horthy/HumanLayer, Willison, Anthropic, Böckeler) y el dato de Terminal Bench 2 (top 30→5 cambiando solo el arnés). La fuente central del tramo para el dominio; cableada a [[odd-metodologia]] (el trinquete ≈ «un error se arregla una sola vez») y [[obsidian-memoria-agentes]].

El canal confirma su rol de puerta de entrada en español de artículos canónicos del ecosistema (HTML de Anthropic → Sequoia → NapMem → Dabit → Osmani).
