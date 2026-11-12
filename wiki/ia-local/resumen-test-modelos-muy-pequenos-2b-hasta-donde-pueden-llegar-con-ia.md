# Resumen: Test Modelos Muy Pequeños 2B — ¿hasta dónde pueden llegar con IA?

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-08-22-test-modelos-muy-pequenos-2b-hasta-donde-pueden-llegar-con-ia.md` (video en español; transcripción literal por subtítulos automáticos) — https://www.youtube.com/watch?v=muiow8wjgIU — Nichonauta, 2026-08-22 (06:32).
- **Nota**: fuente 14/58 del lote ia-local. Primera escala del «Reto 2B»: probar los dos modelos comprometidos **en chat puro, sin herramientas ni uso agéntico** — el siguiente video sube a OpenCode con archivos, y luego vienen skills, MCPs y Atomic AI.

## La escalera de capacidades (de simple a complejo)

1. **QA simple** — «¿capital de Francia?»: Gemma 4 E2B correcto a **~179 tok/s** tras una pequeña cadena de razonamiento.
2. **Traducción ES→EN**: Qwen 3.5 2B correcto… pero con **una cadena de razonamiento enorme para una tarea trivial** («los Qwen tienden a razonar demasiado»).
3. **Visión con trampa** — «¿cuántos gatos y perros hay en la imagen?» sobre una imagen que no tiene ninguno: Gemma 4 E2B **pasó la trampa** («no hay ningún gato ni perro; la imagen muestra un casco de astronauta»).
4. **Documento largo**: PDF de 11 páginas (el paper *Attention Is All You Need*) adjunto directo → Qwen 3.5 2B lo resumió correctamente en español (Transformer, atención pura, SOTA en traducción, más rápido que RNNs) — demostración de uso de **contextos extensos** (131k cargados; los modelos llegan a 262k expandibles a 1M).
5. **Código desde prompt simple en chat puro**: «presentación estilo PowerPoint en HTML del documento» → Qwen 2B generó 6 slides pero la navegación falló; la «corrección» de Gemma 4 E2B arregló «siguiente» y rompió «anterior». **Aquí toparon el límite**: código complejo delegado completo desde un prompt vago, en chat sin herramientas, es donde ambos se complican.
6. **Creatividad**: poema sobre el documento, sin problema y a buenas velocidades.

## Las conclusiones del canal

- Como **modelos de lenguaje puros son funcionales para muchas cosas** (QA, traducción, visión con trampas, documentos largos, creatividad) a velocidades muy buenas.
- Como **programadores en chat puro fallan** — ahí hace falta el paso agéntico: crear, leer y **editar** archivos en vez de reescribir todo para una corrección (tema del siguiente video).
- La tesis del reto reafirmada: «los modelos chicos son buenos para tareas simples; cuando son grandes se pierden → **tratemos de que todas las tareas sean simples, llegando a su forma atómica no divisible**» (Atomic AI).

## Cruces en la wiki

Los dos modelos son [[gemma-4]] (E2B) y [[qwen]] (3.5 2B), con el setup del [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local|Reto 2B]]; el paso agéntico que sigue es [[opencode]] sobre [[llama-cpp]]; la estrategia de descomposición conecta con [[desarrollo-con-modelos-locales]].

---

**Ver también**: [[nichonauta]] (entidad-canal, 8 fuentes) · [[gemma-4]] · [[qwen]] (los modelos del Reto 2B) · [[desarrollo-con-modelos-locales]] (la tesis de tareas atómicas).
