# Percepción de regresión de modelos de IA

- **Tipo**: página de concepto (registro de percepción, no benchmark).
- **Dominio**: `ia-uso-practico/`.
- **Creada**: 2026-11-16 (consolidación T49, tramos 42-44 — umbral ≥2 verificado por conteo real).
- **Fuentes (2, umbral ≥2)**: [[resumen-WL288-gpt6-sol-vs-56-sol-nichonauta]] (WL-288, Nichonauta — GPT-6 Sol peor que 5.6 Sol en 4 prompts) · [[resumen-WL290-qwen38-vs-qwen36-nichonauta]] (WL-290, Nichonauta — Qwen 3.8 Flash Next no supera a Qwen 3.6 con esfuerzo de razonamiento bajo).

## El concepto

Dos comparativas del mismo canal (sept-2026) registran la misma percepción: **el modelo más nuevo rinde peor que su predecesor** en tareas de generación práctica (SVG, animaciones, reloj HTML, simuladores). No son benchmarks sistemáticos — muestras mínimas, sin repetición ni rúbrica objetiva, juicio visual del autor — y su valor es documentar la percepción de regresión, no medirla. Los nombres de modelos (GPT-6 Sol/Luna/Terra, Qwen 3.8 Flash Next) corresponden al panorama del autor, no verificados contra fuentes primarias.

## Lo que las dos fuentes comparten

- **Regresión en la generación nueva→vieja**: GPT-6 Sol < 5.6 Sol (WL-288, misma conclusión que su video previo GPT-6 Luna vs 5.6 Luna); Qwen 3.8 ≤ 3.6 en esfuerzo bajo (WL-290).
- **El matiz de WL-290**: el modelo «no es malo» — el problema es el **presupuesto de esfuerzo de razonamiento**: el 3.8 solo brilla con esfuerzo extra-alto, que lo hace mucho más lento; la cuantización no es la causa («entre 3.6 a 4 bits y a 16 bits casi no hay diferencia»).
- **Tesis útil**: más parámetros + más cadena de razonamiento ≠ mejores respuestas si el presupuesto de esfuerzo es bajo; el coste real está en el esfuerzo, no solo en el tamaño.

## Contraste con el análisis arquitectónico

WL-295 (CodeSimple, ia-local/) analiza la misma generación de modelos desde la arquitectura (DeepSeek V4.1 Flash) con veredicto técnico y no percibe regresión — el par muestra los dos registros de la wiki frente al mismo fenómeno: percepción de consumo (WL-288/290) vs análisis de 2.ª mano del diseño (WL-295). Ambos con salvedades de verificación señaladas en sus resúmenes.

## Ver también

- [[inferencia-local]] (ia-local/) — el clúster donde vive WL-290; el esfuerzo de razonamiento como presupuesto.
- [[routing-por-coste]] (ia-uso-practico/) — elegir modelo por tarea/precio, la respuesta práctica a la variabilidad entre versiones.
