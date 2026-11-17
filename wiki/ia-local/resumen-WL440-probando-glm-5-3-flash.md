# WL-440 — Probando GLM-5.3 Flash: Calidad y Rendimiento al Menor Costo

- **Fuente original**: `raw/ia-local/2026-08-27-probando-glm-5-3-flash-calidad-y-rendimiento-al-menor-costo.md` ([Vídeo](https://www.youtube.com/watch?v=cmJlSpna5a4))
- **Canal**: Carlos Alarcón - AI
- **Publicado**: 2026-08-27 · **Duración**: 21:40
- **Dominio provisional**: ia-uso-practico (routing por coste / modelos abiertos)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Review del lanzamiento de **GLM-5.3 Flash** (Z.ai): revelado tras una semana de operación anónima (se_presentó como modelo sin nombre «Ox alfa» según el ASR — nombre sin verificar) en OpenRouter y OpenCode, donde se volvió el modelo más consultado de la semana. El eje del video es el **coste por token** frente a la inteligencia obtenida.

## Ficha técnica declarada (2.ª mano, sin verificación propia)

- Arquitectura MoE: 320B parámetros totales, ~18B activos por token, 45 capas.
- Primer modelo de la familia GLM-5 nativamente multimodal (texto, imagen, video sin adaptador); contexto de 1M tokens; licencia MIT con pesos públicos.
- El insignia GLM-5.3 (no Flash) aún sin pesos liberados al momento del video.
- Precio: $0,15/M tokens entrada, $0,50/M salida (promo 50 % hasta el 9 de septiembre); ~una décima parte del coste de la versión completa; descuento del 83 % con caché.

## Análisis y demos

- Métricas de **Artificial Analysis** (índice ponderado independiente, sin vinculación con laboratorios): índice 57, a la par de modelos cerrados y cercano a Gemini 3.7 Flash High según el ASR (nombres de producto comparados distorsionados por ASR, no verificables — señalado).
- Coste total del reporte completo de Artificial Analysis: $138 vs $5.400+ del modelo más caro comparado — el argumento central del video.
- Demo 1 (OpenCode + API key): simulación del sistema solar en Three.js — 37.200 tokens, $0,01.
- Demo 2: landing page personal en español/inglés con búsqueda web desde el harness agéntico (subagentes + skills) — 125.000 tokens, $0,11.
- Conclusión: excelente relación inteligencia/coste para cargas de alto volumen de tokens y harness agénticos de larga duración; no para hardware doméstico en local (320B).

## Señales de triage

- Cifras de precios y benchmarks citadas de **2.ª mano** (páginas del fabricante y Artificial Analysis) sin verificación independiente — señalado.
- Nombres de producto y competidores deformados por el ASR («Open Routro», «Hoging Face», «Mus Spar», «Fable 5», «Dead Mind») — normalizados solo donde seguros; el resto se deja como no verificado.
- Llamados a suscripción/canal del autor excluidos de la síntesis; sin patrocinio externo declarado.

## Cruces

- [[routing-por-coste]] (+1), [[agentes-de-codigo]], [[qwen]] (familia GLM como competencia directa), [[inferencia-local]] (pesos MIT pero no ejecutable en hardware doméstico), [[gobernanza-ia]] (lanzamiento anónimo como táctica de mercado).
- Afinidad con WL-346/353 (demo del clasificador barato, misma lógica coste/inteligencia) y WL-298.

## Veredicto de triage

Review útil y concreta para el tema routing-por-coste; datos de catálogo no verificados. Conservar.


## Ver también

- [[agentes-de-codigo]]
- [[hardware-agentico-mcp-first]]
- [[hardware-para-ia-local]]
- [[ia-local-texto]]
- [[inferencia-local]]
- [[reguladores-carga-solar]]
