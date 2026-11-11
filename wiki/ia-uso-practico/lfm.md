# Liquid LFM (familia 2.5)

- **Tipo**: página de entidad (modelos).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 8/58 del lote ia-local; la fuente 28 comparará el 8B-A1B).
- **Fuentes**: [[resumen-liquid-lfm-2-5-una-alternativa-potente-para-uso-agentico-y-de-texto]].

**Liquid LFM 2.5** es la familia de modelos de texto de Liquid, en variantes de tamaño 0.23B, 1.2B, 1.5B, **2.6B** (la probada) y **8B-A1B MoE**. GGUF oficial del propio proveedor.

## Perfil (según la prueba del 2.6B, RTX 3060 12 GB)

- **Solo texto**: sin visión, sin audio; pocos idiomas (español e inglés entre ellos, vs 200+ de Qwen/Gemma).
- Contexto: **128k literal** (128.000 exactos — ni el redondeo estándar de 131.072).
- **Sin MTP** ni especulación nativa → velocidad de salida menor que Qwen 3.5 2B / Gemma 4 E2B (que dan 130-180 tok/s en ese tamaño).
- **Procesamiento de entrada sobresaliente**: >5.000 tok/s (vs 1.000-4.000 típico).
- **Razonamiento conciso**: solo los tokens que la tarea requiere.
- **Fortaleza confirmada: uso agéntico** en OpenCode — llamadas correctas a Brave Search, Playwright (navegación a la primera), Context 7, escritura/lectura de archivos (con correcciones puntuales); 80+ tok/s sostenidos a 28k de contexto.
- **Debilidades**: código (peor que Gemma E2B y Qwen 2B en Tetris; corrección inferior a Gemma, que generaliza mejor al estar menos overfitted) y **eficiencia de VRAM**: Q8 a 128k ocupó 4,9 GB totales — Gemma E2B con visión a 131k ocupa <3 GB gracias a QAT.

## La advertencia metodológica que acompaña a la familia

Los benchmarks del proveedor están elegidos donde mejor salen parados, y las comparaciones «2.6B vs Gemma 5.1B» son trampa de contabilidad: **los parámetros totales ≠ VRAM real** (la entrada de texto de Gemma E2B son 2B) ni calidad tras QAT. Criterio: contrastar siempre con el banco de pruebas propio.

En la wiki:_peer de [[qwen]] y [[gemma-4]] en el bloque de modelos chicos; re-evaluación pendiente con el 8B-A1B (fuente 28 del playlist).
