# Panorama de herramientas open source de IA (recopilatorio 2026-06)

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 1/58 del lote ia-local).
- **Fuentes**: [[resumen-esto-acaba-de-reventar-la-ia-hacen-todo-gratis-y-sin-limites]].

## El mapa por caso de uso

Panorámica de 20+ herramientas open source (una mención por herramienta, sin profundidad — las (?) marcan nombres garbiñados por ASR que requieren verificación antes de elevarse a entidad):

| Caso de uso | Herramientas |
| --- | --- |
| NotebookLM privado | Open Notebook (Docker) |
| Voz (clonar/locutar/transcribir) | Voice Box + Whisper + Qwen TTS |
| Optimización de tokens | Headroom (?) — compresión adaptativa de contexto |
| Seguridad de skills | Skill Spector (NVIDIA), BronDF (?), Anthropic Cyber Security Skills (MITRE ATT&CK…) |
| Equipos de agentes / orquestación | Paper Click (?), Gstack (Garry Tan), Superpowers |
| Todo-en-uno local | Anything LLM |
| UI agéntica unificada | Openhs (?) |
| Navegación/scraping para agentes | Browser Use, Firecrawl, skill «Last 30 Days» (?) |
| Investigación profunda | Deerflow (ByteDance) |
| Video/animación | Hyperframe (HeyGen), Open Montage (?) |
| Documentos → agentes | MarkItDown, OCR de Baidu (?) |
| Generación multimedia | Open Generative AI (?) |

## Las cuatro vías de instalación (metodología transversal del recopilatorio)

1. **Instalador oficial** desktop (Voice Box, Anything LLM).
2. **Comando de inicio rápido** de la documentación (Skill Spector, Deerflow).
3. **Docker** (Open Notebook).
4. **Agente de código que lee la documentación e instala** (demostrado con Codex + Open Notebook) — la novedad de la era agéntica: la instalación como tarea delegada.

Además, patrón híbrido creciente: plataformas con plan cloud de pago **y** opción local gratuita (Browser Use, Firecrawl).

## Cruces con la wiki

- Bloque express ya consolidado: Obsidian → [[obsidian-memoria-agentes]]; Ollama/Yan → [[ia-local-texto]]; ComfyUI → [[generacion-local-de-imagenes]].
- Voice Box conecta con [[clonacion-de-voz]]; las UIs agénticas (Openhs, Gstack, Superpowers) con [[agentes-de-codigo]]; el compresor Headroom con la tesis de [[agregacion-apis]] (optimizar créditos antes de escalar suscripción).
- **Advertencia de profundidad**: recopilatorio de una mención por herramienta — las entidades solo se crean si las herramientas reaparecen con sustancia en fuentes posteriores del lote (llama.cpp, Qwen, Gemma son los temas profundos de las siguientes 57 fuentes).
