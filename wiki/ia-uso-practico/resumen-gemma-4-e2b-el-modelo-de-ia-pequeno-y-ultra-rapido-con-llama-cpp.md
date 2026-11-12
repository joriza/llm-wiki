# Resumen: Gemma 4 E2B — el Modelo de IA Pequeño y ULTRA RÁPIDO con Llama.cpp

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-09-03-gemma-4-e2b-el-modelo-de-ia-pequeno-y-ultra-rapido-con-llama-cpp.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «Q»→Qwen, «MM Prog»→mmproj) — https://www.youtube.com/watch?v=3YFQG_mpAzM — Nichonauta, 2026-09-03.
- **Nota**: fuente 29/58 del lote ia-local (entrada 34 del playlist). Refuerza y extiende la entidad [[gemma-4]] con benchmarks de velocidad, consumo real en RTX 3060 y pruebas funcionales (calculadora, simulador de fluidos, visión).

## El caso E2B: any-to-any, QAT, MTP, 5.1B totales / 2B activos

- **Arquitectura**: Mixture-of-Experts (5.1B totales, ~2B activos para texto).
- **Entrada multimodal nativa**: texto, imagen, vídeo, audio — **único en su tamaño con audio**.
- **QAT (Quantization-Aware Training)**: Google lo entrega ya preparado para Q4 — «no se pierde prácticamente nada de calidad».
- **MTP (Multi-Token Prediction)**: archivo aparte en Q4 (60 MB) → acelera generación.
- **mmproj** (visión, BF16) incluido.
- **Colección oficial**: `gemma-4-qat-q4` en Hugging Face; se descarga el E2B QAT + Q4_K_XL + mmproj + MTP.

## Stack llama.cpp real (RTX 3060 12 GB)

- Modelo + visión + borrador + sampling recomendado por Google + contexto completo + chain-of-thought.
- **Consumo total**: **3.6 GB VRAM** (sin GPU, corre en RAM).
- **Velocidad observada**: **166-186 tok/s** promedio en código (con reasoning tokens incluidos); en CPU «una cuarta parte de esto», ~40+ tok/s.

## Pruebas funcionales one-shot (sin iteraciones, prompt simple)

1. **Landing page**: resultado básico, no diseño profesional — «no es el mejor creando diseños».
2. **Calculadora**: **100 % funcional** (78-8=70, *2=140, -5=135, +2=137) — «bastante bien ordenada, buen diseño».
3. **Reloj analógico**: lógica correcta (da la hora), **visual no perfecto** (manecillas mal pintadas).
4. **Simulador de fluidos** (test difícil): **funcional** — particulas responden a gravedad, radio de interacción, cambio agua/arena, pausa/click.
5. **Visión + MTP**: pasa imagen «Describe la imagen» → describe correctamente **y el MTP sigue acelerando** tokens (no es solo texto).

## Veredicto comparativo del canal

- **Frente a Qwen 3.5 0.8B/2B**: Gemma E2B consume **menos memoria** (su KV cache es más eficiente), tiene **más modalidades** (audio, vídeo), **menos loops infinitos** (Qwen «más fácilmente entra en bucles»), **mejor en redacción** (menos faltas y palabras inventadas en español).
- **Qwen lo supera** en: código (según tipo de tarea), uso de herramientas, a veces visión.
- **Uso actual del canal**: «el modelo que más utilizo en la actualidad, principalmente para redacción, donde no tiene contrincante aún en tamaños más grandes».
- **Variantes superiores**: E4B (doble tamaño), 12B, 26B, 31B — «¿se notará seis veces más inteligencia? Lo dudo bastante».

## Cruces en la wiki

Entidad: [[gemma-4]] (fuente 29 refuerza: benchmarks velocidad 166-186 tok/s, consumo 3.6 GB VRAM, pruebas funcionales, comparación Qwen). Motor: [[llama-cpp]] (configuración .bat real con QAT Q4 + mmproj + MTP + sampling Google). Contexto Reto 2B: [[desarrollo-con-modelos-locales]]. Canal: [[nichonauta]].