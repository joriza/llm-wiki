# WL-295 — «DeepSeek V4.1 Flash vs. El resto: ¿El fin de los LLM tradicionales?» (CodeSimple)

- **Fuente original**: `raw/wl/tramo-43/2026-09-19-deepseek-v4-1-flash-vs-el-resto-el-fin-de-los-llm-tradicionales.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=ai0bifuwDOQ · Canal CodeSimple · Publicado 2026-09-19 · 25:18 · Subtítulos automáticos es
- **Tramo**: 43, fuente útil 5/5 (posición 107 de 4686) — **CIERRE DEL TRAMO en frontera exacta**
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/ia-local o ia-critica-y-fronteras (arquitectura LLM; cruces [[deepseek-harness]], [[inferencia-local]], WL-290/288 comparativas, WL-122 hardware IA)

## Qué es

Análisis técnico (25 min, CodeSimple) de la arquitectura de **DeepSeek V4.1 Flash**: pese al salto de versión 0.1, es «prácticamente otro modelo» — recorrido por el módulo engram, el codificador-decodificador causal, la atención dispersa y la optimización del residual, con la tesis de que la eficiencia de memoria/coste (no los parámetros) es la frontera real de los LLM.

## Puntos clave

- **Módulo engram**: almacenamiento separado del núcleo para patrones locales recurrentes — canales de 2/3/4-gram que crean cubos con vectores de 256 dimensiones consultables durante la inferencia. El problema combinatorio (vocabulario 129.280 tokens → permutaciones imposibles de tabular) se resuelve comprimiendo a 8 cabezas de hash × 60 M de filas por tipo de engram (máx. 384 M de filas; multiplicadores grandes + XOR bit a bit con primos — detalle derivado al blog del autor). Nota epistemológica del autor: describir el «propósito» de un módulo es describir su sesgo inductivo, no una regla programada — el aprendizaje real lo determina el descenso de gradiente. Los parámetros del engram (384 M × 256 ≈ 98,3 B, inyectado duplicado en las capas 1 y 15 ≈ 196 B «adicionales de memoria») se listan aparte en las especificaciones del modelo.
- **Codificador-decodificador causal (CED)**: DeepSeek reintroduce un codificador delante del decodificador — rompiendo el estándar «decoder-only» heredado de GPT — por eficiencia de cómputo y reducción de caché KV. Evolución de la caché KV de DeepSeek: de 389 KB a 890 bytes por token en 3 años (~437× menos); el CED aporta ~4× adicional respecto al modelo de hace 5 meses. Referencia: el Transformer original de 2017 con contexto de 1 M de tokens necesitaría ~819 GB de caché KV.
- **Atención dispersa (CSA/CSA2)**: reutilización selectiva de la caché KV de capas anteriores y del indexador; **indexador disperso jerárquico** que reutiliza candidatos entre 48 bloques.
- **MHC de una sola pasada**: la red residual original obliga a múltiples viajes registro↔HBM (20d operaciones vs. el límite inferior 2n+2d=10d); la versión single-pass reordena el álgebra (desplaza un coeficiente un bloque atrás) para que una sola operación de kernel tenga todas las variables disponibles — no es fusión de kernels sino cambio del orden de dependencias. Contexto: jerarquía de memoria GPU (80 GB HBM vs 50 MB L2 vs 256 KB de registros por SM).
- **Veredicto**: modelo «maravillosamente elaborado» pero con eficiencia de tokens de las peores del mercado; su coste/memoria y >100 tok/s actúan de colchón comercial; el autor espera que DeepSeek vuelva a empujar eficiencia de tokens e inteligencia como con R1.

## Salvedades de triage

- Explicación de 2.ª mano del paper/arquitectura (divulgación con matemática simplificada); cifras del lanzamiento sin verificación independiente; el título «el fin de los LLM tradicionales» es clickbait — el contenido no defiende esa tesis literal. El blog técnico del autor como fuente derivada no verificada.

## Cruces sugeridos

- [[deepseek-harness]] (WL-23/24/25/27, WL-270); cluster comparativas locales WL-288/290 (percepción de regresión vs análisis arquitectónico — complementarios); [[inferencia-local]] (caché KV y jerarquía de memoria GPU conectan con WL-253/254); WL-122 (TPU vs GPU). Canal CodeSimple: 1.ª fuente (umbral no alcanzado).
