# Resumen: Qwen 3.5 4B — el modelo gratis que supera al O3 Mini en local

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-07-24-qwen-3-5-4b-el-modelo-gratis-que-supera-al-o3-mini-en-local.md` (video en español; transcripción literal por subtítulos automáticos, «quant»→Qwen) — https://www.youtube.com/watch?v=gYPX8NRg3vs — Nichonauta, 2026-07-24 (18:22).
- **Nota**: fuente 6/58 del lote ia-local. Comparativa contra un modelo retirado de referencia (O3 Mini High). Consolidado con la familia en [[qwen]].

## La comparativa de leaderboard (Artificial Analysis, según el canal)

O3 Mini High —hace un año de lo mejor, hoy de pago y en línea—: **16 puntos** en el índice general. La familia Qwen 3.5 con razonamiento: **2B = 8, 4B ≈ 20, 9B = 21**. Conclusión del canal: desde el 4B «no es que tengamos algo similar, es que tenemos algo superior» — además con más contexto (262k, expandible a 1.010.000), visión, MTP y razonamiento desactivable.

## Setup documentado (RTX 3060 12 GB)

Unsloth «slot» Qwen 3.5 4B **MTP** GGUF, UD-Q4_K_XL (~2,99 GB) + encoder de visión; CUDA 13 + librerías; `.bat` con: `-m` modelo, `-mm` visión, decodificación especulativa MTP, `-ngl 99`, contexto 131k, razonamiento activo, **parámetros de sampling oficiales de Qwen** (de la model card — cuidado con la traducción de nombres: el `repetition_penalty` de la card se escribe `repeat penalty` en llama.cpp; ese fue el error de arranque del `.bat`), `-np 4` con KV cache compartida, logs visibles, `--image-min-tokens 1024`, alias. Resultado: 9,2 GB consumidos. Depuración del `.bat` que se cierra solo: ejecutarlo desde `cmd` abierto.

## Los resultados de la comparativa

- **Velocidad**: Qwen 3.5 4B con MTP → **más de 100 tok/s** (112 promedio en la prueba), sin razonamiento activo.
- **Tetris en HTML5**: el Qwen generó un juego **que funciona**; el O3 Mini High escribió el código «todo seguido, a lo loco» — comentarios que rompían líneas y HTML que ni arrancaba en el navegador, dos intentos fallidos.
- **Formato de salida**: el O3 Mini High no usa etiquetas correctas para el código, lo que además **rompe el uso de herramientas** — «para desarrollo agéntico, claramente el modelito local es mejor».
- **Visión**: O3 Mini High **no tiene visión**; el Qwen 4B describió correctamente la imagen (astronauta en vez del gato pedido — no cayó en la trampa).
- **Costo**: el O3 Mini es de pago y limitado; el Qwen 4B es local, gratuito e ilimitado.

## La tesis

«La verdadera mejora, la que más se nota, está en los modelos pequeños»: en menos de 2 años, un modelo abierto de 4B supera en visión, contexto, herramientas, formato, velocidad y costo a lo que era frontera (O3 Mini High, probado con razonamiento al máximo). Consolidado en [[qwen]]; el caso de hardware en [[hardware-para-ia-local]] y el motor en [[llama-cpp]].

---

**Ver también**: [[qwen]] (entidad-familia, consolidada con 4 fuentes) · [[llama-cpp]] (motor y flags) · [[gemma-4]] (la comparada) · [[hardware-para-ia-local]].
