# FAV-342 — 5 servidores MCP para vibe coding estructurado

- **Origen**: «5 Servidores MCP para Vibe Coding Estructurado» — Adriá Estévez (Arquitectos IA) — `https://www.youtube.com/watch?v=I9lF7bjxLlQ` (26:08, español, subtítulos automáticos; transcripción en `raw/ia-uso-practico/raw-I9lF7bjxLlQ.md`)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `ia-uso-practico/` (clúster MCP)

## Qué es

Top 5 personal del canal de los servidores MCP que él considera obligatorios para hacer «vibe coding» de forma estructurada. Cada MCP se demuestra instalándolo en Cline (VS Code), pero el método sirve igual en Cursor, Windsurf, Claude Desktop, Roo Code, etc.: marketplace de un clic o pegando el JSON de configuración manual.

## El top 5

### 1. Context7 [00:34] — «obligatorio»
Sirve la **documentación oficial actualizada** de ~9500+ librerías al LLM antes de cada petición (Next.js, Supabase, shadcn…). El editor no tiene contexto del presente, así que alucina APIs viejas: Context7 hace una llamada previa y el código se genera contra la doc real. Su #1 indiscutido.

### 2. Task Master [06:12]
Divide el proyecto en **tareas** de forma estructurada para que el LLM las ejecute una por una. Flujo: inicializar proyecto → genera PRD (crea el archivo si no existe) → parsea el PRD y crea la carpeta de tareas, configs y rules. Usa API key de Anthropic, opcionalmente OpenAI/Perplexity; para probarlo se puede usar OpenRouter (con crédito gratis), pero consume muchos más tokens.

### 3. Knowledge Graph / Memory [11:11]
Memoria persistente de contexto en JSON **fuera del proyecto** (la ruta de guardado es configurable). Casos de uso que él usa de verdad: guardar soluciones a errores que le costaron días (para no repetir el drama en otro proyecto) y guardar relaciones entre entidades de proyectos grandes que se van de madre (ej.: todo el contexto de implementar un light/dark mode, reutilizable en el siguiente proyecto).

### 4. Exa MCP [16:24]
Búsqueda web en tiempo real (rol tipo Perplexity, pero a su juicio más flexible para desarrollo): evita datos inventados u obsoletos al pedirle contenido con cifras a la IA. Da balance gratis al registrarse. Tip: especificar explícitamente «datos de 2025» o puede devolver datos viejos.

### 5. Magic UI (MCP) [21:50]
Servidor MCP de la librería de componentes de diseño basada en shadcn (ver también [[resumen-FAV-341-magicui-video-text]]): en vez de copiar/pegar componentes a mano, el agente crea páginas usando directamente los componentes de Magic UI. Combinación que sugiere: Gemini 2.5 Pro (barato, fuerte en lógica) + Magic UI para compensar su debilidad de diseño, frente a Claude 3.7 más creativo pero caro.

## Cruces del clúster MCP

- Context7 y Exa aparecen también en el listado DataCamp de [[resumen-FAV-344-top-15-remote-mcp-servers-datacamp]] (categoría de búsqueda/documentación); Task Master y su enfoque de descomposición en tareas coincide con el rol de **Sequential Thinking** de esa misma lista.
- El Knowledge Graph/Memory de este video es la versión local de lo que DataCamp cubre con **Mem0** (memoria de agentes).
- La orientación «instalar y configurar a mano con JSON» contrasta con la tesis de [[resumen-FAV-345-mejores-servidores-mcp-2026-ayautomate]] y FAV-344: la ola 2026 de **remote MCP con OAuth** que elimina la configuración local de API keys; este video (mayo 2025) es justo el momento previo a esa transición.
- El servidor genérico de fetch se documenta aparte en [[resumen-FAV-343-servidor-mcp-fetch]].

Concepto: [[servidores-mcp]].
