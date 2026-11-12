# Resumen: Me equivoqué con Ornith 9B 🧪 Comparativa de RENDIMIENTO y Calidad con Qwen

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-09-22-me-equivoque-con-ornith-9b-comparativa-rendimiento-calidad.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Ornit»→Ornith, «Gema»→Gemma) — https://www.youtube.com/watch?v=SLt4-2aIgAs — Nichonauta, 2026-09-22 (12:28).
- **Nota**: fuente 46/58 del lote ia-local (entrada 46 del playlist). Comparativa cara a cara: Qwen 3.5 9B original vs Ornith 1.5 9B (fine-tune de Qwen 3.5 9B → Ornith 1 → Ornith 1.5); tests: chat, SVG, landing page, uso agéntico (Pi Agent + snake.html + iteración estilo Tetris).

## La tesis: el fine-tune Ornith 1.5 9B **sí mejora calidad en desarrollo agéntico**, pero pierde velocidad

- "Por primera vez estoy notando un modelo en el que no estoy 100% seguro de cuál está ganando."
- **Qwen 3.5 9B original**: consistentemente **~10 tok/s más rápido** (72-79 vs 67-70 tok/s), razonamiento más corto, respuestas más simples.
- **Ornith 1.5 9B**: más lento, razonamiento más largo (más tokens gastados), pero **respuestas más completas, detalladas y pulidas** en tareas de desarrollo/web.

## Tests no agénticos (chat, SVG, landing page)

| Test | Qwen 3.5 9B | Ornith 1.5 9B |
|------|-------------|---------------|
| **VRAM** | 8.9 GB | Ligeramente menos (cuantización distinta) |
| **Chat "por qué el cielo es azul"** | 72 tok/s, razonamiento ~1.2k tokens, respuesta bien estructurada | Más lento, menos tokens razonamiento, respuesta más corta |
| **SVG sol + planeta orbitando** | 70 tok/s, respuesta simple, no gira, **sí encierra en caja SVG** (aunque falló la instrucción) | 67 tok/s, ~5k tokens razonamiento, **gira bien**, pero **círculo negro** (fondo no transparente) |
| **Landing page** | 79 tok/s, ~7.6k tokens, **funcional, simple, sin errores catastróficos** | 70 tok/s, ~15k tokens (×2), **mejor diseño, más completo, JS funcional**, textos/iconos algo oscuros |

- **Conclusión no agéntica**: Qwen gana en velocidad y simplicidad; Ornith gana en completitud y "acabado" visual. Empate técnico, preferencia personal.

## Uso agéntico (Pi Agent + snake.html + iteración Tetris)

- **Ornith 1.5 9B**:
  - Genera snake.html funcional, itera corrigiendo.
  - Cambio a estilo Tetris: **funcional, mejor acabado**, no centrado perfecto pero bien.
  - "El modelo pudo iterar sin problemas, al mismo tiempo que sigue funcionando el código, no lo descompuso."
- **Qwen 3.5 9B original**:
  - Más rápido (velocidad constante superior).
  - snake.html: funcional, más simple, ojo bizco cuando serpiente hacia abajo.
  - Iteración Tetris: reescribe archivo completo, **funcional pero diseño más simple**.
- **Veredicto agéntico**: **Ornith 1.5 9B gana en calidad de desarrollo**.
  - "En ese caso sí notamos una diferencia. No que este falle, sino que el otro genera mejores respuestas, mejor acabadas, más pulidas."
  - Solo pierde **poquitos tok/s** (~10 menos).
  - Ventaja: Ornith **sí tiene MTP y visión** como el original.

## Contexto: la línea evolutiva

- Qwen 3.5 9B → **Ornith 1 9B** (fine-tune) → **Ornith 1.5 9B** (fine-tune del fine-tune, "mejora de la mejora").
- Parámetros de ejecución: ajustes oficiales recomendados para cada uno (MM Pro + MTP en ambos).
- Cuantización distinta: Ornith ligeramente más pequeño (unos 100-300 MB), "en 4 bits comúnmente no se nota la pérdida de inteligencia".

## Cuándo conviene cada uno

| Escenario | Recomendación |
|-----------|---------------|
| **Desarrollo agéntico / código / iteración / web** | **Ornith 1.5 9B** (mejor acabado, más detalle, no rompe código al iterar) |
| **Chat general / redacción / agente conversacional** | **Gemma 4 E2B** (canal lo usa para redacción "sin contrincante") |
| **Velocidad pura / tareas simples / chat casual** | **Qwen 3.5 9B original** (más rápido, respuestas concisas) |

## Cruces en la wiki

- Entidad: [[ia-uso-practico/nichonauta]] (fuente 22 en el lote).
- Modelo: [[qwen]] (3.5 9B base; comparativa con fine-tune Ornith).
- Modelo: [[ornith]] (fine-tune de Qwen 3.5 9B → 1 → 1.5; 9B; MTP + visión; mejora agéntica).
- Entidad: [[llama-cpp]] (parámetros de ejecución oficiales por modelo; MM Pro, MTP).
- Entidad: [[pi-agent]] (usado para test agéntico snake.html + iteración).
- Relacionado: fuente 28/58 (Ling 3.0 Tiny vs LFM 2.5 8B — duelo MoE chicos); fuente 45/58 (automatización Python + Gemma 4 E2B — arnés > modelo grande).