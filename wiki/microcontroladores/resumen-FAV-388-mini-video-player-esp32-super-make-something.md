# Open Source Mini Video Player (Arduino, ESP32, PCB design)

**Fuente**: [Open Source Mini Video Player (Arduino, ESP32, Electronics, PCB Design)!](https://www.youtube.com/watch?v=67RFm2RMjC4)
**Canal**: Super Make Something (Alex) · **Publicado**: 2022-08-14 · **Duración**: 12:41 (inglés, subs automáticos)
**Raw**: `raw/microcontroladores/2022-08-14-open-source-mini-video-player-super-make-something.md` (FAV-388, 2026-11-15)

## Qué cubre

Proyecto open source de un **mini reproductor de video** con ESP32: reproduce series desde micro SD en una LCD ST7735 de 1,8" con audio por altavoz o auriculares. Objetivos: soldable solo con cautín (mayoría through-hole) y modular — 3 configuraciones sobre el mismo PCB (solo video / video+audio / + batería LiPo y cargador).

## Contenido técnico

- **Hardware**: PCB breakout propio + ESP32 DevKit (dual-core 240 MHz, 512 KB RAM, WiFi/BT, ~2 USD, programable desde Arduino IDE), amplificador PAM-8403, dos potenciómetros thumbwheel de 1 kΩ, jack auriculares de 5 pines, altavoz 8 Ω 2 W, **LCD ST7735 1,8" con slot SD**, 2 botones para cambiar de archivo, switch, Lipo + boost + cargador, placa de montaje impresa en 3D.
- **Por qué MJPEG**: los códecs modernos (H.264) codifican diferencias entre frames y exigen decodificación que un microcontrolador no alcanza a hacer en tiempo real; **Motion JPEG** comprime cada frame por separado (paleta por frame) — archivos más grandes pero decodificables a buen frame rate mientras se reproduce MP3 y se dibuja en la LCD.
- **PCB**: diseño en Altium (esquemático → routing → Gerbers); fabricación vía PCBWay (patrocinador). Truco de ensamblaje: el DevKit ESP32 no tiene castellated edges → "surface mount through-hole soldering" (soldar los headers through-hole a pads, verificando continuidad con multímetro); consejo: comprar DevKit y LCD **sin headers pre-soldados**; hot plate + pasta sería lo ideal.
- **Software**: código en GitHub (basado en la librería de un usuario de Instructables); subida con el botón BOOT mantenido. **Conversión de medios con ffmpeg**: separar video y audio — comandos incluidos en `encodingcommands.txt` generan `output.mjpeg` (video 160×128) y `output.mp3` (44,1 kHz) desde `input.mp4`; nombres de video/audio pareados en la SD.
- **Extensiones**: dos GPIO + 5 V/GND breakout para periféricos; WiFi/BT integrados abren usos inalámbricos.

## Cruces

- Pantalla ST7735 1,8" con Arduino Nano: [[resumen-FAV-389-photo-frame-st7735-arduino-nano|photo frame ST7735]] (FAV-389, siguiente fuente) y [[resumen-FAV-371-arduino-desde-cero-tft-ili9341-spi|TFT ILI9341 SPI]] (FAV-371, Bitwise Ar).
- Reproducir video en microcontroladores: versión casera en OLED con [[resumen-FAV-387-videos-animaciones-oled-electronica-con-piero|Videos y animaciones en OLED]] (FAV-387 — arrays en flash vs aquí MJPEG desde SD) y [[resumen-FAV-380-raspy2dmd-panel-led-matrix-mundo-yakara|Raspy2DMD]] (FAV-380, Linux completo vs aquí microcontrolador).
- ESP32 como plataforma: [[resumen-FAV-358-esp32-arduino-ide-electronicspot|ESP32 en Arduino IDE]] (FAV-358), [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab|arquitectura del ESP32]] (FAV-362).
