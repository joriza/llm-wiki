# FAV-343 — Servidor MCP «fetch» oficial (modelcontextprotocol/servers)

- **Bookmark**: `https://github.com/modelcontextprotocol/servers/blob/main/src/fetch/README.md` (fuente web, favoritos Chrome — z-tmp/MCP)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `ia-uso-practico/`

## Qué es

README del **servidor MCP fetch** oficial del org `modelcontextprotocol`: un servidor de Model Context Protocol que da a los LLM capacidad de **recuperar contenido web**, convirtiendo HTML a markdown para consumo fácil por el modelo. Requiere MCP Python SDK 2.x (`mcp>=2.3,<3`).

## Herramienta `fetch`

- `url` (obligatoria), `max_length` (default 5000 caracteres), `start_index` (paginar el contenido por bloques cuando la respuesta se trunca), `raw` (contenido sin conversión a markdown), `timeout_ms` (100–600000). Anotaciones: solo lectura, no destructiva, idempotente, mundo abierto (alcanza hosts arbitrarios de internet).
- El markdown extraído abre con un encabezado `#` del título de la página (og:title → h1 → title), para que el modelo sepa de qué página lee.

## Seguridad y límites

- **Por defecto rechaza direcciones privadas, loopback, link-local y endpoints de metadatos cloud** (p.ej. `169.254.169.254`), verificando cada salto de redirección; `--allow-private-ips` desactiva la guardia. No protege contra DNS rebinding entre el chequeo y la conexión.
- Límite de respuesta: **5 MiB** del body (post-decodificación; solo acepta gzip/deflate), para que una respuesta enorme o infinita no agote la memoria. Robots.txt respetado; los fallos vuelven como resultado de herramienta `isError` legible por el modelo.

## Instalación y uso

Recomendado con **uv/uvx** (`uvx mcp-server-fetch`, sin instalación previa) o pip (`mcp-server-fetch`). Con Node.js instalado usa un simplificador HTML más robusto (dependencias npm en el primer uso). Habla ambas eras del protocolo MCP por stdio (2026-07-28 y 2025-11-25) sin configuración. Incluye además un prompt `fetch` que pide una URL y devuelve el contenido extraído (o el motivo del fallo).

## Contexto

Es la implementación de referencia del patrón «el modelo lee la web» — el mismo patrón que usan los directorios como MCP Market ([[resumen-FAV-340-mcp-market-developer-tools]]) para catalogar servidores de terceros.
