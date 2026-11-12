# Resumen: Iterar Rápido con IA — acelerar Modelos de Lenguaje con Ngram y MTP

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-08-19-iterar-rapido-con-ia-como-acelerar-modelos-de-lenguaje-con-ngram-y-mtp.md` (video en español; transcripción automática llegada traducida al inglés con duplicación de ASR — normalizada solo aquí) — https://www.youtube.com/watch?v=pe2SuSIaU8A — Nichonauta, 2026-08-19 (11:12).
- **Nota**: fuente 16/58 del lote ia-local. Extiende [[llama-cpp]] con la familia de decodificación especulativa **N-gram** y su comparación contra MTP. Consolidado allí.

## El escenario: iteración de código con modelos chicos

La tesis del canal: a los modelos chicos «cuando les falta inteligencia, simplemente hay que iterar» — con tokens locales ilimitados y rápidos. El caso: un juego HTML/CSS/JS sin librerías externas que ningún modelo chico logra en one-shot (ni Opus lo haría sin problema, dice). El workflow probado, manual a propósito: analizar fallos → reescribir completo corregido → pegar errores de consola al modelo → repetir (en un agente real, el modelo iteraría solo con herramientas de navegador).

## Los tres métodos de aceleración comparados

| Método | Cómo funciona | Cuándo acelera | Costo |
| --- | --- | --- | --- |
| **N-gram** | Usa el mismo contexto como borrador — sin modelo extra | Solo cuando lo que escribe es **similar a lo ya escrito** | **Gratis**: casi sin memoria extra, funciona en cualquier modelo, en chat y en agentes |
| **MTP** (borrador integrado/aparte) | Submodelo que predice tokens; el grande valida | Acelera siempre (razonamiento incluido, aunque lento ~40 tok/s) | Requiere memoria de su KV cache |
| **Ambos combinados** | MTP + N-gram apilados | Decente en todo, picos ~300 tok/s | 10 GB de VRAM; procesamiento de contexto algo más lento; «combinados no necesariamente son lo mejor» |

## Los números del caso (iteración sobre código ya extenso)

- **Solo N-gram**: donde reescribe código idéntico al previo → >100 tok/s constantes, picos de **200-277 tok/s**; donde hace cambios reales → velocidad normal (~39-97). Promedio final 86,64 tok/s contra ~50 original.
- **MTP + N-gram combinados**: frecuente ~200 tok/s, picos ~300, y **velocidad decente también donde modifica código** — la ventaja del combinado.
- El cuello de botella de la iteración resultó ser el **razonamiento**: «la generación de código es rapidísima si el problema está en lo que vino antes» — el razonamiento no coincide con lo ya en contexto y ahí N-gram no ayuda.

## Las conclusiones

1. **N-gram es la mejora gratuita para iteración**: en agentes, el patrón típico es «reemplazar líneas con contenido casi idéntico (un punto, una coma, un paréntesis)» — N-gram acelera ese caso masivamente, funciona en cualquier modelo y sin memoria extra.
2. La velocidad convierte el modelo chico en usable: ~50 tok/s original → ~200 con N-gram («imaginá en una GPU más potente»).
3. La filosofía reafirmada: la ventaja de los modelos chicos es disponibilidad ilimitada — con **iteración rápida y el humano guiando las correcciones** (no delegando todo) se trabaja bien; y dividir en pasos evita errores acumulados (aplica a modelos grandes también).

## Cruces en la wiki

Sección nueva en [[llama-cpp]] (especificación de N-gram junto a MTP); complementa el [[proxy-atomico]] (otra forma de potenciar modelos chicos: allí por descomposición de tareas, aquí por velocidad de iteración) y la filosofía de [[desarrollo-con-modelos-locales]].

---

**Ver también**: [[llama-cpp]] (sección «Decodificación especulativa: N-gram») · [[proxy-atomico]] (la otra palanca para modelos chicos) · [[desarrollo-con-modelos-locales]].
