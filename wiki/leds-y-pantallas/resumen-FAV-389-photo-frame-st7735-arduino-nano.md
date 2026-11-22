# Photo frame digital con Arduino Nano y TFT ST7735 1,8"

**Fuente**: [1.8" DIY Photo Frame using an Arduino Nano and a 1.8" ST7735 Color TFT display](https://www.youtube.com/watch?v=X8syt55ITUo)
**Canal**: educ8s.tv (Nick) · **Publicado**: 2016-05-28 · **Duración**: 05:36 (inglés, subs manuales)
**Raw**: `raw/leds-y-pantallas/2016-05-28-photo-frame-st7735-arduino-nano-educ8s.md` (FAV-389, 2026-11-15)

## Qué cubre

**Marco de fotos digital** de bajo costo (~15 USD): Arduino Nano + TFT color **ST7735 de 1,8"** cargando imágenes `.bmp` desde el **slot SD** que trae la propia pantalla por su parte trasera.

## Contenido técnico

- Por qué esa pantalla: <5 USD, color, fácil de usar y con slot SD integrado; el autor la usa en varios proyectos.
- **Cableado del slot SD**: el módulo SD usa **SPI**, compartiendo los pines de hardware SPI del Nano con la pantalla (dos dispositivos en el mismo bus). SD_CS→D4, SD_MOSI→D11, SD_MISO→D12, SD_SCK→D13; los pines inferiores de la pantalla según su tutorial anterior específico del ST7735.
- **Software**: librerías Adafruit **ST7735 + GFX**; el ejemplo `spitftbitmap` carga y dibuja imágenes de la SD con la función `bmpDraw`. Modificación mínima: bucle infinito, varias imágenes y orientación landscape.
- **Preparación de imágenes**: redimensionar a **160×128** y guardar como `.bmp` de **24 bits** (con Paint.net); formato incorrecto = no se dibuja.
- Rendimiento notable para un Nano "viejo y lento": rotación de imágenes a full color fluida.

## Cruces

- Misma pantalla ST7735 1,8" con slot SD: [[resumen-FAV-388-mini-video-player-esp32-super-make-something|Open Source Mini Video Player]] (FAV-388, ESP32). Pantallas SPI con Arduino: [[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar|TFT ILI9341 SPI]] (FAV-371). Pipeline bitmap similar en OLED: [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306]] (FAV-382) y [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|Dibujos y plantillas OLED]] (FAV-384).
