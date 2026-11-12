# MinAgent

- **Tipo**: página de entidad (agente de código).
- **Dominio**: `agentes-de-codigo`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuentes 49 y 50, mismo día).
- **Fuentes**: [[resumen-minagent-mejor-agente-ia-gratis-guia-instalacion-uso]] · [[resumen-minagent-mi-agente-desarrollo-como-crear-agente-ia-simple]] (Nichonauta, 2026-09-25).

Agente de desarrollo de **terminal, minimalista y open source** de [[ia-uso-practico/nichonauta]], construido sobre la base de [[pi-agent]] («si Pi ya es sencillo, esto lo es aún más»). Node.js + cualquier API OpenAI-compatible ([[llama-cpp]], LM Studio, Anthropic, OpenAI, Gemini…).

## Filosofía: simpleza intencional

- **Prompts mínimos**: los modelos pequeños se pierden en contexto excesivo; los grandes ya no lo necesitan («no hagamos sobreingeniería»). Ahorra tokens de **entrada y salida** — clave también para modelos grandes que no caben en VRAM, donde el preprocesamiento es el cuello de botella.
- **Por defecto nada**: sin MCPs, sin skills, sin terminal; todo se activa por flags en `.env`.
- **Proyecto auto-modificable**: 166 KB, todo en `src/` — «MinAgent puede modificar a MinAgent».

## Arquitectura

- 5 herramientas nativas **sandboxed** al directorio actual: read_file (texto+imágenes), write_file (crea subdirectorios), edit_file, delete_file/dir, list_files.
- Comandos slash: `/init [texto]` → crea/actualiza `agents.md` (resumen del proyecto, ~1.8k tokens con Gemma E4B); `/compactar [texto]` (manual, además de auto); `/contexto` (tokens por componente); `@archivo` para citar archivos; Escape detiene la generación.
- Instalación: clonar/ZIP → carpeta al **PATH del sistema** → comando disponible en cualquier directorio.

## Comportamiento medido (con Gemma 4 E4B, ver [[gemma-4]])

- Latencia de primer token prácticamente inmediata; escupe código a >70 tok/s.
- Multi-archivo (tetris/pong/snake.html): funciona, con un fallo de lectura recuperable.
- Compactación: 10k → 3.5k tokens.
- Visión: detecta y describe la única imagen de la carpeta sin que se le indique el nombre.
- Alucinaciones puntuales (escribe código en chat en vez de editar) — se corrigen vía `agents.md` («usa siempre las herramientas para modificar archivos»).

## Cruces

[[pi-agent]] (base arquitectural) · [[gemma-4]] (modelo de las demos) · [[llama-cpp]] (backend) · [[ia-local-texto]] · [[agentes-de-codigo]] · comparar con [[opencode]] y [[deepseek-harness]].
