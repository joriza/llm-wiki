# FAV-375 — Convertir una tira LED WS2812B en pantalla LED 16×16

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=_cXA2WV_Ouo) · canal El profe García · 2020-07-14 · 22:05 · FAV-375
- **Transcripción**: `raw/electronica-practica/2020-07-14-tira-led-pantalla-16x16-ws2812b-profe-garcia.md`
- **Dominio**: electronica-practica/

## De qué va

Proyecto del profe García: cortar tiras LED direccionables WS2812B de 300 LED (60 LED/m) en 16 tiras de 16 y montarlas como una pantalla de 16×16 (256 LED) controlada por un solo pin de datos del Arduino.

- **Cómo funciona el WS2812B**: cada LED integra su chip — consume ~12 mA por LED en uso y solo necesita 3 cables (5 V, GND y datos). La línea de datos codifica 0 y 1 por el ancho del pulso en alto (protocolo de un solo cable), y cada LED regenera la señal antes de reenviarla al siguiente: por eso tiras largas no degradan los datos (al final de la trama, un reset de 280 µs en bajo). Importante respetar la dirección DIN→DOUT de cada tira; invertir DIN/DOUT hace que no funcione.
- **Alimentación**: los chips son sensibles a variaciones de voltaje — la tira trae condensadores por LED, pero se recomienda añadir ~1000 µF entre 5 V y GND del montaje; para tiras largas, inyectar 5 V en varios puntos. Para los 256 LED basta una fuente de 5 V/2 A (verificada con multímetro); no hace falta la fuente de 10-20 A que a veces se recomienda — con exceso de corriente los LED «resplandecen» mal.
- **Montaje**: cortar la tira por la mitad (dos uniones de 16), pegarla con su adhesivo (en el video, sobre una caja de cartón) y cablear la alimentación de forma intercalada (positivo con positivo, GND con GND); el DOUT final se cruza de vuelta al inicio para el serpenteado de filas.
- **Software**: librería Adafruit NeoPixel — `setPixelColor(n, r, g, b)` con índice desde 0 en la primera tira, y `show()` para desplegar todas las figuras a la vez. En el sketch se definen las imágenes como matrices de caracteres/colores (copiables y editables a mano, ej. cambiar la nariz a rojo). Memoria: ~8 imágenes caben en un Arduino Uno (más llena → error de compilación por memoria); un Mega admite hasta ~70 y permite animaciones.

## Notas

- ASR normalizado solo aquí: «de iu» = DIN, «khaled» = cascada (contexto), «dinastía tecnológica» = proveedor de la tira mencionado, «arduino 1/18» = Arduino Uno, «archivo de maria paula» = archivo de figuras del ejemplo.
- Cruces: mismo canal y línea de curso que [[resumen-FAV-351-que-es-un-fpga-profe-garcia]], [[resumen-FAV-352-rtc-timbre-colegio-profe-garcia]] y [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]]; los LED inteligentes direccionables se diferencian de los LED pasivos de [[resumen-FAV-370-arduino-desde-cero-cap1-intro-bitwise-ar]] (PWM básico) y de los focos LED con SMPS ([[resumen-FAV-009-foco-led-fuente-conmutada-bp2861-electrotube]] línea de bombillas); la recomendación del condensador de desacoplo y alimentación estable repite el patrón del NRF24 ([[resumen-FAV-372-nrf24-problemas-soluciones-electronoobs]]).

- **Consolidación (2026-11-15): fuente de la entidad [[el-profe-garcia]]; cruce de [[cubos-matrices-led]] (contraste LED direccionable vs multiplexado).
