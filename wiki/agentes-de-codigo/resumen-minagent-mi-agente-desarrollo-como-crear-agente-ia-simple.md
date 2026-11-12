# Resumen: MinAgent - Mi Agente de Desarrollo 🚀 Cómo crear un Agente de IA SIMPLE y POTENTE

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-25-minagent-mi-agente-desarrollo-como-crear-agente-ia-simple.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «not js»→Node.js, «msp»→MCP, «pad»→PATH) — https://www.youtube.com/watch?v=DqXWZ4LB-20 — Nichonauta, 2026-09-25 (11:54).
- **Nota**: fuente 50/58 del lote ia-local (entrada 50 del playlist). Segunda parte sobre MinAgent (mismo día que fuente 49): arquitectura interna, basado en Pi Agent, código abierto modificable, demo extendida (crear archivos, compactación, visión, multi-archivo).

## Qué es MinAgent (visión arquitectónica)

- **Agente de desarrollo** basado en **Pi Agent** ("si Pi Agent ya es sencillo, esto lo es aún más").
- Requisitos: **Node.js** + cualquier API OpenAI-compatible (llama.cpp, LM Studio, Anthropic, OpenAI, Gemini, etc.).
- Instalación: descargar ZIP o `git clone` → añadir carpeta al **PATH del sistema** → comando `main agent` disponible globalmente.
- Configuración via `.env`: endpoint URL, API key, modelo, flags (MCP/skills/terminal on/off, contexto automático, mostrar reasoning).
- **Proyecto abierto**: 166 KB, todo en carpeta `src/` — **cualquiera puede modificar lo que quiera, incluido MinAgent modificando a MinAgent**.

## Herramientas nativas (por defecto, sin MCP/terminal/skills)

| Tool | Qué hace |
|------|----------|
| `read_file` | Lee archivos (texto + imágenes si el modelo soporta visión) |
| `write_file` | Crea archivos (y subdirectorios automáticamente) |
| `edit_file` | Edita archivos (pocas ediciones) |
| `delete_file` / `delete_dir` | Elimina archivos y carpetas |
| `list_files` | Lista archivos/carpetas del directorio actual (contexto automático) |

- **Sandbox**: el modelo **no puede salir del directorio actual** (seguridad).
- Subdirectorios se crean automáticos al escribir `src/archivo.html`.

## Comandos slash

| Comando | Función |
|---------|---------|
| `/salir` / `/exit` | Sale del agente |
| `/nueva` | Nueva conversación (limpia contexto) |
| `/init [texto]` | Crea/actualiza `agents.md` con resumen del proyecto; opcional: texto extra para el prompt (ej. "haz énfasis en tecnologías") |
| `/compactar [texto]` | Compacta contexto manualmente; opcional: texto extra para la compactación |
| `/contexto` | Muestra tokens usados (entrada, salida, total) |

- **Compactación automática** también existe (configurable por tokens).

## Demo extendida (Gemma 4 E4B, 132k ctx, texto+imagen, reasoning visible)

1. **Inicio**: `main agent` → muestra contexto, modelo, herramientas activas, carpeta trabajo.
2. **"¿Quién eres?"** → muestra reasoning chain + respuesta.
3. **"¿Qué herramientas tienes?"** → lista 5 tools nativas (read/write/edit/delete/list).
4. **`/init`** → crea `agents.md` con resumen proyecto.
5. **`@agents.md indica que nunca mencione código al charlar`** → edita `agents.md` con esa directiva.
6. **Nueva conversación + `@archivo mejora el código`** → edita archivo citado (usa edit o write según magnitud).
7. **Compactación manual** → 10k tokens → 3.5k tras resumen.
8. **Visión**: "describe la imagen" → detecta única imagen en carpeta, la lee, describe (miniatura "Nichonauta monetizando la IA").
9. **Multi-archivo**: "crea tetris.html, pong.html, snake.html" → escribe tetris → lee → pong → lee → snake (falló lectura final, pero recuperable en nueva conversación).
10. **Recuperación**: "revisa snake.html y dime de qué trata" → lee y resume correctamente.

## Filosofía de diseño: simpleza intencional

> "El objetivo de Min Agent es ser bastante simple, lo cual nos ahorra tokens y complejidad o sobreingeniería tanto para modelos grandes como para modelos pequeños."

- **Modelos pequeños**: no se pierden en contexto excesivo; no requieren cargar ventana de contexto gigante.
- **Modelos grandes** (que no caben completos en GPU): generación de tokens no es problema, **preprocesamiento (lectura prompt) sí** → MinAgent minimiza tokens de entrada Y salida.
- **Intermedio**: no requiere buscar archivos (contexto automático controlado), no anda "buscando" — el modelo tiene lo que necesita en contexto.
- **Extensible**: activar terminal/MCP/skills es un flag en `.env`; por defecto **nada**.
- **Auto-modificable**: el propio agente puede mejorar su propio código (archivos en `src/`).

## Cruces en la wiki

- Entidad: [[ia-uso-practico/nichonauta]] (fuente 24 en el lote; mismo día que fuente 49).
- Entidad: [[minagent]] (agente terminal minimalista basado en Pi Agent; Node.js + OpenAI-compatible API; 5 tools nativas sandboxed; `/init`→`agents.md`, `/compactar`, `/contexto`, `@archivo`, visión, multi-archivo; proyecto 166 KB auto-modificable; filosofía: simpleza intencional para modelos pequeños y grandes).
- Entidad: [[pi-agent]] (base arquitectural de MinAgent; fuente 33/58 setup end-to-end).
- Modelo: [[gemma-4]] (E4B 132k ctx texto+imagen+reasoning; 6.1 GB VRAM en fuente 49, aquí mismo modelo).
- Entidad: [[llama-cpp]] (backend usado en demos; Windows CUDA 13).
- Concepto: [[ia-uso-practico/ia-local-texto]] (modelo pequeño + prompts minimalistas + contexto controlado = usable diario; preprocesamiento vs generación tokens).
- Relacionado: fuente 49/58 (MinAgent guía instalación/uso — misma herramienta, foco en setup y uso diario); fuente 33/58 (Pi Agent setup end-to-end — base arquitectural).