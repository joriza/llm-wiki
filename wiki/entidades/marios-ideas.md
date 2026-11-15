# Mario's Ideas

- **Tipo**: página de entidad (canal).
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado).
- **Fuentes**: [[resumen-FAV-377-ws2812-strips-fastled-marios-ideas]] (tiras WS2812 con FastLED) · [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas]] (OLED I²C vs SPI) · [[resumen-FAV-392-esp32-c3-supermini-antena-rssi-marios-ideas]] (antena y RSSI del SuperMini) · [[resumen-FAV-393-controlador-led-ws2812-universal-esp32-c3-marios-ideas]] (controlador LED universal) · [[resumen-FAV-394-millis-multitarea-arduino-marios-ideas]] (millis() multitarea).
- **Ver también**: [[pantallas-oled]] · [[i2c]] · [[cubos-matrices-led]] (línea WS2812).

## Qué es

Canal de electrónica práctica **en inglés** (videos de 2019–2026, estilo follow-up con mediciones reales y respuesta a comentarios de viewers). Cinco fuentes en el dominio con un sello común: **proyectos de placa pequeña (ESP32-C3 SuperMini, Nano) medidos, no solo explicados**.

- **Línea LED direccionable** (2 fuentes): tiras WS2812 con FastLED y un controlador LED universal con ESP32-C3 (PCB casera con Fritzing + PCBWay).
- **Displays** (1): comparación medida de I²C vs SPI en OLED — velocidades reales (~12 vs ~17 fps) y el gotcha de las OLED baratas que no liberan el bus SPI.
- **Hardware ESP32-C3** (1): modificación de antena del SuperMini y tests de RSSI.
- **Buenas prácticas** (1): `millis()` para multitarea sin RTOS.

## Notas

- Videos mayoritariamente en inglés con subs automáticos; FAV-394 en es-US.
- Estilo follow-up: la fuente de RSSI (FAV-392) incorpora sugerencias de viewers del video anterior — registro de comunidad activa.
