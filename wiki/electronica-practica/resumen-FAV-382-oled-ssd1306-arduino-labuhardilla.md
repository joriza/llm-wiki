# Pantalla OLED SSD1306 (128×64) con Arduino

**Fuente**: [Cómo usar la pantalla OLED SSD1306 con ARDUINO (128x64)](https://www.youtube.com/watch?v=cWgWvNhWg-A)
**Canal**: La Buhardilla del Loco · **Publicado**: 2021-05-09 · **Duración**: 13:41
**Raw**: `raw/electronica-practica/2026-11-15-pantalla-oled-ssd1306-arduino.md` (FAV-382, 2026-11-15)

## Qué cubre

Tutorial de iniciación a la pantalla OLED monocroma 128×64 con controlador **SSD1306**, conectada a Arduino Uno por **I2C** (solo 4 cables: SDA→A4, SCL→A5, VCC→5 V, GND).

## Contenido técnico

- **Por qué OLED frente a LCD 1602**: cada píxel emite luz propia (diodos orgánicos, OLED = *organic light emitting diode*), sin retroiluminación ni filtros → menor consumo, más finas, flexibles e incluso transparentes.
- **El controlador manda**: la pantalla OLED sola no muestra nada; el SSD1306 es el driver que habla con el micro y pinta los datos. La dirección I2C puede variar entre módulos — si el sketch no funciona, cambiar la dirección (0x3C vs 0x3D) es lo primero a probar.
- **Librerías**: Adafruit SSD1306 (instalada desde el gestor, con dependencia de la librería gráfica **Adafruit GFX** para formas geométricas). El ejemplo demo incluido sirve de test inicial.
- **Esqueleto del sketch**: constantes de ancho/alto, pin de reset (-1 si no hay), dirección I2C, instancia `display`, `begin()` dentro de un `if` que reporta fallo por serie; el primer parámetro de `begin()` distingue alimentación interna (VCC del micro) vs externa (requiere `SSD1306_SWITCHCAPVCC` correcto y reset).
- **Dibujo básico**: `clearDisplay()` → `setTextSize()` (escala entera) → `setTextColor(WHITE)` → `setCursor(x,y)` → `println()` → **`display()` obligatorio para pintar** (buffer). Formas con GFX: `drawLine(x0,y0,x1,y1,color)` etc.
- **Bitmaps**: herramienta online (image2cpp) que convierte una imagen en una matriz de bytes hexadecimales; el array se declara `const char` con `PROGMEM` para que resida en flash y no consuma RAM; se dibuja con `drawBitmap(x,y,array,w,h,color)`, con las fórmulas `(ancho_pantalla−ancho_imagen)/2` para centrar.

## Cruces

- Misma pantalla y protocolo que el [[resumen-FAV-350-pico-juego-oled|juego con OLED en Raspberry Pi Pico]] (FAV-350, MicroPython, librería framebuf, I2C1): allí cableado GP6/GP7 y aquí A4/A5 — misma dirección I2C y misma necesidad de llamar a show/display.
- Contraste con TFT a color por SPI: [[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar|TFT ILI9341]] (FAV-371) — más pines, más consumo, colores en vez de monocromo.
- Tema I2C recurrente en la wiki (umbral ya registrado para consolidación).
- Plantillas/animación de OLED se profundiza en [[resumen-FAV-384-dibujos-plantillas-pantalla-oled]] (FAV-384).

- **Consolidación (2026-11-15): fuente de los conceptos [[pantallas-oled]] y [[i2c]].
