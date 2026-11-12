# Resumen: Cómo Usar GPU Gratis en Kaggle: 30 Horas Semanales para Modelos de IA

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-24-como-usar-gpu-gratis-en-kaggle-30-horas-semanales.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=XL64zph9Chs — CodeSimple, 2026-09-24 (05:25).
- **Nota**: fuente 48/58 del lote ia-local (entrada 48 del playlist). Tutorial práctico: Kaggle GPU T4×2 gratis (30 h/semana) + Ollama + Cloudflare Tunnel → endpoint accesible desde cliente local (Hermes/otros).

## El setup: GPU gratis en la nube para quien no tiene hardware local

**Problema**: tu PC no tiene GPU/VRAM suficiente para modelos grandes.
**Solución**: Kaggle ofrece **GPU T4 × 2 (30 horas/semana gratis)** tras verificación de teléfono.

## Pasos (resumidos)

1. **Kaggle**: crear cuenta → verificar teléfono (Settings) → New Notebook → Settings → Accelerator → **GPU T4 × 2**.
2. **Instalar Ollama** en el notebook (comando en descripción del video).
3. **Descargar modelo** desde Hugging Face (filtrar por "Ollama" + "text generation" + "most downloaded"; recomendado: **Q4_K_M** variante rápida, ej. Hermes).
4. **Cloudflare Tunnel**: exponer Ollama (puerto 11434) → URL pública `https://xxx.trycloudflare.com/v1`.
5. **Cliente local** (Hermes, Open WebUI, cualquier cliente OpenAI-compatible):
   - Endpoint personalizado: URL Cloudflare + `/v1`
   - API Key: `"Ollama"` (o lo que quieras)
   - Modelo: el nombre exacto (ej. `hermes-3-llama-3.1-8b-q4_k_m`)
6. **Listo**: chateas desde tu PC, la inferencia corre en Kaggle gratis.

## Detalles clave

- **30 horas/semana** de GPU T4 × 2 (16 GB VRAM cada una = 32 GB totales) — gratis.
- **Verificación de teléfono** obligatoria en Kaggle Settings.
- **Ollama** corre en el notebook Kaggle; el túnel Cloudflare lo expone sin abrir puertos.
- **Cliente local** solo envía requests; toda la computación es remota.
- **Latencia**: depende de tu conexión a internet (añade ~100-200 ms vs local).
- **Privacidad**: los datos salen de tu máquina hacia Kaggle/Cloudflare.
- **Persistencia**: el notebook Kaggle se apaga tras inactividad; el modelo se vuelve a descargar cada sesión (rápido con caché HF).

## Cuándo conviene

| Escenario | ¿Sirve? |
|-----------|---------|
| Sin GPU / GPU débil (integrada, <8 GB VRAM) | ✅ **Sí**, corre modelos 7B-70B que no caben en local |
| Tienes buena GPU local (RTX 3090/4090 24 GB) | ❌ Local es más rápido, privado, sin límite horas |
| Necesitas privacidad total (datos sensibles) | ❌ Datos viajan a Kaggle/Cloudflare |
| Uso esporádico / pruebas / aprendizaje | ✅ Ideal, 30 h/semana sobran |
| Producción 24/7 | ❌ Límite semanal, notebook se apaga |

## Cruces en la wiki

- Entidad: [[ia-uso-practico/codesimple]] (fuente 3 en el lote; canal análisis económico/técnico + tutoriales prácticos).
- Concepto: [[ia-uso-practico/ia-local-texto]] (alternativa nube gratis cuando hardware local no alcanza; complemento a "modelo más pequeño que dé el rendimiento").
- Entidad: [[ollama]] (corre en Kaggle notebook; endpoint OpenAI-compatible expuesto vía Cloudflare).
- Concepto: [[ia-uso-practico/agregacion-apis]] (Kaggle como proveedor gratuito más en el catálogo; FreeLLMAPI/OmniRouter podrían integrarlo).
- Relacionado: fuente 43/58 (No Compres Hardware — CodeSimple, alternativa nube para lo pesado); fuente 30/58 (CPU-only llama.cpp — economía RAM vs GPU/nube).