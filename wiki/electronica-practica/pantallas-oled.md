# Pantallas OLED en microcontroladores (SSD1306)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado con 7 fuentes).
- **Fuentes**: [[resumen-FAV-350-pico-juego-oled]] (El profe García, Pico/MicroPython) · [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla]] (La Buhardilla del Loco) · [[resumen-FAV-383-oled-vs-lcd-profe-garcia]] (El profe García, monográfica comparativa) · [[resumen-FAV-384-dibujos-plantillas-pantalla-oled]] (El profe García, plantillas) · [[resumen-FAV-387-videos-animaciones-oled-electronica-con-piero]] (Electrónica Con Piero, animación) · [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas]] (Mario's Ideas, I²C vs SPI) · [[resumen-FAV-396-pantallas-oled-arduino-librerias-demmake]] (deMMake, librerías).
- **Ver también**: [[i2c]] · [[cubos-matrices-led]] (el otro clúster de displays del dominio) · entidad [[marios-ideas]].

## El concepto

La pantalla OLED monocroma **128×64 (o 128×32) con controlador SSD1306** es el display por defecto de la wiki práctica: siete fuentes de cinco canales convergen en el mismo flujo. Cada píxel emite luz propia (diodos orgánicos, sin retroiluminación) → menor peso y consumo, mejor contraste y ángulo de visión que la LCD 16×2 (FAV-383 mide **5 g vs 33 g** en el mismo ancho de módulo).

El conocimiento compartido por las fuentes:

1. **Cableado**: por I²C son 4 cables — en Arduino Uno/Nano SDA=A4 / SCL=A5; en Pico GP6/GP7 (I2C1) o GP8/GP9 (I2C0); en ESP32-C3 SuperMini SDA=GPIO8 / SCL=GPIO9.
2. **El controlador manda**: la pantalla sola no muestra nada; el SSD1306 habla con el micro. La **dirección I²C varía entre módulos (0x3C vs 0x3D; Adafruit 128×64 por defecto 0x3D)** — primer sospechoso si el sketch no responde (FAV-382/383/391/396); el I2C scanner como diagnóstico (FAV-396).
3. **Librerías comparadas** (FAV-383/396): Adafruit SSD1306 + GFX (estándar, más memoria), U8g2/U8glib (alternativa liviana, sintaxis distinta), OLED I2C de Rinky-Dink (la más económica en memoria).
4. **Patrón universal**: setup → `clearDisplay()` → dibujar en buffer → **`display()`/`show()`/`update()` obligatorio para pintar** — el error más repetido del clúster.
5. **Imágenes**: pipeline image2cpp → array de bytes hexadecimales en flash con `PROGMEM` → `drawBitmap()` (FAV-382/384/387); plantillas dibujadas por zonas para iconos dinámicos (FAV-384); animación = arrays por fotograma, limitada a ~8-10 frames por los 32 KB del Uno (FAV-387).
6. **¿Cuándo SPI?** (FAV-391): I²C sobra para texto y formas; SPI (4-10 MHz vs 100-400 kHz, ~10-20× más rápido) solo importa con refresco completo frecuente o varias pantallas — y las OLED baratas ni siquiera liberan el bus SPI compartido.

## Notas

- La variante 128×32, bicolor por zonas y las TFT a color como alternativa quedan documentadas en las fuentes (FAV-371/388/389/390, TFT SPI — sin página propia por fuera de este concepto).
- Cruce: la OLED como salida de la [[ia-en-mcu]] (FAV-410 muestra la respuesta de Gemini en la pantalla).
