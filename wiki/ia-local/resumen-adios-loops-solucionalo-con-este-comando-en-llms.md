# Resumen: Adiós Loops — soluciónalo con este comando en LLMs

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-08-08-adios-loops-solucionalo-con-este-comando-en-llms.md` (video en español; transcripción literal por subtítulos automáticos, «Gwen»→Qwen) — https://www.youtube.com/watch?v=pkXUnTO7Y9c — Nichonauta, 2026-08-08 (10:17).
- **Nota**: fuente 9/58 del lote ia-local. Consolidado en [[llama-cpp]] (nueva sección «Anti-bucles: parámetros DRY»).

## El problema: loops infinitos en modelos chicos

«El mayor problema de los modelos de lenguaje pequeños es cuando entran en bucles y no pueden salir» — repiten la misma cadena de texto indefinidamente. Fuera de eso siguen siendo usables (ejemplo: Qwen 3.5 0.8B). Los loops pueden ocurrir en cualquier modelo, pero **más en los pequeños**, y en el 0.8B ocurren principalmente **con la cadena de razonamiento activa** (el canal recomienda no usarla en ese modelo).

## La solución: los parámetros DRY de llama.cpp

Además del sampling clásico (temperatura, top-p, min-p, top-k), llama.cpp trae la familia **DRY**: un filtro externo que revisa los tokens y cadenas ya generadas para penalizar repeticiones. Se agregan ~4 líneas DRY al `.bat` sin tocar el sampling oficial de Qwen. Cómo funcionan y sus compensaciones:

- **Ajustable de estricto a laxo** según el caso de uso — si la tarea requiere legítimamente repetir, un filtro agresivo **empeora la respuesta** (filtros demasiado estrictos hacen que las respuestas «ya no tengan sentido»).
- Costo de velocidad **mínimo** (es un paso adicional de revisión).
- Efecto lateral reportado: más variedad/creatividad — el modelo toma entre los tokens probables pero no mencionados recientemente.
- No es 100 % infalible: en el experimento (0.8B muy cuantizado, forzado a fallar) el loop **recursionó con razonamiento activo** hasta ajustar dos veces.

## El método meta: que una IA afine los parámetros de otra

El flujo práctico del video: pegar a un modelo online (GPT/Claude/Gemini) el comando completo + el texto donde ocurrió el loop + «reescribe mi comando igual, cambiando solo los parámetros DRY» → aplicar → si reincide, pegar el nuevo loop y repetir. Al final del experimento, el asistente —además de los DRY— ajustó `repeat_penalty` y `repeat_last_n`, y los loops cesaron («ya no catastrófico», algo de repetición residual). En modelos donde loopean menos, la solución es aún más sencilla.

## Cruces en la wiki

Sección nueva en [[llama-cpp]] («Anti-bucles: parámetros DRY»). El método «una IA ajusta los parámetros de otra» es una mini-aplicación de [[agentes-de-codigo]]; el modelo de prueba (Qwen 0.8B) pertenece a la familia [[qwen]].

---

**Ver también**: [[llama-cpp]] (sección «Anti-bucles: parámetros DRY») · [[qwen]] (el modelo de prueba) · [[agentes-de-codigo]] (el método de ajuste IA-a-IA).
