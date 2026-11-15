# Arduino Uno y TFT 2,2" SPI 240x320

**Fuente**: [Arduino Uno y TFT 2.2" SPI 240x320](https://www.youtube.com/watch?v=L3uvcPo682k)
**Canal**: ARDUINOLOVER · **Publicado**: 2018-07-13 · **Duración**: 11:09
**Raw**: `raw/electronica-practica/2018-07-13-arduino-uno-tft-22-spi-arduinolover.md` (FAV-390, 2026-11-15)

## Qué cubre

Cómo conectar y programar una **TFT SPI de 2,2" (240×320)** con Arduino Uno, resolviendo el problema de los niveles lógicos de 3,3 V de la pantalla con un divisor de tensión resistivo.

## Contenido técnico

- **Controlador**: ILI9341 (hay una variante casi idéntica con ILI9340); la librería **Adafruit ILI9340** cubre ambos, pero en general las librerías suelen ser específicas por controlador — verificarlo antes de comprar.
- **Niveles lógicos**: la pantalla trabaja a **3,3 V**. Opciones: Arduino Due (3,3 V nativos, pero caro), Pro Mini 3,3 V (sin USB, requiere programador externo), o el camino económico elegido: **divisor de tensión** por línea de datos con **470 Ω (serie) + 1 kΩ (a GND)** — el punto medio da ~3,3 V desde los 5 V del Uno. Solo los pines de datos pasan por el divisor; VCC y LED van a 3,3 V y GND directo. Diagrama en la descripción.
- **Software**: librerías Adafruit **GFX + ILI9340**; sketch de test basado en `graphicstest` de la propia librería con modificaciones (pinout del Uno: SCK→D13, reset→D8, etc., cada pin de datos pasando por su divisor). La línea `tft.begin()` habilita toda la API de la librería; el test dibuja colores, figuras y textos rotados en varios tamaños (`testText`).
- Recomendación final: si se busca otra librería, siempre chequear el controlador exacto de la pantalla.

## Cruces

- Pantallas TFT SPI con Arduino: [[resumen-FAV-371-arduino-desde-cero-tft-ili9341-spi|Arduino desde cero cap. 54, TFT ILI9341 SPI]] (FAV-371, Bitwise Ar — mismo controlador ILI9341) y [[resumen-FAV-389-photo-frame-st7735-arduino-nano|photo frame ST7735]] (FAV-389, SPI más el bus SD compartido). La mecánica de bitmaps/conversión de imágenes en pantallas: [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|Dibujos y plantillas OLED]] (FAV-384).
