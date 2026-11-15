# Servidores MCP

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico` (transversal: aparece también en `agentes-de-codigo`).
- **Creada**: 2026-11-15 (consolidación diferida de la ventana z-tmp de favoritos; umbral ≥3 fuentes).
- **Fuentes**: [[resumen-FAV-342-servidores-mcp-vibe-coding]] (top 5 para vibe coding: Context7, Task Master, Knowledge Graph/Memory, Exa, Magic UI) · [[resumen-FAV-344-top-15-remote-mcp-servers-datacamp]] (15 remotos con OAuth, 2026) · [[resumen-FAV-345-mejores-servidores-mcp-2026-ayautomate]] (10 constructores, listado paralelo) · [[resumen-FAV-343-servidor-mcp-fetch]] (el fetch oficial como referencia canónica de servidor simple) · [[resumen-FAV-340-mcp-market-developer-tools]] (directorio MCP Market) · [[hardware-agentico-mcp-first]] (dominio `agentes-de-codigo`).
- **Ver también**: [[pi-agent]] · [[gentleman-programming]].

## El concepto

El **Model Context Protocol (MCP)** es la capa estándar que conecta un agente de código con herramientas externas (búsqueda web, doc oficial, memoria persistente, repos, pagos, diseño). El corpus lo documenta en tres generaciones:

| Generación | Qué aporta | Fuentes |
| --- | --- | --- |
| **Local stdio** | El agente corre el servidor en la máquina; config manual de env/keys | FAV-343 (fetch oficial), FAV-342 (instalación en Cline/JSON) |
| **Remoto OAuth** | Instancia cloud con autorización delegada, sin API keys a mano; uptime y velocidad del proveedor | FAV-344 (la tesis central: «cierra la era de hostear MCPs a mano»), FAV-345 |
| **Directorios/mercado** | Descubribilidad y catálogo por categoría | FAV-340, listados de 344/345 |

**Los recurrentes del corpus**: Context7 (doc oficial al día, «obligatorio» para FAV-342 y top en 344/345), Exa (búsqueda web con datos reales), memoria persistente (Knowledge Graph/Mem0), GitHub/Notion/Linear (flujo de trabajo en 344), Magic UI (componentes de diseño; cruza con [[resumen-FAV-341-magicui-video-text]]).

**Nota temporal**: FAV-342 es la instantánea previa a la ola remote-MCP OAuth de 2026 que FAV-344/345 describen — leerlas juntas muestra la transición local→remoto en tiempo real.
