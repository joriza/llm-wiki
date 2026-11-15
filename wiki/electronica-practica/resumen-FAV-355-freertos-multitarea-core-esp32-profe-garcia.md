# FAV-355 — Multitarea en tiempo real y en el CORE 0: FreeRTOS en el ESP32 (El profe García)

- **Fuente original**: `raw/electronica-practica/2023-08-14-freertos-multitarea-core-esp32-profe-garcia.md` — https://www.youtube.com/watch?v=3yTW1HPU0pM — canal El profe García, 2023-08-14, 15:10, español (subs automáticos).
- **Dominio**: `electronica-practica/`.

## Qué es

Introducción a **FreeRTOS** (el RTOS que viene integrado en el núcleo Arduino-ESP32) para aprovechar los **dos núcleos** del ESP32 y lograr multitarea real en paralelo, en lugar del bucle secuencial con `delay()` típico de Arduino.

## Contenido técnico

- **Motivación**: un `delay()` en código secuencial es tiempo muerto; tareas concurrentes con delays incompatibles (1 s vs 0.3 s) obligan a interrupciones o `millis()` — con FreeRTOS cada tarea lleva su propio loop y delay sin interferirse.
- **Convención de núcleos**: Core 1 para la aplicación (sensores, actuadores; ahí corre el `loop()` normal), **Core 0 para tareas propias** del usuario.
- **API FreeRTOS en Arduino IDE**: `TaskHandle_t`, `xTaskCreatePinnedToCore` con parámetros — nombre, tamaño de pila (muy pequeño resetea el procesador por falta de memoria; muy grande limita el número de tareas), parámetros, prioridad (1-25) y núcleo destino. La tarea lleva su propio `while(true)` explícito.
- **Verificación**: `xPortGetCoreID()` imprime en qué núcleo corre cada fragmento — el `loop()` normal demuestra correr siempre en Core 1.
- **Demo progresiva**: serial en Core 1 + tarea en Core 0 con delays 1 s/0.3 s corriendo en paralelo; luego dos LEDs a velocidades no múltiplo; proyecto final con **dos motores paso a paso (driver A4988**, D15/D2 y D14/D27) a velocidades distintas + los dos LEDs — 5 tareas simultáneas que serían dolorosas con `delay()` secuencial.
- Nota: existe `disableCore0WDT()` para evitar el disparo del watchdog; innecesario en programas sencillos.

## Cruces

- Línea ESP32 del dominio: conecta con [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] y [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]].
- El problema del delay/blink contrasta con la alternativa MicroPython de la línea Pico ([[resumen-FAV-350-pico-juego-oled]]).
