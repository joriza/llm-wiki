# Resumen: FREE 32GB VRAM Server for Running AI Models Locally

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-10-31-free-32gb-vram-server-running-ai-models-locally.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=Qb-C1MWYkV4 — Abi, 2026-10-28 (08:58).
- **Nota**: fuente 57/58 del lote ia-local (entrada 57 del playlist). Tutorial Kaggle GPU T4×2 + Ollama + Cloudflare Tunnel → agente de programación local con endpoint personalizado; variante del tema de la fuente 48 (CodeSimple) con demo vía agente de código en Mac.

## El setup: GPU gratis en la nube para hardware sin GPU dedicada

**Problema**: sin GPU dedicada, sin PC potente, sin suscripciones de nube.
**Solución**: GPU T4 × 2 de Kaggle (16 GB VRAM cada una) + Ollama + Cloudflare Tunnel → endpoint HTTPS desde tu terminal local.

## Pasos

1. **Kaggle**: crear cuenta → **verificación telefónica** (requisito para GPU gratis) → New Notebook → Settings → Accelerator → **GPU T4 × 2**.
   - ⚠️ Los 32 GB combinados **no se usan automáticamente**: depende de cómo se cargue/distribuya el modelo entre las 2 GPUs.
2. **Instalar Ollama** en el notebook (celda de código).
3. **Iniciar servidor Ollama** (mantener en segundo plano).
4. **Elegir modelo en Hugging Face**: filtros "generación de texto" + ordenar por más descargados; buscar **versión GGUF compatible con Ollama**; tutorial usa **Q4_K_M** ("buen equilibrio calidad/memoria/rendimiento").
5. **Descargar modelo** en Kaggle (`ollama pull`), probar, detener sesión interactiva dejando el servidor corriendo.
6. **Cloudflare Tunnel**: instalar + iniciar túnel conectado al servidor Ollama → **URL pública temporal** `https://xxx.trycloudflare.com`.
7. **Cliente local** (Mac, agente de programación con endpoint personalizado OpenAI-compatible):
   - URL del túnel + **`/v1`** (API de Ollama compatible OpenAI).
   - API key: valor placeholder `"Ollama"` (sin mecanismo de seguridad real).
   - Seleccionar modelo detectado (con su variante de cuantización).
8. **Probar**: chat en la terminal; el procesamiento pesado ocurre remotamente en Kaggle.

## Advertencias de seguridad y ciclo de vida

- **La URL de túnel temporal es públicamente accesible** — no compartir ni exponer datos sensibles; configurar autenticación/controles de acceso para uso seguro.
- El placeholder de API key **no es un mecanismo de seguridad**.
- El túnel **solo funciona mientras** la sesión Kaggle + servidor Ollama + túnel estén activos.
- **Identidad autodeclarada del modelo no es fiable** — verificar por nombre en config del cliente o devuelto por la API.
- **Cuotas de GPU y límites de sesión de Kaggle** → adecuado para **aprendizaje, experimentación y proyectos temporales, no producción continua**.

## Valor para la wiki

- Variante del patrón "GPU gratis en la nube" ya documentado (fuente 48 CodeSimple): misma receta Kaggle + Ollama + Cloudflare, pero demo orientada a **agente de programación** (endpoint personalizado) en vez de cliente chat.
- Refuerza la categoría de **agregación de APIs gratuitas** (Kaggle como proveedor) y la alternativa a hardware caro.

## Cruces en la wiki

- Entidad: [[abi]] (canal, 1ª fuente en el lote; tutoriales paso a paso en español).
- Concepto: [[ia-local-texto]] (alternativa nube gratis cuando hardware local no alcanza).
- Entidad: Ollama (servidor en Kaggle notebook; endpoint OpenAI-compatible expuesto vía Cloudflare).
- Concepto: [[agregacion-apis]] (Kaggle como proveedor gratuito más en el catálogo).
- Relacionado: fuente 48/58 (Cómo Usar GPU Gratis en Kaggle — CodeSimple, misma receta con cliente Hermes/Open WebUI); fuente 43/58 (No Compres Hardware — alternativa nube para lo pesado); fuente 30/58 (CPU-only llama.cpp — economía local sin GPU).