# Resumen: Liquid LFM 2.5 — una alternativa potente para uso agéntico y de texto

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-08-05-liquid-lfm-2-5-una-alternativa-potente-para-uso-agentico-y-de-texto.md` (video en español; transcripción literal por subtítulos automáticos) — https://www.youtube.com/watch?v=bq7sJ3hOpbk — Nichonauta, 2026-08-05.
- **Nota**: fuente 8/58 del lote ia-local. **Metadatos del raw UNKNOWN** (como la fuente 7; atribución a Nichonauta inferida del contenido — mismo banco de pruebas y referencias a sus propios videos). Consolidado en la entidad [[lfm]].

## El modelo: Liquid LFM 2.5 en variante 2.6B

Nueva variante de tamaño de la familia LFM 2.5 de Liquid (que va de 0.23B, 1.2B, 1.5B y 8B-A1B MoE, densa y MoE). **Solo texto** (sin visión, sin audio), pocos idiomas — entre ellos español e inglés (vs 200+ de Qwen/Gemma), contexto de **128k literal** (128.000 exactos, no 131.072), sin MTP. GGUF oficial del propio proveedor, probado en Q8 (2,87 GB).

## La advertencia metodológica del canal (lo más valioso de la fuente)

Los benchmarks del proveedor **están elegidos donde mejor salen parados** (uso agéntico/herramientas/instrucciones; solo 1 de código) y la comparación «2.6B vs Gemma 4 E2B de 5.1B» es trampa: los **parámetros totales no son la VRAM real** — la entrada de texto de Gemma E2B son 2B, y además Gemma trae QAT (a 4 bits mantiene calidad completa), visión y MTP. Carga real medida: Gemma E2B con visión a 131k de contexto ocupa **menos de 3 GB de VRAM**; el LFM (Q8, 128k) ocupó **4,9 GB en total** — «el tamaño no es tan simple como ver los billions de parámetros».

## Las mediciones (mismo banco: RTX 3060 12 GB)

- **Velocidad de salida**: menor que sus comparados — Qwen 3.5 2B y Gemma 4 E2B dan 130-180 tok/s; el LFM menos (no tiene MTP).
- **Procesamiento de entrada: excelente** — más de 5.000 tok/s leyendo el prompt (vs 1.000-4.000 típico). Su punto fuerte medible.
- **Razonamiento conciso**: usa solo los tokens que la tarea requiere (Qwen a veces «gasta tokens innecesarios» en su cadena).
- **Código**: peor que Gemma 4 E2B y Qwen 3.5 2B en la prueba del Tetris; y en corrección, Gemma generaliza mejor (menos overfitted).
- **Uso agéntico en OpenCode: su fortaleza confirmada** — llamadas correctas a Brave Search, navegación con Playwright a nichonauta.com a la primera, Context 7 para versión de Bootstrap, escritura de archivos (con un intento fallido fuera del directorio, corregido al indicarlo), lectura de archivo (3 intentos, respondió en inglés → corregido), 80+ tok/s sostenidos a 28k de contexto.

## Veredicto del canal

«No sé si 100 % el mejor en su tamaño, pero una posible alternativa a revisar» — en herramientas confiaría algo más en Qwen 3.5 2B (más contexto, MTP, visión), pero el LFM **usa herramientas mejor que el Gemma E2B**. Se inscribe en la familia [[lfm]] para la re-evaluación con la fuente comparativa del 8B-A1B (fuente 28 del playlist).

---

**Ver también**: [[lfm]] (entidad-familia) · [[mapa-del-ecosistema-python]] no aplica aquí — peer de [[qwen]] y [[gemma-4]] en modelos chicos; metodología de comparación en [[hardware-para-ia-local]].
