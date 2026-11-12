# Resumen: Así corregí Qwen 3.5 2B — la Solución a las REPETICIONES sin Fine-tuning

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-13-asi-corregi-qwen-3-5-2b-la-solucion-a-las-repeticiones-sin-fine-tuning.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Gema»→Gemma, «Quen»→Qwen, «Unlot»→Unsloth, «Hugin Face»→Hugging Face) — https://www.youtube.com/watch?v=OSv6Lny0rV4 — Nichonauta, 2026-09-13 (16:05).
- **Nota**: fuente 37/58 del lote ia-local (entrada 42 del playlist). Solución **runtime (sin fine-tuning)** al problema de loops infinitos en Qwen 3.5 2B con reasoning activado, usando parámetros DRY de llama.cpp (inspirado en investigación de Liquid AI).

## El problema: Qwen 3.5 2B + reasoning = loops infinitos

- Benchmark automatizado (50 preguntas, sin reasoning → con reasoning).
- **Gemma 4 E2B**: sin loops, nota 1.4 → 5.8 (con reasoning).
- **Qwen 3.5 2B**: sin reasoning 1.2; **con reasoning → loops infinitos** (MTP acelera el loop porque predice lo mismo), tardaría horas, no da respuesta final.
- El problema ocurre en cadena de razonamiento (gasta muchos tokens) y también en respuesta final larga.

## La solución: parámetros DRY en llama.cpp (runtime, no fine-tuning)

Inspirado en investigación de Liquid AI (fine-tuning con LoRA para cambiar tokens que inician loops por alternativas), pero **implementado en tiempo de ejecución** via flags de llama.cpp:

1. Revisar `llama-server -h` → buscar opciones anti-loop.
2. Añadir parámetros DRY al `.bat` **sin tocar sampling ni temperatura**.
3. **Efecto**: cuando el modelo va a repetir un token que ya repitió, elige otro token probable → **corta el loop, no el razonamiento**.

## Resultado medido (benchmark mismo, 50 preguntas)

- **Antes**: con reasoning → loop infinito en primeras preguntas, MTP a velocidad mega constante (predice lo mismo), nota incompleta.
- **Después**: **termina todas las preguntas**, velocidades variables (MTP predice mejor/peor según token), razonamiento completo, respuesta final.
- Notas: 1.2 (sin reasoning) → **completado con reasoning** (nota variable por ejecución probabilística, pero **sin loops**).
- Comportamiento: «más natural», MTP acelera donde acierta, no se queda atascado.

## Parámetros DRY añadidos (copiar al .bat)

> «Simplemente son estos de por aquí, les puedes tomar captura, recorte y que chat GPT o lo que sea te lo transcriba. Y en **cualquier modelo que te esté sucediendo esto**, con estos parámetros lo vas a poder solucionar sin que necesariamente pierdas calidad del modelo.»

*(Los parámetros exactos se ven en video: flags DRY de llama.cpp — trabajan con buena cantidad de tokens vistos a la vez, no fragmentos pequeños, por lo que no rompen repeticiones legítimas como `==`, `===`, saltos de línea, etc.)*

## Cruces en la wiki

Entidad principal: [[llama-cpp]] (sección DRY / anti-bucles, fuente 9 y ahora 37 — runtime fix para Qwen 3.5 2B). Modelo: [[qwen]] (3.5 2B propenso a loops con reasoning; fix runtime). Investigación base: Liquid AI (fine-tuning LoRA anti-loops; adaptado a runtime). Canal: [[nichonauta]].