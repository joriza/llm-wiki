# millis() para multitarea en Arduino

**Fuente**: [How to use millis() function to multitask in Arduino code](https://www.youtube.com/watch?v=dCku8BabPx4)
**Canal**: Mario's Ideas · **Publicado**: 2020-10-16 · **Duración**: 10:33 · **Idioma**: es-US (subs automáticos)
**Raw**: `raw/electronica-practica/2020-10-16-millis-multitarea-arduino-marios-ideas.md` (FAV-394, 2026-11-15)

## Qué cubre

Reemplazar `delay()` por el patrón **millis()** para lograr tareas temporizadas independientes (multitarea cooperativa) en Arduino, con progresión didáctica: blink con delay → dos LEDs con delay (acoplado) → blink con millis → dos LEDs independientes → intervalos variables por potenciómetro.

## Contenido técnico

- **Problema de `delay()`**: detiene la ejecución de todo el programa — sin lecturas de sensores, cálculos ni manipulación de pines mientras dura.
- **`millis()`**: devuelve los milisegundos desde que arrancó el programa, en tipo **`unsigned long`** (usar `int` produce errores lógicos por overflow); se desborda y reinicia a 0 tras ~**50 días**.
- **Patrón**: guardar `millis()` actual en una variable; comparar si `actual - últimoCambio ≥ intervalo`; si sí, actualizar `últimoCambio` y alternar el estado del LED. Sin bloquear nada.
- **Demo del acoplamiento con delay**: dos LEDs (1 s y 250 ms) con `delay()` anidado — el timing del LED 1 se calcula multiplicando los delays del LED 2; al cambiar la frecuencia de uno, se rompe la del otro: no hay dos tareas, sino una sola compleja. Con millis cada LED tiene su propio conjunto de variables y la frecuencia de uno no afecta al otro.
- **Intervalos dinámicos**: dos potenciómetros en A1 y A7, mapeados a 100-1000 ms. Las lecturas analógicas inestables se estabilizan con **promedio móvil** de 5 lecturas (bucle for, sumar y dividir). Cambiar el intervalo en caliente cambia el parpadeo al instante; una tercera tarea (monitor serie) sigue independiente.

## Cruces

- Conecta con [[resumen-FAV-392-esp32-c3-supermini-antena-rssi-marios-ideas|ESP32-C3 SuperMini antena/RSSI]] (FAV-392), donde el mismo canal justifica `millis()` frente a `delay()` para el setup del monitor serie.
- La multitarea en micros con RTOS como alternativa de peso completo: [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia|FreeRTOS dual-core en ESP32]] (FAV-355).
