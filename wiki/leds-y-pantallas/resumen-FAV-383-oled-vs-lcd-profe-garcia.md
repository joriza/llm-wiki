# Pantallas OLED: el fin de las LCD

**Fuente**: [Pantallas OLED son el Fin para LCD se Quedaron Obsoletas](https://www.youtube.com/watch?v=a-p9uYt_Kp4)
**Canal**: El profe García · **Publicado**: 2020-11-21 · **Duración**: 18:29
**Raw**: `raw/electronica-practica/2026-11-15-pantallas-oled-fin-de-lcd.md` (FAV-383, 2026-11-15)

## Qué cubre

Comparativa práctica OLED vs LCD 16×2 y primer tutorial de programación con las dos familias de librerías (Adafruit SSD1306 y U8g2/oled-i2c), con ejemplos de texto, líneas, Pong y un medidor analógico con potenciómetro.

## Contenido técnico

- **Ventajas medidas frente a LCD**: mismo ancho de módulo (80 mm) pero pantalla de solo 0,96"; **5 g vs 33 g** de peso (38-40 g la LCD con módulo I2C añadido) — decisivo para el proyecto drone del canal; mejor contraste y ángulo de visión (se ve de lado y a pleno sol), menor consumo; aunque el módulo OLED es algo más caro, LCD + conversor I2C en suma cuesta más.
- **Variedades**: monocroma 128×64 (8.192 píxeles, negra/azul), 128×32; **bicolor** donde solo las primeras 16 filas pueden ser amarillas; y OLED a full color (1,5"). Cuidado: la posición de VCC/GND/SDA/SCL **varía entre módulos** — verificar el serigrafiado antes de cablear.
- **Conexión I2C**: en Uno/Nano directo a A4/A5 (o SDA/SCL dedicados); en Mega los pines dedicados son 20/21.
- **Librerías**: Adafruit GFX + Adafruit SSD1306 (gestor de bibliotecas) y la alternativa **U8g2 / oled-i2c**, más liviana, instalada añadiendo el .zip descargado. Gotcha Adafruit: la dirección por defecto de las 128×64 es `0x3D` — sin signo de comentario `//` que borre la definición, y sin llamar a `display()` no se pinta nada.
- **Ejemplos**: texto en tamaños 1-5 con ajuste de línea automático (ventaja sobre LCD 16×2 que desborda), líneas, juego **Pong** con potenciómetro (adaptado del canal Arduino como Hobby, con créditos) y **medidor analógico** 0-1023 mostrado en número y barra gráfica — imposible en una LCD 16×2.
- Motivación original del canal: un **oxímetro** y un **drone con telemetría** (GPS, altura, temperatura) donde el peso de la pantalla era crítico.

## Cruces

- Tutorial complementario con la misma pantalla y librerías: [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino (La Buhardilla del Loco)]] (FAV-382) — mismo gotcha de dirección I2C 0x3C/0x3D y misma llamada `display()` obligatoria.
- La pantalla en MicroPython: [[resumen-FAV-350-pico-juego-oled|juego OLED en Pico]] (FAV-350).
- Continuación directa del canal: [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|dibujos y plantillas OLED]] (FAV-384), que cubre el logotipo y las plantillas que aquí quedan prometidos.

- **Consolidación (2026-11-15): fuente de [[pantallas-oled]] y [[i2c]], y de la entidad [[el-profe-garcia]].
