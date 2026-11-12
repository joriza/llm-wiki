# Pi Agent

- **Tipo**: página de entidad (herramienta/agente).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 33/58 del lote ia-local — guía completa de setup end-to-end con Gemma 4 12B QAT + llama.cpp CUDA).
- **Fuentes**: [[resumen-programacion-real-con-ia-local-guia-paso-a-paso-desde-cero-con-pi-agent]].

**Pi Agent** (también llamado **Pi** o **Pi Agent**) es un **agente de codificación minimalista y extensible** escrito en TypeScript/Node.js. Filosofía: «entorno mínimo» — inicialmente solo **leer/escribir archivos** y **ejecutar comandos del sistema**; todo lo demás se añade via **Custom Providers** y **Extensions** (archivos `.ts` en `~/.pi-agent/Extensions/`).

## Instalación

- Requisitos: **Node.js + npm** + **Git Bash** (Windows).
- Comando: `curl -fsSL https://pi-agent.dev/install.sh | bash` (o equivalente en PowerShell).
- Instala Git Bash portable dentro de su propia carpeta si no está presente.
- Ejecutable: `pi` (desde carpeta del proyecto).

## Arquitectura de extensibilidad

### Custom Providers (conexión a modelos)
Archivo `~/.pi-agent/Extensions/<Nombre>-Provider.ts`. Ejemplo para **llama.cpp endpoint OpenAI-compatible** (`http://localhost:8080/v1`):

```typescript
export const provider = {
  name: "Llama.cpp Local",
  url: "http://localhost:8080/v1",
  apiKey: "dummy",
  models: [{
    id: "gemma-4-12b-qat",
    name: "Gemma 4 12B QAT",
    reasoning: true,
    input: ["text", "image"],
    cost: 0,
    contextWindow: 262144,
    maxTokens: 32768
  }]
};
```

- `reasoning: true` → usa la cadena de razonamiento del modelo.
- `input: ["text","image"]` → habilita visión (requiere `mmproj` en llama.cpp).
- `maxTokens: 32768` → para autocompactación (compactar cuando quede espacio para la respuesta máxima).

### Extensions (herramientas y skills)
Cualquier archivo `.ts` en `Extensions/` carga automáticamente. Permite añadir: skills, MCP servers, prompts, hooks, etc.

## Flujo de trabajo típico (fuente 33)

1. **Hardware**: RTX 3060 12 GB + 128 GB RAM.
2. **Modelo**: Gemma 4 12B QAT Q4 (6.65 GB con mmproj + MTP).
3. **Runtime**: llama.cpp build CUDA 13 + .bat optimizado (KV Q8 TurboQuant, MTP draft, reasoning, ctx 262k).
4. **Agente**: Pi Agent + Custom Provider → `pi` en carpeta del proyecto.
5. **Demo**: `pi` → `escribe index.html Snake` → crea juego funcional; `/compact` autocompacta; `mejora estilo visual` → reescribe archivo.

## Posicionamiento en la wiki

- **Arnés agéntico mínimo** (vs. OpenCode, Codex, Claude Code, Herdr).
- Conecta a cualquier backend OpenAI-compatible (llama.cpp, Ollama, vLLM, OpenRouter).
- Philosophy: «añade solo lo que necesitas» — sin bloat, sin config obligatoria.
- Canal principal: [[nichonauta]] (guía completa 51 min). Relacionado: [[gentleman-programming]] (Pi como ejemplo de ODD/arnés minimalista).

## Cruces

[[llama-cpp]] (backend), [[gemma-4]] (modelo del demo), [[hardware-para-ia-local]] (encaje modelo↔VRAM), [[desarrollo-con-modelos-locales]] (pipeline agéntico local), [[ia-local-texto]] (runners locales).