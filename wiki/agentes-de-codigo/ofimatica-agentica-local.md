# Ofimática agéntica local

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-14 (consolidación diferida de los tramos 4-7 del backlog «Ver más tarde»; tema-candidato registrado en el cierre del tramo 4).
- **Fuentes**: [[resumen-WL058-artcraft-ofimatica-agentica]] (WL-58, atareao — ArtCraft/Craft App Suite: 13 apps Rust con 795 herramientas MCP), [[resumen-WL059-craft-anything-recrea-apps]] (WL-59, Alejavi Rivera — Craft Anything: recreación de apps con costes medidos) y [[resumen-WL048-servicios-nuevo-software-sequoia]] (WL-48 — la tesis de Sequoia que estas demos ejecutan).
- **Ver también**: [[hardware-agentico-mcp-first]] · [[ades-orquestacion]] · [[deepseek-harness]] · [[generadores-4gl-1986-2026]] · [[futuro-del-trabajo]].

## El concepto

La capa ofimática del patrón MCP-first de 2026: en lugar de que la IA «reemplace la herramienta» (GIMP nunca acabó con Photoshop — el flujo no era el mismo), **la IA reemplaza el trabajo dentro de la herramienta**: apps de escritorio open source cuyo valor está en sus herramientas MCP activables.

## Las dos caras del ecosistema ArtCraft (WL-58 + WL-59)

1. **MCP-first (WL-58)**: Craft App Suite (StoryTold, ~68 repos; Brandon Thomas) — 13 apps Rust puro MIT/Apache-2 (multiplataforma incl. WASM), 795 herramientas MCP activables una a una por tokens, sin nube ni autenticación. Demos honestas: iteración conversacional que inventa estilos; ancla de flujo Markdown + Typst. «Lo potente son las manos de los modelos» — muy alfa.
2. **Recreación con costes medidos (WL-59)**: Craft Anything recrea software desde cero con cualquier motor: clon de Loom en 50 min / 0,69 $; Excalidraw 93 % en 80 min / 85 M tokens; iteración +2 $. Límites legales: funcionalidad sí, código/marcas no; no comercializar copias.

## Conexión histórica (WL-48, WL-69)

- WL-48 (Sequoia): «vendéis el trabajo, no la herramienta» — las Craft Apps son la demo desktop del piloto automático de ofimática que la tesis describe.
- [[generadores-4gl-1986-2026]]: Clarion (1986) ya generaba programas completos desde un diccionario de datos; «Craft Anything = Clarion con IA» — el péndulo generador-de-aplicaciones con nueva economía de costes (centavos vs licencias de 2.100 USD).
