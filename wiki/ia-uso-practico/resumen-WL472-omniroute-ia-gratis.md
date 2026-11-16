# WL-472 — Lo consiguió! Omniroute Regala la Mejor IA GRATIS y SIN Límites

- **Fuente original**: `raw/wl/tramo-78/2026-08-27-lo-consiguio-omniroute-regala-la-mejor-ia-gratis-y-sin-limites.md` ([Vídeo](https://www.youtube.com/watch?v=q1hFEja170A))
- **Canal**: Alejavi Rivera
- **Publicado**: 2026-08-27 · **Duración**: 36:04
- **Dominio provisional**: ia-uso-practico (routing de modelos gratuitos — tutorial de herramienta)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Tutorial completo de **OmniRouter** (ASR «Omniroute/OVNIRuter» — nombre a confirmar): plataforma de código abierto (licencia MIT según el video) que actúa como **proxy/router local entre tu herramienta de IA y +300 proveedores** de modelos, priorizando modelos gratuitos. Lanzada a principios del verano 2026; anuncia +1.500 M de tokens gratis mensuales.

## Tres claves declaradas

1. **Puntuación de 12 factores** para priorizar modelos (límites, latencia, etc.).
2. **Context Relay**: al acercarse el contexto a su límite, resume y lo pasa al siguiente modelo.
3. **Optimización** (hasta 95 %, 89 % de media): RTK filtra salidas voluminosas de herramientas y Cavem reescribe prompts más cortos — crítico con límites de plataformas gratuitas.

## Casos de uso demostrados (primera mano)

- **Instalación local**: 3 comandos (Node.js requerido), UI web en local, contraseña por defecto «change me» (cambiarla — demostrado).
- **Proveedores**: sin autenticación (9, p. ej. OpenCode — «no vinculás tu cuenta»; test masivo de modelos: 3 de 6 disponibles — Mimo Xiaomi, Nemotron Nvidia, Hunyuan), con autenticación (Google Antigravity 15/15), vía API key (OpenRouter +400 modelos, Groq +13, Orc/Nexus Router con DeepSeek V4 Pro/Flash free +190, Nvidia NIM +102 — GLM 5.2, DeepSeek V4, Nemotron 3), local (Ollama conectable). Redundancia como estrategia: si un proveedor retira un modelo, salta al siguiente.
- **Combo «best free»**: rotación automática entre los mejores modelos gratuitos conectados; trazabilidad por petición (queda registro de qué proveedor/modelo respondió, con errores visibles).
- **Desbloqueo de Claude Code**: settings.json apuntando la URL al OmniRouter local con el combo best-free; demo real con fallover transparente (Nvidia responde tras errores de Groq/Orc).
- **Combos propios**: p. ej. «DeepSeek Free» con dos proveedores y estrategia por prioridad.
- **Integraciones**: Hermes Agent (endpoints personalizados, +1.700 modelos detectados; fallover Gemini→Mimo documentado en logs), N8N vía API compatible OpenAI con clave propia.
- Extras: playground de testeo, monitorización/logs/timeline, auditoría MCP/2A, despliegue en VPS (Docker/Hostinger, sin patrocinio declarado).

## Señales de triage

- Tutorial de primera mano completo y reproducible; cifras de la plataforma (tokens, proveedores, % optimización) citadas de 2.ª mano sin verificación independiente — señaladas; la «mejor IA gratis sin límites» del título es titular (los free tiers tienen límites reales que OmniRouter gestiona, no elimina).
- **Patrocinio excluido**: segmento Saily/eSIM (Nord Security) declarado como patrocinador; diagnóstico de «nivel de IA» y funnel del intensivo de pago del autor excluidos.
- Nombres ASR sin verificar (Omniroute/OVNI Router, «RTK», «Cavem», «Orc Router», «Hermes Agent»).

## Cruces

- [[routing-por-coste]] (+1, tema central), [[inferencia-local]] (Ollama conectable), [[deepseek-harness]], [[agentes-de-codigo]] (Claude Code deslimitado), [[qwen]], WL-440 (GLM 5.3 Flash), WL-274 (routing por coste — misma tesis), WL-350 (skills/herramientas).
- Entidad candidata: OmniRouter (1.ª fuente; umbral ≥2 si reaparece).

## Veredicto de triage

Tutorial técnico sólido y aplicable; conservar con señales de 2.ª mano.
