# FAV-371 — Arduino desde cero, cap. 54: pantalla TFT ILI9341 por SPI

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=F4ZKMscBlIQ) · canal Bitwise Ar · 2020-02-08 · 28:27 · FAV-371
- **Transcripción**: `raw/electronica-practica/2020-02-08-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar.md`
- **Dominio**: electronica-practica/

## De qué va

Capítulo 54 del curso «Arduino desde cero» de Bitwise Ar: uso de una pantalla TFT de 2,8" (320×240) basada en el controlador ILI9341, conectada por bus SPI y manejada verticalmente.

- **Hardware y alimentación**: la placa incorpora un regulador lineal de 5 V → 3,3 V, lo que permite alimentarla directamente desde los 5 V del Arduino; si el regulador falta o el puente J1 está cerrado, hay que alimentar solo con 3,3 V (aplicar 5 V quema el controlador). Incluye zócalo microSD (no usado en este cap) y modelos con táctil via XPT2046 (no en el ejemplar del video).
- **Conexión SPI con adaptación de niveles**: el ILI9341 trabaja a 3,3 V y el Arduino a 5 V, así que cada línea lógica (CS→D10, D/C→D9, MOSI→D11, SCK→D13) pasa por un divisor resistivo 47 kΩ/10 kΩ. RESET se fuerza a alto con 47 kΩ a 5 V (activo bajo, sin control desde el sketch) y la retroiluminación (LED) va con 100 Ω a 5 V para limitar corriente y regular brillo.
- **Programación con la librería ILI9341** (similar a la OLED del cap. 47): `tft.begin()`, `setRotation(0..3)` (0/2 vertical, 1/3 horizontal, relativo a los pines abajo/arriba), `fillScreen(color)` y `setTextColor/colorSize/setCursor/print` con paleta de 19 constantes (`ILI9341_RED`, `ILI9341_WHITE`, …).
- **Texto dinámico — gotcha clave**: `setTextColor` con un solo parámetro solo enciende los píxeles del glifo, por lo que los números que se actualizan se superponen formando bloques sólidos. La solución es pasar el segundo parámetro (color de fondo del texto) igual al color de `fillScreen`: cada impresión repinta el bloque completo sin parpadeo perceptible.
- **Cierre**: segunda demo — una interfaz de usuario estática (marco, rótulos) que muestra temperatura y humedad de un DHT11, con los valores dinámicos actualizados en el loop sobre la interfaz ya dibujada.

## Notas

- ASR normalizado solo aquí: «tfc» = TFT, «ovas esp» = bus SPI, «y 93 41 / lily 93 41» = ILI9341, «x pt 2046» = XPT2046, «de hht 11» = DHT11, «se de mushing» = MOSI.
- Cruces: mismo curso y canal que [[resumen-FAV-370-arduino-desde-cero-cap1-intro-bitwise-ar]] y [[resumen-FAV-369-fuente-protoboard-mb102-bitwise-ar]]; la referencia al bus SPI del cap. 37 y a la OLED del cap. 47 empalma con la línea de pantallas del dominio; el divisor resistivo 47k/10k para adaptar 5 V→3,3 V es la misma técnica de acondicionamiento vista en las fuentes de sensores (p. ej. [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]] para lectura acondicionada con ADC).
