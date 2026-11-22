# WL-455 — Granite 4.2 ⚡ ¿Vale la pena este Nuevo Modelo de IBM? Review y COMPARATIVA

- **Fuente original**: `raw/ia-local/2026-08-28-granite-4-2-vale-la-pena-este-nuevo-modelo-de-ibm-review-y-comparativa.md` ([Vídeo](https://www.youtube.com/watch?v=CuvIvOnhUjc))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-28 · **Duración**: 10:13
- **Dominio provisional**: ia-uso-practico/ia-local (review de inferencia local — clúster Nichonauta/llama.cpp)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Review comparativa de primera mano del **Granite 4.2 3B** de IBM (lanzado días antes) contra los referentes del canal en llama.cpp: **Gemma 4 E2B** y **Qwen 3.5 2B** (con sus variantes 4B de ambos como contexto).

## Ficha declarada de Granite 4.2 3B (2.ª mano del fabricante)

- Solo texto (sin multimodalidad), 12 idiomas (vs ~150+ de Gemma/Qwen), chat con razonamiento y tool-calling, Apache 2.0, contexto nativo 128k expandible a 512k (con pérdida de calidad al expandir).
- GGUF oficial de IBM; versión probada Q6K, 3,01 GB.

## Resultados de la prueba (misma consigna: landing page HTML5 en un archivo)

| Modelo | Cuant. | tok/s | Memoria en uso | Extras |
|---|---|---|---|---|
| Granite 4.2 3B | Q6K | ~85-90 | 7,7 GB (con contexto a la mitad, 64k) | nada |
| Gemma 4 E2B | Q4 | ~169 | 3,6 GB | visión+audio+vídeo, MTP, 131k ctx |
| Qwen 3.5 2B | Q4 | más rápido que Granite | 4,4 GB | visión, MTP, 262k ctx |
| Qwen 3.5 4B | — | — | 10,7 GB | visión, MTP, 262k ctx |
| Gemma 4 E4B | — | — | 6,1 GB (KV sin cuantizar) | visión, MTP, 131k ctx |

**Veredicto**: Granite 4.2 «nuevo modelo, más grande, pero peor en todo» — menos idiomas, menos contexto, sin multimodalidad, consume más memoria, genera más lento y con peor calidad de código (ni siquiera usó el bloque de código). Los 2B de la competencia ya lo superan. Coherente con la tesis recurrente del canal: los benchmarks del fabricante («los benchmarks son los padres») no predicen el desempeño real — cruce directo con [[percepcion-de-regresion-de-modelos]].

## Señales de triage

- Demo de primera mano reproducible (una consigna, métricas de velocidad y memoria con llamarada de contexto a la mitad por no caber en GPU — limitación declarada). Comparación con cuantizaciones distintas (Q6 vs Q4) reconocible como sesgo leve — señalado en el propio video.
- CTA excluido.

## Cruces

- Batería Nichonauta +1 (WL-428/431/432/434/436/448 y anteriores); granite-4 candidato si aparece otra fuente; [[gemma-4]], [[qwen]], [[inferencia-local]], [[llama-cpp]], [[percepcion-de-regresion-de-modelos]] (+1), [[routing-por-coste]].

## Veredicto de triage

Review técnica sólida de primera mano; conservar.


## Ver también

- [[ia-local-texto]]
- [[inferencia-local]]
- [[percepcion-de-regresion-de-modelos]]
- [[routing-por-coste]]
