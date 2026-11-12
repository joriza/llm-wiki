# Ornith

- **Tipo**: página de entidad (modelo).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuente 46).
- **Fuentes**: [[resumen-me-equivoque-con-ornith-9b-comparativa-rendimiento-calidad]] (Nichonauta, 2026-09-22).

Familia de **fine-tunes de Qwen 3.5 9B**: Ornith 1 → Ornith 1.5 («mejora de la mejora»). Mantiene **MTP y visión** del modelo base; cuantización ligeramente menor (~100-300 MB menos).

## Comparativa medida vs Qwen 3.5 9B original (RTX 3060, chat + SVG + landing + agéntico en Pi)

| Aspecto | Qwen 3.5 9B | Ornith 1.5 9B |
|---------|-------------|----------------|
| Velocidad | **~10 tok/s más rápido** (72-79) | 67-70 |
| Razonamiento | corto, respuestas simples | largo, respuestas completas |
| Landing page | simple, sin errores | **más completa y pulida** (JS funcional) |
| snake.html + iteración Tetris | funcional, simple | **itera sin romper el código**, mejor acabado |

**Veredicto**: primer fine-tune del canal que obliga a pensarse — gana en desarrollo agéntico/código («genera respuestas mejor acabadas, más pulidas») y pierde solo ~10 tok/s. Para chat/redacción siguen prefiriendo [[gemma-4]] (E2B «sin contrincante» en redacción). Primera vez que el fine-tune supera al original en la tarea para la que fue mejorado.

## Cruces

[[qwen]] (base y comparación) · [[llama-cpp]] (parámetros oficiales por modelo) · [[pi-agent]] (test agéntico) · [[nichonauta]].
