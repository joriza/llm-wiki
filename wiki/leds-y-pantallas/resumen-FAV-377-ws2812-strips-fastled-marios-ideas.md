# FAV-377 — Tiras WS2812 con Arduino y FastLED

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=YKSFRmvA9A0) · canal Mario's Ideas · 2025-05-15 · 15:49 · FAV-377 (en inglés, subs auto)
- **Transcripción**: `raw/electronica-practica/2025-05-15-ws2812-strips-arduino-fastled-marios-ideas.md`
- **Dominio**: electronica-practica/

## De qué va

Tercero de la serie de LED del canal: introducción a la tira direccionable WS2812B (contraste con la tira RGB analógica del video anterior), su protocolo de un cable y control desde Arduino comparando las librerías FastLED y NeoPixel (preferencia declarada por FastLED).

- **Hardware del WS2812B**: 4 conexiones (5 V, GND, DIN, DOUT); esquina con muesca = GND para orientarlo. Cada segmento de tira lleva un condensador de 100 nF entre VCC y GND para filtrar picos. El chip driver interno convierte los bits de color en PWM — ya no hay que generar PWM para componer colores. Conectado a DIN obligatoriamente (las flechas de la tira indican el flujo); a 5 V de lógica no hacen falta desplazadores de nivel ni MOSFET. Alimentación: pocas LED desde el propio Arduino; tiras grandes o de 12 V (WS2815, con líneas de respaldo BI/BO a conectar al mismo pin por redundancia) con fuente externa dimensionada por corriente.
- **Protocolo**: «1» = alto ~0,8 µs, «0» = alto ~0,4 µs, ciclo de bit ~1,25 µs; cada LED captura sus 24 bits (RGB) y reenvía el resto; ninguna LED cambia hasta recibir la trama completa + reset en bajo ~50 µs — actualización simultánea.
- **Librerías**: FastLED — arreglo de `CRGB` (3 bytes por LED), inicialización en una línea, constantes de color y valores de 24 bits; NeoPixel — objeto global con `begin()`. Preferencia del autor: FastLED, más intuitivo. Modelo HSV con `CHSV(hue, sat, brillo)` (todo 0-255) para animaciones con paleta limitada.
- **Demos**: desplazamiento de color HSV con incremento de hue +3 cada 50 ms usando `millis()` para temporizar sin bloquear; efecto «cometas» con estela; matriz 32×8 (256 LED) que es internamente una sola tira en serpiente — el sketch de cometas sirve para visualizar el layout; panel difusor impreso en 3D.
- **Ideas de aplicación**: el autor menciona haber construido un display de 7 segmentos de una cifra con tira WS2812B controlada por un solo pin digital.

## Notas

- ASR normalizado solo aquí: «nail pixel/no pixel» = NeoPixel, «DIIN» = DIN, «microsconds/microcond» = µs, «millies» = millis(), «CHSV» correcto.
- Cruces: misma familia de LED direccionables que [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]] (NeoPixel, serpiente de matriz, condensadores de estabilidad) y [[resumen-FAV-376-7-segmentos-gigante-ws2812b-profe-garcia]] (el 7 segmentos con WS2812 que este video menciona como idea propia tiene aquí y en FAV-376 su desarrollo); temporización no bloqueante con `millis()` en la línea del capítulo de millis (línea 49 de la cola, aún pendiente); misma placa de referencia ([[resumen-FAV-370-arduino-desde-cero-cap1-intro-bitwise-ar]]).

- **Consolidación (2026-11-15): fuente de la entidad [[marios-ideas]] (quinta fuente, hallada en la revisión de umbrales).
