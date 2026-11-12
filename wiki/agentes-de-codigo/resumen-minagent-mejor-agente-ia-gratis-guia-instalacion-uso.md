# Resumen: MinAgent 🤖 El Mejor Agente IA Gratis — Guía de INSTALACIÓN y Uso

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-25-minagent-mejor-agente-ia-gratis-guia-instalacion-uso.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «punto env»→`.env`, «MSPs»→MCPs) — https://www.youtube.com/watch?v=APszMDLxf-o — Nichonauta, 2026-09-25 (07:25).
- **Nota**: fuente 49/58 del lote ia-local (entrada 49 del playlist). Tutorial MinAgent (fork/evolución de main agent): instalación, configuración `.env`, uso con llama.cpp + Gemma 4 E4B QAT, comandos slash, agents.md, filosofía "no sobreingeniería".

## Qué es MinAgent

- Evolución de "main agent" (proyecto previo del canal): prompts optimizados, código refactorizado, nuevas funcionalidades.
- **Agente de código minimalista** para terminal, gratuito, open source.
- Funciona con **cualquier API estilo OpenAI**: llama.cpp, LM Studio, GPT4All, Anthropic, Gemini, OpenAI, etc.
- Filosofía: **"No hagamos sobreingeniería. Los modelos pequeños se benefician de no tener grandes prompts; los grandes ya son bastante buenos."**

## Instalación y setup (Windows + llama.cpp)

1. **Clonar repo** (Git o ZIP) → añadir carpeta al **PATH** del sistema (variables de entorno) → comando `minagent` disponible en cualquier directorio.
2. **llama.cpp**: versión Windows CUDA 13 (binario + DLLs en misma carpeta).
3. **Modelo probado**: Gemma 4 E4B QAT GGUF (6.1 GB VRAM).
4. **`.env` configuración usada en video**:
   - Sin MCPs / skills.
   - Terminal desactivada.
   - Contexto automático de archivos/carpetas desactivado (`0` = off, `-1` = todo, `N` = límite por directorio).
   - Modelo tiene herramienta `list_files` (lee solo dentro del proyecto; externos solo txt/imágenes adjuntados).

## Uso básico y comandos slash

| Comando | Función |
|---------|---------|
| `minagent` | Inicia agente en directorio actual |
| `/context` | Muestra detalle de consumo de contexto (tokens por componente) |
| `/init` | Crea `agents.md` con resumen del proyecto (archivos, estructura, estado) |
| `Escape` | Detiene generación actual de tokens |
| `@archivo` | Cita/referencia archivo en prompt (ej. `@agents.md añade que...`) |
| `salir` / `exit` | Sale del agente |

## Flujo de trabajo demostrado

1. `minagent` → inicia, muestra carpeta de trabajo, modelo listo (<1000 tokens iniciales).
2. Pregunta: "¿qué archivos y carpetas hay?" → usa tool `list_files` → detecta `snake.html`.
3. "Lee el archivo y dime de qué trata" → lee + resume.
4. "Identifica fallos" → respuesta **prácticamente inmediata** (latencia de primer token muy baja).
5. "Corrige todo eso" → a veces escribe código en chat en vez de editar archivo (cosa del modelo).
6. `/init` → crea `agents.md` resumen del proyecto.
7. `@agents.md añade que siempre haga cambios en archivos usando herramientas` → edita `agents.md` y el comportamiento mejora.
8. `/context` → muestra tokens consumidos (ej. `agents.md` ~1.850 tokens).

## Puntos clave de diseño

- **Contexto controlado**: por defecto mínimo; el usuario decide qué añadir (`agents.md`, `@archivo`, `list_files`).
- **Latencia de primer token** muy baja (importante para UX).
- **Prompts optimizados para modelos pequeños** (Gemma 4 E4B funciona bien; modelos grandes no necesitan tanto andamiaje).
- **Extensible**: se puede añadir MCPs, skills, terminal, contexto automático según necesidad.
- **Agente diario usable**: "ya no he encontrado errores, voy a seguir trabajando 100% con esta herramienta".

## Cruces en la wiki

- Entidad: [[nichonauta]] (fuente 23 en el lote).
- Entidad: [[minagent]] (agente minimalista terminal, fork de main agent; prompts optimizados, `/init` → `agents.md`, `/context`, `@archivo`, Escape para detener; funciona con cualquier API OpenAI-compatible).
- Modelo: [[gemma-4]] (E4B QAT 6.1 GB VRAM; funciona bien con prompts minimalistas).
- Entidad: [[llama-cpp]] (Windows CUDA 13; backend usado en demo).
- Concepto: [[ia-local-texto]] (modelo pequeño + prompts minimalistas + contexto controlado = usable diario).
- Relacionado: fuente 33/58 (Pi Agent setup end-to-end); fuente 45/58 (automatización Python + Gemma 4 E2B — arnés > modelo grande); fuente 38/58 (programación real con Pi Agent).