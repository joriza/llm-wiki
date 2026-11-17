# WL-546 — WebMCP explicado: El futuro de la interacción IA y Web

- **Fuente original**: `raw/wl/tramo-86/2026-08-26-webmcp-explicado-el-futuro-de-la-interaccion-ia-y-web.md` ([Vídeo](https://www.youtube.com/watch?v=4xYRa4R_f0k))
- **Canal**: return(GiS); (desarrolladora divulgadora .NET/web)
- **Publicado**: 2026-08-26 · **Duración**: 16:02
- **Dominio provisional**: agentes-de-codigo / web (especificación WebMCP)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tutorial técnico con demo en vivo de la **especificación WebMCP** (en desarrollo desde 2026 con Google y Microsoft; provable en Chrome/Edge con flags experimentales: «WebMCP Copilot Integration», «support indexed tools», «for testing»): exponer tools de MCP directamente desde la web para que un agente de IA opere la página sin leer el DOM (menos tokens, más rápido):

1. **Definición declarativa en HTML**: atributos `tool-name`, `tool-description`, `tool-autosubmit` sobre elementos existentes (ej.: formulario de modo claro/oscuro; formulario de alta de películas) — sin JavaScript.
2. **Definición programática en JS**: array de tools con nombre, descripción e input schema (igual que MCP servers) + `navigator.modelContext.registerTool()` condicionado a soporte del navegador; puede reutilizar funciones existentes como tools.
3. **Todo embebido en la propia web** — sin servidor MCP ni backend adicional.
4. **Pruebas**: extensión de Google (Chrome/Edge) que descubre e invoca tools manualmente (análogo al MCP Inspector) o agénticamente con API key de Gemini («piquí»); invocaciones y outputs visibles en developer tools → Application → WebMCP.
5. **Variante local propia**: extensión personal con WebLLM — modelo local «Germes 3 Yama 3 1B» (4,21 GB descargado en el navegador, tuneado para llamar tools) en vez de API externa; más lento y menos capaz pero suficiente; demo final de cambiar a modo claro con el modelo local funciona.

## Señales de triage

- **Demo de 1.ª mano**: código y ejecuciones en pantalla, propio (repo propio mencionado); la especificación y sus flags son verificables en Chrome/Edge.
- **Nombres ASR dudosos señalados**: «web cp/webmcp» ok, pero «piquí» (API key), «Germes 3 Yama 3 1B» (¿Gemma 3 / Llama 3? ilegible), «Yemini» por Gemini, «X» por Edge — normalizados solo aquí; raw intacto.
- **Advertencia honesta del canal**: flags experimentales, spec «todavía no madura», modelo local «menos capaz, puede liarse» — marco de entusiasmo moderado («el futuro de...» del título es clickbait suave).
- Sin patrocinios; funnel leve (playlist propia de MCP mencionada).

## Cruces

- [[agentes-de-codigo]] +1: WebMCP como capa de harness a nivel navegador; par directo con WL-501 (Hermes), WL-541 (pirámide modelos/harnesses/orquestadores — WebMCP expone tools sin servidor), WL-447 (DomoAI no; más bien clúster MCP).
- [[inferencia-local]] +1: WebLLM con modelo en navegador como agente de tools (eco WL-468 Gemma Translator en Pi 5, [[kit-usb-portable]]).
- [[delegacion-cognitiva-ia]]: «agente que opera la web sin leer el DOM» = delegación con interfaz declarada — mismo principio que skills/harness de la wiki de Gentle (harness engineering WL-541).
- MCP clúster existente en la wiki (WL-274/472/501): WebMCP es la evolución browser-side; página MCP a actualizar en consolidación.

## Veredicto de triage

Muy útil: primera fuente del backlog sobre WebMCP, demo completa declarativa + programática + variante 100 % local. Nombres ASR inciertos y flags experimentales — señalados. Consolidación diferida (L12): [[agentes-de-codigo]], página MCP, [[inferencia-local]]; canal return(GiS); entidad candidata (1.ª fuente, texto plano).
