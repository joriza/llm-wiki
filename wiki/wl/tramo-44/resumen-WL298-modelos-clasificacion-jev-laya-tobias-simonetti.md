# WL-298 — Que es JEV? Y porque fue destronado por LAYA

- **Fuente original**: `raw/wl/tramo-44/2026-09-22-que-es-jev-y-porque-fue-destronado-por-laya.md` (transcripción automática intacta)
- **Video**: https://www.youtube.com/watch?v=WKsRwtR1D3I
- **Canal**: Tobias Simonetti | IA y Tecnología · **Publicado**: 2026-09-22 · **Duración**: 07:06 · **Ingesta**: 2026-11-16
- **Idioma**: español (subtítulos automáticos; normalizado solo aquí, no en el raw)

## Resumen

Video divulgativo (7 min, Tobias Simonetti) sobre los modelos de **clasificación con elección restringida** — no generan texto: reciben un texto y opciones predefinidas y devuelven una decisión con un nivel de confianza, sin posibilidad de inventar respuestas, baratos y en milisegundos.

- **«Shep» (nombre según subtítulos automáticos — probablemente distorsionado, ver apreciación)**: lanzado el 15-09-2026 por Tape Safe AI (fundador ex-OpenAI, USD 40 M levantados); servicio en la nube de pago por pregunta (~42 USD por millón de palabras de entrada; dicen hasta 400× más barato que un LLM en esa tarea). Lista de espera → apertura → cierre por demanda («no tenemos plazas disponibles»).
- **«LLaMA» (mismo problema de transcripción; no confundir con Meta LLaMA)**: publicado 3 días después por «Combai Innovations»; open source (Apache 2.0), corre local (322 M de parámetros), gratis, datos sin salir de la máquina.
- **Comparativa (tablas del propio proveedor open source)**: gana el modelo local en decisiones normales, clasificación de noticias y emociones, velocidad (32 ms vs 250 ms) y confiabilidad — pero dos advertencias de la misma tabla: sin fine-tuning los modelos base rozan el azar (0,36 vs 0,31) y el 77 % de precisión viene de una versión afinada con el examen mismo; la confiabilidad ×3 es tras recalibración manual (de fábrica es ~6× peor).
- **Recomendación**: tarea con pocas opciones + datos propios entrenables → modelo local; sin entrenamiento y con muchas categorías → servicio de pago.
- **Casos de uso**: clasificar 100.000 filas (40 s, 0,50 USD vs 32 min, 37 USD con LLM); 100 correos fraude/legítimos en 1,5 s; 1.018 trabajos de investigación por 8 centavos; revisión de código a 0,0071 USD (~200× más barato que Claude). Contraejemplo: bot de trading sin entrenamiento perdió >30.000 USD — el modelo no falló; falló usarlo sin entrenamiento ni supervisión en decisiones de alto impacto.

## Apreciación

Contenido factual citado «de segunda mano» (tablas del propio fabricante y casos anónimos), con el propio video señalando las trampas del fine-tuning sobre el set de evaluación. **Problema serio de transcripción**: los nombres de productos en los subtítulos («Shep», «Tape Safe AI», «Combai Innovations», «LLaMA») son casi seguro errores de reconocimiento del ASR (el título del video habla de «JEV» y «LAYA», que no aparecen en la transcripción) — los datos citados NO son verificables sin fuentes primarias; señalado. Marco comercial al cierre (diagnóstico de pago con enlace en descripción).

## Cruces y notas

- Dominio destino previsto: ia-uso-practico o ia-critica-y-fronteras (modelos de clasificación baratos vs LLM; tema adyacente al routing-por-coste candidato de WL-274/278); cruces WL-189 (eficiencia de modelos pequeños), WL-285-287 (rendimiento).
- Sin dominios nuevos (S4); pendiente de consolidación (L12).
