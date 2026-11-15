# Resumen: Gemma 4 es MEJOR que Qwen en código y velocidad

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-07-19-gemma-4-es-mejor-que-qwen-en-codigo-y-velocidad.md` (video en español; transcripción literal por subtítulos automáticos, «cuen»→Qwen) — https://www.youtube.com/watch?v=0pa-Fy4hsBA — Nichonauta, 2026-07-19 (07:36).
- **Nota**: fuente 5/58 del lote ia-local. **Revierte parcialmente a la fuente 3** (del 16-07, mismo canal): la actualización de Google a Gemma 4 —plantilla corregida + MTP— cambia el veredicto sobre herramientas y velocidad. Los benchmarks citados (Artificial Analysis, Terminal Bench) son del canal, no verificados.

## Los números de la comparativa (Artificial Analysis / Terminal Bench, según el canal)

| Métrica | Qwen 3.5 9B | Gemma 4 12B |
| --- | --- | --- |
| Índice de inteligencia (con razonamiento) | 21 | 22 |
| Terminal Bench (uso agéntico/herramientas) — antes de la actualización | 24 % / 18 % (con/sin CoT) | 18 % / 11 % |
| Código sin herramientas (con CoT) | 28 % | **38 %** (30 % sin CoT) — ya superior **antes** de la actualización |

## Lo que cambió con la actualización de Google

Dos correcciones sobre el mismo Gemma 4: la **plantilla del modelo** (que arreglaba el uso de herramientas — su debilidad histórica frente a Qwen) y el **MTP añadido**, que multiplica ×3 la velocidad de generación. Consecuencia: mejor en lenguaje (como siempre), mejor en código (como ya era), y ahora **también en herramientas**, además de mucho más rápido.

## Las mediciones del canal (RTX 3060 12 GB)

- Qwen 3.5 9B Q4 + MTP (KV q8_0): **67 tok/s**, consumiendo 10,3 GB.
- **Gemma 4 12B** (12B vs 9B — debería consumir más y ser más lento): **misma memoria consumida**, KV sin cuantizar, y velocidad final **mayor** — ~92 tok/s en código con MTP (vs 36 sin MTP), ~93 tok/s incluso con mucho contexto acumulado.
- La clave: **QAT** — la técnica de Google de *quantization-aware training* que mantiene los modelos a 4 bits prácticamente al 99 % de su calidad.
- Aplica a **todas las variantes** de Gemma 4 (26B, 31B, E4B, E2B) — «sin importar tu hardware, mientras te quepa algún Gemma 4».

## La prueba en OpenCode

Flappy Bird en un único HTML: funcionó a la primera y **usó herramientas correctamente** (su punto débil histórico); iteraciones de estilo («mejora el visual al máximo», restyle neón cyberpunk) con 90-93 tok/s sostenidos aun con mucho contexto. El canal lo certifica para desarrollo con el stack de [[desarrollo-con-modelos-locales]].

## Cruces y contradicción resuelta

- Contradicción con la fuente 3 (mismo canal, 3 días antes): aquella descartaba a Gemma 4 para herramientas/desarrollo — esta documenta que la actualización de Google lo corrigió. Queda registrada la evolución en [[gemma-4]].
- El MTP de Gemma 4 es **archivo aparte** (flag `-md` de [[llama-cpp]]), a diferencia del MTP integrado de Qwen.
- La comparación se inscribirá en el concepto de comparativas de modelos cuando la segunda fuente comparativa del lote llegue (fuente 28: Ling vs LFM).

---

**Ver también**: [[gemma-4]] (entidad-modelo, con historial de veredictos) · [[llama-cpp]] (flags MTP/-md) · [[desarrollo-con-modelos-locales]] (stack de la prueba).
