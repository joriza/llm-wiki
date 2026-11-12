# Abi

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — 1 fuente).
- **Fuentes**: [[resumen-free-32gb-vram-server-running-ai-models-locally]] (2026-10-28).

Canal de tutoriales en español, estilo paso a paso con todos los comandos en la descripción. En el lote aporta la variante **agéntica** del patrón «GPU gratis en la nube»: Kaggle GPU T4×2 + Ollama + Cloudflare Tunnel conectado a un **agente de programación** (endpoint personalizado OpenAI-compatible) en vez de a un cliente de chat.

Advertencias que documenta bien: la URL del túnel es pública y el placeholder de API key **no es seguridad**; la identidad autodeclarada de un modelo no es fiable (verificar por la API); cuotas y límites de sesión de Kaggle → aprendizaje/experimentación, no producción.

## Cruces

Concepto: [[agregacion-apis]] (Kaggle como proveedor gratuito) · [[ia-local-texto]] · comparar con la fuente 48 ([[codesimple]], mismo patrón con cliente chat).
