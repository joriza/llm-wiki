# WL-594 — Comparativa SLMs en Programación 🤖 Gemma vs Ornith vs Qwen vs LFM

- **Fuente original**: `raw/wl/tramo-95/2026-08-16-comparativa-slms-en-programacion-gemma-vs-ornith-vs-qwen-vs-lfm.md` ([Vídeo](https://www.youtube.com/watch?v=ArABLzPR5Ok))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-16 · **Duración**: 10:12
- **Dominio provisional**: ia-local (SLMs en código)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Benchmark casero pero metodológicamente pensado: **one-shot con el mismo prompt complejo** (juego HTML de defender una base minera, con paleta de colores especificada, ~1.000 líneas) contra 4 SLMs locales a 4 bits, ~131 k de contexto, parámetros recomendados:

- **Gemma 4 12B** (denso, QAT): 87 tok/s, ~12.000 tokens con razonamiento → juego «medio funcional pero horrible», sin enemigos ni astronauta, nave inmóvil — buena base, insuficiente en one-shot.
- **LFM 2.5 Instruct** (8B/1B activos): muchísimo más rápido y menos de la mitad de tokens, «muy eficiente» — pero «no está preparado para código»: HTML casi vacío, una línea de CSS; útil para autocompletado, no para generación.
- **Ornit 1.0 9B** (con MTP): 69 tok/s — visualmente no rindió nada apreciable.
- **Qwen 3.5 9B**: 14.000 tokens a 67 tok/s — menú más interesante pero el juego «directamente no pasa nada».
- **Hallazgo más valioso — el razonamiento «fantasma»**: en las cadenas de razonamiento de varios modelos aparecen afirmaciones tipo «estoy escribiendo/refinando código» **que son falsas** — «puros tokens por gastar»; hipótesis del canal: estos SLMs están **destilados de modelos mayores y su razonamiento aprendió el formato del resumen, no la acción real**.
- **Conclusión doble**: (1) ningún SLM resuelve el one-shot; sirven para autocompletar y trabajar en conjunto, no para delegar un proyecto completo; (2) la razón principal de que los modelos en línea (lo hizo con Sonnet 5, razonamiento máximo) funcionen mejor **no es solo inteligencia: es que iteran muchísimo** — ejecutan, compilan, corrigen antes de responder, aunque «teóricamente» sea un chat de solicitud-respuesta. Siguiente video: potenciar los SLMs con iteración tipo agente.

## Señales de triage

- **Benchmark de 1.ª mano con metodología declarada**: mismo prompt, mismo contexto, 4 bits, velocidad y conteo de tokens por modelo; resultados evaluados en pantalla de forma honesta (todos fallaron). Limitaciones señaladas por el propio canal: un solo prompt, sin iteración agéntica, evaluación visual subjetiva.
- Nombres de modelos con ASR dudoso: «Ornit/Hornet 1.0 9B», «Qwen 3.5 9B», «Gema 4 12B», «LFM 2.5» — consistentes con la línea del canal pero sin verificar grafías exactas; «Sonnet 5» como referencia mayor.
- La hipótesis del razonamiento destilado es especulación del canal — señalada como tal (coherente con discusión pública sobre razonamientos distilados).
- Raw intacto; sin patrocinios.

## Cruces

- **[[inferencia-local]] +1, [[qwen]] +1, batería Nichonauta +1**: la comparativa SLM-código más completa del backlog; [[percepcion-de-regresion-de-modelos]] (el razonamiento fantasma como evidencia de destilación).
- «La ventaja de los modelos en línea es la iteración, no solo la inteligencia» ↔ [[routing-por-coste]] +1 y [[delegacion-cognitiva-ia]] (el agente itera; el chat no) — puente directo con WL-556 (MCPs no suplen inteligencia) y WL-591 (spec + iteración por tareas).
- «No delegues un proyecto completo a un SLM» ↔ WL-575 («serio ≠ correcto») y [[brecha-junior-ia]].
- WL-551/545 (línea Qwen del canal) — serie encadenada.

## Veredicto de triage

Muy útil: benchmark honesto con hallazgo original (razonamiento fantasma por destilación — hipótesis señalada) y conclusiones prácticas (SLM = autocompletado, no delegación; la iteración es la mitad de la inteligencia). Consolidación diferida (L12): ia-local, batería Nichonauta +1, [[routing-por-coste]] +1, enlazar con el video-siguiente.
