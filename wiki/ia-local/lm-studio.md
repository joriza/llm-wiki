# LM Studio

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuente 58).
- **Fuentes**: [[resumen-ia-local-programacion-agentes-gratis-privado-cualquier-pc]] (HolaMundo) · mencionado en [[resumen-estas-usando-el-motor-de-ia-equivocado-y-esta-es-la-razon]] (pila de 5 capas, opción escritorio).

App de escritorio para **gestionar, chatear y servir modelos locales** — la alternativa «todo en uno» frente a [[llama-cpp]] (flexibilidad) y Ollama (API). En el lote es el gestor elegido por [[holamundo]].

## Funciones documentadas

- **Model Search** con estimaciones por máquina: verde «cabe completo en GPU», «partial GPU offload possible», rojo «probablemente muy grande»; 👍 = cuantización recomendada para tu hardware.
- **Chat**: slider GPU offload (parte del modelo en VRAM, resto en RAM), contexto configurable (10-20k chat; ~50k con investigación web).
- **Truco KV cache**: KV de F16 → **Q8** = misma calidad, ~1 GB menos de VRAM que se asigna a contexto.
- **Model Server**: sin autenticación para uso local; **Just in time model loading** (descarga tras 60 min de inactividad) + **only keep last JIT loaded model** (un solo modelo cargado — al cambiar, descarga el anterior).
- **MCP**: soporte de servidores MCP (demo: **Exa** para búsqueda web; system prompt «responde de memoria si puedes, si no busca en internet»).
- **Extensión VS Code**: integra los modelos como proveedor de **GitHub Copilot** local, con modos Agent/Ask/Plan — recomendado vivir entre Ask y Plan con modelos locales (no pasar a Agent sin plan definido).

## Velocidades de referencia (Gemma 4 E4B, RTX del tutorial)

GPU offload 20 → 18 tok/s · offload 30 → 28 tok/s · **modelo completo en VRAM → 104 tok/s**.

⚠️ No confundir con **Bionic**, la otra app del mismo sitio (orientada a agentes dentro de tu computador, no a servir/tunear modelos).

## Cruces

[[llama-cpp]] · [[ia-local-texto]] · [[holamundo]] · [[agentes-de-codigo]].
